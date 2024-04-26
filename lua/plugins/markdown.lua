local markdown_opts = function ()
    vim.g.mkdp_auto_start = 1
    vim.g.vim_markdown_math = 1
end

return {
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
        config = markdown_opts,
    },
    {
        "preservim/vim-markdown",
        ft = { "markdown" },
    }
}
