from pathlib import Path
import re, json, hashlib, subprocess, shutil, sys

BASE=Path(__file__).resolve().parent
ROOT=BASE.parent
OUT=ROOT/"docs"
STEM="ADS3_Einstein_Scalar_Master_Note"
BUILD=BASE/"tex_build"
BUILD.mkdir(exist_ok=True)
OUT.mkdir(exist_ok=True)
files=[
 "frontmatter.md",
 "physics/physics.md",
 "finite_chapter.md",
 "exact_chapter.md",
 "cluster/cluster.md",
 "semiclassical/chapter8.md",
 "semiclassical/chapter9.md",
 "semiclassical/chapter10.md",
 "discussion.md",
 "physics/physics_appendices.md",
 "finite_appendices.md",
 "exact_appendices.md",
 "cluster/cluster_appendices.md",
 "semiclassical/appendix_sc.md",
 "semiclassical/appendix_st.md",
 "semiclassical/appendix_un.md",
 "verification_appendix.md",
 "bibliography.md",
]

edits=[]
def editorial(text,name):
    if name.startswith("semiclassical/"):
        # Historical references belong in the separate exact source map.
        text=re.sub(r" The source theorem is \[HP,[^\]]+\], with the further audit in \[A3,[^\]]+\]\.", "", text)
        text=re.sub(r" Its sources are \[AS,[^\n]+?\. All coefficient", " All coefficient", text)
        text=re.sub(r" The proof sources are \[DS,[^\n]+?\]\.", "", text)
        def provenance(m):
            edits.append({"part":name, "move_to_claim_map":m[0]})
            return " [Rellich]" if "Rellich" in m[0] else ""
        text=re.sub(r" ?\[(?:AS|DS|A2|A3|HR|HP),[^\]]+\]",provenance,text)
        text=text.replace("the full collision theorem of Chapter 5", "the full collision theorem of Chapter 6")
        text=text.replace("the exact pair coefficient and kernel theorem from Chapters 4–5", "the exact pair coefficient and kernel theorem from Chapters 4 and 6")
        text=text.replace("the exact kernel series from Chapter 5", "the exact kernel series from Chapter 6")
        text=text.replace("the exact-family chapter", "Chapter 6")
        text=text.replace("Rellich's local theorem now applies", "Rellich's local theorem [Rellich] now applies")
    text=re.sub(r"\[@([^\]]+)\]",lambda m: "["+m[1].replace("@","")+"]",text)
    if name=="exact_appendices.md":
        text=text.replace("The finite-field factorization", "The finite-field factorization",1)
        text=text.replace("A prime not dividing", "A prime not dividing",1)
        text=text.replace(r"K_{10,21;\,30,01}", r"K_{10,21;\,30,01}")
    if name=="verification_appendix.md":
        text=text.replace(r"\(\Delta=2,N=4\)",r"\(\Delta=2,N=3\)")
    if name=="cluster/cluster.md":
        text=text.replace("analytic source, Appendix A", "ADS3_Analytic_spectrum_research.md, Appendix A")
        text=text.replace(r"The denominator roots are $0,-1,-2,-2,-3,-3,-4,-5$; the even and odd tails start",
            "The denominator roots, counted with multiplicity, are\n\n"+r"$$0,-1,-2,-2,-3,-3,-4,-5.$$"+"\n\nThe even and odd tails start")
    if name=="cluster/cluster_appendices.md":
        text=text.replace(
            "Since\n"+r"\((-1)^P[y^Q]\mathcal A(y^2)/(1+y)"+
            "\n"+r"=(-1)^{P+Q}[y^Q]\mathcal A(y^2)/(1-y)\),",
            "The identity\n\n"+r"\[(-1)^P[y^Q]\frac{\mathcal A(y^2)}{1+y}"+
            "\n"+r"=(-1)^{P+Q}[y^Q]\frac{\mathcal A(y^2)}{1-y}\]"+"\n\nshows that")
    return text

parts=[]
inputs=[]
for name in files:
    p=BASE/name
    text=p.read_text()
    inputs.append({"part":name,"sha256":hashlib.sha256(p.read_bytes()).hexdigest()})
    text=editorial(text,name)
    parts.append(text.strip())
md="\n\n".join(parts)+"\n"

# Keep Markdown math portable to common research-note readers.
converted=[]
fence=None
for line in md.splitlines():
    s=line.lstrip()
    if s.startswith(("~~~", chr(96)*3)):
        mark=s[:3]
        fence=None if fence==mark else mark if fence is None else fence
    if fence is None:
        line=re.sub(r"(?<!\\)\\\[", lambda m: "$$", line)
        line=re.sub(r"(?<!\\)\\\]", lambda m: "$$", line)
        line=re.sub(r"(?<!\\)\\\(", lambda m: "$", line)
        line=re.sub(r"(?<!\\)\\\)", lambda m: "$", line)
    converted.append(line)
md="\n".join(converted)+"\n"
(OUT/(STEM+".md")).write_text(md)

# The supplied article template remains the basis of the preamble and dimensions.
preamble=(BASE/"template_original/preamble.tex").read_text()
preamble=preamble.replace(r"\usepackage{showlabels}", "% Debug labels disabled in the reader PDF.")
preamble=preamble.replace(r"\usepackage{hyperref}", r"\usepackage[unicode]{hyperref}")
preamble+=r"""

% Additions for this long research note; original A4/11pt dimensions retained.
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{lmodern}
\usepackage{mathrsfs,bm}
\usepackage{booktabs,longtable,array}
\usepackage{microtype,xurl}
\usepackage{fancyvrb,fvextra}
\usepackage{etoolbox}
\usepackage{needspace}
\setcounter{secnumdepth}{0}
\setcounter{tocdepth}{2}
\makeatletter
\renewcommand{\@pnumwidth}{2.6em}
\renewcommand{\@tocrmarg}{3.6em}
\makeatother
\setlength{\emergencystretch}{2em}
\setlength{\LTpre}{6pt}
\setlength{\LTpost}{6pt}
\allowdisplaybreaks[2]
\providecommand{\tightlist}{\setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}
\RecustomVerbatimEnvironment{verbatim}{Verbatim}{breaklines=true,breakanywhere=true,fontsize=\small}
\BeforeBeginEnvironment{longtable}{\small}
\AfterEndEnvironment{longtable}{\normalsize}
\hypersetup{hidelinks,
 pdftitle={Global AdS3 Einstein--Scalar: Complete Finite First-Order Spectra and Their Structures},
 pdfauthor={Research note prepared for koishi},
 bookmarksnumbered=false}
\DeclareUnicodeCharacter{2083}{\ensuremath{_3}}
\DeclareUnicodeCharacter{2081}{\ensuremath{_1}}
\DeclareUnicodeCharacter{2082}{\ensuremath{_2}}
\DeclareUnicodeCharacter{2265}{\ensuremath{\ge}}
\DeclareUnicodeCharacter{2264}{\ensuremath{\le}}
\DeclareUnicodeCharacter{0394}{\ensuremath{\Delta}}
\DeclareUnicodeCharacter{03C6}{\ensuremath{\phi}}
\DeclareUnicodeCharacter{03BB}{\ensuremath{\lambda}}
\DeclareUnicodeCharacter{2192}{\ensuremath{\to}}
\DeclareUnicodeCharacter{2212}{\ensuremath{-}}
\DeclareUnicodeCharacter{221E}{\ensuremath{\infty}}
\DeclareUnicodeCharacter{220E}{\ensuremath{\blacksquare}}
"""

body_md=re.sub(r"^---\n.*?\n---\n","",md, count=1,flags=re.S).strip()
abstract,main=body_md.split("# 1. The problem, conventions, and the route to the answer",1)
abstract=abstract.replace("# Abstract","",1).strip()
main="# 1. The problem, conventions, and the route to the answer"+main
(BUILD/"abstract.md").write_text(abstract+"\n")
(BUILD/"body.md").write_text(main+"\n")
for kind in ["abstract","body"]:
    command=["pandoc",str(BUILD/(kind+".md")),"--from=markdown+tex_math_dollars+tex_math_single_backslash+raw_tex","--to=latex","--no-highlight","--wrap=none","-o",str(BUILD/(kind+".tex"))]
    subprocess.run(command,check=True)
body=(BUILD/"body.tex").read_text()
def display_layout(m):
    block=m[0]
    if r"\tag{B.48}" in block:
        return "\\begingroup\n\\setlength{\\arraycolsep}{3.8pt}\n"+block+"\n\\endgroup"
    if r"\tag{B.2}" in block:
        return "\\begingroup\n\\small\n"+block+"\n\\endgroup"
    return block
body=re.sub(r"\\\[(.*?)\\\]",display_layout,body,flags=re.S)
# Long documents benefit from beginning each top-level thematic section on a new page.
body=re.sub(r"(\\hypertarget\{[^\n]+\}\{%?\n\\section\{)", r"\\clearpage\n\1", body)
# Insert a little headroom around headings; the supplied article hierarchy is retained.
body=body.replace(r"\section{",r"\needspace{5\baselineskip}"+"\n"+r"\section{")
body=body.replace(r"\subsection{",r"\needspace{4\baselineskip}"+"\n"+r"\subsection{")

info=r"""
\title{\textbf{Global AdS$_3$ Einstein--Scalar}\\[5pt]
\large Complete Finite First-Order Spectra and Their Structures}
\author{Research note prepared for koishi}
\date{19 October 2026}
\maketitle
"""
abstract_tex=(BUILD/"abstract.tex").read_text()
tex=preamble+"\n\\begin{document}\n"+info+"\n\\begin{abstract}\n"+abstract_tex+"\n\\end{abstract}\n\\clearpage\n\\tableofcontents\n\\clearpage\n"+body+"\n\\end{document}\n"
(OUT/(STEM+".tex")).write_text(tex)
(BUILD/(STEM+".tex")).write_text(tex)
(BUILD/"preamble.tex").write_text(preamble)
(BUILD/"information.tex").write_text(info)
(BUILD/"body.tex").write_text(body)
(BUILD/"main.tex").write_text(r"\input{preamble}"+"\n"+r"\begin{document}"+"\n"+r"\input{information}"+"\n"+r"\begin{abstract}"+"\n"+r"\input{abstract}"+"\n"+r"\end{abstract}"+"\n"+r"\clearpage\tableofcontents\clearpage"+"\n"+r"\input{body}"+"\n"+r"\end{document}"+"\n")
tags=re.findall(r"\\tag\{([^}]+)\}",md)
dupes=sorted({s for s in tags if tags.count(s)>1})
controls=[{"offset":i,"ordinal":ord(c)} for i,c in enumerate(md) if ord(c)<32 and c not in "\n\t"]
report={"input_parts":inputs,"editorial_reference_moves":edits,
 "markdown_words":len(md.split()),"markdown_lines":len(md.splitlines()),
 "equation_tags":len(tags),"duplicate_equation_tags":dupes,
 "control_bytes":controls,"built_markdown":str(OUT/(STEM+".md")),
 "built_tex":str(OUT/(STEM+".tex"))}
(BASE/"assembly_manifest.json").write_text(json.dumps(report,ensure_ascii=False,indent=2)+"\n")
print(json.dumps({k:v for k,v in report.items() if k not in ("input_parts","editorial_reference_moves")},indent=2))
if controls or dupes: sys.exit("Fix text lint before final compilation")
