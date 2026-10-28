---
paper id: 2610.37302v1
title: "On the geometric origin of central charges in gravity"
authors:
  - Lorenzo Di Giacomo
  - Daniele Pranzetti
publication date: 2026-10-27
abstract: |-
  Central extensions of asymptotic symmetry algebras are traditionally determined through an explicit computation of the algebra of conserved charges. We show that, within an ambiguity-free covariant phase space formalism based on the Noetherian split, they instead arise as intrinsic quantities completely determined by the Lagrangian through the geometry of the associated covariant phase space. We prove two general Charge Representation Theorems describing the canonical realization of diffeomorphism symmetries in the presence of field-dependent vector fields and Lagrangian anomalies, corresponding respectively to vanishing and integrable Noetherian flux. In both cases, we derive explicit expressions for the associated central extensions and establish the corresponding cocycle identities. This provides a constructive algorithm for determining central charges directly from the Lagrangian formulation of the theory, without requiring an explicit computation of the charge algebra. As a non-trivial application, we consider asymptotically locally AdS$_3$ spacetimes with Penrose--Brown--Henneaux boundary conditions. We recover the corresponding centrally extended asymptotic symmetry algebra, providing an explicit realization of the Charge Representation Theorems.
comments: "29 pages + appendices"
url: https://arxiv.org/abs/2610.37302v1
summary: "Noetherian flux 给出 H=Q-P 与 PBH 中心 cocycle；记录 boundary-shift 常数障碍、Weyl 零模与几何公式的核对边界。"
tags: []
---

# 结果与可借用范围

这篇的可复用对象是 **Noetherian split 下从可积 flux 得到 Hamiltonian generator，再得到中心 cocycle 的公式链**。在固定边界条件、固定 homotopy prescription、固定 anomaly primitive、固定对称参数空间及 charge 常数之后，正文给出

$$
-I_\xi\Omega=\delta Q_\xi-\mathcal F_\xi,
\qquad \mathcal F_\xi=\delta P_\xi,
\qquad H_\xi=Q_\xi-P_\xi,
$$

$$
\{H_\xi,H_\zeta\}_L=-H_{\llbracket\xi,\zeta\rrbracket}
-\alpha^L_{(\xi,\zeta)},\qquad
\alpha^L_{(\xi,\zeta)}=K^L_{(\xi,\zeta)}
+\delta_\xi P_\zeta-\delta_\zeta P_\xi
+P_{\llbracket\xi,\zeta\rrbracket}.
$$

**不能直接借用“只要 shift 保持可积性，中心项就严格不变”的无条件表述。** Eq. (50) 到 (52) 的代数推论漏掉场空间常数；下文给出满足其可积条件而不满足 (52) 的精确二维例子。另外，Appendix B 去掉 logarithmic corner 项需要排除线性时间 Weyl 零模；仅有 $\Box\sigma=0$ 不够。Eq. (105) 的法向量次领先系数和 Eq. (109) 的 Komar antisymmetrization 也有明确问题。以下重建保留这些边界，不用有问题的步骤证明后续一般性结论。

## Source map 与长文阅读路径

官方 PDF 共 **46 页**；comments 是“29 pages + appendices”。全文、Appendix A–F 均已读，PDF 文本用于导航，TeX 用于公式和推导，关键 PDF 页 14、23、24、31、32 已渲染确认。

| 章节 / PDF 页 | 目的、定义与后续依赖 |
|---|---|
| §1，pp. 2–6 | 问题、相关 CPS 方案和符号；固定 $8\pi G=1$、$(-++)$、体积形式与 corner 定向 |
| §2.1，pp. 6–8 | field-dependent bracket、anomaly、$q_\xi,\mathcal F_\xi$，是两个表示定理的输入 |
| §2.2，pp. 8–12 | flux 为零时的表示、$K^L$、closedness 与 cocycle；以及保持零 flux 的 shift |
| §2.3，pp. 12–17 | $\mathcal F=\delta P$、$H=Q-P$、$\alpha$；一般 shift 的常数障碍须另查；末尾区分非可积 BT bracket |
| §3 开头，pp. 17–20 | FG expansion、Einstein constraints、残余 PBH vector 的 $r^{-2},r^{-4}$ 项 |
| §3.1，pp. 20–21 | $\delta q^{(0)},\delta C^{(2)},\delta C^{(4)}$；CKV 条件与 Weyl 参数 |
| §3.2，pp. 21–23 | EH+GHY+counterterm、混合边界条件，推出 $\Box\varphi=0$；法向量需重算 |
| §3.3，pp. 24–25 | finite $Q$、积分 flux $P$ 和 $H$；调用 B、C 的 cancellation |
| §3.4，pp. 25–27 | direct charge variation 得 $\alpha$，再从 Lagrangian cocycle 重现；BH 子空间 |
| §4，pp. 27–29 | 结论与推广愿景，不作为额外证明 |
| A，p. 29 | 修正 bracket 的 $r^{-2}$ closure，使用 CKV 与 $\delta\varphi=-\omega$ |
| B，pp. 30–32 | harmonic transport identity、Komar 部分、anomaly primitive、有限 charge；零模 caveat |
| C，pp. 33–36 | $\theta$ 三分量、symplectic anomaly、$q_{\delta\xi}+A_\xi$、divergence cancellation 与可积性 |
| D，pp. 36–38 | $\delta_2Q_1$、$\delta_2P_1$ 的 integration by parts，得到 Hamiltonian bracket |
| E，pp. 38–40 | $dc_{(\xi,\zeta)}$ 的 primitive；取消 anomaly 项，留下 Weyl Wronskian |
| F，pp. 41–42 | FG Christoffels 的渐近表；是 B、C 的几何输入，未逐项全部认证 |
| References，pp. 42–46 | 外部同调、homotopy 和 CPS identity 的来源 |

**How to read this long paper:** 核心读 §2.1–2.3 → §3.2–3.4；技术参考按 A→B→C→D→E→F 回查。§1 是背景。不能为了先看最终中心项而跳过 $\Box\varphi=0$、parameter fixing 和 corner primitive 的选择。

## 全局符号与约定

| 符号 | 定义与需保留的数据 |
|---|---|
| $d,\iota_\xi,\mathcal L_\xi$ | spacetime exterior calculus |
| $\delta,I_\xi,\delta_\xi$ | field-space differential、contraction、Lie derivative；$\delta_\xi=\delta I_\xi+I_\xi\delta$ |
| $\Delta_\xi$ | $\delta_\xi-\mathcal L_\xi-I_{\delta\xi}$；并非“$L$ on shell 非零”的同义词 |
| $a_\xi,A_\xi$ | Lagrangian 与 symplectic anomaly；primitive 和 closed 部分的 normalization 是额外要追踪的数据 |
| $S_R$ | $t$ 固定、$r=R$ 的圆；$\phi\sim\phi+2\pi$，先在有限 $R$ 整理，后 $R\to\infty$ |
| $\varphi,\omega_\xi,\sigma_\xi$ | boundary conformal factor，$\omega_\xi=-\delta_\xi\varphi$，$\xi^r=r\sigma_\xi$ |
| $V^a_\xi$ | 边界 CKV，$x^\pm=t/\ell\pm\phi$ 中为 chiral vectors |
| $C^{(2)},C^{(4)}$ | FG response data 和二次后继项；不是任意独立张量 |
| $Q,P,H$ | 分别 Noether charge、integrable flux primitive、Hamiltonian charge；$P$ 不等于实际 radiation energy flux |

体积定向是 $\epsilon=\sqrt{-g}\,dt\wedge dr\wedge d\phi$。原文 $n_\mu dx^\mu$ 时间分量为正，因此对应的 $n^t<0$；不能悄悄换成 future-pointing normal。$\epsilon=n\wedge\tilde\epsilon=-s\wedge\bar\epsilon$。本文的 bracket 带 anti-representation 符号：

$$
\llbracket\xi,\zeta\rrbracket=[\xi,\zeta]_{\rm Lie}
+\delta_\zeta\xi-\delta_\xi\zeta,
\qquad [\delta_\xi,\delta_\zeta]=-\delta_{\llbracket\xi,\zeta\rrbracket}.
$$

## §2.1：从 Lagrangian 到 Noetherian split

**Source-derived.** 取指定 homotopy 输出的 $\theta^L$，原文采用

$$
\delta L=d\theta-E,\qquad \Omega=\delta\int_\Sigma\theta,
\qquad \Delta_\xi L=da_\xi,
$$

$$
\Delta_\xi\theta=\delta a_\xi-a_{\delta\xi}+dA_\xi,
\qquad dq_\xi\hat=I_\xi\theta-\iota_\xi L-a_\xi.
$$

所以完整 flux 为

$$
Q_\xi\hat=\int_Sq_\xi,\qquad
\mathcal F_\xi\hat=\int_S(\iota_\xi\theta+q_{\delta\xi}+A_\xi),
\qquad -I_\xi\Omega\hat=\delta Q_\xi-\mathcal F_\xi.
$$

只取 $\int\iota_\xi\theta$ 会遗漏参数依赖和 anomaly；这是本文算法最值得带回当前 CPS 计算的部分。原文调用外部 homotopy 构造，本文没有给出任意高导数 L 的完整实现，因此“unique”应理解为固定 prescription 后的选择，不能理解为摆脱 boundary polarization、topology 和 charge 常数的唯一性。

$L'=L+d\ell_{\rm bdy}$ 时

$$
\theta'=\theta+\delta\ell_{\rm bdy}-d\vartheta,
$$

$$
Q'_\xi=Q_\xi+\int_S(\iota_\xi\ell_{\rm bdy}-I_\xi\vartheta),
\quad
\mathcal F'_\xi=\mathcal F_\xi+
\int_S(\delta\iota_\xi\ell_{\rm bdy}-\delta_\xi\vartheta).
$$

因此 $\Omega'=\Omega-\delta\int_S\vartheta$ 一般不同。不能只说“bulk EOM 相同”就断言所有中心项不变。

## §2.2：零 flux 表示定理的依赖链

$\mathcal F_\xi=0$ 时 $-I_\xi\Omega=\delta Q_\xi$。在本文约定

$$
\{Q_\xi,Q_\zeta\}_L=-I_\xi I_\zeta\Omega=\delta_\xi Q_\zeta.
$$

原文使用一个通用 CPS identity

$$
-I_\xi I_\zeta\Omega
=\delta_\xi Q_\zeta-\delta_\zeta Q_\xi
+Q_{\llbracket\xi,\zeta\rrbracket}+K^L_{(\xi,\zeta)},
$$

其中

$$
K^L_{(\xi,\zeta)}=\int_S\left[
\iota_\xi\iota_\zeta L+\iota_\xi a_\zeta-\iota_\zeta a_\xi
+c_{(\xi,\zeta)}\right],
$$

$$
dc_{(\xi,\zeta)}=\Delta_\xi a_\zeta-\Delta_\zeta a_\xi
+a_{\llbracket\xi,\zeta\rrbracket}.
$$

存在 global primitive 需要相应 de Rham/topological 条件；原文以 $H_{d-1}(\mathcal M)=0$ 表述充分背景，不能推广到任意带 nontrivial cycles 的区域。由 canonical relation 消掉两项可得 $\{Q_\xi,Q_\zeta\}=-Q_{\llbracket\xi,\zeta\rrbracket}-K^L$。

中心性的证明是 moment-map defect 的标准步骤：使用 $[\delta_\xi,I_\zeta]=-I_{\llbracket\xi,\zeta\rrbracket}$、$\delta\Omega=0$ 和 Hamiltonian condition，得到 $\delta K^L=0$。再把 $I_\xi I_\zeta I_\eta\delta\Omega=0$ 展开，charge 部分经 Jacobi 取消，留下

$$
\delta_\xi K^L_{(\zeta,\eta)}+
K^L_{(\llbracket\xi,\zeta\rrbracket,\eta)}+\mathrm{cycl.}=0.
$$

这是在允许对称作用确为 Hamiltonian、参数 bracket 与 field-space contraction 相容的空间上的结论；有 kernels 时还须处理 presymplectic quotient。原文没有证明任意 boundary data 都满足这些先决条件。

## §2.3：积分 flux 的 primitive 与 shift 常数障碍

$\mathcal F_\xi=\delta P_\xi$ 后，$H=Q-P$ 的表示公式见开头。$P$ 可加 field-space 常数线性泛函，$H$ 的常数归一化会相应改变中心 cocycle 的 coboundary representative。因此即使 cohomology class 固定，“表达式严格唯一”还需 reference charge normalization。

原文进一步设

$$
I_\xi\delta\vartheta=\delta\upsilon_\xi,
\qquad H'_\xi=H_\xi+\int_S\upsilon_\xi,
$$

并在 (52)、(57) 主张

$$
\upsilon_{\llbracket\xi,\zeta\rrbracket}
=-I_\xi I_\zeta\delta\vartheta.
$$

**Failed — 仅从可积条件推出此等式不成立。** 在一个 corner 的有限维 factor 上取

$$
\vartheta=q\,\delta p,\quad
\delta\vartheta=\delta q\wedge\delta p,\quad
X=\partial_q,\quad Y=\partial_p,
\quad \upsilon_X=p,\quad\upsilon_Y=-q.
$$

两条 $I_X\delta\vartheta=\delta p=\delta\upsilon_X$、$I_Y\delta\vartheta=-\delta q=\delta\upsilon_Y$ 都成立，$[X,Y]=0$，但

$$
\upsilon_0=0,\qquad -I_XI_Y\delta\vartheta=1.
$$

Mathematica 以 $\omega_{ij}=\left(\begin{smallmatrix}0&1\\-1&0\end{smallmatrix}\right)$ 复算，两条 integrability residual 为零，(52) residual 为 $-1$。问题发生在 (54) 积分得到 (55) 时，没有保留场空间常数。一般应允许一个 central defect；只有额外 equivariance/constant normalization 条件使其为零，才有 (59) 的严格 shift invariance。本反例否定所写的代数引理，不声称已构造出满足全文所有 gravitational homotopy 限制的 boundary Lagrangian 反例。实际 EH→GHY 的特殊 shift 若 $\vartheta=0$，这个障碍确实消失，不能据此反证那个特殊应用。

§2 末尾另讨论 $\mathcal F$ 非可积时的 BT bracket

$$
\{Q_\xi,Q_\zeta\}_{BT}=\delta_\xi Q_\zeta-I_\zeta\mathcal F_\xi.
$$

此时原文明确承认一般 Jacobi 还需额外假设；两个 Hamiltonian 表示定理不能自动扩展成任意 radiative phase space 的 Poisson algebra。

## §3 与 A：FG 数据、残余向量及 Weyl 条件

取 $r=R$ 为 cutoff，

$$
ds^2={\ell^2\over r^2}dr^2+{r^2\over\ell^2}q_{ab}(r,x)dx^a dx^b,
\quad q^{(0)}_{ab}=e^{2\varphi}\operatorname{diag}(-1,\ell^2),
$$

$$
q=q^{(0)}+{\ell^2\over r^2}C^{(2)}+{\ell^4\over r^4}C^{(4)},\qquad
C^{(4)}={1\over4}C^{(2)}(q^{(0)})^{-1}C^{(2)}.
$$

Einstein 方程约束

$$
\operatorname{tr}_{q^{(0)}}C^{(2)}=-{\ell^2\over2}R^{(0)},
\quad D^aC^{(2)}_{ab}=-{\ell^2\over2}\partial_bR^{(0)},
$$

$$
R^{(0)}={2\over\ell^2}e^{-2\varphi}
(\ell^2\partial_t^2-\partial_\phi^2)\varphi
=-2\Box_{q^{(0)}}\varphi.
$$

**Checked:** xCoba 对任意 $\varphi(t,\phi)$、$C^{(2)}=0$ 的三维 FG metric 得

$$
R[g]=-{6\over\ell^2}+{2e^{-2\varphi}\over r^2}
(\ell^2\varphi_{tt}-\varphi_{\phi\phi}).
$$

这只检查对应几何 reduction，不把任意 $\varphi$、$C^{(2)}=0$ 当成 Einstein 解。另取 $\varphi=0$、$C^{(2)}=\left(\begin{smallmatrix}a&b\\b&\ell^2a\end{smallmatrix}\right)$，保留精确 $C^{(4)}$，xCoba 得所有九个 $R_{\mu\nu}+2g_{\mu\nu}/\ell^2$ residual 均为零；这是常数 response family 的 exact check，不是任意非均匀 FG 解的独立证明。

保持 FG gauge 给出

$$
\xi^r=r\sigma,\qquad
\xi^a=V^a+{\ell^4\over2r^2}q_{(0)}^{ab}\partial_b\sigma
-{\ell^6\over4r^4}q_{(0)}^{ac}C^{(2)}_{cd}q_{(0)}^{db}\partial_b\sigma+O(r^{-6}).
$$

§3.1 的 leading variations 是

$$
\delta_\xi q^{(0)}_{ab}=\mathcal L_Vq^{(0)}_{ab}+2\sigma q^{(0)}_{ab},
$$

$$
\delta_\xi C^{(2)}_{ab}=\mathcal L_VC^{(2)}_{ab}
+\ell^2D_aD_b\sigma.
$$

这里 $D_aD_b\sigma=\partial_a\partial_b\sigma-2\partial_{(a}\varphi\partial_{b)}\sigma+q^{(0)}_{ab}q_{(0)}^{cd}\partial_c\varphi\partial_d\sigma$。$C^{(4)}$ 的长式由二次关系变分，包含 $\mathcal L_VC^{(4)}-2\sigma C^{(4)}$ 及 $C^{(2)}\partial\sigma$ 项，不是另一个独立 response。

边界 conformal variation 要求

$$
\partial_tV^t=\partial_\phi V^\phi,\quad
\partial_\phi V^t=\ell^2\partial_tV^\phi,\quad
\sigma+\omega=-\tfrac12\partial_aV^a-V^a\partial_a\varphi.
$$

在这个 parameterization 中固定 $V,\sigma$，允许 $\omega$ 随 $\varphi$ 变；不能又把三者都当独立 fixed labels。A 用 $\delta\xi_{(2)}\propto\omega\partial\sigma$ 取消 ordinary bracket 的非闭合项，得到 $V_{12}=[V_1,V_2]$、$\sigma_{12}=V_1\cdot\partial\sigma_2-V_2\cdot\partial\sigma_1$，显式核对至 $r^{-2}$。

## §3.2、B、F：变分原理与几何输入

原文的 regulated action 为

$$
S_R={1\over2}\int_{r\leq R}(R[g]+2/\ell^2)\epsilon
-{1\over2}\int_{\Gamma_R}(2K-2/\ell)\bar\epsilon.
$$

允许 Weyl variation 后，boundary variation 的 leading 项正比 $\delta\varphi(K-2/\ell)$。施加 $K-2/\ell=o(R^{-2})$，FG trace constraint 推出

$$
R^{(0)}=0,\quad \Box\varphi=0,\quad
\Box\delta\varphi=0,\quad \Box\omega=0,\quad\Box\sigma=0,
\quad D^aC^{(2)}_{ab}=0.
$$

$\Box$ 是当前 conformal boundary metric 的 Laplacian；在二维 harmonic equation 与 flat wave equation 等价，但变分时仍有 $\delta\Box$ 项。B 的 transport identity

$$
\partial_t(V^a\partial_a f)=
\partial_\phi\left(V^\phi\partial_tf+\ell^{-2}V^t\partial_\phi f\right)
$$

对 harmonic $f$ 及 CKV 成立。**Checked:** Mathematica 对任意四个 chiral functions $f_\pm,V_\pm$ 展开后 residual 为零；这提供积分分部的实际输入。

**Failed — Eq. (105) normal vector.** 在上述 exact constant-response family 中直接由 $n_\mu=(1/\sqrt{-g^{tt}},0,0)$ 升指标得到

$$
n^t=-{\ell\over r}-{a\ell^3\over2r^3}+O(r^{-5}),
\qquad n^\phi={b\ell\over r^3}+O(r^{-5}).
$$

原文分别写成 $-\ell/r-a\ell^3/r^3$ 和 $b\ell/(2r^3)$；这不是换定向能消掉的差异。其 $n_t$ 展开与上式相容，问题在已打印的 raised components。后续 charge 应由 covariant metric 重新算，不能逐字代入 (105)。F 的 Christoffel 表提供 $\Gamma^r_{ab},\Gamma^a_{rb},\Gamma^a_{bc}$ 到所需阶数，本次没有逐项认证全表。

**Failed — Eq. (109).** 渲染页确认括号写成相同的两项相减，字面为零；B 的 Eq. (145) 则正确写成 $\nabla^\sigma\xi^\mu-\nabla^\mu\xi^\sigma$。重建使用后者；不是 PDF extraction 的误差。

## §3.3、B、C：有限荷、flux 及不可省略的 cutoff 项

EH potential 是

$$
\theta^\mu={1\over2}\left(g^{\mu\nu}\nabla^\rho\delta g_{\nu\rho}
-g^{\nu\rho}\nabla^\mu\delta g_{\nu\rho}\right).
$$

C 给出

$$
\theta^t={\ell^2e^{-2\varphi}\over r^2}\delta\dot\varphi+O(r^{-4}),\quad
\theta^r=-{2r\over\ell^2}\delta\varphi+
{e^{-2\varphi}\over2r\ell^2}\delta D_C+O(r^{-3}),
$$

$$
\theta^\phi=-{e^{-2\varphi}\over r^2}\delta\partial_\phi\varphi+O(r^{-4}),
\qquad D_C=C^{(2)}_{\phi\phi}-\ell^2C^{(2)}_{tt}.
$$

在 $D_C=0$ 的约束空间，leading spacetime form 可写为 $\theta=\delta\eta+O(r^{-2})$，

$$
\eta={r^2\over\ell^2}e^{2\varphi}dt\wedge d\phi
+{\ell^2\over r}\dot\varphi\,dr\wedge d\phi
+{1\over r}\partial_\phi\varphi\,dr\wedge dt.
$$

原文选择 (107)/(148) 的 primitive

$$
a_\xi={2r^2\over\ell^2}e^{2\varphi}\delta_\xi\varphi\,dt\wedge d\phi
+{2\over\ell^2}\xi^\mu\epsilon_\mu+O(r^{-2}).
$$

**Source-derived with a convention boundary:** 对 covariant EH top form，在 $\delta_\xi g=\mathcal L_\xi g$ 下 $\Delta_\xi L_{\rm EH}=0$ 是 naturality；$L$ on shell 非零本身不产生 noncovariance。故这里使用的非零 $a_\xi$ 包含 closed-primitive choice。其适用性需连同本文 asymptotic/on-shell homotopy choice 一起带走，不能从 $da_\xi=\Delta_\xi L$ 唯一推出来。本次未把这个 closed choice 归类为一个已证明错误的引力结果。

B 中 Komar 项的 $R^2\int e^{2\varphi}V^t/\ell^2$ 被 primitive cancellation 抵消后，Eq. (152) 仍有

$$
Q_\xi(R)=\frac1{2\ell^2}\int d\phi\,
\left(2\ell^2 V^\phi C^{(2)}_{t\phi}+\ell^2V^tC^{(2)}_{tt}
+V^tC^{(2)}_{\phi\phi}+\ell^4\dot\sigma\right)
+\ell^2\log(R/r_0)\int d\phi\,\dot\sigma+o(1).
$$

这里补写固定 reference scale $r_0$ 以明确 logarithm 的定义，不把它消掉。只有再要求 $\int\dot\sigma\,d\phi=0$，加上 $D_C=0$，才得到正文

$$
Q_\xi=\int_0^{2\pi}V^aC^{(2)}_{ta}\,d\phi.
$$

**Failed — harmonicity alone removes zero-mode claim.** $\sigma=t$ 是 cylinder 上 smooth、spatially periodic 的 harmonic function，但 $\int\dot\sigma\,d\phi=2\pi$。Mathematica 得 wave residual $0$ 与非零 integral $2\pi$。若指定 $\sigma^\pm(x^\pm)$ 各自 periodic 且禁止线性 monodromy，这个额外条件才成立；不能以“general harmonic Fourier expansion”代替它。

C 的 flux cancellation 在有限 $R$ 先写作

$$
\mathcal F^\theta_\xi=
\delta\left[{R^2\over\ell^2}\int e^{2\varphi}V^t\,d\phi+P_\xi\right]
-\frac{\ell^2}{2}\int V^t e^{2\varphi}\delta(\Box\varphi)\,d\phi+o(1),
$$

$$
P_\xi=\ell^2\int(\sigma\dot\varphi-\varphi\dot\sigma)\,d\phi.
$$

$q_{\delta\xi}+A_\xi$ 抵消第一个 $R^2$ 项；$\delta(\Box\varphi)=0$ 删掉 residual，再 $R\to\infty$ 得 $\mathcal F=\delta P$。**Checked:** trace algebra

$$
D_C\delta\varphi-\tfrac12\delta D_C
=-\tfrac{\ell^4}{2}e^{2\varphi}\delta(\Box\varphi)
$$

以及 fixed-$\sigma$ 的 $\delta P$ 均通过 Mathematica。完整 $\Delta_\xi\theta$ 的 arbitrary-jet cancellation 仍按 C 作为 Source-derived，不由两个简单代数 residual 冒充全面 tensor proof。

## §3.4、D、E：直接 charge bracket 与 Lagrangian cocycle 的相遇

D 的积分分部把 $\delta_2Q_1$ 分成 $-[V_2,V_1]^aC^{(2)}_{ta}$、$\varphi\partial_t(V_1\cdot\partial\sigma_2)$、$-(V_1\cdot\partial\sigma_2)\dot\varphi$ 与 $V_1^a\partial_t\partial_a\sigma_2$。$-\delta_2P_1$ 提供同样结构的 $1\leftrightarrow2$，所以 $H$ 的 field-dependent 部分重新组合成 $-H_{\llbracket2,1\rrbracket}$，余下

$$
\alpha_{(2,1)}=\ell^2\int_0^{2\pi}d\phi\,
\left[\sigma_1\dot\sigma_2-V_1^a\partial_t\partial_a\sigma_2-(1\leftrightarrow2)\right].
$$

E 则从 $dc$ 构造 primitive，先取消 $\iota_2a_1-\iota_1a_2$，余下与 $\iota_2\iota_1L$ 合并为

$$
K^L_{(2,1)}=\ell^2\int(\sigma_2\dot\sigma_1-\sigma_1\dot\sigma_2)\,d\phi.
$$

把 D 的 $\delta_2P_1-\delta_1P_2+P_{\llbracket2,1\rrbracket}$ 加上便得到同一个 $\alpha$。这是全文主要交叉校准：一个来自 direct charge variation，一个来自 anomaly/Lagrangian formula；二者仍共享选定的 primitives 和允许参数域。

**Checked — Fourier cocycle 与 BH limit.** 对一条 chirality 取 $V_m=(\ell/2,1/2)e^{imx^+}$、Weyl mode $\sigma_n=e^{inx^+}$，$m,n\in\mathbb Z$。去掉共同 $2\pi\ell$ 因子，$\alpha(L_m,J_n)=-n^2\delta_{m+n,0}$、$\alpha(J_m,J_n)=i(n-m)\delta_{m+n,0}$，$\alpha(L_m,L_n)=0$。Mathematica 以 $p=-m-n$ 验证 LLJ 和 LJJ Jacobi 多项式恒为零；这是这两个 mode sectors 的 exact identity，不是任意 field-dependent symmetry 的证明。

BH 子空间 $\varphi=0$、$\sigma_m=-\tfrac12\partial_aV_m^a=-im e^{imx^+}/2$，$P=0$。Mathematica 直接积分 $K_{(2,1)}$，在 $n=-m$ 得

$$
K_{(2,1)}=i\pi\ell\,m^3.
$$

在 $8\pi G=1$ 下，与 $c=12\pi\ell=3\ell/(2G)$ 的 cubic Virasoro coefficient $c/12$ 一致。$m$ 的线性项属于 vacuum energy/zero-mode shift，本文检查不固定该 coboundary；bracket 的 $i$ 和 overall sign 必须随作者 anti-representation 约定翻译。

## Equation ledger 与面向当前项目的翻译

| 构造 | 输入 → 中间步骤 → 输出 | 使用边界 |
|---|---|---|
| $L\to(Q,\mathcal F)$ | homotopy $\theta$ → $a,A,q_{\delta\xi}$ → canonical split | 保留所有 anomaly 和 closed-primitive choices |
| 零 flux | $-I\Omega=\delta Q$ → moment-map defect → $K$ | Hamiltonian action、global primitive、fixed normalization |
| 可积 flux | $\mathcal F=\delta P$ → $H=Q-P$ → $\alpha=K+\delta_{CE}P$ | 不适用于一般非可积 radiation flux |
| PBH constraint | FG trace + regulated Weyl variation → $\Box\varphi=0$ | 是 boundary equation，不能在变分前无条件设零 |
| finite generator | Komar+$a$ cancellation → $Q$；C 的 flux cancellation → $P$ | $R$ 先保留；排除 $\dot\sigma$ 的空间零模 |
| central charge | D 的 $\delta H$ 与 E 的 $K+P$ → 同一 $\alpha$ | 不能据此声称一般 boundary shift 严格不变 |

带回 regional CPS 时，应先固定 action、boundary condition、corner polarization 与 allowable parameter sections，再判断 $\mathcal F$ 是否 exact。一个仅差 $d\ell_{\rm bdy}$ 的 regional action 可以改变 corner symplectic form；需检查 $\upsilon$ 的 equivariance defect，而不只检查 $\delta\upsilon=I\delta\vartheta$。对 AdS3 当前工作，可直接用 constant $C^{(2)}$ family 作为几何符号和 Brown–Henneaux coefficient 的 regression example；本文没有提供 interacting-scalar response 或 bulk gluing 的量子定理。

## Verification log 与未完成的证明边界

**Verified:** xCoba 任意 conformal FG metric 的 Ricci scalar reduction；constant-response exact Einstein metric 的九个 residual；raised normal 的独立展开。Mathematica harmonic transport identity、fixed-parameter flux primitive、trace remainder、LLJ/LJJ cocycle polynomial、BH cubic coefficient。源文关键页已渲染，区分了真实印刷错误与 extraction warning。

**Assumptions:** $\ell>0,r>0$，$\phi$ 周期 $2\pi$；局部 metric 可逆的 asymptotic sector；固定 $V,\sigma$；$\Box\varphi=\Box\delta\varphi=0$；有限 $R$ 先运算后取极限；finite-charge formula 另要求 $\int\dot\sigma=0$；BH coefficient 的 normalization 如上。

**Failed:** (50) 单独推出 (52)/(57) 的 algebraic inference；仅凭 harmonicity 去掉 (152) 的 time-zero-mode 项；(105) 两个 raised-normal coefficients；(109) 字面 antisymmetrization。前三者分别有精确 countermodel 或直接计算，不用它们认证一般 shift invariance 或完整参数域上的有限 charge。

**Blocked:** 对 arbitrary actual boundary homotopy 的 general shift invariance，缺少证明 central equivariance defect 消失的额外条件；这是 source-input/证明缺口。对包含 $\sigma=t$ 的参数空间，当前 source 没有提供处理 logarithmic zero-mode charge 的 boundary completion。

**Not independently verified:** 一般 Lagrangian 的 homotopy uniqueness、global $c$ primitive 选择、完整 arbitrary-jet symplectic-anomaly cancellation、F 的每一项 Christoffel、PBH nonlinear solution space 上整个 theorem 的重新证明，以及 generic nonintegrable BT Jacobi。一次额外 abstract-xAct naturality 尝试留下未求值 simplification wrapper，未作通过证据；component checks 单独成功。没有未解决的检索或计算服务故障。

检索与计算输入/输出保存在 vault 外的本次临时目录，未增加 PDF attachment。回到 [[2026_10_28_overview]]。
