local helpers = require('luasnip-helper-funcs')

local lsp_opts = function()
    -- Diagnostics window configuration
    vim.lsp.handlers["textDocument/hover"] =
        vim.lsp.with(
            vim.lsp.handlers.hover,
            {
                border = "single"
            }
        )

    vim.lsp.handlers["textDocument/signatureHelp"] =
        vim.lsp.with(
            vim.lsp.handlers.signature_help,
            {
                border = "single"
            }
        )
    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
end

local mason_opts = function()
    -- Enable the following language servers
    --  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
    --
    --  Add any additional override configuration in the following tables. They will be passed to
    --  the `settings` field of the server config. You must look up that documentation yourself.
    local servers = {
        clangd = {},
        pyright = {},
        rust_analyzer = {},

        lua_ls = {
            Lua = {
                workspace = { checkThirdParty = false },
                telemetry = { enable = false },
                diagnostics = {
                    globals = {
                        "vim",
                        "s",
                        "sn",
                        "t",
                        "i",
                        "f",
                        "c",
                        "end",
                        "d",
                        "isn",
                        "psn",
                        "l",
                        "rep",
                        "r",
                        "p",
                        "types",
                        "events",
                        "util",
                        "fmt",
                        "ls",
                        "ins_generate",
                        "parse",
                        "fmta"
                    }
                }
            },
        },
    }

    -- Setup mason so it can manage external tooling
    require('mason').setup()

    -- nvim-cmp supports additional completion capabilities, so broadcast that to servers
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

    -- Ensure the servers above are installed
    local mason_lspconfig = require 'mason-lspconfig'

    mason_lspconfig.setup {
        ensure_installed = vim.tbl_keys(servers)
    }

    mason_lspconfig.setup_handlers {
        function(server_name)
            require('lspconfig')[server_name].setup {
                capabilities = capabilities,
                on_attach = helpers.on_attach,
                settings = servers[server_name],
            }
        end,
    }
end

return {
    {
        "neovim/nvim-lspconfig",
        priority = 100000,
        config = lsp_opts,
    },
    -- Automatically install LSPs to stdpath for neovim
    {
        "williamboman/mason.nvim",
        dependencies = "williamboman/mason-lspconfig.nvim",
        config = mason_opts,
    },

    -- Additional lua configuration, makes nvim stuff amazing
    {
        "folke/neodev.nvim",
        config = function()
            require('neodev').setup()
        end,
        ft = { 'vim', 'lua' },
    }
}
