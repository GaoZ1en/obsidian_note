# 非阿贝尔 CS：保持真实边界的形式粘合比较

**结果 NR1–NR3。** 对 H1 或 FC1 已实际构造的相对 smoothing 数据，存在逐阶可计算、连续且保持完整真实 exterior 的 formal L∞ inverse。下面构造它的每一阶、两侧 inverse homotopies 和相容 higher fillers。并非假设 linear smoothing 已经保持 Lie bracket。

**结果 NR4。** 在相同形式域内，这些 maps 给 continuous finite-degree polynomial dg algebras 的比较，以及 CS integral BV pairing/action 的相对 homotopy correction。这里没有计算一般非阿贝尔 Hamiltonian observable 的独立 presentation，也没有由 commutative cohomology 等价推出 quantum/Poisson 产品等价。

## 1. 真实边界条件对非线性项是否封闭

使用 κ=k/(2π) 作为原 CS normalization。另用 λ 记 formal interaction parameter；不将它与 κ 或其他 YM note 的 coupling 混淆。取有限维 quadratic Lie algebra 𝔤，invariant nondegenerate pairing 为 ⟨ , ⟩。在共同 trivial frame 中，未移位的 bulk complex 是 Ω(M,𝔤)，differential 为 d，bracket 为 wedge 与 Lie bracket 的乘积。

真实 wall 的 graded subspace 仍是
$$
L_W^0=0,\qquad
L_W^1=\{f(t,s)(ds+v\,dt):f\in\mathfrak g\},\qquad
L_W^2=\Omega^2(W,\mathfrak g).
\tag{1.1}
$$
它对 d 和 bracket 都封闭：两个 degree-one wall forms 含同一个 one-form 因子，故 bracket 为零；degree-zero wall ghost 为零；其他可能非零的高阶 wedge 超过 wall dimension。Caps 与共同 rim 的 matching 也由实际 form pullbacks 定义，因此 L、G=G_L⊗𝔤 与 P=P_𝒢,L⊗𝔤 是 DGLA，i:G→P 是 strict DGLA map。

这项检查保留了原来的 v 与 proper policy。例如 ordinary connection 的 wall curvature 是
$$
F_{ts}=\partial_ta_s-\partial_sA_t+\lambda[A_t,a_s]
      =(\partial_t-v\partial_s)a_s
\tag{1.2}
$$
于 A_t=v a_s、v 为固定常数时。不能因此把非零 wall gauge parameters 也当成 proper ghosts。

为明确全部 suspension signs，令 E=L[1]，σ:L→E 的 degree 为 −1，采用
$$
q_1(\sigma x)=\sigma\,dx,\qquad
q_2(\sigma x,\sigma y)=(-1)^{|x|+1}\sigma[x,y],\qquad
Q=q_1+\lambda q_2.
\tag{1.3}
$$
Q 为 reduced graded symmetric coalgebra 的 degree-one coderivation。q₂ graded symmetric；Leibniz 与 Jacobi 分别给 Q² 的 arity-two 和 arity-three 条件。Taylor-series evaluation 在 diagonal 上包含 1/n!，故 form-degree-one classical field 满足
$$
dA+\frac{\lambda}{2}[A,A]=0.
\tag{1.4}
$$
Functions 使用 [O1](continuous_observables.md) 的 continuous dual convention。将 (1.3) 转成原 minimal-field coordinates 时，必须连同该页的 degreewise sign identification 运输 Q、action 与 pairing；不能把 suspension coefficients 直接读成未经转换的分量 BRST signs。下文只用已固定的 coderivation/Hom signs，及整套运输后的 BV Cartan convention。

本页在 formal λ-adic category 中工作。每一阶系数是连续 multilinear map，λ=0 是已有 Abelian comparison；λ=1 的 analytic convergence 不是前提或结论。

## 2. 输入的连续同伦资料

[H1](relative_homotopy.md) 和 [FC1](finite_cut_coherence.md) 给
$$
1-ip=d_PH_P+H_Pd_P,\qquad
1-pi=d_GH_G+H_Gd_G,
$$
$$
H_Pi=iH_G,\qquad r_Gp=r_P,\qquad
r_PH_P=r_GH_G=0.
\tag{2.1}
$$
p 只是 chain map；pi 一般不是 1。最后一条 Hi=iH_G 来自 H_P 实际保持 smooth subspace，不能从任意抽象 homotopy equivalence 猜出。

一个局部 bracket defect 已足够否定 naive nonlinear transfer。在 H1 的 (x,y) corner toy model 中
$$
pf=f(0,y)+f(x,0)-f(0,0).
$$
取 [T_1,T_2]=T_3，则
$$
p[xT_1,yT_2]-[p(xT_1),p(yT_2)]=-xyT_3\ne0.
\tag{2.2}
$$
(2.2) 是 unrestricted complex 的例子；xT₁ 并不是 y=0 wall 上的 proper ghost。为了检验实际 physical domain，在远离 temporal caps 的 product corner chart 中改取 closed one-forms A=(dx+vdt)T₁、B=y dy T₂。二者都满足 y=0 上 A_t=vA_x；同一 relative p 给
$$
p[A,B]-[pA,pB]=-y\,dx\wedge dy\,T_3
=d(-xy\,dy\,T_3).
\tag{2.3}
$$
这里 p[A,B]=vy dt∧dy T₃，而 [pA,pB] 还含 y dx∧dy T₃。可将 potentials x+vt 与 y²/2 在更大的 collar 中平滑延拓；只需在该局部测试 patch 保留所示值，真实 wall 的 chiral condition 由 boundary primitive 沿 s+vt 运输实现。
括号缺陷有一个保持 y=0 pullback 为零的具体 homotopy correction；它不是零。下面的统一递归包含全部 degrees、Koszul signs 与更高修正，不以 (2.3) 的一个 particular primitive 代替完整 Taylor map。

## 3. 把逆映射问题改成可收缩 kernel 中的提升

引入 auxiliary interval u∈[0,1]；它不是物理时间 t。定义 strict DGLA
$$
Z=\{(g,a(u)+du\,b(u)):
 a(0)=ig,\quad r_Pa(u)=r_Gg,\quad r_Pb(u)=0\}.
\tag{3.1}
$$
Path differential 的 du 写在左侧：
$$
d_Z(a+du\,b)=d_Pa+du(\partial_ua-d_Pb).
\tag{3.2}
$$
还包含 g 分量的 d_G。Bracket 是 tensor-product DGLA bracket。条件 (3.1) 对 differential/bracket 封闭，故 pr_G:Z→G 和 ε=ev₁:Z→P 是 strict maps。Z 取 C∞ auxiliary-parameter Fréchet topology。

置 F=ip，定义一个实际 continuous chain section
$$
L(y)=\bigl(py,\ (F+u(1-F))y+du\,H_Py\bigr).
\tag{3.3}
$$
εL=1，r 的 path 恒定；du chain equation 正是
(1−F)−d_PH_P=H_Pd_P。此处完全不需要 pi=1。

### 3.1 Endpoint kernel 的显式 contraction

令 K=ker ε。对 K 中的元素，a(1)=0，又因 exterior path 恒定，g∈G_rel=ker r_G，a、b 的值在 P_rel=ker r_P。先考虑
$$
C_f^n=G_{\rm rel}^n\oplus P_{\rm rel}^{n-1},\qquad
D_f(g,h)=(d_Gg,ig-d_Ph).
$$
由 (2.1)，
$$
k_f(g,h)=(H_Gg+ph,-H_Ph),\qquad
D_fk_f+k_fD_f=1.
\tag{3.4}
$$
交叉分量使用 H_Pi=iH_G。置 k_f'=k_fD_fk_f，则仍有 contraction identity 且 (k_f')²=0；可由 D_fk_f+k_fD_f=1 直接展开。

定义 Whitney maps
$$
\pi_W(g,a+du\,b)=\left(g,-\int_0^1b(u)\,du\right),
$$
$$
j_W(g,h)=\bigl(g,(1-u)ig-du\,h\bigr).
\tag{3.5}
$$
它们与 differential 交换，π_Wj_W=1。再令
$$
\kappa_W(g,a+du\,b)=
\left(0,\int_0^u b(v)\,dv-u\int_0^1 b(v)\,dv\right).
\tag{3.6}
$$
其 path 没有 du 分量，在两个 endpoints 为零。Fundamental theorem of calculus 给
$$
d_Z\kappa_W+\kappa_Wd_Z=1-j_W\pi_W,\qquad
\kappa_Wj_W=\pi_W\kappa_W=\kappa_W^2=0.
$$
故
$$
\boxed{h_K=\kappa_W+j_Wk_f'\pi_W,\qquad
d_Zh_K+h_Kd_Z=1\text{ on }K,\qquad h_K^2=0.}
\tag{3.7}
$$
所有 maps 都是固定 continuous spatial maps 与有限 auxiliary integration 的组合，并且留在 true-exterior-zero kernel 内。这是 NR1；没有把“kernel acyclic”列成未构造的成功假设。

## 4. 每一阶 L∞ map 的实际递归

统一按 (1.3) 移位。对 homogeneous multilinear map T，使用
$$
\delta_{\rm Hom}T=q_{1,Z}T-(-1)^{|T|}Tq_{1,P}^{(n)}.
\tag{4.1}
$$
q_{1,P}^{(n)} 为 tensor/symmetric power differential，含全部 Koszul signs。

设 S₁=L。已经构造 S₁,…,S_{n−1} 时，令 S^{<n} 为具有这些 corestrictions、较高 corestrictions 暂取零的 coalgebra map，取其 arity-n defect
$$
R_n=\bigl(Q_ZS^{<n}-S^{<n}Q_P\bigr)_n.
\tag{4.2}
$$
下标 n 表示 projection 到 Z[1] 的 Taylor corestriction；coalgebra partitions/unshuffles 按 (1.3) 的 symmetric convention，不另猜 factorial。于是
$$
\varepsilon R_n=0,\qquad
\delta_{\rm Hom}R_n=0,\qquad
\boxed{S_n=-h_KR_n.}
\tag{4.3}
$$
第一式因为 ε 是 strict 且 εS₁=1、εS_m=0 对 m>1。第二式由 Q_Z²=Q_P²=0 以及所有较低 arities 的 morphism identities 得到。对于 closed degree-one R_n，(3.7) 给
δ_Hom(h_KR_n)=R_n，故加入 S_n 正好消掉 defect。Induction 完成所有 arities。

每个 S_n 是 λ^{n−1} 乘一个 continuous n-linear map；每一步只用有限 partitions、原 Lie bracket、p/H 与 auxiliary integrations。因而在任意固定 λ 阶只有有限计算，无须无穷级数在 C∞ seminorms 中收敛。

定义
$$
p_\infty=\operatorname{pr}_G S:P\longrightarrow G.
\tag{4.4}
$$
其 linear term 是原 p。S 的 path 分量给一个真正的 Q-homotopy
$$
ip_\infty\simeq 1_P
\quad\text{over fixed true exterior}.
\tag{4.5}
$$
每一阶 higher correction 的 exterior trace 为零。这是 NR2。

### 4.1 非零二阶、三阶回测

执行检查不只验证 Q²=0。取有限 commutative DGA
$$
A=\mathbb Q[x,dx]/(x^4,x^3dx,(dx)^2),\qquad dx=d(x),
$$
与 𝔰𝔲(2) 的 rational structure constants 作 tensor，得到 21 个 homogeneous basis elements。取 G=P=A⊗𝔤、i=1，p 为 constant projection，H(x^jdx)=x^{j+1}/(j+1)。辅助 path 的 endpoint kernel 有直接 interval integration contraction。

用 (4.2)–(4.3) 实际生成 S₂、S₃，检查所有 441 个 basis pairs、9261 个 triples 的 morphism identities，并另行确认二阶与三阶 defects/corrections 确实非零。更小的 x³=0 模型在第三阶恒为零，已判为不足以验证非平凡三阶并保留诊断记录。

这些是有限 graded-algebra 验证，不能替代 §3 的 Fréchet construction 或 §4 的全阶 induction。原始输入与结果见 [验证记录](checks/nonlinear_finite_cut_verification.md)。

## 5. 另一侧逆、辅助选择与高阶相容

Constant-path inclusion C:G→Z 为 C(g)=(g,ig)。S i 与 C 提升相同 endpoint i，但不一定 raw 相同。以下过程给它们之间的 L∞ homotopy，也适用于任何两份提升同一 endpoint map 的 maps。

在新的 parameter interval 上，逐 arity 延拓两端的 Taylor coefficients，并保持 ε 的共同值。先用线性插值延拓其零形式部分；若已有更高 parameter-form boundary data，则使用 simplex faces 的 ordinary joint form extension。当前 morphism defect 在两端（或全部指定 faces）的 pullbacks 为零、值在 K。较低 arities 已解时该 defect δ_Hom-closed。应用 −h_K 于它即可消除 defect，又不改变 endpoints/faces，因为 h_K 只作用在 K 因子。

包含 parameter differential 时，h_K 按 tensor Koszul convention 作用，仍满足 d_total h_K+h_Kd_total=1。这保证 arity-one 的 parameter derivative 也被修正；并未把两个 chain maps 的裸线性插值当成 Q-homotopy。

以此得到 p_∞i≃1_G。再在 parameter triangle、tetrahedron 及更高 simplex 上，给定相容 face maps 后使用相同 extension/correction，获得 higher fillers。只需有限个 faces，每一 arity 的 extension 和 correction 连续。所有 fillers 保持 true exterior。

这是 NR3：固定 endpoint lifting problem 的选择空间有上述显式 coherent fillers。对于有限 cut refinements，FC2 将两个比较放进同一 refined endpoint problem，再应用这里的构造。因此确实得到所声明有限图式的 coherence；没有宣称任意 physical closure 或任意量子 associator 也在这个 acyclic kernel 中。

## 6. 实际 action/pairing 的相对比较

在原 transgression coordinates 中，非阿贝尔 bulk BV action 写为
$$
S_M=\kappa\int_M\left(
\frac12\langle\mathbb A,d\mathbb A\rangle+
\frac{\lambda}{6}\langle\mathbb A,[\mathbb A,\mathbb A]\rangle
\right),
\tag{6.1}
$$
并保留与原模型相同标签的 physical wall polarization/corner terms。整套 graded conventions 按 §1 运输；普通 physical A sector 的 quadratic normalization 和 curvature (1.4) 不变。Invariant pairing 与 graded Leibniz/Jacobi 给 AKSZ bulk identity；新增 cubic term 不含 integration by parts，不改变 kinetic boundary potential。其 normalization 可由 variation 得到 κ⟨δA,dA+λ[A,A]/2⟩。

因此在真实匹配场空间上，按 CD2 相加区域 actions、integral BV pairings 与 surviving-cap defects；共同 full superfield traces 使全部内部 terms 抵消。特别地
$$
i^*\omega_P=\omega_G,\qquad i^*S_P=S_G,\qquad
\iota_Q\omega_P=\delta S_P-r^*\beta_{\rm ext}.
\tag{6.2}
$$
这里 β_ext 指 surviving exterior contribution，已在允许的 physical wall variations 上限制。该 BV pairing 的弱非退化仍由各 cell 内 compact support tests 证明，不是 ordinary CPS 的非退化断言。

可以把反向 pairing correction 也实际构造出来。令 ℋ:P×T[1]I→P 为 (4.5) 的 Q-homotopy，起点为 ip_∞、终点为 1。只对 P 的 field variables 作 δ，展开 relative pullback
$$
\mathcal H^*\omega_P=\omega_u+du\,\eta_u,\qquad
B=\int_0^1\eta_u\,du.
\tag{6.3}
$$
B 是 degree −2 的 closed field-space two-form。ℋ 在 exterior 上恒定，故 exterior defect 没有 du 分量。将 Q+d_u 作用于 (6.3)，按 du 左置 convention 比较 du coefficients，得到
$$
\partial_u\omega_u=\mathcal L_Q\eta_u,\qquad
\boxed{\omega_P-p_\infty^*\omega_G=\mathcal L_Q B,\quad \delta B=0.}
\tag{6.4}
$$
这是 actual homotopy 的积分，不是假设 transferred map cyclic。

相减 (6.2) 与其 pullback 后，boundary terms 因相同 r 抵消。使用同一 graded Cartan convention 的
ι_Qℒ_QB=−δ(ι_Qι_QB)/2，且两 action 在零场为零，给
$$
p_\infty^*S_G=S_P+\frac12\iota_Q\iota_Q B.
\tag{6.5}
$$
符号对应 (6.4) 中的减号；若把 correction 定义成 −B，(6.5) 的符号也要随之改变。这个 Cartan implication 与相对版本见 [Cattaneo–Mnev §1.1–1.2](https://arxiv.org/html/2208.11211v1#S1.SS1)。该引用支持 compatibility implication，本文 §3–5 才提供这里所需的 actual maps。

## 7. 哪个 observable complex 已经比较

定义
$$
\mathcal O_{\rm poly}(E)
=\bigoplus_{m\geq0}
\operatorname{Hom}_{\rm cont}
\left(\widehat{\operatorname{Sym}}_\pi^mE,\mathbb R\right),
\qquad
\mathcal O_{\rm poly}(E)[[\lambda]].
\tag{7.1}
$$
每个 λ coefficient 是有限次数 continuous polynomial，次数不要求在所有 λ 阶有统一上界。q₂ 的作用将次数增加一并乘 λ；p_∞ 的 higher Taylor maps 也满足 λ^{n−1} 阶数，因此 differential、products 与 pullbacks 在 (7.1) 中都定义良好。

对 function f，将 homotopy pullback 展开为 f_u+du\,g_u，并取 Kf=∫g_u du。Q-morphism identity 逐项给
$$
f_1-f_0=QKf+KQf.
\tag{7.2}
$$
§5 给两侧 homotopies，故 i* 与 p_∞* 在 (7.1) 的 cohomology 上互逆；它们本身保持 commutative products。结合 (6.2)–(6.5)，得到指定 formal function category 中的 relative weak BV comparison，记为 NR4。

(7.2) 没有计算非阿贝尔 H⁰ 的 generators/relations，也不表示所有 continuous covectors 都在弱 BV pairing 的可逆域。要得到一般 nonlinear Hamiltonian/Poisson observable reconstruction，仍需像 O3 一样在 source 与独立 target 上各自定义并验收 tangent lifts、products 与动力学；local/microcausal/quantum function classes 也不由 (7.1) 覆盖。

## 8. Actual arrows 与仍未实现的范围

对于 classical formal Maurer–Cartan input，path 的 du 分量满足 usual infinitesimal gauge-flow equation，且其 exterior trace 为零。按 λ 阶解这个辅助 ODE，给从 piecewise representative 到 smooth representative 的实际 formal proper arrow。原始 field、arrow 和 stabilizers 全部保留；不是把 P 或 G 替换成 gauge quotient。

这一结论只涉及 Lie-algebra/formal gauge data。后续 [ND](nonabelian_disk_observables.md) 另在 source-free SU(2) disk 上构造 finite classical fields/arrows 与 action/CPS 比较，不依赖这份 λ-series 的收敛；它仍未给 nonformal off-shell BV inverse。它不决定 compact group 的 winding components、bundle cocycles、finite gauge transformations 的 global extension 或 holonomy singular strata。也没有给 λ=1 的收敛半径。由形式恒等式跨到这些结论会重遇 A12–A14/A18；这些目标继续开放。

本构造在已有明确 P 与 exterior realization 上解决 nonlinear comparison。它还没有给任意非阿贝尔 theory 的 independently computable full admissible source domain，也没有证明 arbitrary reopening closure。CS 无局域传播，故不能用本页替代 G6 的四维 SU(2) propagating benchmark。

**Verified:** (3.3)–(3.7) 有显式 continuous contraction；(4.2)–(4.3) 有全 arity induction；§5 有 relative parameter extension/correction；§6–7 有同伦拉回证明。Sage 32 项、Mathematica 24 项最终检查通过，见 [记录](checks/nonlinear_finite_cut_verification.md)。

**Assumptions:** 实际 (2.1)、finite-dimensional quadratic 𝔤、共同 trivial frame、(1.1) 的 boundary sub-DGLA、fixed true exterior、formal λ-adic finite-polynomial coefficient domain、所列完整 graded convention。

**Not verified:** 非形式收敛、compact/bundle/large-gauge completion、一般 nonlinear Hamiltonian presentation、quantum products/anomalies、propagating model 及任意 boundary realization。本文是 [完整目标](programme.md) 的实质部分结果，不能据此标记 G1–G6 完成。
