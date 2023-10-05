-- Most remaps come from The Primeagen (https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/remap.lua)
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

-- Next line to end line 
vim.keymap.set('n', 'J', "mzJ`z")

-- Maintaining the center
vim.keymap.set('n', '<C-d>', "<C-d>zz")
vim.keymap.set('n', '<C-u>', "<C-d>zz")
vim.keymap.set('n', 'n', "nzzzv")
vim.keymap.set('n', 'N', "Nzzzv")

-- Move between windows
vim.keymap.set('n', '<C-j>', "<C-W>j", { })
vim.keymap.set('n', '<C-k>', "<C-W>k", { })
vim.keymap.set('n', '<C-h>', "<C-W>h", { })
vim.keymap.set('n', '<C-l>', "<C-W>l", { })

-- Move between buffers
vim.keymap.set('n', '<leader>j', ":bprev<cr>", { })
vim.keymap.set('n', '<leader>k', ":bnext<cr>", { })
vim.keymap.set('n', '<leader>h', ":bd!", { })

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

-- Sustitute current word (and all equal)
vim.keymap.set("n", "<leader>v", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Autocorrect
vim.keymap.set('i', '<C-l>', '<c-g>u<Esc>[s1z=`]a<c-g>u')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
--vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
--vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- Compile with F5
local CompileRun = function()
    vim.cmd.write()

    if vim.bo.filetype == 'c' then
        vim.cmd("!clang -g -Wall % -o %<")
    elseif vim.bo.filetype == 'hs' then
        vim.cmd("!ghc % -o %<")
    end
end
vim.keymap.set({'n', 'i', 'v'}, '<F5>', CompileRun)

-- Compile with make
local CompileRunMake = function()
    vim.cmd.write()

    if vim.bo.filetype == 'c' or vim.bo.filetype == 'cpp' then
        vim.cmd("!make")
    end
end
vim.keymap.set({'n', 'i', 'v'}, '<F6>', CompileRunMake)
