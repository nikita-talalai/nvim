local opts = {
   number = true,
   tabstop = 4,
   expandtab = true,
   softtabstop = 4,
   shiftwidth = 4,
   history = 200,
   hidden = true,
   ignorecase = true,
   autoindent = true,
   cursorline = true,
   clipboard = 'unnamedplus',
   termguicolors = true,
   wrap = false,
   grepprg = "rg --vimgrep $*",
   scrolloff = 10,
   sidescrolloff = 20,
}

for opt, value in pairs(opts) do
   vim.opt[opt] = value
end

vim.opt.iskeyword:append("-")
