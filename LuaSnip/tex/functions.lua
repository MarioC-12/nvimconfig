local helpers = require('luasnip-helper-funcs')
local in_mathzone = function()
    return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return
{
    s({trig="sin", snippetType="autosnippet"},
    {
        t("\\sin"),
    },
    {condition = in_mathzone}),
    s({trig="cos", snippetType="autosnippet"},
    {
        t("\\cos"),
    },
    {condition = in_mathzone}),
    s({trig="ln", snippetType="autosnippet"},
    {
        t("\\ln"),
    },
    {condition = in_mathzone}),
    s({trig="log", snippetType="autosnippet"},
    {
        t("\\log"),
    },
    {condition = in_mathzone}),
    s({trig="exp", snippetType="autosnippet"},
    {
        t("\\exp"),
    },
    {condition = in_mathzone}),
}
