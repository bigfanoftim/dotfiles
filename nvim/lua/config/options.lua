local opt = vim.opt

opt.conceallevel = 0
opt.scrolloff = 999

-- Always set the directory at the time of neovim entry to root dir.
vim.g.root_spec = { "cwd" }
