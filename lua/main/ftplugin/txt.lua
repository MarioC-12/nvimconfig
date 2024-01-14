vim.api.nvim_create_autocmd('FileType', {
    pattern = 'text',
    command = [[
    setlocal tabstop=2
    setlocal shiftwidth=2
    setlocal softtabstop=2
    ]]
} )
