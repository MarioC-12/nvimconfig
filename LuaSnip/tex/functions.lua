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
                    \node(X) {$X$};
                    \node(Y) [right of=X] {$Y$};
                    \node(Z) [below of=X] {$Z$};
                    \draw[->](X) to node {$f$}(Y);
                    \draw[->](X) to node [left] {$g$}(Z);
                    \draw[->](Z) to node [below=0.5ex] {$h$}(Y);
                    \end{tikzpicture}
                \caption{*+}
                \label{*+}
            \end{figure}
            ]],
            {
                i(1),
                i(2)
            },
            { delimiters = '*+' }
        )
    ),
}
