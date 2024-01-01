-- Set system clipboard
vim.o.clipboard = 'unnamedplus'

-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.o.number = true
vim.o.relativenumber = true

-- Keep cursor centered
vim.o.so = 7

-- Enable wildmenu
vim.o.wildmenu = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Fix tabs
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4

-- No automatic tabs
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.wrap = true
vim.o.tw = 80

-- Line breaks
vim.o.linebreak = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Set color config
vim.o.termguicolors = true
vim.g.material_style = "darker"

-- Return to last position in file
vim.cmd [[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]]

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Language
vim.o.spelllang = "es,en_gb"

-- Colorcolumn
vim.o.colorcolumn = "80"

-- Folding
vim.o.foldmethod = "indent"
vim.o.foldcolumn = '1'
vim.o.foldlevel = 0

-- No backup (use git)
-- vim.o.nowb = true
vim.o.noswapfile = true
vim.o.nobackup = true

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

-- Trailiing whitespaces
 vim.fn.matchadd('errorMsg', [[\s\+$]])
