local opts = {
   expandtab = on,
   tabstop = 3,
   softtabstop = 3,
   shiftwidth = 3,
   smarttab=on,
   indentexpr="-1",

   commentstring = "# %s"
}

for opt, value in pairs(opts) do
   vim.opt[opt] = value
end

vim.opt.formatoptions:remove({ "c", "r", "o" })
-- vim.keymap.set("n", "<leader><leader>x", "<cmd>luafile %<cr>", { buffer = 0 })
