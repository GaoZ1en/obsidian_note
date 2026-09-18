# 03｜什么才叫 classical / quantum observable algebra

## 3.1 首先固定物理对象，不从 curvature polynomial 开始定义全部

固定 \(\mathfrak T_B\)。令 \(\mathcal S_B\) 为满足全部方程、边界/角点和 sector 条件的解；等价关系来自声明的 \(\mathcal G_{\rm prop}\)。在 regular 部分，可用 \(\mathcal P_B=\mathcal S_B/\mathcal G_{\rm prop}\)；有 stabilizers 时先保留 fields、automorphisms 和 invariant presentation。

在 \(\mathcal S_B\) 上，一个 regular Hamiltonian observable 是满足以下条件的复泛函 \(F\)：它对 proper gauge 不变，其 variation 在所选测试域有意义，并存在合法线性化解 \(X_F\) 使
\[
 \iota_{X_F}\Omega_B=-\delta F.
\tag{3.1}
\]
零方向只造成 \(X_F\) 的冗余，不改变 \(\{F,G\}=\delta F(X_G)\)。取闭合于复共轭、有限和积及合法括号的指定子类，得到 \(\mathcal A^{\rm cl}_{B,\mathscr O}\)。当所有所用泛函满足 (3.1) 且域稳定，Leibniz 与 Jacobi 由 \(\delta\Omega=0\) 推出。

这不是宣称无限维 \(C^\infty(\mathcal P)\) 的每个元素都有 Hamiltonian vector field。\(\mathscr O\) 的任务正是给出物理上够用、数学上准入的类。本文不承诺一个模型无关的唯一“最大 quantum algebra”。

## 3.2 必須列出的 generator families

局域量可以从 \(\int f\,\mathrm{tr}(F^2)\)、\(\mathrm{tr}(FDF\cdots)\)、matter invariants、stress/current smearings 开始。但它们通常不分离全部 gauge orbits。

完整的 framed 目标还要依据模型加入：anchored transports 及 Wilson networks；normal electric response 及其带适当参照的 non-Abelian smearing；非平凡 cycle 的 holonomy；声明允许的 topological/charge sector detectors 和 sector-changing maps；真实 physical-edge observables。CS 的 local on-shell curvature 几乎没有信息，故必须从 currents 与 global/network labels 出发。

对 Abelian 线性场，合法线性 connection probe 的条件是
\[
 \langle f,d\epsilon\rangle=0\quad
 \forall\epsilon\in\operatorname{Lie}\mathcal G_{\rm prop}.
\tag{3.2}
\]
不能未经证明把它缩成 \(f=\delta\beta\)。后者会漏掉部分 cohomological/relative directions。对 compact gauge group，指数型 probes 还必须满足 large-gauge integrality；presymplectic Abelian **group** 而非 vector space 的 Weyl 关系在此有实际用途。[R4,R5]

## 3.3 Hamiltonian 准入不是纯几何可写性

Wilson holonomy 是光滑经典 connection 上有意义的几何泛函。但它的 functional derivatives 支撑在路径上。它是否有声明域中的 Hamiltonian vector field、两个 sharp insertions 的 bracket 是否存在、量子乘积是否可定义，是额外问题。

因此维护两张清单：geometric observable catalog 与已经准入的 Hamiltonian/operator algebra。thin Wilson 不准入既有 microcausal algebra 时，必须为它构造合适的 line/junction prescription；不得从目标清单删除它，再宣称原来的 smaller algebra 已经完成完整问题。本文的 Maxwell 精确结果采用 smooth smearings，不伪装成全部 thin Wilson 的量子化；它确实保留检测 relative holonomy 的平滑 generator。

非阿贝尔 electric flux \(\int_S E_n\) 本身也需比较不同 fibers：使用 frame、parallel transport dressing 或使测试 section 同时变换。其 brackets 包含 dressing 的 variation；不是把每个 color 当独立 Abelian flux。

## 3.4 first-class reduction 与普通理想商

在一个给定 Poisson algebra \(\mathcal A\) 中，约束理想 \(I\) 若为 first class，projectable algebra 是
\[
 N(I)=\{F:\{F,I\}\subset I\},\qquad
 \mathcal A_{\rm red}=N(I)/(N(I)\cap I).
\tag{3.3}
\]
在正则 Hamiltonian 群作用例子，可用 invariants 后再限制约束。不能对全部 \(\mathcal A\) 直接 quotient 任意约束理想，因为它未必是 Poisson ideal。

更不能假设所有 transmission conditions 都是 first class。某些 matching 是 second class，或根本不是旧 smooth phase space 中可微的 sharp boundary functionals。本稿的一般操作先在 variational matching locus 上 pull back 完整 \(\Omega\)，再除其已识别的 gauge null directions；需要 Dirac bracket 的具体有限模型必须显式计算。只在 YM2、线性 current 等已验证情形用 (3.3)。

量子时 \([q,p]=i\hbar\) 且把 \(q=0\) 作全代数的两侧理想商，会把单位元一起消掉。可用保持 constraint-state domain 的 operators 及其作用 kernel：
\[
 \mathcal A_{\rm red}^{\rm q}=
 \mathcal A_{\rm proj}/\ker(\mathcal A_{\rm proj}\curvearrowright\mathcal H_{\rm phys}).
\tag{3.4}
\]
(3.4) 是一般 prescription，不是已经算出 kernel。第 05、06、07 篇分别给实际 normal forms 或完整线性关系。

## 3.5 量子 observable algebra 的工作定义

先给一个实现无关的 generator/relation \(*\)-algebra，或给一个实际 Hilbert space、公共不变域 \(\mathcal D\) 及在其上作用的 operators。记录所取 completion：algebraic CCR、Weyl C*-algebra、有限阶 differential operators、von Neumann realization、formal \(\hbar\)-series 都不互相自动相等。

固定 observable prescription 的 quantization 至少满足：

1. 指定的 unit、adjoint 和 products 合法，规范/EOM relations 不产生 inconsistency；
2. 所声明的 classical correspondence 在共同准入生成元上成立，如 \([\widehat F,\widehat G]=i\hbar\widehat{\{F,G\}}+O(\hbar^2)\)，不要求对全部经典函数 exact；
3. 真实 large-gauge、global group、level、spin/framing、allowed representations 与 anomaly 数据被实施；
4. 所需 dynamics 保持代数或进入一个明确定义的 dynamical extension。

普通线性模型：对实线性 labels \(\ell\) 及反对称形式 \(\sigma\)，
\[
 [\Phi(\ell),\Phi(m)]=i\hbar\sigma(\ell,m)1,
 \quad \Phi(\ell)^*=\Phi(\ell),
\]
或者
\[
 \mathcal W(\ell)\mathcal W(m)=
 e^{-i\hbar\sigma(\ell,m)/2}\mathcal W(\ell+m),
 \quad \mathcal W(\ell)^*=\mathcal W(-\ell).
\tag{3.5}
\]
定义取 \(\mathcal W(\ell)=e^{i\Phi(\ell)}\)。symplectic radical 不自动是 gauge：可能是物理中心。只对实际 EOM/gauge null labels 作商，不把每个 central observable 设为常数。

## 3.6 compact harmonic coordinate 必须换成 rotor

完整 compact U(1) relative sector 中，\(Q\in\mathbb R/2\pi\mathbb Z\)，取
\[
 U=e^{iQ},\quad P=-i\hbar\partial_Q,
 \quad [P,U]=\hbar U.
\tag{3.6}
\]
\(V(s)=e^{isP/\hbar}\) 满足 \(V(s)UV(s)^*=e^{is}U\)。trivial sector 在 \(L^2(S^1)\) 实现；\(\Psi(Q+2\pi)=e^{i\vartheta}\Psi(Q)\) 的 flat-line sector 给 \(P=\hbar(n+\vartheta/2\pi)\)。在固定 ϑ 的 Weyl realization 中还实施 \(V(2\pi)=e^{i\vartheta}1\)；若不固定这个 central value，描述的是一族 sectors，而不是指定的一份表示。一份实直线 Gaussian 不是这个 compact rotor 的全球量子化。

若基于 fixed bundle 的小场展开只保留 infinitesimal gauge，实线 \(Q\) 的 CCR 完全合法，但必须标注线性 cover。不同 \(\vartheta\) 可以是同一较小抽象代数的不同表示；不能把它们的差异从该代数中凭空恢复。

## 3.7 algebra、state、representation、amplitude 分开

一个 algebra isomorphism 不决定 vacuum、temperature 或 entanglement。一个 Haar/conformal-block amplitude identity 不自动给 operator-algebra isomorphism。Hilbert spaces 同维不自动 intertwine Wilson/flux operators。只在给出具体 maps、domains 和关系之后才可连接这些层次。

以上区分不是降低目标，而是防止以较弱命题冒充较强命题。observable completeness 的操作性定义，是对本模型保留的物理解/sector 具有足够 separation witnesses，并覆盖事先要求的生成元，而不是测试通过的数量。
