return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  version = false, -- telescope did only one release, so use HEAD for now
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = vim.fn.executable("make") == 1 and "make"
          or
          "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
      enabled = vim.fn.executable("make") == 1 or vim.fn.executable("cmake") == 1,

      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
  -- config = function()
  --   require("telescope").setup({
  --     defaults = {
  --       prompt_prefix = " ",
  --       selection_caret = " ",
  --       -- Customize the window for selecting files
  --       get_selection_window = function()
  --         local wins = vim.api.nvim_list_wins()
  --         table.insert(wins, 1, vim.api.nvim_get_current_win())
  --         for _, win in ipairs(wins) do
  --           local buf = vim.api.nvim_win_get_buf(win)
  --           if vim.bo[buf].buftype == "" then
  --             return win
  --           end
  --         end
  --         return 0
  --       end,
  --       mappings = {
  --         i = {
  --           ["<c-t>"] = require("trouble.providers.telescope").open_with_trouble,
  --           ["<a-t>"] = require("trouble.providers.telescope").open_selected_with_trouble,
  --           ["<a-i>"] = function()
  --             local action_state = require("telescope.actions.state")
  --             local line = action_state.get_current_line()
  --             require("telescope.builtin").find_files({ no_ignore = true, default_text = line })
  --           end,
  --           ["<a-h>"] = function()
  --             local action_state = require("telescope.actions.state")
  --             local line = action_state.get_current_line()
  --             require("telescope.builtin").find_files({ hidden = true, default_text = line })
  --           end,
  --           ["<C-Down>"] = require("telescope.actions").cycle_history_next,
  --           ["<C-Up>"] = require("telescope.actions").cycle_history_prev,
  --           ["<C-f>"] = require("telescope.actions").preview_scrolling_down,
  --           ["<C-b>"] = require("telescope.actions").preview_scrolling_up,
  --         },
  --         n = {
  --           ["q"] = require("telescope.actions").close,
  --         },
  --       },
  --     },
  --   })
  -- end,
  keys = {
    { "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", desc = "Find Files (Root Dir)" },
    {
      "<leader>fF",
      "<cmd>lua require('telescope.builtin').find_files({ cwd = false })<cr>",
      desc = "Find Files (cwd)",
    },
    { "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>",  desc = "Grep (Root Dir)" },
  },
}
