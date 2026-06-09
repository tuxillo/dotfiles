local claude_terminal_cmd = vim.fn.executable("/bin/sh") == 1
    and "/bin/sh -c 'set -a; [ -f \"$HOME/.config/claude/env\" ] && . \"$HOME/.config/claude/env\"; set +a; exec claude \"$@\"' claude-env"
  or nil

local function agent_win()
  local position = vim.g.agent_pane_position or "bottom"
  local size = vim.g.agent_pane_size or 0.37

  if position == "left" or position == "right" then
    return { position = position, width = size }
  end

  return { position = position, height = size }
end

return {
  {
    "coder/claudecode.nvim",
    opts = {
      terminal_cmd = claude_terminal_cmd,
      terminal = {
        provider = "snacks",
        split_side = "right",
        split_width_percentage = vim.g.agent_pane_size or 0.37,
        snacks_win_opts = agent_win(),
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
          Snacks.terminal({ "opencode" }, { cwd = LazyVim.root(), win = agent_win() })
        end,
        desc = "OpenCode (Root Dir)",
      },
      {
        "<leader>aO",
        function()
          Snacks.terminal({ "opencode" }, { win = agent_win() })
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
