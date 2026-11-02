段冰 Reese 中文简历 V22 源码包

本版仅恢复原版中英文字体，保留 V21 全部正文、照片和一页 A4 排版。

文件
- main.tex：可编辑 LaTeX 源码
- reese.png：原版照片，未经修改
- fonts/gbsn00lp.ttf：原 gbsn 中文字体的官方 TrueType 版本，未经修改
- fonts/ARPHICPL.txt 等：原字体许可证与来源说明，必须随字体保留

字体核实
原 main.tex 使用 CJK UTF8 gbsn 与 lmodern，原 PDF 内嵌 gbsnu*、LMRoman10-Regular/Bold/Italic。
中文恢复为 AR PL SungtiL GB（gbsn00lp.ttf，PostScript 名 BousungEG-Light-GB），不是 Noto 或近似替代字体。
英文恢复为 Latin Modern Roman 10 的常规/粗体/斜体。中文粗体使用原字形的排版加粗，不另换黑体。
本版继续使用 XeLaTeX，原版使用 CJK/Type1 字体；保留原字体家族，不声称二进制字体封装或逐像素排版相同。

编译
1. 安装 TeX Live 或 MacTeX，包含 XeLaTeX、Latin Modern（lm）和 ucharclasses。
2. 保留 .tex、reese.png 与 fonts/ 文件夹的相对路径。
3. 在 resume/ 目录运行：
   mkdir -p .build
   xelatex -no-shell-escape -interaction=nonstopmode -halt-on-error -output-directory=.build main.tex
   xelatex -no-shell-escape -interaction=nonstopmode -halt-on-error -output-directory=.build main.tex
   cp .build/main.pdf main.pdf

仓库入口与下载路径保持为 resume/main.tex、resume/main.pdf；.build/ 仅用于临时编译产物。
源码沿用 V22：正文显式设置为 11pt / 15pt；article 的 10pt 类选项不改变正文大小。

另需常规 fontspec、geometry、enumitem、graphicx、fix-cm、hyperref 包。
无需安装 Noto 字体，无需自定义 resume.cls，无需 xeCJK。
一页 A4，正文 11pt、行距 15pt，左右页边距 17mm。
项目标题和 RFC 编号保留可点击链接。

字体来源与许可
官方包说明：https://ctan.org/pkg/arphic-ttf
下载包：https://ctan.math.illinois.edu/fonts/arphic-ttf.zip
字体文件在包内路径：arphic-ttf/gbsn00lp.ttf
ARPHIC PUBLIC LICENSE 第 1 条允许未经修改的字体再分发，须保留原许可证。
Latin Modern 由用户的 TeX 发行版提供，本包不重复分发。
