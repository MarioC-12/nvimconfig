local gitsigns_opts = function ()
    require("gitsigns").setup {
        signs = {
            add = { text = '+' },
            change = { text = '~' },
            delete = { text = '_' },
            topdelete = { text = '‾' },
            changedelete = { text = '~' },
        },
    }
end

return {
    "tpope/vim-fugitive",
    "tpope/vim-rhubarb",
    {
        "lewis6991/gitsigns.nvim",
        options = gitsigns_opts,
    }
}
