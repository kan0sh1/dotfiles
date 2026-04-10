#!/bin/bash

# 1. Check Effective User ID (EUID)
if [ "$EUID" -ne 0 ]; then
  echo "Error: This script must be run as root or with sudo."
  exit 1
fi

# 2. Check for APT package manager
if ! command -v apt &> /dev/null; then
  echo "Error: This script requires the 'apt' package manager (Ubuntu/Debian)."
  exit 1
fi

# 3. Inform user and get consent
echo "This script will install the AWS Command Line Interface (CLI) and its dependencies (curl, unzip)."
read -p "Do you wish to proceed? (y/n): " confirm
if [[ $confirm != "y" ]]; then
  echo "Installation aborted by user."
  exit 1
fi

# 4. Check if 'aws' command name is already taken
if command -v aws &> /dev/null; then
  echo "Conflict Error: The command 'aws' already exists at $(which aws)."
  echo "Please remove the existing binary or resolve the naming conflict before proceeding."
  exit 1
fi

# 5. Silent Installation
echo "Installing dependencies and AWS CLI... (this may take a moment)"

# Update and install dependencies silently
apt update -qq
apt install -y -qq curl unzip > /dev/null

# Download and install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" -s
unzip -q awscliv2.zip
./aws/install > /dev/null

# Cleanup installer files
rm -rf aws awscliv2.zip

# 6. Completion message
echo "------------------------------------------------"
echo "Installation complete!"
echo "To verify the installation, run the following command:"
echo "aws --version"