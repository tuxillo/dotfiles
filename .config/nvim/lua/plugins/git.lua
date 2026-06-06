return {
  {
    "sindrets/diffview.nvim",
    cmd = {
      "DiffviewClose",
      "DiffviewFileHistory",
      "DiffviewOpen",
      "DiffviewRefresh",
      "DiffviewToggleFiles",
    },
    keys = {
      {
        "<leader>gl",
        function()
          Snacks.picker.git_log({ cwd = LazyVim.root.git() })
        end,
        desc = "Git Log",
      },
      { "<leader>gv", "<cmd>DiffviewOpen -uno<cr>", desc = "Diffview Open" },
      { "<leader>gu", "<cmd>DiffviewOpen<cr>", desc = "Diffview With Untracked" },
      {
        "<leader>gD",
        function()
          vim.cmd("DiffviewOpen HEAD -- " .. vim.fn.fnameescape(vim.fn.expand("%")))
        end,
        desc = "Diffview Current File",
      },
      { "<leader>gV", "<cmd>DiffviewClose<cr>", desc = "Diffview Close" },
      { "<leader>gF", "<cmd>DiffviewFileHistory %<cr>", desc = "Diffview File History" },
    },
    opts = {},
  },
}
