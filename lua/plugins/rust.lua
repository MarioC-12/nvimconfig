-- --Rust tooling
-- local helpers = require("luasnip-helper-funcs")

-- local opts = {
--     tools = {
--         runnables = {
--             use_telescope = true,
--         },
--         inlay_hints = {
--             auto = true,
--             parameter_hints_prefix = "",
--             other_hints_prefix = "",
--         },
--     },
--
--     -- all the opts to send to nvim-lspconfig
--     -- these override the defaults set by rust-tools.nvim
--     -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
--     server = {
--         -- on_attach is a callback called when the language server attachs to the buffer
--         on_attach = helpers.on_attach,
--         settings = {
--             -- to enable rust-analyzer settings visit:
--             -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
--             -- You must install it on your own
--             ["rust-analyzer"] = {
--                 -- enable clippy on save
--                 checkOnSave = {
--                     command = "clippy",
--                 },
--             },
--         },
--     },
-- }

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
