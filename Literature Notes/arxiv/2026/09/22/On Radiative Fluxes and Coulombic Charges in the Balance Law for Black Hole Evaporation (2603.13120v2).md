---
paper id: 2603.13120v2
title: "On Radiative Fluxes and Coulombic Charges in the Balance Law for Black Hole Evaporation"
authors:
  - "Bianchi, Eugenio"
  - "Paraizo, Daniel E."
publication date: 2026-03-13
abstract: |-
  In asymptotically-flat spacetimes, there is a clear distinction between radiative fluxes and Coulombic charges. Using the Wald-Zoupas prescription, we identify the classical radiative flux of a massless scalar field in 3+1 dimensions. In a spherically-symmetric model of black hole evaporation, the balance law yields a Bondi mass correction related to the entanglement entropy of Hawking radiation. The renormalized flux is nonnegative, differs from the Fulling-Davies formula, and coincides with the Ashtekar-Taveras-Varadarajan flux. We discuss implications for 3+1 black hole evaporation.
comments: "6 pages, no figures. v2: uses a new derivation for the classical flux. All results remain the same"
url: https://arxiv.org/abs/2603.13120v2
summary: "Reconstructs the conditional ultralocal WZ prescription, cut-charge correction and s-wave positive flux; checks point splitting and limits of the detector boundary-term claim."
tags: []
---

# On Radiative Fluxes and Coulombic Charges in the Balance Law for Black Hole Evaporation

## 结果先行：条件化的 WZ 选势，而非无条件的通量唯一性

**Source-derived:** 作者在四维渐近平坦 Einstein–massless-scalar 理论中，把 Wald–Zoupas 条件改为 stationary 背景上只对 BMS variations 消失，并再要求 evaluated potential 对 BMS 方向 ultralocal。所展示的一参数 potential family 内，这选出 $\beta=-1/3$，将 stress-tensor flux 的一个全导数移入 Coulombic charge。在球对称、只保留 s-wave、忽略 backscattering 的 moving-mirror 态中，改定义的 radiative flux 恰为 $\hbar k^2/(48\pi)\geq0$，而质量增加 $\hbar k/(24\pi)$。

**Checked:** 本次重算 ultralocality 的系数、point-splitting 有限项、通量中 $\dot k$ 抵消及质量/熵关系。不能由这些检查推出一般四维量子通量非负、蒸发终态已解或所有探测器无法区分两种局部 flux。后者的全导数论证有明确限制，见末节。

8 页 letter，无编号大章节或附录；全文顺序为 Introduction；Radiative Fluxes and Coulombic Charges（共形边界 → WZ family → Bondi 坐标）；Radiative Fluxes in Black Hole Evaporation（s-wave → 两点函数 → renormalization → entropy）；Discussion（Fulling–Davies、ATV、终态与扩展）；参考文献。这里按同一链重构。

## 四维边界数据与变分歧义

取 signature $(-+++)$、$G_N=c=k_B=1$ 并保留 $\hbar$，

$$L=\left({R\over16\pi}-{1\over2}g^{ab}\nabla_a\phi\nabla_b\phi\right)\epsilon_4.$$

在 conformal completion 中 $\widetilde g=\Omega^2g$、$\widetilde\phi=\Omega^{-1}\phi$，$\mathscr I^+\simeq S^2\times\mathbb R$。诱导 $q_{ab}$ 退化、$q_{ab}n^b=0$、$D_a n^b=0$，标量辐射数据 $\chi=\widetilde\phi|_{\mathscr I^+}$。divergence-free conformal frame 保留 $n^aD_a\omega=0$ 的重标度：$q\mapsto\omega^2q,n\mapsto\omega^{-1}n,\epsilon_3\mapsto\omega^3\epsilon_3,\chi\mapsto\omega^{-1}\chi$。

原 stress flux 是 $\int(n\cdot D\chi)(\xi\cdot D\chi)\epsilon_3$。它对 supertranslations 的共形表现与对一般 boost 方向不同；后者促使作者要求 intrinsic conformal covariance，而非直接把 stress expression 当作所有 BMS 方向的 radiative current。

作用量直接给的 matter potential 为 $\theta_{mat}=-\dot\chi\,\delta\chi\,\epsilon_3$，其中 $\dot\chi=n^aD_a\chi$。边界/角点歧义 $\theta=\Theta-\delta\ell+d\vartheta$ 不能仅靠 bulk EOM 固定。作者所用 admissibility 条件是：给出相同 symplectic current；局部协变；不依赖任意 conformal frame；stationary 时对 BMS variations 消失。它们允许

$$\Theta_\beta(\delta\chi)=-\left[\dot\chi\,\delta\chi+\beta\,\delta(\chi\dot\chi)\right]\epsilon_3.$$

原 WZ 更强条件若要求 stationary 时对所有 variations 消失，则选 $\beta=0$。本文换用“对 BMS 方向无导数”的额外原则选另一值。**不要把两套 admissibility 条件说成同一个唯一性定理。** 作者展示的是这个 family 内的选值，本文没有独立分类所有更高导数或其他 local ambiguities。

## 为什么 ultralocality 给出 $-1/3$

BMS variation 为 $\delta_\xi\chi=\xi^aD_a\chi+\alpha\chi$，$\alpha=\tfrac13D_a\xi^a$；由 $\mathcal L_\xi n=-\alpha n$、$Dn=0$ 得 $n^aD_a\xi^b=\alpha n^b$，且 $nD\alpha=0$。因此

$$nD(\delta_\xi\chi)=\xi^aD_a\dot\chi+2\alpha\dot\chi.$$

展开 $-\Theta_\beta/\epsilon_3$，

$$(1+\beta)\dot\chi\,\xi D\chi+\beta\chi\,\xi D\dot\chi+(1+3\beta)\alpha\chi\dot\chi.$$

最后一项含方向的导数，故 $\beta=-1/3$。**Checked:** Mathematica 给出系数 $(1+3\beta)\chi\dot\chi$；xAct 在上述 BMS contraction relations 下比较完整展开与目标式，residual 0。这里计算的是给定 family 的局部 tensor algebra，不证明条件的物理唯一性。

于是原文 (8)–(9) 给

$$F^{rad}_{mat}[\Delta\mathscr I,\xi]=\int\left({2\over3}D_a\chi D_b\chi-{1\over3}\chi D_aD_b\chi\right)n^a\xi^b\epsilon_3,$$
$$Q_{mat}[S,\xi]=\int_S(\chi D_a\chi)\left({1\over2}n^b\xi^a-{1\over6}n^a\xi^b\right)\epsilon_{bmn}dS^{mn}.$$

$Q[S_2]-Q[S_1]=-F$ 的取向需与 $\partial\Delta\mathscr I=(-S_1)\cup S_2$ 一起固定。PDF p.3 已目视确认系数和号。一般 BMS charge 的完整 Einstein constraint 推导仍 Source-derived。

## Bondi 时间平移：全导数移到哪里

Bondi expansion $\phi=\chi/r+\cdots$，mass aspect $m(u,\theta,\varphi)$、shear $C_{AB}$、news $N_{AB}=\partial_uC_{AB}$。对 $\xi=n=\partial_u$，

$$F^{rad}_{grav}={1\over32\pi}\int N^{AB}N_{AB}\,d\Omega,$$
$$F^{rad}_{mat}=\int\left({2\over3}\dot\chi^2-{1\over3}\chi\ddot\chi\right)d\Omega
=\int\dot\chi^2d\Omega-\partial_u\left({1\over3}\int\chi\dot\chi d\Omega\right).$$

因此若 usual stress balance 作用于 $\int m/(4\pi)$，新质量为

$$M=\int\left({m\over4\pi}+{1\over3}\chi\dot\chi\right)d\Omega,\qquad\dot M=-F^{rad}_{grav}-F^{rad}_{mat}.$$

这正是最可移植的结构：改 potential 后必须同时跟踪 flux 与 cut charge；只保留“更好”的通量、丢掉修正 charge 会破坏 balance。一般经典 $\tfrac23\dot\chi^2-\tfrac13\chi\ddot\chi$ 不逐点非负，量子模型中的正性来自特定 correlator，不能倒灌回全部经典数据。

## Moving-mirror 模型与 point splitting

量子计算再作三项限制：背景和扰动球对称；只留 $\ell=0$ 的 massless scalar；忽略其 backscattering potential。此时 gravitational news 为零。取 $\chi=\chi_0$ 的球面常数归一化，ray-tracing map $v=p(u)$，$p'>0$，过去 $p'\to1$，peeling function

$$k(u)=-{p''\over p'}.$$

in-vacuum 的导数两点函数为 $-\hbar p'(u)p'(u')/[16\pi^2(p(u)-p(u'))^2]$。在 $u$ 中 point split，并减去 out-vacuum 的 $-\hbar/[16\pi^2(u-u')^2]$。**Checked:** 写 $p(u+\epsilon)=p_0+p_1\epsilon+p_2\epsilon^2/2+p_3\epsilon^3/6+\cdots$，Mathematica 得

$$\left[{p_1p'(u+\epsilon)\over[p(u+\epsilon)-p_0]^2}-{1\over\epsilon^2}\right]_{\epsilon^0}
={2p_1p_3-3p_2^2\over12p_1^2}=-{k^2+2\dot k\over12}.$$

所以 $\langle\dot\chi_0^2\rangle=\hbar(k^2+2\dot k)/(192\pi^2)$。相同 prescription 与过去归一化给

$$\langle\chi_0\ddot\chi_0\rangle={\hbar\over192\pi^2}(-k^2+4\dot k),\qquad
\langle\chi_0\dot\chi_0\rangle={\hbar k\over32\pi^2}.$$

后两式还通过 $\partial_u\langle\chi\dot\chi\rangle=\langle\dot\chi^2+\chi\ddot\chi\rangle$ 的检查；要取得积分常数仍需 renormalization convention/过去态条件，不能仅由导数两点函数盲目积分。

将它们代回四维导出的 flux，$4\pi$ 球面积与 $2/3,-1/3$ 权使所有 $\dot k$ 抵消：

$$\langle F^{rad}\rangle={\hbar\over48\pi}k^2,\qquad
\langle M\rangle=m_0+{\hbar\over24\pi}k.$$

Fulling–Davies 则是 $F_{FD}=\hbar(k^2+2\dot k)/(48\pi)$。两者关系 $F_{FD}-F^{rad}=\partial_u(\hbar k/24\pi)$ 与 classical cut-charge 关系完全一致。Mathematica 重算 residual 0，不能解释成原 Fulling–Davies stress tensor 算错。

## 熵、ATV 与终态推论的条件

同一 mirror model 的 renormalized radiation entropy 是 $S_{ent}(u)=\int_{-\infty}^u k(u')du'/12$，所以

$$\langle M\rangle=m_0+{\hbar\over2\pi}\dot S_{ent},\qquad
\langle F^{rad}\rangle={3\hbar\over\pi}\dot S_{ent}^2.$$

对 $N$ 个相同 scalar，flux 与 entropy 各乘 $N$；$M-m_0=(\hbar/2\pi)\dot S_{ent}$ 的关系系数保持不变，但 flux 作为总 entropy 导数的平方表达含 $1/N$，不能误说所有物理量不依赖场数。

作者指出所选 flux 与 ATV expression 相同，讨论改定义质量下的单调性，以及 Page purification 附近 Fulling–Davies 负 burst 的 charge 解释。本次仅确认代数关系；没有解 backreaction、没有证明给定 $p(u)$ 来自完整自洽四维 geometry。$F^{rad}=0$ 强制 $k=0$、$p$ 为仿射（在相应区间）；$F_{FD}=0$ 则允许 Möbius map。仿射 ray-tracing 数据本身不能唯一固定所有 bulk 曲率、拓扑和全局终态。论文提到的寿命界与完整 Page curve 属 companion paper，本次未读取或验证。

## 需要收窄的 operational claim

**Failed as a general total-derivative argument:** Discussion 说平滑开关的 localized detector 对 boundary contribution 不敏感。单凭“差为全导数”不能推出此结论。若读数被光滑窗口 $w(u)$ 加权，

$$\int w(F_{st}-F_{rad})du=\int w\dot Q\,du=-\int\dot w Q\,du$$

即使无端点项，通常也不为零。Mathematica 取 $w=e^{-u^2}$、$\chi=e^{-u^2}$、$Q=\chi\dot\chi/3$ 得 $-2\sqrt{\pi/3}/9\ne0$。这是平滑衰减窗口的显式 witness；用适当 compact smooth cutoff 可保留非零值。因此额外的 detector coupling/response derivation 是必要输入。这里没有构造某个实际 radiometer 的完整 response，也不把 flux-weighted integral 等同于所有探测器读数。

## 核查日志与可复用边界

Verified: Mathematica point-splitting 有限项、三个 quadratic expectation 的 derivative consistency、$\dot k$ 抵消、ultralocal coefficient；xAct 的 BMS variation tensor expansion residual 0。第一次 xAct 调用误用保留符号 `Rules`，报 `Set::wrsym` / `ToCanonical::noident`；改为自定义规则变量并用正常 product expansion 后成功，无遗留计算阻塞。

Assumptions: 固定所展示的 WZ ambiguity family、弱 stationary 条件与 ultralocality；四维渐近平坦边界；量子部分再限制到 massless s-wave、无散射势、指定 in/out renormalization 和 $p'>0$。

Source-derived: 完整一般 BMS charge、Einstein constraint 在无穷远的推导、ATV 历史比较和 entropy formula 的 CFT 起源。Not independently verified: 所有高角动量、灰体因子、EM/graviton 通量、一般量子态正性、探测器 response、普适 entropy correction、完整四维终态与寿命界。

官方 [v2 摘要](https://arxiv.org/abs/2603.13120v2)、[PDF](https://arxiv.org/pdf/2603.13120v2)、[source](https://arxiv.org/src/2603.13120v2) 成功。PDF 字体类型警告未妨碍提取，p.3 已渲染核对 (8)–(14)。Blocked: 无检索阻塞；未给出的 detector response 与全四维 backreaction 是结论边界，不以工具成功代替。
