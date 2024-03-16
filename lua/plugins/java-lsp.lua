local config_opts = function ()
    local config = {
        cmd = {'/usr/share/java/jdtls/bin/jdtls'},
        root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
    }

    require('jdtls').start_or_attach(config)
    local helpers = require("luasnip-helper-funcs")
    helpers.on_attach(0, vim.fn.bufnr('%'))
end

return {
    {
        'mfussenegger/nvim-jdtls',
        -- config = config_opts,
        ft = 'java',
    },
    {
        'vim-scripts/cup.vim',
        ft = 'cup'
    }
}
