---
paper id: 2608.19539v1
title: Higher Chern--Simons Theory in 2n+2 Dimensions for Balanced 2-term L-infinity-Algebras
authors:
  - Danhua Song
  - Yibo Wang
publication date: 2026-08-20T01:18
abstract: |-
  The paper constructs semistrict higher Chern--Simons gauge theories in even dimensions 2n+2 from balanced 2-term L-infinity-algebras. A closed and infinitesimally gauge-invariant higher Pontryagin--Chern form is transgressed to an explicit local action, and an extended Cartan homotopy formula yields the corresponding higher Chern--Weil theorem and triangle equation.
comments: "30 pages"
url: https://arxiv.org/abs/2608.19539v1
summary: "A formula-level map from balanced semistrict 2-connections to even-dimensional higher Chern--Simons and transgression actions, with explicit local/global and boundary qualifications."
tags: []
---

## Result and placement

This paper gives a reusable semistrict higher-gauge transgression calculus. It is medium priority under `T2-model` and `T3-math`: Chern--Simons and higher-gauge fields are useful model systems for boundary structure, but the paper does not construct gravitational charges, a CPS current, or a quantization.

The main object is a balanced 2-term $L_\infty$-algebra

\[
\mathfrak L=\mathfrak L_{-1}\oplus\mathfrak L_0,
\]

with structure maps $\mu_1,\mu_2,\mu_3$ and a nondegenerate invariant pairing between $\mathfrak L_0$ and $\mathfrak L_{-1}$. "Balanced" means $\dim\mathfrak L_0=\dim\mathfrak L_{-1}$, which permits this pairing. The authors extend it to cyclic $(n+1)$-linear forms and use them to build a $(2n+3)$-form characteristic class and a $(2n+2)$-form transgression action.

## Source map

- Section 1 states the gap: the standard homotopy Maurer--Cartan construction gives a four-dimensional theory for a 2-term algebra, while arbitrary even dimensions had only been treated systematically in stricter settings.
- Section 2 fixes the graded $L_\infty$ and cyclic-pairing conventions and reviews homotopy Maurer--Cartan actions.
- Section 3 specializes to balanced 2-term algebras, defines semistrict 2-connections and curvatures, gives infinitesimal gauge transformations and Bianchi identities, and recovers four-dimensional 2-Chern--Simons theory.
- Section 4 extends the pairing, defines the higher Pontryagin--Chern form, proves local closure and infinitesimal gauge invariance, derives the higher CS form, proves the higher Chern--Weil theorem, and varies the two-endpoint transgression action.
- Section 5 applies the extended Cartan homotopy formula to derive the Chern--Weil relation and the higher triangle equation from one descent system.
- Section 6 summarizes the construction and emphasizes open global, higher-bundle, and 3-gauge-theory problems.

## Semistrict 2-connection and curvature

On a spacetime $M$, a 2-connection is

\[
(A,B),
\qquad
A\in\Omega^1(M,\mathfrak L_0),
\qquad
B\in\Omega^2(M,\mathfrak L_{-1}).
\]

The paper uses

\[
F=dA+\frac12\mu_2(A,A)+\mu_1(B),
\]

\[
H=dB+\mu_2(A,B)-\frac16\mu_3(A,A,A).
\]

Their Bianchi identities are

\[
D F=\mu_1(H),
\qquad
D H=\mu_2(F,B)-\frac12\mu_3(A,A,F),
\]

with $D=d+\mu_2(A,\cdot)$. The fake curvature $F$ also controls the failure of the infinitesimal gauge algebra to close on $B$: the algebra closes off shell on $A$ but only for $F=0$ on the $B$ component.

For $n=1$, the homotopy Maurer--Cartan action reduces on a closed four-manifold to

\[
S_4=\int_M\left[
\left\langle F-\frac12\mu_1(B);B\right\rangle
-\frac1{24}\left\langle A;\mu_3(A,A,A)\right\rangle
\right],
\]

and its independent equations are $F=0$ and $H=0$.

## Higher Pontryagin--Chern and HCS forms

Given the cyclic $(n+1)$-linear form, define

\[
\Gamma_{2n+3}(F,H)=\langle F^n;H\rangle.
\]

The form degree is $2n+3$. Closure follows by differentiating the pairing, substituting the two Bianchi identities, and canceling the remaining terms using $\mu_1$-, $\mu_2$-, and $\mu_3$-cyclicity:

\[
d\Gamma_{2n+3}=0.
\]

The same cyclicity relations imply invariance under the infinitesimal 2-gauge transformations used in the paper. This is a local infinitesimal statement; finite transformations and nontrivial higher bundles are explicitly outside scope.

For the straight path from the zero 2-connection to $(A,B)$,

\[
A_t=tA,
\qquad
B_t=tB,
\]

\[
F_t=tF+\frac{t^2-t}{2}\mu_2(A,A),
\]

\[
H_t=tH+(t^2-t)\mu_2(A,B)
+\frac{t-t^3}{6}\mu_3(A,A,A),
\]

the local higher Chern--Simons form is

\[
\mathfrak C^{2n+2}(A,B)
=\int_0^1dt\left[
n\langle A,F_t^{n-1};H_t\rangle
+\langle F_t^n;B\rangle
\right],
\]

and satisfies

\[
d\mathfrak C^{2n+2}=\Gamma_{2n+3}.
\]

At $n=1$, direct integration produces

\[
\mathfrak C^4
=\left\langle A;
\frac12dB+\frac13\mu_2(A,B)-\frac1{24}\mu_3(A,A,A)
\right\rangle
+\left\langle
\frac12dA+\frac16\mu_2(A,A)+\frac12\mu_1(B);B
\right\rangle.
\]

It differs from the four-dimensional homotopy Maurer--Cartan form only by an exact term.

## Two-endpoint higher transgression

For two 2-connections $(A_0,B_0)$ and $(A_1,B_1)$, set

\[
\Theta=A_1-A_0,
\qquad
\Phi=B_1-B_0,
\]

and interpolate linearly. The higher Chern--Weil theorem is

\[
\Gamma(F_1,H_1)-\Gamma(F_0,H_0)
=dT^{2n+2}(A_0,B_0;A_1,B_1),
\]

with

\[
T^{2n+2}
=\int_0^1dt\left[
n\langle\Theta,F_t^{n-1};H_t\rangle
+\langle F_t^n;\Phi\rangle
\right].
\]

Unlike the zero-reference HCS form, the two-endpoint transgression is in principle globally meaningful because it does not require globally gauging one 2-connection to zero. Reversing endpoints changes its sign.

The variational calculation also exposes the boundary mechanism: the two endpoint theories have separate bulk equations but are coupled by a shared boundary term. On a closed manifold the transgression action is invariant under simultaneous infinitesimal gauge transformations. With a boundary, the paper requires the pullback of its presymplectic boundary contribution to vanish; it does not analyze the resulting boundary phase space.

## Translation to boundary and gluing work

The useful structural comparison is

\[
\text{two endpoint 2-connections}
\longrightarrow
\text{bulk transgression}
+\text{coupled boundary variation}.
\]

This resembles a gluing architecture but is not yet a canonical gluing theorem. The paper does not identify reduced boundary coordinates, quotient gauge degeneracies, derive a boundary Poisson algebra, or prove associativity after reduction. For vault use, $A_i,B_i$ should be treated as bulk connection data and the displayed boundary variation as the starting point for port variables, not as an already reduced edge-mode phase space.

## Verification log

- `Source-derived`: The full six-section structure, $L_\infty$ conventions, 2-curvatures, Bianchi identities, gauge transformations, closure proof, transgression theorem, boundary variation, and ECHF descent were reconstructed from the official v1 TeX source and checked against the rendered 30-page PDF.
- `Checked`: Mathematica independently integrated the $n=1$ straight-line interpolation and reproduced the coefficient triples $(1/2,1/3,-1/24)$ in the $\langle A;\cdot\rangle$ term and $(1/2,1/6,1/2)$ in the $\langle\cdot;B\rangle$ term.
- `Checked`: Independent degree counting gives $\deg\langle F^n;H\rangle=2n+3$ and $\deg\langle\Theta,F^{n-1};H\rangle=\deg\langle F^n;\Phi\rangle=2n+2$.
- `Blocked`: A general symbolic replay of the closure and higher Chern--Weil cancellations would require implementing the paper's extended cyclic multilinear form, Koszul signs, and semistrict $\mu_3$ identities. Those theorem-level cancellations remain source-derived.
- `Not independently verified`: Finite higher-gauge transformations, global existence of the transgression on nontrivial higher bundles, the full endpoint field equations for arbitrary $n$, and the asserted ECHF identities beyond the displayed formal descent.

