\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{custompaper}[2024/01/08 Custom Paper Class]

% Load necessary packages and set document layout
\LoadClass[]{article} % Load the article class with 12pt font size
\RequirePackage{fontspec}
\RequirePackage{titlesec}
\RequirePackage{setspace}
\RequirePackage{ragged2e}

%Fonts
\setmainfont{Times New Roman}
\newfontfamily\arialfont{Arial}

%Title format
\titleformat{\title}[display]{\arialfont\bfseries\fontsize{18}{22}\selectfont\raggedright}{\thetitle}{0em}{}[\vspace{1em}]

%Author format
\newcommand{\authorfont}{\arialfont\fontsize{12}{14}\selectfont\bfseries}
\renewcommand{\and}{\hspace{1em}}
\author{\authorfont Author Name(s)}

%Section format
\titleformat*{\section}{\arialfont\fontsize{12}{14}\selectfont\bfseries\MakeUppercase}

%Subsection format
\titleformat*{\subsection}{\normalfont\fontsize{12}{14}\selectfont\bfseries}

%Sub-subsection format
\titleformat*{\subsubsection}{\normalfont\fontsize{10}{12}\selectfont\bfseries\itshape}

\setcounter{secnumdepth}{0} %Suppress section numbering

\pagestyle{empty} %Suppress Page Numbering for the Entire Document

%Spacing
\renewcommand{\baselinestretch}{1.0}
\raggedright
\setlength{\parskip}{1\baselineskip}

%full justification
\newcommand{\setfulljustify}{
  \justifying
  \RaggedRight}

%Bibliography style
\bibliographystyle{apalike}

\endinput
