# terraform-demo-microsoft365

This repository provides a demonstration of using Terraform to manage Microsoft 365 resources using the terraform-provider-microsoft365 provider.

This repo is designed for workplace engineers familiar with click ops with a learning pathway to start using declarative management with terraform for their operational workflows. This repo demonstrates how to use IaC principles to lifecycle
manage as code microsoft tools and services as code.

This lab has the following dependancies

- a minimum of 1 Microsoft 365 tenant, but this demo is designed to be used with 3. One sandbox tenant and two route to live tenants.
- terraform cloud for remote state management
- github with github actions for CI/CD
- access to create various enterprise app types with Entra ID to test different authentication methods
- relevant m365 licensing for the demo
- enterprise app defined within Entra ID for authentication with the correct graph permissions defined.

## Getting Started

Before you begin working with this Terraform demo for Microsoft 365, you'll need to set up the required dependencies on your local system.

### Prerequisites

1. **Python 3**
   - Python is required to run the prerequisite installation scripts
   - [Download Python](https://www.python.org/downloads/)
   - Verify installation with: `python --version` or `python3 --version`

### Installing Dependencies

Navigate to the prerequisites directory:

```bash
cd ./GitHub/deploymenttheory/terraform-demo-microsoft365/scripts/pre_reqs
```

#### For Windows Users

If you're using Windows, run the winget-based installation script:

```bash
# Run with Administrator privileges
python install_dependencies_with_winget.py
```

This script will:

- Check if winget is installed
- Install or update the following tools:
  - Python (latest version)
  - Go (latest version)
  - Terraform (latest version)
  - Terraform-docs (latest version)
  - Azure CLI (latest version)
  - Git (latest version)
  - PowerShell (latest version)

#### For macOS Users

If you're using macOS, you'll need to run two scripts:

1. First, ensure Homebrew is installed:

```bash
python install_brew.py
```

2. Then, install the required dependencies:

```bash
python install_dependencies_with_brew.py
```

These scripts will:

- Check if Homebrew is installed and install it if needed
- Install or update the following tools:
  - Python (latest version)
  - Go (latest version)
  - Terraform (latest version)
  - Terraform-docs (latest version)
  - Azure CLI (latest version)
  - Git (latest version)
  - PowerShell (latest version)

### Verifying Installation

After running the appropriate script for your platform, you should see a summary of the installed versions. Verify that all required tools have been successfully installed.

### Using Terraform Cloud as a Backend

To use Terraform Cloud as a backend for your local development environment, follow these steps:

1. **Sign up for Terraform Cloud** at [app.terraform.io](https://app.terraform.io) if you haven't already.

2. **Create an organization and workspace in Terraform Cloud**:

You can either create a new organization and workspace, use an existing one or use the supplied script to build the tfc project, workspace and variable sets.

   1. **Sign up and create an organization**:
      - Go to [app.terraform.io](https://app.terraform.io) and sign up for an account if you haven't already
      - After signing up, create a new tf cloud organization (e.g., "deploymenttheory") or use an existing one
2a. 

  2b. **Create and configure workspaces**:
      - In your organization, navigate to "Workspaces" and click "New Workspace"
      - Choose "CLI-driven workflow" for local Terraform execution
      - Name your workspace (e.g., "terraform-demo-microsoft365-sandbox")
      - Under the workspace settings, add tags that match your configuration (e.g., "microsoft_365")
      - Configure any additional settings like environment variables or version control settings

   c. **Ensure your Terraform configuration matches your organization and workspace**:

      ```hcl
      terraform {
        required_providers {
          microsoft365 = {
            source  = "deploymenttheory/microsoft365"
            version = "0.12.0-alpha"
          }
        }

        cloud {
          organization = "deploymenttheory"  # Replace with your organization name

          workspaces {
            # Using tags to allow multiple workspaces to use this configuration
            tags = ["microsoft_365"]
          }
        }
      }
      ```

   d. **Set execution mode to local (if needed)**:
      - In your workspace settings, go to "General"
      - Set the "Execution Mode" to "Local" if you want all Terraform operations to run on your local machine
      - This allows you to run commands locally while still using Terraform Cloud for state management

3. **Generate an API token**:
   - Go to Account Settings > Tokens
   - Create an API token and call it something contextual e.g 'terraform-cli'
   - Copy the token value and store it for later (you won't be able to see it again)

4. **Configure local Terraform authentication**:

   You can authenticate to Terraform Cloud using environment variables instead of the `.terraformrc` file. This is what we shall use for auth to our lab environment.

   **Option A: Using a specific environment variable for app.terraform.io**:

   ```bash
   # For Terraform Cloud (app.terraform.io)
   export TF_TOKEN_app_terraform_io=YOUR_TERRAFORM_CLOUD_TOKEN
   ```

   **Option B: Setting the token as an environment variable in your current shell**:

   ```bash
   # For bash/zsh
   export TF_TOKEN_app_terraform_io=YOUR_TERRAFORM_CLOUD_TOKEN
   
   # For Windows PowerShell
   $env:TF_TOKEN_app_terraform_io="YOUR_TERRAFORM_CLOUD_TOKEN"
   
   # For Windows Command Prompt
   set TF_TOKEN_app_terraform_io=YOUR_TERRAFORM_CLOUD_TOKEN
   ```

   **Option C: Creating the credential file programmatically**:

   ```bash
   # Create the credentials file with the token
   mkdir -p ~/.terraform.d
   echo '{"credentials":{"app.terraform.io":{"token":"YOUR_TERRAFORM_CLOUD_TOKEN"}}}' > ~/.terraform.d/credentials.tfrc.json
   ```

   Replace `YOUR_TERRAFORM_CLOUD_TOKEN` with your actual Terraform Cloud API token in all examples.

5. **Configure your project to use Terraform Cloud**:
   - Add a `cloud` block in your main Terraform configuration file (e.g., `main.tf`).
   - You must choose **only one** of these two approaches:

   **Option A: Using a named workspace** (for single workspace configurations):

   ```hcl
   terraform {
     required_providers {
       microsoft365 = {
         source  = "deploymenttheory/microsoft365"
         version = "~> 0.12.0-alpha"
       }
     }

     cloud {
       organization = "deploymenttheory"

       workspaces {
         name = "terraform-demo-microsoft365-sandbox"
       }
     }
   }
   ```

   **Option B: Using workspace tags** (for multiple workspace configurations):

   ```hcl
   terraform {
     required_providers {
       microsoft365 = {
         source  = "deploymenttheory/microsoft365"
         version = "~> 0.12.0-alpha"
       }
     }

     cloud {
       organization = "deploymenttheory"

       workspaces {
         tags = ["microsoft365"]
       }
     }
   }
   ```

   - Option A lets you specify a single workspace by name
   - Option B lets you select workspaces by tags (useful for managing multiple environments)

6. **Initialize your Terraform project**:

   ```bash
   terraform init
   ```

7. **Run Terraform commands as usual**:

   ```bash
   terraform plan
   terraform apply
   ```
### Setting up the Sandbox Environment Variables

To set up the sandbox environment variables, run the following script:

```bash
#!/bin/bash

# Colors for better readability
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Function to display section headers
section() {
  printf "\n%s=== %s ===%s\n" "$BLUE" "$1" "$NC"
}

# Function to display a variable (mask if sensitive)
show_var() {
  local var_name=$1
  local is_sensitive=${2:-false}
  
  if [ "$is_sensitive" = true ]; then
    printf "%s%s%s=%s********%s (masked for security)\n" "$GREEN" "$var_name" "$NC" "$YELLOW" "$NC"
  else
    # Use printf and parameter expansion to display the variable value
    printf "%s%s%s=%s%s%s\n" "$GREEN" "$var_name" "$NC" "$YELLOW" "${!var_name}" "$NC"
  fi
}

# Set the Terraform Cloud API token
export TFE_ORG_TOKEN=""

# Set the terraform cloud token id for cli access with sandbox
export TF_TOKEN_app_terraform_io=""

# Set Microsoft 365 variables
export M365_TENANT_ID=""
export M365_AUTH_METHOD="" # or "certificate"
export M365_CLIENT_ID=""
export M365_CLIENT_SECRET=""
# If using certificate auth
export M365_CLIENT_CERTIFICATE_FILE_PATH="/some/path/to/your/cert.key"
export M365_CLIENT_CERTIFICATE_PASSWORD="cert_password"

# Set Azure AD environment variables for Service Principal authentication
export M365_CLIENT_ID="$M365_TENANT_ID"
export M365_CLIENT_ID="$M365_CLIENT_ID"
export M365_CLIENT_SECRET="$M365_CLIENT_SECRET"

# Set common variables
export M365_CLOUD="public"
export TF_LOG="DEBUG"
export M365_DEBUG_MODE="false"
export M365_TELEMETRY_OPTOUT="true"
export TFE_PARALLELISM="1"

# Display all set variables
clear
section "Terraform Cloud Authentication"
show_var "TFE_ORG_TOKEN" true
show_var "TF_TOKEN_app_terraform_io" true

section "Microsoft 365 Authentication Variables"
show_var "M365_TENANT_ID" true
show_var "M365_AUTH_METHOD"
show_var "M365_CLIENT_ID" true
show_var "M365_CLIENT_SECRET" true
show_var "M365_CLIENT_CERTIFICATE_FILE_PATH" true
show_var "M365_CLIENT_CERTIFICATE_PASSWORD" true

section "Microsoft 365 Common Variables"
show_var "M365_CLOUD"
show_var "TF_LOG"
show_var "M365_DEBUG_MODE"
show_var "M365_TELEMETRY_OPTOUT"
show_var "TFE_PARALLELISM"

section "Environment Variables Set Successfully"
printf "%sYou can now run Terraform commands for the sandbox environment.%s\n" "$GREEN" "$NC"
printf "%sExample: terraform init && terraform plan%s\n" "$YELLOW" "$NC"

# Display current directory
printf "\n%sCurrent directory:%s %s\n" "$BLUE" "$NC" "$(pwd)"

# Verify Terraform Cloud token is set correctly
if [ -n "$TF_TOKEN_app_terraform_io" ]; then
  printf "\n%s✓ Terraform Cloud token is set%s\n" "$GREEN" "$NC"
else
  printf "\n%s✗ Terraform Cloud token is NOT set%s\n" "$RED" "$NC"
fi

# Create/update Terraform CLI config file to ensure token is recognized
mkdir -p ~/.terraform.d
cat > ~/.terraform.d/credentials.tfrc.json << EOF
{
  "credentials": {
    "app.terraform.io": {
      "token": "$TF_TOKEN_app_terraform_io"
    }
  }
}
EOF

printf "\n%s✓ Terraform credentials file updated at ~/.terraform.d/credentials.tfrc.json%s\n" "$GREEN" "$NC"
```

The `cloud` block is the recommended approach for new configurations with Terraform v1.1.0 and later, replacing the older `backend "remote"` configuration. With this setup, your state will be stored in Terraform Cloud while you can still run Terraform commands locally.

Before you begin working with this Terraform demo for Microsoft 365, you'll need to set up the required dependencies on your system.