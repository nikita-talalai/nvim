local M = {}

M.name = "lua_ls"
M.enabled = true

local utils = require("utils")
local mappings = require("config.mappings")
local function on_attach(client, bufnr)
    utils.load_mappings(mappings.lsp, { buffer = bufnr })
end

local config = {
    on_attach = on_attach,
}

M.handler = function()
    local lspconfig = require('lspconfig')
    lspconfig.lua_ls.setup(config)
end

return M
