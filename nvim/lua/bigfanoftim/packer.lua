vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim'
  use ('nvim-telescope/telescope.nvim', { tag = '0.1.1' })

  use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use 'ellisonleao/gruvbox.nvim'

  use 'tpope/vim-fugitive'
end)
