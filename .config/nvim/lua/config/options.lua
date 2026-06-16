-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.confirm = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.clipboard = "unnamedplus"
vim.opt.sessionoptions = { "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }

local local_config = vim.fn.stdpath("config") .. "/local.lua"
if (vim.uv or vim.loop).fs_stat(local_config) then
  local ok, err = pcall(dofile, local_config)
  if not ok then
    vim.schedule(function()
      vim.notify("Error loading " .. local_config .. ": " .. err, vim.log.levels.ERROR)
    end)
  end
end

if vim.g.neovide then
  local font_name = vim.g.neovide_font_name or "MesloLGS_Nerd_Font_Mono"
  local font_size = vim.g.neovide_font_size or 11
  vim.o.guifont = vim.g.neovide_guifont or (tostring(font_name):gsub(" ", "\\ ") .. ":h" .. tostring(font_size))
  vim.g.neovide_input_macos_option_key_is_meta = "both"
end
