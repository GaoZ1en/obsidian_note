---
paper id: 2608.21283v1
title: "Static electric and magnetic traversable wormholes in (2+1)-dimensional nonlinear electrodynamics"
authors:
  - Mauricio Cataldo
publication date: 2026-08-22T00:42
abstract: |-
  Static circular symmetry separates nonlinear electrodynamics into mutually exclusive radial-electric, azimuthal-electric, and magnetic branches. The radial branch cannot support a traversable throat, while the other branches admit reconstructible wormhole families under explicit redshift and energy-condition constraints.
comments: "17 pages, 3 figures"
url: https://arxiv.org/abs/2608.21283v1
summary: "A useful branch classification and reconstruction scheme, valid within the static circular ansatz but without stability or global causal analysis."
tags: []
---

# Compact verdict

**Direct verdict.** Correct under the stated static, circularly symmetric, minimally coupled Einstein--$\mathcal L(F)$ ansatz with $\mathcal L_F\neq0$ and smooth fields on each exterior chart. The algebraic branch separation and the radial-electric no-throat result follow directly. “Complete classification” is limited to this ansatz and does not establish dynamical stability, global extension, or physical realizability of the exotic nonlinear electrodynamics.

Reason codes: `T1-boundary`, `T2-dS-BH-holography`, `T2-model`.

# Main statements

The action and stress tensor are

$$
S=\int d^3x\sqrt{-g}\left[\frac{R-2\Lambda}{16\pi}+\mathcal L(F)\right],
\qquad
T_{\mu\nu}=g_{\mu\nu}\mathcal L-F_{\mu\alpha}F_\nu{}^\alpha\mathcal L_F.
$$

For the Morris--Thorne metric

$$
ds^2=-e^{2\Phi(r)}dt^2+\frac{dr^2}{1-b(r)/r}+r^2d\varphi^2,
$$

diagonality of the Einstein tensor forces

$$
\mathcal EB=EB=E\mathcal E=0,
$$

so at most one of radial electric $E$, azimuthal electric $\mathcal E$, and magnetic $B$ is nonzero.

In the radial-electric branch the field equations imply

$$
e^{2\Phi(r)}=C\left(1-\frac{b(r)}r\right).
$$

Thus $b(r_0)=r_0$ also gives $e^{2\Phi(r_0)}=0$: the putative throat is a horizon, not a traversable throat.

In the azimuthal branch, the Bianchi identity gives

$$
\mathcal E(r)=\frac{Q}{r e^{\Phi(r)}}.
$$

The special redshift $e^\Phi=Cr$ removes the geometric constraint on $b(r)$ and permits reconstruction of $\mathcal L(F)$ for a chosen shape. Conversely, choosing $\mathcal L$ fixes

$$
b(r)=r-8\pi r^3\mathcal L\!\left(-\frac{Q^2}{2r^4}\right)+\Lambda r^3,
$$

with throat condition $\mathcal L(F(r_0))=\Lambda/(8\pi)$ and flare-out equivalent to $\mathcal L_F(F(r_0))>0$.

In the magnetic branch, an unconstrained $b(r)$ requires constant $\Phi$. The reconstructed theory is the degenerate square-root family

$$
\mathcal L(F)=\frac{\Lambda}{8\pi}+Q_m\sqrt{2F},
$$

while the selected geometry is carried by the magnetic profile. The standard Born--Infeld normalization has $\mathcal L_F<0$, so it cannot supply the required null-energy-condition violation in either wormhole branch.

# Verification ledger

## Source-derived

- The complete official TeX source and 17-page PDF were inspected.
- The manuscript gives explicit conformal-power examples and embedding plots, but no dynamical perturbation problem.

## Checked

- Mathematica verified that $\Phi=\log(Cr)$ annihilates the azimuthal master equation for arbitrary $b(r)$.
- Mathematica verified the radial identity obtained by differentiating $e^{2\Phi}=C(1-b/r)$.
- Differentiating the reconstructed azimuthal $b(r)$ at a throat gives
  $$
  b'(r_0)=1-\frac{16\pi Q^2}{r_0^2}\mathcal L_F(F(r_0)),
  $$
  so the stated equivalence between flare-out and $\mathcal L_F>0$ is correct.
- Mathematica reproduced the negative derivative of the paper's Born--Infeld Lagrangian for $\beta>0$ and $\beta^2+2F>0$.

## Not independently verified

- The full Einstein-tensor component calculation, every exceptional generic-redshift solution, and the literature-correction claims were not reconstructed independently.
- No linear or nonlinear stability, two-sided geodesic completeness, junction construction, quantum consistency, or ultraviolet completion is established.
- Freedom to reconstruct $\mathcal L(F)$ from $b(r)$ changes the matter theory with the chosen geometry; it is not a family of states within one fixed generic electrodynamics.

# Relevance

The paper is a clean example of how boundary geometry, constitutive data, and allowed solution branches constrain one another. For gluing work, the important warning is that freely selecting the shape function is paid for by reconstructing the bulk Lagrangian; this is not free boundary data in a fixed theory.
