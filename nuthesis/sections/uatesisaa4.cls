%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%
%% Este es al archivo `uatesisAA.cls', creado el <Junio 2002> por
%% Andres Angel (j-angel@uniandes.edu.co) en Santafe de Bogota, Colombia
%%
%% Esta clase es usada para crear documentos de tesis en la Universidad de los Andes,
%% esta inspirada en el formato creado por Francisco Armando Vargas 'uatesis.cls'. 

%% Modificaciones:

%% La portada de la tesis y añade una página de derechos, en el caso que no se deseen ceder los derechos.
%% Ademas incluye una version distinta de pagina de resumen y de notacion. 

%% La bibliografia se maneja a traves de arhivos externos, 

%% Se agrego soporte para indice,lista de figuras,lista de tablas,lista de simbolos

%% Se arreglan errores del formato uatesis, por ejemplo si no se incluye la tabla de contenido 
%% la numeracion y el formato de los encabezados no funcionara, tambien se quito el formato 
%%                      'estandar'          que no servia para nada.


%% Este formato trata de ajustarse a las normas establecidas en el "REGLAMENTO DE PROYECTOS 
%% EN LA FACULTAD DE INGENIERIA". UNIVERSIDAD DE LOS ANDES. FACULTAD DE INGENIERIA. BOGOTA, D.E.,
%% ENERO 1981". 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%   ***********************************
%   *         IDENTIFICACION          *
%   ***********************************
%

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{uatesisaa}[1996/01/01 v1.0 Clase de Tesis para UniAndes]

%   ***********************************
%   *         CODIGO INICIAL          *
%   ***********************************
%

%   ***********************************
%   *     DECLARACION DE OPCIONES     *
%   ***********************************
%
\DeclareOption{legalpaper}
    {\ClassWarning{uatesis}{El tamano \CurrentOption no es aplicable}}
\DeclareOption{executivepaper}
    {\ClassWarning{uatesis}{El tamano \CurrentOption no es aplicable}}
\DeclareOption{a4paper}
    {\ClassWarning{uatesis}{El tamano \CurrentOption no es aplicable}}
\DeclareOption{a5paper}
    {\ClassWarning{uatesis}{El tamano \CurrentOption no es aplicable}}
\DeclareOption{b5paper}
    {\ClassWarning{uatesis}{El tamano \CurrentOption no es aplicable}}
\DeclareOption{landscape}
    {\ClassWarning{uatesis}{La orientacion \CurrentOption no es aplicable}}
\DeclareOption{twocolumn}
    {\ClassWarning{uatesis}{La opcion \CurrentOption no es aplicable}}
\DeclareOption{notitlepage}
    {\ClassWarning{uatesis}{La opcion \CurrentOption no es aplicable}}
\DeclareOption{titlepage}
    {\ClassWarning{uatesis}{La opcion \CurrentOption no es aplicable}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}


%   ***********************************
%   *      EJECUCION DE OPCIONES      *
%   ***********************************
%

\ProcessOptions

%   ***********************************
%   *       LECTURA DE PAQUETES       *
%   ***********************************
%
\LoadClass{report}
%\RequirePackage[T1]{fontenc}
%\RequirePackage[latin1]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage[pdftex]{graphics,color,graphicx}
\RequirePackage{latexsym}
\RequirePackage{amsmath,amsthm}
\RequirePackage{amsfonts}
\RequirePackage{epsfig}
\RequirePackage{amssymb}
\RequirePackage[pdftex]{hyperref}

%   ***********************************
%   *        CODIGO PRINCIPAL         *
%   ***********************************
%

% ---Establecer los parametros por defecto para las fuentes del texto----------
\renewcommand{\encodingdefault}{T1}

% ---Establecer los parametros de apariencia de la pagina----------------------
\setlength{\voffset}{-1in}
\setlength{\topmargin}{15mm}
\setlength{\headheight}{2mm}
\setlength{\headsep}{1cm}
\setlength{\textheight}{22.6cm}
\setlength{\footskip}{0pt}
\setlength{\hoffset}{-1in}
\setlength{\oddsidemargin}{37mm}
\setlength{\evensidemargin}{24mm}
\setlength{\textwidth}{14.6cm}
\setlength{\marginparsep}{0pt}
\setlength{\marginparwidth}{0pt}

% ---Establecer comandos para espaciado sencillo, sencillo y medio, y doble----
\def\espaciosencillo{\def\baselinestretch{1.0}\large\normalsize}
\ifnum \@ptsize = 0
    \def\baselinestretch{1.67}\large\normalsize
    \def\espaciosencilloymedio{\def\baselinestretch{1.25}\large\normalsize}
    \def\espaciodoble{\def\baselinestretch{1.67}\large\normalsize}
\else
    \ifnum \@ptsize = 1
        \def\baselinestretch{1.62}\large\normalsize
        \def\espaciosencilloymedio{\def\baselinestretch{1.21}\large\normalsize}
        \def\espaciodoble{\def\baselinestretch{1.62}\large\normalsize}
    \else
        \def\baselinestretch{1.66}\large\normalsize
        \def\espaciosencilloymedio{\def\baselinestretch{1.24}\large\normalsize}
        \def\espaciodoble{\def\baselinestretch{1.66}\large\normalsize}
    \fi
\fi

% Comandos automaticos, portada, copyright, 
% abstract, agradeciminetos, tablas de contenido, figuras, tablas...

\newenvironment{frontmatter}
{

\setcounter{page}{1}\renewcommand{\thepage}{\roman{page}}}
{\newpage\renewcommand{\thepage}{\arabic{page}}\setcounter{page}{1}

}

\newcommand{\begincmd}{

\portadaexterior 

%\makecopyrightpage 

%\cesionderechos 

\makeabstract 

\begin{frontmatter} 
\begin{NoHyper}
\makeacknowledgements   

\makededication    

\tableofcontents 

\listoffigures   

\listoftables  
\end{NoHyper}
%\listofsymbols  

%\espaciosencilloymedio 
\espaciodoble

%\makeconv 

\end{frontmatter} 

\ps@myheadings        
  
}

% ---Establecer los datos que se declaran en el documento------

\def\referencia#1{\gdef\@referencia{#1}}
\def\titulo#1{\gdef\@titulo{#1}}
\def\autorA#1{\gdef\@autorA{#1}}
\def\autorB#1{\gdef\@autorB{#1}}
\def\autorC#1{\gdef\@autorC{#1}}
\def\grado#1{\gdef\@grado{#1}}
\def\entidadauspiciadora#1{\gdef\@entidadauspiciadora{#1}}
\def\facultad#1{\gdef\@facultad{#1}}
\def\departamento#1{\gdef\@departamento{#1}}
\def\fechaA#1{\gdef\@fechaA{#1}}
\def\fechaM#1{\gdef\@fechaM{#1}}
\def\profesorasesor#1{\gdef\@profesorasesor{#1}}
\def\jefedepartamento#1{\gdef\@jefedepartamento{#1}}
\def\dedication#1{\gdef\@dedication{#1}}
\def\department#1{\gdef\@department{#1}}
\def\degree#1{\gdef\@degree{#1}}

\long\def\@abstract{\@latex@error{No \noexpand\abstract given}\@ehc}
\long\def\abstract#1{\gdef\@abstract{#1}}
\long\def\acknowledgements#1{\gdef\@acknowledgements{#1}}
\long\def\simbolos#1{\gdef\@simbolos{#1}}
\long\def\conv#1{\gdef\@conv{#1}}

% ---Establecer el encabezado estandar de todas las paginas--------------------
\def\ps@myheadings{%\normalsize%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\rmfamily \thepage\hfil}%
    \def\@oddhead{\S \thesection  \hfil \rmfamily \lowercase{\thepage}}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble}

\def\ps@myheadingsA{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\rmfamily \thepage\hfil}%
    \def\@oddhead{ \hfil \rmfamily }%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble}

\def\ps@plain{\let\@mkboth\markboth
\def\@oddfoot{}\def\@evenfoot{}             % no feet
\def\@oddhead{\hbox{}\hfil\rmfamily\lowercase{\thepage}}        % heading (right)
\def\@evenhead{\rmfamily\thepage\hfil\hbox{}}}      % heading (left)
    
% ---Comando para generar la portada exterior----------------------------------
\newcommand{\portadaexterior}{{
\newpage
  \thispagestyle{empty}
%  \sc
  \vspace*{0in}
  \begin{center}
  \espaciosencillo
   \@titulo
  \end{center}
  \vspace{.5in}
  \begin{center}
\MakeLowercase{by}
  \end{center}
  \vspace{.1in}
  \begin{center}
      \@autorA \par
      \@autorB \par
      \@autorC \par
  \end{center}
  \vspace{.3in}
  \begin{center}
    A DISSERTATION
  \end{center}
  \vspace{.3in}
  \begin{center}
   Presented to the Faculty of \\
The Graduate College at the University of Nebraska \\
In Partial Fulfillment of Requirements \\
For the Degree of Doctor of Philosophy
  \end{center}
  \vspace{.6in}
  \begin{center}
      Mayor: Physics and Astronomy
  \end{center}
  \vspace{.5in}
  \begin{center}
      Under the Supervision of Professor  \@profesorasesor \par
  \end{center}
  \vspace{.7in}
  \begin{center}
    \espaciosencillo
    Lincoln, Nebraska
   \end{center}
  \vspace{.4in}
  \begin{center}
    July, \@fechaA
  \end{center}
  \clearpage
  }}


% ---Comando para generar la pagina de derechos----------------------------------
\newcommand*{\makecopyrightpage}{
  \newpage
  \thispagestyle{empty}
  \vspace*{0in}
  \begin{center}
    \copyright\ Copyright by \@autorA, \@fechaA. \\
    Todos los derechos reservados
  \end{center}
  \clearpage}

% ---Comando para generar el Abstract----------------------------------
\newcommand*{\makeabstract}{
  \newpage
  \pagestyle{empty}
  \thispagestyle{empty}
  \setcounter{page}{1}
%  \vspace*{1in}
  \begin{center}
NEW ICOSAHEDRAL BORON CARBIDE SEMICONDUCTORS \\
Elena M. Echeverria Mora, Ph.D.\\
University of Nebraska, 2017\\
%      \huge \textbf{Abstract} \par
%  \vspace{.5in}
%\@title \par
%\vspace{.1in}
%by \par
%\vspace{.1in}
%\@autorA \par
%\@grado \space in \@departmento \par
%\vspace{.1in}
%Universidad de los Andes \par
%\vspace{.1in}
%Professor \@profesorasesor, Supervisor
%\vspace{.5in}
\end{center}

%\vspace{.1in}
\@abstract 
\clearpage  
}


% ---Comando para generar los agradecimientos----------------------------------
\def\makeacknowledgements{
  \newpage
  \thispagestyle{plain}
  \ifx\@acknowledgements\undefined
  \else
    \vspace*{2cm}
    \begin{center}
      \normalsize \textbf{Acknowledgements} \par
    \end{center}
    \vspace*{2cm}
    \@acknowledgements
    \clearpage
  \fi
\clearpage
}
  
% ---Comando para generar la dedicatoria----------------------------------
\def\makededication{
\newpage
\thispagestyle{plain}
  \ifx\@dedication\undefined
  \else
    \vspace*{1.5in}
    \begin{flushright}
      \@dedication
    \end{flushright}
    \clearpage
  \fi
}

%\def\makeconv{
%\newpage
%\thispagestyle{plain}
%\chapter*{Notaci\'on y Convenciones}
%\begin{itemize}
%\@conv
%\end{itemize}
%\clearpage
%}


% ---Comando para generar la tabla de contenido----------------------------------
\setcounter{tocdepth}{2}

\def\tableofcontents{\@restonecolfalse
  \if@twocolumn\@restonecoltrue\onecolumn\fi
  \chapter*{\contentsname
        \@mkboth{\uppercase{\contentsname}}{\uppercase{\contentsname}}}%
  {\espaciosencillo\@starttoc{toc}}\if@restonecol\twocolumn\fi}

\def\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\def\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\def\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\def\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\def\l@subparagraph{\@dottedtocline{5}{12em}{6em}}

% ---Comando para generar la tabla de figuras----------------------------------

\def\listoffigures{
  \newpage
  \thispagestyle{plain}
  \chapter*{\listfigurename\@mkboth{\uppercase{\listfigurename}}%
{\uppercase{\listfigurename}}}
   \addcontentsline{toc}{chapter}{\protect \listfigurename}
   {\espaciosencillo\@starttoc{lof}}
   \clearpage
   }

\def\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}

% ---Comando para generar la tabla de Tablas----------------------------------

\def\listoftables{
  \thispagestyle{plain}
  \newpage
  \chapter*{\listtablename\@mkboth{\uppercase{\listtablename}}%
{\uppercase{\listtablename}}}
   \addcontentsline{toc}{chapter}{\protect \listtablename}
   {\espaciosencillo\@starttoc{lot}}
   \clearpage
   }

\let\l@table\l@figure

% ---Comando para generar la tabla de Simbolos----------------------------------

\newcommand{\listsymbols}{Lista de Simbolos}

\def\listofsymbols{
  \newpage
  \setlength{\labelwidth}{40mm}%
  \setlength{\labelsep}{0pt}%
  \setlength{\leftmargin}{\labelwidth}
  \chapter*{\listsymbols\@mkboth{\uppercase{\listsymbols}}%
{\uppercase{\listsymbols}}}
   \addcontentsline{toc}{chapter}{\protect \listsymbols}
    \espaciosencillo
    \@simbolos
    \@starttoc{sym}  
   \clearpage
}

\newcommand{\simbolo}[2]{\addcontentsline{sym}{simbolo}{\protect #1, #2}}
\newcommand{\l@simbolo}[2]{\par #1 {\itshape #2}}

\setcounter{topnumber}{2}
\def\topfraction{.7}
\setcounter{bottomnumber}{1}
\def\bottomfraction{.3}
\setcounter{totalnumber}{3}
\def\textfraction{.2}
\def\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\def\dbltopfraction{.7}
\def\dblfloatpagefraction{.5}


% FIGURE

%\newcounter{figure}[chapter]
\def\thefigure{\thechapter.\@arabic\c@figure}

\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\def\figure{\@float{figure}}
\let\endfigure\end@float
\@namedef{figure*}{\@dblfloat{figure}}
\@namedef{endfigure*}{\end@dblfloat}

% TABLE
%
%\newcounter{table}[chapter]
\def\thetable{\thechapter.\@arabic\c@table}

\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\def\table{\@float{table}}
\let\endtable\end@float
\@namedef{table*}{\@dblfloat{table}}
\@namedef{endtable*}{\end@dblfloat}



% ---Comando para generar la cesion de derechos--------------------------------
\newcommand{\cesionderechos}{%
    \espaciosencillo
    \if@openright\cleardoublepage\else\clearpage\fi
    \thispagestyle{empty}
    \noindent Yo, \MakeUppercase\@autorA, manifiesto en este documento mi
    voluntad de ceder a la Universidad de Los Andes los derechos patrimoniales,
    consagrados en el artículo 72 de la Ley 23 de 1982, del trabajo final de
    grado* denominado \MakeUppercase\@titulo, producto de mi actividad
    académica, para optar por el título de \MakeUppercase\@grado\ en la
    Universidad de Los Andes. La Universidad de Los Andes, entidad académica sin
    ánimo de lucro, queda por lo tanto facultada para ejercer plenamente los
    derechos anteriormente cedidos en su actividad ordinaria de investigación,
    docencia y publicación. La cesión otorgada se ajusta a lo que establece la
    Ley 23 de 1982. Con todo, en mi condición de autor me reservo los derechos
    morales de la obra antes citada con arreglo al artículo 30 de la Ley 23 de
    1982. En concordancia suscribo este documento en el momento mismo que hago
    entrega del trabajo final a la Biblioteca General de la Universidad de Los
    Andes.\par
    \vspace{5\baselineskip}
    \noindent\rule{5cm}{0.5mm}\hfill\rule{4cm}{0.5mm}\hfill\rule{3cm}{0.5mm}\par
    \noindent\makebox[5cm][l]{NOMBRE}\hfill\makebox[4cm][l]{FIRMA}\hfill%
      \makebox[3cm][l]{CÉDULA}\par
    \vspace{3\baselineskip}
    \noindent Santafé de Bogotá, D.C., \today\par
    \vspace{\baselineskip}
    \noindent\rule{6cm}{0.2mm}\par
    * ``Los derechos de autor recaen sobre las obras científicas, literarias y
    artísticas en las cuales se comprenden las creaciones del espíritu en el
    campo cíentífico, literario y artístico, cualquiera que sea el modo o forma
    de expresión y cualquiera que sea su destinación, tales como: los libros,
    folletos y otros escritos; las conferencias, alocuciones, sermones y otras
    obras de la misma naturaleza; las obras dramáticas o dramático-musicales;
    las obras coreográficas y las pantomimas; las composiciones musicales con
    letra o sin ella; las obras cinematográficas, a las cuales se asimilan las
    obras expresadas por procedimiento análogo a la cinematografía, inclusive
    los videogramas, las obras de dibujo, pintura, arquitectura, escultura,
    grabado, litografía; las obras fotográficas a las cuales se asimilan las
    expresas por procedimiento análogo a la fotografía; las obras de artes
    plásticas; las ilustraciones, mapas, planos, croquis y obras plásticas
    relativas a la geografía, a la topografía, a la arquitectura o a las
    ciencias, en fin, toda producción del dominio científico, literario o
    artístico que pueda reproducirse o definirse por cualquier forma de
    impresión o de reproducción, por fonografía, radiotelefonía o cualquier otro
    medio conocido o por conocer''. (artículo 2 de la Ley 23 de 1982)}

% ---Comando para generar los encabezados de las paginas "especiales"----------
\newcommand{\encabezado}[1]{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \pagestyle{myheadings}
    {\noindent\normalsize\bfseries #1}
    \espaciosencillo
    \vspace{3\baselineskip}}

% ---Comando para generar la hoja de observaciones del departamento------------
\newcommand{\nombreobservaciones}{Observaciones del Departamento}
\newcommand{\observacionesdepartamento}{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \addcontentsline{toc}{\protect chapter}{Observaciones del departamento}
    \mbox{}}


%    ****************************************
%    *             BIBLIOGRAPHY             *
%    ****************************************
%
% The thebibliography environment executes the following commands:
%
%  \def\newblock{\hskip .11em plus .33em minus .07em} --
%      Defines the `closed' format, where the blocks (major units of
%      information) of an entry run together.
%
%  \sloppy  -- Used because it's rather hard to do line breaks in
%      bibliographies,
%
%  \sfcode`\.=1000\relax --
%      Causes a `.' (period) not toproduce an end-of-sentence space.

%% RmS 91/10/27 [ .. ] replaced by \@biblabel{ .. }
%% RmS 91/11/13: Changed counter enumi to enumiv,
%%               as it says in the comment in latex.tex
%% RmS 92/01/14: Set \p@enumiv to {} and \theenumiv to \arabic{enumiv}
%%               to get correct references
\def\thebibliography#1{\chapter*{\bibname\@mkboth
  {\uppercase{\bibname}}{\uppercase{\bibname}}}
  \addcontentsline{toc}{chapter}{\bibname}
  \list{\@biblabel{\arabic{enumiv}}}{\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \def\theenumiv{\arabic{enumiv}}}%
    \def\newblock{\hskip .11em plus.33em minus.07em}%
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=\@m}


%% 91/08/26 FMI & RmS: introduced warning instead of error

\def\endthebibliography{%
  \def\@noitemerr{\@warning{Empty `thebibliography' environment}}%
  \endlist}


 \def\@biblabel#1{[#1]\hfill}  % Produces the label for a \bibitem[...]
                                % command.
 \def\@cite#1{[#1]}            % Produces the output of the \cite
                                % command.






% ---Redefinicion de capitulo, seccion, subseccion, subsubseccion, etc---------
      
\setcounter{secnumdepth}{4}
\renewcommand{\@seccntformat}[1]{%
              \mbox{\csname the#1\endcsname}\hspace{5mm}}
   \renewcommand{\chapter}{\@startsection{chapter}{0}%
        {0mm}{-2\baselineskip}{2\baselineskip}%
        {\normalfont\normalsize\bfseries}}

    \renewcommand{\section}{\@startsection{section}{1}%
        {0mm}{-\baselineskip}{\baselineskip}%
        {\normalfont\normalsize\bfseries}}

    \renewcommand{\subsection}{\@startsection{subsection}{2}%
        {0mm}{-0.75\baselineskip}{0.75\baselineskip}%
        {\normalfont\normalsize\bfseries}}

    \renewcommand{\subsubsection}{\@startsection{subsubsection}{3}%
        {0mm}{-0.5\baselineskip}{0.5\baselineskip}%
        {\normalfont\normalsize\bfseries}}

    \renewcommand{\paragraph}{\@startsection{paragraph}{4}%
        {0mm}{-0.25\baselineskip}{0.25\baselineskip}%
        {\normalfont\normalsize\bfseries}}

    \renewcommand{\subparagraph}{\@startsection{subparagraph}{5}%
        {0mm}{-0.1\baselineskip}{0.1\baselineskip}%
        {\normalfont\normalsize\bfseries}}

\def\chapter{\clearpage      % Starts new page.
   \thispagestyle{myheadings}%    % Page style of chapter page is 'plain'
 
  \global\@topnum\z@        % Prevents figures from going
                            % at top of page.
%   \@afterindenttrue         % Suppresses indent in first paragraph.
   \secdef\@chapter\@schapter}   % Change to \@afterindentfase for no indent.

\def\l@chapter#1#2{\addpenalty{-\@highpenalty}%
   \vskip 1.0em plus\p@   % space above chapter line
   \@tempdima 1.5em       % width of box holding chapter number
   \begingroup
     \parindent \z@ \rightskip \@pnumwidth
     \parfillskip -\@pnumwidth
     \bfseries                  % Boldface.
     \leavevmode          % TeX command to enter horizontal mode.
      \advance\leftskip\@tempdima  %% added 5 Feb 88 to conform to
      \hskip -\leftskip            %% 25 Jan 88 change to \numberline
     #1\nobreak\hfil \nobreak\hbox to\@pnumwidth{\hss #2}\par
%     \penalty\@highpenalty %% added 24 May 89, suggested by J. Leichter
   \endgroup}



\pagenumbering{arabic}  
\AtBeginDocument{\begincmd}
\endinput

% ---Fin del codigo principal--------------------------------------------------


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Fin del archivo 'uatesisAA.cls'.
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
