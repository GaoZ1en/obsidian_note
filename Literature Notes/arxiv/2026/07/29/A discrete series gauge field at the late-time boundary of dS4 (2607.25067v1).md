---
paper id: 2607.25067v1
title: A discrete series gauge field at the late-time boundary of dS4
authors:
  - Manizheh Botshekananfard
  - Elif Büşra Güraksın
  - Vasileios A. Letsios
  - Gizem Şengör
publication date: 2026-07-27T20:51
abstract: |-
  The paper quantizes a free Maxwell field in the planar patch of four-dimensional de Sitter space and identifies both independent late-time boundary operators with the photon discrete-series representation. It constructs positive conformally invariant inner products through exceptional-series intertwiners and shows that the self-dual and anti-self-dual field-strength sectors furnish the two helicity irreducible components.
comments: "43 pages = 39 pages + references"
url: https://arxiv.org/abs/2607.25067v1
summary: "A technically reusable representation-theoretic account of Maxwell late-time data, including the two falloffs, their positive inner products, and the helicity split."
tags: []
---

[[2026_07_29_overview|Back to 29 July 2026 overview]]

Reason codes: `T2-dS-BH-holography`, `T2-model`, `T1-boundary`.

This is useful less as a new de Sitter observable than as a careful dictionary between bulk Maxwell modes and exceptional/discrete-series boundary data. The main limitation for current charge work is equally clear: the paper constructs Hilbert-space representations and invariant inner products, not a covariant phase-space boundary symplectic form.

## Maxwell theory in the planar patch

The background is

$$
ds^2=\frac{-d\eta^2+d\vec x^{\,2}}{H^2|\eta|^2},
\qquad \eta<0,
$$

with the standard Maxwell action

$$
S=-\frac14\int d^4x\,\sqrt{-g}\,F_{\mu\nu}F^{\mu\nu}.
$$

Four-dimensional conformal invariance makes the planar-coordinate equations especially simple. The authors completely fix

$$
A_\eta=0,
\qquad
\partial_iA_i=0,
$$

so the lower-index transverse components obey the flat wave equation

$$
(\partial_\eta^2-\nabla^2)A_i=0.
$$

This is a complete gauge fixing for the nonzero-momentum modes considered in the paper. Possible zero modes and large gauge transformations are not developed into an independent boundary sector.

## Bunch--Davies modes and canonical operators

For transverse polarization vectors

$$
k^i\epsilon_i^{(\lambda)}(\vec k)=0,
\qquad
\epsilon^{(\lambda)}(\vec k)\cdot
\epsilon^{(\lambda')*}(\vec k)=\delta_{\lambda\lambda'},
$$

the positive-frequency modes are written as

$$
A_j^{(\lambda,\vec k)}
=
\frac{C}{(2\pi)^{3/2}}|\eta|^{1/2}
H_{1/2}^{(1)}(k|\eta|)
\epsilon_j^{(\lambda)}(\vec k)e^{i\vec k\cdot\vec x},
\qquad
C=\frac{\sqrt{\pi}}2.
$$

The normalization follows from the Maxwell Klein--Gordon product after imposing transversality. Quantization gives

$$
[a_{\vec k,\lambda},a_{\vec k',\lambda'}^\dagger]
=\delta_{\lambda\lambda'}\delta^{(3)}(\vec k-\vec k')
$$

and the equal-time commutator contains the transverse projector

$$
\Pi_{ij}(\vec k)=\delta_{ij}-\frac{k_i k_j}{k^2}.
$$

The projector is important later: the boundary representation is carried only by the two transverse polarizations, not by a three-component conformal primary with a positive unconstrained norm.

## The two late-time operators

Near $\eta=0^-$,

$$
A_i(\eta,\vec x)
=\alpha_i(\vec x)+|\eta|\,\beta_i(\vec x)+O(\eta^2).
$$

The two coefficients have conformal weights

$$
\Delta_\alpha=1,
\qquad
\Delta_\beta=2.
$$

In momentum space the operator coefficients are

$$
\alpha_j(\vec k)
=
i\sqrt{\frac2\pi}
\sum_\lambda\epsilon_j^{(\lambda)}(\vec k)
\bigl(a_{-\vec k,\lambda}^\dagger-a_{\vec k,\lambda}\bigr)k^{-1/2},
$$

$$
\beta_j(\vec k)
=
\sqrt{\frac2\pi}
\sum_\lambda\epsilon_j^{(\lambda)}(\vec k)
\bigl(a_{-\vec k,\lambda}^\dagger+a_{\vec k,\lambda}\bigr)k^{1/2}.
$$

Thus the two falloffs are not two unrelated photon Hilbert spaces. They are two presentations of the same two physical polarizations, with the expected relative power of $k$.

The de Sitter generators are represented directly on the oscillators. In particular, the paper writes the one-particle charges schematically as

$$
Q(\xi)
=
-i\sum_\lambda\int d^3k\,
a_{\vec k,\lambda}^\dagger\,\delta_\xi a_{\vec k,\lambda}.
$$

For special conformal transformations, gauge-restoring terms appear in the transformation of $A_\mu$. They drop from the physical transverse pairing after integration by parts, subject to the momentum-space boundary assumptions used in the paper.

## Exceptional intertwiners and positivity

At the exceptional point appropriate to a conserved spin-one operator, the usual conformal norm is degenerate before quotienting by longitudinal data. For the $\Delta=1$ operator, the relevant intertwiner is

$$
G_{01}^{\prime +}(\vec k)=k\,\Pi^{11}(\vec k),
$$

so the shadow-like variable is

$$
\widetilde\alpha_i(\vec k)=k\,\alpha_i(\vec k)
$$

on the transverse subspace. Inserting the oscillator expansion gives a positive one-particle norm with the paper's densitized normalization $2/\pi$.

The naive intertwiner for $\beta_i$ instead isolates the helicity-zero component and therefore annihilates the physical transverse sector. The paper avoids declaring the $\Delta=2$ realization null by introducing

$$
\beta_i'(\vec k)=\frac1k\beta_i(\vec k).
$$

This is isomorphic to the $\alpha$ realization and imports its positive invariant inner product. The construction is representation-theoretic: it does not identify $\alpha$ and $\beta$ as canonically conjugate boundary variables or derive a boundary action for them.

## Self-duality and the two helicity modules

Choose circular transverse polarizations satisfying

$$
i\,\vec k\times\vec\epsilon^{(\lambda)}
=\lambda k\,\vec\epsilon^{(\lambda)},
\qquad \lambda=\pm1.
$$

For the corresponding field-strength modes,

$$
\widetilde F_{\mu\nu}^{(\lambda)}
=i\lambda F_{\mu\nu}^{(\lambda)}.
$$

Because the Hodge star commutes with the de Sitter isometry action, the self-dual and anti-self-dual subspaces do not mix. The photon representation therefore splits as

$$
D_{01}=D_{01}^{(+)}\oplus D_{01}^{(-)},
$$

with one helicity in each irreducible summand. Both $\alpha^{(\lambda)}$ and $\beta^{(\lambda)}$ realize this split.

## Translation to boundary and phase-space language

- $\alpha_i$ and $\beta_i$ are the two independent late-time coefficients. Their weights match the source/response pattern familiar from AdS, but the paper stresses that de Sitter representation theory treats both as realizations of the photon discrete series.
- $k\Pi_{ij}$ is an invariant intertwiner and norm kernel. It is not the Maxwell presymplectic current, a Dirichlet-to-Neumann map derived from an action, or a proof that the late-time flux vanishes.
- The transverse quotient removes pure-gauge directions at nonzero momentum. Large gauge transformations, corner data, edge modes, and zero modes remain outside the construction.
- The helicity split is a clean representation-theoretic analogue of decomposing Maxwell data into self-dual and anti-self-dual sectors. It should be useful when comparing Carrollian or celestial boundary modules.
- The contrast with AdS is structural: the $\Delta=1$ Maxwell branch is normally non-normalizable in standard AdS quantization, whereas here a CFT-inspired de Sitter inner product makes both late operators into positive exceptional-series realizations.

## Verification boundary

### Checked

- Mathematica reproduced the half-integer identity
  $H_{1/2}^{(1)}(z)=-i\sqrt{2/(\pi z)}e^{iz}$ from the elementary $J_{1/2}$ and $Y_{1/2}$ formulas. Its small-$|\eta|$ expansion independently gives the $k^{-1/2}$ and $k^{1/2}$ scalings of $\alpha$ and $\beta$.
- For $\vec k\parallel\hat z$, the transverse projector is $\operatorname{diag}(1,1,0)$; its restriction and $k\Pi$ are positive for $k>0$. The circular polarization vectors diagonalize $i\vec k\times$ with eigenvalues $\lambda k$, reproducing the stated helicity split.

### Blocked

- The full exceptional-series irreducibility and unitarity theorem depends on the representation-theory results cited by the paper; it was not reconstructed independently.
- The treatment of special-conformal gauge-restoring terms assumes sufficient decay in momentum space. The paper does not supply a covariant boundary-flux analysis that would replace this assumption.

### Failed

- No checked algebraic step failed. The absence of a CPS boundary symplectic analysis is a scope boundary, not a contradiction.
