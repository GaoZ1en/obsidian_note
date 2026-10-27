---
paper id: 2610.22398v1
title: "Dynamical entropy and thermodynamics of causal diamonds"
authors:
  - "Chakraborty, Avik"
  - "Das, Pratik K."
  - "Mahato, Manavendra"
publication date: 2026-10-14T07:54
abstract: |-
  We study the dynamical entropy of causal diamonds using Wald-Zoupas charges and fluxes on their null boundaries. For a chosen boundary symplectic potential, the boost charge defines an entropy made of an area term plus an expansion correction, which reduces to one quarter of the area at the edge on the diamond. In Einstein gravity, we find an exact balance law relating the entropy on any two cuts of the null boundary to a signed flux, so the entropy decreases only when this flux is non-negative. We obtain a linearised physical process first law without assuming a background Killing symmetry, both in the presence and absence of external matter; and extend it for semiclassical gravity based on the improved quantum null energy condition. We also examine causal diamonds in maximally symmetric spacetimes and in Einstein-scalar gravity.
comments: "40 pages, 5 appendices, 3 figures"
url: https://arxiv.org/abs/2610.22398v1
summary: "Fixed-null-structure WZ boost entropy and signed balance, with local monotonicity and quantum remainder conditions kept explicit."
tags: []
---

# Dynamical entropy and thermodynamics of causal diamonds

结论：这里可复用的是**指定 null boundary structure 与 Wald–Zoupas potential 后的 localized boost charge，以及它的 signed-flux balance**。它不是任意 diamond 上无条件的熵单调性定理，也没有把非平衡边界 charge 自动变成整个区域的 Hamiltonian。本文下面保留这些条件；公式取 $G=\hbar=c=k_B=1$。

## Source map and how to read this long paper

Source: [2610.22398v1](https://arxiv.org/abs/2610.22398v1), official PDF and TeX, read 2026-10-19. Abstract comments 写 40 pages，实际 PDF 为 59 pages；按 monograph mode 重建。TeX 用于符号和 label，PDF 第 22、50 页已渲染检查关键措辞与公式。

| Cluster | 完整结构与用途 | 后续依赖 |
| --- | --- | --- |
| I | Introduction；notation and conventions | 选定方向、曲率及零面结构 |
| II A–C | CPS/Wald–Zoupas；null geometry、symmetries、charges/fluxes；Gaussian null coordinates | $\Theta,\rho,q_\xi$ 和 affine symmetry |
| III | Dynamical entropy of causal diamond | $S=\frac14\int\sqrt q(1-v\theta)$ |
| IV A–C | exact balance；perturbative matter；一阶、二阶 vacuum perturbations | 非 Killing PPFL，二阶 flux 的背景项 |
| V | semiclassical balance and improved QNEC | 带余项的条件式 quantum entropy balance |
| VI A–B | spherical diamonds；comparison/physical-process first laws；Smarr | CKV 与固定 affine boost 的区别 |
| VII A–C | Einstein–scalar configuration space；charges/fluxes；diamond | scalar contribution 和 profile stabilizer |
| VIII | Conclusion | 未证明的推广与物理解读 |
| App. A | maximally symmetric diamonds、Smarr、comparison first law | lapse-weighted volume 与 flat/static-patch limits |
| App. B | Raychaudhuri derivation | 不依赖 charge 语言复核 entropy density |
| App. C1–C5 | finite Minkowski diamond；thin shell；Rindler；dS static patch；AdS3 entanglement wedge | flux sign、stationary limit、UV cutoff |
| App. D | black-hole GSL with INEC | 与 diamond 的温度/方向及条件区分 |
| App. E | Einstein–scalar null-surface symmetries | 固定 scalar profile 的 stabilizer |

建议先读 II 的 potential/charge、III、IV A 和 App. B，再用 C1–C2 检验符号。IV C、VI、VII 是技术参考；V/App. D 的量子结论应最后读，保持 INEC、SSA 与余项条件。App. A 的 entanglement-equilibrium discussion 只是背景/一阶应用，不能替代本篇的非平衡 balance。

## Fixed null structure and the WZ charge

Signature $(-+++)$，$[\nabla_a,\nabla_b]V^c=R^c{}_{dab}V^d$。边界结构是 $[\ell^a,\kappa,\hat\ell_a]$；取固定代表与 affine parameter，$\kappa=0$、$\ell=\partial_v$。$\mathcal N^+$ 上 $v=0$ 是 diamond edge，$v$ 向 future tip 增大；辅助 null normal 满足 $n\cdot\ell=-1$。固定 generator、cut 和 $\delta\xi=0$ 是以下变分的必要约定。$q_{AB}$、$\theta$、$\sigma_{AB}$ 可变化，$\epsilon_3=dv\wedge\epsilon_2$。$\mathcal N^-$ 使用相应反向取向并在 edge 匹配 charge。

记 $a=\sqrt{\det q}$，$\theta=a'/a$，$K_{AB}=\frac{\theta}{d-2}q_{AB}+\sigma_{AB}$，prime 为 $\partial_v$。核心字典：

| Object | 本文意义 | 本地 CPS 使用时须保留 |
| --- | --- | --- |
| $\theta(g;\delta g)$ | spacetime $(d-1)$-form symplectic potential | 不与 scalar expansion $\theta$ 混淆 |
| $\omega=\delta\theta$ | field-space curl | 边界 flux 不一定为零 |
| $\rho$ | boundary counterterm form | choice-dependent，非唯一性未被消除 |
| $\Theta=\theta|_{\mathcal N}-\delta\rho$ | boundary potential | 其 stationary normalization 属于输入 |
| $q_\xi=Q_\xi-i_\xi\rho$ | localized charge form | 不等同 integrable global Hamiltonian |
| $k_\beta>0$ | boost normalization | $T=-k_\beta/(2\pi)$ 随方向约定 |
| $\delta$ / dot | exterior variation / ordinary family derivative | 二阶公式不可把两者混用 |

由 $\delta L=E\delta\phi+d\theta$，

$$
\delta H_\xi=\int_C(\delta Q_\xi-i_\xi\theta),\qquad
\delta(\delta H_\xi)=-\int_C i_\xi\omega.
$$

四维 Einstein gravity 选

$$
\rho=-\frac{\theta\epsilon_3}{8\pi},\quad
Q_{\xi\,ab}=-\frac{1}{16\pi}\epsilon_{abcd}\nabla^c\xi^d,
\quad
\Theta=-\frac{\epsilon_3}{16\pi}(h_m{}^n\chi_n{}^m-h\theta),
$$

其中 $h_{ab}=\delta g_{ab}$，$h$ 在固定 null structure 下是 transverse trace。于是

$$
q_\xi=\frac{\epsilon_2}{8\pi}
\left(n_b\ell^a\nabla_a\xi^b-\theta\,\xi\cdot n\right),
\qquad dq_\xi=\Theta(g;\mathcal L_\xi g)
$$

是 vacuum on-shell identity；matter 改为带 signed matter term 的 balance。此构造解决所选边界势下的 localized flux bookkeeping，未证明所有角点条件下的 charge algebra 或完整 reduced phase space。

GNC 为 $ds^2=-Wdv^2-2du\,dv+q_{AB}(dx^A-W^Adv)(dx^B-W^Bdv)$，在 $u=0$ 上 $W=\partial_uW=W^A=0$。保持固定 affine structure 的 vector field 到所需阶为

$$
\xi=(\varsigma-v\beta)\partial_v+u\beta\partial_u+
\big[X^A+u q^{AB}\partial_B(\varsigma-v\beta)\big]\partial_A.
$$

因此沿 generator 的 $f(v,x)$ 满足 $f''=0$；intrinsic algebra 是 $\mathrm{diff}(Z)\ltimes(\mathrm{Weyl}\ltimes\text{affine translations})$。固定 edge 令 $\varsigma=0$；常数 $\beta=-k_\beta$ 给 $\xi=k_\beta v\ell$。

## Boost entropy and the exact balance

把上述 boost 代入 cut charge：

$$
\mathcal Q_\xi[C]=-\frac{k_\beta}{2\pi}S[C],\qquad
S[C]=\frac14\int_C a(1-v\theta)
=\frac14\int_C(a-va').
$$

edge 上 $S=A/4$。这既解释 expansion correction 的来源，也显示它不是额外指定的面积函数。对任意 ordered cuts $v_1(x)\leq v_2(x)$，cut pullback 的 $\epsilon_2$ 不产生 $\partial_Av_C$ 项。

令 $c_d=(d-3)/(d-2)$，Raychaudhuri equation 为

$$
\theta'=-\frac{\theta^2}{d-2}-\sigma^2-8\pi T_{\ell\ell},\quad
a''=a(c_d\theta^2-\sigma^2-8\pi T_{\ell\ell}),\quad
(a-va')'=-va''.
$$

由此得到本篇最可复用的式子：

$$
-\frac{k_\beta}{2\pi}\Delta S=\Delta E+F_g,
$$
$$
\Delta E=-\int_{\Delta\mathcal N}k_\beta vT_{\ell\ell}\epsilon_3,
\qquad F_g=-\int_{\Delta\mathcal N}\frac{k_\beta v}{8\pi}
(\sigma^2-c_d\theta^2)\epsilon_3.
$$

负温度是 charge normalization 的后果；它不自行确定 $\Delta S$。若要求沿每条 generator 的所有子段都 nonincreasing，精确条件是

$$
\phi=-k_\beta v\left[T_{\ell\ell}+
\frac{\sigma^2-c_d\theta^2}{8\pi}\right]\geq0,
\quad\text{i.e.}\quad 8\pi T_{\ell\ell}+\sigma^2\leq c_d\theta^2.
$$

NEC 本身不蕴涵这个上界。$d=3$ 时 $c_d=0$ 且 screen shear 为零，NEC 反而给 $S'\geq0$。若 regular tip 有 $a\sim c(V-v)^{d-2}$，则 $a-va'\sim(V-v)^{d-3}$，仅在 $d\geq4$ 推得 tip entropy 为零；这是 endpoint statement。

**Failed — wording after Eq. (128), PDF p. 22.** 由端点结果推出 “always nonincreasing” 的句子过强，后文要求 local flux nonnegative 才是正确条件。局部检验取 $d=4$、$a=1-v^2$、$0<v<1$、$\sigma=0$、$T_{\ell\ell}=1/[4\pi(1-v^2)^2]>0$；Raychaudhuri residual 为零，而 $(a-va')'=2v>0$。这反驳 NEC 足以给局部单调性的推断；它不是满足所有 regular-corner 条件的 global diamond 反例，也不否定端点定理。

## Physical-process variations: what survives without a Killing field

在固定结构的 vacuum background 上加入 $\delta T$：

$$
-\frac{k_\beta}{2\pi}\Delta\delta S=\Delta\delta E+\delta F_g.
$$

不需要 background Killing symmetry 的代价是保留 $\delta F_g$。设 $h=q^{AB}\delta q_{AB}$，$\delta a=ah/2$、$\delta\theta=h'/2$，则

$$
\delta S=\frac18\int a\,[h(1-v\theta)-vh'].
$$

对 ordinary family $g(\lambda)$，$h_{ab}=\dot g_{ab}$，$\dot h=\mathrm{tr}(q^{-1}\ddot q)-h_{AB}h^{AB}$。二阶为

$$
\ddot S=\frac18\int a\left[
(\dot h+h^2/2)(1-v\theta)-vhh'-v\dot h'\right].
$$

metric inverse 与 area element 的 variation 都必须保留。尤其对 nonstationary background，family derivative 中

$$
\frac{d}{d\lambda}\omega(g;h,\mathcal L_\xi g)
=\dot{}_g\omega(g;h,\mathcal L_\xi g)
+\omega(g;\ddot g,\mathcal L_\xi g)
+\omega(g;h,\mathcal L_\xi h)
$$

的前三种贡献，加上 $d\,i_\xi\dot\Theta$，共同给完整二阶 flux；不能只保留 canonical-energy-looking 的最后一项。只有 Killing background 才去掉前两项。在 nonexpanding、shear-free vacuum background 且 $\dot\theta=0$ 的特殊情形，

$$
\ddot F_g=-\frac{k_\beta}{4\pi}\int v\,\dot\sigma^2\epsilon_3\leq0,
$$

所以相应 $\ddot S$ 增加。higher-derivative extension 依赖存在满足所需条件的 boundary potential 和 charge entropy；本文没有给所有理论统一证明。

## INEC and the indispensable remainder

Section V 在四维假设 improved QNEC，沿指定 null deformation，且采用一致 entropy renormalization：

$$
a\langle T_{\ell\ell}\rangle\geq\frac1{2\pi}
\left(S_{\rm vn,diag}''-\frac\theta2 S_{\rm vn}'\right).
$$

把 diagonal variation 变成 uniform-cut second derivative，还需 nested regions 与 SSA 控制 off-diagonal kernel。相关 quantum-expansion/shear-free 条件不是一般 null surface 自动满足的。

定义 $I=S_{\rm vn}''-\frac12\int\theta\,\delta S_{\rm vn}/\delta v$。从饱和 reference state 沿允许的单侧 perturbation 线性化时，记

$$
\mathcal R=2\pi\int a\,\delta T_{\ell\ell}-\delta I\geq0,
\qquad (\delta S_q)'=-v\delta I.
$$

若允许正负两侧任意 perturbation，饱和不等式的一阶项须为等式，不能一面允许双侧变化一面任意保留非零一阶 remainder。$S_q$ 是沿此 deformation path 定义到常数的量，不可直接识别成一般 cut 的 $S_{\rm vn}$。精确组合式是

$$
-\frac{k_\beta}{2\pi}(\delta S+\delta S_q)'
=\delta F_g'-\frac{k_\beta v}{2\pi}\mathcal R.
$$

因此 decrease 需要 $\delta F_g'\geq k_\beta v\mathcal R/(2\pi)$，INEC 单独不够。在 stationary $\theta=0$ 情形，$S_q=S_{\rm vn}-vS_{\rm vn}'$，一阶 $\delta F_g'=0$，组合导数为 $v\mathcal R\geq0$。App. D 的 black-hole positive-temperature/GSL discussion 应按它自己的 horizon direction、reference saturation 与 entropy 条件读；不能搬成一般 diamond 的 $A/4+S_{\rm vn}$ GSL。

## Spherical diamonds: CKV, affine boost and Smarr

取 $F(r)=1-r^2/L^2$，$R=L\tanh(R_*/L)$，future cut $r_t=L\tanh[(R_*-t)/L]$，edge extrinsic curvature $K=(d-2)\sqrt{F(R)}/R$。diamond CKV 的非零分量为

$$
\zeta^t=\frac{kL^2}{R}\left[1-\frac{\sqrt{F(R)}}{\sqrt{F(r)}}\cosh(t/L)\right],
\quad\zeta^r=-\frac{kLr}{R}\sqrt{F(R)F(r)}\sinh(t/L),
$$
$$
\mathcal L_\zeta g=2\alpha g,\quad
\alpha=-\frac{kL}{R}\sqrt{F(R)F(r)}\sinh(t/L),\quad
\dot\alpha=-\frac{kK}{d-2}\cosh(t/L).
$$

dot on $\alpha$ denotes unit-normal derivative here. With $\ell=F^{-1}\partial_t-\partial_r$ and $v=R-r$, restriction to the future boundary gives

$$
\zeta|_{\mathcal N}=kv(1-v/R)\ell,\qquad\xi=kv\ell.
$$

Thus $f_\zeta''=-2k/R$：CKV does not preserve the fixed affine structure used for $\xi$. Swapping the two generators loses both a charge difference and the WZ counterterm.

The comparison-law current is

$$
\omega=\frac{d-2}{16\pi}\epsilon_a
\{\alpha(\nabla^ah-\nabla_bh^{ab})+(h^{ab}-hg^{ab})\nabla_b\alpha\}.
$$

On a generic $t$ slice its integral contains the volume term $-kK\cosh(t/L)\delta V/(8\pi)$, the $-(d-2)\int\alpha\theta$ potential term and $-(d-2)/(16\pi)\int u_ah^{ab}D_b\alpha\,dV$. Generic cuts retain both $\delta Q$ and $-i_\zeta\theta$. At the edge the comparison law reduces to

$$
\delta H_m+\frac{V_\zeta\delta\Lambda}{8\pi}
=\frac{kK\delta V}{8\pi}-\frac{k\delta A}{8\pi}.
$$

The boost form additionally retains $\int_C i_\xi\Theta$. Here $V$ is proper volume but $V_\zeta$ is lapse weighted; they cannot be interchanged. The source Smarr identity is

$$
(d-2)(k+\alpha_t)A_t=2\Lambda V_\zeta
-(d-1)(d-2)\int\dot\alpha\,dV,
$$
$$
V_\zeta\big|_{t=0}=\frac{kL^2}{R}
\left[\frac{\Omega_{d-2}R^{d-1}}{d-1}-\sqrt{F(R)}V\right].
$$

For a boost-based dynamical Smarr relation the extra integrated charge difference is

$$
\int_C(Q_\xi-Q_\zeta-i_\xi\rho)
=-\frac{kA_t}{8\pi}\left[\frac vR+\frac{(d-2)v}{R-v}\right].
$$

The spherical entropy is $S(v)=\frac{\Omega_{d-2}}4(R-v)^{d-3}[R+(d-3)v]$; in $d=4$, $S=\pi(R^2-v^2)$, while in $d=3$ it is constant. App. A checks the flat limit $V_\zeta=kRV/(d+1)$ and dS static patch $K=0$. Entanglement equilibrium there remains a first-order statement.

## Einstein–scalar: keep the mixed metric variation

For $L=(R-(\nabla\Phi)^2-2U(\Phi))\epsilon/(16\pi)$,

$$
G_{ab}=\partial_a\Phi\partial_b\Phi-\tfrac12g_{ab}(\nabla\Phi)^2-g_{ab}U,
\qquad\Box\Phi-U'=0,
$$
$$
\theta_{ES}=\frac{\epsilon_a}{16\pi}
(\nabla_bh^{ab}-\nabla^ah-2\nabla^a\Phi\,\delta\Phi),
$$
$$
\omega_\Phi=-\frac1{8\pi}
\left[\delta_1(\epsilon_a\nabla^a\Phi)\delta_2\Phi-(1\leftrightarrow2)\right].
$$

The variation of $\epsilon_a\nabla^a\Phi$ includes metric terms. With the same $\rho$, the charge stays geometric, while in four dimensions

$$
\Theta_{ES}=-\frac{\epsilon_3}{16\pi}
\left[(\sigma^{AB}-\tfrac12\theta q^{AB})h_{AB}+2(\ell\Phi)\delta\Phi\right],
$$
$$
F_{ES}=-\int\frac{k_\beta v}{8\pi}
\left[\sigma^2-\tfrac12\theta^2+(\ell\Phi)^2\right]\epsilon_3.
$$

Raychaudhuri has $R_{\ell\ell}=(\ell\Phi)^2$; count scalar matter once, either inside $F_{ES}$ or as its corresponding stress flux. A nonzero background scalar flux also varies the area factor. Constant $\Phi_0$ requires $U'(\Phi_0)=0$ and gives $\Lambda_{\rm eff}=U(\Phi_0)$; at fixed potential $\delta\Lambda_{\rm eff}=0$ at first order. If $\ell\Phi_0=0$, scalar flux starts at second order:

$$
\ddot F_\Phi=-\frac{k_\beta}{4\pi}\int v(\ell\delta\Phi)^2\epsilon_3.
$$

App. E separately asks for symmetries preserving a prescribed scalar profile:

$$
(\varsigma-v\beta)\partial_v\Phi+X^A\partial_A\Phi=0.
$$

For $\Phi=\Phi_0(x)$ this restricts $X\Phi_0=0$ only. For $\Phi=e^{a(x)v}\Phi_0(x)$ with $a\Phi_0\ne0$ it gives $\varsigma=-X\ln|\Phi_0|/a$ and $\beta=Xa/a$; at zeros keep the undivided equations. Locally this stabilizer can be described through $p=\ln|\Phi|$, but edge preservation still requires $\varsigma=0$. Allowing the scalar to fluctuate is different from imposing this stabilizer on every configuration. If the profile-dependent vector is recomputed across phase space, the bracket needs the field-dependent-generator correction; this note does not claim that algebra has been independently verified.

## Appendix examples and regulator translation

**C1, finite Minkowski diamond.** $t=v+u/2$, $r=R-v+u/2$ give $S=\pi(R^2-v^2)$ and $F=k_\beta(v_2^2-v_1^2)/2$. Nonzero flux here is an expansion contribution, not gravitational radiation.

**C2, a thin NEC shell.** Write $\delta T_{\ell\ell}=\mu\delta(v-v_p)$, $r_p=R-v_p$, $r=R-v$, $\mu>0$. In the source's linearized solution,

$$
\delta a=8\pi\mu r_pr(r-r_p)\Theta(v-v_p),
\quad\delta S=8\pi^2\mu r_p(Rv_p-v^2)\Theta(v-v_p),
$$
$$
\delta E=-4\pi k_\beta\mu v_pr_p^2\Theta(v-v_p),\quad
\delta F_g=4\pi k_\beta\mu r_p(v^2-v_p^2)\Theta(v-v_p).
$$

The area-derivative jump is $-8\pi\mu r_p^2$; the balance holds including the shell. The entropy perturbation changes sign at $v=\sqrt{Rv_p}$; the fixed-background linearization is nonuniform near the tip, so do not turn that limit into a nonlinear regular-corner conclusion.

**C3–C4, Rindler and dS static patch.** $\theta=\sigma=0$ eliminates first-order geometric flux. In the paper's signed convention positive outward energy increases the associated entropy. The dS chart is

$$
ds^2=-\frac{2du\,dv}{(1-uv/2L^2)^2}
+L^2\left(\frac{1+uv/2L^2}{1-uv/2L^2}\right)^2d\Omega^2.
$$

**C5, Poincaré AdS3 wedge.** Let $b=1-uv/L_{\rm AdS}^2$ and $D=L_{\rm AdS}b\cosh\eta+[(b+1)v-u]/2$. The embedding is

$$
t=\frac{R[(b+1)v+u]}{2D},\qquad
x=\frac{RL_{\rm AdS}b\sinh\eta}{D},\qquad z=\frac{RL_{\rm AdS}}D.
$$

Pulling back $L_{\rm AdS}^2(-dt^2+dx^2+dz^2)/z^2$ gives

$$
ds^2=-2du\,dv-\frac{u^2}{L_{\rm AdS}^2}dv^2
+L_{\rm AdS}^2b^2d\eta^2.
$$

PDF p. 50 Eq. (C51) prints an unbound $L^2$ in the last coefficient; the Jacobian fixes it to $L_{\rm AdS}^2$, consistent with Eq. (C60). On $u=0$, $q_{\eta\eta}=L_{\rm AdS}^2$, $\theta=0$, and $\xi=k(v\partial_v-u\partial_u)$ is Killing. A transported regulator with edge endpoints $\eta_{\max}=\operatorname{arcosh}(R/z_{\rm UV})$ gives

$$
S=\frac{L_{\rm AdS}}{2G}\operatorname{arcosh}(R/z_{\rm UV}),\qquad 0<z_{\rm UV}<R.
$$

Keep $z_{\rm UV}$ explicit until the final limit. Transporting endpoint generators differs from imposing fixed Poincaré $z$ on each later cut. Later cuts are not generally extremal surfaces; the edge EE first law is not an EE interpretation of every cut. This also supplies no brick-wall/cone regulator equivalence or spectral partition function.

## Equation ledger and derivation map

| Input | Intermediate equation | Reusable output / restriction |
| --- | --- | --- |
| fixed null structure + chosen $\rho$ | $q_\xi=Q_\xi-i_\xi\rho$ | localized charge, not automatic Hamiltonian |
| affine boost $kv\ell$ | $\mathcal Q=-kS/2\pi$ | expansion-corrected entropy |
| Raychaudhuri + $a'=a\theta$ | $(a-va')'=-va''$ | exact signed balance in any $d$ |
| fixed cut/generator family | $\delta\theta=h'/2$ | PPFL with nonstationary flux retained |
| ordinary second variation | metric/area/shear variations | no generic reduction to one canonical-energy term |
| INEC + SSA + reference saturation | $\mathcal R\geq0$ | conditional entropy inequality with explicit remainder |
| spherical CKV | $f''_\zeta\ne0$ | comparison law differs from affine-boost law |
| Einstein–scalar action | $R_{\ell\ell}=(\ell\Phi)^2$ | scalar flux enters once, with mixed variations |

For regional sewing the immediate object is the oriented triple $(\Theta,q_\xi,F_\xi)$ on a chosen interface, with matched normal/boost conventions on the two sides. The paper does not prove matching data suffice for state sewing or observable-algebra factorization. For AdS quantization the immediate object is the regulated C5 null chart and charge; it does not compute a one-particle trace or Fock partition function.

## Verification log and exact boundaries

**Checked — Mathematica, independent algebra.** Entropy density derivative; Raychaudhuri-to-balance identity; first and ordinary second entropy variations; spherical entropy for general dimension; INEC rearrangement with $\mathcal R$; shell ODE away from the shell plus derivative jump and distributional balance; complete second variation of the algebraic flux density; spherical Smarr substitutions and boost/CKV charge correction; scalar-profile stabilizer equations. All reported residuals were zero. The NEC local witness residual and the full $3\times3$ AdS3 Jacobian metric residual were also zero.

**Checked — xAct.** For the explicit four-dimensional null metric $-2du\,dv+e^{2p(v)}dx^2+e^{2q(v)}dy^2$, xAct gives $R_{vv}=-(p'^2+q'^2+p''+q'')$; with $\theta=p'+q'$ and $\sigma^2=(p'-q')^2/2$, Raychaudhuri and WZ contractions have zero residual. The scalar Euler variation gives $2(\Box\Phi-U')$; the stress contraction reduces to $(\ell\Phi)^2$ after imposing $\ell^2=0$. The spherical CKV equation and normal derivative of $\alpha$ were reproduced with zero residual.

**Verified:** the preceding identities under their stated ansätze, the explicit AdS3 coordinate transformation, and the shell matching coefficient. PDF p. 22 confirms the overly strong monotonicity sentence; p. 50 confirms the $L^2$ notation defect.

**Assumptions:** fixed affine representative, fixed $\xi$ and cuts during variations; on-shell Einstein equations; smoothness away from the shell; $d\geq4$ for the quoted regular-tip entropy limit; consistent orientations; INEC/SSA and the restricted reference/deformation assumptions only where used; finite transported AdS cutoff.

**Failed:** the unconditional local-monotonicity inference after Eq. (128), with the limited counterexample scope stated above. Eq. (C51)'s undefined radius coefficient must be read as $L_{\rm AdS}^2$ to agree with its explicit chart.

**Blocked / recovered computation attempts:** a combined dS xAct `MetricCompute` call ended with `Wolfram evaluation ended without a structured payload.` Splitting out the CKV calculation succeeded. A scalar-contraction attempt reused a summed dummy index inside a square; it was discarded and rerun with distinct dummies, yielding zero. These failed attempts are not counted as checks.

**Not independently verified:** uniqueness of the WZ potential; global regularity/existence of arbitrary prescribed null data; the full general-metric covariant comparison-current identity; all nonstationary second-order field equations; INEC as a quantum theorem and renormalized entropy kernels; higher-curvature generalizations; scalar stabilizer global/field-dependent charge algebra. The ansatz checks do not prove these. No Sage check is appropriate to this paper's actual calculations.

Retrieval: an initial PDF SSL handshake timeout recovered on retry; a PDF text font warning was bypassed with official TeX and rendered pages. No unresolved source-access blocker. Official PDFs, TeX, renderings and machine logs stayed outside the vault. Same-day overview: [[2026_10_19_overview]].
