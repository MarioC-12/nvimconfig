local helpers = require('luasnip-helper-funcs')
local get_visual = helpers.get_visual
local in_mathzone = function()
    return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
local not_in_mathzone = function()
    return vim.fn['vimtex#syntax#in_mathzone']() == 0
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
        {condition = not_in_mathzone}
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
        {condition = not_in_mathzone}
    ),
    s({trig="ttnorm", snippetType="autosnippet", dscr="Normal font"},
        fmta(
            [[ 
            \textnormal{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = not_in_mathzone}
    ),
    s({trig="unde_", snippetType="autosnippet", dscr="Underline font"},
        fmta(
            [[ 
            \underline{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = not_in_mathzone}
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
    s({trig="meu", snippetType="autosnippet", dscr="Math euler"},
        fmta(
            [[ 
            \matheuler{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="mtt", snippetType="autosnippet", dscr="Math monospace"},
        fmta(
            [[ 
            \mathtt{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="tte", snippetType="autosnippet", dscr="Normal text"},
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
    s({trig="FF2", snippetType="autosnippet", dscr="Field 2"},
        {t("\\mathbb{F}_2")},
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
    s({trig="BX", snippetType="autosnippet", dscr="Bold x"},
        {t("\\mathbf{x}")},
        {condition = in_mathzone}
    ),
    s({trig="BT", snippetType="autosnippet", dscr="Bold t"},
        {t("\\mathbf{t}")},
        {condition = in_mathzone}
    ),
    s({trig="BS", snippetType="autosnippet", dscr="Bold s"},
        {t("\\mathbf{s}")},
        {condition = in_mathzone}
    ),
    s({trig="BP", snippetType="autosnippet", dscr="Bold p"},
        {t("\\mathbf{p}")},
        {condition = in_mathzone}
    ),
    s({trig="pol", snippetType="autosnippet", dscr="Polynomial"},
        {t("K\\left[\\mathbf{t}\\right]")},
        {condition = in_mathzone}
    ),
    s({trig="mulpol", snippetType="autosnippet", dscr="Polynomial multiple"},
        {t("K\\left[\\mathbf{x}_1, \\ldots, \\mathbf{x}_n\\right]")},
        {condition = in_mathzone}
    ),
}
