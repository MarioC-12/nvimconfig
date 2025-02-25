local tree_opts = function ()
    require('nvim-tree').setup({
        filters = {
            dotfiles = true,
        },
        sync_root_with_cwd = true,
    })
end

vim.api.nvim_create_autocmd("BufRead", {
    pattern = "*.pdf",
    callback = function()
        vim.ui.open(vim.fn.expand("%"))
    end
})

return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = tree_opts,
    keys = {
        { '<leader>q', "<cmd>NvimTreeFindFileToggle<cr>", silent = false }
    }
}
