# System Installs

This directory contains automation scripts for setting up essential software on an Ubuntu-based system.

*To Run ensure executable (chmod +x); then `sudo ./install_aws_cli.sh`.*

## Files
* **install_aws_cli.sh**: A bash script that automates the installation of the AWS CLI v2. It performs environment checks for root privileges, package manager compatibility, and naming conflicts before proceeding with a silent installation.

## Citations

### References

* [AWS Command Line Interface Documentation](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html): Used to identify the official download URL for the Linux x86_64 zip package and the specific `./aws/install` command.
* [Ubuntu Manpages: apt](https://manpages.ubuntu.com/manpages/noble/man8/apt.8.html): Referenced for the `-qq` (quite quiet) flags to ensure the installation remains silent as per requirements.