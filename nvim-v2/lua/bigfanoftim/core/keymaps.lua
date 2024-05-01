local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "ss", ":split<Return>:wincmd j<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>:wincmd w<Return>", opts)
keymap.set("n", "sx", ":q<Return>", opts)
