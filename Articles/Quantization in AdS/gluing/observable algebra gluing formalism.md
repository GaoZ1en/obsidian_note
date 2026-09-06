# Observable Algebra Gluing Formalism

从区域 action/CPS、允许的 interface data 和 response 构造 sewing；global algebra 从 uncut action 独立定义。本文证明两种 classical reconstruction，以及带指定 Wick/renormalization 数据的 quantum reconstruction。一般性指满足明列假设的输入—输出定理；各模型的 PDE、regularity 和 renormalization existence 仍是该模型必须提供的输入。

几何沿用 [classical gluing formalism](<classical_gluing_formalism.md>)：$M=I\times\Sigma$，有限个空间区域 $\Sigma_i$ 产生 pairwise smooth timelike cuts，无空间 triple junctions。真实边界条件、polarization 与 temporal endpoint/corner terms 属于完整 action。非规范 scalar 的解析实现见 [free quantum note](<free scalar renormalized quantum observable algebra gluing.md>) 和 [interacting quantum note](<phin renormalized quantum observable algebra gluing.md>)；完整 classical gauge 实现见 [1+1 Yang–Mills](<models/1+1 Yang-Mills classical observable algebra gluing.md>)。

## 1. 独立的 regional/global objects

每个区域先给定
$$
\delta S_i^{\mathrm{full}}
=\langle\mathcal E_i,\delta\phi_i\rangle
+\langle\Pi_i,\delta q_i\rangle+\Theta_i^+-\Theta_i^-.
$$
在实际相容的初值/history 域 $\mathfrak D_i$ 上解区域方程；固定 $q_i$ 得 $\mathcal P_i[q_i]$，并保留解、history transport 和 response maps
$$
(\xi_i^-,q_i)\longmapsto(\phi_i,\xi_i^+,\Pi_i).
$$
规范理论先除去 proper based gauge，保留 active cut group、charges、frames/transition data。下面非规范部分的 $\mathcal P_i[q_i]$ 指已无退化的 phase space。

在任意声明的 smooth phase space $P$ 上，取
$$
\Omega_P=\delta\Theta_P,\qquad
\mathcal H(P)=\{F\in C_B^\infty(P,\mathbb C):
\iota_{X_F}\Omega_P=-dF,\ X_F\text{ 为 smooth tangent field}\},
$$
$$
\{F,G\}=dF(X_G)=-\Omega_P(X_F,X_G),\qquad F^*=\overline F.
$$
复值函数使用 complexified tangent fields。闭且弱非退化的 $\Omega_P$ 使 $X_F$ 唯一；Cartan identity 给
$$
X_{FG}=FX_G+GX_F,\qquad X_{\{F,G\}}=[X_G,X_F].
$$
所以 $\mathcal H(P)$ 是 Poisson $*$-algebra。有限维时它就是全部 $C^\infty(P,\mathbb C)$；无限维时不把全部 smooth functions 自动列入。

定义 $\mathcal A_i[q_i]=\mathcal H(\mathcal P_i[q_i])$。可粘合的区域对象还包括上面的 action、field/test labels、response/transport 和 gauge data；这些不是裸 Poisson algebra 的可恢复附注。Global 对象则先从 uncut $S_M^{\mathrm{full}}$ 与真实边界条件定义 $(\mathcal P_M,\Omega_M)$ 和 $\mathcal A_M=\mathcal H(\mathcal P_M)$。

## 2. Action release 与内禀 classical reconstruction

固定线性 interface identification $q_j=J_{ij}q_i$。在无真实 interface action 的模型中，释放共同 history 的变分给
$$
\boxed{q_j=J_{ij}q_i,\qquad
\Pi_i+J_{ij}^\dagger\Pi_j=0.}
$$
Affine identifications 在 variations 上使用其线性部分；nonlinear identifications 使用 $DJ_{ij}(q)$ 的 cotangent lift。规范连接的 histories 必须按其 affine gauge law 比较。

从区域解与这些关系定义 matched space $\mathcal C$，先不调用 global solution space。取
$$
\Omega_\mathcal C=\iota_\mathcal C^*\sum_i\Omega_i.
$$
要求：区域 maps smooth 且切向量解线性化问题；$\mathcal C$ 是所声明的 smooth manifold；完整 action 和 potentials 可加；transmission 消去分布界面源；另有 regularity theorem 将 matched weak solutions 提升到 global class，并给 smooth restriction/assembly inverses；真实边界和 corners 无遗漏 flux。非规范情形再要求 $\Omega_\mathcal C$ 弱非退化。

**定理 1.** 在这些条件下，
$$
A:\mathcal C\xrightarrow{\cong}\mathcal P_M,\qquad
A^*\Omega_M=\Omega_\mathcal C,
$$
$$
\boxed{\mathcal A_{\mathrm{sew}}^{\mathrm{cl}}:=\mathcal H(\mathcal C)
\xrightarrow[\alpha F=F\circ A^{-1}]{\cong}\mathcal A_M.}
$$
**证明。** 对全局 test variation 分区使用 Green identity；bulk equations 与 oriented transmission 消去全部弱方程项。Regularity 输入把所得场放入 global solution space；restriction 是 assembly 的逆。完整 CPS potentials 的可加性给辛性，Hamiltonian fields 沿此辛微分同胚双向运输。于是每个 global observable 有实际逆像，kernel 为零、image 为全部目标。∎

这里用区域 matched space 定义 $\mathcal A_{\mathrm{sew}}^{\mathrm{cl}}$，并未用 global algebra 的 restriction image 定义它。以下给从更大的 regional function presentation 取商的充分条件。

## 3. 全 regional history-family algebra 的 exact quotient

在允许的 chart 内，$X$ 是常弱辛 Fréchet space 的开域；$Y$ 是区域 field/history chart。物理 histories 是时间窗上的 restriction classes；使用辅助全时间代表时，域和函数都须沿无物理变化的代表 fibers 饱和/basic。

用连续、在 covector 端分离点的 pairing $\beta:Z_K\times Y\to\mathbb R$ 选允许的 vectors 和 history densities，定义
$$
\mathcal H_\beta(D)=
\bigcup_K\{F\in C_B^\infty(D):DF=\beta(U_F,\cdot),\
U_F:D\to Z_K\text{ smooth}\}.
$$
每个 observable 的 history density 及其全部背景导数使用同一个 compact temporal support $K$。典型 pairing 为
$$
\beta((V,A),(\delta z,\delta q))
=-\sum_i\Omega_i(V_i,\delta z_i)+\sum_i\langle A_i,\delta q_i\rangle.
$$
原 prescribed-history bracket 只收缩 $V_i$，history derivatives 仍作为 response 数据保留。

要求存在由 regional transmission 独立构造的 $R:X\to D\subset Y$ 和连续线性 $B:Y\to X_{\mathrm{lin}}$，满足
$$
BR=1,\quad B(D)=X,\qquad
\beta(U,DR(x)h)=-\Omega(A(x)U,h),
$$
$$
-\Omega(v,By)=\beta(B^\flat v,y),\qquad A(x)=DR(x)^\flat.
$$
这些 transposes 连续/jointly smooth，保持允许的 covectors 及全部背景导数的固定支撑；$B^\flat$ 的 history output 使用固定 $K_B$。

定义
$$
P_s(y)=DR(By)A(By),\qquad
\{F,G\}_s(y)=\beta(U_F(y),P_s(y)U_G(y)).
$$
**定理 2.**
$$
\boxed{
(\mathcal H_\beta(D),\{\ ,\ \}_s)/\ker R^*
\xrightarrow{\cong}\mathcal H(X),\qquad
R^*F=F\circ R,\quad S(G)=G\circ B.}
$$
**证明。** 转置 $BDR=1$ 得 $AB^\flat=1$。实际坐标
$$
y\longleftrightarrow(x,w)=(By,y-R(By)),\qquad Bw=0
$$
将 $D$ 识别为 $X\times\ker B$ 的开域；每片 $w=\mathrm{const}$ 上使用 $\Omega$，便得到 $P_s$ 和 Jacobi。全类 closure 由实际梯度证明：
$$
\begin{split}
U_{\{F,G\}_s}={}&DU_F[P_sU_G]-DU_G[P_sU_F]\\
&+B^\flat\bigl(DA(x)[A(x)U_G]U_F-
DA(x)[A(x)U_F]U_G\bigr),\quad x=By.
\end{split}
$$
Hessian symmetry 给前两项；对 $DR,A$ 的背景导数给最后一项，其支撑在 $K_B$。全部输出支撑于 $K_F\cup K_G\cup K_B$。Release 和 section 的 gradients 为
$$
X_{R^*F}=A\,U_F\circ R,\qquad U_{S(G)}=B^\flat X_G\circ B.
$$
所以 $R^*,S$ 都 Poisson 且 $R^*S=1$。Kernel 恰为在匹配图上消失的 families，是 sewn bracket 的 Poisson ideal；逐函数 section 给 exact onto。再接定理 1 得独立 global comparison。∎

这一步一般改变同侧及异侧 brackets。它不宣称原 prescribed-history bracket 通过同一个 kernel 下降，也不要求 $B^*$ 保持 spacetime support。

## 4. Gauge sewing 的 regular reduction

给定独立 regional phase spaces $P_i$、保留的 cut-frame actions 和 action-derived charges。在 joint space $P=\prod_iP_i$ 上释放共同 gauge history，得到对角 cut group $G_\Gamma$ 的 moment constraint $\mu_\Gamma=0$。取 $C=\mu_\Gamma^{-1}(0)$。

**定理 3.** 若 $P$ 有限维、$G_\Gamma$ 紧、$0$ 是 regular value 且群在 $C$ 上自由，则
$$
\boxed{\mathcal A_{\mathrm{sew}}^{\mathrm{cl}}
=\frac{C^\infty(P)^{G_\Gamma}}
{I(C)\cap C^\infty(P)^{G_\Gamma}}
\cong C^\infty(C/G_\Gamma).}
$$
若再由 continuum action/CPS 证明 $C/G_\Gamma$ 与独立 $\mathcal P_M$ 辛同构，便得到 $\mathcal A_{\mathrm{sew}}^{\mathrm{cl}}\cong\mathcal A_M$。

**证明。** 紧群作用 proper，regular free reduction 给 smooth symplectic quotient。Invariant Hamiltonian fields 保持 $\mu_\Gamma=0$，故 $I(C)$ 在 invariant algebra 内是 Poisson ideal。任意 quotient function 拉回 closed embedded $C$，用 smooth extension 再 Haar averaging，得到全 $P$ 的 invariant extension，所以 restriction onto。约化辛形式给 Poisson 性。∎

这里先保留 charged regional functions，再作 joint invariant contraction 与 constraint quotient。无限维 gauge quotients 或 singular reductions 不自动满足本定理；必须给各自的 quotient regularity 和 observable extension 证明。区间 YM 有显式全局 section，因而不用一般 extension theorem。

## 5. 自由 renormalized quantum sector

经典 ambient $\mathcal H$、可量子化 function class $\mathcal P$、local renormalized insertion labels $\mathcal P_{\mathrm{loc}}$ 是三个不同对象。

在 off-shell configurations 上，scalar 的一个明确选择为
$$
F(\phi)=\sum_{k=0}^N\frac1{k!}\langle f_k,\phi^{\otimes k}\rangle,\quad
f_k\in\mathcal E'(M^{\circ k})_{\mathrm{sym}},\quad
\operatorname{WF}(f_k)\cap
\bigl((\overline V_+^k\cup\overline V_-^k)\setminus0\bigr)=\varnothing.
$$
每个 coefficient 内部紧支撑，记为 $\mathcal P_\mu$。也可取其 compact-background equicontinuity 扩张 $\mathcal E_{\mathrm{eq}}$：每个 derivative 延拓到禁止锥内的分布 directions 后连续，并在 compact background sets 上等连续。这是高阶条件，不能由单个 smooth history transpose 代替。Local functionals、polynomial membership 和 contraction closure 的一般输入见 [Hawkins–Rejzner–Visser, §§5、7](https://arxiv.org/html/2312.15203v3)。

由 regional quadratic action/response 构造 transparent $E_s$，选 Wick kernel $W_s$；uncut action 独立构造 $E_M,W_M$。要求
$$
W-W^T=iE,\qquad\overline W=W^T,
$$
且所选类的每阶 contraction 均合法、闭合、可迭代并满足 $*$-identity。定义
$$
F\star_WG=\sum_{r\ge0}\frac{\hbar^r}{r!}
\langle F^{(r)},W^{\otimes r}G^{(r)}\rangle.
$$
有限 polynomial inputs 的和有限；formal series 逐阶解释。设在物理解上消失的 $\mathcal I$ 是 $\star$-ideal，则
$$
\mathfrak Q_0=(\mathcal P[[\hbar]],\star_W,*)/\mathcal I[[\hbar]].
$$
首阶 commutator 恢复 $E$-bracket，且本商的 underlying module 为 $(\mathcal P/\mathcal I)[[\hbar]]$。

**定理 4.** 若实际双向 off-shell assembly $A$ 保持 coefficient/support classes、物理解和全部 contractions，且
$$
(A\otimes A)W_s=W_M,
$$
则
$$
\alpha_{\mathrm{off}}F=F\circ A^{-1},\qquad
\boxed{\alpha_0:\mathfrak Q_{0,s}\xrightarrow{\cong}\mathfrak Q_{0,M}},
\quad\alpha_0\sigma_{0,s}=\sigma_{0,M}\alpha_{\mathrm{off}}.
$$
**证明。** Chain rule 与 kernel identity 逐 contraction intertwine；实际 inverse 同样作用于全类。物理解双向对应给 ideals 对应，所以 map 下降并 exact onto。∎

静态 massive Dirichlet intervals 满足这些输入：regional matched positive closed form 给 $K_s$，取 $W_s=(2\sqrt{K_s})^{-1}e^{-i\sqrt{K_s}(t-t')}$。$H^1/H^2$ patching 给 $AK_s=K_MA$。反射保留左右 causal orientation；有限 mode sums 在允许闭锥中的 normal convergence 证明 on-shell ideal，详见 free note §2。Assembly 是光滑时空识别，使用匹配全部 jets 的 coefficients，不能对分布核作 sharp regional multiplication。

内部 Wick powers、smooth spacetime-smeared stress 和 free timelike-line polynomial insertions 属于上述 sector。Polynomial on-shell core 还能按正常序加入
$$
H_r=\sum_j\omega_j^r\bar a_ja_j,\qquad
H_r\star H_s=H_rH_s+\hbar H_{r+s}.
$$
Smooth data 快速衰减，有限 contraction chains 是 $W$ 的有限时间导数，故这一自由总能量扩张闭合并被 $K$-intertwining 保持。它不声称任意 reflecting-boundary stress product 已有定义。

## 6. Renormalized interacting reconstruction

在两个独立 off-shell free systems 上，给有限-jet local polynomial labels $\mathcal P_{\mathrm{loc}}$、interaction action $V$，以及
$$
T_{R,k}:\mathcal P_{\mathrm{loc}}^{\otimes k}\to\mathcal P_\mu[[\hbar]].
$$
要求 causal factorization、permutation symmetry、unitarity、field independence、相容的 off-shell contact normalization、正确 $\hbar$ grading 和指定 classical tree terms。额外 Noether/Ward identities 单独核查。对 independent comparison 另要求
$$
\alpha_{\mathrm{off}}V_s=V_M,\qquad
\alpha_{\mathrm{off}}T^s_{R,k}
=T^M_{R,k}\alpha_{\mathrm{off}}^{\otimes k}.
$$
这些 quantum inputs 不从 classical symplecticity 推出。

对 switched $\phi^n$，取
$$
S_\lambda=S_0+V,\qquad V=-\frac{\lambda}{n!}\int g\phi^n,\quad
L_0=\partial_t^2+K,\quad E=G_{L_0}^A-G_{L_0}^R,\quad
W_F=W-iG_{L_0}^A.
$$
因为 $S_0''=-L_0$，这个 $E$ 等于按 Hessian 定义的 retarded-minus-advanced propagator。所有 vertices 避开真正物理边界，跨 artificial cuts 的 $g$ 和 density 全 jets 匹配；保留早期自由窗和相同 renormalization choices。

在该静态模型中，off-diagonal reflected Feynman graphs 无全 covector cancellation。Diagonal extension 保留沿 diagonal 的 smooth parameter dependence 和总时间 covector 为零；smearing 与 internal-vertex integration 后，剩余外腿不可能全同向 causal。因此输出在 $\mathcal P_\mu$。这补足 finite scaling degree 本身未提供的值域论证。局域 extension 的依据是 [Brunetti–Fredenhagen](https://arxiv.org/abs/math-ph/9903028) 与 [Hollands–Wald](https://arxiv.org/abs/gr-qc/0111108)；本模型的反射与 support 证明见 interacting note §2。

先在 off shell 定义
$$
S_R(V)=\sum_{k\ge0}\frac{(i/\hbar)^k}{k!}T_{R,k}(V^{\otimes k}),\quad
\mathcal R_V^q(F)=S_R(V)^{-1}_\star\star T_R(e^{iV/\hbar},F).
$$
每个存活 graph 的 interaction vertices 连到 marked insertion，$k$ 个 vertices 至少有 $k$ 条 contractions，抵消 $\hbar^{-k}$；输出为非负 $\hbar$ 级数。最后才施加 $\sigma_0$，定义
$$
\mathfrak A_V=
\overline{\operatorname{Alg}^*_{\star,\mathbb C[[\lambda,\hbar]]}
\{\sigma_0\mathcal R_V^q(F):F\in\mathcal P_{\mathrm{loc}}\}}
\subset\mathfrak Q_0[[\lambda]].
$$
闭包为 ambient $(\lambda,\hbar)$-adic closure，每个有限阶截断来自有限 words；不取未指定的 spacetime coefficient closure。

**定理 5.**
$$
\alpha_{\mathrm{off}}\mathcal R_{V_s}^q
=\mathcal R_{V_M}^q\alpha_{\mathrm{off}},\qquad
\boxed{\alpha_V=\alpha_0|_{\mathfrak A_{V_s}}:
\mathfrak A_{V_s}\xrightarrow{\cong}\mathfrak A_{V_M}.}
$$
**证明。** 将对 $\star,T_R,V,S_R$ 与 formal inverse 的 intertwining 直接代入 Bogoliubov formula，再用 $\alpha_0\sigma_s=\sigma_M\alpha_{\mathrm{off}}$。两侧所有 insertion labels、generated words 和 adic limits 双向对应，故得同构；不需要一个未定义的全 function-class Møller inverse。∎

## 7. Quantum release、交换性与 classical specialization

令 $\mathcal C_{\mathrm{mis}}$ 是 regular polynomial mismatch parameters，$\varepsilon(c)=c(0)$。在已由 regional response 构造的 transparent sector 上取逐系数有限张量和
$$
\widetilde{\mathfrak Q}_Y=
(\mathcal C_{\mathrm{mis}}\otimes_{\mathrm{alg}}(\mathcal P_s/\mathcal I_s))[[\hbar]],
\quad Q=\varepsilon\otimes1,\quad S(F)=1\otimes F.
$$
只收缩 physical factor，便有
$$
QS=1,\qquad
\boxed{\widetilde{\mathfrak Q}_Y/\ker Q\cong\mathfrak Q_{0,s}}.
$$
这给显式 kernel、section 和 onto；central 的是 mismatch，physical released history 通常不 central。

在 off shell 将 $T_R$ 对 central coefficients 多线性延拓，取 $V_Y=1\otimes V_s$。同一个直接代入证明给
$$
\boxed{Q_{\mathrm{off}}\mathcal R_{V_Y}^q
=\mathcal R_{V_s}^qQ_{\mathrm{off}},\qquad
\mathfrak A_{Y,V}/\ker Q_V\cong\mathfrak A_{V_s}
\cong\mathfrak A_{V_M}.}
$$
这是 transparent presentation 的 release theorem。Presentation 在 physical factor 构造之后给出；它本身不提供两个 isolated interacting wall algebras 之间的 comparison。

**自由交换定理。** 对保留 action、tests、response 和共同 Wick-selection rule 的增强对象，quantum sewing 定义为 response-derived kernel replacement 加 on-shell quotient。两条路径都构造同一 $K_s,E_s,W_s$、同一 labels 和 ideal，所以
$$
\operatorname{Sew}_q\circ Q_{\mathrm{reg}}
\cong Q_s\circ\operatorname{Sew}_{\mathrm{cl}}
$$
在选定可量子化 sector 上成立。

**相互作用交换定理。** 在定理 5 的 coherent scheme 下，成立的是上述 $Q_{\mathrm{off}}$ 和 $\alpha_{\mathrm{off}}$ 与 quantum Møller maps 的交换。它不把 source 替换为独立完成 boundary renormalization 的区域 interacting algebras。

Tree normalization 给
$$
\sigma_\hbar\sigma_0\mathcal R_V^q(F)=F(\Phi_\lambda),\qquad
\Phi_\lambda=\psi-\frac{\lambda}{(n-1)!}G_0^R(g\Phi_\lambda^{n-1}).
$$
若要指定 classical algebra $\mathcal A_{\mathrm{cl}}$ 的忠实 specialization，还需
$$
\mathcal A_q\cap\hbar\mathcal B_q=\hbar\mathcal A_q,\qquad
\sigma_\hbar(\mathcal A_q)=\mathcal A_{\mathrm{cl}},
$$
其中 ambient $\mathcal B_q$ torsion-free 且首阶 commutator 给选定 Poisson bracket。此时 first isomorphism theorem 给
$$
\mathcal A_q/\hbar\mathcal A_q\cong\mathcal A_{\mathrm{cl}}.
$$
一个明确的扩张是取包含指定 generators 的最小 adically closed、$\hbar$-saturated $\star$-subalgebra，并把经典对象定义成它的 actual symbol image。它存在于所有满足条件子代数的交；saturation 使 $[F,G]_\star/(i\hbar)$ 留在其中，故 actual symbol image Poisson 闭合。Independent ambient isomorphism 保持这个交和 saturation，因而同构与交换图保留。此 actual symbol class 不被自动认作全部 $\mathcal H$。

## 8. Locality、symmetry 与有限组合

两侧独立指定同一 matched local labels；assembly 双向对应它们及其完整 variations，则生成的 algebras 对应。因果对易另要求 CPS/Peierls identification 和该物理边界问题的 causal propagator；仅有 symplectic isomorphism 不够。对 interacting nets，按 insertion labels 的 support 定义局域 algebras，使用 causal factorization 及相同 comparison。

若 $g_X$ smooth symplectic、$g_Y^{\pm1}$ 保持完整 covector class 且 $g_YR=Rg_X$，则
$$
R^*g_Y^*=g_X^*R^*
$$
使 matching ideal invariant，诱导相同 physical Poisson symmetry。固定局部域的 automorphism 还要求域不变；equivariance 只在 matching locus 成立时，不声称 off-matching bracket invariant。

对 off-shell quasi-symmetry $\delta_\xi\mathscr L=db_\xi$，使用完整 improved current
$$
j_\xi=\theta(\delta_\xi\phi)-b_\xi,\qquad
\Delta H_{i,\xi}=-\int_{\Gamma_i^{\mathrm{art}}}
(\Pi_i\delta_\xi q_i-b_{i,\xi}^{\mathrm{out}})
+\mathcal F_{i,\xi}^{\mathrm{phys/corner}}.
$$
Stokes 定理证明平衡式。完整 currents 的 oriented matching 才给 charge sewing；不能只抵消 $\Pi_i\delta q_i$ 而遗漏 $b_\xi$。

有限每个 intermediate cluster 都保留未释放 ports 并满足相同存在/regularity 输入时，全部组合次序定义同一 transmission relation。唯一解给相同 physical quotient 与重构 map；任何 pentagon 的两条路径都是同一 regional tuple 的重新括号化。量子层另要求同一 kernel rule 和全部 cluster 的 coherent renormalization。任意 off-matching extensions 的逐点一致和无限细分均不由这个有限定理推出。

## 9. No-go 与精确的非蕴涵

**Bare fixed-history fusion.** 普通 tensor factors 对易，而 transparent cross commutator 一般非零；保持所有物理 field labels 的 homomorphism 不存在。同侧 CCR 改变时，单侧旧全场 algebra 的同名映射也被排除。

**Central history release.** Central 元素的像与整个 homomorphism image 对易。但释放后的 $q_\eta=\langle\gamma^*\eta,\phi\rangle$ 可与 $\ell_f$ 有非零 bracket $\langle\gamma^*\eta,Ef\rangle$。所以覆盖这些物理 fields 的 surjective release 不能同时保留原始 history 的 centrality。

**Time ordering 的 on-shell contact obstruction.** 对内部 tests，
$$
\sigma_0T_2(\ell_{L_0f},\ell_h)=-i\hbar\int fh
$$
可非零，而第一输入的自由 on-shell class 为零。故保留此 contact identity 的 multilinear $T_2$ 不直接下降该商；额外 off-shell lifting 属于另一种定义。[Brouder–Dütsch](https://arxiv.org/abs/0710.3040)

**Generator symbols 不保证 faithful specialization.** 在 $\mathcal B=\mathbb C[x,y][[\hbar]]$ 内，取 $x,x+\hbar y$ 生成的 adically closed $\mathcal A$。其零阶 coefficients 只依赖 $x$，所以 $y\notin\mathcal A$；但 $\hbar y\in\mathcal A\cap\hbar\mathcal B$ 且 $\hbar y\notin\hbar\mathcal A$。因此 generator tree limits 不证明所需的商同构。

**全 smooth exact-Dirac quantization.** 在 standard polynomial quantization、canonical irreducibility 和 exact Dirac-rule 假设下，单模 polynomial Poisson algebra 已有 [Groenewold–van Hove obstruction](https://arxiv.org/abs/math-ph/9809015)。它不排除本文的 deformation construction。具体地，naive flat Moyal prescription 给
$$
H_N\star_M H_N=H_N^2-\frac{\hbar^2}{4}\sum_{j\le N}\omega_j^2,
$$
故该能量乘积的 continuum 第二阶系数发散；正常序扩张使用不同 prescription。

**唯一 physical matching 不决定 off-matching extension.** $R(q,p)=(q,p,q^2,0)$、$B_c(q,p,z,w)=(q+cw,p)$ 对任意 $c$ 满足 $B_cR=1$，但 $\{p,z\}_{s,c}=-2(q+cw)$。因此相同 physical quotient 不强制相同 ambient bracket。

**先抹去 cut charges 的 gauge obstruction.** 取各区域 separately cut-invariant functions 会丢失 crossing Wilson matrices；区间 YM 的 $p_1=p_2=0$ 处每侧 cut action 对其 holonomy transitive，而 joint invariant $D(U_2U_1)$ 仍变化。这否定只用这些被分别约化的数据恢复全部 framed global observables。

## 10. 证明与核验范围

**Verified:** 上述定理在逐项输入下的 algebraic proofs；静态 scalar 的模型证明在两份量子 note；完整 YM continuum/reduction proof 在模型 note。非线性全梯度、moment map、Wilson 和演化的有限符号记录见 [checks](<numerics/observable_sewing_ym_audit_checks.wl>)。

**Assumptions:** 各模型实际的 solution/trace/transmission domains、完整 action、regular covector maps、Wick contraction class、renormalization coherence；这些结构都属于输入。

**Not verified:** 本文不证明任意背景都满足这些输入，不把整个 smooth-Hamiltonian algebra 量子化，不建立任意 nonlinear history-equicausal stability、isolated interacting wall comparison、一般 quantum gauge reduction、无限细分、态或表示的 factorization。缺少某项输入不是该模型的 no-go。
