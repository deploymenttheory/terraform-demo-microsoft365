#!/usr/bin/env python3

import subprocess
import sys
import time
import shutil


def is_brew_installed():
    """Check if Homebrew is installed."""
    try:
        subprocess.run(["brew", "--version"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, check=True)
        return True
    except (subprocess.SubprocessError, FileNotFoundError):
        return False


def is_app_installed(app_name, command):
    """Check if an application is already installed by looking for its command."""
    if shutil.which(command):
        try:
            # Different version commands for different applications
            if command == "python3":
                cmd = [command, "--version"]
            elif command == "go":
                cmd = [command, "version"]
            elif command == "terraform":
                cmd = [command, "--version"]
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
    
    # Special case for PowerShell as it might not have --version flag
    if command == "pwsh" and shutil.which("pwsh"):
        try:
            result = subprocess.run(["pwsh", "-Command", "$PSVersionTable.PSVersion"], 
                                    stdout=subprocess.PIPE, 
                                    stderr=subprocess.PIPE, 
                                    text=True)
            if result.returncode == 0:
                version_info = result.stdout.strip()
                print(f"{app_name} is already installed: {version_info}")
                return True
        except (subprocess.SubprocessError, FileNotFoundError):
            pass
    
    return False


def update_or_install_package(package_name, command_to_check, cask=False, tap=None):
    """Update an existing package or install it if not present."""
    already_installed = is_app_installed(package_name, command_to_check)
    
    try:
        # Add tap if specified
        if tap:
            tap_cmd = ["brew", "tap", tap]
            subprocess.run(tap_cmd, check=True)
            print(f"Added tap: {tap}")
        
        if already_installed:
            print(f"Updating {package_name} to the latest version...")
            if cask:
                cmd = ["brew", "upgrade", "--cask", package_name]
            else:
                cmd = ["brew", "upgrade", package_name]
        else:
            print(f"Installing {package_name}...")
            if cask:
                cmd = ["brew", "install", "--cask", package_name]
            else:
                cmd = ["brew", "install", package_name]
        
        result = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        
        # Check if latest version or already updated
        if "already installed" in result.stderr or "already up-to-date" in result.stderr:
            print(f"{package_name} is already at the latest version.")
            return True
        elif result.returncode == 0:
            if already_installed:
                print(f"{package_name} updated successfully!")
            else:
                print(f"{package_name} installed successfully!")
            return True
        else:
            print(f"Error with {package_name}: {result.stderr}")
            return False
            
    except subprocess.SubprocessError as e:
        print(f"Error processing {package_name}: {e}")
        return False


def update_or_install_python():
    """Update or install latest version of Python."""
    return update_or_install_package("Python", "python3")


def update_or_install_go():
    """Update or install latest version of Go."""
    return update_or_install_package("Go", "go")


def update_or_install_terraform():
    """Update or install latest version of Terraform."""
    return update_or_install_package("Terraform", "terraform")


def update_or_install_terraform_docs():
    """Update or install latest version of Terraform-docs."""
    return update_or_install_package("Terraform-docs", "terraform-docs")


def update_or_install_azure_cli():
    """Update or install latest version of Azure CLI."""
    return update_or_install_package("Azure CLI", "az")


def update_or_install_git():
    """Update or install latest version of Git."""
    return update_or_install_package("Git", "git")


def update_or_install_powershell():
    """Update or install latest version of PowerShell."""
    return update_or_install_package("PowerShell", "pwsh", cask=True)


def print_versions():
    """Print the installed versions of all packages."""
    packages = [
        {"name": "Python", "cmd": ["python3", "--version"]},
        {"name": "Go", "cmd": ["go", "version"]},
        {"name": "Terraform", "cmd": ["terraform", "version"]},
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
    print("=== Installing/Updating Development Tools ===")
    
    # Check if Homebrew is installed
    if not is_brew_installed():
        print("Error: Homebrew is not installed. Please install Homebrew first.")
        print("You can use your existing script to install Homebrew.")
        sys.exit(1)
    
    print("Homebrew is installed. Proceeding with installing/updating dependencies...")
    
    # First update Homebrew itself
    print("\nUpdating Homebrew...")
    try:
        subprocess.run(["brew", "update"], check=True)
        print("Homebrew updated successfully!")
    except subprocess.SubprocessError as e:
        print(f"Warning: Error updating Homebrew: {e}")
        print("Continuing with package installations/updates...")
    
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
    main()