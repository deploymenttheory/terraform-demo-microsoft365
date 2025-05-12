#!/usr/bin/env python3

import subprocess
import sys
import time
import shutil
import platform
import os


def is_windows():
    """Check if the current platform is Windows."""
    return platform.system() == "Windows"


def is_winget_installed():
    """Check if winget is installed."""
    try:
        subprocess.run(["winget", "--version"], 
                       stdout=subprocess.PIPE, 
                       stderr=subprocess.PIPE, 
                       check=True)
        return True
    except (subprocess.SubprocessError, FileNotFoundError):
        return False


def is_app_installed(app_name, command):
    """Check if an application is already installed by looking for its command."""
    if shutil.which(command):
        try:
            # Different version commands for different applications
            if command == "python":
                cmd = [command, "--version"]
            elif command == "go":
                cmd = [command, "version"]
            elif command == "terraform":
                cmd = [command, "version"]
            elif command == "terraform-docs":
                cmd = [command, "version"]
            elif command == "az":
                cmd = [command, "--version"]
            elif command == "git":
                cmd = [command, "--version"]
            elif command == "pwsh":
                cmd = [command, "--version"]
            else:
                cmd = [command, "--version"]
                
            result = subprocess.run(cmd, 
                                    stdout=subprocess.PIPE, 
                                    stderr=subprocess.PIPE, 
                                    text=True)
            
            if result.returncode == 0:
                version_info = result.stdout.strip()
                print(f"{app_name} is already installed: {version_info}")
                return True
        except (subprocess.SubprocessError, FileNotFoundError):
            pass
    
    # Also check with winget list
    try:
        result = subprocess.run(["winget", "list", "--name", app_name], 
                                stdout=subprocess.PIPE, 
                                stderr=subprocess.PIPE, 
                                text=True)
        if result.returncode == 0 and app_name.lower() in result.stdout.lower():
            print(f"{app_name} is already installed according to winget.")
            return True
    except (subprocess.SubprocessError, FileNotFoundError):
        pass
        
    return False


def update_or_install_package(app_name, command_to_check, winget_id=None):
    """Update an existing package or install it if not present using winget."""
    # If winget_id is not provided, use app_name
    if winget_id is None:
        winget_id = app_name
        
    already_installed = is_app_installed(app_name, command_to_check)
    
    try:
        if already_installed:
            print(f"Updating {app_name} to the latest version...")
            cmd = ["winget", "upgrade", winget_id]
        else:
            print(f"Installing {app_name}...")
            cmd = ["winget", "install", "--id", winget_id, "-e"]  # -e for exact match
        
        result = subprocess.run(cmd, 
                               stdout=subprocess.PIPE, 
                               stderr=subprocess.PIPE, 
                               text=True)
        
        # Check various success messages
        if "No applicable upgrade found" in result.stdout or "already installed" in result.stdout:
            print(f"{app_name} is already at the latest version.")
            return True
        elif result.returncode == 0:
            if already_installed:
                print(f"{app_name} updated successfully!")
            else:
                print(f"{app_name} installed successfully!")
            return True
        else:
            print(f"Error with {app_name}: {result.stderr}")
            return False
            
    except subprocess.SubprocessError as e:
        print(f"Error processing {app_name}: {e}")
        return False


def update_or_install_python():
    """Update or install latest version of Python."""
    return update_or_install_package("Python", "python", "Python.Python.3")


def update_or_install_go():
    """Update or install latest version of Go."""
    return update_or_install_package("Go", "go", "GoLang.Go")


def update_or_install_terraform():
    """Update or install latest version of Terraform."""
    return update_or_install_package("Terraform", "terraform", "HashiCorp.Terraform")


def update_or_install_terraform_docs():
    """Update or install latest version of Terraform-docs."""
    return update_or_install_package("Terraform-docs", "terraform-docs", "terraform-docs.terraform-docs")


def update_or_install_azure_cli():
    """Update or install latest version of Azure CLI."""
    return update_or_install_package("Azure CLI", "az", "Microsoft.AzureCLI")


def update_or_install_git():
    """Update or install latest version of Git."""
    return update_or_install_package("Git", "git", "Git.Git")


def update_or_install_powershell():
    """Update or install latest version of PowerShell."""
    return update_or_install_package("PowerShell", "pwsh", "Microsoft.PowerShell")


def print_versions():
    """Print the installed versions of all packages."""
    packages = [
        {"name": "Python", "cmd": ["python", "--version"]},
        {"name": "Go", "cmd": ["go", "version"]},
        {"name": "Terraform", "cmd": ["terraform", "--version"]},
        {"name": "Terraform-docs", "cmd": ["terraform-docs", "version"]},
        {"name": "Azure CLI", "cmd": ["az", "--version"]},
        {"name": "Git", "cmd": ["git", "--version"]},
        {"name": "PowerShell", "cmd": ["pwsh", "--version"]}
    ]
    
    print("\n=== Installed Versions ===")
    
    for pkg in packages:
        try:
            result = subprocess.run(
                pkg["cmd"], 
                stdout=subprocess.PIPE, 
                stderr=subprocess.STDOUT, 
                text=True
            )
            if result.returncode == 0:
                # Take only the first line for cleaner output
                version = result.stdout.strip().split('\n')[0]
                print(f"{pkg['name']}: {version}")
            else:
                print(f"{pkg['name']}: Not found or error checking version")
        except (subprocess.SubprocessError, FileNotFoundError):
            print(f"{pkg['name']}: Not found or error checking version")


def main():
    """Main function to install or update all dependencies."""
    print("=== Installing/Updating Development Tools on Windows ===")
    
    # Check if running on Windows
    if not is_windows():
        print("Error: This script is designed for Windows. For other platforms, use the appropriate script.")
        sys.exit(1)
    
    # Check if winget is installed
    if not is_winget_installed():
        print("Error: winget is not installed.")
        print("Please install winget manually. It comes with Windows App Installer from Microsoft Store.")
        print("Or update to Windows 10 version 1809 or newer / Windows 11.")
        sys.exit(1)
    
    print("winget is installed. Proceeding with installing/updating dependencies...")
    
    # Install or update all the packages
    installations = [
        {"name": "Python", "function": update_or_install_python},
        {"name": "Go", "function": update_or_install_go},
        {"name": "Terraform", "function": update_or_install_terraform},
        {"name": "Terraform-docs", "function": update_or_install_terraform_docs},
        {"name": "Azure CLI", "function": update_or_install_azure_cli},
        {"name": "Git", "function": update_or_install_git},
        {"name": "PowerShell", "function": update_or_install_powershell}
    ]
    
    failed_operations = []
    
    for item in installations:
        print(f"\nProcessing {item['name']}...")
        if not item["function"]():
            failed_operations.append(item["name"])
        # Small delay to make output more readable
        time.sleep(0.5)
    
    # Print summary
    print("\n=== Operation Summary ===")
    if failed_operations:
        print(f"Failed operations: {', '.join(failed_operations)}")
        print("Please check the logs above for error details.")
    else:
        print("All packages were installed or updated successfully!")
    
    # Print versions of installed packages
    print_versions()
    
    print("\n=== Installation/update process completed! ===")


if __name__ == "__main__":
    # Check if script is run as administrator
    if is_windows() and not os.environ.get("ADMINISTRATOR"):
        print("This script requires administrator privileges.")
        print("Please run this script as administrator.")
        print("Right-click on the script and select 'Run as administrator'.")
        sys.exit(1)
        
    main()