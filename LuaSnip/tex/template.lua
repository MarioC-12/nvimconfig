local line_begin = require("luasnip.extras.expand_conditions").line_begin;

return
{
    s({trig="mtemplate", dscr="Template for math documents"},
        fmta(
        [[ 
        \documentclass[10pt,a4paper,openright]{book}

        %% Formateo del título del documento
        \title{<>}
        \author{Mario Calvarro Marines}
        \date{}

        %% Formateo del estilo de escritura y de la pagina
        \pagestyle{plain}
        \setlength{\parskip}{0.35cm} %edicion de espaciado
        \setlength{\parindent}{0cm} %edicion de sangría
        \clubpenalty=10000 %líneas viudas NO
        \widowpenalty=10000 %líneas viudas NO
        \usepackage[top=2.5cm, bottom=2.5cm, left=3cm, right=3cm]{geometry} % para establecer las medidas de los margenes
        \usepackage[spanish]{babel} %Para que el idioma por defecto sea español
        \usepackage{ulem} % para poder subrayar entornos especiales como las secciones

        %% Texto matematico y simbolos especiales
        \usepackage{amsmath} %Paquetes para mates
        \usepackage{amsfonts} %Paquetes para mates
        \usepackage{amssymb} %Paquetes para mates
        \usepackage{stmaryrd} % paquete para mates
        \usepackage{latexsym} %Paquetes para mates
        \usepackage{cancel} %Paquete tachar cosas

        %% Ruta de las fotos e inclusion de las mismas
        \usepackage{graphicx}
        \graphicspath{{./fotos/}}

        %% Inclusion de referencias cruzadas por defecto y específicas
        \usepackage{hyperref}

        %% Paquete para definir y utilizar colores por el documento
        \usepackage[dvipsnames,usenames]{xcolor} %activar e incluir colores
            %% definicion de los colores que se van a utilizar en cada cabecera
            \definecolor{capitulos}{RGB}{60,0,0}% gama de colores de los capitulos
            \definecolor{secciones}{RGB}{95,8,5}% gama de colores de las secciones
            \definecolor{subsecciones}{RGB}{140,36,31}% gama de colores de las subsections
            \definecolor{subsubsecciones}{RGB}{188,109,79}% gama de colores de las subsubsections
            \definecolor{teoremas}{RGB}{164,56,32}% gama de colores para los teoremas
            \definecolor{demos}{RGB}{105,105,105} % gama de colores para el cuerpo de las demostraciones

        %% Paquete para la edición y el formateo de capítulos, secciones...
        \usepackage[explicit]{titlesec}
            %% Definición del estilo de los capítulos, secciones, etc...
            \titleformat{\chapter}[display]{\normalfont\huge\bfseries\color{capitulos}}{}{0pt}{\Huge #1}[\titlerule]
            \titleformat{\section}{\normalfont\Large\bfseries\color{secciones}}{}{0pt}{#1}
            \titleformat{\subsection}{\normalfont\large\bfseries\color{subsecciones}}{}{0pt}{\uline{#1}}
            \titleformat{\subsubsection}{\normalfont\normalsize\bfseries\color{subsubsecciones}}{}{0pt}{#1}

        %% Paquete para el formateo de entornos del proyecto
        \usepackage{ntheorem}[thmmarks]
            %% Definicion del aspecto de los entornos matematicos del proyecto
            \theoremstyle{break}
            \theoremheaderfont{\normalfont\bfseries\color{teoremas}}
            \theorembodyfont{\itshape}
            \theoremseparator{\vspace{0.2cm}}
            \theorempreskip{\topsep}
            \theorempostskip{\topsep}
            \theoremindent0cm
            \theoremnumbering{arabic}
            \theoremsymbol{}
            \theoremprework{\vspace{0.2cm} \hrule}
            \theorempostwork{\vspace{0.2cm}\hrule}
                \newtheorem*{defi}{Definición}

            \theoremprework{\vspace{0.25cm}}
                \newtheorem*{theo}{Teorema}

            \theoremprework{\vspace{0.25cm}}
                \newtheorem*{coro}{Corolario}

            \theoremprework{\vspace{0.25cm}}
                \newtheorem*{lema}{Lema}

            \theoremprework{\vspace{0.25cm}}
                \newtheorem*{prop}{Proposición}

            \theoremheaderfont{\normalfont}
            \theorembodyfont{\normalfont\color{demos}}
            \theoremsymbol{\hfill\square}
                \newtheorem*{demo}{\underline{Demostración}:}

            \theoremheaderfont{\normalfont}
            \theorembodyfont{\normalfont}
                \newtheorem*{obs}{\underline{Observación}:}
                \newtheorem*{ej}{\underline{Ejemplo}:}

        %% Definicion de operadores especiales para simplificar la escritura matematica
        \DeclareMathOperator{\dom}{dom}
        \DeclareMathOperator{\img}{img}
        \DeclareMathOperator{\rot}{rot}
        \DeclareMathOperator{\divg}{div}
        \newcommand{\dif}[1]{\ d#1}

        %% Paquete e instrucciones para la generacion de los dibujos
        \usepackage{pgfplots}
        \pgfplotsset{compat=1.17}
        \usepackage{tkz-fct}
        \usepgfplotslibrary{fillbetween}
        \usepackage{tikz,tikz-3dplot}
        \tdplotsetmaincoords{80}{45}
        \tdplotsetrotatedcoords{-90}{180}{-90}
        \usetikzlibrary{arrows}
            %% style for surfaces
            \tikzset{surface/.style={draw=blue!70!black, fill=blue!40!white, fill opacity=.6}}

            %% macros to draw back and front of cones
            %% optional first argument is styling; others are z, radius, side offset (in degrees)
            \newcommand{\coneback}[4][]{
                %% start at the correct point on the circle, draw the arc, then draw to the origin of the diagram, then close the path
                \draw[canvas is xy plane at z=#2, #1] (45-#4:#3) arc (45-#4:225+#4:#3) -- (O) --cycle;
            }
            \newcommand{\conefront}[4][]{
                \draw[canvas is xy plane at z=#2, #1] (45-#4:#3) arc (45-#4:-135+#4:#3) -- (O) --cycle;
            }
            
            \tikzset{middlearrow/.style={decoration={markings, mark= at position 0.5 with {\arrow{#1}},},postaction={decorate}}}
            
            \usetikzlibrary{decorations.markings}
            
            \newcommand{\AxisRotator}[1][rotate=0]{
            \tikz [x=0.25cm,y=0.60cm,line width=.2ex,-stealth,#1] \draw (0,0) arc (-150:150:1 and 1);
            }
            
            \usetikzlibrary{shapes}


        \begin{document}
        \maketitle
        \setcounter{tocdepth}{3}% para que salgan las subsubsecciones en el indice
        \tableofcontents
        <> 
        \end{document}
        ]],
        {
            i(1),
            i(0)
        }
        ),
        {condition = line_begin}
    )
}
