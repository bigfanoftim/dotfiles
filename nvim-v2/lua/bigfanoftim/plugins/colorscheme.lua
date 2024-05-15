return {
  "wittyjudge/gruvbox-material.nvim",
  config = function()
    require("gruvbox-material").setup({})
    vim.cmd("colorscheme gruvbox-material")
  end,
}
