local helpers = require('luasnip-helper-funcs')
local get_visual = helpers.get_visual
local in_mathzone = function()
    return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return
{
    s({trig="c.c", snippetType="autosnippet", dscr="Componente conexa"},
        {t("\\text{c.c}")},
        {condition = in_mathzone}
    ),
    s({trig="ab", snippetType="autosnippet", dscr="Abierto"},
        {t("\\text{ab.}")},
        {condition = in_mathzone}
    ),
    s({trig="cerr", snippetType="autosnippet", dscr="Cerrado"},
        {t("\\text{cerr.}")},
        {condition = in_mathzone}
    ),
    s({trig="conx", snippetType="autosnippet", dscr="Conexo"},
        {t("\\text{conx.}")},
        {condition = in_mathzone}
    ),
    s({trig="mas", snippetType="autosnippet", dscr="Muestra aleatoria simple"},
        {t("\\mas\\left( n \\right)")},
        {condition = in_mathzone}
    ),
    s({trig="lbox", snippetType="autosnippet", dscr="Math Boxed"},
        fmta(
            [[ 
            \boxed{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="unb", snippetType="autosnippet", dscr="Underbrace"},
        fmta(
            [[ 
            \Underbrace{<>}_{<>}
            ]],
            {
                d(1, get_visual),
                i(2)
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="ovb", snippetType="autosnippet", dscr="Overbrace"},
        fmta(
            [[ 
            \overbrace{<>}^{<>}
            ]],
            {
                d(1, get_visual),
                i(2)
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="stack", snippetType="autosnippet", dscr="Stack relative"},
        fmta(
            [[ 
            \stackrel{<>}^{<>}
            ]],
            {
                i(1),
                d(2, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="image", dscr="Bad image"},
        fmta(
            [[ 
            %TODO Image
            \begin{center}
            \includegraphics[scale=<>]{images/<>}
            \end{center}
            ]],
            {
                i(1),
                i(2),
            }
        ),
        {condition = in_mathzone}
    ),
}
