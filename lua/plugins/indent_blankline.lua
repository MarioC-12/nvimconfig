-- Add indentation guides even on blank lines
local indent_blankline_opts = function()
    require('ibl').setup {
        indent = { char = '┊' },
    }
end

return {
    "lukas-reineke/indent-blankline.nvim",
    main = "isp",
    config = indent_blankline_opts,
}
