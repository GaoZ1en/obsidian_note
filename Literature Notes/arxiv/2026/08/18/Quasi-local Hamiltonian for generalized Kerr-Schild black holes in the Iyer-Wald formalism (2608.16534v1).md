---
paper id: 2608.16534v1
title: Quasi-local Hamiltonian for generalized Kerr-Schild black holes in the Iyer-Wald formalism
authors:
  - M. A. Jaraba
  - T. L. Campos
  - M. C. Baldiotti
publication date: 2026-08-17T13:11
abstract: |-
  Grounded in the covariant phase space approach of the Iyer-Wald formalism, we propose a quasi-local Hamiltonian for generalized Kerr-Schild (GKS) black holes. Evaluated for spherically symmetric spacetimes over a flat Minkowski background, our formulation recovers the Misner-Sharp mass. Because this framework relies solely on the GKS structure, it provides a straightforward extension of the Misner-Sharp mass to rotating geometries. We further extend our analysis to asymptotically anti-de Sitter (AdS) black holes, where a renormalization procedure to subtract the background AdS energy naturally emerges. By employing this technique, we establish a geometric quasi-local formulation of Kerr-AdS thermodynamics.
comments: ""
url: https://arxiv.org/abs/2608.16534v1
summary: "On a fixed-background geodesic Kerr--Schild submanifold, the Einstein--Hilbert symplectic potential becomes integrable and yields reference-dependent finite-surface charges that reproduce Misner--Sharp and Kerr--AdS formulas, but not a full Einstein--matter Hamiltonian."
tags: []
---

# Direct Verdict

**Correct under the following precise conditions:** restrict the gravitational covariant phase space to four-dimensional generalized Kerr--Schild metrics

$$\begin{align}
g_{\mu\nu}=\bar g_{\mu\nu}+f k_\mu k_\nu
\end{align}$$

with fixed background $\bar g_{\mu\nu}$, geodesic null $k^\mu$, fixed symmetry vector $\xi^\mu$, and variations tangent to the admissible Kerr--Schild solution family. On this restricted metric sector, the authors exhibit an integrable Einstein--Hilbert boundary two-form and obtain reference-relative charges on a closed two-surface. The spherical flat-background charge equals the Misner--Sharp mass, and the displayed rotating flat/AdS integrals reproduce the formulas claimed in the paper.

The statement should not be promoted to a Hamiltonian for the full Einstein--matter phase space. For Reissner--Nordström and Kerr--Newman families the matter symplectic potential is omitted; only a gravitational-sector functional evaluated on the matter-sourced metric is constructed. The AdS subtraction is also a chosen additive background prescription, not a background-independent consequence of covariant phase space.

Relevance: **high** (`T1-charge`, `T1-Wald-CPS`, `T1-boundary`, `T1-AdS`).

# Iyer--Wald Starting Point

For a diffeomorphism-covariant Lagrangian four-form,

$$\begin{align}
\delta\mathbf L = \mathbf E(\phi)\delta\phi+d\boldsymbol\Theta(\phi,\delta\phi),
\end{align}$$

the Noether current and on-shell charge are

$$\begin{align}
\mathbf J[\xi] = \boldsymbol\Theta(\phi,\mathcal L_\xi\phi)-\iota_\xi\mathbf L, \qquad \mathbf J[\xi]\simeq d\mathbf Q[\xi].
\end{align}$$

With $\delta\xi=0$, the Hamiltonian variation on a Cauchy surface is

$$\begin{align}
\delta H_\xi = \int_{\partial\Sigma} \left(\delta\mathbf Q[\xi]-\iota_\xi\boldsymbol\Theta\right).
\end{align}$$

The paper's finite-surface construction asks whether, on a restricted configuration/solution submanifold $\mathcal F$, there is a two-form $\boldsymbol{\mathcal B}$ satisfying

$$\begin{align}
-\iota_\xi\boldsymbol\Theta(\phi,\bar\delta\phi) = \bar\delta\boldsymbol{\mathcal B}(\phi).
\end{align}$$

If so, the surface density

$$\begin{align}
\mathbf H[\xi]=\mathbf Q[\xi]+\boldsymbol{\mathcal B}[\xi]
\end{align}$$

is integrable along $\mathcal F$. This is the precise sense in which the paper uses “quasi-local Hamiltonian.” It is not a construction on the unrestricted gravitational phase space.

# Kerr--Schild Integrability Mechanism

The generalized Kerr--Schild ansatz obeys

$$\begin{align}
g^{\mu\nu}=\bar g^{\mu\nu}-f k^\mu k^\nu, \qquad \det g=\det\bar g,
\end{align}$$

where $k^\mu$ is null with respect to both metrics. The restricted variation is

$$\begin{align}
\bar\delta g_{\mu\nu} = f k_\mu\delta k_\nu +f k_\nu\delta k_\mu +k_\mu k_\nu\delta f.
\end{align}$$

For the Einstein--Hilbert Lagrangian,

$$\begin{align}
\Theta_{\nu\alpha\beta} = -\frac{1}{16\pi}\epsilon_{\mu\nu\alpha\beta} \left[ \nabla_\sigma\delta g^{\mu\sigma} -\nabla^\mu(g^{\sigma\rho}\delta g_{\sigma\rho}) \right].
\end{align}$$

After substituting the Kerr--Schild variation, the contraction with $\xi$ becomes

$$\begin{align}
(-\iota_\xi\boldsymbol\Theta)_{\alpha\beta} = -\frac{1}{16\pi} \epsilon_{\alpha\beta\mu\nu}\xi^\nu \left[ \bar\delta\bar\nabla_\sigma(fk^\sigma k^\mu) +f^2 k^\mu k^\sigma\bar\nabla_\sigma k^\lambda\delta k_\lambda \right].
\end{align}$$

The second term vanishes if

$$\begin{align}
k^\sigma\bar\nabla_\sigma k^\lambda=\alpha k^\lambda
\end{align}$$

and the null constraint is varied so that $k^\lambda\delta k_\lambda=0$. Metric compatibility and

$$\begin{align}
\bar g^{\sigma\mu}=g^{\sigma\mu}+f k^\sigma k^\mu
\end{align}$$

then imply

$$\begin{align}
\nabla_\sigma\bar g^{\sigma\mu} = \nabla_\sigma(fk^\sigma k^\mu).
\end{align}$$

Because the determinant and hence the volume form are unchanged along the Kerr--Schild family, the remaining term is an exact field-space variation.

# Relative Hamiltonian Two-Form

The integrable boundary term is

$$\begin{align}
\mathcal B_{\mu\nu} = -\frac{1}{16\pi}\epsilon_{\mu\nu\alpha\beta} \nabla_\sigma\bar g^{\sigma\alpha}\xi^\beta +C_{\mu\nu}(\bar g),
\end{align}$$

and the Einstein--Hilbert Noether charge supplies the Komar term. Thus

$$\begin{align}
H_{\mu\nu}(\xi) = -\frac{1}{16\pi}\epsilon_{\mu\nu\alpha\beta} \left( \nabla^\alpha\xi^\beta +\nabla_\sigma\bar g^{\sigma\alpha}\xi^\beta \right) +C_{\mu\nu}(\bar g).
\end{align}$$

The two-form $C(\bar g)$ is not fixed by the variational argument. The paper therefore defines a reference-relative quantity by subtracting it:

$$\begin{align}
\Delta_{\bar g}H_{\mu\nu}(\xi) = -\frac{1}{16\pi}\epsilon_{\mu\nu\alpha\beta} \left( \nabla^\alpha\xi^\beta +\nabla_\sigma\bar g^{\sigma\alpha}\xi^\beta \right).
\end{align}$$

For a timelike Killing field $t$ and axial Killing field $\varphi$,

$$\begin{align}
\Delta_{\bar g}\mathcal E = -\frac{1}{8\pi}\int_{\mathcal S} \left( \nabla^{[\alpha}t^{\beta]} +\nabla_\sigma\bar g^{\sigma[\alpha}t^{\beta]} \right)dS_{\alpha\beta},
\end{align}$$

$$\begin{align}
\Delta_{\bar g}\mathcal J = \frac{1}{8\pi}\int_{\mathcal S} \left( \nabla^{[\alpha}\varphi^{\beta]} +\nabla_\sigma\bar g^{\sigma[\alpha}\varphi^{\beta]} \right)dS_{\alpha\beta}.
\end{align}$$

The second term is essential: for Schwarzschild over Minkowski it supplies the missing half of the mass left by the paper's Noether/Komar normalization.

# Spherical Sector

With flat background, $k=dt+dr$, and generic profile $f(r)$,

$$\begin{align}
g^{rr}=1-f.
\end{align}$$

The Misner--Sharp mass is therefore

$$\begin{align}
M_{\mathrm{MS}}(r) = \frac r2\left(1-g^{\mu\nu}\partial_\mu r\partial_\nu r\right) = \frac r2 f(r),
\end{align}$$

which equals the proposed surface charge.

Important examples are

$$\begin{align}
f_{\mathrm{Sch}}=\frac{2M}{r} \quad\Longrightarrow\quad \Delta_{\mathrm{Mink}}\mathcal E=M,
\end{align}$$

and

$$\begin{align}
f_{\mathrm{RN}}=\frac{2M}{r}-\frac{Q^2}{r^2} \quad\Longrightarrow\quad \Delta_{\mathrm{Mink}}\mathcal E(r) =M-\frac{Q^2}{2r}.
\end{align}$$

The last expression is the gravitational Misner--Sharp energy inside the sphere. Its numerical agreement with the usual Einstein--Maxwell quasi-local energy does not itself show that the charge generates the full Einstein--Maxwell phase-space flow.

# Rotating Flat-Background Sector

In oblate spheroidal coordinates, the generic surface functionals are

$$\begin{align}
\Delta_{\mathrm{Mink}}\mathcal E_{\mathrm{rot}} = \frac18\int_0^\pi \left[2rf-a^2\sin^2\theta\,\partial_r f\right] \sin\theta\,d\theta,
\end{align}$$

$$\begin{align}
\Delta_{\mathrm{Mink}}\mathcal J_{\mathrm{rot}} = \frac a8\int_0^\pi \left[2rf-(r^2+a^2)\partial_r f\right] \sin^3\theta\,d\theta.
\end{align}$$

For the Gürses--Gürsey profile

$$\begin{align}
f(r,\theta)=\frac{2M(r)r}{r^2+a^2\cos^2\theta},
\end{align}$$

the integrals give

$$\begin{align}
\Delta_{\mathrm{Mink}}\mathcal E_{\mathrm{GG}} = M(r) +\frac{ar-(r^2+a^2)\arctan(a/r)}{2a}M'(r),
\end{align}$$

$$\begin{align}
\Delta_{\mathrm{Mink}}\mathcal J_{\mathrm{GG}} = aM(r) -\frac{(r^2+a^2)\left[-ar+(r^2+a^2)\arctan(a/r)\right]}{2a^2}M'(r).
\end{align}$$

The nonrotating limit is $\mathcal E\to M(r)$ and $\mathcal J\to0$. With $M(r)=M-Q^2/(2r)$, the energy becomes

$$\begin{align}
\mathcal E_{\mathrm{KN}} = M-\frac{Q^2}{4r} -\frac{Q^2(r^2+a^2)}{4ar^2}\arctan\frac ar.
\end{align}$$

# AdS Reference and Additive Subtraction

For spherical GKS metrics over AdS with $\Lambda=-3/l^2$, the charge relative to AdS is

$$\begin{align}
\Delta_{\mathrm{AdS}}\mathcal E_{\mathrm{sph}} = \frac r2 f(r)+\frac{r^3}{2l^2}.
\end{align}$$

The authors separately evaluate pure AdS relative to a flat reference,

$$\begin{align}
\Delta_{\mathrm{Mink}}\mathcal E_{\mathrm{AdS}} =- \frac{r^3}{2l^2},
\end{align}$$

and define the additive regularized result

$$\begin{align}
\mathcal E_{\mathrm{sph}} = \Delta_{\mathrm{AdS}}\mathcal E_{\mathrm{sph}} +\Delta_{\mathrm{Mink}}\mathcal E_{\mathrm{AdS}} = \frac r2 f(r).
\end{align}$$

For rotation, with

$$\begin{align}
\Xi=1-\frac{a^2}{l^2}, \qquad \Delta_\theta=1-\frac{a^2}{l^2}\cos^2\theta,
\end{align}$$

the regularized energy and angular momentum are

$$\begin{align}
\mathcal E_{\mathrm{rot}} = \frac{1}{8\Xi^2} \int_0^\pi \left[ 2r\Delta_\theta f -a^2\sin^2\theta\left(1+\frac{r^2}{l^2}\right)\partial_r f \right]\sin\theta\,d\theta,
\end{align}$$

$$\begin{align}
\mathcal J_{\mathrm{rot}} = \frac{a}{8\Xi^2} \int_0^\pi \left[2rf-(r^2+a^2)\partial_r f\right] \sin^3\theta\,d\theta.
\end{align}$$

For constant $M(r)=M$, these reduce to the standard Kerr--AdS charges

$$\begin{align}
\mathcal E=\frac{M}{\Xi^2}, \qquad \mathcal J=\frac{aM}{\Xi^2}
\end{align}$$

in the nonrotating-at-infinity thermodynamic frame.

The subtraction should be interpreted cautiously. The covariant-phase-space calculation establishes integrability relative to one fixed GKS background. The transitive addition

$$\begin{align}
\Delta_{\mathrm{AdS}}\mathcal E[g] +\Delta_{\mathrm{Mink}}\mathcal E[\mathrm{AdS}]
\end{align}$$

uses two different Kerr--Schild decompositions and is an extra reference prescription. Its success on the examples is checked; a general cocycle/transitivity theorem is not supplied.

# Smarr Relation and Frame Bookkeeping

For the horizon generator

$$\begin{align}
\xi=t+\Omega_H\varphi,
\end{align}$$

the horizon evaluation is reorganized into a geometric Smarr relation in the rotating-at-infinity frame and the standard extended thermodynamic relation in the nonrotating frame.

The paper defines the physical angular velocity in the latter frame by

$$\begin{align}
\Omega=\Omega_H+\frac{a}{l^2},
\end{align}$$

and reaches

$$\begin{align}
\frac{\mathcal E_{\mathrm{co}}}{2} = TS+\Omega\mathcal J +\Delta_{\mathrm{Mink}}\mathcal E_{\mathrm{AdS}}(r_+) +\frac{\Lambda\mathcal J^2}{6\mathcal E_{\mathrm{co}}}.
\end{align}$$

Using $P=-\Lambda/(8\pi)$ identifies the last two terms as $-PV$, where

$$\begin{align}
V=V_{\mathrm{geo}} +\frac{4\pi}{3}\frac{\mathcal J^2}{\mathcal E_{\mathrm{co}}}.
\end{align}$$

The final displayed Smarr formula should therefore contain $2\Omega\mathcal J$. The manuscript instead reverts to $2\Omega_H\mathcal J$; that is inconsistent with the immediately preceding definition and equation.

# Relation to Current Vault Work

## Reusable Lesson

The valuable part for the gluing/CPS project is the explicit restriction of integrability to a submanifold of field space. The fixed Kerr--Schild background and geodesic-null constraint play the same logical role that a polarization, embedding choice, or boundary condition can play in a gluing construction: they make a troublesome symplectic-potential term exact.

The background contribution also demonstrates why a finite-surface charge cannot be identified with the Komar term alone. A reference-dependent correction can carry an essential half of the physical mass.

## Non-Transferable Claim

This does not supply a general boundary Hamiltonian for arbitrary metrics, moving surfaces, or matter-coupled phase spaces. The GKS decomposition is strong, the background is fixed, and the surface is evaluated with exact stationary Killing fields. No corner embedding field or Wald--Zoupas flux problem is analyzed.

# Verification Log

## Source-Derived

- Source-derived: official arXiv metadata identifies `2608.16534v1`, published 2026-08-17T13:11:44Z, with primary category `gr-qc` and cross-category `hep-th`.
- Source-derived: the complete 16-page official PDF and 707-line TeX source were inspected.
- Source-derived: rendered pages 1, 5, 12, and 15 were visually checked; equations (24)--(30), (80)--(86), and the bibliography were legible without layout defects.

## Checked

- Checked: xAct reduced $\nabla_\sigma\bar g^{\sigma\mu}-\nabla_\sigma(fk^\sigma k^\mu)$ to zero after substituting $\bar g^{\sigma\mu}=g^{\sigma\mu}+fk^\sigma k^\mu$ and using metric compatibility.
- Checked: xAct reduced the residual geodesic term to zero after imposing $k^\sigma\nabla_\sigma k^\lambda=\alpha k^\lambda$ and $k^\lambda\delta k_\lambda=0$.
- Checked: Mathematica performed the rational polar integrations for the flat Gürses--Gürsey energy and angular momentum and reproduced both closed forms exactly for $r>0$, $a>0$.
- Checked: Mathematica reproduced the regularized AdS Gürses--Gürsey energy and angular momentum for $r>0$, $a>0$, $l>a$.
- Checked: substituting $M(r)=M-Q^2/(2r)$ reproduced the stated Kerr--Newman energy exactly.
- Checked: the exact nonrotating limits are $\mathcal E\to M(r)$ and $\mathcal J\to0$.

## Failed

- Failed: the paper calls the construction a Hamiltonian for nonvacuum black holes while explicitly discarding the matter Lagrangian and matter symplectic potential. Evaluation on an Einstein--Maxwell metric is valid as a gravitational-sector functional, but Hamiltonian generation and integrability on the full Einstein--Maxwell covariant phase space do not follow.
- Failed: after defining $\Omega=\Omega_H+a/l^2$ in the thermodynamic frame and deriving an equation with $\Omega\mathcal J$, the final extended Smarr formula prints $\Omega_H\mathcal J$. Consistent frame bookkeeping requires $\Omega\mathcal J$ there.

## Blocked

- Blocked: the arbitrary background two-form $C_{\mu\nu}(\bar g)$ is not fixed by the variational argument. The relative charge removes it by definition, so no background-independent zero of energy is proved.
- Blocked: transitivity of the two-step AdS-to-Minkowski additive subtraction is not derived for general backgrounds; only the displayed black-hole families are evaluated.
- Blocked: the paper does not analyze symplectic flux through a finite timelike/null boundary, surface deformations, or corner degrees of freedom. Therefore surface independence and a moving-boundary Hamiltonian are not established.
- Blocked: the full connection-level reduction of the Einstein--Hilbert symplectic potential was not independently reproduced term by term; only its two decisive algebraic reductions and all subsequent polar integrals were checked.
- Blocked: one direct Mathematica attempt to integrate all four rotating expressions simultaneously exceeded the 30-second tool limit. Rewriting the angular integrals with $x=\cos\theta$ reduced them to rational integrals and completed the checks above.

## Not Independently Verified

- Not independently verified: global existence or uniqueness of the chosen GKS decomposition for every geometry to which the authors suggest applying the formula.
- Not independently verified: the claimed flatness of the complicated $a,l$-dependent Minkowski reference metric used in the rotating AdS subtraction.
- Not independently verified: equality of the full horizon Hamiltonian evaluation with the intermediate $TS+M/(2\Xi)$ expression before the Smarr rearrangement.
- Not independently verified: a first-law variation with varying $\Lambda$, $a$, $M$, and matter charge; the paper primarily checks integrated Smarr-type identities.

# Bottom Line

This is a useful restricted-integrability calculation, not a universal quasi-local Hamiltonian theorem. Its strongest verified result is the explicit reference-relative surface functional on the geodesic GKS metric sector and its exact reproduction of Misner--Sharp/Kerr--AdS charge formulas. For the vault, the main caution is equally valuable: fixed-background integrability, matter-complete covariant phase space, and corner-completed moving-boundary dynamics are three different levels and should not be merged.
