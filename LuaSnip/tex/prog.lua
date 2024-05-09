local helpers = require('luasnip-helper-funcs')
local get_visual = helpers.get_visual
local in_mathzone = function()
    return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return
{
    s({trig="swhile", snippetType="autosnippet", dscr="While loop"},
        fmta(
            [[ 
            \mathtt{while}\ <>\ \mathtt{do}\ <>
            ]],
            {
                i(1, "b"),
                i(2, "S"),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="sif", snippetType="autosnippet", dscr="If conditional"},
        fmta(
            [[ 
            \mathtt{if}\ <>\ \mathtt{then}\ <>\ \mathtt{else}\ <>
            ]],
            {
                i(1, "b"),
                i(2, "S_1"),
                i(3, "S_2"),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="scomp", snippetType="autosnippet", dscr="Statement composition"},
        fmta(
            [[ 
            <>\ \mathtt{;}\ <>\
            ]],
            {
                i(1, "S_1"),
                i(2, "S_2"),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="sfor", snippetType="autosnippet", dscr="For loop"},
        fmta(
            [[ 
            \mathtt{for}\ <>\ \mathtt{to}\ <>\ \mathtt{do}\ <>
            ]],
            {
                i(1, "x := a_1"),
                i(2, "a_2"),
                i(3, "S"),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="sfrep", snippetType="autosnippet", dscr="Repeat loop"},
        fmta(
            [[ 
            \mathtt{repeat}\ <>\ \mathtt{until}\ <>
            ]],
            {
                i(1, "S"),
                i(2, "b"),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="svar", snippetType="autosnippet", dscr="Repeat loop"},
        fmta(
            [[ 
            \mathtt{var}\ <>\ D_V
            ]],
            {
                i(1, "x := a;"),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="sproc", snippetType="autosnippet", dscr="Repeat loop"},
        fmta(
            [[ 
            \mathtt{proc}\ <>\ \mathtt{is}\ <>; D_P
            ]],
            {
                i(1, "p"),
                i(2, "S"),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="SB", snippetType="autosnippet", dscr="Booleans semantic"},
        fmta(
            [[ 
            \mathcal{B}\llbracket <> \rrbracket
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="SA", snippetType="autosnippet", dscr="Aritmetics semantic"},
        fmta(
            [[ 
            \mathcal{A}\llbracket <> \rrbracket
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="senvp", snippetType="autosnippet", dscr="Repeat loop"},
        fmta(
            [[ 
            env_P \vdash \langle <>, <> \rangle \rightarrow <> 
            ]],
            {
                i(1, "S"),
                i(2, "s"),
                i(3, "s'"),
            }
        ),
        {condition = in_mathzone}
    ),
}
