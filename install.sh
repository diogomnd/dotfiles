#!/bin/bash
set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="$HOME/.config"

echo "Installing dotfiles from $DOTFILES_DIR..."

# Create config directory if not exists
mkdir -p "$CONFIG_DIR"

# Install starship
echo "Installing starship..."
mkdir -p "$CONFIG_DIR/starship"
ln -sf "$DOTFILES_DIR/starship/starship.toml" "$CONFIG_DIR/starship.toml"

# Install ghostty
echo "Installing ghostty..."
mkdir -p "$CONFIG_DIR/ghostty"
ln -sf "$DOTFILES_DIR/ghostty/config.ghostty" "$CONFIG_DIR/ghostty/config"
if [ -d "$DOTFILES_DIR/ghostty/themes" ]; then
  ln -sf "$DOTFILES_DIR/ghostty/themes" "$CONFIG_DIR/ghostty/themes"
fi

# Install fastfetch
echo "Installing fastfetch..."
mkdir -p "$CONFIG_DIR/fastfetch"
ln -sf "$DOTFILES_DIR/fastfetch/config.jsonc" "$CONFIG_DIR/fastfetch/config.jsonc"

# Install nvim
echo "Installing neovim..."
mkdir -p "$CONFIG_DIR"
ln -sf "$DOTFILES_DIR/nvim" "$CONFIG_DIR/nvim"

echo "✓ Dotfiles installed successfully!"
echo "Run 'bash install.sh' from dotfiles directory to update."
