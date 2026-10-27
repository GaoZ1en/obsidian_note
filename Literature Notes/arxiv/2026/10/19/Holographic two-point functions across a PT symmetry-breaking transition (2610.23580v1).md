---
paper id: 2610.23580v1
title: "Holographic two-point functions across a PT symmetry-breaking transition"
authors:
  - "Wang, Zuo"
  - "He, Liang"
publication date: 2026-10-16T15:03
abstract: |-
  In parity-time (PT)-symmetric non-Hermitian systems, an exceptional point, where eigenvalues and eigenvectors coalesce, typically separates a real spectrum from complex-conjugate eigenvalues. In logarithmic conformal field theories (LCFTs), such an exceptional point appears in the spectrum of scaling dimensions. Holographic models of LCFTs, such as the dipole model, are built exactly at this point. Here, we deform the holographic dipole model so that its two coalescing scaling dimensions split into either two real ones or a complex-conjugate pair. We obtain the renormalized two-point functions in closed form. They change continuously from a linear combination of two power laws, through the logarithmic form of the LCFT at the exceptional point, to log-periodic oscillations. For any pair of scalar primary operators with real mixing under dilatations, the conformal Ward identities fix this form up to two normalization constants, which the holographic dictionary determines. In PT-symmetric theories with such a dilatation operator, real and complex-conjugate scaling dimensions correspond to the PT-unbroken and PT-broken phases. In the BTZ black hole at finite temperature, the difference between the quasinormal frequencies associated with the two scaling dimensions changes from purely imaginary to purely real across the real-to-complex spectral transition. Correspondingly, the linear response changes from overdamped to underdamped, with critical damping at the exceptional point.
comments: "27 pages, 3 figures"
url: https://arxiv.org/abs/2610.23580v1
summary: "Mixed-scalar holographic source-response map and logarithmic EP limit, with Ward, spectral and two-scale alias checks."
tags: []
---

# Holographic two-point functions across a PT symmetry-breaking transition

结论：这个模型给出一套可直接复用的 **two-field source/response map、exceptional-point 极限和 logarithmic partner 构造**。两个普通幂律在保持原始 source basis 的极限中合成 logarithmic correlator；$\epsilon<0$ 时则变成 log-periodic correlator。中心公式通过独立代数和径向方程核验，但 PT 的量子实现有额外假设，且“任意两个距离即可判定 phase”的说法有相位混叠反例。

## Source tree and reading guide

Read official [2610.23580v1](https://arxiv.org/abs/2610.23580v1), PDF (27 pages) and complete TeX, 2026-10-19. 因 three appendices 和跨 bulk/CFT/thermal 的长公式链，采用 monograph mode。PDF 第 14、18 页已渲染确认 two-scale inference 和 pole-order 讨论。

| Cluster | 完整结构 | 作用和依赖 |
| --- | --- | --- |
| 1 | Introduction | LCFT Jordan block 与 generic real-to-complex splitting 的区别 |
| 2 | Model and eigenmodes | action、indefinite kinetic form、mass splitting、branch choice |
| 3.1–3.3 | propagators/on-shell action；two-point functions；$\epsilon\to0$ | cutoff、source map、normalization 与连续 logarithmic limit |
| 4.1–4.3 | deformed dilatation；Ward identities；holographic matching | $H G=GH^T$ 和两个 normalization constants |
| 5.1–5.3 | physical PT criteria；global real-time modes；thermal/BTZ response | quantum assumptions、growth vs damping、pole multiplicity |
| 6 | Conclusion | positive-inner-product quantization、gravity extension 与 quench 均未完成 |
| A.1–A.2 | general two-field actions；general real dilatation matrix | normal form 的范围：constant real symmetric $K,V$，$K$ invertible；closed two-primary sector |
| B | exact dipole renormalization | 直接在 $\epsilon=0$ 算 source logarithm 与有限 action |
| C | deformed renormalization | 两个 eigenchannels 的 counterterm cancellation |

Essential reading: 2 → 3 → 4.2 → B/C；technical reference: A、5.3；physical interpretation: 5.1/5.2 最后读。不要把 $\Delta_\pm$ 的下标读成 standard/alternate quantization，也不要先把 singular eigenbasis 的两项分别取 $\epsilon\to0$。

## Indefinite kinetic form and the mass exceptional point

Fixed Euclidean $AdS_{d+1}$, $L_{\rm AdS}=1$, $ds^2=z^{-2}(dz^2+dx^idx^i)$；两 real scalars 的 action 是

$$
S=-\frac12\int\sqrt g\,[2\nabla\phi_1\cdot\nabla\phi_2
+2m^2\phi_1\phi_2+\phi_1^2+\epsilon\phi_2^2].\tag{2.1}
$$

Assumptions: $a_0=m^2+d^2/4>0$, real $\epsilon<a_0^2$；此处 $m^2$ 是可为负的参数。令 $s=\sqrt\epsilon$，对 $\epsilon<0$ 取 $s=i\sqrt{|\epsilon|}$。EOM 为

$$
(\Box-m^2)\Phi=M\Phi,\quad
\Phi=\binom{\phi_1}{\phi_2},\quad
M=\begin{pmatrix}0&\epsilon\\1&0\end{pmatrix},\quad M^2=\epsilon I.
$$

由第二式消去 $\phi_1$ 得 $[(\Box-m^2)^2-\epsilon]\phi_2=0$。对 $s\ne0$，

$$
\psi_\pm=\frac12(\phi_1\pm s\phi_2),\quad
\phi_1=\psi_++\psi_-,\quad\phi_2=(\psi_+-\psi_-)/s,
$$
$$
S=-\frac1s\int\sqrt g\,[(\nabla\psi_+)^2+(m^2+s)\psi_+^2]
+\frac1s\int\sqrt g\,[(\nabla\psi_-)^2+(m^2-s)\psi_-^2].
$$

两通道的相反 kinetic signs 必须保留。原始 $K=\begin{pmatrix}0&1\\1&0\end{pmatrix}$ 满足 $\det K=-1$，包括 $\epsilon=0$；exceptional point 是 mass/evolution matrix 的不可对角化，不是 kinetic matrix 的秩降。$s=0$ 时 $M$ 是非零 nilpotent Jordan block，singular eigenbasis 必须由 generalized mode 补足。

## Dimensions and notation dictionary

两通道都选 standard branch：

$$
\Delta_\pm=\frac d2+\sqrt{\frac{d^2}{4}+m^2\pm s},\quad
\bar\Delta=\frac{\Delta_++\Delta_-}{2},\quad
\delta=\frac{\Delta_+-\Delta_-}{2},\quad
\beta=2\bar\Delta-d,\quad\eta=\delta^2=\frac\epsilon{\beta^2}.
$$

The identity $s=\beta\delta$ follows by subtracting $\Delta_\pm(\Delta_\pm-d)=m^2\pm s$. Principal square roots imply real $\Delta_\pm>d/2$ for $0<\epsilon<a_0^2$, and conjugate $\Delta_\pm$ with $\operatorname{Re}\Delta_\pm>d/2$ for $\epsilon<0$. At zero, $\Delta=d/2+\sqrt{a_0}$, $\beta_0=2\Delta-d>0$.

| Symbol | Meaning | Boundary to preserve |
| --- | --- | --- |
| $s,\delta$ | mass-squared splitting / dimension splitting | $s=\beta\delta$, not $s=\delta$ |
| $\phi_{a(0)}$ | coefficients in the original mixed source basis | not values of $\phi_a$ at $z=0$ |
| $u_\pm$ | eigenchannel sources | $(\phi_{1(0)}\pm s\phi_{2(0)})/2$ |
| $J=(\phi_{1(0)},\beta\phi_{2(0)})$ | actual GKPW operator sources | second functional derivative includes $\beta^{-1}$ |
| $\mathscr O_1,\mathscr O_2$ | logarithmic partner / eigenoperator at EP | source labels and bulk mode labels are dual, not identical |
| $H=i\tilde D$ | dilatation action on the operator column | coefficient-state matrix is $H^T$ with this indexing |
| $\zeta$ | radial cutoff | keep finite before counterterm subtraction |
| $r$ | boundary separation in AdS-radius units | restore $\ln(r/\ell_0)$ when units are restored |

No alternate boundary condition, mixed double-trace deformation, or positive bulk Hilbert-space construction is supplied here.

## Bulk propagator and the regulated source/response map

For $\operatorname{Re}\Delta>d/2$,

$$
K_\Delta(z,x;x')=\frac1{N_\Delta}\frac{z^\Delta}{(z^2+|x-x'|^2)^\Delta},\qquad
N_\Delta=\pi^{d/2}\frac{\Gamma(\Delta-d/2)}{\Gamma(\Delta)}.
$$

The normalization follows from integrating the rescaled kernel over $\mathbb R^d$; it fixes $\psi_\pm\sim z^{d-\Delta_\pm}u_\pm$. At noncoincident points the response term is $z^{\Delta_\pm}B_\pm$ with

$$
B_\pm(x)=\frac1{N_{\Delta_\pm}}\int\frac{u_\pm(x')\,d^dx'}{|x-x'|^{2\Delta_\pm}}.
$$

This is a distributionally renormalized expression: the coincident-point singularity cannot be treated as an ordinary convergent integral. The mixed field kernel, with field index as row and source index as column, is

$$
\mathcal K=\frac12\begin{pmatrix}
K_++K_-&s(K_+-K_-)\\
(K_+-K_-)/s&K_++K_-
\end{pmatrix}.
$$

The paper names the upper-right entry $K_{21}$ and lower-left $K_{12}$; this index convention is worth recording before transplanting formulas. At finite $\epsilon$, each original field contains both powers $z^{d-\Delta_\pm}$. There is no independent single exponent to strip from each $\phi_a$.

On $z=\zeta>0$, $\sqrt\gamma=\zeta^{-d}$ and outward $n\cdot\nabla=-z\partial_z$. Thus

$$
S_{\rm reg}(\zeta)=\frac12\int_{z=\zeta}z^{-d}z\partial_z(\phi_1\phi_2),
\qquad\phi_1\phi_2=(\psi_+^2-\psi_-^2)/s.
$$

All mixed $\Delta_+\Delta_-$ products cancel. The zeroth-derivative counterterm is

$$
S_{\rm ct}^{(0)}(\zeta)=\int_{z=\zeta}\sqrt\gamma
\left[\frac{\phi_1^2+\epsilon\phi_2^2}{2\beta}-(d-\bar\Delta)\phi_1\phi_2\right]
=-\frac1s\int\sqrt\gamma[(d-\Delta_+)\psi_+^2-(d-\Delta_-)\psi_-^2].
$$

For $\operatorname{Re}(2\Delta_\pm-d)\geq2$, include the derivative counterterms mentioned in B/C; integer $\Delta_\pm-d/2$ require the usual additional logarithmic treatment. The explicit calculation here is the noncontact sector with generic nonresonant dimensions. Keep the order

$$
S_{\rm ren}=\lim_{\zeta\to0}\left[S_{\rm reg}(\zeta)+S_{\rm ct}^{(0)}(\zeta)+S_{\rm ct}^{(\partial)}(\zeta)\right]
$$

before taking $\epsilon\to0$ at fixed $r>0$ and fixed original sources. The direct EP calculation below cross-checks this separated-point limit, not uniform convergence at $r=0$ or arbitrary correlated cutoff limits.

Writing $\widetilde A_\pm=(2\Delta_\pm-d)/(2N_{\Delta_\pm})$ gives

$$
S_{\rm ren}=\frac2s\int d^dx\,d^dx'
\left[\frac{\widetilde A_+u_+(x)u_+(x')}{r^{2\Delta_+}}
-\frac{\widetilde A_-u_-(x)u_-(x')}{r^{2\Delta_-}}\right].
$$

The required cutoff counterterm has source-response cross terms contributing to this finite coefficient. This does **not** mean an arbitrary finite local functional of the renormalized sources can change separated-point normalization: its second variation is contact supported. The overall action normalization and operator basis remain physical inputs here.

## Functional derivatives, the logarithmic limit and App. B

With $W=\ln Z=-S_{\rm ren}$ and source coupling $\int(\phi_{1(0)}\mathscr O_1+\beta\phi_{2(0)}\mathscr O_2)$, define $a_\pm(r)=\widetilde A_\pm r^{-2\Delta_\pm}$. The Hessian is

$$
G(r)=\begin{pmatrix}
(a_--a_+)/s&-(a_-+a_+)/\beta\\
-(a_-+a_+)/\beta&s(a_--a_+)/\beta^2
\end{pmatrix}.\tag{3.13}
$$

Set $c_1=-(\widetilde A_+-\widetilde A_-)/s$ and $c_2=-(\widetilde A_++\widetilde A_-)/\beta$. Then

$$
G_{11}=r^{-2\bar\Delta}\left[c_1\cosh(2\delta\ln r)-\frac{c_2}{\delta}\sinh(2\delta\ln r)\right],
$$
$$
G_{12}=r^{-2\bar\Delta}[c_2\cosh(2\delta\ln r)-c_1\delta\sinh(2\delta\ln r)],\quad G_{22}=\eta G_{11}.
$$

For $\delta=i\kappa$, these are real combinations of $\cos(2\kappa\ln r)$ and $\sin(2\kappa\ln r)$; reality follows from conjugate channel coefficients, not positivity. At the EP,

$$
c_1\to-\frac{2\partial_\Delta\widetilde A}{\beta_0},\quad
c_2\to-\frac{2\widetilde A}{\beta_0},\quad
G\to r^{-2\Delta}\begin{pmatrix}c_1-2c_2\ln r&c_2\\c_2&0\end{pmatrix},
$$
$$
\partial_\Delta\widetilde A=\widetilde A\left[
\frac2{2\Delta-d}+\psi(\Delta)-\psi(\Delta-d/2)\right].
$$

App. B constructs the same answer without dividing two vanishing differences. Differentiate the KG equation with respect to $\Delta$ to obtain

$$
K_{12}=\frac1{2\Delta-d}\partial_\Delta K_\Delta,\quad
(\Box-m^2)K_{12}=K_\Delta.
$$

At finite cutoff the source terms are

$$
\phi_1=z^{d-\Delta}\phi_{1(0)}+z^\Delta B_1+\cdots,
$$
$$
\phi_2=z^{d-\Delta}\left(\phi_{2(0)}-\frac{\ln z}{\beta_0}\phi_{1(0)}\right)
+z^\Delta\left[B_2+\frac{B_1\ln z-C_1-B_1\partial_\Delta\ln N_\Delta}{\beta_0}\right]+\cdots,
$$

where $C_1=N_\Delta^{-1}\int r^{-2\Delta}\ln r^2\,\phi_{1(0)}(x')d^dx'$. Both the leading distribution and the nonlocal response term are necessary; discarding the latter loses the finite action. The counterterm is $\int\sqrt\gamma[\phi_1^2/(2\beta_0)-(d-\Delta)\phi_1\phi_2]$ plus necessary derivative terms. The finite quadratic action reads

$$
S_{\rm ren}^{EP}=\int\frac{d^dx\,d^dx'}{r^{2\Delta}}
\left[2\widetilde A\phi_{1(0)}(x)\phi_{2(0)}(x')
+\frac{\partial_\Delta\widetilde A-\widetilde A\ln r^2}{\beta_0}
\phi_{1(0)}(x)\phi_{1(0)}(x')\right].
$$

Differentiating it reproduces the limit above. A logarithmic basis shift $\mathscr O_1\mapsto\mathscr O_1+\lambda\mathscr O_2$ changes $c_1$ by $2\lambda c_2$ at the EP while leaving the logarithmic coefficient fixed. This is a basis convention, distinct from a local contact-term ambiguity.

## Ward identities and what two distances can determine

On a closed pair of scalar primaries with unbroken conformal symmetry, $d\geq2$, write

$$
H=i\tilde D=\begin{pmatrix}\bar\Delta&1\\\eta&\bar\Delta\end{pmatrix}
=\bar\Delta I+N,\qquad N^2=\eta I.
$$

Translation/rotation invariance gives symmetric $G(r)$. Dilatation and special conformal Ward identities independently give

$$
rG'=-HG-GH^T,\qquad HG=GH^T.
$$

The latter condition removes the third independent normalization of a symmetric $2\times2$ matrix. Hence

$$
G(r)=e^{-2H\ln r}G(1),\qquad
G(1)=\begin{pmatrix}c_1&c_2\\c_2&\eta c_1\end{pmatrix}.
$$

This derivation verifies the holographic form without assuming a particular bulk action. It is conditional on a conformal theory/state with this closed multiplet; a real matrix alone does not construct that theory.

App. A.2 gives an explicit real basis change. For $H_0=\begin{pmatrix}a&b\\c&e\end{pmatrix}$, $b\ne0$, use $B=\begin{pmatrix}1&0\\(a-e)/2&b\end{pmatrix}$; then $BH_0B^{-1}$ has $\bar\Delta=(a+e)/2$ and $\eta=(a-e)^2/4+bc$. If $b=0,c\ne0$ exchange fields; if diagonal unequal use a mixed cyclic vector. A scalar matrix is excluded. This is a pointwise normal form; its chosen basis need not be smooth globally over all parameter loci.

For $\det G(1)\ne0$,

$$
G(r)G(r_0)^{-1}=e^{-2H\ln(r/r_0)}.
$$

**Failed — unrestricted inference after Eqs. (4.26)–(4.28), PDF p. 14.** The matrix identity is correct, but its eigenvalues need not be nonreal when $\eta<0$. For example, take $\eta=-1$, $N=\begin{pmatrix}0&1\\-1&0\end{pmatrix}$ and $\ln(r/r_0)=\pi$. Then $e^{-2\pi N}=I$, so the ratio is a positive scalar matrix although $H$ has conjugate complex eigenvalues. More generally the alias occurs at $2\kappa\ln(r/r_0)\in\pi\mathbb Z$; a matrix logarithm also has branch ambiguity. A nonreal pair is a useful sufficient diagnostic, while a real pair at one distance ratio is inconclusive. Multiple nearby scales or the local generator $H=-\tfrac12(rG')G^{-1}$ remove this particular ambiguity. At the genuine EP, $N\ne0$, $\ln(r/r_0)\ne0$ retains a Jordan block.

## Pseudo-Hermiticity and the actual PT assumptions

For the holographic constants,

$$
\det G(1)=\eta c_1^2-c_2^2
=-\frac{4\widetilde A_+\widetilde A_-}{\beta^2}<0.
$$

For real dimensions both factors are positive; for conjugate dimensions their product is $|\widetilde A_+|^2$. Thus the conventional Gram form is indefinite, including the EP. With the paper's operator-index convention the coefficient-state Hamiltonian is $H^T$; $HG=GH^T$ is its self-adjointness relation in this real indefinite form. Do not replace this with positive-definite unitarity.

Source-derived physical identification: continue to Lorentzian global AdS, use $\mathcal T f(t,\rho,\Omega)=f^*(-t,\rho,\Omega)$, assume boundary conditions, quantization and vacuum preserve this symmetry, and choose parity-even scalar operators and real PT-even sources. Then PT acts as conjugation in this primary basis. The eigenoperators are $\mathscr O_\pm=\mathscr O_1\pm\mathscr O_2/\sqrt\eta$; real coefficients give invariant eigenstates for $\eta>0$, conjugate coefficients give exchanged states for $\eta<0$. The coalescing eigenoperator at zero is $\mathscr O_2$ after a regular rescaling. A physical quantum PT operator and a positive inner product are not constructed by the classical bulk calculation.

App. A.1 explains the kinetic restriction: for real constant symmetric $K,V$ with invertible $K$, a definite $K$ can be reduced to $\pm I$, making $K^{-1}V$ diagonalizable over the reals. An EP therefore requires indefinite $K$. Null-basis rescalings and field exchange bring the nontrivial two-field potential to the stated model, up to an overall action sign. This classification excludes derivative mixing beyond constant $K$, extra fields, and singular kinetic matrices.

## Global AdS modes and thermal BTZ poles

For global $AdS_{d+1}$, $ds^2=\cos^{-2}\rho[-dt^2+d\rho^2+\sin^2\rho\,d\Omega_{d-1}^2]$, set $y=\sin^2\rho$ and $R=y^{\ell/2}(1-y)^{\Delta/2}F(y)$. Independent radial reduction gives

$$
y(1-y)F''+[\ell+d/2-(\ell+\Delta+1)y]F'
+\frac{\omega^2-(\ell+\Delta)^2}{4}F=0.
$$

Regularity at the origin and source-free standard falloff select $F={}_2F_1(-n,\Delta+\ell+n;\ell+d/2;y)$ and the positive-frequency branch

$$
\omega_{\pm,n\ell}=\Delta_\pm+\ell+2n,\qquad n\in\mathbb Z_{\geq0}.
$$

For complex $\Delta_\pm$ one mode grows and one decays as $e^{\pm\kappa t}$; at coalescence $(e^{-i\omega_+t}-e^{-i\omega_-t})/(\omega_+-\omega_-)\to-it e^{-i\omega t}$. Boundary logarithms and time-polynomial generalized modes are two aspects of the same Jordan limit.

For planar nonrotating BTZ, $d=2$, $x\in\mathbb R$, temperature $T_H>0$, the Euclidean conformal map replaces $r$ by

$$
r_T=\frac{|\sinh[\pi T_H(x+i\tau)]|}{\pi T_H},\qquad
G(\tau,x)=r_T^{-2H}G(1).
$$

Large-distance correlation lengths are $1/(2\pi T_H\Delta_\pm)$ for real dimensions. At the EP the spatial decay includes $(a+b|x|)e^{-2\pi T_H\Delta|x|}$; for complex dimensions there is a real envelope with wave number $2\pi T_H\kappa$.

To reproduce the pole statement independently, set $r_h=2\pi T_H$, $f(r)=r^2-r_h^2$, $y=1-r_h^2/r^2$ and

$$
R=y^{-i\omega/(2r_h)}(1-y)^{\Delta/2}F(y),\quad
a=\Delta/2-\frac{i(\omega-k)}{2r_h},\quad
b=\Delta/2-\frac{i(\omega+k)}{2r_h},\quad c=1-\frac{i\omega}{r_h}.
$$

The KG radial equation reduces to the hypergeometric equation with $(a,b,c)$. The ingoing solution has source coefficient proportional to $\Gamma(c)\Gamma(\Delta-1)/[\Gamma(a)\Gamma(b)]$, and response/source ratio proportional to

$$
\frac{\Gamma(1-\Delta)}{\Gamma(\Delta-1)}
\frac{\Gamma(a)\Gamma(b)}{\Gamma(c-a)\Gamma(c-b)}.
$$

For generic noninteger $\Delta$ without cancellations, poles occur at

$$
\omega=\pm k-4\pi iT_H(n+\Delta_\pm/2).
$$

All these BTZ poles are damped since $\operatorname{Re}\Delta_\pm>1$, in contrast with the global-AdS growing branch. At fixed $n,k$ and fixed sign of $k$, the channel difference is $-4\pi iT_H\delta$: imaginary for real $\delta$, real for $\delta=i\kappa$. The “over/critical/underdamped” terminology concerns the two-channel thermal response at fixed background parameters, not a PT-invariant dissipative Hamiltonian.

At late time and fixed $x$, analytic continuation gives an exponential matrix $e^{-2\pi T_HtH}$ multiplied by a time-independent matrix containing the discontinuity/normalization (including $\sin\pi H$). Thus generic EP response contains $t e^{-2\pi T_H\Delta t}$; the prefactor can cancel terms at integer dimensions, explicitly excluded in the paper's discussion. At fixed nonzero momentum the single-channel poles are simple, so the dimension derivative producing $G_R^{11}$ makes them double. At $k=0$, the two gamma poles coincide: single-channel/$G_R^{12}$ poles are double, and $G_R^{11}$ is generically triple, giving $t^2e^{-2\pi T_H\Delta t}$ for a spatially uniform source. **Fixed position and fixed zero momentum are distinct limits.** No full contact-term normalization of the retarded function is claimed by this pole calculation.

## Reusable objects and derivation ledger

| Input | Intermediate result | Output for AdS/CPS work |
| --- | --- | --- |
| nondegenerate indefinite $K$, nilpotent limit of $M$ | two opposite-sign channels | an EP need not be a symplectic rank loss |
| $s=\beta\delta$ and fixed original sources | finite difference divided by $s$ | mass-derivative/logarithmic mode with correct normalization |
| finite $\zeta$ action plus counterterms | source-response coefficient $2\Delta-d$ | finite Hessian including the sign from $W=-S$ |
| dilatation + SCT Ward identities | $HG=GH^T$ | two-constant matrix correlator |
| $N^2=\eta I$ | hyperbolic/trigonometric/nilpotent exponential | continuous EP limit and alias warning |
| radial regularity + standard source-free falloff | hypergeometric polynomial | global normal frequencies |
| ingoing BTZ solution | gamma response/source ratio | QNM locations and generic pole orders |

The corresponding fixed-metric bulk potential current is $\theta^\mu=-\nabla^\mu\phi_2\delta\phi_1-\nabla^\mu\phi_1\delta\phi_2$ (with the volume form restored). This makes the original canonical pairing transparent before diagonalization; singular eigenmode normalization at $\epsilon=0$ does not erase a canonical field. Translating to the vault's scalar mode expansion should retain both generalized solutions and the source normalization $J_2=\beta\phi_{2(0)}$. No claim about alternate quantization, regional state sewing, or positivity follows from the present correlator calculation.

## Verification log

**Checked — xAct:** variational derivatives of the two-field action reproduce both coupled KG equations with zero residual.

**Checked — Mathematica:** kinetic/potential diagonalization; general real $2\times2$ basis transformation; kernel normalization integral under $\operatorname{Re}\Delta>d/2$; KG and generalized log-kernel PDEs; counterterm basis change; finite source-response coefficients; the source Hessian with $\beta$ factors; both Ward identities; the Jordan limit; Gram determinant; digamma normalization derivative; global-AdS and BTZ radial reductions; global polynomial quantization condition; coalescing time mode. All stated residuals were zero. Inverse-transform residues for poles of order 1–3 independently give the expected time-polynomial factors.

**Checked — finite numerical pole check:** at $r_h=1$, $k=0$, $\Delta=3/2$, $\omega_0=-3i/2$, the gamma-ratio factor $f$ obeys $x^2f(\omega_0+x)\to-1/\pi$ and $x^3\partial_\Delta f(\omega_0+x)\to2i/\pi$. At $x=10^{-4},10^{-7},10^{-10}$, residual magnitudes decreased to about $2\times10^{-11}$. This is a parameter-specific check of double/triple poles, not a proof at resonant integer dimensions.

**Failed:** the unrestricted two-distance phase-detection claim, verified by $e^{-2\pi N}=I$ for $N^2=-I$ and confirmed against PDF p. 14. The central Ward identity and correlator formulas survive this correction.

**Verified:** the source-to-correlator algebra, generic radial spectral conditions and the explicit alias witness under the stated assumptions.

**Assumptions:** standard branch in both channels, principal complex roots, noncoincident $r>0$, fixed source basis, finite radial cutoff before subtraction, generic nonresonant dimensions for the displayed counterterm/pole calculation, regular global modes or ingoing BTZ modes as appropriate, unbroken conformal symmetry for Ward identities. Physical PT additionally requires the boundary/quantization/vacuum assumptions stated above.

**Not independently verified:** a nonperturbative CFT realizing the entire deformation; positive-inner-product quantization; all derivative/logarithmic counterterms and coincident-point distributions; uniform interchange of EP/cutoff/coincidence limits; complete real-time contact normalizations; interacting/gravitational extensions and quenches. No Sage representation computation was needed beyond the explicitly checked elementary matrix normal form.

**Blocked:** no unresolved retrieval or computation blocker. `pdftotext` reported a font-type mismatch; official TeX and rendered pages supplied the relevant formulas and wording. All retrieval and check artifacts remained outside the vault. Same-day overview: [[2026_10_19_overview]].
