%! Class = cs430recitation
%! Author = Len Washington III
%! Date = 8/22/2023

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cs430recitation}[2023/08/22 Len Washington III's Package for styling Recitations from IIT's CS 430 - Introduction to Algorithms.]

\LoadClass[12pt]{report}

\RequirePackage{xifthen}
\RequirePackage{titling}

\DeclareOption*{
	\ifnum0=\CurrentOption
		\title{CS 430 - Recitation Notes}
	\else
		\setcounter{chapter}{\CurrentOption}
		\title{CS 430 - Recitation \arabic{chapter}}
	\fi
}
\ProcessOptions
\RequirePackage[mytitle=\thetitle,leftlabel={CS 430 - Recitation\ }]{cs430}
% \fancyhead[L]{CS 430 - Recitation \arabic{recitation}}

\newcommand{\key}[2]{C$(\{ #1 \}$, #2)}

\newcommand{\choicelabel}{\alph*)}
\newcommand{\selection}[1]{\textcolor{blue}{#1}}
\newcommand{\reasoning}[1]{\textcolor{blue}{#1}}
