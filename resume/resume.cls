\ProvidesClass{resume}[2025-04-01 My Custom Resume Class]

\LoadClass[10pt,letterpaper]{article}   % 字体大小 文本类型
\usepackage[parfill]{parskip}   % 段落无缩进，用间距分隔
\usepackage[left=0.35in,top=0.20in,right=0.35in,bottom=0.10in]{geometry}  % 页面边距
\geometry{paperwidth=21cm}   % A4纸宽度
\geometry{paperheight=29.7cm}   % A4纸高度
\usepackage[letterspace=40]{microtype}   % 字体微调
\usepackage{multirow}   % 多行表格
\usepackage{fontawesome}   % 字体图标
\usepackage{CJKutf8}   % 中文支持
\usepackage[T1]{fontenc}   % 字体编码
\usepackage{array}   % 表格功能
\usepackage{enumitem}
\usepackage{tabularx}   % 表格功能
\usepackage{graphicx}   % 图片功能
\usepackage[absolute,overlay]{textpos}   % 绝对定位
\usepackage{ifthen}   % ifthenelse判断语句
\usepackage{fontawesome}   % 字体图标
\usepackage{xparse}  % 为\RenewDocumentEnvironment命令提供支持
\usepackage{etoolbox}   % 提供命令检查功能
\usepackage[colorlinks=true, urlcolor=black, linkcolor=black]{hyperref}   % 超链接蓝色无边框

\setlength{\parskip}{0.5em}



\newcommand{\name}[1]{\def\@name{#1}}   % 定义命令\name 接受一个参数 赋值给\@name
\newcommand{\@name}{}   % 内部变量\@name 默认值为空
\newcommand{\namesize}{\huge}   % \namesize 命令设置name大小
\newcommand{\nameskip}{\smallskip}

\NewDocumentCommand{\printname}{}{
  \begingroup
    \hfil{{\namesize\bf \@name}}\hfil
    \nameskip\break
  \endgroup
}


\newcommand{\addressSep}{$\diamond$}   % 地址分隔符
\newcommand{\addressskip}{\smallskip}   % 地址间距

\newcommand{\phone}[1]{\def\@phone{#1}}
\newcommand{\@phone}{}
\newcommand{\email}[1]{\def\@email{#1}}
\newcommand{\@email}{}
\newcommand{\link}[1]{\def\@link{#1}}
\newcommand{\@link}{}
\newcommand{\linkname}[1]{\def\@linkname{#1}}
\newcommand{\@linkname}{\@link}

\NewDocumentCommand{\printphone}{}{
  \begingroup
    \let\\\addressSep
    \noindent{\faMobilePhone \hspace{-0.5em} \@phone}
    \hspace{0.5em}
  \endgroup
  \addressskip
}

\NewDocumentCommand{\printemail}{}{
  \begingroup
    \noindent{\href{mailto:\@email}{\faEnvelope \hspace{-0.5em} \@email}}
    \hspace{0.5em}
  \endgroup
  \addressskip
}

\NewDocumentCommand{\printlink}{}{
  \begingroup
    \noindent{\href{\@link}{\faGithub \hspace{-0.5em} \@linkname}}
    \hspace{0.5em}
  \endgroup
  \addressskip
}

\newcommand{\photo}[2][2.5cm]{
  \newcommand*{\@photopath}{#2}
  \newcommand*{\@photowidth}{#1}
}

\newcommand{\sectionskip}{\vspace{1.5em}}

\newlist{educationlist}{itemize}{1}
\setlist[educationlist]{
  label=\raisebox{0.25ex}{\tiny\textendash},
  leftmargin=1.0em,
  itemindent=0.5em,
  labelsep=0.5em,
  nosep,
  before={\vspace{-0.5em}},
  after={\vspace{-0.5em}}
}

\NewDocumentCommand{\begineducationitem}{m m m m}{
  \item
  \textbf{#1} \hfill \textit{#2}
  \par
  \smallskip
  \hspace{0.25em} \textnormal{#3} \hfill \textnormal{#4}
  \begin{itemize}[
    font=\small,
    leftmargin=2.0em,
    label=\raisebox{0.25ex}{\tiny\textendash},
    itemsep=1.0ex,
    parsep=0.2ex,
    topsep=0.2ex,
    partopsep=0pt,
    before={\vspace{0.3em}},
    after={\vspace{0.5em}}
  ]
}

\NewDocumentCommand{\endeducationitem}{}{
  \end{itemize}
}

\NewDocumentEnvironment{EducationSection}{}{
  \sectionskip
  {\large\bfseries\faGraduationCap \hspace{0.1em} \textsc{教育背景}}
  \smallskip
  \hrule
  \vspace{0.5em}
  \begin{educationlist}
}{
  \end{educationlist}
  \vspace*{-1.0em}
}

\newlist{worklist}{itemize}{1}
\setlist[worklist]{
  label=\raisebox{0.25ex}{\tiny\textendash},
  leftmargin=1.0em,
  itemindent=0.5em,
  labelsep=0.5em,
  nosep,
  before={\vspace{-0.5em}},
  after={\vspace{-0.5em}}
}

\NewDocumentCommand{\beginworkitem}{m m m}{
  \item
  \textbf{#1} \hfill \textit{#2}
  \par
  \smallskip
  \hspace{0.25em} \textnormal{#3}
  \begin{itemize}[
    font=\small,
    leftmargin=2.0em,
    label=\raisebox{0.25ex}{\tiny\textendash},
    itemsep=1.0ex,
    parsep=0.2ex,
    topsep=0.2ex,
    partopsep=0pt,
    before={\vspace{0.3em}},
    after={\vspace{0.5em}}
  ]
}

\NewDocumentCommand{\endworkitem}{}{
  \end{itemize}
}

\NewDocumentEnvironment{WorkExperienceSection}{}{
  \sectionskip
  {\large\bfseries\faBriefcase \hspace{0.1em} \textsc{工作经历}}
  \smallskip
  \hrule
  \vspace{0.5em}
  \begin{worklist}
}{
  \end{worklist}
  \vspace*{-1.0em}
}

\newlist{projectlist}{itemize}{1}
\setlist[projectlist]{
  label=\raisebox{0.25ex}{\tiny\textendash},
  leftmargin=1.0em,
  rightmargin=0em,
  itemindent=0.5em,
  labelsep=0.5em,
  nosep,
  before={\vspace{-0.5em}},
  after={\vspace{-0.5em}}
}

\NewDocumentCommand{\beginprojectitem}{m m m m}{
  \item
  \textbf{#1} \hfill \textit{#4}
  \par
  \smallskip
  \hspace{0.5em}
  {\Large\href{#3}\faGithub} \hspace{-0.5em} \href{#3}{#3} \hfill \textnormal{#2}
  \begin{itemize}[
    font=\small,
    leftmargin=2.0em,
    label=\raisebox{0.25ex}{\tiny\textendash},
    itemsep=1.0ex,
    parsep=0.2ex,
    topsep=0.2ex,
    partopsep=0pt,
    before={\vspace{0.3em}},
    after={\vspace{0.5em}}
  ]
}

\NewDocumentCommand{\endprojectitem}{}{
  \end{itemize}
}

\NewDocumentEnvironment{ProjectSection}{}{
  \sectionskip
  {\large\bfseries\faCode \hspace{0.1em} \textsc{个人项目}}
  \smallskip
  \hrule
  \vspace{0.5em}
  \begin{projectlist}
}{
  \end{projectlist}
  \vspace*{-1.0em}
}

\NewDocumentEnvironment{SkillsSection}{m}{
  \sectionskip
  {\large\bfseries\faBookmark \hspace{0.1em} \textsc{技能}}
  \smallskip
  \hrule
  \vspace{0.5em}
  \hspace{1.2em} \noindent\textnormal{#1}
  \par
  \smallskip
  \begin{itemize}[
    font=\small,
    leftmargin=1.5em,
    label=\raisebox{0.25ex}{\tiny\textendash},
    itemsep=1.0ex,
    parsep=0.2ex,
    topsep=0.2ex,
    partopsep=0pt,
    before={\vspace{-0.3em}},
    after={\vspace{-0.3em}}
  ]
}{
  \end{itemize}
  \vspace*{-0.5em}
}

\NewDocumentEnvironment{InterestsSection}{m}{
  \sectionskip
  {\large\bfseries\faHeart \hspace{0.1em} \textsc{个人兴趣}}
  \smallskip
  \hrule
  \vspace{0.5em}
  \noindent\textnormal{#1}
}

\let\ori@document=\document   % 备份原始 \document 命令
\renewcommand{\document}{
  \ori@document
  \pagestyle{empty}   % 隐藏页码

  \begin{CJK}{UTF8}{gbsn}

  \printname

  \hspace{-0.5em}
  \@ifundefined{@phone}{}{\printphone}
  \@ifundefined{@email}{}{\printemail}
  \@ifundefined{@link}{}{\printlink}

  \ifdefined\@photopath
    \begin{textblock*}{7cm}(17.5cm, 0.5cm)
      \includegraphics[width=\@photowidth]{\@photopath}
    \end{textblock*}
  \fi

  \end{CJK}
}
