#!/bin/bash

set -e

echo "Installing tmux configuration..."

REPO_URL="https://github.com/cody-gillaspie/tmux-config.git"
INSTALL_DIR="$HOME/.config/tmux-config"

# Clone or update the repository
if [ -d "$INSTALL_DIR" ]; then
    echo "Updating existing repository..."
    cd "$INSTALL_DIR"
    git pull origin main
else
    echo "Cloning repository..."
    git clone "$REPO_URL" "$INSTALL_DIR"
fi

# Create tmux config directory if it doesn't exist
mkdir -p ~/.config/tmux

# Backup existing config if it exists and is not already a symlink
if [ -f ~/.config/tmux/tmux.conf ] && [ ! -L ~/.config/tmux/tmux.conf ]; then
    echo "Backing up existing ~/.config/tmux/tmux.conf to ~/.config/tmux/tmux.conf.backup"
    cp ~/.config/tmux/tmux.conf ~/.config/tmux/tmux.conf.backup
fi

# Create symbolic link to configuration file
ln -sf "$INSTALL_DIR/tmux.conf" ~/.config/tmux/tmux.conf

echo "Tmux configuration installed successfully!"
echo "Config is now symlinked from $INSTALL_DIR"
echo "To update in the future, just run this script again"
echo "Reload tmux with: tmux source-file ~/.config/tmux/tmux.conf"