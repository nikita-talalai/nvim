return {
   {
      "neovim/nvim-lspconfig",
      dependencies = {
         "williamboman/mason.nvim",
         "williamboman/mason-lspconfig.nvim",
         -- Support for Neovim API in lua-language-server
         "folke/neodev.nvim",
      },
      config = function()
         require("neodev").setup({})
         require("mason").setup({})
         require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "pyright" },
            handlers = {
               lua_ls = require("plugins.lsp.servers.lua_ls").handler,
               pyright = require("plugins.lsp.servers.pyright").handler,
            },
         })
      end,
   },
}
