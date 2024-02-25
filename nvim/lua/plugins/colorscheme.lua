return {
  { "ellisonleao/gruvbox.nvim" },
  { "catppuccin/nvim" },

  {
    "LazyVim/LazyVim",
    opts = function(_, opts)
      opts.colorscheme = "gruvbox"
      opts.transparent = true
    end,
  },
}
