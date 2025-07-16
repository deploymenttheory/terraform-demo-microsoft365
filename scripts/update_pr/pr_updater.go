package main

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"os"
	"strconv"
	"strings"

	"github.com/google/go-github/v73/github"
)

// PlanResponse represents the plan response part of the artifact JSON
type PlanResponse struct {
	Status                 string `json:"status"`
	RunID                  string `json:"run_id"`
	RunStatus              string `json:"run_status"`
	RunMessage             string `json:"run_message"`
	RunLink                string `json:"run_link"`
	PlanID                 string `json:"plan_id"`
	PlanStatus             string `json:"plan_status"`
	ConfigurationVersionID string `json:"configuration_version_id"`
}

// PlanOutput represents the plan output part of the artifact JSON
type PlanOutput struct {
	Status     string `json:"status"`
	Add        string `json:"add"`
	Change     string `json:"change"`
	Destroy    string `json:"destroy"`
	PlanID     string `json:"plan_id"`
	PlanStatus string `json:"plan_status"`
}

// Artifact represents the complete artifact JSON structure
type Artifact struct {
	PlanResponse PlanResponse `json:"plan_response"`
	PlanOutput   PlanOutput   `json:"plan_output"`
	Status       string       `json:"status,omitempty"` // For apply operations
}

func main() {
	// Get environment variables - these match the env vars set in the GitHub Actions workflow
	repo := os.Getenv("REPO")                          // Set from github.repository
	githubToken := os.Getenv("GITHUB_TOKEN")           // Set from secrets.GITHUB_TOKEN
	artifactPath := os.Getenv("ARTIFACT_PATH")         // Set from download-artifact output path
	targetPRNumberStr := os.Getenv("TARGET_PR_NUMBER") // Set from inputs.target-pr-number

	// Log environment variables for debugging (excluding token)
	fmt.Printf("Repository: %s\n", repo)
	fmt.Printf("Artifact Path: %s\n", artifactPath)
	fmt.Printf("Target PR Number: %s\n", targetPRNumberStr)

	// Validate environment variables
	if repo == "" || githubToken == "" || artifactPath == "" || targetPRNumberStr == "" {
		fmt.Println("Error: One or more required environment variables are missing")
		fmt.Println("Required: REPO, GITHUB_TOKEN, ARTIFACT_PATH, TARGET_PR_NUMBER")
		os.Exit(1)
	}

	// Parse target PR number
	targetPRNumber, err := strconv.Atoi(targetPRNumberStr)
	if err != nil {
		fmt.Printf("Error parsing PR number: %v\n", err)
		os.Exit(1)
	}

	// Create GitHub client
	ctx := context.Background()
	// Using the new client creation pattern with WithAuthToken
	client := github.NewClient(nil).WithAuthToken(githubToken)

	// Parse repository owner and name
	repoParts := strings.Split(repo, "/")
	if len(repoParts) != 2 {
		fmt.Printf("Invalid repository format: %s\n", repo)
		os.Exit(1)
	}
	owner := repoParts[0]
	repoName := repoParts[1]

	// Get PR (just to verify it exists)
	_, resp, err := client.PullRequests.Get(ctx, owner, repoName, targetPRNumber)
	if err != nil {
		var rateErr *github.RateLimitError
		if errors.As(err, &rateErr) {
			fmt.Printf("Hit rate limit, remaining: %d, resets at: %s\n",
				rateErr.Rate.Remaining, rateErr.Rate.Reset.Time)
		} else {
			fmt.Printf("Error getting PR: %v\n", err)
		}
		os.Exit(1)
	}

	// Log rate limit info
	if resp != nil {
		fmt.Printf("Rate limit: %d/%d, remaining: %d, resets at: %s\n",
			resp.Rate.Limit, resp.Rate.Remaining, resp.Rate.Reset.Time)
	}

	fmt.Printf("Reading artifact from: %s\n", artifactPath)

	// Read artifact file
	artifactData, err := os.ReadFile(artifactPath)
	if err != nil {
		fmt.Printf("Error reading artifact file: %v\n", err)
		// Try to list directory contents for debugging
		if files, listErr := os.ReadDir(strings.Split(artifactPath, "/")[0]); listErr == nil {
			fmt.Println("Directory contents:")
			for _, file := range files {
				fmt.Println(" -", file.Name())
			}
		}
		os.Exit(1)
	}

	// Parse artifact JSON
	var artifact Artifact
	if err := json.Unmarshal(artifactData, &artifact); err != nil {
		fmt.Printf("Error parsing artifact JSON: %v\n", err)
		fmt.Printf("Artifact content: %s\n", string(artifactData))
		os.Exit(1)
	}

	// Create comment content
	var comment string
	if artifact.Status != "" {
		// Apply operation
		comment = fmt.Sprintf("Apply Status: %s", artifact.Status)
	} else {
		// Plan operation
		comment = fmt.Sprintf(
			"**Plan Status:** %s\n**Add:** %s\n**Change:** %s\n**Destroy:** %s\n[View Run on Terraform Cloud](%s)",
			artifact.PlanResponse.Status,
			artifact.PlanOutput.Add,
			artifact.PlanOutput.Change,
			artifact.PlanOutput.Destroy,
			artifact.PlanResponse.RunLink,
		)
	}

	fmt.Println("Adding comment to PR:", targetPRNumber)

	// Create comment on PR using github.Ptr helper function
	_, _, err = client.Issues.CreateComment(ctx, owner, repoName, targetPRNumber, &github.IssueComment{
		Body: github.Ptr(comment),
	})
	if err != nil {
		var rateErr *github.RateLimitError
		if errors.As(err, &rateErr) {
			fmt.Printf("Hit rate limit when creating comment, remaining: %d, resets at: %s\n",
				rateErr.Rate.Remaining, rateErr.Rate.Reset.Time)
		} else {
			fmt.Printf("Error creating comment: %v\n", err)
		}
		os.Exit(1)
	}

	fmt.Println("Successfully updated PR with comment")
}
