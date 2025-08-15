package main

import (
	"context"
	"fmt"
	"log"
	"regexp"
	"time"

	"github.com/hashicorp/go-tfe"
)

// TFCClient wraps the TFE client with additional functionality
type TFCClient struct {
	client       *tfe.Client
	organization string
	dryRun       bool
	verbose      bool
}

// NewTFCClient creates a new TFCClient
func NewTFCClient(token, organization string, dryRun, verbose bool) (*TFCClient, error) {
	config := &tfe.Config{
		Token: token,
	}

	client, err := tfe.NewClient(config)
	if err != nil {
		return nil, err
	}

	return &TFCClient{
		client:       client,
		organization: organization,
		dryRun:       dryRun,
		verbose:      verbose,
	}, nil
}

// FindWorkspacesByPattern finds workspaces matching a regex pattern
func (c *TFCClient) FindWorkspacesByPattern(ctx context.Context, pattern *regexp.Regexp) ([]*tfe.Workspace, error) {
	var matchingWorkspaces []*tfe.Workspace

	options := &tfe.WorkspaceListOptions{
		ListOptions: tfe.ListOptions{
			PageNumber: 1,
			PageSize:   100,
		},
	}

	for {
		wsList, err := c.client.Workspaces.List(ctx, c.organization, options)
		if err != nil {
			return nil, fmt.Errorf("error listing workspaces: %w", err)
		}

		// Filter workspaces by pattern
		for _, ws := range wsList.Items {
			if pattern.MatchString(ws.Name) {
				matchingWorkspaces = append(matchingWorkspaces, ws)
				if c.verbose {
					log.Printf("Found matching workspace: %s (ID: %s)", ws.Name, ws.ID)
				}
			}
		}

		// Check if there are more pages
		if wsList.CurrentPage >= wsList.TotalPages {
			break
		}

		// Go to next page
		options.PageNumber = wsList.NextPage
	}

	return matchingWorkspaces, nil
}

// DeleteWorkspace deletes a workspace
func (c *TFCClient) DeleteWorkspace(ctx context.Context, workspace *tfe.Workspace) error {
	if c.dryRun {
		log.Printf("[DRY RUN] Would delete workspace: %s", workspace.Name)
		return nil
	}

	// First, lock the workspace to prevent new runs
	lockOptions := tfe.WorkspaceLockOptions{
		Reason: tfe.String("Preparing for deletion"),
	}
	_, err := c.client.Workspaces.Lock(ctx, workspace.ID, lockOptions)
	if err != nil {
		// If the workspace is already locked, we can proceed
		if c.verbose {
			log.Printf("Warning: Failed to lock workspace %s: %s", workspace.Name, err)
		}
	}

	// Delete the workspace
	err = c.client.Workspaces.Delete(ctx, c.organization, workspace.Name)
	if err != nil {
		return fmt.Errorf("error deleting workspace %s: %w", workspace.Name, err)
	}

	// Add a small delay to avoid rate limiting
	time.Sleep(500 * time.Millisecond)

	return nil
}

// FindProjectsByPattern finds projects matching a regex pattern
func (c *TFCClient) FindProjectsByPattern(ctx context.Context, pattern *regexp.Regexp) ([]*tfe.Project, error) {
	var matchingProjects []*tfe.Project

	options := &tfe.ProjectListOptions{
		ListOptions: tfe.ListOptions{
			PageNumber: 1,
			PageSize:   100,
		},
	}

	for {
		projectList, err := c.client.Projects.List(ctx, c.organization, options)
		if err != nil {
			return nil, fmt.Errorf("error listing projects: %w", err)
		}

		// Filter projects by pattern
		for _, project := range projectList.Items {
			if pattern.MatchString(project.Name) {
				matchingProjects = append(matchingProjects, project)
				if c.verbose {
					log.Printf("Found matching project: %s (ID: %s)", project.Name, project.ID)
				}
			}
		}

		// Check if there are more pages
		if projectList.CurrentPage >= projectList.TotalPages {
			break
		}

		// Go to next page
		options.PageNumber = projectList.NextPage
	}

	return matchingProjects, nil
}

// GetProjectWorkspaceCount gets the number of workspaces in a project
func (c *TFCClient) GetProjectWorkspaceCount(ctx context.Context, projectID string) (int, error) {
	options := &tfe.WorkspaceListOptions{
		ListOptions: tfe.ListOptions{
			PageNumber: 1,
			PageSize:   1, // We only need to know if there are any
		},
		ProjectID: projectID,
	}

	wsList, err := c.client.Workspaces.List(ctx, c.organization, options)
	if err != nil {
		return 0, fmt.Errorf("error checking workspaces for project: %w", err)
	}

	return wsList.TotalCount, nil
}

// DeleteProject deletes a project
func (c *TFCClient) DeleteProject(ctx context.Context, project *tfe.Project) error {
	if c.dryRun {
		log.Printf("[DRY RUN] Would delete project: %s", project.Name)
		return nil
	}

	err := c.client.Projects.Delete(ctx, project.ID)
	if err != nil {
		return fmt.Errorf("error deleting project %s: %w", project.Name, err)
	}

	// Add a small delay to avoid rate limiting
	time.Sleep(500 * time.Millisecond)

	return nil
}

// GetOrganizationDetails gets details about the organization
func (c *TFCClient) GetOrganizationDetails(ctx context.Context) (*tfe.Organization, error) {
	org, err := c.client.Organizations.Read(ctx, c.organization)
	if err != nil {
		return nil, fmt.Errorf("error reading organization %s: %w", c.organization, err)
	}
	return org, nil
}
