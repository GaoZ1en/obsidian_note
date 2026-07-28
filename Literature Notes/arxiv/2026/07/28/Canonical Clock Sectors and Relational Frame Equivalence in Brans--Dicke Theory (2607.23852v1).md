---
paper id: 2607.23852v1
title: Canonical Clock Sectors and Relational Frame Equivalence in Brans--Dicke Theory
authors:
  - Yaser Tavakoli
  - Jerzy Lewandowski
publication date: 2026-07-26T21:41
abstract: |-
  Jordan and Einstein frames are canonically equivalent on the standard ADM phase space, but a naive deparametrization using the Brans--Dicke scalar produces shifted reduced Hamiltonians because the scalar momentum mixes with the gravitational trace momentum. Treating the complete canonical pair, rather than the scalar configuration alone, as the relational clock yields a frame-adapted chart and restores equivalent reduced dynamics.
comments: "23 pages"
url: https://arxiv.org/abs/2607.23852v1
summary: "A clean symplectic explanation of why canonical transformations and relational reduction need not commute unless the entire clock sector is transported."
tags: []
---

[[2026_07_28_overview|Back to the 2026-07-28 arXiv overview]]

The paper’s reusable point is simple but structurally important: a relational clock is a canonical pair \((T,P_T)\), not merely a scalar function \(T\) on configuration space. A canonical transformation can leave \(T\) fixed while changing its phase-space embedding through \(P_T\).

# Jordan and Einstein ADM variables

In the Jordan frame, the standard phase space is

\[
\Gamma_{\rm J}
=
\{h_{ab},p^{ab};\phi,p_\phi\}.
\]

The lapse and shift are Lagrange multipliers, not canonical coordinates. The conformal transformation to Einstein-frame ADM variables is

\[
\widetilde h_{ab}=\phi h_{ab},
\qquad
\widetilde p^{ab}=\frac{p^{ab}}{\phi},
\qquad
\widetilde\phi=\phi,
\]

\[
\boxed{
\widetilde p_\phi
=p_\phi-\frac{p_h}{\phi},
\qquad
p_h:=h_{ab}p^{ab}.
}
\tag{3.19}
\]

The shift of scalar momentum follows from the mixed Jordan-frame kinetic term

\[
-2K\left(\dot\phi-N^aD_a\phi\right).
\]

Thus the conformal transformation diagonalizes scalar--metric kinetic mixing by transferring the trace momentum into the scalar sector.

# Canonicality on the standard ADM phase space

The Jordan symplectic potential is

\[
\Theta_{\rm J}
=
\int_\Sigma d^3x
\left(
p^{ab}\delta h_{ab}
+p_\phi\delta\phi
\right).
\]

Substituting the transformed variables gives

\[
\begin{aligned}
\Theta_{\rm E}
&=
\int_\Sigma d^3x
\left(
\widetilde p^{ab}\delta\widetilde h_{ab}
+\widetilde p_\phi\delta\phi
\right)\\
&=
\int_\Sigma d^3x
\left[
\frac{p^{ab}}{\phi}\delta(\phi h_{ab})
+\left(p_\phi-\frac{p_h}{\phi}\right)\delta\phi
\right]\\
&=\Theta_{\rm J}.
\end{aligned}
\tag{4.3}
\]

The two \(p_h\delta\phi/\phi\) contributions cancel exactly. Hence

\[
\Omega_{\rm E}=\delta\Theta_{\rm E}
=\delta\Theta_{\rm J}
=\Omega_{\rm J},
\]

and the map is canonical on the standard ADM phase space.

If lapse and shift are promoted to an extended Dirac phase space, the standard Weyl rescaling

\[
\widetilde N=\sqrt\phi\,N
\]

adds

\[
\widetilde p_N\delta\widetilde N
=
\sqrt\phi\,\widetilde p_N\delta N
+\frac{N\widetilde p_N}{2\sqrt\phi}\delta\phi.
\]

Without a compensating transformation of the lapse momentum, the symplectic potential is no longer preserved. The paper therefore distinguishes canonicality of a map on a specified phase space from a frame-independent statement about the configuration transformation alone.

# Naive scalar-clock reduction

Choose the Brans--Dicke scalar as time:

\[
\chi(x)=\phi(x)-t\approx0 .
\]

The gauge is admissible only in a monotonic sector where

\[
\{\phi,\mathcal H_N\}
=\frac{\partial\mathcal H_N}{\partial p_\phi}
\neq0.
\]

In the Jordan frame, solving the Hamiltonian constraint gives

\[
p_\phi
=
\frac{p_h}{\phi}
+\sigma\frac{\sqrt{\bar\omega}}{\kappa^2}
\sqrt h\,\Omega
\equiv-H_{\rm phys},
\tag{5.5}
\]

where \(\sigma=\pm1\) chooses the clock orientation and, for the homogeneous clock,

\[
\Omega^2
=
{}^{(3)}R
-\frac{4\kappa^4}{\phi^2h}
\left(
p^{ab}p_{ab}-\frac12p_h^2
\right)
-\frac{U(\phi)}{\phi}.
\]

In the Einstein frame,

\[
\widetilde p_\phi
=
\sigma\frac{\sqrt{\bar\omega}}{\kappa^2}
\frac{\sqrt{\widetilde h}}{\phi}
\widetilde\Omega
\equiv-\widetilde H_{\rm phys},
\]

with

\[
\widetilde\Omega=\phi^{-1/2}\Omega.
\]

Because the clock momentum transforms nontrivially,

\[
-\widetilde H_{\rm phys}
=
-H_{\rm phys}-\frac{p_h}{\phi},
\]

or

\[
\boxed{
\widetilde H_{\rm phys}
=H_{\rm phys}+\frac{p_h}{\phi}.
}
\tag{5.12}
\]

Thus conformal transformation and naive relational reduction do not commute for generic \(p_h\neq0\). This is not a failure of the unreduced canonical equivalence: the two reductions used different momenta conjugate to the same scalar configuration.

# The frame-adapted clock sector

Inside the Jordan-frame phase space define

\[
Q_{ab}:=\phi h_{ab},
\qquad
P^{ab}:=\frac{p^{ab}}{\phi},
\]

\[
\Phi:=\phi,
\qquad
\boxed{
P_\Phi:=p_\phi-\frac{p_h}{\phi}.
}
\tag{6.2}
\]

These variables reproduce the Einstein-frame canonical chart. Directly,

\[
\begin{aligned}
P^{ab}\delta Q_{ab}
+P_\Phi\delta\Phi
&=
\frac{p^{ab}}{\phi}
\delta(\phi h_{ab})
+\left(p_\phi-\frac{p_h}{\phi}\right)\delta\phi\\
&=
p^{ab}\delta h_{ab}
+p_\phi\delta\phi.
\end{aligned}
\]

The adapted clock pair \((\Phi,P_\Phi)\) is therefore canonical and is exactly the pair used in the Einstein frame. Reducing after this full transport yields the same physical Hamiltonian in both descriptions.

The commutative operation is:

\[
\text{transport full canonical chart}
\quad\longrightarrow\quad
\text{choose }(\Phi,P_\Phi)\text{ as clock}
\quad\longrightarrow\quad
\text{solve the constraint}.
\]

Merely identifying \(\Phi=\phi\) before reduction is insufficient.

# Relation to local symplectic work

This is an ADM phase-space argument, not a covariant-phase-space construction. Still, it transfers directly as a warning:

- reduction depends on how a clock or boundary datum sits inside the symplectic manifold;
- a field redefinition can preserve the unreduced symplectic form while failing to preserve a chosen reduced slice;
- source/response variables, boundary clocks, or gauge-fixing pairs should be transported as complete canonical sectors.

The paper contains no Lee--Wald current, surface charge, corner term, or boundary flux. Its reason code is therefore `T1-symplectic` in the broad canonical sense only, not `T1-Wald-CPS`.

# Verification note

- The ADM transformation, symplectic-potential cancellation, clock gauge, and reduced-Hamiltonian shift were checked against the full TeX source and rendered pages.
- **Mathematica:** finite-dimensional component analogues of
  \[
  Q_i=\phi h_i,\quad P_i=p_i/\phi,\quad
  P_\Phi=p_\phi-\sum_i h_ip_i/\phi
  \]
  preserve the canonical symplectic two-form for \(1\leq i\leq6\); every residual coefficient vanished exactly.
- No independent derivation of the full Brans--Dicke ADM constraint from the covariant action was performed. The constraint-solving step and monotonic-clock domain are source-derived.
