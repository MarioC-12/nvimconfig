--Fancier status line
local lualine_opts = function()
    require('lualine').setup {
        options = {
            icons_enabled = false,
            component_separators = '|',
            section_separators = '',
        },
    }
end

return {
    "nvim-lualine/lualine.nvim",
    options = lualine_opts,
}
