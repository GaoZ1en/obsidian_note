---
paper id: 2608.28751v1
title: Holographic warped CFTs from General Relativity on AdS3
authors:
  - Kristiansen Lara
  - Ricardo Troncoso
publication date: 2026-08-28T18:00:05Z
abstract: The paper proposes boundary conditions for three-dimensional Einstein gravity with negative cosmological constant whose canonical generators form a Virasoro algebra semidirectly acting on a u(1) Kac--Moody algebra. Euclidean AdS3 is used as the ground state, and a bulk modular relation between thermal AdS3 and Euclidean BTZ supplies the warped Cardy entropy.
comments: 11 pages, 1 figure
url: https://arxiv.org/abs/2608.28751v1
summary: A compact and useful boundary-condition construction with an unusually clean charge basis; its displayed charge and entropy formulas are internally consistent, while the short version defers a full asymptotic and modular derivation.
tags: []
---

# Verdict

**Correct under the following precise conditions:** accept the Regge--Teitelboim surface-charge variation and the Euclidean BTZ/thermal-AdS diffeomorphism relation quoted in the paper. Under those inputs, the nonlinear terms in the charge variation cancel, the integrated charges realize the standard Virasoro--$u(1)$ Kac--Moody algebra with

\[
c=\frac{3\ell}{2G}=6k,
\qquad
k_{\mathrm{KM}}=-k=-\frac{\ell}{4G},
\]

and the warped Cardy expression reduces exactly to

\[
S_{\mathrm{WCFT}}
=k\pi\left(\mathcal P+\sqrt{\mathcal L+\mathcal P^2}\right)
=\frac{\mathcal A}{4G}.
\]

The present 12-page PDF does **not** independently display the derivation of the Regge--Teitelboim boundary integral or an explicit global diffeomorphism between the two Euclidean saddles. The algebra and entropy checks below therefore verify the consequences of the paper's stated inputs, not those missing geometric steps.

# Source map

- Official metadata and abstract: https://arxiv.org/abs/2608.28751v1
- Official PDF: 12 rendered pages; equations and figure were visually checked in the boundary-condition, charge, modular, and entropy sections.
- Official TeX source: one 598-line main file, read in full.
- Independent algebra check: Wolfram Language script covering the charge cancellation, central coefficient, spectral-flow invariants, warped Cardy entropy, unitarity bound, and first-law potentials.
- Daily context: [[2026_09_01_overview]].

# Setup and conventions

The bulk theory is pure three-dimensional Einstein gravity with

\[
\Lambda=-\frac1{\ell^2},
\qquad
k:=\frac{\ell}{4G}>0.
\]

The radial coordinate is $\rho$, the boundary angle is $\phi\sim\phi+2\pi$, and a prime means $\partial_\phi$. The two dynamical boundary fields are

\[
\mathcal L(t,\phi),\qquad \mathcal P(t,\phi),
\]

while $\mu_{\mathcal L}$ and $\mu_{\mathcal P}$ are fixed, constant sources. The authors also introduce the periodic solution $\mathcal I_{\mathcal P,\mathcal K}$ of

\[
(\partial_\phi-\mathcal P)\mathcal I_{\mathcal P,\mathcal K}
=\frac12\mathcal K,
\]

discarding the homogeneous solution, and define the field-dependent lapse/shift combination

\[
\mu=-\mu_{\mathcal L}-\mu_{\mathcal P}\mathcal I_{\mathcal P,1}.
\]

This nonlocal periodic inverse is part of the definition of the phase space. Possible exceptional zero modes of $\partial_\phi-\mathcal P$ are not analyzed in the short paper.

# Boundary conditions and solution space

The exact metric family is written in a radial gauge whose leading boundary metric is

\[
ds_b^2=(d\phi+\mu\,dt)(d\phi-\mu_{\mathcal L}\,dt).
\]

Vacuum Einstein equations impose the chiral transport equations

\[
(\partial_t+\mu_{\mathcal L}\partial_\phi)\mathcal L=0,
\qquad
(\partial_t+\mu_{\mathcal L}\partial_\phi)\mathcal P=0.
\]

The displayed metric then solves the equations exactly, rather than only asymptotically. Constant $\mathcal L,\mathcal P$ give the BTZ family in the region

\[
\mathcal L+\mathcal P^2\geq0,
\qquad
\mathcal P^2\geq0.
\]

The authors take $\mathcal P\geq0$ because the other branch describes the same geometry in a rotating frame at infinity. Global AdS$_3$ sits at

\[
(\mathcal L_{\mathrm{AdS}},\mathcal P_{\mathrm{AdS}})=(0,i).
\]

It is excluded from the real Lorentzian phase space but becomes admissible after Euclidean continuation. Consequently, calling it the “ground state” is an explicitly Euclidean statement.

# Asymptotic symmetry data

The field-dependent asymptotic Killing vectors preserve the falloffs on shell near infinity. Their independent chiral parameters obey

\[
(\partial_t+\mu_{\mathcal L}\partial_\phi)\epsilon=0,
\qquad
(\partial_t+\mu_{\mathcal L}\partial_\phi)\eta=0.
\]

The auxiliary parameter is

\[
\zeta=\epsilon-\mathcal I_{\mathcal P,\eta+2\epsilon'}.
\]

The boundary fields transform as

\[
\delta\mathcal L
=(\mathcal L'+2\mathcal L\partial_\phi-2\partial_\phi^3)\epsilon
-\eta'\mathcal P,
\]

\[
\delta\mathcal P
=\frac12\eta'+(\epsilon\mathcal P)'.
\]

The Regge--Teitelboim variation quoted by the authors is

\[
\delta Q
=\frac{k}{8\pi}\int d\phi\,
\left[
\epsilon(\delta\mathcal L+2\mathcal P\delta\mathcal P)
+2(\partial_\phi-\mathcal P)\zeta\,\delta\mathcal P
\right].
\]

The defining equation for $\mathcal I$ gives

\[
(\partial_\phi-\mathcal P)\zeta
=-\mathcal P\epsilon-\frac12\eta.
\]

Hence the nonlinear terms cancel explicitly:

\[
\epsilon(\delta\mathcal L+2\mathcal P\delta\mathcal P)
+2\left(-\mathcal P\epsilon-\frac12\eta\right)\delta\mathcal P
=\epsilon\delta\mathcal L-\eta\delta\mathcal P.
\]

The charge is therefore integrable at fixed sources,

\[
Q[\epsilon,\eta]
=\frac{k}{8\pi}\int d\phi\,
(\epsilon\mathcal L-\eta\mathcal P).
\]

This is the cleanest technical point in the paper: the nonlocal field dependence of the vector is chosen so that the final generators themselves are linear and require no additional state-dependent redefinition.

# Charge algebra

With

\[
L_m=\frac{k}{8\pi}\int d\phi\,e^{im\phi}\mathcal L,
\qquad
P_m=\frac{k}{4\pi}\int d\phi\,e^{im\phi}\mathcal P,
\]

the stated quantum brackets are

\[
[L_m,L_n]=(m-n)L_{m+n}+\frac{c}{12}m^3\delta_{m+n,0},
\]

\[
[L_m,P_n]=-nP_{m+n},
\qquad
[P_m,P_n]=\frac{k_{\mathrm{KM}}}{2}m\delta_{m+n,0}.
\]

The conversion convention is $\{\ ,\ \}\to i[\ ,\ ]$. The level is negative,

\[
k_{\mathrm{KM}}=-k<0,
\]

so the construction does not produce an ordinary unitary current algebra. The paper instead invokes the WCFT modular-bootstrap condition that primaries retain positive norm, allowing imaginary $u(1)$ charges.

For a covariant-phase-space reading, the important boundary condition is “fixed $\mu_{\mathcal L},\mu_{\mathcal P}$.” The paper establishes integrability in that ensemble. It does not compute symplectic flux for arbitrary source variations, corner terms, or an extended phase space in which the sources vary.

# Euclidean modular step and entropy

The claimed bulk modular relation is

\[
\mu_{\mathcal L,\mathrm{AdS}}=\frac{4\pi^2}{\mu_{\mathcal L}},
\qquad
\mu_{\mathcal P,\mathrm{AdS}}
=\frac{2i\pi\mu_{\mathcal P}}{\mu_{\mathcal L}}.
\]

Assuming a spectral gap and the anomalous WCFT modular covariance, the entropy is

\[
S_{\mathrm{WCFT}}
=\frac{4i\pi}{k_{\mathrm{KM}}}P_0P_0^{\mathrm{AdS}}
+4\pi\sqrt{-\left(L_0-\frac{P_0^2}{k_{\mathrm{KM}}}\right)
\left(L_0^{\mathrm{AdS}}-\frac{(P_0^{\mathrm{AdS}})^2}{k_{\mathrm{KM}}}\right)}.
\]

For BTZ and Euclidean AdS$_3$,

\[
L_0=\frac{k}{4}\mathcal L,
\qquad
P_0=\frac{k}{2}\mathcal P,
\qquad
L_0^{\mathrm{AdS}}=0,
\qquad
P_0^{\mathrm{AdS}}=\frac{ik}{2}.
\]

The two spectral-flow-invariant combinations are

\[
L_0-\frac{P_0^2}{k_{\mathrm{KM}}}
=\frac{k}{4}(\mathcal L+\mathcal P^2),
\]

\[
L_0^{\mathrm{AdS}}-\frac{(P_0^{\mathrm{AdS}})^2}{k_{\mathrm{KM}}}
=-\frac{k}{4}.
\]

Substitution gives the real positive entropy on the chosen BTZ branch,

\[
S_{\mathrm{WCFT}}
=k\pi\left(\mathcal P+\sqrt{\mathcal L+\mathcal P^2}\right).
\]

The same substitutions reduce the proposed unitarity bound to

\[
\frac{c}{24}(\mathcal L+\mathcal P^2+1)\geq0,
\]

which follows from the geometric BTZ bound and saturates on Euclidean AdS$_3$.

# Ensemble comparison

For black-hole thermodynamics the leading lapse and shift satisfy

\[
\mathcal N=\frac{\mu_{\mathcal P}\ell}{4\mathcal P},
\qquad
\mathcal N^\phi=-\mu_{\mathcal L}
+\frac{\mu_{\mathcal P}}{4\mathcal P}.
\]

The Brown--Henneaux ensemble fixes $\mathcal N=\beta$ and $\mathcal N^\phi=\beta\Omega_h$, whereas this paper fixes $\mu_{\mathcal L},\mu_{\mathcal P}$. The change is therefore a change of ensemble, not merely a relabelling. The extensive Brown--Henneaux variables are

\[
M=\frac{k}{4\ell}(\mathcal L+2\mathcal P^2),
\qquad
J=-\frac{k}{4}\mathcal L.
\]

Differentiating the entropy gives the fixed-source first law

\[
\delta S=\frac{k}{4}
(\mu_{\mathcal L}\delta\mathcal L
+\mu_{\mathcal P}\delta\mathcal P),
\]

with the regular black-hole potentials

\[
\mu_{\mathcal L}=\frac{2\pi}{\sqrt{\mathcal L+\mathcal P^2}},
\qquad
\mu_{\mathcal P}=4\pi\left(1+
\frac{\mathcal P}{\sqrt{\mathcal L+\mathcal P^2}}\right).
\]

This differential identity was checked independently.

# Relation to CSS

The CSS variables are a fixed constant $\Delta$ and chiral functions $\bar L,\partial_+\bar P$. After matching radial gauges and taking $\mu_{\mathcal L}=-1$, the paper finds

\[
\mathcal L+\mathcal P^2=\frac4k\bar L,
\]

and conformally related boundary metrics. CSS becomes a subsector only when the zero mode $P_0$ is held fixed and

\[
\mu_{\mathcal P}=-\frac8kP_0
=-8\sqrt{\frac{\Delta}{k}}.
\]

Thus the relation is conditional and ensemble-sensitive. It is not an equality of the unrestricted phase spaces.

# Relevance to current projects

- **Boundary charges:** a concrete example where field-dependent symmetry vectors produce unusually simple integrable charges after a nonlocal cancellation.
- **AdS$_3$ asymptotic symmetries:** the construction keeps the Brown--Henneaux central charge but replaces the second Virasoro copy by a negative-level $u(1)$ current algebra.
- **Regional/CPS caution:** integrability is shown for fixed chemical potentials. Varying sources, symplectic flux, corner completion, and a final reduced phase space are outside the paper.
- **Entropy:** the entropy match is an algebraic consequence of the Euclidean ground-state assignment and warped modular covariance; it is not, by itself, a derivation of the modular property from the gravitational action.

# Verification ledger

## Checked:

- Full TeX source and the rendered boundary-condition, algebra, modular, entropy, and ensemble pages were inspected.
- Wolfram Language confirmed $c=6k$, cancellation of the nonlinear $\mathcal P\delta\mathcal P$ terms, both spectral-flow invariants, the warped Cardy reduction, the unitarity-bound reduction, and the differential first law.
- The sign $k_{\mathrm{KM}}=-k$ and the imaginary Euclidean AdS charge are essential; changing either spoils the displayed real entropy reduction.

## Source-derived:

- The exact metric solves the Einstein equations under the chiral transport equations.
- The Regge--Teitelboim surface-charge variation and the central terms of the charge algebra.
- The modular chemical-potential map and the identification of its two Euclidean geometries.
- The conformal relation to the CSS boundary metric.

## Failed:

- No displayed formula failed the independent algebraic checks performed here.

## Blocked:

- A first-principles CPS derivation of the surface charge is blocked by the absence of the action-level boundary variation and symplectic-current calculation in this short version.
- The Euclidean modular claim is not independently verified because the explicit global diffeomorphism and cycle/regularity calculation are not displayed.
- No claim is made here about quantum unitarity, modular-bootstrap completeness, or the existence of a full WCFT dual.

# Bottom line

This is a strong compact candidate for the AdS$_3$ charge notebook: the central result is not merely “another Virasoro--Kac--Moody algebra,” but a boundary ensemble engineered so that field dependence cancels before integration and the standard generators emerge without a later redefinition. The charge and entropy algebra checks out. The missing action/CPS derivation and explicit modular diffeomorphism should remain open gates rather than being silently inferred from the final formulas.
