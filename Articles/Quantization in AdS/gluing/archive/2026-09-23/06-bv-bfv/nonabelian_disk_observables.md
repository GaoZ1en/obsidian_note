# 有限 SU(2) disk：全场比较、holonomy 与 Hamiltonian observables

**ND1。** Source-free disk 的实际 current 域是 trivial-holonomy loops；零平均不是充分条件。每条合法 loop 都有 filling，但不存在为所有 based loops 连续选择 disk filling 的全局 section。

**ND2。** 对一个 chord 的完整区域 flat fields/arrows，可以直接构造有限 SU(2) 的相对 smoothing functor、两侧 natural isomorphisms，以及 action/CPS 比较。这是 ordinary classical solution/history groupoids 的结果，保留实际 finite gauge maps；不依赖把 NR 的 formal λ-series 在 λ=1 求和。

**ND3。** 源与独立目标各自从完整 CPS 定义的 smooth Hamiltonian algebras 同构，包含非线性 current brackets 和物理能量。下文没有把 full fields 替换成 boundary quotient，也没有由这个 classical theorem 宣称已经计算全局 BV function cohomology。

## 1. 约定、全场对象与真实源域

沿用 [原 SU(2) 模型](<../04-observable-algebra/models/gauge/SU(2) Chern-Simons open-chord sewing.md>) 的 right gauge convention：
$$
A^u=u^{-1}Au+u^{-1}du,\qquad F_A=dA+A\wedge A,\qquad
\langle X,Y\rangle=-\operatorname{tr}_{\mathbf2}(XY),\quad
\kappa=\frac{k}{2\pi}>0.
\tag{1.1}
$$
M=I×D，D 为 disk，一个 neat chord 将其分成 M₁、M₂；bundle 平凡且无 Wilson sources。真实 wall 满足 A_t=v a_s，v>0；temporal caps 保留但不固定数值。Proper maps 在真实 wall 为单位元。

G_cl 保留全部 smooth flat A、实际 proper maps、source/history 资料。P_cl 保留两片完整 flat A_i：seam 上的 full tangential one-form 相等，真实 exterior 的 assembled traces smooth/joint，满足同一个 wall realization。实际来源仍是先共用 q、再在两片 action 之和中 release q；response matching 给 a 的相等，q 给 A_t 的相等。所有 artificial histories 和变换见证均保留。Source arrows 是具有共同 seam trace、smooth joint true-exterior restrictions、wall 上为 1 的 piecewise smooth gauge maps；在本 chord 模型中，保留 matching fields 的 proper pair 在 endpoint P 归一化后必有共同 seam trace。

在各片上解 A_i=g_i^{-1}dg_i。以初始 chord endpoint (0,P) 固定 g_i=1；区域可取 convex chart 中的 radial parallel transport，矩阵 ODE 对 smooth coefficients 连续、光滑依赖。Seam pullbacks 相同使 g₁、g₂ 在整个 connected seam 上相同。因此得到共同的 piecewise smooth group-valued g_C。Exterior A traces 光滑使其 g_C traces 同样光滑；wall 方程成为
$$
\partial_tg_C=v\partial_sg_C,\qquad
g_C(t,s)=g_C(0,s+vt).
\tag{1.2}
$$
这里 g 是已有 full field 的唯一 based primitive，并不是从一个 boundary current 选出的 filling。

## 2. 精确 holonomy 域及其切空间

给初始 current j(s)，令 g_j 解
$$
g_j'=g_jj,\qquad g_j(0)=1.
$$
定义
$$
\mathcal J_0=\{j\in C^\infty(S^1,\mathfrak{su}(2)):g_j(2\pi)=1\}.
\tag{2.1}
$$
它等价于 Hol(∂_s+j)=1；usual column transporter 是 g_j^{-1}。ODE 的周期性使 g_j 的全部 jets 在 0、2π 相同。由于 π₁(SU(2))=0，每条这样的 loop 可延拓为 smooth disk map，进而给 full flat field。时间依赖可通过 disk 上延拓 v∂_s 的 smooth vector field 的 flow 实现 (1.2)。

**零平均反例。** 取 T_a=−iσ_a/2，令
$$
j_a(s)=a(\cos s\,T_1+\sin s\,T_2),\qquad \oint j_a\,ds=0.
$$
准确解为
$$
g_a(s)=e^{s(aT_1+T_3)}e^{-sT_3},\qquad
g_a(2\pi)=-e^{2\pi(aT_1+T_3)}.
\tag{2.2}
$$
a=√3 时 g_a(2π)=−1，故它不是 source-free disk 的 current。小 a 时
$$
g_a(2\pi)=1+\pi a^2T_3+O(a^3),
\tag{2.3}
$$
说明非线性条件在二阶已经出现，不能沿用 Abelian 的零平均 source 域。

对 j∈𝒥₀，写 η=δj、ξ=g_j^{-1}δg_j，则
$$
D_j\xi=\eta,\qquad
D_j=\partial_s+[j,\cdot],\qquad
\frac{d}{ds}(\operatorname{Ad}_{g_j}\xi)
=\operatorname{Ad}_{g_j}\eta.
$$
所以
$$
T_j\mathcal J_0
=\left\{\eta:\oint\operatorname{Ad}_{g_j}\eta\,ds=0\right\},\qquad
\ker D_j=\{\operatorname{Ad}_{g_j^{-1}}c:c\in\mathfrak{su}(2)\}.
\tag{2.4}
$$
Holonomy differential 满射：取 η(s)=Ad_{g_j(s)^{-1}}c f(s)，f 支撑于一个小弧且积分为 1。于是输出 c。其 kernel 上有实际 continuous right inverse
$$
R_j\eta(s)=\operatorname{Ad}_{g_j(s)^{-1}}
\int_0^s\operatorname{Ad}_{g_j(u)}\eta(u)\,du.
\tag{2.5}
$$
它取 based ξ(0)=0；由 (2.4) 保证周期性。也可减去 transported average 选择另一代表。Parallel kernel 保留，不能因使用 R_j 而删除。

## 3. 有 filling，不代表有全局连续 filling section

令
$$
\mathcal E=\{g:D\to SU(2)\text{ smooth}:g(P)=1\},
\qquad r:\mathcal E\to\Omega SU(2)
\tag{3.1}
$$
为 boundary restriction。𝔈 可缩：将 disk 连续光滑地收缩到固定 P，并在 g 上预合成。反之
$$
\pi_2(\Omega SU(2))=\pi_3(SU(2))=\pi_3(S^3)=\mathbb Z.
\tag{3.2}
$$
第一个等式来自 based loop/suspension adjunction，最后一个是 degree 对 sphere self-maps 的分类；smooth mapping spaces 与连续 maps 有相同的这些 homotopy groups，可作 relative smooth approximation。

若 r 有连续 section，则 identity on ΩSU(2) 经可缩的 𝔈 分解，诱导的 π₂ map 必为零，与 (3.2) 矛盾。因此不存在这种 global section。

**修复。** 每个固定 filling 周围有 smooth local sections：nearby boundary loop 与原 loop 的比值处于 identity chart，取局部 logarithm、做连续 Lie-algebra boundary extension，再 exponentiate。下面从已有 g_C 出发构造 smoothing；Hamiltonian tangent lifts 也只需线性的 Lie-algebra extension。这两件事均不需要 (3.1) 的 global section。

## 4. 有限群值 smoothing 与实际 arrows

使用 H1 的 scalar relative smoothing p_ε，将 normal cutoff 的支撑宽度取为 ε，真实 exterior extension E 固定。对 piecewise smooth scalar/vector functions，
$$
rp_\epsilon=r,\qquad
\|p_\epsilon f-f\|_{C^0}
\leq C\epsilon\|f\|_{C^1_{\rm pw}}.
\tag{4.1}
$$
证明直接来自 H₀df=χ(f−f|_{seam})，及固定 collar/inclusion–exclusion extension 的 C⁰ bound。它不要求 p_ε 是 projection。每个 ε>0 的输出是 global smooth；对 ε 与输入的联合依赖光滑。

把 SU(2) 视为单位四元数 S³⊂ℝ⁴。选择 smooth positive ε(g)，使右侧小于 1/2。例如固定几何的 Sobolev estimate 给 C¹_pw≤C₁H⁴_pw，可取
$$
\epsilon(g)=\frac{\epsilon_0}
{1+\sum_i\|g_i\|_{H^4(M_i,\mathbb R^4)}^2},
\tag{4.2}
$$
并以 (4.1) 的已固定几何常数选足够小 ε₀。分母是 Fréchet coordinates 上的 smooth quadratic functional；ε 局部有正下界。

定义
$$
\widetilde g=\frac{p_{\epsilon(g)}g}{|p_{\epsilon(g)}g|},\qquad
g_\tau=\frac{(1-\tau)g+\tau p_{\epsilon(g)}g}
{|(1-\tau)g+\tau p_{\epsilon(g)}g|},\quad 0\leq\tau\leq1.
\tag{4.3}
$$
分母至少为 1/2，所以全部 maps 有定义。g_τ 仍 piecewise smooth；g₁=ĝ 是 global smooth；它们在整个真实 exterior 上等于原 g，因为 rp_εg=rg 已在 S³ 上。对于 smooth 输入，整条 path 也 smooth。

令
$$
p_{\rm cl}(A)=\widetilde g_A^{-1}d\widetilde g_A,\qquad
h_A=g_A^{-1}\widetilde g_A.
\tag{4.4}
$$
则 p_cl(A)=A^{h_A}。Path g_A^{-1}g_{A,\tau} 将 h_A 与 identity 在全 exterior-relative group 中相连。故保留 wall、caps 和相同 boundary history，且只运输 released artificial seam data。没有删除原 A 或这条 arrow。

对任意实际 source gauge arrow u:A→A^u，定义
$$
p_{\rm cl}(u)=h_A^{-1}u\,h_{A^u}.
\tag{4.5}
$$
Proper u 在 basepoint 为 1，故 g_{A^u}=g_Au；(4.5) 等于 ĝ_A^{-1}ĝ_{A^u}，确实是 global smooth map。它保持 u 的全部 exterior restriction，并严格满足 identity/composition。h_A 给 1_P 与 i p_cl 之间的 natural isomorphism；smooth inputs 上的同一公式给另一侧 natural isomorphism。

这证明 full classical groupoids 的等价。Finite gauge maps、其 components 与 automorphisms 都随实际 functor 保留。比较 arrow h_A 本身处于 exterior-relative identity component；没有把其他 components 重新定义成不存在。

## 5. Action 与完整预辛形式

对 (4.3)，A_τ=g_τ^{-1}dg_τ 始终 flat，满足同一 wall 条件，且整个 exterior trace 固定。区域 action 的 first variation 沿该 path 只有 EOM 与 boundary terms：前者为零，后者由相同 exterior 及 seam cancellation 为零。因此
$$
p_{\rm cl}^*S_G=S_P.
\tag{5.1}
$$
这一结论使用 actual path，不需把任意 large gauge transformation 的 CS action shift 宣称为零。

写 ξ=g^{-1}δg。区域 action 导出的完整 Cauchy 预辛形式相加后，seam 项因 common g、ξ traces 抵消：
$$
\Omega_C(X,Y)=-\kappa\oint\langle\xi_X,D_j\xi_Y\rangle ds.
\tag{5.2}
$$
p_cl 保持外部 g 及其 variations，故 p_cl*Ω_G=Ω_C，且 i*Ω_C=Ω_G。Kernel 是 δj=0 的方向：减去 D_A-parallel 参数后可用 wall-zero proper parameter 表示。所有 kernel vectors 仍留在 full space。

ND2 是 ordinary solution/history、actual arrows、action 与 CPS theorem。它没有提供 nonformal off-shell BV ghost/antifield map；后者仍由 NR 给形式邻域中的构造。非平凡 principal bundles、annulus transitions 与 puncture sectors 也不在 disk 的上述 parametrization 内。

## 6. 从两侧自身 CPS 定义 observables

在 G_cl、P_cl 上各自定义 smooth Hamiltonian functions：F 光滑且有 smooth tangent vector field X_F，满足 ι_XΩ=−δF。Vector field 的 proper ambiguity 保留。Source 的定义使用自己的区域 Ω_C，未用 target image。

Current map 的 fibers 恰为实际 wall-proper orbits。其 group 连通：I×D 相对 I×∂D 收缩到 D 相对 ∂D，components 为 π₂(SU(2))=0；relative smoothing 给相同的 piecewise 结论。因而 Hamiltonian functions 沿 kernel 恒定后，在整个 fiber 上恒定。这里没有断言该 group 可缩；例如相关 higher homotopy 仍非平凡。

(3.1) 的 local sections 足以使 descended function 在 𝒥₀ 上光滑。独立定义其 regular Hamiltonian 类 𝓗(𝒥₀)：存在光滑依赖 j 的 smooth loop gradient γ_F，满足
$$
dF_j(\eta)=\oint\langle\gamma_F(j),\eta\rangle ds,\qquad
\eta\in T_j\mathcal J_0.
\tag{6.1}
$$
γ_F 只确定到 ker D_j；这是 cotangent presentation 的 redundancy，不能改成 field quotient。可由 transported-average projection 选代表，但括号不依赖此选择。

由 (5.2)，
$$
X_F^j=\kappa^{-1}D_j\gamma_F,\qquad
\{F,G\}=\kappa^{-1}\oint
\langle\gamma_F,D_j\gamma_G\rangle ds.
\tag{6.2}
$$
给任意 γ_F，用 ξ_W(t,s)=γ_F(j)(s+vt)/κ，作固定 smooth Lie-algebra collar extension e_W；令
$$
X_FA=D_A(e_W\xi_W).
\tag{6.3}
$$
这是 full global field 的实际 tangent lift。源侧将同一个由 cut geometry 构造的 extension 限制到各片：seam 参数一致，D_Aξ 的 traces 因 matching A 一致，且保持 wall condition。Extension 只处理 Lie-algebra functions，未选择 group-valued filling。

反向若 full-space Hamiltonian lift 存在，其 boundary parameter 在每个 local section 上给 (6.1)。不同 sections 得到的 gradients 相差 ker D_j；用 γ→γ−Ad_{g_j^{-1}}(∮Ad_{g_j}γ/(2π)) 选 transported-average-zero 代表，就得到互相一致的 smooth local functions，因而粘成 global γ_F。这个步骤只使用 ODE 给出的 boundary g_j，没有选择 global disk filling。因此两侧都恰好得到这个独立定义的 regular class。

乘法闭包直接成立；括号闭包来自 closed Ω 的 Cartan identity，X_{ {F,G} }=−[X_F,X_G]。它仍是 smooth tangent lift；(2.5) 给其 smooth boundary primitive。由此有
$$
\mathcal H(P_{\rm cl})\xrightarrow{i^*}\mathcal H(G_{\rm cl})
\cong\mathcal H(\mathcal J_0),
\tag{6.4}
$$
kernel 为零，image 为完整声明的 target，保持 products、Poisson bracket 和动力学。Inverse 是 p_cl*；(4.4) 是 proper arrow，故 Hamiltonian functions 沿它不变。

对 currents 与能量，
$$
Q[\alpha]=\kappa\oint\langle\alpha,j\rangle,\qquad
\{Q[\alpha],Q[\beta]\}
=-Q[[\alpha,\beta]]+\kappa\oint\langle\alpha,\beta'\rangle,
$$
$$
H_v=\frac{\kappa v}{2}\oint\langle j,j\rangle,\qquad
X_Hj=vj'.
\tag{6.5}
$$
Bracket 的 Lie sign 来自 invariant pairing，而非照抄 opposite convention。Holonomy 在 chiral transport 下仍为 1。

## 7. 对完整目标的意义与限制

ND1–ND3 将这个 disk 的 ordinary classical comparison 从形式邻域推进到 actual finite SU(2)，并处理完整 smooth Hamiltonian class。全局 filling section 的反例被局部 sections、已有 bulk primitive 和 Lie-algebra tangent lifts 修复，没有删去合法 currents。

这仍不等于全局 BV cohomology theorem。Classical Hamiltonian functions 是否都有所需 off-shell BV representatives、其完整 cochain kernel，以及对 nonformal Q 的函数类比较，还需要另外证明。任意 fixed-cap realization、annulus/self-sewing、nontrivial bundle、quantum BV pushforward 和 propagating models 继续保留。

**Verified:** exact holonomy/ODE、二阶 defect、D_j primitive/kernel、current sign 与 quaternion normalization 有 Mathematica 检查；arrow functor identities 有 Sage 检查。Continuity、拓扑反例、full field equivalence 与 (6.4) 由上述解析构造证明。

**Assumptions:** 一个 neat chord、source-free trivial SU(2) disk cylinder、相同 smooth exterior traces、固定 chiral wall、unfixed caps、完整 proper maps；κ>0。

**Not verified:** 上述范围以外的 topology、全局 off-shell BV comparison、quantum/propagating completion。实际执行记录见 [本轮验证](checks/global_quantum_verification.md)。
