---
paper id: 2607.19464v1
title: Conformal QED in AdS as a BCFT
authors:
  - Fabiana De Cesare
  - Simone Giombi
publication date: 2026-07-21T18:00
abstract: |-
  The paper studies fermionic and scalar conformal QED on Euclidean AdS below four dimensions with Dirichlet or Neumann gauge-field boundary conditions. It computes AdS free energies, fixed-point data, and boundary scalar mixing in an epsilon expansion, then interprets one Dirichlet operator's approach to marginality as a possible boundary-fixed-point merger. The residual-gauge and boundary-determinant mechanism is reusable, but the printed mixing matrices and scalar beta function do not reproduce their quoted downstream formulas.
comments: "33 pages, 5 figures"
url: https://arxiv.org/abs/2607.19464v1
summary: "A technically rich AdS/BCFT gauge-boundary calculation whose ghost-zero-mode mechanism survives audit, while its printed stability and scalar-fixed-point chains require correction."
tags: []
---

Back to [[2026_07_23_overview]].

Technical reason codes: T1-boundary, T2-dS-BH-holography, T2-model. Author signal: A-big-name for Simone Giombi. The author signal did not determine the medium placement.

The best reusable mechanism is

$$
\text{gauge boundary condition}
\longrightarrow
\text{residual gauge/ghost modes}
\longrightarrow
\text{boundary determinant and poles}
\longrightarrow
\text{renormalized AdS free energy}.
$$

The proposed BCFT stability chain is not presently reusable as printed because the displayed mixing matrices fail to produce the quoted anomalous dimensions.

## Dirichlet and Neumann gauge boundary conditions

The bulk is Euclidean AdS,

$$
ds^2=\frac{dz^2+d\vec x^{\,2}}{z^2},
$$

viewed as a BCFT on the Weyl-equivalent half-space. The regularized boundary quantity is

$$
\widetilde F
=-\sin\left(\frac{\pi(d-1)}2\right)F_{\mathrm{AdS}_d}.
$$

For \(3<d\leq4\), the gauge conditions are:

$$
\text{Neumann:}\qquad
A_i(z,\vec x)\sim a_i(\vec x),
$$

where \(a_i\) is a dynamical boundary gauge field, and

$$
\text{Dirichlet:}\qquad
A_i(z,\vec x)\sim z^{d-3}e^2J_i(\vec x),
$$

where \(J_i\) is a conserved, gauge-invariant boundary current.

The ghost asymptotics separate the two cases:

$$
\text{N:}\quad c\sim z^0,
\qquad
\text{D:}\quad c\sim z^{d-1}.
$$

Neumann therefore retains boundary gauge transformations and a constant ghost zero mode; Dirichlet does not. This residual sector generates the \(\log e_0^2\) term and the extra Neumann pole that must be canceled at next order.

## One-loop free energies

For \(N_f\) four-component charge-one Dirac fermions,

$$
S_{\mathrm{Maxwell}}
=\int\sqrt g\,\frac{F_{\mu\nu}F^{\mu\nu}}{4e_0^2},
$$

$$
S_{\mathrm{Ferm}}
=-\int\sqrt g
\sum_{i=1}^{N_f}
\bar\psi_i\gamma^\mu(\nabla_\mu+iA_\mu)\psi^i.
$$

Curvature counterterms proportional to the Euler density and \(\mathcal R^2\) are retained because the AdS free energy has ultraviolet poles.

For Dirichlet gauge BC,

$$
F_{\mathrm{Maxwell}}^{\mathrm D}
=\frac12\log\det_{(1)}
\big[-\nabla^2-(d-1)\big]
-\frac12\log\det_{(0)}[-\nabla^2].
$$

The source reports

$$
F_{\mathrm{Maxwell}}^{\mathrm D}
=\frac{31}{90\epsilon}
-0.013417
+0.54083\epsilon
+O(\epsilon^2).
$$

Neumann is constructed by boundary gauging:

$$
Z_{\mathrm N}
=\int\frac{\mathcal Da_i}{\operatorname{vol}\mathcal G}
Z_{\mathrm D}[a].
$$

At quadratic order,

$$
F_{\mathrm{Maxwell}}^{\mathrm N}
-F_{\mathrm{Maxwell}}^{\mathrm D}
=F_{a_i},
$$

where the transverse boundary determinant, primed scalar ghost determinant, and zero-mode volume give

$$
\delta F_{\mathrm{Maxwell}}
=\frac12\log(2\pi)
-2.405\,\epsilon
-\frac12\log e_0^2
+O(\epsilon^2).
$$

This boundary-gauging route is valuable independently of the paper's later stability interpretation.

## Two-loop diagram and fermionic fixed point

In Fried--Yennie gauge,

$$
\xi=\frac d{d-2},
$$

the vector propagator is decomposed into two chordal-distance functions. At this order the only fermionic interaction is

$$
e_0\Gamma^{\mathrm{FE}}
=i\bar\psi_i\gamma^\mu\psi^iA_\mu.
$$

The source reports one two-loop photon-exchange contribution:

$$
G_{\mathrm F}^{\mathrm D}
=-\frac{N_f}{12\pi^2},
$$

$$
G_{\mathrm F}^{\mathrm N}
=N_f\left(
\frac{1}{6\pi^2\epsilon}
+0.03187
\right).
$$

The charge beta function is

$$
\beta_e
=-\frac\epsilon2e
+\frac{4N_f}{3}\frac{e^3}{(4\pi)^2}
+\cdots,
$$

so

$$
e_*^2=\frac{6\pi^2\epsilon}{N_f},
\qquad
e_*=\pi\sqrt{\frac{6\epsilon}{N_f}}.
$$

After charge and curvature renormalization, the paper claims cancellation of the one-loop poles, the extra Neumann pole, and all fixed-point \(\log\mu\) terms. The displayed result has

$$
F_*^{\mathrm N}-F_*^{\mathrm D}
=-1.1217-1.2117\epsilon
+\frac12\log\frac{N_f}{\epsilon}
+O(\epsilon^2).
$$

The numerical determinant and diagram coefficients were not reproducible from the source without the authors' integration code.

## Boundary displacement mixing

At \(d=4\), the Maxwell and matter sectors each supply a parity-even singlet scalar. For Dirichlet,

$$
\mathcal D_{\mathrm{Max}}^{\mathrm D}
=\frac{e^2}{2}J_iJ^i,
$$

while for Neumann,

$$
\mathcal D_{\mathrm{Max}}^{\mathrm N}
=-\frac{1}{4e^2}f_{ij}f^{ij}.
$$

The corresponding fermion operator is a boundary kinetic bilinear. The source prints

$$
\Gamma=
\begin{pmatrix}
0&\mp N_f/\pi^6\\
\mp N_f/\pi^6&\pm N_f/\pi^6
\end{pmatrix},
$$

and classical shift matrices

$$
\delta\Delta^{\mathrm D}
=
\begin{pmatrix}
2&0\\
0&1
\end{pmatrix},
\qquad
\delta\Delta^{\mathrm N}
=
\begin{pmatrix}
0&0\\
0&1
\end{pmatrix}.
$$

The quoted eigen-dimensions are

$$
\Delta_1^{\mathrm D}
=\Delta_1^{\mathrm N}
=4-\epsilon=d,
$$

$$
\Delta_2^{\mathrm D}
=4-2\epsilon-\frac{2\epsilon}{N_f},
\qquad
\Delta_2^{\mathrm N}
=4+\frac{2\epsilon}{N_f}.
$$

These final formulas would make the first eigenvector the protected displacement operator and would drive the second Dirichlet operator toward marginality at

$$
\Delta=d-1.
$$

However, using the source's own correlator convention

$$
\gamma_{\mathrm{eff}}
=e_*^2\Gamma-\epsilon\,\delta\Delta,
$$

the displayed matrices do not have \(-\epsilon\) as an eigenvalue:

$$
\det(\gamma_{\mathrm{eff}}+\epsilon\mathbf1)
=-\frac{6\epsilon^2(6+\pi^4)}{\pi^8}\neq0.
$$

Moreover, after substituting \(e_*^2\), their eigenvalues lose the \(N_f\)-dependence required by the quoted \(2/N_f\) term. Missing operator normalizations, signs, or powers of \(\pi\) are likely. The source does not determine the repair.

The reported merger dimensions

$$
d_{\mathrm{merg}}
=3+\frac{2}{N_f+2}
$$

are arithmetically correct **conditional on the quoted final dimension**, but that final dimension is not derived by the displayed matrix.

Consequently, the existence of a second Dirichlet fixed point \(\mathrm D^*\), a \(\mathrm D\)-\(\mathrm D^*\) merger, and stability in \(d=3\) remain interpretation rather than checked output.

## Boundary fermion from the bulk equation

For Dirichlet gauge BC, the bulk Dirac equation

$$
\gamma\cdot\nabla\Psi
=-ieA_\mu\gamma^\mu\Psi
$$

is used to reduce the boundary anomalous dimension to AdS master integrals. The source reports

$$
\widehat\Delta_\Psi
=\frac{d-1}{2}
+\frac{3e^2}{16\pi^2},
$$

and hence

$$
\widehat\Delta_\Psi
=\frac32+\frac{9-4N_f}{8N_f}\epsilon
$$

at the fermionic fixed point. Neumann is not treated because the boundary fermion is then not gauge invariant.

## Scalar-QED extension and its beta-function mismatch

The scalar action is

$$
S_{\mathrm{scal}}
=\int\sqrt g\left[
D_\mu\phi_i^*D^\mu\phi^i
+m^2\phi_i^*\phi^i
+\lambda(\phi_i^*\phi^i)^2
\right],
$$

with conformal mass

$$
m^2=-\frac{d(d-2)}4.
$$

The source keeps the scalar \(\Delta_+=d/2\) quantization and both gauge boundary conditions. At NLO it includes photon exchange, a seagull, a quartic figure-eight, and a contact term generated by double derivatives of the scalar propagator. The contact term is a useful warning for any analogous AdS calculation.

The source prints

$$
\beta_e
=-\frac{\epsilon e}{2}
+\frac{N_s}{6}\frac{e^3}{(4\pi)^2},
$$

but then quotes

$$
e_*^2=\frac{24\pi^2\epsilon}{N_s}.
$$

The printed beta function instead gives

$$
e_*^2=\frac{48\pi^2\epsilon}{N_s}.
$$

The quoted fixed point would require the cubic coefficient \(N_s/3\), not \(N_s/6\). Therefore the scalar fixed-point chain fails as printed, and downstream scalar free energies and mixing data cannot be treated as derived from the displayed beta function.

The quartic fixed-point discriminant

$$
N_s^2-180N_s-540
$$

has positive root

$$
90+24\sqrt{15}
=182.9516\ldots,
$$

so the quoted first allowed integer \(N_s=183\) is arithmetically correct conditional on that formula.

The scalar mixing matrices have the same normalization problem as the fermionic matrices and do not reproduce the quoted protected and unprotected dimensions. The final large-\(N_s\) expansion

$$
\widehat\Delta_\phi
=2-\frac{5\epsilon}{8}
+\frac{75\epsilon}{8N_s}
+\frac{255\epsilon}{N_s^2}
+\cdots
$$

does expand correctly from the preceding quoted closed form, but that does not repair the beta-function mismatch.

## What can be reused

- The boundary-gauging identity \(Z_{\mathrm N}=\int Da\,Z_{\mathrm D}[a]\).
- The connection among residual gauge transformations, ghost zero modes, \(\log e_0^2\), and the NLO pole structure.
- Joint charge/curvature renormalization for AdS free energies.
- The expectation that mixing of two decoupled displacement operators must leave one protected \(\Delta=d\) combination—useful as a normalization check.
- The bulk-EOM route to boundary anomalous dimensions.
- Explicit contact-term bookkeeping for scalar derivative vertices.

The printed mixing matrices should not be reused until corrected. The \(d=3\) fixed-point-merger story is an epsilon-extrapolation built on that failed matrix chain.

## Verification note

Checked with Mathematica:

- the fermionic fixed point \(e_*=\pi\sqrt{6\epsilon/N_f}\);
- the merger-dimension arithmetic conditional on the quoted dimensions;
- the scalar fixed-point reality threshold \(N_s\ge183\);
- the large-\(N_s\) expansion of the quoted scalar boundary dimension;
- the numerical root arithmetic for the displayed free-energy differences, conditional on their decimal coefficients.

Failed:

- the printed scalar beta function does not yield the quoted scalar \(e_*\);
- the printed fermionic and scalar mixing matrices do not yield the quoted protected or unprotected dimensions.

Blocked without the authors' calculation notebooks:

- determinant finite parts;
- two-loop AdS diagram constants and pole cancellations;
- contact-term normalizations;
- master-integral values;
- the decimal fixed-point free-energy coefficients.
