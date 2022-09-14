return require('packer').startup(function()
	-- packer can manage itself
  use 'wbthomason/packer.nvim'

	-- colorscheme
  use 'morhetz/gruvbox'
  use 'ayu-theme/ayu-vim'

	-- Syntax
  use 'jparise/vim-graphql'
  use 'pangloss/vim-javascript'
  use 'vim-python/python-syntax'
  use 'Vimjas/vim-python-pep8-indent'
  use 'nathanaelkane/vim-indent-guides'
  use 'nanotee/sqls.nvim'

	-- Neovim
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'neoclide/coc.nvim', 
    branch = 'release'
  }
  use {
      "williamboman/nvim-lsp-installer",
      "neovim/nvim-lspconfig",
  }

  -- NerdTree
  use 'preservim/nerdtree'

  -- junegunn
  use 'junegunn/vim-easy-align'
  use {
    'junegunn/fzf',
    run = "fzf#install()"
  }
  use 'junegunn/fzf.vim'

  -- tpope
  use 'tpope/vim-fugitive'

  -- vim-airline
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- terraform
  use 'hashivim/vim-terraform'

  -- more
  use 'jiangmiao/auto-pairs'
  use 'kassio/neoterm'
  use {'mg979/vim-visual-multi', branch = 'master'}
  use 'tpope/vim-commentary'
  use ({ 
    "iamcco/markdown-preview.nvim", 
    run = "cd app && npm install", 
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end, 
    ft = { "markdown" }, 
  })
  use 'wakatime/vim-wakatime'

end)

