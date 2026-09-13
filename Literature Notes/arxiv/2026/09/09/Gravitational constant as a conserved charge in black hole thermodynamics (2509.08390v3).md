---
paper id: 2509.08390v3
title: "Gravitational constant as a conserved charge in black hole thermodynamics"
authors:
  - Wontae Kim
  - Mungon Nam
publication date: 2025-09-10T08:33
abstract: |-
  A modified four-dimensional Einstein--Hilbert theory with two auxiliary scalar--gauge pairs promotes the inverse Newton coupling and cosmological-pressure combination to quasi-local gauge charges. On a selected integrable sector of static solutions, the off-shell ADT charges reproduce an extended first law and Smarr relation.
comments: "15 pages, no figure; published version in Int. J. Mod. Phys. A (2026) 2650163"
url: https://arxiv.org/abs/2509.08390v3
summary: "A concrete coupling-as-charge construction, conditional on enlarging the theory and restricting its solution phase space to an integrable sector."
tags: []
---

# Why this is high priority

Reason codes: `T1-symmetry`, `T1-charge`, `T2-dS-BH-holography`, `T2-model`.

The paper derives conserved quantities directly from an enlarged action, its gauge symmetries, and an off-shell quasi-local ADT potential. It also exposes an important phase-space issue: the mass one-form is not integrable on the unrestricted parameter family, so a particular integrable sector must be chosen before the charges and thermodynamics are well defined.

# Direct verdict

**Correct under the following precise conditions:** in the modified auxiliary-field theory, on the stationary spherical family and on the integrable sector $C=\gamma_0$, $D=0$, the global $A$-gauge transformation carries the conserved charge $G^{-1}$. The resulting charges satisfy the displayed extended first law and Smarr relation.

The statement should be rewritten as: **the inverse Newton coupling $G^{-1}$ is a quasi-local gauge charge of an enlarged, non-propagating auxiliary-field theory.** This is not a derivation that ordinary Einstein gravity contains a new radiative black-hole charge, nor does it make $G$ standard black-hole hair.

# Complete source map

1. **Introduction:** reviews coupling variation, black-hole chemistry, and scalar--$(D-1)$-form mechanisms.
2. **Quasi-local conserved charges:** defines the enlarged action, equations of motion, local gauge symmetries, Noether potential, off-shell ADT potential, and parameter-space charge one-forms.
3. **Integrability sector:** computes the obstruction to integrating the mass charge and selects $C=\gamma_0$, $D=0$.
4. **Charge identification:** sets $\alpha_0=(16\pi G)^{-1}$, $\beta_0=2\Lambda$, $\gamma_0=2GM$ and obtains $M$, $G^{-1}$, and $\Lambda/(8\pi G)$.
5. **Extended first law:** equates finite-radius and horizon ADT integrals, includes the moving-horizon term, and identifies $T,S,\Phi,V$.
6. **Smarr relation:** uses a common dimensionless scaling of $(S,G^{-1},P)$.
7. **Conclusion:** explains why the new charge compares coupling sectors rather than evolving radiatively within fixed-$G$ gravity.

# Enlarged action and field equations

The action is

$$
S=\int d^4x\sqrt{-g}\,\alpha
\left[R+\beta(1-\nabla_\mu B^\mu)-\nabla_\mu A^\mu\right].
$$

$\alpha,\beta$ are scalars and $A^\mu,B^\mu$ are dualized three-form gauge potentials. The auxiliary equations include

$$
\nabla_\mu\alpha=0,
\qquad
\nabla_\mu(\alpha\beta)=0,
\qquad
\alpha(1-\nabla_\mu B^\mu)=0.
$$

Thus $\alpha$ and $\beta$ become integration constants on the nonzero-$\alpha$ branch. The gauge transformations are

$$
A^\mu\mapsto A^\mu+\nabla_\nu\lambda^{\mu\nu},
\qquad
B^\mu\mapsto B^\mu+\nabla_\nu\chi^{\mu\nu},
$$

for antisymmetric parameters $\lambda^{\mu\nu},\chi^{\mu\nu}$.

The static spherical solution in ingoing Eddington--Finkelstein coordinates is

$$
ds^2=-\left(1-\frac{\gamma_0}{r}+\frac{\beta_0r^2}{6}\right)dv^2
+2\,dv\,dr+r^2d\Omega^2,
$$

$$
\alpha=\alpha_0,\qquad \beta=\beta_0,
\qquad
A^r=-\frac23\beta_0r+\frac C{r^2},
\qquad
B^r=\frac r3+\frac D{r^2}.
$$

$C$ and $D$ are homogeneous auxiliary-field integration constants, not fixed by the local field equations.

# Noether and ADT charges

For a diffeomorphism $\zeta$ and the two gauge parameters, the off-shell Noether potential is

$$
\begin{aligned}
K_N^{\mu\nu}=-\sqrt{-g}\big[&2\alpha\nabla^{[\mu}\zeta^{\nu]}
+4\zeta^{[\mu}\nabla^{\nu]}\alpha\\
&+\alpha\big(2A^{[\mu}\zeta^{\nu]}+\lambda^{\mu\nu}
+\beta(2B^{[\mu}\zeta^{\nu]}+\chi^{\mu\nu})\big)\big].
\end{aligned}
$$

With $\xi=\partial_v$ and normalized global parameters

$$
\lambda^{vr}=-\frac4{r^2},
\qquad
\chi^{vr}=-\frac1{4\pi r^2},
$$

the solution-space one-forms are

$$
\delta Q[\xi,0,0]
=4\pi\left[(C+\gamma_0)\delta\alpha_0
+D\delta(\alpha_0\beta_0)+2\alpha_0\delta\gamma_0\right],
$$

$$
\delta Q[0,\lambda,0]=16\pi\delta\alpha_0,
\qquad
\delta Q[0,0,\chi]=\delta(\alpha_0\beta_0).
$$

# Integrability is an essential condition

The mass one-form is not closed on the unrestricted five-parameter family:

$$
\delta(\delta Q[\xi,0,0])
=4\pi\left[\delta(C-\gamma_0)\wedge\delta\alpha_0
+\delta D\wedge\delta(\alpha_0\beta_0)\right].
$$

The authors retain arbitrary independent variations of $\alpha_0,\beta_0,\gamma_0$ by restricting to

$$
\delta(C-\gamma_0)=0,\qquad \delta D=0.
$$

With their zero reference point this becomes $C=\gamma_0$, $D=0$. Only then

$$
\delta Q[\xi,0,0]=8\pi\delta(\alpha_0\gamma_0)
$$

is path independent. This is a selected integrable solution sector, not a consequence of the local equations of motion and not the unique conceivable integrable submanifold.

# Physical normalization

Set

$$
\alpha_0=\frac1{16\pi G},
\qquad
\beta_0=2\Lambda,
\qquad
\gamma_0=2GM.
$$

The charges are then

$$
Q[\xi,0,0]=M,
\qquad
Q[0,\lambda,0]=G^{-1},
\qquad
Q[0,0,\chi]=\frac{\Lambda}{8\pi G}.
$$

The last charge is $-P$ for the convention

$$
P=-\frac{\Lambda}{8\pi G}.
$$

The metric and auxiliary potentials become

$$
f(r)=1-\frac{2GM}{r}+\frac{\Lambda r^2}{3},
\qquad
A^r=-\frac43\Lambda r+\frac{2GM}{r^2},
\qquad
B^r=\frac r3.
$$

# First law and Smarr relation

Assuming no ADT flux through the timelike boundary and no interior ADT source, the finite-radius charge variation equals its Killing-horizon integral. With $f(r_h)=0$,

$$
M=\frac1{2G}\left(r_h+\frac{\Lambda r_h^3}{3}\right),
$$

and the horizon variables are

$$
T=\frac1{4\pi}\left(\frac1{r_h}+\Lambda r_h\right),
\qquad
S=\frac{\pi r_h^2}{G},
$$

$$
\Phi=\frac14(r_h-\Lambda r_h^3),
\qquad
V=\frac{4\pi r_h^3}{3}.
$$

They obey

$$
\delta M=T\delta S+\Phi\delta G^{-1}-V\delta P,
$$

and, under the authors' simultaneous extensive scaling of $(S,G^{-1},P)$,

$$
M=TS+\Phi G^{-1}-PV.
$$

This Smarr relation uses a dimensionless homogeneous scaling, not the usual engineering-length scaling in fixed-coupling black-hole chemistry.

# Independent checks

**Checked (rendered PDF, source, Mathematica, and direct algebra):**

- The rendered charge-identification page agrees with the TeX source for $Q=M,G^{-1},\Lambda/(8\pi G)$ and for the normalized solution.
- For the spherical metric, Mathematica gives $R=-2\beta_0$. It also gives
  $$
  \nabla_\mu A^\mu=-2\beta_0,
  \qquad
  \nabla_\mu B^\mu=1,
  $$
  independently of $C,D$, so the displayed $\alpha$ and $\beta$ equations have exact zero residual.
- Treating $(r_h,G,\Lambda)$ as independent coordinates, all three coefficients of
  $$
  dM-T\,dS-\Phi\,d(G^{-1})+V\,dP
  $$
  vanish exactly.
- Substitution into $M-TS-\Phi G^{-1}+PV$ gives exact zero.
- Direct exterior differentiation reproduces the stated charge-integrability obstruction. On $C=\gamma_0,D=0$, the mass one-form reduces exactly to $8\pi\,d(\alpha_0\gamma_0)$.

**Source-derived:** the off-shell Bianchi identity, Noether/ADT potential construction, equality of finite-radius and horizon integrals, vanishing moving-horizon contribution, and normalization of global gauge parameters.

**Conditional:** quasi-local conservation uses the enlarged equations and specified gauge generators; horizon equality also assumes no timelike-boundary flux and no interior ADT source; the mass charge uses the selected integrable sector.

**Not established:** uniqueness of that sector, equivalence of the enlarged theory to ordinary Einstein gravity at the level of global sectors or quantum theory, a propagating carrier of $G^{-1}$, or standard black-hole hair.

# Translation to the vault programme

This is a clean example of why an action-first construction must retain auxiliary fields, boundary generators, and phase-space integrability data. Merely allowing $\delta G$ in a thermodynamic formula would not produce the charge: the enlarged action supplies the gauge symmetry, while $C=\gamma_0,D=0$ supplies the integrable domain.

For regional observable-algebra work, the relevant warning is that a conserved coupling label can be superselected and universal within a sector without being a local radiative observable. The charge construction does not by itself give a regional sewing kernel, an interface response, or a representation theorem.

Back to [[2026_09_09_overview]].
