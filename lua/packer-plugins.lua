return require('packer').startup(function()
	-- packer can manage itself
	use 'wbthomason/packer.nvim'

	-- colorscheme
	use 'morhetz/gruvbox'

	-- Syntax
  use 'jparise/vim-graphql'
  use 'pangloss/vim-javascript'
  use 'vim-python/python-syntax'
	use 'Vimjas/vim-python-pep8-indent'

	-- Neovim
  use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use {
		'neoclide/coc.nvim', 
		branch = 'release'
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

	-- vim-airline
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'

	-- more
	use 'jiangmiao/auto-pairs'
	use 'kassio/neoterm'
	use {'mg979/vim-visual-multi', branch = 'master'}
	use 'tpope/vim-commentary'

end)

