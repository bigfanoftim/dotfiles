vim.g.mapleader = ","

vim.o.scrolloff = 7
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.relativenumber = true


require('packer-plugins')

vim.cmd([[
set encoding=UTF-8
set number
set noundofile
set clipboard=unnamed
set nobackup
set noswapfile
set cursorline
set expandtab
set mouse=a

colorscheme github_dark_default

" {{ ayu
" set termguicolors
" let ayucolor="mirage"
" colorscheme ayu
" }}

" let g:gruvbox_baby_background_color="dark"
" let g:gruvbox_baby_telescope_theme=1
" colorscheme gruvbox-baby

" IndentLine {{
" let g:indentLine_char = '|'
" let g:indentLine_first_char = '|'
" let g:indentLine_showFirstIndentLevel = 0
" let g:indentLine_setColors = 0
" }}

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" {{ NERDTree 
nmap nt :NERDTreeToggle<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
let NERDTreeShowHidden=1
" }}

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" nnoremap <silent> <leader>f <esc>:Files<CR> 
" nnoremap <silent> <leader>r <esc>:Rg<CR>

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
nnoremap <leader>z :bp<CR>
nnoremap <leader>x :bp <BAR> bd #<CR>
nnoremap <leader>c :bn<CR>

nnoremap <leader>v :vs<CR>
nnoremap <leader>s :sp<CR>

nnoremap <leader>w :w <CR>
nnoremap <leader>q :q! <CR>
nnoremap <leader>a :qa! <CR>
nnoremap <leader>e :e! <CR>

nnoremap <leader>ga :Git add .<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gs :Git status<CR>
nnoremap <leader>gd :Git diff<CR>
nnoremap <leader>gl :Git log<CR>

nmap to :Topen<CR>
nmap tc :Tclose<CR>
tnoremap <Esc> <C-\><C-n>
let g:neoterm_default_mod = 'botright'
let g:neoterm_size = 12

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-Z>'

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

" JavaScript SETTINGS
" autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
au FileType javascript nmap <buffer> \r :!node %<CR>
au FileType typescript nmap <buffer> \r :!ts-node %<CR>

" toggle parameter
inoremap <C-o> <C-\><C-O>:call CocActionAsync('showSignatureHelp')<cr>

" {{ John Grib님의 vim-wiki config 
" let maplocalleader = "\\"

let g:vimwiki_list = [
    \{
    \   'path': '~/wiki',
    \   'ext' : '.md',
    \   'diary_rel_path': '.',
    \},
    \{
    \   'path': '~/dev-wiki',
    \   'ext' : '.md',
    \   'diary_rel_path': '.',
    \},
\]

" vimwiki의 conceallevel 을 끄는 쪽이 좋다
let g:vimwiki_conceallevel = 0
" let g:indentLine_fileTypeExclude = ['markdown']
autocmd FileType markdown let g:indentLine_enabled=0
let g:vimwiki_global_ext = 0

" 자주 사용하는 vimwiki 명령어에 단축키를 취향대로 매핑해둔다
command! WikiIndex :VimwikiIndex
nmap <leader>vw <Plug>VimwikiIndex
nmap <leader>vi <Plug>VimwikiDiaryIndex
nmap <leader>vm <Plug>VimwikiMakeDiaryNote
nmap <leader>vt :VimwikiTable<CR>
nmap <leader>vrnl :VimwikiRenameLink<CR>
nmap <leader>vrnf :VimwikiRenameLink<CR>

" F4 키를 누르면 커서가 놓인 단어를 위키에서 검색한다.
nnoremap <F4> :execute "VWS /" . expand("<cword>") . "/" <Bar> :lopen<CR>

" Shift F4 키를 누르면 현재 문서를 링크한 모든 문서를 검색한다
nnoremap <S-F4> :execute "VWB" <Bar> :lopen<CR>
" }}
]])

require'nvim-treesitter.configs'.setup {
	ensure_installed = { "python", "javascript", "typescript" },
	highlight = {
		enable = true
	}
}

require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

-- this part is telling Neovim to use the lsp server
local servers = { 'pyright', 'tsserver' }
for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        on_attach = on_attach,
        flags = {
          debounce_text_changes = 150,
        }
    }
end

require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<leader>vd', vim.diagnostic.open_float, opts)

-- folke/trouble.nvim keybindings
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)

vim.cmd("hi Visual guifg=Black guibg=White gui=none")
