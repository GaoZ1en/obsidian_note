# 09｜传播 YM、null cuts、量子重整化与 states：不能被通用符号遮住的工作

前面精确模型决定 formalism 至少要携带什么；本篇则测试它是否会对更广的目标撒谎。目标仍包括 non-Abelian propagation、anchored Wilson、physical boundary/corner operators，不因某项难以构造就把它从 ontology 删除。但“在定义中保留该目标”不等于已经构造它的 algebra。

## 9.1 non-Abelian theory 的边界条件先过两关

对一般 smooth background connection \(\bar A\)，变分原理选择的条件，还必须使 gauge-fixed linearized operator 有足够好的 causal source problem，且 constraints 能传播。第一关是 action/symplectic flux，第二关是 equation/domain；两者不能互相代替。

例如 \(\delta A_\parallel=0\) 可以令 YM 的 wall variation 消失，却未单独决定 normal component、ghost、initial Gauss、corner jets。若另加全部 \(A_n=0\) 以求“保险”，可能过约束；若根本不给 constraint-preserving completion，又可能不唯一。真正的 model entry 要明确一份完整的 B 与可变 source relation。

第 06 篇在 Abelian flat slab 已实际做完这一点。它不是一般 background 非阿贝尔 theorem。CS 的 first-order/chiral problem 也不能照搬 Maxwell 的 D/D/D/N prescription。含 fermions 的 first-order equations 更不能任意把全部 boundary spinor components 置零，而必须选与其 boundary flux 相容的 admissible subspace。

## 9.2 一个可以实际构造的扩大：formal classical YM response

在第 06 篇同一 flat slab 上，取 trivial bundle sector、background 0、Lie algebra 的 invariant pairing。引入 amplitude parameter ε，求
\[
 A=\sum_{n\ge1}\varepsilon^n A^{(n)}.
\]
这是 coefficientwise formal series，不把 convergence 当已证。取 Lorenz function \(C=\partial^\mu A_\mu\)，gauge-fixed equations 为
\[
 D^\mu F_{\mu\nu}+D_\nu C=0.
\tag{9.1}
\]
展开后 principal part 是普通 wave，其余是 A 与一阶导数的 quadratic/cubic expressions。

在 order n，\(A^{(n)}\) 满足第 06 篇的四分量 linear sourced problem；右边仅由低阶 \(A^{(r)},r<n\) 构造。物理 wall \(A_\parallel=b\) 逐阶施加，normal completion 仍由 \(C|_B=0\) 给出。**输入是 formal initial/boundary data，其每阶满足 nonlinear Gauss 展开及全部 cap–wall compatibility；不是任选四份初值。**

Noether identity \(D^\nu D^\mu F_{\mu\nu}=0\) 与 (9.1) 给
\[
 D^\nu D_\nu C=0.
\tag{9.2}
\]
若低阶 C 已为零，order n 的 C 满足 homogeneous scalar wave、zero Dirichlet wall、zero compatible initial data，因此也为零。于是归纳得到每阶真实 YM equations，而非仅 gauge-fixed equations。

每阶 forcing smooth，第 06 篇的完整 source lift、spectral construction 与 uniqueness 给 coefficientwise solution。每个固定 order、固定有限时间窗的 construction 都存在；不要求不同 n 的估计可求和。nonlinear products 会产生非零高阶 normal jets，**不能坚持所有高阶 coefficients 仍有自由理论的 odd/even reflection parity**；必须使用 §6.7 的 inhomogeneous joint jet prescription。这是反查后保留的重要修订。

对于 compatible cuts，piecewise equations 与 matching jets 在每阶组装成同一个 linear sourced problem；uniqueness 归纳给 formal classical response 的 grouping independence。这个结果在声明的 formal data class 中是构造性的，不只说“假设所有 Green functions 存在”。

它还没有提供完整 nonlinear observable presentation 的 kernel，也不证明 series 收敛、任意大数据全局存在、任意 moving/null wall、quantum renormalization。若加 external adjoint current J，必须联合满足 \(D_A^\nu J_\nu=0\)；不能把 ordinary divergence-free J 当作对任意 A 独立合法的 source。

## 9.3 anchored Wilson 的 classical identity 与 Hamiltonian admission 是两件事

对路径 \(\gamma:[0,1]\to R\)，parallel transport 的 variation 精确为
\[
 \delta U_\gamma=-\int_0^1 U_{1,s}
 [\delta A_\mu(\gamma(s))\dot\gamma^\mu(s)]U_{s,0}\,ds.
\tag{9.3}
\]
连同第 01 篇的 endpoint anchors，它给 gauge invariant matrix-valued function。把 path 切成若干段并插入 h，ordinary matrix composition 是 exact classical sewing identity。

但 (9.3) 的 derivative 支持在 curve 上，通常不是第 03 篇 regular smooth Hamiltonian domain。对某些两条 lines/surfaces，其 Peierls contraction 可定义；对 tangencies、coincident supports、null curves、endpoints，必须检查 distributional products 与边界项。几何上存在一个 U，并不保证它对所有其它 U 都有可定义 Poisson bracket。

因此采用三个不同的 admission entries：有限 graph 上的 link Wilson（第 05 篇精确）；continuum 的明确 smooth thick probes（第 06 篇已含 Abelian 必需 flat holonomy）；thin line/charged network 作为带特定 distributional/renormalization prescription 的扩展。后者仍是目标，但没有通过准入的 pairing 不可以写进一个声称封闭的 Poisson/quantum algebra。

非阿贝尔 electric flux 的 colour 也必须有比较 fibre 的 transport，例如
\[
 E_{S,u}[\xi]=\int_S\langle\xi,u^{-1}E_nu\rangle,
\]
其中 u 是声明的 boundary frame，或实际 dynamical dressing。若 u 依赖 A，variation 中必须包括 \(\delta u\)；把它当固定常数会漏掉 bracket terms。多个 anchors 并非无限增加新可观测量：它们的关系由已给 boundary reference bundle 和可实现的 transports 决定。

## 9.4 quantum local product、boundary contacts 与 Wilson junctions

一般 interacting prescription 可以用 formal \(\hbar\)、coupling series 的 renormalized products。其构造至少应给：有物理 BC 的 propagators，明确支持/波前准入的 labels，local counterterms 的允许位置，boundary/corner Ward normalization，以及与 changes of prescription 的 maps。[R13,R14]

Hollands 的局域微扰 YM 结果为此提供重要输入，但不是本包所有真实 timelike boundaries 与 thin networks 的现成 existence theorem。[R13] BV–BFV 框架提供 boundaries 与 residual fields 的组合策略，也不能用一个框架名称替代实际 action/domain/measure 构造。[R14]

对一条在 seam 形成 cusp 的 renormalized Wilson，独立 segments 的乘积通常还要一个 junction renormalization；在有多个可重连 routings 时它是 matrix mixing。一个最简单的 Euclidean angular witness 是
\[
 \cos\varphi\int_0^\infty
 \frac{du}{1+u^2+2u\cos\varphi}=\varphi\cot\varphi,
 \quad0<\varphi<\pi.
\tag{9.4}
\]
减去 smooth continuation 的值 1 后，出现非零 \(\varphi\cot\varphi-1\)。在常用一圈 QCD normalization，cusp anomalous dimension 对应
\(\Gamma^{(1)}=g^2C_R(\varphi\cot\varphi-1)/(4\pi^2)\)。本包仅用该角度依赖说明“普遍 endpoint 常数”不足，不由此声称解决任意 Wilson product 的重整化。[R18] intersecting-loop mixing 的实际例子见 [R16]。

在 artificial seam 被撤去后，同一条真正 smooth line 不应凭空获得物理 cusp；这要求两侧 regulator/junction counterterms 与 smooth target 的 normalization 对齐。反之，真实 cusp 不应因“sewing independence”被删去。field-strength two-point kernel equality 检验不到这件事。

## 9.5 BRST：精确的适用范围和 comparison obligation

可以取 \(sA=D_Ac,\ sc=-\tfrac12[c,c]\)，并加入 matter、antifields 或辅助 fields。其 convention 可与第 01 篇通过 c 对应 infinitesimal ε 统一。离散 large transformations 不由此生成，仍须另行 quotient 或选择 equivariant sector。

若 \(\mathcal B\) 为实际定义的 graded quantum algebra，s 是 nilpotent derivation，则
\[
 \mathcal A^{\rm q}_{\rm phys}=H^0(\mathcal B,s)
\tag{9.5}
\]
是一个可采用的 prescription。它不自动是全部 Wilson/defect sectors；那些必须先成为 \(\mathcal B\) 或其 charged-module data 中的合法对象。也不自动给 positive Hilbert state。

构造 sewing chain map R 后，必须逐项检查：R 保持实际 source/support domains；Rs=sR；product 与 star 运算在 physical classes 上相容；关键 physical generators 有 preimages；零像只来自已算出的 gauge/equation/null relations。若使用 chain homotopies证明 inverse，需要给出这些 maps，而不是只写 \(LR-1=sh+hs\) 然后宣布存在性完成。

若 quantum Ward identity 出现不可消去的 seam anomaly，(9.5) 可能根本不能在预定方式下下降。禁止先假定物理量子代数存在，再把 anomaly 放进“未来的细节”。

## 9.6 spacelike 与 null cuts 不能一概叫 boundary matching

**spacelike Cauchy cut。** 要传递完整 constrained initial pair 及 bundle/frame data，而不是给它施加 reflecting timelike BC。orientation 使相邻 cap potentials 抵消。第 05、06 篇已经有这一类实际 evolution maps；corners 与 timelike walls 的 joint compatibility 仍保留。

**null cut。** characteristic surface 一般没有独立的“场+任意法向导数”两套数据。最基本反例：二维波方程 \(\partial_u\partial_v\phi=0\) 的解 \(\phi=f(u)+g(v)\)，只知 u=0 上 \(f(0)+g(v)\)，不能决定 f(u)。因此一张一般有限 null sheet 不是完整 Cauchy source；需相交的第二张 sheet、另一个 boundary、或其它补充条件。

对 YM，在 null gauge \(A_v=0\) 的 sheet u=0 上，\(F_{vA}=\partial_vA_A\)。constraint equations 含 \(D^AF_{Av}\) 等项；即使 transverse dependence 为零，\([A_A,\partial_vA_A]\) 一般不为零。例如 \(A_y=\cos v\,T_1+\sin v\,T_2\)，有
\[
 [A_y,\partial_vA_y]=[T_1,T_2].
\tag{9.6}
\]
故不能把每个 colour 的 Abelian radiative data 自由复制为完整 non-Abelian null data；electric/corner integration constants 受 constraint 控制。

本包对 null 部分给出数据结构与可检查的 failure witnesses，而不宣称已构造完整 null Peierls/quantum sewing。把一个 incomplete sheet 作为区域对象，会先违反“每个 region 理论良定义”，不能由后面的同调语言补救。

## 9.7 quantum algebra 不决定 state sewing

即使得到 \(\Theta:\mathcal A_\Gamma/I\cong\mathcal A_R\)，也没有从两份 regional states 唯一确定 global state。以两个 harmonic oscillators 为例，两份 oppositely squeezed pure Gaussian states 都有同一 local covariance
\[
 A=B=\tfrac12\cosh(2r)\,1_2,
\]
但 cross blocks 分别为
\[
 C_\pm=\pm\tfrac12\sinh(2r)\operatorname{diag}(1,-1).
\tag{9.7}
\]
两者各自满足 uncertainty relation，local restrictions 相同，全局 cross correlators 不同。

所以 state sewing 必须额外指定 cross correlations、boundary-state preparation、amplitude/pairing 或其它足够的数据。YM2 的 Haar isometry 是所选 Hilbert realization 的明确结果，不意味着所有 continuum QFT regions 自带 Hilbert tensor factorization。反射壁撤去后，旧 ground state 一般也不是新 Hamiltonian 的 ground state。

## 9.8 matter、magnetic defects、higher-form symmetry 与 nongauge comparison

加入 charged matter 时 Gauss 改为 \(D_iE^i=\rho\)，Wilson endpoints 可由真实 matter operators 而非外部 frames 承担。boundary charged matter 的 action/BC 必须随 region 保存；不能在 reopening 时把它误删为 artificial edge bookkeeping。

magnetic/'t Hooft defects 改变的是 bundle/connection 允许的奇性及 linking 数据，不只是给光滑 A 的 polynomial algebra 加一个词。若 target 包含它们，source 必须包含相应 disorder/transition sectors、junction rules 与 mutual locality 条件。generalized symmetries 的 charged lines/surfaces也说明只用局域 curvature polynomials 不足。[R12] 本包固定光滑 bundles 的 exact examples 并不自动完成这些 defect algebras。

对 nongauge scalar，同样需要真实 timelike BC、joint corner-source domain、完整响应、量子 contacts、独立 state data；这些不是 gauge 独有。gauge theory 额外强迫加入 Gauss/proper quotient、bundle transitions、anchors、large components、charged maps 与可能的 anomalies。最好的统一方式是保留共同的边界/源/代数检验步骤，再只对实际出现的 gauge obstruction 加相应数据，而非把 nongauge 也强制包装进无必要的高阶结构。
