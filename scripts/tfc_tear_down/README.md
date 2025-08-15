# Terraform Cloud Cleanup Tool

This tool provides functionality to delete Terraform Cloud workspaces and projects based on regex pattern matching.

## Features

- Delete workspaces matching a regex pattern
- Delete projects matching a regex pattern (only if they have no workspaces)
- Dry run mode to preview changes without applying them
- Verbose logging option
- Force mode to skip confirmation prompts

## Prerequisites

- Go 1.16 or higher
- Terraform Cloud API token with appropriate permissions

## Installation

1. Clone the repository
2. Navigate to the directory
3. Build the binary:

```bash
go build -o tfc-cleanup
```

## Usage

```bash
# Set your Terraform Cloud API token
export TFE_TOKEN=your_token_here

# Delete workspaces matching a pattern
./tfc-cleanup -org your-organization -token your-token -workspace "^m365_.*_sandbox$"

# Delete projects matching a pattern
./tfc-cleanup -org your-organization -token your-token -project "^microsoft_.*$"

# Perform a dry run
./tfc-cleanup -org your-organization -token your-token -workspace "^m365_.*_sandbox$" -dry-run

# Skip confirmation prompts
./tfc-cleanup -org your-organization -token your-token -workspace "^m365_.*_sandbox$" -force

# Enable verbose output
./tfc-cleanup -org your-organization -token your-token -workspace "^m365_.*_sandbox$" -verbose
```

## Command Line Options

| Flag | Description | Default |
|------|-------------|---------|
| `-token` | Terraform Cloud API token | Value from `TFE_TOKEN` env var |
| `-org` | Terraform Cloud organization name | (Required) |
| `-dry-run` | Perform a dry run without making changes | `false` |
| `-workspace` | Regex pattern for workspace names to delete | `""` |
| `-project` | Regex pattern for project names to delete | `""` |
| `-force` | Skip confirmation prompts | `false` |
| `-verbose` | Enable verbose output | `false` |

## Examples

### Delete all sandbox workspaces

```bash
./tfc-cleanup -org your-organization -workspace "^m365_.*_sandbox$"
```

### Delete all staging and sandbox workspaces

```bash
./tfc-cleanup -org your-organization -workspace "^m365_.*(sandbox|staging)$"
```

### Delete a specific project

```bash
./tfc-cleanup -org your-organization -project "^microsoft_365$"
```

### Delete multiple projects

```bash
./tfc-cleanup -org your-organization -project "^(test|demo)_.*$"
```

## Safety Features

- Confirmation prompts before deletion (unless `-force` is used)
- Dry run mode to preview changes
- Projects with workspaces cannot be deleted
- Workspaces are locked before deletion to prevent new runs

## Notes

- The tool will automatically lock workspaces before deletion to prevent new runs
- Projects with workspaces cannot be deleted - you must delete the workspaces first
- API rate limiting is handled with small delays between operations
