# Switched phi4 的区域局域结构与扰动检验

日期：2026-09-07。模型和区域输入沿用 [自由局域结构实现](<scalar local structure implementation.md>)；interaction 为
$$
V=-\frac\lambda{4!}\sum_i\int g_i\phi_i^4,
\qquad L_0\phi+\frac{\lambda g}{6}\phi^3=0.
$$
$g_i$ 实、按 collar 匹配全部 jets、时间支撑紧，保留早期自由窗。本笔记给出实际经典解域上的传播／动力学、原有限插入量子类上的全阶包含／因果性／有限组合，以及指定二阶诊断。**原有限插入类的 time-slice 已有 [反例](<scalar insertion time-slice obstruction.md>)；本笔记不将它标为成立。**

## 1. 实际经典解域与背景依赖

使用 [closure §4](<scalar observable sewing closure.md>) 的 $C_t^\infty H^1$ 区域域：固定低阶输入界 $M$，收小
$$
|\lambda|C_{I,g}(2M)^2<\frac12.
$$
在同一个有限时间窗上得到实际解 $\Phi_\lambda(z)$，$z$ 是早期 free Cauchy datum，$z\in U$。形式版本另外逐 $\lambda$ 递归；不由此推出收敛或任意大初值的全局存在。

任一 smooth matched background 的 Jacobi operator 是
$$
L_{\lambda,\phi}=L_0+\frac{\lambda g\phi^2}{2}.
$$
完整 history／flux matching 与自由理论相同，因为势项不含场导数。区域能量唯一性及弱 response release 构造 $G_{\lambda,\phi}^{R/A}$。零阶势不改变 principal symbol；moving-cone 能量估计多出一个有界低阶项，由 Gronwall 控制。因此
$$
\operatorname{supp}G_{\lambda,\phi}^{R/A}f\subset J^{\pm}(\operatorname{supp}f),
\qquad E_{\lambda,\phi}=G_{\lambda,\phi}^A-G_{\lambda,\phi}^R.
$$
对两个实际 nonlinear 解之差，势替换为
$\lambda g(\phi_1^2+\phi_1\phi_2+\phi_2^2)/6$，同一证明给因果依赖。Smooth matched backgrounds 在紧时间窗上有足够 Sobolev bounds；此陈述不要求 rough unmatched histories 在角点普通光滑。

局域 smooth finite-jet density $F$ 的物理一阶 variation 为 compact smooth source $F^{(1)}[\phi]$，故
$$
\{F,G\}_{\lambda}(\phi)
=\langle F^{(1)}[\phi],E_{\lambda,\phi}G^{(1)}[\phi]\rangle
$$
由 CPS Green identity得到。Spacelike separated supports 给零括号；同一标签包含给 relative isotony。要对生成类加入哪些反复 Poisson／smooth operations，仍须声明其实际正则域，不因这些生成元结论而认同整个 nonlinear microcausal 类。

背景导数不能省略：
$$
DG_{\lambda,\phi}^{R/A}[h]
=-G_{\lambda,\phi}^{R/A}(\lambda g\phi h)G_{\lambda,\phi}^{R/A}.
$$
在区域 chart 上，$P_\lambda=DR_\lambda(By)A_\lambda(By)$，完整梯度为
$$
\begin{split}
U_{\{F,G\}_\lambda}={}&DU_F[P_\lambda U_G]-DU_G[P_\lambda U_F]\\
&+B^\flat\left(DA_\lambda[A_\lambda U_G]U_F
-DA_\lambda[A_\lambda U_F]U_G\right).
\end{split}
$$
这里的 $A_\lambda$ 是 $DR_\lambda$ 的 regular transpose，不是某个固定自由 Poisson tensor。其域、参数导数与 compact dual supports 的证明沿用 closure §4；本次复核其在局域 Green identities 中的位置。

### 1.1 Cauchy 演化与 time-slice 的精确边界

固定任意 $t$，令
$$
e_t:U\longrightarrow U_t,
\qquad e_t(z)=(\Phi_\lambda(z)(t),\partial_t\Phi_\lambda(z)(t)),
\qquad U_t=e_t(U).
$$
在既有实际解域上，反向局部 Cauchy 唯一性给 $e_t^{-1}$；依赖初值的 smoothness 给双向 smooth map。Incoming 与时刻 $t$ 的 CPS 由线性化 Green identity相同。因此
$$
e_{t_2}e_{t_1}^{-1}:U_{t_1}\to U_{t_2}
$$
是实际 symplectomorphism，复合严格满足演化群胚关系。这仅比较同一组解演化得到的域；不能把 $U_t$ 替换成各时间独立指定的任意初值球。

还可以对完整 smooth-Hamiltonian solution observables 给出实际的 smooth-time localization。取 $\rho\in C_c^\infty(N)$、$\int\rho=1$，在一个足够小的 smooth off-shell 邻域中定义
$$
b_N(\psi)=\int\rho(t)\,e_t^{-1}(\psi(t),\partial_t\psi(t))\,dt.
$$
积分在 incoming Cauchy vector space 中解释；收小域保证所有 $e_t^{-1}$ 有定义且平均值在同一 convex chart $U$。对真实解 $b_N(\Phi_\lambda(z))=z$。于是 $H(b_N(\psi))$ 是支撑在 $N$ 的 smooth representative。具体令 $z_t=e_t^{-1}(\psi(t),\dot\psi(t))$，并记
$$
(u_t,p_t)=De_t(z_t)X_H(b_N\psi).
$$
Symplectic transpose 与一次时间分部积分给实际 bulk gradient
$$
\frac{\delta(H\circ b_N)}{\delta\psi(t)}
=-\rho(t)p_t-\partial_t(\rho(t)u_t).
$$
$\rho$ 的紧支撑消去端点项；有限时间的参数导数估计保证各阶仍在声明的 smooth compact-time regular class。对真实 background 有 $p_t=\dot u_t$；自由时取 $\rho=\chi'$，上式恢复 $-[L,\chi]u$。

这个 representative 使用 nonlinear response／演化标签，通常不是有限-jet insertion 的有限乘积。它证明实际解域和完整 regular-observable 层的时间重构；**不证明原有限插入生成类的 time-slice**。一般 Cauchy 面可用其附近的 smooth spacelike foliation与相应 Cauchy maps 替换 $t$。该 construction 只作用于 matched smooth field chart，未宣称它对任意 unmatched corner-energy histories 给严格局域 prequotient lift。

区域求解后再取任一 $e_t$，与先作合法有限 cluster release 再演化具有同一 initial data、EOM 和剩余端口响应。唯一性给两个次序相同。$b_N$ 的时间积分由同一关系逐点 intertwine，因而这组 actual-domain maps 与有限组合、独立 uncut comparison 交换。

## 2. 原量子插入类上的全阶局域结论

固定同一个区域 $W_s$、coherent off-shell $T_R$、classical tree normalization 和完整 contact relations。令
$$
S(V)=\sum_{r\ge0}\frac{(i/\hbar)^r}{r!}T_{R,r}(V^{\otimes r}),
\qquad S_V(F)=S(V)^{-1}_\star\star S(V+F),
$$
$$
\mathcal R_V^q(F)=\frac\hbar i\left.\frac{d}{ds}S_V(sF)\right|_{s=0},
\qquad O_V(F)=\sigma_0\mathcal R_V^q(F).
$$
$T_R$ 和 $S_V$ 在 off shell 先计算；只有 $O_V$ 最后使用自由 on-shell restriction。Retarded images 的自由泛函支撑可能扩大，因此下述 $O$ 始终表示 **insertion label** 的支撑。

Regional source 的生成元是 $o_F$，$F$ 为区域 collar charts 中 smooth compact finite-jet polynomial density。关系采用 closure §6 的完整 coefficient kernel：逐图计算每个 word 的自由 Wick coefficient，再对全部 degree、全部 Cauchy arguments 施用 $\kappa_k$。记为
$$
J_V=\{w:\mathcal N_{r,s,k}(w)=0\text{ 对全部 }r,s,k\}.
$$
这给 $\mathfrak Q_V^{\mathrm{fin}}(O)$ 的区域呈现，formal jets 仍来自有限 words；不是只附加一个中央 mismatch。

**包含。** $O_1\subset O_2$ 时保留同一 insertion label；其在同一个 ambient coefficient algebra 中的关系判据相同，所以得到单射。恒等和三重包含按 label identity 复合。独立 uncut 侧的同一局域插入、同一 $T_R$ 有双向有限 chart representative，故局域 comparison onto 且保持完整 kernel。

**因果对易。** Off-shell causal factorization 同样适用于 $S_V$。对 spacelike separated $F,G$，可用两种 causal order，故
$$
S_V(sF+tG)=S_V(sF)\star S_V(tG)
=S_V(tG)\star S_V(sF).
$$
对 $s,t$ 各微分一次，最后施用 $\sigma_0$，得到 $[O_V(F),O_V(G)]_\star=0$。每个 fixed coefficient 是有限图；在 partial diagonals 使用低阶 products，在 total diagonals 使用相同 local extension/contact rule。归纳得到全部阶的 factorization identity，并将其通过 Wick products 延到全部 finite words/formal jets。这是 retarded identity 的证明，不使用 retarded image 的自由支撑作替代。

**有限组合。** 先对每个 insertion 和 interaction vertex 作 smooth collar refinement，保留所有 mixed slots。区域 $G,W$ 的 response uniqueness给同一 edge kernels，coherent extension给同一 contact distributions；因此每一张图、每个 word 和每个 $\mathcal N_{r,s,k}$ 与合法有限 cutting maps 交换。相同结论适用于 inclusion。此处没有额外的 time-slice square：自然 inclusion 对原类非满射，不能画成同构。

## 3. 同一组观测量的二阶检验

采用 $T_1$ 为选定正常序 prescription；单个 vertex 不作 self-contraction。外部插入为 $F_r=\int f\phi^r$，$r=1,2$；$f$ 可横跨 seam。Interaction density 的 $1/4!$ 保留。

### 3.1 树级及一阶接触项

令 $\phi=\phi_0+\lambda\phi_1+\lambda^2\phi_2+O(\lambda^3)$。区域 retarded recursion 为
$$
\phi_1=-\frac16G^R(g\phi_0^3),\qquad
\phi_2=\frac1{12}G^R\bigl[g\phi_0^2G^R(g\phi_0^3)\bigr].
$$
二次插入在同一阶为
$$
\phi^2=\phi_0^2+2\lambda\phi_0\phi_1
+\lambda^2(\phi_1^2+2\phi_0\phi_2)+O(\lambda^3).
$$
$g=\sum_a\rho_ag$ 后，$\phi_2$ 中是全部 $(a,b)$ vertex pairs；$a=b$ 的项不代表全部结果。这里 $\rho_a$ 是 smooth collar partition，不是 sharp cell characteristic。

有 $W_F=W-iG^A$、$L_0W_F=-i\delta$。所以
$$
\sigma_0T_2(\ell_{L_0h},\ell_k)=-i\hbar\int hk.
$$
它是必须保留的 off-shell contact relation，不能将 $\ell_{L_0h}=0$ 提前放进 $T_2$。保存的 oscillator check 直接计算 $e^{-2i|t|}/4$ 的一阶导数 jump 为 $-i$，并检查非接触区的 KG residual；不是仅将 contact 公式两边重复输入。

### 3.2 一阶耦合的完整 $r=1,2$ 收缩

用 $y$ 表示 interaction vertex、$x$ 表示 insertion，$W_F(y,x)-W(y,x)=-iG^R(x,y)$。$s$ 条收缩的贡献为
$$
-\frac{i\lambda\hbar^{s-1}}{24}
\binom4s\binom rs s!
\int f(x)g(y)\bigl(W_F(y,x)^s-W(y,x)^s\bigr)
\phi(y)^{4-s}\phi(x)^{r-s}\,dxdy.
$$
$r=1$ 只有 $s=1$ 的树；本正常序选择下该阶 tadpole 为零。$r=2$ 的 $s=1$ 是树，$s=2$ 是一回路，后者的核为
$$
-\frac{i\lambda\hbar}{2}(W_F^2-W^2)
=\lambda\hbar\left(-G^R W+\frac i2(G^R)^2\right),
$$
两侧的参数顺序是上述 $(y,x)$ 与 $(x,y)$；乘上 $f(x)g(y)\phi(y)^2$。这项不可遗漏。分布表达以左侧相容的 causal products 为定义；不是将右侧当作任何边界问题都可裸乘的公式。

### 3.3 二阶耦合的全部树与一回路 multigraphs

记 insertion 为 $0$、两个 interaction vertices 为 $1,2$，$a,b,c$ 分别是 $01,02,12$ 的 edge 数；$f_{ij}=W_F(i,j)$、$w_{ij}=W(i,j)$。对每个 admissible triple，定义
$$
\begin{split}
D_{abc}={}&f_{10}^af_{20}^bf_{12}^c
-w_{10}^af_{20}^bw_{12}^c-f_{10}^aw_{20}^bw_{21}^c\\
&-w_{10}^aw_{20}^bf_{12}^c
+w_{10}^aw_{20}^b(w_{12}^c+w_{21}^c).
\end{split}
$$
这六项直接来自
$$
T(A_1,A_2,F)-A_1\star T(A_2,F)-A_2\star T(A_1,F)
-T(A_1,A_2)\star F+A_1\star A_2\star F+A_2\star A_1\star F,
$$
其中 $A_i=\int g\phi_i^4/24$。实际二阶 contribution 是
$$
-\frac{\lambda^2}{2}\hbar^{a+b+c-2}
\frac{r!\,(4!)^2}{24^2\,(r-a-b)!\,(4-a-c)!\,(4-b-c)!\,a!b!c!}
\int f_0g_1g_2D_{abc}\,
\phi_0^{r-a-b}\phi_1^{4-a-c}\phi_2^{4-b-c}.
$$
这里 $\phi_i$ 是 vertex 上的 off-shell field，不是上一节的耦合展开系数。允许 $a+b\le r$、$a+c\le4$、$b+c\le4$；图必须将两个 interaction vertices 连到 insertion。

| 插入 | 树：$a+b+c=2$ | 一回路：$a+b+c=3$ |
|---|---|---|
| $r=1$ | $(1,0,1),(0,1,1)$ | $(1,0,2),(0,1,2)$ |
| $r=2$ | $(1,0,1),(0,1,1),(1,1,0)$ | $(1,0,2),(0,1,2),(2,0,1),(0,2,1),(1,1,1)$ |

保存的检查将六种 differential-contraction exponentials 独立展开，与这份完整图表逐项比较，结果相同；$0,1$ 条边对应的负 $\hbar$ 次数全部抵消。脱离 insertion 的 components 也抵消；某一 interaction vertex 严格位于其余顶点未来时，代入对应 Feynman/Wightman ordering，retarded combination 为零。

这些非导数 $r=1,2$ 图在 $2+1$ 维的一回路范围没有新的 divergent extension parameter：$W_F$ 的短距 scaling degree 为 $1$，双线子图为 $2<3$；三角总 diagonal 为 $3<6$。既有正常序删除 self-tadpoles，允许的 finite counterterm convention 仍须固定。对图核施加额外 derivatives 后的 contact normalization、两回路 sunset 和一般 stress Ward identities，不由这份一回路表自动给出。

每条 edge 使用 transparent regional kernel；$g_1g_2$ 和 $f_0$ 作全部 smooth partition expansion 后，跨 cells、同 cells、mixed collar slots 的权重之和恰为一。组合与重整化相容性在 §2 给全阶 argument；这里的有限图表只是检查具体遗漏，误差范围为未列的 $\lambda^3$ 及 $\lambda^2\hbar^2$ 以上图。

## 4. 选择变换与外部 switching

固定 interaction 时，改 normalized lift 或 history cutoff 不改变 matched field、弱 response 和 $E_s$；已有 regular transpose 给合法的 ambient coordinate change，物理标签 map 为恒等。Normal ordering 的 smooth bisolution change 使用 $\alpha_d$，逐核保持 support、inclusion 和 refinement，并满足 $\alpha_{d_2}\alpha_{d_1}=\alpha_{d_1+d_2}$。

若 $\widehat S(V)=S(Z(V))$ 是相容 finite renormalization，则
$$
\widehat{\mathcal R}_V^q(F)
=\mathcal R_{Z(V)}^q(DZ(V)F).
$$
Locality of $Z$ 保证 insertion 的 support 不扩大；interaction 和 insertion 必须同时变换。相同区域／整体 local counterterm rule 使 $Z$ 及 $DZ$ 与 collar refinement 交换，复合按 chain rule。所用 local renormalization 类型见 [Brunetti–Dütsch–Fredenhagen, Theorem 4.1](https://arxiv.org/html/0901.2038#S4)。

对改变 switching 的两套模型，采用明确的充分因果条件：
$$
V'=V+v_-+v_+,
$$
$v_-$ 的 compact support 严格在 $O$ 的过去，$v_+$ 严格在 $O$ 的未来；可在一个 causal collar 上如此分解。两者均为同一 local prescription 的 formal interaction labels。因果因子化给
$$
S_{V+v_-}(F)=U^{-1}\star S_V(F)\star U,
\qquad U=S_V(v_-),
$$
且未来的 $v_+$ 不改变 $O$ 中的 retarded insertions。故微分得到
$$
O_{V'}(F)=\operatorname{Ad}_{U^{-1}}O_V(F),\qquad\operatorname{supp}F\Subset O.
$$
$U$ 作为 intermediate $S$-series 可含 $\hbar^{-1}$，但其 conjugation 的每个 connected coefficient 具有非负 $\hbar$ 次数；只将此 conjugation 用于显示的 insertion-generated algebras，不声称 $U$ 本身属于原非负形式代数。Reverse conjugation给实际 inverse。

对同一过去分割连续改变 $V\to V+a\to V+a+b$，
$$
S_V(a)\star S_{V+a}(b)=S_V(a+b),
$$
所以 local intertwiners 复合相容。不同合法分割给同一局域 generator map时，implementers 最多相差该局域代数的 commutant；不额外宣称一个无选择的 global unitary。仅有 $g=g'$ 于 $O$ 而没有这种 causal construction，不足以认同两个 retarded operators。

## 5. 同一动力学检验

真实解的能量为
$$
H_\lambda(t)=\frac12\sum_i\int_{R_i}
(p_i^2+|\nabla\phi_i|^2+m^2\phi_i^2)
+\frac\lambda{24}\sum_i\int_{R_i}g_i\phi_i^4.
$$
区域 EOM 给
$$
\frac{dH_{\lambda,i}}{dt}
=-\int_{\partial R_i}\Pi_i\dot q_i
+\frac\lambda{24}\int_{R_i}\dot g_i\phi_i^4.
$$
释放人工 interfaces 后 flux 抵消，$\dot g$ 的功保留。xAct 检查的 off-shell identity 是
$$
\nabla^aT_{ab}
=(\Box\phi-m^2\phi-\lambda g\phi^3/6)\nabla_b\phi
-\lambda\phi^4\nabla_bg/24.
$$
自由 quantum 正常序能量及其谱演化沿用已验证的 free energy extension；$K_s$ 的 refinement intertwiner保持它。相互作用的 spacetime-smeared energy density 可以作为上述 local insertion；未在本文另证全部重整化 stress Ward identities，故不把 classical energy equation 无条件升级为全量子算符恒等式。

**Verified:** 明示 actual-domain 演化／Peierls argument，原 formal class 的因果与有限组合推导，$r=1,2$ 的耦合二阶内全部树／一回路图组合，Feynman jump、背景 Green derivative 和含 switching 的能量／应力 residuals；详见 [验证记录](<numerics/scalar local structure verification.md>)。

**Assumptions:** 原模型的 early free window、有限时间小耦合域；smooth matched $g$；coherent off-shell prescription、classical normalization；finite words／nonnegative formal completion；外部 switching 比较的明确过去／未来分割。

**Not verified:** 扩大 completed relative-$S$ 类上的全阶 time-slice；原有限插入类的该命题为 false，不能将其写成只缺一个 loop estimate。全部非线性 equicausal stability、任意两套独立 wall renormalization、全量子 stress Ward identity 也未由本文给出。
