--Setup snippets
local luasnip_opts = function()
    local luasnip = require 'luasnip'
    luasnip.setup({
        enable_autosnippets = true,
        store_selection_keys = "<Tab>",
    })

    -- Map forward jump
    vim.keymap.set({ 'i', 's' }, '<C-j>', function()
        return luasnip.jumpable(1) and '<Plug>luasnip-jump-next' or '<C-j>'
    end, { silent = true, expr = true })

    -- Map backward jump
    vim.keymap.set({ 'i', 's' }, '<C-k>', function()
        return luasnip.jumpable(-1) and '<Plug>luasnip-jump-prev' or '<C-k>'
    end, { silent = true, expr = true })


    require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/LuaSnip/" })
    require("luasnip.loaders.from_vscode").lazy_load()
end

return {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    config = luasnip_opts,
    dependencies = { "rafamadriz/friendly-snippets" }
}
