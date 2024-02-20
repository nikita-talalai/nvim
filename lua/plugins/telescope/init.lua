return {

   {
      "nvim-telescope/telescope.nvim",
      branch = "0.1.x",
      dependencies = {
         "nvim-lua/plenary.nvim",
         { "nvim-telescope/telescope-ui-select.nvim" },
         { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      },
      config = function()
         local utils = require("utils")
         local mappings = require("config.mappings")
         utils.load_mappings(mappings.telescope)
         require("telescope").setup({
            defaults = {
               prompt_prefix = "",
               selection_caret = "❯ ",
               entry_prefix = "  ",
               initial_mode = "insert",
               sorting_strategy = "ascending",
               borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
               results_title = false,
               promt_title = false,
               selection_strategy = "reset",
               path_display = { "smart" },
               winblend = 0,
               layout_config = {
                  bottom_pane = {
                     height = 0.3,
                     preview_cutoff = 120,
                     prompt_position = "bottom",
                  },
               },
            },

            pickers = {
               find_files = {
                  find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
                  layout_strategy = "bottom_pane",
               },
               current_buffer_fuzzy_find = {
                  previewer = false,
                  initial_mode = "insert",
                  sorting_strategy = "ascending",
                  layout_strategy = "center",
               },
               live_grep = {},
            },
            extensions = {
               fzf = {
                  fuzzy = true,
                  override_generic_sorter = true,
                  override_file_sorter = true,
                  case_mode = "smart_case",
               },
            },
         })
         require("telescope").load_extension("fzf")
         require("telescope").load_extension("ui-select")
      end,
   },
}
