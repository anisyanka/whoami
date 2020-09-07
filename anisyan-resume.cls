\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{anisyan-resume}[2020/08/26 Anisimov's custom CV class]

\RequirePackage{titlesec}
\RequirePackage{fontawesome}
\RequirePackage{xcolor}
\RequirePackage[colorlinks = true,
				linkcolor = blue,
				urlcolor  = blue,
				citecolor = blue,
				anchorcolor = blue]{hyperref}

\LoadClass{article}

\titleformat{\section}       % Customise the \section command 
{\large\scshape\raggedright} % Make the \section headers large (\Large), % small capitals (\scshape) and left aligned (\raggedright)
{}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
{}                           % Can be used to insert code before the heading
[\titlerule]                 % Inserts a horizontal line after the heading

\titleformat{\subsection}
{\large\raggedright}
{}{0em}
{}

\newcommand{\datedsection}[2]{%
	\section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
	\subsection[#1]{#1 \hfill #2}%
}

\newcommand{\timelinebullet}{{\hspace{-1.6pt}}{\rule{.5ex}{.5ex}}}

% make table with links to:
%[1] - phone only with digits
%[2] - phone number
%[3] - mail
%[4] - github
%[5] - linkedin
%[6] - stackoverflow
\newcommand{\makepersonallinks}[6]{
	\bgroup
	\def\arraystretch{1} % Default value: 1
	\begin{tabular}{ l }
		\faPhone \vspace{\medskipamount} \href{tel:+#1}{\texttt{\textbf{#2}}} \tabularnewline
		\faGithub \vspace{\medskipamount} \href{#4}{\texttt{\textbf{anisyanka.git}}} \tabularnewline
		\faLinkedin \vspace{\medskipamount} \href{#5}{\texttt{\textbf{anisyanka.in}}} \tabularnewline
		\faStackOverflow \vspace{\medskipamount} \href{#6}{\texttt{\textbf{anisyanka.so}}} \tabularnewline
		\faEnvelope \vspace{\medskipamount} \href{mailto:#3@gmail.com}{\texttt{\textbf{#3}}}
	\end{tabular}
	\egroup
}
