---
paper id: 2607.01319v1
title: What's the Matter with 3D Gravity?
authors:
  - Robert Bourne
  - Jackson R. Fliss
  - Bob Knighton
publication date: 2026-07-01T00:00
abstract: |-
  The paper revisits minimally coupled scalar matter in three-dimensional AdS gravity. It rewrites the scalar path integral in worldline language, interprets the worldlines as conical defects in the gravitational phase space, and quantizes the resulting cone-surface Teichmuller spaces by geometric quantization. States correspond to Virasoro conformal blocks with subthreshold conformal weight. On thermal AdS3 the partition function is computed by equivariant localization, reproduces the Wilson spool and the known scalar one-loop determinant at leading order, and gives an all-orders perturbative conjecture in Newton's constant.
comments: "30 pages + appendices, 8 figures"
url: https://arxiv.org/abs/2607.01319v1
summary: "This paper gives a Virasoro-TQFT quantization of scalar matter coupled to AdS3 gravity by replacing scalar field quanta with backreacted conical-defect worldlines."
tags: []
---

Back to [[2026_07_03_overview]].

# Why This Is Useful

The transferable point is not just another one-loop determinant in AdS3. The paper gives a canonical phase-space route from scalar matter to a Virasoro-TQFT observable: scalar particles become conical defects, the $n$-particle sector is quantized as a cone-surface Teichmuller space, and the thermal AdS3 answer reorganizes into a Wilson spool. This makes it useful for AdS3 quantization, Wilson-line determinant, and black-hole threshold notes.

# Pure AdS3 Gravity as Virasoro Quantization

The first-order fields are combined into two $\mathrm{PSL}(2,\mathbb R)$ connections,

$$\begin{align}
A_L^a=\frac12\varepsilon^a{}_{bc}\omega^{bc}+\frac1\ell e^a, \qquad A_R^a=\frac12\varepsilon^a{}_{bc}\omega^{bc}-\frac1\ell e^a.
\end{align}$$

The Einstein-Hilbert action becomes the difference of two Chern-Simons actions with

$$\begin{align}
k=\frac{\ell}{16G_N},\qquad c=24k.
\end{align}$$

The gravitational phase space on an initial surface $\Sigma$ is

$$\begin{align}
\mathcal M_g\cong \mathcal T_\Sigma\times\overline{\mathcal T}_\Sigma,
\end{align}$$

with symplectic form

$$\begin{align}
\omega=\frac{k}{4\pi}\omega_{\rm WP} -\frac{k}{4\pi}\overline{\omega}_{\rm WP}.
\end{align}$$

Quantization of one chiral copy uses a prequantum line bundle $\mathscr L=\mathcal L^k$ with

$$\begin{align}
c_1(\mathcal L)=\frac1{4\pi}[\omega_{\rm WP}],
\end{align}$$

and gives holomorphic sections

$$\begin{align}
\mathcal H_L=H^0(\mathcal T_\Sigma,\mathscr L).
\end{align}$$

These sections behave as Virasoro conformal blocks of central charge $c=24k$. Mapping-class invariance imposes crossing symmetry after quantization.

# Scalar Matter as Conical-Defect Worldlines

The matter-coupled path integral begins as

$$\begin{align}
Z_{\rm grav+matter} =\int\mathcal Dg\,\mathcal D\phi\, e^{-S_{\rm EH}[g]-S[\phi,g]}.
\end{align}$$

The scalar determinant is rewritten in worldline form,

$$\begin{align}
\int\mathcal D\phi\,e^{-S[g,\phi]} =\exp\!\left(\int\mathcal Dx\,e^{-S_{\rm worldline}[g,x]}\right),
\end{align}$$

where a worldline $\gamma$ has action

$$\begin{align}
S_{\rm worldline}[g,x]=\frac{\mu}{\ell}\int_\gamma d\tau.
\end{align}$$

The worldline backreaction modifies the traced Einstein equation to

$$\begin{align}
R+\frac6{\ell^2} =-\frac{16\pi G_N\mu}{\ell} \int_\gamma d\tau\,\delta^{(3)}(x(\tau),x).
\end{align}$$

In three dimensions this is a conical singularity with defect angle

$$\begin{align}
\theta=\frac{8\pi G_N\mu}{\ell}.
\end{align}$$

The corresponding chiral conformal weight is

$$\begin{align}
h=k(1-\alpha_\theta^2), \qquad \alpha_\theta=1-\frac{\theta}{2\pi},
\end{align}$$

or equivalently

$$\begin{align}
h=\frac{\mu}{2}-\frac{G_N\mu^2}{\ell}.
\end{align}$$

For fixed particle number $n$, the phase space becomes the moduli space of hyperbolic cone surfaces,

$$\begin{align}
\mathcal M_{{\rm grav},n} =\frac{\mathcal T_{\Sigma,n,\theta} \times\overline{\mathcal T}_{\Sigma,n,\theta}} {\operatorname{Map}(\Sigma,n)}.
\end{align}$$

The Weil-Petersson form on the cone-surface Teichmuller space is

$$\begin{align}
\omega_{{\rm WP},n,\theta} =4\pi\left(\kappa_1-\sum_{i=1}^n\alpha_\theta^2\psi_i\right),
\end{align}$$

and therefore

$$\begin{align}
\omega =\frac{k}{4\pi}\omega_{{\rm WP},n,\theta} -\frac{k}{4\pi}\overline\omega_{{\rm WP},n,\theta}.
\end{align}$$

The corresponding holomorphic sections behave as $n$-point Virasoro conformal blocks,

$$\begin{align}
\Psi =\left\langle \mathcal O_h(x_1)\cdots\mathcal O_h(x_n) \right\rangle_{{\rm CFT},c}.
\end{align}$$

The full matter-coupled Hilbert space is assembled as

$$\begin{align}
\mathcal H_{\rm grav+matter} =\bigoplus_{n=0}^\infty \mathcal H_{{\rm grav},n}, \qquad \mathcal H_{{\rm grav},n} =\mathcal H^0_{{\rm grav},n}/\operatorname{Map}(\Sigma,n).
\end{align}$$

# Fusion, Binding Energy, and the Black-Hole Threshold

When $p$ conical defects collide and the total angle stays below $2\pi$, the result is a sharper conical defect. Its conformal weight is

$$\begin{align}
h(p)=k\left(1-(1-p(1-\alpha_\theta))^2\right) =\frac{p\mu}{2}-\frac{G_Np^2\mu^2}{\ell}.
\end{align}$$

The gravitational binding energy is therefore

$$\begin{align}
\Delta E_p=2h(p)-2ph =-\binom p2\frac{4G_N\mu^2}{\ell}.
\end{align}$$

When the total angle exceeds $2\pi$, the compactification changes: instead of a single sharper cone point, a nodal sphere bubbles off. This is the geometric origin of the later BTZ-threshold discussion. The critical particle number is

$$\begin{align}
n_{\rm critical} =\left\lfloor\frac{2\pi}{\theta}\right\rfloor =\left\lfloor\frac{\ell}{4G_N\mu}\right\rfloor.
\end{align}$$

# Thermal AdS3 Localization and Wilson Spool

For thermal AdS3, the initial surface is the disk $\mathbb D$. The mapping class group of the disk with $n$ identical marked points is the braid group $B_n$. In the full left-right wavefunction, pure braid phases cancel, so the projection reduces to a permutation sum over $S_n$:

$$\begin{align}
Z(\tau,\bar\tau) =\sum_{n=0}^\infty\frac1{n!}
\sum_{\rho\in S_n} \left| \operatorname{Tr}_{H^0(\mathcal T_{\mathbb D,n,\theta},\mathscr L)} (\rho q^{L_0}) \right|^2.
\end{align}$$

In the perturbative sector $n\theta<2\pi$, $\rho q^{L_0}$ has a single fixed point: all defects sit at the disk origin and the boundary mode is round. The Atiyah-Bott fixed-point theorem gives

$$\begin{align}
\chi(gq^{L_0},\mathscr L) =\frac{\operatorname{Tr}(gq^{L_0}|\mathscr L_*)} {\det(1-gq^{L_0}|T_*\mathcal T_{\mathbb D,n,\theta})}.
\end{align}$$

The fiber transforms as

$$\begin{align}
\operatorname{Tr}(\rho q^{L_0}|\mathscr L_*) =q^{h(n)-c/24}.
\end{align}$$

The tangent determinant splits into Virasoro boundary modes and defect-separation modes. If the permutation cycle type has $\ell_r$ cycles of length $r$, the defect modes contribute

$$\begin{align}
\prod_{r=1}^n\frac1{(1-q^r)^{\ell_r}}.
\end{align}$$

The perturbative partition function is

$$\begin{align}
Z_{\rm pert} =|q|^{-c/12}
\prod_{m=2}^\infty\frac1{|1-q^m|^2}
\sum_{n=0}^{\lfloor\ell/(4G_N\mu)\rfloor}
|q|^{2h(n)} \prod_{r=1}^n \sum_{\{\ell_1,\ldots,\ell_n\}} \frac1{\ell_r!r^{\ell_r}} \frac1{|1-q^r|^{2\ell_r}}.
\end{align}$$

The cycle decomposition is the canonical origin of the Wilson spool:

$$\begin{align}
Z(\tau,\bar\tau)=\langle\exp\mathbb W\rangle_{\rm grav}, \qquad \mathbb W=\sum_{k=1}^\infty\frac1k\mathcal W^{(k)}.
\end{align}$$

Here $\mathcal W^{(k)}$ is the connected Wilson line winding the thermal cycle $k$ times.

# One-Loop Determinant and Higher Loops

At leading order in $G_N$, one replaces

$$\begin{align}
2h(n)\to n\mu.
\end{align}$$

The sum over partitions then gives

$$\begin{align}
Z_{\rm pert} =Z_{\rm grav,1-loop}Z_{\rm scalar,1-loop} \left(1+O(G_N\ell^{-1}\mu^2)\right),
\end{align}$$

where

$$\begin{align}
Z_{\rm grav,1-loop} =|q|^{-c/12}\prod_{m=2}^\infty\frac1{|1-q^m|^2},
\end{align}$$

and

$$\begin{align}
Z_{\rm scalar,1-loop} =\prod_{l,\bar l=0}^\infty \frac1{1-q^{\mu/2+l}\bar q^{\mu/2+\bar l}}.
\end{align}$$

The scalar mass is matched by

$$\begin{align}
\mu=1+\sqrt{m^2\ell^2+1}.
\end{align}$$

For $q=\bar q=e^{-\beta/\ell}$, the all-order perturbative expansion is generated by mass derivatives:

$$\begin{align}
Z_{\rm pert}(\beta) =\sum_{s=0}^\infty \frac1{s!} \left(\frac{2\mu^2G_N}{\beta}\right)^s \frac{\partial^{2s}}{\partial\mu^{2s}} Z_{\rm 1-loop}(\mu).
\end{align}$$

Equivalently,

$$\begin{align}
\partial_{G_N}\left(\frac{Z_{\rm pert}}{Z_{\rm grav,1-loop}}\right) =\frac{2\mu^2}{\beta} \partial_\mu^2 \left(\frac{Z_{\rm pert}}{Z_{\rm grav,1-loop}}\right).
\end{align}$$

Solving this heat-equation form gives a Gaussian smearing of the one-loop determinant. The first real pole at $\bar\mu=0$ produces a residue proportional to

$$\begin{align}
e^{-\beta/(8G_N)}=|q|^{c/12},
\end{align}$$

which the authors interpret as the first nonperturbative signal at the BTZ threshold.

# Transfer to Local AdS3 Notes

- The formula

$$\begin{align}
h(n)=\frac{n\mu}{2}-\frac{G_Nn^2\mu^2}{\ell}
\end{align}$$

is a compact datum for matter backreaction, multiparticle binding, and threshold behavior.

- The determinant expansion is not just a product formula. It is organized by permutation cycles, which map directly to multiply wound Wilson lines:

$$\begin{align}
\prod_r(\mathcal W^{(r)})^{\ell_r}.
\end{align}$$

- The construction explains why the scalar determinant can live inside a Virasoro TQFT despite scalar matter being local: at fixed particle number, one quantizes a finite-dimensional conical-defect gravitational phase space.

- The failure above the threshold is also useful. The authors find an infinite degeneracy in the naive above-threshold sector, suggesting that gravity plus a free scalar is not UV-complete without additional data or a topology/nonperturbative completion.

# Verification Boundary

## Checked

- The relation $h=\mu/2-G_N\mu^2/\ell$ follows algebraically from $h=k(1-\alpha_\theta^2)$, $\alpha_\theta=1-\theta/(2\pi)$, $\theta=8\pi G_N\mu/\ell$, and $k=\ell/(16G_N)$.
- The fused-defect formula $h(p)=p\mu/2-G_Np^2\mu^2/\ell$ gives the stated binding energy

$$\begin{align}
\Delta E_p=-\binom p2\frac{4G_N\mu^2}{\ell}.
\end{align}$$

- For a permutation cycle of length $r$,

$$\begin{align}
\prod_{s=0}^{r-1}(1-qe^{2\pi is/r})=1-q^r,
\end{align}$$

so the defect-separation determinant has the source form $\prod_r(1-q^r)^{-\ell_r}$.

## Not Independently Verified

- The cone-surface phase-space theorem, compactification prescription, Kodaira vanishing range, Atiyah-Bott fixed locus assumptions, braid phase cancellation, and inner-product positivity are source-derived.
- The Wilson-spool equality is checked only at the level of the paper's cycle expansion, not independently as a Chern-Simons line-operator path integral.

# 审查报告（2026-10-30）

## 总判定：有价值的量子化候选，不是已证明的自由标量全阶量子引力

**现有证据尚未证明该构造等价于最小耦合自由实标量的引力路径积分；原文还存在若干可明确复现的数学错误。**最重要的确定错误是 (4.29) 不推出 (5.1) 的变系数热方程。更基础的缺口是：锥曲面相空间引用的定理不覆盖实际使用的轻粒子、渐近 AdS 圆盘范围；纯编织群的作用也不能仅凭外部粒子无自旋而从整个左右张量积中消去。

但这不意味着主要公式全部失效。**接受作者的相空间、碰撞延拓、量子化与投影假设后，循环指标计算、一圈极限、(4.29) 的形式微扰展开及 (5.2) 的形式高斯表示可以保留。**首个非微扰歧义的尺度确实为 $e^{-\beta/(8G_N)}$，甚至可以绕开错误的热方程，由大阶增长独立恢复；这仍不等于证明真实 BTZ 态或非微扰完备性。

若作审稿意见：**需要实质性修改。**保留摘要中“conjecture”的定位，把讨论部分“exact quantization”的措辞降到与证据相称的程度；修正确定错误，并补足下述等价性与规范投影论证。

### 版本、范围与约定

- 审查对象是 [arXiv:2607.01319v1](<https://arxiv.org/abs/2607.01319v1>)；[v1 PDF](<https://arxiv.org/pdf/2607.01319v1>) 共 44 页。下文页码均为**正文印刷页码**，对应 **PDF 页码 = 正文页码 + 1**。已阅读 §§1–6、Appendices A–B；关键错误以实际 PDF 页面核对，不仅依赖文本抽取。
- 采用论文未加半形式修正的约定：$k=\ell/(16G_N)$、每个手征的 $c=24k=3\ell/(2G_N)$、$\theta$ 是**亏角**，而非锥的张角；$\alpha=1-\theta/(2\pi)$，张角为 $2\pi\alpha$。不把这里的 $k$ 与其他迹归一化下的 Chern–Simons level 混用。
- $\hbar=1$；$G_N,\ell,\beta$ 有长度量纲，$\mu,h,c$ 无量纲。物理圆柱能量是 $E=(h+\bar h-c/12)/\ell$；文中 $2h(p)-2ph$ 是无量纲能量差，物理结合能还需除以 $\ell$。
- 热分析固定 $\beta,\ell,\mu>0$，$q=\bar q=e^{-\beta/\ell}\in(0,1)$，先除去 $Z_{\rm grav,1-loop}$ 再作 $G_N$ 展开。默认标准标量边界条件，$\Delta_0=1+\sqrt{1+m^2\ell^2}$；不声称覆盖 alternate quantization。
- 本报告为追加审查，未改写前面的英文摘记。旧摘记中应暂停采用的结论在报告末尾单列。

## 1. 主公式中确实可以独立复现的部分

把正文 p19 的 (4.18) 写成无歧义形式：

$$\begin{align}
\frac{Z_{\rm pert}}{Z_{\rm grav,1-loop}} =\sum_{n\theta<2\pi}|q|^{2h(n)}A_n(q,\bar q), \qquad h(n)=\frac{n\mu}{2}-\frac{G_Nn^2\mu^2}{\ell},
\end{align}$$

$$\begin{align}
A_n(q,\bar q)= \sum_{\substack{\ell_1,\ldots,\ell_n\geq0\\
\sum_r r\ell_r=n}}
\prod_{r=1}^{n} \frac{1}{\ell_r!\,r^{\ell_r}|1-q^r|^{2\ell_r}}, \qquad A_0=1.
\end{align}$$

这里应对每个循环型先取乘积，再对全部循环型求和；原文 (4.18) 的乘积与求和排版顺序不宜照字面使用。(4.28) 已采用正确顺序。

**Checked：**若接受 (4.15) 的切空间作用，长度 $r$ 的循环满足 $\det(1-q\rho_r)=1-q^r$；具有循环型 $\{\ell_r\}$ 的排列数为 $n!/\prod_r\ell_r!r^{\ell_r}$。因此上式的组合因子正确。例如

$$\begin{align}
A_2=\frac12\left[ \frac{1}{|1-q|^4}+\frac{1}{|1-q^2|^2} \right].
\end{align}$$

Sage 对 $n=0,\ldots,6$ 的全部排列与分拆公式作了精确有理函数比较，全部通过。这是有限机器例证；一般 $n$ 的依据是循环分解推导。

在 $G_N\to0$ 的逐阶意义下，令 $x=|q|^\mu$，则

$$\begin{align}
\sum_{n\geq0}x^n A_n =\exp\!\left[\sum_{r\geq1}\frac{x^r}{r|1-q^r|^2}\right] =\prod_{l,\bar l\geq0} \frac1{1-xq^l\bar q^{\bar l}}.
\end{align}$$

因此 (4.25)–(4.26) 的 Bose 标量一圈乘积确实得到恢复。$n=0$ 给出纯引力真空 character；$n=1$ 的 $|1-q|^{-2}$ 补上非真空 Virasoro module 的 level-one descendants。这些是有内容的一致性检查，**不是**高圈引力路径积分等价性的证明。

结合能也有简单的独立检查：

$$\begin{align}
2h(p)-2ph=-\frac{2G_N\mu^2}{\ell}p(p-1) =-\binom p2\frac{4G_N\mu^2}{\ell}.
\end{align}$$

它证明的是该碰撞能量公式内部的两两结合结构，不证明任意多粒子激发态在真实场论中都只有同一个能量平移。

## 2. Worldline 等价性尚未完成：一圈匹配不能固定全阶理论

**定位：**正文 pp8–9，(3.6)–(3.8)；pp13–14，(3.25)–(3.27)；p27 的二圈检验讨论。

对固定背景上的自由实标量，标准起点是

$$\begin{align}
Z_\phi[g]=\det(-\nabla_g^2+m^2)^{-1/2}, \qquad \log Z_\phi[g] =\frac12\int_0^\infty\frac{dT}{T} e^{-m^2T}\operatorname{Tr}e^{T\nabla_g^2},
\end{align}$$

其中已省略但必须指定 UV subtraction、边界条件与局部反项。世界线表示还包含 proper-time/einbein 积分、重参数化规范固定及曲空间测度。把这些压缩进 $\mathcal D x$ 可以作为示意记号，但**仅写长度作用量 $\mu\int ds/\ell$，再匹配一个热背景的一圈谱，并不能证明所有离壳度规上的行列式恒等式**。

进一步，从欧氏闭合世界线气体到固定 $n$ 的锥粒子相空间，是另一项需要证明的步骤：闭合欧氏路径与任意切片的交数不自动给出守恒粒子数；自由实标量耦合动态引力后也没有保护粒子数的 $U(1)$。这里不是说 Fock 分级绝不可能，而是需要说明约束、世界线测度、接触/碰撞边界条件与可能的扇区混合如何由原场论导出。

原文 (3.8) 已明确保留未知 $O(G_N)$ 的 $\mu(m,G_N)$ 修正。设 $g=G_N/\ell$，$\mu=\Delta_0+g\,a(\Delta_0)+O(g^2)$，则

$$\begin{align}
2h(n)=n\Delta_0+g\,[n a(\Delta_0)-2n^2\Delta_0^2]+O(g^2).
\end{align}$$

所以不知道质量重整化方案时，所谓“固定标量质量的二圈预测”尚不唯一。还需给出有限反项、引力测度及半形式修正的选择。作者自己在 p27 提议用常规二圈真空图检验，说明该检验并未在本文完成。

**结论等级：证明缺口，不是 worldline 方法本身被反证。**Wilson spool 的循环组合学得到解释，不能替代其与完整重整化场论路径积分的比较。

## 3. 相空间定理与纯编织群：主公式之前的两个关键缺口

### 3.1 引用 [47] 的角度和边界条件不覆盖实际应用

**定位：**正文 p10，(3.13)，及 pp17–18 的热 AdS 圆盘应用。

已核对原引文 [Bonsante–Schlenker, arXiv:math/0609116v2，Definition 1.3 / Theorem 1.4](<https://arxiv.org/html/math/0609116v2>)。该结果讨论闭曲面上的 GHMC AdS 时空、互不相交的类时粒子线，并要求锥的**张角** $\vartheta_i\in(0,\pi)$。与本文亏角的映射是

$$\begin{align}
\vartheta_i=2\pi-\theta_i.
\end{align}$$

因而引用定理要求 $\pi<\theta_i<2\pi$，不包括固定 $\mu$、弱耦合 $\theta_i\to0$ 的轻粒子区域；对相同粒子的 $n\geq2$，甚至与本文局域化使用的 $n\theta<2\pi$ 区域没有交集。闭曲面定理也不自动包含带无穷多边界重参数化模的渐近 AdS 圆盘。

**这不反证所需乘积相空间可能存在；它反证“引用 [47] 已足够保证当前适用范围”的说法。**需要额外的扩张定理，或在相关开区域直接构造相空间并验证其辛结构、边界模及碰撞延拓。

### 3.2 外部粒子无自旋，不足以消掉整个纯编织群

**定位：**正文 pp17–18，(4.8)–(4.10)，以及 p20 的 Wilson-line 解释。

一般 conformal block 在 OPE 通道 $a$ 中有

$$\begin{align}
\mathcal F_a(z)\sim z^{h_a-2h}(1+\cdots).
\end{align}$$

让一个插入绕另一个一整圈，$\mathcal F_a$ 获得 $e^{2\pi i(h_a-2h)}$。对整个左右张量积中的元素，作用为

$$\begin{align}
\mathcal F_a\overline{\mathcal F_b}
\longmapsto
 e^{2\pi i(h_a-\bar h_b)} \mathcal F_a\overline{\mathcal F_b},
\end{align}$$

即使每个外部标量都有 $h=\bar h$，内部通道仍然不必匹配；其他编织生成元还可混合通道。因此，论文给出的理由不能推出 $P_n$ 在整个 (3.25) 上作用平凡。更一般地，$U\otimes\bar U$ 不是恒等算符，虽然它可能具有不变子空间。

**限定：**这个反例针对一般 conformal-block 张量积，不能直接证明作者所选碰撞延拓后的特殊空间一定含有这些非平凡通道。可行的补救是明确构造线丛的全局延拓及编织群提升，证明允许的截面在所有纯编织生成元下具有共同可抵消的作用，或先真正完成 $P_n$ 投影，再计算剩余 $S_n$ 作用。论文没有完成这个步骤。

在补证前，(4.18) 应称为**采用平凡纯编织作用假设的候选 character**，而非一般映射类群约束已严格实施的物理配分函数。

## 4. 局域化与“无限简并”的证据边界

**定位：**正文 pp14–18，(3.26)、(4.6)–(4.7)；pp25–26，(5.7)–(5.10)。

有三个不能由 $k\gg1$ 自动解决的问题：

1. 标准 Kodaira vanishing 与 Atiyah–Bott 公式不能不加说明地搬到**非紧、带碰撞边界且含无穷维边界模**的相空间。需指定截面增长或 $L^2$ 条件、等变迹/指标的定义、无穷维行列式正规化及边界贡献。一个形式固定点计算可以很有用，但不是这些分析条件的证明。
2. p14 明确承认 subthreshold conical-defect 态的内积正定性尚未验证。因而由全纯截面构造得到的首先是候选态空间，尚不能无条件称为正定物理 Hilbert space。Appendix A 中 Chern class 的匹配也不独自固定度量、连接和映射类群等变结构。
3. 非紧性不推出无限 Weil–Petersson 体积；即便未取商的 Teichmüller 空间体积确实无限，也不能单凭恒等元的未投影迹发散推出完整规范投影后的物理简并度无限。非紧空间上 (5.8) 的普通 Hirzebruch–Riemann–Roch 使用还需另行论证。

还有一个明确的适用范围反例。取 $n=2$、每个亏角 $\theta=3\pi/2$，则 $n_{\rm critical}=1$，位于作者声称的阈值以上。其固定空间是

$$\begin{align}
\mathcal T_{0,\{3\pi/2,3\pi/2,2\pi\}} \quad\text{（三个标点的球面）},
\end{align}$$

复维数为 $n-2=0$，是一个点，而非非紧空间。它确有双曲锥度规：将角为 $(\pi/4,\pi/4,0)$ 的双曲三角形加倍，得到两个张角 $\pi/2$ 的锥点和一个 cusp，面积为 $\pi$。在未取有限标点商的空间上，(5.9) 的零维体积为 $1$，线丛截面维数也为 $1$，不是 (5.10) 的无穷大。

该反例属于 $\mu\sim\ell/G_N$ 的重粒子区域，**不否定固定轻质量、$n\sim\ell/(G_N\mu)$ 时的发散可能性**，也不算出了真实引力态数。它说明原文对所有阈值以上粒子数的无条件概括过强。较稳妥的结论是“该未充分定义的非微扰计数出现发散信号”，不是“自由标量耦合引力已被证明具有无限物理简并或失去 UV 完备性”。

## 5. 确定错误：(4.29) 不是 (5.1) 的解；但高斯表示可修复

**定位：**正文 pp22–23，(4.27)–(5.2)。令

$$\begin{align}
f(\mu)=Z_{\rm scalar,1-loop}(\mu),\qquad F(G_N,\mu)=Z_{\rm pert}/Z_{\rm grav,1-loop},\qquad a=2/\beta.
\end{align}$$

从粒子数权重逐阶展开，确实得到

$$\begin{align}
F\sim\sum_{s\geq0}\frac{(aG_N)^s}{s!} \mu^{2s}f^{(2s)}(\mu). \tag{R1}
\end{align}$$

**关键是每一项中导数仅作用于 $f$。**这不是 $\exp(aG_N\mu^2\partial_\mu^2)f$。后者会让后续导数作用于前面的 $\mu^2$，因此在 $G_N^2$ 阶比 (R1) 多出

$$\begin{align}
a^2G_N^2\,[\mu^2f''+2\mu^3f'''].
\end{align}$$

极简反例：$f=\mu^2$ 时，(R1) 给 $\mu^2(1+4G_N/\beta)$，(5.1) 却给 $\mu^2e^{4G_N/\beta}$。对实际粒子数展开的单项 $f=e^{-b\mu}$、$b=\beta n/\ell$，差值为

$$\begin{align}
a^2G_N^2\mu^2b^2(1-2b\mu)e^{-b\mu},
\end{align}$$

同样一般非零。该差异及直接 PDE 残差已用 Mathematica 精确检验。

**正确修复：**引入独立坐标 $x$ 和冻结参数 $M$，先解

$$\begin{align}
\partial_{G_N}H(G_N,x;M) =\frac{2M^2}{\beta}\partial_x^2H(G_N,x;M), \qquad H(0,x;M)=f(x),
\end{align}$$

最后取 $x=M=\mu$。其高斯核恰给

$$\begin{align}
F\sim\sqrt{\frac{\beta}{8\pi G_N\mu^2}} \int_{\mathcal C}dy\, e^{-\beta(y-\mu)^2/(8G_N\mu^2)}f(y). \tag{R2}
\end{align}$$

高斯的 $2s$ 阶矩为 $(2s-1)!!(4G_N\mu^2/\beta)^s$，正好重现 (R1)。因此 **(5.2) 可以作为指定轮廓后的形式重求和保留，但不是 (5.1) 的热核。**若真要解 (5.1)，令 $t=2G_N/\beta$、$x=\log\mu$，会得到 $\partial_tU=(\partial_x^2-\partial_x)U$，对应正半轴上的 lognormal 核，而非原文的加性高斯核。

这里 $\sim$ 有意表示渐近展开。$f(y)$ 在实轴有极点，普通实积分不存在；$\mathcal C$ 的绕极点方式、解析延拓及非微扰项不是微扰级数单独给定的。

## 6. BTZ 尺度可以恢复，但应解释为重求和歧义

### 6.1 必须区分截断和、形式级数与轮廓积分

对任意 $G_N>0$，若直接把未展开的 (4.18) 延伸到所有 $n$，权重含

$$\begin{align}
\exp\!\left[-\frac{\beta\mu n}{\ell} +\frac{2G_N\beta\mu^2n^2}{\ell^2}\right],
\end{align}$$

最终随 $n$ 增长；而 $A_n\geq1$，因为所有粒子占据最低模式至少贡献一个态。因此该无限和发散。只有**先逐阶展开再求各阶系数**才是 (4.29) 的意义，不能说它是任意正 $G_N$ 下收敛配分函数的 Taylor 等式。

### 6.2 首极点和大阶增长的独立重建

正文 p24 的 (5.3) 所需局部数据确实正确：

$$\begin{align}
f(y)=\frac{R_0}{y}+O(1),\qquad R_0=\frac{\ell}{\beta} \prod_{\substack{l,\bar l\geq0\\
(l,\bar l)\neq(0,0)}} (1-q^{l+\bar l})^{-1}.
\end{align}$$

故 (R2) 的**被积函数**在 $y=0$ 的留数是

$$\begin{align}
\sqrt{\frac{\beta}{8\pi G_N\mu^2}}R_0\, e^{-\beta/(8G_N)}.
\end{align}$$

上下绕行的差为这个留数乘 $\pm2\pi i$，并非正的态简并度本身。原文 (5.3) 左侧写成对已经积分后的 $Z$ 取 $\operatorname{Res}_{\bar\mu=0}$，严格说应改为对被积函数取留数。

还有一个不使用 (5.1) 的检验。固定 $\mu>0$，$y=0$ 是 $f(y)$ 距离展开点最近的奇点。因此 (R1) 中 $G_N^s$ 的系数在大阶满足

$$\begin{align}
c_s\sim\frac{R_0}{\mu} \left(\frac2\beta\right)^s\frac{(2s)!}{s!}.
\end{align}$$

若 Borel 变换定义为 $\mathcal BF(t)=\sum_sc_st^s/s!$，首奇异部分为

$$\begin{align}
\mathcal BF(t)\sim \frac{R_0}{\mu}\left(1-\frac{8t}{\beta}\right)^{-1/2}. \tag{R3}
\end{align}$$

这给出正实 Borel 轴上的 $t=\beta/8$ 奇点，恢复 $e^{-\beta/(8G_N)}$ 的歧义尺度。其系数恒等式已检查到 $s=8$；一般式来自中心二项式生成函数。因而错误的 PDE **不摧毁**这个尺度结论，但正轴奇点也说明没有无歧义的普通 Borel 求和。

按未修正的 $c$，确有

$$\begin{align}
e^{-\beta/(8G_N)}=q^{c/12}.
\end{align}$$

这是相对热 AdS 真空的质量零 BTZ 阈值尺度；乘回 $Z_{\rm grav,1-loop}$ 的经典真空因子后，该指数抵消。它没有确定非微扰扇区的实系数、正性、简并度或完整拓扑求和。把轮廓歧义解释为 BTZ 态是有启发性的**物理猜想**，不是由留数推出的定理。

## 7. 半形式修正给出可区分的物理预测，而非无害记号选择

**定位：**正文 p14；Appendix B，pp36–38，(B.3)、(B.8)–(B.13)。

未加修正时，$2h(n)=n\mu-2gn^2\mu^2$；加半形式修正后，$2h(n)=n(1+\mu)-2gn^2\mu^2$。两者分别通过 $\mu=\Delta_0$ 和 $\mu=\Delta_0-1$ 匹配同一个零耦合一粒子维数。

为了避免只比较未知的一粒子质量反项，定义有限耦合下的物理一粒子维数 $\Delta_1=2h(1)$，消去 $\mu$。则

$$
2h(n)=
\begin{cases}
 n\Delta_1-2g\,n(n-1)\Delta_1^2+O(g^2),&\text{无半形式修正},\\
 n\Delta_1-2g\,n(n-1)(\Delta_1-1)^2+O(g^2),&\text{有半形式修正}.
\end{cases}
$$

因此二粒子最低态相对两倍一粒子能量的预测分别为

$$\begin{align}
\ell E_{\rm bind}^{(2)}= -4g\Delta_1^2+O(g^2) \quad\text{或}\quad -4g(\Delta_1-1)^2+O(g^2). \tag{R4}
\end{align}$$

这是本文最值得做的后续判别：在相同边界条件、物理一粒子质量及已固定的局部接触反项方案下，独立计算最低二粒子态的 $O(G_N)$ 引力结合能，或计算能隔离该两体贡献的热配分函数。它比只重复匹配一圈行列式更有辨别力，也比直接完成所有二圈真空图更聚焦。**本次未完成该引力相互作用计算，故不判定两种候选哪一个正确。**

Appendix B 的 $\Delta_0=1$ 极限在其自身公式中确实使全部高阶项消失；不能仅因“一圈精确”令人意外就把它列为逻辑错误。应由外部物理计算检验，而不是由偏好决定是否加入半形式修正。

## 8. 其他已确认的错误与应修正的精度

以下均是原文问题，不是只在摘记中出现的问题。

| 位置（正文页；PDF 页加 1） | 核查结果与修正 |
| --- | --- |
| pp9–10，(3.9)–(3.14) | 在双曲背景 $R^{(2)}=-2$、$\theta>0$ 为亏角的约定下，Gauss–Bonnet 给锥点 $\int R\,dA=2\theta$，故应为 $R^{(2)}=-2+2\theta\sum_i\delta_i$，不是 (3.14) 的负号。可用 $ds^2=dr^2+\alpha^2r^2d\varphi^2$ 验证 $\int R=4\pi(1-\alpha)=2\theta$。(3.10) 的负源与正亏角解释同样冲突；在通常欧氏作用量中引力体项应带整体负号。应统一修正欧氏作用量、曲率源与 Lorentzian 延拓，而不是只翻转一个公式。后续 $h$ 的代数自洽不消除这处几何符号问题。 |
| p23，(4.31) | 令 $S=\sum_{r\geq1}\chi_{\mu/2}(e^{-r\beta/\ell})^2$。由 (4.30) 应得 $\delta Z/Z_{\rm1-loop}=(2G_N\beta\mu^2/\ell^2)[S^2-(\ell/\beta)\partial_\mu S]$；原文前因子印为 $2G_N\mu^2/\beta$，相差 $(\ell/\beta)^2$。不能只测 $\beta=\ell$，否则错误被掩盖。 |
| pp18、24，截断及 (5.4) | 严格阈值以下要求 $n<n_*=\ell/(4G_N\mu)$，最大整数为 $\lceil n_*\rceil-1$；仅当 $n_*$ 非整数时等于 $\lfloor n_*\rfloor$。且 $h(\lfloor n_*\rfloor)=c/24-(G_N\mu^2/\ell)(\lfloor n_*\rfloor-n_*)^2$，不是一般都“precisely $c/24$”。连续阈值 $n_*$ 才精确满足该等式。 |
| p26，(5.11) | 原文定义 $\Delta=h+\bar h$，却写 $S_{\rm BH}=4\pi\sqrt{k\Delta}$。对非旋转 BTZ、$c=24k$，应为 $S_{\rm BH}=4\pi\sqrt{2k(\Delta-c/12)}$；既有真空能平移，也有 $\sqrt2$ 的归一化差异。可由 $E=r_+^2/(8G_N\ell^2)$、$S=\pi r_+/(2G_N)$ 直接检查。旋转情况需保留左右能量分别计数。 |
| p29，(6.1) 前 | $\bar\mu=-j$ 的极点阶数为 $j+1$，不是整数分拆数 $p(j)$，因为 $f(y)=\prod_{j\geq0}(1-q^{y+j})^{-(j+1)}$。$j=1$ 已给二阶极点，而 $p(1)=1$。这一修正不改变 (6.1) 的主指数，但会改变留数的幂次前因子，故也不支持直接读出完整熵。 |
| pp34–35，(A.15)、(A.24)、(A.25) | (A.15) 是 $+\sum_Jr_J\delta_{0,J}$，(A.24) 给 $r_J=12(2-\lvert J\rvert)$，(A.25) 却印成 $-12\sum_J(2-\lvert J\rvert)\delta_{0,J}$。按前两式应取加号；$\lvert J\rvert=3$ 时该项应为 $-\delta_{0,J}$ 而非 $+\delta_{0,J}$。(A.26) 与修正后的符号相容。这里确认的是明确代数冲突，未冒充完整 canonical-bundle 定理的独立证明。 |
| p38，(B.13) | 加半形式修正后 $c=24k+13$。由 (B.12) 的核算出的精确 $q$ 指数是 $[(c-13)/12](1+1/\mu)^2$，不是 $[c/12](1+1/\mu)^2$；后者只能在领先 $1/G_N$ 精度下使用。 |

## 9. 对前面英文摘记的审查定位

本次保留原摘记文字，仅记录修订建议；以下行号指追加本报告之前的部分。

- **“Equivalently”及热方程段落，原第 292–301 行：不成立。**应以第 5 节的冻结参数构造替代；不要继续把 (5.1) 当作已验证结论。
- **“pure braid phases cancel”，原第 187 行：缺少适用条件。**应限定为另行证明纯编织作用平凡的特殊量子化空间，而非由标量无自旋直接推出。
- **原第 223–231 行的循环求和：排版有歧义，且漏写 $\sum_r r\ell_r=n$。**推荐采用第 1 节的 $A_n$ 定义。
- **“at fixed particle number ... Finite-dimensional”，原第 325 行：对热 AdS 圆盘不正确。**固定粒子数并不去除无限维边界引力模；有限维表述只可在无此边界模的适当紧曲面设置中使用。
- **原第 95 行的曲率源符号、原第 179–183 行的阈值整数公式：**应结合第 8 节的约定与严格不等式修订。
- **原第 327 行的无限简并解释：**必须保留“未充分投影的候选构造中”的限定，不宜转述为真实标量引力 UV 病态的证明。
- **原第 350 行的“source-derived”：**并不代表对应源结论可靠。相空间定理范围、编织群作用和非紧指数定理现在已有具体的审查缺口，而不只是笼统“尚未独立验证”。

## 10. 验证记录与尚未解决之处

**Source-derived / visually confirmed：**原文主要论证链、所有上表涉及的公式与页码、Appendix B 的方案差异。参考 [47] 的定理假设另读原文。原文的两圈图、内积正性和非紧局域化并未因阅读而成为 Checked。

**Checked：**

- 解析推导：循环指标与一圈乘积；结合能；变系数 PDE 反例与冻结参数高斯修复；局部留数；首 Borel 奇点；极点阶数；锥点曲率积分；BTZ 能量/熵归一化；半形式两种方案在固定一粒子能量后的差异。
- Mathematica 精确检验：$G_N^2$ 算子差异、单 Boltzmann 项 PDE 残差、高斯矩至八阶矩、结合能恒等式、(4.31) 前因子比、(A.25) 符号差、阈值差、BTZ 熵关系、(R4) 展开，以及 (R3) 的 Borel 系数至 $s=8$；相关调用均未报告消息。
- Sage 精确检验：$n=0,\ldots,6$ 全排列求和与循环分拆式相等，$n=2$ 显式式相等，$j=0,\ldots,8$ 模态重数为 $j+1$；三项检查全部通过。
- 两个独立 fresh 复核分别从原文审查几何/编织链条与高阶展开/重求和，没有预先提供本报告的候选结论。关键问题与主审推导吻合；新增三标点球反例限定在重粒子范围。

一个足够短、可重跑的 Wolfram 反例核心如下；它只检验数学步骤，不模拟量子引力：

```wolfram
Clear[a, g, mu, b, f, F2];
f = Exp[-b mu];
F2 = f + a g mu^2 D[f, {mu, 2}]
       + a^2 g^2 mu^4 D[f, {mu, 4}]/2;
FullSimplify[Coefficient[
  Expand[D[F2, g] - a mu^2 D[F2, {mu, 2}]], g, 1]]
(* -2 a^2 b^2 mu^2 (1 - 2 b mu) Exp[-b mu] *)
```

**Assumptions：**上面对主配分函数的代数后果始终以 (4.18) 的候选谱为起点；重求和分析固定 $\mu,\beta,\ell>0$，未偷偷让 $\mu$ 随 $G_N$ 改变。一般 $q,\bar q$ 的循环指标结论与非旋转实温度下的重求和结论分开使用。

**Not verified：**真实 Einstein–scalar 二圈真空图或两体结合能；轻亏角、渐近边界及碰撞完成后的全局相空间辛同构；物理编织群投影；subthreshold 内积正性；非紧/无限维指标定理与高阶上同调消失；半形式修正是否由原路径积分强制；完整非微扰轮廓、拓扑求和及真实 BTZ 态计数。未对全文每个参考文献或全局模空间交数公式完成独立证明。

**最终可引用的结论：**本文提出了一个能恢复自由标量一圈谱、具有明确全阶形式系数和 BTZ 阈值歧义尺度的锥缺陷量子化候选。它尚未证明自己就是最小耦合自由标量的全阶量子引力；其中热方程推论与若干归一化、符号和极点计数需修正，核心几何范围与规范投影仍需补证。
