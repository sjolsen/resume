\ProvidesClass{resume}[2014/10/07 Resume class]
\LoadClass[11pt]{article}
\pagenumbering{gobble}

%% Default font settings
\RequirePackage{helvet}
\let \familydefault \sfdefault

%% Name
\def \name #1{
  \def \@name {#1}
}

%% Contact information
\let \@contact \relax
\def \contact #1{
  \def \@contact {#1}
}

%% Title
\renewcommand\@maketitle{
  \newpage
  \noindent
  \mbox{
    \parbox[b]{0.75\textwidth}{
      \raggedright
      \hspace{-6pt} %% HACK
      {\bfseries \Huge \@name}
    }
    \hfill
    \parbox[b]{0.238\textwidth}{ %% HACK
      \raggedleft
      {\bfseries \small \@contact}
    }
  }
  \vspace{-1.5em}\\
  \rule{\textwidth}{2.5pt}
  \vspace{1em}
}
\renewcommand\maketitle{\par
  \if@twocolumn
    \twocolumn[
      \begin{@twocolumnfalse}
        \@maketitle
      \end{@twocolumnfalse}
    ]%
  \else
    \@maketitle
  \fi
}

%% Sections
\RequirePackage{titlesec}
\titleformat{\section}{\bfseries\LARGE}{}{0pt}{}
\titlespacing*{\section}{0pt}{0pt}{5pt}
\titleformat{\subsection}{\bfseries\large}{}{0pt}{}
\titlespacing*{\subsection}{0pt}{6pt}{5pt}
\titleformat{\subsubsection}{\bfseries}{}{0pt}{}
\titlespacing*{\subsubsection}{0pt}{3pt}{5pt}

\RequirePackage{changepage}
\newenvironment{rsection}[1]{
  \section*{#1}
  \begin{adjustwidth}{1.5em}{}
}{
  \end{adjustwidth}
}

%% Lists
\RequirePackage{enumitem}
\RequirePackage{calc}
\newcommand\smallbullet{\raisebox{0.2em}{\tiny$\bullet$}}
\newcommand\smalldash{\raisebox{0.04em}{-}}
\newlist{tightlist}{itemize}{2}
\setlist[tightlist]{itemindent=0em,leftmargin=1.1em,label=\smallbullet,labelsep=0.55em,itemsep=0em,parsep=2pt}
\setlist[tightlist,2]{labelsep=0.5em,label=\smalldash,topsep=0pt}