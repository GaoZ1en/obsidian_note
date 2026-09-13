---
paper id: 2609.01714v1
title: "On-shell recursion and soft theorems for worldline quantum field theory"
authors:
  - "Castet, Nathan"
  - "He, Vincent F."
publication date: 2026-09-01
abstract: |-
  We derive a set of on-shell recursion relations for amplitudes in worldline quantum field theory (WQFT), an effective theory of gravity coupled to a massive worldline which is relevant for computing classical gravitational observables. We overcome the poor large-$z$ falloff of amplitudes under an all-line complex momentum deformation by deriving and exploiting a new soft-graviton theorem in the presence of a worldline. This theorem generalizes the leading (Weinberg) and subleading soft theorems with additional contributions due to soft emission from the worldline. Our main result is a $d$-dimensional recursion formula, expressing any $n$-graviton rational amplitude in terms of lower-point amplitudes from WQFT and pure gravity. Using the soft-worldline theorem, we can obtain amplitudes with any number of external worldline fluctuations from the corresponding all-graviton amplitudes, making the recursion sufficient to construct any rational amplitude of the theory. We verify our results by explicitly computing two-graviton and three-graviton amplitudes.
comments: ""
url: https://arxiv.org/abs/2609.01714v1
summary: "以 worldline soft Ward identity 构造树级软减除递推；独立核验发现 Eq. (40) 双极点项缺 z_J²，Eq. (53)/(55) 中间式不一致，并给出两点精确重建。"
tags: []
---

# On-shell recursion and soft theorems for worldline quantum field theory

## 阅读结论与选题位置

这篇文章值得保留为 soft theorem / Ward identity 如何补足递推数据的技术案例，但 **v1 印出的通用 worldline 双极点项和两引力子例子的若干中间式不正确**。独立留数计算给出 Eq. (40) 的该项应整体多出 $z_J^2$；直接展开文中两点振幅得到的 Eq. (53) 有相反符号，Eq. (55) 所称因子化分子也不是 Eq. (54) 在指定变形下的值。这些问题在源文件和 PDF 中一致，不能归咎于文本提取。

可用内容是：最小耦合无自旋 worldline 的 spurionic 平移给出零频与一阶频率 soft 数据；引力 Ward identity 把它们嵌入引力子的 leading/subleading soft theorem；一个额外 soft subtraction 使全线变形的无穷远轮廓消失。要把它作为可执行的任意点递推程序，需要修正公式并补做 $n\ge4$ 的一般 worldline cut 检验。本文两个显式例子 $n=2,3$ 都没有这个非软 cut，不能覆盖该风险。

与当前研究的关系限于 action → Ward identity → observable 的组织方法，以及软边界数据与传播子极点的区分。这里没有构造 null-boundary CPS、电荷代数、regional algebra 或 gluing quotient。

## 来源、版本与覆盖

- 固定阅读 [2609.01714v1 摘要](https://arxiv.org/abs/2609.01714v1)、[PDF](https://arxiv.org/pdf/2609.01714v1) 和 [完整源码](https://arxiv.org/src/2609.01714v1)，不是摘要转述。
- 完整阅读正文 introduction、worldline QFT、soft theorems、recursion algorithm、worked examples、conclusion，以及 Appendix A–C；结合 diagram inputs 确认传播子、cut 与振幅乘积的含义。参考文献用于定位论证依赖，未逐篇重读。
- 源码入口 main.tex；主体分为 sections/01、03–07，附录为 a-soft-z-theorems、b-local-gauge-invariant-tensor-decomposition、c-spinor-helicity。
- 视觉确认 PDF 第 5 页的作用量与传播子、第 18 页 Eq. (40)、第 22 页两点 worked example、第 29 页附录 B 的局部张量论证。页码是 PDF 文件页码，正文印刷页码少一。
- **Blocked:** 正文称完整 $d$ 维结果见 auxiliary Mathematica file，但本次官方源码包只有 TeX、图和 bibliography，没有 .m/.wl/.nb；摘要页没有对应文件链接，官方 /src/2609.01714v1/anc 返回 404。因而未重跑作者三点数值比较，也不把其陈述列为独立复现。

**How to read this long paper:** 先读 worldline QFT 与 soft theorems，固定剥离和能量消元；再读 recursion algorithm 时同时核对本笔记的双极点修正。Worked examples 先用两点展开定位符号，再把三点仅作为其实际覆盖的通道检查。Appendix A 是 Ward identity 的来源，B 是局部歧义的条件与反例，C 是四维记号参考；introduction/conclusion 用于区分本文范围与高点、非微扰的后续问题。

## 1. 定义、作用量与振幅的剥离

采用 mostly-minus $\eta=\mathrm{diag}(+,-,\ldots)$，$\kappa^2=32\pi G$，
$$
g_{\mu\nu}=\eta_{\mu\nu}+\kappa h_{\mu\nu},\qquad
x^\mu=b^\mu+u^\mu\tau+\delta x^\mu,\qquad u^2=1.
$$
无自旋物体的最低阶作用量为
$$
S_{\rm wl}=-\frac m2\int d\tau\,g_{\mu\nu}(x)\dot x^\mu\dot x^\nu.
$$
它是作者所选 worldline 参数规范中的表达式；更高导数有限尺寸算符、spin、tidal 响应不属于这里的唯一性主张。纯引力部分加 gauge fixing，内部 graviton 使用 de Donder 投影。

**Failed（归一化自洽性）:** PDF/TeX Eq. (3) 印作
$$
S_{\rm EH}=-\frac2\kappa\int d^dx\sqrt{-g}R.
$$
在同文 $g=\eta+\kappa h$、$\kappa^2=32\pi G$ 和规范化传播子的约定下，二次动能的系数按 $\kappa^{2-p}$ 缩放，只有 $p=2$ 才是无 $\kappa$ 的规范化动能。因此这里需要 $-2/\kappa^2$，不能将印出的作用量直接用于重生成其 Feynman rules。后续独立核验固定文中给出的 stripped 振幅与传播子约定，不以这条印刷式重新定标。

worldline 背景只保留沿 $u$ 的平移：
$$
\bar\delta\!\left(\sum_i u\!\cdot k_i+\sum_a\omega_a\right),
\qquad e^{ib\cdot\sum_i k_i}.
$$
没有要求 $\sum_i k_i^\mu=0$。剥离这两个因子以及注明的总体耦合后讨论有理振幅。外部 worldline fluctuation 满足 $\omega=0$，传播子为
$$
G_{\rm wl}^{\mu\nu}(\omega)=-\frac{i\eta^{\mu\nu}}{m\omega^2},
\qquad G_h=\frac{iP}{k^2}.
$$
双极点是此递推区别于普通粒子振幅的关键；将它误作简单 pole 会丢掉分子的一阶导数。因果 $i\epsilon$ 在文章的代数递推中被暂置，具体 waveform 的 retarded/in-in prescription 仍须另外指定。

## 2. worldline soft theorem：背景分解的 Ward identity

对带一个额外 worldline leg 的振幅，设其 polarization 为 $\zeta^\alpha$。按作者的 Fourier/LSZ 约定，两条 stripped 恒等式为
$$
\zeta^\alpha A_{g^nw}(0,\alpha)
=i\,\zeta\!\cdot k_{\rm tot}A_{g^n},\qquad
\zeta^\alpha\partial_\omega A_{g^nw}(\omega,\alpha)\big|_0
=i\,\zeta^\alpha\partial_{u^\alpha}A_{g^n}.
$$
两侧必须以同一个能量守恒关系消去同一个依赖变量；否则 $\partial_u$ 会作用到不同的约束表示而产生伪差异。

Appendix A 的机制是
$$
b\mapsto b+a,\quad \delta x\mapsto\delta x-a;
\qquad
u\mapsto u+a,\quad \delta x\mapsto\delta x-a\tau.
$$
这些改变背景与 fluctuation 的分解，完整 $x$ 不变。对场方程插入作 LSZ，并对 $\tau$ 的导数积分分部，分别得到零阶和一阶频率的 soft 信息。第二条不是新增一个物理 boost Goldstone，而是背景速度依赖的控制。

**Source-derived:** 文章称这一类恒等式具有非微扰来源。**Not independently verified:** 本次没有证明路径积分测度、边界项、分布极限和 LSZ 条件下的非微扰恒等式；可复用的安全范围是本文树级有理振幅、给定剥离规则及允许的背景变分。

## 3. 引力子的 soft 展开如何闭合

令 $q$ 为软动量、$e_\mu e_\nu$ 为 factorized polarization。leading 因子可写成
$$
\frac\kappa2\sum_i\frac1{k_i\cdot q}
\left(e\cdot k_i-\frac{k_i\cdot q}{u\cdot q}u\cdot e\right)^2.
$$
方括号在 $e\mapsto e+\alpha q$ 下逐项不变；worldline 背景引入的 $1/(u\cdot q)$ 不能丢弃。subleading 部分含
$$
-\frac{i\kappa}{2}\sum_i
\frac{e\cdot k_i}{k_i\cdot q}\,e_\mu J_i^{\mu\nu}q_\nu
-\frac{i\kappa}{2}\frac{u\cdot e}{u\cdot q}
e_\mu K^{\mu\nu}q_\nu,
$$
$$
J_i=L_i+\Sigma_i,\qquad
K^{\mu\nu}=i(u^\mu\partial_{u_\nu}-u^\nu\partial_{u_\mu}).
$$
这里 $J_i$ 同时转动硬动量及 polarization，$K$ 作用于背景速度。导数必须作用于完整硬振幅，而不能只对某个显式传播子作用。

论证分为外部 graviton 的 $1/(k_iq)$ pole、worldline 的 $1/(uq)^2$ pole 和在 $q=0$ 正则的 remainder。前两类由因子化确定，remainder 由引力 Ward identity 约束；worldline soft theorem 正好提供双极点所需的零阶、一阶数据。二阶频率系数没有被上述 spurionic 变换固定，因此本文不提供同等普适的 subsubleading theorem。

Appendix B 讨论局部、解析、对称的双横向张量歧义为什么至少为 $O(q^2)$。把多项式按齐次度分解，对次数 $h$ 的横向向量可用
$$
A^{\mu\nu}=\frac{\partial^\mu E^\nu-\partial^\nu E^\mu}{h+1},
\qquad E^\nu=q_\mu A^{\mu\nu}.
$$
对称二阶张量允许再做一次 homotopy，得到两个显式 $q$。这使用的是对一般 $q$ 的多项式恒等式；只在 $q^2=0$ 上成立的横向性和允许 $1/q$ 的非局部项不在同一命题中。

**Failed（附录的额外推广）:** 附录末尾说相同双因子分解也适用于反对称/一般张量。三维
$$
E_{ij}=\epsilon_{ijk}q_k
$$
非零、解析、双横向，却只有一次动量，不可能由两个一次 $q$ 乘局部多项式得到。Sage 在 $\mathbb Q[q_0,q_1,q_2]$ 上核验 $q^TE=0$、$Eq=0$、$E^T=-E$ 及次数一。该反例否定额外推广，不否定其对称 graviton remainder 的主体论证。

## 4. 全线变形、极点分类与轮廓

对 $n\ge3$，选择互异非零 $z_i$，
$$
\widetilde k_i(z)=k_i(1-z/z_i),\qquad
\sum_i\frac{u\cdot k_i}{z_i}=0.
$$
所有腿保持 null，polarization 不变，worldline 能量守恒保持；空间总动量不需要保持。这正是普通 BCFW 直觉不能直接照搬的地方。

最小两导数作用量的计数给出全 graviton worldline 振幅 $A(z)=O(z^0)$。于是使用
$$
\frac{A(z)}{z(1-z/z_1)}
$$
而非只有 $A(z)/z$，无穷远不贡献。第一个 soft 点变成双极点，需要 leading 和 finite 两项；其余 soft 点只需 leading 项。

若 $k_I(z)^2=k_I^2(1-z/z_{I+})(1-z/z_{I-})$，graviton cut 使用两个根处的 lower-point worldline amplitude 与纯 Einstein 振幅之积，并带另一根与 soft subtraction 的 Jacobian。两腿子集的 graviton 极点与软点重合，不能另算一次。

worldline cut 满足
$$
\omega_J(z)=u\cdot k_J(z)=\omega_{J0}(1-z/z_J),\qquad
z_J=\frac{\omega_{J0}}{\sum_{j\in J}(u\cdot k_j)/z_j}.
$$
分子 $P_J(z)$ 是 cut 两侧含 worldline leg 振幅的指标收缩。独立子集从 $|J|=2$ 开始；在偶数点的中点大小按包含某个固定标签的约定避免 $J$ 与补集重复。故一般非软 worldline cut 首见于 $n=4$。

## 5. 独立重建 Eq. (40) 的双极点项

固定作者的传播子和普通 $z$ 导数，单个通道局部形式是
$$
A(z)=-\frac{P(z)}{m\omega_0^2(1-z/z_J)^2}.
$$
直接计算轮廓给原振幅的贡献：
$$
-\operatorname{Res}_{z=z_J}
\frac{A(z)}{z(1-z/z_1)}
=-\frac1{m\omega_0^2}
\left[
\frac{(1-2z_J/z_1)P(z_J)}{(1-z_J/z_1)^2}
-\frac{z_JP'(z_J)}{1-z_J/z_1}
\right].
$$
**Checked:** Mathematica 取 $P(z)=a+b(z-z_J)$ 作精确 Residue，结果与右侧之差为零。对双极点只有这个一阶 jet 会进入留数，因此这不是用线性近似替代所需的高阶信息。

PDF/TeX Eq. (40) 给出的括号是
$$
\frac{(1-2z_J/z_1)P(z_J)}
{z_J^2(1-z_J/z_1)^2}
-\frac{P'(z_J)}{z_J(1-z_J/z_1)}.
$$
它缺少整体 $z_J^2$。精确检验“留数 − $z_J^2$ × 印刷项”为零，而“留数 − 印刷项”一般非零。一个非退化数值证据：$z_J=2,z_1=5,a=3,b=7,m=\omega_0=1$，两者分别 $65/3$ 与 $65/12$。

这条修正是独立的局部复分析结论，条件是 $z_J\ne0,z_1$，$\omega_0\ne0$，分子在该 cut 正则，根互不重合。它不自动证明修正后所有通道的合成无遗漏，也没有检查退化 kinematics 的极限顺序。

## 6. 两点例子的可复现重建

为避免长点积掩盖符号，定义
$$
t=uk_1,\quad uk_2=-t,\quad a=ue_1,\ b=ue_2,\
c=e_1k_2,\ d=e_2k_1,\ e=e_1e_2,\ s=k_1k_2,
$$
$$
K=t(cb+et)-a(sb+dt),\qquad B=sa-ct.
$$
文中 stripped 两点振幅为
$$
A_2=-\frac{K^2}{4st^2}.
$$
**Checked:** $e_1\to k_1$ 即 $(a,c,e)\to(t,s,d)$ 时 $K=0$；$e_2\to k_2$ 即 $(b,d,e)\to(-t,s,c)$ 时也为零。此项只检查这条表达式的 gauge decoupling，不证明完整场论推导。

普通全线缩放在 $n=2$ 退化，作者改用
$$
\widetilde k_1=k_1-\frac{zt}{z_0a}e_1,\qquad
\widetilde k_2=k_2(1-z/z_0),\qquad
z_{\rm f}=\frac{z_0as}{tc}.
$$
需 $e_1^2=e_1k_1=0$ 和非零相关分母。由此
$$
t(z)=t(1-z/z_0),\quad
s(z)=(1-z/z_0)(s-ztc/(z_0a)),
$$
$$
c(z)=c(1-z/z_0),\qquad d(z)=d-zte/(z_0a).
$$
直接把这些量代入 $A_2$，在 $z=z_0$ 展开得到
$$
\mathcal S^{-1}=\frac{z_0aK^2}{4t^2B},\qquad
\mathcal S^0=+\frac{caK^2}{4tB^2}.
$$
第一式与 Eq. (52) 一致；第二式与印出的 Eq. (53) 差一个负号。检查采用精确 Residue 与去掉主部后的 Limit，没有数值拟合。

Eq. (54) 的未变形 cut 分子为
$$
N=-\frac12(et+cb-da)^2.
$$
先代入上述变形、再取 $z=z_{\rm f}$，得到
$$
N(z_{\rm f})=-\frac{K^2}{2t^2}.
$$
这与 Eq. (55) 声称的 $-c^2K^2/(4sB^2)$ 不相同。后者的动量次数也与一个 $A_1A_3^{\rm EH}$ 分子不符，不能未经说明地作为分子使用。

将独立展开得到的三个对象代入 Eq. (51)：
$$
-\frac{\mathcal S^{-1}}{z_0}+\mathcal S^0+
\frac{N(z_{\rm f})}{2s(1-z_{\rm f}/z_0)^2}
=-\frac{K^2}{4st^2}.
$$
**Checked:** Mathematica 精确化简两侧之差为零，且 $z_0$ 消失。这个结果支持两点轮廓组织方式，并同时定位了 worked example 的两处错误；不是对原文所有印刷中间式的肯定。

## 7. 三点、spinor helicity 与作者验证的范围

三点公式包含总 graviton channel 的两个根以及三个 soft 点。没有独立的非软 worldline 分割，故不能用三点通过来验证 Eq. (40) 的一般 $J$ 项。作者还报告在软点比较 worldline 与 graviton 因子化的总和；它是重合软点的专门一致性检查，不能替代一般 $z_J$ 的 residue。

完整 $d$ 维表达式很长；作者称与既有方法数值相同，本次缺少其 auxiliary 文件与测试点，标记 **Source-derived / Not independently verified**。四维 all-plus 展示式的某个纯 graviton channel 消失，可由相关全同 helicity / 单异 helicity Einstein 树振幅为零理解；这不等于所有 helicity sectors 都没有该 pole。

Appendix C 用 $u_{\alpha\dot\alpha}$ 处理 timelike 背景。$u$ 不是 null momentum，不能擅自拆为一个 Weyl spinor 的 rank-one 外积；$u^2=1$ 的矩阵恒等式替代通常 null-spinor 简化。文中 polarization 归一化和耦合剥离须一起追踪。本次未逐项重建长 all-plus 三点式，也未独立核准其四维总体常数。

## 8. Claim ledger 与验证边界

| Claim | 证据等级 | 允许使用的结论 |
|---|---|---|
| 最小 worldline 分解产生零频与一阶频率 soft 数据 | Source-derived | 树级、固定 Fourier/LSZ 与能量消元规则下复用 |
| leading/subleading graviton soft theorem | Source-derived；局部结构检查 | 含背景 $u$ 的 Ward identity，非普通真空 soft 因子的直接照抄 |
| 对称局部横向 remainder 从 $q^2$ 阶起 | Source-derived / conditional | 要求一般 $q$ 的解析恒等式与对称性 |
| 附录 B 推广至一般/反对称张量 | Failed | Sage 的一次多项式双横向反例 |
| Eq. (40) 的 worldline residue | Failed as printed / Checked correction | 印刷项需整体乘 $z_J^2$ |
| Eq. (52) leading Laurent 系数 | Checked | 与直接两点展开相符 |
| Eq. (53)、Eq. (55) | Failed as printed | 分别需上述有限项与真实 cut 分子 |
| 修正局部数据恢复 $A_2$ | Checked | 精确有理恒等式及两条 polarization decoupling |
| 任意点完整递推与作者三点数值比较 | Not independently verified / Blocked | 缺 ancillary，且 $n\ge4$ 一般 worldline cut 未复现 |

**Verified:** Mathematica 的双极点留数、两点 Laurent 主部与有限项、cut 分子变形及最终重建；两条 $K$ 的 gauge 代换；Sage 的反对称双横向一次多项式反例。检查中最初使用不存在的 Sage LeviCivita 名称报错，改为显式多项式矩阵后两个判据通过；该工具错误不算论文失败。

**Assumptions:** 最小 spinless 单 worldline、树级、mostly-minus、既定 stripped convention、复 kinematics 可解析延拓、非零分母及互异极点；Appendix B 的局部性和一般 $q$ 恒等式。对作用量归一化采用与传播子相容的 $\kappa^{-2}$ 而非印刷 $\kappa^{-1}$。

**Not verified:** 高点完整算法、三点所有 helicity 的归一化、任意维长表达式、非微扰 LSZ/测度、loops、finite-size/spin、retarded waveform、退化极点极限以及任何 CPS charge interpretation。

## 9. 可带回研究的技术与下一步

最值得借用的是把“背景分解不变性”与“物理对称电荷”分开，然后明确软展开究竟固定到哪一阶。双极点需要一阶 jet；只知道零频值还不能做 sewing。这为检查边界响应或缺陷传播子的 pole 数据提供了具体范例。

若实际使用此递推，先以本节两点恒等式固定符号与剥离归一化，再对一个有一般 worldline channel 的四点非退化样本同时比较直接图与修正轮廓。尚未完成这一步前，应引用其机制与 soft theorem 的明确条件，不应把 v1 Eq. (40) 直接收入可靠公式库。

返回今日总览：[[2026_09_03_overview]]。
