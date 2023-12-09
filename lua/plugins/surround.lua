return {
    -- To quickly change surroundings
    "kylechui/nvim-surround",
    config = function ()
        require('nvim-surround').setup({
            keymaps = {
                normal = "<C-y>",
                normal_cur = "<C-y>y",
            }
        })
    end
}
