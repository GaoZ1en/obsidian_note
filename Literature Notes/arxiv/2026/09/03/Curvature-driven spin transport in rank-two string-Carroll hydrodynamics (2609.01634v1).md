---
paper id: 2609.01634v1
title: "Curvature-driven spin transport in rank-two string-Carroll hydrodynamics"
authors:
  - "Lobos, Nikko John Leo"
  - "Pantig, Reggie"
publication date: 2026-08-23
abstract: |-
  We derive the rank-two string-Carroll limit of the canonical stress--spin Ward system for probe matter on a fixed torsion-free background. Beyond rank-one Carroll spin hydrodynamics, this retains the coupled Riemann--spin force, a second longitudinal momentum projection, and the longitudinal boost bivector allowed only by a two-dimensional longitudinal kernel. We first extract the term linear in an independent spin amplitude $\varsigma$ and then expand in the near-horizon parameter $\lambda=\epsilon^2$, avoiding contamination by the omitted $\mathcal{O}(\varsigma^2)$ thermodynamic spin feedback. For finite mixed stress and $S^{\lambda\mu\nu}=\mathcal{O}(\varsigma\epsilon^p)$, $p=0$ is the unique sector in which the induced stress and curvature source balance at the first generic Ward order. On the regular branch of a smooth nonextremal static spherical outer horizon, locally normalized longitudinal and transverse spin amplitudes obey the same dilution law, while the curvature force first appears at $\mathcal{O}(\varsigma\lambda^2)$. For a general barotrope, the stationary system reduces to one thermodynamic quadrature and one local inverse. For the affine constant-sound-speed family $p=\alpha\mathcal E+\Pi$, $0\leq\alpha<1$, we obtain an explicit closed-form parametric solution, leading profiles for both spin channels, and fixed-radius, linear-spin corrections to enthalpy, pressure, and rapidity away from the sonic point. The response is governed by $\mathcal R^{(L)}_h=(f_2+3f_1\psi_1)/2$ and the longitudinal spin flux. We prove that the stationary closed-sphere Killing flux is invariant under regular pseudo-gauge improvements. In Reissner--Nordstr\"om, the response vanishes at the radial-tidal inversion $|Q|/M=2\sqrt{2}/3$; in the Einstein--Maxwell--dilaton family, its zero is $R_-/R_+=(1+a^2)/2$ for $0\leq a<1$. The Frenkel limit removes this response and the longitudinal boost sector.
comments: "26 pages"
url: https://arxiv.org/abs/2609.01634v1
summary: "重建双纵向 canonical spin Ward 系统、闭球 Killing flux 与球对称一阶曲率响应，区分基底转换和输运。"
tags: []
---

# Curvature-driven spin transport in rank-two string-Carroll hydrodynamics

本文的可复用结果是一个固定 canonical pseudo-gauge 的曲率—自旋 Ward 系统，及其在双纵向近视界极限中的受控球对称响应。这里的纵向自旋是 Lorentz boost 分量；施加 Frenkel 条件会将其去掉。通道比例随半径变化的部分只是基底转换，真正的物质流响应由纵向曲率和有符号自旋通量共同决定。结果是指定 ideal closure 内的一阶自旋系数，不能称为完整因果流体理论或一般视界动力学。

日总览：[[2026_09_03_overview]]。来源为 [官方 v1](https://arxiv.org/abs/2609.01634v1)，PDF 26 页及完整 TeX 均已获取。双栏正文和长公式链采用 monograph mode。

## Source-derived：完整结构与推导路径

| 源部分 | 工作、输入与后续依赖 |
|---|---|
| I Introduction | 确定两参数顺序、canonical 与 rank-one 文献区别、probe 范围 |
| II Curved spin Ward identities and rank-two geometry | 独立 vielbein/connection 变分；Killing 流和 pseudo-gauge 超势；退化投影和 boost |
| III String-Carroll spin transport | Laurent 联络、曲率降指标、balanced scaling、ideal/convective 本构、regular branch |
| IV Static spherical outer horizons | ingoing 面积半径展开；两个不变 bivector；局部比例精确随流守恒；首次曲率力 |
| V Analytic near-horizon spin transport | 一般 barotrope 积分、affine 参数解、声点、匹配的一阶响应、物理和基底比例的区分 |
| VI Black-hole applications | EMD 面积坐标转换、Schwarzschild/RN/GMGHS 极限、潮汐零点、非一致极端极限 |
| VII Discussion | 冻结本构与几何后的结论；列出未覆盖扇区 |
| Appendix A | 投影逆度规、奇异联络迹、曲率阶数、boost 矩阵、纵向投影 |
| Appendix B | ingoing 展开、曲率收缩、第一积分消元、固定半径微扰、EMD 链式求导 |

全链条是源定义 → Ward → 指标权重与联络 Laurent 展开 → regular 球对称分支 → 本构和精确流 → matched difference → 曲率驱动的线性响应。Appendix A 支撑合法收缩，Appendix B 支撑具体可算结果；两者均不能由标题中的 Carroll 关联取代。

## 全局记号、符号与双参数顺序

取 $(-,+,+,+)$，单位权重反对称，曲率为

$$
R^\rho{}_{\sigma\mu\nu}
=2\partial_{[\mu}\Gamma^\rho_{\nu]\sigma}
+2\Gamma^\rho_{[\mu|\lambda|}\Gamma^\lambda_{\nu]\sigma},
\qquad [\nabla_\mu,\nabla_\nu]V^\rho=R^\rho{}_{\sigma\mu\nu}V^\sigma.
$$

| 记号 | 定义与边界 |
|---|---|
| $I=(A,a)$ | $A=0,1$ 纵向，$a=2,3$ 横向 |
| $\epsilon,\lambda=\epsilon^2$ | 收缩参数；$\lambda\to0$ 固定 $\rho$ |
| $\varsigma$ | 独立自旋幅度；先取 $\partial_\varsigma|_0$ 再展开 $\lambda$ |
| $V,\Pi;\ v,h$ | 完整退化块与 leading 块；上指标张量由 frame 定义，并非普通逆 |
| $\tau^\mu{}_\nu$ | mixed 应力系数；不要与纵向协变度规混用 |
| $\widehat u,\ U=\epsilon\widehat u,\ u$ | 物理归一化速度、重标度速度及 leading 速度 |
| $\vartheta_\mu$ | $\epsilon^{-2}U_\mu$ 的 leading 项，可能含由下一阶横向 drift 决定的部分 |
| $\Sigma,\ s_\parallel,s_\perp$ | 去掉 $\varsigma\epsilon$ 后的自旋密度和两种 bivector 系数 |
| $\bar s,\widetilde s$ | 分别乘局部归一化基底／固定视界基底 |
| $w=\mathcal E+p$ | 焓密度；$p$ 在本构中是压力，在 scaling 分类中另作指数，须由上下文分清 |
| $N_h,f_1,f_2,\psi_1$ | $e^{\psi_h},F'(r_h),F''(r_h),\psi'(r_h)$ |
| $\mathcal K_h,\mathcal J_h,\mathcal D_h$ | 纵向曲率组合、无量纲曲率系数、纯基底转换系数 |

正文保持 canonical pseudo-gauge，没有用 Belinfante 改善来令应力对称。对称应力是所选 ideal closure 的限制。与文中比较的 rank-one 论文还存在 $S_{\rm here}=-S_{\rm there}$ 的整体约定；引用其对称扇区时看不见此号，曲率力却依赖它。

## II：独立源变分、耦合 Ward 与可比较的守恒流

以 vielbein 和 metric-compatible spin connection 为独立源：

$$
\delta W=\int e\left(T^\mu{}_I\delta\widehat E_\mu{}^I
-\frac12S^\mu{}_{IJ}\delta\omega_\mu{}^{IJ}\right).
$$

自旋流只在末两指标反对称，第一指标是通量方向。先在 Riemann–Cartan 几何分部积分，散度使用 $\mathcal D_\mu-\mathcal G_\mu$，$\mathcal G$ 是 torsion trace；再把物理 torsion 置零，得到

$$
\nabla_\mu T^{\mu\nu}=-\frac12R^\nu{}_{\alpha\beta\gamma}S^{\alpha\beta\gamma},
\qquad
\nabla_\lambda S^{\lambda\mu\nu}=-2T^{[\mu\nu]}.
$$

因此分别写 $\nabla T=0$、$\nabla S=0$ 会漏掉曲率交换项。对 Killing 场，

$$
\mathcal I_\xi^\mu=T^\mu{}_\nu\xi^\nu+
\frac12S^{\mu\alpha\beta}\nabla_\alpha\xi_\beta,\qquad
\nabla_\mu\mathcal I_\xi^\mu=0.
$$

推导分两步：$\nabla\xi$ 的反对称部分使应力和 spin divergence 抵消；$\nabla_\mu\nabla_\alpha\xi_\beta=R_{\beta\alpha\mu\gamma}\xi^\gamma$ 再抵消曲率力。这是本文最适合 charge/balance-law 研究复用的对象，而非单独的物质能流。

对 $\Phi^{\lambda\mu\nu}=-\Phi^{\lambda\nu\mu}$，定义

$$
B^{\lambda\mu\nu}
=\frac12(\Phi^{\lambda\mu\nu}+\Phi^{\mu\nu\lambda}
+\Phi^{\nu\mu\lambda}),\quad B^{\lambda\mu\nu}=-B^{\mu\lambda\nu}.
$$

$T'=T+\nabla B,\ S'=S-\Phi$ 导致 $\mathcal I'_\xi-\mathcal I_\xi=\nabla_\lambda U_\xi^{\lambda\mu}$，$U_\xi^{\lambda\mu}=B^{\lambda\mu}{}_\nu\xi^\nu$。stationary 径向 flux 的时间导数消失，反对称性消去纯径向项，闭球上的角向全导数积分为零。

这里需要改善项在球上**正则且单值**。若有穿孔、patch transition 或边缘，不能直接宣布积分为零。局部 stress/spin 两部分仍依赖 pseudo-gauge；不变的是上述条件下的总闭球 Killing flux。

## II–III 与 Appendix A：双纵向退化不是两个普通零模

缩放 $\widehat E^A_\mu=\epsilon E^A_\mu,\ \widehat E^a_\mu=E^a_\mu$ 得

$$
g_{\mu\nu}=\epsilon^2V_{\mu\nu}+\Pi_{\mu\nu},\quad
g^{\mu\nu}=\epsilon^{-2}V^{\mu\nu}+\Pi^{\mu\nu}.
$$

互补投影满足 $P_\parallel+P_\perp=1$、$P_\parallel P_\perp=0$，秩分别为 2 和 $d-2$。leading $h_{\mu\nu}$ 的核是 Lorentzian 纵向平面，由另一个退化张量 $v_{\mu\nu}$ 提供该平面上的几何，不能把 $h^{\mu\nu}$ 当作 $h_{\mu\nu}$ 的矩阵逆。

boost 的三角结构为 $\delta e^A=\Lambda^A{}_ae^a,\ \delta e^a=0$；$h_{\mu\nu}$ 和 $v^{\mu\nu}$ 不变，互补块改变。spin 的末两指标分解为 $LL,LT,TT$，在四维有 $1+4+1=6$ 分量；加上未投影的通量指标，一般 spin current 有 24 分量，而不是 6。

从 Christoffel 式直接得到

$$
\Gamma=\epsilon^{-2}\mathcal A+\mathcal C+\epsilon^2\mathcal B,\quad
\mathcal A^\rho{}_{\mu\nu}=V^{\rho\lambda}\Pi_{\lambda\mu\nu}.
$$

其中 $\Pi_{\lambda\mu\nu}$ 是 Christoffel 第一类导数组合。frame 的偶数展开意味着有限项为 $\Gamma^{(0)}=\mathcal A_{(2)}+\mathcal C_{(0)}$；漏掉 $\mathcal A_{(2)}$ 会错误得到简单直积联络。由于 $\det\widehat E=\epsilon^2\det E$，且 $\epsilon$ 与时空无关，$\Gamma^{(-2)\rho}{}_{\rho\nu}=0$。

raised Riemann 可有 $\epsilon^{-4}$，但该项的第一个上指标纵向，故

$$
h_{\nu\rho}R^{(-4)\rho}{}_{\alpha\beta\gamma}=0.
$$

先把 stress 方程写成 mixed 形式、曲率写成全下指标，首次可能的曲率力是 $\epsilon^{-2}$。降指标时的 $kR^{(-4)}$、下一阶的 $\ell R^{(-4)}$ 仍须保留；不是宣布所有负阶曲率都消失。

### balanced sector 与本构选择

固定 $T^\mu{}_\nu=O(1)$，令 $S=O(\varsigma\epsilon^p)$。一般几何的 induced stress divergence 为 $\varsigma\epsilon^{-2}$，曲率力为 $\varsigma\epsilon^{p-2}$：$p>0$ 在首阶 passive，$p=0$ balanced，$p<0$ 需更奇异应力。这是指定有限流及首个一般阶下的唯一性，不排除偶然零点延迟作用或别的非解析 scaling。

采用

$$
T^{\mu\nu}=w\widehat u^\mu\widehat u^\nu+pg^{\mu\nu}
+O(\varsigma^2),\qquad
S^{\lambda\mu\nu}=\widehat u^\lambda\Omega^{\mu\nu},
\quad\Omega^{\mu\nu}=\varsigma\epsilon\Sigma^{\mu\nu}+\cdots.
$$

应力里的 $\mathcal E,\widehat u$ 可以有 induced 一阶响应；排除的是显式线性 spin-potential 项。二次项 $\mu_s\Omega$ 在独立 $\varsigma$ 展开中被一致去除，不能只按 $\epsilon$ 阶数在不同自旋阶间比较大小。

模型不施加 $\widehat u_\mu\Omega^{\mu\nu}=0$。它把 boost 和 rotation susceptibilities 独立取为 $\chi_B<0,\chi_R>0$；这是引文约定下必要的低动量符号，未证明双曲性。物理正交 frame 的 $LL,LT,TT$ 分别按 $\varsigma\epsilon^3,\varsigma\epsilon^2,\varsigma\epsilon$ 缩放，所以有限 contracted density 不等于有限 parent polarization。

regular branch 定义为 $\Gamma^{(-2)}=0$。这消去相应负阶曲率，得到 $\bar\nabla h=0,\bar\nabla v^{-1}=0$ 和 leading convective spin 方程。双纵向平面可在速度之外选单位空间向量 $z$，故存在独立纵向动量投影；rank-one 无对应的 $LL$ bivector。几何计数不证明两套本构动力学完全等价。

## IV：球对称外视界、局部基底和首次曲率力

取固定背景

$$
ds^2=-e^{2\psi(r)}F(r)dt^2+\frac{dr^2}{F(r)}+r^2d\Omega_2^2,
\quad F(r_h)=0,\quad f_1>0.
$$

面积半径必须是光滑单调的局部坐标，$\psi_h$ 有限。ingoing 变换 $dv=dt+e^{-\psi}dr/F$ 消去 $dr^2$，再令 $r=r_h+\lambda\rho$：

$$
ds^2=r_h^2d\Omega_2^2+\lambda
[-N_h^2f_1\rho\,dv^2+2N_h\,dv\,d\rho+2r_h\rho\,d\Omega_2^2]+\cdots.
$$

$\kappa=N_hf_1/2$。leading 纵向块 $q=-2N_h\kappa\rho\,dv^2+2N_h\,dv\,d\rho$ 是二维 ingoing Rindler，$\det q=-N_h^2$。leading sphere 无纵向依赖，使 $\mathcal A_{(0)}=0$，但其下一阶径向变化仍进入有限联络，故不能把整个有限连接看作 Rindler×sphere 直积。

球对称允许

$$
\Sigma=s_\parallel\varepsilon_\parallel+s_\perp\varepsilon_\perp,\quad
\varepsilon_\parallel^{v\rho}=N_h^{-1},\quad
\varepsilon_\perp^{\theta\phi}=(r_h^2\sin\theta)^{-1}.
$$

不存在 $SO(3)$ 不变的非零 sphere 切向向量，所以 mixed sector 消失。局部基底改用 $N_\epsilon^{-1},r_\epsilon^{-2}$；沿径向流的 frame 导数恰好抵消联络迹，两个局部 bivector 都平行输运。

由 $\nabla_\lambda S^{\lambda\mu\nu}=0$，

$$
\widehat D\bar s_X+\widehat\Theta\bar s_X=0,\quad
\widehat D\log(\bar s_\perp/\bar s_\parallel)=0.
$$

最后一式需分母非零；有符号比例可在固定符号区间使用对数。固定视界基底的系数则为

$$
\widetilde s_\parallel=\frac{N_h}{N_\epsilon}\bar s_\parallel,\quad
\widetilde s_\perp=\frac{r_h^2}{r_\epsilon^2}\bar s_\perp,\quad
\frac{\mathcal R_s^{(h)}(\rho)}{\mathcal R_s^{(h)}(0)}
=\frac{N_\epsilon}{N_h}\left(\frac{r_h}{r_\epsilon}\right)^2.
$$

这个变化不含独立输运系数。parent 正交 frame 比例为 $\epsilon^{-2}\bar s_\perp/\bar s_\parallel$，绝对值一般无有限收缩极限，但固定 $\epsilon$ 的径向归一化变化仍为 1。它比较 boost 与 rotation，不是两个可直接测量的 rest-frame 空间极化。

若施加 Frenkel 条件，纵向 bivector 的收缩给 $\vartheta_i\Sigma^{ij}=\pm s_\parallel z^j$，故 $s_\parallel=0$。下述球对称曲率响应即消失。

### 为什么不是 $O(\lambda)$ 的力

unexpanded 基底的曲率为

$$
R_{vrvr}=\frac{e^{2\psi}}2
[F''+3\psi'F'+2F(\psi''+\psi'^2)].
$$

坐标变换中每个下 $\rho$ 指标带 $\lambda$，于是

$$
R_{v\rho v\rho}=\frac{\lambda^2N_h^2}2\mathcal K_h+O(\lambda^3),
\qquad \mathcal K_h=f_2+3f_1\psi_1.
$$

设 $\mathcal F$ 为物理力中 $\varsigma$ 的系数，

$$
\mathcal F_v=-\frac{\lambda^2N_h}2\mathcal K_hu^\rho s_\parallel,\quad
\mathcal F_\rho=\frac{\lambda^2N_h}2\mathcal K_hu^vs_\parallel
+O(\lambda^3).
$$

因此 $u^i\mathcal F_i=0$、$z^i\mathcal F_i=\lambda^2\mathcal K_hs_\parallel/2+O(\lambda^3)$。横向 rotation 分量不进入该 warped-product 曲率收缩。单位纵向面积 bivector 定义的标量 $\mathcal R_h^{(L)}=\frac14R\varepsilon_L\varepsilon_L=\mathcal K_h/2$ 使这一系数可在正则基底坐标变换下解释。

## V 与 Appendix B：第一积分、声点与 matched response

leading 球对称方程为

$$
D\mathcal E+w\Theta=0,\quad wa_\parallel+z^i\partial_ip=0,\quad
Ds_X+\Theta s_X=0.
$$

定义 $\mathcal N(\mathcal E)=\exp\int_{\mathcal E_h}^{\mathcal E}dE/w(E)$，则 $D(s_X/\mathcal N)=0$。stationary 时 $u^\rho\mathcal N,\ u^\rho s_X,\ \tau^\rho{}_v$ 各为常数。ingoing 正则的视界速度为 $u_h^v=e^{\eta_h}/\sqrt2$、$u_h^\rho=-e^{-\eta_h}/(\sqrt2N_h)$，无需额外把两个视界自旋幅度相关联。

令 $y=N_h\kappa\rho e^{2\eta},x=N_h\kappa\rho e^{2\eta_h}$，并记 $R_\mathcal N=\mathcal N/\mathcal N_h,\ R_w=w/w_h,\ H=R_w/R_\mathcal N^2$。两条 flux ratio 给

$$
R_\mathcal Ne^{-(\eta-\eta_h)}(1-y)=1,\qquad
R_we^{-2(\eta-\eta_h)}(1-y^2)=1.
$$

在 $H$ 单调可逆的区间，

$$
\mathcal E(y)=H^{-1}\left(\frac{1-y}{1+y}\right),\quad
e^{\eta-\eta_h}=R_\mathcal N(1-y),\quad
x=\frac{y}{R_\mathcal N^2(1-y)^2}.
$$

所以“解析”是一个热力学积分加局部函数反演，不是任意状态方程都有初等闭式。

affine 本构 $p=\alpha\mathcal E+\Pi$、$0\le\alpha<1,\ w>0$ 给出初等参数解

$$
R_w=\left(\frac{1+y}{1-y}\right)^{(1+\alpha)/(1-\alpha)},\quad
\frac{s_X}{s_{Xh}}=\left(\frac{1+y}{1-y}\right)^{1/(1-\alpha)},
$$

$$
e^{\eta-\eta_h}=(1+y)^{1/(1-\alpha)}(1-y)^{-\alpha/(1-\alpha)},\quad
x=y(1-y)^{2\alpha/(1-\alpha)}(1+y)^{-2/(1-\alpha)}.
$$

stationary 微分系统的行列式是 $w\Delta_s$，其中

$$
\Delta_s=\frac{e^{-2\eta}}{2N_h^2}D_0(y),\quad
D_0=(1-y)^2-\alpha(1+y)^2.
$$

首个声点 $y_s=(1-\sqrt\alpha)/(1+\sqrt\alpha)$。本文只给出从视界到该点前的支；$\alpha=1$、穿越 sonic layer 和 global accretion 需新分析。dust 有 $x=y/(1+y)^2$ 的初等反演，正则支 $0\le x<1/4$；这不解决声点匹配。

### 与同一背景的无自旋解作匹配

固定背景、本构、$\mathcal E_h,\eta_h$，定义 $\Delta_{\rm sp}X=X(\epsilon,\varsigma)-X(\epsilon,0)$。纯几何修正抵消，因力已带 $\lambda^2$，其系数使用 leading spinless flow：

$$
\partial_\rho\Delta_{\rm sp}\tau^\rho{}_v
=-\varsigma\frac{\lambda^2N_h}2\mathcal K_hj_\parallel
+O(\varsigma\lambda^3,\varsigma^2),\qquad j_\parallel=u^\rho s_\parallel.
$$

匹配视界值后

$$
\mathcal G_{\rm sp}=1+\varsigma g(\rho),\quad
g=-\frac{\lambda^2N_h\mathcal K_hj_\parallel}{2\Phi_{E,h}}\rho.
$$

总 Killing flux 的 spin 项补偿物质 flux 的径向变化。不要把物质流减少直接解释为破坏守恒。

带响应的 affine 解在 $R_w$ 中把 $(1+y)/(1-y)$ 换成 $(1+y)/[(1-y)\mathcal G_{\rm sp}]$，在 $x$ 中再乘 $\mathcal G_{\rm sp}^{2/(1-\alpha)}$。这些是**生成表达式**，必须截取一阶 $\varsigma$，不能把它当成有限自旋的全阶解。

在固定半径 $x$ 下，

$$
y_{[1]}=-\frac{2g\,y_0(1-y_0^2)}{D_0},\qquad
\frac{w_{[1]}}{w^{(0)}}=-\frac{(1+\alpha)g}{1-\alpha}
\left(1+\frac{4y_0}{D_0}\right),
$$

$$
\eta_{[1]}=-\frac g{1-\alpha}
\left[1+\frac{2y_0((1+\alpha)+(\alpha-1)y_0)}{D_0}\right].
$$

推导来自 $d\ln x/dy=D_0/[(1-\alpha)y(1-y^2)]$ 和固定 $x$ 的一阶变分，pole 是 sonic expansion 失效的诊断。需要 $|\varsigma g|\ll1$ 且远离 $D_0=0$。一阶 spin 密度自身仍在无自旋 leading 背景上求值；再代入其 induced 一阶修正会不受控地拾取部分二阶项。

局部标量响应为

$$
\Delta_{\rm sp}\left(a_\parallel+\frac{z^i\partial_ip}{w}\right)
=\frac{\varsigma\lambda^2}2\mathcal K_h\frac{s_\parallel}{w}
+O(\varsigma\lambda^3,\varsigma^2).
$$

只有 dust 才可直接把右侧认作加速度变化；有压流体还须包括压力与焓的变化。

## VI：EMD 链式求导与不能外推的零点

标准 EMD 坐标 $R$ 不等于面积半径。令 $\Xi=1+a^2,\ B=1-R_-/R,\ H_R=1-R_-/(\Xi R)$：

$$
r=RB^{a^2/\Xi},\quad
F=(1-R_+/R)\frac{H_R^2}{B},\quad
e^\psi=\frac{B^{1/\Xi}}{H_R},\quad
\frac d{dr}=\frac{B^{1/\Xi}}{H_R}\frac d{dR}.
$$

用 $\sigma=R_-/R_+$、$0\le\sigma<1$，求导给

$$
r_hf_1=\frac{\Xi-\sigma}{\Xi},\quad
r_h\psi_1=\frac{a^2\sigma^2}{(\Xi-\sigma)^2},
$$

$$
r_h^2\mathcal K_h=-2+\frac{4\sigma}{\Xi},\quad
\mathcal J_h=\frac{r_h\mathcal K_h}{f_1}
=-2\frac{\Xi-2\sigma}{\Xi-\sigma},\quad
\mathcal D_h=r_h\psi_1-2.
$$

| 背景 | 曲率结果 | 解释 |
|---|---|---|
| Schwarzschild | $\mathcal K_h=-2/r_h^2,\ \mathcal J_h=-2$ | 非零线性 boost-sector force |
| RN，$\delta=\sqrt{1-Q^2/M^2}$ | $\mathcal J_h=\delta^{-1}-3$ | $\delta=1/3$ 即 $|Q|/M=2\sqrt2/3$ 为曲率零点 |
| EMD，一般 $a$ | $\sigma_\mathcal K=(1+a^2)/2$ | 仅 $0\le a<1$ 落在正则支内 |
| GMGHS，$a=1$ | $\mathcal K_h=-1/(2M^2)$ | 不为零；$r_h^2\mathcal K_h\to0$ 只是面积半径趋零，端点奇异 |

RN 的数值阈值是已有径向 tidal inversion，不是新发现的曲率阈值；本文的新应用是同一标量控制指定流体 closure 的响应零点。响应正负还取决于有符号 $j_\parallel$ 和状态方程，不能只看 $\mathcal J_h$。

固定 $\rho$ 的收缩与固定 $\zeta=(r-r_h)/r_h$ 的有限距离截断测试不同。RN 的后一测试要求 $|\zeta\mathcal J_h|/2\ll1$，极端极限 $\delta\to0$ 不一致；不能将非极端公式令 $\kappa=0$ 就得到 extremal throat。

## 方程账本、CPS 迁移与阅读顺序

| 对象 | 来源 | 对当前项目的用途 |
|---|---|---|
| $\delta W=T\delta E-\frac12S\delta\omega$ | II，PDF 式 (5) | 冻结源和符号后的 canonical currents |
| $\mathcal I_\xi=T\xi+\frac12S\nabla\xi$ | II，Killing-current 构造 | 带曲率交换的 balance law，比单项 flux 更可靠 |
| $\mathcal I'_\xi-\mathcal I_\xi=\nabla U$ | II，式 (18) | 闭接口与有边缘接口的区别；正则单值条件要带入 |
| $\Gamma^{(-2)}=0$ | III–IV | 指定 regular branch；不能对所有 Carroll 几何默认成立 |
| $\mathcal R_h^{(L)}=\mathcal K_h/2$ | IV | 几何不变量作为响应源，独立于固定基底系数 |
| 固定 $x$ 的 $y_{[1]},w_{[1]},\eta_{[1]}$ | V，式 (168) | 分离 source force 与真正的解响应 |
| exact closed-sphere flux | V，式 (158) | 各展开阶的守恒核查 |

迁移到 CPS/gluing 时，可以从独立源变分重建边界 potential，比较不同改善项相差的 corner contribution。但本文的 $\mathcal I_\xi$ 是 matter Killing current，并未给出引力 Hamiltonian surface charge 的 integrability、完整 presymplectic form 或 charge algebra；也未证明 rank-two data 与某个单 null 面数据空间等价。需要另行固定作用量、变分域及角点条件。

How to read this long paper：先读 II 的源定义和 Killing flux，再读 IV 的两个 bivector 及首次力阶数；这能防止把基底比例当作 transport。III 与 Appendix A 是开展一般退化几何计算的必要参考。V 和 Appendix B 应对照阅读参数解与固定半径微扰；VI 则用于验证面积半径转换及极限。I、VII 已保留其假设和开放边界。

## Checked 与验证边界

Verified: xAct 独立反对称张量计算给 $B^{\lambda\mu\nu}+B^{\mu\lambda\nu}=0$ 和 $B^{\lambda\mu\nu}\nabla_\lambda\xi_\nu+\Phi^{\mu\lambda\nu}\nabla_\lambda\xi_\nu/2=0$。在 Mathematica+xAct 内核中，从二维 ingoing metric 的逆度规、Christoffel 和 Riemann 定义重算 $R_{vrvr}$，与正文公式残差为 0。以直接有理式检查 $d\ln x/dy$ 和三条固定半径响应，四个残差全为 0；独立对 EMD 面积半径链式求导，$r_hf_1,r_h\psi_1,r_h^2\mathcal K_h$ 三个残差为 0。

上述张量检查验证超势构造的局部代数，不单独证明带奇异改善项的积分结论。EMD 计算假设 $R_+>R_-\ge0,\ a\ge0$，保留实幂支。完整 PDF 第 2、11、16、19 页已渲染查看，确认曲率约定、通道比例／Frenkel 条件、物理比例、EMD 及结论限制；其余来源为完整 TeX，而非逐页视觉核查。

Blocked（已绕过的工具阻碍）：普通 Mathematica 接口的参数解检查先后两次在 30000 ms 超时；相同有理式改由 Mathematica+xAct 内核返回零。最初包含的 dust 根式反演与声点代入未在该成功调用中执行，因此未冒称它们已有机器核验。

Assumptions: 固定无 torsion 背景、canonical pseudo-gauge、neutral probe、两参数顺序、偶解析 frame、有限 mixed stress、无显式线性 spin-potential 应力项、convective spin、保留 boost sector、球对称径向 ideal flow、正则非极端 future outer horizon、$w>0$、可逆本构区间及远离声点。pseudo-gauge flux 比较还需 stationary、球上正则单值改善项。

Not verified: 一般 rank-two 几何全部 Ward 投影与所有 boost 协变项的机器逐项验证、完整四维曲率阵列、各阶解的全局存在唯一性、声点匹配、微观本构推导、非线性 causality/hyperbolicity、旋转与极端视界、反作用和二次 spin thermodynamics。

Not independently verified: 被引用的 susceptibility 稳定性结果及 rank-one 文献的完整动力学。没有独立检查源论文之外的微观模型；本笔记也未将符号回归或变量计数升级为 PDE 定理。未发现本次成功核验范围内的 Failed 源公式。
