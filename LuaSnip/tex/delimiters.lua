local helpers = require('luasnip-helper-funcs')
local get_visual = helpers.get_visual
local in_mathzone = function()
    return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return
{
    -- Various simple delimiters. I do not put the last part because of autopairs
    s({trig="lrp", snippetType="autosnippet", wordTrig=false, dscr="Parenthesis"},
        fmta(
            [[ 
            \left( <> \right)
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="lr", wordTrig=false, dscr="Parenthesis slow"},
        fmta(
            [[ 
            \left( <> \right)
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="lrc", snippetType="autosnippet", wordTrig=false, dscr="Brackets"},
        fmta(
            [[ 
            \left[ <> \right]
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="set", snippetType="autosnippet", wordTrig=false, dscr="Set"},
        fmta(
            [[ 
            \left\{ <> \right\}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="lr|", snippetType="autosnippet", wordTrig=false, dscr="Cardinal"},
        fmta(
            [[ 
            \left\lvert <> \right\rvert
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="lra", snippetType="autosnippet", wordTrig=false, dscr="Angles"},
        fmta(
            [[ 
            \langle <> \rangle
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="norm", snippetType="autosnippet", wordTrig=false, dscr="Norm"},
        fmta(
            [[ 
            \left\lVert <> \right\rVert
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="ceil", snippetType="autosnippet", wordTrig=false, dscr="Ceil"},
        fmta(
            [[ 
            \left\lceil <> \right\rceil
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="floor", snippetType="autosnippet", wordTrig=false, dscr="Floor"},
        fmta(
            [[ 
            \left\lfloor <> \right\rfloor
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="lrb", snippetType="autosnippet", wordTrig=false, dscr="Double square bracket"},
        fmta(
            [[ 
            \llbracket <> \rrbracket
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    -- MATRIXES
    s({trig="pmat", snippetType="autosnippet", wordTrig=false, dscr="Parenthesis matrix"},
        fmta(
            [[ 
            \begin{pmatrix} <> \end{pmatrix}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="vmat", snippetType="autosnippet", wordTrig=false, dscr="Vertical matrix"},
        fmta(
            [[ 
            \begin{vmatrix} <> \end{vmatrix}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="bmat", snippetType="autosnippet", wordTrig=false, dscr="Brackets matrix"},
        fmta(
            [[ 
            \begin{bmatrix} <> \end{bmatrix}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="cvec", snippetType="autosnippet", wordTrig=false, dscr="Column vector"},
        fmta(
            [[ 
            \begin{pmatrix} <> \end{pmatrix}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="array", snippetType="autosnippet", wordTrig=false, dscr="Array"},
        fmta(
            [[ 
            \begin{array}{<>} <> \end{array}
            ]],
            {
                i(1),
                d(2, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
}
