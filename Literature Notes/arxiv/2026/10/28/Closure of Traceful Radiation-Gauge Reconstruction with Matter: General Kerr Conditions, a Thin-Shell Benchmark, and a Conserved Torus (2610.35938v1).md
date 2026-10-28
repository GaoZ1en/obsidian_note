---
paper id: 2610.35938v1
title: "Closure of Traceful Radiation-Gauge Reconstruction with Matter: General Kerr Conditions, a Thin-Shell Benchmark, and a Conserved Torus"
authors:
  - G. G. L. Nashed
publication date: 2026-10-22T16:41:53Z
abstract: |-
  We formulate the closure problem for first-order, traceful radiation-gauge metric reconstruction on a Kerr background with matter. The reconstruction is decomposed into Weyl-curvature, Ricci-trace, and mass--angular-momentum completion sectors. For compatible initial, gauge, and completion data, we establish local existence and uniqueness of the resulting triangular transport system on a regular Kerr domain, and identify the additional conditions needed for a closed global formulation. This is not a global existence theorem. We test the framework using two conserved matter sources. For a thin shell around a Schwarzschild black hole, Israel matching, regularity, asymptotic flatness, a barotropic equation of state, and fixed rest mass determine the static, axial, and leading rotational sectors. The ADM-mass shift is $\sqrt{1-2M/R}$ times the shell rest mass, while the axial sector determines the angular momentum, moment of inertia, and interior frame dragging. We also construct a stationary constant-angular-momentum fluid torus on Kerr and compute its Newman--Penrose Ricci projections, showing that nonspherical sources generally excite coupled Ricci sectors. The shell provides a closed benchmark, while the torus illustrates the additional structure required for general Kerr sources.
comments: "25 pages"
url: https://arxiv.org/abs/2610.35938v1
summary: "分离Ricci trace、radiative和charge completion；复算薄壳分布Einstein与torus归一化，记录Kerr μ印刷错误及local/global重建证明边界。"
tags: []
---

# 结果与证明范围

可直接借用的是 **sourced metric response 的三类数据分解**：radiative Weyl data、Ricci-driven trace response，以及 $\delta M,\delta J$ 与 residual gauge 的 completion。本文的静态薄壳给出一个可精确复算的 response/junction benchmark，torus 给出一个 conserved nonspherical source；两者都不能证明 generic Kerr 上的全局重建。

本次独立核对了 Kerr tetrad、静态壳的 exact mass/pressure、壳内外线性 Einstein 方程和壳面 delta 系数、trace transport、轴向 jump、quadrupole vacuum basis，以及 torus 的全局积分和局部 NP 源。**§II Eq. (6) 打印的 $\mu$ 多了一个 $\Sigma^{-1}$，与独立连接计算及原文自己的 Schwarzschild limit 不相容。** 后文壳计算采用的 Schwarzschild 值是正确的，不能把这个印刷错误传播到一般 Kerr operator。

局部 integrating-factor argument 对已建立的 triangular transport system 成立；从 schematic curvature arrows 到完整 Einstein metric 的 compatibility propagation 仍需要完整 NP equations 和 subsidiary system。这里保留这一证据边界，不把 “ODE 可以积分”当成“全部 metric reconstruction 已证明”。

## Source map 与长文阅读路径

官方 PDF **25 页**，无 appendix；本文 technically dense，按完整 section tree 重建。读取了活动 TeX 正文 I–IX；源码两个 `iffalse` 区块中的旧 ring/axial 草稿不属于发布正文，未混入分析。PDF rendered pages 2、3、14、16 确认了 spin-coefficient、gauge、basis 和 table；extracted text 的 font warning 由源码和渲染页交叉处理。

| section cluster | 目的、定义与后续依赖 |
|---|---|
| I，p. 1 | traceful radiation gauge 的来源、local theorem 与 conditional global closure 的区别 |
| II，p. 2 | Kerr metric、Kinnersley tetrad、NP coefficients；Eq. (6) 的 $\mu$ 需修正 |
| III，pp. 2–4 | source-strength parameter、$n^\mu h_{\mu\nu}=0$、tetrad gauge、六个 real metric amplitudes、$h=2h_{m\bar m}$ |
| IV，pp. 4–6 | Origin of NP hierarchy、Curvature sector、Trace sector；只有 trace branch 详细打印 transport operators |
| V.A，pp. 6–7 | 独立 $\epsilon_M,\epsilon_\Omega$ 双重展开和 higher-bidegree bookkeeping |
| V.B，pp. 7–10 | exact Israel shell、mass/pressure、NP projections、trace/completion 与 coordinate metric |
| V.C，pp. 10–12 | rigid rotation、moment of inertia、dragging ODE、ORG components、near-horizon validity |
| V.D，pp. 12–16 | barotropic closure；fixed-rest-number/Euler equations；vacuum basis；两套 $4\times4$ Israel systems；quadratic observables/table |
| VI，pp. 16–18 | constant-angular-momentum torus、EOS、global normalization、Ricci projections；没有完成 torus metric |
| VII，pp. 18–22 | triangular local theorem、七项 global closure input；Fourier/coupled harmonics、general reconstruction、Ricci channels 与 scope |
| VIII，pp. 22–24 | Schwarzschild/vacuum/trace-free limits，closure map、global operator estimate 与 kernel 的缺口 |
| IX，p. 24 | 结论，不能替代前述 hypotheses；references 延至 p. 25 |

**How to read this long paper:** 对当前 source→response 问题，先 III→IV→VII→VIII，再用 V.B 的薄壳核对 conventions。V.C 提供 angular-momentum completion。V.D 是独立 material closure 的进阶内容；VI 是 source-side example。一般 Kerr metric 的完整求解不在这份 benchmark 的完成范围内。

## Notation dictionary、规范与展开阶数

| 符号 | 含义和限制 |
|---|---|
| $M,a,J=aM$ | 背景 Kerr 参数，local theorem 限 smooth subextremal regular domain |
| $\Delta_K=r^2-2Mr+a^2$、$\Sigma=r^2+a^2\cos^2\theta$ | Kerr functions；$\Delta_K$ 不是 NP directional derivative |
| $\Delta=n^\mu\nabla_\mu$ | 沿 principal null vector 的 derivative；stationary scalar 时为 $-\Delta_K\partial_r/(2\Sigma)$ |
| $(l,n,m,\bar m)$ | $l\cdot n=-1$、$m\cdot\bar m=1$；signature $(-+++)$ |
| $h_{ab}$ | background tetrad 投影 $h_{\mu\nu}e_a^\mu e_b^\nu$，不能与坐标 components 混用 |
| $\lambda$ | generic source strength，$g=g_0+\lambda h^{(1)}+O(\lambda^2)$、$T=\lambda T^{(1)}+O(\lambda^2)$ |
| $\epsilon_M,\epsilon_\Omega$ | shell strength 与 rotation 的独立小量；$(1,2)$ 并非 source 二阶 |
| $\lambda_{\rm NP},\mu,\gamma,\rho$ | NP spin coefficients；$\lambda_{\rm NP}$、source $\lambda$、density $\rho_0$ 均须区分 |
| $\Lambda_{\rm NP}=R^{(1)}/24$ | Ricci scalar projection，不是 cosmological constant |
| $R,M_s,\sigma,p$ | shell areal radius、rest mass、surface density/pressure |
| $\ell=-u_\phi/u_t$ | torus specific angular momentum，不是 shell proper distance $\ell_\perp$ |
| $\eta_t=E_t/M$、$K,\Gamma$ | torus strength 与 EOS；$[K]=M^{2(\Gamma-1)}$ |

所有 distributional statements 先按两侧 fields 与 jumps 定义；$\delta(\ell_\perp)=\sqrt{f(R)}\delta(r-R)$，这里 $\ell_\perp=(r-R)/\sqrt{f(R)}$ 是靠近壳面的 proper-distance coordinate。以下不取 $R\to2M$，不把 $M_s/M\ll1$ 当成 uniform near-horizon control。

## II：Kerr tetrad 与一个确定的背景系数错误

$$
g_{tt}=-1+\frac{2Mr}{\Sigma},\quad
 g_{t\phi}=-\frac{2Mar\sin^2\theta}{\Sigma},\quad
 g_{rr}=\frac\Sigma{\Delta_K},\quad g_{\theta\theta}=\Sigma,
$$

$$
g_{\phi\phi}=\frac{[(r^2+a^2)^2-a^2\Delta_K\sin^2\theta]\sin^2\theta}{\Sigma}.
$$

$$
l^\mu=\left(\frac{r^2+a^2}{\Delta_K},1,0,\frac a{\Delta_K}\right),\quad
n^\mu=\frac1{2\Sigma}(r^2+a^2,-\Delta_K,0,a),
$$

$$
m^\mu=\frac{(ia\sin\theta,0,1,i\csc\theta)}{\sqrt2(r+ia\cos\theta)}.
$$

**Checked:** xCoba/metric contraction 给 $l\cdot n+1=m\cdot\bar m-1=l^2=n^2=m^2=n\cdot m=0$。直接计算 $\bar m^\mu m^\nu\nabla_\nu n_\mu$ 得

$$
\mu=\frac{\Delta_K}{2}\rho^2\bar\rho,
\qquad\rho=-\frac1{r-ia\cos\theta}.
$$

**Failed — Eq. (6), p. 2.** source 打印为 $\mu=\Delta_K\rho^2\bar\rho/(2\Sigma)$。它的 $a=0$ limit 为 $-f/(2r^3)$，而连接计算与正文 V.B 都是 $-f/(2r)$。这一差异不是 NP sign convention，而是多了 $r^{-2}$。在下文一般 weighted operator 中必须使用独立计算的值，不能将 (6) 原样搬走。$\gamma=\mu+(r-M)/(2\Sigma)$ 中的 $\mu$ 也受此影响。

## III：traceful radiation gauge 不添加新的 propagating scalar

$$
n^\mu h_{\mu\nu}=0
\quad\Longrightarrow\quad h_{nn}=h_{nl}=h_{nm}=h_{n\bar m}=0.
$$

剩余 $h_{ll},h_{lm},h_{l\bar m},h_{mm},h_{m\bar m},h_{\bar m\bar m}$，reality 后共六个实 functions。由 $g^{\mu\nu}=-l^\mu n^\nu-n^\mu l^\nu+m^\mu\bar m^\nu+\bar m^\mu m^\nu$，

$$
h=-2h_{ln}+2h_{m\bar m}=2h_{m\bar m}.
$$

coordinate gauge 并不唯一指定 perturbed tetrad。source 另取

$$
l^{\mu(1)}=\tfrac12h_{ll}^{(1)}n^\mu,\quad
n^{\mu(1)}=0,
$$

$$
m^{\mu(1)}=h_{lm}^{(1)}n^\mu
-\tfrac12h_{m\bar m}^{(1)}m^\mu
-\tfrac12h_{mm}^{(1)}\bar m^\mu.
$$

由此使用 $\Delta^{(1)}=\nu^{(1)}=0$。这是 trace reduction 的 gauge input，不是仅由 $n\cdot h=0$ 自动得到的全部条件。trace 是 matter response 的一个 component；没有证明它增加一个自由传播 mode。

## IV：curvature、trace 与 completion 三条依赖链

**Source-derived.** source 的 curvature organization 为

$$
\Psi_4^{(1)}\to\lambda_{\rm NP}^{(1)}\to h_{\bar m\bar m}^{(1)},\qquad
\Psi_3^{(1)}\to\pi_{\rm NP}^{(1)}\to h_{l\bar m}^{(1)},\qquad
\Psi_2^{(1)}\to h_{ll}^{(1)}.
$$

箭头表示带 homogeneous integration data 的 NP transport，不是 algebraic inversion。$\delta M,\delta J$ 不由 extreme Weyl scalars 唯一决定，属于 independent completion。物质 Ricci response 又不是这两个 Coulomb constants 的替代。

明确打印的 trace subsystem 使用

$$
\Delta_{[p,q,r,s]}X=(\Delta+p\mu+q\bar\mu+r\gamma+s\bar\gamma)X,
$$

$$
\Delta_{[2,0,1,1]}\mu^{(1)}
+\mu^{(0)}(\gamma^{(1)}+\bar\gamma^{(1)})+\Phi_{22}^{(1)}=0,
$$

$$
\mu^{(1)}=\tfrac12\Delta_{[-1,1,0,0]}h_{m\bar m}^{(1)},\qquad
\gamma^{(1)}=-\tfrac14(\mu-\bar\mu)h_{m\bar m}^{(1)}.
$$

$h_{m\bar m}$ real，所以 $\gamma^{(1)}+\bar\gamma^{(1)}=0$，得到

$$
\Delta_{[2,0,1,1]}\mu^{(1)}=-\Phi_{22}^{(1)},\quad
\Delta_{[-1,1,0,0]}h_{m\bar m}^{(1)}=2\mu^{(1)},\quad h=2h_{m\bar m}.
$$

$\Phi_{22}=R_{nn}^{(1)}/2=4\pi T_{nn}^{(1)}$。这些 equations 需要 tetrad gauge 和 corrected background spin coefficients。stationary axisymmetry 只把 scalar $\Delta$ 化为 radial derivative，$\Sigma$ 的 angular dependence 仍然可耦合 harmonic amplitudes。

## V.A：独立 perturbative parameters

$$
\epsilon_M=\frac{\sqrt{f(R)}M_s}{M},\qquad
\epsilon_\Omega=\frac{R\Omega_s}{\sqrt{f(R)}},\qquad f(r)=1-\frac{2M}{r}.
$$

保留

$$
g=g_0+\epsilon_Mh^{(1,0)}
+\epsilon_M\epsilon_\Omega h^{(1,1)}
+\epsilon_M\epsilon_\Omega^2h^{(1,2)}
+O(\epsilon_M^2,\epsilon_M\epsilon_\Omega^3).
$$

$J=O(\epsilon_M\epsilon_\Omega)$，所以 dragging square 是 $(2,2)$，不进入 retained $(1,2)$ vacuum equations。每个 bidegree 都可使用相同 linear Einstein operator，lower orders 给 effective source，例如 $(2,1)$ 含 $-2G^{[2]}[h^{(1,0)},h^{(1,1)}]$。这只是 bookkeeping；更高阶 tetrad/gauge corrections 和 material coefficients 仍须单独提供。完整 $h^{(2,0)}$ 与 $(2,1)$ 没有在本文完成。

## V.B：exact Israel shell、pressure 与 distributional response

取 $M_-=M,M_+=M+\delta M$，$R>2M$、$\alpha_\pm=\sqrt{1-2M_\pm/R}$。Israel gives

$$
\sigma=\frac{\alpha_--\alpha_+}{4\pi R},\qquad
p=\frac1{8\pi R^2}\left[\frac{R-M_+}{\alpha_+}-\frac{R-M}{\alpha_-}\right].
$$

以 $M_s=4\pi R^2\sigma$ 固定 rest mass，

$$
\alpha_+=\sqrt{f(R)}-\frac{M_s}{R},\qquad
\delta M=\sqrt{f(R)}M_s-\frac{M_s^2}{2R},
\quad0<M_s<R\sqrt{f(R)}.
$$

**Checked:** Mathematica 保留 positive square-root branch，exact mass 和 pressure 代换 residual 为零，pressure expansion 为

$$
p=\frac{MM_s}{8\pi R^3f(R)}+
\frac{M_s^2}{16\pi R^3f(R)^{3/2}}+O(M_s^3/R^4).
$$

一阶 $p/\sigma=M/[2(R-2M)]$，dominant-energy requirement 为 $R\ge5M/2$，不是所有 $R>2M$ 都满足。pressure 是 static force balance 的必要部分；不能用任意 dust shell 代替同一个 conserved source。

$$
T^{\mu\nu}=[\sigma u^\mu u^\nu+
 p(e_{\hat\theta}^\mu e_{\hat\theta}^\nu+e_{\hat\phi}^\mu e_{\hat\phi}^\nu)]\delta(\ell_\perp).
$$

在 $\epsilon_M=\delta M^{(1,0)}/M$ 的 coefficient convention 下，source NP projections 是

$$
\Phi_{00}^{(1)}=\frac{M}{R^2f_R}\delta(r-R),\quad
\Phi_{22}^{(1)}=\frac{Mf_R}{4R^2}\delta(r-R),
$$

$$
\Phi_{11}^{(1)}=\frac{M(R-M)}{4R^3f_R}\delta(r-R),\quad
\Lambda_{\rm NP}^{(1)}=\frac{M(R-3M)}{12R^3f_R}\delta(r-R).
$$

**Checked:** 用 trace-reversed $R_{\mu\nu}^{(1)}=8\pi(T_{\mu\nu}-g_{\mu\nu}T/2)$ 直接矩阵投影，四项 residual 都为零，包含 $\delta(\ell_\perp)$ 的 Jacobian。

trace equations 在 corrected Schwarzschild coefficients 下为

$$
\left(\frac f2\partial_r+\frac{r-3M}{r^2}\right)\mu^{(1)}=\Phi_{22}^{(1)},\quad
\frac f2\partial_r h_{m\bar m}^{(1)}=-2\mu^{(1)}.
$$

所以

$$
\partial_r(r^2\partial_r h_{m\bar m}^{(1)})=-\frac{2M}{f_R}\delta(r-R),
$$

$$
h_{m\bar m}^{(1)}=\frac{2M}{Rf_R}(1-R/r)\Theta(R-r),\quad
\mu^{(1)}=-\frac{Mf(r)}{2f_Rr^2}\Theta(R-r).
$$

两个 interior ODE residual 为零，$[r^2h']=-2M/f_R$，$\mu$ jump 给正确 $\Phi_{22}$。$h=2h_{m\bar m}$。completion 的两区解

$$
h_{ll}^{+(1)}=\frac{8M}{rf^2},\qquad
h_{ll}^{-(1)}=\frac{8M}{Rf^2f_R}\left(1-\frac{3M}{r}+\frac{MR}{r^2}\right)
$$

对应

$$
h_{tt}=fh_{tr}=f^2h_{rr}=\tfrac14f^2h_{ll},\quad
h_{\theta\theta}=r^2h_{m\bar m},\quad h_{\phi\phi}=\sin^2\theta h_{\theta\theta}.
$$

**Checked — full linear tensor and shell source:** 直接 xPert/all-components 计算在 120 秒超时。改用 $v=t+r_*$ 后 $h_{vr}=h_{rr}^{\rm advanced}=0$，对 metric family

$$
ds^2=[-f+\epsilon H(r)]dv^2+2dvdr+r^2[1+\epsilon K(r)]d\Omega^2
$$

由 xCoba 计算 $\partial_\epsilon G_{\mu\nu}|_0$。分别代入两区 $H=f^2h_{ll}/4,K=h_{m\bar m}$，全部 $4\times4$ residual 为零。再保留 $H'',K''$ 中的一阶 jump delta coefficient，减去正确 Jacobian/strength convention 下的 $8\pi T_{\mu\nu}$，全部 16 项仍为零。这个成功的分解计算替代了超时项，不把超时当成 source failure。

外侧 $h_{tt}=2M/r$ 的 coefficient 固定 $\delta M_{\rm ADM}=\sqrt{f_R}M_s$ 于一阶；exact binding term 不是一阶 metric 自动给出的额外结果。

## V.C：轴向 sector、inertia 与 horizon 坐标

定义 $\omega=-h_{t\phi}/(r^2\sin^2\theta)$，

$$
\delta J=I_s[\Omega_s-\omega(R)],\qquad
I_s=\frac{8\pi R^4}{3\sqrt{f_R}}(\sigma+p)
=\frac{\delta M\,R(2R-3M)}{3f_R^2}.
$$

Mathematica 从 conserved surface current 积分系数复算这个 equality；弱场是 $2M_sR^2/3$。retained $(1,1)$ 阶只取 $\delta J=I_s\Omega_s$，不把 $[1+2I_s/R^3]^{-1}$ 的形式重求和当成更高阶答案。

$$
\partial_r(r^4\omega')=-6\delta J\delta(r-R),\quad
\omega^-={2\delta J\over R^3},\quad\omega^+={2\delta J\over r^3}.
$$

**Checked:** vacuum ODE 和 jump $[r^4\omega']=-6\delta J$ 精确成立；interior no intrinsic BH spin 与 exterior no rigid rotation 固定两个 homogeneous freedoms。$h_{r\phi}=h_{t\phi}/f$ 使 ORG condition 成立，$v=t+r_*$ 后 radial cross term $h_{r\phi}-h_{t\phi}/f=0$，Schwarzschild-coordinate divergence 本身不证明 curvature singularity。

$$
\Omega_{\rm drag}=\frac{2\delta J}{R^3},\qquad
\frac{\Omega_{\rm drag}}{\Omega_s}=
\frac{2\delta M(2R-3M)}{3R^2f_R^2}+O(\delta M^2).
$$

额外控制条件包括 $\delta M/(Rf_R)\ll1$、$\delta M(2R-3M)/(R^2f_R^2)\ll1$ 及 $R|\Omega_s-\omega(R)|/\sqrt{f_R}\ll1$。不进行 $R\to2M$ 外推。

## V.D：quadratic rotational closure 的完整构造与未复验 table

形变只含 $\ell=0,2$：$r_\Sigma=R+\epsilon_\Omega^2(\xi_0+\xi_2P_2)$；$\delta p_\ell=c_s^2\delta\sigma_\ell$ 是新 material input。source 选 fixed-$M_s$ 背景序列，

$$
c_s^2=\frac{dp_0/dR}{d\sigma_0/dR}
=\frac{M(3R-4M)}{4(R-2M)^2}.
$$

**Checked:** derivative ratio 与 causal inequality 解都经 Mathematica 重现，$c_s^2\le1$ 要求 $R/M\ge(19+\sqrt{41})/8\simeq3.175$。这一 EOS derivative 是特定 constitutive choice，不是 Israel matching 强制给出的普适 sound speed。

用 $\Omega_s=\eta^{1/2}\bar\Omega$ 暴露 rotation powers，fixed rest number 与 Euler equation 分别给

$$
\delta\sigma_0=-(\sigma_0+p_0)
\left(2\xi_0/R+R^2\bar\Omega^2/(3f_R)\right),
$$

$$
\delta p_2=-(\sigma_0+p_0)
\left(M\xi_2/(R^2f_R)+R^2\bar\Omega^2/(3f_R)\right).
$$

这些假设才去掉 material zero-mode ambiguity。RW vacuum basis 取 $x=r/M-1$：

$$
(x^2-1)H''+2xH'-\left(6+\frac4{x^2-1}\right)H=0,
$$

$$
\widehat P_2^2=x^2-1,\qquad
\widehat Q_2^2=\frac58\left[\frac32(x^2-1)\ln\frac{x+1}{x-1}-3x+\frac{2x}{x^2-1}\right],
$$

$$
H_2^-=A_2\widehat P_2^2,\quad H_2^+=B_2\widehat Q_2^2,\quad
K_2=\frac M2\partial_rH_2+\frac{r^2-Mr-M^2}{r(r-2M)}H_2.
$$

**Checked:** 两个 master-ODE residual 为零，$\widehat Q_2^2=x^{-3}+8x^{-5}/7+O(x^{-7})$；本检查未重新认证 $K_2$ 的所有 Einstein components。

source 规定 displaced induced metric $[q_{ab}]=0$、Israel $S_{ab}=-([K_{ab}]-q_{ab}[K])/(8\pi)$，$K_{ab}=-n_{\alpha;\beta}e_a^\alpha e_b^\beta$。monopole unknown vector 是 $(\delta M_{\rm rot},C_0,\xi_0^+,\xi_0^-)$；quadrupole 是 $(B_2,A_2,\xi_2^+,\xi_2^-)$。每套使用 $[q_{tt}]_\ell,[q_{\theta\theta}]_\ell$，再配 EOS 与 fixed-number（$\ell=0$）或 isotropy eigenvalue $\Pi_2=0$（$\ell=2$）。原文定义

$$
\mathcal P_\ell[F]=\frac{2\ell+1}{2}\int_{-1}^1F(\arccos\mu)P_\ell(\mu)d\mu,
\quad (A_\ell)_{ij}=\left.\partial_{x_j}(\mathcal R_\ell)_i\right|_0,
\quad b_\ell=\mathcal R_\ell(0),\quad A_\ell x_\ell=-b_\ell.
$$

这给出了构造矩阵的 source prescription，但没有打印全部 matrix entries 或可执行计算文件。本次没有完整重建并求解这两套 displaced-Israel systems，因此 **Table I 为 Source-derived，不能标 Checked**。其 $M_s/M=.01$、$R/M=4,6,8$ 的 $\delta M_{\rm rot}/M$ 分别约 $.00144570,.000758171,.000517855$，$Q/M^3$ 约 $-.0171826,-.0162887,-.0121759$；40–60 digit precision、step-doubling 和 residual $\le6\times10^{-11}$ 都是作者报告的数值证据。我们确认了 rendered table 的这些数字，不把视觉读取当独立 runtime acceptance。$Q=\tfrac12B_2M_+^3$ 依作者 asymptotic convention，不能不经 gauge/normalization 检查与其他 quadrupole 定义直接相等。

## VI：conserved torus、全局归一化与独立积分

$$
T_{\mu\nu}=(e+p)u_\mu u_\nu+pg_{\mu\nu},\quad
u^\mu=u^t(1,0,0,\Omega),\quad \ell=-u_\phi/u_t=\mathrm{constant}.
$$

$$
\Omega=-\frac{g_{t\phi}+\ell g_{tt}}{g_{\phi\phi}+\ell g_{t\phi}},\quad
|u_t|=\sqrt{\frac{g_{t\phi}^2-g_{tt}g_{\phi\phi}}
{g_{\phi\phi}+2\ell g_{t\phi}+\ell^2g_{tt}}},
$$

$$
H=\ln\frac{|u_{t,\rm in}|}{|u_t|},\quad
p=K\rho_0^\Gamma,\quad e=\rho_0+\frac p{\Gamma-1},\quad
\rho_0=\left[\frac{\Gamma-1}{\Gamma K}(e^H-1)\right]^{1/(\Gamma-1)}.
$$

用 $H>0$ 选择与 pressure maximum 连通的**外侧有界 torus component**，在其外设 $e=p=0$；不是把 near-horizon disconnected allowed region 也算成同一 torus。还要求 circular flow timelike、上式 square root denominator 正。这个 support 选择是数值复现的明确假设。

取 $M=1,a=.5,r_{\rm in}=6,r_{\rm max}=10,\Gamma=4/3$，$\ell=\ell_K(10)$。**Checked:** 独立 standard-library Gauss–Legendre quadrature（不调用作者代码）在 $r\in[6,r_{\rm out}]$、$\cos\theta\in[0,1]$ 上保留 $H>0$，含 equatorial 和 azimuthal factors。使用 $N_r=N_\mu=120,240,480$，并用 $K^{-3}$ scaling 固定 $E_t/M=.01$，得到：

| quantity | 本次独立结果（480阶） |
|---|---|
| $\ell$ | 3.76334946820652 |
| $H_{\rm max}$ | 0.0195166371195224 |
| $r_{\rm out}$ | 28.8131191884563 |
| $E_t/M$ at $K=.01$ | 486.036026224753 |
| normalized $K/M^{2/3}$ | 0.364941136745187 |
| $M_{0,t}/M$ | 0.0103143016678460 |
| $J_t/M^2$ | 0.0377516989596572 |

定义与积分 measure 为

$$
E_t=-\int T^t{}_t\sqrt{-g}\,d^3x,\quad
J_t=\int T^t{}_\phi\sqrt{-g}\,d^3x,\quad
M_{0,t}=\int\rho_0u^t\sqrt{-g}\,d^3x.
$$

$240\to480$ 阶的 $E$ relative difference 约 $5.91\times10^{-10}$，$K$ 更小；支持作者给出的 $2\times10^{-8}$ 数值精度，不证明 continuum quadrature error 的严格上界。初版辅助脚本在不允许 timelike circular flow 的 axis-near region 对 negative norm 开平方；加入 physical-domain mask 后成功，未把该脚本错误算成 source failure。

以

$$
U_n=\frac{(r^2+a^2)u_t+au_\phi}{2\Sigma},\quad
U_m=\frac{i(a\sin\theta\,u_t+\csc\theta\,u_\phi)}{\sqrt2(r+ia\cos\theta)}
$$

构造 $\Phi_{22}=4\pi(e+p)U_n^2$、$\Phi_{21}=4\pi(e+p)U_mU_n$、$\Phi_{20}=4\pi(e+p)U_m^2$、$\Lambda_{\rm NP}=\pi(e-3p)/3$，在 pressure maximum 得

$$
\Phi_{20}=-1.5274832980\times10^{-6},\quad
\Phi_{21}=-3.2557658655\times10^{-6}i,
$$

$$
\Phi_{22}=6.9395268574\times10^{-6},\quad
\Lambda_{\rm NP}=2.5770911145\times10^{-6}.
$$

与原文四个数字在显示精度内一致。三条非零 Ricci channels 说明不能只用 $\Phi_{22}$ 重建完整 torus metric；本积分不认证尚未求出的 metric 或 global gauge regularity。

## VII：transport theorem、coupled harmonics 与证明的精确条件

在 regular Kerr flow box、$n^\mu$ 不为零且初始 hypersurface transverse 时，若每一步已确立为

$$
\partial_su_j+A_j(s,y)u_j=F_j(s,y;u_1,\ldots,u_{j-1}),
$$

且 transverse derivatives 只作用于已解变量，integrating factor 给

$$
u_1(s,y)=e^{-I_1(s,y)}\left[u_1(s_0,y)+\int_{s_0}^se^{I_1(v,y)}F_1(v,y)dv\right],
\quad I_1=\int_{s_0}^sA_1(v,y)dv.
$$

有限层归纳给 smooth local solution，固定每层初值后唯一。**正确的条件式结论**是：已给完整 compatible triangular system 与 subsidiary constraint propagation 时，ODE argument 可用；还须固定 residual radiation gauge 和非辐射 kernel。

原文 Theorem 1 将这一步提升为完整 reconstructed metric 的局部结论，引用 “unused NP equations 的 differences 满足 homogeneous subsidiary identities”。但全文多数 curvature-to-metric equations 仅以 arrows 给出，没有列出完整 $A_j,F_j$ 与 subsidiary system。因此本次 **Not independently verified** 这个完整 Einstein reconstruction implication；缺少的是 explicit full operator/compatibility propagation，不能靠重复 integrating-factor formula 补齐。我们没有证明 theorem 为假，独立验证的是明写的 trace subsystem 和 shell realization。

global criterion 的七项输入是：conserved source 与 support/regularity；全部 Ricci projections；compatible radiative data 与完整 NP/Einstein equations；horizon/infinity 或 finite-boundary conditions 与所有 interfaces；completion 和 residual-gauge normalization；weak-source prescription（self-force 还需 singular–regular split）；function spaces、operator estimate、kernel classification 及去 kernel 后的 injectivity/surjectivity。source 将它明确称为 conditional global closure，不能写成已证明全局可逆。

Fourier labels $(m,\omega)$ 可以分开，

$$
X=\sum_m\int d\omega\sum_\ell X_{\ell m\omega}(r){}_sS_{\ell m\omega}(\theta)e^{im\phi-i\omega t},
$$

但一般 NP metric transport coefficients 含 $\Sigma(r,\theta)$ 等，angular projection 后 $\ell$ 可耦合。这里不否定 Teukolsky equation 本身的 separability，只区分 decoupled curvature equation 与 full metric/connection reconstruction。任何 finite $\ell_{\max}$ 截断还需单独给 convergence/error control，本文没有提供。

## VIII–IX：limits 与当前 AdS/CPS 项目的具体接口

vacuum $T=0$ 只让 trace equations homogeneous；要回到 trace-free sector，还需 boundary/residual gauge 去掉 homogeneous trace mode。相反，在本文 gauge 中 $h=0$ 要求 $\mu^{(1)}=0$，进而 $\Phi_{22}=4\pi T_{nn}=0$。这个 compatibility 是必要条件；不能反向写成 $T_{nn}=0$ 自动令 trace 消失而不检查 homogeneous data。

source→response 的可复用 ledger 是

| step | 独立数据或条件 | 不可替代的后续对象 |
|---|---|---|
| source conservation | 完整 $T_{\mu\nu}$、EOS/support、distribution Jacobian | 全部 Ricci projections，不只 $\Phi_{22}$ |
| gauge/tetrad | $n\cdot h=0$ 与 perturbed tetrad gauge | weighted trace operator、六个 real amplitudes |
| transport | complete compatible equations、每层初值 | particular solution 与 transport integration functions |
| completion | $\delta M,\delta J$、additional zero-frequency kernel | 物理 charges，不由 radiative data 自动确定 |
| regional interfaces | 一侧 fields、junction jumps、外部 boundary data | 受控 weak solution，不是 generic global theorem |
| observables | ADM/Komar normalization 或 separate singular–regular prescription | energy/angular momentum；不能直接宣称 self-force 可用 |

对当前 Einstein-scalar response 工作，真正的迁移是检查“给定 source 是否 conserved、response 是否漏掉 kernel、边界/约束能否 jointly satisfied”，而不是把 Kerr ORG equations 直接套到 AdS。此文不提供 interacting AdS energy 的 CPS pairing、boundary charge renormalization 或完整 symplectic reduction；这些仍应从自己的 action 和边界变分开始。

## Verification log

**Verified:** xCoba tetrad normalization 与 direct spin-coefficient contraction；静态壳 advanced-coordinate 两侧全部线性 Einstein components 和壳面 $\delta G-8\pi T$ coefficient；Mathematica exact Israel mass/pressure、pressure series、sound-speed inequality、四个 shell NP projections、trace ODE/jump、inertia、dragging ODE/jump、advanced-coordinate axial cancellation、quadrupole master basis/asymptotics。独立 finite Gauss–Legendre quadrature 重现 torus 全局和局部数值，保留 support、timelike-domain、quadrature orders 与 scaling。

**Assumptions:** $G=c=1$；$M>0,R>2M$；static square-root branch $M_s<R\sqrt{f_R}$；明确 $\epsilon_M$ coefficient normalization 与 $\delta(\ell_\perp)$ Jacobian；取各区域 regular/outgoing boundary data；rotation 与 source strength 独立；torus $\Gamma=4/3$、选 pressure maximum 相连的 bounded outer component、timelike circular flow；不作 near-horizon 或 infinite-harmonic limit。

**Failed:** Eq. (6) 的 $\mu=\Delta_K\rho^2\bar\rho/(2\Sigma)$，独立连接计算要求去掉额外 $\Sigma^{-1}$。其 Schwarzschild limit 的 mismatch 已确认，不能由 sign convention 修复。

**Blocked / Not independently verified:** full NP triangular coefficients 与 subsidiary compatibility propagation 未在 source 中完整展开，本次未证明完整 local Einstein reconstruction；generic global inverse、gauge regularity、kernel/surjectivity 仍 conditional；两套 displaced-Israel $4\times4$ systems 和 Table I precision/residual 未独立重建；torus full metric、singular–regular self-force split、higher bidegrees 与 harmonic convergence 未完成。background spin coefficients 除 $\mu$ 与 tetrad normalization 外未逐项重推。

检索曾有三次 Python SSL EOF，curl 官方 PDF/TeX 和 web abs/HTML fallback 成功。大型 xPert batch 120秒超时已由 smaller advanced-coordinate xCoba checks 替代；无未解决的检索/计算服务故障。所有 PDF、TeX、renderings、CAS logs 和 quadrature script 保存在 vault 外。回到 [[2026_10_28_overview]]。
