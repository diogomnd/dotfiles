# dotfiles

Personal dotfiles for bashrc, starship, ghostty, fastfetch, neovim and ulauncher.

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
stow --adopt -t ~ .
git checkout .
```

> `--adopt` moves existing files (e.g. `~/.bashrc`) into the repo and creates symlinks.
> `git checkout .` restores the repo versions as source of truth.

## Structure

```
dotfiles/
├── .bashrc
├── .bash_aliases
└── .config/
    ├── starship.toml      # Starship prompt config
    ├── ghostty/           # Ghostty terminal config
    ├── fastfetch/         # Fastfetch config
    ├── nvim/              # Neovim config
    └── ulauncher/         # Ulauncher config
```

Stow symlinks everything in `~/dotfiles/` to `~`. Ignores `.git` and `README.md` by default.

## Updating

After pulling changes:
```bash
cd ~/dotfiles
stow -t ~ .
```

## Restoring

Remove symlinks:
```bash
cd ~/dotfiles
stow -D -t ~ .
```
