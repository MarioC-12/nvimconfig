-- Set nvim-tree 
require('nvim-tree').setup({
  filters = {
    dotfiles = true,
  }
})

vim.keymap.set('n', '<leader>q', ":NvimTreeFindFileToggle<cr>", { silent = false })

