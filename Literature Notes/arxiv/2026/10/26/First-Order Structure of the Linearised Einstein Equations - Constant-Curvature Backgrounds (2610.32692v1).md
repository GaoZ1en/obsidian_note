---
paper id: 2610.32692v1
title: "First-Order Structure of the Linearised Einstein Equations: Constant-Curvature Backgrounds"
authors:
  - Kirill Krasnov
  - Adam Shaw
publication date: 2026-10-23T14:20:39Z
abstract: |-
  On four-dimensional constant-curvature backgrounds with nonzero cosmological constant, the linearised Einstein and Teukolsky-Wald operators factor through the chiral spin connection. A conformal weight reduces the potential equation to componentwise flat wave equations. Taking the full chiral curvature as the potential source gives a second-order reconstruction equation and a local algebraic stress-energy corrector. Reality and first-order curvature constraints remain additional conditions; a static de Sitter point mass is reconstructed explicitly.
comments: "39 pages, no figures"
url: https://arxiv.org/abs/2610.32692v1
summary: "A local first-order metric/connection inverse map and sourced reconstruction testbed, with explicit Bianchi, reality and boundary limitations."
tags: []
---

# First-order linearised gravity through the chiral connection

在四维常曲率、$\Lambda\ne0$ 背景，论文给出**在解空间上互逆**的一阶映射 $\sigma\leftrightarrow a$，以及带源的仿射版本。最有用的结构是
$$
d_2^*d_2=d_1d_1^*-\mathbb I,
\qquad
d_2^*\psi=d_1j
\ \longrightarrow\ \mathcal P\phi=\psi
\ \longrightarrow\ a=d_3\phi
\ \longrightarrow\ \sigma=d_1^*a-j.
$$
这里 $\psi$ 是实际曲率，$\phi$ 是另一个势。只解曲率的二阶波动方程不够；只解齐次势方程也不产生任意指定曲率。局部代数与 de Sitter 例子已独立复算；一般 retarded 实性、约束传播、势的完备性和 AdS 全局边界问题没有由本文建立。

来源：[官方摘要](https://arxiv.org/abs/2610.32692v1)、[PDF](https://arxiv.org/pdf/2610.32692v1)、[TeX](https://arxiv.org/src/2610.32692v1)。全文与附录 A–G 已读；PDF pp.9,21,22 的核心算子、点质量公式和符号已渲染核对。`T2-model; T2-spectral`。全文采用 monograph mode；以下先重建公式，再列检查边界。

## How to read this long paper

最短主线是 §§2–3 → §§4.1–4.5 → §5 → §§7.2–7.5；要实际实现就继续 §6，并把附录 A–E 放在旁边。§4.6 是单 helicity 检查，附录 F 说明为什么不能直接取 $\Lambda\to0$；§7.1 与附录 G 是 Hertz/Wald 比较的参考背景。

| 源结构 | 目的与后续依赖 |
|---|---|
| §1 Introduction | second-order Wald identity 的一阶分解；区分势与曲率 |
| §2.1 Plebański formulation；§2.2 algebra | metricity、compatible connection、Einstein curvature；$4+8$ 与 $1+3+5+9$ 分解 |
| §3.1 maps；3.2 adjoints；3.3 equivalence | 定义 $d_1,d_1^*,d_2,d_2^*$ 和各自定义域、配对 |
| §3.4 curvature identity；3.5 potentials；3.6 simpler adjoint；3.7 gauge | 一阶因子化的核心、齐次势的单 helicity 性质、代数 diffeomorphism gauge |
| §4.1 conformal structure；4.2 curvature wave；4.3 conformal wave | 从 $\Box^A-2\Lambda$ 到 weighted flat $\hat\Box$ |
| §4.4 Wald identity；4.5 metric；4.6 dS helicity | 组合恒等式、$P_{10}$、trace/gauge 与显式标量势 |
| §5.1 stress source；5.2 sourced equivalence；5.3 Bianchi | $j$ 的正规化、local corrector、一阶约束 |
| §5.4 sourced conformal reduction；5.5 inhomogeneous reconstruction | 两次波动方程求解及其条件 |
| §6.1 source/curvature；6.2 potential；6.3 metric；6.4 McVittie；6.5 comparison | 点源、分布恒等式、完整重建、规范等价 |
| §7.1 standard Wald；7.2 version I；7.3 version II；7.4 comparison | 四阶反演、实性和 corrector 如何重新分配 |
| §7.5 redundancy/global issues；7.6 Kerr outlook | completeness、patch boundary、非零背景 Weyl 的开放问题 |
| Appendix A | $s\in\mathbb R,\theta=\theta^\dagger$ 与真正的 real-metric projection |
| Appendix B.1/B.2 | 一/二形式分解和 coefficient extraction |
| Appendix C；D | formal adjoints 与 compatibility inversion |
| Appendix E | 二次作用量、配对的相对符号、pure-connection 消元 |
| Appendix F，含 auxiliary connection/potentials | 平直背景只能作较弱的单 helicity solution generation |
| Appendix G | 平直空间 aligned Hertz metric 的 Weyl spinor；不能当成完整 Kerr 推导 |

## 1. 场、约定与作用量：什么可以被反演

内部指标 $i,j,k=1,2,3$，时空四维；Lorentzian signature $(-+++)$，场先复化。自对偶二形式满足
$$
\star\Sigma^i=i\Sigma^i,
\qquad
\Sigma^i_\mu{}^\rho\Sigma^j_\rho{}^\nu
=-\delta^{ij}\delta_\mu{}^\nu+\epsilon^{ijk}\Sigma^k_\mu{}^\nu.
$$
$A^i$ 是 self-dual spin connection，$F^i=dA^i+\tfrac12\epsilon^{ijk}A^j\wedge A^k$。源 §2 与附录 E 的作用量密度（此处未补入 Newton 常数整体 prefactor）为
$$
L=\Sigma^i\wedge F^i-\frac12\left(\Psi^{ij}+\frac\Lambda3\delta^{ij}\right)\Sigma^i\wedge\Sigma^j,
\qquad \Psi^{ij}=\Psi^{ji},\quad\Psi^{ii}=0.
$$
三组方程分别是
$$
\Sigma^{(i}\wedge\Sigma^{j)}\sim\delta^{ij},
\qquad d^A\Sigma^i=0,
\qquad F^i=\Psi^{ij}\Sigma^j+\frac\Lambda3\Sigma^i.
$$
正规化为 $\operatorname{Ric}=\Lambda g$、$R=4\Lambda$。主文背景两半 Weyl 都为零；$F^i=(\Lambda/3)\Sigma^i$ 本身只约束 self-dual 半边，后续共形平直化需要更强的常曲率假设。

设 $\sigma=\delta\Sigma$、$a=\delta A$、$\psi=\delta\Psi$。线性 metricity 是 $P_5\sigma=0$：$\sigma$ 有 $13=10+3$ 个复分量，包含 metric 和内部转动。$\psi^{ij}$ 是五分量 STF 矩阵；写作二形式时指 $\psi^{ij}\Sigma^j$，不是任意 $E$-valued 二形式。

| 记号 | 含义与限制 |
|---|---|
| $J_1$ | $(J_1a)^i_\mu=\epsilon^{ijk}\Sigma^j_\mu{}^\nu a^k_\nu$；特征值 $2,-1$ |
| $P_5$ | 抽取 self-dual coefficient 的 symmetric tracefree 部分 |
| $P_{10}$ | 从二形式代数抽取 metric，消去内部转动和 Weyl 型分量 |
| $d_1,d_1^*$ | metricity-constrained 二形式与联络间的一阶映射；仅在解空间互逆 |
| $d_2,d_2^*$ | curvature extraction 与 formal adjoint；不是逆映射 |
| $\lambda,w$ | $\hat g=\lambda^2g$ 为平直，$w=\lambda^{-4}$，patch 内 $\lambda\ne0$ |
| $\phi=\lambda^3\chi$ | curvature-type potential 与其平直 rescaling；均为 STF |
| $\tau_{\mu\nu},\tau^i,j^i$ | stress tensor、curvature source、归一化 source；不可混用 |
| $\widetilde\psi,\mathcal K$ | anti-self-dual curvature、势到该曲率的四阶算子 |

二次系数 $L^{(2)}$ 不是二阶变分的两倍：
$$
L^{(2)}=\sigma^i\wedge d^Aa^i
+\frac12\epsilon^{ijk}\Sigma^i\wedge a^j\wedge a^k
-\frac\Lambda6\sigma^i\wedge\sigma^i
-\psi^{ij}\Sigma^j\wedge\sigma^i.
$$
令 $M=\Psi+\Lambda\mathbb I/3$，仅在 $\det M\ne0$ 时消去 $\Sigma=M^{-1}F$，得到 $L_{\rm pc}=\tfrac12(M^{-1})^{ij}F^i\wedge F^j$。在常曲率背景展开后，$aa$ 与 $d^Aa\,d^Aa$ 项利用
$$
d^Aa^i\wedge d^Aa^i=d(a^i\wedge d^Aa^i)
-\frac\Lambda3\epsilon^{ijk}\Sigma^i\wedge a^j\wedge a^k
$$
抵消，剩下
$$
L_{\rm pc}^{(2)}\equiv-\frac3\Lambda\psi^{ij}\Sigma^j\wedge d^Aa^i
+\frac3{2\Lambda}\psi^{ij}\psi^{ik}\Sigma^j\wedge\Sigma^k.
$$
这里的 $\equiv$ 明确保留“模 exact form”的含义；区域 CPS 不能直接删去该边界项。

## 2. 点态分解、配对与一阶 Einstein identity

附录 B 给出
$$
E\otimes\Lambda^1=4\oplus8,
\qquad(J_1+\mathbb I)(J_1-2\mathbb I)=0,
\qquad J_1^{-1}=\tfrac12(J_1-\mathbb I),
$$
其中 $\Sigma^i\cdot\xi$ 属于 $4$，$\Sigma^j\cdot v^{ij}$ 对 STF 的 $v^{ij}$ 属于 $8$。二形式分解为
$$
B^i=s\Sigma^i+\epsilon^{ijk}u^k\Sigma^j+p^{ij}\Sigma^j+\theta^{ij}\bar\Sigma^j,
\qquad1\oplus3\oplus5\oplus9.
$$
抽取系数：$s=\Sigma^{i\mu\nu}B^i_{\mu\nu}/12$，$u^i=-\epsilon^{ijk}\Sigma^{j\mu\nu}B^k_{\mu\nu}/8$，$p^{ij}=\Sigma^{\langle i|\mu\nu}B^{|j\rangle}_{\mu\nu}/4$，$\theta^{ij}=\bar\Sigma^{j\mu\nu}B^i_{\mu\nu}/4$。

compatibility 和曲率方程线性化为
$$
d^A\sigma^i+\epsilon^{ijk}a^j\wedge\Sigma^k=0,
\qquad d^Aa^i=\psi^{ij}\Sigma^j+\frac\Lambda3\sigma^i.
$$
第一式借 $J_1^{-1}$ 解出联络；第二式分别取 $P_5$ 和其补空间。源 (25)–(26) 因而是
$$
d_1\sigma=iJ_1^{-1}\star d^A\sigma,
\qquad d_1^*a=\frac3\Lambda(\mathbb I-P_5)d^Aa,
$$
$$
d_2a=P_5d^Aa,
\qquad d_2^*\psi=-\frac{3i}\Lambda J_1^{-1}\star d^A(\psi\Sigma)
=\frac3\Lambda\Sigma^j\cdot d^A\psi^{ij}.
$$
最后一个等号用 $J_1=-1$ 在 $8$ 上，以及 $\star d^A(\psi\Sigma)=-i\Sigma\cdot d^A\psi$；不是省略连接项，$d^A$ 对 $\psi$ 的两个内部指标都作用。

星号来自**双线性 formal pairing**：
$$
\langle a,a\rangle=i(a,J_1a),\quad
\langle\sigma,\sigma\rangle=\frac\Lambda3(\sigma,\star\sigma),\quad
\langle\psi,\psi\rangle=-\frac3\Lambda(\psi\Sigma,\star\psi\Sigma).
$$
它们不是正定 Hermitian norm。附录 C 的 integration by parts 要求 compact support 或显式控制边界通量；不能据此宣布 AdS 算子已自伴。

由 $a=d_1\sigma$、$\sigma=d_1^*a$ 定义
$$
E_\sigma=d_1^*d_1-\mathbb I,
\qquad E_a=d_1d_1^*-\mathbb I.
$$
$E_\sigma d_1^*=d_1^*E_a$，且 $E_aa=0$ 时 $d_1d_1^*a=a$；反方向同理。这证明局部线性 chiral 解空间的互逆，而不是对 off-shell fields 的逆。

核心源 (31) 的推导只用背景曲率：
$$
d_1d_1^*-d_2^*d_2=\frac{3i}\Lambda J_1^{-1}\star(d^A)^2,
\qquad
(d^A)^2a=-\frac{i\Lambda}3\star J_1a.
$$
Lorentzian $\star^2=+1$ 在一形式上，故右边为 $\mathbb I$。这项不能在曲背景上漏掉。另一方面，实际真空曲率满足 $d_2^*\psi=0$；把它送回 $d_2^*$ 得到零，不是 $a$。

### Gauge 的局部含义

内部转动 $\delta a=d^A\omega$，diffeomorphism 扣除内部转动后为
$$
\delta_\xi a^i=i_\xi F^i=\frac\Lambda3i_\xi\Sigma^i
=-\frac\Lambda3\Sigma^i\cdot\xi.
$$
后者恰覆盖 $4$-summand，所以 $a_4=0$ 可以代数固定 diffeomorphisms；保留的内部转动须配合恢复该 gauge。$8-3-3=2$ 是源文自由度计数。两种 gauge 方向均被 $d_2$ 消去。$a_4=0$ 导致 metric trace 为零，但这不是带源情况下任意物理 trace 都消失的声明。

## 3. 共形权重如何消去分量耦合

在 $\hat g=\lambda^2g$ 的平直 parallel self-dual frame，
$$
\Sigma^i=\lambda^{-2}\hat\Sigma^i,
\quad \Sigma^i_\mu{}^\nu=\hat\Sigma^i_\mu{}^\nu,
\quad A^i=-\Sigma^i\cdot d\log\lambda.
$$
未加权的 curvature operator 是
$$
(d_2d_2^*\psi)^{ij}=-\frac3{2\Lambda}(\Box^A\psi^{ij}-2\Lambda\psi^{ij}).
$$
交换内部协变导数产生 $2\Lambda$；$\Box^A$ 仍混合五个矩阵分量，所以这一步还不是五个独立标量方程。

把 $A$ 展开后，两端权重不同：
$$
(d_2a)^{ij}=\frac12\lambda\hat\Sigma^{\langle j|\mu\nu}\partial_\mu(\lambda a^{|i\rangle}_\nu),
$$
$$
(d_2^*\psi)^i_\mu=\frac3\Lambda\lambda^3\hat\Sigma^j_\mu{}^\nu\partial_\nu(\lambda^{-3}\psi^{ij}).
$$
因此中间插入 $w=\lambda^{-4}$，而不是任意选择的 rescaling：
$$
d_3=wd_2^*,\qquad \mathcal P=d_2wd_2^*,
\qquad
\mathcal P(\lambda^3\chi)=-\frac3{2\Lambda}\lambda\hat\Box\chi.
$$
quaternion algebra 的 antisymmetric 项与平直 Hessian 收缩为零，留下 scalar principal operator。势 $\chi$ 的五个分量各满足波动方程；这没有取消实际曲率的 Bianchi 约束。

Wald 字典为
$$
\mathcal G=E_\sigma,\quad\mathcal T=d_2d_1,
\quad\mathcal O=\mathcal P,\quad\mathcal S=d_2wd_1,
\quad\mathcal S^*=d_1^*wd_2^*.
$$
于是
$$
\mathcal O\mathcal T=d_2w(d_1d_1^*-\mathbb I)d_1
=\mathcal S\mathcal G.
$$
$w$ 是位置相关乘法，组合中没有把它与导数交换。$\mathcal P=\mathcal O^*$ 依赖上述 formal bilinear pairing，仍是局部 statement。

## 4. 从二形式恢复 metric；齐次势产生什么

源 §4.5 的代数抽取为
$$
(P_{10}B)_{\mu\nu}=\Sigma^i_{(\mu}{}^\rho B^i_{\nu)\rho}
-\frac16g_{\mu\nu}\Sigma^{i\rho\sigma}B^i_{\rho\sigma}.
$$
它满足 $P_{10}P_5=0$。对 symmetric tensor $q$ 定义
$$
U(q)^i_{\mu\nu}=q_{[\mu}{}^\rho\Sigma^i_{|\rho|\nu]},
\qquad P_{10}U(q)=q,\quad U(g)=\Sigma.
$$
记住这里的 antisymmetrisation 有 $1/2$。从联络得到
$$
h_{\mu\nu}=\frac3\Lambda\Sigma^i_{(\mu}{}^\rho
(\nabla^A_{\nu)}a^i_\rho-\nabla^A_{|\rho|}a^i_{\nu)})
-\frac1\Lambda g_{\mu\nu}\Sigma^{i\rho\sigma}\nabla^A_\rho a^i_\sigma.
$$
若 $a=d_3\phi$ 且 $\phi$ 为 STF，$a\in8$，可化为
$$
h_{\mu\nu}=-\left(\frac3\Lambda\right)^2
\nabla^\rho\left(\lambda^{-4}\nabla^\sigma\mathcal H_{(\mu|\rho|\nu)\sigma}\right),
\quad \mathcal H_{\mu\rho\nu\sigma}=\phi^{ij}\Sigma^i_{\mu\rho}\Sigma^j_{\nu\sigma}.
$$
外层 $\mu,\nu$ symmetrisation 不能删；加权 double divergence 不自动对称。结果 $g^{\mu\nu}h_{\mu\nu}=0$。若延伸势为 $\phi^{ij}+\delta^{ij}f$，新增项为
$$
-2\left(\frac3\Lambda\right)^2\nabla_{(\mu}(\lambda^{-4}\nabla_{\nu)}f)
=2\nabla_{(\mu}\xi_{\nu)},
\quad \xi_\mu=-\left(\frac3\Lambda\right)^2\lambda^{-4}\nabla_\mu f.
$$
这是特定一族 gauge directions，无须额外势方程，也不参数化所有 diffeomorphisms。

### §4.6 的 de Sitter 单 helicity 解

取 $g=t^{-2}(-dt^2+d\mathbf x^2)$、$\lambda=t\ne0$、$\Lambda=3$，
$$
\Sigma^i=t^{-2}\left(i\,dt\wedge dx^i-\frac12\epsilon^{ijk}dx^j\wedge dx^k\right),
\qquad A^i=-\frac{i}{t}dx^i.
$$
令 $S=(0,1,i)$，$S^iS^i=0$，$\chi^{ij}=S^iS^jf$，$\hat\Box f=0$。$l=dt-dx$、$m=dy+i\,dz$，$\partial_n=\partial_t+\partial_x$、$\partial_m=\partial_y+i\partial_z$。重建 metric 为
$$
h=\frac{\partial_m^2f}{t}l\otimes l
+2\partial_n\left(\frac{\partial_mf}{t}\right)l\odot m
+t\partial_n\left(\frac{\partial_nf}{t^2}\right)m\otimes m.
$$
本式和 tracefree 性已复算。它位于 complex totally-null plane 的 symmetric square。$\mathcal P\phi=0$ 给 $d_2a=0$，故得到的非平凡物理解只有另一 helicity；实 $f$ 不保证实 metric。取 metric 的 real part 得到实 Einstein 解，同时改变其 self-dual curvature。退化为零或纯 gauge 的势应从“非平凡 single-helicity curvature”论断中排除。

## 5. Stress tensor、Bianchi constraint 与 local corrector

约定
$$
\delta(G_{\mu\nu}+\Lambda g_{\mu\nu})=\kappa\tau_{\mu\nu},
\qquad \kappa=8\pi G,\qquad\nabla^\mu\tau_{\mu\nu}=0.
$$
源 symmetric 且无独立 spin current，所以 compatibility 仍 torsion-free。记 $\tau=g^{\mu\nu}\tau_{\mu\nu}$，
$$
q_{\mu\nu}=\tau_{\mu\nu}-\frac13\tau g_{\mu\nu},
\qquad \tau^i=\kappa U(q)^i,
\qquad j^i=\frac3\Lambda\tau^i.
$$
$1/3$ 不是通常 metric Einstein equation 的 $1/2$ trace reversal；它来自 chiral Ricci decomposition：$\tau^i=\kappa U(\tau^{\rm TF})^i-\kappa\tau\Sigma^i/12$，以及 $\delta R=-\kappa\tau$。

带源一阶系统是
$$
a=d_1\sigma,\quad\psi=d_2a,\quad\sigma=d_1^*a-j,
$$
故
$$
E_\sigma\sigma=j,\qquad E_aa=d_1j.
$$
逆映射现在仿射：$d_1(d_1^*a-j)=a$，并且 metric corrector 明确为
$$
h=P_{10}d_1^*a-\frac{3\kappa}\Lambda\left(\tau_{\mu\nu}-\frac13\tau g_{\mu\nu}\right).
$$
源为分布时此式须按分布解释；不能先丢掉支持在世界线上的 $-j$。

核心 identity 导出一阶 sourced Bianchi：
$$
d_2^*\psi=d_1j
\quad\Longleftrightarrow\quad d^A(\psi^{ij}\Sigma^j+\tau^i)=0.
$$
二阶后果有未加权与加权两种：
$$
d_2d_2^*\psi=d_2d_1j,
\qquad \mathcal P\psi=d_2wd_1j.
$$
第二式化为
$$
\hat\Box(\lambda^{-3}\psi^{ij})=-\frac{2\Lambda}3\lambda^{-1}(d_2wd_1j)^{ij}.
$$
这仅是必要条件。论文 §5.4 明说没有证明一般约束传播，因此流程必须在初/边值数据和所得解上保留 $d_2^*\psi=d_1j$ 的独立检查。

有了这样的实际曲率，再解
$$
\mathcal P\phi=\psi,
\qquad \hat\Box\chi^{ij}=-\frac{2\Lambda}3\lambda^{-1}\psi^{ij},
\qquad a^i_\mu=\frac3\Lambda\lambda^{-1}\Sigma^j_\mu{}^\nu\partial_\nu\chi^{ij}.
$$
这时 $d_2a=\psi$、$E_aa=d_1j$ 自动成立，从而 $\sigma=d_1^*a-j$ 解原方程。即使局部源为零，只要所需曲率非零，势方程仍非齐次。

## 6. 点质量：从分布曲率到 Schwarzschild–de Sitter

源 §6 取 $t>0$、$\rho=|\mathbf x|$、$n^i=x^i/\rho$、$Y^{ij}=3n^in^j-\delta^{ij}$、$m=GM$。沿 $\mathbf x=0$ 的 geodesic 粒子有
$$
\tau_{tt}=Mt\delta^{(3)}(\mathbf x),\qquad
j^i=-\frac{4\pi m}3t\delta^{(3)}(\mathbf x)
\left(i\,dt\wedge dx^i+\epsilon^{ijk}dx^j\wedge dx^k\right).
$$
设 $D_{ij}=\partial_i\partial_j-\delta_{ij}\nabla^2/3$，曲率方程成为
$$
\hat\Box(t^{-3}\psi^{ij})=-4\pi mD_{ij}\delta^{(3)}(\mathbf x).
$$
静态 rescaled 解是
$$
\psi^{ij}=mt^3D_{ij}\frac1\rho
=mt^3\operatorname{PV}\frac{Y^{ij}}{\rho^3}.
$$
因为 $\partial_i\partial_j(1/\rho)$ 含 $-4\pi\delta_{ij}\delta^{(3)}/3$，STF subtraction 正好取消 contact term；不能把单独 Hessian 的 contact term 忘掉再宣称相同结果。

独立检查用显式 regulator $\Phi_\epsilon=(\rho^2+\epsilon^2)^{-1/2}$、$\epsilon>0$：
$$
\nabla^2\Phi_\epsilon=-\frac{3\epsilon^2}{(\rho^2+\epsilon^2)^{5/2}},
\quad \int_{\mathbb R^3}\nabla^2\Phi_\epsilon\,d^3x=-4\pi,
\quad \oint_{\rho=R}\partial_\rho\Phi_\epsilon\,dS
=-\frac{4\pi R^3}{(R^2+\epsilon^2)^{3/2}}.
$$
先固定 $R>0$ 再取 $\epsilon\to0^+$ 得 $-4\pi$；分布极限应先对 test functions 配对，不能逐点取零后积分。

一阶约束可在不预设 $\Phi=1/\rho$ 时检查。取 $\psi=mt^3D\Phi$，把 $j$ 中 $\delta^{(3)}$ 换为 $-\nabla^2\Phi/(4\pi)$，得到相同的两边：
$$
(d_2^*\psi)^i=(d_1j)^i
=\frac{mt^3}3\left(2i\,\partial_i\nabla^2\Phi\,dt
+\epsilon^{ijk}\partial_k\nabla^2\Phi\,dx^j\right).
$$
此任意光滑函数的 differential-operator identity 已复算，故也适用于上述分布极限。作为“波动方程不充分”的反例，$\hat\psi^{ij}=c^ix^j+c^jx^i-\tfrac23\delta^{ij}c\cdot x$ harmonic，却有非零 divergence，不能任意加到 Bianchi 解上。

求势时取 $\chi=t^2A+B$。$\nabla^2(\rho^kY)=[k(k+1)-6]\rho^{k-2}Y$ 给出
$$
\phi^{ij}=\frac m3t^3Y^{ij}\left(\frac{t^2}\rho-\frac\rho2\right),
\quad
\chi^{ij}=-mD_{ij}\left(t^2\rho+\frac{\rho^3}6\right).
$$
后一个表达式适合分布检验，因为 $\nabla^2\rho=2/\rho$、$\nabla^2\rho^3=12\rho$ 且无额外 contact term。它使用一般 STF potential，不能由固定 $S^iS^j$ 的 aligned rank-one 势产生 type-D Coulomb curvature。

重建联络（源 (127)）为
$$
a^i=\frac{2im}{3\rho}\left(\frac{2(t^2-\rho^2)}{t\rho}n^i\,dt+Y^{ij}dx^j\right)
+\frac{2m}3\frac{t^2-\rho^2}{t\rho^2}\epsilon^{ijk}n^kdx^j.
$$
在 $\rho>0$，$j=0$，$d^Aa=X\Sigma+\theta\bar\Sigma$ 的 STF $X$ 为所需 $\psi$，trace 为零，antisymmetric $X$ 只是内部转动。metric 部分
$$
\theta^{ij}=p\delta^{ij}+qn^in^j+ir\epsilon^{ijk}n^k,
$$
$$
p=-\frac{mt(4\rho^2-t^2)}{3\rho^3},\quad
q=\frac{mt(4\rho^2-3t^2)}{3\rho^3},\quad
r=\frac{2m(t^2+\rho^2)}{3\rho^2}
$$
是 Hermitian，故 metric 实。源 (129) 为
$$
h_{tt}=-\frac{8m}{3t\rho},\qquad
h_{ti}=\frac{4m}3\frac{(t^2+\rho^2)n_i}{t^2\rho^2},
$$
$$
h_{ij}=-\frac{2m}{3t}\left[\frac{t^2}{\rho^3}(\delta_{ij}-3n_in_j)+\frac4\rho n_in_j\right].
$$
联络、曲率、metric、trace 和下述 gauge relation 均已独立复算。

McVittie 形式在 $a(T)=e^T$、$t=e^{-T}$ 下的一阶展开是
$$
h_{\rm SdS}=\frac{2m}{t\rho}(dt^2+d\mathbf x^2).
$$
它的 $\sigma=U(h_{\rm SdS})$、联络为
$$
\sigma^i=-\frac m{t\rho}\epsilon^{ijk}dx^j\wedge dx^k,
\quad
a^i=-im\left(t\partial_i\frac1\rho\,dt+\frac1\rho dx^i\right)
-mt\epsilon^{ijk}\partial_k\frac1\rho dx^j.
$$
两种构造的曲率相同，且直接比较得到
$$
h=h_{\rm SdS}+\mathcal L_\xi g,
\quad \xi=\frac m3\left[\frac{7t^2}\rho\partial_t
+t\left(\frac4\rho-\frac{t^2}{\rho^3}\right)x^i\partial_i\right].
$$
此 gauge vector 在 $\rho>0$ 光滑，在世界线奇异；机器 metric/gauge 检查限定于 $t>0,\rho>0$。世界线源的控制来自前面的分布 Bianchi，而不是把外部 metric 的点态计算延拓到原点。xCoba 另行计算 $g+mh_{\rm SdS}/m$ 的 Ricci，确认 $m^0$ 与 $m^1$ 的 $R_{\mu\nu}-3g_{\mu\nu}$ 系数全为零。

## 7. Reality 与两种 reconstruction 的真正差别

附录 A 写 $\sigma=s\Sigma+\epsilon u\Sigma+\theta\bar\Sigma$。Lorentzian reality 是
$$
s=\bar s,\qquad\theta=\theta^\dagger;
$$
内部转动 $u$ 不受 metric reality 限制。正确的 real-metric projection 是
$$
\mathcal R\sigma=\operatorname{Re}(s)\Sigma
+\tfrac12(\theta+\theta^\dagger)\bar\Sigma,
\qquad P_{10}\mathcal R\sigma=\operatorname{Re}(P_{10}\sigma).
$$
直接取 $\operatorname{Re}\sigma$ 通常违反 metricity；由于 self-dual basis 复化，metric 实并不等于二形式逐分量实。

Version I 令 $\mathcal P\phi=0$，$\sigma_c=d_1^*d_3\phi$。其曲率为 $(\psi_c,\widetilde\psi_c)=(0,\mathcal K\phi)$。取 metric real part 后变成
$$
(\psi_R,\widetilde\psi_R)=\left(\tfrac12\overline{\mathcal K\phi},\tfrac12\mathcal K\phi\right).
$$
指定实解的 $\psi$ 要同时解 $\mathcal P\phi=0$ 和四阶 $\mathcal K\phi=2\bar\psi$。论文未证明一般满射性/完备性。带源 version I 的 $\mathcal P\phi=\eta$ 只给 source $\mathcal T^*\eta$，一般需额外 corrector。

Version II 取 $\eta=\psi$。由 Bianchi，
$$
\mathcal T^*\psi=d_1^*d_2^*\psi=d_1^*d_1j=j+E_\sigma j.
$$
因此 corrector 恰为 $-j$，直接取消多余 $E_\sigma j$。但 reality 变成
$$
\mathcal K\phi-\overline{\mathcal Tj}=\bar\psi.
$$
其 discrepancy $r=\bar\psi-\widetilde\psi_c$ 解 homogeneous anti-self-dual equation；加 $\phi_0$，$\mathcal P\phi_0=0$，可改变另一 helicity 而不改所需 $\psi$。是否总能解 $\mathcal K\phi_0=r$ 仍是 completeness 问题。

| 构造 | 主要反演 | source corrector | reality |
|---|---|---|---|
| 标准 Kerr Hertz/Wald（源文综述） | 对一个 extreme Weyl scalar 作四阶反演 | 沿 null rays 积分；可能有 string 支持 | 取 metric real part |
| Constant-curvature version I | $\mathcal K\phi=2\bar\psi$ 加齐次势方程 | 一般需要 | 取 metric real part |
| Version II | 完整五分量曲率后解 $\mathcal P\phi=\psi$ | $-j$，局部代数 | 额外条件；一般 retarded 自动性仍有前提 |

若真实 conserved source 有适当过去数据，两次求解都选 retarded，且曲率一阶约束传播、retarded uniqueness modulo gauge 成立，则 $\operatorname{Im}h$ 是无源且无过去数据的解，曲率为零，因而局部 pure gauge。这是**条件论证**。论文没有建立其中的约束传播和 patch 上唯一性；对永恒点源还须处理 past boundary。§6 的闭式势虽产生实 metric，却没有证明该势本身就是 retarded potential。

## 8. 平直极限、Hertz alignment 与 Kerr outlook

附录 F 不对 $d_1^*$ 直接取 $\Lambda\to0$。平直背景改定义
$$
\widetilde d_1^*=(\mathbb I-P_5)d^A,\quad
\widetilde d_2^*=-iJ_1^{-1}\star d^A,
\quad\widetilde d_2^*d_2=d_1\widetilde d_1^*.
$$
实际 compatible connection 满足一阶约束 $\widetilde d_1^*a=0$，不再能恢复 $\sigma$。另取辅助场 $a$，$d_1\widetilde d_1^*a=0$，用 $\sigma=\widetilde d_1^*a$ 可生成解，但 $d_1\sigma=0$，所以这个 $a$ 通常不是生成 metric 的 compatible connection。它只给单 helicity/heavenly sector；反向局部完备性仅为预期。势方程成为 $d_2\widetilde d_2^*\phi=-\Box\phi/2=0$。

附录 G 的平直 spinor argument：aligned $\chi_{ABCD}=o_Ao_Bo_Co_D\psi_H$，Hertz metric 由两导数构造，self-dual Weyl 满足 $\psi_{ABCD}[h^c]\propto o_Ao_Bo_Co_D\Box^2\psi_H$，故前四个 aligned 分量代数为零，最后一个用势方程才为零；另一半 Weyl 一般有四阶导数。这里仅重建源文论证，未独立复核 Kerr 的 spin-coefficient 修正或所引文献的 normalization。

Kerr 的 $\Lambda=0$ 但 $M=\Psi$ 在合适局部区域可逆，提示代数消元可能延续；背景 Weyl 非零后 $P_5(\Psi\sigma)$ 不再消失，主恒等式和 helicity 分离都会改变。本文没有给出 Kerr 版一阶系统，更没有证明其 local corrector 或五曲率分量 decoupling。

## 9. 转成当前 CPS/response 工作时可直接用什么

可以直接用 $U$、$P_{10}$、$j=(3\kappa/\Lambda)U(\tau-\tau g/3)$ 和 $\sigma=d_1^*a-j$，构造局部 source-to-metric consistency test。保留背景、同一个 source、内部转动 quotient 与两半 Weyl；不要把单 helicity potential completeness 当成全部物理解的 completeness。

若比较 action/CPS，先使用 §1 的未丢边界项的二次 action。论文的 formal adjoints 已丢 integration-by-parts flux，故它没有自动给出有限区域 symplectic equivalence、edge-mode matching 或 boundary charge equality。应另外计算边界 presymplectic 数据，再确认所选 admissible variations 使各次分部积分成立；这些工作未在本文执行。

用于 AdS 时至少指定 conformal patch、$\lambda\to0$ 的 cutoff $\lambda=\epsilon>0$、允许的势/联络/metric asymptotics、边界源与响应、Green function 和先解有限 cutoff 后取极限的次序。$\lambda^{-4}$ 在边界奇异，局部 flat-wave conjugation 不能单独证明相同自伴扩张、完整模态谱或相同 renormalized symplectic form。

## 10. Equation ledger 与验证边界

| 依赖链 | 状态 |
|---|---|
| quaternion algebra → $J_1$ polynomial → $4+8$、$P_5$、$P_{10}U$ | `Checked`：显式 Lorentzian basis 的全矩阵恒等式 |
| compatibility inversion → principal identity (31) | `Checked`：unit dS patch，任意 12 分量函数的 operator residual 为零 |
| $d_2^*$ simplification → $\Box^A-2\Lambda$ → weighted flat wave | `Checked`：任意 5 个 STF 分量函数，不仅试探多项式 |
| gauge directions → zero curvature → metric Lie derivative | `Checked`：任意四个 $\zeta_\mu(t,\mathbf x)$ |
| rank-one flat-wave potential → §4.6 metric | `Checked`：仅施加 $f_{tt}=\nabla^2f$，重建 residual 与 trace 均零 |
| general spatial $\Phi$ → 两边 sourced Bianchi | `Checked`：两个 operator 分别计算后等于同一表达式 |
| regulated $1/\rho$ → Laplacian mass、finite-radius flux | `Checked`：Mathematica 精确积分；显式 $\epsilon>0$、固定 $R$ 的极限 |
| point potential → connection → curvature → metric → SdS gauge map | `Checked`：$t>0,\rho>0$ 的符号 residual 全零 |
| independent metric Einstein test | `Checked`：xCoba 的 $m^0,m^1$ Ricci residual 全零；不声称截断 metric 在 $m^2$ 仍解 Einstein |
| solution-space inverse、affine corrector、Wald composition | 由已列代数恒等式逐步推得；任意背景的 invariant proof 以源文为依据 |
| formal adjoints、action expansion、reality projection、flat/Kerr/spinor discussion | `Source-derived`，已重建论证；未逐项作一般张量/边界计算 |
| global AdS domain、retarded reality、constraint propagation、radiative completeness | `Not independently verified`，且一般版本并非源文已证结论 |

**Verified:** 上表明确标记的局部代数、微分算子与例子。检查由 Mathematica 和 xAct components/xCoba 执行；无 package-load errors、最终结果无截断。数值特征值不是证据基础：$J_1$ 的 eigenvalue multiplicities 为精确 $\{2:4,-1:8\}$。

**Assumptions:** 四维 Lorentzian、常曲率、$\Lambda\ne0$；机器 operator 验证具体为 $\Lambda=3$ 的 dS patch，未把它称为任意符号 $\Lambda$ 的全局证明。metric 外部检查 $t>0,\rho>0$；source check 以 smooth $\Phi$ 的恒等式及受控分布极限进行。formal adjoints 仅在 boundary terms 可丢弃时成立。

**Not verified:** 一般 AdS 边界条件下的 adjoint domains、symplectic/charge equivalence；两半 Weyl 的全局 reconstruction completeness；Kerr 推广；永恒源 closed-form potential 的 retarded 选择；点质量奇异 gauge map 在世界线上的全分布等价。

**Blocked:** 无未解决的 retrieval/tool blocker。首次 background-curvature 测试误把 $d^AA/2$ 当成 $F$，已更正为 $dA+\epsilon AA/2$ 并通过；一次 residual helper 对标量调用 `Flatten` 报错，改为先包列表后通过；Ricci 初次截断表达式残留 $m^2$ 项，改为分别计算 $m=0$ 与一阶导数，两个系数均零。这些是检查程序修正，不是 source equation 失败。

**Failed:** 未发现本文主链条在上述检查域内与独立结果矛盾。源文更一般的预期保持条件式，不由此升级为定理。

完整计算与读取审计保存在 vault 外的临时 `2610.32692v1/verification.json`；本笔记不创建 PDF 附件。今日总览：[[2026_10_26_overview]]。
