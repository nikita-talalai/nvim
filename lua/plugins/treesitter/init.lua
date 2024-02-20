return {
   {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      dependencies = {
         "nvim-treesitter/nvim-treesitter-textobjects",
      },
      config = function()
         require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python" },
            auto_install = false,
            highlight = { enable = true },
            incremental_selection = {
               enable = true,
               keymaps = {
                  init_selection = "gnn",
                  node_incremental = "grn",
                  scope_incremental = "grc",
                  node_decremental = "grm",
               },
            },
            -- indent = { enable = true },
            textobjects = {
               select = {
                  enable = true,
                  lookahead = true,
                  keymaps = {
                     ["af"] = "@function.outer",
                     ["if"] = "@function.inner",
                     ["ac"] = "@class.outer",
                     ["ic"] = "@class.inner",
                  },
               },
            },
         })
      end,
   },
}
