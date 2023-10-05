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
            \chapter{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="sec", snippetType="autosnippet", dscr="Section"},
        fmta(
            [[ 
            \section{<>}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="sub", snippetType="autosnippet", dscr="Subsection"},
        fmta(
            [[ 
            \subsection{<>}
            ]],
            {
                d(1, get_visual),
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
    s({trig="dm", snippetType="autosnippet", dscr="Math mode old"},
        fmta(
            [[ 
            $$
            <>
            $$
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
            \begin{defi}
                <>
            \end{defi}
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
    s({trig="enun", dscr="Enunciado"},
        fmta(
            [[ 
            \begin{enun}
                <>
            \end{enun}
            ]],
            {
                d(1, get_visual),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="sol", dscr="Solución"},
        fmta(
            [[ 
            \begin{sol}
                <>
            \end{sol}
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
                d(1, get_visual),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="inlist", snippetType="autosnippet", dscr="Inline code listing"},
        fmta(
            [[ 
            \lstinline{<>}
            ]],
            {
                d(1, get_visual),
            }
        )
    ),
    s({trig="fig", snippetType="autosnippet", dscr="Figure"},
        fmta(
            [[ 
            \begin{figure}[<>]
                \centering
                <>
                \caption{<>}
            \end{figure}
            ]],
            {
                i(1, "H"),
                i(2),
                i(3),
            }
        ),
        {condition = line_begin}
    ),
    s({trig="tikz", snippetType="autosnippet", dscr="Tikz picture"},
        fmta(
            [[ 
            \begin{figure}[<>]
                \centering
                \begin{tikzpicture}
                    <>
                \end{tikzpicture}
                \caption{<>}
            \end{figure}
            ]],
            {
                i(1, "H"),
                i(2),
                i(3),
            }
        ),
        {condition = line_begin}
    ),
}
