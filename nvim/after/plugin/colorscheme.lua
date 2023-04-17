local status, gruvbox = pcall(require, "gruvbox")
if (not status) then
  print("gruvbox not found")
end

gruvbox.setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
  palette_overrides = {
    light0 = "#F8E8CA",
    light1 = "#F8E8CA",
    light2 = "#F8E8CA",
    light3 = "#F8E8CA",
    light4 = "#F8E8CA",
    -- dark0 = "#3c3836",
    -- dark1 = "#504945",
    bright_green = "#8EC07C",
    -- bright_green = "#aca586",
    bright_blue = "#D0B88D"
    -- bright_blue = "#D0B88D"
  }
})

vim.o.background = "dark"
vim.cmd.colorscheme('gruvbox')

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
