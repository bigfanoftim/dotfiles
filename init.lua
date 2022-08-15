vim.g.mapleader = ","

vim.o.scrolloff = 7
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.relativenumber = true

require('packer-plugins')

vim.cmd([[
set number
set noundofile
set clipboard=unnamed
set nobackup
set noswapfile
set cursorline
set expandtab
set mouse=a

set termguicolors
let ayucolor="mirage"
colorscheme ayu

nmap nt :NERDTreeToggle<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
let NERDTreeShowHidden=1

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

nnoremap <silent> <leader>f <esc>:Files<CR> 
nnoremap <silent> <leader>r <esc>:Rg<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename) 

let g:airline_theme='hybrid'
set laststatus=2 " turn on bottom bar
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>
nnoremap <leader>e :bd<CR>

nmap to :Topen<CR>
nmap tc :Tclose<CR>
tnoremap <Esc> <C-\><C-n>
let g:neoterm_default_mod = 'botright'
let g:neoterm_size = 18


" Use <cr> to confirm completion
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Use <Tab> to navigate the completion list
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"

function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

call SetupCommandAbbrs('C', 'CocConfig')

au BufNewFile,BufRead Jenkinsfile setf groovy

" let g:indent_guides_enable_on_vim_startup = 1

]])

require'nvim-treesitter.configs'.setup {
	ensure_installed = { "python", "javascript", "typescript" },
	highlight = {
		enable = true
	}
}

require('lspconfig').sqls.setup{
    on_attach = function(client, bufnr)
        require('sqls').on_attach(client, bufnr)
    end
}

vim.cmd("hi Visual guifg=Black guibg=White gui=none")
