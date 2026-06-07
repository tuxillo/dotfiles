return {
  {
    "coder/claudecode.nvim",
    opts = {
      terminal_cmd = "/bin/sh -c 'set -a; [ -f \"$HOME/.config/claude/env\" ] && . \"$HOME/.config/claude/env\"; set +a; exec claude \"$@\"' claude-env",
      terminal = {
        provider = "snacks",
        split_side = "right",
        split_width_percentage = 0.37,
        snacks_win_opts = {
          position = "bottom",
          height = 0.37,
        },
      },
    },
  },
  {
    "folke/snacks.nvim",
    keys = {
      { "<leader>a", "", desc = "+ai", mode = { "n", "v" } },
      {
        "<leader>ao",
        function()
          Snacks.terminal({ "opencode" }, { cwd = LazyVim.root(), win = { position = "bottom", height = 0.37 } })
        end,
        desc = "OpenCode (Root Dir)",
      },
      {
        "<leader>aO",
        function()
          Snacks.terminal({ "opencode" }, { win = { position = "bottom", height = 0.37 } })
        end,
        desc = "OpenCode (cwd)",
      },
      {
        "<leader>ag",
        function()
          Snacks.picker.git_status()
        end,
        desc = "Agent Changes",
      },
      { "<leader>av", "<cmd>DiffviewOpen -uno<cr>", desc = "Agent Diff Review" },
      { "<leader>aV", "<cmd>DiffviewOpen<cr>", desc = "Agent Diff With Untracked" },
    },
  },
}
