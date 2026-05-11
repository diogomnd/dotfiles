# dotfiles

Personal dotfiles for starship, ghostty, fastfetch, and neovim.

## Installation

Requires `stow`:
```bash
# macOS
brew install stow

# Linux (apt)
sudo apt install stow

# Linux (dnf)
sudo dnf install stow
```

Then:
```bash
git clone <your-repo-url> ~/dotfiles
cd ~/dotfiles
stow -t ~ .config
```

## Structure

```
dotfiles/
└── .config/
    ├── starship/          # Starship prompt config
    ├── ghostty/           # Ghostty terminal config
    ├── fastfetch/         # Fastfetch config
    └── nvim/              # Neovim config
```

Stow symlinks everything in `.config/` to `~/.config/`.

## Updating

After pulling changes:
```bash
cd ~/dotfiles
stow -t ~ .config
```

## Restoring

Remove symlinks:
```bash
cd ~/dotfiles
stow -D -t ~ .config
```
