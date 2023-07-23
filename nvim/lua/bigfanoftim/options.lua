local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.si = true
opt.ai = true
opt.scrolloff = 99

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
-- opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

vim.cmd([[
  augroup Jenkinsfile
    autocmd!
    autocmd BufNewFile,BufRead Jenkinsfile setf groovy
  augroup END
]])
