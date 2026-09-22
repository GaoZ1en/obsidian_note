---
paper id: 2605.14707v3
title: "The Smarr Formula is Gauss's Law: A Kerr-Schild Single-Copy Perspective"
authors:
  - "Alkac, Gokhan"
publication date: 2026-05-14
abstract: |-
  In the Kerr-Schild double copy, static and spherically symmetric black hole solutions of general relativity are mapped to purely electric solutions of Maxwell's theory in flat spacetime. We demonstrate that, for these configurations, the thermodynamic Smarr formula is structurally identical to the single-copy Gauss's law. Extending this to asymptotically anti-de Sitter spacetimes, we prove that the thermodynamic pressure-volume term naturally emerges from a gauge-theoretic background subtraction. This relationship establishes a novel connection between the classical double copy and black hole thermodynamics.
comments: "Version accepted for publication in Phys. Rev. D; includes new section on regular black holes in non-linear electrodynamics"
url: https://arxiv.org/abs/2605.14707v3
summary: "Checks the radial Komar–Gauss dictionary, AdS background subtraction and Bardeen action-parameter first-law terms within the one-function spherical metric class."
tags: []
---

# A precise flux dictionary for a restricted metric class

For four-dimensional Einstein gravity in the static spherical class $ds^2=-fdt^2+dr^2/f+r^2d\Omega_2^2$, the source's key relation is exact: the horizon surface energy $2TS$ equals half the single-copy enclosed charge, and the exterior Gauss identity reproduces the Smarr balance. RN–AdS requires subtraction of the uniform cosmological background; its horizon flux is $2PV$. Bardeen requires retaining variations of parameters that occur explicitly in the matter Lagrangian.

Source: [2605.14707v3](https://arxiv.org/abs/2605.14707v3), Gökhan Alkaç, 8 pages. Full source/text inspected; PDF p.6 visually confirms the Bardeen potentials and extended first law. This is an untracked replacement receiving a new note. Context: [[2026_09_22_overview]].

# Source map and conventions

§1 motivates the horizon-to-flat-sphere dictionary. §2 (p.2) fixes the Einstein and single-copy equations. §3 (pp.2–3) derives the general horizon-flux relation and Schwarzschild case. §4 (pp.3–5) treats RN, the singular-origin obstruction and Komar equivalence. §5 (pp.5–6) treats AdS subtraction and enthalpy. §6 (p.6) treats nonlinear Bardeen matter. §7 (pp.6–7) states scope and future extensions; references pp.7–8. No appendices.

Set $G=1$, mostly-plus signature, outward radial electric field $E=F_{0r}$. Lowercase $(a_\mu,f_{\mu\nu})$ denotes matter electromagnetism in the gravitational theory; uppercase $(A_\mu,F_{\mu\nu})$ is the flat-background single copy. They are not the same charge sector. Choose $k_\mu dx^\mu=dt+dr$, so $k_0=+1$, opposite to some other KS conventions.

The one-function metric is a restriction: a general static spherical metric may have an additional lapse/redshift factor. The horizon radius and its thermodynamic interpretation are supplied by gravity; the corresponding sphere in flat spacetime is not itself a causal horizon.

# The common two-form and the source map

The Kerr–Schild profile is $\phi=1-f$ and $A=\phi(dt+dr)$. For a stationary KS solution the mixed Ricci equation yields
$$
R^\mu{}_0=-\tfrac12\partial_\alpha F^{\alpha\mu},\qquad
\partial_\alpha F^{\alpha\mu}=4\pi J^\mu,\qquad
J^\mu=-4\left(\widetilde T^\mu{}_0+{\Lambda\over8\pi}\delta^\mu_0\right),
$$
where $\widetilde T^\mu{}_\nu=T^\mu{}_\nu-\delta^\mu_\nu T/2$. In spherical coordinates use the flat covariant divergence or the density form, not Cartesian partial-divergence expressions without their measure. Then
$$
E=-\phi'=f',\qquad \rho={1\over4\pi r^2}\partial_r(r^2E).
$$
For the normalized time Killing vector in static coordinates, $\xi^\flat=(-1+\phi)dt$. Up to a locally exact radial/time one-form, $A$ and $\xi^\flat$ have the same exterior derivative:
$$
F=dA=d\xi^\flat=K,\qquad K_{\mu\nu}=2\nabla_{[\mu}\xi_{\nu]}.
$$
In this class raising the $tr$ component agrees in curved and flat metrics because $g^{tt}g^{rr}=-1$. For the corresponding slice, $n_t\sqrt h$ has cancelling $\sqrt f$ factors, and the area/bivector surface measure has cancelling temporal/radial normal factors. These specific cancellations make the exterior Komar and Gauss integrals coincide with consistent orientations.

# Horizon normalization and the exterior domain

For the outer horizon,
$$
T={f'(r_+)\over4\pi},\quad S=\pi r_+^2,\quad
2TS={r_+^2E(r_+)\over2}={1\over8\pi}\int_{r_+}\mathbf E\cdot d\mathbf A.
$$
Use $r_+<r<R$ as the integration region, so
$$
{r_+^2E(r_+)\over2}={R^2E(R)\over2}
 -\tfrac12\int_{r_+}^R4\pi r^2\rho(r)dr.\tag{4.10}
$$
For asymptotically flat $E=2m/r^2+o(r^{-2})$, the first term tends to $m$. This is the reusable identity. It derives a Smarr balance once the flux and material potentials are identified; it does not independently derive the first law or determine which parameters are allowed to vary.

For Schwarzschild $E=2m/r^2$, the unit-normalized point source is $2m\delta^{(3)}(\mathbf x)$, giving $2TS=m$. The source's $\delta(r)$ should be read as shorthand for the three-dimensional normalized delta, not an ordinary one-dimensional delta under $4\pi r^2dr$.

# RN: why the origin is excluded

For $f=1-2m/r+q^2/r^2$,
$$
E={2m\over r^2}-{2q^2\over r^3},\qquad
\rho={q^2\over2\pi r^4}\quad(r>0).
$$
The latter is not locally integrable at the origin. A naive volume integral from zero is undefined without a distributional extension/inner regulator. This is not a violation of Gauss's law: the annular region has two boundaries. The exterior integral is finite,
$$
\int_{r_+}^\infty4\pi r^2\rho dr={2q^2\over r_+},\qquad
2TS=m-{q^2\over r_+},\quad \Phi={q\over r_+}.
$$
Thus $m=2TS+\Phi q$. The point source inside the excluded sphere contributes through the asymptotic flux, not through an extra delta term in the annulus.

# AdS: subtraction changes the horizon flux as well

For $f=1-2m/r+q^2/r^2+r^2/\ell^2$,
$$
E=E_{RN}+{2r\over\ell^2},\qquad
\rho=\rho_{RN}+{3\over2\pi\ell^2}.
$$
At finite $R$ both the asymptotic flux and exterior background charge have $R^3/\ell^2$ pieces. Define the regularized field and source by subtracting pure-AdS values everywhere. The regularized asymptotic flux is $m$; the exterior regularized charge gives $\Phi q$. The physical temperature still uses the full field at the horizon, hence
$$
{r_+^2E_{\rm reg}(r_+)\over2}=2TS-{r_+^3\over\ell^2}=2TS-2PV,
$$
$$
P={3\over8\pi\ell^2},\qquad V={4\pi r_+^3\over3},\qquad
m=2TS+\Phi q-2PV.
$$
This matches the modified Komar/Killing-potential prescription in this model. It does not require assigning a finite value separately to two infinite integrals. Interpreting $m$ as enthalpy and writing $\delta m=T\delta S+\Phi\delta q+V\delta P$ additionally specifies an extended parameter space.

# Bardeen: Lagrangian parameters are part of the first law

The magnetic potential is $a=-g\cos\theta\,d\varphi$ and
$$
f=1-{2mr^2\over(r^2+g^2)^{3/2}},\qquad
m={ (r_+^2+g^2)^{3/2}\over2r_+^2}.
$$
The nonlinear electromagnetic Lagrangian in (6.1) contains $m$ and $g$ explicitly through $s=|g|/(2m)$; moving through the displayed metric family therefore changes action parameters as well as integration constants. For $g\ne0$ its source-derived conjugates are
$$
\Psi={3m\over2g}\left[1-{r_+^5\over(r_+^2+g^2)^{5/2}}\right],
$$
$$
K_g={3m\over2g}\left[{r_+^3(r_+^2+2g^2)\over(r_+^2+g^2)^{5/2}}-1\right],\qquad
K_m=1-{r_+^3\over(r_+^2+g^2)^{3/2}}.
$$
The first law and Smarr balance are
$$
(1-K_m)\delta m=T\delta S+(\Psi+K_g)\delta g,
\quad m=2TS+\Delta,\quad\Delta=\Psi g+K_gg+K_mm.
$$
The single-copy field and regular density are
$$
E={2mr(r^2-2g^2)\over(r^2+g^2)^{5/2}},\qquad
\rho={3mg^2(3r^2-2g^2)\over2\pi(r^2+g^2)^{7/2}}.
$$
The flux tends to zero at the origin and $8\pi m$ at infinity. Its exterior half-charge is
$$
\Delta=m\left[1-{r_+^3(r_+^2-2g^2)\over(r_+^2+g^2)^{5/2}}\right],
$$
which exactly equals the three-potential expression. The density changes sign in the core; it is an auxiliary single-copy charge density, not a positive physical matter energy density. The outer black-hole branch has $r_+^2\ge2g^2$, with zero temperature at equality.

# Verification, source defects and limits

**Source-derived:** all seven sections, the KS/trace-reversed source dictionary and action-parameter interpretation of Bardeen thermodynamics.

**Checked:** Mathematica differentiates the RN–AdS and Bardeen metric functions, reproduces both densities, evaluates the RN exterior charge $2q^2/r_+$, and checks the AdS horizon background flux equals $2PV$. For Bardeen it verifies the charge primitive, its zero/infinite-radius limits, $\Psi g+K_gg+K_mm=\Delta$, and both independent first-law coefficients after substituting $m(r_+,g)$. All residuals are zero for $r_+>0,g>0$. xAct with a declared Killing vector independently gives $\nabla_aK^{ab}+2R^b{}_av^a=0$.

**Failed / corrected source bookkeeping:** the sentence preceding (4.15) equates $-2R^\mu{}_\nu\xi^\nu$ to $+16\pi\widetilde T^\mu{}_\nu\xi^\nu$ at $\Lambda=0$, inconsistent with (2.7); the sign should be negative with those definitions. The radial exterior flux derivation above does not use that misprint. The matter normalization is also inconsistent between (2.2), which already puts $1/(16\pi)$ outside $L_m$, and (4.2), which inserts another $1/(16\pi)$ into Maxwell $L_m$. The metric/flux checks verify the stated RN solution and not a rederivation from that literal doubly normalized action. Equation (4.6)'s cutoff integral should not include a point delta located below its lower limit.

**Blocked:** no source/PDF or computational blocker. These normalization defects prevent treating the displayed matter-action normalization as independently verified.

**Not independently verified:** full nonlinear-matter equations from the printed action; a general CPS derivation of the parameter potentials; rotating, higher-dimensional, arbitrary-redshift or nonminimal-coupling extensions. No physical entropy or temperature is assigned to flat Maxwell theory itself.

**Verified:** the exact radial flux balances and Bardeen first-law/Smarr algebra in the specified family. **Assumptions:** four-dimensional Einstein area entropy, normalized static time, $g_{tt}g_{rr}=-1$, chosen outer horizon, consistent annular orientations and AdS reference subtraction. **Not verified:** a general thermodynamic double-copy theorem.

For the vault, the concrete reusable object is the equality of two-forms plus matching hypersurface measures. It explains this balance-law correspondence without equating the gauge and gravitational phase spaces or their full boundary symmetry algebras.
