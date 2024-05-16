return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "godlygeek/tabular",
    {
      "preservim/vim-markdown",
      config = function()
        vim.g.vim_markdown_folding_disabled = 1
      end
    }
  },
  opts = {
    workspaces = {
      {
        name = "Obsidian.nvim with Quartz",
        path = "/Users/bigfanoftim/dev/obsidian/obsidian-nvim-with-quartz/content",
      },
    },
    notes_subdir = "inbox",
    new_notes_location = "notes_subdir",
    disable_frontmatter = false,

    templates = {
      folder = "templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
      substitutions = {},
    },

    attachments = {
      img_folder = "static",
      img_text_func = function(client, path)
        path = client:vault_relative_path(path) or path
        return string.format("![%s](%s)", path.name, path)
      end,
    },

    follow_url_func = function(url)
      vim.fn.jobstart({ "open", url }) -- Mac OS
    end,

    note_id_func = function(title)
      -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
      -- In this case a note with the title 'My new note' will be given an ID that looks
      -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
      local suffix = ""
      if title ~= nil then
        -- If title is given, transform it into valid file name.
        suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      else
        -- If title is nil, just add 4 random uppercase letters to the suffix.
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end
      return tostring(os.time()) .. "-" .. suffix
    end,

    note_path_func = function(spec)
      -- This is equivalent to the default behavior.
      local path = spec.dir / tostring(spec.id)
      return path:with_suffix(".md")
    end,

    wiki_link_func = prepend_note_id,

    markdown_link_func = function(opts)
      return require("obsidian.util").markdown_link(opts)
    end,

    -- Either 'wiki' or 'markdown'.
    preferred_link_style = "wiki",

    image_name_func = function()
      -- Prefix image names with timestamp.
      return string.format("%s-", os.time())
    end,

    note_frontmatter_func = function(note)
      local out = {
        id = note.id,
        title = note.title or "",
        draft = true, -- for Quartz
      }

      if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
        for k, v in pairs(note.metadata) do
          out[k] = v
        end
      end

      return out
    end,
  },
}
