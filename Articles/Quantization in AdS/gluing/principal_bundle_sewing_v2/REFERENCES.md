# 文献、用户研究来源与证据边界

检索日期：2026-09-14。引文用于已有框架、实现和外部物理事实；本包新的 elementary calculations、model-specific presentations 与反例在正文中推导。没有声称重证所有文献定理。文献的无真实边界范围，不能自动推广成本文任意 timelike IBVP。

## 主要文献

**[R1]** Daniel Harlow, Jie-qiang Wu, *Covariant phase space with boundaries*, arXiv:1906.08616。使用：boundary variational principle、corner potential、CPS/Peierls 的比较逻辑。查看 HTML 正文。不是任意 gauge PDE 存在性输入。

**[R2]** William Donnelly, Laurent Freidel, *Local subsystems in gauge theory and gravity*, arXiv:1601.04744。使用：boundary reference frames、charges 与 subsystem 的物理动机；不采用“加 frames 自动等价于任何 fixed-boundary theory”的过宽命题。

**[R3]** Aldo Riello, *Symplectic reduction of Yang–Mills theory with boundaries: from superselection sectors to edge modes, and back*, arXiv:2010.15894。使用：flux sectors 与 edge-mode extension 不是同一种选择。题名和范围经 arXiv 核对。

**[R4]** Marco Benini, Claudio Dappiaggi, Alexander Schenkel, *Quantized Abelian principal connections on Lorentzian manifolds*, arXiv:1303.2515v2。使用：完整 gauge group、topological observables、compact factors 中某些线性 observable algebras 不 separating。

**[R5]** Marco Benini, Claudio Dappiaggi, Thomas-Paul Hack, Alexander Schenkel, *A C*-algebra for quantized principal U(1)-connections on globally hyperbolic Lorentzian manifolds*, arXiv:1307.3052v2。使用：separating exponential observables、presymplectic Abelian group 和 locality 的拓扑限制。查看 HTML 与 abstract；不是本文 reflecting-wall quantization 的现成证明。

**[R6]** Christopher J. Fewster, Benjamin Lang, *Dynamical locality of the free Maxwell field*, arXiv:1403.7083。使用：universal/reduced Maxwell、topological information 与 locality 的区分。

**[R7]** Edward Witten, *Two Dimensional Gauge Theories Revisited*, arXiv:hep-th/9204083。使用：二维 YM 的精确量子背景；本包的 PBW/Haar/operator proof 独立写出，不以 partition function formula 代替。

**[R8]** Riccardo Iraso, Pavel Mnev, *Two-Dimensional Yang-Mills Theory on Surfaces With Corners in Batalin-Vilkovisky Formalism*, arXiv:1806.04172v3。使用：有 boundaries/corners 的 YM2 量子组合背景；其 amplitude construction 与本包 operator target 分开。

**[R9]** Daniel S. Freed, *Classical Chern-Simons Theory, Part 1*, arXiv:hep-th/9206021。使用：boundary prequantum lines 与 gluing；该 Part 1 的群范围为 connected/simply connected，不能把其 scope 偷改为任意 compact/非紧群。

**[R10]** Antony Wassermann, *Operator Algebras and Conformal Field Theory III. Fusion of Positive Energy Representations of LSU(N) Using Bounded Operators*, arXiv:math/9806031。使用：charged fusion 的采用实现。本文展示 Gram/map obligations，未重证该工作的全部分析理论。

**[R11]** Peter Bantay, *The Frobenius–Schur Indicator in Conformal Field Theory*, arXiv:hep-th/9610192v2，式 (1)。查看 HTML 正文，并在代码中把 SU(2)₂ 的 fusion/dimension/twist 实际代入。

**[R12]** Davide Gaiotto, Anton Kapustin, Nathan Seiberg, Brian Willett, *Generalized Global Symmetries*, arXiv:1412.5148。使用：line/surface charged objects 与局域 curvature catalog 的区别。

**[R13]** Stefan Hollands, *Renormalized Quantum Yang-Mills Fields in Curved Spacetime*, arXiv:0705.3340。使用：局域微扰 quantum YM/BRST 的 scope，不扩张为任意 physical-wall/Wilson sewing existence theorem。

**[R14]** Alberto S. Cattaneo, Pavel Mnev, Nicolai Reshetikhin, *Perturbative Quantum Gauge Theories on Manifolds with Boundary*, arXiv:1507.01221。使用：量子 boundary/residual-field 的组合框架；不把框架名称算作具体 model 的完成证明。

**[R15]** Marco Benini, Alexander Schenkel, Richard J. Szabo, *Homotopy Colimits and Global Observables in Abelian Gauge Theory*, arXiv:1503.08839v2。使用：local-to-global 时保留 gauge comparison data 的背景；本文对普通 bundle 先用实际 cocycles/arrows，不默认要求读者掌握该文全部语言。

**[R16]** Matthias Berwein et al., *Renormalization of the Cyclic Wilson Loop*, arXiv:1212.4413。使用：intersections 会要求 operator mixing 的具体例子；不是本文所有 junction prescriptions 的 construction。

**[R17]** Takuya Okuda, Koichi Saito, Shuichi Yokoyama, *U(1) Spin Chern-Simons Theory and Arf Invariants in Two Dimensions*, arXiv:2005.03203。使用：odd-level compact U(1) CS 需要 spin 数据；本包 finite torus examples 选择正偶 k。

**[R18]** Andrey G. Grozin, Johannes M. Henn, Gregory P. Korchemsky, Peter Marquard, *The Three-Loop Cusp Anomalous Dimension in QCD and Its Supersymmetric Extensions*, arXiv:1510.07803v3。使用：一圈 Euclidean cusp 的角度依赖及其 smooth limit；查看 HTML。本文不借此报告最新多圈进展，也不声称本包重整化到三圈。

## 用户研究上下文

**[U1]** Research Radar：`https://research-radar.gao-zien.chatgpt.site/problems`。本轮实际访问，目标卡含 framed gauge algebra、crossing Wilson、holonomy–electric brackets、实际 kernel/image 与三块比较，以及 classical/algebra/state 层次区分。

**[U2]** GaoZ1en/obsidian_note，当前 main 的 `Articles/Quantization in AdS/gluing/models/spacelike regions/gauge/SU(2) Chern-Simons charged sewing and channel maps.md`。本轮实际读取 raw main；借鉴其 fixed-cup convention、实际 Gram/channel maps 与非对角 Wilson 检验。它不只是列 fusion multiplicities。本包把所依赖的关键约定和采用输入完整写在 §7.6–7.7，不要求运行时联网。

**[U3]** 同仓库当前 main 的 `Articles/Quantization in AdS/gluing/models/spacelike regions/gauge/U(1) Chern-Simons disk and open-chord sewing.md`。本轮实际读取 raw main；对照 source-free zero-charge disk 的 sector 选择。

在线仓库根：`https://github.com/GaoZ1en/obsidian_note`。本轮没有取得可独立验证的 commit pin，**不声称**当前 main 是旧 ZIP 声明的历史版本，也不虚构 commit hash。采用的公式已固化在本包；在线原文的逐 byte snapshot 不作为本包自包含证明的一部分。

## 当前对话输入

上传的 `gauge_sewing_exploration_bundle.zip` 与 `gauge_sewing_strict_audit.zip`，以及审查报告 `strict_audit_zh.md`。实际输入文件的 SHA256 记录在 `provenance/input_manifest.json`。旧稿在本包中仅是问题来源和反例回归依据，不被当作已验证的 scalar/quantum theorem。
