---
paper id: 2611.23377v1
title: The Holomorphic-Topological Poisson Sigma Model and Quantization of Affine W-algebras
authors:
  - Niklas Garner
  - Brian R. Williams
  - Paul-Hermann Balduf
publication date: 2026-11-17T19:00:02Z
abstract: |-
  A linear differential-graded presentation of the classical principal affine W-algebra identifies its holomorphic-topological universal bulk with Chern–Simons theory near a principal nilpotent background. Holomorphic gauge gives a finite one-loop-exact quantization, whose oper boundary observables form the principal affine W-algebra at level k minus h-dual times hbar. In rank one the authors construct a perturbative BV comparison with chiral gravity, including boundary conditions, and determine the quantum parameter matching.
comments: "28+15 pages; PDF 43 pages"
url: https://arxiv.org/abs/2611.23377v1
summary: "把 CS 边界代数的 level shift、BRST 微分的正规序修正和复合 Virasoro 生成元放进同一构造，并给出局部 BV 等价所需的实际场映射。"
tags: []
---

# 从线性 dg 表示到量子边界 W-代数

这篇可以直接用于当前 AdS3／边界代数量子化的三个问题：CS 裸耦合如何对应 affine level；换到 oper 极化后，一圈修正究竟出现在 OPE 还是 BRST 微分；CS 与引力变量的保辛映射是否足以推出整个可观测量代数等价。尤其有用的是 rank-one 结果

$$
k_\hbar=k-h^\vee\hbar,
\qquad c_{W,\hbar}=-6k+13\hbar-\frac{6\hbar^2}{k},
$$

以及它不与 bulk one-loop exactness 冲突的具体解释。

来源为 [arXiv v1](https://arxiv.org/abs/2611.23377v1)，43页，PDF 页码与印刷页码相同。§2建立方法，§3处理一般主 $W$-代数，§4给 rank-one 的经典与量子比较，附录A页28–40计算系数。下文按这条依赖链重构；Sage 检查有限维颜色因子，Mathematica 复算关键参数积分、正规序系数与局部 canonical identity。没有把这些有限检验等同于全套 BV obstruction theory 的独立证明。

## 1. 为什么先换 dg 表示，而不是直接量子化非线性 W 括号

Poisson vertex algebra 是经典手征局部算符代数；$\lambda$-括号编码接触项及其导数。若量子 OPE 写成

$$
O_i(z)O_j(w)\sim\sum_{n\ge0}\frac{C^{(n)}_{ij}(w;\hbar)}{(z-w)^{n+1}},
$$

则 $[O_{i\,\lambda}O_j]=\sum\lambda^nC^{(n)}_{ij}/n!$，而经典括号是 $\hbar^{-1}[\ ,\ ]\bmod\hbar$。量子化不是仅找一个满足相似交换关系的代数，还须构造其微分并取上同调。

HT Poisson sigma model 将一个这样的边界理论实现为三维 universal bulk 的边界条件。对一般非线性 $W$ 括号，bulk 相互作用可能超出 one-loop-exact mixed BF 类。作者改用**与 $W$ 拟同构、但括号线性的 reduced Drinfel’d–Sokolov 复形**。其三维 bulk 正是带 nilpotent 背景的 CS；量子化后再取上同调。表示的改变在这里实际改变了可计算性，不能省略成一句“做 DS reduction”。

## 2. Affine 测试例：作用量、极化与 level shift（§2，页5–12）

### mixed BF 与 CS 的实际字典

时空为 $\mathbb C\times\mathbb R$ 或半空间 $t\ge0$，$z=x+iy$，定向 $dx\,dy\,dt$。把含 $dz$ 的微分形式商掉，得到只含 $d\bar z,dt$ 的 HT 复形，

$$
d'=d\bar z\,\partial_{\bar z}+dt\,\partial_t.
$$

$K$ 是 $\mathbb C$ canonical bundle 的拉回；作为 $K$ 的 frame，$dz$ 的 cohomological degree 为0，不要把它与普通 exterior $dz$ 的 Koszul 号混为一谈。BV superfields 为

$$
\mathbf A\in\Omega^{(0),\bullet}[1]\otimes\mathfrak g,
\qquad \mathbf Bdz\in\Omega^{(1),\bullet}\otimes\mathfrak g^\vee,
\qquad \Omega_{\rm BV}=\int dz\,\langle\delta\mathbf B,\delta\mathbf A\rangle.
$$

这是 degree $-1$ 的 BV pairing，并非直接等于实 Lorentzian CPS 的 degree0 辛形式。$K_{ab}=\operatorname{Tr}(T_aT_b)$，归一化使
$\operatorname{Tr}_{\mathfrak g}(\operatorname{ad}_X\operatorname{ad}_Y)=2h^\vee K(X,Y)$。作用量为

$$
S=\int dz\left[
\langle\mathbf B,d'\mathbf A+\tfrac12[\mathbf A,\mathbf A]\rangle
+\frac{ik}{4\pi}\operatorname{Tr}(\mathbf A\partial_z\mathbf A)\right].
$$

对 $k\ne0$，完整 CS connection 为

$$
\mathcal A^a=\mathbf A^a-dz\,\frac{2\pi K^{ab}}{ik}\mathbf B_b,
\qquad
S_{\rm CS}=-\frac{ik}{4\pi}\int\operatorname{Tr}
 (\mathcal A d\mathcal A+\tfrac23\mathcal A^3).
$$

这固定了本文 $k$ 的符号。与边界 affine generators 的转换是

$$
\beta^a=(2\pi i)^{-1}\mathbf A^a,\qquad
J_a=2\pi i\mathbf B_a.
$$

令 $\beta|=0$（即 $\mathbf A|=0$）的 Dirichlet 条件留下边界 $J_a$，经典代数为

$$
\{J_{a\,\lambda}J_b\}=f_{ab}{}^cJ_c+kK_{ab}\lambda.
$$

### one-loop exactness 用到了哪些条件

相互作用必须平移不变，只含常系数 $\partial_z$，且每个 vertex 至多含一个 $B$：$I=I_0(A)+BI_1(A)$。使用保持 $A$–$B$ split 的 holomorphic gauge，free propagator 为 (2.21)

$$
\Pi(z,t;w,s)=\frac1{4\pi i}
\frac{(t-s)d(\bar z-\bar w)-2(\bar z-\bar w)d(t-s)}
{(|z-w|^2+(t-s)^2)^{3/2}}.
$$

半空间的 kernels 为 $\Pi_N=\tfrac12(\Pi-\rho_t^*\Pi)$、$\Pi_D=\tfrac12(\Pi-\rho_s^*\Pi)$，其中 $N$ 指 $B|=0$，$D$ 指 $A|=0$。反射是**对微分形式的 pullback**，也改变 $dt$ 或 $ds$；若只把分母中的 $t$ 换成 $-t$，会错掉关键符号和一圈系数。

每条 edge 只能收缩一个 $A$ 和一个 $B$。两个 elementary boundary insertions、$V$ 个 interaction vertices 至多提供 $V+2$ 条 $B$ legs，故 $E\le V+2$，$L=E-V-1\le1$；振幅为 $\hbar^{E-V}=\hbar^{L+1}$。finite／QME 的结论还使用作者引用的 holomorphic-gauge 构造；单纯 graph count 不是任意正则化下的 anomaly 消失证明。**复合插入**可提供更多收缩，不能据此宣称它们的 OPE 也只到 $\hbar^2$。

### 从原始 B OPE 看清 shift 的正负

树级两图和一圈图给原文 (2.27)

$$
B_a(z)B_b(w)\sim\hbar\left[
-\frac{kK_{ab}}{4\pi^2(z-w)^2}
+\frac{f_{ab}{}^cB_c(w)}{2\pi i(z-w)}\right]
+\hbar^2\frac{h^\vee K_{ab}}{4\pi^2(z-w)^2}.
$$

乘上 $(2\pi i)^2$ 后，

$$
J_a(z)J_b(w)\sim\hbar\left[
\frac{(k-h^\vee\hbar)K_{ab}}{(z-w)^2}
+\frac{f_{ab}{}^cJ_c(w)}{z-w}\right].
$$

因此 $k$ 是 action 中的经典耦合，$k_\hbar=k-h^\vee\hbar$ 才是此处量子 affine level。不要把传统另一种 CS 作用量号差下的 level shift 机械搬过来。附录A.3 all-Dirichlet 的同一修正为
$-i\hbar h^\vee\int dz\operatorname{Tr}(A\partial_zA)/(4\pi)$，符号一致。

## 3. 主 W-代数：shift 在微分中出现，而非直接改写 elementary OPE（§3）

### 经典 reduced DS 复形及其 bulk

选 $\mathfrak g=\mathfrak n_-\oplus\mathfrak h\oplus\mathfrak n_+$，正根指标 $\alpha$，$a,b,c$ 以下取 $\mathfrak b_-=\mathfrak n_-\oplus\mathfrak h$ 的基。character 满足简单根 $\chi(e_\alpha)=1$，其他正根为0。完整 DS 复形由 affine currents $\widetilde J_a$ 与 odd ghosts／antighosts $\psi^\alpha,\psi_\alpha$ 组成，

$$
\{\psi^\alpha{}_{\lambda}\psi_\beta\}=\delta^\alpha_\beta,
\quad
\mathcal Q=\psi^\alpha(\widetilde J_\alpha-\chi(e_\alpha))
-\tfrac12f_{\alpha\beta}{}^\gamma\psi_\gamma\psi^\alpha\psi^\beta,
\quad Q_{\rm cl}=\{\mathcal Q_0,-\}.
$$

先将 current 改为 $J_a=\widetilde J_a+f_{a\alpha}{}^\beta\psi_\beta\psi^\alpha$，移除由正根约束 current 与 antighost 组成的 acyclic sector。得到只由 $J_a,\psi^\alpha$ 生成的 reduced model，括号和微分为

$$
\{J_{a\,\lambda}J_b\}=f_{ab}{}^cJ_c+kK_{ab}\lambda,
\quad\{J_{a\,\lambda}\psi^\alpha\}=-f_{a\beta}{}^\alpha\psi^\beta,
\quad\{\psi^\alpha{}_{\lambda}\psi^\beta\}=0,
$$
$$
Q_{\rm cl}J_a=f_{\alpha a}{}^b\psi^\alpha J_b
+f_{\beta a}{}^\alpha\chi(e_\alpha)\psi^\beta
+kK_{a\alpha}\partial\psi^\alpha,
\quad Q_{\rm cl}\psi^\alpha=-\tfrac12f_{\beta\gamma}{}^\alpha\psi^\beta\psi^\gamma.
$$

其 $H^0$ 为经典主 $W_k(\mathfrak g)$，其他次数的消失是所用 DS 理论的输入。principal grading 给 Cartan degree0、$e_\alpha$ degree $\operatorname{ht}\alpha$、$f_\alpha$ 负 height；边界 $J_a,\psi^\alpha$ 的 holomorphic weights 分别为 $1-\mathrm{pg}(T_a)$、$\mathrm{pg}(e_\alpha)$。这些 weights 决定 bulk 场的 $K$ 次幂，并非装饰性 grading。

给这些场加 canonical partners $\beta_J^a,\beta_{\psi,\alpha}$。universal bulk 的动力项为 $\int dz(\beta_Jd'J+\beta_\psi d'\psi)$，Poisson interaction 是

$$
2\pi i\int dz\left[
\tfrac12\beta_J^a\beta_J^bf_{ab}{}^cJ_c
-\tfrac12kK_{ab}\beta_J^a\partial\beta_J^b
+\beta_J^a\beta_{\psi,\alpha}f_{a\beta}{}^\alpha\psi^\beta\right],
$$

还必须加 $\int dz[\beta_J^aQ_{\rm cl}J_a+\beta_{\psi,\alpha}Q_{\rm cl}\psi^\alpha]$；后者实际实现微分，不能只量子化括号而漏掉它。

代入

$$
A^a=2\pi i\beta_J^a,\quad A^\alpha=-\psi^\alpha,
\qquad B_a=J_a/(2\pi i),\quad
B_\alpha=-\beta_{\psi,\alpha}+\chi(e_\alpha)/(2\pi i),
$$

就得到 CS 在常 $B_\alpha$ 背景的展开。canonical 边界条件 $\beta|=0$ 变成

$$
A^a|=0,\qquad B_\alpha|=\chi(e_\alpha)/(2\pi i).
$$

这就是 oper 条件。$\chi$ 经 invariant pairing 对应简单负根向量之和，即 principal nilpotent。背景平移产生的 $\int b_\alpha d'A^\alpha$ 是 boundary term，需由固定 $B_\alpha$ 极化的边界作用量抵消；$b_\alpha f_{\beta\gamma}{}^\alpha A^\beta A^\gamma=0$ 因 $\chi$ 是 character。留下的二次 Higgs 项正是 $\chi(e_\alpha)f_{\beta a}{}^\alpha\beta_J^a\psi^\beta$。

### 混合边界 kernel 产生的双线性型

oper 条件对不同 Lie 方向采用不同极化，因此 local chiral quadratic correction 不是单一的 invariant level shift。原文定理3.1给

$$
I^{(1)}_{\rm loc,2}=\frac{i\hbar}{4\pi}\int dz\,\mathcal B(A,\partial_zA),
$$
$$
\mathcal B(X,Y)=\tfrac12\operatorname{Tr}_{\mathfrak g}
(P_+\operatorname{ad}_XP_+\operatorname{ad}_Y)
-\tfrac12\operatorname{Tr}_{\mathfrak g}
(P_-\operatorname{ad}_XP_-\operatorname{ad}_Y),
$$

其中 $P_+$ 投影到 $\mathfrak n_+$，$P_-=1-P_+$。我用 $\mathcal B$ 区别此双线性型与 bulk field $B$。它在 Cartan 上为零，在 $\mathfrak b_-\otimes\mathfrak b_-$ 上为零，且对 $[e_\alpha,f_\alpha]=h_\alpha$、$\alpha(h_\alpha)=2$ 的归一化有

$$
\mathcal B(e_\alpha,f_\beta)=-\delta_{\alpha\beta}.
$$

理由是 $P_+$ 与 Cartan 作用对易，正负根的纯子空间 trace 相消，剩下经过 Cartan 的一项，其 trace 正是 $\alpha(h_\alpha)=2$。$\mathcal B$ 不必全 $\mathfrak g$-invariant；被抽出的局部二次项也不必单独 BV-closed，QME 约束的是整个有效相互作用。

Sage 在 Chevalley 基上精确检查了 $A_1,A_2,B_2,G_2$：上述限制为零、简单根配对均为 $-1$，正根 adjoint 的两点 trace 为零。后者也是混合边界 anomaly argument 中的颜色消项。非 simply-laced 例子有 $K(e_i,f_i)=1,2$（$B_2$）或 $3,1$（$G_2$），而 $\mathcal B(e_i,f_i)$ 仍全是 $-1$，具体显示不能把 $\mathcal B$ 随便替成 $-K$。一般型结论的依据是前述 trace 证明，不是四个有限实例。

### 把正规序和一圈微分一起带入 DS identification

oper 条件留下的 elementary OPE 仍是

$$
J_a(z)J_b(w)\sim\hbar\left[
\frac{kK_{ab}}{(z-w)^2}+\frac{f_{ab}{}^cJ_c(w)}{z-w}\right],
\quad
J_a(z)\psi^\alpha(w)\sim-\hbar\frac{f_{a\beta}{}^\alpha\psi^\beta(w)}{z-w}.
$$

这里 double pole 仍为 **k**：因 $\mathcal B|_{\mathfrak b_-\otimes\mathfrak b_-}=0$，不能直接把它替成 $k_\hbar$。修正位于原文 (3.29) 的微分：

$$
Q_\hbar J_a=\tfrac12f_{\alpha a}{}^b
(:\psi^\alpha J_b:+:J_b\psi^\alpha:)
+f_{\beta a}{}^\alpha\chi(e_\alpha)\psi^\beta
+(kK_{a\alpha}+\hbar\mathcal B(T_a,e_\alpha))\partial\psi^\alpha,
$$
$$
Q_\hbar\psi^\alpha=-\tfrac12f_{\beta\gamma}{}^\alpha:\psi^\beta\psi^\gamma:.
$$

令 $C_{a\beta}=\sum_{\alpha,b}f_{\alpha a}{}^bf_{b\beta}{}^\alpha$，将对称正规序改成 $f_{\alpha a}{}^b:\psi^\alpha J_b:$ 时另减 $\hbar C_{a\beta}\partial\psi^\beta/2$。用

$$
M(X,Y)=\operatorname{Tr}(P_+\operatorname{ad}_XP_+\operatorname{ad}_Y),
\qquad \mathcal B(T_a,e_\beta)-\tfrac12C_{a\beta}
=M(T_a,e_\beta)-h^\vee K_{a\beta},
$$

导数项才成为 $(k-h^\vee\hbar)K_{a\beta}+\hbar M(T_a,e_\beta)$，恰是 reduced quantum DS differential 的系数。Sage 同样对上述四型的全部 $a\in\mathfrak b_-$、$e_\beta\in\mathfrak n_+$ 检查了此 trace identity，均成立。连同 $M|_{\mathfrak b_-\otimes\mathfrak b_-}=h^\vee K$，**OPE 与微分合在一起**才识别为 affine level $k-h^\vee\hbar$ 的 reduced DS complex；取上同调得到定理3.3的 $W_{k-h^\vee\hbar}(\mathfrak g)$。

## 4. sl2：可以把量子修正完整追到一个 Virasoro 生成元（§4.1–4.4）

### 经典复形与 chiral gravity

rank one reduced fields 为偶 $h,f$ 和奇 $\psi$，

$$
Qh=-2\psi,\quad Qf=h\psi+k\partial\psi,\quad Q\psi=0,
$$
$$
\{h_\lambda h\}=2k\lambda,\quad\{h_\lambda f\}=-2f,
\quad\{h_\lambda\psi\}=-2\psi.
$$

对 $k\ne0$，$T=k^{-1}(f+h^2/4+k\partial h/2)$ 闭合，

$$
\{T_\lambda T\}=\partial T+2\lambda T-\frac{k}{2}\lambda^3,
\qquad c=-6k.
$$

另一 bulk presentation 是 chiral gravity：

$$
S_{\rm grav}=\int dz\left[G(d'\mu+\mu\partial\mu)
+\frac{ic}{48\pi}\mu\partial^3\mu\right],
\qquad\Omega_{\rm BV}=\int dz\,\delta G\delta\mu.
$$

$\mu$ 是 transverse-holomorphic-foliation 的 Beltrami 型变形，$d'\mu+\mu\partial\mu=0$ 是可积性；$G$ 为其共轭二次微分。$\mu|=0$ 留下边界 $T=-2\pi iG$。它不是论文已从完整实 Einstein action 推出的全局等价，超引力 twist 来源和 Virasoro TQFT 的完整关系仍列在 outlook 中。

### 量子微分的 k-2hbar 不能由 Q²=0 单独决定

oper 的 rank-one OPE 是

$$
h(z)h(w)\sim\frac{2k\hbar}{(z-w)^2},\quad
h(z)f(w)\sim-\frac{2\hbar f(w)}{z-w},\quad
h(z)\psi(w)\sim-\frac{2\hbar\psi(w)}{z-w}.
$$

其余 elementary OPE regular。微分为

$$
Q_\hbar h=-2\psi,\quad Q_\hbar\psi=0,
\qquad Q_\hbar f=:\psi h:+(k-2\hbar)\partial\psi.
$$

可以独立恢复最后一个系数。设暂为 $a\partial\psi$，要求 $Q$ 是 vertex-algebraic derivation，而非只要求 $Q^2=0$。noncommutative Wick identity 给

$$
[h_\lambda:\psi h:]
=-2\hbar:\psi h:+(2k\hbar-4\hbar^2)\lambda\psi.
$$

另一方面 $[h_\lambda\partial\psi]=-2\hbar(\lambda+\partial)\psi$。比较 $Q[h_\lambda f]$ 与 $[Qh_\lambda f]+[h_\lambda Qf]$，剩下
$2\hbar(k-2\hbar-a)\lambda\psi$，故 $a=k-2\hbar$。这个系数的多项式残差已复算。

准交换关系是 $:h\psi:-:\psi h:=-2\hbar\partial\psi$。因此

$$
T=\frac1k\left[f+\frac14:h^2:+\frac{k-\hbar}{2}\partial h\right]
$$

确有 $QT=0$：$Q(:h^2:/4)=-:\psi h:+\hbar\partial\psi$，正好抵消 $Qf$ 与 improvement 项。取 $Q$ 为正规序乘法的导子时，也要保留这个准交换修正。

### 为什么 one-loop bulk 给出含 hbar² 的 central charge

令 $b_T=(k-\hbar)/2$。$T$ 的四阶 pole 只需 Heisenberg 收缩：

$$
:h^2:(z):h^2:(w)\big|_{(z-w)^{-4}}=8k^2\hbar^2,
\qquad
\partial h(z)\partial h(w)\big|_{(z-w)^{-4}}=-12k\hbar.
$$

因此 central coefficient 为

$$
\frac1{k^2}\left[\frac{8k^2\hbar^2}{16}-12k\hbar b_T^2\right]
=\frac\hbar2\left[-6k+13\hbar-\frac{6\hbar^2}{k}\right].
$$

没有涉及 $f$ 的 identity 收缩，因为 $f$ 与自身无 pole，而与 $h$ 收缩仍留下 $f$。非中心部分同样可追踪：令 $U=:h^2:/4+b_T\partial h$，cross brackets 的和为
$(\hbar^2+2b_T\hbar)(\partial+2\lambda)f=k\hbar(\partial+2\lambda)f$，与 Heisenberg improvement 的 Virasoro bracket 相加，得到

$$
T(z)T(w)\sim\hbar\left[
\frac{c_{W,\hbar}/2}{(z-w)^4}
+\frac{2T(w)}{(z-w)^2}+\frac{\partial T(w)}{z-w}\right],
\quad c_{W,\hbar}=-6k+13\hbar-\frac{6\hbar^2}{k}.
$$

这些 Wick 系数、闭合所需的系数关系与中心项已独立复算。$\hbar^2/k$ 来自**复合的量子改进生成元**，并非发现了二圈 bulk interaction。这里采用 $\hbar$-adic 归一化；若把 $T/\hbar$ 当作通常量子 Virasoro 场，其 ordinary central charge 为 $c_{W,\hbar}/\hbar$，不能在保留 $\hbar$ 时混用两种定义。

chiral gravity 直接计算则给 $c_{\rm grav,\hbar}=c+13\hbar$。所以保留经典 $c=-6k$ 并**不**使这两个选定 gauge 量子化自动相同；要允许形式耦合

$$
c(\hbar)=-6\left[k(\hbar)+\frac{\hbar^2}{k(\hbar)}\right],
\qquad k(0)\ne0.
$$

匹配等式已作代数复算。$k(0)\ne0$ 使形式逆元存在。

## 5. 实际 BV 场映射：保辛嵌入不等于 Poisson restriction（§4.3，页21–24）

原始归一化的映射 (4.10) 是

$$
A^f=\frac6c\mu,\quad A^h=\frac12\partial\mu,
\quad A^e=-\frac c{12}\partial^2\mu+2\pi iG\mu,
$$
$$
B_f=\frac c6G,\quad B_h=0,\quad B_e=\frac1{2\pi i},
\qquad k=-c/6.
$$

为说明等价的证明，作者作常 Cartan 重标度
$A^f\mapsto-kA^f$、$A^e\mapsto-k^{-1}A^e$、$B_f\mapsto-k^{-1}B_f$、$B_e\mapsto-kB_e$。以下使用这组新坐标，并记 $b=ik/(2\pi)\ne0$。映射简化为

$$
A^f=\mu,\quad A^h=\tfrac12\partial\mu,
\quad A^e=-\tfrac12\partial^2\mu+b^{-1}G\mu,
\qquad B_f=G,\quad B_h=0,\quad B_e=b.
$$

**重标度后的 boundary oper constant 已是 b，不再是 $1/(2\pi i)$。** 这也是边界 $f=-2\pi ikB_f$ 与一般节 $J=2\pi iB$ 看似不同的原因。

引入正式局部坐标

$$
x=B_e-b,\quad y=B_h,\quad
\widetilde\mu=\frac b{B_e}A^f,
\quad \widetilde G=\frac{B_e}{b}B_f-\tfrac12\partial B_h-\tfrac12\partial^2B_e,
$$
$$
\eta=A^h-\tfrac12\partial\widetilde\mu,
\qquad\xi=A^e-\frac{B_f}{b}\widetilde\mu+\tfrac12\partial^2\widetilde\mu.
$$

$B_e^{-1}$ 是在 $b$ 附近的形式级数；这不是全局覆盖 $B_e=0$ 的坐标。对 compact support，canonical potential 有

$$
\int(A^f\delta B_f+A^h\delta B_h+A^e\delta B_e)
=\int(\widetilde\mu\delta\widetilde G+\eta\delta y+\xi\delta x).
$$

可显式看出被积式之差是

$$
\tfrac12\partial\left[
\widetilde\mu\delta y+\widetilde\mu\partial\delta x
-(\partial\widetilde\mu)\delta x\right].
$$

这条分部积分 identity 的系数已符号复算；实际 BV superfield 形式仍采用来源给定的 suspension/Koszul 约定。因而 normal 方向是两对 canonical variables，映射的像恰为 $x=y=\eta=\xi=0$。

直接限制一般 observable 到此像，**不是** Poisson morphism：如 $\{x,\xi\}$ 在 ambient theory 非零，但两者限制后均为零。作者没有忽略这点，而是取 $I=\ker\Phi^*$ 及其 normal Taylor filtration $I^{(p)}$，并定义 normalizer

$$
\mathcal N=\{F:\{F,I\}_{\rm BV}\subset I\}.
$$

在上述 Darboux 坐标中，$F\in\mathcal N$ 当且仅当没有 normal degree1 项。于是限制 $\mathcal N\to\mathrm{Obs}_{\rm grav}$ 保 Poisson bracket；其 kernel 为 $I^{(2)}$，而 ambient observable complex 除以 $\mathcal N$ 为 $I/I^{(2)}$。要证两个箭头都是 quasi-isomorphism，必须证明这两个 normal complexes acyclic。

线性化微分有

$$
(Q_1-d')x=-2b\eta,
\qquad (Q_1-d')(y+\partial x)=2b\xi,
\qquad (Q_1-d')\eta=(Q_1-d')\xi=0.
$$

取 $H(\eta)=-x/(2b)$、$H(\xi)=(y+\partial x)/(2b)$，其余为零，得
$Q_1H+HQ_1=E_{\rm normal}$。生成元上的 $4\times4$ 矩阵 identity 已复算；作为导子延拓后，在 normal degree $n>0$ 上用 $H/n$ 收缩。全非线性 $Q-Q_1$ 提高 total Taylor degree，因此各有限 Taylor 截断的谱序列 $E_1=0$。借完备性与逐次满射的截断系统，再恢复完整形式复形。这样得到的是

$$
\mathrm{Obs}_{\rm CS,b}\ \longleftarrow^{\simeq}\ \mathcal N
\ \longrightarrow^{\simeq}\ \mathrm{Obs}_{\rm grav},
$$

而不是天真地把 $\Phi^*$ 宣称为严格 Poisson 同态。局部微分操作保持 support，故可与 factorization products 相容。对于当前 regional sewing，这种“切片保辛但 restriction 不保括号”的区别非常值得保留；若放弃 compact support，前面的 total derivative 会变成实际 corner 输入。

## 6. 附录A如何固定系数：三个可复算的积分链

### A.1：树级与 affine 一圈（页29–34）

作者对每条分母用
$X^{-\nu}=\Gamma(\nu)^{-1}\int_0^\infty da\,a^{\nu-1}e^{-aX}$，先作复坐标 Gaussian，再分出 Schwinger 参数的整体尺度。树级两条边的 Kirchhoff polynomial 是 $U=a_1+a_2$，四边一圈则为

$$
U=a_1a_2+(a_1+a_2)(a_3+a_4).
$$

复坐标 measure $dw\,d\bar w=-2i\,dx\,dy$ 的因子在此不能丢。树级 double pole 最终化为
$-kK_{ab}/(4\pi^3z^2)\int_0^\infty da/[\sqrt a(1+a)]$，Beta integral 为 $\pi$，恢复 $-kK_{ab}/(4\pi^2z^2)$。

一圈经过 Gaussian 与尺度积分后，最后的 projective chart $\varsigma_2=1$ 给

$$
\frac{h^\vee K_{ab}}{16\pi^2z^2}\int_0^\infty ds\,
 g(s),\qquad
 g(s)=\frac{1+s^2-(1+s)|s-1|}{s^2}.
$$

$0<s<1$ 时 $g=2$，$s>1$ 时 $g=2/s^2$，积分为4，故为 $h^\vee K_{ab}/(4\pi^2z^2)$。以上 Beta 及最终分段参数积分已精确复算。前面的全部四传播子微分形式乘法、Gaussian numerator 及正规化的完整推导按来源使用，未将最后一步复算扩大宣称为重新生成了全部 Feynman diagrams。

### A.2：为什么正好是 13（页34–38）

直接 gravity 的一圈有四种导数分配，$B=C$，需算 $A+2B+D$。与 affine 一样先进入相同 $U$ 的 projective integrals；最后一维分段积分中 $B,D$ 使用同一个 $g(s)$，$A$ 使用

$$
p(s)=\frac{(s^2+1)(s^4-4s^2+1)-(s+1)^3|s-1|^3}{s^4}.
$$

它在 $s<1$ 为 $2s^2-6$，在 $s>1$ 为 $2/s^4-6/s^2$，故 $\int p=-32/3$。代入来源页38的前因子，复算得到

$$
A=-\frac1{8\pi^2z^4},\quad
B=C=-\frac3{8\pi^2z^4},\quad
D=-\frac3{4\pi^2z^4},
$$

总和为 $-13/(8\pi^2z^4)$。对 $G$ OPE 乘 $(-2\pi i)^2$，正好产生 $T$ OPE 的 $+13\hbar^2/2$ 四阶 pole，即 $c\to c+13\hbar$。这项系数有可追踪的积分来源，不是从已知 Virasoro 结果倒填。

### A.3：混合边界有效作用量（页39–40）

混合 $DN,ND$ 的 propagator product 为零，$DD$ 与 $NN$ 相反。固定外点 $t>0$ 后，$DD$ 的角向 first moment 选择外场的 $\partial_z$ 项。用 $\rho=|w-z|$ 作柱坐标，来源 (A.44) 等价为

$$
I_{DD}=-\frac{it}{2\pi}\int_0^\infty ds\int_0^\infty
\frac{\rho^3d\rho}{[\rho^2+(t-s)^2]^{3/2}[\rho^2+(t+s)^2]^{3/2}}.
$$

对 $a,b>0$，径向积分为 $1/(a+b)^2$；取 $a=|t-s|$、$b=t+s$ 后是 $1/[4\max(t,s)^2]$。因此

$$
I_{DD}=-\frac{it}{2\pi}\left[
\int_0^t\frac{ds}{4t^2}+\int_t^\infty\frac{ds}{4s^2}\right]
=-\frac i{4\pi}=\frac1{4\pi i},
\quad I_{NN}=-I_{DD}.
$$

径向与分段积分已由 Mathematica 精确复算，$s=t$ 的连续极限不改变积分。配合颜色 trace 与图对称因子，给前面的 $\mathcal B$。rank one 的 $hh$ 两图相消，$ef$ 一图 mixed 为零，另一图颜色因子2、对称因子 $1/2$，最终 $\mathcal B(e,f)=-1$。这个数也是 $Qf$ 修正的来源。

## 7. 对 AdS3／CPS 的使用范围

本文 CS action 的符号对应 $k=-\ell/(4G)$，所以经典 $c=-6k=3\ell/(2G)$。与使用正 CS level 的项目记号比较时，先转换 action、trace、orientation，再比较 $k-h^\vee\hbar$，不要只比较 shift 的字面正负。boundary current $J=2\pi iB$ 与 stress tensor $T=-2\pi iG$ 的因子也必须一并保留。

可复用的构造有：线性 dg presentation；oper 的混合极化；$\mathcal B$ 与正常序共同修正的 BRST differential；$T$ 的量子 improvement；保辛切片与 Poisson normalizer 的区别。它们都比只记录一个 final central charge 更能支持之后的边界量子化计算。

§4.5进一步声称等价的是**形式微扰量子化空间**：bulk 的局部 deformation classes 各由一条形式参数控制，带边界时相应局部变形复形的 $H^0,H^1$ 消失，因此没有独立 boundary quantization parameter；借所引 BV boundary obstruction theory，把经典比较提升到 stratified factorization algebras。中心荷匹配确定这些量子化类的坐标关系，**单凭中心荷相等本身不证明全部 quantum observable algebras 等价**。本次重构了其经典 normalizer／收缩路线并复算参数关系，但未独立计算全部局部 deformation cohomology，也未重新证明外部 QME 和 boundary obstruction 定理。

结论限于 principal nilpotent 背景附近、$k\ne0$、$\hbar$-adic 完备的局部微扰理论。没有证明非微扰实 AdS3 gravity 的路径积分、large gauge／mapping-class quotient、全局 Hilbert space 或 Virasoro TQFT 完全等价；非 principal $W$ 与 higher-spin 扩展也仍是展望，而不是本篇已完成的结果。
