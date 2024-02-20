local M = {}

function M.load_mappings(section, opts)
    for mode, mode_values in pairs(section) do
        for lhs, mapping_info in pairs(mode_values) do
            vim.keymap.set(mode, lhs, mapping_info[1], vim.tbl_extend("keep", mapping_info[2], opts or {}))
        end
    end
end

local require = require

function M.prerequire(...)
    local status_ok, mod = pcall(require, ...)
    if not status_ok then
        return
    end
    return mod
end

return M
