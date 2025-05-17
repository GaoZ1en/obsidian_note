从中文文本文件生成词云图
- 目标：
	- 读取一个包含中文文本的文件，对文本进行分词，过滤掉停用词，统计词频，并生成一个可视化展示词语重要性的词云图
	- 使用 matplotlib 在窗口中显示图片
	- 将词云图保存为图片文件（如 .png）
- 所需库： 安装 jieba 和 wordcloud 库。同时，matplotlib 库对于显示图片很方便，也建议安装
	- pip install jieba wordcloud matplotlib
- 中文文本文件： 创建一个名为 chinese_text.txt 的文本文件，并在其中输入一些中文段落。
		- 你可以复制一些新闻、文章片段、歌词等。例如：
　　```
　　自然语言处理（NLP）是人工智能领域的一个重要方向。NLP 研究如何让计算机理解和处理人类语言。中文分词是 NLP 中的一个基础步骤，因为中文没有像英文那样的空格来分隔词语。停用词过滤也是文本预处理的重要环节，去除那些频繁出现但意义不大的词语，如“的”、“是”、“在”等。词云图是一种直观展示文本词频的方式，词语的大小代表其出现的频率或重要性。通过学习jieba和wordcloud，我们可以轻松实现这些功能。
　　```
	- 中文停用词文件： 获取一个中文停用词列表文件，命名为 stopwords.txt，并放在与你的 Python 脚本相同的目录下。
	- 你可以参考我们之前提到的，去 jieba 的 GitHub 仓库或其他资源网站下载一个常用的中文停用词列表。文件内容应该是一行一个停用词。例如：
　　```
　　的
　　是
　　在
　　了
　　和
　　我们
　　一个
　　进行
　　... （很多其他停用词）
　　```
	- 一个中文字体文件： wordcloud 生成词云图时，如果文本包含中文字符，需要指定一个中文字体文件（.ttf 或 .ttc 格式），否则中文字符将无法正确显示，变成小方块。你的电脑系统里应该有中文字体，比如 Windows 系统下常用的有 simhei.ttf (黑体), simsun.ttc (宋体), msyh.ttc (微软雅黑) 等，macOS 或 Linux 下也有类似字体。你需要找到其中一个字体文件的完整路径。
- 比较下面两种方法
	- 使用 collections.Counter 对有效词语列表进行词频统计。这将得到一个字典，键是词语，值是它出现的次数。
		- 统计一段文本中，每一个有效词语（通常是分词并去掉停用词后）出现的实际次数。它给你的是一个完整的“排行榜”，告诉你每个词到底出现了多少次。
	- jieba.analyse.extract_tags(content, topK=topK)
		- 从一段文本中提取出最具有代表性、最能体现文本主题的“关键词”。它不仅仅是简单统计词频，它通常是基于 TF-IDF (词频-逆文档频率) 或 TextRank 等算法来计算词语的“重要性权重”，然后返回权重最高的 TopK 个词。TF-IDF 考虑了一个词在当前文档中的频率（TF）以及它在整个语料库中出现的普遍程度（IDF），从而判断它是不是这个文档的特色词。

Some books result from a breakthrough. This book results from an impasse: it would have
not been conceived if there were overwhelming evidence – or agreement within the broader
physics community – pinpointing a given theory, framework or model of quantum gravity.
No obviously correct description of nature in this domain has emerged. What is to be made
of this situation?
I emphasise the involvement of the broader physics community, in addition to those
specialists dedicating their lives to the problem of quantum gravity, in order to keep the
larger picture in view. After all, the signatures of gravitational effects in simple quantum
systems have to be observed in laboratories, and the signatures of quantum effects in the
large-scale structure of the universe have to be observed in the sky. Indeed, whatever theory
of quantum gravity one devises, gravity must combine with all the other forces of nature
in a way that is consistent with all known observations made at any scale between the
Planck length and the entire observable universe, a total difference of roughly 61 orders of
magnitude. The whole physical picture must hang together.
Ultimately, a theory of quantum gravity must be able to deliver such an all-encompassing
framework that also incorporates the interaction between gravity and matter. Not surpris-
ingly, the problem of quantum gravity is considered by many to be intrinsically intertwined
with the problem of unification of all forces.
Any examination into this territory must recognise that even the basic concepts are up
for debate. Different people have different notions of what is meant by a theory of quantum
gravity. Perhaps it is not yet clear whether there should be a theory of quantum gravity
at all.
Take the notion of theory itself. Is a theory a mathematical structure with an associated
set of fundamental principles capable of specifying dynamical equations that describe the
universe as well as predict the values of all constants of nature? Or do we understand it
as a framework within which we can construct multiple models, one of which – say, the
standard model of particle physics – will describe the universe? That is, are there many
(billions of?) consistent cosmological histories, which we must narrow down (at least) to
those compatible with human existence? Or, finally, do we understand a theory as a method
that we can use, for instance, to quantise a given classical theory of gravity?
Whether we view a theory as a set of fundamental principles, framework, model, method
or more generally as an approach,1 there is no table-top experiment or single cosmological
observation that decisively confirms that gravity is a quantum field. The problem of finding
a theory of quantum gravity partly rests on the lack of experimental set-ups able to probe
deviations from standard (established) physics, as well as on the lack of precision within
those set-ups.
Could gravity just be an effectively classical phenomenon? An entropic force caused
by some underlying unknown microscopic constituents? Is spacetime itself an emergent
structure at long distances and low energies? Questions such as these represent part of the
debate around the quest for a theory of quantum gravity. The purpose of this introduction
is to try to outline this debate – the set of open questions, related problems and different
points of view – as well as to lay out and clarify the justified and unjustified criticisms
directed towards those points of view.
The method of the remainder of the book is to present interviews with a select group
of theoretical physicists and mathematicians who work on quantum gravity (and related
subjects) about the quantum gravity debate, the state of the field, the impact of their own
discoveries and the discoveries of others, their motivations to pursue these questions, and
the benefit such research can bring to the scientific community and society as a whole.
Originally, I intended to provide a faithful and representative overview of the approaches
in this area. This method would have led to an overwhelming majority of interviews within
string theory, however. (A rough analysis of papers appearing between 2018 and 2020 on
arXiv.org, either related to a given approach to quantum gravity or inspired by it, suggests
that 85–90% of this research output is due to string theory.) Although my background is
in string theory and I spend a considerable amount of time working in this area – as well
as applying some of its lessons and tools to the contexts of hydrodynamics, astrophysical
black holes, quantum matter, biomembranes and soft matter – I see value in exploring other
approaches. Thus, I have chosen to give more room to a diversity of ideas at the expense of
going into much depth in certain areas of string theory.
Nevertheless, I want to express clearly and respectfully that I do not think that the
opinions presented here on this subject are necessarily more valuable than those of many
of the theorists I did not interview, including the many string theorists who were excluded.
Moreover, I emphasise that the interviewees’ positions and attitudes are not always
widely shared across communities and do not always constitute the opinion of the majority.
For instance, many think that the theories that they work on are not final theories but rather
ways of providing clues about, and insights into, more fundamental formulations – an
opinion not always shared by others in their field.
In my selection of interviewees, I focused mostly on senior theorists who were respon-
sible for much foundational work. I also opted for the diversity of ideas and opinions
within each of the approaches, including several theorists who may not brand themselves
as proponents of any (theoretical) approach but who, I believe, have unique and interesting
points of view on aspects of quantum gravity. Some approaches to quantum gravity are not
directly covered in this book due to lack of space and time, but those approaches constitute
smaller, or equally small, research programmes compared with the approaches that are
directly covered here. I believe the editorial choices made here faithfully represent the
debate and open up an array of useful questions.
Given the inherent nature of the subject matter, most of the discussions in the inter-
views are meant for specialists or experts, although some are suitable for readers with a
general physics education and some are appropriate for those with only a popular science
background.
The remainder of this introduction is concerned with summarising key aspects of the
debate about quantum gravity and the issues motivating my choice of questions.
Since the advent of quantum mechanics and general relativity in the early 1900s, theo-
rists have wondered about the quantum nature of gravity and the effect of gravity on quan-
tum mechanics. In fact, how these two pillars of physics (quantum mechanics and general
relativity) work together in theory and in practice has been the source of heated debate
from their introduction, in particular between Niels Bohr and Albert Einstein. Already at
that time, it became clear that the successful combination of the two theories, even if just
by means of thought experiments, was crucial for the development of each theory, includ-
ing understanding them as well-defined and consistent parts of physics. In the decades
to follow, many theorists sought to combine quantum mechanics with special relativity,
culminating in the framework of quantum field theory. This framework led to a stream
of striking accomplishments, starting with the understanding of the electromagnetic and
weak interactions and ending with the strong interactions, ultimately leading to the standard
model of particle physics.
At different stages in this process, several theorists such as Richard Feynman and, in par-
ticular, Bryce DeWitt in the 1970s took the newly developed toolkit of quantum field theory
(for instance, perturbation theory, renormalisation techniques and the gauge principle) and
applied it to gravitational interactions. It became clear at that point that gravity, treating
the spacetime metric as a fundamental field, even at the perturbative level, is not akin to
all other interactions for which such methods and techniques were ideal. In particular, it
turned out that gravity (without any other additional source of matter) is perturbatively non-
renormalisable. This implies that as we take further and further perturbative corrections
to graviton interaction processes, an infinite number of counterterms with an associated
infinite number of free parameters need to be considered in order to obtain finite results.
Gravity at increasingly high energies thus becomes, inevitably, non-predictive, and physics,
as we know it, is lost.
Despite the lack of experimental confirmation, the opinion of the overwhelming majority
of researchers, substantiated by multiple arguments that appeal to consistency, such as
causality or puzzles related to the existence of black holes (for instance, singularities, infor-
mation loss and thermodynamic properties), is that gravity must be inherently quantum, at
least in a perturbative regime. This well-founded expectation has led to several ideas and
suggestions about how to overcome the problem of non-renormalisability, all of which have
been pursued to a certain (variable) extent, for instance:
• New symmetries. Gravity, as it stands, can be useful below a given energy scale but
something else must complete gravity in the ultraviolet (high-energy) regime that
renders it finite. This can entail that another mathematical language, framework or
approach substitutes (or completes) gravitational interactions in the ultraviolet. Examples
often involve new symmetry principles (for instance, conformal symmetry in various
shades [worldsheet, spacetime, local, global, etc.], supersymmetry, E10 symmetry, non-
commutative geometry, spacetime anisotropy and many others) or some topological
completion.
• Additional matter fields. Even if gravity by itself is not predictive, it may become
predictive when coupled to specific matter content (for instance, axions, scalars, super-
symmetric particles and conformal matter, among others), which can contain a finite or
infinite reservoir of particles or quantum states at high energies.
• Other fundamental variables. Taking the metric field as the fundamental field may not
be the correct modus operandi. There are other formulations of gravity (for instance, Ple-
banski, Regge and higher-gauge formulations) and other potential fundamental variables
(for instance, vielbeins and Ashtekar variables) or more general notions of geometry (for
instance, non-commutative geometry) which, when appropriately quantised, may not lead
to predictive physics in one way or another.
• Modified infrared dynamics. Although general relativity appears to be the correct
description in the infrared (low-energy) regime, there exist various modifications of
general relativity at low energies that are within current bounds set by observations
(for instance, versions of higher-derivative theories and versions of modified gravity
theories). Thus, perhaps the starting point of the quantisation procedure should be one of
these infrared modifications and not conventional general relativity.
• Non-perturbative renormalisability. Gravity is perturbatively non-renormalisable,
but it may be non-perturbatively renormalisable. Therefore, the formulation of the
theory should be non-perturbative from the very beginning. Concrete ideas include the
“magical” cancellation of divergences of all physical processes when summing over all
perturbative orders; the theory suggests a minimal length scale in the configuration space
which the path integral is integrating over; or there is an ultraviolet non-Gaussian fixed
point characterised by a finite number of coefficients that determines all other coefficients
arising from the process of renormalisation.
• Spacetime discreteness. It is a mistake to assume that the gravitational metric, and hence
spacetime, is a continuum. Instead, spacetime is inherently discrete and thus a cut-off (of
the order of the Planck length) is introduced in the theory by hand (for instance, discrete
Regge calculus). A continuum spacetime should emerge at long distances. The discrete
nature of spacetime may cure the ultraviolet and short-distance divergences.
• Modifications of quantum mechanics. The rules of quantum mechanics and the rules
of general relativity may not be compatible with each other. A new mathematical frame-
work is needed to modify the principles of quantum mechanics so as to accommodate
both. Examples include modifications of quantum mechanics (for instance, deterministic
versions) and different interpretations (for instance, hidden variable theories and Roger
Penrose’s gravitational objective reduction).
• New formulations of quantum field theory. The same type of logic as in the previ-
ous point applies to quantum field theory itself. Perhaps there are new formulations of
quantum field theory (QFT) or gauge theory (for instance, axiomatic QFT, algebraic
QFT and non-geometric formulations) that will more easily accommodate dynamical,
and arbitrary, background geometries.
• Dualities. Gravity should not be directly quantised. Instead, it should emerge from some
other (finite) fundamental theory. This is the case, for instance, when there are (holo-
graphic) dualities between theories without gravity and theories with gravity, implying
that the very issue of non-renormalisability can be circumvented (for instance, the holo-
graphic ideas of Gerard ’t Hooft and Leonard Susskind).
It should be said, first of all, that this list does not exhaust all possibilities for how to
deal with some of the problems of quantum gravity and, second, that each of these ideas
is not necessarily independent. Concrete proposals approaching the problem may in fact
involve a combination of such mechanisms and ideas. I find that a rough classification of
approaches is more useful in terms of what aspects of the above list they incorporate (or aim
at incorporating) than standard classifications in terms of the type of quantisation procedure
(for instance, canonical, covariant and path integral) and whether they are discrete, lattice-
type approaches, or continuum. The reason for this preference is that there are several
approaches where it is not clear exactly what they contain and some which can include
several of these properties (for example, multiple quantisation procedures or lattice and
continuum methods).
Based on limited knowledge, it is still useful to attempt to characterise the approaches
directly covered within this book with the goal of aiding the reader in understanding some
of the interviews. These approaches are as follows.
String theory. Introduces new symmetries such as supersymmetry; an infinite tower of
massive particles which in standard versions amounts to the existence of extra dimen-
sions; non-perturbative formulations; new geometric structures and variables; new QFT
formulations and dualities such as the anti–de Sitter/conformal field theory (AdS/CFT)
correspondence. As a matter of fact, it may include specific realisations of all the ideas in
the above list in particular regimes, though not all these realisations are known at this point.
Corners of string theory are formulated via a path integral (or covariant) quantisation of a
two-dimensional worldsheet theory. It is incorrect, however, to claim that this is the general
definition of the theory. Gravity is not quantised directly but emerges from the theory via
interactions of closed strings at low energies. Usually included in string theory are other
ideas such as E10 symmetry and twistor theory, though some think these ideas stand on
their own. The former relates to maximal supersymmetric and supergravity theories but the
exact theory that exhibits such symmetry is not yet known; it includes matter fields and
may provide the required ultraviolet completion.
Loop quantum gravity (LQG). Introduces new variables for dealing with gravity
directly; is based on a non-perturbative formulation that suggests a minimal length scale in
configuration space; provides examples of new QFTs, in particular topological QFTs with
defects. The standard formulation is based on canonical quantisation of general relativity
theory in four spacetime dimensions, which has two versions (one which requires the
addition of matter) directly formulated in the continuum. Spin foam models are usually
considered to be part of LQG, though the relationship between the two in four dimensions
has not been fully established. Many view spin foam models as a path integral lattice
approach within which a continuum limit (critical point) needs to be found after sending
the lattice spacing to zero. In that limit, it is expected that some form of canonical LQG
will be found. Others, however, view spin foam models as an inherently discrete approach.
Asymptotic safety. Also known as quantum Einstein gravity (QEG), requires the exis-
tence of an ultraviolet fixed point; uses renormalisation group techniques and can generate
infrared modifications of gravity. In its most explored formulation, it takes the metric as
the carrier field and a class of effective action functionals (truncations) that depends on
diffeomorphism-invariant operators. It employs a continuum description. In principle, it can
consider other action functionals, other carrier fields, other symmetries and matter fields but
does not seem to require it.
Causal dynamical triangulations. A lattice approach which, in its usual formulation,
takes general relativity with an additional positive cosmological constant as the bare action
in the path integral; introduces new variables (piecewise flat manifolds) and a set of gluing
rules that constrain configuration space in the path integral; its ultraviolet finiteness also
rests on the possibility of finding an ultraviolet critical point and a continuum limit; it may
generate infrared modifications.
Causal sets. Introduces a discrete length scale and takes causality (understood as time
order) as a fundamental principle. Classically, it is based on a path integral whose bare
action reduces to classical general relativity in some appropriate limit. It is not yet clear
what the quantum theory is. It has suggested the study of some nonlocal QFTs and the
need for a different interpretation of quantum mechanics.
Non-commutative geometry approach. Generalises the notion of Riemannian geometry
to non-commutative geometry in terms of a non-commutative algebra, a Dirac operator and
a Hilbert space; gravity, as well as matter, appears to emerge from it using (mostly) the
algebra as an input. The theory is at first quantised level, and it is not yet clear how to
perform second quantisation and address issues of renormalisability.
Hoˇrava-Lifshitz gravity. Introduces spacetime anisotropy as a symmetry (that is, a
Lifshitz-type symmetry in the ultraviolet that reduces to Lorentz symmetry in the infrared);
there are several versions of the theory, some of which include additional matter fields;
it can provide infrared modifications of gravity depending on how the coupling constants
flow toward the infrared. There are some indications that the theory is renormalisable. It is
not yet known exactly how to quantise the theory.
Other approaches. Other ideas include emergent gravity, which takes the holographic
principle seriously and suggests different interpretations of infrared physics. In contrast,
conformal gravity considers canonical gravity with conformal constraints while crystalline
gravity introduces matter (defects) with a finite number of degrees of freedom that can be
glued as to form spacetime. These latter three approaches remain, up to date, at the classical
level.
Two- and three-dimensional models. Several theorists have worked on two- and three-
dimensional toy models of quantum gravity within which it is possible to apply many
quantisation procedures and study their effects. These models do not contain propagating
degrees of freedom and so cannot describe the real world. However, many think that these
models can give useful insights for tackling the four-dimensional (or higher) case. As such,
these models are discussed throughout the interviews.
What do we expect from a theory of quantum gravity? A crude list of demands and
expectations, which different theorists value in different degrees, includes:
• Ultraviolet and infrared finiteness
• A controlled classical limit
• Internal consistency and compatibility with standard physics
• Unification of all interactions
• A perturbative expansion around given backgrounds
• A non-perturbative definition of the theory
• A first-principle derivation of the dynamics
• A background-independent formulation (potentially with suitable boundary conditions)
• A solution space that includes our universe
• An understanding of the underlying fundamental degrees of freedom
• Well-defined physical observables
• The ability to perform computations, say, of the S-matrix
• A finite number of external parameters as input
• Suggestions of phenomenology2 and dialogue with experiment
• Potential experimental tests and compatibility with observations
• Insights into neighbouring fields
• A microscopic understanding of black hole entropy
• A solution to the black hole information loss paradox
• A resolution of the big bang singularity and black hole singularities
• The theory incorporates the holographic principle
• The theory is outside the swampland.
The failure to meet these expectations leads to potential criticisms. I turned these
demands and expectations into questions directed at the interviewees:
• Effective versus fundamental. Is the theory an effective theory or a fundamental theory
in certain cases or regimes? Is the theory pointing towards structures and principles that
should then be used to construct the underlying theory?
• Perturbative definition and the existence of our universe. Is the theory perturbatively
defined around any given background? Does the theory contain some background that
describes our world? How many viable solutions are there?
• Ability to compute. Regardless of the properties the theory has, what can we actually
compute? Scattering processes? The size of the universe? The shape of a star? The
spectrum of some operator?
• Ability to predict. How many parameters need to be fixed by external input for the theory
to be predictive? A few? Many? An infinite number?
• Phenomenology. Does the theory provide suggestive or concrete examples of phe-
nomenology (for instance, particle physics models and cosmological models)?
These types of questions can be asked of any of the approaches to quantum gravity, and
I did ask them in all cases in which the theory was sufficiently developed to give a proper
answer.
There are also more specific criticisms of each of the approaches as well as specific
questions that can highlight both their shortcomings and their advantages. Below are a few
examples of such specific questions that I posed to the interviewees:
• Questions about string theory. What is string theory, that is, how do you define it? Is
there any hope of finding a controlled cosmological solution that describes our universe?
Is there hope of finding a non-perturbative definition of string theory in cosmological
backgrounds? Is our universe governed by one of the supersymmetric string theories in
ten dimensions or has the string theory that describes our universe not yet been found?
Is it reasonable to think that anthropic principles should fix the vacuum we live in?
What evidence is there for swampland conjectures? Is there any experiment that will
verify string theory? Is there actually an ongoing dialogue between string theory and
experiment? How well has string theory reproduced the Bekenstein-Hawking entropy
of black holes from a microscopic calculation? Has it been proven that string theory is
ultraviolet and infrared finite? If we do live in ten dimensions (measured abstractly in
terms of field content), why are four of them large and six of them small? Are there
holographic dualities for flat spacetime and cosmological spacetime? If the world is
supersymmetric but we do not see superparticles at current accelerator scales, how and
why did supersymmetry break?
• Questions about the AdS/CFT correspondence. Is AdS/CFT a non-perturbative and
background-independent formulation? Isn’t it just a conjecture or is there substantial
proof? How well defined is the dictionary between bulk and boundary theories? Can
we recover all bulk physics from the boundary theory? Is it a case of holography or
photography? What is the quantum geometry in the bulk? Can you solve the black hole
information paradox? What does an observer who falls into the black hole experience?
What does physics look like at the Planck scale in the bulk? What happens if you scatter
particles in the bulk at Planckian energies? Has it led to any predictions about strongly
coupled systems? Are there concrete observables? Can you extract flat spacetime physics
from it? Does it provide an example of emergent space and emergent time?
• Questions about LQG. Does LQG have a classical limit? Is the dynamics of LQG
derived from first principles? LQG in the Hamiltonian formalism has two different ver-
sions (one which does not require matter and another that does), so are they equivalent?
How can you formulate the theory directly in the continuum? Since LQG has a very
large (infinite?) number of free parameters due to quantisation ambiguities, how can this
be fixed in order for the theory to be predictive? Has the Hamiltonian constraint been
solved? Is the standard Hamiltonian constraint correct? Has it been shown that LQG is
generally covariant? How does LQG resolve the ultraviolet and infrared divergences? Is
there any test of LQG? What are the LQG models for black hole entropy and why are the
logarithmic corrections to the entropy in disagreement with semiclassical analyses? How
faithful are the results and predictions of loop quantum cosmology? How does it resolve
the big bang singularity?
• Questions about spin foam models. Spin foam models are portrayed as being part of
LQG, but has this connection been formally established? Are spin foam models lattice
approaches? Has a continuum limit been shown to exist? If there is a continuum limit,
will it lead to the same theory as that of standard canonical LQG? What can you compute
with it? How do you resolve quantisation ambiguities? Does it rely on asymptotic safety?
• Questions about QEG. Is there evidence that QEG has ultraviolet fixed points? What is
the dimensionality of the ultraviolet critical surface? What would happen if you added
more higher-curvature corrections? Is it possible to add any kind of matter and still find
ultraviolet fixed points? Is there any suggestive phenomenology for particle physics and
cosmological models? What is the infrared theory? And what is the picture that we find
in the ultraviolet, that is, what is the theory at the Planck scale? Can we approach the
renormalisation group flow trajectory near the Planck scale? Could you take different
symmetries to begin with and still find fixed points? What is the relation between QEG
and LQG and CDT?
• Questions about CDT. Is CDT generally covariant? Will the preferred foliation intro-
duced in CDT lead to symmetry violations in the continuum limit? Has the existence
of a continuum limit been demonstrated? How reliable are the numerical simulations
near the fixed points? Is the continuum limit closer to general relativity or to Hoˇrava-
Lifshitz gravity? How big are the universes that can be simulated in a computer? Why is
the starting action just the Einstein-Hilbert action with a positive cosmological constant?
How does CDT justify the topological restrictions that are imposed in the path integral?
Can CDT include matter, black holes, etc.? What can be computed with CDT? What is
the theory at the Planck scale?
• Questions about causal sets. How are causal sets defined? Does every spacetime have an
associated causal set? How to determine which spacetime corresponds to a given causal
set? What is the classical causal set theory? What evidence do we have for spacetime
discreteness? How to grow a causal set? Is there any hope of finding the quantum theory?
Have causal sets been used to predict the smallness of the cosmological constant? How
can it make such predictions without being a quantum theory? Are there suggestions for
phenomenology?
• Questions about a non-commutative geometry approach. How can we intuitively
understand non-commutative geometry? Why should this be a better starting point for
physics than Riemann geometry? What kind of input was needed in order to get the
standard model coupled to gravity? Can you predict the magnitude of all masses and the
strength of all interactions? How far are we from a quantum theory? What mathematical
structures are needed in order to quantise the theory?
• Questions about Hoˇrava-Lifshitz gravity. Has it been proven that Hoˇrava-Lifshitz grav-
ity is a renormalisable theory? How should one quantise the theory? Does it predict
infrared modifications of general relativity compatible with observations? What is the
concept of a black hole within Hoˇrava-Lifshitz gravity? Should we understand it as being
embedded in a larger theory such as string theory? What kind of phenomenology does it
predict? What are the consequences of coupling the theory to matter?
The interviews also touch upon many other subjects, including interpretations of quan-
tum mechanics, multiple cosmological models, particle physics models, the role of the
QCD axion, the role of anyons, renormalisation, conformal symmetry breaking, black
holes, two- and three-dimensional quantum gravity toy models, possible quantum gravity
experiments, the large hadron collider (LHC), crystalline gravity, emergent gravity, E10
theories, conformal gravity, twistor theory, fluid dynamics, skyrmions, gauge theories and
thermalisation processes. Indeed, there is no shortage of vital questions in physics.
By presenting these interviews I intend to address the concerns, doubts, misrepresen-
tations and the misinformation in this critical area of study with the hope that it will lead
to clarifications, dialogue and progress in the future. Overall my sense is that the many
theoretical developments relating to quantum gravity discussed within these pages are as
fascinating as they are in need of experimental testing.


# Canonical Quantization in the Covariant Phase Space Formalism

## Foundations of Covariant Phase Space

The covariant phase space formalism provides an elegant approach to field theory that maintains manifest covariance throughout. Unlike traditional canonical formulations which require a 3+1 splitting of spacetime, this approach works directly with the space of solutions to the field equations.

### Key Elements

1. **Phase Space Definition**: The covariant phase space $$\mathcal{S}$$ is the space of solutions to the Euler-Lagrange equations derived from an action $$S[\phi]$$.

2. **Symplectic Structure**: The fundamental object is the symplectic current $$\omega^\mu$$, which can be defined as:

$$\omega^\mu[\phi; \delta_1\phi, \delta_2\phi] = \delta_1\phi \frac{\partial}{\partial(\partial_\mu\phi)}\left(\frac{\partial \mathcal{L}}{\partial(\partial_\nu\phi)}\right)\delta_2\phi - (1 \leftrightarrow 2)$$

3. **Symplectic Form**: The pre-symplectic form is obtained by integrating over a Cauchy surface $$\Sigma$$:

$$\Omega[\phi; \delta_1\phi, \delta_2\phi] = \int_\Sigma \omega^\mu[\phi; \delta_1\phi, \delta_2\phi] d\Sigma_\mu$$

## Canonical Quantization Procedure

### Step 1: Identify the Observable Algebra

Start by identifying observables $$F[\phi]$$ as functionals on the solution space. The Poisson bracket is defined via the symplectic form:

$$\{F,G\}_{PB} = \Omega[\phi; X_F, X_G]$$

where $$X_F$$ is the Hamiltonian vector field corresponding to $$F$$.

### Step 2: Promote to Operators

The canonical quantization prescription:

1. Replace observables $$F[\phi]$$ with operators $$\hat{F}$$ on a Hilbert space
2. Replace Poisson brackets with commutators according to:

$$\{F,G\}_{PB} \rightarrow \frac{1}{i\hbar}[\hat{F},\hat{G}]$$

### Step 3: Implement Covariant Commutation Relations

For field theories, the fundamental commutation relations are:

$$[\hat{\phi}(x), \hat{\pi}(y)] = i\hbar\delta^{(d)}(x-y)$$

where $$\pi(x)$$ is identified with the functional derivative of the action with respect to $$\dot{\phi}(x)$$. In the covariant formalism, these are expressed through the symplectic structure.

## Practical Implementation

For a scalar field with Lagrangian $$\mathcal{L} = \frac{1}{2}\partial_\mu\phi\partial^\mu\phi - V(\phi)$$:

1. Derive the symplectic current:
   $$\omega^\mu[\phi; \delta_1\phi, \delta_2\phi] = \delta_1\phi\partial^\mu\delta_2\phi - \delta_2\phi\partial^\mu\delta_1\phi$$

2. The corresponding pre-symplectic form is:
   $$\Omega[\phi; \delta_1\phi, \delta_2\phi] = \int_\Sigma (\delta_1\phi\partial_\mu\delta_2\phi - \delta_2\phi\partial_\mu\delta_1\phi)n^\mu d\Sigma$$
   where $$n^\mu$$ is the normal to $$\Sigma$$.

3. Quantization proceeds by promoting the field configurations to operators with commutation relations derived from this symplectic structure.

## Advanced Considerations

- **Gauge Theories**: In the presence of gauge symmetries, the pre-symplectic form has degenerate directions. The physical phase space is obtained via symplectic reduction.

- **Constraint Systems**: The covariant phase space naturally handles constraints by working directly with the solution space.

- **Path Integral Relation**: The quantum theory can alternatively be formulated via path integrals over the covariant phase space ^cite{Witten1986}.

The beauty of this approach lies in maintaining manifest covariance throughout the quantization procedure, avoiding the artificial breaking of spacetime symmetry that occurs in the standard canonical approach.


# Canonical Quantization and Path Integral in Covariant Phase Space

## The Path Integral Perspective

The path integral formulation offers a complementary approach to quantization that naturally connects with the covariant phase space formalism. This connection reveals deeper insights into quantum field theory while maintaining manifest covariance.

### From Symplectic Structure to Path Integral

The transition from the canonical framework to path integrals in the covariant phase space context follows a well-defined procedure:

1. **Phase Space Path Integral**: The quantum amplitude is expressed as:

$$Z = \int \mathcal{D}\phi \, e^{iS[\phi]/\hbar}$$

where the integration is formally over all field configurations (not just solutions). However, when properly analyzed, this can be reformulated in terms of the covariant phase space.

2. **Measure from Symplectic Structure**: The path integral measure is intimately related to the symplectic form $$\Omega$$:

$$\mathcal{D}\phi \propto \sqrt{\det(\Omega)} \, \prod_x d\phi(x)$$

This reveals how the symplectic geometry of the covariant phase space directly influences quantum amplitudes.

## Key Connections and Insights

### 1. Stationary Phase Approximation

In the semiclassical ($$\hbar \to 0$$) limit, the path integral is dominated by contributions near classical solutions—precisely the points of the covariant phase space $$\mathcal{S}$$:

$$Z \approx \sum_{\phi_{\text{cl}} \in \mathcal{S}} e^{iS[\phi_{\text{cl}}]/\hbar} \int \mathcal{D}(\delta\phi) \, e^{i\delta^2S[\phi_{\text{cl}};\delta\phi,\delta\phi]/2\hbar}$$

The fluctuations $$\delta\phi$$ around classical solutions can be understood as vectors in the tangent space to $$\mathcal{S}$$, with their dynamics governed by the symplectic structure.

### 2. Propagators and Green's Functions

The covariant propagator $G(x,y)$ emerges naturally from the path integral:

$$G(x,y) = \int \mathcal{D}\phi \, \phi(x)\phi(y) e^{iS[\phi]/\hbar} \big/ Z$$

In the covariant phase space formulation, this propagator can be expressed in terms of the symplectic structure, maintaining manifest covariance.

### 3. Gauge Theories and BRST

For gauge theories, the path integral requires special handling due to gauge redundancy. The Batalin-Vilkovisky (BV) formalism provides a powerful framework that connects with the covariant phase space approach:

$$Z_{\text{gauge}} = \int \mathcal{D}\Phi \, e^{i(S[\Phi] + \Psi[\Phi])/\hbar}$$

where $$\Phi$$ includes fields, ghosts, and antifields, and $$\Psi$$ is the gauge-fixing fermion. The antibracket structure in BV formalism is directly related to the extended symplectic structure on the covariant phase space ^cite{HenneauxTeitelboim1992}.

## Modern Applications

### Quantum Gravity

In approaches to quantum gravity, the covariant phase space provides advantages:

$$Z_{\text{grav}} = \int \mathcal{D}g \, e^{iS_{\text{EH}}[g]/\hbar}$$

The diffeomorphism invariance is maintained manifestly, and the resulting measure derives from the symplectic structure on the space of metrics.

### String Theory and Topological Field Theories

The path integral for string theory:

$$Z_{\text{string}} = \int \mathcal{D}X \mathcal{D}g \, e^{-S[X,g]/\alpha'}$$

The moduli space of Riemann surfaces emerges from the covariant phase space of the worldsheet theory.

## Mathematical Formulation

For a more precise formulation, the path integral can be expressed as an integral over the covariant phase space $$\mathcal{S}$$ with appropriate measure:

$$Z = \int_{\mathcal{S}} \omega_{\mathcal{S}} \, e^{iS/\hbar}$$

where $$\omega_{\mathcal{S}}$$ is the symplectic volume form derived from the symplectic structure $$\Omega$$.

### Feynman's i𝜀 Prescription

The i𝜀 prescription for defining propagators has a natural interpretation in the covariant phase space framework as a deformation of the symplectic structure:

$$\Omega_{\varepsilon} = \Omega + i\varepsilon\omega_{\text{KG}}$$

where $$\omega_{\text{KG}}$$ is related to the Klein-Gordon inner product ^cite{Witten2021}.

## Recent Developments

Recent work by Witten and others has emphasized the deep connection between the covariant phase space formalism and path integrals in the context of quantum gravity and holography (arXiv:2104.04433). The Fukaya category structure that emerges relates to the deformation quantization of the covariant phase space.

This unification provides powerful tools for addressing difficult problems in quantum field theory while maintaining the manifest covariance that makes the covariant phase space approach so appealing in the first place.

# Path Integral Quantization in the Covariant Phase Space Formalism

## Fundamental Framework

Path integral quantization within the covariant phase space formalism provides a manifestly covariant approach to quantum field theory that elegantly preserves spacetime symmetries. Here's a systematic procedure:

### Step 1: Define the Space of Histories and Symplectic Structure

Begin with the space of all field histories $$\mathcal{H}$$ (not just solutions). The covariant phase space $$\mathcal{S}$$ is the subspace of $$\mathcal{H}$$ satisfying the equations of motion. The variational bicomplex formalism yields the pre-symplectic current:

$$\omega^\mu[\phi; \delta_1\phi, \delta_2\phi] = \delta_1 \left(\frac{\partial \mathcal{L}}{\partial(\partial_\mu\phi)}\right) \delta_2\phi - \delta_2 \left(\frac{\partial \mathcal{L}}{\partial(\partial_\mu\phi)}\right) \delta_1\phi$$

### Step 2: Construct the Path Integral Measure

The key insight is that the path integral measure is determined by the symplectic structure:

$$\mathcal{D}\phi = \prod_x d\phi(x) \sqrt{\det\Omega}$$

where $$\Omega$$ is the pre-symplectic form integrated over a Cauchy surface:

$$\Omega[\phi; \delta_1\phi, \delta_2\phi] = \int_\Sigma \omega^\mu[\phi; \delta_1\phi, \delta_2\phi] d\Sigma_\mu$$

### Step 3: Express the Quantum Amplitude

The path integral is:

$$Z = \int_{\mathcal{H}} \mathcal{D}\phi \, e^{iS[\phi]/\hbar}$$

This can be reformulated by implementing the equations of motion as a delta functional:

$$Z = \int_{\mathcal{H}} \mathcal{D}\phi \, \delta[\text{EOM}(\phi)] \, \det\left(\frac{\delta\text{EOM}}{\delta\phi}\right) e^{iS[\phi]/\hbar}$$

Which effectively reduces to an integral over the covariant phase space $$\mathcal{S}$$ with the appropriate measure.

## Practical Implementation

### For a Simple Scalar Field

For a scalar field theory with $$\mathcal{L} = \frac{1}{2}\partial_\mu\phi\partial^\mu\phi - V(\phi)$$:

1. The symplectic current is: 
   $$\omega^\mu = \delta_1\phi \partial^\mu\delta_2\phi - \delta_2\phi \partial^\mu\delta_1\phi$$

2. The path integral becomes:
   $$Z = \int \mathcal{D}\phi \, e^{i\int d^4x [\frac{1}{2}\partial_\mu\phi\partial^\mu\phi - V(\phi)]/\hbar}$$

3. For practical calculations, we decompose fields around classical solutions:
   $$\phi = \phi_{\text{cl}} + \delta\phi$$
   where $$\phi_{\text{cl}} \in \mathcal{S}$$ and integrate over fluctuations $$\delta\phi$$.

### For Gauge Theories

For gauge theories, the symplectic form has degenerate directions corresponding to gauge transformations. Two approaches exist:

#### 1. Reduced Phase Space Approach

Perform gauge fixing directly at the level of the symplectic structure:

$$Z = \int_{\mathcal{S}/\mathcal{G}} \omega_{\text{red}} \, e^{iS/\hbar}$$

where $$\mathcal{S}/\mathcal{G}$$ is the physical phase space after modding out gauge transformations, and $$\omega_{\text{red}}$$ is the reduced symplectic form.

#### 2. BRST/BV Approach

More elegant is the Batalin-Vilkovisky formalism:

$$Z = \int \mathcal{D}\Phi \, e^{i(S[\Phi] + (\Psi, S))/\hbar}$$

where $$\Phi$$ includes fields, ghosts, and antifields, $$\Psi$$ is the gauge-fixing fermion, and $$(\cdot,\cdot)$$ is the antibracket structure derived from the extended symplectic structure ^cite{HenneauxTeitelboim1992}.

## Advanced Techniques

### Effective Action

The effective action emerges naturally through the covariant phase space lens:

$$\Gamma[\bar{\phi}] = S[\phi_{\text{cl}}] + \frac{i\hbar}{2}\text{Tr}\ln\left(\frac{\delta^2 S}{\delta\phi\delta\phi}\right) + \mathcal{O}(\hbar^2)$$

where $$\phi_{\text{cl}}$$ is the classical solution with $$\langle\phi\rangle = \bar{\phi}$$.

### Correlation Functions

Correlation functions are computed as:

$$\langle\phi(x_1)\phi(x_2)...\phi(x_n)\rangle = \int_{\mathcal{S}} \omega_{\mathcal{S}} \, \phi(x_1)\phi(x_2)...\phi(x_n) e^{iS/\hbar} \bigg/ Z$$

The propagator arises from the inverse of the symplectic form's components.

## Modern Applications

### Quantum Gravity and Edge Modes

Recent developments (arXiv:1910.14588, Harlow & Wu) use the covariant phase space path integral to address edge modes and entanglement in quantum gravity:

$$Z_{\text{grav}} = \int \mathcal{D}g \, e^{iS_{\text{EH}}[g]/\hbar}$$

The correct inclusion of boundary terms in the symplectic structure is crucial for holographic applications and black hole thermodynamics.

### Topological Field Theories

For topological theories where the action is diffeomorphism-invariant:

$$Z_{\text{top}} = \int_{\mathcal{S}} \omega_{\mathcal{S}}$$

The path integral reduces to a finite-dimensional integral over the moduli space of solutions.

## Mathematical Foundation

The geometrical picture emerges via deformation quantization of the symplectic structure:

$$[\hat{F}, \hat{G}] = i\hbar\widehat{\{F,G\}} + \mathcal{O}(\hbar^2)$$

This perspective connects to the Kontsevich formality theorem and provides mathematical rigor to the quantization procedure ^cite{Witten2021}.

The remarkable aspect of this approach is its maintenance of manifest covariance throughout the quantization process, avoiding the artificial 3+1 splitting of traditional canonical quantization while providing a direct connection to the geometric properties of the classical theory.

# Path Integral Measure from Symplectic Structure: The Harmonic Oscillator Example

## Why the Measure Contains $\sqrt{\det\Omega}$

The formula $\mathcal{D}\phi = \prod_x d\phi(x) \sqrt{\det\Omega}$ represents a fundamental principle: a proper path integral measure must be invariant under field redefinitions. The factor $\sqrt{\det\Omega}$ ensures this invariance, playing the role of a Jacobian determinant in curved phase space. Let's clarify this using the harmonic oscillator.

## Harmonic Oscillator: From Phase Space to Path Integral

### Classical Phase Space View

For a harmonic oscillator with position $q$ and momentum $p$:

1. **Phase Space**: The classical phase space is $\mathbb{R}^2$ with coordinates $(q,p)$
2. **Symplectic Form**: $\omega = dp \wedge dq$
3. **Hamiltonian**: $H(q,p) = \frac{p^2}{2m} + \frac{1}{2}m\omega^2 q^2$

### Canonical Quantization to Path Integral

The standard phase space path integral for the harmonic oscillator is:

$$Z = \int \mathcal{D}p \mathcal{D}q \, e^{i\int dt [p\dot{q} - H(p,q)]/\hbar}$$

where $\mathcal{D}p \mathcal{D}q = \prod_t dp(t) dq(t)$ represents integration over all possible trajectories.

### The Measure and Symplectic Structure

Here's the key insight: in flat phase space $(q,p)$, the natural volume element is:

$$dV = dp \wedge dq = \frac{1}{2} \omega_{ij} dx^i \wedge dx^j$$

where $\omega_{ij}$ is the matrix representation of the symplectic form:

$$\omega = \begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix}$$

Therefore, $\det \omega = 1$ for this simple case, and $\sqrt{\det \omega} = 1$.

## Curvilinear Coordinates Example

Now, let's introduce curvilinear coordinates $(Q,P)$ related to $(q,p)$ by some transformation:

$$Q = Q(q,p), \quad P = P(q,p)$$

The symplectic form in the new coordinates becomes:

$$\omega' = dP \wedge dQ = \sum_{i,j} \omega'_{ij} dQ^i \wedge dP^j$$

The measure must transform as:

$$dp \wedge dq = \sqrt{\det \omega} \, dq \wedge dp = \sqrt{\det \omega'} \, dQ \wedge dP$$

So $\mathcal{D}P \mathcal{D}Q = J \mathcal{D}p \mathcal{D}q$ where $J$ is the Jacobian determinant, which is precisely $\sqrt{\det \omega'}$ in the new coordinates.

## Concrete Example: Polar Coordinates

Consider changing to polar-like coordinates in phase space:

$$q = r\cos\theta, \quad p = r\sin\theta$$

The symplectic form becomes:

$$\omega = dp \wedge dq = r\,dr \wedge d\theta$$

The phase space measure transforms as:

$$\mathcal{D}p \mathcal{D}q = r\,\mathcal{D}r \mathcal{D}\theta$$

The factor $r$ is exactly $\sqrt{\det \omega}$ in these coordinates, ensuring invariance.

## Extension to Field Theory

For a field theory, we have infinitely many degrees of freedom. Each spacetime point carries field values, analogous to $q$, and their conjugate momenta, analogous to $p$.

For a scalar field:
1. The naive measure would be $\prod_x d\phi(x)$
2. But under field redefinitions $\phi \to \Phi(\phi)$, this isn't invariant
3. The correct measure includes $\sqrt{\det\Omega}$, where $\Omega$ is the infinite-dimensional analog of $\omega$

## Mathematical Perspective

From a mathematical viewpoint, we're constructing a measure on an infinite-dimensional manifold (the space of field configurations). The symplectic form provides the natural volume element:

$$\mathcal{D}\phi = \sqrt{\det\Omega} \prod_x d\phi(x)$$

For the harmonic oscillator in phase space path integration, we have:

$$Z = \int \prod_t \sqrt{\det\omega(t)} \, dp(t) dq(t) \, e^{iS[p,q]/\hbar}$$

Since $\det\omega = 1$ in canonical coordinates, the factor disappears, giving us the familiar expression. However, in general curved phase spaces or after field redefinitions, this factor is essential for maintaining invariance.

This is why the covariant phase space formalism, which deals with general field configurations and preserves spacetime covariance, must include the $\sqrt{\det\Omega}$ factor in the measure to ensure the quantum theory is independent of our choice of field parametrization.