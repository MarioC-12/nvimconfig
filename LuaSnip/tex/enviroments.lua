local helpers = require('luasnip-helper-funcs')
local get_visual = helpers.get_visual
local line_begin = require("luasnip.extras.expand_conditions").line_begin;

return
{
    s({trig="beg", snippetType="autosnippet", dscr="Enviroment"},
        fmta(
            [[ 
            \begin{<>}
                <>
            \end{<>}
            ]],
            {
                i(1),
                d(2, get_visual),
                rep(1)
            }
        ),
        {condition = line_begin}
    ),
    s({trig="enum", snippetType="autosnippet", dscr="Enumeration enviroment"},
        fmta(
            [[ 
            \begin{enumerate}
                <>
            \end{enumerate}
            ]],
            {
                i(1),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="item", snippetType="autosnippet", dscr="Itemize enviroment"},
        fmta(
            [[ 
            \begin{itemize}
                <>
            \end{itemize}
            ]],
            {
                i(1),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="it", dscr="Individual item"},
        fmta(
            [[ 
            \item
            ]],
            {}
        ),
        {condition = line_begin}
    ),
    s({trig="cha", snippetType="autosnippet", dscr="Chapter"},
        fmta(
            [[ 
            \chapter{<>},
            \label{cha:<>}
            ]],
            {
                d(1, get_visual),
                rep(1)
            }
        ),
        {condition = line_begin}
    ),
    s({trig="sec", snippetType="autosnippet", dscr="Section"},
        fmta(
            [[ 
            \section{<>},
            \label{sec:<>}
            ]],
            {
                d(1, get_visual),
                rep(1)
            }
        ),
        {condition = line_begin}
    ),
    s({trig="sub", snippetType="autosnippet", dscr="Subsection"},
        fmta(
            [[ 
            \subsection{<>},
            \label{sub:<>}
            ]],
            {
                d(1, get_visual),
                rep(1)
            }
        ),
        {condition = line_begin}
    ),
    s({trig="eqnn", dscr="Equation without a number"},
        fmta(
            [[ 
            \begin{equation*}
                <>
            \end{equation*}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="mk", snippetType="autosnippet", dscr="Inline math mode"},
        fmta(
            [[ 
            $<>$
            ]],
            {
                d(1, get_visual),
            }
        )
    ),
    s({trig="dn", snippetType="autosnippet", dscr="Math mode"},
        fmta(
            [[ 
            \[
            <>
            \]
            ]],
            {
                d(1, get_visual),
            }
        )
    ),
    s({trig="ali", dscr="Align mode"},
        fmta(
            [[ 
            \begin{align*}
                <>
            \end{align*}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="gat", dscr="Gather mode"},
        fmta(
            [[ 
            \begin{gather*}
                <>
            \end{gather*}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="def", dscr="Definition"},
        fmta(
            [[ 
            \begin{def}
                <>
            \end{def}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="prop", dscr="Proposition"},
        fmta(
            [[ 
            \begin{prop}
                <>
            \end{prop}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="th", dscr="Theorem"},
        fmta(
            [[ 
            \begin{theo}
                <>
            \end{theo}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="dem", dscr="Proof"},
        fmta(
            [[ 
            \begin{demo}
                <>
            \end{demo}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="lema", dscr="Lemma"},
        fmta(
            [[ 
            \begin{lema}
                <>
            \end{lema}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="cor", dscr="Corollary"},
        fmta(
            [[ 
            \begin{coro}
                <>
            \end{coro}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="obs", dscr="Observation"},
        fmta(
            [[ 
            \begin{obs}
                <>
            \end{obs}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="ej", dscr="Example"},
        fmta(
            [[ 
            \begin{ej}
                <>
            \end{ej}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="pg", dscr="Política general"},
        fmta(
            [[ 
            \begin{pg}
                <>
            \end{pg}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="il", dscr="Ilustration"},
        fmta(
            [[ 
            \begin{il}
                <>
            \end{il}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="listing", snippetType="autosnippet", dscr="Code listing"},
        fmta(
            [[ 
            \begin{lstlisting}
                <>
            \end{lstlisting}
            ]],
            {
                i(1),
            }
        ),
        {condition = line_begin}
    ),
}
