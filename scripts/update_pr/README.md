# PR Updater

This tool updates GitHub Pull Requests with Terraform plan or apply output from a JSON artifact.

## Overview

The PR Updater reads a JSON artifact file containing Terraform plan or apply output and creates a comment on a specified GitHub Pull Request with a formatted summary of the results. This is designed to be used in GitHub Actions workflows to provide feedback on Terraform changes.

## Building

To build the tool:

```bash
# Navigate to the directory
cd scripts/update_pr

# Build the binary
go build -o pr-updater pr_updater.go
```

## Usage

The tool requires the following environment variables:

- `GITHUB_TOKEN`: A GitHub token with permissions to comment on PRs
- `REPO`: The repository in the format "owner/repo" (e.g., "deploymenttheory/terraform-demo-microsoft365")
- `ARTIFACT_PATH`: The path to the JSON artifact file
- `TARGET_PR_NUMBER`: The PR number to comment on

Example usage:

```bash
# Set environment variables
export GITHUB_TOKEN="your-github-token"
export REPO="deploymenttheory/terraform-demo-microsoft365"
export ARTIFACT_PATH="/path/to/artifact.json"
export TARGET_PR_NUMBER="123"

# Run the tool
./pr-updater
```

## JSON Artifact Format

The tool expects a JSON artifact in the following format:

```json
{
  "plan_response": {
    "status": "Success",
    "run_id": "run-uDt55tvtmgacEEK5",
    "run_status": "planned_and_finished",
    "run_message": "Triggered from HCP Terraform CI",
    "run_link": "https://app.terraform.io/app/org/workspaces/workspace/runs/run-id",
    "plan_id": "plan-id",
    "plan_status": "finished",
    "configuration_version_id": "cv-id"
  },
  "plan_output": {
    "status": "Success",
    "add": "4",
    "change": "0",
    "destroy": "0",
    "plan_id": "Success",
    "plan_status": "Success"
  }
}
```

For apply operations, the format is simpler:

```json
{
  "status": "Success"
}
```

## GitHub Actions Integration

This tool is designed to be used in GitHub Actions workflows. Example workflow usage:

```yaml
- name: Run PR updater utility
  run: |
    ./pr-updater
  env:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    REPO: ${{ github.repository }}
    ARTIFACT_PATH: ${{ steps.download-artifact.outputs.download-path }}/${{ vars.TF_PLAN_OUTPUT }}
    TARGET_PR_NUMBER: ${{ inputs.target-pr-number }}
``` 