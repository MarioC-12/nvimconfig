local helpers = require("luasnip-helper-funcs")

local config_opts = function ()
    vim.g.haskell_tools = {
        hls = {
            on_attach = helpers.on_attach,
        }
    }
    local ht = require('haskell-tools')
    vim.keymap.set('n', '<leader>rr', ht.repl.toggle)
    vim.keymap.set('n', '<leader>rf', function()
        ht.repl.toggle(vim.api.nvim_buf_get_name(0))
    end)
end

return {
    {
        'mrcjkb/haskell-tools.nvim',
        version = '^3',
        config = config_opts,
        ft = { 'haskell', 'lhaskell', 'cabal', 'cabalproject' },
    },
}
