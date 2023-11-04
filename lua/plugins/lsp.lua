local lsp_opts = function ()
    local helpers = require('luasnip-helper-funcs')

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

    -- Enable the following language servers
    --  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
    --
    --  Add any additional override configuration in the following tables. They will be passed to
    --  the `settings` field of the server config. You must look up that documentation yourself.
    local servers = {
        clangd = {},
        pyright = {},
        texlab = {},
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

    -- Setup neovim lua configuration
    require('neodev').setup()
    --
    -- nvim-cmp supports additional completion capabilities, so broadcast that to servers
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

    -- Setup mason so it can manage external tooling
    require('mason').setup()

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
    "neovim/nvim-lspconfig",
    priority = 100000,
    dependencies = {
        -- Automatically install LSPs to stdpath for neovim
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",

        -- Additional lua configuration, makes nvim stuff amazing
        "folke/neodev.nvim",
    },
    config = lsp_opts,
}
