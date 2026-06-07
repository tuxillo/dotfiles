# Neovim Workflow Cheatsheet

Leader is `Space`.

## Daily Flow

```text
Space Space   find files
Space /       search project
s             jump inside file with Flash
S             treesitter jump with Flash
Space H       add current file to Harpoon
Space h       Harpoon menu
Space 1-9     jump to Harpoon file
```

## Coding / LSP

```text
gd            go to definition
gr            references
gI            go to implementation
gy            go to type definition
K             hover docs
Space c a     code action
Space c r     rename symbol
Space c f     format
Space c d     line diagnostic
Ctrl-space    trigger completion manually
:checkhealth vim.lsp   LSP health/status
```

## Buffers

```text
Shift-h       previous buffer
Shift-l       next buffer
[b            previous buffer
]b            next buffer
Space b b     switch to last buffer
Space `       switch to last buffer
Space b d     delete current buffer, keep window
Space b D     delete current buffer and window
Space b o     delete other buffers
Space b i     delete invisible buffers
```

## Sessions

```text
Space q s     restore session for current directory
Space q S     select session
Space q l     restore last session
Space q d     stop saving current session
```

Sessions are saved automatically. Restore them after reopening Neovim with `Space q s`.

## Agents

```text
Space a o     OpenCode in project root, bottom 37%
Space a O     OpenCode in cwd, bottom 37%
Space a g     show changed files
Space a v     open tracked diff review
Space a V     open diff review with untracked files
```

## Claude

```text
Space a c     toggle Claude, bottom 37%
Space a f     focus Claude
Space a r     resume Claude, bottom 37%
Space a C     continue Claude, bottom 37%
Space a b     add current buffer
Space a s     send visual selection
Space a a     accept Claude diff
Space a d     deny Claude diff
```

Note: `Space a d` is Claude deny diff, so use `Space a v` for general agent diff review.

## Review Changes

```text
Space a g     changed files / git status
Space a v     agent diff review, tracked files only
Space a V     agent diff review, including untracked files
Space g l     git log
Space g v     open Diffview, tracked files only
Space g u     open Diffview, including untracked files
Space g D     open Diffview for current file only
Space g V     close Diffview
Space g F     current file history
Space g s     git status
Space g d     git diff hunks
]h            next changed hunk
[h            previous changed hunk
Space g h p   preview hunk
Space g h s   stage hunk
Space g h r   reset hunk
```

## Markdown

```text
Space m r     toggle inline Markdown rendering
Space m R     render side preview in Neovim
Space m p     browser Markdown preview
Space u m     LazyVim default render toggle
Space c p     LazyVim default browser preview
```

## Python

```text
Space c v     select Python virtualenv
:checkhealth vim.lsp   check pyright / ruff status
Ctrl-space    trigger completion manually
```

Python completion/linting comes from `pyright` and `ruff`.

## C / C++

```text
gd            go to definition through clangd
gr            references through clangd
:checkhealth vim.lsp   check clangd status
```

For best C/C++ completion and navigation, make sure the project has `compile_commands.json`.

## Windows And Terminal

```text
Ctrl-h        move left
Ctrl-j        move down
Ctrl-k        move up
Ctrl-l        move right
Esc Esc       leave terminal insert mode
Ctrl-\ Ctrl-n leave terminal insert mode, fallback
Ctrl-/        hide terminal
Ctrl-w J      move current pane to bottom
Ctrl-w L      move current pane to right
Ctrl-w _      maximize current pane height
:resize 15    set current pane to 15 rows
Space |       split right
Space -       split below
Space w d     close window
```

## Neovide / macOS

```text
Cmd-c         copy to system clipboard
Cmd-v         paste from system clipboard
Cmd-x         cut to system clipboard
Cmd-a         select all
Cmd-s         save file
```

Set machine-local Neovide font size in `~/.config/nvim/local.lua`:

```lua
vim.g.neovide_font_name = "MesloLGS_Nerd_Font_Mono"
vim.g.neovide_font_size = 12
```

## Snacks Picker

```text
Ctrl-l        cycle picker panes: input / preview / list
Ctrl-y        set tab cwd to selected item's directory
Ctrl-t        open terminal in selected/current directory
Ctrl-f        scroll preview down
Ctrl-b        scroll preview up
Alt-p         toggle preview, if Alt works
?             picker help
```

## Diagnostics

```text
]d            next diagnostic
[d            previous diagnostic
]e            next error
[e            previous error
Space x x     diagnostics list
Space c d     line diagnostic
```

## Recommended Agent Loop

```text
1. Space a o   start OpenCode at the bottom
2. Ctrl-h      return to code
3. Work manually or let the agent work
4. Space a g   inspect changed files
5. Space a v   review full diff
6. Space g V   close diff review
```

## Health Checks

```sh
nvim --headless +qa
echo $?
```

Expected exit code: `0`.

Inside Neovim:

```text
:Lazy       plugin status
:Mason      language tools
:LspInfo    active language servers
```
