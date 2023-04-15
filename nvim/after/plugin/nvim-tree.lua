-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local status, nvimtree = pcall(require, "nvim-tree")
if (not status) then
  print("nvim-tree not found")
end

nvimtree.setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
