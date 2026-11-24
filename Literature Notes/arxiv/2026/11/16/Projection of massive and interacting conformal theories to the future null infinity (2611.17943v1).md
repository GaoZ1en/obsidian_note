---
paper id: 2611.17943v1
title: Projection of massive and interacting conformal theories to the future null infinity
authors:
  - Beatrice Costeri
  - Claudio Dappiaggi
  - Alberto Ferrari
publication date: 2026-11-13T09:26:59Z
abstract: |-
  A massive scalar is represented perturbatively as a quadratic interaction of a massless conformally coupled scalar, then mapped coefficientwise to future null infinity. On Minkowski spacetime the cut-off boundary series converges, while a controlled global adiabatic limit vanishes. A time-slice construction instead gives nontrivial symplectic embeddings with a common image but switching-dependent representatives. The authors extend the projection formally to self-interactions and discuss the first-order quartic correction to the stress tensor.
comments: "56 pages, no figures"
url: https://arxiv.org/abs/2611.17943v1
summary: "明确区分有质量场的真实辐射极限与经 Møller／time-slice 构造的非典范边界编码；后者保辛但不固定真空，也不保持边界局域性。"
tags: []
---

# 先给判断

**局部 time-slice 意义下的边界编码有清楚的构造；它不是有质量场在 $\mathscr I^+$ 的直接辐射极限，也不是 cutoff-independent 的逐算符字典。** 对当前 CPS／量子化工作，最有用的三个对象是：源变换 $G_g$、它的紧支逆 $H_g$，以及不同 switching 之间的边界辛自同构。它们把“相同 CCR 代数”与“相同动力学、相同态、相同局域网”严格分开。

正文另有可定位的公式问题：§4 的四次相互作用 stress-tensor kernel 在式(4.18)与(4.21)之间有导数项符号冲突，(4.19)与前面的 Wick 展开有系数冲突。下面从双线性 stress operator 重建所需公式，不把有冲突的长展开作为已验证结果。**这些问题不进入 §3 的线性 massive／time-slice 证明。**

来源：[arXiv v1](https://arxiv.org/abs/2611.17943v1)，PDF与正文页码相同。阅读 §1–4；全文无技术附录。重点查看了 PDF 31、37–39、41、48、50–52页，并与官方 TeX 核对。

# 1. 两个不同问题：辐射数据与代数编码

四维 bulk $(M,g)$ 定向、时间定向、全局双曲，号差 $(-,+,+,+)$，无物理边界。作者使用带未来 timelike infinity $i^+$ 的较强 conformal completion，并要求有覆盖物理区域的全局双曲 unphysical open set $\mathscr V$。不是任意弱意义的 asymptotic flatness 都自动满足假设。

取 $\widetilde g=\Omega^2g$，$P_0=\Box_g-R/6$。共形变换为

$$
\widetilde P_0=\Omega^{-3}P_0\Omega,\qquad
\widetilde\Delta_{R/A}|_M=\Omega^{-1}\Delta_{R/A}\Omega^3.
$$

质量项会变成 $m^2\Omega^{-2}$ 的奇异系数，故不能把 massive solution 直接照搬 massless radiation trace。本文改为：**先把 massive observable 表示成 massless observables，再将后者逐项映到边界。** 这是一种辅助表示，不是改变有质量粒子的渐近传播方向。

## 自由辛空间与量子代数

$\Delta_S=\Delta_R-\Delta_A$，$P_0\Delta_{R/A}=1$。线性可观测量空间

$$
E_0(M)=C_0^\infty(M)/P_0C_0^\infty(M),\qquad
\sigma_M([f],[h])=\int f\Delta_Sh.
$$

等价地令 $\phi_f=\Delta_Sf$，

$$
\sigma_M([f],[h])=\int_\Sigma(\phi_f\nabla_n\phi_h-\phi_h\nabla_n\phi_f)d\Sigma.
$$

$\Sigma$ 的 $n$ 取未来单位法向。CCR 为 $[\Phi_f,\Phi_h]=i\sigma_M([f],[h])\mathbf1$（此处 $\hbar=1$）。

边界取 Bondi frame $(u,\omega)\in\mathbb R\times S^2$，

$$
\mathcal S(\mathscr I^+)=\{\psi\in C^\infty:\psi,\partial_u\psi\in L^2\},\quad
\sigma_I(\psi,\chi)=\int(\psi\partial_u\chi-\chi\partial_u\psi)du\,d\omega.
$$

massless map 为

$$
\Gamma_I[f]=\widetilde\Delta_S(\Omega^{-3}f)|_{\mathscr I^+}.
$$

在作者假设下它注入且保辛，故诱导 CCR 的注入 $*$-同态。边界代数的定义本身不含 bulk mass／动力学；它们进入选择哪个 map、哪个态、哪个可观测量网。

边界 distinguished quasifree state 的核为

$$
\omega_{2,I}(u,\omega;u',\omega')
=-\frac1\pi\lim_{\epsilon\downarrow0}
\frac{\delta_{S^2}(\omega,\omega')}{(u-u'-i\epsilon)^2}.
$$

BMS 不变性及 Bondi 正能量在其 folium 内给出唯一性；拉回 bulk 得 Hadamard 态。在 Minkowski massless 情形是通常真空，不能预先推断 massive 拉回也是其 Poincaré 真空。

# 2. §2 的 pAQFT 工具为何不可省略

局域非线性 observable 需要微因果泛函：每阶泛函导数的 wavefront set 排除全部 future／全部 past covectors。量子乘法是

$$
F\star_{\hbar H}G
=\sum_{k\ge0}\frac{\hbar^k}{k!}
\langle F^{(k)},H^{\otimes k}G^{(k)}\rangle.
$$

$H$ 的反对称部分由 $\Delta_S$ 固定；不同 Hadamard 选择的光滑差由 $\alpha$-intertwiner 联系。比较 bulk 与 boundary 的产品时也须对齐该 intertwiner，不能将任意不同 $H$ 当同一个具体 realization。

相互作用的 Bogoliubov map

$$
\mathcal R_{\lambda V}(F)
=S(\lambda V)^{\star-1}\star[S(\lambda V)\cdot_TF],
\quad S(\lambda V)=\exp_T(i\lambda V/\hbar)
$$

以重整化时间排序定义；其 $\hbar\to0$ 极限是 classical retarded Møller pullback。PPA 保证将二次项作为相互作用或并入 free theory 的两种量子构造相容，前提是重整化处方满足该原则。

扩展边界代数不仅要求紧支传播后的支撑在 $\mathscr I^+\cup\{i^+\}$ 紧闭，还排除纯角向奇异方向，并要求在 $i^+$ 邻域有相应光滑性。bulk-to-boundary map 对每个 polynomial kernel 作用为

$$
F[\phi]=\sum_k\frac1{k!}\langle F_k,\phi^{\otimes k}\rangle
\quad\longmapsto\quad
\Gamma F=\sum_k\frac1{k!}E^{\otimes k}F_k,
\qquad E(z,x)=\widetilde\Delta_S(z,x)\Omega^{-3}(x).
$$

这是分布乘积、pullback 和 pushforward，必须满足各自 wavefront／support 条件。**局域 bulk kernel 的像通常不支撑在 boundary thin diagonal；它不是边界局域作用量泛函的代数。** §4 因而明确只对处于 $\Gamma$ 定义域的系数逐阶投影。

# 3. 二次质量相互作用：收敛发生在固定 cutoff 下

引入 $h\in C_0^\infty(M)$，

$$
m^2V_h=-\frac{m^2}{2}\int h\phi^2,\qquad P_{m,h}=P_0-m^2h.
$$

线性 observable $\Phi_f=\int f\phi$ 的 Møller pullback 为

$$
R_{m^2V_h}\Phi_f=\sum_{n\ge0}(m^2)^n\Phi_{(h\Delta_A)^nf}. \tag{3.2}
$$

正号来自 $V_h^{(1)}=-h\phi$；advanced Green 出现在 test function 一侧，是 retarded map 的对偶，不是换成了 advanced physical evolution。线性 observable 没有高阶泛函导数，因此这里 classical 与 quantum Møller map 一致。

每个 $f_n=(h\Delta_A)^nf$ 光滑紧支，可投影：

$$
\Gamma R_{m^2V_h}\Phi_f
=\sum_{n\ge0}(m^2)^n\widetilde\Delta_R(\Omega^{-3}f_n)|_{\mathscr I^+}. \tag{3.4}
$$

在未来 null infinity，advanced trace 为零。一般满足几何假设的背景上此式只是 formal series；**真正的收敛定理只在四维 Minkowski 完成**。

## 能量估计的结构

Minkowski 共形嵌入 Einstein static universe，$\widetilde P_0=\Box_{\widetilde g}-1$。Cauchy energy space 是 $H^1(S^3)\oplus L^2(S^3)$；相应 Goursat cone 数据带由 energy 引出的 $H^1$ 范数。Goursat estimate 控制

$$
\|\widetilde\Delta_R(\Omega^{-3}f_n)|_{\mathscr I^+}\|_E
\le c\sqrt{3\pi}\,\|\Omega^{-3}f_n\|_{L^2(\widetilde M)}.
$$

由于 $d\mu_{\widetilde g}=\Omega^4d\mu_g$，右侧等于 $\|\Omega^{-1}f_n\|_{L^2(M)}$。固定 $K\supset\operatorname{supp}f\cup\operatorname{supp}h$ 后，advanced time-ordered iterates 的 Fourier norm 给

$$
\|\Omega^{-3}f_n\|_{L^2}\le C\frac{A^{n-1}}{(n-1)!}\quad(n\ge1),
$$

常数依赖 cutoff、时间宽度和质量。于是 tail 被
$\sum_{n\ge1}(m^2)^nA^{n-1}/(n-1)!=m^2e^{Am^2}$ 控制，边界级数在 cone energy norm 中 Cauchy。这是 Theorem 3.6 的实质；不是 Neumann series 只在 small $m^2$ 的算符范数收敛。

## 核恰是 equations of motion

定义紧支源变换

$$
G_hf=\sum_{n\ge0}(m^2h\Delta_A)^nf
=f+m^2h\Delta_A^{m,h}f,
\qquad T_0q=\widetilde\Delta_R(\Omega^{-3}q)|_{\mathscr I^+}.
$$

原投影就是 $T_0G_hf$。massless 注入性给 $\ker T_0=P_0C_0^\infty$；又有

$$
f=(1-m^2h\Delta_A)G_hf.
$$

若 $G_hf=P_0q$，则 $f=(P_0-m^2h)q$；反向相同。因此

$$
T_0G_hf=0\iff f\in P_{m,h}C_0^\infty. \tag{3.27}
$$

这才是非平凡性／injectivity 的正确陈述。正文28页“always converges to zero”一句若脱离后面的 adiabatic 讨论会误导：**固定紧支 cutoff 的映射并非恒零**，Theorem 3.7 正好排除了这种读法。

# 4. 全局 adiabatic limit 为零：不能交换 topology

在 Bondi conformal frame，源的 radiation map 具有简单 Radon 型公式

$$
T_0q(u,\omega)=-\frac1{4\pi}\int_{\mathbb R^3}q(u+\omega\cdot y,y)d^3y. \tag{3.34}
$$

整体负号由 $P_0=-\partial_t^2+\Delta$ 决定。原 Einstein-cylinder conformal factor 会多出 $\sqrt{1+u^2}$；作者再作 $\Omega_B=(\sec U)\Omega$ 才得到 Bondi affine $u$。两式不应混抄。作为归一化检验，将 Schwartz 源 $q=e^{-t^2-|y|^2}$ 代入得到
$T_0q=-\frac14\sqrt{\pi/2}\,e^{-u^2/2}$，已直接积分复算；此例检验公式常数，不代替紧支定理。

对边界 test function $\chi$，

$$
T_0^*\chi(t,y)=-\frac1{4\pi}\int_{S^2}\chi(t-\omega\cdot y,\omega)d\omega,
\qquad P_0T_0^*\chi=0.
$$

$T_0^*\chi$ 一般不紧支，但各阶导数在相关 null strip 内为 $O(r^{-1})$。令 $h_R\to1$ 且满足 Theorem 3.10 的受控 exhaustion：

$$
\sigma_\pm=t\pm\sqrt{1+|x|^2},\quad
K_R=\{|\sigma_\pm|\le R\},\quad
h_R=1\text{ on }K_R,\quad\operatorname{supp}h_R\subset K_{R+C},\quad0\le h_R\le1.
$$

常数 $C$ 与 $R$ 无关。$g_R=G_{h_R}f$ 在任意固定 compact 上最终等于

$$
g_\infty=f+m^2\Delta_A^mf=P_0\Delta_A^mf.
$$

关键不是把 $C^\infty_{\rm loc}$ 收敛草率搬过边界，而是证明 pairing 的 tail 也消失：

* massive homogeneous Fourier phase 在有界 advanced-time strip $v=t+r$ 内无有限动量驻点，因
  $|\nabla_\xi\varphi|\ge1-|\xi|/\sqrt{|\xi|^2+m^2}\gtrsim_m\langle\xi\rangle^{-2}$；
* 初始紧支数据给 Schwartz amplitudes，重复分部积分克服该多项式退化，得到 $\Delta_A^mf=O(r^{-N})$，任意 $N$；
* $g_R-g_\infty$ 的误差分成 massive tail 与 fixed-width switching shell；weighted $L^2$ estimate 和有限时间 energy estimate 控制它们。

所以

$$
\langle T_0g_R,\chi\rangle\longrightarrow
\langle P_0\Delta_A^mf,T_0^*\chi\rangle
=\langle\Delta_A^mf,P_0T_0^*\chi\rangle=0.
$$

Theorem 3.10 的结论是 **$\mathcal D'(\mathscr I^+)$ 收敛到零**，不是固定-cutoff energy norm 的一致极限，更不是任意不受控 cutoff 序列的定理。保辛映射弱极限为零不矛盾：辛 pairing 的连续性不由这一弱 topology 自动保证。

一处不影响 estimate 的符号问题：正文37页式(3.52)后，在其 $P_{m,R}w=F_R$ 约定下，实际

$$
E_R'=\langle(1-m^2h_R)w_R-F_R,\dot w_R\rangle,
$$

印刷式写了相反号。后面使用 $|E_R'|$ 的界，改正这一号不改变 Grönwall 结论；已从 PDE 代入独立核验。

# 5. 不取全局极限：time-slice 与保辛编码

取含一条完整 Cauchy surface 的 causally convex 全局双曲邻域 $N$，并取 past-compact switching $g$，满足 $0\le g\le1$、$g|_N=1$。须假设这类 $g$ 存在；$N=M$ 就不存在。这里 $g$ 是切换函数，不是度规。

对 $f\in C_0^\infty(N)$，

$$
G_gf=f+m^2g\Delta_A^{m,g}f=P_0\Delta_A^{m,g}f,
\qquad\Gamma_{g,N}[f]=T_0G_gf. \tag{3.57}
$$

因为 $\operatorname{supp}g\cap J^-(\operatorname{supp}f)$ 紧，$G_gf$ 紧支。对每个局部 observable，只要紧支 approximation 最终在相关因果区域与 $g$ 相同，结果就**最终恒定**；不是先前 $h_R\to1$ 全时空的 limit。

## 注入性与辛形式

若 $T_0G_gf=0$，则 $G_gf=P_0q$。由 advanced 唯一性 $q=\Delta_A^{m,g}f$，从而 $f=P_{m,g}q$；time-slice 把 triviality 搬回 $N$，而 $P_{m,g}|_N=P_m|_N$，故 $[f]=0$。

选位于两个源的过去的 Cauchy surface $\Sigma_-$，massless solution $\Delta_SG_gf$ 与 auxiliary massive solution $\Delta_S^{m,g}f$ 在其上有相同数据。两套相同形式的 KG symplectic current 各自守恒，因此

$$
\sigma_I(\Gamma_{g,N}[f],\Gamma_{g,N}[h])
=\sigma_0([G_gf],[G_gh])=\sigma_{m,g}([f],[h])=\sigma_{m,N}([f],[h]).
$$

这给 Theorem 3.13 的 injective symplectic map。这里不要求 massive field 在真实未来 null infinity 有非零 radiation trace。

## 同一个 image，不同的字典

紧支源上的逆非常实用：

$$
H_g=1-m^2g\Delta_A,\quad G_gH_g=H_gG_g=1,
\quad G_gP_{m,g}=P_0,\quad H_gP_0=P_{m,g}.
$$

例如令 $u=\Delta_Af$，则 $H_gf=P_{m,g}u$；advanced 唯一性给 $\Delta_A^{m,g}H_gf=u$，立刻得到 $G_gH_gf=f$。因此加上 time-slice 的满射，

$$
\operatorname{Im}\Gamma_{g,N}=\operatorname{Im}T_0. \tag{3.61}
$$

但 $\Gamma_{g_1,N}[f]$ 未必等于 $\Gamma_{g_2,N}[f]$。它们由
$U_{g_2g_1}=\Gamma_{g_2,N}\Gamma_{g_1,N}^{-1}$ 这一 image 上的辛自同构联系。两个 Cauchy 邻域用共同 switching 时，time-slice diagram 严格交换；用不同 switching 时，底部要插入 $U$。§3.17–3.18 的精确结论止于**线性 observables 的 CCR algebra**，不是已经证明整个 interacting Wick algebra 的同一交换图。

## 同样保辛，不同真空

拉回 distinguished boundary state 得

$$
\omega^g_{2,m,N}(f,h)=\omega_{2,0}(G_gf,G_gh).
$$

先在 switching 之前与 massless vacuum 比较，再传播 singularities，可得 Hadamard；time-slice 将其扩至全局 massive theory。它通常依赖 $g$，不是 massive Poincaré ground state。**观测量的全局极限与态的 adiabatic limit 是两个问题。**

独立数值例：单空间 Fourier mode，$p=1,m=0.7$，光滑 switching 在 $[-T,0]$ 从0到1，区间内取
$g=1/[1+\exp(1/s-1/(1-s))]$、$s=(t+T)/T$。从 massless 正频初值解 $q''+(p^2+m^2g)q=0$，再在 $t=0$ 分解成 massive 正负频：

| $T$ | $|\beta|^2$ | $|\alpha|^2-|\beta|^2-1$ |
|---|---:|---:|
| 1 | 0.008722030252 | $-2.0\times10^{-17}$ |
| 4 | 0.000794502649 | $-4.1\times10^{-17}$ |

30位 working precision、18位 accuracy／precision goals，最终计算无消息。这是 switching dependence 与保 Wronskian 的受控 mode 例证，不是全文无限维 Hadamard／收敛定理的数值证明。

# 6. Quartic stress tensor：用双线性形式重建而非照抄长 kernel

§4 取固定紧支 interaction，**不证明 $\lambda$ 级数收敛或其 adiabatic limit**。在一阶例子中作者采用

$$
V_h=\frac1{4!}\int h\phi^4
$$

（注意此例为正号，和质量势的负号不同）。自由 improved stress tensor 是

$$
T^{(\eta)}_{\mu\nu}=\nabla_\mu\phi\nabla_\nu\phi-\tfrac12g_{\mu\nu}(\nabla\phi)^2
+\eta g_{\mu\nu}\phi P_0\phi
+\tfrac16(G_{\mu\nu}+g_{\mu\nu}\Box-\nabla_\mu\nabla_\nu)\phi^2.
$$

$\eta=1/3$ 是作者采用的 quantum conservation prescription；该选择及 trace anomaly 的一般证明来自 Moretti，不是本次重新推导的量子重整化定理。xAct 独立展开验证，$T^{(1/3)}_{\mu\nu}=B_{\mu\nu}(\phi,\phi)$，其中定义对称双线性形式

$$
\begin{aligned}
B_{\mu\nu}(a,b)={}&\tfrac13(\nabla_\mu a\nabla_\nu b+\nabla_\nu a\nabla_\mu b)
-\tfrac16g_{\mu\nu}\nabla_\rho a\nabla^\rho b\\
&+\tfrac16(G_{\mu\nu}-g_{\mu\nu}R/3)ab
+\tfrac13g_{\mu\nu}(a\Box b+b\Box a)
-\tfrac16(a\nabla_\mu\nabla_\nu b+b\nabla_\mu\nabla_\nu a).
\end{aligned}
$$

同一 xAct 计算给一般 off-shell trace
$g^{\mu\nu}T^{(\eta)}_{\mu\nu}=(1+4\eta)\phi P_0\phi$，on shell 为零；这与 quantum trace anomaly 不是同一个命题。

## Wick combinatorics 与 classical／quantum split

对 $K=H_F$ 或 $H$，用同一 renormalized prescription 理解所有重合分布乘积，则

$$
\begin{aligned}
V_h\star_K T_f={}&V_hT_f
+\frac\hbar3\int h(x)f(y)\phi(x)^3 B^{(y)}_{\mu\nu}(K(x,y),\phi(y))\\
&+\frac{\hbar^2}{2}\int h(x)f(y)\phi(x)^2 B^{(y)}_{\mu\nu}(K(x,y),K(x,y)).
\end{aligned}
$$

一条 contraction 的组合系数是 $4\times2/4!=1/3$，两条是 $\binom42\binom22 2!/4!=1/2$；已用一般二次 jet polynomial 的 contraction exponential 精确核验。$H_F-H=i\Delta_A$，故

$$
\mathcal R_{\lambda V_h}(T_f)
=T_f-\frac\lambda3\int h f\phi(x)^3B(\Delta_A(x,\cdot),\phi)
+\frac{i\lambda\hbar}{2}\int h f\phi(x)^2
[B(H_F,H_F)-B(H,H)]+O(\lambda^2).
$$

第一项正是 classical retarded variation $\delta\phi(y)=-\lambda\int\Delta_R(y,x)h(x)\phi(x)^3/6$ 代入二次 $T$ 的结果。第二项是 order $\lambda\hbar$ 的量子项，涉及 diagonal extension；**本次核验的是组合系数、张量结构、classical limit，不是全部分布乘积的具体重整化值。**

把每个场腿换成 $E(z,x)$ 并完全对称化，即得到边界四腿和两腿 kernel。例如四腿系数可直接写成

$$
-\frac\lambda3\operatorname{Sym}_{z_1\ldots z_4}
\int h(x)f(y)E(z_1,x)E(z_2,x)E(z_3,x)
B^{(y)}_{\mu\nu}(\Delta_A(x,y),E(z_4,y)).
$$

这里采用“直接乘 $\phi^k$ 的 coefficient kernel”约定；若改用 Taylor kernel $F^{(k)}(0)$，必须乘 $k!$，再由 $\Gamma$ 的 $1/k!$ 抵消。这样避免正文在几种 kernel 记号间切换造成的归一化歧义。

## 不可照抄的两处具体冲突

PDF与 TeX 均确认，不只是文字提取错误：

* 式(4.18)，正文50–51页，四腿 $F_4$ 的首两项写成 $-2\nabla\Delta_A\nabla\delta/3$，但(4.12)、(4.15)及投影后的(4.21)要求正号；mixed component 在 $g_{\mu\nu}=0$、二阶导数为零时，所需 $2B$ 系数是 $+2/3$，印刷为 $-2/3$。同组 metric-gradient 项符号也随之冲突。
* 式(4.19)，正文51页，$F_2$ 中 metric-gradient 差的系数为 $-1/3$，而 $B(K,K)$、(4.13)及(4.22)对应 $-1/6$。不能同时成立。

因此保留其“classical 四腿＋quantum 两腿、边界非局域”结构结论，但使用数值系数时应从上述 $B$ 式重建。本文没有依赖这些冲突式得到 §3 的结论。

有限重整化同样是从 bulk 继承：例如 $\widetilde\Phi_f^2-\Phi_f^2=\int f(c_1m^2+c_2R)\mathbf1$，unit-preserving $\Gamma$ 将其送成相同系数乘 boundary identity。它不会因为到了 null infinity 自动消失；也不意味着像是 intrinsic local boundary counterterm。

# 7. 对当前量子化／区域 sewing 的输入与边界

与本地 [formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L85-L161>) 使用的 $E=G_R-G_A$ 对齐，此文 $\Delta_S=E$，相同 $(-,+,+,+)$ 号差与 $[O_1,O_2]=i\{O_1,O_2\}$。因此可在各自允许解空间上比较 KG 辛流／Peierls bracket；**不能将“同一个 boundary CCR image”当成同一 Hamiltonian 或同一正频 splitting**。

对 sewing 最有用的是 §3.17 的交换图：相同 switching 时，改变 Cauchy 邻域与边界编码相容；不同 switching 时必须插入显式辛自同构。它提供了“表示选择是额外数据”的可算标量例子。但这些邻域都含完整 Cauchy surface，**不是任意空间子区域的 edge-mode gluing 定理**，也未建立保持局域子代数的因子分解。

适用范围：固定背景 scalar，严格收敛／局部 massive 字典在 Minkowski；一般 curved background 与非线性自相互作用只给满足定义域条件的 formal coefficientwise construction。未独立复核引用的完整 Goursat／microlocal theorem 和全部重整化 extension；已重建其用途、支持条件与各证明的关键衔接，核验 factorial bound、质量 phase identity、Bondi normalization、stress 张量展开、Wick coefficients 及 switching mode 例子。高自旋推广、完整 interacting time-slice boundary algebra、canonical massive vacuum 的选择仍未解决。
