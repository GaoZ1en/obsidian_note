---
paper id: 2611.24945v1
title: 2-dimensional Metric-Affine Geometries and Dynamical Gravity
authors:
  - Damianos Iosifidis
publication date: 2026-11-05T12:53:10
abstract: |-
  本文研究二维独立联络几何，证明一般曲率由非对称 Ricci 张量决定，讨论 torsion、nonmetricity 及 Einstein–Hilbert 密度的额外联络位移，并将曲率与 trace-vector 的二次作用量约化为标量和向量方程。注意：本笔记的复算发现 v1 的若干系数及把线性作用量对称用于 R 平方理论的问题，不能无条件沿用其全部动力学解释。
comments: "14 pages, no figures"
url: https://arxiv.org/abs/2611.24945v1
summary: "二维 metric-affine 几何提供小型一阶 CPS 测试，但 EH 的准对称不能直接当成 R 平方理论的 gauge redundancy。"
tags: []
---

# 为什么读：独立联络的几何约化与边界位移

当前可用的是二维完整曲率与 Ricci 的代数映射、EH 的联络位移边界项，以及带 $S^2,Q^2$ 时将联络数据写成 $dR$ 的构造。它们适合用作 metric／first-order formulation 比较的小模型。**不宜把本文 v1 直接作为“已完成自由度分析的二维新引力”使用**：下文给出实际复算支持的部分，也在相关步骤说明几个会影响结论的源问题。

来源：[arXiv v1](https://arxiv.org/abs/2611.24945v1)，PDF 与印刷页码一致。官方 history 的提交时间是 11 月 5 日，PDF dated November 20；它出现在本次 11 月 20 日官方新列表中，故按列表纳入。§I–V 是几何（pp.1–8），§VI 是 curvature-only 作用量（pp.8–10），§VII 是两个 trace-vector 扩展（pp.10–13），无技术附录。

# 二维曲率不需要 metric，但 Ricci scalar 需要

源约定是

$$
\nabla_\nu v^\lambda=\partial_\nu v^\lambda+\Gamma^\lambda{}_{\mu\nu}v^\mu,\quad
R^\lambda{}_{\mu\alpha\beta}
=2\partial_{[\alpha}\Gamma^\lambda{}_{|\mu|\beta]}
+2\Gamma^\lambda{}_{\rho[\alpha}\Gamma^\rho{}_{|\mu|\beta]},
$$

$$
S_{\mu\nu}{}^\lambda=\Gamma^\lambda{}_{[\mu\nu]},\qquad
Q_{\alpha\mu\nu}=-\nabla_\alpha g_{\mu\nu},\qquad
S_\mu=S_{\mu\lambda}{}^\lambda,
$$

$$
Q_\alpha=Q_{\alpha\mu\nu}g^{\mu\nu},\qquad
q_\nu=Q_{\alpha\mu\nu}g^{\alpha\mu},\qquad
R_{\mu\nu}=R^\lambda{}_{\mu\lambda\nu}.
$$

方括号含 $1/2$，所以本笔记的 $S$ 是通常 $T=2\Gamma_{[\mu\nu]}$ 的一半。以下动力学使用 $(-,+)$，$\widetilde\nabla$ 表示 Levi–Civita 联络。源同一页提到 Euclidean signature，但其 $\varepsilon_{\alpha\beta}\varepsilon_{\mu\nu}$ 的符号公式按 Lorentzian 使用，不能跨号差照搬。

## 从反对称的两维指标恢复全部曲率

二维任何三个指标的全反对称化为零。因此

$$
R^\kappa{}_{\mu[\alpha\beta}\delta^\lambda{}_{\gamma]}=0
$$

展开并收缩 $\kappa=\gamma$ 得源 (24)、(27)

$$
R^\lambda{}_{\mu\alpha\beta}
=\delta^\lambda_\alpha R_{\mu\beta}-\delta^\lambda_\beta R_{\mu\alpha}.
\tag{1}
$$

这确实不需要 metric 或无 torsion 假设。更直观地，只有 $R^\lambda{}_{\mu01}$ 四个分量，而 $R_{\mu1}=R^0{}_{\mu01}$、$R_{\mu0}=-R^1{}_{\mu01}$ 逐一将它们恢复。只知道 scalar $R=g^{\mu\nu}R_{\mu\nu}$ 则显然不足。

定义 $\widehat R_{\alpha\beta}=R^\lambda{}_{\lambda\alpha\beta}$ 和 $\breve R_{\mu\beta}=g_{\mu\lambda}g^{\nu\alpha}R^\lambda{}_{\nu\alpha\beta}$，(1) 立刻给

$$
\breve R_{\mu\nu}=R_{\mu\nu}-Rg_{\mu\nu},\qquad
\widehat R_{\mu\nu}=2R_{[\mu\nu]}=\partial_{[\mu}Q_{\nu]}.
\tag{2}
$$

注意最后一式是带 $1/2$ 的反对称导数，若以 $F_{\mu\nu}=2\partial_{[\mu}Q_{\nu]}$ 命名，便有 $\widehat R=F/2$。Ricci-flat 或 co-Ricci-flat 由此推出整个独立联络 flat；scalar-flat 不行。

torsion 同样由两个 trace 分量完全决定：

$$
S_{\alpha\beta}{}^\gamma=S_\alpha\delta^\gamma_\beta-S_\beta\delta^\gamma_\alpha.
\tag{3}
$$

本次在 xAct/Wolfram 会话中按上述指标顺序构造任意 $2^3$ 个联络分量和独立的一阶 jet，逐分量复算 (1)、co-Ricci 关系和 (3)，所有多项式残差为零。这是明确的二维分量核验，未给一般联络额外附加 Riemann 张量的 pair symmetry。

# 哪部分 nonmetricity 改变 EH bulk

令 $N^\lambda{}_{\mu\nu}=\Gamma^\lambda{}_{\mu\nu}-\widetilde\Gamma^\lambda{}_{\mu\nu}$。源 (8) 给出可用的恢复映射

$$
N^\lambda{}_{\mu\nu}=\frac12g^{\lambda\alpha}(Q_{\mu\nu\alpha}+Q_{\nu\alpha\mu}-Q_{\alpha\mu\nu})
-g^{\lambda\alpha}(S_{\alpha\mu\nu}+S_{\alpha\nu\mu}-S_{\mu\nu\alpha}).
\tag{4}
$$

把 (3) 代入曲率分解，所有显式 quadratic torsion 和 torsion–nonmetricity 交叉项抵消，源 (36) 为

$$
R=\widetilde R+\frac14Q_{\alpha\mu\nu}Q^{\alpha\mu\nu}
-\frac12Q_{\alpha\mu\nu}Q^{\mu\nu\alpha}
-\frac14Q_\mu Q^\mu+\frac12Q_\mu q^\mu
+\widetilde\nabla_\mu(q^\mu-Q^\mu-4S^\mu).
\tag{5}
$$

“torsion 只在 total derivative 中”只对**线性** EH 积分有此意义。乘 dilaton 或平方以后，分部积分会产生 bulk 耦合，不能删除这个导数再定义新理论。本次用平直 Lorentz metric、任意独立联络及 jet 核对 (5)，残差为零。

将 $Q_{\alpha\mu\nu}=\tfrac12Q_\alpha g_{\mu\nu}+\Omega_{\alpha\mu\nu}$，其中 $g^{\mu\nu}\Omega_{\alpha\mu\nu}=0$。从 (5) 直接展开得到

$$
R=\widetilde R+\frac14\Omega_{\alpha\mu\nu}\Omega^{\alpha\mu\nu}
-\frac12\Omega_{\alpha\mu\nu}\Omega^{\mu\nu\alpha}
+\widetilde\nabla_\mu(q^\mu-Q^\mu-4S^\mu).
\tag{6}
$$

**这里第一项是 $1/4$。源 p.8 的 (58) 印为 $1/2$，复算不成立。** 一个足够简单的检查是 $g=\operatorname{diag}(-1,1)$、唯一非零常联络 $\Gamma^0{}_{00}=1$。这时曲率及散度均为零，而 $\Omega^2=-2$、$\Omega_{\alpha\mu\nu}\Omega^{\mu\nu\alpha}=-1$。源 (58) 右侧为 $-1/2$；(6) 给零。本次的一般联络多项式检查也确认改回 $1/4$ 后残差为零。后面不依赖错误的 (58) 系数。

§V 的两个几何子类可以由 (4) 单独检查：

- metric compatible 时 $N^\lambda{}_{\mu\nu}=-2(S^\lambda g_{\mu\nu}-\delta^\lambda_\nu S_\mu)$，故 $R_{\mu\nu}=\widetilde R_{\mu\nu}-2g_{\mu\nu}\widetilde\nabla_\alpha S^\alpha=(R/2)g_{\mu\nu}$。
- Weyl 型 $Q_{\alpha\mu\nu}=(Q_\alpha/2)g_{\mu\nu}$ 时，令 $w_\mu=Q_\mu/4+2S_\mu$，则

$$
N^\lambda{}_{\mu\nu}=\tfrac14\delta^\lambda_\mu Q_\nu+\delta^\lambda_\nu w_\mu-w^\lambda g_{\mu\nu},
$$
$$
R_{\mu\nu}=\widetilde R_{\mu\nu}+\tfrac12\partial_{[\mu}Q_{\nu]}-g_{\mu\nu}\widetilde\nabla_\alpha w^\alpha,
\qquad R_{(\mu\nu)}=\tfrac R2g_{\mu\nu}.
\tag{7}
$$

本次逐分量核对了平直 metric 下任意 $Q,S$ 及其导数的 (7)。曲 metric 的 $\widetilde R$ 来自标准 distortion 分解。

所以摘要的“nonmetricity 非零就不是 Einstein”不能按必要充分条件读。正文支持的是一般 metric-affine 几何**不必** Einstein；Weyl–Cartan 总满足对称 Ricci 的 generalized Einstein 条件。更简单地，在坐标片取 $\Gamma=0$ 而 $g$ 非常数，即有 $Q\ne0$ 但 $R_{\mu\nu}=R=0$，连全 Ricci 意义下的 Einstein 条件也满足。

# EH 的额外位移有边界项，而且不保留一般 f(R)

§IV 对两个任意 one-form／vector 的位移写成

$$
\Gamma'^\lambda{}_{\mu\nu}=\Gamma^\lambda{}_{\mu\nu}
+\delta^\lambda_\mu\vartheta_\nu+\xi^\lambda g_{\mu\nu}-\delta^\lambda_\nu\xi_\mu.
\tag{8}
$$

projective 部分使 $R_{\mu\nu}\to R_{\mu\nu}+2\partial_{[\mu}\vartheta_{\nu]}$，scalar 完全不变。额外 $\xi$ 部分在二维满足

$$
\sqrt{-g}R' =\sqrt{-g}R+2\partial_\mu(\sqrt{-g}\xi^\mu).
\tag{9}
$$

本次用任意联络 jet 直接验证了 (9)。因此 $S_{\rm EH}=(2\kappa)^{-1}\int\sqrt{-g}R$ 改变 $\kappa^{-1}\int_{\partial M}d\Sigma_\mu\xi^\mu$。有限区域上它是否为 pure gauge 还依赖边界条件与 boundary action，本文没有给这一步。

对 $f(R)=R+a_1R^2$，设 $d=\widetilde\nabla_\mu\xi^\mu$，则

$$
f(R+2d)-f(R)=2d+4a_1Rd+4a_1d^2.
\tag{10}
$$

最后两项一般不是散度。甚至从平直 $R=0$ 出发，compactly supported、$d\ne0$ 的位移使线性积分不变，却增加 $4a_1\int\sqrt{-g}d^2$。本次符号展开确认 (10)。所以“EH density 准对称”不能提升成一般 curvature-only 理论的该对称。

这直接影响源 p.10 的推论：(75) 的 trace 在 $a_1\ne0$ 下给 $R=0$，进而 $R_{(\mu\nu)}=0$；(79) 给 Weyl nonmetricity。这些等式本身可用。但作者随后以 (8) 同时去掉 $S,Q$、再推出 $\widetilde R=0$，用到了 $R+a_1R^2$ 并不具有的任意 $\xi$ 对称。**不能据此把所有这些解 gauge-equate 到 Levi–Civita flat metric。** 本笔记不继续尝试修复其完整约束／自由度计数。

# 三参数 curvature 模型与 trace-vector 扩展

## 一般 quadratic curvature 约化

(1) 使 parity-even、无额外曲率导数的 quadratic curvature invariants 化为三个系数：

$$
S=\frac1{2\kappa}\int d^2x\sqrt{-g}
\left[R+a_1R^2+a_2R_{\mu\nu}R^{\mu\nu}+a_3R_{\mu\nu}R^{\nu\mu}\right].
\tag{11}
$$

源 §VI 定义

$$
H^{\nu\mu}=(1+2a_1R)g^{\nu\mu}+2a_2R^{\mu\nu}+2a_3R^{\nu\mu},
$$

并将联络场方程化为 $\nabla_\lambda(\sqrt{-g}H^{\nu\mu})=0$。metric equation 的 trace 为

$$
a_1R^2+a_2R_{\mu\nu}R^{\mu\nu}+a_3R_{\mu\nu}R^{\nu\mu}=0.
$$

Lorentzian 下这个式子不等于对普通矩阵 $A=(R_{\mu\nu})$ 随意取 $\operatorname{Tr}(AA^T)$；须用 metric 升指标。另一个真正保留 curvature 的变换是 special projective $\vartheta_\nu=\partial_\nu\vartheta$，它对全部曲率不变；不能与 (8) 的任意额外 $\xi$ 混同。

## 从源 (90) 出发的条件代数约化

> **从 (85) 直接变分的补充：** 下文 (12)–(15) 核对的是给定源 (90) 后的代数约化；源 (90) 本身与印出的作用量 (85) 不符，不能把 (12)–(15) 当作 (85) 的方程。见文末“直接变分”中的符号检验。

§VII 的具体模型再加 $b_1S_\mu S^\mu+b_2Q_\mu Q^\mu$。这只是作者选择的可算子族；没有在本文逐项证明所有其他 nonmetricity invariants 都只改变参数。

先取 $a_2=a_3=0$。记 $F=1+2a_1R$，以下解法要求 $a_1b_1b_2F\ne0$；退化点另论。源将其联络方程的反对称部分写为 $b_1S_\mu=8b_2Q_\mu$，对称部分写为 (90)。本节先说明这些印出方程内部如何约化，不把它们视为已验证的作用量变分：

$$
-\frac{Q_\lambda}{2}Fg^{\mu\nu}
+2a_1(\partial_\lambda R)g^{\mu\nu}
+FQ_\lambda{}^{\mu\nu}=8b_2\delta_\lambda^{(\mu}Q^{\nu)}.
\tag{12}
$$

以 $g_{\mu\nu}$ 收缩，第一与第三项抵消，左侧剩 $4a_1\partial_\lambda R$，右侧为 $8b_2Q_\lambda$。再收缩 $\lambda=\nu$，得到

$$
Q_\mu=\frac{a_1}{2b_2}\partial_\mu R,\quad
S_\mu=\frac{4a_1}{b_1}\partial_\mu R,\quad
q_\mu=\left(\frac12+\frac{8b_2}{F}\right)Q_\mu.
\tag{13}
$$

因此 $q=d[a_1R/(4b_2)+2\log|F|]$，在每个 $F$ 非零的连通分支上精确。把 (13) 代回 (12) 后可真正求得全 nonmetricity：

$$
Q_{\alpha\mu\nu}=a_1\left(\frac1{4b_2}-\frac2F\right)(\partial_\alpha R)g_{\mu\nu}
+\frac{4a_1}{F}g_{\alpha(\mu}\partial_{\nu)}R,
\tag{14}
$$

而 (3) 给 $S_{\mu\nu\alpha}=(8a_1/b_1)g_{\alpha[\nu}\partial_{\mu]}R$，再用 (4) 恢复 $\Gamma$。本次复算 (14) 的两种 trace 并逐分量代回 (12)，残差全零。

metric equation (96) 的 trace 也需要实际做：$b_1S_\mu S_\nu$ 与 $b_2Q_\mu Q_\nu$ 的 traceless 组合均不贡献，只剩

$$
a_1R^2-4b_2\widetilde\nabla_\mu Q^\mu=0.
$$

代入 (13)，在 $a_1\ne0$ 下得到源 (97)

$$
2\Box_gR=R^2,\qquad
\Box_g=\frac1{\sqrt{-g}}\partial_\mu(\sqrt{-g}g^{\mu\nu}\partial_\nu).
\tag{15}
$$

本次核对了这条来源内部推导的因子 2 和参数抵消。但它只是在接受源 (90)、(96) 后的条件结果；文末直接变分表明，印出的作用量 (85) 对应的必要方程应改为 $-2\Box_gR=R^2$，不能把 (15) 当作该作用量的方程。即便修正符号，仍须满足无迹 metric equations 和 $R=R(g,\Gamma[g,dR])$ 的自洽性；出现 $\Box R$ 不是自由度或稳定性分析。

## a3 = −a2 的向量通道要先处理归一化矛盾

(2) 给出

$$
a_2(R_{\mu\nu}R^{\mu\nu}-R_{\mu\nu}R^{\nu\mu})
=\frac{a_2}{2}\widehat R_{\mu\nu}\widehat R^{\mu\nu}.
$$

这使 $Q$ 的 curl 进入作用量。源 §VII.B 报告一个 Maxwell／Proca 型联络方程及耦合的 scalar trace equation：

$$
a_2\widetilde\nabla_\mu\widehat R^{\mu\nu}=2a_1\partial^\nu R-4b_2Q^\nu,
\qquad
2\Box_gR=R^2+\frac{a_2}{2a_1}\widehat R_{\alpha\beta}\widehat R^{\alpha\beta}.
$$

但其前提 (98) 与一般定义 (69) 有直接系数冲突。按 (69)、$a_3=-a_2$ 和 $2R^{[\mu\nu]}=\widehat R^{\mu\nu}$，应有

$$
H^{\nu\mu}=Fg^{\nu\mu}+2a_2\widehat R^{\mu\nu},
$$

而 p.12 的 (98) 印为 $Fg^{\nu\mu}+a_2\widehat R^{\mu\nu}$。本次以任意非对称二阶张量逐项核对，差为 $a_2\widehat R$，不是 signature 或指标交换所能消去。源未说明在这里重新定义 $a_2$。因此上述 vector equation 的归一化**暂不作为已核实结果**；第二个 trace equation 的形式可以由其作用量和 divergence 关系理解，但完整联络动力学需从作用量重新变分，而非选择性沿用 (98)–(104)。到这里停止，不把日读延伸为修订原论文的研究项目。

# 转译到 CPS：先保留哪些边界对象

本文没有计算 surface charge、symplectic current 或指定有限边界条件。为了明确它能如何接入当前工作，可从其作用量读出一个未改善的 presymplectic potential。以下是本笔记的局部变分推导，不是来源公式。

设 $\mathcal L_0$ 是不含 $\sqrt{-g}$ 的 (11) 加 $b_1S^2+b_2Q^2$，并定义

$$
B^{\mu\nu}=\frac{\partial\mathcal L_0}{\partial R_{\mu\nu}}
=Fg^{\mu\nu}+2a_2R^{\mu\nu}+2a_3R^{\nu\mu}.
$$

从 $\delta R_{\mu\nu}$ 的导数部分 $\partial_\alpha\delta\Gamma^\alpha{}_{\mu\nu}-\partial_\nu\delta\Gamma^\alpha{}_{\mu\alpha}$，以及 $Q_\alpha=-g^{\mu\nu}\partial_\alpha g_{\mu\nu}+2\Gamma^\mu{}_{\mu\alpha}$，分部积分得到 vector density

$$
\Theta^\alpha=\frac{\sqrt{-g}}{2\kappa}
\left[B^{\mu\nu}\delta\Gamma^\alpha{}_{\mu\nu}
-B^{\mu\alpha}\delta\Gamma^\lambda{}_{\mu\lambda}
-2b_2Q^\alpha g^{\mu\nu}\delta g_{\mu\nu}\right].
\tag{16}
$$

$S^2$ 没有场的导数，故不另供 $\Theta$。$Q^2$ 虽然看似是联络质量项，却含 metric 的一阶导数，因此最后一项不能漏掉。本次核对了 $Q^2$ 对 metric derivative 的系数；(16) 只是对当前作用量的直接导数项读取，未固定 boundary counterterms 或 corner ambiguity。

若采用 $\omega(\delta_1,\delta_2)=\delta_1\Theta(\delta_2)-\delta_2\Theta(\delta_1)$，接下来可以在明确边界条件后测试 (8) 的退化方向和区域缝合。**(9) 的散度不自动使其 Hamiltonian 为零，(10) 更不允许在 quadratic 模型中无条件约去它。** 这是本篇对 formulation equivalence 最值得保留的教训。

可靠的可复用内容是二维几何映射 (1)–(5)、EH 的边界位移和 (16) 的变分入口。(12)–(15) 仅重构源方程内部的条件推导；不能沿用它们作为作用量 (85) 的动力学。v1 的 (58)、(98)、§VII 联络方程的符号和 curvature-only 的 gauge-flat 推论均须处理。因此它是**有用但带技术警示的第三篇**，不是优先于 Ising 与 RT 的无条件新模型推荐。

## 直接变分：以联络位移核对源 §VII 的符号

从印出的作用量 (85) 直接变分，得到的 trace-vector 方程与上文从 (90) 开始约化的源方程不同。这一点不影响 (16) 的边界势。沿用导数指标在最后、$S_\mu=S_{\mu\lambda}{}^\lambda$；记 $\chi=1+2a_1R$、$\mathcal F=\widehat R=dQ/2$，设 $a_3=-a_2$，包括 $a_2=0$ 的情形。以下为固定 $g$、紧支撑的联络测试变分，不要求它们是作用量的对称变换。

- 对 (39) 的 $\xi$ 位移，(41) 给 $\delta R=2\widetilde\nabla_\mu\xi^\mu$，而 $\delta S_\mu=-\xi_\mu/2$、$\delta Q=0$。因此一次分部积分给变分系数 $-2\partial_\mu\chi-b_1 S_\mu$。
- 对射影位移 $\vartheta$，$\delta R=0$、$\delta S=-\vartheta/2$、$\delta Q=4\vartheta$、$\delta\mathcal F=2d\vartheta$。由于 Lagrangian 含 $a_2\mathcal F^2/2$，curl 项的 Euler 系数是 $-4a_2\widetilde\nabla_\mu\mathcal F^{\mu\nu}$。和其余两项相加为 $-b_1 S^\nu+8b_2 Q^\nu-4a_2\widetilde\nabla_\mu\mathcal F^{\mu\nu}$。

Mathematica 用八个任意联络分量核对了平直 Lorentz metric 上的两种位移，并以任意 $\chi,S,Q$ 的分量 Euler 变分独立复算了以上两个系数。故对 (85) 的正号约定，必要方程为

$$b_1 S_\mu=-4a_1\partial_\mu R,\qquad a_2\widetilde\nabla_\mu\mathcal F^{\mu\nu}=a_1\partial^\nu R+2b_2 Q^\nu.$$

$\mathcal F$ 的双散度为零（在密度表达式中用交换的两个偏导），所以 $2b_2\widetilde\nabla\cdot Q=-a_1\Box_g R$。独立地，固定联络作 $\delta g_{\mu\nu}=2\sigma g_{\mu\nu}$，$\delta Q=-4d\sigma$、$\delta\mathcal F=\delta S=0$；各曲率二次密度在二维的权重为 $-2$，故确实得到原文 (106) 的 $a_1R^2+a_2\mathcal F^2/2=4b_2\widetilde\nabla\cdot Q$。合并后，取 $a_1\ne0$，

$$-2\Box_gR=R^2+\frac{a_2}{2a_1}\mathcal F_{\mu\nu}\mathcal F^{\mu\nu},$$

即相对 (97)/(107) 改变波算符前的符号。$a_2=0$、$b_2\ne0$ 时，$Q=-a_1 dR/(2b_2)$；这解释了为何核对 (90) 之后的代数并不足以验证 (90) 本身。这个检验不处理退化支、无迹度规约束或自由度计数。

最后，从 (16) 取线性 $R$（令 $a_i=b_i=0$）。xAct 核对了 $B=g^{-1}$ 时两种位移的张量收缩：射影方向裸势为零，$\xi$ 方向为 $\iota_\xi\mathrm{vol}_g/\kappa$，恰等于 $\delta_\xi L$ 的边界改进项。由此裸的改进后 Noether 流相消；是否仍有角荷须由选定的边界作用量和容许变分决定。对 $f(R)$，可更直接反驳 (81)–(83)：取 $g=e^{2\phi}\eta$、Weyl 向量 $Q=0$、$2S=-d\phi$，则 $R=\tilde R-4\widetilde\nabla\cdot S=0$、$R_{(\mu\nu)}=0$，而 $\tilde R=-2\Box_g\phi$ 一般非零。这是在原文纯 $R+a_1R^2$ 支上不需要边界条件的局部例子。
