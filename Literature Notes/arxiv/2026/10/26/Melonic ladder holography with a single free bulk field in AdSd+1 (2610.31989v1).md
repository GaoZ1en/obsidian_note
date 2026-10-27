---
paper id: 2610.31989v1
title: "Melonic ladder holography with a single free bulk field in AdS$_{d+1}$"
authors:
  - Kok Hong Thong
publication date: 2026-10-22T23:10
abstract: |-
  The zero-centre-momentum reduction of a conformal melonic ladder is represented by the Robin boundary covariance of one free scalar in global AdS. Relative-coordinate radial quantization turns family dimensions into shifted cylinder energies. SYK and the long-range two-dimensional Amit–Roginsky model provide examples, subject to normalizability, positivity, parity and centre-reduction prescriptions; this is not an equivalence of the full theories.
comments: "12 pages + appendices, 4 figures"
url: https://arxiv.org/abs/2610.31989v1
summary: "在固定质量的 AdS 标量上用 Robin 条件实现 melonic ladder 的谱；重点核对边界响应归一化、稳定性和中心积分的证据边界。"
tags: []
---

# 主旨：一个 Robin 标量编码的是 reduced ladder

本文得到的具体对象是

$$
\boxed{v_0(|x||y|)^aF_g^{(0)}(x,y)
=c_\partial G_R(\tau-\tau',\mathbf n,\mathbf n';\kappa)},
\qquad
\kappa=-\frac{gc_\partial}{2\nu},\quad
m^2=\nu^2-\frac{d^2}{4}.
$$

左边是 conformal large-$N$ melonic 四点 ladder，先积分双局域 pair 的相对中心，再乘确定的外腿权重；右边是固定 global AdS 背景、固定质量、指定 parity 的自由标量边界协方差。$g$ 改变 Robin extension，质量不变。其极点满足 $\omega=h-d/2$，所以谱记录的是 conformal **family**，不是通常 state–operator correspondence 的所有 descendant 能级。

这提供了一个直接可复用的 AdS quantization 例子：同一径向微分算符，改变边界条件就能推动最低谱根越过零，得到复 conformal dimension；无需改变 bulk mass。它不建立完整 melonic theory 与标量 Fock theory 的等价，也没有匹配多粒子、higher-point、有限 $N$ 或引力回馈。

## Source map 与阅读顺序

原文 PDF 共 25 页，正文编号 1–19，含目录和参考文献；按技术密集、附录依赖较多的 monograph 模式记录。

| 原文章节 | 构造与依赖 | 阅读用途 |
|---|---|---|
| §1 Introduction | 区分传统“一 primary 一 bulk field”与本工作“一 reduced ladder 一标量” | 定位结论范围 |
| §2 The CFT pair and its relative cylinder | pair Casimir、中心零动量、$W$ 共轭、$\omega=h-d/2$ | 必读 |
| §3.1 Neumann seed | Wick seed、rail integral、stationary cylinder kernel、$c_\partial$ | 必读，依赖 A/C/D |
| §3.2 Robin scalar | cutoff action、$B/A$、double-trace resolvent、主对应式 | 必读，依赖 B |
| §3.3 Spectrum and OPE | family reduction、系数恢复所需非零性/独立性 | 必读，不能仅看 poles |
| §4.1 SYK | odd AdS2 scalar、$q>2$、$h=2$ 的 regulated limit | C 配合阅读 |
| §4.2 AR | even AdS3 scalar、action-derived rung strength、Robin 临界值 | D 配合阅读 |
| §5 Discussion | 正性区间、broken generators、与 DGJS/string/collective-field 构造的区别 | 限制和扩展 |
| A | Casimir 在中心积分下的 intertwining、composition、Gamma eigenvalue、family independence | 技术基础 |
| B | hypergeometric radial solution、response、norm/residue、稳定性与边界对称性 | 可直接用于谱计算 |
| C.1–C.3 | 反对称 seed、completed blocks、普通 families、exceptional $h=2$ | 归一化与极限最敏感处 |
| D、D.1 | AR 内指标、Wick 因子、Riesz inversion | 保留四点信息的证明路线 |
| E | DGJS 区间问题的等范数变换 | 同谱问题，非时空等价 |
| F | folded-string 区间坐标、fractional Robin 条件 | 第二种谱表示 |

最短有效阅读线为 §2 → §3 → B → §4 → C/D；E/F 是谱问题的技术对照。上表仍覆盖全部主要部分，没有将附录留成未处理清单。

# Pair Casimir 如何变成 cylinder 能量

## 变量、权重与丢失的生成元

AdS 半径设为 1。$\Delta_\phi$ 是 constituent 的 CFT dimension，$h,J$ 是 exchanged family 的 dimension 与 spin；$J$ 在 SYK 微观作用量中另表示随机耦合强度，两者须按上下文区分。定义

$$
X=\frac{x_1+x_2}{2},\quad x=x_1-x_2,
\quad a=2\Delta_\phi-\frac d2,
\quad \nu=d-2\Delta_\phi=\frac d2-a.
$$

省略生成元的 $i$，原文 (2.1)–(2.4) 取

$$
P_{12}=\partial_X,\quad D_{12}=X\cdot\partial_X+x\cdot\partial_x+2\Delta_\phi,
\quad C_{12}=D_{12}(D_{12}-d)+\mathbf L_{12}^2-K_{12}\cdot P_{12}.
$$

限制在 $P_{12}f=0$ 时，$D_{\rm rel}=x\cdot\partial_x+2\Delta_\phi$，

$$
C_{\rm rel}=D_{\rm rel}(D_{\rm rel}-d)+\mathbf L^2,
\qquad \mathbf L^2=-\nabla^2_{S^{d-1}}.
$$

令 $x=e^\tau\mathbf n$、$(Wf)(\tau,\mathbf n)=e^{a\tau}f(e^\tau\mathbf n)$。直接作用在任意 $f(\tau)$ 上得

$$
WD_{\rm rel}W^{-1}=\partial_\tau+\frac d2,
\quad WC_{\rm rel}W^{-1}=\partial_\tau^2+\mathbf L^2-\frac{d^2}{4}.
$$

$e^{-\omega\tau}Y_J$ 的本征值是 $\omega^2+J(J+d-2)-d^2/4$；与 $h(h-d)+J(J+d-2)$ 比较，选择 $\omega=h-d/2$。shadow $d-h$ 对应 $-\omega$。$d=1$ 的 $S^0$ 上 $J=0,1$ 分别表示偶/奇 parity，并非连续旋转的 spin。

零中心动量不是保留全部 conformal action 的子表示。原文 (A.3) 给出

$$
K_{12,\mu}f=2X_\mu D_{\rm rel}f+2x_\mu X\cdot\partial_xf
-2(X\cdot x)\partial_{x^\mu}f,
$$

一般重新引入 $X$。因此只保留 Casimir 信息，不能宣称 pair 的全部生成元都降到这个 cylinder。

## 中心积分的定义域

定义 $\mathcal If=\int d^dX\,f(X,x)$。在 Schwartz domain 上，将 Casimir 改写成 $D_{12}(D_{12}+d)+\mathbf L_{12}^2-P_{12}\cdot K_{12}$，积分 total derivative 后

$$
\mathcal I D_{12}=(D_{\rm rel}-d)\mathcal I,
\qquad \mathcal I C_{12}=C_{\rm rel}\mathcal I.
$$

这不是任意 bilocal $L^2$ 空间上的有界投影。对 correlators，要先在绝对收敛区工作，或使用同一 distributional continuation。若用有限中心 cutoff $|X|<L$，分部积分有 $|X|=L$ 的边界项，平移也会移动积分域；不能把有限 $L$ 的式子直接当作 exact intertwiner。

平移不变 kernel 的 composition 在允许 Fubini 和中心平移的共同定义域满足 $(K_1K_2)^{(0)}=K_1^{(0)}K_2^{(0)}$。原文先在该域证明，再解析延拓；本文笔记没有另行证明所有 singular kernels 的域闭合性。

# 从 rail integral 到 Neumann seed

## Wick 因子与归一化

取 $G(x)=b|x|^{-2\Delta_\phi}$，bosonic seed 为 $C_0=G_{13}G_{24}+G_{14}G_{23}$。一般保留 parity $\sigma=\pm1$ 和 seed sign $\epsilon_{\rm s}$。原文 (3.1)、(A.5)–(A.6) 为

$$
F_g=(1-gK)^{-1}C_0,\quad K=C_0\mathcal V,
\quad \mathcal V(y)=v_0|y|^{-2\nu},
$$

$$
\int d^dz\,G(z)G(z-t)=h_\phi|t|^{-2a},\quad
h_\phi=\frac{b^2\pi^{d/2}\Gamma(d/2-\Delta_\phi)^2\Gamma(a)}
{\Gamma(\Delta_\phi)^2\Gamma(\nu)}.
$$

这里绝对收敛要求 $d/4<\Re\Delta_\phi<d/2$：分别控制无穷远和两个 rail singularities。Schwinger parameters 合并后，Gaussian 积分产生 $\pi^{d/2}$，尺度积分产生 $\Gamma(a)$，比例参数积分是

$$
\int_0^1ds\,[s(1-s)]^{d/2-\Delta_\phi-1}
=\frac{\Gamma(d/2-\Delta_\phi)^2}{\Gamma(d-2\Delta_\phi)}.
$$

中心积分得到 $\epsilon_{\rm s}h_\phi[|x-y|^{-2a}+\sigma|x+y|^{-2a}]$。在 retained parity sector，两项作为算符贡献相等，而不是删掉其中一项。匹配原文 (3.3) 得

$$
c_\partial=\frac{4\epsilon_{\rm s}\pi^{d/2}v_0h_\phi\Gamma(1-\nu)}{\Gamma(a)},
\quad
K^{(0)}(x,y)=\frac{c_\partial\Gamma(a)}{2\pi^{d/2}\Gamma(1-\nu)}
|x-y|^{-2a}|y|^{-2\nu}.
$$

## Cylinder kernel 与 measure

利用 $|x-y|^2=e^{\tau+\tau'}[2\cosh(\tau-\tau')-2\mathbf n\cdot\mathbf n']$，并保留 $d^dy=|y|^d d\tau' d\Omega'$，得

$$
WK^{(0)}W^{-1}=c_\partial G_N,
\quad G_N=\frac{\Gamma(a)}{2\pi^{d/2}\Gamma(1-\nu)}P_\sigma\mathcal D_a,
$$

$$
\mathcal D_a=[2\cosh(\tau-\tau')-2\mathbf n\cdot\mathbf n']^{-a},
\quad P_\sigma f(\mathbf n)=\frac{f(\mathbf n)+\sigma f(-\mathbf n)}2.
$$

外腿权重来自同一个 $W$，因为 $d-a-2\nu=a$；不是额外任意场重定义。因此零 rung 对应 $v_0(|x||y|)^aC_0^{(0)}=c_\partial G_N$。

# Robin action、径向 response 与谱

## 保留 radial cutoff 的变分

令 $\zeta=\cos\theta$，截断面 $\zeta=\varepsilon>0$，$0<\nu<1$，

$$
\Delta_\pm=\frac d2\pm\nu,\quad
\Phi=A\zeta^{\Delta_-}+B\zeta^{\Delta_+}+\cdots,
\quad m^2=\nu^2-\frac{d^2}{4}.
$$

Euclidean bulk action 和 counterterm 为

$$
S_{{\rm bulk},\varepsilon}=\frac12\int_{\zeta\ge\varepsilon}\sqrt g
[(\nabla\Phi)^2+m^2\Phi^2],
\quad S_{{\rm ct},\varepsilon}=\frac{\Delta_-}{2}
\int_{\zeta=\varepsilon}\sqrt\gamma\,\Phi^2.
$$

外法向指向减小 $\zeta$。保留两种 falloff 后，$A\delta A\varepsilon^{-2\nu}$ 发散相消，有限交叉项为

$$
-\Delta_+B\delta A-\Delta_-A\delta B
+\Delta_-(B\delta A+A\delta B)=-2\nu B\delta A.
$$

$0<\nu<1$ 下被略去的导数/metric corrections 至少按 $\varepsilon^{2-2\nu}$ 消失。先加 counterterm，再取 $\varepsilon\downarrow0$；有限 source counterterms 设为零，是原文的 scheme，不能默认为 scheme-independent。加入

$$
S_R=\int d\tau d\Omega\,(\nu\kappa A^2-jA)
$$

并固定 $j$，stationarity 给出 $j=2\nu(\kappa A-B)$。$j=0$ 时，Dirichlet 为 $A=0$，Neumann 为 $B=0$，Robin 为 $B=\kappa A$。

## Regular solution 与 meromorphic response

对 $d>1$ 取中心 regular solution；$d=1$ 用 $J=0,1$ 固定 strip parity：

$$
u_{\omega J}(\theta)=(\sin\theta)^J\zeta^{\Delta_+}
{}_2F_1\left(\frac{J+\Delta_+-\omega}{2},\frac{J+\Delta_++\omega}{2};J+\frac d2;\sin^2\theta\right).
$$

这是原文 (B.1)。其方程为

$$
u''+\frac{d-1}{\sin\theta\cos\theta}u'
+\left[\omega^2-\frac{J(J+d-2)}{\sin^2\theta}
-\frac{m^2}{\cos^2\theta}\right]u=0.
$$

Hypergeometric connection formula 给出

$$
A=\frac{\Gamma(J+d/2)\Gamma(\nu)}
{\prod_\pm\Gamma[(J+\Delta_+\pm\omega)/2]},
\quad
\mathcal R_J(\omega)=\frac BA=
\frac{\Gamma(-\nu)}{\Gamma(\nu)}
\prod_\pm\frac{\Gamma[(J+\Delta_+\pm\omega)/2]}
{\Gamma[(J+\Delta_-\pm\omega)/2]}.
$$

中心 regularity 已经选定 solution；不能再自由独立指定 $A,B$。Dirichlet frequencies 是 $\mathcal R$ 的 poles，Neumann frequencies 为 $\omega^N_{nJ}=a+J+2n$，Robin 谱满足 $\mathcal R_J(\omega)=\kappa$。

固定边界 normalization 后

$$
\widehat G_R(\omega,J;\kappa)=\frac1{2\nu[\kappa-\mathcal R_J(\omega)]},
\quad G_R=(G_N^{-1}+2\nu\kappa)^{-1},
$$

其中 real Euclidean Fourier frequency 是 $p$，表中的 $\omega=ip$ 是其解析延拓，不能把 Euclidean $p$ 直接误作 real normal-mode frequency。

## Norm、residue 与 positivity

令 $p(\theta)=\tan^{d-1}\theta$。对径向方程求 $\omega$ 导数并相减得 Lagrange identity，原文 (B.3)：

$$
2\omega\int_0^{\pi/2}p(\theta)u_{\omega J}^2d\theta
=2\nu A^2\mathcal R'_J(\omega).
$$

对 real mode，$\partial_{\omega^2}\mathcal R_J>0$；unit radial norm 与 unit spherical harmonic 下

$$
G_R(\tau,\mathbf n,\mathbf n')=
\sum_{n,J,\ell}\frac{e^{-\omega_{nJ}|\tau|}}{2\nu\mathcal R'_J(\omega_{nJ})}
Y_{J\ell}(\mathbf n)Y^*_{J\ell}(\mathbf n').
$$

权重等于 $\widehat G_R$ 在正频 pole 的**负 residue**。$d=1$ 若直接用右端点 $A_R$ 而非 unit odd $S^0$ harmonic，full-strip norm 和 action 都是 half-strip 的两倍，故

$$
j_R=4\nu(\kappa A_R-B_R),\qquad w_n^{\rm endpoint}=[4\nu\mathcal R'_-(\omega_n)]^{-1}.
$$

这两个 normalization 不可混用。$d=2$ 保留 even circle harmonics 不会再翻倍其 unit norm。

正性要求比 self-adjointness 更强。在最低 retained $J$ 扇区，$\kappa=\mathcal R_J(0)$ 是零模阈值，$\kappa>\mathcal R_J(0)$ 给 positive spatial operator；阈值本身不具 stationary Fock vacuum。Neumann seed 还要求 $a+J>0$。超出 $0<\nu<1$ 时，Gamma 函数可延拓并不自动给出可量子化的稳定自由场。

# Ladder resummation 与 OPE 信息

原文 (3.10) 的关键顺序是先右乘 $\mathcal V$：

$$
F_g^{(0)}\mathcal V=(1-gK^{(0)})^{-1}K^{(0)},
$$

$$
W(F_g^{(0)}\mathcal V)W^{-1}
=(1-gc_\partial G_N)^{-1}c_\partial G_N
=c_\partial(G_N^{-1}-gc_\partial)^{-1}.
$$

不需要假设 $C_0^{(0)}$ 与 $\mathcal V$ 可交换。先在 Neumann series 收敛域求和，再作 resolvent continuation。$d\ge2$ 的 eigenvalue 为

$$
k(h,J)=\frac{c_\partial\Gamma(\nu)}{2\Gamma(1-\nu)}
\prod_\pm\frac{\Gamma[(a+J\pm\omega)/2]}
{\Gamma[(d-a+J\pm\omega)/2]}
=-\frac{c_\partial}{2\nu\mathcal R_J(\omega)}.
$$

因此 $1-gk=0$ 与 $\mathcal R=\kappa$ 等价，且 off-shell 的 $k/(1-gk)=c_\partial\widehat G_R$ 保留 pole residues。

但保留 poles 不等于已经证明保留所有 OPE coefficients。若 $F_g=\sum_m c_m^2\mathcal B_{h_m,J_m}$ 可按共同 prescription 逐项 reduction，则相同系数乘以确定归一化的 reduced families。有限集合中，nonzero reduced images 和互异 Casimir eigenvalues 给线性独立性。无限集合还需要 summation/interchange 控制；shadow degeneracy、相同 Casimir 或被 $\mathcal I$ 杀掉的 family 都必须另处理。SYK 的 $h=2$ 正是不能跳过的例子。

# SYK：反对称中心积分与 exceptional family

## 微观 normalization 到奇宇称 AdS2

原文 (4.1) 的 Majorana action 为 kinetic term 加 $i^{q/2}j_{i_1\cdots i_q}\psi_{i_1}\cdots\psi_{i_q}$，$q$ 为偶数，random variance 为 $J^2(q-1)!/N^{q-1}$。Conformal large-$N$ propagator

$$
G_c(T)=b\frac{\operatorname{sgn}T}{|T|^{2\Delta}},\quad
\Delta=\frac1q,\quad J^2b^q\pi=(\tfrac12-\Delta)\tan\pi\Delta.
$$

反对称 seed 和 rung 为

$$
C_0=-G_{13}G_{24}+G_{14}G_{23},\quad
K_c=-(q-1)J^2G_{13}G_{24}G_{34}^{q-2}.
$$

在完整 ordered-pair measure 上用 $v_0=(q-1)J^2b^{q-2}/2$；两 exchange terms 的相等贡献消去 $1/2$。记

$$
\alpha_0=[(q-1)J^2b^q]^{-1}
=\frac{2\pi q}{(q-1)(q-2)\tan(\pi/q)}.
$$

链积分先在 $1/4<\Delta<1/2$ 成立：

$$
\int dz\,G_c(z)G_c(z-T)=b^2[2B(\nu,1-2\nu)-B(\nu,\nu)]|T|^{-2a}.
$$

物理 $q\ge4$ 时不能分别积分两个 IR-divergent exchange terms。必须先在共同 $|Y|<L$ regulator 下组合，再取 $L\to\infty$；$q=4$ 最后取 $a\to0$ 的 prefactor 与 powers 的共同极限，得到

$$
C_0^{(0)}=2b^2\log\left|\frac{x-y}{x+y}\right|,
\quad c_\partial=-2\nu4^{-\nu}(q-1).
$$

所以 odd AdS2 strip 的参数是

$$
\nu=1-\frac2q,\quad m^2=\nu^2-\frac14,
\quad \kappa=g4^{-\nu}(q-1),\quad \Phi(t,-x)=-\Phi(t,x).
$$

$ds^2=\sec^2x(-dt^2+dx^2)$，$x\in[-\pi/2,\pi/2]$。$q>2$ 保证 $0<\nu<1$；$q=2$ 在 BF endpoint，需 log boundary data，不适用这些 Robin powers。$q=4$ 时 $m^2=0$，$u=\sin\omega x$、$\mathcal R_-(\omega)=-\omega\cot(\pi\omega/2)$；$g=1$ 给 $\kappa=3/2$，最低 $\omega=3/2$。

## Completed block 的中心积分

原文 (C.4)–(C.8) 定义

$$
\mu(h)=\frac{h-1/2}{\pi\tan(\pi h/2)},\quad
\mathcal N(h)=\frac{\Gamma(h)^2}{2\Gamma(2h)},
\quad \mathcal B_h(\chi)=\chi^h{}_2F_1(h,h;2h;\chi).
$$

Completed $\mathbb B_h$ 在 $0<\chi<1$ 取该 block，在 $\chi>1$ 取 $\Psi_h/[2\mathcal N(h)]$，负 $\chi$ 用 bilocal exchange 延拓。不能把单一 OPE block 在全部实轴直接积分。

先引入 $\eta>1$ 和 $\Re h>1/2$：

$$
\mathcal J_h(\eta)=\int_{\mathbb R}du\,
\mathcal B_h\left(\frac2{1+\eta+2u^2}\right)
=\frac{\pi e^{-(h-1/2)\operatorname{arcosh}\eta}}
{2(h-1/2)\mathcal N(h)}.
$$

随后取 $\eta\to-\cosh\tau\pm i0$，按 $[1\pm i\tan(\pi h/2)]/2$ 组合两个 boundary values，得到

$$
\mathcal P\mathbb B_h=\mathcal I(h)e^{-(h-1/2)|\tau|},
\quad\mathcal I(h)=\frac1{2\mu(h)\mathcal N(h)},
\quad \mathcal P\mathcal F_g=2c_\partial\alpha_0G_R.
$$

对 $0<g<1$，普通 roots 位于 $2n+1+2\Delta<h_n(g)<2n+2$，从而频率不同且 $\mathcal I(h_n)\ne0$。原文用 polynomial residue growth、cut 两侧解析性质和反复分部积分解释 infinite family reduction；本次核对有限 $h$ 积分与代数系数，但没有建立全 tower 的一致 cut/endpoint estimates。

## $g\uparrow1$ 必须在 reduction 后取

Conformal SYK 的参数化 $g=1-2\bar b$ 改变 Robin coupling；rescaling rails 后保持 $G_c$ 不变。最低 OPE root $h_0(g)\to2$，原文 (C.10) 给

$$
\mathcal P[Nc_0^2(g)\mathbb B_{h_0(g)}]
=\frac{\alpha_0}{g^2k_c'(h_0(g))}e^{-(h_0(g)-1/2)|\tau|}
\longrightarrow \frac{\alpha_0}{k_c'(2)}e^{-3|\tau|/2}.
$$

未 reduced 的 divergent discrete contribution 可定义减法

$$
\mathcal F_1^\perp=\lim_{g\uparrow1}
\left[\mathcal F_g-\frac{3\alpha_0}{\pi^2(1-g)}\Psi_2\right].
$$

$\mathbb B_2=6\Psi_2$、$\mathcal I(2)=0$，故该减法项在中心积分下消失。这只定义特定 regulated conformal ladder 的有限 representative；没有自动包含真实 finite-coupling SYK 的全部 $h=2$ corrections。$q=4$ 的核为 $k_c(h)=-3\tan[\pi(h-1/2)/2]/[2(h-1/2)]$，本次算得有限系数 $-4\pi/(2+3\pi)$，负号与 $c_\partial<0$ 的 reduced-fermion normalization 相容，不是 scalar positive covariance 的反例。

# AR：作用量因子、临界模与反演

## Long-range cubic model

$d=2$ 的 AR model 有 $N=2j+1$ 个 real degrees of freedom，internal even $j$ representation，$g_j^{mm'}=(-1)^{j-m}\delta_{m,-m'}$，$(\phi^m)^*=\phi_m$。作用量 (4.4) 为

$$
S=\int d^2x\left[\frac12\sum_m\bigl(\phi^m(-\partial^2)^{1/3}\phi_m+\lambda_2\phi_m\phi^m\bigr)
+\frac{\lambda\sqrt{2j+1}}{3!}\sum_{m_1m_2m_3}
\begin{pmatrix}j&j&j\\m_1&m_2&m_3\end{pmatrix}\phi^{m_1}\phi^{m_2}\phi^{m_3}\right].
$$

$\lambda_2$ 调到 criticality，analytic regularization 中取零。$G=\mathcal Z_{\rm LR}C$，rescaled field 的 propagator 为

$$
C(p)=|p|^{-2/3},\quad C(x)=b|x|^{-4/3},\quad
b=\frac{\Gamma(2/3)}{2^{2/3}\pi\Gamma(1/3)},
\quad g=\lambda^2\mathcal Z_{\rm LR}^3.
$$

$\Sigma=\lambda^2G^2/2$；在 symmetric ordered bilocals 上求变分给 $K=C_0(C_{34}/2)$，即 $v_0=b/2$。代入 chain coefficient 得 $c_\partial=1/(2\pi)$。原文特别指出此 action-derived normalization 是其所引 Ref. [24] printed eigenvalue 的一半；本次检查本文自身的 Wick/chain normalization，没有重审那篇外部文献的全部 conventions。

于是

$$
\nu=\frac23,\quad m^2=-\frac59,\quad
\kappa=-\frac{3g}{8\pi},\quad J=0,2,4,\ldots .
$$

Global AdS3 波动算符为原文 (4.6)

$$
\left[-\partial_t^2+\frac1{\tan r}\partial_r(\tan r\,\partial_r)
+\frac{\partial_\varphi^2}{\sin^2r}+\frac5{9\cos^2r}\right]\Phi=0,
$$

$\Phi(t,r,\varphi+\pi)=\Phi(t,r,\varphi)$，falloffs 为 $A(\cos r)^{1/3}+B(\cos r)^{5/3}$。

## 固定质量的边界不稳定性

最低 $J=0$ 模的 threshold 是

$$
g_c=-\frac{8\pi}{3}\mathcal R_0(0)
=-\frac{8\pi\Gamma(-2/3)\Gamma(5/6)^2}{3\Gamma(2/3)\Gamma(1/6)^2}
=1.02236136077244\ldots .
$$

$0\le g<g_c$ 有 positive spatial operator；$g=g_c$ 出现零模；$g>g_c$ 时 $\omega_{00}=i\gamma$，于是 $h_\pm=1\pm i\gamma$。Bulk mass 一直是 $-5/9>-1=m^2_{\rm BF}$。

独立求根得到 $g=1$ 时

| $J$ | 前三个 positive frequencies |
|---|---|
| 0 | $0.0498711141709,\ 2.3157646728678,\ 4.3255113347874$ |
| 2 | $2.2973001514839,\ 4.3242086038877,\ 6.3282567882476$ |

$g=1.1$ 时 $J=0$ 的 imaginary root 为 $\gamma=0.0930335487793$。这些是指定有限 modes 的数值检查，不是所有 $J,n$ 的数值遍历；一般单调性来自 norm identity 与 self-adjoint extension 定理。

## Riesz inverse 保留 full four-point 信息的条件

用 complex $x,y,Y$，令 $x/y=e^{\tau+i\varphi}$、$u=Y/\sqrt{xy}$、$\xi=\sinh^2[(\tau+i\varphi)/2]$，cross-ratio 为 $z=1/(u^2-\xi)$。定义 $f_g(t)=\mathcal F_g^{\rm AR}(1/t,1/\bar t)$，two-to-one map $t=u^2-\xi$ 的 Jacobian 给

$$
G_R(\xi)=\frac{\pi b^3}{2}\int_{\mathbb C}d^2t\,\frac{f_g(t)}{|\xi+t|},
\qquad
f_g(-\xi)=\frac1{\pi^2b^3}(-\Delta_\xi)^{1/2}G_R(\xi).
$$

在 $\int |f_g(t)|/(1+|t|)\,d^2t<\infty$ 的 distributional class 内，$\mathcal F[|\xi|^{-1}]=2\pi/|k|$ 给逆算符。显式 Abel regulator 为 $e^{-\epsilon_{\rm A}|\xi|}$，变换为 $2\pi/\sqrt{|k|^2+\epsilon_{\rm A}^2}$；先在 $k\ne0$ 核对 multiplier，再取 $\epsilon_{\rm A}\downarrow0$，zero-frequency/distributional 解释受 weighted domain 控制。

原文对 ordinary $h>1$ blocks 用 tail $|t|^{-h}$ 和有限点的 log singularities 控制 weighted bound，对 stable positive ladder 用 cylinder $L^1$ rung norms 的 geometric ratio $g/g_c$。这给先反演完整 correlator、再提取 OPE 的路线，无需逐项交换 OPE sum；它仍依赖 positivity 与 $g<g_c$，不是 arbitrary four-point function 的无条件反演定理。

# Boundary symmetry 与两个 interval maps

## 固定 $\kappa$ 的对称性

Boundary CKV 满足 $\mathcal L_\xi g_{(0)}=2\sigma_\xi g_{(0)}$；$A,B$ 权重差为 $2\nu$。固定常数 $\kappa$ 时

$$
\delta_\xi(B-\kappa A)|_{B=\kappa A}=-2\nu\kappa\sigma_\xi A.
$$

因此非零 $\nu\kappa$ 只保留 cylinder time translations 和 rotations；群维数相减给 $2d$ 个 broken generators。这里是 boundary-condition preservation 失败，bulk equation 本身仍有 AdS isometries。SYK 的 fixed odd parity 还会排除交换奇偶的两个非紧生成元，即便 $\kappa=0$ 也须检查 parity。

## DGJS 与 folded-string 的具体变换

原文 E 的 DGJS 区间方程为

$$
[y(1-y)\partial_y^2+(2\Delta-(\tfrac12+2\Delta)y)\partial_y
-(\Delta-\tfrac14)^2]f_k=-\frac{k^2}4f_k.
$$

取 $y=\cos^2x$、$u_k=(\cos x)^{2\Delta-1/2}f_k(\cos^2x)$，其 measure $y^{2\Delta-1}dy/(2\sqrt{1-y})$ 变成 $dx\,|u_k|^2$，方程变成 $[-\partial_x^2+((1-2\Delta)^2-1/4)/\cos^2x]u_k=k^2u_k$。Gamma duplication 给 $V/2=4^{-\nu}(q-1)$；$f_k(1)=0$ 是中心 odd extension。该变换是谱算符的等范数对应，不把 DGJS 的 bilocal centre time 与这里的 $\log|T_{12}|$ 识别。

原文 F 取

$$
z=\frac{1+\sin x}{2},\qquad
\varphi_\omega(z)=\sqrt{\frac2{\cos x}}u_\omega(x).
$$

本次代换直接得到

$$
\left[-\partial_z(z(1-z)\partial_z)+\frac{\nu^2}{4z(1-z)}\right]\varphi
=(\omega^2-\tfrac14)\varphi=h(h-1)\varphi.
$$

$\int_0^1|\varphi|^2dz=\int_{-\pi/2}^{\pi/2}|u|^2dx$，近端点 $\varphi\sim c_Az^{-\nu/2}+c_Bz^{\nu/2}$ 且 $c_B=4^\nu\kappa c_A$。SYK $g=1$ 给 $c_B=(q-1)c_A$；odd strip 对应 $\varphi(1-z)=-\varphi(z)$。这没有证明 imaginary-radius string theory 与当前真实 AdS 标量的 interacting dynamics 等价。

# 可用于当前研究的对象与证据边界

可直接抽取的对象是 $\mathcal R_J(\omega)$、$\kappa$ extension、residue/norm identity 和 finite-cutoff boundary variation。用于本地 AdS 谱计算时，先对齐半径、$A/B$ 命名、unit harmonic 与 endpoint normalization；$ω=h-d/2$ 属于这个 reduced family dictionary，不能替换普通 bulk scalar 的 $\Delta_\pm$。把该模型用作 response reduction 的对照时，还须记住 $\mathcal I$ 不是无损的 full phase-space reduction，exceptional SYK family 已显式展示非平凡 kernel。

## Verification log

**Source-derived:** 全部 §1–5、A–F 已按上述技术链重建。PDF 与 TeX 均取得；渲染核对 PDF 第 7、15、18、19 页的 action、Gamma normalization、block integral 与 $h=2$ 公式。Text extraction 的 font warning 不用于判断公式。Ref. [24] 的 factor-of-two 对比、一般 family completion、uniform infinite-sum estimates 和全模型物理解释仍依赖原文。

**Checked — Mathematica:** Casimir 共轭与 eigenvalue residual 为零；Schwinger parameter Beta factor、cylinder Jacobian、finite boundary variation、$k\mathcal R=-c_\partial/(2\nu)$、AR $c_\partial=1/(2\pi)$ 均复现。另用不交换的 $3\times3$ $C_0,\mathcal V$ 检验 resolvent 顺序；这只是有限矩阵的代数见证，不能替代无限维定义域。

**Checked — Mathematica:** 对一般 $d,J,\nu,\omega$ 将 hypergeometric ODE 代回径向方程，residual 为零；Lagrange identity、DGJS operator/measure、coupling duplication、folded-string operator/norm 均通过。$q=4$ response 与 half-strip norm 精确复现；$q=6,8,10$ 的 SYK $c_\partial$ 以 70 位精度核对，误差低于 $10^{-60}$。

**Checked — xAct/xCoba:** unit-radius global AdS3 的 scalar curvature 为 $-6$，由 metric covariant wave operator 分离出的径向方程与 (4.6) 一致；两项 labelled residual 都为零。初次测试漏声明 $\omega,J$ 为 constant symbols，出现了这些符号的协变导数；修正测试后通过，未将测试设置错误记为论文错误。

**Checked — 有限 cutoff 数值:** AR $g=1,J=0,n=0$，记 $\varepsilon=\cos r_{\max}$。截断 norm 与完整 Lagrange 值的差在 $\varepsilon=10^{-4},10^{-6}$ 分别为 $-3.64017699\times10^{-3}$、$-1.68962111\times10^{-4}$；保留并补上 leading missing tail $A^2\varepsilon^{2-2\nu}/(2-2\nu)$ 后 residual 分别为 $1.3431\times10^{-9}$、$1.3445\times10^{-13}$。这里明确区分原始截断积分与加尾项的估计。

**Checked — 有限中心积分:** $q=4,b=1,x=2,y=1$，先组合两个 Wick terms，再在 $[-L,L]$ 积分。$L=10,100,1000$ 相对 $2\log(1/3)$ 的差为 $-1.00950\times10^{-2}$、$-1.00009\times10^{-4}$、$-1.00000\times10^{-6}$，与未取极限的 tail 相容。没有把任何单独 divergent exchange integral 当作有限数。

**Checked — family 与 inverse 的局部证据:** (C.6) 在 $\eta=1.8,h=1,1.7,2.4$、$|u|<100$ 下测试；保留并加上 leading missing tail $2L^{1-2h}/(2h-1)$ 后 residual 分别约 $6.00\times10^{-7}$、$1.10\times10^{-9}$、$1.87\times10^{-12}$。Continuation 的三角系数恒等式、$\mathcal I(2)=0$ 和 $q=4$ finite $h=2$ coefficient 精确核对；Abel-regulated Riesz multiplier 及其 $k>0$ 极限复现。

**Assumptions:** conformal leading large-$N$ ladder；同一 rail/centre continuation；保留指定 parity；$0<\nu<1$、每个 retained Neumann sector 的 $a+J>0$；Robin spatial operator positive；unit harmonic/endpoint normalization 不混用；finite source counterterms 为零；$\tau\ne0$ 的普通 family statements 不含 contact terms。所有 $\varepsilon$、$L$、Abel regulator 和 $g\uparrow1$ 的顺序如各节所列。

**Not independently verified:** 普通 SYK infinite OPE sum 在全部 cuts/endpoints 的一致估计、AR full positive-ladder weighted bound 的完整函数分析证明、所有谱根/全部 OPE coefficients、Fig. 3 的全绘图管线，以及有限 $N$/higher-point/重力扩展。原文 C.2 只简述 uniform summation argument，本次有限 block 检查不能补足其全族证明。没有发现本次已执行检查与本文公式不可修复的矛盾，故不设置 `Failed` 条目。

**Blocked:** 无未解决的下载或计算工具阻塞；上述无限维/完整理论边界未被本次检查消除。具体 full-theory identification 输入（多粒子 dictionary、finite-$N$ coupling、fluctuating Robin boundary）原文本身列为未来工作。

**Verified:** 上述逐项 Checked 的符号恒等式、有限矩阵见证、指定参数与截断下的数值结果；适用条件见 Assumptions，不扩展到未检验的完整理论。

**Not verified:** 上述 Not independently verified 所列的全族一致性、无限维定义域、全部谱/OPE 数据与 finite-$N$/higher-point extension。

今日总览：[[2026_10_26_overview]]。
