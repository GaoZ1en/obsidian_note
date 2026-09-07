# U(1) Chern–Simons: disk、open chord 与 corner sewing

本模型在一个有物理 chiral boundary 的 disk 上，把一条 chord 当作 artificial timelike interface。两端 $P,Q$ 是真实的 spatial corners。结论为：在 smooth joint trace、可延拓的 cut gauge group，以及 source-free zero-charge sector 中，regional action/CPS 给出 exact classical current-algebra 与 polynomial/Weyl quantum sewing，恢复独立定义的整圆 boundary current algebra。

关键输入不是额外的 point oscillator：**边界场、规范参数、prescribed history 必须具有相容的端点值；sewing 后物理外边界还须匹配全部 smooth jets。** 丢弃这些条件时，开弧 central term 甚至不反对称，或 regional Hamiltonian 没有指定光滑域内的向量场。

本结论针对明确的 regular current algebra。它不把 sharp Wilson endpoints、vertex operators、非 Abelian WZW 或任意 Hilbert completion 包含在该名称内。

## 1. 独立的模型、方向和 physical boundary problem

取 oriented smooth disk $D$，$M=I\times D$，orientation 为 $dt\wedge dx\wedge dy$。取平凡 $U(1)$ bundle，无 punctures、Wilson sources 或 charge defects。用实 connection one-form
$$
A=A_tdt+a,\qquad A\mapsto A+d\lambda,
\qquad S_{\mathrm{CS}}=\frac{k}{4\pi}\int_M A\wedge dA,
\qquad k>0.
$$
这里所有有限 gauge transformations 均要求从实际 bulk map $g:D\to U(1)$ 取得。Disk 上存在实 lift，差一个常数 $2\pi\mathbb Z$；bulk 不支持任意 winding 的边界 map。本文先证明 classical 与形式 current quantization；完整 compact CS 的 large-gauge level/spin 数据须与所选量子 theory 一起固定，不能从一个 current commutator 反推。

令 $s$ 是 $\partial D$ 的正向周期坐标，取常数 $v>0$。完整 global action 选为
$$
S_D=S_{\mathrm{CS}}
+\frac{k}{4\pi}\int_I dt\oint_{\partial D}
(A_t a_s-v a_s^2)\,ds.
$$
由
$$
A\wedge dA
=dt\wedge\big[-a\wedge\dot a+2A_t\,d_\Sigma a
-d_\Sigma(A_ta)\big]
$$
得到等价 canonical expression
$$
S_D=\frac{k}{4\pi}\int_I dt
\left[-\int_Da\wedge\dot a
+2\int_D A_t d_\Sigma a
-\oint_{\partial D}v a_s^2 ds\right].
$$
时间初末面的变分另行保留。Bulk equations 为
$$
d_\Sigma a=0,\qquad \dot a=d_\Sigma A_t.
$$
外边界变分是 $\frac{k}{2\pi}\int_{I\times\partial D}(A_t-v a_s)\delta a_s\,\mathrm{d}t\,\mathrm{d}s$，因此物理边界条件为
$$
\boxed{A_t|_{\partial D}=v a_s.}
$$
Proper gauge 在整个物理边界为 $1$。非零外边界 gauge values 保留为 charged symmetries；固定 history/problem 时还须满足对应的时间演化条件。本文不先把这些 charges quotient 掉。

## 2. 从 global action 独立得到 boundary phase space 与 algebra

采用 $\Omega=\delta\Theta$、$\iota_{X_F}\Omega=-\delta F$、$\{F,G\}=dF(X_G)$。Canonical potential 为
$$
\Theta_D=-\frac{k}{4\pi}\int_Da\wedge\delta a.
$$
Flatness 和 disk 的单连通性给 $a=d\phi$。除去 boundary-trivial proper gauge 后，唯一数据为 boundary trace，且 $\phi$ 的常数不改变 $a$：
$$
\boxed{V_D=C^\infty(\partial D,\mathbb R)/\mathbb R.}
$$
每个 smooth boundary function 都有 smooth disk extension；同 trace 的两个 extensions 相差 boundary-zero gauge parameter。这给双向 reconstruction，无 mode truncation。

在这个 phase space 上
$$
\Theta_D=-\frac{k}{4\pi}\oint\phi\,d\delta\phi,
\qquad
\Omega_D(u,w)=-\frac{k}{2\pi}\oint u\,dw.
$$
此弱辛形式非退化：若对全部 smooth $w$ 积分为零，则 $du=0$，故 $[u]=0$。本文使用其 regular Hamiltonian linear observables
$$
Q_D[\alpha]=\frac{k}{2\pi}\oint\alpha\,d\phi,
\qquad \alpha\in V_D.
$$
$X_{Q[\alpha]}\phi=\alpha$，所以
$$
\boxed{\{Q_D[\alpha],Q_D[\beta]\}
=c_D(\alpha,\beta)
=\frac{k}{2\pi}\oint\alpha\,d\beta.}
$$
Global classical current algebra 是这些 $Q_D$ 的有限 polynomial algebra，global quantum current algebra 则独立由线性、involution 和
$$
[\widehat Q_D[\alpha],\widehat Q_D[\beta]]
=i\hbar c_D(\alpha,\beta)1
$$
定义。目标先于下面的 regional quotient。标准 disk current construction 可与 [Balachandran–Bimonte–Gupta–Stern §2](https://arxiv.org/html/hep-th/9110072) 对照；本文另外证明 open-chord 的域、kernel 与 image。

## 3. Regional action：先固定 seam history，再释放

把 $D$ 沿 transverse chord $\gamma=[P,Q]$ 切成 $D_1,D_2$。方向约定
$$
\partial D_1=O_1+\gamma,\qquad
\partial D_2=O_2-\gamma,\qquad
\partial D=O_1+O_2.
$$
$O_i$ 是物理外边界 arc；$\gamma$ 按 $P\to Q$ 定向。每个区域使用自己的 fields、proper gauge 和实际 boundary trace spaces。取 common-frame chart，先在 seam 规定 $q_i=A_{t,i}|_\gamma$，允许 tangential connection $a_i|_\gamma$ 变化。完整 regional actions 是
$$
\boxed{
S_i=\frac{k}{4\pi}\int_I dt
\left[-\int_{D_i}a_i\wedge\dot a_i
+2\int_{D_i}A_{t,i}d_\Sigma a_i
-2\int_{\gamma_i}q_i a_i
-\int_{O_i}v(a_i)_s^2ds\right],}
$$
其中 $\gamma_1=\gamma,\gamma_2=-\gamma$。这是 covariant CS action 加上
$$
\frac{k}{4\pi}\int_I dt
\left[\int_{O_i}(A_{t,i}(a_i)_s-v(a_i)_s^2)ds
-\int_{\gamma_i}A_{t,i}a_i\right]
$$
的具体 boundary polarization，没有未声明的 corner action。

在 seam，bulk 的 $2q_i\delta a_i$ 与 added term 的相应项抵消，留下 response
$$
\boxed{\Lambda_i=-\frac{k}{2\pi}\int_I dt\int_{\gamma_i}a_i\,\delta q_i.}
$$
在物理边界仍得到 $A_{t,i}=v(a_i)_s$。Cauchy potential 仍为 $-k\int_{D_i}a_i\wedge\delta a_i/(4\pi)$。这些式子来自完整变分；没有把 YM 的 electric response 或 cotangent edge factor 代入 CS。

在实际 solution/history relation 上保留完整端点恒等式
$$
\delta S_{i,\mathrm{on}}=\Theta_i^f-\Theta_i^i+\Lambda_i,
\qquad
\Omega_i^f-\Omega_i^i=-\delta\Lambda_i.
$$
$\Lambda_i$ 对 $q_i$ projection 是 semibasic one-form，但 coefficient $a_i$ 同时依赖 Cauchy data 和 history。这里的 $\delta$ 在整个 relation 上作用，保留 $\delta a_i\wedge\delta q_i$，不只在 history base 上求导。没有令 temporal endpoint variations 为零后再把该条件外推。

现在识别 $q_1=q_2=q$，自由变分共同 history 在开弧内部的值：
$$
\delta(S_1+S_2)|_\gamma
=-\frac{k}{2\pi}\int_I dt\int_\gamma(a_1-a_2)\delta q,
\qquad
\boxed{a_1|_\gamma=a_2|_\gamma.}
$$
匹配后，两份 artificial boundary action 相消，$S_1+S_2$ 正好成为 $S_D$ 的分区积分。Artificial seam 不留下额外相互作用或能量。

## 4. Joint traces 和实际 gauge group

取 smooth up to corners 的 bulk fields，并赋予其边界联合迹像 quotient topology：
$$
B_i=\operatorname{Tr}_{O_i\cup\gamma_i}C^\infty(D_i,\mathbb R),
\qquad V_i=B_i/\mathbb R.
$$
对这里 transverse 的两个 faces，$B_i$ 可具体描述为两条 closed arcs 上的 smooth functions，且在 $P,Q$ 分别共享同一个值。充分性可在角点坐标轴上用 $f(x)+g(y)-f(0)$ 延拓，随后 partition of unity；必要性来自 bulk continuity。两条相交方向的 tangential derivatives 不必逐项相等。对于 connection、$A_t$ 和时间依赖 solutions，仍使用各自实际的 joint trace，不由这个 scalar trace 描述随意替换。

$V_i$ 是带实际 history relation 的 regional object 的 Cauchy presentation。该 object 还保存 $q_i$、response 与 compatible transport；一个 generic current 不被宣称为任意固定 $q_i$ fiber 内的 symmetry。这里证明的 source 也不是 scalar 笔记中尚未证明满射的 arbitrary independent-history-family algebra。

Regional proper gauge 在 $O_i\cup\gamma_i$ 全部为 $1$。释放 cut 时只使用仍在 $O_i$ 为 $1$ 的 bulk transformations 的迹：
$$
\mathcal G_\gamma^{\mathrm{adm}}
=\operatorname{Tr}_\gamma
\{g_i\in C^\infty(D_i,U(1)):g_i|_{O_i}=1\}.
$$
其元素恰为 $k=e^{i\kappa}$，其中
$$
\boxed{\kappa\in C^\infty([P,Q],\mathbb R),
\qquad\kappa(P)=\kappa(Q)=0.}
$$
证明：disk lift 取 $\lambda|_{O_i}=0$，给所列必要条件。反向由 joint trace extension 构造 $\lambda_i$，再指数化。特别地，仅要求 $k(P)=k(Q)=1$ 不够；沿 seam 绕 $U(1)$ 一圈再以常数 outer arc 闭合的 path 不可延拓。所列实 lifts 同时排除了这个 winding sector。相同 $\kappa$ 也能延拓为在完整 outer circle 为零的 global smooth gauge parameter。

Physical boundary symmetries 可以在 $P,Q$ 非零；它们属于保留的 whole-boundary charges。不能把它们与上述 released cut group 混成 unrestricted $\operatorname{Map}(\gamma,U(1))$。

在完整 history relation 上，cut-frame covariance 同时运输
$$
\phi_i|_\gamma\mapsto\phi_i|_\gamma+\kappa,\qquad
q\mapsto q+\dot\kappa.
$$
$\kappa(P)=\kappa(Q)=0$ 对全部时间成立，所以此变换保持外边界条件及 $q$ 的端点值。只在一个固定 $q$ fiber 内作用时，必须进一步保持该 source；任意 time-dependent frame change 是 fibers 之间的 covariance。

## 5. Corner 检验：central term 与 Hamiltonian typing

### 5.1 开弧不单独携带 unrestricted current cocycle

对任意 interval parameters，
$$
c_\gamma(\alpha,\beta)+c_\gamma(\beta,\alpha)
=\frac{k}{2\pi}[\alpha\beta]_P^Q.
$$
例如 $\alpha(s)=s,\beta(s)=1$，$s\in[0,1]$，右侧为 $k/(2\pi)\ne0$。所以 $\int_\gamma\alpha d\beta$ 不能独立用作 unrestricted endpoint parameters 的 Poisson central term。

真正的 regional current 是
$$
Q_i[\alpha_i]=\frac{k}{2\pi}\oint_{\partial D_i}\alpha_i\,d\phi_i,
\qquad \alpha_i\in B_i/\mathbb R,
$$
其 cocycle 为整条分片边界的积分。$O_i$ 与 $\gamma_i$ 的 endpoint defects 因 joint values 和相反 incidence signs 相消。对 cut-only $\kappa,\lambda$，每条开弧上的 cocycle 也反对称，因为两个端点均为零；单个区域仍有非零 central extension，但共同 diagonal cut action 满足
$$
c_1(\kappa,\lambda)+c_2(\kappa,\lambda)
=\frac{k}{2\pi}\left(\int_\gamma\kappa d\lambda
-\int_\gamma\kappa d\lambda\right)=0.
$$
因此 diagonal constraint 没有遗留 central anomaly。这里没有对无限维 gauge group 使用 normalized Haar integration。

### 5.2 任意 prescribed $q$ 不构成合法的 smooth regional dynamics

在 flat locus 上，regional Hamiltonian 是
$$
H_i[q]=\frac{k}{4\pi}\int_{O_i}v(\partial_s\phi_i)^2ds
+\frac{k}{2\pi}\int_{\gamma_i}q\,d\phi_i.
$$
若把 $\delta H_i$ 的空间切向导数积分掉，角点项为
$$
\frac{k}{2\pi}\sum_{z\in\{P,Q\}}
\epsilon_{i,z}
\big(v(\partial_s\phi_i)|_{O_i}(z)-q(z)\big)\delta\phi_i(z),
$$
$\epsilon_{i,z}$ 是 $z$ 在有向 $O_i$ 中的 boundary sign。它消失恰因同一个 $A_t$ 的 joint trace 和物理条件要求
$$
\boxed{q(z)=v(\partial_s\phi_i)|_{O_i}(z),\qquad z=P,Q.}
$$
相应的 Hamiltonian vector 在 boundary 上满足
$$
\dot\phi_i|_{O_i}=v\partial_s\phi_i,
\qquad \dot\phi_i|_{\gamma_i}=q,
$$
差一个不改变 $a_i$ 的共同时间常数。上面的 endpoint equality 正好让它属于 $B_i/\mathbb R$。Smooth histories 还须保持这些条件的全部时间导数。若 $q$ 与初值/外边界任意独立给定，端点项一般不为零，不能宣称已有任意-history IBVP 或 regular Hamiltonian vector field。

本文据此采用实际 smooth solution/history relation：满足 bulk equations、physical condition 与全部 joint endpoint compatibility 的数据才进入 regional object。这里不需要一个对任意 $q$ 的虚假 existence theorem。未切分 disk 的解由下文的 boundary transport 和 smooth extension 直接构造，其所有 restrictions 都属于这个 relation。

**Corner 的作用。** 原 action 没有独立的 spatial-vertex variable 或 corner kinetic term。上述端点量是已存在的 bulk/boundary fields 的 traces；central defects 在完整 boundary 中相消，Hamiltonian endpoint terms 则限制允许域。若另外加入 point action、charge 或 frame，它将是另一个模型，需重做此次变分。

## 6. 精确的 Cauchy sewing 与 smooth reconstruction

在独立的 $V_1\oplus V_2$ 内定义 linear matching space $C$，条件完全按已指定 faces/identifications 写成：

1. $d\phi_1|_\gamma=d\phi_2|_\gamma$，即两 traces 只差一个常数；
2. 用各区域本来就不改变 $a_i$ 的常数使 seam traces 相等；
3. 在此代表中，$O_1,O_2$ 在 $P,Q$ 拼成的外边界 traces，对同一个物理边界坐标的所有阶 tangential jets 相等。

第三项是原 smooth disk theory 的局部 trace condition。仅第一项只能产生 piecewise smooth outer data；不能借此声称恢复原 smooth current algebra。它由端点处的明确 jet equations 实施，不是把 global observables 拉回后用作 source 的定义。

定义 $r:C\to V_D$ 为拼合 outer trace。这个映射实际满射：给任意 smooth circle function $f$，在 seam 选任意 smooth interpolation，端点为 $f(P),f(Q)$；两个区域的 joint extension lemma 给合法 regional representatives。可取固定线性 interpolation，因此 $r$ 有连续线性 section（先以 $f(P)=0$ 固定常数）。

Kernel 也显式可见。若 outer trace 在 $V_D$ 中为零，调整常数使两条 outer arcs 为零，则共同 seam trace 是唯一的 $\kappa$，且 $\kappa(P)=\kappa(Q)=0$。记其在两区域中的共同 shift space 为 $K_\gamma$，于是
$$
\boxed{0\longrightarrow K_\gamma\longrightarrow C
\xrightarrow{r}V_D\longrightarrow0.}
$$
这是 admissible diagonal cut group 的 infinitesimal action，也是其完整实 lift description。

在 matched representatives 中，regional symplectic forms 的 seam terms 抵消：
$$
\boxed{(\Omega_1+\Omega_2)|_C=r^*\Omega_D.}
$$
$r$ 满射且 $\Omega_D$ 非退化，故该 presymplectic form 的完整 kernel 正好为 $K_\gamma$。得到
$$
\boxed{C/K_\gamma\cong V_D}
$$
的连续、双向、弱辛同构。

**真正的 continuum reconstruction。** 不是只重构 boundary labels：取 $C$ 中代表的 common seam trace 与 smooth outer trace，构造完整 disk smooth $\phi$。在 $P,Q$ 附近，先延拓 outer function；剩余 seam function 在端点为零，可除以一条 transverse boundary-defining coordinate 后光滑延拓，再乘回该 coordinate。Partition of unity 完成全局延拓。它在每个 $D_i$ 与原 $\phi_i$ 的差在整个 regional boundary 为零，正好是 proper gauge。反向的两个 global representatives 若有同 outer trace，差为 global proper gauge。这也说明无须把某个 gauge choice 的所有 normal jets 强行当成新物理约束。

## 7. Classical 与 quantum current algebra：domain、kernel、image

每个 regional algebra 先独立由 $Q_i[\alpha_i]$、$\alpha_i\in V_i$ 生成。对 $u=(\alpha_1,\alpha_2)\in C$ 定义联合 current
$$
Q_C[u]=Q_1[\alpha_1]+Q_2[\alpha_2].
$$
这里对参数施加与 phase vectors 相同的 seam/outer-jet 条件。它保证 Hamiltonian vector tangent to $C$；并与全部 diagonal cut generators 对易。记这些 currents 生成的 algebra 为 $\mathcal A^{\mathrm{adm}}_C$。这是一份明确的 regular current source，不声称等于任意完成中的全部 fixed-point operators。

在 $C$ 上有
$$
Q_C[u]|_C=Q_D[r u]\circ r,
\qquad c_C(u,z)=c_D(r u,r z).
$$
改变 seam interpolation 只改变一个 $\kappa\in K_\gamma$，而
$$
Q_C[\kappa]=\frac{k}{2\pi}\int_\gamma\kappa(a_1-a_2)
$$
正是 action release 的 moment constraint。它在 source current algebra 中是 central，在 constraint locus 上为零。

**Classical polynomial theorem。** 线性 section 将 $C$ 分裂为 $K_\gamma\oplus V_D$；$V_D$ currents 线性独立（由弱辛非退化性）。因此有限 polynomial restriction 的完整 kernel 是由 $Q_C[K_\gamma]$ 生成的理想，且
$$
\boxed{\mathcal A^{\mathrm{adm,cl}}_C/
\langle Q_C[K_\gamma]\rangle
\cong\mathcal A_D^{\mathrm{cl,current}}.}
$$
Onto 来自每个 $\alpha$ 的上述 interpolation lift，injectivity 来自 symmetric-algebra splitting；不是 dense-image argument。

**Quantum polynomial theorem。** 对独立 regional current algebras 用
$$
[\widehat Q_i[\alpha],\widehat Q_i[\beta]]
=i\hbar c_i(\alpha,\beta)1
$$
和跨区域对易关系。$C\hookrightarrow V_1\oplus V_2$ 经 PBW 给生成子代数的实际 embedding。其 central ideal
$$
\mathscr J_\gamma=\langle\widehat Q_C[\kappa]:\kappa\in K_\gamma\rangle
$$
是 two-sided $*$-ideal。PBW 与同一个 linear splitting 证明
$$
\boxed{\mathcal A^{\mathrm{adm}}_{C,\hbar}/\mathscr J_\gamma
\xrightarrow[\widehat Q_C[u]\mapsto\widehat Q_D[r u]]{\cong}
\mathcal A^{\mathrm{current}}_{D,\hbar}.}
$$
Kernel、image 和 section 均显式；$\hbar$-module 无 torsion，specialization 给上一 classical polynomial quotient。无限维的标签空间并不需要 cutoff：每个 polynomial 只有有限多个 labels，PBW 对整个 Heisenberg Lie algebra 适用。

也可独立使用 algebraic Weyl generators
$$
W(u)W(z)=e^{-i\hbar c_C(u,z)/2}W(u+z),
\quad W(u)^*=W(-u).
$$
商掉 $W(\kappa)-1$ 后，linear splitting 直接给 global Weyl algebra。这里是 algebraic/universal current statement；未选择 Fock state、partial trace 或一个 continuum Haar projector。

## 8. 恢复原 disk 的 modes 与真实演化

取 $s\in\mathbb R/2\pi\mathbb Z$，复化参数，定义 $J_n=Q_D[e^{ins}]$。Source-free flat disk 有 $J_0=0$。Sewing 后
$$
\boxed{\{J_n,J_m\}=-ikn\delta_{n+m,0},
\qquad[\widehat J_n,\widehat J_m]
=\hbar k n\delta_{n+m,0}1,
\qquad\widehat J_n^*=\widehat J_{-n}.}
$$
这是完整 smooth-smearing current algebra 的 Fourier description，未以有限 modes 定义 theorem。每个 global $J_n$ 都能按 §6 选择相同 seam interpolation，得到两个 regional currents 的真实 lift；端点不支撑独立 central generator。

约束上的 Hamiltonians 满足
$$
(H_1[q]+H_2[q])|_C
=\frac{k}{4\pi}\oint v(\partial_s\phi)^2ds=H_D,
$$
共同 $q$ 的贡献相消。Global evolution 为
$$
\phi(t,s)=\phi_0(s+vt)\quad\bmod\mathbb R,
\qquad J_n(t)=e^{-inv t}J_n(0).
$$
对任意 smooth $\phi_0$，取 smooth disk extension 随时间运输，置 $a=d\phi,A_t=\dot\phi$，便得到完整 bulk solution。其 regional restrictions 给合法 $q$ 与全部 endpoint compatibility；反向 matched solutions 满足同一全局 boundary transport，故恢复同一 dynamics modulo proper gauge。

量子层上，这个 smooth-label transport 是保持 cocycle 的 automorphism，故直接作用于所有 polynomial/Weyl currents，并与 sewing map 交换。若进一步选通常正能量 oscillator representation，$H_D^{\mathrm{normal}}=(v/k)\sum_{n>0}\widehat J_{-n}\widehat J_n$ 在有限 occupation-number vectors 的线性 span 上给相同 modes 的时演化；这项 representation choice 不参与上面的 algebra proof。这里未把一个无穷 quadratic sum 当作 algebraic current polynomial。

## 9. 三块区域与 corner 的最终角色

对两条互不相交、端点互异的 transverse chords，将 disk 切为三块。每个 internal chord 都有自己的 endpoint-zero real gauge space；保留所有尚未释放的 boundary charges，按相同 joint-value 与 smooth outer-jet 条件定义总 $C_{123}$。Boundary incidence signs 逐条相消，得到
$$
0\longrightarrow K_{\gamma_1}\oplus K_{\gamma_2}
\longrightarrow C_{123}\longrightarrow V_D\longrightarrow0.
$$
两种先后二块 sewing 都是除去其中一个直接和因子，再除另一个。Classical constraints 与 quantum central ideals 相加，与顺序无关；Hamiltonian 的 physical arc integrals 同样相加。因此该三块模型的 associativity 来自 regional data、incidence signs 和显式 kernel，未用 global algebra 定义 associator。含 interior junctions 或非平凡 cycles 的 cell decomposition 还需其实际 joint trace/cocycle 与 holonomy 数据，不由本证明自动覆盖。

| 数据 | 本模型 sewing 后的结论 |
|---|---|
| Geometric corners $P,Q$ | 它们仍是 cell presentation 的端点，在 global disk 中为普通物理边界点 |
| Joint traces | 控制参数值、history evolution 与 outer smooth jets，不能省略 |
| Regional boundary charges | 保留到共同 reduction；人工 seam charges 消失，整圆 physical currents 保留 |
| Central extension | 每个 regional closed boundary 有 current cocycle；diagonal seam 的两项严格抵消 |
| Dynamical corner sector | 给定 action 没有独立 point phase-space factor |
| Sharp endpoints/vertex operators | 不属于已证明的 smooth Hamiltonian current 类；point evaluation 的向量场一般是 distribution |

**Verified:** 正文给出完整 boundary action、CPS、实际 gauge trace group、history endpoint condition、continuum reconstruction、classical/quantum current domain、kernel/image、dynamics 和该三块 associativity。[verification record](<../numerics/ym circle and CS corner verification.md>) 区分 xAct/Mathematica 恒等式与上述无限维证明。

**Assumptions:** oriented disk、trivial source-free $U(1)$ sector、smooth transverse corners、上述 physical chiral action、joint smooth solution/history relation、保留 outer charges、只释放可延拓的 endpoint-zero cut group；observable class 为所声明的 finite polynomial 或 algebraic Weyl smooth currents。

**Not verified:** 任意 prescribed histories 的 IBVP、独立 arc endpoint current algebra、全 smooth functional algebra、sharp Wilson/vertex renormalization、非 Abelian CS、带 punctures/非平凡 bundle sectors、任意 Hilbert completion、spatial interior junctions、一般 Chern–Simons quantization/reduction theorem。此次结论验证的是 formalism 在这个真实 open-corner gauge 模型中的明确一层；不把它升级为后面这些模型的定理。
