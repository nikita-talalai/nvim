return {
   -- Theme
   {
      "rebelot/kanagawa.nvim",
      lazy = false,
      priority = 1000,
      config = function()
         vim.cmd.colorscheme("kanagawa-wave")
      end,
   },
   {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
   },

   -- File explorer
   {
      "stevearc/oil.nvim",
      opts = {
         view_options = { show_hidden = true },
         vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
      },
      dependencies = { "nvim-tree/nvim-web-devicons" },
   },
   -- File navigation
   {
      "folke/flash.nvim",
      event = "VeryLazy",
      opts = {},
      keys = {
         {
            "s",
            mode = { "n", "x", "o" },
            function()
               require("flash").jump()
            end,
            desc = "Flash",
         },
         {
            "S",
            mode = { "n", "x", "o" },
            function()
               require("flash").treesitter()
            end,
            desc = "Flash Treesitter",
         },
         {
            "r",
            mode = "o",
            function()
               require("flash").remote()
            end,
            desc = "Remote Flash",
         },
         {
            "R",
            mode = { "o", "x" },
            function()
               require("flash").treesitter_search()
            end,
            desc = "Treesitter Search",
         },
         {
            "<c-s>",
            mode = { "c" },
            function()
               require("flash").toggle()
            end,
            desc = "Toggle Flash Search",
         },
      },
   },
   {
      "echasnovski/mini.nvim",
      version = false,
      config = function()
         require("mini.comment").setup()
         require("mini.pairs").setup()
         require("mini.surround").setup()
         require("mini.indentscope").setup()
         require("mini.files").setup()
         require("mini.jump2d").setup()
         require("mini.bracketed").setup()
         require("mini.splitjoin").setup()
         require("mini.pick").setup()
      end,
   },
   -- {
   --     'folke/which-key.nvim',
   --     event = "VeryLazy",
   --     init = function()
   --         vim.o.timeout = true
   --         vim.o.timeoutlen = 300
   --     end,
   --     config = true,
   -- },
   {
      "Vigemus/iron.nvim",
      config = function()
         local iron = require("iron.core")

         iron.setup({
            config = {
               scratch_repl = true,
               -- Your repl definitions come here
               repl_definition = {
                  sh = {
                     -- Can be a table or a function that
                     -- returns a table (see below)
                     command = { "zsh" },
                  },
               },
               -- How the repl window will be displayed
               -- See below for more information
               --repl_open_cmd = require('iron.view').bottom(40),
               -- repl_open_cmd = "vertical botright 40 split"
               repl_open_cmd = require("iron.view").split.vertical.botright(0.4),
            },
            -- Iron doesn't set keymaps by default anymore.
            -- You can set them here or manually add keymaps to the functions in iron.core
            keymaps = {
               send_motion = "<space>sc",
               visual_send = "<space>sc",
               send_file = "<space>sf",
               send_line = "<space>sl",
               send_until_cursor = "<space>su",
               send_mark = "<space>sm",
               mark_motion = "<space>mc",
               mark_visual = "<space>mc",
               remove_mark = "<space>md",
               cr = "<space>s<cr>",
               interrupt = "<space>s<space>",
               exit = "<space>sq",
               clear = "<space>cl",
            },
            -- If the highlight is on, you can change how it looks
            -- For the available options, check nvim_set_hl
            highlight = {
               italic = true,
            },
            ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
         })

         -- iron also has a list of commands, see :h iron-commands for all available commands
         vim.keymap.set("n", "<space>rs", "<cmd>IronRepl<cr>")
         vim.keymap.set("n", "<space>rr", "<cmd>IronRestart<cr>")
         vim.keymap.set("n", "<space>rf", "<cmd>IronFocus<cr>")
         vim.keymap.set("n", "<space>rh", "<cmd>IronHide<cr>")
      end,
   },
   {
      "norcalli/nvim-colorizer.lua",
      config = function()
         require("colorizer").setup()
      end,
   },
   {
      "mbbill/undotree",
      config = function()
         vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

         vim.cmd([[
         if has("persistent_undo")
            let target_path = expand('~/.undodir')

            " create the directory and any parent directories
            " if the location does not exist.
            if !isdirectory(target_path)
               call mkdir(target_path, "p", 0700)
               endif

               let &undodir=target_path
               set undofile
               endif
         ]])
      end,
   },
}
