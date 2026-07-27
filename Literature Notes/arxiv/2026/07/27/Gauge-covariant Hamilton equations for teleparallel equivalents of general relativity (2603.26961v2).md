---
paper id: 2603.26961v2
title: Gauge-covariant Hamilton equations for teleparallel equivalents of general relativity
authors:
  - David Chester
  - Vipul Pandey
publication date: 2026-07-23T08:05
abstract: |-
  The paper constructs gauge-covariant Hamilton equations for the metric and symmetric teleparallel equivalents of general relativity. Torsion and nonmetricity act as generalized velocities, their superpotentials are conjugate momenta, and the quadratic actions have regular Legendre maps on the corresponding field-strength fibers. This regularity does not remove gravitational constraints: in the reduced ADM sector the standard deformation algebra and two local degrees of freedom remain.
comments: ""
url: https://arxiv.org/abs/2603.26961v2
summary: "A useful separation of field-strength Legendre regularity, covariant phase space, hypersurface constraints, and corner flux in teleparallel GR."
tags: []
---

Back to [[2026_07_27_overview]].

Version 2 makes the paper substantially more useful than its original framing. The field-strength Legendre construction survives, but the earlier suggestion of a non-gauge Tomonaga--Schwinger bulk evolution is removed. The corrected message is that an invertible Legendre map on torsion or nonmetricity fibers does not eliminate diffeomorphism constraints, boundary flux, or the ADM refoliation algebra.

## Field strengths as generalized velocities

The paper starts from fields \(\phi^A\), a first-order field strength \(F_\mu{}^A\), and

$$
\Pi_A{}^\mu
=
\frac{\partial(\sqrt{-g}\mathcal L)}
{\partial F_\mu{}^A}.
$$

The field-strength Hamiltonian density is

$$
\sqrt{-g}\mathcal H
=
\Pi_A{}^\mu F_\mu{}^A
-\sqrt{-g}\mathcal L.
$$

When the fiber Hessian is invertible,

$$
\frac{\partial(\sqrt{-g}\mathcal H)}
{\partial\Pi_A{}^\mu}
=F_\mu{}^A,
\qquad
\left(
\frac{\partial\mathcal H}{\partial\phi^A}
\right)_\Pi
=-
\left(
\frac{\partial\mathcal L}{\partial\phi^A}
\right)_F.
$$

The second Hamilton equation is written with the negative formal adjoint \(E_{F,A}\) of the linearized field-strength map:

$$
E_{F,A}(\Pi)
=-
\frac{\partial(\sqrt{-g}\mathcal H)}
{\partial\phi^A}.
$$

Only for the fixed-connection nonmetricity map does this reduce directly to a covariant divergence. This is already a useful distinction from a canonical time derivative.

The conventions are

$$
Q_{\rho\mu\nu}=\nabla_\rho g_{\mu\nu},
\qquad
T^\rho{}_{\mu\nu}=2\Gamma^\rho{}_{[\mu\nu]},
\qquad
\kappa^2=\frac{32\pi G}{c^4},
$$

with signature \((-+++)\). The STEGR equivalence statement is restricted to compactly supported metric variations, or boundary conditions that remove the metric surface term, at fixed flat torsionless connection. It is not an unreduced metric-affine variation.

## STEGR: the nonmetricity Legendre map

After discarding the Einstein-equivalence divergence in the bulk,

$$
S_{\mathrm{STEGR}}
\simeq
-\frac1{\kappa^2}
\int d^4x\sqrt{-g}\,
Q_{\rho\mu\nu}\mathbb P^{\rho\mu\nu},
$$

where

$$
\begin{aligned}
\mathbb P^{\rho\mu\nu}
={}&
-\frac12Q^{\rho\mu\nu}
+\frac12Q^{\mu\nu\rho}
+\frac12Q^{\nu\mu\rho}
\\
&+\frac12(Q^\rho-\widetilde Q^\rho)g^{\mu\nu}
-\frac14
\left(
g^{\rho\mu}Q^\nu+g^{\rho\nu}Q^\mu
\right).
\end{aligned}
$$

Writing

$$
\Pi^{\rho\mu\nu}=k\mathbb P^{\rho\mu\nu},
\qquad
k=-\frac{2\sqrt{-g}}{\kappa^2},
$$

the two traces obey

$$
\Pi^\rho=k(Q^\rho-\widetilde Q^\rho),
\qquad
\widetilde\Pi^\mu
=k\left(
-\frac12\widetilde Q^\mu-\frac14Q^\mu
\right).
$$

The inverse map is

$$
\begin{aligned}
Q_{\rho\mu\nu}
=\frac1k\Big[
&\Pi_{\mu\nu\rho}+\Pi_{\nu\mu\rho}
\\
&+\frac13\{
g_{\mu\nu}(\Pi_\rho-2\widetilde\Pi_\rho)
-g_{\rho\mu}(\Pi_\nu+\widetilde\Pi_\nu)
-g_{\rho\nu}(\Pi_\mu+\widetilde\Pi_\mu)
\}
\Big].
\end{aligned}
$$

The trace block

$$
\begin{pmatrix}
1&-1\\
-\tfrac14&-\tfrac12
\end{pmatrix}
$$

has determinant \(-3/4\). Together with the nonzero eigenvalues on the double-trace-free sector, this removes zero modes from the declared 40-component nonmetricity fiber.

The Legendre transform gives

$$
\sqrt{-g}\mathcal H_{\mathrm{STEGR}}
=
-\frac{\kappa^2}{2\sqrt{-g}}
\left[
\Pi^{\rho\mu\nu}\Pi_{\mu\nu\rho}
+\frac16\Pi^2
-\frac23\Pi\cdot\widetilde\Pi
-\frac13\widetilde\Pi^2
\right].
$$

The first Hamilton equation reconstructs \(Q_{\rho\mu\nu}\); the second,

$$
\nabla_\rho\Pi^{\rho\mu\nu}
=-
\left(
\frac{\partial\sqrt{-g}\mathcal H}
{\partial g_{\mu\nu}}
\right)_\Pi
+\text{matter},
$$

is reduced in the paper to the Einstein equation.

## MTEGR: the torsion analogue

For metric teleparallel gravity, the tetrad momentum is proportional to the torsion superpotential:

$$
P_a{}^{\mu\nu}
=-\frac{2|e|}{\kappa^2}
e_a{}^\rho S_\rho{}^{\mu\nu}.
$$

The inverse is

$$
T_{\rho\mu\nu}
=\frac{\kappa^2}{2|e|}
\left[
P_{\mu\rho\nu}-P_{\nu\rho\mu}
+\frac12g_{\rho\mu}\widetilde P_\nu
-\frac12g_{\rho\nu}\widetilde P_\mu
\right],
$$

and

$$
|e|\mathcal H_{\mathrm{MTEGR}}
=-\frac{\kappa^2}{2|e|}
\left[
P^{\rho\mu\nu}P_{\mu\nu\rho}
+\frac12\widetilde P^2
\right].
$$

The second Hamilton equation becomes

$$
2D_\nu P_a{}^{\mu\nu}
+
\left(
\frac{\partial |e|\mathcal H}{\partial e^a{}_\mu}
\right)_P
=
-\frac4{\kappa^2}|e|e_a{}^\rho G_\rho{}^\mu.
$$

Thus the field-strength Hamiltonian description reproduces classical GR rather than generating an additional physical time.

## Regularity does not count the gravitational constraints

The statement

$$
\ker W|_V=0
$$

excludes only primary constraints caused by degeneracy of the selected field-strength Legendre map. It does not remove:

- diffeomorphism and internal-gauge constraints;
- flatness and torsion restrictions imposed on teleparallel connections;
- connection and multiplier sectors omitted by the reduction;
- boundary conditions, holonomy sectors, or corner charges.

In the compact, boundaryless, boundary-subtracted, trivial-holonomy reduced ADM sector, the constraints are the standard ones:

$$
\mathcal H_\perp
=
\frac{\kappa^2}{2\sqrt\gamma}
\left(
\pi^{ij}\pi_{ij}-\frac12\pi^2
\right)
-\frac{2\sqrt\gamma}{\kappa^2}
\,{}^{(3)}R
\approx0,
$$

$$
\mathcal H_i=-2D_j\pi_i{}^j\approx0,
$$

together with the lapse and shift primary constraints. The resulting first-class count leaves two local degrees of freedom. This is a declared reduced-sector result, not an unreduced Dirac classification.

## CPS pullback and the normal generator

The covariant current associated with a field-dependent diffeomorphism parameter \(\xi\) is written

$$
J^\mu[\xi]
=
\Pi_A{}^\mu\mathcal L_\xi\phi^A
-\xi^\mu\sqrt{-g}\mathcal L.
$$

Its variation has the CPS form

$$
\delta J^\mu
=
\omega^\mu(\delta,X_\xi)
+\partial_\nu k_\xi^{\mu\nu}
-\xi^\mu E_A\delta\phi^A,
$$

with

$$
k_\xi^{\mu\nu}
=2\xi^{[\nu}\Pi_A{}^{\mu]}\delta\phi^A.
$$

After pullback to a hypersurface \(\Sigma\),

$$
\Omega_\Sigma
=\int_\Sigma
\delta\pi_{\Sigma A}\wedge\delta\phi^A.
$$

On shell,

$$
\delta G_\Sigma^J[\xi]
=
\Omega_\Sigma(\delta,X_\xi)
+F_{\partial\Sigma,\xi}(\delta).
$$

A Hamiltonian generator therefore exists only after the boundary flux is set to zero or made integrable.

For lapse and shift,

$$
G_\Sigma[N,N^i]
=
\int_\Sigma
\left(
N\mathcal C_\perp+N^i\mathcal C_i
\right)
+B_{\partial\Sigma}.
$$

Before constraints are imposed, the normal density contains

$$
\mathcal C_\perp^{\mathrm{raw}}
=
\mathcal H
+P_A(\mathcal L_n\phi^A-F_\perp{}^A)
-\bar\Pi_A{}^iF_i{}^A.
$$

The field-strength Hamiltonian \(\mathcal H\) is only one summand. It is not by itself the normal-deformation generator.

## Refoliations and field-dependent brackets

For field-dependent hypersurface deformations the appropriate bracket is the Bergmann--Komar bracket,

$$
[\xi,\eta]_{\mathrm{BK}}
=
[\xi,\eta]_{\mathrm{Lie}}
-X_\xi\eta
+X_\eta\xi.
$$

In the reduced compact sector the generators obey

$$
\{D[N],D[M]\}=D\!\left([N,M]\right),
$$

$$
\{D[N],H[M]\}=H[\mathcal L_NM],
$$

$$
\{H[N],H[M]\}
=
D\!\left[
h^{ij}
(N\partial_jM-M\partial_jN)
\right].
$$

This is the standard hypersurface-deformation algebra. A regular covariant field-strength map changes the Legendre description, not the refoliation symmetry.

## Restoring the equivalence divergence at a corner

The divergence discarded when establishing Einstein equivalence must be restored when charges or boundaries are present. For STEGR the corresponding corner term is

$$
B_{\partial\Sigma}^{\mathrm{STEGR,eq}}[N,N^i]
=
\oint_{\partial\Sigma}dS
\left[
N\,s_\mu\bar\Pi^\mu
-(s_iN^i)P_{\mathrm{tr}}
\right],
$$

where

$$
P_{\mathrm{tr}}
=\epsilon_n n_\mu\bar\Pi^\mu.
$$

The shift term disappears only if the deformation preserves the corner,

$$
s_iN^i=0.
$$

This is the most portable boundary lesson: do not discard equivalence divergences, normal displacement, or shift/corner pieces before the boundary conditions have been stated.

## Bianchi I and volume time

For diagonal Bianchi I, the kinetic matrix and its inverse are

$$
A=I-\mathbf1\mathbf1^T,
\qquad
A^{-1}=I-\frac12\mathbf1\mathbf1^T.
$$

With logarithmic scale factors \(\beta_i\),

$$
L_{\mathrm{BI}}
=-\frac{2V}{\kappa^2N}
\dot\beta^T A\dot\beta,
\qquad
P=-\frac{4V}{\kappa^2N}A\dot\beta,
$$

and

$$
H=N\mathcal C,
\qquad
\mathcal C
=-\frac{\kappa^2}{8V}
P^TA^{-1}P
\approx0.
$$

The swept four-volume

$$
\frac{d\tau}{ds}
=\int_\Sigma N\,d\Sigma
$$

reparametrizes a chosen foliation. It does not remove the local shape modes of the lapse or convert the Hamiltonian constraint into unconstrained evolution.

## Transfer to CPS and AdS boundary work

The paper supplies a three-layer audit:

$$
\text{field-strength Legendre map}
\;\longrightarrow\;
\text{CPS hypersurface pullback}
\;\longrightarrow\;
\text{constraint plus corner generator}.
$$

For finite-boundary or AdS work, the relevant instructions are:

- restore equivalence divergences before defining charges;
- retain both lapse-normal and shift-corner terms;
- distinguish invertibility of a covariant Legendre map from the Dirac constraint count;
- require integrability of \(F_{\partial\Sigma,\xi}\) before naming a Hamiltonian charge.

The paper is not yet a turnkey treatment of null hypersurfaces, nontrivial holonomy, an unreduced connection/multiplier phase space, or asymptotically renormalized charges.

## Verification boundary

Checked with Mathematica:

- A rational Lorentzian four-dimensional component test of the displayed \(Q\leftrightarrow\Pi\) inverse gave zero residual in every tested component. This is a nontrivial test, not a general tensor proof.
- The trace-block determinant is \(-3/4\), with inverse

  $$
  \begin{pmatrix}
  2/3&-4/3\\
  -1/3&-4/3
  \end{pmatrix}.
  $$

- \(AA^{-1}=I\) for the Bianchi-I matrices, and the Legendre transform gives

  $$
  H
  =-\frac{\kappa^2N}{8V}
  P^TA^{-1}P.
  $$

Not independently verified:

- The full 40-dimensional spectrum and inertia of the STEGR map.
- The formal-adjoint metric-affine equations and their full reduction to the Einstein tensor.
- The MTEGR inverse map and second Hamilton equation.
- The CPS bracket, possible boundary extension, and all unreduced connection/multiplier sectors.

Failed:

- No reproduced equation failed.
- The source itself does not provide an unreduced Dirac classification; no such claim is inferred here.
