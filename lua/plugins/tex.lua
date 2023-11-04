local vimtex_opts = function()
    vim.g.vimtex_view_method = "zathura"
    vim.g.tex_flavor = "latex"

    --Inkscape-figures
    vim.keymap.set('i', '<C-f>', "<Esc>: silent exec '.!inkscape-figures create \"'.getline('.').'\" \"'.b:vimtex.root.'/figures/\"'<CR><CR>:w<CR>")
    vim.keymap.set('n', '<C-i>', ": silent exec '!inkscape-figures edit \"'.b:vimtex.root.'/figures/\" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>")
end

local tex_conceal_opts = function()
    vim.o.conceallevel = 1
    vim.g.tex_conceal = "abdmg"
end

return {
    {
        "lervag/vimtex",
        config = vimtex_opts,
        ft = "tex",
    },
    {
        "KeitaNakamura/tex-conceal.vim",
        config = tex_conceal_opts,
        ft = "tex",
    },
}
