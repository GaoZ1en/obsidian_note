---
paper id: 2611.24634v1
title: Charge at regular centers in curvature-coupled electrodynamics
authors:
  - Ye Zhou
publication date: 2026-11-18T15:45:23Z
abstract: |-
  For static spherical solutions of a scalar-curvature-dependent Maxwell theory, bounded Kretschmann curvature forces a composite response variable and the response-weighted electromagnetic source to remain bounded. The field equations exclude simultaneous magnetic and electric displacement charges. On a surviving charged branch the Ricci scalar converges, the weighted source vanishes, and the coupling must vanish faster than r^4 or diverge faster than r^-4. Exact families establish sharpness, while a separate classification treats identically zero response and screened electric fields.
comments: "12 pages"
url: https://arxiv.org/abs/2611.24634v1
summary: "为规则封口与边界通量提供精确限制：守恒的是 hF 的位移荷；几何规则不等于电磁场可光滑填入中心，h=0 时尤其不能除以响应函数。"
tags: []
---

# 位移荷、退化响应与规则中心

这篇对当前 gauge charge／regional sewing 的直接用途，是判断一个看似规则的球形封口能否承载给定通量，并区分**电场**、**位移通量荷**和**几何规则性**。它不是 CPS 荷代数论文；但在把边界荷匹配到区域内部时，提供了具体的局部存在障碍，尤其能排除用非退化 Maxwell 系数把非零荷藏进规则中心的做法。

读的是 [arXiv v1](https://arxiv.org/abs/2611.24634v1)，PDF 与印刷页码相同。正文 §§2–4 和附录A构成主要论证；重要公式已对照 PDF 页2–9。下文重构两个定理、精确解和退化扇区，末节才转译成当前边界荷语言。

## 理论中真正守恒的是什么（§2，页2–3）

取 $(-+++)$ 号差，de Sitter 的 $R>0$，$G=1$。记 $U=F_{ab}F^{ab}$，作用量为

$$
S=\frac1{16\pi}\int\sqrt{-g}\,[R-2\Lambda-h(R)U]d^4x,
\qquad V=-h_RU,\quad W=1+V.
$$

$W$ 是曲率变分的系数，不能把 $h$ 视作给定的径向介电函数而漏掉 $\delta h=h_R\delta R$。利用 $\delta U=2F_{ac}F_b{}^c\delta g^{ab}$ 和 $\delta R$ 的两次分部积分，来源方程 (2.3)–(2.5) 为

$$
G_{ab}+\Lambda g_{ab}
=2h\left(F_{ac}F_b{}^c-\frac14g_{ab}U\right)
+\nabla_a\nabla_bV-g_{ab}\Box V-R_{ab}V,
$$
$$
dF=0,\qquad d\star(hF)=0,\qquad
R-4\Lambda=RV+3\Box V.
$$

最后的 trace 利用了四维 Maxwell 应力无迹性。它不含预设的 $R'$ 或 $R''$ 界，稍后反而会用来约束 $V'$。

静态球对称取

$$
ds^2=-A(r)dt^2+\frac{dr^2}{B(r)}+r^2d\Omega_2^2,
$$
$$
F=-\sqrt{\frac AB}\,e(r)dt\wedge dr
+P\sin\theta\,d\theta\wedge d\varphi.
$$

本征正交标架下 $b=P/r^2$，且

$$
U=2(b^2-e^2),\qquad Q=r^2h(R(r))e(r).
$$

$P$ 是磁通量荷，$Q$ 是**电位移荷**。始终保留 $r^2he=Q$ 的未除法形式：$Q=0$ 在 $h=0$ 处不推出 $e=0$。

假设是在穿孔邻域 $0<r<r_*$ 上满足经典方程：$A,B\in C^2$，$h\in C^1(I)$，复合量 $V\in C^2$；电磁场有 Maxwell 方程所需的正则性，各场在每个正半径有限。只要求 $\mathcal K=R_{abcd}R^{abcd}=O(1)$。曲率端点可以不在 $I$ 中，因此允许 $h$ 在端点发散。**不**先假设 $R$ 有极限，更不假设它能作 Taylor 展开。

## 第一个定理：消去 Maxwell 应力，先控制 W（定理3.1）

### 从曲率有界到规则的 ODE 系数

球对称特有的平方和恒等式 (2.10) 为

$$
\mathcal K=\frac{4(1-B)^2}{r^4}
+\frac{2(B')^2}{r^2}
+\frac{2B^2(A')^2}{r^2A^2}
+\left[\frac{AA'B'-B((A')^2-2AA'')}{2A^2}\right]^2.
$$

每项非负，故

$$
B=1+O(r^2),\quad B'=O(r),\quad
A'/A=O(r),\quad A''/A=O(1),\quad A\to A_0>0.
$$

这里 $A'/A$ 可积，因此 $A$ 的极限不是零；$B\to1$ 也说明靠近中心确在静态区域。这个推断依赖球对称平方和，不能推广成任意 Lorentz 流形上“一个曲率不变量有界就控制全部分量”。

为了不把 $Q$ 与新的 ODE 系数混淆，以下把原文 (3.4) 的小写 $q$ 写成 $q_g$：

$$
p_g=\tfrac12(A'/A+B'/B),\qquad
q_g=\tfrac12(A'/A-B'/B),\qquad p_g,q_g=O(r).
$$

径向与时间混合 Ricci 分量、Hessian 的差为

$$
R^r{}_r-R^t{}_t=\frac{2Bq_g}{r},\qquad
\nabla^r\nabla_rV-\nabla^t\nabla_tV=B(V''-q_gV').
$$

Maxwell 的两个应力分量相等，作差就得到**齐次线性方程**

$$
W''-q_gW'-\frac{2q_g}{r}W=0. \tag{3.6}
$$

这是文章最可迁移的操作：并不是先猜 $V$ 为常数，而是从完整引力方程中消去显式物质应力。

将 $(W,W')$ 写成一阶系统，因 $q_g$、$q_g/r$ 在有限区间有界，从任一 $r_1>0$ 向后作 Gronwall 估计，得 $W,W'=O(1)$，继而 $W''=O(1)$。trace 又给 $\Box V=O(1)$，而

$$
\Box V=B\left[V''+\left(\frac2r+p_g\right)V'\right].
$$

除 $(2/r)V'$ 外各项已受控，因此 $V'=O(r)$；积分得到

$$
V=V_0+O(r^2),\quad V'=O(r),\quad V''=O(1),\quad\Box V=O(1).
$$

这是一条实际的端点推导，不是把规则边界条件预先加在 $V$ 上。上述曲率平方和、Ricci 差、完整 Hessian 差及径向 $\Box$ 公式均已用 xAct/xCoba 对一般 $A,B,V$ 复算，残差为零。

### 受控的是应力的和，而不是可抵消的不变量 U

时间方程是

$$
G^t{}_t+\Lambda=-h(e^2+b^2)
+\frac{BA'}{2A}V'-\Box V-R^t{}_tV.
$$

右侧除第一项外全部有界，故

$$
\mathcal E=|h|(e^2+b^2)=O(1).
$$

这不是完整有效能量密度的正性假设；即使 $h<0$ 仍可作绝对值估计。对 $Q\ne0$，Maxwell 定律保证整个穿孔邻域 $h\ne0$，于是

$$
\frac{Q^2}{|h|}+P^2|h|\le Cr^4.
$$

左侧若 $PQ\ne0$，由 AM–GM 至少是 $2|PQ|$，立即矛盾。因此不能同时有非零磁荷和非零位移荷。对单独的电荷，必须 $|h|\ge cr^{-4}$；对 $P\ne0,Q=0$，直接用 $\mathcal E\ge |h|P^2/r^4$ 得 $h=O(r^4)$，无需在零点除以 $h$。于是 $0<c\le|h|\le C$ 的非退化有限响应不允许任何一种非零荷。

## 第二个定理：h 只依赖 R，使四次阈值变成严格阈值

定理3.3（页4）的增益不是多算一次幂，而是证明 $R\to R_0$，随后得到

$$
\mathcal E(r)\le\frac{M(r)}2|R(r)-R_0|\to0,
\qquad M(r)=\sup_{0<s\le r}|V(s)|.
$$

电荷支上 $|h(R(r))|\to\infty$。若有两个不同曲率聚点，连续的 $R(r)$ 会在任意小半径反复取中间每个曲率值；同一个单值有限的 $h(c)$ 不可能在这些半径趋于无穷。故电荷支 $R$ 收敛。

磁荷支 $h(R(r))\to0$。若曲率聚点构成非平凡区间，$h$ 必须在整段区间恒零，因而 $h_R=0$、$V=0$；其径向原像上 trace 强迫 $R=4\Lambda$，与取遍该区间矛盾。因此磁荷支也收敛。

统一记 $j=h$、$q_c=|P|$（磁），或 $j=1/h$、$q_c=|Q|$（电）。在 $h\ne0$ 处，由 $V=-h_RU$ 有

$$
j_R(R(s))=-\frac{s^4V(s)}{2q_c^2}.
$$

磁支上 $Q=0$，在 $h\ne0$ 处 $e=0$，所以这个关系成立；对于 $h=0$ 处，用 $h_R$ 连续性和孤立／非孤立零点的区分延拓估计，不能擅自假设那些点的 $e$ 为零。

在 $R_0$ 与 $R(r)$ 之间的任意曲率值，都能在某个 $s\le r$ 取得，**不需要 $R$ 单调**。于是整段上

$$
|j_R|\le\frac{r^4M(r)}{2q_c^2},\qquad
|j(R(r))|\le\frac{r^4M(r)}{2q_c^2}|R(r)-R_0|.
$$

乘以 $q_c^2/r^4$ 即得 $\mathcal E$ 的增强估计，因而

$$
h=o(r^4)\ (P\ne0),\qquad r^4|h|\to\infty\ (Q\ne0).
$$

若额外知道 $|R-R_0|=O(r^\alpha)$，则磁支 $|h|=O(r^{4+\alpha})$，电支 $|h|\ge cr^{-4-\alpha}$。规则 Cartesian 坐标下 $C^4$ 度规使旋转不变的 $R$ 为 $C^2$，故 $R-R_0=O(r^2)$，得到六次幂。

若 $j$ 在曲率端点有 $k>1$ 阶零点，还需**单独假设** $|j_R|\ge c|R-R_0|^{k-1}$，不能对一个仅有渐近等价的 $j$ 随意微分。结合 $j_R=O(r^4)$ 得

$$
|R-R_0|=O(r^{4/(k-1)}),\qquad
|h|=O(r^{4k/(k-1)})\ \text{或}\ |h|\ge cr^{-4k/(k-1)}.
$$

简单磁响应根只能进入邻域恒零的退化支；电支的 reciprocal root 阶数 $0<k\le1$ 与导数界不相容。Remark 3.6 对一般纯引力函数 $\Phi(R)$ 保留第一个有界源论证，但明确**没有**宣称曲率极限的增强估计也原样成立。

## 精确族说明“严格四次”与“光滑六次”都不能随便加强（§4，页5–6）

设 $\Lambda=0$，$m>0,c\ne0$，

$$
A=B=N=1-ar^2+cr^{m+2},\qquad
R=12a-c(m+3)(m+4)r^m.
$$

两种解为

$$
e=0,\quad b=P/r^2,\quad
h_m=\frac{cm(m+3)}{2P^2}r^{m+4},
$$
$$
b=0,\quad e=\frac{Q}{r^2h_e},\quad
h_e=\frac{2Q^2}{cm(m+3)}r^{-m-4}.
$$

曲率在穿孔区间单调，因此径向函数确能定义为单值 $h(R)$。直接作 $h_R=h'/R'$ 得两支皆 $V=1$、$W=2$，而

$$
h(e^2+b^2)=\frac{cm(m+3)}2r^m
=\frac12N''-\frac{N-1}{r^2}.
$$

已用 Mathematica 对任意实 $m>0,r>0$ 复算 $R$、两支 $V$、时间和角向独立引力方程，残差均为零；通量由定义恒定，trace 因 $V=1,\Lambda=0$ 自动成立。这里不是只检查领先幂。

$m\downarrow0$ 可无限接近四次阈值，但不达到它，排除了仅凭曲率有界得到统一 $r^{4+\epsilon}$ 改进。$m=2$ 则

$$
N=1-ar^2+cr^4,\quad R=12a-30cr^2,\quad
h_m(R)=\frac{(12a-R)^3}{5400c^2P^2}\propto r^6.
$$

几何和该多项式耦合可光滑，但磁场仍为 $P/r^2$；不是填满球心后的光滑无源 Maxwell 场。电支则 $e\propto r^{m+2}\to0$ 而 $Q\ne0$，因为发散响应保住了位移通量。选择 $c>0$ 才有正的 Maxwell 动能系数。

论文还用 Sert 两个几何作比较。对 $V=1$ 的单函数度规，记 $D=N''-2(N-1)/r^2$，则 $h_m=r^4D/(2P^2)$、$h_e=2Q^2/(r^4D)$。第一族有 $R_0-R\propto r^3$，响应 $r^{\pm7}$；第二族 $N=1-2m_s e^{-a_s/r}/r$ 在中心指数平坦，响应快于任意幂消失／发散，但其中心单值曲率支 $0<r<a_s/5$ 上（$m_s,a_s>0$）响应为负。两族给出的 $D$ 已作符号微分复算；不将负动能例子当作健康物理模型。

这里的 $a,c,P,Q$ 同时进入重构的作用量。任意改变它们，不等于在**一个固定理论**里独立改变解的物理荷；互逆响应变换也联系不同作用量，不是任意固定 $h$ 理论的电磁对偶对称性。

## h 恒零时仍可能有电场：分类与附录A的实际构造

命题4.1（页7）先证：若沿解 $h(R(r))\equiv0$，则 $R=R_0$ 常数。否则曲率像含开区间，$h=h_R=0$ 及 trace 又会造成矛盾。令 $k_0=-h_R(R_0)$（原文此处记 $k$，并非任何电荷）。

若 $k_0=0$，度规是 $R_0=4\Lambda$ 的 Einstein 度规，任何满足对称性和闭合条件的实电磁场都解剩余方程。若 $k_0\ne0$，$W=1+k_0U$ 满足

$$
WR_{ab}+(\Lambda-R_0/2)g_{ab}
=\nabla_a\nabla_bW-g_{ab}\Box W,
\quad3\Box W+R_0W=2R_0-4\Lambda.
$$

- $W_0=0$ 时，线性 ODE 加 $W'(0)=0$ 的唯一性给 $W\equiv0$，故 $U=-1/k_0$、$\Lambda=R_0/2$；任意具有常标量曲率 $R_0$ 的有界曲率静态球对称度规都满足约化方程。
- $W_0\ne0$ 时，每个固定 $W_0$ 有唯一局部几何／标量解（除时间常数重标度），且解析于 $r^2$。常 $W$ 当且仅当 $R_0W_0=2R_0-4\Lambda$。

附录A不只是写一个形式幂级数。令 $x=r^2$、$B=1+xb(x)$、$W=u(x)$、$v=u_x$、$A'/A=r\alpha$，并置 $C=\Lambda-R_0/2$、$D_0=-4C$。其系统为

$$
\alpha=\frac{-ub-4(1+xb)v-C-R_0u/2}{(1+xb)(u+xv)},
\quad H=-\frac b2+\frac{x(1+xb)\alpha v}{2u}+\frac C{6u}-\frac{R_0}{12},
$$
$$
u_x=v,
\quad xb_x=-\frac32b+\frac C{6u}-\frac{R_0}{12}
+\frac{x(1+xb)\alpha v}{2u},
$$
$$
xv_x=-\frac32v+\frac{D_0-R_0u}{12(1+xb)}
-\frac{x\alpha v}{4}-\frac{xvH}{2(1+xb)}.
$$

有界解的中心数据被强制为

$$
u(0)=W_0,\quad b(0)=\frac C{9W_0}-\frac{R_0}{18},\quad
v(0)=\frac{D_0-R_0W_0}{18}.
$$

把后两式写成 $xz_x+3z/2=F_z$，积分因子 $x^{3/2}$ 给

$$
z(x)=\int_0^1t^{1/2}F_z(tx)dt,
$$

否则会多出被有界性排除的 $x^{-3/2}$ 齐次项。在 $W_0\ne0$ 附近选足够小区间，使 $u,u+xv,1+xb$ 远离零。除 $u-W_0=\int v$ 外，$F_z$ 对未知量的额外依赖都带 $x$，故该积分映射的 Lipschitz 常数为 $O(\epsilon)$；缩短区间即可收缩。相同构造在小复圆盘上给解析性。中心代数及下一阶递推已复算；存在唯一性的完整依据仍是这个收缩论证，而不是有限阶 CAS 检验。

最后需要补回先前未强制的 $R=R_0$ 与角方程。附录的 Bianchi compatibility 给

$$
(R_0-R)\left(\frac Wr+\frac{W'}2\right)=0.
$$

$W_0\ne0$ 时第二因子近中心不为零，因此确实恢复 $R=R_0$ 和角方程；这一步保证约化构造解的是原系统。恢复 lapse 为 $A(x)=A_0\exp[\tfrac12\int_0^x\alpha(s)ds]$。

最简单的可算例子是 $h=1-\lambda R$，$\lambda>0,\Lambda=0$：

$$
A=B=1-\frac{r^2}{12\lambda},\quad b=\frac P{r^2},\quad
e^2=\frac{P^2}{r^4}-\frac1{2\lambda}.
$$

小正半径下电场实，$R=U=1/\lambda$、$V=1$，但 $h=Q=0$；$\mathcal K=1/(6\lambda^2)$。它有磁荷和电场，却不是 dyon，因为后者要求 $Q\ne0$。代入常曲率方程可直接核对全部项。这不反驳前面的双荷排除，反驳的是把“$P\ne0,Q=0$”误读成“纯磁场 $e=0$”。

## 转译到边界荷：要匹配 h star F，而不是 star F

下面是依据作用量作的局部翻译，不是作者已完成的 CPS 分析。以 $dt\wedge dr\wedge d\theta\wedge d\varphi$ 为正定向，上述 $F$ 号差给

$$
\frac1{4\pi}\int_{S_r^2}F=P,\qquad
\frac1{4\pi}\int_{S_r^2}h\star F=Q.
$$

固定度规作 gauge-field 变分，电磁 presymplectic potential 可选

$$
\theta_{\rm EM}=-\frac1{4\pi}\delta\mathcal A\wedge h\star F,
\qquad F=d\mathcal A\quad\text{局部}.
$$

在 $\delta_\varepsilon\mathcal A=d\varepsilon$、$J_\varepsilon=\theta(\delta_\varepsilon)$ 的约定下，on shell 有 $J_\varepsilon=-d(\varepsilon h\star F)/(4\pi)$。其 Noether 二形式为 $-\varepsilon h\star F/(4\pi)$；若用相反的 gauge／Hamiltonian 号差，生成元符号也相应变换，但通量 $Q$ 的几何定义不变。区域缝合应匹配这个位移通量及相反的界面法向，而非匹配裸 $e$ 或 $\star F$。磁荷存在时 $\mathcal A$ 只能分片定义。

这也解释中心极限的边界：非零 $P$ 的闭二形式不可能光滑无源地延拓到填满的球内（由 Stokes 即知）；非零 $Q$ 则迫使响应在有限曲率端点发散。几何有界并不提供健康、无源、可收缩的全部场配置。完整引力 $\theta$ 还包含 $W$ 及其导数，本文没有给出它的 CPS 边界项、可积性或荷代数，不能用以上电磁翻译代替那些计算。

本次独立复算覆盖了核心分量几何、精确族的全部独立约化方程、响应导数和附录中心递推；一般复合曲率作用量的自动变分尝试未返回可用结果，未把它计为独立验证。完整变分方程在此按来源及标准 $\delta R$ 分部积分关系使用。没有由这些局部定理推断全局黑洞存在、测地完备、扰动稳定或量子可接受性。
