local highlights = vim.api.nvim_get_hl(0, {})
for name, _ in pairs(highlights) do
   vim.api.nvim_set_hl(0, name, { fg = "#ffffff" })
end
