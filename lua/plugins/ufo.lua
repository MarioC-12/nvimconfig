local ufo_opts = function()
    local ufo = require 'ufo'

    vim.keymap.set('n', 'zR', ufo.openAllFolds)
    vim.keymap.set('n', 'zM', ufo.closeAllFolds)

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true
    }
    local language_servers = require("lspconfig").util.available_servers() -- or list servers manually like {'gopls', 'clangd'}
    for _, ls in ipairs(language_servers) do
        require('lspconfig')[ls].setup({
            capabilities = capabilities
            -- you can add other fields for setting up lsp server in this table
        })
    end
    require('ufo').setup()
end

return {
    "kevinhwang91/nvim-ufo",
    dependencies = {
        "kevinhwang91/promise-async"
    },
    config = ufo_opts,
}
