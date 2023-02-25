#!/usr/bin/env bash 

# Rename 
if [ -d "$HOME/.config/nvim/" ]; then 
    backup_folder_name="$HOME/.config/nvim_backup"
    echo "There is a previous configuration. Making a backup in $backup_folder_name."
    mv "$HOME/.config/nvim/" "$backup_folder_name"
fi

# Symbolic link
ln -s $(pwd) "$HOME/.config/nvim"
echo "The configuration has been successfully installed. Please open neovim to 
install the plugins."
