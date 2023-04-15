vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>ww", ":w<CR>")
keymap.set("n", "<leader>q", ":q<CR>")
keymap.set("n", "<leader>wq", ":wq<CR>")
keymap.set("n", "<leader>aq", ":qa<CR>")

keymap.set("n", "<leader>ga", ":Git add .<CR>")
keymap.set("n", "<leader>gs", ":Git status<CR>")

keymap.set("n", "<leader>pv", vim.cmd.Ex)

keymap.set("n", "x", '"_x"')

keymap.set("n", "dw", 'vb"_d')


keymap.set("n", "<leader>vs", "<C-w>v", { silent = true })
keymap.set("n", "<leader>sp", "<C-w>s", { silent = true })
-- keymap.set("n", "sh", "<C-w>h", { silent = true })
-- keymap.set("n", "sj", "<C-w>j", { silent = true })
-- keymap.set("n", "sk", "<C-w>k", { silent = true })
-- keymap.set("n", "sl", "<C-w>l", { silent = true })

keymap.set("n", "te", ":tabedit<CR>", { silent = true })
keymap.set("n", "<leader><Tab>", ":tabNext<CR>", { silent = true})

keymap.set("n", "nt", ":NvimTreeToggle<CR>")
