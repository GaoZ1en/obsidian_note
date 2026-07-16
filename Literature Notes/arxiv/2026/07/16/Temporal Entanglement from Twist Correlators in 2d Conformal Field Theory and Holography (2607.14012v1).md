---
paper id: 2607.14012v1
title: Temporal Entanglement from Twist Correlators in 2d Conformal Field Theory and Holography
authors:
  - Alice Bernamonti
  - Federico Galli
  - Michal P. Heller
  - Fabio Ori
  - Alexandre Serantes
publication date: 2026-07-15T16:40
abstract: |-
  The paper defines timelike entanglement and Rényi entropies by analytically continuing replica twist correlators to time-ordered timelike insertions. In holographic 2d CFTs, the corresponding semiclassical saddles are boundary-anchored complex geodesics and, at finite replica index, complex cosmic branes. The construction is tested in vacuum, thermal, locally and globally excited states and in AdS3-Vaidya; operator ordering fixes a quantized imaginary part while the smallest real saddle length selects the dominant contribution.
comments: "42 pages + appendices, 5+6 figures"
url: https://arxiv.org/abs/2607.14012v1
summary: "A boundary-first derivation of complex timelike entropy saddles that complements current timelike-first-law work and supplies explicit complex-geodesic and replica-brane formulas."
tags: []
---

[[2026_07_16_overview|Back to the daily overview]]

The useful move is to continue the replica observable, not merely a final spacelike entropy formula. That keeps the $i\varepsilon$ prescription, operator ordering, replica index, and bulk saddle on the same analytic sheet. It also explains why the imaginary part is robust data rather than an arbitrary choice added after extremization.

## Ordered replica twists define the timelike quantity

For a spatial interval $A$, the replica partition function is a twist two-point function,

$$
\operatorname{Tr}\rho_A^n
=\langle\sigma_n(z_1,\bar z_1)\widetilde\sigma_n(z_2,\bar z_2)\rangle_\rho,
$$

with

$$
h_n=\bar h_n=\frac{c}{24}\left(n-\frac1n\right).
$$

The paper defines the timelike continuation at the correlator level:

$$
S_{A,n}^{(T)}
=\frac1{1-n}\log\langle T\{\sigma_n(t_1,x_1)\widetilde\sigma_n(t_2,x_2)\}\rangle_\rho,
$$

$$
S_A^{(T)}=\lim_{n\to1}S_{A,n}^{(T)}.
$$

The label $A$ now denotes an ordered pair of timelike endpoints. Time ordering is part of the definition; changing it selects the complex-conjugate sheet.

For the vacuum on the line,

$$
\langle\sigma_n(z_1,\bar z_1)\widetilde\sigma_n(z_2,\bar z_2)\rangle
=\frac1{[(z_1-z_2)(\bar z_1-\bar z_2)]^{2h_n}}.
$$

For $\Delta t>0$ and $\Delta t^2>\Delta x^2$, the time-ordered continuation is

$$
[-(\Delta t-i\varepsilon)^2+\Delta x^2]^{-2h_n}
=[e^{i\pi}(\Delta t^2-\Delta x^2)]^{-2h_n}.
$$

Consequently,

$$
S_{A,n}^{(T)}
=\frac{c}{6}\left(1+\frac1n\right)
\left[
\log\frac{\sqrt{\Delta t^2-\Delta x^2}}{\delta}
+\frac{i\pi}{2}
\right],
$$

and

$$
S_A^{(T)}
=\frac{c}{3}\log\frac{\sqrt{\Delta t^2-\Delta x^2}}{\delta}
+i\frac{\pi c}{6}.
$$

Anti-time ordering reverses the sign of the imaginary term. Thus the phase is monodromy data of the twist correlator.

## Complex geodesics reproduce the twist sheet

In Poincaré AdS$_3$,

$$
ds^2=\frac{-dt^2+dy^2+dx^2}{y^2}.
$$

For endpoints at $y=\epsilon$, a geodesic parametrization is

$$
t(\lambda)=\frac{\Delta t}{2}\tanh\lambda,
\qquad
x(\lambda)=\frac{\Delta x}{2}\tanh\lambda,
$$

$$
y(\lambda)=\frac{\sqrt{\Delta x^2-\Delta t^2}}{2}\operatorname{sech}\lambda.
$$

For spacelike endpoints this is real. Timelike separation makes both the radial profile and the affine contour complex. The endpoint condition gives

$$
\mathcal L
=\log\frac{-\Delta t^2+\Delta x^2}{\epsilon^2}.
$$

The same time-ordered $i\varepsilon$ continuation selects

$$
\mathcal L
=\log\frac{\Delta t^2-\Delta x^2}{\epsilon^2}+i\pi.
$$

Using

$$
\langle\sigma_n\widetilde\sigma_n\rangle
\sim e^{-2h_n\delta\mathcal L}
$$

then returns the boundary correlator and its phase. The paper regards continuously deformable paths in the complex $\lambda$-plane as representations of one saddle; what matters is the homotopy class fixed by the endpoints and singularities.

## Finite replica index becomes a complex cosmic brane

The authors next keep $n>1$. Replica twists source a Bañados geometry whose boundary stress tensor contains the heavy-twist data. In the quotient description, the refined Rényi entropy is the length of a codimension-two cosmic brane with $n$-dependent tension.

For timelike endpoints the boundary conformal map, the bulk Poincaré coordinates, and the brane profile all become complex. With

$$
\alpha_n=\frac1n,
$$

the regularized brane length has the form

$$
\mathcal L_n
=\log\frac{\Delta t^{2\alpha_n}}
{\alpha_n^2\epsilon^2\delta^{2\alpha_n-2}}
+i\pi\alpha_n.
$$

This is the finite-$n$ geometric counterpart of continuing the full twist correlator. It is stronger than continuing only $S_A$: it retains the conical defect and the replica-index dependence needed to reconstruct $S_{A,n}^{(T)}$.

## Imaginary part as causal monodromy

On the line, a single lightcone crossing gives $\operatorname{Im}S_A^{(T)}=\pi c/6$. On a spatial circle, the continued correlator can pass successive image lightcones, so the phase changes in integer units of $\pi c/6$. The imaginary part is therefore locally constant and records the sheet/ordering history, while the real part depends on interval size and state.

This separation persists in the examples treated here:

- high-energy eigenstates map to conical-defect or BTZ microstate geometries;
- local operator quenches modify the real geodesic length according to the causal relation to the excitation;
- thermal states on the line reproduce the planar AdS$_3$ black-hole saddle;
- global quenches interpolate between vacuum and thermal behavior while keeping the single-interval imaginary part fixed on the line.

For a global quench and $t_1<0<t_2$, the source autocorrelator is

$$
G(t_1,t_2)=e^{-2\pi i h_Q}
\left[
\frac{\beta}{\pi}\sinh\frac{\pi t_2}{\beta}
-t_1\cosh\frac{\pi t_2}{\beta}
\right]^{-4h_Q}.
$$

Taking $h_Q\to h_n$ and $n\to1$ gives

$$
S_A^{(T)}
=\frac{c}{3}\log\left[
\frac1\delta\left(
\frac{\beta}{\pi}\sinh\frac{\pi t_2}{\beta}
-t_1\cosh\frac{\pi t_2}{\beta}
\right)
\right]
+i\frac{\pi c}{6}.
$$

## AdS3-Vaidya changes the saddle prescription

The collapse geometry is

$$
ds^2=\frac1{y^2}
\left[-(1-m(v)y^2)dv^2-2\,dv\,dy+dx^2\right],
$$

with $m(v)=\Theta(v)/y_H^2$. A complex geodesic joining $t_1<0$ to $t_2>0$ has an AdS branch and a black-hole branch meeting the null shell. Extremizing the sum of their lengths gives a refraction condition. The paper argues that imposing real AdS-boundary endpoints and continuing the correlator selects a result different from earlier piecewise-geodesic prescriptions, while matching the CFT autocorrelator.

The reusable rule is: solve the complex saddle with the boundary $i\varepsilon$ data held fixed, then select the admissible saddle with smallest real action. Do not assemble real segments first and append a phase afterward.

## Verification note

Mathematica independently checked two central algebraic steps:

1. Inserting $h_n=\frac{c}{24}(n-1/n)$ into the continued two-point function gives

   $$
   S_{A,n}^{(T)}
   =\frac{c(n+1)}{12n}(2L+i\pi),
   \qquad
   \lim_{n\to1}S_{A,n}^{(T)}
   =\frac{c}{6}(2L+i\pi),
   $$

   where $L=\log(\sqrt{\Delta t^2-\Delta x^2}/\delta)$.

2. Substitution of the stated Poincaré geodesic into the metric gives $g(\dot\gamma,\dot\gamma)=1$, so $\lambda$ is indeed unit affine length for the spacelike sheet before analytic continuation.

The Bañados coordinate map, cosmic-brane backreaction, all excited-state Virasoro-block reductions, and the Vaidya refraction solution are source-derived and were not independently reproduced. The appendix formulas were inspected through the source and rendered PDF where complex branches and equation layout mattered.

## Relation to current work

This paper complements the 2026-07-15 timelike entanglement first-law recommendation. The earlier paper asks how a timelike entropy variation constrains bulk dynamics; this paper supplies the boundary replica observable and the complex saddle whose variation should be taken. For the local project, the next concrete test is to vary the ordered twist correlator and the complex geodesic simultaneously, keeping the branch choice explicit, before comparing to any CPS or Iyer--Wald identity.
