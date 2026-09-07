# SU(2) Chern–Simons：两个 punctures 的 current／holonomy bridge

**在下述 regular residue、外边界 framing 和 Sobolev 类中，完整 physical-current phase space 是有限 port 与 boundary connection 的实际 fiber product。** 有限 port 为两个 conjugacy classes 的 quasi-Hamiltonian fusion；从完整对象到它的操作是保留 basepoint 的 based-loop quotient，并须修正二形式。该 quotient 忘掉 physical current 坐标，不能当作原 proper gauge reduction。把 boundary connection 一并保存，则有反向重构。

这里的标记是穿过空间切片的 Wilson worldlines，尚未把任意几何 corner 或 boundary Wilson endpoint 识别成 puncture。量子版本另见 [两个非真空通道](<SU(2) Chern-Simons charged sewing and channel maps.md>)。

## 1. Action、residue 与方向

取有向 disk $D$、内部两个固定点 $z_1,z_2$、外边界 basepoint $b$，时间为普通区间。取平凡 $SU(2)$ bundle，
$$
B(X,Y)=-\operatorname{tr}_{\mathbf2}(XY),\quad
T_a=-i\sigma_a/2,\quad B(T_a,T_b)=\delta_{ab}/2,
$$
$$
A^h=h^{-1}Ah+h^{-1}dh,\qquad \dot U_\gamma=-a(\dot\gamma)U_\gamma .
$$
固定 $k>0,v>0$。每个 worldline 增加 orbit variable $b_i(t)\in SU(2)$、固定 $\lambda_i\in\mathfrak{su}(2)$ 和 $Q_i=b_i\lambda_i b_i^{-1}$。选 $\lambda_i$ 使
$$
\exp(2\pi\lambda_i/k)\sim\operatorname{diag}(e^{i\alpha_i},e^{-i\alpha_i}),
\qquad 0<\alpha_i<\pi,
$$
且 $\lambda_i$ 在一个已选 open alcove lift 内。这保证 exponentiation 在该 orbit 上与 conjugacy class 一一对应，并且两个 stabilizers 都为 $U(1)$。本文不把 exponentiation 的不同 logarithms 或非零 residue 的中心 holonomy fibers 合并。

完整 canonical action 是
$$
\begin{aligned}
S={}&\frac{k}{4\pi}\int dt\left[
-\int_D B(a\wedge\dot a)+2\int_D B(A_t,F_a)
-v\oint_{\partial D}^{\mathrm{ccw}} B(a_s,a_s)\,ds\right]\\
&+\sum_{i=1}^2\int dt\,B\!\left(\lambda_i,
b_i^{-1}\dot b_i+b_i^{-1}A_t(z_i)b_i\right).
\end{aligned}
$$
Bulk terms use the distributional point-source prescription: away from the points the fields are smooth; near each point an allowed representative has $a=-P_i\,d\varphi/k+$ regular terms, with residue $P_i$ initially varied independently of $Q_i$. Equivalently excise small disks, retain the residue boundary terms in Stokes' formula, and then take the limit. $d(d\varphi)=2\pi\delta_{z_i}$; the pole self-wedge is zero, and the remaining kinetic integrals have finite limits. $A_t$ is regular at each puncture. No product of two point delta distributions occurs.

右乘 $b_i$ 的 stabilizer 只改变 orbit potential 的局部 primitive／时间端点项；相空间变量为 $Q_i\in\mathcal O_{\lambda_i}$。Gauge transformation 同时给 $b_i\mapsto h(z_i)^{-1}b_i$，故 orbit action 的 covariant derivative 正确。不同 orbit charts 的时间端点 primitive 随 action 一同保存；这里是 classical action，不预设 quantum integrality。

先变分 $A_t$，再变分 $b_i,a$，得到
$$
\boxed{\frac{k}{2\pi}F_a+\sum_iQ_i\delta_{z_i}=0,\qquad
D_tQ_i=0,\qquad \dot a=D_aA_t\quad(D\setminus\{z_i\}),}
$$
以及 physical boundary condition $A_t=v a_s$。Gauss law 的 delta 部分给 $P_i=Q_i$。因此正向小圆（逆时针）的 transport 为
$$
U_{\ell_i}=\exp(2\pi Q_i/k).
$$
这是 source strength 与 holonomy 的 classical 字典，没有 $k+2$ 或 Weyl shift。

时间端点的一形式和其 exterior derivative 为
$$
\Theta=-\frac{k}{4\pi}\int_D B(a\wedge\delta a)
+\sum_iB(\lambda_i,b_i^{-1}\delta b_i),
$$
$$
\Omega((\dot a_1,\zeta_{1i}),(\dot a_2,\zeta_{2i}))
=-\frac{k}{2\pi}\int_D B(\dot a_1\wedge\dot a_2)
-\sum_iB(Q_i,[\zeta_{1i},\zeta_{2i}]),
\qquad\zeta_i=\delta b_i b_i^{-1}.
$$
这里 $\dot a_1,\dot a_2$ 表示切向变化，不是时间演化。Orbit 项来自 Maurer–Cartan equation，不能从有源模型中删除。对 infinitesimal physical convention $h=e^{t\epsilon}$，$\delta_\epsilon a=D_a\epsilon$、$\delta_\epsilon b_i=-\epsilon(z_i)b_i$，有
$$
\iota_{\delta_\epsilon}\Omega
=\delta\!\left[\frac{k}{2\pi}\int_D B(\epsilon,F_a)
+\sum_iB(\epsilon(z_i),Q_i)\right]
-\frac{k}{2\pi}\oint_{\partial D}^{\mathrm{ccw}}B(\epsilon,\delta a).
$$
在 Gauss locus，outer-identity gauge 为退化方向；非零外边界参数仍携带 current charge。

Artificial cut 避开 punctures，沿用 chord action 的 $-k\int B(q,a)/(2\pi)$。共用 $q$ 后的 release 匹配两侧 tangential connection，outer endpoints 保留 $q=v a_s$ 与实际 joint histories。Worldline 只分配给其所在 region，不重复添加。以下 phase-space theorem 处理这种兼容解的切片；不是任意独立 $q$ 的 IBVP 定理。

## 2. 独立的 continuum target 和全部 gauge 数据

定义 $N$ 为上一节 Gauss solutions／orbit variables 除以
$$
\mathcal G_0=\{h:D\to SU(2):h|_{\partial D}=1,\ h\text{ 在 punctures 正则}\}.
$$
不固定内部 puncture frame，$b_i$ 的右 stabilizer 是 orbit presentation 的冗余。外边界整条 frame 为 physical data。先使用 fixed sufficiently high Sobolev order：bulk gauge $H^\ell$、$\ell>2$，去掉固定 puncture collars 后的 connections 为 $H^{\ell-1}$；boundary loop order $s=\ell-\tfrac12>\tfrac32$，connection order $s-1$。取 smooth 子类恢复原项目的 smooth fields。Collars 上的 logarithm/orbit condition 为上一节规定的 regular class。

令 $L_sG=H^s(S^1,G)$。每个外边界 loop 都可延拓到 disk 并在 puncture neighborhoods 取常数，因为 $SU(2)$ simply connected。故 $L_sG$ 在 $N$ 上是实际 residual action；其 based subgroup 为 $\Omega_sG=\{g:g(b)=1\}$。这些变换是 active physical symmetries，本文没有改称 proper gauge。

AMM 的 group 参数为 $g=h^{-1}$，其 boundary circle 取与 induced orientation 相反的 **顺时针** 参数 $u\in[0,1]$。定义
$$
\sigma=-\frac{2\pi}{k}\Omega,\qquad
\Phi([a,Q])=a|_{\partial D,\mathrm{cw}}\in\mathcal A_{S^1}=H^{s-1}\Omega^1(S^1,\mathfrak g).
$$
上一节 boundary contraction 给
$$
\iota_{v_\epsilon}\sigma=\delta\int_0^1B(\Phi,\epsilon)\,du .
$$
所以这是 AMM 的 Hamiltonian loop-group convention。AMM partial holonomy $W_u$ 定义为
$$
W_u^{-1}\partial_u W_u=\Phi_u,\qquad W_0=1,\qquad
\operatorname{Hol}_{\mathrm{A}}(\Phi)=W_1.
$$
相同路径上 $W=U^{-1}$；顺时针外圈再取逆，恰给 physical 逆时针 outer transport。方向和逆元两个步骤都不可省略。

## 3. 当前层到有限 port：实际映射和反向字典

选从 $b$ 到两个 puncture collars 的不相交 base paths，记其 transports 为 $t_i$。选 ribbon order，使 physical outer loop 先遍历第二个 based puncture loop、再遍历第一个；transport 右因子先作用。定义
$$
\mu_i=t_i^{-1}\exp(2\pi Q_i/k)t_i\in\mathcal C_i,\qquad
p:N\longrightarrow X=\mathcal C_1\times\mathcal C_2,\quad
p([a,Q])=(\mu_1,\mu_2).
$$
由路径词直接得到
$$
\boxed{\operatorname{Hol}_{\mathrm{A}}(\Phi)=\mu_1\mu_2=:\mu.}
$$
内部 gauge 同步作用于 $t_i,Q_i$ 而相消。Outer based loops 也不改变 $\mu_i$；constant outer frame 则同时 conjugate 两个 $\mu_i$。

**实际重构命题。**
$$
\boxed{N\ \cong\
\{(x,A)\in(\mathcal C_1\times\mathcal C_2)\times\mathcal A_{S^1}:
\mu(x)=\operatorname{Hol}_{\mathrm{A}}(A)\}.}
$$
右边的 $A$ 是完整 boundary connection，不能仅保存 $\operatorname{Hol}_{\mathrm{A}}(A)$。

证明先在去掉 punctures 的 disk 上独立构造 flat local system：$\pi_1$ 自由生成元的 transports 指定为 $\mu_1,\mu_2$，所以不存在额外 face relation；outer word 按上式指定。沿割开的 polygon trivialize，选平滑 paths 实现这些有限 transports，胶合成 flat connection。每个 inner collar 的 monodromy 属于指定 regular class，故可 gauge 到 $-Q_i\,d\varphi/k$；同一 alcove 内 exponentiation 的一一性恢复 $Q_i$，其 stabilizer 恰为已除掉的 orbit redundancy。

给定所需 boundary $A$，任一初始实现的 boundary $A'$ 有相同 holonomy。解一维 transport ODE 得唯一 based loop 把 $A'$ 变为 $A$。该 loop 可向内部延拓，故重构 onto。若两个实现有相同 $(x,A)$，parallel-transport comparison 给 gauge map；相同 $A$ 及 $h(b)=1$ 迫使其沿整个 boundary 为一，所以恰由 $\mathcal G_0$ 识别。这个论证还给同态的对应，不把 stabilizers 丢掉。以 local group charts、ODE smooth dependence 和 collar extensions 得到 Sobolev local smooth inverses；无需一个全局 logarithm 或全局 section。

在此 presentation，$p$ 的 fibers 恰为 $\Omega_sG$ torsors，$\Phi$ 的 fiber 是 $\mu^{-1}(\operatorname{Hol}_{\mathrm{A}}(A))$。$\Omega_sG$ 的作用 free：固定 boundary connection 的 based gauge ODE 只有 identity 解。Holonomy 是 smooth submersion，故该 fiber product 是 Banach manifold。由于 $X$ compact，对任意 compact $K\subset\mathcal A_{S^1}$，$\Phi^{-1}(K)$ 是 $X\times K$ 的 closed subset，因而 compact；这直接核查了 proper moment map 条件。

**Inner cap 的方向与 orbit form。** Excised inner circle 的 induced orientation 是顺时针，故 AMM 参数在这里为逆时针。Regular cap 给
$$
A_i=-\frac{2\pi}{k}Q_i\,du,\qquad
\operatorname{Hol}_{\mathrm A}(A_i)=\exp(-2\pi Q_i/k)=m_i^{-1}.
$$
因此 inner affine orbit 是 $\mathcal O_i^-=\operatorname{Hol}_{\mathrm A}^{-1}(\mathcal C_i^{-1})$，不是外面记号的 $\mathcal C_i$。在 constant conjugation directions 上，它的 Hamiltonian form 为
$$
\sigma_{\mathcal O_i^-}(v_\xi,v_\eta)
=-\frac{2\pi}{k}B(Q_i,[\xi,\eta]).
$$
在该 orbit 上作 Hamiltonian reduction 时，从 surface form **减去** $\sigma_{\mathcal O_i^-}$，得到的正 orbit 项恰为 $-2\pi\Omega_{\mathrm{puncture}}/k$。一般 loop directions 使用同一 affine-orbit reduction；regular-log cap 消去 inner based loops，正则内部 gauge 消去剩余 frame。AMM §9.3 的 double 在 inner class $\mathcal C_i^{-1}$ 上 reduction，剩余 outer port 正是物理的 $\mathcal C_i$。这同时核对 cap 项、逆元和后文 fusion order。

闭性来自 $\delta^2\Theta=0$；weak nondegeneracy 可在 excised surface 的 flat deformation complex 上检验：与 compact interior variations 的 pairing 消失迫使变化为 gauge，inner orbit terms 恰补上 residue variations，outer pairing 最后要求该 gauge 的 boundary value 为零。正规 Sobolev slice 的存在使用 [AMM §9.1、Remark 9.1](https://arxiv.org/html/dg-ga/9707021#S9.SS1) 的 framed surface theorem及上述 inner-orbit reduction。这是声明的函数分析输入，有限矩阵检查不能替代它。

## 4. 修正二形式与 fusion cross-term

在 $\mathcal A_{S^1}$ 上令 $\vartheta_u=\delta W_u W_u^{-1}$，定义
$$
\varpi=\frac12\int_0^1 B(\vartheta_u\wedge\partial_u\vartheta_u)\,du,\qquad
\chi=\frac1{12}B(\theta^L,[\theta^L,\theta^L]).
$$
AMM Proposition 8.1 给
$$
\delta\varpi=-\operatorname{Hol}_{\mathrm{A}}^{*}\chi,\qquad
\iota_{v_\epsilon}\varpi
=-\delta\int B(A,\epsilon)
+\frac12\operatorname{Hol}_{\mathrm{A}}^{*}B(\theta^L+\theta^R,\epsilon(b)).
$$
结合 §2 的实际 moment identity，$\sigma+\Phi^*\varpi$ 在 based-loop directions 上为零且 invariant，因而下降。其准确公式为
$$
\boxed{p^*\omega_{12}=-\frac{2\pi}{k}\Omega+\Phi^*\varpi,\qquad
\Omega=-\frac{k}{2\pi}\bigl(p^*\omega_{12}-\Phi^*\varpi\bigr).}
$$
$\Omega$ 本身在 active based loops 上不水平，所以不存在“原闭 CPS 原样下降”的同一命题。

每个 $\mathcal C_i$ 的二形式明确取
$$
(\omega_i)_g(v_\xi,v_\eta)
=\frac12 B((\operatorname{Ad}_g-\operatorname{Ad}_{g^{-1}})\xi,\eta),
\qquad v_\xi(g)=\xi g-g\xi .
$$
其 loop-orbit 前像及 puncture cap 的关系亦可直接验算。在 $A=\beta T_3\,du$ 上，以 conjugation directions $T_1,T_2$ 变分，
$$
\sigma_{\mathrm{orbit}}(T_1,T_2)=\beta/2,\qquad
\varpi(T_1,T_2)=(\sin\beta-\beta)/2,\qquad
\omega_{\exp(\beta T_3)}(T_1,T_2)=\sin\beta/2.
$$
这三项把 residue orbit 的 KKS form 与 conjugacy form 的差明确显示出来。一般 orbit 恒等式由 equivariance 和同一 Maurer–Cartan 计算给出，亦是 AMM Proposition 8.4；不是把 coadjoint orbit 与 conjugacy class 的二形式直接等同。

对两个 punctures，沿同一个 marked polygon 作 boundary integral。若一段 normalized transporter 为 $g(u)$、$g(0)=1,g(1)=d$，前一段的终值为 $c$，代入
$$
\delta(cg)(cg)^{-1}=\delta c\,c^{-1}+\operatorname{Ad}_c(\delta g\,g^{-1})
$$
并分部积分，得到 segmentation identity
$$
\frac12\int B\!\left(\delta(cg)(cg)^{-1}
\wedge\partial_u[\delta(cg)(cg)^{-1}]\right)du
=\varpi_g+\frac12B(c^{-1}\delta c\wedge\delta d\,d^{-1}).
$$
逐段应用：base-path 的正反段与内部 orbit correction 配对，各 puncture 留下 $\omega_i$，outer boundary 留下已减去的 $\Phi^*\varpi$，第二个 ordered port 额外留下
$$
\boxed{\omega_{12}=\omega_1+\omega_2+
\frac12B(\mu_1^*\theta^L\wedge\mu_2^*\theta^R).}
$$
这给出当前 sourced CPS 到有限 port 的实际二形式 comparison。它是 [AMM Theorem 9.3、equation (43)](https://arxiv.org/html/dg-ga/9707021#S9.SS3) 在 genus zero／两个 inner orbit reductions 上的具体应用；不是只从群乘法猜出 cross-term。Theorem 6.1 与 8.3 的 minimal-degeneracy 证明保证全部 q-Hamiltonian 公理，本文的有限 residual 仅核查符号与展开。

## 5. 独立 global pair of pants 与保留的信息

在三边界球面上独立定义 flat representations：inner positive puncture holonomies 在 $\mathcal C_1,\mathcal C_2$，outer physical holonomy 为 $\mu_1\mu_2$，basepoint frame 保留。内部 boundary frames 除 gauge 后恰为 $X$；这由 §3 的 free fundamental-group generators 和 parallel-transport construction 证明，不以 $p(N)$ 定义 target。

若再指定 outer conjugacy class $\mathcal C_o$ 并释放 constant outer frame，目标为
$$
X_{\mathcal C_o}=\mu^{-1}(\mathcal C_o)/SU(2).
$$
在每个 smooth stratum，reduced form 满足
$$
q^*\omega_{\mathrm{red}}=\iota^*\omega_{12}-\mu^*\omega_{\mathcal C_o},
\qquad \Omega_{\mathrm{red}}=-\frac{k}{2\pi}\omega_{\mathrm{red}}.
$$
当固定 $\mu=m$ 再除 $Z_m$ 时，后一 correction 的拉回为零。跨 strata 使用 invariant smooth functions 的 differential quotient，绝不把 singular reduction 当作 free quotient。

信息没有被 group multiplication 充分描述。例如 $\alpha_1=\alpha_2\in(0,\pi)$、$\mu_2=\mu_1^{-1}$ 时，$\mu=1$ 固定，但所有 $\mu_1\in\mathcal C_1\cong S^2$ 均保留在 $X$ 中。它们在外 frame 固定时是不同 finite-port configurations。进一步的 diagonal conjugation 是另一操作。完整 $N$ 在每个 $x$ 之上还有全部 compatible boundary connections，即一个无限维 based-loop fiber。

因此 finite port + 完整 $\Phi$ 和 compatibility equation 可以恢复 current layer；只保存 $\mu$ 或单个输出 class 则不能。Boundary chiral evolution 在 compatible histories 上使 $a_s$ 平移，内部通过 $D_tQ_i=0$ 同步运输；若基点被固定，monodromy 按基点 transport conjugate。本文不把 finite port 单独视为完整 physical boundary Hamiltonian system。

## 6. 验收边界

**Verified:** sourced Gauss law 与 orbit CPS；actual $(p,\Phi)$ 的双向字典、properness、based-loop fibers；corrected two-form、ordered cross-term；独立 pair-of-pants comparison 与有损 $\mu$-forgetting 的例子。证明使用上列 AMM Sobolev／reduction 定理；可计算项见 [本轮 ledger](<../numerics/charged CS bridge claim ledger.md>)。

**Assumptions:** oriented trivial-bundle disk；两个分离的 worldlines；regular open-alcove residues；完整 outer physical frame；固定 base paths/ribbon order；同一 $B,k$、puncture prescription、Sobolev class 和 compatible histories。

**Not verified:** arbitrary geometric corners 的 puncture identification、中心 holonomy 的非零-residue extension、真实 shrinking-domain limit、从 classical $\lambda_i$ 到 integrable quantum $j_i$ 的无处方量子化定理。后者不能用 $\alpha_i=2\pi j_i/k$ 擅自补上。
