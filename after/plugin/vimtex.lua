vim.g.vimtex_view_method = "zathura"
vim.g.tex_flavor = "latex"

--Inkscape-figures
vim.keymap.set('i', '<C-f>', "<Esc>: silent exec '.!inkscape-figures create \"'.getline('.').'\" \"'.b:vimtex.root.'/figures/\"'<CR><CR>:w<CR>")
vim.keymap.set('n', '<C-i>', ": silent exec '!inkscape-figures edit \"'.b:vimtex.root.'/figures/\" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>")
