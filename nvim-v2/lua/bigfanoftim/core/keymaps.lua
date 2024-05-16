vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })

keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

keymap.set("n", "ss", ":split<Return>:wincmd j<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>:wincmd w<Return>", opts)
keymap.set("n", "sx", ":q<Return>", opts)

-- Obsidian Keymaps
keymap.set("n", "<leader>on", "<cmd>ObsidianNew<cr>", { desc = "New Note" })
keymap.set("n", "<leader>op", "<cmd>ObsidianPasteImg<cr>", { desc = "Paste Image" })
