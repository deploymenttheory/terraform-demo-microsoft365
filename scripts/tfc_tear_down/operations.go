package main

import (
	"context"
	"fmt"
	"regexp"
	"strings"

	"github.com/hashicorp/go-tfe"
)

// WorkspaceOperation handles workspace deletion operations
func WorkspaceOperation(ctx context.Context, client *TFCClient, patternStr string, force bool) error {
	pattern, err := regexp.Compile(patternStr)
	if err != nil {
		return fmt.Errorf("invalid workspace regex pattern: %w", err)
	}

	fmt.Printf("\nSearching for workspaces in organization '%s' matching pattern: %s\n", client.organization, pattern.String())

	// Find matching workspaces
	workspaces, err := client.FindWorkspacesByPattern(ctx, pattern)
	if err != nil {
		return err
	}

	// Display matching workspaces
	if len(workspaces) == 0 {
		fmt.Println("No workspaces found matching the pattern.")
		return nil
	}

	fmt.Printf("\nFound %d workspaces matching the pattern:\n", len(workspaces))
	for i, ws := range workspaces {
		fmt.Printf("%d. %s (ID: %s)\n", i+1, ws.Name, ws.ID)
	}

	// Confirm deletion if not in force mode or dry run
	if !force && !client.dryRun {
		fmt.Printf("\nAre you sure you want to delete these %d workspaces? (y/N): ", len(workspaces))
		var response string
		fmt.Scanln(&response)
		if !(strings.ToLower(response) == "y" || strings.ToLower(response) == "yes") {
			fmt.Println("Workspace deletion cancelled.")
			return nil
		}
	}

	// Delete workspaces
	fmt.Println("\nDeleting workspaces...")
	for i, ws := range workspaces {
		fmt.Printf("[%d/%d] Deleting workspace '%s'... ", i+1, len(workspaces), ws.Name)

		if client.dryRun {
			fmt.Println("SKIPPED (dry run)")
			continue
		}

		err := client.DeleteWorkspace(ctx, ws)
		if err != nil {
			fmt.Printf("ERROR: %s\n", err)
		} else {
			fmt.Println("SUCCESS")
		}
	}

	return nil
}

// ProjectOperation handles project deletion operations
func ProjectOperation(ctx context.Context, client *TFCClient, patternStr string, force bool) error {
	pattern, err := regexp.Compile(patternStr)
	if err != nil {
		return fmt.Errorf("invalid project regex pattern: %w", err)
	}

	fmt.Printf("\nSearching for projects in organization '%s' matching pattern: %s\n", client.organization, pattern.String())

	// Find matching projects
	projects, err := client.FindProjectsByPattern(ctx, pattern)
	if err != nil {
		return err
	}

	// Display matching projects
	if len(projects) == 0 {
		fmt.Println("No projects found matching the pattern.")
		return nil
	}

	fmt.Printf("\nFound %d projects matching the pattern:\n", len(projects))
	for i, project := range projects {
		fmt.Printf("%d. %s (ID: %s)\n", i+1, project.Name, project.ID)
	}

	// Check if projects have workspaces
	fmt.Println("\nChecking for workspaces in projects...")
	projectsWithWorkspaces := make(map[string]int)

	for _, project := range projects {
		count, err := client.GetProjectWorkspaceCount(ctx, project.ID)
		if err != nil {
			fmt.Printf("Error checking workspaces for project %s: %s\n", project.Name, err)
			continue
		}

		if count > 0 {
			projectsWithWorkspaces[project.ID] = count
			fmt.Printf("⚠️ Project '%s' has %d workspace(s) and cannot be deleted until they are removed.\n",
				project.Name, count)
		}
	}

	// Filter out projects with workspaces
	var deletableProjects []*tfe.Project
	for _, project := range projects {
		if _, hasWorkspaces := projectsWithWorkspaces[project.ID]; !hasWorkspaces {
			deletableProjects = append(deletableProjects, project)
		}
	}

	if len(deletableProjects) == 0 {
		fmt.Println("\nNo projects can be deleted. Remove workspaces first.")
		return nil
	}

	// Confirm deletion if not in force mode or dry run
	if !force && !client.dryRun {
		fmt.Printf("\nAre you sure you want to delete these %d projects? (y/N): ", len(deletableProjects))
		var response string
		fmt.Scanln(&response)
		if !(strings.ToLower(response) == "y" || strings.ToLower(response) == "yes") {
			fmt.Println("Project deletion cancelled.")
			return nil
		}
	}

	// Delete projects
	fmt.Println("\nDeleting projects...")
	for i, project := range deletableProjects {
		fmt.Printf("[%d/%d] Deleting project '%s'... ", i+1, len(deletableProjects), project.Name)

		if client.dryRun {
			fmt.Println("SKIPPED (dry run)")
			continue
		}

		err := client.DeleteProject(ctx, project)
		if err != nil {
			fmt.Printf("ERROR: %s\n", err)
		} else {
			fmt.Println("SUCCESS")
		}
	}

	return nil
}
