-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>fC", function()
  vim.cmd.edit(vim.fn.stdpath("config") .. "/CHEATSHEET.md")
end, { desc = "Open Neovim Cheatsheet" })

if vim.g.neovide then
  vim.keymap.set("n", "<D-c>", '"+yy', { desc = "Copy Line" })
  vim.keymap.set("v", "<D-c>", '"+y', { desc = "Copy" })
  vim.keymap.set("n", "<D-x>", '"+dd', { desc = "Cut Line" })
  vim.keymap.set("v", "<D-x>", '"+x', { desc = "Cut" })
  vim.keymap.set({ "n", "v", "i", "c" }, "<D-v>", function()
    vim.api.nvim_paste(vim.fn.getreg("+"), true, -1)
  end, { desc = "Paste" })
  vim.keymap.set({ "n", "i" }, "<D-s>", "<cmd>w<cr>", { desc = "Save" })
  vim.keymap.set({ "n", "v", "i" }, "<D-a>", "<esc>ggVG", { desc = "Select All" })
end
