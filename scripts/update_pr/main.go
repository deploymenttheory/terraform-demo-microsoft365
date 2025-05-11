package main

import (
	"fmt"
	"os"

	"github.com/deploymenttheory/terraform-demo-microsoft365/scripts/update_pr/internal/config"
	"github.com/deploymenttheory/terraform-demo-microsoft365/scripts/update_pr/internal/github"
)

func main() {

	cfg, err := config.Load()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error loading gh configuration: %v\n", err)
		os.Exit(1)
	}

	owner, repo, err := cfg.ParseRepo()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Invalid repository format: %v\n", err)
		os.Exit(1)
	}

	gh := github.NewClient(cfg)

	// Update the PR with the artifact content
	err = gh.UpdatePRWithText(owner, repo, cfg.TargetPRNumber, cfg.ArtifactPath)
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error updating PR: %v\n", err)
		os.Exit(1)
	}

	fmt.Println("Successfully updated PR with artifact content")
}
