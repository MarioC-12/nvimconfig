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
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smarttab = true
-- No automatic tabs
vim.o.autoindent = false

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Set colorscheme
vim.o.termguicolors = true
vim.cmd [[colorscheme onedark]]

-- Return to last position in file
vim.cmd [[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]]

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Language
vim.o.spelllang = "es,en_gb"

-- Colorcolumn
vim.o.colorcolumn = "80"
