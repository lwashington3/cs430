%! Class = cs430homework
%! Author = Len Washington III
%! Date = 9/14/2023

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cs430homework}[2023/09/14 Len Washington III's Package]

\LoadClass[12pt]{report}

\RequirePackage{xifthen}
\RequirePackage{kvoptions}
\RequirePackage{titling}

\DeclareOption*{
	\ifnum0=\CurrentOption
		\title{CS 430 - Homeworks}
	\else
		\setcounter{chapter}{\CurrentOption}
		\title{CS 430 - Homework \arabic{chapter}}
	\fi
}
\ProcessOptions
\ProcessKeyvalOptions*
\setlength{\parindent}{0pt}

\RequirePackage[mytitle=\thetitle,leftlabel={CS 430 - Homework \#}]{cs430}

\renewcommand{\maketitle}{
	\centering\textbf{
		CS 430 -- FALL 2023\\
		INTRODUCTION TO ALGORITHMS\\
		HOMEWORK \#\arabic{chapter}
	}
}