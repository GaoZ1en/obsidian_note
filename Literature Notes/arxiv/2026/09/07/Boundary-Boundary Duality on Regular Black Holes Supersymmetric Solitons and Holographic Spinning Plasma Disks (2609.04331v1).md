---
paper id: 2609.04331v1
title: Boundary-Boundary Duality on Regular Black Holes, Supersymmetric Solitons and Holographic Spinning Plasma Disks
authors:
  - Andres Anabalon
  - Horatiu Nastase
publication date: 2026-09-03T18:02:49
abstract: |-
  A four-dimensional Einstein-Maxwell-AdS solution has two codimension-one conformal asymptotic regions: a Minkowski boundary carrying a rigidly rotating conformal-fluid stress tensor and a rotating three-geometry with vanishing Brown-York stress tensor but nonzero Cotton tensor. After a double Wick rotation and exchange of the two bulk scale coordinates, the latter Cotton tensor reproduces the former energy density, while electromagnetic duality exchanges their electric and magnetic currents.
comments: "15 pages; lectures announced for 8 September; the official generated PDF has 16 pages including references"
url: https://arxiv.org/abs/2609.04331v1
summary: "An exact two-boundary AdS4 solution realizes matched stress/Cotton and electromagnetic data, but not yet a full equivalence of boundary QFTs."
tags: []
---

Daily overview: [[2026_09_07_overview]].

# Verdict

**Correct under the following precise conditions:** for the displayed Lorentzian Einstein--Maxwell--AdS$_4$ ansatz, with $y>1$, $\phi\sim\phi+2\pi$, the paper's normalizations, and parameters restricted by its horizon/closed-timelike-curve inequalities, the local field equations, regularity tests, two conformal limits, holographic stress tensors, and electromagnetic current exchange are mutually consistent.

**The stronger statement should be rewritten as:** the construction gives classical holographic evidence for a boundary--boundary correspondence between selected one-point functions and sources after a double Wick rotation and $r\leftrightarrow y$ identification. It does not prove an isomorphism of boundary QFTs, equality of generating functionals, equality of spectra or operator products, or a quantum mirror duality. The second boundary's simultaneous admissibility as “Dirichlet or Neumann” also requires a fully specified renormalized variational principle; vanishing of one stress-tensor expectation value alone does not establish both boundary conditions.

# Source map

- Section 1 motivates the spinning-plasma disk, states the two-boundary picture, and previews the stress/Cotton and electromagnetic maps.
- Section 2 fixes Einstein--Maxwell--AdS conventions and records the gravitino variation used only through its integrability condition.
- Section 3 gives the exact metric and gauge field, horizon data, global topology, and sufficient no-CTC conditions.
- Section 4 identifies two supersymmetric parameter loci from the determinant of the integrability condition.
- Section 5 takes a correlated zero-rotation limit to the planar dyonic Reissner--Nordström--AdS black hole and identifies the $m=q=0$ geometry with pure AdS$_4$.
- Section 6 derives the $r\to\pm\infty$ Minkowski boundaries, the $y\to\infty$ rotating boundary, and their codimension-two light-surface junction.
- Section 7 performs holographic renormalization at both boundaries and matches the Minkowski energy density to the double-Wick-rotated Cotton energy density.
- Section 8 computes electric and magnetic currents and boundary field strengths and exhibits their exchange under bulk electromagnetic duality plus $r\leftrightarrow y$.
- Section 9 summarizes the BCFT/end-of-world-brane interpretation and proposes rotating solitons as supersymmetric endpoints; these last claims are prospective rather than derived stability theorems.

# Theory and conventions

The bulk action is

$$
S[g,A]=\frac{1}{2\kappa}\int d^4x\sqrt{-g}
\left(R+\frac{6}{L^2}-\frac14F_{\mu\nu}F^{\mu\nu}\right)+S_\partial.
$$

The equations are

$$
\partial_\mu(\sqrt{-g}F^{\mu\nu})=0,
$$

$$
R_{\mu\nu}-\frac12g_{\mu\nu}R
-\frac12\left(F_{\mu\rho}F_\nu{}^\rho-\frac14g_{\mu\nu}F^2\right)
-\frac{3}{L^2}g_{\mu\nu}=0.
$$

Coordinates and parameter range are

$$
t\in\mathbb R,qquad \phi\in(0,2\pi),qquad y\in(1,\infty),
\qquad r\in\mathbb R.
$$

$L$ is the AdS radius, $\kappa$ the reduced Newton coupling, $m,q,\alpha$ integration parameters, and $\theta$ the electric--magnetic duality angle. The metric is independent of $\theta$; the gauge field is not. The fluid angular velocity is

$$
\Omega_0=\frac{\alpha}{L^2},
$$

and is explicitly distinct from the thermodynamic horizon angular velocity.

# Geometry and causal domain

The metric has a block form in $(t,\phi)$ plus diagonal $y,r$ pieces. Its determinant collapses to

$$
\det g=-\alpha^2L^4(r^2+y^2)^2.
$$

Because $y>1$, the potential pole at $r^2+y^2=0$ is outside the coordinate domain. The radial horizon polynomial is

$$
F(r)=L^{-2}r^4+L^{-2}r^2-mr+q^2.
$$

If $r_0,r_1$ are two roots,

$$
m=\frac{(r_0+r_1)(r_0^2+r_1^2+1)}{L^2},
$$

$$
q^2=\frac{r_0r_1(r_0^2+r_0r_1+r_1^2+1)}{L^2}.
$$

The horizon generators and outer-horizon temperature are

$$
\xi_i=\partial_t+\omega_i\partial_\phi,
\qquad
\omega_i=\frac{\alpha r_i^2}{L^2(1+r_i^2)},
$$

$$
T=\frac{\alpha(3r_0^4+r_0^2-q^2L^2)}
{4\pi r_0(r_0^2+1)L^2}.
$$

For closed timelike curves, the relevant component is

$$
g_{\phi\phi}=L^4\frac{y^2-1}{y^2+r^2}igl(h(r)y^2+F(r)\bigr),
$$

$$
h(r)=mr+L^{-2}r^2-q^2+L^{-2}.
$$

Outside and between the chosen horizons, the paper rewrites the terms so that $g_{\phi\phi}\ge0$. For the remaining region it uses the sufficient discriminant condition

$$
m^2L^4+4q^2L^2-4<0.
$$

Together with $F(r)>0$ for all real $r$, this defines smooth horizonless solitons without CTCs. Compatibility with black-hole regions is shown numerically in the paper, not analytically classified over the full parameter space.

# Supersymmetric and static limits

The determinant of the gravitino-integrability condition vanishes at

$$
\theta=0,quad mL=\pm2q,
$$

or

$$
\theta=\frac\pi2,quad m=0,quad qL=\frac12.
$$

The source states that $F(r)>0$ on both loci; the electric branch additionally requires $2q^2L^2<1$ to exclude CTCs. The paper does not display Killing spinors or a fluctuation-spectrum proof of stability, so “supersymmetric ground state” is conditional on the standard positive-energy/BPS framework and fixed-charge boundary conditions.

A correlated $\alpha\to0$ scaling,

$$
r=\frac{\rho}{\alpha(1+\alpha^2\hat x^2/2L^2)},
\quad y=1+\frac{\alpha^2\hat x^2}{2L^2},
\quad m=\frac{m_s}{\alpha^3},
\quad q=\frac{q_s}{\alpha^2},
$$

gives the planar dyonic Reissner--Nordström--AdS metric. This is a singular reparameterized limit, not a regular static member of the supersymmetric soliton family.

# The two conformal boundaries

With conformal factor

$$
\omega=\frac{L}{\alpha r y},
$$

the $r\to\infty$ boundary has representative

$$
ds_r^2=-dt^2+dw^2+w^2d\phi^2,
\qquad
y=\gamma=\frac{1}{\sqrt{1-\Omega_0^2w^2}}.
$$

Thus $y\in(1,\infty)$ maps to a disk $0<w<\Omega_0^{-1}$ whose outer edge is a light surface.

The second codimension-one boundary is $y\to\infty$ at finite $r$. Its representative is a rotating three-dimensional black-hole or soliton geometry $g^y$. A codimension-two boundary joins the two limits at the light surface:

$$
ds_{ry}^2=-dt^2+\Omega_0^{-2}d\phi^2.
$$

When $m=0$, $g^y$ is locally AdS$_3$ with radius

$$
L_3=\frac{L}{q\alpha};
$$

on the magnetic supersymmetric locus this becomes $L_3=2/\Omega_0$.

# Stress tensor, Cotton tensor, and the dual-graviton map

At the Minkowski boundary, standard counterterm renormalization gives

$$
\langle T^r_{\mu\nu}\rangle=(\rho+P)U_\mu U_\nu+Pg^r_{\mu\nu},
$$

$$
P=\frac\rho2=\frac{L^4}{2\kappa}\gamma^3m\Omega_0^3,
\qquad
U=\gamma(\partial_t+\Omega_0\partial_\phi),
\qquad U^2=-1.
$$

The Cotton tensor of flat $g^r$ vanishes. At the $y$ boundary the ordinary holographic stress tensor vanishes,

$$
\langle T^y_{\mu\nu}\rangle=0,
$$

while the defined dual tensor is

$$
\langle *T^y_{\mu\nu}\rangle=\frac{L^2}{\kappa}C_{\mu\nu}
=-\frac32\hat\rho V_\mu V_\nu+\frac12\hat\rho g^y_{\mu\nu},
$$

$$
V=r(\partial_t+\Omega_0\partial_\phi),
\qquad V^2=+1,
\qquad
\hat\rho=\frac{L^4}{\kappa}r^3m\Omega_0^3.
$$

The relation uses the complex map

$$
t\mapsto it,qquad \phi\mapsto i\phi,qquad r\mapsto\gamma.
$$

With $\hat U=iV$, the contraction is

$$
\langle *T^y_{\mu\nu}\rangle\hat U^\mu\hat U^\nu=\hat\rho,
$$

which equals the Minkowski-fluid energy density after $r=\gamma$. This is an exact equality of the displayed classical one-point data after analytic continuation. It is not, by itself, a derivation of a dual boundary generating functional.

# Electromagnetic exchange

For either boundary $i=r,y$, define

$$
\langle J_i^\nu\rangle=-\frac{1}{\sqrt{-g^i}}
\lim_{i\to\infty}\frac{L}{2\kappa}\sqrt{-h}\,N^i_\mu F^{\mu\nu},
$$

and analogously $\widetilde J$ using $\widetilde F=*F$. The computed currents obey

$$
\begin{pmatrix}0&1\\-1&0\end{pmatrix}
\begin{pmatrix}J^y\\ \widetilde J^y\end{pmatrix}
=
\begin{pmatrix}J^r\\ \widetilde J^r\end{pmatrix}_{y=r},
$$

with the same relation for $(F,*F)$. The $r$ boundary is purely magnetic in the comoving frame, while the $y$ boundary is purely electric. This is a concrete bulk electromagnetic-duality map of boundary sources and one-point currents. Calling it mirror symmetry requires extra quantum information not computed here.

# Derivation map

1. Choose an exact Carter-inspired ansatz whose $r\to\infty$ conformal metric is static Minkowski space.
2. Solve Einstein--Maxwell and fix gauge constants by regularity at $y=1$ and the outer horizon.
3. Use $F(r)$ and $g_{\phi\phi}$ to isolate black-hole and smooth no-CTC soliton domains.
4. Take both conformal limits with the common factor $L/(\alpha r y)$.
5. Renormalize each boundary separately: obtain the spinning perfect-fluid tensor at $r=\infty$ and zero ordinary stress tensor at $y=\infty$.
6. Compute the Cotton tensor of $g^y$, double Wick rotate, and identify $r$ with $\gamma$ to match energy densities.
7. Compute $(J,*J)$ and $(F,*F)$ at both boundaries and show their exchange under $r\leftrightarrow y$.
8. To promote this to QFT duality, still construct compatible boundary variational principles and compare renormalized generating functionals, sources, contact terms, spectra, and operator maps.

# Local translation to the vault

The paper supplies a useful multi-boundary test case: the same bulk solution supports inequivalent-looking boundary data, one naturally organized by the metric response $T_{\mu\nu}$ and the other by the Cotton response. For action/CPS work, the next object is the renormalized presymplectic flux through both codimension-one components and their codimension-two junction. Only after showing flux cancellation or specifying independent boundary phase spaces can “fixing the graviton” and “fixing the dual graviton” be compared as canonical polarizations.

The current exchange is a promising Maxwell benchmark, but it does not yet provide regional sewing: the paper gives asymptotic limits and one-point functions, not a symplectic isomorphism, edge-mode extension, or exact-onto observable-algebra map.

# Verification log

- **Source-derived:** every section, the metric/gauge ansatz, horizon and CTC conditions, supersymmetric loci, conformal limits, holographic tensors, current exchange, and claimed physical interpretation were reconstructed from the official v1 TeX source and complete 16-page PDF.
- **Visually confirmed:** PDF pages 1, 6, 10, 13, and 16 show the title/abstract, bulk solution and horizon data, holographic stress/Cotton formulas, conclusions, and final references without clipped equations or missing figures. The source PDF displays colored hyperlink boxes, but the technical content is readable.
- **Checked:** a direct Mathematica tensor calculation at the exact rational sample $L=2$, $\alpha=1/3$, $m=1/5$, $q=2/7$, $(\cos\theta,\sin\theta)=(3/5,4/5)$, $r=2$, $y=3$ returned zero for all 16 Einstein residual components and all four Maxwell residual components. The root parameterization gives $F(r_0)=F(r_1)=0$ identically. Contracting the dual tensor with $\hat U=iV$ gives $\hat\rho$ exactly.
- **Assumptions:** the paper's sign and normalization conventions; Lorentzian domain $y>1$; suitable holographic counterterms; analytic continuation treated formally; parameter restrictions for horizons/no CTCs; fixed-charge boundary conditions for BPS ground-state language.
- **Not independently verified:** a symbolic all-parameter tensor proof, explicit Killing spinors, fluctuation stability, the full numerical parameter scan behind Figure 1, global geodesic completeness, charge integrability, renormalized symplectic flux, or equality of boundary generating functionals.
- **Blocked:** $S_\partial$ and the second-boundary variational problem are not specified in enough detail to establish simultaneous Dirichlet/Neumann admissibility or a canonical boundary--boundary equivalence.

# Reading route

Read Sections 3 and 6 first for the geometry and two conformal ends, then Section 7 for the precise stress/Cotton equality and Section 8 for the electromagnetic map. Section 4 contains only the supersymmetry loci, not a full Killing-spinor analysis. Treat the QFT-duality, mirror-symmetry, and stability language in Sections 1 and 9 as a research proposal built on the verified classical data.
