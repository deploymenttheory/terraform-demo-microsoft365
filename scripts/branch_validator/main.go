package main

import (
	"encoding/json"
	"fmt"
	"os"
	"strings"
)

// BranchPrefix represents the structure for each prefix configuration
type BranchPrefix struct {
	Description string `json:"description"`
	Pattern     string `json:"pattern"`
}

// Config represents the root configuration structure
type Config struct {
	AllowedPrefixes map[string]BranchPrefix `json:"allowed_prefixes"`
}

func main() {
	// Get branch name from environment
	branchName := os.Getenv("BRANCH_NAME")
	if branchName == "" {
		exitWithError("BRANCH_NAME environment variable is empty")
	}

	// Read and parse configuration
	config, err := loadConfig("./configuration/allowed_branch_prefixes.json")
	if err != nil {
		exitWithError("Failed to load configuration: %v", err)
	}

	// Validate branch name
	if valid, prefix := validateBranchName(branchName, config); valid {
		fmt.Printf("Branch name is valid: prefix:%s, name: %s\n", prefix.Pattern, branchName)
		os.Exit(0)
	}

	// If we get here, no valid prefix was found
	exitWithError("branch name prefix is invalid: %s\nAllowed prefixes: %s",
		branchName,
		getAllowedPrefixesString(config))
}

func loadConfig(filePath string) (*Config, error) {
	data, err := os.ReadFile(filePath)
	if err != nil {
		return nil, fmt.Errorf("error reading config file: %w", err)
	}

	var config Config
	if err := json.Unmarshal(data, &config); err != nil {
		return nil, fmt.Errorf("error parsing config file: %w", err)
	}

	return &config, nil
}

func validateBranchName(branchName string, config *Config) (bool, *BranchPrefix) {
	for _, prefix := range config.AllowedPrefixes {
		if strings.HasPrefix(branchName, prefix.Pattern) {
			return true, &prefix
		}
	}
	return false, nil
}

func getAllowedPrefixesString(config *Config) string {
	var prefixes []string
	for _, prefix := range config.AllowedPrefixes {
		prefixes = append(prefixes, prefix.Pattern)
	}
	return strings.Join(prefixes, ", ")
}

func exitWithError(format string, args ...interface{}) {
	fmt.Fprintf(os.Stderr, format+"\n", args...)
	os.Exit(1)
}
