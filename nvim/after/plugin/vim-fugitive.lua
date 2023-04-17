local keymap = vim.keymap

keymap.set("n", "<leader>gs", ":vertical Git<CR>")

keymap.set("n", "<leader>ga", ":Git add .<CR>")
keymap.set("n", "<leader>gc", ":Git commit<CR>")
keymap.set("n", "<leader>gca", ":Git commit --amend<CR>")
keymap.set("n", "<leader>gl", ":vertical Git log<CR>")
keymap.set("n", "<leader>gr", ":Git rebase -i HEAD~2<CR>")
keymap.set("n", "<leader>gb", ":Git blame<CR>")
keymap.set("n", "<leader>gd", ":vertical Git diff<CR>")
-- keymap.set("n", "<leader>gs", ":Git status<CR>")
