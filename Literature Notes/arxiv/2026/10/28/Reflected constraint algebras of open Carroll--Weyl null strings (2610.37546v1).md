---
paper id: 2610.37546v1
title: "Reflected constraint algebras of open Carroll--Weyl null strings"
authors:
  - Limin Zeng
publication date: 2026-10-27
abstract: |-
  We construct a classical reflected phase space for open Carroll--Weyl null strings with Dirichlet conditions at the target origin or linear mixed target gluings. The reflection-compatible constraints are differentiable, their Hamiltonian flows preserve the boundary domain, and the constraint system is weakly first class on its regular part. The induced boundary algebra extends the boundary Carrollian conformal algebra by an even weight-one Carroll--Weyl current, with normalization fixed by the reflected symplectic form. The regular local embedding count agrees with that of the closed theory. We exhibit a four-dimensional mixed sector with one canonical field pair and a separate solution family carrying a nonzero conserved target-space boost charge and a nondegenerate symplectic pullback. Smooth fixed-point reflection selects characteristic endpoints. For timelike defects with natural tangential variations and no additional boundary interactions, non-characteristic endpoints have vanishing Carroll flow. For displaced Dirichlet data, we derive the canonical affine lift and its required shift of the edge momentum by integrated bulk momentum.
comments: "30 pages, 3 appendices"
url: https://arxiv.org/abs/2610.37546v1
summary: "从smooth reflected domain重建CW null string的约束代数、D−3局部约化与affine edge lift；独立核对归一化和boost解的symplectic pullback。"
tags: []
---

# 结果：一个定义域明确的 reflected constraint phase space

本文构造的是 **open Carroll–Weyl (CW) null string 的经典约束相空间**：选择 smooth fixed-point fold、constant metric-preserving target involution、相容的 auxiliary-field parity 和 even gauge parameter 后，三条约束在 interval 上可微、流保持定义域，并给出 O–P–A algebra。主要可借用对象是

$$
\Omega_I=\int_0^\pi\delta P_\mu\wedge\delta X^\mu\,d\sigma,
\qquad (C_1,C_2,C_3)=(P^2,P\cdot D_1X,P\cdot X),
$$

以及 displaced endpoint 的 **canonical affine lift**

$$
X_R=2\widehat x-X,\quad P_R=-P,\quad
\pi_R=\pi+2\overline P,\qquad \overline P=\int_0^\pi P\,d\sigma.
$$

三点边界必须保留：$D-3$ 是 rank-three 区域的 local embedding canonical-pair count；O–P–A 是 constraint algebra，不是已完成 gauge fixing 后的 residual charge algebra；affine cotangent lift 不自动保持原来的 local constraint surface，也不自动对一般 local CW transformation equivariant。

已独立核对：完整 interior bracket table 的 variational residual、circle-to-interval projection、有限模式 Jacobi、显式 regular/boost 解、charge balance、symplectic pullback 和 affine lift。执行范围中未发现矛盾；全局约化、rank-deficient strata 和 quantum/BRST 结论未验证。

## Source map 与 How to read this long paper

PDF 共 **31 页**，comments “30 pages, 3 appendices”。全文、A–C 已重建。下表页码沿用正文印刷页；PDF 还含 front matter。TeX 用于公式，PDF rendered pages 用于确认 mode normalization 和 physical-sector 公式；文本提取有 font-type warning，未把失真 extraction 当公式证据。

| section cluster | 问题、输入与后续依赖 |
|---|---|
| §1，pp. 1–3 | 与 ILST 两约束/BCCA、closed CW 三约束的区别；本文 completion 是 reflected classical sector |
| §2，pp. 3–4 | $D_aX,V,W$、action、CW covariance、weighted integration by parts、endpoint flux |
| §3.1，pp. 4–7 | Neumann/characteristic 区分、timelike defect 的 zero-flow theorem、smooth-fold obstruction |
| §3.2，pp. 7–9 | displaced center、$T,U$、edge pair、affine momentum shift 和 local constraint obstruction |
| §4.1–4.2，pp. 10–12 | half symplectic form、general $R$、momentum covector gluing、connection parity、mixed projectors |
| §4.3–4.4，pp. 12–15 | parent Fourier convention、O–P–A brackets、zero modes 及 oscillator constraints |
| §5 开头，pp. 15–16 | Legendre transform、四条 primary、三条 secondary、无独立 tertiary |
| §5.1，pp. 16–18 | complete CW generator、endpoint differentiability、flow parity、auxiliary gauge shift、$D-3$ |
| §5.2，pp. 18–20 | 四维 regular local gauge slice 和 odd canonical pair |
| §5.3，pp. 20–22 | 另一族 exact solutions、非零 target boost 和非退化二维 pullback |
| §6，p. 22 | classical statement、global/quantum extensions 的边界 |
| A，p. 23 | half-range sine/cosine pairing |
| B.1，pp. 23–24 | 含 $W_1$ 的六项 bulk bracket table |
| B.2，pp. 24–26 | mode differentiability、projection 和 Jacobi 的 analytic argument |
| B.3，pp. 26–27 | fixed zero-mode action 下 local diagonal-contact central terms |
| C，p. 27 | affine one-form cancellation 的逐项证明 |

建议先读 §2→§3.1→§4.1–4.4→§5.1；要研究 edge sewing 再读 §3.2+C。§5.2 与 §5.3 是两个不同解空间 patch，不应合并成同一个 global reduced chart。B 用作归一化和 endpoint-domain 的技术参考。

## 符号、边界域与 canonical 约定

| symbol | 定义及域 |
|---|---|
| $(\tau,\sigma)$ | worldsheet coordinates，$\sigma\in[0,\pi]$；smooth reflected extension 到 circle |
| $X^\mu,P_\mu$ | flat Minkowski target embedding 与 covector momentum；示例 $\eta=\mathrm{diag}(-1,1,1,1)$ |
| $\kappa$ | action scale，非零；explicit dynamical sector 用 $\kappa>0$ |
| $V^a$ | worldsheet contravariant vector density weight $1/2$，CW weight $-1$ |
| $W_a$ | CW connection，$D_aX=\partial_aX+W_aX$ |
| $\Pi_a,Q^a$ | $V^a,W_a$ 的 primary conjugate momenta |
| $\chi$ | CW parameter，even under reflection；一般可在两个 endpoint 独立取非零值 |
| $R$ | constant target involution，$R^2=1$、$R^T\eta R=\eta$ |
| $\alpha,\beta,\gamma$ | Hamiltonian multipliers；$\beta=-V^1/V^0$ 为 odd |
| $O_n,P_n,A_n$ | constraint modes；$P_n$ 与 canonical momentum $P_\mu(\sigma)$ 须按下标区分 |
| $\widehat x,\pi$ | displaced boundary center 和 edge momentum；$\pi$ 与 interval 终点常数同形但含指标时不混淆 |

原文 $\Omega=\delta\Theta=\int\delta P\wedge\delta X$；canonical bracket 仍取 $\{X^\mu,P_\nu\}=\delta^\mu{}_\nu\delta(\sigma-\sigma')$。Hamiltonian vector field 的 contraction 符号应与此一起搬运。全部 mode 计算先保留完整函数空间；有限 mode grid 仅为独立 bookkeeping check，不是替代 continuum 定义的 regulator。

## §2：action、CW covariance 与 endpoint flux

$$
S_{\rm CW}=\frac\kappa2\int V^aV^bD_aX^\mu D_bX_\mu\,d\tau d\sigma,
$$

$$
\delta_\chi X=\chi X,\quad \delta_\chi V^a=-\chi V^a,
\quad\delta_\chi W_a=-\partial_a\chi,
\quad\delta_\chi(D_aX)=\chi D_aX.
$$

因此 integrand 的 CW weight 为 $-2+1+1=0$，是 pointwise invariant，而不是靠 boundary counterterm 取消。worldsheet diffeomorphism density weight 与 CW weight 是两种不同变换。

定义 $Y^\mu=V^aD_aX^\mu$、$F^a{}_{\mu}=\kappa V^aY_\mu$，对 $X$ 变分有

$$
F^aD_a\delta X=\partial_a(F^a\delta X)
-(\partial_a-W_a)F^a\,\delta X,
$$

$$
\delta_XS\big|_{\partial\Sigma}
=\kappa\int_{\partial\Sigma}n_aV^aY_\mu\delta X^\mu\,d\tau.
$$

**Checked:** Mathematica 展开 infinitesimal $X\to(1+\epsilon\chi)X$、$W\to W-\epsilon d\chi$，$D_aX$ covariance residual 为零；weighted integration-by-parts residual 为零。这里没有删掉 $n\cdot V$，它正是 endpoint 分支的判据。

## §3.1：reflection、Neumann 与 characteristic 的不同约束

自然 Neumann 流方程是 $Y^A|_{\partial}=0$。characteristic/null endpoint 则是 $n_aV^a|_\partial=0$。后者让 action variation 的 endpoint 项消失，本身不要求前者。

在 $W=0$ 下 even target reflection 给 $X'^A=0$。如果取 spatial chart $V^0=0,V^1\ne0$，Neumann 方程也给 $X'^A=0$；但 bulk equation $\partial_\sigma[(V^1)^2X'^A]=0$ 会把 endpoint zero gradient 传播到整个 interval，移除非恒定 spatial profiles。相反，本文 canonical chart 是 $V^0\ne0$，常用 representative $V^a=(1,0)$；此时 reflection 的 $X'^A=0$ 与另加的 Neumann $\dot X^A=0$ 互不等同。

两个源文命题是：

1. timelike D$_p$ defect、natural tangential variations、无额外 boundary interactions、$n\cdot V\ne0$ 时，boundary variation 强制 $Y$ 位于 spacelike normal bundle；$V$ variation 又给 $Y^2=0$，故 $Y=0$。smooth homogeneous transport $(\partial_a-W_a)(V^aY)=0$ 把 zero boundary data 延拓到局部一侧。依赖的是 non-characteristic transport uniqueness 和 positive normal metric。
2. smooth fixed-point fold $\sigma\to-\sigma$ 使 $V^1$ odd，故 $V^1(0)=V^1(\pi)=0$。这一构造只覆盖 characteristic endpoints；endpoint-exchanging gluing 不是本证明。

完整 fold parity 要求 $V^0,W_0$ even、$V^1,W_1$ odd。even $\chi$ 才保持这些条件。fixed Dirichlet $X^I=x_0^I$ 在 arbitrary endpoint scaling 下 invariant 仅当 $x_0^I=0$；这也是引入 edge center 的实际原因。上述正定性和 transport 命题本次作为 **Source-derived**；没有把它泛化到 null/spacelike defects 或含 boundary interactions 的系统。

## §3.2 与 C：affine reflection 及其两个独立障碍

对一端或两个共享同一 center 的 transverse directions，增广

$$
\Theta=\int_0^\pi P_\mu\delta X^\mu d\sigma+\pi_I\delta\widehat x^I.
$$

$\widehat x$、$\pi$ 的 CW weights 分别为 $+1,-1$，使用 endpoint parameter $\chi_b$。affine point map 的 natural cotangent lift 必须是

$$
X_R=2\widehat x-X,\quad P_R=-P,\quad
\pi_R=\pi+2\overline P.
$$

因为 $\int(-P)\delta(2\widehat x-X)=\int P\delta X-2\overline P\delta\widehat x$，edge shift 正好取消第二项。**Checked:** Mathematica 在两个任意 bulk canonical samples 加一个 edge pair 上算完整 Jacobian，$J^T\omega J-\omega$ 的 $6\times6$ residual 为零，重复 affine map 为 identity；continuum one-form cancellation 又是无离散近似的直接证明。该 statement 是 natural cotangent lift；不把任意附加 exact generating function 的 symplectomorphism 说成同一 lift。

然而原来的第三约束并非 reflection even：

$$
C_{3,R}=C_3-2T,\quad T=\widehat x\cdot P,\quad
U=C_3-T=P\cdot(X-\widehat x),\quad U_R=U.
$$

同时要求 $C_3\approx C_{3,R}\approx0$ 还需 **pointwise** $T\approx0$。canonical lift 不能替代此条件；$U$ 或其 integrated version 不是原约束的自动替代。

第二个障碍是 parameter 的空间依赖：

$$
\delta_\chi T=(\chi_b-\chi)T,\quad
\delta_\chi U=-(\chi_b-\chi)T,
$$

$$
\delta_\chi\pi_R+\chi_b\pi_R
=-2\int_0^\pi(\chi(\sigma)-\chi_b)P(\sigma)d\sigma.
$$

故仅 endpoint-equivariant 不能推出 whole-interval affine map equivariant。Mathematica 检查了 local weight mismatch algebra；不能省掉不同的 $\chi$ 与 $\chi_b$。

relative coordinates $Y=X-\widehat x$、$\Lambda=\pi+\overline P$ 给

$$
\Theta=\int P\delta Y+\Lambda\delta\widehat x,
\quad (Y_R,P_R,\widehat x_R,\Lambda_R)=(-Y,-P,\widehat x,\Lambda).
$$

$U[f]$ 与 $\Lambda$ 对 interior-supported test functions 形成 commuting blocks；实际耦合在 $C_3[f]=U[f]+\widehat x\cdot\overline P[f]$ 及原 edge pair 的 joint constrained system。integrated invariant $\widehat U_0=\int PX+\widehat x\pi$ 的 reflection/CW invariance 不意味着这个 joint system 已完成约化。两个独立 displaced centers 还需要额外 gluing relation；本文明确留作后续。

## §4.1–4.2：target involution、connection parity 与 doubling factor

$$
X(-\sigma)=RX(\sigma),\qquad
P(-\sigma)=R^{-T}P(\sigma),\qquad X'(-\sigma)=-RX'(\sigma).
$$

$P$ 是 covector；若随意也取 $RP$ 而不同时升降指标，会破坏 pairing。$R^2=1$ 实现 fixed-point reflection，$R^T\eta R=\eta$ 使 $P^2$ even。$P\delta X$ 在两半相同，因此

$$
\Omega_{\rm circle}|_{\mathcal R}=2\Omega_I.
$$

只对 reflection-invariant functionals 且 Hamiltonian vector fields tangent to $\mathcal R$，才有

$$
\{\iota^*F,\iota^*G\}_I=2\{F,G\}_{\rm circle}|_{\mathcal R}.
$$

不是对 arbitrary unprojected parent modes 直接乘二。$\Pi_t=(1+R)/2$、$\Pi_n=(1-R)/2$ 在 fixed points 给 $\Pi_nX=0$。all-even $R=1$ 是一种 independent minimal boundary-state input；null endpoint equation 本身不决定 $R$。

完整 $C_2=P\cdot X'+W_1C_3$ 的 parity 还要求 $W_1$ odd，且

$$
C_2(-\sigma)+C_2(\sigma)
=[W_1(-\sigma)+W_1(\sigma)]C_3(\sigma).
$$

所以 algebra 的 $(C_1,C_2,C_3)$ parities 为 $(+,-,+)$，有 worldsheet 与 target 两类兼容性输入，不能仅凭 target gluing 得到。

## §4.3、A、B.2：half-interval mode algebra 的归一化

parent circle modes 定义

$$
L_n=-i\int e^{-in\sigma}C_2d\sigma,\quad
M_n=\int e^{-in\sigma}C_1d\sigma,\quad
S_n=\int e^{-in\sigma}C_3d\sigma.
$$

$-i$ 只在 $L$ 中，是 Fourier convention；缺掉它会使 derivative bracket 系数错位。projected generators

$$
O_n=\tfrac12(L_n-L_{-n})=-2\int_0^\pi\sin(n\sigma)C_2d\sigma,
$$

$$
P_n=\tfrac12(M_n+M_{-n})=2\int_0^\pi\cos(n\sigma)C_1d\sigma,
\quad A_n=2\int_0^\pi\cos(n\sigma)C_3d\sigma.
$$

在 $W=0$ representative 上，$\delta O_n$ 的 boundary term 为 $-2[\sin(n\sigma)P\delta X]_0^\pi=0$；$P_n,A_n$ 不含 spatial derivatives。smooth reflected domain 同时排除 derivative-jump profiles，保证其 flows 保持全部 reflected jets；只检查一个 endpoint value 不够。

interval bracket 为

$$
[O_n,O_m]=(n-m)O_{n+m}-(n+m)O_{n-m},
$$

$$
[O_n,P_m]=(n-m)P_{n+m}+(n+m)P_{n-m},
$$

$$
[O_n,A_m]=-mA_{n+m}+mA_{n-m},
\quad [P_n,A_m]=-2(P_{n+m}+P_{n-m}),
\quad[P_n,P_m]=[A_n,A_m]=0.
$$

parity relations 是 $O_{-n}=-O_n$、$P_{-n}=P_n$、$A_{-n}=A_n$、$O_0=0$。**Checked:** Sage 从 parent LL、LM、LS、SM brackets 直接投影、乘上正确 interval factor，对 $O_{1\ldots4},P_{0\ldots4},A_{0\ldots4}$ 的 **196 对**全部一致；同一 14 个 basis entries 的 **2,744 个 triples** 按 parity reduction 复算 Jacobi，全部精确零。中间和差 mode 未截断，不把超出测试 grid 的 mode 丢掉。这是 finite bookkeeping audit；全整数证明仍来自 tangent Hamiltonian functionals 的 closed Poisson subalgebra。

$V^a=(1,0),W_a=0$ 固定后，保持该 chart 的 CW parameter 必须 $\chi=0$，因为 $\delta W=-d\chi$、$\delta V^0=-\chi$。故这张 mode table 不是该 fixed chart 的非零 residual CW symmetry algebra。

## §4.4：zero modes 不等于 local pair count

$$
[P_0,A_0]=-4P_0,\quad [P_0,A_m]=-4P_m,\quad
[A_0,P_m]=4P_m,
$$

$$
[O_m,P_0]=2mP_m,\qquad[O_m,A_0]=0.
$$

$-4$ 来自两次 half-projection/interval normalization；Sage 独立重现。even target directions 用 cosine including $x_0,p_0$，odd directions 用 sine only。A 的 pairing

$$
\int_0^\pi\sin(n\sigma)\sin(m\sigma)d\sigma=\frac\pi2\delta_{nm}
$$

配对同一个正 mode number；zero cosine normalization 是 $\pi$。因此 $\{x_n,p_m\}=2\delta_{nm}/\pi$ 对 nonzero modes，zero cosine pair 为 $1/\pi$，除非显式重标度 canonical variables。

circle-average constraints

$$
C_{1,0}=p_{0A}p_0^A+\tfrac12\sum_{n\ge1}p_{n\mu}p_n^\mu=0,
$$

$$
C_{3,0}=p_{0A}x_0^A+\tfrac12\sum_{n\ge1}p_{n\mu}x_n^\mu=0,
\quad C_{2,0}=0,
$$

且 $P_0=2\pi C_{1,0}$、$A_0=2\pi C_{3,0}$。它们把 even zero modes 与 oscillator sums 耦合；不能用 $D-3$ 来宣称 global zero-mode vacuum 已解决。本文未引入 infinite-mode summation regularization 或 quantum normal ordering，不能从 classical finite expressions 推出量子收敛。

## §5、B.1：Legendre chain 与 first-classness

在 $V^0\ne0$，

$$
P_\mu=\kappa V^0V^aD_aX_\mu,\qquad
H_c=\int\left[{P^2\over2\kappa(V^0)^2}
-{V^1\over V^0}P\cdot D_1X-W_0P\cdot X\right]d\sigma.
$$

四条 primary 为 $\Pi_a=Q^a=0$。$Q^0$ stability 给 $C_3$；$Q^1$ 给 $(V^1/V^0)C_3$，可冗余；$\Pi_1$ 给 $C_2/V^0$，即使 $V^1=0$ 仍独立；$\Pi_0$ 再给 $C_1$。**Checked:** Mathematica 对 $H_c$ 的四个 auxiliary derivatives 重现该链。

B.1 使用 interior compact support，保留所有 $W_1$：

$$
\{C_1[f],C_2[g]\}=C_1[fg'-f'g-2W_1fg],\quad
\{C_1[f],C_3[g]\}=-2C_1[fg],
$$

$$
\{C_2[f],C_2[g]\}=C_2[fg'-f'g],\quad
\{C_2[f],C_3[g]\}=C_3[fg'],
$$

其余两条为零。若比较使用 $D=P\cdot X'$ 的文献 table，必须先用 $D[f]=C_2[f]-C_3[W_1f]$ 换 basis。

**Checked:** Mathematica 对四维任意 component fields 的 smeared densities 作 Euler functional differentiation，六个独立 PB 与表中 RHS 的差的 Euler derivatives（包括 $X,P,W,f,g$）全为零；它证明该 differential-polynomial residual 在 compact support 下只差 total derivatives。它不单独证明 arbitrary nonzero endpoint parameters 的可微性，后者由上面的 sine/cosine boundary terms 另查。

令 $H_c=C_1[\alpha]+C_2[\beta]+C_3[\gamma]$，$\alpha=[2\kappa(V^0)^2]^{-1}$、$\beta=-V^1/V^0$、$\gamma=-W_0$，则 $\dot C_i$ 都是三条 $C$ 的线性组合；例如

$$
\{C_2[f],H_c\}=C_1[f\alpha'-f'\alpha+2W_1f\alpha]
+C_2[f\beta'-f'\beta]+C_3[f\gamma'].
$$

连同 $\{Q^1[u],C_2[f]\}=-C_3[uf]$，七条约束 weakly first class，没有独立 tertiary。$P=0$ 等 rank-deficient loci 不在 generic count 中。

## §5.1：complete CW generator 与 boundary-domain preservation

$$
G[\chi]=\int_0^\pi\left[\chi C_3-\chi\Pi_aV^a-(\partial_a\chi)Q^a\right]d\sigma.
$$

这里时间 derivative 是给定 gauge parameter 的 derivative。functional variation 不对 canonical fields 作 spatial integration by parts，所以无新增 boundary term。它生成 $\delta X=\chi X,\delta P=-\chi P,\delta V=-\chi V,\delta W=-d\chi$。对完整 $C_2$，$C_3$ term 产生的 $\chi'$ 项与 $Q^1$ improvement 抵消，不能只拿 $C_3$ 去判断 auxiliary-field covariance。

$\chi=c_0+c_1\cos\sigma$ 显示两个 endpoint values 可独立非零；minimal origin/characteristic branches 上无需额外 boundary charge。这里“无需”限于已定义的 unreduced phase space，不包括 displaced coupled sector。

$$
\delta H_c|_\partial=[\beta P\cdot\delta X]_0^\pi=0,
$$

$$
\dot X=2\alpha P^\sharp+\beta X'+(\beta W_1+\gamma)X,
\quad \dot P=(\beta P)'-(\beta W_1+\gamma)P.
$$

$\alpha,\beta W_1+\gamma$ even、$\beta$ odd，因此流保持 target parity 与 smooth reflected domain。$W=0$ 的局部实现还使用 primary sector 的 connection shift：$\delta W_1=\varepsilon$、$\delta W_0=-(V^1/V^0)\varepsilon$，其 odd $\varepsilon$ 保持 parity。先在 time-adapted $V^1=0$ 用 $\partial_\tau\chi=W_0$ 移除 $W_0$，再移除 $W_1$，无需声称 connection curvature 为零。

因此 rank-three regular embedding sector 留下 $D-3$ canonical pairs。四个 auxiliary pairs 被相应 primary/gauge directions 处理；该数不计 global zero modes。特别是 $P^2=0,PX=0$ 不推出 $X^2=0$。

## §5.2：一个明确的 regular local pair

四维 mixed reflection $R=\mathrm{diag}(1,1,1,-1)$，设 $\rho>0$、$0<a<\pi/2$，

$$
\theta_*=a\cos\sigma,\quad
\mathbf n=(\cos\varphi\cos\theta_*,\cos\varphi\sin\theta_*,\sin\varphi),
\quad\mathbf b=\mathbf n\times\mathbf n',
$$

$$
P_\mu=\rho(-1,\mathbf n),\quad X_0^\mu=(0,r\mathbf b),\quad
X=X_0+\tau P^\sharp/\kappa.
$$

$r$ smooth even、$\varphi$ smooth odd、$|\varphi|<\pi/2$。$\mathbf n\cdot\mathbf b=\mathbf n\cdot\mathbf b'=0$ 保证三条约束，且

$$
|\mathbf n'|^2=(\theta_*')^2\cos^2\varphi+(\varphi')^2>0
$$

在 interior 成立。$P,P'$ 独立使 $d(C_1[f]+C_2[g]+C_3[h])=0$ 先给 $g=h=0$，再给 $f=0$，证明 rank-three。

local slice 固定 $X^0=0,P_0=-\rho,\theta(P)=\theta_*$，同时固定 endpoint angles 并要求 endpoint quadratic extrema nondegenerate；这不是任意 nearby profiles 的 global gauge choice。canonical pullback

$$
\Theta_{\rm red}=-\int\rho r\,\mathbf b\cdot\delta\mathbf n
=\int p_\varphi\delta\varphi,
\qquad p_\varphi=-\rho r\theta_*'\cos\varphi,
$$

$$
\Omega_{\rm red}=\int\delta p_\varphi\wedge\delta\varphi,
\quad p_\varphi/\sin\sigma=\rho ar\cos\varphi
$$

为 smooth even。**Checked:** Mathematica 独立计算 $\mathbf n^2=1$、$\mathbf n\mathbf b=\mathbf n\mathbf b'=0$、$\mathbf b\cdot\partial_\varphi\mathbf n=\theta_*'\cos\varphi$，各 residual 为零。有限 reparametrization 的 global existence 和 supplementary right-inverse estimates 未复验。

## §5.3：boost 解、非零 observable 与非退化 pullback

另取固定 $\rho,\kappa>0$、固定 $q_1$，让 $q_0>|q_1|>0$、rapidity $\zeta$ 变化：

$$
q=q_0+q_1\cos\sigma,\quad
P_\mu=\rho(-\cosh\zeta,\sinh\zeta,\cos\sigma,\sin\sigma),
$$

$$
X_0=q(\sinh\zeta,\cosh\zeta,0,0),\qquad
X=X_0+\tau P^\sharp/\kappa.
$$

**Checked:** arbitrary $\tau$ 下 $P^2=PX=PX'=0$、$X^2=q^2>0$、$(P')^2=\rho^2$、reflection parity 均由 Mathematica 精确重现。该解明确否定把 CW count 解释为 $X^2=0$ target hypersurface 的说法。

$$
J^{01}=\int_0^\pi(X^0P^1-X^1P^0)d\sigma=-\pi\rho q_0\ne0,
$$

$$
\Theta_{\mathcal S}=J^{01}d\zeta,\qquad
\Omega_{\mathcal S}=dJ^{01}\wedge d\zeta=-\pi\rho\,dq_0\wedge d\zeta,
\qquad\{\zeta,J^{01}\}_{\mathcal S}=1.
$$

Mathematica 直接对 $P\cdot dX$ 积分得到 coefficients $(0,-\pi\rho q_0)$，two-form coefficient $-\pi\rho$ 非零。一般 Hamiltonian flow 下又独立得到

$$
\dot j^{\mu\nu}=(\beta j^{\mu\nu})',\qquad
\dot J^{\mu\nu}=[\beta j^{\mu\nu}]_0^\pi=0.
$$

守恒依赖 reflected endpoint 的 $\beta=0$。$P^1/P^0|_\partial=\tanh\zeta$ 对允许 embedding gauge directions 不变，解释 rapidity 为什么不是已被约束除掉的纯 gauge parameter。此二维 symplectic pullback 只证明一族物理解的非退化方向，不是全 reduced space 的 global Darboux chart，也没有增加 $D-3$ 以外的 local field pair。

## B.3：受限 central-extension 结论

原文只分类 **parity-compatible local diagonal-contact** ansatz，支持在正 mode labels 的 $n=m$，并固定 zero-mode actions。negative labels 必须先按 parity 化简；没有独立 negative-mode central coefficients。

OO、PP、AA 的 diagonal term 因 antisymmetry 消失。$(O_n,P_n,A_0)$ Jacobi 给 $-4C_{OP}(n)=0$；$(A_0,P_n,A_n)$ 给 $-4C_{PA}(n)=0$。剩余 $b_n=C_{OA}(n)$ 满足

$$
b_2=2b_1,\qquad b_{n+1}=(2n+1)b_1-b_n,
$$

故 $b_n=nb_1$。取 linear functional $\Phi(A_0)=b_1$，其余零，就有 $\Phi([O_n,A_m])=nb_1\delta_{nm}$，是 coboundary。这个 recurrence 和 coboundary 是源文的 analytic reduction，finite centreless Jacobi grid 不认证一个更大的 cohomology classification。

该结论不排除 nonlocal cocycles、修改 zero-mode module 的 extension、quantum normal-ordering anomaly 或 BRST obstruction。不能将之缩写成“边界不存在中心荷”。

## Equation ledger 与 regional CPS 的翻译

| 对象 | 构造链 | 当前用途与限制 |
|---|---|---|
| endpoint flux | action → weighted IBP → $n\cdot V\,Y\delta X$ | 判断 endpoint polarization 前先保留 normal factor |
| reflected domain | $R$+$W,V,\chi$ parities+smooth jets → differentiable generators | 是 gluing 的完整 phase-space domain，不是仅一个 endpoint equation |
| interval algebra | $\Omega_{circle}=2\Omega_I$ → invariant projection → O–P–A | factor、zero modes 和 parameter domain 一起搬运 |
| first-class count | Legendre chain → full $W_1$ bracket table → rank-three surface | $D-3$ 只在 regular sector |
| physical observable | explicit solution → $J^{01}$ → nondegenerate pullback | 有一个受控 finite-dimensional testbed，不是 global quotient |
| displaced edge | extended one-form → cotangent lift → $\pi+2\overline P$ | 另需 $T\approx0$ 与 local-parameter compatibility |

对当前 regional sewing 最有价值的是：先规定两侧 canonical pairing 的归一化，再比较 projected algebra；边界可微性与 bulk first-classness 分开证明；edge coordinate 的提升可以是 canonical，却仍不保持原 constraint surface。这三个结构能直接用作 gauge-theory boundary constructions 的反例测试模板。

## Verification log

**Verified:** Mathematica CW covariance、weighted IBP、四条 primary stability、六项 smeared constraint bracket 的 compact-support variational residual、regular-chart vector identities、arbitrary-time boost constraints/reflection/norms、charge density、symplectic pullback、general Lorentz-current balance、finite affine symplectic matrix/involution 和 continuum one-form cancellation。Sage 196 projection pairs、2,744 Jacobi triples、zero-mode normalization 全部精确通过。

**Assumptions:** flat Minkowski target；$V^0\ne0$ canonical chart；constant admissible $R$；smooth reflected domain 与相容 parities；interior compact support 用于 bulk table，mode differentiability 另由 sine endpoint cancellation；$\rho,\kappa>0$、$q_0>|q_1|>0$ 用于 physical sector；$0<a<\pi/2$ 与 fixed endpoint angles 用于 local slice。

**Failed:** 所执行的独立检查未发现 source contradiction。这个陈述不等于 full global/quantum acceptance。

**Blocked / Not independently verified:** complete coupled compensated constraint algebra、两个独立 displaced centers 的 global gluing、endpoint-exchanging fold、rank-deficient $P=0$ strata、global quotient、supplementary gauge-slice/right-inverse estimates、nonlocal central cohomology 与 quantum BRST/normal ordering。缺的是这些问题在本文中的完成构造或本次的独立证明，不是把 finite checks 当成它们的证明。无未解决的检索或计算服务故障。

回到 [[2026_10_28_overview]]。
