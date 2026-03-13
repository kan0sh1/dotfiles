REPO_ALIAS="$HOME/dotfiles/homefiles/.bash_aliases"
TARGET_ALIAS="$HOME/.bash_aliases"

echo "Configuring Bash environment..."

# Symlink
if [ -f "$TARGET_ALIAS" ]; then
	echo "Existing .bash_aliases found. Moving to .bash_aliases.bak"
	mv "$TARGET_ALIAS" "$TARGET_ALIAS.bak"
fi

ln -s "$REPO_ALIAS" "$TARGET_ALIAS"
echo "Symbolic link created for .bash_aliases."



# Prompts reload and walks through the reload.
echo "-------------------------------------------------------"
echo "SUCCESS: Environment configured."
echo "Please run: source ~/.bashrc to apply changes now."
echo "-------------------------------------------------------"
