vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Fuzzy finder over lists
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1'
  }
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- File Exploreer For Neovim
  use 'nvim-tree/nvim-tree.lua'

  -- Language parsers, highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end
  }

  -- Best Colorscheme
  use 'ellisonleao/gruvbox.nvim'

  -- Set lualine as statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons' }
  }

  -- LSP config & plugins
  use 'neovim/nvim-lspconfig'
  use('williamboman/mason.nvim', { run = ":MasonUpdate" })

  -- Git related plugins
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'

  -- "gc" to comment lines
  use 'numToStr/Comment.nvim'

  -- Autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  -- etc
  use 'windwp/nvim-autopairs'
  use 'Vonr/align.nvim'
end)
