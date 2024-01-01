-- Most remaps come from The Primeagen (https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/remap.lua)

-- [[ Basic Keymaps ]]
-- Fast saving
vim.keymap.set('n', ',w', ":w<cr>", { silent = false })

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set({ 'n', 'v' }, 'k', "v:count == 0 ? 'gk' : 'k'",
    { expr = true, silent = true })
vim.keymap.set({ 'n', 'v' }, 'j', "v:count == 0 ? 'gj' : 'j'",
    { expr = true, silent = true })

-- Insert line in normal mode
vim.keymap.set('n', '<leader>o', "o<esc>")
vim.keymap.set('n', '<leader>O', "O<esc>")

-- Next line to end line
vim.keymap.set('n', 'J', "mzJ`z")

-- Maintaining the center
vim.keymap.set('n', '<C-d>', "<C-d>zz")
vim.keymap.set('n', '<C-u>', "<C-u>zz")
vim.keymap.set('n', 'n', "nzzzv")
vim.keymap.set('n', 'N', "Nzzzv")

-- Move between buffers
vim.keymap.set('n', '<leader>j', ":bprev<cr>", {})
vim.keymap.set('n', '<leader>k', ":bnext<cr>", {})
vim.keymap.set('n', '<leader>h', ":bd!", {})

-- Manage tabs
vim.keymap.set('n', '<leader>tn', ":tabnew<cr>", {})
vim.keymap.set('n', '<leader>to', ":tabonly<cr>", {})
vim.keymap.set('n', '<leader>tc', ":tabclose<cr>", {})
vim.keymap.set('n', '<leader>t<leader>', ":tabnext<cr>", {})
vim.keymap.set('n', '<leader>tm', ":tabclose", {})

-- Move highlights
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Paste without losing
vim.keymap.set('x', '<leader>p', [["_dP"]])

-- Yank to system
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

-- Remove without copying
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

-- Better indent
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Sustitute current word (and all equal)
vim.keymap.set("n", "<leader>v", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Autocorrect
vim.keymap.set('i', '<C-o>', '<c-g>u<Esc>[s1z=`]a<c-g>u')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
--vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- Quickly open the config
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim<CR><cmd>cd %<cr>");

-- Create workspace specific snippets
local create_or_goto_plugins = function ()
    if vim.fn.filereadable("./snippets/all.lua") == 0 then
        vim.api.nvim_command("silent !mkdir -p snippets")
        vim.api.nvim_command("silent !cp ~/.config/nvim/LuaSnip/template.txt ./snippets/all.lua")
    end
    vim.api.nvim_command("e +19 ./snippets/all.lua")
end
vim.keymap.set("n", "<leader>gp", create_or_goto_plugins)

-- Compile with F5
local CompileRun = function()
    vim.cmd.write()

    if vim.bo.filetype == 'c' then
        vim.cmd("!clang -g -Wall % -o %<")
    end
    if vim.bo.filetype == 'cpp' then
        vim.cmd("!clang++ -g -fstandalone-debug -Wall % -o %<")
    end
    if vim.bo.filetype == 'rust' then
        vim.cmd("!cargo build")
    end
    if vim.bo.filetype == 'haskell' then
        vim.cmd("!ghc -o %< %")
    end
end
vim.keymap.set('n', '<F5>', CompileRun)

-- Compile with make
local CompileRunMake = function()
    vim.cmd.write()

    if vim.bo.filetype == 'c' or vim.bo.filetype == 'cpp' then
        vim.cmd("!make")
    end
end
vim.keymap.set('n', '<F6>', CompileRunMake)

-- Execute
local Execute = function()
    vim.cmd.write()

    if vim.bo.filetype == 'rust' then
        vim.cmd("!cargo run")
    end
end
vim.keymap.set('n', '<F10>', Execute)
