return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    keys = {
      { "<leader>m", "", desc = "+markdown", ft = "markdown" },
      { "<leader>mr", "<cmd>RenderMarkdown toggle<cr>", desc = "Toggle Inline Render", ft = "markdown" },
      {
        "<leader>mR",
        function()
          require("render-markdown.core.manager").attach(vim.api.nvim_get_current_buf())
          require("render-markdown").preview()
        end,
        desc = "Render Side Preview",
        ft = "markdown",
      },
    },
  },
  {
    "iamcco/markdown-preview.nvim",
    keys = {
      { "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", desc = "Browser Preview", ft = "markdown" },
    },
  },
}
