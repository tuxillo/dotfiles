# dotfiles

Personal dotfiles.

## Neovim

This repo contains the Neovim config at:

```text
.config/nvim
```

The live Neovim config should be a symlink to this repo:

```text
~/.config/nvim -> ~/s/dotfiles/.config/nvim
```

### Install On A New Machine

Clone the dotfiles repo:

```sh
mkdir -p ~/s
git clone <your-dotfiles-repo-url> ~/s/dotfiles
```

Install useful external tools first.

macOS/Homebrew:

```sh
brew install neovim git ripgrep fd fzf lazygit node tmux
```

Debian/Ubuntu example:

```sh
sudo apt install neovim git ripgrep fd-find fzf nodejs npm tmux
```

Optional agent tools are installed separately:

```text
claude
opencode
```

Claude can load extra local environment from this optional file:

```text
~/.config/claude/env
```

The file is not required. If present, it must use POSIX shell syntax, for example:

```sh
ANTHROPIC_API_KEY=...
```

Do not commit this file.

Back up any existing Neovim config:

```sh
mv ~/.config/nvim ~/.config/nvim.backup
```

Create the symlink:

```sh
mkdir -p ~/.config
ln -sfn ~/s/dotfiles/.config/nvim ~/.config/nvim
```

Start Neovim:

```sh
nvim
```

The config bootstraps `lazy.nvim` automatically on first launch. Lazy will install plugins from `lazy-lock.json`.

Check tools inside Neovim:

```text
:Lazy
:Mason
:checkhealth vim.lsp
```

Do not copy or commit machine-local Neovim runtime directories:

```text
~/.local/share/nvim
~/.local/state/nvim
~/.cache/nvim
```

Those are regenerated per machine.

### External Tools

Useful external tools:

```text
git
rg
fd
fzf
node/npm
lazygit
claude, optional
opencode, optional
```
