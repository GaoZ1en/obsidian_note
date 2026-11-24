---
paper id: 2611.27739v1
title: 'Bulk Wilson Loops from $\mathscr{I}$'
authors:
  - James Drummond
  - Bruno Giménez Umbert
  - Prahar Mitra
publication date: 2026-11-20T15:35
abstract: |-
  作者把 Carrollian Yang–Mills 的 kinetic action 改写在实的未来 null infinity 上，用沿 null time 的 Hilbert transform 得到 logarithmic propagator。对 bulk null polygonal Wilson loop，提出由各顶点 good cut 上 holomorphic frames 循环相乘取 trace 的边界算符，并在 g^2 阶解析证明边界 rational integrand 与 self-dual bulk Lagrangian insertion 的 integrand 相等。
comments: "20 + 8 pages, 2 figures; PDF 29 pages including cover"
url: https://arxiv.org/abs/2611.27739v1
summary: "用 good-cut frame 的循环拼接编码 bulk Wilson loop；显式展示边界传播核、归一化及相邻 frame 的 spurious-pole 抵消。"
tags: []
---

# 从相交 good cuts 拼出一个 bulk observable

这篇的具体用途不是再提供一个散射振幅字典，而是给区域／边界拼接一个可计算的范例：每一块 cut 上有带两个端点的 bundle map，闭合链的 trace 是 gauge invariant，单块表达式带的伪极点只有把相邻块及同块二阶项一起保留才消失。另一个可复用对象是实 $\mathscr I^+$ 上的 $|\omega|$ kinetic kernel，适合对照当前边界核的 domain、零模与归一化问题。

来源为 [arXiv:2611.27739v1](https://arxiv.org/abs/2611.27739v1)。正文页码比 PDF 页码小 1。主要结果是 **$O(g^2)$、撤去 regulator 后的 rational integrand 恒等式**，不是已处理 cusp UV 发散的 integrated Wilson loop 等价，也不是完整非微扰边界对偶。本文的边界场本来就是 bulk gauge field 的渐近值，不能假定它们是独立的 AdS/CFT 式边界自由度。

## 1. Good cut、helicity 和 frame 的端点

四维 Minkowski 号差 $(-,+,+,+)$，取 flat null coordinates

$$
x^\mu=rq^\mu(z,\bar z)+un^\mu,\qquad
q^\mu=\frac12(1+z\bar z,z+\bar z,(\bar z-z)/i,1-z\bar z),
\quad n^\mu=(1,0,0,-1).
$$

$q^2=n^2=0,n\cdot q=-1$，所以 $ds^2=-2du\,dr+r^2dz\,d\bar z$。这些归一化及后面使用的 $\epsilon^{(+)}=\sqrt2\partial_zq$、$\epsilon^{(-)}=\sqrt2\partial_{\bar z}q$ 的内积已用 Mathematica 复算。本文 $q(z,\bar z)$ 的第三分量与常见 celestial 约定相反，$u$ 也与部分参考文献差 2；换约定时 helicity 不能只改名字。

bulk 点 $x$ 的未来光锥在 $\mathscr I^+$ 切出

$$
C_x:\quad u=-x\cdot q(z,\bar z).
$$

于是 $[O]_x(z,\bar z):=O(-x\cdot q,z,\bar z)$ 是把边界场限制到 $C_x$，不是新增一个 bulk field。Poincaré 变换将 $C_x$ 映到 $C_{\Lambda x+a}$。如果 $q_i=x_{i+1}-x_i$ 为 null，$C_{x_i}$ 与 $C_{x_{i+1}}$ 在 $q_i$ 对应的方向相切于一个点 $P_i$。闭 null polygon 的几何因此成为一串相交球面。

场和耦合采用

$$
\mathcal L_{\rm bulk}=-\frac14\operatorname{Tr}F^{\mu\nu}F_{\mu\nu},\qquad
F=dA+gA\wedge A,
\qquad \operatorname{Tr}(T^IT^J)=\delta^{IJ}.
$$

这里的 $\operatorname{Tr}$ 是作者选定的 algebra bilinear normalization。Wilson loop 的表示迹另记 $\operatorname{Tr}_R$，其 quadratic Casimir 定义为 $\sum_IT_R^IT_R^I=-C_R\mathbf1$；不要丢掉此负号。

渐近 fall-off $A_u=O(r^{-1}),A_r=O(r^{-2}),A_z=O(1)$ 留下

$$
a=A_zdz,\qquad \bar a=A_{\bar z}d\bar z.
$$

$A_z,A_{\bar z}$ 分别是 weights $(1,0),(0,1)$ 的 Carroll primaries；正频率部分分别 annihilate 正、负 helicity gluon。large gauge transformation 的参数 $h(z,\bar z)$ 不必在 $\mathscr I^+$ 为单位元，

$$
A_{\bar z}\mapsto hA_{\bar z}h^{-1}+g^{-1}h\partial_{\bar z}h^{-1}.
$$

在 trivial connection 附近，holomorphic frame 定义为

$$
(\partial_{\bar z}+gA_{\bar z})|_{C_x}U_x(P|Q)=0,
\qquad U_x(Q|Q)=\mathbf1,
\qquad U_x(P|Q):E_Q\to E_P.
$$

它是 Riemann surface 上 $\bar\partial$ 问题的 transport，不是已选一条实曲线的通常 Wilson line。本文使用的 perturbative solution 是 (3.19)，正文 p.11／PDF p.12：

$$
U_x(z|z')=1+\sum_{m\ge1}\left(-\frac g{2\pi}\right)^m
\int\prod_{a=1}^m d^2z_a\,
\frac{(z-z')[A_{\bar z_1}]_x\cdots[A_{\bar z_m}]_x}
 {(z-z_1)(z_1-z_2)\cdots(z_m-z')}.
$$

$d^2z=i\,dz\wedge d\bar z$，$\int d^2z\,\delta^{(2)}(z-w)=1$。matrix factors 的顺序不能交换。端点变换

$$
U_x(P|Q)\mapsto h(P)U_x(P|Q)h(Q)^{-1}
$$

决定了如何拼接：每个相邻端点的 gauge factors 必须两两消掉。作者提出的边界算符是

$$
\mathcal W[C_n]=\frac1{d_R}\operatorname{Tr}_R
 [U_{x_1}(P_1|P_n)U_{x_n}(P_n|P_{n-1})\cdots U_{x_2}(P_2|P_1)]. \tag{4.6}
$$

右端从 $E_{P_1}$ 依次走回 $E_{P_1}$；trace 消掉最后的共轭。这是其 gauge invariance 的实际构造，而不是仅称它为“缝合算符”。bulk 对应物是 $W[C_n]=d_R^{-1}\operatorname{Tr}_R\mathcal P\exp(-g\oint_{C_n}A)$。

## 2. 实 null infinity 上为什么出现 logarithm

§3.2 与附录 A 的新 kinetic action 为

$$
S_{\rm kin}=-8i\int_{\mathscr I^+}du\,d^2z\,
 \operatorname{Tr}[\partial_uA_z\,\mathcal L(A_{\bar z})],
\qquad
\mathcal Lf(u)=\frac1{2\pi}\operatorname{PV}\int_{\mathbb R}\frac{f(u')}{u-u'}du'.
$$

$\mathcal L$ 是通常 Hilbert transform 的一半。它使 action 在 $u$ 上非局域，不需要将 $u$ 复化。采用
$A(u)=\int d\omega\,e^{i\omega u}\alpha(\omega)/(2\pi)$，由

$$
\operatorname{PV}\int_{\mathbb R}\frac{e^{-i\omega u}}u du
 =-i\pi\operatorname{sign}\omega
$$

得 $\mathcal L(\alpha)=-i\operatorname{sign}(\omega)\alpha/2$。在 $u$ 积分中与 $\alpha_z(\omega)$ 配对的是 $\alpha_{\bar z}(-\omega)$，故

$$
S_{\rm kin}=4i\int d^2z\frac{d\omega}{2\pi}|\omega|
 \operatorname{Tr}[\alpha_z(\omega)\alpha_{\bar z}(-\omega)].
$$

用权重 $e^{iS}$，mixed covariance 就是

$$
\langle\alpha_z^I(\omega,z)\alpha_{\bar w}^J(\omega',w)\rangle
 =\frac{\delta^{IJ}}{4|\omega|}(2\pi)\delta(\omega+\omega')\delta^{(2)}(z-w).
$$

逆 Fourier 的 $\omega=0$ 发散不能省去。取 $\ell_0>0,\epsilon>0,t\ne0$，可明确计算

$$
\int_0^\infty\frac{d\omega}{\omega}e^{-\epsilon\omega}
 [\cos(\omega t)-\cos(\omega\ell_0)]
 =\frac12\log\frac{\epsilon^2+\ell_0^2}{\epsilon^2+t^2}
 \longrightarrow-\log\frac{|t|}{\ell_0}.
$$

连同负频率和 $1/(4|\omega|)$，得到

$$
\langle A_z^I(u,z)A_{\bar w}^J(u',w)\rangle
 =-\frac{\delta^{IJ}}{4\pi}\log\frac{|u-u'|}{\ell_0}\delta^{(2)}(z-w). \tag{3.11}
$$

以上 PV 的 sine integral、Fourier coefficient、带阻尼 log integral 与二次导数均已用 Mathematica 复算。离开 coincident time，

$$
\langle\partial_u^2A_z^I(u,z)A_{\bar w}^J(u',w)\rangle
 =\frac{\delta^{IJ}}{4\pi(u-u')^2}\delta^{(2)}(z-w).
$$

这不是自动固定所有 distribution/contact terms 的等式。

**domain 是实质条件。** 一般 gauge field 在 $u\to\pm\infty$ 不衰减，Hilbert transform 本身未必存在。作者 p.10 明说需分出 radiative、Goldstone、soft modes，当前 action 的计算只用有足够衰减的 radiative part；soft effective action 尚未加入。故这个核可用于辐射传播，却还不能充作完整 large-gauge-charge／edge-sector action。

B.1 从 bulk 模展开、stationary phase 和标准 creation–annihilation commutator 得到同一 $1/(4\pi)$。应区分实对称核与 prescribed correlator：

$$
G^{>}(t)=-\frac1{4\pi}\log\frac{\epsilon+it}{\ell_0},\quad
G^{<}(t)=-\frac1{4\pi}\log\frac{\epsilon-it}{\ell_0},\quad
G_F(t)=-\frac1{4\pi}\log\frac{\epsilon+i|t|}{\ell_0},
$$

均再乘 color／angular delta。$(G^>+G^<)/2$ 才趋于实 logarithm。改变 prescription 不只是换一个实数积分常数。

## 3. Interaction 把 good-cut 积分当成 bulk insertion 积分

正文 p.11 的 interaction 是

$$
S_{\rm int}=\frac1{16\pi^2}\int d^4x\int d^2z\,d^2z'\,(z-z')^2
 \operatorname{Tr}\left[
 [\partial_u^2A_z]_xU_x(z|z')
 [\partial_u^2A_{z'}]_xU_x(z'|z)\right]. \tag{3.14}
$$

它恰好含两个 $a$，frames 的展开产生任意数目的 $\bar a$，所以是 chiral／MHV vertex 的组织方式。$d^4x$ 在边界表述中等价于对所有 good cuts 求和。作用量保持 Poincaré 和上述 large gauge transformations，但 interaction 不保持任意 supertranslation／superrotation；不可把 kinetic term 更大的形式对称性当成整个理论的对称性。

B.2 专门固定 $1/(16\pi^2)$：bulk 三 gluon vertex 与 boundary cubic frame expansion 都给

$$
\mathcal A_3^{I_1I_2I_3}(-,-,+)
 =\sqrt2g f^{I_1I_2I_3}\omega_3z_{12}(2\pi)^4
 \delta^{(4)}(q_1+q_2+q_3).
$$

这里必须用 complexified on-shell momenta，$z,\bar z$ 独立，非零分支为 $\bar z_1=\bar z_2=\bar z_3$；实 Lorentzian 三点振幅为零。边界表达式先得到
$\sqrt2gf\,z_{12}^3\omega_1\omega_2/(z_{13}z_{32}\omega_3)$，再用

$$
\omega_3=-(\omega_1+\omega_2),\qquad
z_3=\frac{\omega_1z_1+\omega_2z_2}{\omega_1+\omega_2}
$$

化到上式。此次已直接复算 bulk cubic vertex 的 polarization contraction 和这一步 rational reduction；没有重跑完整三点 boundary distribution 的所有 contour 积分。

## 4. Bulk integrand：先明确为何要比 chiral 代表

场缩放 $A\mapsto cA,g\mapsto c^{-1}g$ 使 $S\mapsto c^2S$ 而 $W$ 不变，故

$$
g\partial_g\langle W\rangle=-2i\int d^4x_0\,
 \langle\mathcal L_{\rm bulk}(x_0)W\rangle_c.
$$

写 $\langle W\rangle=1+g^2W_n^{(2)}+O(g^4)$，$\mathcal L=\mathcal L_2+g\mathcal L_3+\cdots$，那么 $g^2$ 阶只需 quadratic Lagrangian insertion 与 Wilson loop 二阶项的 Wick contraction：

$$
W_n^{(2)}=\int d^4x_0\,\mathcal F_n(x_0),\qquad
\mathcal F_n=-\frac{iC_R}4\mathcal G^{\mu\nu}\mathcal G_{\mu\nu}.
$$

令 $X_i=x_i-x_0$、$Y_i=X_i/(X_i^2+i0)$。单条 null edge 的积分利用

$$
\int_0^1\frac{d\tau}{(A+B\tau)^2}=\frac1{A(A+B)},\qquad
(X_i+\tau q_i)^2=X_i^2+2\tau X_i\cdot q_i
$$

（$q_i^2=0$），因此

$$
\mathcal G_{\mu\nu}=\frac1{2\pi^2}\sum_i
 (Y_{i,\mu}Y_{i+1,\nu}-Y_{i,\nu}Y_{i+1,\mu}).
$$

bulk propagator 的 gauge-dependent $\partial_\mu\partial_\nu\log$ 项在 field-strength antisymmetrization 下为零。收缩后、对 cyclic indices 作 telescoping 得

$$
\mathcal F_n=-\frac{iC_R}{16\pi^4}\sum_{i<j}\frac{\Delta_{ij}}{D_{ij}},\quad
\Delta_{ij}=x_{ij}^2x_{i+1,j+1}^2-x_{i,j+1}^2x_{i+1,j}^2,
\quad D_{ij}=X_i^2X_{i+1}^2X_j^2X_{j+1}^2,
$$

此处暂省 $i0$。相邻边的 $\Delta$ 为零，不等于 integrated loop 没有 cusp divergence；它仍可在 $x_0$ 积分的端区出现。此次复算了 edge integral，并在一个实闭 null quadrilateral、非奇异 rational $x_0$ 上核对 $\mathcal G^2$ 与 $\Delta$ 表达式，残差为零；这是有限实例，不代替一般 telescoping 证明。

边界 interaction 是 chiral，故应匹配 self-dual insertion，而非要求它逐点等于上述 parity-even 代表。以 $\epsilon_{0123}=+1$ 定义

$$
\mathcal G^+_{\mu\nu}=\frac12\left(\mathcal G_{\mu\nu}
 +\frac i2\epsilon_{\mu\nu\rho\sigma}\mathcal G^{\rho\sigma}\right),\qquad
\mathcal F_n^{\rm chiral}=-\frac{iC_R}2\mathcal G^{+\mu\nu}\mathcal G^+_{\mu\nu}.
$$

二者差 $\partial_\mu\mathcal C_n^\mu=(C_R/8)\epsilon_{\mu\nu\rho\sigma}\mathcal G^{\mu\nu}\mathcal G^{\rho\sigma}$，对应加入 topological $\theta$ term。把总导数视作不改 integrated observable，仍需匹配 regulator／端点 prescription；本文核心证明刻意停在 rational integrand 层面。

采用 $\langle\lambda_1\lambda_2\rangle$ 为二分量反对称收缩，写

$$
-q_i^\mu(\sigma_\mu)_{\alpha\dot\alpha}
 =\xi_{i\alpha}\widetilde\xi_{i\dot\alpha},\qquad
\widetilde\xi_i=\operatorname{sign}(q_i^0)\bar\xi_i,\qquad
\psi_{i\alpha}=-(X_i)_{\alpha\dot\alpha}\widetilde\xi_i^{\dot\alpha}.
$$

本文齐次 good-cut 坐标满足
$(\mathsf u,\lambda,\bar\lambda)\sim(|\zeta|^2\mathsf u,\zeta\lambda,\bar\zeta\bar\lambda)$，
$\mathsf u=\langle\lambda|x|\bar\lambda]/2$；在 flat patch 中 $\lambda_\alpha=(1,z)$、$\lambda^\alpha=(-z,1)$，$\langle\lambda d\lambda\rangle=-dz$、$[\bar\lambda d\bar\lambda]=d\bar z$。这些 measure signs 负责后面 $2\pi i$ 的符号。bulk 最终式是

$$
\mathcal F_n^{\rm chiral}=-\frac{iC_R}{8\pi^4}
 \sum_{i<j}\frac{\langle\xi_i\xi_j\rangle\langle\psi_i\psi_j\rangle}{D_{ij}}. \tag{4.27}
$$

## 5. 边界计算怎样真正消去 spurious poles

$O(g^2)$ 只需一次 interaction insertion，interaction 内的 frames 取 1；它的两个 $\partial_u^2a$ 必须与 observable 中两个 $\bar a$ 收缩。两个 $\bar a$ 可以来自同一 frame（记 $I_i$）或不同 frames（记 $I_{ij}$）。若删掉同块二阶项，最后极点抵消会失败。

计入 $e^{iS_{\rm int}}$ 与 frame coefficient，边界 integrand 是

$$
F_n=\frac{i}{64\pi^4d_R}\left(\sum_iI_i+\sum_{i<j}I_{ij}\right). \tag{4.45}
$$

mixed propagator 的 angular delta 先做掉 frame 上的一对积分，留下 insertion cut $C_{x_0}$ 上两次积分。例如不同 frame 的结构为

$$
I_{ij}=\frac{2d_RC_R}{\pi^2}\int_{C_{x_0}^2}
\frac{\langle\lambda d\lambda\rangle[\bar\lambda d\bar\lambda]
 \langle\lambda'd\lambda'\rangle[\bar\lambda'd\bar\lambda']
 \langle\lambda\lambda'\rangle^2\langle\xi_{i-1}\xi_i\rangle
 \langle\xi_{j-1}\xi_j\rangle}
 {\langle\xi_{i-1}\lambda\rangle\langle\lambda\xi_i\rangle
  \langle\xi_{j-1}\lambda'\rangle\langle\lambda'\xi_j\rangle
  \langle\lambda|X_i|\bar\lambda]^2
  \langle\lambda'|X_j|\bar\lambda']^2}.
$$

所需 integration identity 为 (4.39)，正文 p.18／PDF p.19：

$$
\int\frac{\langle\rho d\rho\rangle[\bar\rho d\bar\rho]
 \langle\tau\rho\rangle}
 {\langle\rho|X_\epsilon|\bar\rho]^2\langle\kappa\rho\rangle}
 =-\frac{2\pi i}{X_\epsilon^2}
 \frac{\langle\tau|X_\epsilon|\bar\kappa]}
 {\langle\kappa|X_\epsilon|\bar\kappa]}.
$$

用 Schouten 分解先做 $\lambda'$、再做 $\lambda$ 积分。此次独立核对了 Schouten polynomial identity，并在 timelike $X^2=-T^2$、$\tau=\kappa$ 的 frame 下得到
$\int 2ir\,dr\,d\phi/[T^2(1+r^2)^2]=2\pi i/T^2$，核对这个公式的整体常数；**未**独立建立任意复 $X$ 与全部 singular contour 的一般 identity。

作者先以小 imaginary time shift 选择 Feynman prescription，再在 §4.3 撤掉 $\epsilon$ 比较 rational functions。此后记

$$
s_i=X_i^2,\qquad h_i=\langle\xi_i\psi_i\rangle=s_{i+1}-s_i,\qquad
B_{ab}=\frac{\langle\xi_a\xi_b\rangle\langle\psi_a\psi_b\rangle}{h_ah_b},
\quad B_{ab}=B_{ba},\quad B_{aa}=0.
$$

两次积分的结果最便于写成 (4.47)–(4.50) 的压缩形式。定义

$$
R_{ab}=\frac{\langle\xi_b\psi_a\rangle\langle\xi_a\psi_b\rangle}{h_ah_b}
 =1-B_{ab}.
$$

则

$$
\begin{aligned}
I_{ij}&=-\frac{8d_RC_R}{s_is_j}
 [-R_{i-1,j-1}+R_{i,j-1}+R_{i-1,j}-R_{i,j}]\\
&=-\frac{8d_RC_R}{s_is_j}\nabla_i\nabla_jB_{ij},\\
\nabla_i\nabla_jB_{ij}&:=B_{ij}-B_{i-1,j}-B_{i,j-1}+B_{i-1,j-1}.
\end{aligned}
$$

常数 $1$ 在四项中抵消，原来复杂的 frame-dependent poles 全部装进 $B$ 的 $h_ah_b$。同块项则为

$$
I_i=\frac{8d_RC_R}{s_i}
 \frac{\langle\xi_{i-1}\xi_i\rangle[\widetilde\xi_{i-1}\widetilde\xi_i]}{h_{i-1}h_i}
 =\frac{8d_RC_R}{s_i^2}B_{i-1,i},
$$

其中用了 $\langle\psi_{i-1}\psi_i\rangle=s_i[\widetilde\xi_{i-1}\widetilde\xi_i]$。所以把上面的 $I_{ij}$ 公式延到对角线，有 $I_{ii}=2I_i$，进而

$$
F_n=\frac{i}{128\pi^4d_R}\sum_{i,j}I_{ij}
 =-\frac{iC_R}{16\pi^4}\sum_{i,j}\frac{\nabla_i\nabla_jB_{ij}}{s_is_j}.
$$

现在才能看见消极点机制。cyclic summation by parts 是

$$
\sum_if_i(g_i-g_{i-1})=\sum_ig_i(f_i-f_{i+1}).
$$

取 $f_i=1/s_i$，有

$$
f_i-f_{i+1}=\frac{s_{i+1}-s_i}{s_is_{i+1}}=\frac{h_i}{s_is_{i+1}}.
$$

对 $i,j$ 各做一次，于是

$$
\sum_{i,j}\frac{\nabla_i\nabla_jB_{ij}}{s_is_j}
 =\sum_{i,j}B_{ij}\frac{h_ih_j}{s_is_{i+1}s_js_{j+1}}
 =2\sum_{i<j}\frac{\langle\xi_i\xi_j\rangle\langle\psi_i\psi_j\rangle}{D_{ij}}.
$$

每个 $h_i$ 零点的 residue 来自相邻 frames、等量反号；并非假定它们不在积分域。四点与六点 cyclic rational arrays（满足 $h_i=s_{i+1}-s_i$）的这段代数也以精确有理数复算，均为零残差。一般 $n$ 的理由是上面明确的两次离散分部积分，而不是有限测试。

最终

$$
\boxed{F_n(x_0)=\mathcal F_n^{\rm chiral}(x_0)
 =-\frac{iC_R}{8\pi^4}\sum_{i<j}
 \frac{\langle\xi_i\xi_j\rangle\langle\psi_i\psi_j\rangle}{D_{ij}}.} \tag{4.55}
$$

这完成了从 boundary action 到目标 bulk rational integrand 的路径。其适用端点仍然是 rational functions：source p.19 明确把 distributional terms 留给后续研究，不能凭这个恒等式声称 regulated integrated observables 已完全匹配。

## 6. 对当前 CPS、sewing 与量子核工作的用法

- **可立即复用的是带端点的 map，而非“边界全息”口号。** $U_x(P|Q):E_Q\to E_P$ 的变换律确定 product 次序，闭合 trace 确定 gauge-invariant observable。可以用它对照当前 sewing 中端点 orientation／representation data 如何配对，但它不是已构造的 Hilbert-space partial trace。
- **局部核不可只取看起来“物理”的部分。** 同块 $I_i$ 与异块 $I_{ij}$ 共同构成完整 cyclic sum；把一块 frame 的伪极点当成物理谱或删去同块二阶项，都会破坏 (4.55)。这给多区域核的拆分提供非常具体的代数测试。
- **$|\omega|$ 逆核的零模与 prescription 是独立输入。** logarithm、IR subtraction、Wightman 与 Feynman branches 不可混写；这些与 AdS 谱核比较有用，但本文忽略的 Goldstone／soft sector 正是构造完整边界荷时需要补回的部分。
- **不要混同两个层次的“边界项”。** bulk parity-even 与 self-dual insertion 差 topological total derivative；boundary 同一 frame 的二阶项则决定 rational spurious-pole cancellation。前者涉及积分 prescription，后者已经在 integrand 层承重。

本次复算覆盖了 flat-null／polarization normalization、Hilbert multiplier 与 log 核、普通 null-edge 积分、bulk parity-even 四边形实例、Schouten 与 cyclic cancellation、三点 vertex normalization 的代数部分。完整一般 cut integral 的 contour／distribution 分析、B.1 全套 stationary-phase domain 控制、$O(g^4)$ 以及 soft action 不在已独立复现范围。最值得实际重读的是 §3.2＋附录 A 的核，以及 §4.3 的两次 cyclic summation by parts；它们分别提供一个清楚的边界传播对象和一个真正完成的拼接抵消机制。
