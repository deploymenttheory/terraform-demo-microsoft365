package main

import (
	"context"
	"fmt"
	"regexp"
	"strings"
	"time"

	"github.com/hashicorp/go-tfe"
)

// FindVariableSetsByPattern finds variable sets matching a regex pattern
func (c *TFCClient) FindVariableSetsByPattern(ctx context.Context, pattern *regexp.Regexp) ([]*tfe.VariableSet, error) {
	var matchingVariableSets []*tfe.VariableSet

	options := &tfe.VariableSetListOptions{
		ListOptions: tfe.ListOptions{
			PageNumber: 1,
			PageSize:   100,
		},
	}

	for {
		varSetList, err := c.client.VariableSets.List(ctx, c.organization, options)
		if err != nil {
			return nil, fmt.Errorf("error listing variable sets: %w", err)
		}

		// Filter variable sets by pattern
		for _, varSet := range varSetList.Items {
			if pattern.MatchString(varSet.Name) {
				matchingVariableSets = append(matchingVariableSets, varSet)
				if c.verbose {
					fmt.Printf("Found matching variable set: %s (ID: %s)\n", varSet.Name, varSet.ID)
				}
			}
		}

		// Check if there are more pages
		if varSetList.CurrentPage >= varSetList.TotalPages {
			break
		}

		// Go to next page
		options.PageNumber = varSetList.NextPage
	}

	return matchingVariableSets, nil
}

// GetVariableSetRelationships gets the relationships (workspaces, projects, etc.) for a variable set
func (c *TFCClient) GetVariableSetRelationships(ctx context.Context, varSet *tfe.VariableSet) (map[string]int, error) {
	relationships := make(map[string]int)

	// Check if the variable set applies to workspaces
	if !varSet.Global {
		// Get workspaces for this variable set
		// For now, we can't directly query workspaces by variable set ID
		// So we'll just note that it's not global and may have workspace relationships
		relationships["workspaces"] = 1

	} else {
		// Global variable sets apply to all workspaces
		relationships["global"] = 1
	}

	// Get variables in this variable set
	varOptions := &tfe.VariableListOptions{
		ListOptions: tfe.ListOptions{
			PageNumber: 1,
			PageSize:   1, // We only need to know if there are any
		},
	}

	varList, err := c.client.Variables.List(ctx, varSet.ID, varOptions)
	if err != nil {
		return nil, fmt.Errorf("error checking variables for variable set: %w", err)
	}
	relationships["variables"] = varList.TotalCount

	return relationships, nil
}

// DeleteVariableSet deletes a variable set
func (c *TFCClient) DeleteVariableSet(ctx context.Context, varSet *tfe.VariableSet) error {
	if c.dryRun {
		fmt.Printf("[DRY RUN] Would delete variable set: %s\n", varSet.Name)
		return nil
	}

	// Delete all variables in the variable set first
	err := c.DeleteAllVariablesInSet(ctx, varSet)
	if err != nil {
		return fmt.Errorf("error deleting variables in variable set %s: %w", varSet.Name, err)
	}

	// Delete the variable set
	err = c.client.VariableSets.Delete(ctx, varSet.ID)
	if err != nil {
		return fmt.Errorf("error deleting variable set %s: %w", varSet.Name, err)
	}

	// Add a small delay to avoid rate limiting
	time.Sleep(500 * time.Millisecond)

	return nil
}

// DeleteAllVariablesInSet deletes all variables in a variable set
func (c *TFCClient) DeleteAllVariablesInSet(ctx context.Context, varSet *tfe.VariableSet) error {
	if c.dryRun {
		fmt.Printf("[DRY RUN] Would delete all variables in variable set: %s\n", varSet.Name)
		return nil
	}

	// Get all variables in the variable set
	options := &tfe.VariableListOptions{
		ListOptions: tfe.ListOptions{
			PageNumber: 1,
			PageSize:   100,
		},
	}

	for {
		varList, err := c.client.Variables.List(ctx, varSet.ID, options)
		if err != nil {
			return fmt.Errorf("error listing variables in variable set: %w", err)
		}

		// Delete each variable
		for _, v := range varList.Items {
			err := c.client.Variables.Delete(ctx, varSet.ID, v.ID)
			if err != nil {
				return fmt.Errorf("error deleting variable %s: %w", v.Key, err)
			}
		}

		// Check if there are more pages
		if varList.CurrentPage >= varList.TotalPages {
			break
		}

		// Go to next page
		options.PageNumber = varList.NextPage
	}

	return nil
}

// VariableSetOperation handles variable set deletion operations
func VariableSetOperation(ctx context.Context, client *TFCClient, patternStr string, force bool) error {
	pattern, err := regexp.Compile(patternStr)
	if err != nil {
		return fmt.Errorf("invalid variable set regex pattern: %w", err)
	}

	fmt.Printf("\nSearching for variable sets in organization '%s' matching pattern: %s\n", client.organization, pattern.String())

	// Find matching variable sets
	variableSets, err := client.FindVariableSetsByPattern(ctx, pattern)
	if err != nil {
		return err
	}

	// Display matching variable sets
	if len(variableSets) == 0 {
		fmt.Println("No variable sets found matching the pattern.")
		return nil
	}

	fmt.Printf("\nFound %d variable sets matching the pattern:\n", len(variableSets))
	for i, varSet := range variableSets {
		globalStatus := ""
		if varSet.Global {
			globalStatus = " (Global)"
		}
		fmt.Printf("%d. %s%s (ID: %s)\n", i+1, varSet.Name, globalStatus, varSet.ID)
	}

	// Check for relationships
	fmt.Println("\nChecking for variable set relationships...")
	varSetsWithRelationships := make(map[string]map[string]int)

	for _, varSet := range variableSets {
		relationships, err := client.GetVariableSetRelationships(ctx, varSet)
		if err != nil {
			fmt.Printf("Error checking relationships for variable set %s: %s\n", varSet.Name, err)
			continue
		}

		totalRelationships := 0
		for _, count := range relationships {
			totalRelationships += count
		}

		if totalRelationships > 0 {
			varSetsWithRelationships[varSet.ID] = relationships
			fmt.Printf("⚠️ Variable set '%s' has: ", varSet.Name)

			relationshipDetails := []string{}
			if relationships["workspaces"] > 0 {
				relationshipDetails = append(relationshipDetails, fmt.Sprintf("%d workspace(s)", relationships["workspaces"]))
			}
			if relationships["variables"] > 0 {
				relationshipDetails = append(relationshipDetails, fmt.Sprintf("%d variable(s)", relationships["variables"]))
			}
			if relationships["global"] > 0 {
				relationshipDetails = append(relationshipDetails, "global scope (applies to all workspaces)")
			}

			fmt.Println(strings.Join(relationshipDetails, ", "))
		}
	}

	// Confirm deletion if not in force mode or dry run
	if !force && !client.dryRun {
		fmt.Printf("\nAre you sure you want to delete these %d variable sets? (y/N): ", len(variableSets))
		var response string
		fmt.Scanln(&response)
		if !(strings.ToLower(response) == "y" || strings.ToLower(response) == "yes") {
			fmt.Println("Variable set deletion cancelled.")
			return nil
		}
	}

	// Delete variable sets
	fmt.Println("\nDeleting variable sets...")
	for i, varSet := range variableSets {
		fmt.Printf("[%d/%d] Deleting variable set '%s'... ", i+1, len(variableSets), varSet.Name)

		if client.dryRun {
			fmt.Println("SKIPPED (dry run)")
			continue
		}

		err := client.DeleteVariableSet(ctx, varSet)
		if err != nil {
			fmt.Printf("ERROR: %s\n", err)
		} else {
			fmt.Println("SUCCESS")
		}
	}

	return nil
}
