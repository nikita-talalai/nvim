return {
   {
      "L3MON4D3/LuaSnip",
      lazy = false,
      config = function()
         local ls = require("luasnip")
         local s = ls.snippet
         local t = ls.text_node
         local i = ls.insert_node
         local fmt = require("luasnip.extras.fmt").fmt

         ls.setup({
            history = true,
            updateevents = "TextChanged, TextChangedI",
            enable_autosnippets = true,
         })

         vim.keymap.set({ "i", "s" }, "<C-K>", function()
            if ls.expand_or_jumpable() then
               ls.expand_or_jump()
            end
         end)
         vim.keymap.set({ "i", "s" }, "<C-j>", function()
            if ls.jumpable(-1) then
               ls.jump(-1)
            end
         end)
         vim.keymap.set({ "i" }, "<C-l>", function()
            if ls.choice_active(-1) then
               ls.change_choice(1)
            end
         end)
         vim.keymap.set(
            "n",
            "<leader><leader>s",
            "<cmd>source ~/.config/nvim-nextconfig/lua/plugins/luasnip/luasnip.lua<cr>"
         )

         ls.add_snippets("lua", {
            s("map", { t('["'), i(1), t('"] = { "'), i(2), t('", { desk = "'), i(3), t('" } },') }),
            --s("map", fmt([[ ["{}"] = { "{}", { desc = "{}" } } ]] , { i(1), i(2), i(0) }))
         })
      end,
   },
}
