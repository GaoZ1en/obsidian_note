---
paper id: 2609.12047v1
title: Mutual Information in spacetime
authors:
  - Raúl E. Arias
  - Marina Huerta
  - Pedro J. Martinez
publication date: 2026-09-10
abstract: |-
  The paper implements Sorkin's Gaussian entropy prescription directly on spacetime regions. It separates the continuum reduced smearing space from a finite spectral compression, proves exact quotient descriptions for chiral fields and an infrared-regulated massless scalar, and numerically compares massive-scalar mutual information for a timelike lens and its enveloping diamond.
comments: "41 pages, 7 figures"
url: https://arxiv.org/abs/2609.12047v1
summary: "Directly relevant to regional algebra sewing: the analytic quotient maps are reusable, while the massive timelike-tube result is finite-cutoff numerical evidence rather than a new proof of the continuum theorem."
tags: []
---

Daily overview: [[2026_09_14_overview]]

# Verdict

**Correct under the precise distinctions made below.** The paper gives analytic proofs of the chiral projection quotient and of a special null-marginal quotient for the infrared-regulated massless scalar. For the massive scalar, equality of the completed lens and diamond algebras is an input from the timelike-tube theorem; the calculation supplies finite-cutoff numerical evidence that two different truncations approach the same mutual information. It is not a numerical proof of the continuum theorem.

There is also an essential regulator qualification. A null direction of the restricted continuum commutator may be quotiented only when the state covariance annihilates it as well. If a finite compression creates a commutator null vector with nonzero Wightman variance, deleting it by SVD restricts the retained finite observable algebra. The resulting entropy is regulator-dependent data, not the entropy of the full degenerate compressed algebra.

# Why This Is High Priority

The central object is exactly the regional algebra described through test-function quotients and Gaussian two-point data:

$$\begin{align}
\mathcal E(\mathcal R) = \frac{C_c^\infty(\mathcal R)}{\text{smearings invisible to the field}}.
\end{align}$$

The paper then asks when geometrically different regions generate the same algebra and whether a covariant mutual-information computation sees that equality. This is close to the vault's regional/global sewing programme, but the paper works with additive local algebras and Gaussian spectral data rather than an action-first boundary-response construction.

# How to Read the Paper

- **Core formalism:** Sec. 2.1--2.2, especially Eqs. (2.3)--(2.14). Track the distinction between the continuum quotient and SVD deletion after finite compression.
- **Algebraic core:** Sec. 3.1. The map $T_{\mathcal R}$ and its kernel give the cleanest exact result in the paper.
- **Massless scalar:** Sec. 4.1--4.2. The compatible pair of null marginals is the most reusable non-chiral construction.
- **Timelike-tube test:** Sec. 5.1--5.2. The theorem supplies the continuum equality; Fig. 7 tests convergence of two regulators toward it.
- **Numerical benchmarks:** Secs. 3.2--3.3, 4.2--4.3, and Appendix A. These support the implementation but do not establish regulator-independent convergence theorems.

# Complete Section Tree

1. Introduction: spacetime entropy, local-algebra redundancy, timelike completion, and generalized free fields.
2. Spacetime entropy and mutual information:
   - Gaussian bosons and fermions;
   - finite-basis compression and SVD;
   - mutual information for spacelike separated regions;
   - diamonds, half-diamonds, pennants, lenses, and their completions.
3. Chiral fields:
   - quotient by the transverse-smearing kernel;
   - complex Weyl fermion;
   - chiral current.
4. Infrared-regulated massless scalar:
   - null-marginal reduction and compatible data;
   - diamond entropy and mutual information;
   - spatial-lattice comparison.
5. Massive scalar:
   - equation-of-motion quotient and spacetime plane-wave truncations;
   - lens/diamond mutual information and cutoff convergence.
6. Discussion: regulator lessons and generalized-free-field extension.
7. Appendix A: harmonic-chain covariance matrices and continuum matching.

# Covariant Gaussian Prescription

For a bosonic Gaussian field in a fixed state,

$$\begin{align}
W(x,y)=\langle\Omega|\Phi(x)\Phi(y)|\Omega\rangle, \qquad i\Delta(x,y)=[\Phi(x),\Phi(y)]=W(x,y)-W(y,x).
\end{align}$$

Restriction to a spacetime region $\mathcal R$ gives the generalized eigenproblem

$$\begin{align}
W_{\mathcal R} f_\lambda = \lambda\, i\Delta_{\mathcal R}f_\lambda, \qquad S_B(\mathcal R)=\sum_\lambda \lambda\log|\lambda|.
\end{align}$$

For one canonical pair with symplectic eigenvalue $\sigma\geq\frac12$,

$$\begin{align}
\lambda_\pm=\frac12\pm\sigma,
\end{align}$$

and the sum becomes

$$\begin{align}
S= \left(\sigma+\frac12\right)\log\left(\sigma+\frac12\right) - \left(\sigma-\frac12\right)\log\left(\sigma-\frac12\right).
\end{align}$$

For a fermionic Gaussian field the pencil is $Wf=\nu Cf$, where $C$ is the anticommutator kernel and $0\leq\nu\leq1$, with

$$\begin{align}
S_F(\mathcal R) =- \sum_\nu\left[\nu\log\nu+(1-\nu)\log(1-\nu)\right].
\end{align}$$

# Quotient Before Inversion

The expression $(i\Delta_{\mathcal R})^{-1}W_{\mathcal R}$ is generally illegitimate because $i\Delta_{\mathcal R}$ can have a kernel. The algebraically meaningful space is the quotient by genuinely invisible smearings, or equivalently the image of the commutator, subject to a representation-level condition:

$$\begin{align}
z\in\ker i\Delta_{\mathcal R},\quad W_{\mathcal R}z=0 \quad\Longrightarrow\quad z\ \text{may be removed in the chosen state representation}.
\end{align}$$

If instead $W_{\mathcal R}z\neq0$, then $z$ represents a fluctuating central observable. It is not gauge redundancy. This is precisely where algebraic quotient, state restriction, and numerical regularization must not be conflated.

# Finite-Basis Regulator

With basis smearings $f_n$, the kernels become matrices

$$\begin{align}
W^{\mathcal R}_{mn}=\int_{\mathcal R}\!dV_xdV_y\, f_m^*(x)W(x,y)f_n(y), \qquad (i\Delta^{\mathcal R})_{mn}=\int_{\mathcal R}\!dV_xdV_y\, f_m^*(x)i\Delta(x,y)f_n(y).
\end{align}$$

The paper keeps Fourier labels $|n|\leq n_{\max}$ and computes an SVD

$$\begin{align}
i\Delta^{\mathcal R}=U\Sigma V^\dagger.
\end{align}$$

If the columns of $B$ span the retained numerical non-null subspace,

$$\begin{align}
W_{\rm red}=B^\dagger W B, \qquad i\Delta_{\rm red}=B^\dagger i\Delta B, \qquad W_{\rm red}v=\lambda i\Delta_{\rm red}v.
\end{align}$$

This has two distinct interpretations:

1. If both kernels annihilate the removed continuum directions, $B$ implements the algebraic quotient.
2. If degeneracy is created by finite compression and $W$ does not annihilate it, $B$ defines a smaller regulated observable algebra.

The nominal relation to a spatial cutoff is only scaling-level,

$$\begin{align}
\omega_{\max}\sim\frac{n_{\max}}{l}, \qquad \epsilon n_{\max}\sim l,
\end{align}$$

with regulator-dependent order-one factors.

# Mutual Information and Locality

For commuting algebras assigned to spacelike separated regions,

$$\begin{align}
I(\mathcal R_1:\mathcal R_2) =S(\mathcal R_1)+S(\mathcal R_2)-S(\mathcal R_1\cup\mathcal R_2).
\end{align}$$

All three entropies must use the same cutoff family; otherwise the UV cancellation can be spoiled. The paper occasionally explores analogous entropy combinations for timelike-separated systems, but correctly warns that these are not standard mutual information because the corresponding algebras need not commute.

# Region and Completion Dictionary

The reference region is a diamond $\mathcal D$. The paper also uses a half-diamond $\mathcal C$, a spatial pennant $\mathcal B$, and a narrow timelike lens $\mathcal T$.

- Time-slice property: $D(\mathcal C)=\mathcal D$ and, for a theory with suitable local dynamics, $\mathcal A(\mathcal C)=\mathcal A(\mathcal D)$.
- Timelike completion: $E(\mathcal B)=E(\mathcal T)=\mathcal D$ and the timelike-tube theorem predicts equality of the completed additive local algebras.
- Chiral projection: equality follows more directly when all regions project to the same null interval, independent of causal or timelike completion.

The algebraic prediction for two spacelike separated copies is

$$\begin{align}
I(\mathcal X_1:\mathcal Y_2)=I(\mathcal D_1:\mathcal D_2), \qquad \mathcal X,\mathcal Y\in\{\mathcal D,\mathcal C,\mathcal B,\mathcal T\},
\end{align}$$

provided the relevant completed algebras really coincide and the state restrictions are compared on the same algebras.

# Exact Chiral Quotient

For a $v$-chiral field $\mathcal O(v)$,

$$\begin{align}
\mathcal O_{\mathcal R}[f] =\int_{\mathcal R}du\,dv\,f(u,v)\mathcal O(v) =\int_{\pi_v(\mathcal R)}dv\,(T_{\mathcal R}f)(v)\mathcal O(v),
\end{align}$$

where

$$\begin{align}
(T_{\mathcal R}f)(v)=\int_{\mathcal R_v}du\,f(u,v).
\end{align}$$

Smooth compactly supported lifts show that $T_{\mathcal R}$ is surjective. Therefore

$$\begin{align}
\boxed{ \frac{C_c^\infty(\mathcal R)}{\ker T_{\mathcal R}} \simeq C_c^\infty(\pi_v(\mathcal R))
}
\end{align}$$

and regions with the same null projection generate the same chiral algebra. If quotient-adapted bases are chosen as lifts of the same projected functions, their finite kernel matrices agree entry by entry. By contrast, transverse-constant spacetime representatives introduce a region-dependent width weight and need only agree after cutoff removal.

For the complex Weyl fermion, the exact interval mutual information is

$$\begin{align}
I_\psi(\eta)=-\frac16\log(1-\eta).
\end{align}$$

At $n_{\max}=40$ the several spacetime representatives lie within a few percent of this curve. This validates the implementation, but the equality of the continuum algebras already follows analytically from the quotient map.

# Infrared-Regulated Massless Scalar

In null coordinates the local state approximation is

$$\begin{align}
W_{\phi,\mu}(x,x') =-\frac1{4\pi} \log\!\left[-\mu^2(u-u'-i0^+)(v-v'-i0^+)\right],
\end{align}$$

valid when all relevant distances are much smaller than $\mu^{-1}$. Its antisymmetric part is independent of $\mu$:

$$\begin{align}
i\Delta_\phi(x,x') =-\frac i4\left[\operatorname{sgn}(u-u')+\operatorname{sgn}(v-v')\right].
\end{align}$$

Because $\partial_u\partial_v\phi=0$, a smearing is captured by two null marginals

$$\begin{align}
G_f(u)=\int_{\mathcal R_u}dv\,f(u,v), \qquad F_f(v)=\int_{\mathcal R_v}du\,f(u,v).
\end{align}$$

They obey the compatibility condition

$$\begin{align}
\int du\,G_f(u)=\int dv\,F_f(v).
\end{align}$$

Thus the reduced data space is

$$\begin{align}
\mathcal Q_{\mathcal R} =\left\{(G,F):\int G=\int F\right\}, \qquad \boxed{ \frac{C_c^\infty(\mathcal R)}{\ker T_{\mathcal R}} \simeq\mathcal Q_{\mathcal R}
}.
\end{align}$$

For the four region shapes, the two null projections agree, so this special massless theory gives the same additive algebra for all four. This result uses the two-dimensional massless equation and shared zero-mode constraint; it is not a general non-chiral timelike-tube proof.

With Fourier modes $h_n(s)=e^{i\pi ns/l}$, a compatible basis is

$$\begin{align}
E_0=(h_0,h_0), \qquad E_n^{(u)}=(h_n,0), \qquad E_n^{(v)}=(0,h_n), \qquad 0<|n|\leq n_{\max},
\end{align}$$

so

$$\begin{align}
\dim\mathcal Q_{n_{\max}}=4n_{\max}+1.
\end{align}$$

Its odd-dimensional antisymmetric commutator compression is necessarily degenerate. The paper exhibits an explicit null direction $Z_{n_{\max}}$; since its Wightman variance need not vanish, SVD removal is a finite-regulator choice rather than a continuum gauge quotient.

The entropy fit gives coefficient $0.33330$ multiplying $\log n_{\max}$, close to the expected $c/3=1/3$. The comparison with a harmonic chain uses

$$\begin{align}
m=\sqrt2\,e^{-\gamma_E}\mu,
\end{align}$$

obtained by matching the short-distance logarithms of the equal-time correlators. The reported Sorkin/lattice mutual informations are close at moderate and large $\eta$, but differ substantially in relative terms at $\eta=0.05$; the source attributes that small-$\eta$ discrepancy to inequivalent infrared prescriptions, not to the UV cutoff.

# Massive Scalar and the Timelike-Tube Test

The equation-of-motion quotient is

$$\begin{align}
\mathcal E_m(\mathcal R) =\frac{C_c^\infty(\mathcal R)}{P_m C_c^\infty(\mathcal R)}, \qquad P_m=-2\partial_u\partial_v-m^2.
\end{align}$$

The paper uses on-shell modes

$$\begin{align}
f_{n,\pm}(t,x)=e^{\mp i\omega_n t+ip_nx}, \quad p_n=\frac{\pi n}{\sqrt2l}, \quad \omega_n=\sqrt{p_n^2+m^2}, \quad |n|\leq n_{\max}.
\end{align}$$

Define the straight-sided lens

$$\begin{align}
\mathcal R_\rho =\left\{(t,x):|t|+\frac{|x|}{\rho}<\sqrt2l\right\}, \qquad 0<\rho\leq1, \qquad \mathcal R_1=\mathcal D.
\end{align}$$

Its timelike envelope is $\mathcal D$. The continuum theorem gives

$$\begin{align}
\mathcal A_m(\mathcal R_\rho)=\mathcal A_m(\mathcal D),
\end{align}$$

for the completed local algebras. It does not imply equality of the two finite mode spans. The numerical prediction is therefore only

$$\begin{align}
\lim_{n_{\max}\to\infty} \left[I^{(m)}_{\rho,n_{\max}}(\eta)-I^{(m)}_{1,n_{\max}}(\eta)\right]=0.
\end{align}$$

For $l=1$, $m=0.3$, $\rho=0.5$, and $n_{\max}=96$:

- diamond versus continuum-extrapolated lattice differs by less than $1.4\%$ over the displayed range;
- lens versus diamond differs by about $1.2\%$ at $\eta=0.5$;
- lens versus diamond differs by about $3.3\%$ at $\eta=0.9$;
- the residual decreases as the cutoff grows but no quantitative convergence theorem or error bound is supplied.

The quoted microcausality and eigenvalue-pairing residuals are much smaller than the lens/diamond separation, supporting the interpretation as a cutoff effect. They do not establish the existence or value of the $n_{\max}\to\infty$ limit.

# Translation to the Vault's Sewing Language

The strongest reusable map is

$$\begin{align}
\text{spacetime smearings} \xrightarrow{\ T_{\mathcal R}\ }
\text{intrinsic reduced data} \xrightarrow{\ W,\Delta\ }
\text{Gaussian state and CCR data}.
\end{align}$$

This cleanly separates four layers that should remain distinct in future sewing work:

1. the kinematical quotient by equation-of-motion or projection redundancy;
2. the regional symplectic/commutator form on the quotient;
3. the global state restricted through $W$;
4. the finite regulator, which may select a smaller observable algebra.

For the vault's canonical programme, the paper supplies a useful test-function model of equality of regional algebras. It does not supply boundary response maps, regional edge/port variables, a gluing coequalizer, or a proof that equality of additive local algebras survives a chosen finite regulator. The SVD caveat is especially relevant: regulator-induced kernel removal must not be advertised as gauge reduction.

# Verification Log

## Checked

- **Single canonical pair:** Mathematica simplified the difference between the Sorkin sum with $\lambda_\pm=\frac12\pm\sigma$ and the standard bosonic entropy to zero under $\sigma>\frac12$.
- **Infrared matching:** Mathematica solved the equality of the two short-distance logarithms and returned $m=\sqrt2e^{-\gamma_E}\mu$.
- **Odd compression:** the determinant of a symbolic generic $5\times5$ antisymmetric matrix simplified to zero, confirming the finite-dimensional degeneracy mechanism behind the odd $4n_{\max}+1$ truncation.
- **Quoted massless benchmarks:** the relative differences for the three displayed Sorkin/lattice pairs are approximately $0.43\%$, $1.93\%$, and $42.8\%$; the last large relative error occurs where the mutual information itself is small.
- **Visual source check:** rendered pages containing the generalized eigenproblem, null-direction qualification, massive-scalar setup, discussion, and lattice appendix are legible and agree with the extracted formulas and claims.

## Assumptions

- The entropy interpretation assumes a Gaussian state and a well-defined restricted correlation form on the chosen reduced space.
- Standard mutual information is used only for commuting, spacelike-separated component algebras.
- The massless scalar comparison assumes all length scales are small compared with $\mu^{-1}$ and keeps the same $\mu$ across regional representatives.
- The massive-algebra equality is imported from the timelike-tube theorem for the completed local net; finite Fourier spans are not equal.

## Source-Derived

- Surjectivity and quotient isomorphism for the chiral projection map.
- Compatible-null-data quotient and finite-cutoff equality for the special massless scalar construction.
- Weyl/current numerical convergence, entropy fits, lattice tables, and massive lens/diamond cutoff trends.
- The numerical SVD prescription and all quoted error residuals.

## Not Independently Verified

- Numerical curves, fits, SVD tolerances, and extrapolations: the source archive contains TeX and figures but no executable code or raw data tables.
- The chiral-current hypergeometric integral and all continuum exact mutual-information formulas beyond the Weyl expression.
- The functional-analytic hypotheses of the timelike-tube theorem for every net invoked by the paper.
- Convergence of either the diamond or lens spectral sequence to the continuum mutual information.
- Extension to generalized free fields, interacting theories, gauge constraints, or gravitational regional algebras.
