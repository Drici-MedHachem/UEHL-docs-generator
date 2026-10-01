\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{csdept}[2026/09/30 v0.1 UEHL CS Department documents]

\LoadClass[11pt,a4paper]{article}

% ------------------------------------------------------------
% Basic document setup
% ------------------------------------------------------------

\RequirePackage{geometry}
\geometry{margin=25mm}

\RequirePackage{libertinus}
\RequirePackage{microtype}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{enumitem}
\RequirePackage{hyperref}

% ------------------------------------------------------------
% Department packages
% ------------------------------------------------------------

\RequirePackage{csdept-math}
\RequirePackage{csdept-code}
\RequirePackage{csdept-theorems}
\RequirePackage{csdept-algorithms}
\RequirePackage{csdept-boxes}

% ------------------------------------------------------------
% Colors
% ------------------------------------------------------------

\definecolor{csdeptblue}{HTML}{17365D}

% ------------------------------------------------------------
% PDF metadata and links
% ------------------------------------------------------------

\hypersetup{
  colorlinks=true,
  linkcolor=csdeptblue,
  urlcolor=csdeptblue,
  citecolor=csdeptblue
}

% ------------------------------------------------------------
% General typography
% ------------------------------------------------------------

\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt}

\setlist{
  itemsep=2pt,
  topsep=4pt
}

% ------------------------------------------------------------
% Document information
% ------------------------------------------------------------

\newcommand{\csdept@university}{University of El Oued}
\newcommand{\csdept@faculty}{Faculty of Exact Sciences}
\newcommand{\csdept@department}{Department of Computer Science}

\newcommand{\csdept@course}{}
\newcommand{\csdept@doctype}{}
\newcommand{\csdept@teacher}{}
\newcommand{\csdept@academicyear}{}

\newcommand{\university}[1]{
  \renewcommand{\csdept@university}{#1}
}

\newcommand{\faculty}[1]{
  \renewcommand{\csdept@faculty}{#1}
}

\newcommand{\department}[1]{
  \renewcommand{\csdept@department}{#1}
}

\newcommand{\course}[1]{
  \renewcommand{\csdept@course}{#1}
}

\newcommand{\documenttype}[1]{
  \renewcommand{\csdept@doctype}{#1}
}

\newcommand{\teacher}[1]{
  \renewcommand{\csdept@teacher}{#1}
}

\newcommand{\academicyear}[1]{
  \renewcommand{\csdept@academicyear}{#1}
}

% ------------------------------------------------------------
% Title
% ------------------------------------------------------------

\RequirePackage{tabularx}

\makeatletter

\renewcommand{\maketitle}{%

  % ----------------------------------------------------------
  % Header information
  % ----------------------------------------------------------

  \noindent
  \begin{tabularx}{\textwidth}{@{}X r@{}}

    % Left: course/document information
    \begin{minipage}[t]{\linewidth}
      \centering

      \ifx\csdept@course\@empty\else
        {\bfseries \csdept@course\par}
      \fi

      \ifx\csdept@teacher\@empty\else
        {\csdept@teacher\par}
      \fi

      \ifx\csdept@academicyear\@empty\else
        {\csdept@academicyear\par}
      \fi

    \end{minipage}

    &
    \hspace{1.5cm}
    % Right: university information
    \begin{minipage}[t]{0.48\textwidth}
      \centering
      
      {\bfseries \csdept@university\par}
      {\csdept@faculty\par}
      {\csdept@department\par}

    \end{minipage}

  \end{tabularx}

  \vspace{14pt}

  % ----------------------------------------------------------
  % Document type and title
  % ----------------------------------------------------------

  \begin{center}

    \ifx\csdept@doctype\@empty\else
      {\large\bfseries \csdept@doctype\par}
      \vspace{5pt}
    \fi

    {\LARGE\bfseries \@title\par}

  \end{center}

  \vspace{10pt}

  \textcolor{csdeptblue}{\rule{\textwidth}{0.6pt}}

  \vspace{12pt}
}

\makeatother

\endinput