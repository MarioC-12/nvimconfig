--Setup snippets
local luasnip = require 'luasnip'
local luasnip_opts = function ()
    -- Map forward jump
    vim.keymap.set({ 'i', 's' }, '<C-j>', function ()
        return luasnip.jumpable(1) and '<Plug>luasnip-jump-next' or '<C-j>'
    end, { silent = true, expr = true })

    -- Map backward jump
    vim.keymap.set({ 'i', 's' }, '<C-k>', function ()
        return luasnip.jumpable(-1) and '<Plug>luasnip-jump-prev' or '<C-k>'
    end, { silent = true, expr = true })

    require("luasnip").config.set_config({
        enable_autosnippets = true,
        store_selection_keys = "<Tab>",
    })

    require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})
end

return {
    "L3MON4D3/LuaSnip",
    config = luasnip_opts,
}
