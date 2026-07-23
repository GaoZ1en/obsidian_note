---
paper id: 2607.19468v1
title: "Confinement Versus Screening in the Schwinger Model on AdS$_2$ from Bosonization and Tensor Networks"
authors:
  - Sriram Bharadwaj
  - Jack Isen
  - Zhong-Bo Kang
publication date: 2026-07-21T18:00
abstract: |-
  The paper studies single-flavor QED2 on AdS2 in Schwarzschild and global frames, with and without a black hole. In the massless theory, bosonization gives a self-energy-subtracted probe potential that decays at large geodesic separation, consistent with explicit breaking of electric one-form symmetry. A midpoint-link discretization restores the curved Dirac operator in the continuum, and matrix-product-state calculations support screening for the explored massive models.
comments: "40 pages, 7 figures"
url: https://arxiv.org/abs/2607.19468v1
summary: "The reusable lesson is to subtract position-dependent one-probe energies before diagnosing confinement on curved space, then check screening with the off-diagonal Green function and flux tail."
tags: []
---

Back to [[2026_07_23_overview]].

Technical reason codes: T1-boundary, T2-dS-BH-holography, T2-model. There is no tracked-author signal.

The central diagnostic is

$$
\boxed{
\text{binding potential}
=\text{two-probe energy}
-\text{two one-probe self-energies}.
}
$$

On a curved static background the individual self-energies depend on position. Their growth is not evidence for confinement. The self-energy-subtracted interaction and the electric-field tail are the relevant observables.

## Two AdS\(_2\) Hamiltonian frames

The Schwarzschild/Poincare frame is

$$
ds^2
=-f(r)dt^2+\frac{dr^2}{f(r)},
\qquad
f(r)=\frac{r^2}{L^2}
$$

for pure AdS\(_2\). Constant-\(r\) observers are accelerated, with proper acceleration \(1/L\).

The global frame is

$$
ds^2
=L^2\left(
-\cosh^2\rho\,d\tau^2+d\rho^2
\right),
$$

and \(\rho=0\) is geodesic. The black-hole coordinates use

$$
f(r)=\frac{r^2-r_h^2}{L^2},
\qquad
T_H=\frac{r_h}{2\pi L^2}.
$$

The static probe, vacuum, and energy all depend on which Killing flow defines the Hamiltonian. The source's discussion immediately after its vacuum table is unclear about equivalence of the Schwarzschild and global vacua; formula reuse should keep the frames separate.

## Fermions, gauge field, and bosonization

The curved-space actions are

$$
S_f
=\int d^2x\sqrt{-g}\,
\bar\psi(i\Gamma^\mu D_\mu-m)\psi,
$$

$$
D_\mu
=\partial_\mu+iA_\mu
-\frac14\omega_\mu^{ab}\gamma_a\gamma_b,
$$

and

$$
S_g
=-\frac1{4e^2}\int d^2x\sqrt{-g}\,
F_{\mu\nu}F^{\mu\nu}.
$$

For the massless theory,

$$
j^\mu
=\frac1{\sqrt\pi}
\varepsilon^{\mu\nu}\partial_\nu\phi.
$$

An external static density is written

$$
\rho_0(r)=\partial_r\theta(r),
$$

so Gauss's law integrates to

$$
E=\frac{\phi}{\sqrt\pi}+\theta.
$$

In the Schwarzschild frame the static Hamiltonian is

$$
H
=\int dr\left[
\frac{e^2}{2}
\left(\frac{\phi}{\sqrt\pi}+\theta\right)^2
+\frac{f(r)}2(\partial_r\phi)^2
\right].
$$

Its field equation is

$$
-\partial_r(f\partial_r\phi)
+\frac{e^2}{\pi}\phi
=-\frac{e^2}{\sqrt\pi}\theta.
$$

In the global frame the reduced Hamiltonian is

$$
H
=\frac12\int d\rho\,a(\rho)
\left[
\Pi_\phi^2
+(\partial_\rho\phi)^2
+\mu^2(\phi+\sqrt\pi\theta)^2
\right],
$$

with

$$
a(\rho)=\cosh\rho,
\qquad
\mu^2=\frac{e^2L^2}{\pi}.
$$

## Schwarzschild-frame Green function

For \(f=r^2/L^2\), the homogeneous equation is

$$
r^2\phi''+2r\phi'
-\frac{e^2L^2}{\pi}\phi=0.
$$

Define

$$
\nu
=-\frac12
+\sqrt{\frac14+\frac{e^2L^2}{\pi}},
$$

so that

$$
\nu(\nu+1)=\frac{e^2L^2}{\pi}.
$$

The Green function is

$$
G(r,r')
=\frac{1}{2\nu+1}
r_<^\nu r_>^{-\nu-1}.
$$

It obeys

$$
\left[
-r^2\partial_r^2
-2r\partial_r
+\nu(\nu+1)
\right]G(r,r')
=\delta(r-r').
$$

For external charges \(q_1,q_2\) at \(r_1<r_2\), the on-shell energy is

$$
H[q_1,q_2]
=\frac{e^2}{2(2\nu+1)}
\left[
q_1^2r_1
+2q_1q_2r_1
\left(\frac{r_1}{r_2}\right)^\nu
+q_2^2r_2
\right].
$$

For a neutral pair \(q_1=q,\ q_2=-q\), the one-probe energies are

$$
H[q,0]
=\frac{e^2q^2}{2(2\nu+1)}r_1,
$$

$$
H[0,-q]
=\frac{e^2q^2}{2(2\nu+1)}r_2.
$$

Subtracting them gives the binding potential

$$
V_{q\bar q}(r_1,r_2)
=-\frac{e^2q^2}{2\nu+1}
r_1\left(\frac{r_1}{r_2}\right)^\nu.
$$

Since

$$
d=L\log\frac{r_2}{r_1},
$$

one may write, with \(r_1\) fixed,

$$
V_{q\bar q}
=-\frac{e^2q^2r_1}{2\nu+1}
e^{-\nu d/L}.
$$

Thus the interaction tends to zero exponentially as the geodesic separation grows. The total two-probe energy can still grow because each separately accelerated probe has a position-dependent self-energy.

## Global-frame and thermal potentials

Let \(u_L,u_R\) be decaying solutions at the two global boundaries and

$$
\mathcal W
=a(\rho)
\big(u_Lu_R'-u_L'u_R\big)
$$

their weighted Wronskian. The subtracted potential is

$$
V_{q\bar q}(\rho_1,\rho_2)
=-\frac{\pi q^2}{\mathcal W}
a(\rho_1)a(\rho_2)
u_L'(\rho_1)u_R'(\rho_2).
$$

It depends on the absolute positions, not only their separation, because the global redshift factor breaks radial translation invariance.

At finite temperature the Wilson-line free energy is

$$
\Delta F
=\frac{e^2q^2}{2}
\left[
G_\beta(r_1,r_1)
+G_\beta(r_2,r_2)
-2G_\beta(r_1,r_2)
\right].
$$

After the same one-body subtraction,

$$
V_{q\bar q}(r_1,r_2)
=-e^2q^2G_\beta(r_1,r_2).
$$

The Hartle--Hawking Green function is selected by regularity at \(r=r_h\) and decay/normalizability at the AdS boundary.

## Electric one-form symmetry

Pure Maxwell theory satisfies

$$
\nabla_\mu F^{\mu\nu}=0,
$$

so the electric one-form symmetry is unbroken, Wilson lines cannot end, and the flux tube gives

$$
V_{\mathrm{Maxwell}}
=\frac{e^2q^2}{2}(r_2-r_1).
$$

Dynamical fermions change the equation to

$$
\nabla_\mu F^{\mu\nu}=j^\nu\neq0,
$$

explicitly breaking that one-form symmetry and allowing Wilson lines to terminate on charged local operators.

The logical implication is one-sided:

$$
\text{broken one-form symmetry}
\Longrightarrow
\text{screening is allowed},
$$

not guaranteed. The Green-function decay and flux profile provide the actual screening evidence for the massless theory.

## Midpoint-link discretization

After the spinor rescaling, the relevant curved radial operator is

$$
i\nabla_r^{(a)}
=i\left[
a(r)(\partial_r+iA_r)
+\frac12a'(r)
\right].
$$

The lattice operator is

$$
\nabla_{nm}
=\frac{
f_{n+\frac12}U_n\delta_{n+1,m}
-f_{n-\frac12}U_{n-1}^\dagger\delta_{n-1,m}
}{2a_{\mathrm{lat}}}.
$$

In the gauge \(U_n=1\), its continuum expansion is

$$
\frac{
f(r+a_{\mathrm{lat}}/2)\psi(r+a_{\mathrm{lat}})
-f(r-a_{\mathrm{lat}}/2)\psi(r-a_{\mathrm{lat}})
}{2a_{\mathrm{lat}}}
=f\psi'
+\frac12f'\psi
+O(a_{\mathrm{lat}}^2).
$$

This packages the derivative and spin-connection contribution into one anti-Hermitian finite-spacing operator.

With open boundaries and

$$
Q_n
=\chi_n^\dagger\chi_n
-\frac{1-(-1)^n}{2},
$$

Gauss's law gives

$$
E_n=\sum_{j\leq n}Q_j,
$$

which becomes a long-range interaction after the Jordan--Wigner map.

## Matrix-product-state comparison

The numerical procedure is:

1. optimize the ground state by MPS/DMRG;
2. insert a static opposite-charge pair;
3. compute and subtract the two separate one-charge energies;
4. compare the saturated potential with the continuum result;
5. de-stagger the electric field with

   $$
   \bar E_n
   =\frac14(E_{n-1}+2E_n+E_{n+1});
   $$

6. evolve a gauge-invariant meson state by TDVP and observe collapse of the interior flux string.

The analytic screening result is exact for the massless model. Screening at nonzero fermion mass is finite-size numerical evidence for the explored masses and lattice parameters, not a general phase theorem.

## Reusable boundary and quantization lessons

- Specify the Killing time, static worldlines, vacuum, and normalization before comparing energies in different AdS frames.
- Define the interaction as the connected two-probe observable; subtract position-dependent one-body terms.
- Use broken one-form symmetry only as a permission statement, then verify the off-diagonal Green function or flux tail.
- At finite temperature, impose horizon regularity before constructing the static Green function.
- Discretize \(a\partial+\tfrac12a'\) as one midpoint-weighted operator.
- Compare continuum and lattice flux profiles without fitting an arbitrary amplitude.

## Verification note

Checked with Mathematica:

- \(\nu(\nu+1)=e^2L^2/\pi\);
- both homogeneous powers \(r^\nu\) and \(r^{-\nu-1}\);
- the Green-function derivative jump \(G'_+-G'_-=-r'^{-2}\), giving unit delta normalization;
- the self-energy subtraction and the exponential \(e^{-\nu d/L}\) form;
- the midpoint discretization, including its \(O(a_{\mathrm{lat}}^2)\) leading error.

Source-derived, not independently reproduced:

- curved-space bosonization normalization;
- global and thermal Green-function Wronskians;
- electric-field profile normalization;
- MPS convergence in lattice spacing, system size, and bond dimension;
- Appendix-A coordinate-covariance proof.

Source issues:

- the displayed Eq. (2.17) changes the sign of the \(A_r\) term across an equality;
- the global/Schwarzschild vacuum-equivalence prose is unclear;
- one finite-temperature passage calls \(r\to\infty\) an AdS horizon although it is the asymptotic boundary in the displayed coordinates;
- notation switches between \(e\) and \(g\), and one strong-coupling asymptotic is inconsistent with the displayed definition of \(\nu\).
