local autopairs_opts = function ()
    require('nvim-autopairs').setup({
        enable_check_bracket_line = false,
        ignored_next_char = "[%w%.]",
    })
end

return {
    "windwp/nvim-autopairs",
    config = autopairs_opts,
}
