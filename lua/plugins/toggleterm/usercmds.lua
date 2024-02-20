local Terminal = require('toggleterm.terminal').Terminal

local lazygit  = Terminal:new({
    cmd = "lazygit",
    dir = "git_dir",
    direction = "float",
    zindex = 60,
    float_opts = {
        border = "shadow",
        width = vim.opt.columns:get(),
        height = vim.opt.lines:get(),
    },

    on_open = function(term)
        vim.cmd("startinsert!")
        vim.keymap.set("n", "q", "<cmd>close<CR>", { buffer = term.bufnr, noremap = true, silent = true })
    end,

    on_close = function(term)
        vim.cmd("startinsert!")
    end,
})

function _lazygit_toggle()
    lazygit:toggle()
end

vim.keymap.set("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
