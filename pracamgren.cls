% Klasa dokumentow do skladu prac magisterskich i~licencjackich po angielsku
% na wydziale Matematyki, Mechaniki i~Informatyki UW.
%
% Copyright (c) 2001 by Wydzial Matematyki, Informatyki i Mechaniki.
%
% Zmiany 05.05.2006 by Seweryn Karlowicz
%
% Zmiany 10.05.2012 by Michal Derezinski

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pracamgren}[2012/05/08 v0.5.1 Praca magisterska po angielsku]

\def\@baseclass{report}
\def\@rodzajpracy{Master's}
\DeclareOption{licencjacka}{\def\@rodzajpracy{Bachelor's}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\@baseclass}}
\PassOptionsToClass{a4paper,twoside,openright,11pt}{\@baseclass}
\ProcessOptions

\LoadClass{\@baseclass}

\textwidth\paperwidth
\advance\textwidth -55mm
\oddsidemargin-1in
\advance\oddsidemargin 30mm
\evensidemargin-1in
\advance\evensidemargin 25mm
\topmargin -1in
\advance\topmargin 2cm
\setlength\textheight{48\baselineskip}
\addtolength\textheight{\topskip}
\marginparwidth15mm

\renewcommand\maketitle{%
  \begin{titlepage}%
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \begin{center}%
      {\LARGE\textbf{University of Warsaw}\\
        Faculty of Mathematics, Informatics and Mechanics\par}
      \vspace{1cm plus 1fill} 
      {\Large\bf\@author\par}
      \vspace{0.2cm}
      {\large Student number: \@nralbumu\par}
      \vspace{8mm plus .1fill}
      {\Huge\textbf{\@title}\par}
      \vspace{8mm plus .1fill}
      {\large\bf \@rodzajpracy\ Thesis\\[3pt]
        in \MakeUppercase{\@kierunek} \\
%----zakres---
        \@zakres \par}
      \vspace{2cm plus 1.5fill}
      \begin{flushright}\large
        \begin{tabular}{l}
          Supervisor\\
          \bfseries \@opiekun
        \end{tabular}
      \end{flushright}
      \vspace{1cm plus 1fill}
      {\large \@date\par}
    \end{center}
    \@thanks
  \end{titlepage}%
  \begin{titlepage}
    \c@page=2
    \large
    \null
    \vfill
    
   \textbf{\Large O\'swiadczenie kieruj¡cego prac¡ }
      \vspace{10mm}
      
   Potwierdzam, {\.z}e niniejsza praca zosta{\l}a przygotowana pod moim 
   kierunkiem i kwalifikuje si¦ do przedstawienia jej w post¦powaniu 
   o nadanie tytu{\l}u zawodowego. 
   \vspace{15mm}
   
   Data \hfill Podpis kieruj¡cego prac¡ 
   
   \vspace{3cm}
   \textbf{\Large O\'swiadczenie autora (autor\'ow) pracy}
    \vspace{10mm}
    
   \'{S}wiadom odpowiedzialno\'sci prawnej o\'swiadczam, {\.z}e niniejsza praca dyplomowa zosta{\l}a 
   napisana przeze mnie samodzielnie i nie zawiera tre\'sci uzyskanych w spos\'ob niezgodny 
   z obowi¡zuj¡cymi przepisami. 
   
   O\'swiadczam r\'ownie{\.z}, {\.z}e przedstawiona praca nie by{\l}a 
   wcze\'sniej przedmiotem procedur zwi¡zanych z uzyskaniem tytu{\l}u zawodowego w wy{\.z}szej uczelni. 
   
   O\'swiadczam ponadto, {\.z}e niniejsza wersja pracy jest identyczna z za{\l}¡czon¡ wersj¡ elektroniczn¡. 
   \vspace{15mm}
   
   Data \hfill Podpis autora (autor\'ow) pracy
    \vspace{4cm}
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\nralbumu#1{\gdef\@nralbumu{#1}}
\def\@nralbumu{???\ClassError{pracamgren}{Brak numeru albumu}\@ehc}
\def\kierunek#1{\gdef\@kierunek{#1}}
\def\@kierunek{???\ClassError{pracamgren}{Nie podano kierunku studiow}\@ehc}
%----zakres nie konieczny-----
\def\zakres#1{\gdef\@zakres{specialization \MakeUppercase{#1}}}
\def\@zakres{}
\def\opiekun#1{\gdef\@opiekun{#1}}
\def\@opiekun{???\ClassError{pracamgren}{Brak danych opiekuna pracy}\@ehc}
\def\keywords#1{\gdef\@keywords{#1}}
\def\@keywords{???\ClassError{pracamgren}{Brak slow kluczowych}\@ehc}
\def\dziedzina#1{\gdef\@dziedzina{#1}}
\def\@dziedzina{???\ClassError{pracamgren}{Brak dziedziny Socrates-Erasmus}\@ehc}
\def\klasyfikacja#1{\gdef\@klasyfikacja{#1}}
\def\@klasyfikacja{???\ClassError{pracamgren}{Brak klasyfikacji tematycznej}\@ehc}
%-------------------nowe------------
\def\tytul#1{\gdef\@tytul{#1}}
\def\@tytul{???\ClassError{pracamgren}{Brak tytulu po polsku}\@ehc}
\def\keywordsang#1{\gdef\@keywordsang{#1}}
\def\@keywordsang{???\ClassError{pracamgren}{Brak slow kluczowych po angielsku}\@ehc}
\def\dziedzinaang#1{\gdef\@dziedzinaang{#1}}
\def\@dziedzinaang{???\ClassError{pracamgren}{Brak dziedziny Socrates-Erasmus po angielsku}\@ehc}
\def\klasyfikacjaang#1{\gdef\@klasyfikacjaang{#1}}
\def\@klasyfikacjaang{???\ClassError{pracamgren}{Brak klasyfikacji tematycznej po angielsku}\@ehc}
\def\streszczenie#1{\gdef\@streszczenie{#1}}
\def\@streszczenie{???\ClassError{pracamgren}{Brak streszczenia}\@ehc}


\renewenvironment{abstract}{%
  \titlepage
   \c@page=3
  \null\nobreak\vfil
  \@beginparpenalty\@lowpenalty
  \begin{center}%
    \bfseries\large Streszczenie
    \@endparpenalty\@M
  \end{center}%
  \@streszczenie\par
  \vspace*{26pt}%
  \begin{center}%
    \bfseries\large S{\l}owa kluczowe
    \@endparpenalty\@M
  \end{center}
  \@keywords\par
  \vspace*{26pt}%
  \begin{center}%
    \bfseries\large Dziedzina pracy (kody wg programu Socrates-Erasmus)
    \@endparpenalty\@M
  \end{center}
   \@dziedzina\par
  \vspace*{26pt}%
  \begin{center}%
    \bfseries\large Klasyfikacja tematyczna
    \@endparpenalty\@M
  \end{center}
  \@klasyfikacja\par
  \vspace*{26pt}%
%-------------------nowosc----------------
  \begin{center}%
    \bfseries\large Tytu{\l} pracy w j¦zyku polskim
    \@endparpenalty\@M
  \end{center}
  \@tytul\par
  \nobreak\vfil\null\endtitlepage

  \titlepage
  \c@page=4
  \null\nobreak\vfil
  \@beginparpenalty\@lowpenalty
  \begin{center}%
    \bfseries\large \abstractname
    \@endparpenalty\@M
  \end{center}}%
{\par
  \vspace*{26pt}%
  \begin{center}%
    \bfseries\large Keywords
    \@endparpenalty\@M
  \end{center}
  \@keywordsang\par
  \vspace*{26pt}%
  \begin{center}%
    \bfseries\large Subject area (codes from Socrates-Erasmus)
    \@endparpenalty\@M
  \end{center}
   \@dziedzinaang\par
  \vspace*{26pt}%
  \begin{center}%
    \bfseries\large Topic classification
    \@endparpenalty\@M
  \end{center}
  \@klasyfikacjaang\par
  \nobreak\vfil\null\endtitlepage\cleardoublepage}


\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
    \hbox{}\thispagestyle{empty}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\renewcommand*\@seccntformat[1]{\csname the#1\endcsname.\enspace}
\def\numberline#1{\hb@xt@\@tempdima{#1.\hfil}}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\mdseries
      \leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
        mu$}\hfill
      \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

\endinput
