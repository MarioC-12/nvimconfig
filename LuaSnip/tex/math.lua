local helpers = require('luasnip-helper-funcs')
local get_visual = helpers.get_visual
local in_mathzone = function()
    return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return
{
    s({trig="inn", snippetType="autosnippet", dscr="In"},
        {t("\\in")},
        {condition = in_mathzone}
    ),
    s({trig="notin", snippetType="autosnippet", dscr="Not In"},
        {t("\\not\\in")},
        {condition = in_mathzone}
    ),
    s({trig="cc", snippetType="autosnippet", dscr="Subset"},
        {t("\\subset")},
        {condition = in_mathzone}
    ),
    s({trig="Nn", snippetType="autosnippet", dscr="Cap"},
        {t("\\cap")},
        {condition = in_mathzone}
    ),
    s({trig="UU", snippetType="autosnippet", dscr="Cup"},
        {t("\\cup")},
        {condition = in_mathzone}
    ),
    s({trig="suU", snippetType="autosnippet", dscr="Square Cup"},
        {t("\\sqcup")},
        {condition = in_mathzone}
    ),
    s({trig="OO", snippetType="autosnippet", dscr="Empty set"},
        {t("\\emptyset")},
        {condition = in_mathzone}
    ),
    s({trig="dc", snippetType="autosnippet", dscr="Supset"},
        {t("\\supset")},
        {condition = in_mathzone}
    ),
    s({trig="EE", snippetType="autosnippet", dscr="Exists"},
        {t("\\exits")},
        {condition = in_mathzone}
    ),
    s({trig="AA", snippetType="autosnippet", dscr="For all"},
        {t("\\forall")},
        {condition = in_mathzone}
    ),
    s({trig="to", snippetType="autosnippet", dscr="To"},
        {t("\\rightarrow")},
        {condition = in_mathzone}
    ),
    s({trig="!>", snippetType="autosnippet", dscr="Map"},
        {t("\\mapsto")},
        {condition = in_mathzone}
    ),
    s({trig="=>", snippetType="autosnippet", dscr="Implies"},
        {t("\\Rightarrow")},
        {condition = in_mathzone}
    ),
    s({trig="=<", snippetType="autosnippet", dscr="Implied by"},
        {t("\\Leftarrow")},
        {condition = in_mathzone}
    ),
    s({trig="iff", snippetType="autosnippet", dscr="Iff"},
        {t("\\Leftrightarrow")},
        {condition = in_mathzone}
    ),
    s({trig="!=", snippetType="autosnippet", dscr="Not equals"},
        {t("\\neq")},
        {condition = in_mathzone}
    ),
    s({trig="<=", snippetType="autosnippet", dscr="Less or equals"},
        {t("\\le")},
        {condition = in_mathzone}
    ),
    s({trig=">=", snippetType="autosnippet", dscr="Greater or equals"},
        {t("\\ge")},
        {condition = in_mathzone}
    ),
    s({trig="==", snippetType="autosnippet", dscr="Equivalent"},
        {t("\\equiv")},
        {condition = in_mathzone}
    ),
    s({trig=">>", snippetType="autosnippet", dscr="Much greater"},
        {t("\\gg")},
        {condition = in_mathzone}
    ),
    s({trig="<<", snippetType="autosnippet", dscr="Much less"},
        {t("\\ll")},
        {condition = in_mathzone}
    ),
    s({trig="mod", snippetType="autosnippet", dscr="Modulo"},
        {t("\\bmod")},
        {condition = in_mathzone}
    ),
    s({trig="~~", snippetType="autosnippet", dscr="Simetric"},
        {t("\\sim")},
        {condition = in_mathzone}
    ),
    s({trig="iso", snippetType="autosnippet", dscr="Isomorphism"},
        {t("\\simeq")},
        {condition = in_mathzone}
    ),
    s({trig="||", snippetType="autosnippet", dscr="Pipe"},
        {t("\\mid")},
        {condition = in_mathzone}
    ),
    s({trig="sr", snippetType="autosnippet", wordTrig=false, dscr="Square"},
        {t("^2")},
        {condition = in_mathzone}
    ),
    s({trig="cb", snippetType="autosnippet", wordTrig=false, dscr="Cube"},
        {t("^3")},
        {condition = in_mathzone}
    ),
    s({trig="invs", snippetType="autosnippet", wordTrig=false, dscr="Inverse"},
        {t("^{-1}")},
        {condition = in_mathzone}
    ),
    s({trig="ooo", snippetType="autosnippet", dscr="Infinity"},
        {t("\\infty")},
        {condition = in_mathzone}
    ),
    s({trig="lll", snippetType="autosnippet", dscr="Take the l"},
        {t("\\ell")},
        {condition = in_mathzone}
    ),
    s({trig="nabl", snippetType="autosnippet", dscr="Nabla"},
        {t("\\nabla")},
        {condition = in_mathzone}
    ),
    s({trig="xx", snippetType="autosnippet", dscr="The New York Times"},
        {t("\\times")},
        {condition = in_mathzone}
    ),
    s({trig="\\\\\\", snippetType="autosnippet", wordTrig=false, dscr="Set minus"},
        {t("\\setminus")},
        {condition = in_mathzone}
    ),
    s({trig="coomp", snippetType="autosnippet", dscr="Composition"},
        {t("\\circ")},
        {condition = in_mathzone}
    ),
    s({trig="**", snippetType="autosnippet", dscr="Dots"},
        {t("\\cdot")},
        {condition = in_mathzone}
    ),
    s({trig="nnn", snippetType="autosnippet", dscr="Big cap"},
        fmta(
            [[ 
            \bigcap_{<>}
            ]],
            {
                i(1, "i \\in I"),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="uuu", snippetType="autosnippet", dscr="Big cup"},
        fmta(
            [[ 
            \bigcup_{<>}
            ]],
            {
                i(1, "i \\in I"),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="sUuu", snippetType="autosnippet", dscr="Big square cup"},
        fmta(
            [[ 
            \bigsqcup_{<>}
            ]],
            {
                i(1, "i \\in I"),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="td", snippetType="autosnippet", wordTrig=false, dscr="To the power"},
        fmta(
            [[ 
            ^{<>}
            ]],
            {
                i(1),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="__", snippetType="autosnippet", wordTrig=false, dscr="Subscript"},
        fmta(
            [[ 
            _{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="case", snippetType="autosnippet", dscr="Cases"},
        fmta(
            [[ 
            \begin{cases}
                <>
            \end{cases}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="sq", snippetType="autosnippet", dscr="Square root"},
        fmta(
            [[ 
            \sqrt{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="sum", snippetType="autosnippet", dscr="Summation"},
        fmta(
            [[ 
            \sum_{<>}^{<>} <> 
            ]],
            {
                i(1, "i=1"),
                i(2, "\\infty"),
                d(3, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="prod", snippetType="autosnippet", dscr="Product"},
        fmta(
            [[ 
            \prod_{<>}^{<>} <> 
            ]],
            {
                i(1, "i=1"),
                i(2, "\\infty"),
                d(3, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="dint", snippetType="autosnippet", dscr="Defined integral"},
        fmta(
            [[ 
            \int_{<>}^{<>} <>
            ]],
            {
                i(1, "-\\infty"),
                i(2, "\\infty"),
                d(3, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="nint", snippetType="autosnippet", dscr="Normal integral"},
        fmta(
            [[ 
            \int_{<>} <> \mathrm{d}<>
            ]],
            {
                i(1),
                d(2, get_visual),
                i(3),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="intri", snippetType="autosnippet", dscr="Integral Riemann"},
        fmta(
            [[ 
            \int_{<>}^{<>} <> \mathrm{d}<>
            ]],
            {
                i(1, "a"),
                i(2, "b"),
                d(3, get_visual),
                i(4, "\\mu")
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="part", snippetType="autosnippet", dscr="Partial diferential"},
        fmta(
            [[ 
            \frac{\partial <>}{\partial <>}
            ]],
            {
                i(1, "y"),
                i(2, "x"),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="comb", snippetType="autosnippet", dscr="Combinatorial number"},
        fmta(
            [[ 
            \binom{<>}{<>}
            ]],
            {
                i(1, "y"),
                i(2, "x"),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="lim", dscr="Limit"},
        fmta(
            [[ 
            \lim_{<> \rightarrow <>} 
            ]],
            {
                i(1, "n"),
                i(2, "\\infty"),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="limsup", dscr="Limit superior"},
        fmta(
            [[ 
            \limsup_{<> \rightarrow <>} 
            ]],
            {
                i(1, "n"),
                i(2, "\\infty"),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="liminf", dscr="Limit inferior"},
        fmta(
            [[ 
            \liminf_{<> \rightarrow <>} 
            ]],
            {
                i(1, "n"),
                i(2, "\\infty"),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="suc", snippetType="autosnippet", dscr="Sucession"},
        fmta(
            [[ 
            \{<>\}_{<>=1}^{\infty}
            ]],
            {
                i(1),
                i(2, "n")
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="//", snippetType="autosnippet", dscr="Fraction"},
        fmta(
            [[ 
            \frac{<>}{<>}
            ]],
            {
                d(1, get_visual),
                i(2)
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="(%d+)/", wordTrig=false, regTrig = true, snippetType="autosnippet", dscr="OP fractions"},
        fmta(
            [[ 
            \frac{<>}{<>}
            ]],
            {
                f( function(_, snip) return snip.captures[1] end ),
                i(1)
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="(%a)(%d)", wordTrig=false, regTrig = true, snippetType="autosnippet", dscr="Simple subscript"},
        fmta(
            [[ 
            <>_<>
            ]],
            {
                f( function(_, snip) return snip.captures[1] end ),
                f( function(_, snip) return snip.captures[2] end ),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="(%a)_(%d%d)", wordTrig=false, regTrig = true, snippetType="autosnippet", dscr="Double subscript"},
        fmta(
            [[ 
            <>_{<>}
            ]],
            {
                f( function(_, snip) return snip.captures[1] end ),
                f( function(_, snip) return snip.captures[2] end ),
            }
        ),
        {condition = in_mathzone}
    ),
}
