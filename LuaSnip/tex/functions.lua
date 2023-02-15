local helpers = require('luasnip-helper-funcs')
local in_mathzone = function()
    return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return
{
    s({trig="sin", snippetType="autosnippet"},
    {
        t("\\sin"),
    },
    {condition = in_mathzone}),
    s({trig="cos", snippetType="autosnippet"},
    {
        t("\\cos"),
    },
    {condition = in_mathzone}),
    s({trig="ln", snippetType="autosnippet"},
    {
        t("\\ln"),
    },
    {condition = in_mathzone}),
    s({trig="log", snippetType="autosnippet"},
    {
        t("\\log"),
    },
    {condition = in_mathzone}),
    s({trig="exp", snippetType="autosnippet"},
    {
        t("\\exp"),
    },
    {condition = in_mathzone}),

    s({trig="composition", dscr="Composition Figure"},
        fmt(
            [[ 
            \begin{figure}[H]
                \centering
                    \begin{tikzpicture}[node distance=2cm, auto]
                    \node(*+) {$*+$};
                    \node(*+) [right of=*+] {$*+$};
                    \node(*+) [below of=*+] {$*+$};
                    \draw[->](*+) to node {$*+$}(*+);
                    \draw[->](*+) to node [left] {$*+$}(*+);
                    \draw[->](*+) to node [below] {$*+$}(*+);
                    \end{tikzpicture}
                \caption{*+}
                \label{*+}
            \end{figure}
            ]],
            {
                i(1, "X"), rep(1),
                i(2, "Y"), rep(1), rep(2),
                i(3, "Z"), rep(1), rep(2),
                rep(1), i(4, "f"), rep(2),
                rep(1), i(5, "g"), rep(3),
                rep(3), i(6, "f \\circ g"), rep(2),
                i(7),
                rep(7, "fig:")
            },
            { delimiters = '*+' }
        )
    ),
}
