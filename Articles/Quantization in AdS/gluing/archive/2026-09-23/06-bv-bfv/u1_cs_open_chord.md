# U(1) CS：从 BV–BFV 到 disk/open-chord 的经典比较

**结果。** 在平凡 bundle、无源 disk、固定 chiral 外墙和下述光滑相容域内，释放共同 $A_t$ 给出切向 connection matching；完整 smooth fields 及其 proper arrows 可以装配，CPS 相加，指定的 current polynomial algebra 恢复独立的整圆 algebra。这个结论不依赖先对区域 fields 作 gauge quotient。

BV bulk 与边界 ghosts/antifields 下面逐项构造。它们解释约束及匹配的同调内容，但不自动给出 physical opening。[相对homotopy](relative_homotopy.md) 给出 product-collar 域的 cochain/pairing 比较；后续 [corner diagram](corner_descent.md) 和 [连续 observables](continuous_observables.md) 实际完成指定的线性图与 continuous polynomial/Hamiltonian 比较。任意 functional 或量子等价仍不能由此推论。

## 1. 独立模型与 ordinary CPS convention

令 $M=I\times D$，$I=[t_i,t_f]$，$D$ 是 oriented disk，orientation 为 $dt\wedge dx\wedge dy$。写
$$
A=A_tdt+a,\qquad A\mapsto A+d\lambda,\qquad
S_{\rm CS}=\frac{k}{4\pi}\int_M A\wedge dA,\quad k>0.
$$
后面用 $\kappa=k/(2\pi)$ 表示 action/current 的共同系数。$s$ 是物理外圆的正向坐标，$v>0$ 固定。未切分 action 独立定义为
$$
S_D=\frac\kappa2\int_M A\wedge dA+
\frac\kappa2\int_I dt\oint_{\partial D}(A_ta_s-va_s^2)ds.
\tag{1.1}
$$
不考虑 punctures、Wilson sources、nontrivial bundle 或额外 point action。有限 gauge maps 必须真实延拓到 disk；其外圆 winding 为零。Proper maps 在物理外圆为 $1$；非零外边界参数是 charged symmetries。没有把这两个群混成一个 BRST quotient。

普通 field variations 用
$$
\Omega=\delta\Theta,\qquad \iota_{X_F}\Omega=-\delta F,
\qquad \{F,G\}=dF(X_G).
\tag{1.2}
$$
直接计算
$$
\delta(A\wedge dA)=2\delta A\wedge dA-d(A\wedge\delta A),
\tag{1.3}
$$
以及
$$
A\wedge dA=dt\wedge[-a\wedge\dot a+2A_t d_Da-d_D(A_ta)].
\tag{1.4}
$$
由此得到
$$
d_Da=0,\quad\dot a=d_DA_t,\quad
A_t|_{\partial D}=va_s,\qquad
\Theta_D=-\frac\kappa2\int_Da\wedge\delta a.
\tag{1.5}
$$
时间初末项是 $\Theta_D^f-\Theta_D^i$，不丢弃。空间 wall 的 induced orientation 为 $-dt\wedge ds$；这是 covariant 与 canonical 计算相同符号的原因。(1.3) 有 xAct 任意一形式检验，(1.4) 有 Mathematica 任意分量函数检验。

## 2. Minimal BV fields：不从 reduced current space 出发

对尚未选择 physical closure 的 bulk，加入

| 场 | Spacetime degree | Ghost number | 作用 |
|---|---:|---:|---|
| $c$ | 0 | 1 | 无穷小 gauge 参数 |
| $A$ | 1 | 0 | connection |
| $A^+$ | 2 | $-1$ | 记录 $dA=0$ |
| $c^+$ | 3 | $-2$ | 记录 Noether identity $d(dA)=0$ |

这里 antifields 按 $\kappa$ 统一归一化；换成通常不带 $\kappa$ 的 cotangent momentum 需相应重标。令 $\mathbb A=c+A+A^++c^+$，使用 [formalism §2](formalism.md) 的 Cattaneo–Mnev graded convention。最小 resolution 为
$$
Q c=0,\qquad QA=dc,\qquad QA^+=dA,\qquad Qc^+=dA^+.
\tag{2.1}
$$
因为 gauge algebra Abelian，无 $[c,c]$ 或 $[A,c]$ 项。$Q^2=0$ 的每个分量就是 $d^2=0$。若删除 $A^+$ 再令所有 ghosts 为零，(2.1) 中的 flatness 方程就消失了。

场空间、odd pairing 和 action 为
$$
\mathcal F_M=\Omega^\bullet(M)[1],\qquad
\omega_M=-\frac\kappa2\int_M\delta\mathbb A\wedge\delta\mathbb A,
\qquad S_M=\frac\kappa2\int_M\mathbb A\wedge d\mathbb A.
\tag{2.2}
$$
只取 top spacetime degree 的积分。Pairing 仅有 $A$–$A^+$ 与 $c$–$c^+$ 两对，因此 ghost degree 是 $-1$；action 的 top component 是
$$
S_M=\frac\kappa2\int_M
\big(A\wedge dA+A^+\wedge dc+c\wedge dA^+\big).
\tag{2.3}
$$
保留最后两项的对称写法，避免在有边界时无声删掉 $cA^+$ 的边界项。第一项固定物理 normalization；另两项给 (2.1) 的 gauge/Noether resolution。

在 graded variation 中对 $d$ 积分分部，体积分配对给 $Q$，剩余项给
$$
\iota_Q\omega_M=\delta S_M-\pi^*\beta_{\partial M},
\qquad
\beta_\Sigma=\frac\kappa2\int_\Sigma\mathbb a\wedge\delta\mathbb a,
\quad\mathbb a=\pi\mathbb A.
\tag{2.4}
$$
这采用原文的完整 graded sign convention；若要题述的 $+\pi^*\alpha^\partial$，同时作 formalism (2.2) 的三项变换。普通 CPS 的 (1.5) 是从物理 component variation 重新得到的符号锚点，不把 superspace wedge 当成 commuting components 来读。原文 [§4](https://arxiv.org/pdf/2208.11211) 的公式已经逐页视觉核对；本目录另独立计算了物理分量的 Stokes、wall/cap 与 sewing 项。没有把普通分量检验称为全部 graded Cartan calculus 的机器证明。

## 3. Boundary BFV 与 open-face corner

二维 boundary face $\Sigma$ 上有
$$
\Phi_\Sigma=\Omega^\bullet(\Sigma)[1],\quad
\mathbb a=c+a+b,\quad b=A^+|_\Sigma,
$$
$$
\omega_\Sigma=\delta\beta_\Sigma,\qquad
Q_\Sigma c=0,\quad Q_\Sigma a=d_\Sigma c,\quad
Q_\Sigma b=d_\Sigma a.
\tag{3.1}
$$
$c,a,b$ 的 ghost degrees 是 $1,0,-1$；bulk $c^+$ 的三形式 pullback 为零。$\pi Q=Q_\Sigma\pi$ 由 pullback 与 $d$ 交换而来。

闭合 $\Sigma$ 的 charge 为
$$
S_\Sigma=\frac\kappa2\int_\Sigma\mathbb a\wedge d_\Sigma\mathbb a
=\kappa\int_\Sigma c\,d_\Sigma a.
\tag{3.2}
$$
这直接展示 ghost 配对的约束是 curvature，而不是任意外边界 current。对有边界的 face，必须保留未积分分部的左式。在同一 graded component convention 下，其 ghost-one部分写成
$$
\frac\kappa2\int_\Sigma(c\,da+a\wedge dc)
=\kappa\int_\Sigma c\,da-\frac\kappa2\int_{\partial\Sigma}c\,a.
\tag{3.3}
$$
最后的 corner 项不能用「这是 known BFV charge」略去。更高层的 transgression 保留 $\mathbb a_C=c+a_C$，corner 2-form 具有 ghost degree $1$，corner action 的 top component 来自 $\kappa\int_C c\,dc/2$，ghost degree $2$。这里以 induced orientation 逐 face 累加；不把一个带边界的 face 单独宣称为无 corner defect 的 Hamiltonian BFV system。

在 $\partial M$ 的全部 oriented faces 上，每条 corner 出现两次、incidence signs 相反；同一个 bulk superfield的 joint traces 使这些项相消。若只保留 seam face $I\times\gamma$，则它在 $I\times\{P,Q\}$ 和 $\{t_i,t_f\}\times\gamma$ 的相邻 face 数据仍须带着。只加两个 spatial endpoint 数值，不足以代替整套时间 corner 数据。

这些corner edges在time caps处还会终止。其codimension-three point资料仅剩 $c$（ghost number 1），配对的ghost number为2，$Qc=0$，Abelian point action为零；同样使用joint trace和induced incidence。这里仍没有新的ghost-zero point自由度。该typing防止把「已处理spatial endpoints」误写为已丢弃temporal vertices。

### Relative gauge 与 physical boundary realization

未加 physical closure 的 (2.2) 是 unrestricted BV–BFV package。加入 (1.1) 的 wall action，并要求 ordinary fields 满足 chiral wall 后，proper ghost 的实际参数域是外墙 trace 为零的 $c$；因此 $(\partial_t-v\partial_s)c=0$ 在外墙自动成立，$Q$ 保持物理边界条件。带外墙非零 trace 的变换仍可作为带 charge 的边界对称性讨论，但不混入这份 proper differential。

区域 seam 尚固定 source $q$ 时，保留其 source-covariant relation：
$$
Qq=\partial_t(c|_\gamma).
\tag{3.4}
$$
在一个固定 $q$ fiber 内，只准保持该 source 的变换；跨 source fibers 的 covariance 使用 (3.4)。Antifields 和 temporal cap data 仍保留；这里不以强令全部 antifields为零来制造边界 complex。[相对homotopy §§3–5](relative_homotopy.md)实际检查了exterior-smooth域内的restriction、linear homotopy与pairing；更大的functional比较不能由unrestricted package公式替代。

## 4. 两个区域各自的 action 与 release

令 $\gamma=[P,Q]$ 横截 disk，
$$
\partial D_1=O_1+\gamma,\qquad \partial D_2=O_2-\gamma.
$$
每片先固定 $q_i=A_{t,i}|_\gamma$。选择 seam 极化后完整 physical action 为
$$
S_i=\frac\kappa2\int_I dt\left[
-\int_{D_i}a_i\wedge\dot a_i+2\int_{D_i}A_{t,i}d_Da_i
-2\int_{\gamma_i}q_i a_i-\int_{O_i}v(a_i)_s^2ds\right].
\tag{4.1}
$$
它来自 covariant CS 加 $\kappa\int_{O_i}(A_ta_s-va_s^2)/2$ 和 $-\kappa\int_{\gamma_i}A_ta_i/2$。没有新增 seam kinetic field。

在正向 $dt\,ds$ 写自然 side variation 为 $\kappa(q\delta a-a\delta q)/2$。加 seam term 后恰为
$$
\Lambda_i=-\kappa\int_I dt\int_{\gamma_i}a_i\,\delta q_i.
\tag{4.2}
$$
加 physical wall term则为 $\kappa(A_t-va_s)\delta a_s$。这样既确定了 response 的类型，也固定了符号。

On-shell 的完整关系是
$$
\delta S_i|_{\mathfrak R_i}=\Theta_i^f-\Theta_i^i+\Lambda_i,
\qquad \Omega_i^f-\Omega_i^i=-\delta\Lambda_i.
\tag{4.3}
$$
$\Lambda_i$ 对 history projection 是 semibasic，系数 $a_i$ 仍依赖完整解。不能令 $\delta$ 只作用于 $q$，也不能给任意不同 history fibers 一份共同守恒 $\Omega$。

识别 $q_1=q_2=q$ 并释放共同 variation，得到
$$
\Lambda_1+\Lambda_2=-\kappa\int dt\int_\gamma(a_1-a_2)\delta q,
\qquad a_1|_\gamma=a_2|_\gamma.
\tag{4.4}
$$
两份 artificial boundary action 随后相消，外墙项仍在。相同 superfield 的 matching 也使 (2.4) 中两份 BFV boundary defect 相消；若只匹配 $q$ 而不匹配响应/ghost/antifield资料，就不能声称整个 dg defect 已取消。

## 5. Corner、实际群与可解域

Scalar primitive 的 joint trace 是
$$
B_i=\operatorname{Tr}_{O_i\cup\gamma_i} C^\infty(D_i,\mathbb R).
$$
Transverse corner处两条 smooth functions 必须共享端点值。局部用 $f(x)+g(y)-f(0)$ 延拓，再作 partition of unity；不同方向的 tangential derivatives 不须相等。Connection 的 traces 按一形式的实际 joint image 处理，不能直接复用这个 scalar 判据。

Flatness 给 $a_i=d\phi_i$，其常数重复只是不改变 $a_i$ 的参数化冗余。所有改变 bulk extension 的 $d\lambda_i$ 仍是保留的真实 directions。要得到属于 $B_i$ 的 time vector，端点需满足
$$
q(t,z)=v\partial_s\phi_i(t,z)|_{O_i},\qquad z=P,Q,
\tag{5.1}
$$
连同其时间导数兼容性。否则 variation of $H_i[q]$ 有端点项，不能称为该 smooth 域上的 Hamiltonian vector field。

从在 $O_i$ 为 $1$ 的 bulk map 取得的 admissible cut maps，恰有实 lift
$$
g|_\gamma=e^{i\chi},\qquad
\chi\in C^\infty([P,Q],\mathbb R),\quad\chi(P)=\chi(Q)=0.
\tag{5.2}
$$
必要性由 disk lift 及 $O_i$ 上选 $\lambda=0$；充分性由 joint extension。仅 $g(P)=g(Q)=1$ 允许非零 relative winding，不能延拓到 disk。无穷小 ghost 与有限 gauge policy 在此不同；必须同时记录。

在 source relation 上，$\phi_i|_\gamma\mapsto\phi_i|_\gamma+\chi$、$q\mapsto q+\dot\chi$。它保持端点和真实外墙。共同 cut action 的 infinitesimal space 记为 $K_\gamma$。

## 6. Full-field classical sewing：证明与局限

在共同 frame 与固定 disk collar atlas 中定义 $\mathcal C_\gamma^\infty$：每片满足自身完整方程及 (5.1)，seam 上 $A_t$ 与 tangential $a$ 匹配，且两份 full one-form 的所有必要 transverse jets 在 collar 中匹配。对 arrows 作同样 smooth descent 条件。这个条件不由 (4.4) 单独推出。

**命题 C1。** Restriction 与逐点 assembly 在 $\mathcal P_D$ 和 $\mathcal C_\gamma^\infty$ 之间互逆，保留 physical boundary problem、proper arrows 和 stabilizers；且
$$
J^*\Omega_D=(\Omega_1+\Omega_2)|_{\mathcal C_\gamma^\infty}.
\tag{6.1}
$$

**证明。** 所有 collar jets 匹配正好保证 piecewise smooth one-form 是一份 smooth one-form；局部 EOM 拼合为 $dA=0$，外墙和时间端点条件未改变。逆向 restriction 显然满足 regional equations、release 和同一 jet 条件。Action的分区积分与 (4.4) 使人工 wall 相消；Cauchy potential直接分区相加，给 (6.1)。Gauge maps 用同一 smooth atlas拼合，真实外墙仍为 $1$；restrict/assemble 对复合与 automorphism同样互逆。全程没有 quotient。∎

**存在性不是隐藏的 IBVP 假设。** 给任意 smooth circle primitive $f_0$，置 $f(t,s)=f_0(s+vt)$，选任意 smooth disk extension $\phi(t,\cdot)$，令 $A=d_{t,D}\phi$。它给 (1.5) 的完整解及合法 regional histories；所有 extension choices 都保留。给定任意 $q$ 和任意 incoming data则不保证 (5.1)，本命题未作该声称。

**为什么要保留两个装配层。** 只给 seam trace equality 的 flat pair 不一定属于 $\mathcal C_\gamma^\infty$。例如 seam $x=0$ 两侧 $a_-=x\,dx$、$a_+=2x\,dx$ 均 flat、切向 trace 相同，但粘合不为 $C^1$。在 primitive层，它们可经 boundary-trivial regional transformations 改成共同 smooth extension；这些 transformations 是需要保留的 arrows，不是 raw fields 本来相等的证据。

如果 regional primitives 有共同 seam trace，outer traces 已拼成 smooth circle，则可实际构造一个共同 smooth disk primitive：先延拓 outer trace，剩余 seam function 在端点为零，用 transverse boundary-defining coordinate作除法后延拓，最后 partition of unity。它与原每片 primitive 的差在该片完整 boundary 为零，故给明确 proper arrows。此构造证明 current-level lift 的存在，不给一个保持任意 full off-shell graded boundary data 的 canonical inverse。

**进一步的cochain修补。** 若全部surviving exterior faces（包括caps）的superfield资料已经smooth且joint compatible，则[相对collar构造](relative_homotopy.md)对仅trace-matched的piecewise fields也给连续 $p$，并保持其真实外trace。对flat $A$，$pA=A-d(HA)$，$HA|_{\rm exterior}=0$；原场、这个released proper correction及输出均保留。它允许改变并运输人工seam history，不能把这个homotopy comparison改写成raw identity。

Full flat disk 上
$$
\Omega_D(d u,d w)=-\kappa\oint_{\partial D}u\,dw.
\tag{6.2}
$$
其 kernel 是 boundary primitive为常数的 variations，即 $d\lambda$，可选 $\lambda|_{\partial D}=0$。这些 directions 留在 $\mathcal P_D$。相对外墙的 $U(1)$ stabilizer 为平凡群；若撤去 based 条件，则常数 $U(1)$ stabilizer重新出现，不可用同一结论。

## 7. 独立 observable algebras 与实际 kernel/image

在完整 fields 上定义
$$
Q_D[\alpha]=\kappa\oint_{\partial D}\alpha\,a,
\qquad Q_i[\alpha_i]=\kappa\oint_{\partial D_i}\alpha_i a_i.
\tag{7.1}
$$
Labels 分别是 $V_D=C^\infty(S^1)/\mathbb R$ 与 $V_i=B_i/\mathbb R$。这里 quotient 的是重复 smearing labels，**不是 bulk field space**。独立 global algebra 是这些 current functions 的有限 polynomial Poisson algebra，独立 regional algebra也仅由自身 $Q_i$ 生成。Hamiltonian lifts可用任意 smooth extension of $\alpha$，它们之差是被保留的 proper null vector。由 (6.2)
$$
\{Q[\alpha],Q[\beta]\}=\kappa\oint\alpha\,d\beta.
\tag{7.2}
$$

令 $C_{\rm lab}\subset V_1\oplus V_2$：seam label primitives可调常数后相等，outer labels在同一 circle坐标的所有 jets 相等。定义 $r$ 为拼合 outer label。其满射不依赖 target algebra：给 smooth $\alpha$，在 seam 选择端点为 $\alpha(P),\alpha(Q)$ 的固定线性 interpolation，按 §5 延拓。

若 $r u=0$，调整区域常数使 outer labels 为零，共同 seam label恰是 (5.2) 的 $\chi$。因此
$$
0\longrightarrow K_\gamma\longrightarrow C_{\rm lab}
\xrightarrow{r}V_D\longrightarrow0
\tag{7.3}
$$
有线性 section，且
$$
c_1(u_1,z_1)+c_2(u_2,z_2)=c_D(ru,rz).
\tag{7.4}
$$
$(7.3)$ 是 labels 的 exact sequence；完整 raw fields 的 kernel还含 bulk proper directions，不能把两者混写。

在独立 regional current algebras 的乘积中，让 $\mathcal A^{\rm adm}_{\rm cut}$ 由 $Q_C[u]=Q_1[u_1]+Q_2[u_2]$，$u\in C_{\rm lab}$，生成。共同 cut moment 是
$$
\mu[\chi]=\kappa\int_\gamma\chi(a_1-a_2).
\tag{7.5}
$$
它正是 release constraint，在这份 **admissible** source algebra 中 central；不是全体独立 regional functions 的 Poisson central element。

**命题 C2。** $Q_C[u]\mapsto Q_D[ru]$ 给
$$
\mathcal A^{\rm adm}_{\rm cut}/\langle\mu[K_\gamma]\rangle
\ \cong\ \mathcal A_D^{\rm current}.
\tag{7.6}
$$
**证明。** (7.4) 保持括号；interpolation 给每个 global generator 的实际 lift。用 (7.3) 的 splitting，有限 polynomial source 分为 cut moment variables 和 global current variables。后者没有额外 polynomial relation：任意有限个独立 smooth labels 的 Hamiltonian linear functionals在完整 flat field space上独立，故到相应有限维 dual 的线性映射满射。Polynomial vanishing kernel恰为含 cut moment的理想。∎

这也计算了传统 characteristic reduction 会在 observable 层施加什么关系，却没有执行任何 field-space quotient。若在有限独立的 moment variables 上引入 Koszul antighosts $\eta_a$、$d\eta_a=\mu_a$，其 $H^0$ 正好实现这个理想。它只是该 polynomial constraint presentation 的检验，不是无限维 continuum BV observable complex 与 (7.6) 的已证 quasi-isomorphism。

### 两个 charge 检验

开弧单独的 $c_\gamma(\alpha,\beta)=\kappa\int_\gamma\alpha\,d\beta$ 有
$$
c_\gamma(\alpha,\beta)+c_\gamma(\beta,\alpha)
=\kappa[\alpha\beta]_P^Q.
\tag{7.7}
$$
所以 unrestricted endpoints 不给 Poisson cocycle。完整 $O_i\cup\gamma_i$ 的 joint traces 使 endpoint defects 相消。即使 $f=s(1-s),g=s^2(1-s)$ 两端皆零，单片仍有 $c_\gamma(f,g)=\kappa/60$；只有共同 diagonal cut 的两个相反取向 central terms 相消。不能先把单个 charged edge current当作无 anomaly 的 gauge constraint。

在整圆取 $\alpha=\cos s$、$\phi=\sin s$，有 $a=d\phi$ 而 $Q_D[\cos s]=\kappa\pi\ne0$。因此直接用 unrestricted de Rham $H^1(D)=0$ 代替这个有物理外墙的 observable algebra 会删掉真实 observable。

## 8. Dynamics 与三片 composition

区域 Hamiltonian为
$$
H_i[q]=\frac\kappa2\int_{O_i}v(\partial_s\phi_i)^2ds
+\kappa\int_{\gamma_i}q\,d\phi_i.
$$
在 matched fields 上 $H_1+H_2=H_D$，其中 $H_D=\kappa\oint v(\partial_s\phi)^2/2$。共同 $q$ 项相消，而实际外墙 $v$ 项保留。$\phi(t,s)=f_0(s+vt)$ 给 current transport；改变 $v$ 不改变裸 CS boundary complex，却改变物理 dynamics。

这里 H_D 是完整 CPS 的 Hamiltonian functional，并不属于 §7 的 finite cylindrical current core。它在该 core 上诱导 derivation；后续 [OCE2/O3](continuous_observables.md) 证明其不属于 core，并给包含 H_D 的独立 continuous Hamiltonian polynomial algebra。

对两条不相交、端点互异的 chords，所有 seam contributions逐边相消。先粘任一 chord都保留另一 chord的完整 history relation、fields与 proper arrows。Label exact sequence的 kernel是两份 $K_\gamma$ 的直和，interpolation逐边选择；两次把 moment variables置零的次序相同。Full field assembly逐点相同，三片 current comparison因此交换。这个证明没有通过「定义 associator 为 global map的复合」偷换区域构造。

共享 junction、self-sewing产生 handle、非平凡 transitions及量子关联子不在这个三片命题内；它们不是被缺省设为零，而是需要不同的 joint/cocycle资料。

**Verified:** (1.3)–(1.4)、wall/seam response、charge/endpoints、non-smooth flat counterexample、finite constraint diagnostics；(6.1)、(7.3)–(7.6) 与三片结果有上述解析证明。

**Assumptions:** smooth source-free trivial-bundle disk，$k>0$、同一 $v>0$，实际可延拓 maps，joint history/corner conditions，raw assembly 的 smooth collar jets，有限 current polynomials。

**Not verified:** total corner model 的 local symplectic/action enhancement、任意 prescribed-history well-posedness、任意 functional/quantum observable 类、large-gauge quantum theory、thin Wilson/vertex 或 quantum BV pushforward。指定的 continuous polynomial cohomology 已由后续 O1–O3 计算，不等于旧 finite-current core。
