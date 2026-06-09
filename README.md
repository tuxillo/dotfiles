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

Neovim sources this file for Claude through `/bin/sh` when `/bin/sh` exists. If `/bin/sh` is not available, Claude starts normally without this extra env file.

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

Machine-local Neovim overrides can go in:

```text
~/.config/nvim/local.lua
```

This file is ignored by git. Example:

```lua
vim.g.neovide_font_name = "MesloLGS_Nerd_Font_Mono"
vim.g.neovide_font_size = 12

-- Or override the full Neovide guifont string directly.
-- vim.g.neovide_guifont = "MesloLGS_Nerd_Font_Mono:h12"

vim.g.agent_pane_position = "bottom"
vim.g.agent_pane_size = 0.37
```

`agent_pane_position` supports `bottom`, `right`, `left`, and `top`. For left/right panes, `agent_pane_size` is width. For top/bottom panes, it is height.

There is a template at:

```text
.config/nvim/local.lua.example
```

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
