---
paper id: 2610.31690v1
title: Horizon entropy does not by itself determine a force between black holes
authors:
  - Zhi-Wei Wang
  - Samuel L. Braunstein
publication date: 2026-10-19T13:09:41Z
abstract: |-
  A temperature-weighted variation of a local horizon entropy measure depends on how points on neighboring horizons are identified. The authors derive the exact relabeling identity and study it in Brill–Lindquist data, where the leading apparent repulsion is an area-density dipole removable by a change of labels. They compare dynamical transport and a static Israel–Khan pair to distinguish transport, thermodynamic paths, and first-law work.
comments: "26 pages, 3 figures, 1 table; companion paper and code deposit identified in the official metadata"
url: https://arxiv.org/abs/2610.31690v1
summary: "An explicit embedding/transport obstruction: the area law and an integrated charge do not determine a separate local entropy-work term at nonuniform temperature."
tags: []
---

# Horizon entropy：跨截面识别、局域输运与 first-law work

**正确，条件是允许任意光滑的跨截面切向 relabeling，并且熵测度在闭合连通截面上处处正：$\int T\,\partial_\lambda(dS)$ 对这些识别不变，当且仅当 $D_AT=0$。** 非均匀温度下，物理演化仍可以提供识别；结论不是“不能有局域熵”，也不是“熵不能参与力学”。面积律只给每一截面的测度，未给跨截面的 transport connection，更未给把某一局域项解释为机械功的完整 balance law。

对当前区域边界/CPS 工作，可复用的是
$$
\delta_{\rm transport}dS=\delta dS+\mathcal L_{\delta X}dS,\qquad
\Delta\!\int T\,\delta_{\rm transport}dS
=-\int \delta X^A D_AT\,dS.
$$
这里 $\delta X$ 是新增的识别数据；不能只删去它而保留被 $T$ 加权后的局域变化。完整 $\delta\int T\,dS$ 中权重变化的补偿项不可省。

理由代码：T1-boundary; T1-charge; T1-Wald-CPS。来源：[官方摘要](https://arxiv.org/abs/2610.31690v1)、[PDF](https://arxiv.org/pdf/2610.31690v1)、[TeX](https://arxiv.org/src/2610.31690v1)。已读正文 I–XI 和附录 A–M；PDF pp.2,4,8,18,20,24 已渲染核对。来源报告与本次 Checked 分开如下。

## 1. How to read this long paper：完整结构与依赖

26 页但有十三个附录，按 monograph mode 重建。先读 II 的精确恒等式，再读 III–VI 的双洞实现与 X 的路径区分；VIII 给几何解释，IX 给独立动力学检验，VII 的 PN 比较只是对“把候选项视作附加相互作用”这一假设的后果。

| 源位置 | 对象、关键式与后续用途 |
|---|---|
| I | 面积律、局域密度、跨构型输运三者的区别 |
| II，(2)–(4) | relabeling identity；完整 charge variation 的补偿 |
| III A–C，(5)–(9) | BL data、inner-end masses、MOTS、odd lapse、温度 dipole |
| IV，(10)–(11) | 固定物理质量的面积 rigidity、精确 binding energy |
| V，(12)–(13) | conformal factors 消去，flat Gauss flux 给 $Q_i=\mu_i/2$ |
| VI A–B，(14)–(17) | puncture-label candidate、识别依赖、cumulative entropy |
| VII，(18)–(19) | 假设新增 static interaction 后的 invariant 3PN energy；观测比较仅为该假设后果 |
| VIII A–E，(20)–(36) | multipole hierarchy、balanced frame、SCT、3PN/4PN dipole 来源及限制 |
| IX A，(37)–(45) | MOTT stability equation、shear、两种 lapse 的输运阶数 |
| IX B–C，(46)–(56) | PN tidal horizon、radial shear dipole、trapping/event horizon 的区别 |
| X A–C，(57)–(70) | uniform weight、first law、Israel–Khan strut、固定质量/固定面积路径 |
| XI | 结论边界、stretched-horizon cutoff、耗散 heating；代数熵类比是 speculation |
| A–B | BL conventions、温度展开、lapse 的 inner-end 边界条件 |
| C | 面积展开、下一阶质量变换、旧文 unequal-mass misprint 的作者判断 |
| D–E | relabeling chain rule、闭式例子；density freedom 与 JKM admissibility 的区别 |
| F | $F$ 至 $G^7$ 的级数、$dQ/dr$ 与温度变化项 |
| G | canonical ambiguity、$E(x)$、quadrupole flux 与 phasing |
| H | static TT field、affine source 消除、matched strong-field 使用范围 |
| I | SCT、minimal-surface response、Möbius dipole 与 Moser identification |
| J | 作者的 variational/spectral/analytic rebuild；不能直接计为本次独立验证 |
| K | MOTT equation 的 ADM/Gauss 推导与 lapse dependence |
| L | tidal STF moments、shear projection、heating normalization |
| M、Table I | strut variables、两条路径的 exact first-law checks、BL/IK leading comparison |

主链：
$$
(H_\lambda,dS_\lambda,T_\lambda)+\hbox{identification}
\longrightarrow\mathcal W_\lambda
\stackrel{\mathrm{relabel}}{\longrightarrow}
\mathcal W_\lambda-\int v\cdot DT\,dS.
$$
BL 计算用来展现此自由度，不是精确恒等式的前提。PN consistency、MOTT、tidal null horizon 和静态 strut 是不同检验，不应混合成一条未经证明的动力学等价。

## 2. 记号、截面与边界条件

$c=\hbar=k_B=1$，保留 $G$；仅 PN tidal subsection 另设 $G=1$。$r:=r_{12}$ 为 puncture 的平直坐标距离，不是 invariant proper distance。$\mu_i$ 为 bare puncture parameters，$m_i$ 为各 inner asymptotic end 的 ADM masses；
$$
M=m_1+m_2,\qquad \nu=\frac{m_1m_2}{M^2},\qquad
\varepsilon=\frac{GM}{r}\ll1.
$$
$E_b:=M-E_{\rm ADM}>0$ 是 binding-energy magnitude，故 $E_{\rm ADM}=M-E_b$。

截面度规 $q_{AB}$、熵二形式 $dS=dA/(4G)$；$s=dS/d\Omega$ 为 puncture solid angle 下的密度，$\widetilde s\,d\theta$ 已积分 $\phi$。$T_\ell,s_\ell$ 表示 Legendre coefficients；$T_i,S_i,Q_i$ 表示第 $i$ 个黑洞的量。$Q_i=\int T_i\,dS_i$，不是单独的 $T_iS_i$，除非 $T_i$ 均匀。

$\hat u$ 是 spacetime slice 的 unit timelike normal，$\hat N$ 是 surface 的 outward unit spatial normal；$k=\hat u+\hat N$、$n=\hat u-\hat N$，$k\cdot n=-2$。这里 $K_{ij}$ 的 ADM 号满足 $\dot\gamma_{ij}=-2\mathcal N K_{ij}$；勿与别的笔记中相反的 convention 混用。

温度是给定 $\xi=\mathcal N\hat u$ 的 redshifted Noether-charge weight，
$$
\kappa=\xi_{a;b}\hat N^a\hat u^b=\hat N^iD_i\mathcal N,\qquad
T=\frac{\kappa}{2\pi}.
$$
它依赖 evolution vector，不能当成 observer-independent equilibrium temperature。BL data 没有 Killing field；本笔记未额外证明此非平衡 weight 的热力学解释。

所有渐近级数保持 $m_i$ 或 $\mu_i$ 固定的选择；通常 $r\to\infty$、质量与 $G$ 固定。近 common apparent horizon 的区域不在 $\varepsilon\ll1$ 展开的控制范围内。

## 3. 精确 relabeling identity 与区域边界项

取固定参考球到 $H_\lambda$ 的光滑 embeddings/pullbacks。改变 family identification 后，固定 label 的导数变为
$$
\partial_\lambda\longmapsto\partial_\lambda+\mathcal L_v,
\qquad
\mathcal W_\lambda=\int_{H_\lambda}T\,\partial_\lambda dS.
$$
$dS$ 为 top form，故 $\mathcal L_vdS=d(i_vdS)$。不先假定截面闭合时，
$$
\Delta\mathcal W
=\int_{\partial H}T\,i_vdS-\int_H dT\wedge i_vdS
=\int_{\partial H}T\,i_vdS-\int_Hv^AD_AT\,dS.
$$
闭合截面才得到源 (3)。本次 xAct 复算了其局域 divergence identity
$$
T D_A(sv^A)+sv^AD_AT-D_A(Tsv^A)=0.
$$
Stokes 后的 boundary term 是否为零是几何/边界条件，不能让 CAS 替代这一假设。区域 sewing 中有 corners 时必须保留第一项，或明确 $v$、$T$ 在边界的条件。

若 $D_AT=0$，shift 为零。反之，正测度下取 $v^A=-c\varphi D^AT$，$\varphi\ge0$ 支持于梯度非零开集，
$$
\Delta\mathcal W=c\int\varphi|DT|^2dS.
$$
任意实 $c$ 使这一数值任意；这是允许全部 smooth label velocities 时的局域结论。若物理 transport 只允许一个受约束子类，不能再用这个 iff 判据替代实际分析。多连通分量只要求各分量分别常温。

完整 charge 不变：
$$
\partial_\lambda Q=\mathcal W+\int(\partial_\lambda T)dS.
$$
后一项改变 $+\int v\cdot DT\,dS$，与前一项抵消。改变一个截面的坐标和改变相邻截面之间的识别是不同操作。

轴对称闭式检验（Appendix D）：
$$
\widetilde s=\tfrac12S_0\sin\theta[1+\alpha(r)\cos\theta],\qquad
T=T_0+T_1\cos\theta,\qquad |\alpha|<1.
$$
总熵恒为 $S_0$，固定 puncture angle 给 $F=S_0T_1\alpha'/3$；以累计熵为 label 则密度逐点不变，$F'=0$。一般固定总量的正体积形式族可用 Moser isotopy 做此事；定理的 global existence 为 Source-derived，所用闭式机制与局域恒等式已重建。

## 4. BL data、odd lapse 与 exact flux charge

时间对称真空约束：
$$
K_{ij}=0,\qquad
\gamma_{ij}=\psi^4\delta_{ij},\qquad
\psi=1+\frac{G\mu_1}{2\rho_1}+\frac{G\mu_2}{2\rho_2}.
$$
每个 puncture 代表另一个 asymptotically flat end。Kelvin transform 给
$$
m_i=\mu_i\left(1+\frac{G\mu_j}{2r}\right),\qquad
E_{\rm ADM}=\mu_1+\mu_2.
$$
因此 $m_1-m_2=\mu_1-\mu_2$、$\mu_i=m_i-E_b/2$，且
$$
E_b=\frac{GM+2r-\sqrt{(GM+2r)^2-4G^2m_1m_2}}G.
$$
选取 $r\to\infty$ 时 $E_b\to0$ 的根。两条 mass relations 和该根已以 Mathematica 精确代回为零。

两种 null expansions 为
$$
\theta_{(k)}=q^{ij}(D_i\hat N_j-K_{ij}),\qquad
\theta_{(n)}=-q^{ij}(D_i\hat N_j+K_{ij}).
$$
故 $K=0$ 时 MOTS 是 minimal surface，且两个 expansions 同时零；这不意味 shear 零或 isolated horizon。

Maximal slicing 在该 slice 上使 $\chi=\mathcal N\psi$ flat harmonic。单凭外端归一化和一个 Smarr integral 不能排除 inner multipoles；例如 $\cos\theta/\rho_1^2$ 不改 monopole flux，却改变温度 dipole。要求
$$
\mathcal N\to1\ \hbox{at outer infinity},\qquad
\mathcal N\to-1\ \hbox{at each inner end}
$$
并在各 end 有界，排除所有高 multipoles，固定
$$
\chi=2-\psi,\qquad \mathcal N=2/\psi-1.
$$
若所有 end 都取 $+1$，则 $\mathcal N=1,\kappa=0$；两者是不同 evolution choices。

$\hat N=\psi^{-2}\hat N_f$、$dA=\psi^4dA_f$，故
$$
\kappa\,dA=-2\,\partial_{\hat N_f}\psi\,dA_f,\qquad
Q_i=\frac1{8\pi G}\oint\kappa\,dA=\frac{\mu_i}{2}.
$$
最后一步用 enclosing only one puncture 的 flat Gauss law。小球 flux $-2(-G\mu_i/2\rho_i^2)4\pi\rho_i^2=4\pi G\mu_i$；没有把 divergent puncture field 直接设成零。可以保留 excision radius $\delta>0$，flux 与 $\delta$ 无关再取 $\delta\to0$。源中的 $2\sum_iQ_i=E_{\rm ADM}$ 是精确 charge relation，不自动给 binary first law。

在固定 $m_i$ 下
$$
\kappa_1=\frac1{4Gm_1}-\frac{m_2}{8m_1r}
-\frac{3Gm_2}{16r^2}\cos\theta+\cdots.
$$
本次由 $\kappa=-2\partial_\rho\psi/\psi^4$ 的 throat 线性展开复算 dipole/quadrupole coefficients；背景 $\kappa$ 对 throat displacement 一阶 stationary，形状修正不改变这些 leading coefficients。

## 5. Minimal surface response、面积 rigidity 与独立数值重建

围绕第一 puncture 写
$$
\psi_0=a+\frac b\rho,\quad a=1+\frac{G\mu_2}{2r},\quad b=\frac{G\mu_1}{2},
\quad \rho_0=b/a.
$$
加入 $q_\ell\rho^\ell P_\ell(u)$，$u=\cos\theta$；令 $\delta\ln\rho=h_\ell P_\ell$。由
$$
H=\psi^{-2}(H_f+4\partial_{\hat N_f}\ln\psi)=0
$$
线性化得到
$$
h_\ell=-\frac{2\ell+1}{\ell^2+\ell+1}\frac{q_\ell\rho_0^\ell}{a}.
$$
$\ell^2+\ell+1>0$，该局域 perturbative branch 无 kernel。$\ell=2$ 给 $h_2=-10\eta/7$，$\eta=G^3m_1^2m_2/(16r^3)$。

独立二阶 variational check：缩放 $a=\rho_0=1$，
$$
\rho=e^{h e P_2(u)},\quad \psi=1+\rho^{-1}+e\rho^2P_2(u).
$$
直接展开完整面积泛函
$$
\frac{A}{A_0}=\frac12\int_{-1}^1
\frac{\psi^4\rho^2}{16}
\sqrt{1+(1-u^2)(\partial_u\ln\rho)^2}\,du
=1+\frac{e^2}{10}(1+h)(3+7h)+O(e^3).
$$
驻点 $h=-5/7$，给 $A/A_0=1-2e^2/35+\cdots$。代回
$e=q_2\rho_0^2/a=G^3m_1^2m_2/(8r^3)+O(r^{-4})$，独立得到
$$
A_i=16\pi G^2m_i^2
\left[1-\frac{G^6m_i^4m_j^2}{1120r^6}+O(r^{-7})\right].
$$
这不是从原文力级数反解系数。$\ell=1$ 是 frame mode；真正 quadrupole 一阶积分零，minimality 又使 displacement 一阶不改总面积，因此首个 invariant defect 为 quadratic tide、相对 $r^{-6}$。

Appendix C 的下一项为
$$
\frac{A_i}{16\pi G^2m_i^2}
=1-\frac{G^6m_i^4m_j^2}{1120r^6}
+\frac{G^7m_i^4m_j^2(m_i+6m_j)}{1120r^7}+\cdots.
$$
bare-mass bracket 对应 $+G^7\mu_i^4\mu_j^3/(280r^7)$。本次没有完整符号求解至这一阶；其质量变换和作者所述数值重建不等于本次全部高阶系数证明。

本次另从原始面积泛函独立做了数值 stationary solve，而非运行作者代码。$G=1,m_1=1,m_2=2$，$\rho=\exp[\sum_{\ell=0}^{L}a_\ell P_\ell]$；Gaussian quadrature、55-digit root solve、节点先以 105 digits 生成，目标 accuracy/precision 40。计算 $\partial_r(dA)$ 时在固定 $m_i$ 下同步改变 $\mu_i$，中央差分步长 $\Delta r/r=10^{-7}$，再用 $10^{-8}$ 与更高角分辨率复查。

| $r$ | $(A_1/16\pi-1)r^6$ | $F^{(1)}/[1/(2r^5)]$ |
|---|---:|---:|
| 20 | -0.00192338138819813 | 0.629337189116974 |
| 40 | -0.00260141362668663 | 0.788690583355619 |
| 80 | -0.00304204403515857 | 0.886701617953784 |

$(L,N_q)=(7,28)\to(10,40)$，面积列在展示精度稳定；force ratios 随步长/角分辨率合并改变不超过 $1.7\times10^{-14}$。面积系数渐近目标为 $-1/280=-0.00357142857\ldots$，有限距离存在 $r^{-1}$ corrections，不能把上表称为 exact asymptotic equality。这里的角截断、节点数、浮点精度和差分步长均明确保留；没有在 subtraction 中隐藏 renormalization。

## 6. 候选力：dipole 配对和完整 charge variation

按 puncture angles 比较不同构型，固定物理质量，
$$
F=\sum_i\int T_i\,\partial_r(dA_i/4G)\big|_{\theta,\phi,m_1,m_2}.
$$
正号代表该 prescription 给出的 repulsion。展开
$$
T=\sum_\ell T_\ell P_\ell,\qquad s=\sum_\ell s_\ell P_\ell,\qquad
F^{(i)}=\sum_\ell\frac{4\pi}{2\ell+1}T_\ell\,\partial_rs_\ell.
$$
第一洞 leading coefficients：
$$
T_1=-\frac{3Gm_2}{32\pi r^2},\quad
s_1=\frac{G^3m_1^3m_2}{2r^2},\quad
F^{(1)}=\frac{G^4m_1^3m_2^2}{8r^5}.
$$
求和
$$
F=\frac{G^4m_1^2m_2^2M}{8r^5}+O(r^{-6}),\qquad
\frac F{F_N}=\frac\nu8\varepsilon^3+\cdots,\quad F_N=\frac{Gm_1m_2}{r^2}.
$$
这些 coefficient、angular integral 和 ratio 已复算。

原文 Appendix F 更高阶级数为 Source-derived：
$$
\begin{aligned}
F={}&\frac{G^4m_1^2m_2^2M}{8r^5}
-\frac{G^5m_1^2m_2^2[5(m_1^2+m_2^2)+34m_1m_2]}{32r^6}\\
&+\frac{3G^6m_1^2m_2^2[27(m_1^3+m_2^3)+343m_1m_2M]}{448r^7}\\
&-\frac{G^7m_1^2m_2^2[175(m_1^4+m_2^4)+4294m_1m_2(m_1^2+m_2^2)+7875m_1^2m_2^2]}{1120r^8}
+\cdots .
\end{aligned}
$$
完整高阶 rational reconstruction 和作者到 $r^{-10}$ 的结果未独立重做；本次 finite-distance solve 不替代逐项系数验证。

另一方面
$$
\frac{dQ_i}{dr}
=-\frac14\frac{dE_b}{dr}
=\frac{E_b}{2\sqrt{(GM+2r)^2-4G^2m_1m_2}}
$$
已精确核对。$\partial_rQ_i$ 从 $O(G)$ 开始，候选 $F^{(i)}$ 从 $O(G^4)$ 开始；它们的差是 $\int(\partial_rT)dS$，不能把 Smarr variation 全部归给局域熵输运。

## 7. SCT、balanced conformal frame 和 5PN 剩余

近洞伴星 field：
$$
\psi=a+b/\rho+c_1z+O(\rho^2),\qquad c_1=\frac{G\mu_2}{2r^2}.
$$
取 $\zeta^i=\beta(2zx^i-\rho^2\delta_z^i)$、$\beta=c_1/a$，直接 Lie derivative 给
$$
\mathcal L_\zeta(\psi_0^4\delta_{ij})=4\psi_0^3c_1z\,\delta_{ij}.
$$
Mathematica 对全部 $3\times3$ components 验证。有限 map
$$
\phi_\beta(x)=\frac{x-\beta\rho^2\hat z}{1-2\beta z+\beta^2\rho^2},\qquad
\Lambda=(1-2\beta z+\beta^2\rho^2)^{-1}
$$
满足 $J^TJ=\Lambda^2I$（已核对），以及 $|\phi_\beta(x)|=\rho\sqrt\Lambda$，从而
$$
\widetilde\psi=\frac b\rho+\frac a{\sqrt{1-2\beta z+\beta^2\rho^2}}
=\frac b\rho+a\sum_{\ell\ge0}(\beta\rho)^\ell P_\ell.
$$
在 $\rho<\min(r,|\beta|^{-1})$ 的局域展开域，
$$
\psi-\widetilde\psi
=\sum_{\ell\ge2}\left[\frac{G\mu_2}{2r^{\ell+1}}-a\beta^\ell\right]\rho^\ell P_\ell.
$$
“uniform field 是 pure frame”应指这组有限 map 及其高阶 completion；不是说孤立截断的 $c_1z$ 对任何 nonlinear invariant 都没有影响。真实 quadrupole 仍然存在。

对 round sphere，$\delta q_{AB}=f q_{AB}$ 给
$$
\delta K=-\tfrac12(\Delta+2/R_h^2)f.
$$
本次 xCoba 直接计算 $q_{AB}=R_h^2e^{e f(\theta)}\operatorname{diag}(1,\sin^2\theta)$ 的曲率并线性化；$f=\cos\theta$ residual 为零。故一阶 area dipole 由 conformal Killing relabeling 产生，不是 intrinsic curvature multipole。

Uniformization 加面积平衡条件
$$
\int Y^\circ_{1m}\,dA=0
$$
选择 balanced round conformal frame，原文引用正面积测度下存在且除 rotations 外唯一的定理。这里不能把引用定理标成 CAS Checked。轴对称时直接构造
$$
\ln\tan\frac\Theta2
=\ln\tan\frac\theta2+
\int_0^\theta
\left[\sqrt{1+(\varrho'/\varrho)^2}-1\right]\frac{d\theta'}{\sin\theta'}+c,
\quad \oint\cos\Theta\,dA=0.
$$
固定 $\Theta$ 识别给 $s^\circ_1=0$，因而消去 BL puncture-label 3PN/4PN dipole。leading velocity
$$
v^\theta=\frac{G^2m_1m_2}{2r^3}\sin\theta
$$
给
$$
\int(\partial_\theta T)v^\theta dS
=\frac{G^4m_1^3m_2^2}{8r^5}=F^{(1)}.
$$
此等式已独立积分，故 leading candidate 完全由 relabeling shift 消掉。

$\ell=0,2$ 的 first-hole contributions：
$$
F_0^{(1)}=\frac{3G^6m_1^5m_2^2}{1120r^7},\qquad
F_2^{(1)}=\frac{3G^6m_1^5m_2^2}{80r^7}.
$$
第一项由已验证面积 defect，第二项由 $\kappa_2=-G^2m_1m_2/(8r^3)$ 和 $(dA/d\Omega)_2=G^5m_1^4m_2/r^3$；角正交积已复算。求和为
$$
\frac{F_{\ell\ne1}}{F_N}
=\frac9{224}\nu(1-3\nu)\varepsilon^5+\cdots.
$$
原文 balanced-frame $F_{\rm bal}$ 具有同一 leading coefficient，但有限 $r$ 不等于原 labels 中删去 $\ell=1$ 后的 $F_{\ell\ne1}$。本次未重做全非线性 balancing solver；作者给的其分辨率数据仅为 Source-derived。

5PN 系数仍无 identification-independent 意义。proportional entropy labels 给 $(Q_i/S_i)S_i'$，而
$v^\theta=(3G^4m_1^3m_2/280r^5)\sin\theta$ 在 leading order 将它消掉。balanced frame 是几何 gauge choice，不是 physical evolution law。

## 8. 假设把候选项当相互作用：PN invariant 和 TT 边界

候选 $F=-dV/dr$ 对应
$$
V=\frac{G^4m_1^2m_2^2M}{32r^4},\qquad
\delta\widehat H=\frac{\nu}{32\widehat r^4}.
$$
reduced lengths 用 $GM$，energies 用 $\mu_{\rm red}=m_1m_2/M$。Appendix G 写 3PN ambiguity
$$
\delta\widehat H
=\frac{\nu\omega_{\rm static}}{\widehat r^4}
+\frac{\nu^2\omega_{\rm kinetic}}{\widehat r^3}
[\widehat p^2-3(\widehat n\cdot\widehat p)^2].
$$
生成元 $g=\lambda(\widehat r\cdot\widehat p)/\widehat r^3$ 的 $\{g,H_N\}$ 等于 kinetic bracket 减 $\lambda/\widehat r^4$，故 invariant combination
$\sigma=\nu\omega_{\rm static}+\nu^2\omega_{\rm kinetic}$。

对 residual $\sigma/\widehat r^4$，
$$
J^2=\widehat r-\frac{4\sigma}{\widehat r^2},\quad
\widehat E=-\frac1{2\widehat r}-\frac{\sigma}{\widehat r^4},\quad
\widehat E(x)=-\frac x2-\frac53\sigma x^4+\cdots,
\quad x=(GM\Omega)^{2/3}.
$$
本次重建频率换元，得 $\delta e_3=10\sigma/3=5\nu/48$。保持已有 PN dynamics 不变、只加入这个 static interaction 才有这一结论；“与 GR 不兼容”还依赖文献中完整 GR 3PN Hamiltonian 的结果，本次未从 Einstein equations 重算全部 PN dynamics。

在同一修改假设下，固定频率的轨道半径变化改 quadrupole flux：
$\delta f_3=-16\sigma/3=-\nu/6$，stationary-phase coefficient sensitivities 为 $-80,+20$，故
$$
\delta\varphi_6=-80\delta e_3+20\delta f_3=-35\nu/3.
$$
代数系数已核对；作者给的 GWTC bounds、Einstein Telescope forecasts、百分比比较属于 Source-derived observational context，本次未外延检索或独立评价，不是本文预测。

Appendix H 的 static TT field：
$$
\nabla^2h^{\rm TT}_{ij}=-16\,\delta^{\rm TT\,kl}_{ij}\partial_k\psi\,\partial_l\psi,\quad
\Pi_{ij}=\delta_{ij}-\partial_i\partial_j\nabla^{-2}.
$$
$w=1/\rho$ 时
$$
\partial_iw\partial_jw=\tfrac18\partial_i\partial_j(w^2)+\tfrac14\delta_{ij}w^4,
$$
本次逐分量核对；cross term 用 product rule，affine $\varpi$ 满足
$\varpi\partial_i\partial_jw=\partial_{(i}U_{j)}$、
$U_j=\varpi\partial_jw-\varpi_jw$。TT projector 消去 traces/gradients 的陈述必须有 $\nabla^{-2}$ 的空间域、falloff 和 puncture matching；不擅自把点源 distributions 丢掉。

源文在 overlap $Gm_1\ll\rho\ll r$ 得
$$
h^{\rm TT}_{ij}=\mathcal C_{ij}+\mathcal D_{ijp}x^p+\rho\mathcal K_{ij}(\hat x)+O(\rho^2),
$$
$$
\mathcal C_{ij}=\frac{3G^2m_1m_2}{2r^2}(\delta_{ij}-3\hat z_i\hat z_j),\quad
\mathcal D_{ijp}=\frac{G^2m_1m_2}{r^3}
(\delta_{ij}\hat z_p+\delta_{ip}\hat z_j+\delta_{jp}\hat z_i-5\hat z_i\hat z_j\hat z_p).
$$
$\mathcal C,\mathcal D$ 是 local coordinate terms；even $\rho\mathcal K$ 为 genuine tidal geometry，BL conformal flatness 无法表示。原文据 matched solution 推断：3PN coefficient 不变，4PN differences 来自 relabeling，5PN geometric coefficient 可变。本次核对局域 algebra 和 parity counting，未独立建立其 full matched strong-field solution；此 extension 保持 Source-derived。

## 9. MOTT transport：演化给识别，但不是每种识别都相同

在 $K=0$、真空、minimal surface 上，取
$$
V_t=\mathcal N\hat u+f\hat N=A k-Bn,\quad
A=(\mathcal N+f)/2,\quad B=(f-\mathcal N)/2.
$$
normal variation
$\delta_fH=-\Delta f-(|b|^2+R_{\hat N\hat N})f$；
ADM evolution $\dot K_{ij}=-D_iD_j\mathcal N+\mathcal NR_{ij}$。
由 $R=0$、$R^{(2)}=-2R_{\hat N\hat N}-|b|^2$、$b=\sigma^{(k)}$，
$$
(-2\Delta+R^{(2)})B=A|\sigma^{(k)}|^2,\qquad
\partial_t\ln dA=-B\theta_{(n)}.
$$
$A=\mathcal N+B$，所以要反演的是
$-2\Delta+R^{(2)}-|\sigma|^2$，为 twice MOTS stability operator。源文的严格稳定性要求在 large separation 扰动支上，不能无条件延伸到 common-horizon transition。

若 lapse 在三维 metric 中 harmonic，
$$
\partial_t\theta_{(n)}
=2(\Delta\mathcal N+\mathcal NR_{\hat N\hat N})
=2\dot K_{\hat N\hat N}.
$$
$t=0$ 的面积 rate 恰为零不反证 conservative force；应比较首个非零 $t$ 系数。

由上面的 quadrupole displacement，tracefree Hessian 给
$$
|\sigma^{(k)}|^2
=\frac{225G^4m_1^2m_2^2}{25088r^6}\sin^4\theta+\cdots.
$$
本次从 $\delta\ln\rho=-5eP_2/7$ 的球面 Hessian 独立得到此系数。对 leading constant lapse，
$$
C:=B/A=\frac{15G^6m_1^4m_2^2}{1568r^6}
\left(1-\frac{10}{49}P_2+\frac1{49}P_4\right)+\cdots.
$$
将 Legendre eigenvalues $\Delta P_\ell=-\ell(\ell+1)P_\ell/(2Gm_1)^2$ 代入，operator residual 为零。于是
$$
(\partial_t\ln dA)_{\ell=0}
=\mathcal N_0^2\frac{15G^4m_1^2m_2^2}{3136r^6}t+\cdots.
$$
unit lapse 的 $\mathcal N_0=1$；odd temperature lapse 的
$\mathcal N_0=1/a-1\simeq-Gm_2/(2r)$，故多压低两阶。后者在 throat 附近为负，不能把其正 $t$ 方向未经说明地当 future-directed tube。

源文进一步给 odd-lapse dipole
$$
\partial_t\ln dA
=\frac{15G^6m_1^2m_2^4}{12544r^8}t
+\frac{9495G^7m_1^3m_2^4}{3995264r^9}t\cos\theta+\cdots.
$$
monopole 可由上式验证；$9495/3995264$ 的完整下一阶 MOTT 求解和作者高精度数值表未独立重做。

puncture-label dipole 如被物理输运，要求
$$
(\partial_t\ln dA/d\Omega)_{\ell=1,\rm req}
=-\frac{G^2m_1m_2\dot r}{r^3}\cos\theta
=\frac{G^3Mm_1m_2}{r^5}t\cos\theta+\cdots
$$
（release from rest 的 Newtonian $\dot r=-GMt/r^2$）。源文两个 tube 分别给 $tr^{-7}$、$tr^{-9}$，而非 $tr^{-5}$。该比较只检验所选 foliation/normal transport，不证明任意 tangential completion 的唯一性，也不把 area rate 转成 force。

## 10. PN tidal horizon：STF projection 与真实 heating

此节 $G=1$，$b$ 为轨道距离、$\phi$ 为 orbital phase；$\Omega^a$ 是 horizon unit radial vector，advanced time $v$ 不是先前 label velocity。body-adapted frame 移除 mass dipole，环境从 tidal $\ell=2$ 开始：
$$
\mathcal E_{ab}=-\frac{3m_2}{b^3}n_{\langle a}n_{b\rangle},\quad
\mathcal E_{abc}=-\frac{15m_2}{b^4}n_{\langle a}n_bn_{c\rangle},\quad
\mathcal B_{ab}=\pm\frac{6m_2\dot\phi}{b^2}e_{z(a}n_{b)}.
$$
原文引用 Poisson–Vlasov generator-comoving metric，
$\sqrt{\det q}=4m_1^2\sin\theta[1+O((m_1/\mathcal R)^5)]$；
其 $\kappa$ 的 fourth tidal order corrections 为 $\ell=2,3,0$，无 $\ell=1$。引用 metric 的完整 determinant cancellation 本次未从其原始 metric 重建；不能把它计为本次 Checked。

shear 的 source normalization：
$$
\sigma_{AB}=-\frac43m_1^4(\dot{\mathcal E}^q_{AB}+\dot{\mathcal B}^q_{AB})
-\frac4{15}m_1^5(\dot{\mathcal E}^o_{AB}+\dot{\mathcal B}^o_{AB})+\cdots,
$$
$$
\mathcal E^q_{AB}=2\mathcal E_{ab}\Omega_A^a\Omega_B^b+\mathcal E^q\Omega_{AB},\quad
\mathcal E^o_{AB}=2\mathcal E_{abc}\Omega_A^a\Omega_B^b\Omega^c+\mathcal E^o\Omega_{AB}.
$$
本次用三维 projector $P_{ab}=\delta_{ab}-\Omega_a\Omega_b$、explicit STF tensors 和 sphere monomial moments，独立复算 Appendix L：
$$
[\sigma^2]_{\ell=1}^{\rm rad}
=\frac{128}{35}\frac{m_1^5m_2^2}{b^7}
\left(\dot\phi^2+\frac{3\dot b^2}{b^2}\right)
\mp\frac{128}{5}\frac{m_1^4m_2^2\dot b\dot\phi^2}{b^6}+\cdots.
$$
time differentiation 用 $\ddot\phi=-2\dot b\dot\phi/b$；upper magnetic sign 给上式 negative cross term。$E_2E_3$、$E_2B_2$ 系数及 electric quadrupole/octupole integrated heating normalization 的 residual 全零：
$$
2m_1^2\langle\sigma^2\rangle
=\frac{16}{45}m_1^6\dot{\mathcal E}_{ab}\dot{\mathcal E}^{ab}
+\frac{16}{4725}m_1^8\dot{\mathcal E}_{abc}\dot{\mathcal E}^{abc}+\cdots.
$$
没有把所有被省略的 magnetic octupole/higher tidal terms 验成零。

Raychaudhuri
$$
\partial_v\vartheta=\kappa\vartheta-\tfrac12\vartheta^2-\sigma^2
$$
在 slow tide、适当 future boundary condition 下给 $\vartheta\simeq4m_1\sigma^2$。event-horizon identification 另要求 tide eventually switched off；quasi-local MOTS 与 event horizon 不能直接等同。

线性于 $\dot b$ 的 radial transport 与所需 puncture dipole 的比值为
$$
\frac{512}{5}\frac{m_1^4m_2M}{b^6}\Xi_\phi,\qquad
\Xi_\phi=b^3\dot\phi^2/M.
$$
head-on 时 surviving electric term 给
$\vartheta_{\ell=1}=(1536/35)m_1^6m_2^2\dot b^2b^{-9}(\mathbf n\cdot\Omega)$；
circular orbit $\dot b=0$，puncture dipole 无需 radial transport，真实 heating dipole 仍可存在。二者不是同一 observable，不能据此命名某个“9PN force”。

IX C 的 trapping/null horizon comparison 含
$$
\kappa_V\theta_V-\kappa_k^{(E)}\theta_k^{(E)}
\simeq D_B(D^BC-2C\widetilde\omega^B).
$$
闭截面的总量可一致，局域 multipoles 仍差 divergence。该引用定理假定 future outer trapping $\theta_n<0$，BL 的 $t=0$ leaf 恰有 $\theta_n=0$，故不能借它把两套首阶 $t$ 系数认作同一个数。

## 11. 均匀温度：Israel–Khan 与 thermodynamic path

若每洞温度各自均匀，$\int T_i\,d(dS_i)=T_i\,dS_i$ 对 relabeling 不变。但仍需 thermodynamic path。给定 first law
$$
d\mathcal H=\sum_iT_i\,dS_i+\sum_a\Phi_a\,d\mathcal Q_a-\delta W_{\rm ext},
$$
有
$$
\sum_iT_i\,dS_i=d\mathcal H-\sum_a\Phi_a\,d\mathcal Q_a+\delta W_{\rm ext}.
$$
这不是新增机械力定律。固定 $\mathcal H,\mathcal Q_a$ 时等于 support work，固定各面积时恒零。

Israel–Khan rods 长 $\lambda_i=2GM_i$，gap $z=\Delta z$，与 BL 的 $\mu_i,r$ 不作 exact identification：
$$
\kappa_1=\frac{z+\lambda_1}{2\lambda_1(z+\lambda_1+\lambda_2)},\quad
A_1=4\pi\lambda_1^2\frac{z+\lambda_1+\lambda_2}{z+\lambda_1}.
$$
交换 $1,2$ 得第二洞。$\kappa_iA_i=2\pi\lambda_i$，$Q_i=M_i/2$。strut data：
$$
f_s=\frac{z(z+\lambda_1+\lambda_2)}{(z+\lambda_1)(z+\lambda_2)},\quad
L=zf_s,\quad
\tau=\frac{\lambda_1\lambda_2}{4Gz(z+\lambda_1+\lambda_2)}.
$$
first law 为 $d\mathcal H=\sum_iT_i\,dS_i-L\,d\tau$，$\mathcal H=(\lambda_1+\lambda_2)/(2G)$。

固定 rods 时，Mathematica 精确验证
$$
\sum_iT_i\partial_zS_i=L\partial_z\tau
=-\frac{\lambda_1\lambda_2(2z+\lambda_1+\lambda_2)}
{4G(z+\lambda_1)(z+\lambda_2)(z+\lambda_1+\lambda_2)}.
$$
这是 $L\,d\tau$ pairing，不是 $\tau\,dz$，large-$z$ 极限为 $-2\tau$。

固定 $A_1,A_2$ 时，解两条 linear differential constraints 求 $d\lambda_i/dz$，本次精确验证
$$
\frac{d\mathcal H}{dz}+L\frac{d\tau}{dz}=0,\qquad
\frac{d\mathcal H}{dz}
=\frac{\lambda_1\lambda_2}{2Gz^2}+\cdots
=\frac{2GM_1M_2}{z^2}+\cdots.
$$
此路径 entropy term 为零；不能将固定 rods 的结果拿来替换。

BL 则定义 $\bar T_i=Q_i/S_i$，在面积 rigid orders，
$$
\sum_i\bar T_i\,dS_i=\sum_i\frac{\mu_i}{m_i}\,dm_i.
$$
固定 $m_i$ 零；固定 $\mu_i$ 给 leading $-G\mu_1\mu_2\,dr/r^2$。它重述 ordinary interaction energy 的 constant-$E_{\rm ADM}$ 路径，不是新的 repulsion。更高阶 $\bar T_i$ 甚至不是 thermodynamic derivative：
$$
\left(\frac{\partial E_{\rm ADM}}{\partial S_1}\right)_{S_2,r}
=\frac{1-Gm_2/r+\cdots}{8\pi Gm_1},\qquad
\bar T_1=\frac{1-Gm_2/(2r)+\cdots}{8\pi Gm_1}.
$$
因而 exact Smarr identity 不能无条件升级成该 weight 的 first law。Table I 的 BL/IK factor two 仅为 weak-field matching 下的 leading comparison。

## 12. Density ambiguity、cutoff 与 CPS 使用边界

Appendix E 固定 puncture identification 后，若还要求 density 逐点 $r$-independent，并用 isolated limit 固定角分布，则通过 area-rigid orders
$$
dS-\frac{dA}{4G}
=-\frac{G^3m_1^3m_2}{4r^2}\sin2\theta\,d\theta\wedge d\phi+\cdots.
$$
它积分零，可写 exact differential；leading expression 也可写
$-(R_h^3/6G)(\Delta\kappa)dA$。这仅展示一种 density adjustment。是否属于 JKM 允许的 local/covariant ambiguity 尚未证明，因为 $\kappa$ 依赖 $\xi$；不能把任意 exact surface form 都叫作允许的 JKM term。总面积从 $r^{-6}$ 变化后，“逐点不变”与“总量等于 $A/4G$”不再相容。

stretched horizon 的 proper cutoff 必须保留为 $\rho_*>0$：
$$
T_{\rm prop}\simeq(2\pi\rho_*)^{-1},\qquad
T_\infty=\mathcal N T_{\rm prop}
$$
只在 stationary local-Rindler/Tolman 条件下适用。即使固定 $\rho_*$ 使 proper weight 近似均匀，向 infinity 计算完整 energy variation 仍有 $\delta\mathcal N$ 项。本文没有取 $\rho_*\to0$ 的 microscopic renormalized entropy limit，也没给 generic dynamical Tolman law。

对 vault 的复用范围是 embedding variation 和 weighted boundary integral 的精确修正，以及闭合/有边界截面的差别；完整 gravitational Hamiltonian 还需 action、presymplectic potential、allowed variations、constraints 和 boundary conditions。此文未构造区域 symplectic form、charge integrability 或 sewing algebra。XI 中 type-III crossed product 的类比由作者明确标为 speculation，不能据此推导局域 entropy density 不存在。

## 13. Verification ledger

| 对象 | 本次证据 |
|---|---|
| relabeling identity | Checked：xAct local divergence residual 0，闭截面 Stokes 与正测度 iff 证明 |
| BL mass transform、$E_b$、$dQ_i/dr$ | Checked：精确 algebra residual 全零；flux 由带 excision 的 Gauss law 重建 |
| minimal quadrupole、$-1/1120$ | Checked：独立二阶面积泛函驻点，不借 source force series |
| leading dipole、温度、relabel cancellation | Checked：throat expansion、Legendre pairing、explicit shift integral |
| finite-distance minimal surfaces | Checked：独立数值 solve，两个角分辨率和差分步长；表中有全部 regulators |
| 球面 curvature dipole、SCT | Checked：xCoba 曲率与 explicit finite Jacobian/Lie derivative residual 0 |
| 5PN monopole/quadrupole coefficients | Checked：上述 leading geometry 和 angular integrals；global balancing theorem 为 Source-derived |
| PN $E(x)$、phasing arithmetic | Checked：新增 static term 假设下；完整 GR PN comparison 为 Source-derived |
| TT source self identity | Checked：局域分量 algebra；全 matched solution / puncture distributions 未独立证明 |
| MOTT leading shear、inverse、monopole | Checked：Hessian/Legendre operator；下一阶 dipole coefficient 和完整 numerical tube 为 Source-derived |
| PN radial tidal shear | Checked：STF projector、$E_2E_3/E_2B_2$ projections、electric heating normalizations residual 0 |
| Israel–Khan 两路径 | Checked：exact Smarr、fixed-rods 和 fixed-area first laws residual 0 |
| 全 $G^5,G^6,G^7$ force rational series、十阶 rebuild | Source-derived；未逐项独立复现 |
| JKM admissibility、microscopic interpretation、observational bounds | Not independently verified |

**Verified:** 上表明确 Checked 的有限代数、几何恒等式、leading perturbative coefficients 和有控制参数的数值计算。没有将作者代码仓库或作者自述“independent rebuild”计成本次证据。

**Assumptions:** 正光滑 entropy measure、闭截面或明确保留 edge term；所有 smooth tangential relabelings；BL vacuum time symmetry、单洞 minimal-surface large-separation branch、odd inner-end lapse normalization；固定物理质量的 variation。动力学比较另有稳定性、slow tide、normalization 和 future boundary condition，逐处写明。总 entropy/charge 的 invariant statement 与单独 transport term 分开。

**Not verified:** 完整高阶 BL/MOTT series；Hersch/balancing theorem 的独立证明；所有 source 数值表；full PN metric 与 static-TT strong-field matching；所有引用 dynamical-entropy 文献的适用范围；一般 microscopic first law 或 physical force 推导。上述缺口不妨碍精确 relabeling obstruction，也不被 leading checks 自动补齐。

**Blocked:** 无未解决 source retrieval blocker。首次数值 run 因 quadrature coefficients 精度低于 root solver 要求，FindRoot precision warnings 触发工具 10 MiB 输出限制；提高节点生成精度到 105 digits、保留 55-digit solve 后重跑，最终 messages 为空，两个分辨率结果已记录。只采用修正后的输出。

**Failed:** 本次已完成的 source-target checks 未发现非零 residual；不表示未检查部分全部成立。作者针对早期文献的 misprint 判断保持 Source-derived，未在本日扩展为旧文审计。

PDF、TeX、渲染页与 verification.json 都保存在 vault 外临时目录。今日总览：[[2026_10_26_overview]]。
