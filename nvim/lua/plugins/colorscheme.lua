local function configure_gruvbox()
  require("gruvbox").setup({
    terminal_colors = true,
    undercurl = true,
    bold = true,
    italic = {
      strings = true,
      emphasis = true,
      comments = true,
      operators = false,
      folds = true,
    },
    contrast = "soft",
    transparent = true,
  })
  vim.cmd([[colorscheme gruvbox]])
end

return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = configure_gruvbox,
  },
}
