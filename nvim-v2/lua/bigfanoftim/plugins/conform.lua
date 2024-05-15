return {
  "stevearc/conform.nvim",
  opts = {},

  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettier" },
      },
      -- format_on_save = {
      --   lsp_fallback = true,
      --   timeout = 100,
      -- },
      format_after_save = { -- Conform will run the formatter asynchronously after saving the file
        lsp_fallback = true,
      },
    })
  end,
}
