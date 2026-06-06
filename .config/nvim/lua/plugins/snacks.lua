return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        win = {
          input = {
            keys = {
              ["<c-l>"] = { "cycle_win", mode = { "i", "n" } },
              ["<c-y>"] = { "tcd", mode = { "i", "n" } },
            },
          },
          list = {
            keys = {
              ["<c-l>"] = "cycle_win",
              ["<c-y>"] = "tcd",
            },
          },
          preview = {
            keys = {
              ["<c-l>"] = "cycle_win",
            },
          },
        },
      },
    },
  },
}
