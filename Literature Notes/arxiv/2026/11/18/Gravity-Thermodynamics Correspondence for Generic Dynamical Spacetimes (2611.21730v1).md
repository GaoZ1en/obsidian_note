---
paper id: 2611.21730v1
title: Gravity/Thermodynamics Correspondence for Generic Dynamical Spacetimes
authors:
  - Vahid Reza Shajiee
  - Mohammad Mehdi Sheikh-Jabbari
  - Vahid Taghiloo
publication date: 2026-11-16T19:00:04+00:00
abstract: |-
  在 Einstein 引力及最小耦合物质中，作者为一般平滑零边界选择具有正非仿射参数的物理时钟，从协变 surface-charge variation 分出引力熵变一形式。这个一形式通常不可积，但沿指定时钟的产生率由剪切平方与 null matter stress 控制，在 NEC 下非负；平稳背景的一阶极限恢复 HWZ 动力学熵。
comments: "8+5 pages, 1 figure"
url: https://arxiv.org/abs/2611.21730v1
summary: "以明确 clock 和 transverse extension 将非可积 CPS 荷分成 heat/news/matter，并给出熵一形式闭合与动力学相容性的独立条件。"
tags: []
---

# 非可积熵变怎样仍有一个局部第二定律

[原文 v1](https://arxiv.org/abs/2611.21730v1)，hep-th 主类、gr-qc 交叉，PDF／印刷页码相同。对当前 CPS 工作，最有用的是：**有正的物理产生率，不要求场空间一形式先成为态函数；反过来，一形式闭合也不能代替物理时钟与演化的相容性。** 正文 §§II–VI 给出构造与第二定律，§VII 建立 HWZ 微扰联系；附录 A、B 是应用条件的实质部分，不应跳过。

作者选择的 heat/work split 并非 CPS 唯一强制的分解。下面的非负结论属于这个 split、这个时钟和这个 normal transport；不是对任意 entropy functional 或任意零向量归一化的普遍单调性断言。文件名以连字符替换题名斜杠。

## 1. 几何、允许变分及 boost 协变性

在 $d>2$ 维 Einstein gravity，取平滑零边界 $\mathcal N$，由 spacelike cuts $\Sigma$ 叶分解。选未来 null generator $l$ 与辅助 null normal $n$，$l\cdot n=-1$，并令

$$g_{\mu\nu}=-2l_{(\mu}n_{\nu)}+q_{\mu\nu},\qquad
\epsilon_{\mu\nu}=2l_{[\mu}n_{\nu]}.$$

$q$ 在 cut 上正定。变形张量及其分解为

$$\Theta^l_{\mu\nu}=q_\mu{}^\rho q_\nu{}^\sigma\nabla_\rho l_\sigma,
\quad\theta_l=q^{\mu\nu}\Theta^l_{\mu\nu},\quad
N^l_{\mu\nu}=\Theta^l_{\mu\nu}-\frac{\theta_l}{d-2}q_{\mu\nu},$$
$$l^\nu\nabla_\nu l^\mu=\kappa_l l^\mu,\qquad
\mathcal L_l\epsilon_\Sigma=\theta_l\epsilon_\Sigma,\quad
\delta\epsilon_\Sigma=\tfrac12\epsilon_\Sigma q^{\mu\nu}\delta q_{\mu\nu}.$$

固定零边界和 cut 的场空间识别，并要求 **covector** 变分

$$\delta l_\mu=\delta\phi\,l_\mu,\qquad
\delta n_\mu=\delta\psi\,n_\mu.$$

这不等于固定 contravariant $l^\mu,n^\mu$。定义

$$b[\delta]=-n^\mu\delta l_\mu+l^\mu\delta n_\mu=\delta(\phi-\psi),\qquad
\mathbb D_\delta\theta_l=\delta\theta_l-\tfrac12\theta_l b[\delta].\tag{5}$$

在 $l\mapsto e^\sigma l$、$n\mapsto e^{-\sigma}n$ 下，$\theta_l\mapsto e^\sigma\theta_l$、$b\mapsto b+2\delta\sigma$，于是 $\mathbb D_\delta\theta_l\mapsto e^\sigma\mathbb D_\delta\theta_l$。这项 boost connection 决定后面的熵式；若直接把 $b$ 丢掉，物理演化中的一项会缺失。

## 2. 为什么生成元离开边界的导数会进入荷

理论为

$$L=\frac{R-2\Lambda}{16\pi G}\epsilon+L_m(g,\Psi,\nabla\Psi),$$

物质无显式曲率耦合，变分满足完整耦合的线性化方程。使用 Lee–Wald potential，取作者的 corner ambiguity 处方。对场依赖生成元，必须用

$$k_\xi=\delta Q_\xi-Q_{\delta\xi}-\iota_\xi\Theta,\qquad
\not\!\delta H_\xi=\int_\Sigma k_\xi.\tag{14–15}$$

$Q$ 是场空间零形式，而 $k$、$\not\!\delta H$ 是一形式；从 Noether charge 的显式表达式不能直接读出可积 Hamiltonian。物质 contribution $\not\!\delta H_\xi^m$ 始终保留。

在边界附近分解

$$\xi^\mu=fl^\mu+Zn^\mu+\chi^\mu,\qquad q^\mu{}_{\nu}\chi^\nu=\chi^\mu,\quad Z|_{\mathcal N}=0.$$

定义横向一阶 jet 与 boost-invariant 系数

$$\mathcal W=-n^\mu\nabla_\mu Z|_{\mathcal N},\qquad
\mathcal K=f\kappa_l+\mathcal L_lf+\mathcal W.$$

$Z=0$ 不意味着 $\mathcal W=0$。再定义 tangential normal-commutator

$$J_\mu=q_\mu{}^\nu(l^\rho\nabla_\rho n_\nu-n^\rho\nabla_\rho l_\nu).$$

作者从 CPS prescription 得到

$$
\not\!\delta H_\xi=\not\!\delta H_\xi^m+
\frac1{16\pi G}\int_\Sigma\left[
\mathcal K\delta\epsilon_\Sigma+\chi^\mu\delta(\epsilon_\Sigma J_\mu)
-f\epsilon_\Sigma(2\mathbb D_\delta\theta_l+\Theta_l^{\mu\nu}\delta q_{\mu\nu})\right].
\tag{23}
$$

这条 general surface-charge reduction 是以下推导的来源输入；本次核对了实际 PDF，没有独立重新展开所有 Lee–Wald 分量和物质 Noether 项。后续的 trace/shear 分解、熵产生率及闭合条件则在这里从它继续实际复算。

## 3. 可允许的时钟不是任意取 $f=1$（§IV、附录 A）

物理 clock 没有 tangential shift：$\zeta=fl+Zn$，$f>0$、$Z|_{\mathcal N}=0$。它在边界上的 non-affinity 是

$$\kappa_\zeta=f\kappa_l+\mathcal L_lf.$$

要求 $\mathcal L_\zeta n_\mu$ 仍沿 $n_\mu$，等价于

$$\mathcal L_\zeta n_\mu=f\mathcal L_ln_\mu-\nabla_\mu f\ \propto n_\mu.$$

令 $v$ 为 cut label，$\tau=(\mathcal L_lv)^{-1}>0$。可选择 compatible extension 使 $n_\mu|_{\mathcal N}=-\tau\nabla_\mu v$，于是切向投影满足

$$A_a=q_a{}^\nu\mathcal L_ln_\nu=D_a\ln\tau.$$

空间方程 $D_a\ln f=A_a$ 因此局部可积：

$$f=\tau F(v),\qquad F(v)>0,\qquad dt=\frac{dv}{F(v)}.\tag{A7}$$

横向方程固定 $n\cdot\nabla\ln f$；原文 (A8) 给出满足它的一阶光滑延拓。剩余的 $Z$ 横向 jet 选为

$$l^\mu n^\nu\mathcal L_\zeta g_{\mu\nu}=0
\quad\Longleftrightarrow\quad\mathcal W=\kappa_\zeta,
\qquad\mathcal K=2\kappa_\zeta.\tag{27}$$

最后在足够小的光滑 patch 选 $F$ 使 $\kappa_\zeta>0$。局部存在不表示全局唯一。一般 cut 上 $\tau$ 有空间依赖，故固定 frame 后 $f=1$ 未必满足 clock 条件。

这给出

$$\mathcal L_\zeta l_\mu=-(\mathcal L_lf)l_\mu,
\qquad\mathcal L_\zeta n_\mu=(\mathcal L_lf)n_\mu.$$

并且 $n\cdot\nabla(\zeta^2)=2f\kappa_\zeta>0$，所以沿 $-n$ 方向稍离开边界，$\zeta$ 成为 timelike，$u=\zeta/\sqrt{-\zeta^2}$ 定义局部 observer congruence。温度参数是

$$T_\zeta=\frac{\kappa_\zeta}{2\pi}>0.$$

它与给定 clock 共轭且对 null-frame boost 不变；本文没有证明非平稳 detector response 必为此温度的 Planck spectrum。改变 $F(v)$ 是改变物理 clock；一般不只是 Lorentz gauge 变换。

## 4. 从荷式到 heat/news/matter 的第一定律

令 canonical evolution vector 为 $\xi=\zeta+\chi$，$\not\!\delta E=\not\!\delta H_\xi$，并定义 $\boldsymbol J_\mu=\epsilon_\Sigma J_\mu/(16\pi G)$。把

$$\Theta_l^{\mu\nu}\delta q_{\mu\nu}
=N_l^{\mu\nu}\delta q_{\mu\nu}
+\frac{2\theta_l}{d-2}\frac{\delta\epsilon_\Sigma}{\epsilon_\Sigma}$$

代入 (23)，再用 $\mathcal K=2\kappa_\zeta$，得到

$$
\not\!\delta E-\not\!\delta H_\xi^m-\int_\Sigma\chi^\mu\delta\boldsymbol J_\mu
=\frac1{16\pi G}\int_\Sigma\left[
2\kappa_\zeta\delta\epsilon_\Sigma-2f\epsilon_\Sigma\mathbb D_\delta\theta_l
-\frac{2f\theta_l}{d-2}\delta\epsilon_\Sigma
-f\epsilon_\Sigma N_l^{\mu\nu}\delta q_{\mu\nu}\right].
$$

这就是系数的实际来源；横向条件产生的二倍因子不可遗漏。作者把最后一项定义为 news work，把前三项除以 $T_\zeta$ 定义 entropy one-form density：

$$
\boxed{\alpha_\zeta:=\not\!\delta s_\zeta
=\frac1{4G}\left[\delta\epsilon_\Sigma-
\beta\left(\epsilon_\Sigma\mathbb D_\delta\theta_l+
\frac{\theta_l}{d-2}\delta\epsilon_\Sigma\right)\right]},
\qquad\beta=\frac f{\kappa_\zeta}>0.
\tag{36}
$$

因此

$$\not\!\delta E=\int_\Sigma T_\zeta\alpha_\zeta+
\int_\Sigma\chi^\mu\delta\boldsymbol J_\mu+\not\!\delta W_{\rm news}+\not\!\delta H_\xi^m,$$
$$\not\!\delta W_{\rm news}=-\frac1{16\pi G}\int_\Sigma f\epsilon_\Sigma N_l^{\mu\nu}\delta q_{\mu\nu}.\tag{37–38}$$

$\alpha_\zeta$ 是一种由 charge split 定义的引力 heat 一形式；物质 surface charge 不是被设成零，也没有被误写为 $T_{ll}$。它可以包含物质 work，但须按具体 $L_m$ 和边界条件另分解。

## 5. 第二定律的决定性消项（§VI）

评价在指定物理演化 $\delta_\zeta=\mathcal L_\zeta$ 上，而不是任意场空间方向。clock transport 给出

$$\delta_\zeta\epsilon_\Sigma=f\theta_l\epsilon_\Sigma,
\quad b[\delta_\zeta]=-2\mathcal L_lf,
\quad\mathbb D_{\delta_\zeta}\theta_l=f\mathcal L_l\theta_l+\theta_l\mathcal L_lf.$$

于是

$$
\begin{aligned}
4G\,\alpha_\zeta[\delta_\zeta]
&=f\theta_l\epsilon_\Sigma-
\frac{f\epsilon_\Sigma}{\kappa_\zeta}
\left(f\mathcal L_l\theta_l+\theta_l\mathcal L_lf+
\frac{f\theta_l^2}{d-2}\right)\\
&=\frac{f^2\epsilon_\Sigma}{\kappa_\zeta}
\left(\kappa_l\theta_l-\mathcal L_l\theta_l-\frac{\theta_l^2}{d-2}\right).
\end{aligned}
$$

第二行使用 $\kappa_\zeta=f\kappa_l+\mathcal L_lf$；正是 $b$ 项使 $\mathcal L_l f$ 正确抵消。twist-free non-affine Raychaudhuri 方程为

$$\mathcal L_l\theta_l=\kappa_l\theta_l-\frac{\theta_l^2}{d-2}
-N^l_{\mu\nu}N_l^{\mu\nu}-R_{\mu\nu}l^\mu l^\nu.$$

从 $\Theta_l=N_l+\theta_lq/(d-2)$、$q:N_l=0$ 得 $\Theta_l:\Theta_l=N_l:N_l+\theta_l^2/(d-2)$；xAct 在四维时空对应的二维 cut 上检验了这个分解的收缩系数。将标准 Raychaudhuri 恒等式代入后，Mathematica 精确复算得到

$$
\boxed{\mathcal P_\zeta:=\alpha_\zeta[\delta_\zeta]
=\frac{f^2\epsilon_\Sigma}{4G\kappa_\zeta}
(N^l_{\mu\nu}N_l^{\mu\nu}+R_{ll})\ge0}.\tag{42}
$$

所需条件是：$G>0$、正定 cut metric、$f>0$、$\kappa_\zeta>0$、平滑叶分解、Einstein 方程及 NEC。$R_{ll}=8\pi GT_{ll}$，宇宙常数项因 $l^2=0$ 消失。结论是非负而非总是严格正；真空无剪切时为零。它不要求 $\theta_l\ge0$，也不需要 future endpoint 条件。$\kappa_\zeta=0$ 的极限需要单独处方。

物理意义可在收缩的 Minkowski 光锥上看清：$R_{ll}=0$、$N_l=0$，面积减小却有 $\mathcal P_\zeta=0$。因此这里的 entropy production 不是 $\mathcal L_\zeta(A/4G)$。对一般带剪切的收缩零边界，前者可以正而后者负。

沿同一 clock 和 normal transport 的历史 $\gamma$，

$$S_{\rm hist}(t_2)-S_{\rm hist}(t_1)=\int_{t_1}^{t_2}dt\int_\Sigma\mathcal P_\zeta\ge0.$$

这定义有参考常数的历史积分，不是在每个 cut 上自动存在一个与路径无关的 $S[g]$。一般路径的积分不受这条物理方向上的不等式约束。

## 6. 可积性可以完整分类，但还要与 clock 和动力学相交（附录 B）

取固定 reference area form $\epsilon_\star$，$\epsilon_\Sigma=a\epsilon_\star$、$a>0$、$\delta\epsilon_\star=0$；在局部场空间片上令 $b=2\delta\varpi$。记

$$X=a^{1/(d-2)}e^{-\varpi}\theta_l,\qquad
Y=a^{(d-3)/(d-2)}e^{\varpi}\beta>0.$$

逐项微分得到

$$Y\delta X=\beta\left(a\delta\theta_l+\frac{\theta_l}{d-2}\delta a-a\theta_l\delta\varpi\right),$$

所以

$$\alpha_\zeta=\frac{\epsilon_\star}{4G}(\delta a-Y\delta X),
\qquad\delta\alpha_\zeta=-\frac{\epsilon_\star}{4G}\delta Y\wedge\delta X.\tag{B8–B9}$$

Mathematica 对 $(a,\theta_l,\varpi,\beta)$ 的四个一形式系数和整个 $4\times4$ 外微分矩阵逐项验证了这两式。原先非可积问题由此成为一个很具体的条件 $\delta Y\wedge\delta X=0$。

在 $\delta X\ne0$ 的 regular patch，以 $(X,z^I)$ 为场空间坐标，闭合迫使 $\partial Y/\partial z^I=0$，故

$$Y=\mathcal F(X;x),\qquad\mathcal F>0.$$

$\mathcal F$ 的参数在所选 sector 内固定，$x$ 只是 cut 上的点。若 $\partial_X\mathcal U=\mathcal F$，则

$$s_\zeta=\frac{\epsilon_\star}{4G}[a-\mathcal U(X;x)]$$

为局部 primitive。$\delta X=0$ 的 sector 则直接给面积变分。不是只有严格 non-expanding sector 才可能恢复面积一形式。

一个常被误认为普遍答案的 comparison density 是

$$s_{\rm int}=\frac{\epsilon_\Sigma}{4G}(1-\beta\theta_l)
=\frac{\epsilon_\star}{4G}(a-XY).$$

实际差为

$$\alpha_\zeta-\delta s_{\rm int}
=\frac{\epsilon_\star}{4G}X\delta Y
=\frac{\theta_l}{4G}\left[
\frac{d-3}{d-2}\beta\delta\epsilon_\Sigma+
\epsilon_\Sigma\delta\beta+\tfrac12\beta\epsilon_\Sigma b\right].\tag{55,B15}$$

此式也已独立复算。一般闭合只要求 $Y=\mathcal F(X)$，并不要求 $\delta Y=0$；后者是让 **这个特定 $s_{\rm int}$** 成为 primitive 的更强条件。固定 $b=0,\delta\beta=0$ 时，闭合障碍是

$$\delta\alpha_\zeta=-\frac{\beta}{4G}\frac{d-3}{d-2}
\delta\epsilon_\Sigma\wedge\delta\theta_l.$$

$d=3$ 的这个特定障碍消失；不能将它推广为任意边界 ensemble 的全部引力荷必定可积。

### 6.1 代数闭合并未验证物理条件

候选 $\beta$ 还要来自 §3 中同一个 clock。由 $f=\tau F(v)$ 推得

$$\beta^{-1}=\kappa_l+\mathcal L_l\ln\tau+\tau^{-1}\partial_v\ln F.$$

所以定义 $C=\tau(\beta^{-1}-\kappa_l-\mathcal L_l\ln\tau)$，一个未选定的 clock 存在要求 $D_aC=0$；此时

$$F(v)=F_0\exp\int^v C(s)ds.$$

若 clock 已固定，则须满足更强的 $C=\partial_v\ln F$，不能为使熵闭合而任意再调它。演化也必须切于所选 sector：$Y=\mathcal F(X)$ 要求 $\delta_\zeta Y=\mathcal F_X\delta_\zeta X$。

对面积 sector $X=X_0$，Raychaudhuri 给出

$$\delta_\zeta X=e^{-\varpi}a^{1/(d-2)}
[\kappa_\zeta\theta_l-f(N_l^2+R_{ll})].$$

要保持 $X=X_0$，因此需要 $\theta_l=\beta(N_l^2+R_{ll})\ge0$。这解释了为什么“代数上可积的负 expansion 面积 sector”未必能被物理演化保持。non-expanding preserved sector 在 NEC 下必须同时无剪切、无 null matter flux；这仍不证明整个时空平稳。

最后，闭合只保证局部 primitive；全局 entropy 还要所有场空间闭合回路的 period 为零。只要求积分熵可积时，条件是 $\int_\Sigma\epsilon_\star\delta Y\wedge\delta X=0$，可能比点态闭合弱，但空间总导数的消失要受 cut 边界条件控制。

## 7. 与 HWZ 的联系准确到哪个阶（§VII）

取非极端 bifurcate Killing horizon 的 stationary reference，固定 horizon-preserving gauge、affine $k$ 和参数 $v$，$\xi_H=\kappa_0vk$，$v=0$ 于 bifurcation surface。背景选择

$$l_0=k,\quad f_0=\kappa_0v,\quad\kappa_{\zeta,0}=\kappa_0,
\quad\theta_{l,0}=N_{l,0}=0.$$

在该参考点评价一阶 entropy variation，$\beta_0=v$，含 $\theta_0$ 的各项消失，故

$$\alpha_\zeta|_0=\frac1{4G}(\delta\epsilon_\Sigma-v\epsilon_0\delta\theta_k)
=\delta\left[\frac{\epsilon_\Sigma}{4G}(1-v\theta_k)\right]_0.$$

这恢复原文采用的 HWZ functional

$$S_{\rm HWZ}=\frac1{4G}\int_\Sigma\epsilon_\Sigma(1-v\theta_k).$$

它是固定背景系数后的线性化匹配，不等于证明有限邻域中 $\delta\alpha=0$；在 $X=0$ 的参考点，$X\delta Y$ 可以消失而 $\delta Y\wedge\delta X$ 仍非零。

真空微扰 $N_l=\lambda N_{(1)}+O(\lambda^2)$ 给

$$\mathcal P_\zeta=\lambda^2\frac{\kappa_0v^2\epsilon_0}{4G}N_{(1)}^2+O(\lambda^3).$$

进一步施加 $\theta_1=0$，仿射 Raychaudhuri 在二阶有 $\partial_v\delta^2\theta=-2N_{(1)}^2$。对 $\epsilon(1-v\theta)$ 求 $v$ 导数，线性 $\epsilon\theta$ 项相消，得到

$$\frac d{dv}\delta^2S_{\rm HWZ}=\frac1{2G}\int_\Sigma v\epsilon_0N_{(1)}^2.\tag{57}$$

从 clock rate 换成 affine rate 要除以 $\kappa_0v$；从 $\lambda^2$ 系数换成 $\partial_\lambda^2|_0$ 再乘 2。这样与精确产生率完全对应，而不是把两种“二阶”记号直接等同。没有 $\theta_1=0$ 时，不能无条件沿用这条纯剪切 HWZ 二阶比较。

## 8. 对当前研究可以直接拿走什么

可复用的主要对象是固定-cut field-space 上的 $\alpha_\zeta$、normal jet $\mathcal W=\kappa_\zeta$、以及闭合障碍 $\delta Y\wedge\delta X$。用它们比较不同 CPS polarization、边界 ensemble 或 entropy prescription 时，应同时追踪 $Q_{\delta\xi}$、normal boost 和 matter charge。若考虑区域缝合，clock 与 cut identification 也应成为 matching 输入，不能只把两侧 $A/4G$ 相加。

本次 Mathematica 复算了 boost 协变性、(36)→(42) 的完整消项、(B7)–(B9) 的坐标变换、comparison-density 差和固定 $\beta$ 的闭合系数；xAct 验证了四维情形 trace/shear 收缩。一般 Lee–Wald surface-charge reduction、全局 observer existence、物质模型的具体 work 分解与 HWZ 文献的独立证明仍是来源输入。局部第二定律在上述假设下成立；它没有解决非最小耦合／高阶曲率引力、量子 NEC 违背或微观 entropy 解释。
