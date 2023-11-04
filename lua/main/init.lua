require("main.lazy")
require("main.set")
require("main.remap")
require("main.lsp")

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({timeout = 40})
  end,
  group = highlight_group,
  pattern = '*',
})

-- Autocorrector
vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { '*.tex', '*.md' },
  command = 'setlocal spell'
})
