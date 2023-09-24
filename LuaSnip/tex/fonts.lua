local helpers = require('luasnip-helper-funcs')
local get_visual = helpers.get_visual
local in_mathzone = function()
    return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return
{
    s({trig="bf", snippetType="autosnippet", dscr="Bold font"},
        fmta(
            [[ 
            \textbf{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {}
    ),
    s({trig="ita", snippetType="autosnippet", dscr="Italic font"},
        fmta(
            [[ 
            \textit{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {}
    ),
    s({trig="und", snippetType="autosnippet", dscr="Underline font"},
        fmta(
            [[ 
            \underline{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {}
    ),
    -- MATH MODE Fonts
    s({trig="mbb", snippetType="autosnippet", dscr="Math blackboard bold"},
        fmta(
            [[ 
            \mathbb{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="mcal", snippetType="autosnippet", dscr="Math caligraphic"},
        fmta(
            [[ 
            \mathcal{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="mbf", snippetType="autosnippet", dscr="Math bold"},
        fmta(
            [[ 
            \mathbf{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="mrm", snippetType="autosnippet", dscr="Math normal"},
        fmta(
            [[ 
            \mathrm{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="mfr", snippetType="autosnippet", dscr="Math frak"},
        fmta(
            [[ 
            \mathfrak{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="tt", snippetType="autosnippet", dscr="Normal text"},
        fmta(
            [[ 
            \text{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    -- OP Letters
    s({trig="veps", snippetType="autosnippet", dscr="OP Epsilon"},
        {t("\\varepsilon")},
        {condition = in_mathzone}
    ),
    s({trig="vph", snippetType="autosnippet", dscr="OP Phi"},
        {t("\\varphi")},
        {condition = in_mathzone}
    ),
    s({trig="NN", snippetType="autosnippet", dscr="Naturals"},
        {t("\\mathbb{N}")},
        {condition = in_mathzone}
    ),
    s({trig="ZZ", snippetType="autosnippet", dscr="Integers"},
        {t("\\mathbb{Z}")},
        {condition = in_mathzone}
    ),
    s({trig="QQ", snippetType="autosnippet", dscr="Rationals"},
        {t("\\mathbb{Q}")},
        {condition = in_mathzone}
    ),
    s({trig="RR", snippetType="autosnippet", dscr="Reals"},
        {t("\\mathbb{R}")},
        {condition = in_mathzone}
    ),
    s({trig="CC", snippetType="autosnippet", dscr="Complex"},
        {t("\\mathbb{C}")},
        {condition = in_mathzone}
    ),
    s({trig="KK", snippetType="autosnippet", dscr="Generic type"},
        {t("\\mathbb{K}")},
        {condition = in_mathzone}
    ),
    s({trig="SS", snippetType="autosnippet", dscr="Spheres"},
        {t("\\mathbb{S}")},
        {condition = in_mathzone}
    ),
    s({trig="PP", snippetType="autosnippet", dscr="Projective space"},
        {t("\\mathbb{P}")},
        {condition = in_mathzone}
    ),
    s({trig="TP", snippetType="autosnippet", dscr="Topology"},
        {t("\\mathcal{T}")},
        {condition = in_mathzone}
    ),
}
