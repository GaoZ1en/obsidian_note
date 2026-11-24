---
paper id: 2611.17424v1
title: BMS charge algebras from Carrollian energy-momentum commutators
authors:
  - Florian Ecker
  - Luciano Montecchio
  - Stefan Prohazka
  - Jakob Salzer
publication date: 2026-11-12T19:00:11Z
abstract: |-
  Background Ward identities constrain the local commutators of Carrollian energy-momentum and shear-response operators. The authors identify the boost-anomaly origin of the mixed BMS3 central term and the response conditions needed for a radiative BMS4 algebra. A one-point holographic dictionary reproduces Bondi balance laws and a field-dependent cocycle; a shear-coupled vector action is proposed as a test model.
comments: "32 pages; downloaded PDF has 33 pages including title page"
url: https://arxiv.org/abs/2611.17424v1
summary: "把固定剪切背景上的 Ward／contact-term 代数与真正 Hamiltonian 荷代数分开，且明确指出 news 字典作为单源生成泛函梯度的可积性障碍。"
tags: []
---

# 结论与直接用途

**值得优先读：局域 Ward 恒等式确定 EMT 对易子的普适部分，但不单独确定完整量子代数；BMS4 的引力 cocycle 还需要额外的一点函数字典与 boost anomaly。** 最重要的保留不是一个小技术条件：作者也指出，若把 $\langle\mathfrak P\rangle\propto\partial_u C$ 当成对任意剪切源成立的普通单源 $W[C]$ 的梯度，会与 Hessian 对称性冲突。

这正适合当前边界荷／区域相空间工作：背景变化、物理通量、contact terms、current improvement 和辛可积性不能混称为“荷不闭合”。这里给了逐层拆开的可复用例子，但**没有构造完整边界量子引力，也没有给出可直接移植到 AdS timelike boundary 的 CPS 定理**。

来源：[arXiv v1](https://arxiv.org/abs/2611.17424v1)。以下页码均为正文印刷页；PDF 页码加1。通读 §1–6 与附录 A，关键式(4.9)–(4.14)、(5.6)–(5.16)、(5.23)–(5.44)、(6.6)已查看 PDF 页面，并用官方 TeX 对齐上下指标。本文用 $T^\mu{}_\nu$；提取文本常把上、下标顺序读反，不能按提取顺序抄写。

# 1. Carroll 数据：剪切并不由退化度规决定

边界维数是 $d+1$，相应平直引力 bulk 维数是 $d+2$。基本数据满足

$$
v^\mu h_{\mu\nu}=0,\qquad v^\mu\tau_\mu=-1,\qquad
h^{\mu\nu}h_{\nu\rho}-v^\mu\tau_\rho=\delta^\mu_\rho,
\qquad \tau_\mu h^{\mu\nu}=0.
$$

这里 $h_{\mu\nu}$ 秩为 $d$；逆数据只在 boost 等价类中定义。局域 boost 是 $\delta_\lambda\tau_\mu=-\lambda_\mu$，$v^\mu\lambda_\mu=0$，同时改变 $h^{\mu\nu}$，不改变 $v^\mu,h_{\mu\nu}$。定义

$$
a_\mu=\mathcal L_v\tau_\mu,\quad K_{\mu\nu}=-\tfrac12\mathcal L_vh_{\mu\nu},
\quad e=\sqrt{\det(\tau_\mu\tau_\nu+h_{\mu\nu})}.
$$

所选无挠联络不是一般意义的度规相容联络：$\nabla_\mu h_{\alpha\beta}=-2\tau_{(\alpha}K_{\beta)\mu}$，$\nabla_\mu v^\nu=-K_\mu{}^\nu$。在此固定 non-metricity 下仍可加 $v^\rho\Xi_{\mu\nu}$，其中 $\Xi$ 横向对称。其无迹部分写成 $C_{\mu\nu}/2$，代表独立剪切数据；$d=1$ 时这个部分恒零。这解释为何 BMS3 与 BMS4 的论证不只是换维数。

在 Bondi frame

$$
\tau=du,\quad v=-\partial_u,\quad h=h_{ij}(x)dx^idx^j,
\quad a=K=0,
$$

联络退化为空间 Levi-Civita 联络 $D_i$。保持 $\tau,h$ 的 diffeo＋boost＋Weyl 变换为

$$
\xi=F\partial_u+Y^i\partial_i,\quad F=f+\frac ud\psi,
\quad \psi=D_iY^i,\quad D_{(i}Y_{j)}=\frac\psi d h_{ij},
$$

补偿参数 $\sigma=-\psi/d$，$\lambda_i=\partial_iF$。相应

$$
\delta_\xi C_{ij}=(F\partial_u+\mathcal L_Y-\psi/d)C_{ij}
-2D_{\langle i}D_{j\rangle}F. \tag{2.30}
$$

尖括号表示空间横向、对称、无迹投影。**保持 Bondi frame 不等于保持 $C$。** 对一般 $C$ 再要求 $\delta_\xi C=0$ 会消掉通常所需的无限维对称。

参数括号是

$$
\hat Y=[Y_1,Y_2],\qquad
\hat f=Y_1\cdot df_2-Y_2\cdot df_1+\frac1d(f_1\psi_2-f_2\psi_1).
$$

$d=2$ 的无限维 superrotation 指局域 CKV；圆球上处处光滑的全局 CKV 仍有限维。下面积分分部默认无额外角向边界；若允许奇异 superrotations，需另给 pole 附近的处方。

# 2. 从响应到 Ward identity，再到局域 commutator

## 独立源与密度

作者假设存在有固定初末态数据的生成泛函

$$
\delta W=\int d^{d+1}x\,e\left(
\langle T^\mu\rangle\delta\tau_\mu+
\frac12\langle T^{\mu\nu}\rangle\delta h_{\mu\nu}+
\frac12\langle\Psi^{\mu\nu}\rangle\delta C_{\mu\nu}\right). \tag{3.1}
$$

$\Psi$ 取横向对称无迹。$C$ 受约束变分中的纵向、trace 项可吸收到其他响应，不能将其额外算成独立源。合并

$$
T^\mu{}_\nu=T^\mu\tau_\nu+T^{\mu\rho}h_{\rho\nu},\quad
\mathfrak T^\mu{}_\nu=eT^\mu{}_\nu,\quad
\mathfrak P^{\mu\nu}=e\Psi^{\mu\nu}.
$$

Fraktur 字体是权重1的密度，不是新的应力张量。三条 Ward identity 为

$$
\begin{aligned}
\partial_\mu\langle\mathfrak T^\mu{}_\nu+\mathfrak P^{\mu\alpha}C_{\alpha\nu}\rangle
&=\langle\mathfrak T^\mu\rangle\partial_\nu\tau_\mu
+\tfrac12\langle\mathfrak T^{\mu\alpha}\rangle\partial_\nu h_{\mu\alpha}
+\tfrac12\langle\mathfrak P^{\mu\alpha}\rangle\partial_\nu C_{\mu\alpha},\\
h^\nu{}_{\mu}\big[\langle\mathfrak T^\mu\rangle-(\nabla_\rho-a_\rho)
\langle\mathfrak P^{\rho\mu}\rangle\big]&=e\mathcal A^\nu,\\
\langle\mathfrak T^\mu{}_\mu\rangle+\tfrac12\langle\mathfrak P^{\mu\nu}\rangle C_{\mu\nu}&=0.
\end{aligned} \tag{3.13}
$$

boost anomaly 约定为 $\delta_\lambda W=-\int e\lambda_\mu\mathcal A^\mu$。无 diffeo／Weyl anomaly 是这里的假设。

将三种变换组合，流

$$
j^\mu=(\mathfrak T^\mu{}_\alpha+\mathfrak P^{\mu\nu}C_{\nu\alpha})\xi^\alpha
-\mathfrak P^{\mu\nu}\lambda_\nu
$$

满足在保持 $\tau,h$ 的背景上

$$
\partial_\mu\langle j^\mu\rangle
=\tfrac12\langle\mathfrak P^{ij}\rangle\delta_\xi C_{ij}
+e\mathcal A^i\lambda_i. \tag{3.18}
$$

右侧第一项是真实受源通量；任意 current improvement 不会一般将它消掉。

## 为什么必须保留 seagull terms

再对源变分，不只产生连通二点函数：

$$
\frac1{e(y)}\frac{\delta\langle T^\mu(x)\rangle}{\delta\tau_\nu(y)}
=i\langle T^*T^\mu(x)T^\nu(y)\rangle_c
+\frac1{e(y)}\left\langle\frac{\delta T^\mu(x)}{\delta\tau_\nu(y)}\right\rangle.
$$

最后一项来自复合算符／反项对背景的显式依赖，局域源耦合使它支撑于重合点。作者进一步选取普通时间排序的 contact-term 处方，使无 anomaly 的 Ward identity 能在时间排序内部成立。于是

$$
\partial_{x^0}T\{O(x)B(y)\}
=T\{\partial_{x^0}O(x)B(y)\}
+\delta(x^0-y^0)[O(x),B(y)]
$$

提取等时对易子。**这是带局域响应、可微 $W$、时间叶分解等假设的推导，不是纯几何自动给出的 operator algebra。**

便利的源导数是 $\mathcal D^\alpha{}_\beta=\tau_\beta\delta/\delta\tau_\alpha+2h_{\lambda\beta}\delta/\delta h_{\lambda\alpha}$。它不彼此交换：

$$
[\mathcal D^\alpha{}_\beta(y),\mathcal D^\mu{}_\nu(x)]
=\delta(x-y)(\delta^\alpha_\nu\mathcal D^\mu{}_\beta-
\delta^\mu_\beta\mathcal D^\alpha{}_\nu).
$$

因此 $S=\mathcal D\mathfrak T$ 本身不对称；加一个 $\delta^\mu_\beta\mathfrak T^\alpha{}_\nu\delta(x-y)$ 才得到按两组指标交换对称的 $M$。再移出造成 $\partial_u\delta$ 的普适部分，剩余 $t,p$ 给 Schwinger terms $\tau,\rho$。这些项不能一开始就设零。

# 3. 无剪切：BMS3 的中心荷藏在 anomaly 的变分中

平背景且无剪切响应时，boost Ward identity 给 $T^i{}_0=0$。若 anomaly 及相应变分均消失，则

$$
\begin{aligned}
i[T^0{}_0(x),T^0{}_0(y)]&=0,\\
i[T^0{}_0(x),T^0{}_i(y)]&=[T^0{}_0(y)\delta_i^k-T^k{}_i(x)]\partial_k\delta^d(x-y),\\
i[T^0{}_i(x),T^0{}_k(y)]&=[T^0{}_k(x)\partial_i+T^0{}_i(y)\partial_k]\delta^d(x-y)
+\tau^0{}_i{}^0{}_k.
\end{aligned}
$$

另两类含空间应力的括号见式(4.5)；其 Weyl trace 与有限 Carroll 变换分别约束 $\tau$ 的 trace、零阶和一阶空间 moments。附录 A 的意义是：有限群的正确作用只约束低阶 moments，不能据此排除导数更高的中心项。

$d=1$ 时引力输入的 boost anomaly 是

$$
\mathcal A^\mu=\frac{c_M}{12\pi}h^{\mu\sigma}v^\rho
\partial_{[\rho}(a_{\sigma]}+K\tau_{\sigma]}). \tag{4.9}
$$

它在平背景为零，**其源导数却不为零**。例如设
$\tau=(1+\epsilon A)du+\epsilon Bdx$，$h_{11}=1+\epsilon H$，$h_{01}=\epsilon J$，则

$$
\mathcal A^1=-\epsilon\frac{c_M}{24\pi}
\left(-\partial_u^2B+\partial_u\partial_x A
-\tfrac12\partial_u\partial_xH+\partial_x^2J\right)+O(\epsilon^2).
$$

由此得到式(4.11)–(4.12)的源变分；再经 boost Ward identity 给

$$
i[T^0{}_0(x),T^0{}_1(y)]
=[T^0{}_0(y)-T^1{}_1(x)]\partial_x\delta(x-y)
+\frac{c_M}{24\pi}\partial_x^3\delta(x-y). \tag{4.13}
$$

以 conformal trace $T^1{}_1=-T^0{}_0$，构造

$$
Q_{f,Y}=-\int dx\,[Y T^0{}_1+(uY'+f)T^0{}_0].
$$

在周期 $2\pi$ 的圆上取 $L_n=Q_{0,e^{inx}}$、$M_n=Q_{e^{inx},0}$，分部积分给

$$
[L_n,M_m]=(n-m)M_{n+m}+\frac{c_M}{12}n^3\delta_{n+m,0},
\quad[M_n,M_m]=0.
$$

$[L_n,L_m]$ 同理；若保留 $\tau^0{}_1{}^0{}_1=(c_L/24\pi)\delta'''$，还得到 $c_Ln^3/12$。这里未作 vacuum-energy shift；若定义 $\bar M_n=M_n+(c_M/24)\delta_{n,0}$，中心项变成 $c_Mn(n^2-1)/12$。Einstein bulk 的 $c_M=3/G_N$ 是引力匹配输入，不是从任意 Carroll matter 自动算出的常数。

复算：线性 anomaly、STF 二维矩阵乘积、Fourier 中心项与混合 Jacobi 的多项式残差均吻合。注意式(4.15)使用 $-i[Q,Q]$；转回 commutator 要乘 $i$，不是 $-i$。

# 4. 有剪切：为何普通等时括号不是完整 BMS4

此时 $d=2$，取 $\mathbb R_u\times S^2$ 的固定空间度规。先不施加 boost anomaly 条件，式(5.6)给

$$
i[\mathfrak T^u{}_u(x),\mathfrak T^u{}_u(y)]
=-[\mathfrak T^i{}_u(x)+\mathfrak T^i{}_u(y)]\partial_i\delta^2(x-y)
+\tau^u{}_u{}^u{}_u.
$$

**能量—能量括号不必为零。** 非异常 boost identity 才将 $\mathfrak T^i{}_u$ 换成 $D_j\mathfrak P^{ij}$。其余 EMT 括号含 $\mathfrak P^{jn}C_{ni}\partial_j\delta$ 和 $\mathfrak P^{jk}\partial_iC_{jk}\delta/2$，无法封闭在 EMT 单独组成的集合中。混合括号的普适项是

$$
i[\mathfrak T^u{}_u(x),\mathfrak P^{ij}(y)]
=-\partial_u\mathfrak P^{ij}(x)\delta^2(x-y)+\rho^u{}_u{}^{ij}.
$$

Ward 方法**没有确定 $[\mathfrak P,\mathfrak P]$**，也没有固定全部 mixed contact terms。

在非异常、conformal 的这一步，$Q_\xi=-\int d^2x\,\xi^\mu\mathfrak T^u{}_\mu$，局域括号积分得到

$$
-i[Q_1,Q_2]=Q_{[\xi_1,\xi_2]}
+\frac12\int d^2x\,\mathfrak P^{ij}(F_1\delta_2C_{ij}-F_2\delta_1C_{ij}), \tag{5.16}
$$

暂未写 Schwinger extensions。推导的关键中间步是
$\mathfrak T^\alpha{}_\beta D_\alpha\xi^\beta
=(\psi/2)\mathfrak T^\alpha{}_\alpha+\mathfrak T^i{}_u\partial_iF$；trace Ward 与 boost Ward 将这两项合并进 $\delta_\xi C$。

定义仅作用于背景源的 $\delta^C_\xi$，以及

$$
i[Q_1,Q_2]_{\rm BT}=i[Q_1,Q_2]+\delta^C_1Q_2-\delta^C_2Q_1. \tag{5.17}
$$

由响应的交叉变分关系 $\mathcal D^\alpha{}_\beta\mathfrak P^{ij}=2\delta\mathfrak T^\alpha{}_\beta/\delta C_{ij}$，源变化正好减掉上述 flow，于是
$-i[Q_1,Q_2]_{\rm BT}=Q_{[\xi_1,\xi_2]}$，再加由 $\tau,p$ 决定的 $K^S$。其 Jacobi 是带源作用的 cocycle condition，而不是把场依赖项当常数中心荷的 Jacobi。

这不是“随意修正 bracket 来闭合”：扣除项明确由同一源响应定义。但它也不是某个已经构造的扩大 CPS 上普通 Poisson bracket 的证明；§6 提出的 dynamical-shear embedding 仍是研究建议。

# 5. 引力字典、improvement 与场依赖 cocycle

## 一点函数条件与 Bondi balance

§5.3 换成了**含 anomaly 且仅在一点函数层面**的引力输入：

$$
\langle\mathfrak P^{ij}\rangle=\frac e2N^{ij},\qquad N_{ij}=\partial_uC_{ij},
\quad \mathcal A^i=\frac14D^iR+\frac12D_jN^{ji}. \tag{5.24–25}
$$

于是 $\langle T^i{}_u\rangle=\frac14D^iR+D_jN^{ji}$。此处写非密度 $T$ 以免漏掉 $e$。diffeomorphism Ward identity 给

$$
\partial_u\langle T^u{}_u\rangle
=\tfrac14N^{ij}N_{ij}-D_iD_jN^{ij}-\tfrac14D^2R.
$$

定义 Bondi mass aspect

$$
2\mathcal M=-\langle T^u{}_u\rangle-\tfrac12D_iD_jC^{ij},
$$

对 $u$ 求导，立刻得到

$$
\dot{\mathcal M}=-\tfrac18N^2+\tfrac14D_iD_jN^{ij}+\tfrac18D^2R. \tag{5.30a}
$$

这一步独立代数复算通过。角动量方面还需
$2\mathcal N_i=-2\langle T^u{}_i\rangle-\partial_i(C^{jk}C_{jk})/16$，以及 spatial traceless stress 的约束；不是只用 mass dictionary 就足够。作者给其一组解

$$
\langle\widehat T^{ij}\rangle
=-\tfrac12D^{(i}D_kC^{j)k}+\tfrac14h^{ij}D_kD_nC^{kn}
+\tfrac R4C^{ij}. \tag{5.33}
$$

二维 STF 恒等式 $CN+NC=\mathbf1\operatorname{tr}(CN)$ 与二维曲率交换子用于角动量 balance。已对非恒曲率 conformal metric 检查(5.33)的 trace 与(5.32)的 divergence 条件，残差为零；这是一组非平凡分量例证，不是一般维数恒等式。

匹配引力荷需要明确 current improvement：

$$
\widetilde Q_\xi=-\int d^2x\left[\xi^\mu\mathfrak T^u{}_\mu
+\frac e2F D_iD_jC^{ij}\right],\qquad
k^\mu=\frac e2\xi^\mu D_iD_jC^{ij}. \tag{5.35–37}
$$

此处作者将 $\kappa=1$。恢复其式(5.29)的归一化时，整个荷相应带 $1/\kappa$；不可把无量纲表达直接当带 $G_N$ 的物理荷。特别地 $\widetilde Q_{1,0}=2\int e\mathcal M$（$\kappa=1$）。

非守恒定律变成

$$
\frac d{du}\langle\widetilde Q_\xi\rangle
=-\frac14\int d^2x\,e\left[N^{ij}\delta_\xi C_{ij}
+\partial_iF D^iR+C^{ij}D_iD_j\psi\right]. \tag{5.38}
$$

$f=1,Y=0$ 给 $-\int eN^2/4$，与上面的 mass aspect normalization 一致；圆球上 $N=0$ 且全局 CKV 的无迹 Hessian 为零时，全局 BMS 荷守恒。

## cocycle 从哪里来

暂设 $\langle K^S\rangle=0$，保留 anomaly 和 improvement，按同一 BT 定义得到

$$
-i\langle[\widetilde Q_1,\widetilde Q_2]_{\rm BT}\rangle
=\langle\widetilde Q_{[\xi_1,\xi_2]}\rangle+K_{12},
$$

$$
K_{12}=\frac14\int d^2x\,e\left[
(F_1\partial_iF_2-F_2\partial_iF_1)D^iR
+C^{ij}(F_1D_iD_j\psi_2-F_2D_iD_j\psi_1)\right]. \tag{5.44}
$$

中间式(5.42)有三类项：$[\xi_1,\xi_2]^uDDC/2$、$\mathcal A^i(F_1dF_2-F_2dF_1)$、improvement 的 Hessian 乘 $\delta C$。先用 $N=\dot C$ 抵消 news 部分，再用 CKV 恒等式

$$
(\mathcal L_Y+3\psi/2)D_iD_jC^{ij}
=D_iD_j[(\mathcal L_Y+3\psi/2)C^{ij}]
+\tfrac12C^{ij}D_iD_j\psi
$$

与角向分部积分，才留下(5.44)。这里 $\mathcal L_Y C^{ij}$ 是 contravariant tensor 的 Lie derivative，不能先对 covariant $C_{ij}$ 做 Lie derivative 再只升指标而不加补偿项。

**所做检验：** xAct／Wolfram 下用 $h_{ij}=e^{2\phi}\delta_{ij}$、$\phi=xy+x^2/3$、非恒定 STF 剪切和 cubic CKV 检查该 CKV identity、(5.32)–(5.33)，残差均零。另在平面选 $Y_2=(x^3-3xy^2,3x^2y-y^3)$、$F_1=e^{-x^2-y^2}$、$F_2=0$、$C=e^{-x^2-y^2}\bigl(\begin{smallmatrix}1&xy\\xy&-1\end{smallmatrix}\bigr)$（$u=0$），直接积分(5.42)和(5.44)都得 $3\pi$。Gaussian 衰减保证这一例无无穷远边界项；它检验一个非零 cocycle，不声称覆盖球上奇异 CKV 的积分处方。

# 6. 真正的开放点：news response 不能无条件是普通单源梯度

若对任意独立剪切源都要求

$$
\frac{\delta W}{\delta C(u,x)}=\text{const.}\,\partial_uC(u,x),
$$

则 Hessian 正比 $\partial_u\delta(u-v)$，对交换两个源点反对称；而普通二次可微泛函的 Hessian 必须对称。等价地，对端点消失的 $f,g$，

$$
\int f\partial_ug=-\int g\partial_uf.
$$

在周期区间取 $f=\sin u,g=\cos u$，两种次序之差为 $-2\pi$，已直接积分核验。故这里不是 CAS 未算出来，而是有明确的可积性障碍。

**准确结论：** 一点函数字典可以在受限态／受限源族上有效；不能同时把它提升为对任意源的 operator identity 和普通单源 $W$ 的普遍梯度。作者自己在正文26页明确提出此问题。可能的修正是 dynamical geometry、带额外态数据的响应或 doubled/in-in source 描述；本文均未建立，不能写成作者已经解决。

§6 还提出可测试的 electric vector action。平背景下，保留剪切项有

$$
S=\int d^{d+1}x\left\{\tfrac12\dot X^a\dot X_a
+\frac g2\left[(\dot X^0)^2+2\dot X^a(\partial_aX^0-\tfrac12C_{ab}X^b)
+\partial_aX^b\partial_bX^a\right]\right\}.
$$

独立按 $\delta S=\frac12\int\Psi^{ab}\delta C_{ab}$ 变分得
$\Psi^{ab}=-g(\dot X^{(a}X^{b)})_{\rm STF}$；二维 STF 分量导数已核验。这个模型有非零剪切响应，**不表示其响应已等于 $N/2$，也没有计算其完整 Schwinger terms、正内积表示或量子 anomaly**。

# 7. 接入现有 CPS 时保留什么

与本地 [formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L5-L52>) 对齐：本地 $\omega=\delta\theta$，积分 $\theta$ 含 corner 项，$[O_1,O_2]=i\{O_1,O_2\}$。所以论文的 $-i[Q_1,Q_2]$ 对应同一对象排序的经典括号；不能额外换一次整体符号。论文的 $Q=-\int j^u$ 仍须通过截面定向、应力定义和 current improvement 才能识别成本地 $H=X\cdot\theta-\alpha$。

尤其本地 formalism 明确暂不考虑 null boundary；这里的 $\mathscr I^+$ 不满足那个设定。**可直接借用的是诊断结构，不是未经证明的公式迁移：**

1. 先区分真正相空间变量与外源；固定源上的 bracket 不会自动生成外源变化。
2. 固定边界作用量、corner potential 和 current improvement 后，再比较荷代数与 cocycle。
3. 有通量时先问是否扩大相空间，或采用明确的 flux-subtracted bracket；不能边用封闭系统的 Hamiltonian 定义，边把受源项丢掉。
4. 将 $\delta\langle\mathfrak P\rangle/\delta C$ 的可积性作为构造候选边界生成泛函前的首个检验。

本次重建了主要 Ward→contact→charge 链及附录 A 的约束逻辑，复算了中心项、Jacobi 多项式、mass balance、剪切变分与上述非平凡几何／cocycle 例子。**未完成的一般性检验：** 任意 curved-source 全部 contact kernels 的显式模型计算、完整 sourced operator Jacobi、球面奇异 superrotation 的边界处方，以及解决单源 $W$ 可积性缺口的具体理论。论文自身也没有给出这些结果。
