package main

import (
	"context"
	"flag"
	"fmt"
	"log"
	"os"

	"github.com/hashicorp/go-tfe"
)

const (
	// Project constants
	defaultProjectName        = "microsoft_365"
	defaultProjectDescription = "Microsoft 365 managed as code"

	// Default workspace settings
	defaultTerraformVersion = "1.12.2"
	defaultExecutionMode    = "remote"
)

// Environment represents a deployment environment
type Environment struct {
	Name               string
	Tags               []string
	TerraformVersion   string
	ExecutionMode      string
	WorkingDirectory   string
	AutoApply          bool
	SpeculativeEnabled bool
}

// Client wraps the TFE client with helper methods
type Client struct {
	*tfe.Client
}

// Config holds the configuration for the script
type Config struct {
	OrgName            string
	ProjectName        string
	ProjectDesc        string
	TerraformVersion   string
	ExecutionMode      string
	AutoApply          bool
	SpeculativeEnabled bool
	DryRun             bool
}

func main() {
	// Parse command-line flags
	config := parseFlags()

	// Get Terraform Cloud token from environment variable
	token := os.Getenv("TFE_ORG_TOKEN")
	if token == "" {
		log.Fatal("TFE_ORG_TOKEN environment variable must be set")
	}

	// Configure the client
	tfeConfig := &tfe.Config{
		Token: token,
	}

	client, err := tfe.NewClient(tfeConfig)
	if err != nil {
		log.Fatalf("Error creating client: %s", err)
	}

	tfClient := &Client{Client: client}

	// Define environments
	environments := []Environment{
		{
			Name:               "sandbox",
			Tags:               []string{"microsoft365", "sandbox", "dev", "microsoft_365"},
			TerraformVersion:   config.TerraformVersion,
			ExecutionMode:      "local", // CLI-driven workflow
			WorkingDirectory:   "",      // not used for local execution mode
			AutoApply:          config.AutoApply,
			SpeculativeEnabled: config.SpeculativeEnabled,
		},
		{
			Name:               "staging",
			Tags:               []string{"microsoft365", "staging", "test", "microsoft_365"},
			TerraformVersion:   config.TerraformVersion,
			ExecutionMode:      "remote", // API-driven workflow
			WorkingDirectory:   "",       // will set in gha pipeline
			AutoApply:          false,    // More restrictive for staging
			SpeculativeEnabled: config.SpeculativeEnabled,
		},
		{
			Name:               "production",
			Tags:               []string{"microsoft365", "production", "prod", "microsoft_365"},
			TerraformVersion:   config.TerraformVersion,
			ExecutionMode:      "remote", // API-driven workflow
			WorkingDirectory:   "",       // will set in gh pipeline
			AutoApply:          false,    // Never auto-apply in production
			SpeculativeEnabled: config.SpeculativeEnabled,
		},
	}

	if config.DryRun {
		fmt.Println("Running in dry-run mode. No changes will be made.")
		fmt.Printf("Would create project: %s\n", config.ProjectName)
		for _, env := range environments {
			fmt.Printf("Would create workspace: microsoft365-%s with tags: %v (Execution mode: %s)\n", env.Name, env.Tags, env.ExecutionMode)
			fmt.Printf("  - Would create environment-specific variables for workspace: microsoft365-%s\n", env.Name)
		}
		fmt.Println("Would create variable sets for authentication methods")
		return
	}

	// Create or get project
	projectID, err := tfClient.ensureProject(config.OrgName, config.ProjectName, config.ProjectDesc)
	if err != nil {
		log.Fatalf("Error ensuring project exists: %s", err)
	}
	fmt.Printf("Project ID: %s\n", projectID)

	// Create workspaces for each environment
	for _, env := range environments {
		workspaceName := fmt.Sprintf("microsoft365-%s", env.Name)
		workspaceID, err := tfClient.ensureWorkspace(config.OrgName, workspaceName, projectID, env)
		if err != nil {
			log.Fatalf("Error ensuring workspace %s exists: %s", workspaceName, err)
		}
		fmt.Printf("Workspace %s created/updated with ID: %s\n", workspaceName, workspaceID)
	}

	// Create environment-specific variables for each workspace
	err = tfClient.createEnvironmentVars(config.OrgName, environments)
	if err != nil {
		log.Fatalf("Error creating environment variables: %s", err)
	}

	// Create workspace-specific auth variables for each workspace
	err = tfClient.createWorkspaceAuthVars(config.OrgName, environments)
	if err != nil {
		log.Fatalf("Error creating workspace auth variables: %s", err)
	}

	// Create common variables set (shared across all workspaces)
	err = tfClient.createCommonVarSet(config.OrgName, environments, projectID)
	if err != nil {
		log.Fatalf("Error creating common variable set: %s", err)
	}

	fmt.Println("Terraform Cloud setup completed successfully!")
}

// parseFlags parses command-line flags and returns a Config
func parseFlags() *Config {
	config := &Config{}

	flag.StringVar(&config.OrgName, "org", "deploymenttheory", "Terraform Cloud organization name")
	flag.StringVar(&config.ProjectName, "project", defaultProjectName, "Project name")
	flag.StringVar(&config.ProjectDesc, "desc", defaultProjectDescription, "Project description")
	flag.StringVar(&config.TerraformVersion, "tf-version", defaultTerraformVersion, "Terraform version")
	flag.StringVar(&config.ExecutionMode, "exec-mode", defaultExecutionMode, "Default execution mode (only used as fallback)")
	flag.BoolVar(&config.AutoApply, "auto-apply", false, "Enable auto-apply for dev environments")
	flag.BoolVar(&config.SpeculativeEnabled, "speculative", true, "Enable speculative plans")
	flag.BoolVar(&config.DryRun, "dry-run", false, "Dry run mode (don't make any changes)")

	flag.Parse()

	return config
}

// ensureProject creates a project if it doesn't exist or returns the existing one
func (c *Client) ensureProject(orgName, projectName, description string) (string, error) {
	ctx := context.Background()

	// List projects to check if it exists
	options := tfe.ProjectListOptions{
		Query: projectName,
	}
	projects, err := c.Projects.List(ctx, orgName, &options)
	if err != nil {
		return "", fmt.Errorf("failed to list projects: %w", err)
	}

	// Check if project already exists
	for _, p := range projects.Items {
		if p.Name == projectName {
			fmt.Printf("Project '%s' already exists\n", projectName)
			return p.ID, nil
		}
	}

	// Create new project
	createOptions := tfe.ProjectCreateOptions{
		Name:        projectName,
		Description: &description,
	}

	project, err := c.Projects.Create(ctx, orgName, createOptions)
	if err != nil {
		return "", fmt.Errorf("failed to create project: %w", err)
	}

	fmt.Printf("Project '%s' created successfully\n", projectName)
	return project.ID, nil
}

// ensureWorkspace creates a workspace if it doesn't exist or returns the existing one
func (c *Client) ensureWorkspace(orgName, workspaceName, projectID string, env Environment) (string, error) {
	ctx := context.Background()

	// Check if workspace exists
	workspace, err := c.Workspaces.Read(ctx, orgName, workspaceName)
	if err != nil {
		if err == tfe.ErrResourceNotFound {
			// Create new workspace
			workspaceOptions := tfe.WorkspaceCreateOptions{
				Name:               &workspaceName,
				Project:            &tfe.Project{ID: projectID},
				TerraformVersion:   &env.TerraformVersion,
				ExecutionMode:      &env.ExecutionMode,
				WorkingDirectory:   &env.WorkingDirectory,
				AutoApply:          &env.AutoApply,
				SpeculativeEnabled: &env.SpeculativeEnabled,
			}

			// Add tags if provided
			if len(env.Tags) > 0 {
				workspaceOptions.Tags = createTagsOptions(env.Tags)
			}

			workspace, err = c.Workspaces.Create(ctx, orgName, workspaceOptions)
			if err != nil {
				return "", fmt.Errorf("failed to create workspace: %w", err)
			}
			fmt.Printf("Workspace '%s' created successfully\n", workspaceName)
			return workspace.ID, nil
		}
		return "", fmt.Errorf("failed to read workspace: %w", err)
	}

	// Workspace exists, update it if needed
	needsUpdate := workspace.Project.ID != projectID ||
		workspace.TerraformVersion != env.TerraformVersion ||
		workspace.ExecutionMode != env.ExecutionMode ||
		workspace.WorkingDirectory != env.WorkingDirectory ||
		workspace.AutoApply != env.AutoApply ||
		workspace.SpeculativeEnabled != env.SpeculativeEnabled ||
		!hasAllTags(workspace.TagNames, env.Tags)

	if needsUpdate {
		updateOptions := tfe.WorkspaceUpdateOptions{
			Project:            &tfe.Project{ID: projectID},
			TerraformVersion:   &env.TerraformVersion,
			ExecutionMode:      &env.ExecutionMode,
			WorkingDirectory:   &env.WorkingDirectory,
			AutoApply:          &env.AutoApply,
			SpeculativeEnabled: &env.SpeculativeEnabled,
		}

		// We need to handle tags separately since they're not part of WorkspaceUpdateOptions
		if !hasAllTags(workspace.TagNames, env.Tags) {
			// Add tags to workspace
			addTagsOptions := tfe.WorkspaceAddTagsOptions{
				Tags: createTagsOptions(env.Tags),
			}
			err = c.Workspaces.AddTags(ctx, workspace.ID, addTagsOptions)
			if err != nil {
				return "", fmt.Errorf("failed to add tags to workspace: %w", err)
			}
		}

		workspace, err = c.Workspaces.Update(ctx, orgName, workspaceName, updateOptions)
		if err != nil {
			return "", fmt.Errorf("failed to update workspace: %w", err)
		}
		fmt.Printf("Workspace '%s' updated successfully\n", workspaceName)
	} else {
		fmt.Printf("Workspace '%s' already exists and is up to date\n", workspaceName)
	}

	return workspace.ID, nil
}

// createEnvironmentVars creates environment-specific variables for each workspace
func (c *Client) createEnvironmentVars(orgName string, environments []Environment) error {
	ctx := context.Background()

	for _, env := range environments {
		workspaceName := fmt.Sprintf("microsoft365-%s", env.Name)
		workspace, err := c.Workspaces.Read(ctx, orgName, workspaceName)
		if err != nil {
			return fmt.Errorf("failed to read workspace %s: %w", workspaceName, err)
		}

		// Define environment-specific variables
		envVars := []tfe.Variable{
			{
				Key:         "TF_WORKSPACE",
				Value:       env.Name,
				Category:    tfe.CategoryEnv,
				Sensitive:   false,
				HCL:         false,
				Description: "Terraform workspace name",
			},
			{
				Key:         "environment",
				Value:       env.Name,
				Category:    tfe.CategoryTerraform,
				Sensitive:   false,
				HCL:         false,
				Description: "Environment name for use in Terraform code",
			},
			{
				Key:         "is_production",
				Value:       fmt.Sprintf("%t", env.Name == "production"),
				Category:    tfe.CategoryTerraform,
				Sensitive:   false,
				HCL:         false,
				Description: "Boolean flag indicating if this is the production environment",
			},
		}

		// Create or update variables in the workspace
		for _, v := range envVars {
			// Check if variable exists
			listOptions := tfe.VariableListOptions{}
			variables, err := c.Variables.List(ctx, workspace.ID, &listOptions)
			if err != nil {
				return fmt.Errorf("failed to list variables for workspace %s: %w", workspaceName, err)
			}

			var existingVar *tfe.Variable
			for _, existing := range variables.Items {
				if existing.Key == v.Key && existing.Category == v.Category {
					existingVar = existing
					break
				}
			}

			if existingVar != nil {
				// Update existing variable if value is different
				if existingVar.Value != v.Value {
					updateOptions := tfe.VariableUpdateOptions{
						Value:       &v.Value,
						Description: &v.Description,
					}
					_, err := c.Variables.Update(ctx, workspace.ID, existingVar.ID, updateOptions)
					if err != nil {
						return fmt.Errorf("failed to update variable %s: %w", v.Key, err)
					}
					fmt.Printf("Variable '%s' updated in workspace '%s'\n", v.Key, workspaceName)
				} else {
					fmt.Printf("Variable '%s' already exists with correct value in workspace '%s'\n", v.Key, workspaceName)
				}
			} else {
				// Create new variable
				createOptions := tfe.VariableCreateOptions{
					Key:         &v.Key,
					Value:       &v.Value,
					Category:    tfe.Category(v.Category),
					Description: &v.Description,
					Sensitive:   &v.Sensitive,
					HCL:         &v.HCL,
				}
				_, err := c.Variables.Create(ctx, workspace.ID, createOptions)
				if err != nil {
					return fmt.Errorf("failed to create variable %s: %w", v.Key, err)
				}
				fmt.Printf("Variable '%s' created in workspace '%s'\n", v.Key, workspaceName)
			}
		}
	}

	return nil
}

// createCommonVarSet creates a variable set with common variables for all workspaces
func (c *Client) createCommonVarSet(orgName string, environments []Environment, projectID string) error {
	ctx := context.Background()

	// Define variable set
	varSetName := "Microsoft365-Common"
	varSetDesc := "Common variables for Microsoft 365 workspaces"

	// Check if variable set exists
	options := tfe.VariableSetListOptions{}
	varSets, err := c.VariableSets.List(ctx, orgName, &options)
	if err != nil {
		return fmt.Errorf("failed to list variable sets: %w", err)
	}

	var existingVarSet *tfe.VariableSet
	for _, vs := range varSets.Items {
		if vs.Name == varSetName {
			existingVarSet = vs
			break
		}
	}

	// Create variable set if it doesn't exist
	if existingVarSet == nil {
		createOptions := tfe.VariableSetCreateOptions{
			Name:        &varSetName,
			Description: &varSetDesc,
			Global:      tfe.Bool(false),
		}

		existingVarSet, err = c.VariableSets.Create(ctx, orgName, &createOptions)
		if err != nil {
			return fmt.Errorf("failed to create variable set: %w", err)
		}
		fmt.Printf("Variable set '%s' created successfully\n", varSetName)
	} else {
		fmt.Printf("Variable set '%s' already exists\n", varSetName)
	}

	// Define common variables
	commonVars := []tfe.Variable{
		{
			Key:         "M365_CLOUD",
			Value:       "public",
			Category:    tfe.CategoryEnv,
			Sensitive:   false,
			HCL:         false,
			Description: "Microsoft 365 cloud environment (public, dod, gcc, gcchigh, china, ex, rx)",
		},
		{
			Key:         "TF_LOG",
			Value:       "INFO",
			Category:    tfe.CategoryEnv,
			Sensitive:   false,
			HCL:         false,
			Description: "Terraform log level",
		},
		{
			Key:         "M365_DEBUG_MODE",
			Value:       "false",
			Category:    tfe.CategoryEnv,
			Sensitive:   false,
			HCL:         false,
			Description: "Enable debug mode for Microsoft 365 provider",
		},
		{
			Key:         "M365_TELEMETRY_OPTOUT",
			Value:       "true",
			Category:    tfe.CategoryEnv,
			Sensitive:   false,
			HCL:         false,
			Description: "Opt out of telemetry for Microsoft 365 provider",
		},
		{
			Key:         "TFE_PARALLELISM",
			Value:       "1",
			Category:    tfe.CategoryEnv,
			Sensitive:   false,
			HCL:         false,
			Description: "Terraform Cloud parallelism",
		},
	}

	// Get existing variables in the variable set
	existingVars, err := c.VariableSetVariables.List(ctx, existingVarSet.ID, &tfe.VariableSetVariableListOptions{})
	if err != nil {
		return fmt.Errorf("failed to list variables in variable set: %w", err)
	}

	// Create variables in the variable set
	for _, v := range commonVars {
		// Check if variable already exists
		varExists := false
		for _, existingVar := range existingVars.Items {
			if existingVar.Key == v.Key {
				varExists = true
				fmt.Printf("Variable '%s' already exists in variable set '%s'\n", v.Key, varSetName)
				break
			}
		}

		if !varExists {
			createVarOptions := tfe.VariableSetVariableCreateOptions{
				Key:         &v.Key,
				Value:       &v.Value,
				Description: &v.Description,
				Category:    tfe.Category(v.Category),
				Sensitive:   &v.Sensitive,
				HCL:         &v.HCL,
			}

			_, err := c.VariableSetVariables.Create(ctx, existingVarSet.ID, &createVarOptions)
			if err != nil {
				return fmt.Errorf("failed to create variable %s: %w", v.Key, err)
			}
			fmt.Printf("Variable '%s' created successfully in variable set '%s'\n", v.Key, varSetName)
		}
	}

	// Apply variable set to the project
	// Check if variable set is already applied to project
	isApplied := false
	for _, proj := range existingVarSet.Projects {
		if proj.ID == projectID {
			isApplied = true
			break
		}
	}

	if !isApplied {
		applyOptions := tfe.VariableSetApplyToProjectsOptions{
			Projects: []*tfe.Project{{ID: projectID}},
		}

		err = c.VariableSets.ApplyToProjects(ctx, existingVarSet.ID, applyOptions)
		if err != nil {
			return fmt.Errorf("failed to apply variable set to project: %w", err)
		}
		fmt.Printf("Variable set '%s' applied to project\n", varSetName)
	} else {
		fmt.Printf("Variable set '%s' already applied to project\n", varSetName)
	}

	return nil
}

// createWorkspaceAuthVars creates authentication variables directly in each workspace
func (c *Client) createWorkspaceAuthVars(orgName string, environments []Environment) error {
	ctx := context.Background()

	for _, env := range environments {
		workspaceName := fmt.Sprintf("microsoft365-%s", env.Name)
		workspace, err := c.Workspaces.Read(ctx, orgName, workspaceName)
		if err != nil {
			return fmt.Errorf("failed to read workspace %s: %w", workspaceName, err)
		}

		// Define workspace-specific auth variables
		authVars := []tfe.Variable{
			{
				Key:         "M365_TENANT_ID",
				Value:       "",
				Category:    tfe.CategoryEnv,
				Sensitive:   true,
				HCL:         false,
				Description: "Microsoft 365 tenant ID",
			},
			{
				Key:         "M365_AUTH_METHOD",
				Value:       "",
				Category:    tfe.CategoryEnv,
				Sensitive:   false,
				HCL:         false,
				Description: "Authentication method for Microsoft 365",
			},
			{
				Key:         "M365_CLIENT_ID",
				Value:       "",
				Category:    tfe.CategoryEnv,
				Sensitive:   true,
				HCL:         false,
				Description: "Microsoft 365 client ID",
			},
			{
				Key:         "M365_CLIENT_SECRET",
				Value:       "",
				Category:    tfe.CategoryEnv,
				Sensitive:   true,
				HCL:         false,
				Description: "Client secret for Microsoft 365 authentication",
			},
			{
				Key:         "M365_CLIENT_CERTIFICATE_FILE_PATH",
				Value:       "",
				Category:    tfe.CategoryEnv,
				Sensitive:   true,
				HCL:         false,
				Description: "Path to client certificate file",
			},
			{
				Key:         "M365_CLIENT_CERTIFICATE_PASSWORD",
				Value:       "",
				Category:    tfe.CategoryEnv,
				Sensitive:   true,
				HCL:         false,
				Description: "Password for client certificate",
			},
		}

		// Create or update variables in the workspace
		for _, v := range authVars {
			// Check if variable exists
			listOptions := tfe.VariableListOptions{}
			variables, err := c.Variables.List(ctx, workspace.ID, &listOptions)
			if err != nil {
				return fmt.Errorf("failed to list variables for workspace %s: %w", workspaceName, err)
			}

			var existingVar *tfe.Variable
			for _, existing := range variables.Items {
				if existing.Key == v.Key && existing.Category == v.Category {
					existingVar = existing
					break
				}
			}

			if existingVar != nil {
				// Variable already exists, no need to update as these will be empty placeholders
				fmt.Printf("Variable '%s' already exists in workspace '%s'\n", v.Key, workspaceName)
			} else {
				// Create new variable
				createOptions := tfe.VariableCreateOptions{
					Key:         &v.Key,
					Value:       &v.Value,
					Category:    tfe.Category(v.Category),
					Description: &v.Description,
					Sensitive:   &v.Sensitive,
					HCL:         &v.HCL,
				}
				_, err := c.Variables.Create(ctx, workspace.ID, createOptions)
				if err != nil {
					return fmt.Errorf("failed to create variable %s: %w", v.Key, err)
				}
				fmt.Printf("Variable '%s' created in workspace '%s'\n", v.Key, workspaceName)
			}
		}
	}

	return nil
}

// Helper function to create tag options from a slice of strings
func createTagsOptions(tags []string) []*tfe.Tag {
	var tagOptions []*tfe.Tag
	for _, tag := range tags {
		tagOptions = append(tagOptions, &tfe.Tag{Name: tag})
	}
	return tagOptions
}

// Helper function to check if a workspace has all required tags
func hasAllTags(existingTags []string, requiredTags []string) bool {
	tagMap := make(map[string]bool)
	for _, tag := range existingTags {
		tagMap[tag] = true
	}

	for _, tag := range requiredTags {
		if !tagMap[tag] {
			return false
		}
	}
	return true
}
