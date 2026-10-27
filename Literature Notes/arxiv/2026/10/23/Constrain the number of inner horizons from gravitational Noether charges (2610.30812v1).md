---
paper id: 2610.30812v1
title: Constrain the number of inner horizons from gravitational Noether charges
authors:
  - Jing-Peng Ye
  - Run-Qiu Yang
publication date: 2026-10-22T06:37:57Z
abstract: |-
  A central question in the study of black hole interiors is how matter and geometry constrain the number of horizons. In Einstein gravity, one known method is to use the ADM decomposition of the field equations to derive a differential inequality for the lapse, which then constrains the possible multiple inner horizons. We show that the same obstruction can instead be formulated through the Komar integral as a bulk-boundary balance of gravitational Noether charge. In higher-curvature gravity, a direct ADM analysis becomes more complicated, whereas the gravitational Noether charge naturally retains this bulk-boundary structure. We naturally apply the gravitational Noether charge analysis to Lovelock gravity. We introduce a TCC-like curvature condition and prove that, together with the thermodynamically motivated assumption of positive Wald entropy, it allows at most one nondegenerate inner Killing horizon inside a nondegenerate event horizon. This suggests that the obstruction reflects a compatibility between bulk gravitational response and horizon thermodynamics.
comments: "13 pages, 3 figures"
url: https://arxiv.org/abs/2610.30812v1
summary: "Lovelock 内视界阻碍的完整荷推导，并隔离原文双法向与 Stokes 符号不一致。"
tags: []
---

# Constrain the number of inner horizons from gravitational Noether charges

## 结果、用途与需要先修正的取向

在**静态、同一黑洞内部支、非退化且可延拓到 bifurcation surface 的视界、紧致光滑静态夹层**这些几何条件下，Lovelock 引力的
\[
\mathcal R_{\mu\nu}v^\mu v^\nu\geq0,\qquad S_{\rm W}[B_i]>0
\]
排除两个相邻内视界之间的静态夹层。这里 \(\mathcal R_{\mu\nu}=P_\mu{}^{\rho\sigma\lambda}R_{\nu\rho\sigma\lambda}\)，不是一般的 Ricci 张量。结论只约束所选 Killing 场及内部支上的非退化 Killing horizons；不等于一般黑洞没有 Cauchy horizon，也不证明强宇宙审查。

**原文的取向链不自洽。** Sec. II 的 \(\epsilon_{\mu\nu}=2n_{[\mu}s_{\nu]}\)、\(\xi=Nn\)、朝事件视界的 \(s\)，与其 \(\nabla_\mu\xi_\nu=\kappa\epsilon_{\mu\nu}\)、\(\kappa_1<0<\kappa_2\)、正号体积分不能同时成立。Sec. III C 实际写出的 \(\nabla^\mu\xi^\nu\epsilon_{\mu\nu}=2sDN\) 已经暴露此问题。下文先重构原文，再使用明确改过的 \(\bar\epsilon=2s_{[\mu}n_{\nu]}=-\epsilon\) 给出自洽证明。**Failed 是原文字面符号链；不是对经修正、带上述条件的定理给出反例。**

当前研究的直接用途是一个可完全展开的边界荷检验：同一个 \(P=\partial L/\partial R\) 分别控制体内通量与 bifurcation entropy，适合校准 CPS/Noether charge 的取向、归一化和 matter constraint 项。不能由此把 Noether 积分直接当作任意有限边界上的 Hamiltonian。

## 原文结构和记号

来源：[官方摘要](https://arxiv.org/abs/2610.30812v1)、[官方全文](https://arxiv.org/html/2610.30812v1)。本次读取官方 PDF 及完整 TeX；PDF 共 13 页，公式密集的第 2–11 页已渲染核对。以下以章节和公式标签定位，避免双栏提取的换行歧义。

| 部分 | 解决的问题 | 后续依赖 |
|---|---|---|
| I Introduction | 从已知 Einstein lapse 阻碍转向高曲率荷 | 动机，不是新增稳定性证明 |
| II Set up and geometric assumptions | 内部支、静态夹层、双分叉延拓、\(\kappa\) 取向 | 全部符号论证的前提 |
| III A lapse equation | \(D^2N=NR_{nn}\) 与最大值原理 | Einstein 结论的独立入口 |
| III B Komar balance | 两端荷与体内 Ricci 积分 | 原文字面取向须修正 |
| III C relation | lapse 与 Komar 是同一恒等式的局部/积分形式 | 暴露符号问题 |
| IV Komar to Noether charge | \(P,E,q_\xi\)，Lovelock 的 \(\nabla P=0\) | 高曲率推广 |
| V A/B entropy and balance | \(Q_B=\kappa S_W/(2\pi)\)、\(\nabla q=-\mathcal R\xi\) | 定理的两个符号来源 |
| VI TCC-like condition | trace reversal、正熵与矛盾证明 | 条件不能换成普通 matter SEC |
| VII Discussion | 极端、旋转、非 Lovelock 的限制 | 不属于已证明推广 |
| Appendix A | 从 metric variation 推出 current/potential | 必须保留 matter 的 constraint |
| Appendix B A/B/C | circular stationary metric；Einstein 正平方；Lovelock 不定号项 | 旋转推广仅有条件成立 |

设 \(D=d+1>2\)，signature \((-+\cdots+)\)，\(G=\hbar=c=1\)。\(\nabla\) 是 spacetime connection，\(D_a\) 是空间 \(h_{ab}\) 的 connection，\(n^2=-1\)，\(s^2=1\)，\(n\cdot s=0\)。\(N>0\) 在夹层内部，\(\xi=\partial_t=Nn\)。\(\mathcal D\) 是空间夹层，\(B_1\) 靠近事件视界，\(B_2\) 更深。\(s\) 始终朝事件视界，因此边界的 outward normals 是 \(s\)（\(B_1\)）及 \(-s\)（\(B_2\)）；写 \(B_1-B_2\) 时已经使用这一区别。

\(L_{\rm grav}\) **不含** \(1/(16\pi)\)，该因子在 action/charge 外部。\(P^{\mu\nu\rho\sigma}=\partial L_{\rm grav}/\partial R_{\mu\nu\rho\sigma}\)，\(\mathcal R_{\mu\nu}\) 是其与 Riemann 的 contraction；\(E_{\mu\nu}\) 为 gravitational Euler tensor。\(Q\) 是本文归一化的 gravitational Noether charge；Einstein 情形通常所称 Komar mass 还涉及不同归一化及维数因子，不能直接混同。

## 静态夹层为何是证明的全部几何输入

原文选择一个未来事件视界连通分支，由向内未来 null geodesics 确定内部支。设两个连续 simple zeros 之间恢复 \(\xi^2<0\)，则
\[
ds^2=-N^2dt^2+h_{ab}dx^adx^b,\quad
N^2|_{\partial\mathcal D}=0,\quad N^2|_{\mathring{\mathcal D}}>0.
\]
论证还需要 \(\overline{\mathcal D}\) 紧致、无额外边界、空间度规正定光滑；单说每个 horizon section 紧致，并不自动提供任意全局拓扑下的紧致夹层。

原文调用 Rácz–Wald 型局部 bifurcate extension：规则非退化 Killing horizon、常数非零 surface gravity 及适当 orbit/cross-section 条件。进一步假设同一 \(\mathcal D\) 可光滑完成到两端 \(B_i\)，\(\xi|_{B_i}=0\)。这一步是输入，不由本篇算出。退化视界没有这条可直接套用的 bifurcation construction。

原文以
\[
\xi^\nu\nabla_\nu\xi^\mu=\kappa\xi^\mu,\qquad
\xi\cdot l=-1,\qquad
\kappa=-\tfrac12l^\mu\nabla_\mu N^2
\]
跟踪向内穿越的 simple zeros，得到 \(\kappa_1<0<\kappa_2\)。这是给定 horizon branch/normalization 的符号，不是取绝对值后的 Hawking 温度。对 lapse 的空间导数，则 \(sDN|_{B_1}<0<sDN|_{B_2}\)。

### 必须区分的两套双法向

取原文 \(\epsilon=n\wedge s\)，直接计算给出
\[
\nabla^\mu\xi^\nu\epsilon_{\mu\nu}=2sDN,\qquad
\nabla_\mu\xi_\nu|_B=-(sDN)\epsilon_{\mu\nu}.
\]
因此若 \(\kappa\) 定义为 \(\nabla\xi\) 对这个 \(\epsilon\) 的系数，它是 \(-sDN\)，而不是原文要用的 \(sDN\)。相应原文定义的
\[
Q^\epsilon_B=-\frac1{16\pi}\int_B\nabla^\mu\xi^\nu\epsilon_{\mu\nu}dA
=-\frac1{8\pi}\int_BsDN\,dA
\]
满足
\[
Q^\epsilon_{B_1}-Q^\epsilon_{B_2}
=-\frac1{8\pi}\int_{\mathcal D}D^2N\,dV.
\]
这与原文 Sec. III B 的正号 balance 不一致。

本笔记的修正约定是 \(\bar\epsilon=s\wedge n\)。此时
\[
\nabla\xi|_B=\kappa\bar\epsilon,\quad
\kappa=sDN,\quad
\bar Q_B=\frac1{8\pi}\int_BsDN\,dA
=\frac{\kappa A_B}{8\pi}.
\]
于是 \(\bar Q_1-\bar Q_2=(8\pi)^{-1}\int D^2N\)，与所需 \(\kappa_1<0<\kappa_2\) 一致。另一种等价修复是保留原文 \(\epsilon\)，同时反转 \(\kappa\) 系数及 balance 的符号。**不能只改单独一个等式。**

## Einstein：最大值原理与荷积分

静态 \(K_{ab}=0\)。定义
\[
\rho=T_{\mu\nu}n^\mu n^\nu,\quad
\mathcal T_{ab}=h_a{}^\mu h_b{}^\nu T_{\mu\nu},\quad
T=-\rho+\mathcal T.
\]
约束与空间演化方程是
\[
{}^{(d)}R=16\pi\rho,\qquad
{}^{(d)}R_{ab}=N^{-1}D_aD_bN+
8\pi\left[\mathcal T_{ab}+\frac{h_{ab}}{d-1}(\rho-\mathcal T)\right].
\]
取迹消去空间 Ricci：
\[
D^2N=8\pi N\left(\rho+\frac{T}{d-1}\right)=NR_{nn}.
\]
后一个等号也可直接从静态 metric 算出；\(D^2N=NR_{nn}\) 本身是几何恒等式。场方程只负责把 \(R_{nn}\) 变成物质组合。

若普通 Einstein 方程中的总 stress tensor 满足 SEC，则 \(R_{nn}\geq0\)。若 cosmological constant 单列于几何端，需要重新计入它的贡献；不能说任意 \(\Lambda\) 下 matter SEC 都充分。因为
\[
D^2(N^2)=2N^2R_{nn}+2(DN)^2\geq0,
\]
而 \(N^2\) 在紧致边界为零，最大值原理排除内部 \(N^2>0\)。

积分形式在修正取向下为
\[
\frac{\kappa_1A_1-\kappa_2A_2}{8\pi}
=\frac1{8\pi}\int_{\mathcal D}NR_{nn}dV.
\]
左边严格负，右边非负。这不是独立于 lapse 的新物理机制，而是同一几何关系的 boundary representation。原文借此选择一个在 Lovelock 中仍有自然替代物的对象。

## \(L(g,R)\) 的变分、Noether potential 与 matter 项

原文 Sec. IV/Appendix A 使用
\[
\delta(\sqrt{-g}L)=\sqrt{-g}E_{\mu\nu}\delta g^{\mu\nu}
+\sqrt{-g}\nabla_\mu\delta v^\mu,
\]
\[
\delta v^\mu=
2P^{\beta\nu\mu\alpha}\nabla_\nu\delta g_{\alpha\beta}
-2\delta g_{\alpha\beta}\nabla_\nu P^{\beta\mu\nu\alpha}.
\]
这是只含 \(g,R\)、无 \(\nabla R\) 的 action。对于 \(\delta_\xi g=\mathcal L_\xi g\)，用 \(P\) 的 Riemann 对称性和微分交换式整理得到
\[
J_\xi^\mu=\delta_\xi v^\mu-\xi^\mu L
=2E^\mu{}_\nu\xi^\nu-2\nabla_\nu q_\xi^{\mu\nu},
\]
\[
q_\xi^{\mu\nu}
=P^{\mu\nu\alpha\beta}\nabla_\alpha\xi_\beta
+2\xi_\alpha\nabla_\beta P^{\mu\nu\alpha\beta}.
\]
这里的 \(J,q\) 还没有 action 外部 \(1/(16\pi)\)；微分形式 \(Q\) 与此张量还相差 Hodge/取向约定。

**Appendix A 的 “on shell \(E_{\mu\nu}=0\)” 仅对真空 gravitational equation 成立。** 本文主文的 matter-coupled 方程是 \(E_{\mu\nu}=8\pi T_{\mu\nu}\)。只取 gravitational current 时，不能在一般 matter background 删除 \(2E\xi\)；若使用 total action/current，必须连同 matter variation、matter constraint 和可能的 matter charge 一起组织。该限制不破坏下一节直接由 Killing identity 推出的 Lovelock \(q\) divergence，因为后者不需要置 \(E=0\)。

这也说明本篇没有自动给出 finite-boundary CPS Hamiltonian：
\[
\delta H_\xi=\int_{\partial\Sigma}(\delta Q_\xi-i_\xi\theta)
\]
还需 fixed/field-dependent \(\xi\)、boundary conditions、integrability、flux 及 corner terms 的说明。本文计算的是 fixed-background charge balance。

## Lovelock：曲率响应为何同时进入体内与边界

取
\[
L_{\rm grav}=\sum_{m=0}^{K}c_mL_m,\qquad
L_m=\frac1{2^m}
\delta^{\mu_1\nu_1\cdots\mu_m\nu_m}_{\rho_1\sigma_1\cdots\rho_m\sigma_m}
\prod_{j=1}^mR^{\rho_j\sigma_j}{}_{\mu_j\nu_j}.
\]
\(L_0=1,L_1=R,L_2=R_{\mu\nu\rho\sigma}^2-4R_{\mu\nu}^2+R^2\)。\(c_0\) 可编码 \(\Lambda\)；\(c_1=1\) 时 Einstein 归一化标准。高于维数允许阶的项消失，临界维数项可拓扑化，但仍可能改变 entropy，不能任意删掉而不追踪边界。

Lovelock 特殊性是
\[
\nabla_\mu P^{\mu\nu\rho\sigma}=0,\quad
E_{\mu\nu}=\mathcal R_{\mu\nu}-\tfrac12Lg_{\mu\nu},\quad
q^{\mu\nu}=P^{\mu\nu\rho\sigma}\nabla_\rho\xi_\sigma.
\]
Einstein 极限
\[
P_{\rm EH}^{\mu\nu\rho\sigma}=\tfrac12
(g^{\mu\rho}g^{\nu\sigma}-g^{\mu\sigma}g^{\nu\rho})
\]
使 \(q=\nabla^\mu\xi^\nu\)，\(\mathcal R_{\mu\nu}=R_{\mu\nu}\)。

对于 Killing 场，先利用 \(\nabla P=0\)，再用 Killing 二阶导数与 Riemann cyclic identity：
\[
\nabla_\mu q^{\mu\nu}
=P^{\mu\nu\rho\sigma}\nabla_\mu\nabla_\rho\xi_\sigma
=-\mathcal R^\nu{}_\lambda\xi^\lambda.
\]
注意导数作用在第一个指标；交换 \(q\) 两指标会变号。不能把该式与原文 Stokes 取向混着使用。

在修正的双法向约定下定义
\[
\bar Q_\xi[B]=-\frac1{16\pi}\int_Bq^{\mu\nu}\bar\epsilon_{\mu\nu}dA,\qquad
S_W=-\frac18\int_BP^{\mu\nu\rho\sigma}
\bar\epsilon_{\mu\nu}\bar\epsilon_{\rho\sigma}dA.
\]
双法向出现两次，所以 entropy 不受整体反向影响；charge 出现一次，必须反向。由 \(\nabla\xi=\kappa\bar\epsilon\)：
\[
\bar Q_\xi[B]=\frac{\kappa}{2\pi}S_W[B].
\]
Lovelock bifurcation surface 上其内禀形式为
\[
S_W[B]=\frac14\sum_{m=1}^Kmc_m
\int_B\widetilde L_{m-1}dA.
\]
该内禀化利用 bifurcation 几何，不能直接当作一般动态截面的完整 entropy functional。

两端相减：
\[
\boxed{\frac{\kappa_1S_{W1}-\kappa_2S_{W2}}{2\pi}
=\frac1{8\pi}\int_{\mathcal D}N\mathcal R_{nn}dV.}
\]
这条框中式采用的是 \(\bar\epsilon\)，不是原文未修正的 \(\epsilon\)。

## 条件的强弱与定理的准确范围

齐次性给出 \(P_{(m)}R=mL_m\)，因此
\[
\mathcal R=\sum_mmc_mL_m,\qquad
\sum_m\left(m-\frac{d+1}{2}\right)c_mL_m=8\pi T.
\]
消去 \(L\) 得到原文的 trace-reversed equation：
\[
\mathcal R_{\mu\nu}=8\pi\left(T_{\mu\nu}-\frac{Tg_{\mu\nu}}{d-1}\right)
+\frac{g_{\mu\nu}}{d-1}\sum_m(m-1)c_mL_m.
\]
对单位 timelike \(n\)：
\[
\mathcal R_{nn}=8\pi\left(T_{nn}+\frac{T}{d-1}\right)
-\frac1{d-1}\sum_m(m-1)c_mL_m.
\]
所以 matter SEC 不控制最后一项。对 \(c_0=-2\Lambda\)，其中还包含 \(-2\Lambda/(d-1)\)。论文的 TCC-like condition 是额外曲率约束；把它改写成“Lovelock 中 SEC 足够”是错误的。

原文要求所有 timelike \(v\) 满足 \(\mathcal R_{vv}\geq0\)；实际这次证明只使用所选片的 \(\mathcal R_{nn}\geq0\)，甚至足够的是加权积分非负。强条件便于几何表述，但并非证明必要条件。另一方面，\(S_{Wi}>0\) 是独立假设；Einstein 的 \(A/4>0\) 自动成立，Lovelock 不自动成立。例如
\[
S_W^{\rm EGB}=\frac14\int_B(1+2\alpha\widetilde R)dA.
\]
\(\alpha\geq0,\widetilde R\geq0\) 是充分条件；\(\widetilde R<0\) 时必须检查积分，不能据面积正就宣布 entropy 正。

完整矛盾链是：
\[
\text{规则紧致静态夹层}
\Rightarrow \kappa_1<0<\kappa_2
\overset{S_{Wi}>0}{\Rightarrow}\bar Q_1-\bar Q_2<0,
\]
\[
\nabla P=0,\ \text{Killing identity},\ \text{一致取向}
\Rightarrow\bar Q_1-\bar Q_2=\frac1{8\pi}\int N\mathcal R_{nn}
\overset{\mathcal R_{nn}\geq0}{\geq}0.
\]
从排除夹层再推出“至多一个内视界”，还需要同一内部支上相邻 simple crossings 的静态/非静态交替结构。任意拓扑、额外边界、奇异面或退化零点不包含在这一推论内。

## 旋转附录：为什么 Einstein 有正平方而 Lovelock 没有

Appendix B 限制在 stationary axisymmetric 且具有 \(t\)-\(\phi\) reflection/circularity 的 metric：
\[
ds^2=-N^2dt^2+\gamma^2(d\phi-\omega dt)^2+q_{AB}dx^Adx^B.
\]
\(\xi=\partial_t,\psi=\partial_\phi\)，所有系数与 \(t,\phi\) 无关，\(\psi\) 具有闭合 spacelike orbits。空间 shift 是 \(\beta=-\omega\psi\)，
\[
\xi=Nn-\omega\psi,\quad
K_{ab}=\frac1{2N}(\psi_aD_b\omega+\psi_bD_a\omega),\quad K=0.
\]
各 horizon generator \(\chi_i=\xi+\Omega_i\psi\) 不同。引入 \(k=\xi+\omega\psi=Nn\)，在视界 \(\omega=\Omega_i\)，但 **\(k\) 一般不是 Killing**。实际积分中用的是
\(\nabla\xi+\omega\nabla\psi\)，不能不加说明地替换为 \(\nabla k\)，因为后者还有 \((d\omega)\psi\)。

Einstein 中额外项
\[
\mathcal I_{\rm rot}=n_\mu(\nabla_\nu\omega)\nabla^\mu\psi^\nu
=\psi^aK_{ab}D^b\omega
=\frac{\gamma^2}{2N}q^{AB}\partial_A\omega\partial_B\omega\geq0.
\]
在修正取向下
\[
\frac{\kappa_1A_1-\kappa_2A_2}{8\pi}
=\frac1{8\pi}\int_{\mathcal D}
\left(NR_{nn}+\mathcal I_{\rm rot}\right)dV,
\quad D^2N=NR_{nn}+\mathcal I_{\rm rot}.
\]
这在 circular metric、良好完成的 spacelike slice、规则 horizon angular velocities、TCC 及相同 crossing 假设下保留符号矛盾；不是对所有 stationary metric 的无条件定理。

Lovelock 的对应项是
\[
\mathcal I_{\rm rot}
=n_\mu(\nabla_\nu\omega)P^{\mu\nu\rho\sigma}\nabla_\rho\psi_\sigma.
\]
利用
\[
\nabla_\rho\psi_\sigma=D_\rho\psi_\sigma
-n_\rho K_{\sigma a}\psi^a+n_\sigma K_{\rho a}\psi^a
\]
化为
\[
\mathcal I_{\rm rot}
=n_\mu P^{\mu\nu\rho\sigma}(\nabla_\nu\omega)D_\rho\psi_\sigma
-\frac{\gamma^2}{N}n_\mu n_\rho P^{\mu\nu\rho\sigma}
(\nabla_\nu\omega)(\nabla_\sigma\omega).
\]
Einstein 中第一项零，\(n_\mu n_\rho P_{\rm EH}^{\mu\nu\rho\sigma}=-h^{\nu\sigma}/2\) 使第二项正。高曲率 \(P\) 没有这种一般正性，两个项都不能删除。因此 static theorem 的两个条件不能直接证明 rotating Lovelock 版本。

## 独立计算与证据边界

**Verified / Checked**

- xAct components：任意 \(N(r)\) 的 \(ds^2=-N(r)^2dt^2+dr^2+dy^2+dz^2\)，算出 \(R_{nn}=N''/N\)、\(\epsilon^2=-2\)、\(\nabla^\mu\xi^\nu\epsilon_{\mu\nu}=2N'\)、\(\kappa_\epsilon=-N'\)、\(Q^\epsilon/A=-N'/(8\pi)\)。
- 令 \(N=\sin r\)、\(0<r<\pi\)，横向取单位面积 torus，\(B_1:r=\pi,B_2:r=0,s=+\partial_r\)。原文字面 \(Q^\epsilon_1-Q^\epsilon_2=1/(4\pi)\)，其正号体积分为 \(-1/(4\pi)\)，差 \(1/(2\pi)\neq0\)。修正 Stokes 符号后 residual \(0\)。本 metric 的 \(R_{nn}=-1\) 违反 TCC，因此只检验恒等式，不是定理反例。
- xAct components：五维平面静态 metric \(ds^2=-F(r)dt^2+dr^2/F(r)+r^2d\mathbf y_3^2\)，任意 \(F(r)\)，构造 Gauss–Bonnet \(P\)；全部 125 个 \(\nabla_\mu P^{\mu\nu\rho\sigma}\) 分量为零，\(P_{\rm GB}R-2L_{\rm GB}=0\)，全部 5 个 \(\nabla_\mu q^{\mu\nu}+\mathcal R^\nu{}_\lambda\xi^\lambda\) 分量为零。这是非平凡 metric family 的 exact component check，不是全维数抽象恒等式的 CAS 证明。
- xAct components：四维 circular family \(q_{AB}dx^Adx^B=dr^2+dz^2\)，任意 \(N(r),\gamma(r),\omega(r)\)；精确计算 \(\mathcal I_{\rm rot}=\gamma^2\omega'^2/(2N)\)，以及 \(D^2N-NR_{nn}-\mathcal I_{\rm rot}=0\)。
- Mathematica：Lovelock trace equation 到 trace-reversed equation 的系数恒等式 residual \(0\)；Einstein \(P\) 双法向 contraction 给出 \(S_W=A/4\)。初始 trace 测试脚本错误地多加了一个 \(L/2\)，其非零输出是测试表达式错误；修正表达式后为零，未作为源文失败。

**Failed**

- Sec. II–III 与 Sec. V 的**原文取向组合**：特别是 (5)–(6)、surface-gravity signs、Komar 定义与正号 balance，以及 III C 的显式 contraction 不能同时为真。上面的 exact family 展示矛盾。后续论证使用本笔记明确修正的 \(\bar\epsilon\)；不依赖该失败链。
- Appendix A 的 “\(E=0\) on shell” 若应用于主文的一般 matter-coupled **gravitational current**，缺少 \(2E\xi=16\pi T\xi\) 项；只在真空或重新纳入 total matter constraints 时适用。

**Assumptions**

规则非退化 horizons、选定 future/internal branch 与 normalization、紧致无额外边界的 completed slice、Lovelock action、\(N>0\)、指定 curvature sign 与正 Wald entropy。符号检查使用上列 Riemann convention；没有取绝对值隐藏 \(\kappa\) 的方向。

**Source-derived / Not independently verified**

Rácz–Wald extension 的全部全局假设及源文引用定理；一般 Lovelock 的内禀 entropy reduction；所有维数/所有 topology 的全局 horizon counting；高曲率旋转项在具体黑洞分支上的符号；动态 entropy、mass inflation、stability、generic non-Lovelock extension。本文未构造 CPS phase space 或证明 Hamiltonian integrability。

**Blocked**

没有不可修复的检索或计算工具阻塞。原文取向缺陷已隔离且给出一致替代推导；它需要作者澄清，但不妨碍记录可复用的局部结构。检查代码及原始结果保留在本次临时工作目录的 H3 下（orientation、gauss-bonnet、rotation、trace-corrected），未写入 vault。

## 可复用的阅读路径

先读 III A 得到无需 entropy 的 Einstein 阻碍，再读本笔记的取向修正，最后接 IV–VI 的 \(P\to q\to S_W\to\) balance。Appendix A 用于校对 current 与 constraint；Appendix B 用于识别旋转后究竟多出什么项。实际移植到区域 CPS 时，最值得保留的是
\[
P^{\mu\nu\rho\sigma},\quad q_\xi^{\mu\nu},\quad
\nabla_\mu q_\xi^{\mu\nu},\quad
P^{\mu\nu\rho\sigma}\epsilon_{\mu\nu}\epsilon_{\rho\sigma},
\]
连同同一套 orientation，而不是直接引用“荷差非负”这句话。
