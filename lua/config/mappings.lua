local M = {}

M.general = {

   n = {
      ["<leader>h"] = { ":nohlsearch<CR>", { desc = "Clear search highlights" } },
      ["<leader>u"] = { ":UndotreeToggle<CR>", { desc = "Toggle undotree" } },
      ["<A-j>"] = { ":m .+1<CR>", { desc = "Move line down" } },
      ["<A-k>"] = { ":m .-2<CR>", { desc = "Move line up" } },
      ["<leader>'"] = { [[c'<c-r>"'<esc>]], { desc = "Wrap with '" } },
      ['<leader>"'] = { [[c"<c-r>""<esc>]], { desc = "Wrap with '" } },
      ["<leader>)"] = { [[c(<c-r>")<esc>]], { desc = "Wrap with (" } },
      ["<leader>}"] = { [[c{<c-r>"}<esc>]], { desc = "Wrap with {" } },
      ["<A-h>"] = { "<C-w>h", { desc = "Move cursor to the left window" } },
      ["<A-l>"] = { "<C-w>l", { desc = "Move cursor to the right window" } },
   },

   i = {
      ["jk"] = { "<ESC>", { desc = "Exit insert mode" } },
   },

   v = {
      ["<A-j>"] = { ":m '>+1<CR>gv=gv", { desc = "Move block down" } },
      ["<A-k>"] = { ":m '<-2<CR>gv=gv", { desc = "Move block up" } },
   },
}

M.lsp = {

   n = {
      ["K"] = { vim.lsp.buf.hover, { desc = "Hover" } },
      ["gd"] = { vim.lsp.buf.definition, { desc = "Goto definition" } },
      ["gt"] = { vim.lsp.buf.type_definition, { desc = "Goto type definition" } },
      ["<leader>rn"] = { vim.lsp.buf.rename, { desc = "Rename" } },
      ["gi"] = { vim.lsp.buf.implementation, { desc = "Goto implementation" } },
      ["<leader>ca"] = { vim.lsp.buf.code_action, { desc = "Code action" } },
      ["<leader>lf"] = { vim.lsp.buf.format, { desc = "Format" } },
   },
}

M.telescope = {
   n = {
      ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", { desc = "Find files" } },
      ["<leader>fg"] = { "<cmd>Telescope live_grep<cr>", { desc = "Live grep" } },
      ["<leader>fb"] = { "<cmd>Telescope buffers<cr>", { desc = "Buffers" } },
      ["<leader>fht"] = { "<cmd>Telescope help_tags<cr>", { desc = "Help" } },
      ["<leader>fd"] = { "<cmd>Telescope diagnostics<cr>", { desc = "Diagnostics" } },
      ["<leader>fc"] = { "<cmd>Telescope commands<cr>", { desc = "Commands" } },
      ["<leader>fo"] = { "<cmd>Telescope oldfiles<cr>", { desc = "Old files" } },
      ["<leader>fm"] = { "<cmd>Telescope marks<cr>", { desc = "Marks" } },
      ["<leader>ft"] = { "<cmd>Telescope treesitter<cr>", { desc = "Treesitter" } },
      ["<leader>fj"] = { "<cmd>Telescope jumplist<cr>", { desc = "Jumplist" } },
      ["<leader>fs"] = { "<cmd>Telescope spell_suggest<cr>", { desc = "Spell suggest" } },
      ["<leader>fk"] = { "<cmd>Telescope keymaps<cr>", { desc = "Keymaps" } },
      ["<leader>fh"] = { "<cmd>Telescope highlights<cr>", { desc = "Highlights" } },
      ["<leader>fp"] = { "<cmd>Telescope projects<cr>", { desc = "Projects" } },
      ["<leader>fn"] = { "<cmd>Telescope notify<cr>", { desc = "Notifications" } },
      ["<leader>fr"] = { "<cmd>Telescope resume<cr>", { desc = "Resume" } },
      ["<leader>fz"] = { "<cmd>Telescope zoxide list<cr>", { desc = "Zoxide" } },
      ["<leader>f/"] = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Fuzzy find in buffer" } },
   },
}

return M
