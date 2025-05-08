-- --Rust tooling
local helpers = require('luasnip-helper-funcs')

return {
    {
        "rust-lang/rust.vim",
        ft = "rust",
    },
    -- {
    --     "simrat39/rust-tools.nvim",
    --     config = function ()
    --         require("rust-tools").setup(opts)
    --     end,
    --     ft = "rust",
    -- },
    {
        -- Automatically sets up LSP, so lsp.lua doesn't include rust.
        -- Makes debugging work seamlessly.
        "mrcjkb/rustaceanvim",
        version = '^5', -- Recommended by module.
        ft = "rust",
        dependencies = {
            "mfussenegger/nvim-dap",
        },
        keys = {
            {
                "<F5>",
                function() vim.cmd.RustLsp('debug') end,
                desc = "Debug"
            },
            {
                "<leader>ca",
                function ()
                    vim.cmd.RustLsp("codeAction")
                end,
                desc = "Code action",
                silent = true,
                buffer = vim.api.nvim_get_current_buf(),
            },
            {
                "K",
                function ()
                    vim.cmd.RustLsp({'hover', 'actions'})
                end,
                silent = true,
                buffer = vim.api.nvim_get_current_buf(),
            }
        },
        config = function()
            vim.g.rustaceanvim = {
                server = {
                    on_attach = helpers.on_attach,
                }
            }
        end,
    },
}
