local helpers = require('luasnip-helper-funcs')
local line_begin = require("luasnip.extras.expand_conditions").line_begin;
local get_visual = helpers.get_visual

return {
    s({trig="code", snippetType="autosnippet", dscr="Code enviroment"},
        fmta(
            [[ 
            @code <>
            <>
            @end
            ]],
            {
                i(1),
                d(2, get_visual),
            }
        ),
        {condition = line_begin}
    ),
}
