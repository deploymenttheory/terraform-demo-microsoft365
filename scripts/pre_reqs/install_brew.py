#!/usr/bin/env python3

import os
import subprocess
import sys
import platform


def check_platform():
    """Check if the platform is macOS or Linux (supported by Homebrew)."""
    system = platform.system()
    if system not in ["Darwin", "Linux"]:
        print(f"Error: Homebrew is not supported on {system}.")
        sys.exit(1)
    return system


def is_brew_installed():
    """Check if Homebrew is installed."""
    try:
        subprocess.run(["brew", "--version"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, check=True)
        return True
    except (subprocess.SubprocessError, FileNotFoundError):
        return False


def install_brew(system):
    """Install Homebrew based on the operating system."""
    print("Homebrew is not installed. Installing Homebrew...")
    
    install_cmd = '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
    
    try:
        subprocess.run(install_cmd, shell=True, check=True)
        
        # Add Homebrew to PATH if needed (especially important for Linux)
        if system == "Linux":
            home = os.path.expanduser("~")
            print("Adding Homebrew to PATH...")
            
            # These paths may vary based on architecture, simplifying for common cases
            paths_to_check = [
                f"{home}/.linuxbrew/bin/brew",
                f"/home/linuxbrew/.linuxbrew/bin/brew",
                f"{home}/.homebrew/bin/brew"
            ]
            
            for brew_path in paths_to_check:
                if os.path.exists(brew_path):
                    os.environ["PATH"] += f":{os.path.dirname(brew_path)}"
                    break
            
        print("Homebrew installed successfully!")
        return True
    except subprocess.SubprocessError as e:
        print(f"Error installing Homebrew: {e}")
        return False


def update_brew():
    """Update Homebrew and its formulae."""
    print("Updating Homebrew...")
    try:
        subprocess.run(["brew", "update"], check=True)
        print("Homebrew updated successfully!")
        return True
    except subprocess.SubprocessError as e:
        print(f"Error updating Homebrew: {e}")
        return False


def upgrade_packages():
    """Upgrade all Homebrew packages."""
    print("Upgrading all packages...")
    try:
        subprocess.run(["brew", "upgrade"], check=True)
        print("All packages upgraded successfully!")
        
        # Also upgrade casks
        print("Upgrading casks...")
        subprocess.run(["brew", "upgrade", "--cask"], check=True)
        print("All casks upgraded successfully!")
        
        return True
    except subprocess.SubprocessError as e:
        print(f"Error upgrading packages: {e}")
        return False


def cleanup():
    """Clean up old versions of installed formulae."""
    print("Cleaning up old versions...")
    try:
        subprocess.run(["brew", "cleanup"], check=True)
        print("Cleanup completed successfully!")
        return True
    except subprocess.SubprocessError as e:
        print(f"Error during cleanup: {e}")
        return False


def doctor_check():
    """Run brew doctor to check for potential problems."""
    print("Running brew doctor to check for problems...")
    try:
        result = subprocess.run(["brew", "doctor"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        if result.returncode == 0:
            print("No issues found with Homebrew!")
        else:
            print("Brew doctor found some issues:")
            print(result.stdout)
            print(result.stderr)
        return True
    except subprocess.SubprocessError as e:
        print(f"Error running brew doctor: {e}")
        return False


def main():
    """Main function to orchestrate the Homebrew setup and update process."""
    print("=== Homebrew Setup and Update Script ===")
    
    # Check if the platform is supported
    system = check_platform()
    
    # Check if Homebrew is installed
    if not is_brew_installed():
        if not install_brew(system):
            print("Failed to install Homebrew. Exiting.")
            sys.exit(1)
    else:
        print("Homebrew is already installed.")
    
    # Update Homebrew
    if not update_brew():
        print("Failed to update Homebrew. Continuing with other operations.")
    
    # Upgrade all packages
    if not upgrade_packages():
        print("Failed to upgrade all packages. Continuing with other operations.")
    
    # Cleanup old versions
    if not cleanup():
        print("Failed to cleanup old versions. Continuing with other operations.")
    
    # Run brew doctor
    doctor_check()
    
    print("=== Homebrew setup and update completed! ===")


if __name__ == "__main__":
    main()