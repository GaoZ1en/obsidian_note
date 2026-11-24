---
paper id: 2611.27488v1
title: BMS Charges from Null Hypersurfaces
authors:
  - Martina Adamo
  - Luca Ciambelli
  - Felipe Diaz
  - Michael Imseis
  - Leonardo Sanhueza
  - Simone Speziale
publication date: 2026-11-20T11:35
abstract: |-
  本文沿趋于未来 null infinity 的有限距离 null foliation，重建 Bondi 质量和角动量演化、辐射相空间及 BMS 荷。两参数 null-boundary 极化给出同一辐射预辛形式，但只有 Dirichlet 代表直接趋于 Ashtekar–Streubel potential。荷还须保留非切向生成元及 anomaly，扣除 Minkowski 参考项，并以协变边界 Lagrangian 确定 corner improvement，才能恢复标准 BMS 荷。
comments: "46 Pages, v1; PDF 48 pages including cover and contents"
url: https://arxiv.org/abs/2611.27488v1
summary: "有限 null 边界到 BMS 的明确实例：相同辐射辛形式不能固定荷，法向生成元、参考减除与 anomalous corner 都留下有限贡献。"
tags: []
---

# 为什么有限距离辛形式的正确极限还不够

这篇对当前 CPS／边界荷工作最直接的贡献，是把三个容易混同的步骤分开：**取几何极限、取辐射相空间极限、选择物理荷的代表**。Dirichlet null potential 的确趋于 Ashtekar–Streubel（AS）potential；然而相应重整化荷仍多一个 soft shear 项。缺的不是再调一次辛形式，而是使边界 Lagrangian 协变的 corner 代表。

全文来源为 [arXiv:2611.27488v1](https://arxiv.org/abs/2611.27488v1)。下文页码均指正文；PDF 页码 = 正文页码 + 2。主要链条是 §2 的 null embedding／约束 → §3 的极化极限 → §4 的非切向荷及 corner；附录 A 从 conformal completion 给出平行推导。这里重构这条链，穿插实际复算，不将作者的完整四维几何计算说成全部独立证明。

## 1. Bondi 数据怎样确定一族真正的 null 边界

采用四维渐近平坦真空、Bondi 坐标 $(u,r,x^A)$，度规为 (2.1)

$$
ds^2=-2e^{2\beta}du(dr+Fdu)
 +g_{AB}(dx^A-U^Adu)(dx^B-U^Bdu).
$$

角指标用固定的 $\gamma_{AB}$ 升降，$\bar\nabla$ 是其 Levi-Civita 导数。所需展开是

$$
\begin{aligned}
F&=\bar F-\frac m r+\frac{F_2}{r^2}+O(r^{-3}),&
\beta&=\frac{\bar\beta}{r^2}+O(r^{-4}),\\
U^A&=\frac{\bar U^A}{r^2}+\frac{U_1^A}{r^3}+O(r^{-4}),&
g_{AB}&=r^2\gamma_{AB}+rC_{AB}
 +\frac14\gamma_{AB}C_{CD}C^{CD}+O(r^{-1}).
\end{aligned}
$$

这里 $C_{AB}$ 对称无迹，$N_{AB}=\partial_uC_{AB}$ 是 news；$m,J_A$ 分别是本文的质量、角动量 aspect。不要把 $J_A$ 与别处同名的 angular-momentum aspect 直接等同：本文脚注 12 给出的另一约定为 $N^A_{\rm ang}=J^A+\bar\nabla^A\bar\beta$。本文还定义

$$
U_1^A=-\frac23\bigl(J^A+C_B{}^A\bar U^B+\bar\nabla^A\bar\beta\bigr).
$$

领先真空方程固定 (2.8)

$$
\bar\beta=-\frac1{32}C_{AB}C^{AB},\qquad
\bar R=4\bar F,\qquad
\bar U^A=-\frac12\bar\nabla_BC^{AB},\qquad
\partial_u\gamma_{AB}=0.
$$

$r=\mathrm{const}$ 在物理时空通常是 timelike，不能充作这里的 null regulator。取

$$
\Phi=r-r_\lambda(u,x^A),\qquad n=-d\Phi,\qquad
k^\mu\partial_\mu=\partial_r,\qquad n\cdot k=-1.
$$

$k$ 是 null rigging，不是由 $n$ 唯一确定的另一法向量。由逆度规得 eikonal 方程 (2.11)

$$
0=n^2=2e^{-2\beta}\bigl[F+(\partial_u+U^A\partial_A)r_\lambda\bigr]
 +g^{AB}\partial_Ar_\lambda\partial_Br_\lambda.
$$

令

$$
r_\lambda=\lambda+c_0+\frac{c_1}{\lambda}
 +\frac{c_2}{\lambda^2}+O(\lambda^{-3}).
$$

在本文随后采用的 $\partial_Ac_0=0$ 选择下，逐阶消去 $n^2$ 给出

$$
\partial_uc_0=-\bar F,\qquad
\partial_uc_1=m,\qquad
\partial_uc_2=-c_0m-F_2. \tag{2.18}
$$

**使用范围：** $\partial_Ac_0=0$ 与第一式一起要求相应 frame 的 $\bar F$ 无角依赖；单位圆球 $\bar R=2,\bar F=1/2$ 是一致的选择，也是后面标准全局 BMS 结果的使用范围。不能仅靠改变角向积分常数便在任意非恒曲率 cut 上维持这一条件。分析限于渐近区无 caustic 的光滑片段，$\lambda\to\infty$ 在固定有限 $u$ 下进行。

Schwarzschild 是很清楚的例子。$F=1/2-M/r$、$r_\lambda(0)=\lambda$，则

$$
\dot r_\lambda=-\frac12+\frac{M}{r_\lambda},\qquad
u=2(\lambda-r_\lambda)
 +4M\log\frac{\lambda-2M}{r_\lambda-2M}.
$$

因此

$$
r_\lambda=\lambda-\frac u2+\frac{Mu}{\lambda}
 +\frac{Mu^2}{4\lambda^2}+O(\lambda^{-3}).
$$

这是恒定 advanced time 的 ingoing null surfaces；$\lambda$ 是其与 $u=0$ 的相交半径，而不是直接取 advanced time 的一半。这样避免把 Schwarzschild tortoise logarithm 带进 regulator 的逆幂级数。Mathematica 代回上述 ODE，至 $\lambda^{-2}$ 的残差为零。

## 2. 约束的次领先阶成为 Bondi 演化

rigging projector $\Pi_\mu{}^\nu=\delta_\mu{}^\nu+n_\mu k^\nu$ 将 bulk 数据拉到 null surface，得到退化度规 $q_{ab}$、生成元 $\ell^a$ 和一形式 $k_a$，满足

$$
\ell^aq_{ab}=0,\qquad \ell^ak_a=-1.
$$

展开张量、shear、inaffinity 和 Hájíček form 的定义为

$$
\theta_{ab}=\frac12\mathcal L_\ell q_{ab},\quad
\theta_a{}^b=\frac12\theta q_a{}^b+\sigma_a{}^b,\quad
\kappa=-k_\nu n^\mu\nabla_\mu n^\nu,\quad
\pi_a=-q_a{}^\nu k_\mu\nabla_\nu n^\mu.
$$

$q_a{}^b=\delta_a{}^b+k_a\ell^b$ 是 cut projector。承重展开是 (2.26)–(2.41)

$$
\begin{aligned}
\ell^u&=1-2\bar\beta\lambda^{-2}+O(\lambda^{-3}),&
\ell^A&=\bar U^A\lambda^{-2}+O(\lambda^{-3}),\\
q_{AB}&=\lambda^2\gamma_{AB}
 +\lambda(C_{AB}+2c_0\gamma_{AB})+O(1),\\
\kappa&=-m\lambda^{-2}+O(\lambda^{-3}),\\
\pi_A&=\frac{\bar U_A}{\lambda}
 -\frac{J_A+2\partial_A\bar\beta+c_0\bar U_A-\partial_Ac_1}{\lambda^2}
 +O(\lambda^{-3}),\\
\theta&=-\frac{2\bar F}{\lambda}
 +\frac{2c_0\bar F+2m+\bar\nabla_A\bar U^A}{\lambda^2}
 +O(\lambda^{-3}),\\
\sigma_A{}^B&=\frac{N_A{}^B}{2\lambda}
 +\frac{S_A{}^B}{\lambda^2}+O(\lambda^{-3}),
\end{aligned}
$$

其中

$$
S_A{}^B=\frac14\left[C_{AC}N^{BC}-N_{AC}C^{BC}
 +2\left(\bar FC_A{}^B-c_0N_A{}^B
 +2\bar\nabla_{\langle A}\bar U^{B\rangle}\right)\right].
$$

尖括号表示对称无迹投影。$\mu=\kappa+\theta/2$ 时，Raychaudhuri 和 Damour 约束分别是 (2.42)–(2.43)

$$
\begin{aligned}
0&=(\mathcal L_\ell+\theta)\theta-\mu\theta
 +\sigma_a{}^b\sigma_b{}^a+\ell^a\ell^bR_{ab},\\
0&=(\mathcal L_\ell+\theta)\pi_a+\theta\varphi_a
 -(\bar D_b+\varphi_b)(\mu q_a{}^b-\sigma_a{}^b)
 -q_a{}^bR_{bc}\ell^c,
\end{aligned}
$$

$\varphi_a=\mathcal L_\ell k_a$，$\bar D$ 是水平投影的 Carrollian covariant derivative，不是直接等同于 $\bar\nabla$。

### 质量损失：领先膨胀先抵消

真空时 Ricci 项消失。在 $\lambda^{-2}$ 阶，前三项依次给出

$$
\begin{aligned}
(\mathcal L_\ell+\theta)\theta
 &=\lambda^{-2}\left(2\bar F^2+2\dot m
 -\frac12\bar\nabla_A\bar\nabla_BN^{AB}\right)+O(\lambda^{-3}),\\
\mu\theta&=2\bar F^2\lambda^{-2}+O(\lambda^{-3}),\\
\sigma_a{}^b\sigma_b{}^a
 &=\frac1{4\lambda^2}N_{AB}N^{AB}+O(\lambda^{-3}).
\end{aligned}
$$

$2\bar F^2$ 抵消后，约束才变成

$$
\dot m=\frac14\bar\nabla_A\bar\nabla_BN^{AB}
 -\frac18N_{AB}N^{AB}. \tag{2.48}
$$

闭球上散度积分为零，故 $M_B=(4\pi G)^{-1}\int m\,d\Omega$ 满足
$\dot M_B=-(32\pi G)^{-1}\int N^2d\Omega$。这也固定后面荷与 outward flux 的符号。

### 角动量：不能漏掉 cut connection 的变化

空间 Damour 方程到所需阶为

$$
C_A=\partial_u\pi_A+\theta\pi_A-\partial_A\mu
 +\bar D_b\sigma_A{}^b+O(\lambda^{-3}).
$$

$\partial_u\pi_A$ 与 shear divergence 的 $\lambda^{-1}$ 项互消。次阶不只是 $\bar\nabla_BS_A{}^B$，而是 (2.54)

$$
\bar D_b\sigma_A{}^b=
\frac{\bar\nabla_BN_A{}^B}{2\lambda}
 +\frac1{\lambda^2}\left(
 \bar\nabla_BS_A{}^B-\frac14N^{BC}\bar\nabla_AC_{BC}\right)
 +O(\lambda^{-3}).
$$

额外项可直接理解：$q_{AB}/\lambda^2=\gamma_{AB}+C_{AB}/\lambda+\cdots$，所以

$$
\delta_C\Gamma^C{}_{AB}=\frac12\gamma^{CD}
 (\bar\nabla_AC_{DB}+\bar\nabla_BC_{AD}-\bar\nabla_DC_{AB}).
$$

作用在领先 shear $N_A{}^B/2$ 上，connection 修正是

$$
\frac12\delta_C\Gamma^B{}_{BC}N_A{}^C
 -\frac12\delta_C\Gamma^C{}_{BA}N_C{}^B
 =-\frac14N^{BC}\bar\nabla_AC_{BC}.
$$

此等式已用 xAct 对任意对称 $C,N$、$C$ 无迹复算，残差为零。另一个所需恒等式
$[\bar\nabla_B,\bar\nabla_A]\bar U^B=\bar R_{AB}\bar U^B=2\bar F\bar U_A$
也以二维 Levi-Civita connection 核对。收集后得到正文 p.11／PDF p.13 的 (2.59)：

$$
\begin{aligned}
\dot J_A={}&\bar\nabla_Am
 +\frac18\bar\nabla_A(N_{BC}C^{BC})
 +\frac14\bar\nabla_B(C_{AC}N^{BC}-N_{AC}C^{BC})\\
&+\frac14\bar\nabla_C
 (\bar\nabla_A\bar\nabla_BC^{BC}-\bar\nabla^C\bar\nabla^BC_{AB})
 -\frac14N^{BC}\bar\nabla_AC_{BC}.
\end{aligned}
$$

这里的全式来自作者约束展开；独立复算集中于决定末项的 connection 修正、二维无迹恒等式及曲率抵消，未另从任意四维 Bondi metric 完整重算全部 Ricci 分量。

## 3. 两参数极化：相同 $\omega$，不同 potential 代表

令 $\epsilon_{\mathcal N}=i_k\epsilon_4$、$\epsilon_C=i_\ell\epsilon_{\mathcal N}$。EH potential 的 null pullback 可分解为

$$
\theta^{\rm EH}|_{\mathcal N}
 =\theta^{(b,c)}-\delta\ell^{(b,c)}+d\vartheta^{\rm EH},\qquad
\ell^{(b,c)}=-\frac{b\kappa+c\theta}{16\pi G}\epsilon_{\mathcal N}.
$$

此处 $\ell^{(b,c)}$ 是边界 Lagrangian 三形式，与生成元 $\ell^a$ 不同。canonical／Dirichlet 选择为 $(b,c)=(2,2)$，其 potential 是

$$
\theta^{\rm can}=\frac{\epsilon_{\mathcal N}}{16\pi G}
 \left[(\sigma^{ab}-\mu q^{ab})\delta q_{ab}
 -2(\pi_a+\theta k_a)\delta\ell^a\right].
$$

其他成员可直接写成

$$
\theta^{(b,c)}=\theta^{\rm can}
 +\frac{2-b}{16\pi G}\delta(\kappa\epsilon_{\mathcal N})
 +\frac{2-c}{16\pi G}\delta(\theta\epsilon_{\mathcal N}). \tag{3.11}
$$

$(0,0)$ 是去 corner 的 EH，$(0,2)$ 是 CFP，$(1,2)$ 是 CS，$(0,1)$ 是 conformal／York。这里不再额外设 $\delta n=\delta k=\delta\kappa=0$：foliation 与 rigging 已由 Bondi 数据决定，变化必须随之带上。

渐近 phase space 固定 $\delta\gamma_{AB}=0$、$\delta c_0=0$、$\delta\lambda=0$。因此 $\delta\bar F=0$，领先面积元也固定。canonical potential 中

$$
\delta q_{AB}=\lambda\delta C_{AB}+O(1),\qquad
\tau^{AB}=\frac{N^{AB}+2\bar F\gamma^{AB}}{16\pi G\lambda^3}
 +O(\lambda^{-4}),\qquad
\epsilon_{\mathcal N}=(\lambda^2+2c_0\lambda+O(1))\epsilon^{(0)}_{\mathcal N}.
$$

由于 $\gamma^{AB}\delta C_{AB}=0$，$\bar F$ 项不贡献；$\tau_a\delta\ell^a\epsilon_{\mathcal N}=O(\lambda^{-1})$。故

$$
\theta^{\rm can}\longrightarrow
\theta^{\rm AS}=\frac{\epsilon^{(0)}_{\mathcal N}}{32\pi G}N^{AB}\delta C_{AB}.
$$

但 $\kappa,\theta\to0$ **不表示**它们乘面积元后可以丢掉：

$$
\begin{aligned}
\kappa\epsilon_{\mathcal N}&=-m\epsilon^{(0)}_{\mathcal N}+O(\lambda^{-1}),\\
\theta\epsilon_{\mathcal N}&=
 \left[-2\bar F\lambda-2c_0\bar F+2m+\bar\nabla_A\bar U^A\right]
 \epsilon^{(0)}_{\mathcal N}+O(\lambda^{-1}).
\end{aligned}
$$

发散项只含固定数据，变分为零。代入 (3.11) 就得到 (3.28)，正文 p.17／PDF p.19：

$$
\boxed{\lim\theta^{(b,c)}=\theta^{\rm AS}
 +\frac{\epsilon^{(0)}_{\mathcal N}}{16\pi G}
 \delta\left[(b-2c+2)m+\frac{c-2}{2}
 \bar\nabla_A\bar\nabla_BC^{AB}\right].}
$$

这些乘积与系数已用 Mathematica 复算。对任意独立 $m,C$，只有 $(2,2)$ 使余项逐点消失；所有成员却有同一

$$
\omega^{\rm AS}(\delta_1,\delta_2)
 =\frac{\epsilon^{(0)}_{\mathcal N}}{32\pi G}
 (\delta_1N^{AB}\delta_2C_{AB}-\delta_2N^{AB}\delta_1C_{AB}),
$$

因为余项 field-space exact，$\delta^2=0$。这是相同辐射辛形式，而非相同 Noether current 的结论。

### EH corner 在 null infinity 留下有限项

本文的 corner potential 是 (3.33)

$$
\vartheta^{\rm EH}=\frac1{16\pi G}
 \left[(k^\mu\delta n_\mu+k_a\delta\ell^a)\epsilon_C
 -k\wedge i_{\delta\ell}\epsilon_C\right].
$$

第二项拉到单个 cut 上为零，但 **先求 $d$ 再拉到整个 null surface** 可留下有限项。因此不能在求 $d\vartheta$ 前删去它。两个贡献分别为
$-\delta(C^{AB}N_{AB})\epsilon^{(0)}_{\mathcal N}/8$ 和
$\bar\nabla_A\bar\nabla_B\delta C^{AB}\epsilon^{(0)}_{\mathcal N}/2$，再乘 $1/(16\pi G)$。于是

$$
\lim\theta^{\rm EH}=\theta^{\rm AS}-\delta B,\qquad
B=-\frac{\epsilon^{(0)}_{\mathcal N}}{16\pi G}
 \left(2m-\frac12\bar\nabla_A\bar\nabla_BC^{AB}
 -\frac18C^{AB}N_{AB}\right). \tag{3.48}
$$

这里改用 $B$ 表示原文该式的 $b$，避免与极化参数混淆。以上 corner 合并的 $1/2,1/8$ 系数已复算；完整 EH pullback (3.2) 仍作为来源的几何输入。

## 4. 为什么 Brown–York charge 少了东西

null Brown–York tensor 为

$$
T_a{}^b=\frac1{8\pi G}(W_a{}^b-W\delta_a{}^b),\qquad
W_a{}^b=\Pi_a{}^\mu\nabla_\mu n^\nu\Pi_\nu{}^b,
\quad W=\theta+\kappa.
$$

$D_bT_a{}^b=0$ 包含上面的两个约束，但这不保证它收缩 BMS 向量后就是 BMS charge。

本文把渐近生成元延伸进 bulk，要求保持同一 Bondi gauge：

$$
\begin{aligned}
\xi^u&=f=T(x^A)+\frac u2\psi,&\psi&=\bar\nabla_AY^A,\\
\xi^r&=-\frac r2\psi+\frac12\bar\nabla^2f
 +\frac1r\left(\bar U^A\bar\nabla_Af
 -\frac14C^{AB}\bar\nabla_A\bar\nabla_Bf\right)+O(r^{-2}),\\
\xi^A&=Y^A-\frac1r\bar\nabla^Af
 +\frac1{2r^2}C^{AB}\bar\nabla_Bf+O(r^{-3}).
\end{aligned}
$$

$Y^A$ 是圆球上的全局 CKV。这个 extension 在有限距离通常不切于 $\mathcal N_\lambda$。写

$$
\xi^\mu=\tau_\xi n^\mu-\xi_\perp k^\mu+X^\mu,\qquad
\tau_\xi=-k_\mu\xi^\mu,\quad \xi_\perp=n_\mu\xi^\mu,
\quad X\cdot n=X\cdot k=0.
$$

再令 $\Delta_\xi=\delta_\xi-\mathcal L_\xi$ 作用在 field-space 零形式上，

$$
w_\xi=-k^\mu\partial_\mu(\Delta_\xi\Phi),\qquad
\alpha_k=-n_\nu k^\mu\nabla_\mu k^\nu.
$$

$w_\xi$ 描述所选 normal 的 anomaly；$\alpha_k$ 是横向 rigging 的 inaffinity，而非 $\kappa$。由 Komar、边界 Lagrangian 和 corner 三项

$$
q_\xi^{(b,c)}=q_\xi^K+i_\xi\ell^{(b,c)}-I_\xi\vartheta^{\rm EH}
$$

得到正文 p.23／PDF p.25 的关键式

$$
q_\xi^{(b,c)}|_C=
\frac{\epsilon_C}{16\pi G}
 \left[(2-b)\tau_\xi\kappa-c\tau_\xi\theta
 +2X^a\pi_a+2\xi_\perp\alpha_k-2w_\xi\right]. \tag{4.35}
$$

即使 $(2,2)$，相对 Brown–York contraction 仍有
$(\xi_\perp\alpha_k-w_\xi)\epsilon_C/(8\pi G)$。只有切向且无 anomaly 的变换才能直接退回 Brown–York charge。

## 5. 从有限荷到标准 BMS 荷：两种不同的减除

需要保留的阶数为

$$
\begin{aligned}
\tau_\xi&=f(1+2\bar\beta\lambda^{-2})+\cdots,\\
X^A&=Y^A-\lambda^{-1}\bar\nabla^Af+\cdots,\\
\xi_\perp&=\frac\lambda2\psi+\frac12c_0\psi
 -\frac12\bar\nabla^2f-f\bar F+\cdots,\\
\alpha_k&=-4\bar\beta\lambda^{-3}+\cdots,\\
w_\xi&=-\frac12\psi-\lambda^{-2}
 \left(\bar U^A\bar\nabla_Af-\frac14C^{AB}\bar\nabla_A\bar\nabla_Bf\right)+\cdots,\\
\epsilon_C&=[\lambda^2+2c_0\lambda+c_0^2+2c_1+O(\lambda^{-1})]\epsilon_C^{(0)}.
\end{aligned}
$$

例如 $\xi_\perp=O(\lambda)$ 与 $\alpha_k=O(\lambda^{-3})$ 乘 $\epsilon_C=O(\lambda^2)$ 恰给有限值，不能因为 $\alpha_k\to0$ 就删去。

将这些量代入 (4.35)，$\bar U^A\bar\nabla_Af$ 的两处项抵消。对闭球积分，$Y$ 的 CKV 方程和 $C$ 无迹使 $Y^A\bar U_A$ 的积分为零；$c_1$ 与 $\bar\beta$ 项也经分部积分抵消。本文对 cut 取未来向类空面之 outward orientation，与 $\epsilon_C=i_\ell i_k\epsilon_4$ 的诱导方向相反。若以下用正的 $d\Omega=\sqrt\gamma d^2x$ 记球面积，则结果为

$$
Q_\xi^{(b,c)}=-\frac1{16\pi G}\int d\Omega\,
 \left[2cf(\lambda+c_0)\bar F
 +(b-2c-2)fm+\frac{c-1}{2}fD-2Y^AJ_A\right]+O(\lambda^{-1}),
\quad D:=\bar\nabla_A\bar\nabla_BC^{AB}. \tag{4.46}
$$

完整几何表达式到此有限阶的展开已用 Mathematica 逐项复算，包括 $\xi_\perp\alpha_k$、anomaly、面积元次阶及积分后 $c_1,\bar\beta$ 的抵消。

### 先扣固定参考背景，不改变辐射 potential

发散的 $2cf(\lambda+c_0)\bar F$ 已存在于 Minkowski。在固定 frame／regulator 的 phase space 上

$$
\ell_{\rm Ren}^{(b,c)}=\ell^{(b,c)}-\ell_{\rm Mink}^{(b,c)},\qquad
\ell_{\rm Mink}^{(b,c)}=
\frac{2c(\lambda+c_0)\bar F}{16\pi G}\epsilon_{\mathcal N}^{(0)}+O(\lambda^{-1}),
$$

且其渐近变分为零。扣后

$$
Q_{\xi,\rm Ren}^{(b,c)}=
-\frac1{16\pi G}\int d\Omega\,
 \left[(b-2c-2)fm+\frac{c-1}{2}fD-2Y^AJ_A\right]. \tag{4.51}
$$

Dirichlet 于是给

$$
Q_{\xi,\rm Ren}^{(2,2)}=
\frac1{16\pi G}\int d\Omega\,
 \left(4fm+2Y^AJ_A-\frac12fD\right). \tag{4.53}
$$

质量归一化正确，却多了 soft term。**有限、真空零点正确、辐射辛形式正确，三者仍不足以固定标准荷。**

### 再用协变性固定有限 corner，而不是再次减发散

渐近 Dirichlet 边界 Lagrangian 是

$$
\ell_{\rm Ren}^{(2,2)}=
\frac{\epsilon_{\mathcal N}^{(0)}}{16\pi G}(-2m+D).
$$

作者使用的 Bondi anomaly 输入为 (4.56)–(4.58)

$$
\begin{aligned}
\Delta_\xi\epsilon_{\mathcal N}^{(0)}&=-3\dot f\epsilon_{\mathcal N}^{(0)},\\
\Delta_\xi m&=3\dot f m+\frac12\bar\nabla_AN^{AB}\bar\nabla_Bf
 +\frac14\partial_u(C^{AB}\bar\nabla_A\bar\nabla_Bf),\\
\Delta_\xi C_{AB}&=-\dot f C_{AB}-2\bar\nabla_{\langle A}\bar\nabla_{B\rangle}f.
\end{aligned}
$$

以下 $\doteq$ 表示只在 cut 上模散度成立。利用这些 anomaly 及 $\bar U^A=-\bar\nabla_BC^{AB}/2$，得到

$$
\Delta_\xi\ell_{\rm Ren}^{(2,2)}\doteq
-\frac{\epsilon_{\mathcal N}^{(0)}}{16\pi G}
 \left[\bar\nabla_AN^{AB}\bar\nabla_Bf
 +\frac32\partial_u(C^{AB}\bar\nabla_A\bar\nabla_Bf)\right].
$$

全局圆球 BMS 满足 $\bar\nabla_{\langle A}\bar\nabla_{B\rangle}\dot f=0$；积分分部后第一项为 $-N^{AB}\bar\nabla_A\bar\nabla_Bf$，第二项的时间导数只剩 $N^{AB}$。所以

$$
\Delta_\xi\ell_{\rm Ren}^{(2,2)}\doteq-ds_\xi,\qquad
s_\xi=\frac{\epsilon_C^{(0)}}{32\pi G}C^{AB}\bar\nabla_A\bar\nabla_Bf.
$$

这一步的系数合并已复算。它依赖上述 BMS anomaly 作为输入，未独立从所有 bulk gauge-preserving 方程重导 anomaly。

取局域二形式

$$
\chi=-\frac1{16\pi G}du\wedge i_{\bar U}\epsilon_C^{(0)}. \tag{4.71}
$$

虽然 $\chi$ 本身在单个 cut 上为零，$\Delta_\xi du=-df$ 使

$$
(\Delta_\xi\chi)|_C=
\frac{\bar U^A\bar\nabla_Af}{16\pi G}\epsilon_C^{(0)}
\doteq s_\xi.
$$

因此同时改变

$$
\ell_{\rm Cov}=\ell_{\rm Ren}+d\chi,\qquad
\vartheta_{\rm Cov}=\vartheta^{\rm EH}+\delta\chi
$$

保持 $\theta^{(2,2)}$ 不变，却令边界 Lagrangian 在上述积分意义协变，荷密度变为 $q_{\xi,\chi}=q_{\xi,\rm Ren}-\Delta_\xi\chi$。**定向不能再漏一次：** $-\int_C\Delta_\xi\chi$ 换成正面积记法是 $+(32\pi G)^{-1}\int fD\,d\Omega$，恰好消去 (4.53) 的负 soft 项。最终

$$
\boxed{Q_\xi^{\rm BMS}=\frac1{16\pi G}\int d\Omega\,
 (4fm+2Y^AJ_A).} \tag{4.74}
$$

$T=1,Y=0$、$m=M$ 时给 $M/G$，符合本文几何质量参数的归一化。所选代表在 anomaly-free corners 与 cut-exact forms 的自由度之外固定；不是对任意 generalized BMS 或带 puncture cut 的唯一性定理。

相同 corner 同时修复 balance law：原先 $I_\xi\theta^{\rm AS}\doteq d(q_{\xi,\rm Ren}-s_\xi)$，改善后为 $dq_{\xi,\chi}$。flux density 仍是

$$
I_\xi\theta^{\rm AS}=
\frac{\epsilon_{\mathcal N}^{(0)}}{32\pi G}N^{AB}\delta_\xi C_{AB}.
$$

对时间平移，正 outward flux 是 $N^2/(32\pi G)$，Bondi charge 则减少；不要把有向三形式等式误读成质量增加。

## 6. Conformal 极化和附录为什么值得读

$(b,c)=(0,1)$ 在 (4.51) 中已经直接给正确 BMS 荷；其 potential 却是

$$
\theta^{(0,1)}=\theta^{\rm AS}
 +\frac1{16\pi G}d\delta i_{\bar U}\epsilon_{\mathcal N}^{(0)}.
$$

作者 §4.4 的结论是：若对完整 potential 要求 Wald–Zoupas 式 stationarity 与 covariance，选择仍是 Dirichlet；若只要求收缩后的 current $I_\xi\theta$ 满足，conformal 代表也可给同样 integrated BMS charges／fluxes。不能把“相同 $I_\xi\theta$”加强成“相同局部 potential”。

附录 A 用 $\Omega=1/r$、$\hat g=\Omega^2g$，把无限远放在 $\Omega=0$。其 regulator 参数趋于零，和正文的关系为

$$
\lambda_{\rm conf}=\lambda_{\rm phys}^{-1},\qquad
\widetilde c_2=-c_0,\qquad \widetilde c_3=c_0^2-c_1.
$$

这不是仅换坐标：真空 $R_{\mu\nu}[g]=0$ 不等于 $\hat R_{\mu\nu}=0$，而是

$$
\hat R_{\mu\nu}=-\frac2\Omega\hat\nabla_\mu\partial_\nu\Omega
-\hat g_{\mu\nu}\left(\Omega^{-1}\hat\Box\Omega
 -3\Omega^{-2}(\hat\nabla\Omega)^2\right).
$$

例如 conformal Raychaudhuri 中 $2\lambda_{\rm conf}^2\dot m$ 来自 $\ell^a\ell^b\hat R_{ab}$，而不是正文同一个 expansion 项；加上 $-\lambda_{\rm conf}^2\bar\nabla_A\bar\nabla_BN^{AB}/2$ 和 $\lambda_{\rm conf}^2N^2/4$ 后仍给质量损失。Damour 的 $\hat R_{Ab}\ell^b$ 同样不可丢。A.2 的 connection 展开展示了上面 shear divergence 的额外项从哪里来。

A.3 进一步说明 physical EH potential 的 conformal 转换还带额外向量 $\hat V^\mu$：

$$
\Theta^\mu(\hat g)=\Omega^{-2}\theta_{\rm EH}^\mu(\hat g)+\hat V^\mu,\qquad
\hat V^\mu=\Omega^{-3}\partial_\alpha\Omega
 (\hat g^{\mu\alpha}\hat g^{\lambda\sigma}
 -4\hat g^{\mu\lambda}\hat g^{\alpha\sigma})\delta\hat g_{\lambda\sigma}.
$$

令 $K=C^{AB}N_{AB}$，$D=\bar\nabla_A\bar\nabla_BC^{AB}$。在统一因子 $\epsilon^{(0)}_{\mathcal N}/(16\pi G)$ 下，三块有限 exact contribution 分别是

$$
\begin{array}{c|c}
\Theta-\theta^{\rm AS}&\delta(2m-D/2-K/8)\\
\delta\hat\ell^{(b,c)}&\delta((b-2c)m+cD/2)\\
d\hat\vartheta^{\rm EH}&\delta(-K/8+D/2)
\end{array}
$$

按 $\Theta^{(b,c)}=\Theta+\delta\hat\ell^{(b,c)}-d\hat\vartheta^{\rm EH}$ 合并，$K$ 抵消，恢复 (3.28)。这个有限项合并已机器复算。附录的用途正是展示相同极限不需要逐项相同；若直接把 physical potential 当成 $\Omega^{-2}$ 倍的 conformal potential，会漏质量项。

## 7. 对当前工作的可复用输入

1. **有限区域／渐近区域比较要携带三元组。** 从 $\theta_{\rm EH}=\theta'-\delta\ell+d\vartheta$ 出发，保存 $(\theta',\ell,\vartheta)$ 及法向量的变化；仅比较 $\delta\theta'$ 会看不见本文的 soft discrepancy。
2. **可直接采用的非切向测试公式是 (4.35)。** 检查一个渐近生成元在 regulator 上是否有 $\xi_\perp$；若有，再看 $\xi_\perp\alpha_k\epsilon_C$ 和 $w_\xi\epsilon_C$ 的实际阶数，不以“向量在无限远切向”代替有限阶计算。
3. **sewing 的角项不应只检查单个 cut pullback。** 本文 $\vartheta$ 的 wedge 项及 $\chi$ 都说明“拉到 cut 为零”不等于其 $d$ 或 anomaly 无效。但本文没有构造 Hilbert-space factorization、edge-mode measure 或量子 sewing 核，不能直接据此宣称量子拼接已完成。
4. **AdS 比较需要重新做边界输入。** 此处是四维平坦 null infinity、固定球面 frame、闭 cut、全局 BMS；AdS 的 timelike boundary、counterterm 和 source/response split 不在本文结论内。可迁移的是代表选择与极限的计算程序，不是直接照搬 $4fm+2YJ$。

本次实际复算了 Schwarzschild eikonal 展开、二维对称无迹矩阵恒等式、Damour connection 修正与 Ricci commutator、potential 的有限乘积、完整几何荷表达式的有限阶代入及其 cut 分部积分系数、corner 改善的符号、附录三块 potential 的合并。上述核算未出现非零残差或内核消息。尚未独立重做任意 Bondi 数据的全部四维 Ricci／EH pullback、完整 BMS anomaly 推导和非全局对称推广；相应几何输入在使用处明确依赖原文。$c_{\rm eff}=3/(2G)$ 的 Brown–York trace 类比只是 §2.5 的启发，因四维 $G$ 有量纲，不作为已建立的二维 CFT central charge 使用。
