%! Class = cs430lecture
%! Author = Len Washington III
%! Date = 8/22/2023

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cs430lecture}[2023/08/22 Len Washington III's Class]

\LoadClass[12pt]{report}

\RequirePackage{xifthen}
\RequirePackage{titling}

\DeclareOption*{
	\ifnum0=\CurrentOption
		\title{CS 430 - Lecture Activity Notes}
	\else
		\setcounter{chapter}{\CurrentOption}
		\title{CS 430 - Lecture Activity \arabic{chapter}}
	\fi
}
\ProcessOptions
\setlength{\parindent}{0pt}

\RequirePackage[mytitle=\thetitle,leftlabel={CS 430 - Lecture Activity\ }]{cs430}
\newcommand{\openingquestions}[1][]{\section{Opening Questions\ifx#1\empty\else\ -- #1 \fi}\label{sec:opening-questions-\arabic{chapter}}}
\renewcommand{\maketitle}{\begin{center}{\Large\textbf{CS 430 Lecture \number\value{chapter} Activities}}
\pdfbookmark[1] % Level
{CS 430 Lecture \number\value{chapter} Activities} % Text
{lecture:\number\value{chapter}}% Name/Label
\end{center}}

