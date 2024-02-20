return {

    {
        'akinsho/toggleterm.nvim',
        version = "*",
        opts = {
            open_mapping = [[<c-\>]],
            direction = 'float',
            float_opts = {
                border = 'single',
                --col = vim.opt.columns:get() / 2,
                --row = vim.opt.lines:get() / 2,
                width = vim.opt.columns:get(),
                height = vim.opt.lines:get(),
            }
        },
        config = function ()
            require("toggleterm").setup()
            require("plugins.toggleterm.usercmds")
        end
    },

}
