return require('packer').startup(function()
	-- packer can manage itself
  use 'wbthomason/packer.nvim'

	-- colorscheme
  use 'morhetz/gruvbox'
  use 'ayu-theme/ayu-vim'
  use {
    'luisiacc/gruvbox-baby',
    branch = 'main'
  }
  use 'mhartington/oceanic-next'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                          , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  -- devicons
  use 'ryanoasis/vim-devicons'

	-- Syntax
  use 'jparise/vim-graphql'
  use 'pangloss/vim-javascript'
  use 'vim-python/python-syntax'
  use 'Vimjas/vim-python-pep8-indent'
  use 'nanotee/sqls.nvim'
  -- use 'nathanaelkane/vim-indent-guides'

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
  use 'bryanmylee/vim-colorscheme-icons'
  -- use 'tiagofumo/vim-nerdtree-syntax-highlight' // BAD :(

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

  -- frontend
  use 'mattn/emmet-vim'
  use 'manzeloth/live-server'

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
	use { 'vimwiki/vimwiki', branch = 'dev' }

end)

