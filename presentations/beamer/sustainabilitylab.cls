% sustainabilitylab_beamer.cls
% Simple Metropolis-inspired theme with sustainability lab branding

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sustainabilitylab}[2025/07/04 Simple Metropolis-inspired Beamer Class]

\LoadClass[11pt,aspectratio=169]{beamer}

% Required packages
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[english]{babel}
\RequirePackage{graphicx}
\RequirePackage{tikz,pgfplots}
\RequirePackage{amsmath,amssymb}
\RequirePackage{booktabs,listings,xcolor,url}
% Use best available fonts
\RequirePackage[scaled=0.9]{helvet}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\renewcommand{\familydefault}{\sfdefault}
\renewcommand{\rmdefault}{lmr}
\renewcommand{\ttdefault}{lmtt}
\pgfplotsset{compat=1.18}

% Colors - simple and clean
\definecolor{labblack}{RGB}{0,0,0}
\definecolor{labgray}{RGB}{64,64,64}
\definecolor{lablightgray}{RGB}{200,200,200}
\definecolor{labaccent}{RGB}{35,55,59}

\setbeamercolor{structure}{fg=labaccent}
\setbeamercolor{title}{fg=labblack}
\setbeamercolor{frametitle}{fg=labblack,bg=white}
\setbeamercolor{normal text}{fg=labblack,bg=white}
\setbeamercolor{background canvas}{bg=white}
\setbeamercolor{progress bar}{fg=labaccent}

% No navigation symbols
\setbeamertemplate{navigation symbols}{}

% Enhanced typography with larger frame titles
\setbeamerfont{title}{size=\huge, series=\bfseries}
\setbeamerfont{subtitle}{size=\Large}
\setbeamerfont{frametitle}{size=\Large, series=\bfseries}
\setbeamerfont{framesubtitle}{size=\normalsize, series=\mdseries}
\setbeamerfont{normal text}{size=\normalsize}
\setbeamerfont{footnote}{size=\tiny}

% Simple bullets
\setbeamertemplate{itemize item}{\textcolor{labaccent}{\textbullet}}
\setbeamertemplate{itemize subitem}{\textcolor{labgray}{\textbullet}}

% Professional code styling
\usepackage{textcomp}
\usepackage[most]{tcolorbox} 
\tcbuselibrary{listingsutf8}

\newtcblisting{codebox}{
  listing engine=listings,
  enhanced,
  colback=gray!5,
  colframe=black!10,
  boxrule=0pt,
  arc=2mm,
  outer arc=1mm,
  left=6pt,
  right=6pt,
  top=6pt,
  bottom=6pt,
  listing only,
  listing options={
    language=Python,
    basicstyle=\ttfamily\footnotesize,
    keywordstyle=\color{blue!80!black}\bfseries,
    commentstyle=\color{gray!70}\itshape,
    stringstyle=\color{red!70!black},
    showstringspaces=false,
    breaklines=true,
    breakatwhitespace=true,
    upquote=true,
    tabsize=2,
    numbers=none
  }
}

% Simple frame title like standard Beamer
\setbeamertemplate{frametitle}{%
  \vspace{0.1cm}%
  \begin{minipage}[b][0.7cm][t]{\textwidth}%
    \raggedright%
    \usebeamerfont{frametitle}\insertframetitle%
    \hfill%
    \raisebox{-0.15cm}{\includegraphics[height=0.9cm]{../../assets/logo_light.pdf}}%
  \end{minipage}%
  \par%
  \textcolor{labaccent}{\rule{\textwidth}{1pt}}%
  \vspace{0.2cm}%
}

% Clean footer with proper spacing for slide numbers
\setbeamertemplate{footline}{%
  \leavevmode%
  \hbox{%
    \begin{beamercolorbox}[wd=\paperwidth,ht=3ex,dp=1ex,right]{footline}%
      \usebeamerfont{page number in head/foot}%
      \vspace{0.5ex}%
      \textcolor{lablightgray}{\insertframenumber\,/\,\inserttotalframenumber}\hspace*{1.5ex}%
    \end{beamercolorbox}%
  }%
  \vspace{0.3ex}%
}

% Title page
\setbeamertemplate{title page}{
  \vspace{1.5cm}
  \begin{center}
    {\usebeamerfont{title}\inserttitle\par}
    \vspace{0.5em}
    {\usebeamerfont{subtitle}\color{labgray}\insertsubtitle\par}
    \vspace{1.8em}
    {\large\bfseries\insertauthor\par}
    \vspace{0.3em}
    {\normalsize\color{labgray}\insertinstitute\par}
    \vspace{1em}
    {\normalsize\color{lablightgray}\insertdate\par}
  \end{center}
  \vfill
  \begin{center}
    \includegraphics[height=1.5cm]{../../assets/logo_light.pdf}
  \end{center}
  \vspace{0.5cm}
}