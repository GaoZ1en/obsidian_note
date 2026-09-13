---
paper id: 2606.27241v2
title: "Characteristic Lightcone Sources in SO(1,3) Yang-Mills Theory"
authors:
  - "Kumar, Kaushlendra"
publication date: 2026-06-25
abstract: |-
  The SO(1,3)-symmetric reduction of Yang-Mills theory on Minkowski space yields a stress-energy tensor that is smooth on the timelike and spacelike Lorentz orbits but diverges on the lightcone that separates the two regions. We ask what consistent source this singularity represents. A natural cure is a real shift of the singular denominator. This does not regularize the source but instead moves the singular support onto a hyperboloid off the cone, where the corresponding source cannot remain both conserved and traceless. Our analysis shows that the displaced support cannot retain both properties, whereas a completion on the lightcone can. The matching condition fixes this completion up to one parameter $\chi$, which has a causal interpretation as the relative weight of the future and past cones. On regular constant-time slices, the completed source carries zero total four-momentum, so its physical content is a residual causal charge inferred from its curvature response.
comments: "5 pages, 1 figure; v2: characteristic collar interpretation and improvement as double divergence added, matching published version"
url: https://arxiv.org/abs/2606.27241v2
summary: "重建有限位移的守恒/无迹冲突、conormal no-go 与光锥 collar；实主值分布测试否定 Eq. (26)，因此固定总 cone charge 与全局无迹 matching 失败。"
tags: []
---

# Characteristic Lightcone Sources in SO(1,3) Yang-Mills Theory

## 结论与阅读定位

**Incorrect as stated:** 在通常的实 Minkowski principal-value 分布定义下，v2 Eq. (26) 的 $\Box\mathrm{PV}(1/s)=-4\pi^2\delta^{(4)}$ 不成立。由此推出的 $\alpha_++\alpha_-=\pi C$、全局无迹的 $\sigma_\chi$ 和固定总 cone charge 不能作为已证明结果使用。本次用平滑径向测试函数作了独立反证，并以 Mathematica 核准其中的主值角积分。

论文仍提供两个可用对象：有限实位移破坏 conservation/tracelessness 同时成立的显式诊断；非特征面上 homogeneous wave defect 的最高横向阶 obstruction。光锥 collar 上的 $q(\Omega)/v$ 推导也可在其局部范围内复用。必须把这些局部结论与 cone tip 的错误 matching 分开。

本篇是经典非紧 gauge group 的特定对称 sector 所得 stress tensor 的分布延拓研究；没有解决一般 Yang–Mills 特征初值问题，也没有构造 symplectic charge。

## 来源、章节树与阅读顺序

固定版本 [2606.27241v2](https://arxiv.org/abs/2606.27241v2)，阅读 [6 页 PDF](https://arxiv.org/pdf/2606.27241v2) 和 [完整 TeX 源码](https://arxiv.org/src/2606.27241v2)。单个主体文件 SO13_char_PLB_revised.tex；正文及 Appendix A 全部覆盖。视觉确认 PDF 第 3 页的 Eq. (26)–(31)、第 5 页的 collar 与 Appendix A 分布式；其余公式由 TeX 与提取文本交叉定位。

| 章节 | 目的、依赖与阅读用途 |
|---|---|
| 1 Introduction | 引入 SO(1,3) 轨道约化、机械能、原始 tensor 与 improvement generator |
| 2 Finite displacement and non-null support | 比较 bare/conserved shift；给出 conormal obstruction；必读 |
| 3 Completion on the null cone | 区分去尖点与全空间恒等式；核心风险在 Eq. (26) |
| 4 Observable content | 零四动量、curvature pairing、future/past probes、局部 collar；须带着 matching 的失败阅读 |
| 5 Conclusion and outlook | 动态 near-tip 条件与分布曲率 admissibility 尚待解决 |
| Appendix A | pullback、root Jacobian、slice cutoff、任意有限横向阶 no-go；技术核心 |

**How to read this long paper:** 本文虽短但分布推导密集。先读 §2 与 Appendix A 的 local no-go，再读 §3 并对照本笔记的主值测试，最后读 §4。§1 的既有 YM 约化作为背景；不要因摘要中的“causal charge”先接受全局 matching。

## 1. 理论、符号与原始 stress tensor

$$
\eta=\mathrm{diag}(-,+,+,+),\qquad
s=x\cdot x=-t^2+r^2,\qquad
\ell=\frac12\log|s|,\qquad
\Box=-\partial_t^2+\nabla^2.
$$
timelike 内部的轨道是 $H^3=\mathrm{SO}(1,3)/\mathrm{SO}(3)$，spacelike 外部是 $\mathrm{dS}_3=\mathrm{SO}(1,3)/\mathrm{SO}(1,2)$。严格光锥轨道为非 reductive 的 SO(1,3)/ISO(2)，文章引用的严格不变场在此为 pure gauge。单 profile $\phi(\ell)$ 的机械能
$$
\epsilon=\frac12\dot\phi^2-\frac12(\phi^2-1)^2,\qquad C=\epsilon/g^2
$$
给出锥外/锥内同一 tensor：
$$
T_{\mu\nu}=C\frac{4x_\mu x_\nu-\eta_{\mu\nu}s}{s^3}.
$$
该公式取自作者此前的约化工作，本次未从完整 noncompact YM action 重新求解 profile。特别是 $\epsilon=0$ 的 kink branch 在此 stress tensor 问题中平凡；不能由此说其 gauge field 必然平凡。

它有纯 improvement 形式
$$
\mathcal I_{\mu\nu}=\eta_{\mu\nu}\Box-\partial_\mu\partial_\nu,\qquad
\sigma_0=-\frac C{2s},\qquad T_{\mu\nu}=\mathcal I_{\mu\nu}\sigma_0,
$$
$$
U_{\rho\mu\nu}[\sigma]
=\eta_{\mu\nu}\partial_\rho\sigma-\eta_{\rho\nu}\partial_\mu\sigma,
\quad T_{\mu\nu}=\partial^\rho U_{\rho\mu\nu},\quad
T^\mu{}_\mu=3\Box\sigma.
$$
$U_{\rho\mu\nu}=-U_{\mu\rho\nu}$ 使分布意义下的 conservation 自动成立；tracelessness 是额外的 homogeneous wave equation。这里的 improvement potential 不是 CPS presymplectic potential $\theta$，不应混用名称。

## 2. 有限实位移：可复用的失败诊断

令 $A_{\mu\nu}=4x_\mu x_\nu-\eta_{\mu\nu}s$，
$$
T^{(a)}_{\mu\nu}
=C\frac{A_{\mu\nu}+a\Delta\eta_{\mu\nu}}{(s+\Delta)^3}.
$$
直接微分给出
$$
T^{(a)\mu}{}_\mu=\frac{4aC\Delta}{(s+\Delta)^3},\qquad
\partial^\mu T^{(a)}_{\mu\nu}
=\frac{(18-6a)C\Delta x_\nu}{(s+\Delta)^4}.
$$
因此 $C\Delta\ne0$ 时，$a=0$ 选择无迹，$a=3$ 选择守恒。后者对应
$$
\sigma_\Delta=-\frac C{2(s+\Delta)},\qquad
\Box\sigma_\Delta=\frac{4C\Delta}{(s+\Delta)^3}.
$$
**Checked:** xAct 服务的 Wolfram kernel 中以明确 Minkowski metric 逐分量检查 trace、四个 divergence、16 个 improvement tensor 分量和 scalar wave equation；所有差值为零。这首先是离开 $s+\Delta=0$ 的有理恒等式；若在 shell 上延拓，必须说明所用 finite-part prescription。

作者还代入一般 conformal improvement 公式，取 $L_{\mu\nu}=3\eta_{\mu\nu}\sigma_\Delta$，得到 $\Delta T=-\mathcal I\sigma_\Delta$。它把 tensor 整体消掉，不能保留原来非零锥外 tensor。这说明该种再 improvement 无法达到作者的目标，并非禁止所有带额外场的理论构造。

位移没有 regularize：
$$
\Sigma_\Delta=\{s=-\Delta\},\qquad
n_\mu=\partial_\mu s=2x_\mu,\qquad n^2=-4\Delta.
$$
非零 $\Delta$ 下 carrier 非特征。正 $\Delta$ 是 future/past 两张 timelike-radius hyperboloid；负 $\Delta$ 的几何不同，但主符号同样不为零。

## 3. Appendix A 的 conormal no-go 到底证明什么

设 $\zeta=0$ 是二阶算子 $P$ 的非特征面，适配坐标中
$$
P=A(\zeta,y)\partial_\zeta^2+\text{较低横向阶},\qquad A(0,y)\ne0.
$$
局部支撑在该面上的分布有有限展开
$$
U=\sum_{n=0}^N a_n(y)\delta^{(n)}(\zeta).
$$
$PU$ 的最高 $\delta^{(N+2)}$ 系数只有 $A(0,y)a_N$，因此 homogeneous equation 迫使 $a_N=0$，逐阶下降得到 $U=0$。这里“homogeneous”指齐次方程 $PU=0$，不是额外的缩放齐次假设。

对 $\zeta=s+\Delta$，最高系数 $-4\Delta$ 非零；直接例子
$$
\Box\delta(s+\Delta)
=8\delta'(s+\Delta)+4s\delta''(s+\Delta)
=-4\Delta\delta''(s+\Delta).
$$
该 no-go 对 locally finite transverse-order、支撑在光滑非特征面上的 homogeneous defect 有效。它不禁止带 forcing 的 shell、延伸到邻域的解、非线性 YM 系统的其他 sector 或额外 edge fields。它也不独立确定锥尖的 contact term。

## 4. null cone：局部恒等式与 tip 必须分开

定义
$$
\delta_\pm(s)=\Theta(\pm t)\delta(s),\qquad
\langle\delta_\pm(s),f\rangle
=\frac12\int_0^\infty\rho\,d\rho\,d\Omega\,f(\pm\rho,\rho\hat n).
$$
root Jacobian 是 $1/(2r)$，不是 $\delta(t\mp r)$ 本身。去尖点空间 $M^\times$ 上 $ds\ne0$，合法 pullback 给出
$$
\partial_\mu\partial_\nu\delta_\pm(s)
=2\eta_{\mu\nu}\delta_\pm'(s)+4x_\mu x_\nu\delta_\pm''(s),
\qquad \Box\delta_\pm(s)=0.
$$
所以 $\alpha_\pm\mathcal I\delta_\pm$ 在 $M^\times$ 上守恒、无迹。全空间的 Green identity 则是
$$
\Box\delta_\pm(s)=-2\pi\delta^{(4)}(x),
\qquad G_{\rm ret/adv}=-\delta_\pm(s)/(2\pi).
$$
这与 mostly-plus 的 $\Box$ 符号相容；$\delta_+-\delta_-$ 是全局 homogeneous solution。

## 5. Eq. (26) 的独立分布核验及 matching 的失败

作者在 Appendix A 说明，Eq. (26) 来自欧氏
$\Delta_E(1/x_E^2)=-4\pi^2\delta^{(4)}$ 的 continuation。但实 Lorentzian $\mathrm{PV}(1/s)$ 不能保持同一个实接触项。通常的主值分布满足
$$
\Box\mathrm{PV}(1/s)=0.
$$
下面给出直接检验，而不是仅凭类比改符号。

取 $f(x)=F(y)$，$y=t^2+r^2$，$F$ 光滑紧支撑且 $F(0)=1$。在 Euclidean 极坐标 $t=\rho q$、$r^2=\rho^2(1-q^2)$ 中，
$$
s=\rho^2(1-2q^2),\qquad
d\Omega_3=4\pi\sqrt{1-q^2}\,dq.
$$
**Checked:** Mathematica 的主值积分给出
$$
\mathrm{PV}\int_{-1}^1
\frac{\sqrt{1-q^2}}{1-2q^2}\,dq=\frac\pi2.
$$
因此该主值角积分乘 $4\pi$ 等于 $2\pi^2$，恰好等于 $S^3$ 的体积。另一方面
$$
\Box F(y)=4F'(y)+4sF''(y).
$$
由分布导数及上述角积分，
$$
\left\langle\Box\mathrm{PV}(1/s),F(y)\right\rangle
=4\pi^2\int_0^\infty[F'(y)+yF''(y)]\,dy=0.
$$
最后一步是 $[yF'(y)]_0^\infty=0$。作者 Eq. (26) 对同一个测试函数给出 $-4\pi^2$，明确矛盾。辅助 Gaussian 计算也得到零；其中 Mathematica 精确积分 $\int_0^\infty r e^{-2r^2}\operatorname{erfi}(r)\,dr=1/4$，与该主值角积分一致。

这个反例已经足以否定印刷恒等式。进一步，标准 scaling-degree-two 的主值延拓在尖点没有任意 $\delta^{(4)}$ 添加自由；其 wave operator 离开尖点为零，可能的 Lorentz-invariant homogeneous contact 只能是 $\delta^{(4)}$，上述测试把其系数固定为零。若另定义带 cone term 的“PV”，必须明确给出定义，它便不再是本文写下的通常实主值 core。

因此对作者 ansatz
$$
\sigma=-\frac C2\mathrm{PV}(1/s)
+\alpha_+\delta_+(s)+\alpha_-\delta_-(s)
$$
正确的全局结果是
$$
\Box\sigma=-2\pi(\alpha_++\alpha_-)\delta^{(4)}(x).
$$
保留标准主值 core 并要求全局无迹，得到 $\alpha_++\alpha_-=0$，而非 $\pi C$。作者选择 $\alpha_\pm=\frac{\pi C}{2}(1\pm\chi)$ 时，
$$
\Box\sigma_\chi=-2\pi^2 C\delta^{(4)}(x),\qquad
T^\mu{}_\mu=-6\pi^2 C\delta^{(4)}(x).
$$
这两个系数已作符号代入核验。故其 tensor 仍因 improvement 而守恒，却在尖点有非零 trace。**Failed:** 全局守恒且无迹的主结论、固定总 cone strength 和以其非零总和定义的归一化 $\chi$。

在相同二参数 ansatz 内，合法 homogeneous cone 添加项可写成 $a(\delta_+-\delta_-)$。这是一条对 ansatz 的修正，不是已经从完整 YM 动态构造出来的唯一延拓；尤其不能把 $a$ 的值从失败的 matching law 中继承下来。

## 6. 零动量和 curvature response 的剩余内容

对任何既定 improvement scalar，
$$
T^{00}=-\nabla^2\sigma,\qquad
T^{0i}=\partial_i\partial_t\sigma.
$$
在 $t\ne0$ 的 regular slice，cone sphere $r=|t|$ 有限。用在其附近恒为一的空间 cutoff，cone-supported distribution 的空间导数积分为零；不能人为把这个球当成新内部边界并重复加 charge。bulk core 的 $\nabla\sigma=O(r^{-3})$、$\partial_t\sigma=O(r^{-4})$ 使 infinity surface term 为零，所以 $P^\mu=0$ 的论证不依赖错误的 trace matching。$t=0$ 的 pullback 不 regular，不纳入这一结论。

对紧支撑外部弱 metric probe，
$$
W[h]=\frac12\langle T^{\mu\nu},h_{\mu\nu}\rangle
=-\frac12\langle\sigma,R^{(1)}[h]\rangle,
\quad R^{(1)}=\partial_\mu\partial_\nu h^{\mu\nu}-\Box h.
$$
这是两次分布积分分部；$R^{(1)}$ 对紧支撑 linearized diffeomorphism 不变。它测量既定 scalar distribution 的响应，并没有推出 canonical Noether generator。

若选 future/past 反射 probe，且各自 cone pairing 归一化为一，则
$$
W_+-W_-=-\frac12(\alpha_+-\alpha_-).
$$
time-even baseline 抵消这一机制仍成立。作者进一步写成 $-\pi C\chi/2$ 并由 $C$ 重建个别 $Q_\pm$，则依赖失败的总和 matching。采用 tensor time-reflection 时，混合时间空间指标应随 pullback 改号；可选没有此歧义的对称 probe。本文未显式构造任意所需的 $R^{(1)}[h]$ 测试函数族。

## 7. 光锥 collar 的独立局部结论

设 $u=t-r,\ v=t+r$，future collar 为 $u=0,\ v>0$ 且远离 tip。波算子
$$
\Box=-4\partial_u\partial_v+
\frac4{v-u}(\partial_v-\partial_u)
+\frac4{(v-u)^2}\Delta_{S^2}.
$$
对局部 layer $\sigma_+=h(v,\Omega)\delta(u)$，
$$
\Box\sigma_+
=\left(-4h'-\frac{4h}{v}\right)\delta'(u)
+\left(\frac{4h}{v^2}+\frac{4h'}v+
\frac4{v^2}\Delta_{S^2}h\right)\delta(u).
$$
$4h/v^2$ 来自 $a(u)\delta'=a(0)\delta'-a'(0)\delta$，遗漏它会错误地消去允许的常数模式。首个系数给 $h=q(\Omega)/v$，次项变成 $\Delta_{S^2}q=0$。对 smooth global $S^2$ 数据，积分 $\int q\Delta q=-\int|Dq|^2$ 说明 $q$ 常数。

**Checked:** 代入 $h=q/v$，两个径向系数均为零；角向项单独保留。由于 $\delta_+(s)=\delta(u)/v$，得到局部层正是 $\alpha_+\delta_+(s)$。它不决定 tip matching，也不排除角奇点、非紧 angular patch、导数 layer 或新增 edge-field sector；这里的“only”只针对作者写出的单 $\delta(u)$ ansatz 与 smooth global angular data。

## 8. 本地翻译、claim ledger 与证据边界

| 对象 / 命题 | 等级 | 实际含义 |
|---|---|---|
| YM 对称约化和 $\epsilon/g^2$ tensor | Source-derived | 继承既有显式 sector，未重跑完整 gauge-field 约化 |
| 有限 shift 的 trace/divergence | Checked | 对应明确有理张量，所有分量差值零 |
| 非特征 hypersurface 的 homogeneous defect no-go | Source-derived；论证重建 | 最高横向阶下降归纳，非一般 YM 解不存在定理 |
| 去尖点 null layer 与 smooth collar 常数模式 | Source-derived / Checked radial coefficients | 局部 characteristic 支撑许可，不给尖点资料 |
| Eq. (26) 与 $\alpha_++\alpha_-=\pi C$ | Failed | 实主值径向测试函数直接反证 |
| 作者 $\sigma_\chi$ 全局无迹 | Failed | 尖点残余 trace 为 $-6\pi^2C\delta^{(4)}$ |
| $P^\mu=0$ on $t\ne0$ | Source-derived；cutoff 论证重建 | 不依赖 matching，无权推广至奇异 slice |
| causal response 差值 | Source-derived / conditional | 可测 $\alpha_+-\alpha_-$，不能由失败 matching 固定总量 |
| near-tip 动态条件、CPS charge、引力 backreaction | Not independently verified | 本文没有提供所需理论 |

**Verified:** 显式 flat-metric tensor 的 divergence/trace/improvement 链；主值角积分与 Gaussian 辅助积分；印刷 matching 的残余接触系数；collar 径向方程。检查在 Mathematica/xAct 服务完成。分布反证同时给出紧支撑测试函数推导，不能用单纯锥外微分替代。

**Assumptions:** 标准实 $\mathrm{PV}(1/s)$ 及其保持 scaling degree 的延拓；mostly-plus；cone distributions 的 root Jacobian；regular slice $t\ne0$；局部 finite transverse order；smooth global angular sector。若作者想使用不同 continuation，需先给出其完整分布定义。

**Blocked:** 没有从 full YM action 给出的 near-tip 边界层解或匹配数据；不能由 stress-tensor ansatz 反推唯一动态完成。

**Not verified:** 非紧 gauge group 的量子 unitarity、一般 characteristic Cauchy theorem、edge-mode phase space、Hamiltonian charge integrability、非线性分布曲率 admissibility 与薄壳 junction。本文含 $\delta'$、$\delta''$，不能自动套普通 null thin-shell 公式。

带回 gluing/CPS 的恰当对象是 $\mathcal I\sigma$ 的 conservation/trace 分工、非特征面的最高横向阶 obstruction 和 collar 的 Jacobian。最重要的警示是：punctured characteristic matching 与穿过尖点的分布延拓是两个问题；一个局部方程验证不能充当全局 matching theorem。

返回今日总览：[[2026_09_03_overview]]。
