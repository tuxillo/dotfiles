-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.confirm = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.splitbelow = true
vim.opt.splitright = true

if vim.g.neovide then
  vim.o.guifont = "MesloLGS_Nerd_Font_Mono:h11"
  vim.g.neovide_input_macos_option_key_is_meta = "both"
end
