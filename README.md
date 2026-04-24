# Dotfiles & System Automation

This repository contains a centralized collection of configuration files and automation scripts designed to build a high-performance development environment. It focuses on shell efficiency, system administration, and a customized Vim workflow for Ubuntu-based systems.

## Repository Contents

### [homefiles/](./homefiles/)
Core shell customization and automated environment linking.
* **`.bash_aliases`**: High-frequency shortcuts for Git operations (`gs`, `ga`, `gc`), directory navigation (`..`), and readable system paths.
* **`setup.sh`**: A deployment script that backs up existing Bash configs and creates symbolic links to this repository to ensure configurations stay synced.

### [System Installs/](./System%20Installs/)
Automated software deployment for Ubuntu/Debian.
* **`install_aws_cli.sh`**: A robust, silent installer for AWS CLI v2. It features environment validation (root check, package manager check) and conflict detection.

### [vim/](./vim/)
A professional-grade text editing environment configured via the **Vundle** plugin manager.
* **Key Plugins**: 
    * `dracula`: High-contrast dark color scheme.
    * `vim-indent-guides`: Visual feedback for code structure and indentation levels.
    * `vim-fugitive`: An advanced Git wrapper to manage version control within Vim.
    * `youcompleteme`: A fast, powerful code-completion engine.

## How to Utilize

### 1. Clone the Repository
```bash
git clone [https://github.com/kan0sh1/dotfiles.git](https://github.com/kan0sh1/dotfiles.git) ~/dotfiles
```

### 2. Configure Bash & Aliases
Navigate to the `homefiles` directory and run the automation script:

```bash
cd ~/dotfiles/homefiles
chmod +x setup.sh
./setup.sh
source ~/.bashrc
```

### 3. Setup VIM
Navigate to the `vim` directory and run the install script:

```bash
cd ~/dotfiles/vim
chmod +x install.sh
./install.sh
```

*Note: Please refer to the [Vim README](/vim-config/README.md) for important post-install steps regarding the YouCompleteMe compilation and resolving the initial Dracula theme error.*

## Polish & Documentation

### Improvements Based on Feedback

Reviewed peer feedback on this Repository. Following issue was tracked and resolved:

* **Issues #1 - #5 (Closed):** Corrected formatting and alignment errors in the README.md files within the `vim` directory to ensure clean rendering on the GitHub UI.

### Retrospective & Future Improvements

* **Fugitive Master:** `Vim-fugitive` was included but I intend to spend more time mastering its commandsto integrate into my Git workflow without having to leave editors. 