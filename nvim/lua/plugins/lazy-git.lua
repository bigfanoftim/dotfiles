-- brew install lazygit
return {
  { "kdheepak/lazygit.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      dependencies = {
        "nvim-lua/plenary.nvim",
      },
    },
  },
}
