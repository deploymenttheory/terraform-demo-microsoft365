package config

import (
	"fmt"
	"os"
	"strings"
)

// Config holds the environment configuration
type Config struct {
	Repo           string
	GithubToken    string
	ArtifactPath   string
	TargetPRNumber string
}

// Load loads and validates environment variables
func Load() (*Config, error) {
	config := &Config{
		Repo:           os.Getenv("REPO"),
		GithubToken:    os.Getenv("GITHUB_TOKEN"),
		ArtifactPath:   os.Getenv("ARTIFACT_PATH"),
		TargetPRNumber: os.Getenv("TARGET_PR_NUMBER"),
	}

	if err := config.validate(); err != nil {
		return nil, err
	}

	return config, nil
}

// validate checks if all required environment variables are set
func (c *Config) validate() error {
	if c.Repo == "" || c.GithubToken == "" ||
		c.ArtifactPath == "" || c.TargetPRNumber == "" {
		return fmt.Errorf("missing required environment variables")
	}
	return nil
}

// ParseRepo splits the repository string into owner and repo name
func (c *Config) ParseRepo() (owner, repo string, err error) {
	parts := strings.Split(c.Repo, "/")
	if len(parts) != 2 {
		return "", "", fmt.Errorf("invalid repository format. Expected 'owner/repo', got '%s'", c.Repo)
	}
	return parts[0], parts[1], nil
}
