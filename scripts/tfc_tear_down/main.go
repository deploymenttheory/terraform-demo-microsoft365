package main

import (
	"context"
	"flag"
	"fmt"
	"log"
	"os"
	"strings"
)

// Config holds the application configuration
type Config struct {
	token         string
	organization  string
	dryRun        bool
	workspaceRE   string
	projectRE     string
	variableSetRE string
	force         bool
	verbose       bool
}

func main() {
	// Parse command line arguments
	config := parseFlags()

	// Setup TFE client
	client, err := NewTFCClient(config.token, config.organization, config.dryRun, config.verbose)
	if err != nil {
		log.Fatalf("Error setting up TFE client: %s", err)
	}

	// Create context
	ctx := context.Background()

	// Display banner
	displayBanner()

	// Verify organization exists
	org, err := client.GetOrganizationDetails(ctx)
	if err != nil {
		log.Fatalf("Error accessing organization: %s", err)
	}
	fmt.Printf("Connected to organization: %s (%s)\n", org.Name, org.Email)

	// Confirm with user before proceeding
	if !config.force && !confirmAction() {
		fmt.Println("Operation cancelled by user.")
		os.Exit(0)
	}

	// Perform the operations
	if config.workspaceRE != "" {
		err := WorkspaceOperation(ctx, client, config.workspaceRE, config.force)
		if err != nil {
			log.Fatalf("Error in workspace operation: %s", err)
		}
	}

	if config.projectRE != "" {
		err := ProjectOperation(ctx, client, config.projectRE, config.force)
		if err != nil {
			log.Fatalf("Error in project operation: %s", err)
		}
	}

	if config.variableSetRE != "" {
		err := VariableSetOperation(ctx, client, config.variableSetRE, config.force)
		if err != nil {
			log.Fatalf("Error in variable set operation: %s", err)
		}
	}

	fmt.Println("\nOperation completed successfully.")
}

// parseFlags parses command line arguments
func parseFlags() *Config {
	config := &Config{}

	flag.StringVar(&config.token, "token", os.Getenv("TFE_TOKEN"), "Terraform Cloud API token (can also be set via TFE_TOKEN env var)")
	flag.StringVar(&config.organization, "org", "", "Terraform Cloud organization name")
	flag.BoolVar(&config.dryRun, "dry-run", false, "Perform a dry run without making changes")
	flag.StringVar(&config.workspaceRE, "workspace", "", "Regex pattern for workspace names to delete")
	flag.StringVar(&config.projectRE, "project", "", "Regex pattern for project names to delete")
	flag.StringVar(&config.variableSetRE, "varset", "", "Regex pattern for variable set names to delete")
	flag.BoolVar(&config.force, "force", false, "Skip confirmation prompts")
	flag.BoolVar(&config.verbose, "verbose", false, "Enable verbose output")

	flag.Parse()

	// Validate required flags
	if config.token == "" {
		log.Fatal("Terraform Cloud API token is required. Set via -token flag or TFE_TOKEN environment variable.")
	}

	if config.organization == "" {
		log.Fatal("Terraform Cloud organization is required. Set via -org flag.")
	}

	if config.workspaceRE == "" && config.projectRE == "" && config.variableSetRE == "" {
		log.Fatal("At least one of -workspace, -project, or -varset must be specified.")
	}

	return config
}

// displayBanner shows the application banner
func displayBanner() {
	banner := `
╔════════════════════════════════════════════════════════════════╗
║                                                                ║
║        Terraform Cloud Workspace & Project Cleanup Tool        ║
║                                                                ║
║        ⚠️  WARNING: THIS WILL DELETE RESOURCES  ⚠️             ║
║                                                                ║
╚════════════════════════════════════════════════════════════════╝
`
	fmt.Println(banner)
}

// confirmAction asks the user to confirm before proceeding
func confirmAction() bool {
	fmt.Print("Are you sure you want to proceed? This action cannot be undone. (y/N): ")
	var response string
	fmt.Scanln(&response)
	return strings.ToLower(response) == "y" || strings.ToLower(response) == "yes"
}
