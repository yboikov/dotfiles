return {
  "nvim-telescope/telescope.nvim",
  branch = "master",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      cond = vim.fn.executable("make") == 1, -- only if make is available
    },
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      defaults = {
        file_ignore_patterns = { "node_modules", "%.git" },
        sorting_strategy = "ascending",
        mappings = {
          i = {
            ["<C-k>"] = "move_selection_previous",
            ["<C-j>"] = "move_selection_next",
          },
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,               -- fuzzy matching
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",   -- ignore case unless uppercase
        },
      },
    })
    pcall(telescope.load_extension, "fzf")
  end,
}

