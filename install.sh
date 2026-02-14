#!/bin/bash


REPO_VIMRC="$HOME/dotfiles/vim-config/.vimrc"
VUNDLE_DIR="$HOME/.vim/bundle/Vundle.vim"

cp "$REPO_VIMRC" "$HOME/.vimrc"
echo "Copied .vimrc to $HOME"

if [ ! -d "$VUNDLE_DIR" ]; then
	echo "Installing Vundle..."
	git clone https://github.com/Vundle.vim.git "$VUNDLE_DIR"
fi


echo "Installing Vim Plugins..."
vim +PluginInstall +qall

echo "Setup Complete"
