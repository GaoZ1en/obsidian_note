# 连续 BV 多项式、手征 current 与 Hamiltonian sewing

**结果。** 在 [CD1 的 physical disk domain](corner_descent.md) 上，可以完整计算连续有限次数多项式 BV cohomology。它比原有限 smooth-current polynomial algebra 大；其中由自身 CPS 定义的 Hamiltonian 多项式类仍是 Poisson algebra，包含实际能量，并在同一个 chord sewing 下重构。下面给出的 cohomology 计算不替代完整 fields/arrows，也不产生量子乘积。

## 1. 先固定实际函数类

对实 graded Fréchet complex E，定义
$$
\mathcal O_{\rm poly}(E)=
\bigoplus_{m\geq0}
\operatorname{Hom}_{\rm cont}(\widehat{\operatorname{Sym}}^m_\pi E,\mathbb R).
\tag{1.1}
$$
即连续的有限次数 graded polynomials，系数是联合连续 multilinear forms。次数有限，绝不要求一个多项式只依赖有限个 linear probes。后者是较小的 cylindrical polynomial algebra。

微分采用 Hom convention：齐次线性坐标 ℓ 的
$$
Q\ell=-(-1)^{|\ell|}\ell d_E,
\tag{1.2}
$$
并作 graded derivation 延拓。为与原 component convention QA=dc、QA^+=dA 逐项对应，将 ghost degree q 的线性生成元乘
$$
\epsilon_q=(-1)^{q(q+1)/2}.
$$
具体 c 和 c^+ 的线性坐标变号，A、A^+ 不变。该 homogeneous component 的线性符号变换作用于每个 multilinear kernel 的所有输入，因而也定义于非 cylindrical 的 (1.1)，并保持乘法。此 bookkeeping conversion 不改变物理 A、κ、CPS 或 current bracket；不能在同一计算中交替使用两种 dual signs。

(1.1) 先给 commutative dg algebra。它不自带对任意连续函数都定义的 BV antibracket 或 Peierls bracket：连续 linear functional 可以是 distribution，配对逆可能不接受它。

## 2. 显式连续 homotopy 足以运输这份多项式复形

设 E 与 F 有连续 cochain maps i、p，1-ip=dH+Hd，另一复合也有给定连续 homotopy。有限 completed projective tensor powers 上令
$$
K_m=\sum_{a=0}^{m-1}(ip)^{\otimes a}\otimes H\otimes1^{\otimes(m-a-1)},
\tag{2.1}
$$
按 tensor operator 的 Koszul rule 作用。直接 telescoping 得
$$
dK_m+K_md=1-(ip)^{\otimes m}.
\tag{2.2}
$$
以 graded symmetrizer S_m 在两端取 S_m K_m S_m，便得到 symmetric power 的同伦。连续性来自有限 tensor products、有限和与平均；没有取一个未经控制的无限 tensor limit。

对次数 q 的 homogeneous functional，dual homotopy 是
$$
\mathcal K_m(\ell)=(-1)^q\ell(S_mK_mS_m).
\tag{2.3}
$$
代入 (1.2) 给 Q𝒦+𝒦Q=1-(ip)^*。因此 pullbacks i^*、p^* 是互逆的 cohomology algebra maps。它们严格保持乘法；homotopy 本身无须是 derivation。对 m 作 direct sum 不引入 infinite degree convergence。

**命题 O1。** CD1 的 G_L→P_L→𝒯 诱导方向相反的连续多项式 cochain equivalences。原线性 H1 不足以推出任意函数类的结论；本命题之所以成立，是实际给出了 (2.1)–(2.3)。Sage 对 m=1,2,3 检验了 tensor、symmetrization 与 dual 前的 graded signs；任意 m 的证明是 (2.2) 的有限 telescoping。

此命题仅是指定 commutative dg algebra 的比较。𝒯 的 local BV pairing/antibracket enhancement 以及 local/microcausal quantum products 不由它推出。

## 3. Disk realized BV complex 的具体收缩

下面的另一份收缩用于计算 cohomology，**不保持任意固定 cap trace**；caps 在本模型作为 boundary data 保留而没有固定数值。这与 CD1 的 relative smoothing 用途不同。原场和 proper directions 全部保留，J 只用作计算模型。

把 D 取单位圆盘、t_i=0，记 W=I×S¹。E_G^n=G_L^{n+1}，d_E=d。定义
$$
J=\left\{j\in C^\infty(S^1,\mathbb R):\oint j\,ds=0\right\}
$$
作为集中在 cochain degree 0 的复形。j 是 a_s(0,s)，没有吸收 κ。

选以下明确连续算子：

- 以 (0,0,0) 为中心的 star-shaped de Rham homotopy k。若 ω 是 p-form，
$$
(k\omega)_x(v_1,\ldots,v_{p-1})
=\int_0^1\tau^{p-1}\omega_{\tau x}(x,v_1,\ldots,v_{p-1})\,d\tau.
\tag{3.1}
$$
它满足 dk+kd=1-ev_0，k²=0；ev_0 仅在 functions 上非零。
- wall restriction r_W 和连续线性函数 extension e_W，r_W e_W=1。可用固定 radial collar/cutoff；不要求 e_W 与 d 交换。
- L_v=∂_t-v∂_s 与其零初值右逆
$$
(R_v g)(t,s)=\int_0^t g(\tau,s+v(t-\tau))\,d\tau,\quad
L_vR_vg=g,\quad R_vg|_{t=0}=0.
\tag{3.2}
$$
有限 I 上这是连续 C∞ 算子。
- B A=A_t-va_s 的 wall component。

对 β∈Ω²、γ∈Ω³，置
$$
h_2\beta=k\beta-d\,e_WR_vB(k\beta),\qquad
h_3\gamma=k\gamma.
\tag{3.3}
$$
B h_2=0；这一步正是把 unrestricted primitive 改成 physical primitive。对于 A∈G_L¹，令
$$
\phi_A=kA+e_WR_vB(k\,dA),\quad
f_A=(r_WkA)|_{t=0},\quad
c_A=\frac1{2\pi}\oint f_A\,ds.
$$
设 F_A(t,s)=(f_A-c_A)(s+vt)，定义
$$
\pi_J(A)=\partial_sf_A,\quad
h_1A=\phi_A-e_WF_A-c_A.
\tag{3.4}
$$
π_J 在其他 form degrees 上为零。对 j∈J，取唯一零平均 primitive u_j，u_j'=j，并令
$$
i_J(j)=d\,e_W[u_j(s+vt)].
\tag{3.5}
$$

**所有 contraction identities 的证明。** 首先
$$
A-h_2dA=d\phi_A.
$$
左端满足物理条件，故 L_v(r_Wφ_A)=0。其初值等于 f_A，因 R_v 初值为零；所以 r_Wφ_A=F_A+c_A，进而 r_Wh_1=0。由此
$$
dh_1A+h_2dA=A-i_J\pi_JA.
$$
若 c|_W=0，则 kdc=c-c(0)，f_{dc}=-c(0)、π_Jdc=0，给 h_1dc=c。对 β、γ，dd=0 与 (3.1) 直接给
$$
dh_2\beta+h_3d\beta=\beta,\qquad dh_3\gamma=\gamma.
$$
最后 k d e_Wu=e_Wu-e_Wu(0)，故 π_Ji_J=1。于是
$$
\boxed{dh+hd=1-i_J\pi_J,\qquad \pi_Ji_J=1.}
\tag{3.6}
$$
i_J、π_J 是 cochain maps。各步骤只含 finite-time integration、smooth extension、circle primitive、d 与 traces，全部连续。k²=0 还给 hi_J=0、π_Jh=0、h²=0，但 (3.6) 已足以应用 O1。

对于 classical flat A，kA 是其真正 primitive（差常数），所以 π_J(A)=a_s(0,s)。对于 off-shell A，π_J(A) 一般不等于直接 wall current，差由 h_2dA 控制。不能把 cochain projection 当成任意 off-shell boundary restriction。

**命题 O2。**
$$
H^q(E_G)=
\begin{cases}J,&q=0,\\0,&q\ne0,\end{cases}
\qquad
H^q\mathcal O_{\rm poly}(E_G)=
\begin{cases}\mathcal O_{\rm poly}(J),&q=0,\\0,&q\ne0.\end{cases}
\tag{3.7}
$$
第一式由 (3.6)，第二式由 O1。这里 proper ghost 在 W 为零，未固定 caps；改变这些条件会改变结论。

## 4. 两个反例：原 current core 不能充当全部 cohomology

**OCE1：点值。** F(A)=a_s(0,s_0) 是 C∞ topology 上的连续 degree-one polynomial，且在 proper differential 下 QF=∂_sc|_W=0。其 on-shell 值是 j(s_0)，不是零类；exact functions 的 classical evaluation 为零。

若它是有限个 Q[α_a]=κ∮α_a j 的 polynomial，对 j 缩放后取一次项，便会得到 δ_{s_0} 与一份 smooth density（模常数）的相等。这不成立。等价地，对任意有限个 α_a，可在其共同 kernel 中选 j 而 j(s_0)≠0。因此“连续 BV 多项式 H⁰ 等于有限 smooth-current polynomial algebra”是 **错误命题**，并非只缺一项证明。

点值的 functional gradient 是 delta distribution，不能产生原 smooth CPS 域中的 Hamiltonian vector field。所以它不属于下一节的 Hamiltonian 类。

**OCE2：真正的能量。**
$$
H_v(j)=\frac{\kappa v}{2}\oint j^2\,ds.
\tag{4.1}
$$
它是连续二次 polynomial，smooth gradient 为 κvj，给实际 chiral evolution。它也不属于有限 cylindrical current algebra：任意有限 smearing family 的共同 kernel 中存在非零实 j，此时所有 Q[α_a] 与零场相同，而 H_v(j)>0。这个反例不能用“去掉非 Hamiltonian point probes”修补。

原 C2 没有因此失效：C2 证明的是预先声明的较小 algebra。错误的是将它升格为完整 cohomology，或把 H_v 无说明地当作那个 core 的内部元素。原 core 的时间演化仍可由外部 Hamiltonian derivation 定义。

## 5. 独立的 Hamiltonian polynomial algebra 与闭包

在 J 上直接定义 P_H(J)：F 属于 (1.1)，且有唯一零平均 smooth polynomial gradient g_F:J→J，满足
$$
dF_j(\eta)=\oint g_F(j)\eta\,ds,\qquad \eta\in J.
\tag{5.1}
$$
要求 g_F 是连续 polynomial map。这是从全局 smooth CPS 域独立定义的条件，不是某个 cut map 的 image。它包含所有有限 smooth currents、local quadratic energy 以及具有此 gradient 性质的更一般 polynomial kernels。

由原 Ω_D(du,dw)=-κ∮u\,dw，得到
$$
X_F^j=\kappa^{-1}\partial_sg_F,\qquad
\{F,G\}=\kappa^{-1}\oint g_F\,\partial_sg_G\,ds.
\tag{5.2}
$$
P_H 对乘法封闭，g_{FG}=Fg_G+Gg_F。Hessian symmetry 与 circle integration by parts 给
$$
g_{\{F,G\}}=\kappa^{-1}
\left(Dg_F[\partial_sg_G]-Dg_G[\partial_sg_F]\right).
\tag{5.3}
$$
右端是连续 smooth polynomial map，证明括号闭包。Jacobi 由 constant skew operator κ^{-1}∂_s 和 Hessian symmetry 的逐项抵消给出；没有逆转退化的 bulk Ω。

对能量，g_H=κvj、X_H^j=v∂_sj，正好是原 wall equation 的 current transport。对 linear currents，(5.2) 恢复 {Q[α],Q[β]}=κ∮αβ'。κ 与符号均未改变。

## 6. 在完整 regional fields 上的独立 source 与比较

源侧先取 P_L：每片保留自身 off-shell BV fields 与 EOM/ghost differential，施加自己的 physical boundary realization，seam superfield pullbacks 相等，surviving exterior traces smooth/joint。经典 cycles 才是两片实际 flat solutions 及其 allowed history；规范方向保留。其 Cauchy 预辛形式 Ω_C 是两片 action 导出的形式之和。

定义 H_poly(P_L) 为 H⁰O_poly(P_L) 中，classical evaluation 在这个完整预辛空间上具有连续 polynomial Hamiltonian tangent lift 的类。目标 H_poly(G_L) 用独立 disk action 同样定义。Exact representatives 在 classical solutions 上为零，所以条件不依赖 representative。两侧的定义都未用另一侧的 image。

对于 P_L 的 flat pair，取各片 primitives。Seam 上 d(φ_1-φ_2)=0，差为常数；只调整 primitive 表示的常数使它们的 traces 相等。于是两份 seam contributions 抵消，直接得到
$$
\Omega_C(X,Y)=-\kappa\oint u\,dw,
\tag{6.1}
$$
其中 u、w 是装配外圆上的 primitive variations。核恰为外圆 primitive 是常数的方向，具有外墙零参数的 proper representative；原 vectors 未被删除。J-valued exterior current map 到所有 j∈J 为满：限制 (3.5) 就给连续 linear section。

O1/O2 表明两侧 H⁰ 的 classical evaluation 都忠实识别为 O_poly(J)。对于一个类 F，存在上述 Hamiltonian lift 当且仅当 g_F 在 (5.1) 的类中：

- 若 lift 存在，其 smooth boundary primitive variation 给 g_F/κ，减去平均值取得唯一代表；连续 polynomial 性随 lift 保持。
- 若 g_F 存在，取 boundary primitive variation g_F/κ，作 chiral transport 和固定 smooth extension；限制到每片给实际 tangent lift。不同 extensions 相差保留的 proper null direction。

**命题 O3。** Restriction pullback 给 Poisson algebra 同构
$$
H_{\rm poly}(P_L)\xrightarrow{i^*}H_{\rm poly}(G_L)
\cong P_H(J).
\tag{6.2}
$$
它的 kernel 为零、image 为完整的上述 independently defined target。若在 closed cochains 层表示，kernel 精确为 polynomial Q-boundaries；这不是原 C2 的 cut-moment presentation。映射与 energy derivation 相容，因为两侧 (6.1) 与 H_v 相同。无需事先 quotient fields。

原 C2 作为 cylindrical 子代数的显式 generator/ideal presentation 嵌入 (6.2)。对 (6.2) 的较大类，尚未给出完全由有限 cut-word relations 生成的 presentation；这里给出的 exact kernel 是 Q-boundaries，并由显式 cochain homotopies 验证，而非宣称已算出有限生成关系。

## 7. 本轮攻击后的保留边界

O1–O3 解决的是 C∞ disk/chord、proper relative、free CS 的经典 continuous polynomial/Hamiltonian 类。𝒯 的完整 BV antibracket 不由 commutative O1 构造；量子产品也不能靠把 (5.2) 写成 commutator 来定义。特别是 H_v 一类对角 kernel 的量子乘积会提出真实 contact/renormalization 问题。后续 [QD](quantum_observable_domain.md) 给出 P_H 的 vacuum-domain 反例，并构造包含局域复合场/能量的 continuum Wick 子代数及声明路线的 sewing；它不把全部 P_H 升级成量子域，也未完成 quantum BV pushforward。

使用 (3.6) 计算 cohomology 会运输 caps，不能拿它证明任意固定初末值的 relative BV equivalence。Fixed-cap、annulus、large gauge、non-Abelian stabilizers 与 interacting Q 都需要新的计算。它们仍在完整目标中。

**Verified:** (3.1)–(3.6)、O1 的 tensor signs、两个反例及 energy sign 有执行检查；(3.7)、(5.3)、(6.2) 的无限维结论依赖上述解析构造/证明。

**Assumptions:** fixed finite I、v>0、κ>0、source-free trivial disk、proper ghosts zero on W、unfixed caps、finite polynomial degree、所声明的 smooth Hamiltonian lifts。

**Not verified:** 非线性/量子 sewing、𝒯 的完整 local symplectic enhancement、较大 observable 类的有限 relation presentation、任意固定 caps 或全部 topology。
