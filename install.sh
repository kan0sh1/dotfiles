#!/bin/bash

# Set up path variables

REPO_VIMRC="$HOME/dotfiles/vim-config/.vimrc"
VUNDLE_DIR="$HOME/.vim/bundle/Vundle.vim"

# Moves the configuration file to the home directory

cp "$REPO_VIMRC" "$HOME/.vimrc"
echo "Copied .vimrc to $HOME"

# Checks for vundle. If it does not exist it is downloaded from the github

if [ ! -d "$VUNDLE_DIR" ]; then
	echo "Installing Vundle..."
	git clone https://github.com/Vundle.vim.git "$VUNDLE_DIR"
fi

# Installs the plugins from the vimrc file

echo "Installing Vim Plugins..."
vim +PluginInstall +qall

# Little code after finishing to contrast that script has finished running for sanity

echo "Setup Complete"
