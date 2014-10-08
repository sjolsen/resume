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
\def \@maketitle {
  \noindent
  \parbox[b]{0.75\textwidth}{
    \raggedright
    {\bfseries \Huge \@name}
  }
  \hfill
  \parbox[b]{0.25\textwidth}{
    \raggedleft
    {\bfseries \small \@contact}
  }
  \vspace{-1.25em}
\\
  \rule{\textwidth}{2.5pt}
}

%% Sections
% \RequirePackage{titlesec}
% \titleformat{\section}[leftmargin]{\raggedleft\bfseries\LARGE}{}{0pt}{}%[{\titlerule[1.25pt]}]
% \titlespacing*{\section}{2in}{0pt}{5pt}