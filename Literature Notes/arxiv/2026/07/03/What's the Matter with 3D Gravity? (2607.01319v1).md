---
paper id: 2607.01319v1
title: What's the Matter with 3D Gravity?
authors:
  - Robert Bourne
  - Jackson R. Fliss
  - Bob Knighton
publication date: 2026-07-01T00:00
abstract: |-
  The paper revisits minimally coupled scalar matter in three-dimensional AdS gravity. It rewrites the scalar path integral in worldline language, interprets the worldlines as conical defects in the gravitational phase space, and quantizes the resulting cone-surface Teichmuller spaces by geometric quantization. States correspond to Virasoro conformal blocks with subthreshold conformal weight. On thermal AdS3 the partition function is computed by equivariant localization, reproduces the Wilson spool and the known scalar one-loop determinant at leading order, and gives an all-orders perturbative conjecture in Newton's constant.
comments: "30 pages + appendices, 8 figures"
url: https://arxiv.org/abs/2607.01319v1
summary: "This paper gives a Virasoro-TQFT quantization of scalar matter coupled to AdS3 gravity by replacing scalar field quanta with backreacted conical-defect worldlines."
tags: []
---

Back to [[2026_07_03_overview]].

# why this is useful

The transferable point is not just another one-loop determinant in AdS3. The paper gives a canonical phase-space route from scalar matter to a Virasoro-TQFT observable: scalar particles become conical defects, the $n$-particle sector is quantized as a cone-surface Teichmuller space, and the thermal AdS3 answer reorganizes into a Wilson spool. This makes it useful for AdS3 quantization, Wilson-line determinant, and black-hole threshold notes.

# pure AdS3 gravity as Virasoro quantization

The first-order fields are combined into two $\mathrm{PSL}(2,\mathbb R)$ connections,

$$
A_L^a=\frac12\varepsilon^a{}_{bc}\omega^{bc}+\frac1\ell e^a,
\qquad
A_R^a=\frac12\varepsilon^a{}_{bc}\omega^{bc}-\frac1\ell e^a.
$$

The Einstein-Hilbert action becomes the difference of two Chern-Simons actions with

$$
k=\frac{\ell}{16G_N},\qquad c=24k.
$$

The gravitational phase space on an initial surface $\Sigma$ is

$$
\mathcal M_g\cong
\mathcal T_\Sigma\times\overline{\mathcal T}_\Sigma,
$$

with symplectic form

$$
\omega=\frac{k}{4\pi}\omega_{\rm WP}
-\frac{k}{4\pi}\overline{\omega}_{\rm WP}.
$$

Quantization of one chiral copy uses a prequantum line bundle $\mathscr L=\mathcal L^k$ with

$$
c_1(\mathcal L)=\frac1{4\pi}[\omega_{\rm WP}],
$$

and gives holomorphic sections

$$
\mathcal H_L=H^0(\mathcal T_\Sigma,\mathscr L).
$$

These sections behave as Virasoro conformal blocks of central charge $c=24k$. Mapping-class invariance imposes crossing symmetry after quantization.

# scalar matter as conical-defect worldlines

The matter-coupled path integral begins as

$$
Z_{\rm grav+matter}
=\int\mathcal Dg\,\mathcal D\phi\,
e^{-S_{\rm EH}[g]-S[\phi,g]}.
$$

The scalar determinant is rewritten in worldline form,

$$
\int\mathcal D\phi\,e^{-S[g,\phi]}
=\exp\!\left(\int\mathcal Dx\,e^{-S_{\rm worldline}[g,x]}\right),
$$

where a worldline $\gamma$ has action

$$
S_{\rm worldline}[g,x]=\frac{\mu}{\ell}\int_\gamma d\tau.
$$

The worldline backreaction modifies the traced Einstein equation to

$$
R+\frac6{\ell^2}
=-\frac{16\pi G_N\mu}{\ell}
\int_\gamma d\tau\,\delta^{(3)}(x(\tau),x).
$$

In three dimensions this is a conical singularity with defect angle

$$
\theta=\frac{8\pi G_N\mu}{\ell}.
$$

The corresponding chiral conformal weight is

$$
h=k(1-\alpha_\theta^2),
\qquad
\alpha_\theta=1-\frac{\theta}{2\pi},
$$

or equivalently

$$
h=\frac{\mu}{2}-\frac{G_N\mu^2}{\ell}.
$$

For fixed particle number $n$, the phase space becomes the moduli space of hyperbolic cone surfaces,

$$
\mathcal M_{{\rm grav},n}
=\frac{\mathcal T_{\Sigma,n,\theta}
\times\overline{\mathcal T}_{\Sigma,n,\theta}}
{\operatorname{Map}(\Sigma,n)}.
$$

The Weil-Petersson form on the cone-surface Teichmuller space is

$$
\omega_{{\rm WP},n,\theta}
=4\pi\left(\kappa_1-\sum_{i=1}^n\alpha_\theta^2\psi_i\right),
$$

and therefore

$$
\omega
=\frac{k}{4\pi}\omega_{{\rm WP},n,\theta}
-\frac{k}{4\pi}\overline\omega_{{\rm WP},n,\theta}.
$$

The corresponding holomorphic sections behave as $n$-point Virasoro conformal blocks,

$$
\Psi
=\left\langle
\mathcal O_h(x_1)\cdots\mathcal O_h(x_n)
\right\rangle_{{\rm CFT},c}.
$$

The full matter-coupled Hilbert space is assembled as

$$
\mathcal H_{\rm grav+matter}
=\bigoplus_{n=0}^\infty \mathcal H_{{\rm grav},n},
\qquad
\mathcal H_{{\rm grav},n}
=\mathcal H^0_{{\rm grav},n}/\operatorname{Map}(\Sigma,n).
$$

# fusion, binding energy, and the black-hole threshold

When $p$ conical defects collide and the total angle stays below $2\pi$, the result is a sharper conical defect. Its conformal weight is

$$
h(p)=k\left(1-(1-p(1-\alpha_\theta))^2\right)
=\frac{p\mu}{2}-\frac{G_Np^2\mu^2}{\ell}.
$$

The gravitational binding energy is therefore

$$
\Delta E_p=2h(p)-2ph
=-\binom p2\frac{4G_N\mu^2}{\ell}.
$$

When the total angle exceeds $2\pi$, the compactification changes: instead of a single sharper cone point, a nodal sphere bubbles off. This is the geometric origin of the later BTZ-threshold discussion. The critical particle number is

$$
n_{\rm critical}
=\left\lfloor\frac{2\pi}{\theta}\right\rfloor
=\left\lfloor\frac{\ell}{4G_N\mu}\right\rfloor.
$$

# thermal AdS3 localization and Wilson spool

For thermal AdS3, the initial surface is the disk $\mathbb D$. The mapping class group of the disk with $n$ identical marked points is the braid group $B_n$. In the full left-right wavefunction, pure braid phases cancel, so the projection reduces to a permutation sum over $S_n$:

$$
Z(\tau,\bar\tau)
=\sum_{n=0}^\infty\frac1{n!}
\sum_{\rho\in S_n}
\left|
\operatorname{Tr}_{H^0(\mathcal T_{\mathbb D,n,\theta},\mathscr L)}
(\rho q^{L_0})
\right|^2.
$$

In the perturbative sector $n\theta<2\pi$, $\rho q^{L_0}$ has a single fixed point: all defects sit at the disk origin and the boundary mode is round. The Atiyah-Bott fixed-point theorem gives

$$
\chi(gq^{L_0},\mathscr L)
=\frac{\operatorname{Tr}(gq^{L_0}|\mathscr L_*)}
{\det(1-gq^{L_0}|T_*\mathcal T_{\mathbb D,n,\theta})}.
$$

The fiber transforms as

$$
\operatorname{Tr}(\rho q^{L_0}|\mathscr L_*)
=q^{h(n)-c/24}.
$$

The tangent determinant splits into Virasoro boundary modes and defect-separation modes. If the permutation cycle type has $\ell_r$ cycles of length $r$, the defect modes contribute

$$
\prod_{r=1}^n\frac1{(1-q^r)^{\ell_r}}.
$$

The perturbative partition function is

$$
Z_{\rm pert}
=|q|^{-c/12}
\prod_{m=2}^\infty\frac1{|1-q^m|^2}
\sum_{n=0}^{\lfloor\ell/(4G_N\mu)\rfloor}
|q|^{2h(n)}
\prod_{r=1}^n
\sum_{\{\ell_1,\ldots,\ell_n\}}
\frac1{\ell_r!r^{\ell_r}}
\frac1{|1-q^r|^{2\ell_r}}.
$$

The cycle decomposition is the canonical origin of the Wilson spool:

$$
Z(\tau,\bar\tau)=\langle\exp\mathbb W\rangle_{\rm grav},
\qquad
\mathbb W=\sum_{k=1}^\infty\frac1k\mathcal W^{(k)}.
$$

Here $\mathcal W^{(k)}$ is the connected Wilson line winding the thermal cycle $k$ times.

# one-loop determinant and higher loops

At leading order in $G_N$, one replaces

$$
2h(n)\to n\mu.
$$

The sum over partitions then gives

$$
Z_{\rm pert}
=Z_{\rm grav,1-loop}Z_{\rm scalar,1-loop}
\left(1+O(G_N\ell^{-1}\mu^2)\right),
$$

where

$$
Z_{\rm grav,1-loop}
=|q|^{-c/12}\prod_{m=2}^\infty\frac1{|1-q^m|^2},
$$

and

$$
Z_{\rm scalar,1-loop}
=\prod_{l,\bar l=0}^\infty
\frac1{1-q^{\mu/2+l}\bar q^{\mu/2+\bar l}}.
$$

The scalar mass is matched by

$$
\mu=1+\sqrt{m^2\ell^2+1}.
$$

For $q=\bar q=e^{-\beta/\ell}$, the all-order perturbative expansion is generated by mass derivatives:

$$
Z_{\rm pert}(\beta)
=\sum_{s=0}^\infty
\frac1{s!}
\left(\frac{2\mu^2G_N}{\beta}\right)^s
\frac{\partial^{2s}}{\partial\mu^{2s}}
Z_{\rm 1-loop}(\mu).
$$

Equivalently,

$$
\partial_{G_N}\left(\frac{Z_{\rm pert}}{Z_{\rm grav,1-loop}}\right)
=\frac{2\mu^2}{\beta}
\partial_\mu^2
\left(\frac{Z_{\rm pert}}{Z_{\rm grav,1-loop}}\right).
$$

Solving this heat-equation form gives a Gaussian smearing of the one-loop determinant. The first real pole at $\bar\mu=0$ produces a residue proportional to

$$
e^{-\beta/(8G_N)}=|q|^{c/12},
$$

which the authors interpret as the first nonperturbative signal at the BTZ threshold.

# transfer to local AdS3 notes

- The formula

$$
h(n)=\frac{n\mu}{2}-\frac{G_Nn^2\mu^2}{\ell}
$$

is a compact datum for matter backreaction, multiparticle binding, and threshold behavior.

- The determinant expansion is not just a product formula. It is organized by permutation cycles, which map directly to multiply wound Wilson lines:

$$
\prod_r(\mathcal W^{(r)})^{\ell_r}.
$$

- The construction explains why the scalar determinant can live inside a Virasoro TQFT despite scalar matter being local: at fixed particle number, one quantizes a finite-dimensional conical-defect gravitational phase space.

- The failure above the threshold is also useful. The authors find an infinite degeneracy in the naive above-threshold sector, suggesting that gravity plus a free scalar is not UV-complete without additional data or a topology/nonperturbative completion.

# verification boundary

## Checked

- The relation $h=\mu/2-G_N\mu^2/\ell$ follows algebraically from $h=k(1-\alpha_\theta^2)$, $\alpha_\theta=1-\theta/(2\pi)$, $\theta=8\pi G_N\mu/\ell$, and $k=\ell/(16G_N)$.
- The fused-defect formula $h(p)=p\mu/2-G_Np^2\mu^2/\ell$ gives the stated binding energy

$$
\Delta E_p=-\binom p2\frac{4G_N\mu^2}{\ell}.
$$

- For a permutation cycle of length $r$,

$$
\prod_{s=0}^{r-1}(1-qe^{2\pi is/r})=1-q^r,
$$

so the defect-separation determinant has the source form $\prod_r(1-q^r)^{-\ell_r}$.

## Not independently verified

- The cone-surface phase-space theorem, compactification prescription, Kodaira vanishing range, Atiyah-Bott fixed locus assumptions, braid phase cancellation, and inner-product positivity are source-derived.
- The Wilson-spool equality is checked only at the level of the paper's cycle expansion, not independently as a Chern-Simons line-operator path integral.
