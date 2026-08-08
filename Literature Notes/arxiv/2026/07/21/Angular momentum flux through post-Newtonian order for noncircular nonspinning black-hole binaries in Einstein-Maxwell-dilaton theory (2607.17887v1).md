---
paper id: 2607.17887v1
title: Angular momentum flux through post-Newtonian order for noncircular nonspinning black-hole binaries in Einstein-Maxwell-dilaton theory
authors:
  - Qi Tan
  - Peng-Cheng Li
publication date: 2026-07-20T12:37
abstract: |-
  The paper computes the instantaneous angular-momentum flux of generic noncircular, nonspinning black-hole binaries in Einstein-Maxwell-dilaton theory through relative first post-Newtonian order. It constructs scalar, electromagnetic, and tensor wave-zone fields with DIRE, separates dipole, quadrupole, and octupole channels, retains finite-radius R^{-2} waveform terms, and checks circular-balance, general-relativistic, and dipole-suppression limits.
comments: "26 pages"
url: https://arxiv.org/abs/2607.17887v1
summary: "A reusable three-channel flux and balance-law benchmark, technically explicit but closer to PN model calculations than to covariant phase-space charges."
tags: []
---

Back to [[2026_07_21_overview]].

The useful output is a clean comparison between scalar, electromagnetic, and tensor angular-momentum loss for an eccentric binary. It is a balance-law calculation, but not a Wald/CPS charge construction: the radiation fluxes come from scalar and Maxwell stress tensors and the TT Landau--Lifshitz pseudotensor in a relaxed post-Newtonian gauge. That distinction is why this is medium rather than high priority.

# Einstein-Frame EMd System and Compact-Body Data

The bulk and effective-particle action is

$$
\begin{aligned}
S={}&\frac{c^3}{16\pi G}\int d^4x\sqrt{-g}
\left[R-2(\partial\varphi)^2-\frac{G}{c^4}e^{-2a\varphi}F_{\mu\nu}F^{\mu\nu}\right]\\
&-\sum_A\int dt\left[
\mathfrak m_A(\varphi)c\sqrt{-g_{\mu\nu}v_A^\mu v_A^\nu}
-\frac{q_A}{c}A_\mu v_A^\mu
\right].
\end{aligned}
\tag{source Eqs. 2.1--2.2}
$$

The scalar dependence of the skeletonized mass is expanded at the asymptotic background $\varphi_0$:

$$\begin{align}
\mathfrak m_A(\varphi)=m_A\left[ 1+\alpha_A\delta\varphi +\frac12(\alpha_A^2+\beta_A)\delta\varphi^2+O(c^{-6}) \right],
\end{align}$$

$$\begin{align}
\alpha_A=\left.\frac{d\log\mathfrak m_A}{d\varphi}\right|_{\varphi_0}, \qquad \beta_A=\left.\frac{d^2\log\mathfrak m_A}{d\varphi^2}\right|_{\varphi_0}.
\end{align}$$

Thus each body carries a mass $m_A$, electric charge $q_A$, scalar sensitivity $\alpha_A$, and nonlinear scalar response $\beta_A$. The dilaton coupling is $a$. Electric charges are normalized so that $q_A^2$ has the same dimensions as $Gm_A^2$.

In harmonic/Lorenz relaxed variables,

$$\begin{align}
h^{\mu\nu}=\eta^{\mu\nu}-\sqrt{-g}\,g^{\mu\nu}, \qquad \partial_\nu h^{\mu\nu}=0,
\end{align}$$

the coupled equations are written as flat wave equations for $h^{\mu\nu}$, $\varphi$, and $A^\mu$ with compact matter sources plus nonlinear field sources. DIRE splits each retarded integral into a near-zone region $\mathcal M$ and a wave-zone region $\mathcal W$. The source moments are evaluated in $\mathcal M$; Appendix A shows that the relevant noncompact $\mathcal W$ corrections begin at $R^{-2}$.

# Center-of-Mass Dynamics and Effective Couplings

Let

$$\begin{align}
M=m_1+m_2,\qquad X_A=\frac{m_A}{M},\qquad \eta=\frac{m_1m_2}{M},\qquad \nu=X_1X_2,
\end{align}$$

$$\begin{align}
\mathbf r=\mathbf x_1-\mathbf x_2,\qquad r=|\mathbf r|,\qquad \mathbf n=\mathbf r/r,\qquad \mathbf v=\dot{\mathbf r},\qquad \dot r=\mathbf n\cdot\mathbf v.
\end{align}$$

Three combinations carry nearly all model dependence:

$$\begin{align}
D=1+\alpha_1\alpha_2-\frac{q_1q_2}{GM\eta}, \qquad G_{12}=GD,
\end{align}$$

$$\begin{align}
\Gamma=\frac{3-\alpha_1\alpha_2}{D}+\nu,
\end{align}$$

$$\begin{aligned}
\Pi={}&(1+\alpha_1\alpha_2)^2 +X_1\alpha_1^2\beta_2+X_2\alpha_2^2\beta_1\\
&-2\frac{q_1q_2}{GM\eta}
(1+a\alpha_1X_1+a\alpha_2X_2)\\
&+X_1\frac{q_2^2}{GM\eta}(1+a\alpha_1) +X_2\frac{q_1^2}{GM\eta}(1+a\alpha_2).
\end{aligned}$$

$G_{12}$ is the effective Newtonian attraction, $\Gamma$ enters the $v^2/r$ 1PN terms, and $\Pi$ packages the nonlinear $1/r^2$ conservative potential. Bound-orbit language implicitly assumes $G_{12}>0$; the paper does not analyze the repulsive or zero-coupling region.

The near-zone angular momentum is defined from the relaxed source by

$$\begin{align}
L^z=\frac1c\int_{\mathcal M}(x\mu^{y0}-y\mu^{x0})\,d^3x,
\end{align}$$

and reduces through 1PN to

$$\begin{align}
L^z=\eta h\left[ 1+\frac{1-3\nu}{2c^2}v^2 +\Gamma\frac{G_{12}M}{c^2r} \right]+O(c^{-4}), \qquad h=|\mathbf r\times\mathbf v|.
\end{align}$$

Here $h$ is the Newtonian specific angular momentum, not the gothic perturbation $h^{\mu\nu}$.

# Wave-Zone Fields and the $R^{-1}$ Versus $R^{-2}$ Split

The scalar and vector fields are expanded in source moments, while the gravitational field uses Epstein--Wagoner moments followed by TT projection

$$\begin{align}
\Lambda^{jk}{}_{lm}(\mathbf N) =P^j{}_lP^k{}_m-\frac12P^{jk}P_{lm}, \qquad P^{jk}=\delta^{jk}-N^jN^k.
\end{align}$$

Only the $R^{-1}$ radiative pieces enter the null-infinity flux. Appendix A nevertheless retains explicit wave-zone contributions at $R^{-2}$, including

$$\begin{align}
\varphi_{\mathcal W}=\frac{aGQ^2}{2c^4R^2}, \qquad Q=q_1+q_2,
\end{align}$$

and a gravitational term proportional to $N^jN^k/R^2$. Its TT projection vanishes because $P^j{}_lN^l=0$.

For

$$\begin{align}
f=\frac{f_1(\tau,\mathbf N)}R+\frac{f_2(\tau,\mathbf N)}{R^2}+\cdots, \qquad \tau=t-R/c,
\end{align}$$

one has $\dot f=O(R^{-1})$ and $\eth_T f=O(R^{-2})$. The scalar and EM fluxes scale as $R^3\dot f\,\eth_Tf$, and the tensor flux as $R^2h\dot h$. Replacing one $R^{-1}$ field by an $R^{-2}$ term suppresses the result by $R^{-1}$, so it vanishes at null infinity. The retained $R^{-2}$ coefficients are finite-extraction-radius waveform information, not new asymptotic charges.

# Stress-Tensor Angular Momentum at Null Infinity

The common antisymmetric flux definition is

$$\begin{align}
\mathcal J^{jk} =R^2\int(x^jT^{kl}-x^kT^{jl})N_l\,d\Omega, \qquad \mathcal J^i=\frac12\epsilon^i{}_{jk}\mathcal J^{jk}.
\end{align}$$

For a function of $(\tau,R,\mathbf N)$,

$$\begin{align}
\partial_j=-\frac{N_j}{c}\partial_\tau+N_j\eth_R+\eth_j^T.
\end{align}$$

The scalar flux is

$$\begin{align}
\mathcal J_\varphi^{jk} =-\frac{c^3}{4\pi G}\int R^3\dot\varphi (N^j\eth_T^k\varphi-N^k\eth_T^j\varphi)\,d\Omega, \tag{source Eq. 5.3a}
\end{align}$$

and the tensor channel is

$$
\begin{aligned}
\mathcal J_{\rm LL}^{jk}
=\frac{c^3}{16\pi G}\int R^2\bigg[&
h_{\rm TT}^{jp}\dot h_{\rm TT}^{kp}
-h_{\rm TT}^{kp}\dot h_{\rm TT}^{jp}\\
&-\frac12\dot h_{\rm TT}^{pq}
(x^j\partial^k-x^k\partial^j)h_{pq}^{\rm TT}
\bigg]d\Omega.
\end{aligned}
\tag{source Eq. 5.3c}
$$

The first two tensor terms rotate polarization indices; the last differentiates the angular dependence. This is a TT Landau--Lifshitz flux, not a covariant phase-space surface charge. Appendix C derives the scalar reduction explicitly but only quotes the final electromagnetic and LL formulas, so their stress-tensor/pseudotensor reductions remain source-derived.

# Dipole, Quadrupole, and Octupole Hierarchy

Every final channel is proportional to

$$\begin{align}
A^{jk}=n^jv^k-v^jn^k,
\end{align}$$

so its dual vector is parallel to $\mathbf n\times\mathbf v$. At this order radiation changes the magnitude of orbital angular momentum but does not tilt the plane.

For $\Delta_\alpha=\alpha_1-\alpha_2$, the scalar dipole is

$$\begin{align}
\mathcal J_{\varphi,\rm dip}^{jk} =\frac{G}{3c^3}\frac{G_{12}M\eta^2}{r^2} \left[ \Delta_\alpha^2 +j^\varphi_{\dot r^2}\frac{\dot r^2}{c^2} +j^\varphi_{v^2}\frac{v^2}{c^2} +j^\varphi_{1/r}\frac{G_{12}M}{c^2r} \right]A^{jk}.
\end{align}$$

Each relative-1PN coefficient has an overall $\Delta_\alpha$, so the complete dipole vanishes for $\alpha_1=\alpha_2$. The scalar quadrupole begins at $c^{-5}$:

$$\begin{align}
\mathcal J_{\varphi,\rm quad}^{jk} =\frac{4G}{15c^5}\frac{G_{12}M\eta^2}{r^2} \left(2\frac{G_{12}M}{r}+2v^2-3\dot r^2\right) (\alpha_2X_1+\alpha_1X_2)^2A^{jk}.
\end{align}$$

For

$$\begin{align}
\Delta_q=\frac{q_2}{m_2}-\frac{q_1}{m_1},
\end{align}$$

the electromagnetic dipole is

$$\begin{align}
\mathcal J_{A,\rm dip}^{jk} =\frac{2}{3c^3}\frac{G_{12}M\eta^2}{r^2} \left[ \Delta_q^2 +j^A_{\dot r^2}\frac{\dot r^2}{c^2} +j^A_{v^2}\frac{v^2}{c^2} +j^A_{1/r}\frac{G_{12}M}{c^2r} \right]A^{jk}.
\end{align}$$

All correction coefficients carry $\Delta_q$; equal charge-to-mass ratios suppress the full EM dipole. The tensor channel begins with

$$\begin{align}
\mathcal J_{\rm LL,quad}^{jk} =\frac{8G}{5c^5}\frac{G_{12}M\eta^2}{r^2} \left[ 2\frac{G_{12}M}{r}-3\dot r^2+2v^2 +\frac1{c^2}j^{\rm LL}_{\rm quad} \right]A^{jk}.
\end{align}$$

The coefficient $j^{\rm LL}_{\rm quad}$ is a polynomial in $(G_{12}M/r)^2$, $(G_{12}M/r)v^2$, $(G_{12}M/r)\dot r^2$, $v^4$, $\dot r^2v^2$, and $\dot r^4$, with coefficients built from $\nu,\Gamma,G^2\Pi/G_{12}^2$. The tensor octupole is proportional to $(X_1-X_2)^2/c^7$, so it vanishes at equal mass. Cross terms between unequal multipole ranks vanish after the sphere integral.

| channel | leading multipole | scaling | suppression condition |
|---|---:|---:|---|
| scalar | dipole | $c^{-3}$ | $\alpha_1=\alpha_2$ |
| electromagnetic | dipole | $c^{-3}$ | $q_1/m_1=q_2/m_2$ |
| scalar/EM | quadrupole | $c^{-5}$ | no generic suppression |
| tensor | quadrupole | $c^{-5}$ | none |
| tensor | octupole | $c^{-7}$ | $X_1=X_2$ |

The scalar and EM dipoles are formally $-1$PN relative to the tensor quadrupole.

# Balance Laws and Consistency Limits

The convention is positive outward flux,

$$\begin{align}
\left\langle\frac{dL^z}{dt}\right\rangle =-\langle\mathcal J^z\rangle.
\end{align}$$

Only orbit-averaged mechanical balance is asserted. An instantaneous equality would generally require a near-zone Schott angular momentum, which the paper does not construct.

For circular motion, $\dot r=0$, $v=r\Omega$, and

$$\begin{align}
\Omega^2=\frac{G_{12}M}{r^3}\left[ 1+\left(-\frac12+\frac32\nu-\frac12\Gamma -\frac{G^2}{G_{12}^2}\Pi\right) \frac{G_{12}M}{c^2r} \right]+O(c^{-4}).
\end{align}$$

The paper reports $\Omega\mathcal J^z=\mathcal F$ through relative 1PN against a previously published energy flux. Because that complete comparison formula is external, this is not a self-contained check.

In the GR limit

$$\begin{align}
\alpha_A=\beta_A=q_A=0, \qquad G_{12}\to G,\quad \Gamma\to3+\nu,\quad \Pi\to1,
\end{align}$$

the scalar and EM channels vanish and the tensor expressions are reported to reduce to generic-orbit GR results.

# Transfer to Charge and Boundary Calculations

- The asymptotic current $R^2x^{[j}T^{k]l}N_l$ and the retarded/radial/transverse derivative split form a useful flat-asymptotic benchmark for a CPS flux formula.
- The $R^{-1}$ versus $R^{-2}$ power count prevents finite-radius waveform corrections from being misidentified as extra null-infinity charges.
- The three-channel decomposition tests whether a balance law includes every radiative degree of freedom and whether dipole suppression follows from equality of body charges.
- The missing step is exactly the one relevant to the vault: derive the same flux from an action-level presymplectic current and identify the Schott/corner term needed for instantaneous balance.

# Verification Note

**Checked.** Mathematica independently verified $N_jh_{\rm TT}^{jk}=0$, $\delta_{jk}h_{\rm TT}^{jk}=0$, and $\Lambda(N^jN^k)=0$ under $\mathbf N^2=1$. It also verified algebraically that the displayed scalar dipole terms vanish for $\Delta_\alpha=0$ and the EM dipole terms vanish for $\Delta_q=0$. The inverse-radius power count was reconstructed directly from the derivative split.

**Source-derived boundary.** The long center-of-mass reduction, full $j^\varphi$, $j^A$, and $j^{\rm LL}_{\rm quad}$ polynomials, and Epstein--Wagoner moment coefficients were not independently regenerated. Appendix C omits the EM and LL derivations, and the circular energy-flux check depends on an external source.

**Presentation hazards.** Appendix B uses $r$ once where the surrounding particle-labelled tensor uses $r_{AB}$; the extracted TeX also contains an unmatched end{widetext}. Neither expression was used above.
