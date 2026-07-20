---
paper id: 2607.15731v1
title: "Scalar quasinormal modes of Schwarzschild--anti-de Sitter black holes: spectral analysis and generalized boundary conditions"
authors:
  - Davide Batic
  - Alan S. Cornell
  - Denys Dutykh
publication date: 2026-07-17T08:12
abstract: |-
  The paper computes massless scalar quasinormal modes of four-dimensional Schwarzschild--AdS black holes with a Chebyshev quadratic-eigenvalue method. It reproduces standard Dirichlet spectra and then imposes a generalized linear relation between the two asymptotic coefficients, finding a growing mode for every non-Dirichlet parameter value sampled.
comments: "24 pages, 3 figures"
url: https://arxiv.org/abs/2607.15731v1
summary: "The reusable result is a coefficient-level Chebyshev boundary row; its instability is for a nonstandard deformation, not BF-window alternative quantization."
tags: []
---

Back to [[2026_07_20_overview]].

The paper is directly adjacent to the vault's scalar boundary-condition work, but its generalized family must be classified correctly. It studies a **minimally coupled massless scalar**, outside the Breitenlohner--Freedman alternative-quantization window. The coefficient relation is a deliberate deformation of the QNM domain, not the usual finite-energy Robin/double-trace family.

# Schwarzschild--AdS radial problem

The four-dimensional background is

$$
ds^2
=
-f(r)dt^2+rac{dr^2}{f(r)}+r^2d\Omega_2^2,
\qquad
f(r)=1-rac{2M}{r}+\frac{r^2}{R^2},
$$

with (\Lambda=-3/R^2). Writing

$$
\phi
=
e^{-i\omega t}Y_{\ell m}(\vartheta,\varphi)
\frac{\psi(r)}{r},
$$

the radial equation becomes

$$
\frac{d^2\psi}{dr_*^2}
+\left[\omega^2-U(r)\right]\psi=0,
\qquad
U=f\left(\frac{f'}r+\frac{\ell(\ell+1)}{r^2}\right),
$$

where (dr_*/dr=f^{-1}). The convention (e^{-i\omega t}) means

$$
\operatorname{Im}\omega<0
\quad\Longleftrightarrow\quad
\text{damped mode}.
$$

Introduce

$$
x=\frac rR,
\qquad
x_+=\frac{r_+}{R},
\qquad
\Omega=\omega R,
\qquad
2\mu=x_+(1+x_+^2).
$$

The blackening factor is

$$
f(x)
=
1+x^2-
\frac{x_+(1+x_+^2)}x
=
(x-x_+)
\frac{x^2+x_+x+x_+^2+1}{x}.
\tag{11}
$$

Since

$$
\frac{d\mu}{dx_+}
=
\frac{1+3x_+^2}{2}>0,
$$

(x_+) labels the geometry one-to-one. The paper uses (x_+=0.01,1,50) as small, intermediate, and large black-hole benchmarks.

# Horizon and AdS coefficient data

Set (z=r/r_+), so the horizon is (z=1). The radial equation is

$$
f\,\partial_z(f\partial_z\psi)
+\left[x_+^2\Omega^2-V(z)\right]\psi=0,
\tag{15}
$$

with

$$
f(z)
=
(z-1)
\frac{x_+^2z^2+x_+^2z+x_+^2+1}{z}.
\tag{16}
$$

At the regular singular horizon,

$$
\rho_\pm
=
\pm\frac{i x_+\Omega}{1+3x_+^2}.
$$

The ingoing branch is

$$
\psi_{\rm in}
\sim
(z-1)^{-i\beta\Omega},
\qquad
\beta=\frac{x_+}{1+3x_+^2}.
\tag{21}
$$

At the AdS boundary the two branches are

$$
\psi(z)
\sim
Az+\frac B{z^2},
\qquad
\frac{\psi(z)}z
\sim
A+\frac B{z^3}.
\tag{24}
$$

The standard massless-scalar QNM problem sets (A=0). For this Dirichlet problem the paper factors both endpoint behaviors,

$$
\psi
=
z^{-2+i\beta\Omega}
(z-1)^{-i\beta\Omega}\Phi(z),
\tag{26}
$$

leaving a regular (\Phi) for Chebyshev collocation.

# The generalized coefficient family

To retain both boundary coefficients, the paper imposes

$$
A\cos\theta+B\sin\theta=0,
\qquad
0\leq\theta\leq\frac\pi2.
\tag{60}
$$

Thus

$$
\theta=0:\ A=0
\quad\text{(Dirichlet)},
\qquad
\theta=\frac\pi2:\ B=0
\quad\text{(`coefficient-Neumann')}.
$$

The second endpoint is not ordinary radial Neumann data. To avoid contaminating (A) and (B) while still factoring the horizon, the ansatz is

$$
\psi=z\,\mathcal H(z;\Omega)\chi(z),
\tag{61}
$$

with

$$
\mathcal H
=
\exp\!\left[
-i\beta\Omega
\left(
\ln(1-z^{-1})+z^{-1}+\frac1{2z^2}+\frac1{3z^3}
\right)
\right].
\tag{62}
$$

The three explicit inverse powers cancel the first three terms in the large-(z) logarithm, so

$$
\mathcal H
=
1+\frac{i\beta\Omega}{4z^4}+O(z^{-5}).
$$

The regular unknown therefore retains

$$
\chi
=
A+\frac{\mathcal C_2}{z^2}+\frac B{z^3}+O(z^{-4}),
$$

where direct substitution gives

$$
\mathcal C_2
=
\frac{\Omega^2-\ell(\ell+1)}{2x_+^2}A.
$$

This horizon factor is a useful design pattern: make the factor asymptotically neutral through the highest coefficient one wants to impose independently.

# From asymptotic coefficients to one Chebyshev row

Compactify the domain with

$$
z=\frac{2}{1-y},
\qquad
y=-1\ \text{at the horizon},
\qquad
y=1\ \text{at the AdS boundary}.
$$

Then

$$
A=\chi(1),
\qquad
B=-\frac43\chi'''(1),
\tag{95}
$$

so the boundary condition becomes

$$
\cos\theta\,\chi(1)
-\frac43\sin\theta\,\chi'''(1)=0.
\tag{96}
$$

Expand

$$
\chi(y)=\sum_{j=0}^{N-1}b_jT_j(y).
$$

The endpoint identity

$$
T_j'''(1)
=
\frac{j^2(j^2-1)(j^2-4)}{15}
\tag{98}
$$

turns the boundary data into the single row

$$
\sum_{j=0}^{N-1}
\left[
\cos\theta
-\frac4{45}
j^2(j^2-1)(j^2-4)\sin\theta
\right]b_j=0.
\tag{99}
$$

The other (N-1) rows are the regularized differential equation at interior collocation points. Together they form

$$
\left(
\mathcal M_0+i\Omega\mathcal M_1+\Omega^2\mathcal M_2
\right)\mathbf b=0.
\tag{100}
$$

Because the boundary row is independent of (\Omega), the corresponding row of (\mathcal M_2) vanishes. Instead of linearizing a singular leading matrix, write the constraint as (c^T\mathbf b=0), take a nullspace basis (Z), and set (\mathbf b=Z\mathbf u). Selecting the bulk rows with (\mathcal R) gives

$$
\left(
\widehat{\mathcal M}_0
+i\Omega\widehat{\mathcal M}_1
+\Omega^2\widehat{\mathcal M}_2
\right)\mathbf u=0,
$$

$$
\widehat{\mathcal M}_k
=
\mathcal R\mathcal M_kZ.
\tag{107}
$$

This is the paper's most transferable construction: coefficient extraction, one exact endpoint row, nullspace elimination, and only then companion linearization.

# What the numerical evidence establishes

The production calculation uses high-precision matrices and compares (N=190,195,200). A mode is accepted when its matched triplet is stable within an absolute/relative tolerance (10^{-4}). This spread is an internal convergence diagnostic, not a rigorous eigenvalue error bound or a proof against spectral pollution.

For (\ell=0), the generalized-boundary scan uses

$$
x_+\in\{0.01,1,50\}
$$

and

$$
\theta\in
\left\{
\frac\pi{64},\frac\pi{32},\frac\pi{16},
\frac{3\pi}{32},\frac\pi8,\frac\pi4,
\frac{3\pi}8,\frac\pi2
\right\}.
$$

The source finds no growing mode at (\theta=0), and at least one mode with (\operatorname{Im}\Omega>0) for every nonzero point in this finite scan. Therefore the supported conclusion is

$$
\boxed{
\text{all sampled non-Dirichlet coefficient deformations are unstable}
}
$$

and not

$$
\boxed{
\text{every }0<\theta\leq\pi/2
\text{ is proven unstable}.
}
$$

No angle below (\pi/64), no (\ell>0), and no black-hole size outside the three benchmarks is tested. A caption in Table XI says (N\in\{90,195\}), while the method and the same caption's following sentence use (N\in\{190,195,200\}); this is an evident typographical inconsistency.

# Why this is not alternative quantization

For a scalar in AdS\(_4),

$$
\Delta_\pm
=
\frac32
\pm
\sqrt{\frac94+m^2R^2}.
$$

The usual alternative-quantization window is

$$
-\frac94<m^2R^2<-rac54,
$$

with separate endpoint subtleties. Here (m^2=0), hence

$$
\Delta_-=0,
\qquad
\Delta_+=3,
$$

outside that window. The constant branch is not the second standard finite-energy quantization. The instability says nothing directly about BF-window Robin boundary conditions.

There is also a normalization caveat. Since (z=r/r_+), the fast coefficient in an expansion using (\rho=R/r) differs by a factor (x_+^3). Holding the same numerical (\theta) while varying (x_+) therefore does not hold a dimensionful physical boundary coupling fixed unless an additional scale convention is supplied.

# Reuse in the vault

For the scalar alternative-quantization notes, reuse the numerical mechanism but replace the domain:

1. derive the admissible slow/fast coefficients from the variational principle and symplectic flux;
2. choose a dimensionally fixed Robin/double-trace coupling;
3. build its endpoint derivative row;
4. eliminate that row before polynomial-pencil linearization;
5. distinguish numerical convergence from the physical energy/flux stability criterion.

The same boundary-row method can be adapted to Maxwell's two reflective branches or gravitational master fields once the correct fixed-boundary-metric/flux condition is known.

# Verification note

**Checked.** Mathematica reproduced Eq. (11), (d\mu/dx_+), the two horizon Frobenius roots, the infinity roots (-2,1), the (z^{-4}) onset of the horizon factor, the coefficient (\mathcal C_2), the relation (B=-4\chi'''(1)/3), the Chebyshev third-derivative identity, the boundary-row coefficient, and the companion-linearization block algebra.

**Assumptions.** (x_+>0); (e^{-i\omega t}); the source's radial-field normalization; the generalized family is treated as a formal coefficient-domain deformation; the BF-window comparison uses standard AdS\(_4) scalar quantization.

**Not verified.** The Maple-generated bulk matrices, Julia arbitrary-precision eigenspectra, triplet matching, every frequency table/figure, and absence of spectral pollution were not independently reproduced. The instability boundary is exactly the sampled parameter set above.
