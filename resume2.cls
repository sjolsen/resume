\ProvidesClass{resume2}[2014/10/07 Resume class]
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
      {\bfseries \Huge \@name}
    }
    \hfill
    \parbox[b]{0.25\textwidth}{
      \raggedleft
      {\bfseries \small \@contact}
    }
  }
  \vspace{-1.25em}\\
  \rule{\textwidth}{2.5pt}
  \vspace{1.2em}
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
% \RequirePackage{titlesec}
% \titleformat{\section}[leftmargin]{\raggedleft\bfseries\LARGE}{}{0pt}{}%[{\titlerule[1.25pt]}]
% \titlespacing*{\section}{2in}{0pt}{5pt}

%% Lists
\RequirePackage{enumitem}
\newcommand\smallbullet{
  $\vcenter{\hbox{\tiny$\bullet$}}$
}
\newlist{tightlist}{itemize}{2}
\setlist[tightlist]{leftmargin=*,label=\smallbullet,itemsep=0pt,parsep=2pt,topsep=0pt}
