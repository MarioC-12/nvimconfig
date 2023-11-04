--Rust tooling
local helpers = require("luasnip-helper-funcs")

local opts = {
    tools = {
        runnables = {
            use_telescope = true,
        },
        inlay_hints = {
            auto = true,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
        },
    },

    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
    server = {
        -- on_attach is a callback called when the language server attachs to the buffer
        on_attach = helpers.on_attach,
        settings = {
            -- to enable rust-analyzer settings visit:
            -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
            -- You must install it on your own
            ["rust-analyzer"] = {
                -- enable clippy on save
                checkOnSave = {
                    command = "clippy",
                },
            },
        },
    },
}

return {
    {
        "rust-lang/rust.vim",
        config = function ()
            require("rust-tools").setup(opts)
        end,
    },
    "simrat39/rust-tools.nvim",
}
