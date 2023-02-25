-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
--  NOTE: Must happen before plugins are required 
--  (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Fast saving
vim.keymap.set('n', ',w', ":w<cr>", { silent = false })

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'",
    { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'",
    { expr = true, silent = true })

-- Move between windows
vim.keymap.set('n', '<C-j>', "<C-W>j", { })
vim.keymap.set('n', '<C-k>', "<C-W>k", { })
vim.keymap.set('n', '<C-h>', "<C-W>h", { })
vim.keymap.set('n', '<C-l>', "<C-W>l", { })

-- Move highlights
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Paste without losing
vim.keymap.set('x', '<leader>p', [["_dP"]])

-- Yank to system
vim.keymap.set({'n', 'v'}, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

-- Remove without copying 
vim.keymap.set({'n', 'v'}, '<leader>d', [["_d]])

vim.keymap.set('i', '<C-l>', '<c-g>u<Esc>[s1z=`]a<c-g>u')

--Inkscape-figures
vim.keymap.set('i', '<C-f>', "<Esc>: silent exec '.!inkscape-figures create \"'.getline('.').'\" \"'.b:vimtex.root.'/figures/\"'<CR><CR>:w<CR>")
vim.keymap.set('n', '<C-i>', ": silent exec '!inkscape-figures edit \"'.b:vimtex.root.'/figures/\" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>")

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
--vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
--vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)
