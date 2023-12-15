return
{
    --Tex snippets
    s({trig="btsn", dscr="Basic text snippet"},
        fmta(
            [[
            s({trig="<>", dscr="<>"},
            {
                t("<>")
            },
            {<>})
            ]],
            {
                i(1), i(2), i(3), i(4),
            }
        ),
        {}
    ),
    s({trig="bmtsn", dscr="Basic math text snippet"},
        fmta(
            [[
            s({trig="<>", dscr="<>"},
            {
                t("<>")
            },
            {condition = in_mathzone})
            ]],
            {
                i(1), i(2), i(3),
            }
        ),
        {}
    ),
    s({trig="lbsn", dscr="Line begin snippet"},
        fmta(
            [[ 
            s({trig="<>", dscr="<>"},
                fmta(
                    [[
                    <>
                    <>,
                    {
                        <>
                    }
                ),
                {condition = line_begin}
            ),
            ]],
            {
                i(1), i(2),
                i(3),
                t("]]"),
                i(4),
            }
        ),
        {}
    ),
}
