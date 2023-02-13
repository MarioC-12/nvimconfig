local helpers = require('luasnip-helper-funcs')
local get_visual = helpers.get_visual
local in_mathzone = function()
    return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return
{
    s({trig="bar", snippetType="autosnippet", dscr="Bar", priority=10},
        fmta(
            [[ 
            \overline{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="tilde", snippetType="autosnippet", dscr="Tilde", priority=10},
        fmta(
            [[ 
            \tilde{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="vet", snippetType="autosnippet", dscr="Vector", priority=10},
        fmta(
            [[ 
            \overrightarrow{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="hat", snippetType="autosnippet", dscr="Hat", priority=10},
        fmta(
            [[ 
            \hat{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="ino", snippetType="autosnippet", dscr="[In]teri[o]r", priority=10},
        fmta(
            [[ 
            \mathring{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="(%w+)bar", wordTrig=false, regTrig = true, snippetType="autosnippet", dscr="OP bar"},
        fmta(
            [[ 
            \overline{<>}
            ]],
            {
                f( function(_, snip) return snip.captures[1] end )
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="(%w+)tilde", wordTrig=false, regTrig = true, snippetType="autosnippet", dscr="OP tilde"},
        fmta(
            [[ 
            \tilde{<>}
            ]],
            {
                f( function(_, snip) return snip.captures[1] end )
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="(%w+)vet", wordTrig=false, regTrig = true, snippetType="autosnippet", dscr="OP vet"},
        fmta(
            [[ 
            \overrightarrow{<>}
            ]],
            {
                f( function(_, snip) return snip.captures[1] end )
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="(%w+)hat", wordTrig=false, regTrig = true, snippetType="autosnippet", dscr="OP sombrero"},
        fmta(
            [[ 
            \hat{<>}
            ]],
            {
                f( function(_, snip) return snip.captures[1] end )
            }
        ),
        {condition = in_mathzone}
    ),
    s({trig="(%w)ino", wordTrig=false, regTrig = true, snippetType="autosnippet", dscr="OP [in]teri[o]r"},
        fmta(
            [[ 
            \mathring{<>}
            ]],
            {
                f( function(_, snip) return snip.captures[1] end )
            }
        ),
        {condition = in_mathzone}
    ),
}
