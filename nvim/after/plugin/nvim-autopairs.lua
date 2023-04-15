local status, autopairs = pcall(require, "nvim-autopairs")
if (not status) then
  print("nvim-autopairs not found")
end

autopairs.setup({
  disable_filetype = { "TelescopePrompt", "vim" }
})
