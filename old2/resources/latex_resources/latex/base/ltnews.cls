% \iffalse meta-comment
%
% Copyright 1993 1994 1995 1996 1997 1998 1999
% The LaTeX3 Project and any individual authors listed elsewhere
% in this file. 
% 
% This file is part of the LaTeX2e system.
% ----------------------------------------
% 
% It may be distributed under the terms of the LaTeX Project Public
% License, as described in lppl.txt in the base LaTeX distribution.
% Either version 1.0 or, at your option, any later version.
% 
% \fi
% Filename: ltnews.cls
% Author: Alan Jeffrey
% Version: 0.14
 
% This is the LaTeX2e document class for the `LaTeX News' information 
% sheet which comes with every LaTeX release.  It may be useful for 
% newsletters, or as an example of how simple newsletters can be set
% with LaTeX.  The changes log is at the end of the file.
 
% Copyright 1994 1995 1996 1997 1999
% Alan Jeffrey and the LaTeX3 project.  
 
% This is a LaTeX2e document class.
 
\NeedsTeXFormat{LaTeX2e}
 
\ProvidesClass{ltnews}[1999/02/23 Standard LaTeX class]

% The configuration file, used for passing options.

\InputIfFileExists{ltnews.cfg}{%
   \ClassInfo{ltnews}{Using local configuration file}%
}{%
   \ClassInfo{ltnews}{No local configuration file}%
}

% The lw35fonts option uses the fonts:
%
%    Adobe Palatino          (main text)
%    Adobe Helvetica Bold    (headings)
%    Courier                 (program listings)
%    Mathptm math italic     (2e logo)
%    Mathptm symbol font     (AMS logo)
%
% The type1fonts option uses the fonts:
% 
%    Adobe Utopia            (main text)
%    URW Grotesk-T Bold      (headings)
%    Lucida Sans typewriter  (program listings)
%    Mathptm math italic     (2e logo)
%    Mathptm symbol font     (AMS logo)

% The Adobe Palatino fonts:

\DeclareFontFamily{OT1}{ppl}{}
\DeclareFontShape{OT1}{ppl}{m}{n}{<-> pplr7t}{}
\DeclareFontShape{OT1}{ppl}{m}{sc}{<-> pplrc7t}{}
\DeclareFontShape{OT1}{ppl}{m}{it}{<-> pplri7t}{}

\DeclareFontFamily{T1}{ppl}{}
\DeclareFontShape{T1}{ppl}{m}{n}{<-> pplr8t}{}
\DeclareFontShape{T1}{ppl}{m}{sc}{<-> pplrc8t}{}
\DeclareFontShape{T1}{ppl}{m}{it}{<-> pplri8t}{}

% The Adobe Helvetica fonts:

\DeclareFontFamily{OT1}{phv}{}
\DeclareFontShape{OT1}{phv}{m}{n}{<-> s*[0.86] phvr7t}{}
\DeclareFontShape{OT1}{phv}{b}{n}{<-> phvb7t}{}

\DeclareFontFamily{T1}{phv}{}
\DeclareFontShape{T1}{phv}{m}{n}{<-> s*[0.86] phvr8t}{}
\DeclareFontShape{T1}{phv}{b}{n}{<-> phvb8t}{}

% The Adobe Courier fonts:

\DeclareFontFamily{OT1}{pcr}{\hyphenchar\font=-1}
\DeclareFontShape{OT1}{pcr}{m}{n}{<-> s*[0.89] pcrr7t}{}
 
\DeclareFontFamily{T1}{pcr}{\hyphenchar\font=-1}
\DeclareFontShape{T1}{pcr}{m}{n}{<-> s*[0.89] pcrr8t}{}
 
% The Utopia fonts:

\DeclareFontFamily{OT1}{put}{}
\DeclareFontShape{OT1}{put}{m}{n}{<-> putr7t}{}
\DeclareFontShape{OT1}{put}{m}{sc}{<-> putrc7t}{}
\DeclareFontShape{OT1}{put}{m}{it}{<-> putri7t}{}

% The URW Grotesk fonts:

\DeclareFontFamily{OT1}{ugq}{}
\DeclareFontShape{OT1}{ugq}{b}{n}{<-> ugqb7t}{}

% The Lucida Sans Typewriter fonts:

\DeclareFontFamily{OT1}{hlct}{\hyphenchar\font=-1}
\DeclareFontShape{OT1}{hlct}{m}{n}{<-> hlct7t}{}

% The mathptm math italic:

\DeclareFontFamily{OML}{ptmcm}{\skewchar\font=127}
\DeclareFontShape{OML}{ptmcm}{m}{it}{<-> zptmcmrm}{}

% The mathptm symbol font:

\DeclareFontFamily{OMS}{pzccm}{}
\DeclareFontShape{OMS}{pzccm}{m}{n}{<-> zpzccmry}{}

% The TeX logo for use with Palatino.

\def\pplTeX{T\kern-.15em\lower.4ex\hbox{E}\kern-.1emX\@}

% The LaTeX logo for use with Palatino.

\DeclareRobustCommand{\pplLaTeX}{L\kern-.3em
        {\setbox0\hbox{T}%
         \vbox to\ht0{\hbox{%
                            \csname S@\f@size\endcsname
                            \fontsize\sf@size\z@
                            \math@fontsfalse\selectfont
                            A}%
                      \vss}%
        }%
        \kern-.07em
        \TeX}

% The TeX logo for use with Utopia.

\def\putTeX{T\kern-.1667em\lower.4ex\hbox{E}\kern-.075emX\@}

% The LaTeX logo for use with Utopia.

\DeclareRobustCommand{\putLaTeX}{L\kern-.2em
        {\setbox0\hbox{T}%
         \vbox to\ht0{\hbox{%
                            \csname S@\f@size\endcsname
                            \fontsize\sf@size\z@
                            \math@fontsfalse\selectfont
                            A}%
                      \vss}%
        }%
        \kern-.05em
        \TeX}

% The TeX logo for use with Helvetica.

\def\phvTeX{T\kern-.1em\lower.4ex\hbox{E}\kern-.05emX\@}

% The LaTeX logo for use with Helvetica.

\DeclareRobustCommand{\phvLaTeX}{L\kern-.3em
        {\calculate@math@sizes
         \setbox0\hbox{T}%
         \vbox to\ht0{\hbox{%
                            \csname S@\f@size\endcsname
                            \fontsize\sf@size\z@
                            \math@fontsfalse\selectfont
                            A}%
                      \vss}%
        }%
        \kern-.05em
        \TeX}

% The TeX logo for use with Grotesk.

\def\ugqTeX{T\kern-.1em\lower.4ex\hbox{E}\kern-.05emX\@}

% The LaTeX logo for use with Grotesk.

\DeclareRobustCommand{\ugqLaTeX}{L\kern-.15em
        {\calculate@math@sizes
         \setbox0\hbox{T}%
         \vbox to\ht0{\hbox{%
                            \csname S@\f@size\endcsname
                            \fontsize\sf@size\z@
                            \math@fontsfalse\selectfont
                            A}%
                      \vss}%
        }%
        \kern-.01em
        \TeX}

% The TeX logo for use with CMSS.

\def\cmssTeX{T\kern-.2em\lower.4ex\hbox{E}\kern-.05emX\@}

% The LaTeX logo for use with CMSS.

\DeclareRobustCommand{\cmssLaTeX}{L\kern-.22em
        {\setbox0\hbox{T}%
         \vbox to\ht0{\hbox{%
                            \csname S@\f@size\endcsname
                            \fontsize\sf@size\z@
                            \math@fontsfalse\selectfont
                            A}%
                      \vss}%
        }%
        \kern-.17em
        \TeX}

% Switch off some of the article options.
 
\DeclareOption{a4paper}{\OptionNotUsed}
\DeclareOption{a5paper}{\OptionNotUsed}
\DeclareOption{b5paper}{\OptionNotUsed}
\DeclareOption{letterpaper}{\OptionNotUsed}
\DeclareOption{legalpaper}{\OptionNotUsed}
\DeclareOption{executivepaper}{\OptionNotUsed}
\DeclareOption{landscape}{\OptionNotUsed}
\DeclareOption{twoside}{\OptionNotUsed}
\DeclareOption{titlepage}{\OptionNotUsed}
\DeclareOption{onecolumn}{\OptionNotUsed}

% The CM fonts

\newcommand{\@titlefont}{\normalfont\Huge}
\newcommand{\@indiciafont}{\normalfont\footnotesize}
\newcommand{\@headingfont}{%
   \large\sffamily\slshape
   \let\LaTeX\cmssLaTeX\let\TeX\cmssTeX
}

% The LW 35 fonts option

\DeclareOption{lw35fonts}{%
   \renewcommand{\rmdefault}{ppl}%
   \renewcommand{\ttdefault}{pcr}%
   \renewcommand{\sfdefault}{phv}%
   \renewcommand{\@titlefont}{%
      \fontsize{50}{60}\fontfamily{phv}\fontseries{b}\selectfont
      \let\LaTeX\phvLaTeX\let\TeX\phvTeX
   }%
   \renewcommand{\@indiciafont}{%
      \fontsize{8}{10}\fontfamily{ppl}\fontshape{it}\selectfont
   }%
   \renewcommand{\@headingfont}{%
      \fontsize{12}{14}\fontfamily{phv}\fontseries{b}\selectfont
      \let\LaTeX\phvLaTeX\let\TeX\phvTeX
   }%
   \DeclareSymbolFont{letters}{OML}{ptmcm}{m}{it}%
   \DeclareSymbolFont{symbols}{OMS}{pzccm}{m}{n}%
   \let\LaTeX\pplLaTeX
   \let\TeX\pplTeX
   \AtEndOfClass{\addtolength\textheight\baselineskip}%
   }

% The type 1 fonts option

\DeclareOption{type1fonts}{%
   \renewcommand{\rmdefault}{put}%
   \renewcommand{\ttdefault}{hlct}%
   \renewcommand{\sfdefault}{ugq}%
   \renewcommand{\@titlefont}{%
      \fontsize{50}{60}\fontfamily{ugq}\fontseries{b}\selectfont
      \let\LaTeX\ugqLaTeX\let\TeX\ugqTeX
   }%
   \renewcommand{\@indiciafont}{%
      \fontsize{8}{10}\fontfamily{put}\fontshape{it}\selectfont
   }%
   \renewcommand{\@headingfont}{%
      \fontsize{12}{14}\fontfamily{ugq}\fontseries{b}\selectfont
      \let\LaTeX\ugqLaTeX\let\TeX\ugqTeX
   }%
   \renewcommand{\verbatim@font}{%
      \fontsize{9}{12}\fontfamily{hlct}\selectfont
   }%
   \DeclareSymbolFont{letters}{OML}{ptmcm}{m}{it}%
   \DeclareSymbolFont{symbols}{OMS}{pzccm}{m}{n}%
   \let\LaTeX\putLaTeX
   \let\TeX\putTeX
}

% The default action for any option is to pass it to the article
% class.
 
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
 
% Execute the options.
 
\ProcessOptions
 
% Load the article class.
 
\LoadClass[twocolumn,oneside]{article}

% The page style.
 
\pagestyle{empty}
\setlength{\parindent}{1em}
% Why \textwidth?
\setlength{\rightskip}{0pt plus \textwidth}
\setlength{\@rightskip}{\rightskip}
\setlength{\parfillskip}{0pt plus 2\textwidth}
\setlength{\columnsep}{2em}

% The text size, which tries to work with both A4 and letter paper
% sizes. 
 
\setlength{\textheight}{230mm}
\setlength{\topmargin}{-10mm}
 
\setlength{\textwidth}{180mm}
\setlength{\oddsidemargin}{-10mm}
 
% \maketitle parameters.
 
\newcommand{\publicationmonth}{\renewcommand{\@month}}
\newcommand{\@month}{\ClassError{ltnews}
   {No \protect\publicationmonth~given}\@eha}
 
\newcommand{\publicationyear}{\renewcommand{\@year}}
\newcommand{\@year}{\ClassError{ltnews}
   {No \protect\publicationyear~given}\@eha}
 
\newcommand{\publicationissue}{\renewcommand{\@issue}}
\newcommand{\@issue}{\ClassError{ltnews}
   {No \protect\publicationissue~given}\@eha}
\newcommand{\issuename}{Issue}
 
\newcommand{\indicia}{\renewcommand{\@indicia}}
\newcommand{\@indicia}{%
   \LaTeXNews, and the \LaTeX{} software,
   are brought to you by the \LaTeX3 Project Team;
   Copyright \@year, all rights reserved.
}
 
\title{\LaTeXNews}
 
% The \maketitle for the LaTeX News.
 
\renewcommand{\maketitle}{%
   \twocolumn[{%
      \parbox[t][7\baselineskip]{\textwidth}{%
         \@titlefont\@title\\[\medskipamount]
         \normalfont\normalsize\issuename~\@issue, \@month~\@year
      }%
   }]%
   \thispagestyle{titlepage}
}
 
\newcommand{\ps@titlepage}{%
   \renewcommand{\@oddhead}{\hfill}%
   \renewcommand{\@evenhead}{\hfill}%
   \renewcommand{\@oddfoot}{\@indiciafont\@indicia\hfill}%
   \renewcommand{\@evenfoot}{\@indiciafont\@indicia\hfill}%
}
 
% Sectioning commands.
 
\renewcommand{\section}{%
   \@startsection
      {section}{1}{\z@}{-1.5ex \@plus -1ex \@minus -.2ex}%
      {1ex \@plus.2ex}{\@headingfont}%
}
 
% No section numbers.
 
\setcounter{secnumdepth}{0}
 
% Set lists tighter, but brought in by 1em (otherwise the first line 
% always looks very wide).  Should this be done with \rightskip?
% It actually does nothing since after this \rightskip is set to
% \@rightskip: I think \rightmargin was intended but should we change
% it now?
 
\renewcommand{\@listI}{%
   \setlength{\leftmargin}{\leftmargini}%
   \setlength{\topsep}{\medskipamount}%
   \setlength{\itemsep}{0pt}%
   \setlength{\listparindent}{1em}%
   \setlength{\rightskip}{1em}%
}
\let \@listi \@listI

% But have a list type with no indentation on either side:
% 
\renewenvironment{description}
               {\list{}{\labelwidth\z@
                   \leftmargin \z@
                   \rightmargin \z@
                   \itemindent-\leftmargin
                   \let\makelabel\descriptionlabel}}
               {\endlist}

\newenvironment{citations}{%
   \list{}{%
      \renewcommand{\makelabel}[1]{\itshape{##1},}%
   }%
}{%
   \endlist
}
 
% Some logos.
 
\newcommand{\NFSS}{NFSS}
\newcommand{\LaTeXNews}{\LaTeX~News}
\newcommand{\AW}{Addison Wesley}
\newcommand{\SLiTeX}{\textsc{Sli}\TeX}
\newcommand{\AmS}{$${\protect\the\textfont2 A}\kern-.1667em\lower
         .5ex\hbox{\protect\the\textfont2 M}\kern
         -.125em{\protect\the\textfont2 S}}
\newcommand{\AmSLaTeX}{\mbox{\AmS-\LaTeX}}
\newcommand{\ctan}{\textsc{CTAN}}
\newcommand{\babel}{\textsf{babel}}

% Needed for 09:

\newcommand\cs[1]{\texttt{\textbackslash#1}}


% Hacking to make <...> produce italics in verbatim.  NB: this can be 
% done more cleanly using the verbatim package.  But the ltnews class
% has  to run on any LaTeX installation, even those without the
% verbatim package.  
 
% Here we extend the font-setting command to include making <> active
% (ie adjusting the input encoding).
\renewcommand \verbatim@font {%
  \normalfont \ttfamily
  \catcode`\<=\active
  \catcode`\>=\active
}
  
% Make active <...> produce italics surrounded by angle brackets
% (used in verbatim and \verb);
% << produces a less-than, and >> produces a greater-than.
 
\begingroup
  \catcode`\<=\active
  \catcode`\>=\active
  \gdef<{\@ifnextchar<\@lt\@meta}
  \gdef>{\@ifnextchar>\@gt\@gtr@err}
  \gdef\@meta#1>{{\reset@font\normalsize\itshape#1\/}}
  \gdef\@lt<{\char`\<}
  \gdef\@gt>{\char`\>}
\endgroup
\def\@gtr@err{%
   \ClassError{ltxguide}{%
      Isolated \protect>%
   }{%
      In this document class, \protect<...\protect>
      is used to indicate a parameter.\MessageBreak
      I've just found a \protect> on its own.
      Perhaps you meant to type \protect>\protect>?
   }%
}
\def\verbatim@nolig@list{\do\`\do\,\do\'\do\-}

% That's it!
 
\endinput
 
% CHANGELOG
%
% 20 May 1994, v0.01: Created file.
%
% 21 May 1994, v0.02: Made <...> produce italics inside verbatim.
%    Added the indicia, \publicationyear, \publicationmonth and 
%    \publicationissue.  Added the citations environment.  Switched off 
%    some of the article class options.
% 
% 21 May 1994, v0.03: Fixed a bug with ragged right.  Fixed a bug
%    which was causing underfull hbox messages.
% 
% 27 May 1994, v0.04: Added SliTeX logo, and proper AMS LaTeX logo.
%    Added angle brackets to <...>.
%
% 31 May 1994, v0.05: Added downloaded PS fonts options.  Removed
%    angle brackets from <...> since these were the last remaining
%    bitmaps!  Added variants of the LaTeX logo.  Added the ltnews.cfg
%    file.  Added the lw35fonts option.
%
% 27 Jul 1994, v0.06: Corrected a typo `\PassOptionToClass' should
%    have been `\PassOptionsToClass'.  Manas Mandal pointed that one
%    out. 
%
% 29 Nov 1994, v0.07: Made <...> only active in verbatim.
% 
% 09 Dec 1995, v0.08: Upper case for Project Team.
% 
% 20 Dec 1995, v0.09: Tidided up the list stuff.
% 
% 03 Jun 1996, v0.10: Changed fonts for lw35 option, for logical and
%    aesthetic reasons.
%
% 06 Jun 1996, v0.11: Corrected grammar in footer.
%
% 10 June 1996 v0.12: Add extra line in lw35fonts option,
%    so 04 and 05 do not run over the page.
%    Make font scaling messages go to log only.
%
% 22 Nov 1997, v0.13: Added new form of description.
%    Found all sorts of strange things involving \rightskip
%    
% 23 Feb 1999, v0.14: Added  some logos etc.
%    


% BUGS
%
% Switching between logos like this is a mess.
%
% The last column should be set flush bottom.
 