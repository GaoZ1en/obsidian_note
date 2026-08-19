---
paper id: 2608.14932v1
title: "On M2-, M5-, and D3-branes from 12d anomalies: an equivariant perspective on duality"
authors:
  - Kiril Hristov
  - Pedro Vicente Marto
publication date: 2026-08-14T22:51
abstract: |-
  We revisit the twelve-dimensional anomaly polynomial that has long been known to govern M5-brane worldvolume theories, together with its more recently proposed D3-brane counterpart. We show that these constructions naturally fit into the framework of equivariant integration, allowing the anomaly inflow formulas to be rewritten entirely in terms of equivariant volumes. In particular, we use the fact that the Bott--Cattaneo formula for the integral of powers of the global angular form on even-dimensional spheres emerges from equivariant Euler-class integration of complex affine space, with two copies glued antipodally at the north and south poles. Building on this perspective, we generalize the anomaly construction to include both electrically and magnetically charged branes, thereby incorporating M2-branes as well as a dual formulation of D3-branes. This provides a unified framework encompassing classical results and recent developments, and suggests an AGT-like interpretation of the proposed M2/M5 relation. It also relates constant-map contributions in topological string theory to M-theory anomaly data.
comments: 35 pages, 2 diagrams
url: https://arxiv.org/abs/2608.14932v1
summary: "Successive equivariant pushforwards of twelve-dimensional characteristic forms reproduce standard M5 inflow and proposed M2/D3 protected zero-forms in factorized toric settings; this is a shared geometric polarization, not an established microscopic M2/M5 duality."
tags: []
---

# Direct verdict

**Correct under the following precise conditions:** use the standard Bott--Cattaneo fiber identities as an input; restrict to the factorized equivariant extension spaces and toric Calabi--Yau models specified in the paper; keep the authors' flux, Euclidean-continuation, ensemble, and equivariant-normalization conventions; and interpret the resulting zero-forms as protected/Cardy or perturbative contributions rather than complete partition functions. Under these conditions, the M5, M2, and D3 pushforward formulas have the advertised common structure.

The statement should be rewritten as: **different electric and magnetic polarizations of related twelve-dimensional equivariant characteristic integrals reproduce matching protected quantities.** The paper does not prove a microscopic M2/M5 duality, an exact AGT correspondence, or equality of full quantum partition functions. It explicitly leaves the normalization between $\mathcal I_0$ and $\log Z$ unspecified.

The paper's displayed general derivation of Bott--Cattaneo from two affine fixed-point patches is not correct as written: its signs fail even in the $S^4$ case used for M5 branes. This does not invalidate later formulas that substitute the standard Bott--Cattaneo identity directly, but it leaves the claimed derivation requiring repair. Two further normalization/sign inconsistencies occur in the D3 toric and inverse-Laplace formulas.

Relevance: **medium detailed** (`T2-model`, `T3-math`).

# Equivariant pushforward framework

The common object is a twelve-form on an extension space $Y_{12}$,

$$
\mathcal I_0
=\pi_{Y*}(\mathcal I_{12})
=\sum_{p\in Y^{\mathbb T}}
\frac{\mathcal I_{12}|_p}{e^{\mathbb T}(N_p)}.
$$

When

$$
Y_{12}=Z_d\times X_{12-d},
$$

the two orders of pushforward factorize formally:

$$
\pi_{Y*}
=(\pi_{X\to\mathrm{pt}})_*\circ\pi_{Z*}
=(\pi_{Z\to\mathrm{pt}})_*\circ\pi_{X*}.
$$

The paper interprets the first integration as following the directions threaded by the relevant form field. Magnetic charge suggests first integrating the transverse linking geometry; electric chemical potential suggests first integrating the Euclidean worldvolume extension. Supersymmetry imposes the equivariant Calabi--Yau constraint

$$
c_1^{\mathbb T}(Y_{12})
=\sum_i\epsilon_i-\sum_\alpha\omega_\alpha=0.
$$

This factorization is exact for the product models used here. Wrapped, intersecting, twisted, or nonfactorized configurations require additional embedding and flux data and are not derived.

# Bott--Cattaneo input and the sign problem

For a normalized global angular form on an even sphere bundle,

$$
\int_{S^{2k}}e_{2k}=2,
$$

the standard Bott--Cattaneo identities are

$$
\int_{S^{2k}}e_{2k}^{,2s+1}=2p_k(E)^s,
\qquad
\int_{S^{2k}}e_{2k}^{,2s}=0.
$$

The intended localization picture assigns opposite Euler classes to the north and south fixed points. It therefore produces

$$
(\omega_1\cdots\omega_k)^{m-1}
+[-(\omega_1\cdots\omega_k)]^{m-1},
$$

which has the required odd/even selection.

However, equation (2.14) instead flips every weight $\omega_i\mapsto-\omega_i$ and multiplies the second affine contribution by $(-1)^k$. With

$$
\mathbb V_{\mathbb C^k}(\lambda;\omega)
=\frac{e^{\sum_i\omega_i\lambda^i}}{\prod_i\omega_i},
\qquad
\mathcal D_k=\prod_i\partial_{\lambda^i},
$$

its left-hand side evaluates to

$$
\left[1+(-1)^{km}\right]
(\omega_1\cdots\omega_k)^{m-1},
$$

not the printed parity formula. For the physically central $k=2$ case, $m=2$ gives $2\omega_1\omega_2$ instead of zero. The south-pole orientation/weight prescription must be changed before this becomes a derivation of Bott--Cattaneo.

# M5 reduction

The M-theory twelve-form is

$$
\mathcal I_{12}^{\mathrm M}
=\frac16E_4^3+E_4I_8,
\qquad
I_8=\frac1{192}\left[p_1(TM)^2-4p_2(TM)\right].
$$

For $N_{\mathrm{M5}}$ magnetic branes,

$$
E_4=\frac{N_{\mathrm{M5}}}{2}e_4,
\qquad
Y_{12}=X_8^{(\parallel)}\times S^4_{(\perp)}.
$$

Using the standard Bott--Cattaneo identity gives

$$
\pi_{S^4*}(E_4)=N_{\mathrm{M5}},
\qquad
\pi_{S^4*}(E_4^3)
=\frac{N_{\mathrm{M5}}^3}{4}(\omega_1\omega_2)^2.
$$

The resulting eight-form is

$$
\begin{aligned}
\mathcal I_8^{\mathrm{M5}}
={}&\frac{N_{\mathrm{M5}}^3}{24}(\omega_1\omega_2)^2\\
&+\frac{N_{\mathrm{M5}}}{48}
\left[
\frac14\left(\omega_1^2+\omega_2^2-p_1(TX_8)\right)^2
-(\omega_1\omega_2)^2-p_2(TX_8)
\right].
\end{aligned}
$$

After the second pushforward over a toric $X_8$, this reproduces the classical inflow expression in terms of its equivariant volume $C_X$ and normalized equivariant Chern numbers $k_p^X$. It is classical inflow data; the exact interacting $(2,0)$ anomaly requires the usual index-theoretic finite-$N$ corrections.

# Electric M2 polarization

For M2 branes the same product is polarized oppositely:

$$
Y_{12}=\mathbb C^2_{(\parallel)}\times X_8^{(\perp)},
\qquad
E_4=\frac{\mu_{\mathrm{M2}}}{2\pi i}
e(T\mathbb C^2).
$$

Single-fixed-point localization over $\mathbb C^2$ yields

$$
\pi_*(e^m)=(\omega_1\omega_2)^{m-1}.
$$

Consequently,

$$
\begin{aligned}
-2\pi i\,\mathcal I_0^{\mathrm{M2}}(\mu)
={}&-\frac{\mu_{mathrm{M2}}^3}{24\pi^2}
(\omega_1\omega_2)^2C_X(\epsilon)\\
&+\frac{\mu_{\mathrm{M2}}}{24}
\left(k_1^Xk_3^X-\omega_1\omega_2k_2^X-k_4^X\right)
C_X(\epsilon).
\end{aligned}
$$

The cubic and linear dependence matches the genus-zero and genus-one constant-map structures quoted from earlier work, including the Euler-characteristic charge shift

$$
N_{\mathrm{M2}}\longrightarrow
N_{\mathrm{M2}}-\frac{\chi(X)}{24}.
$$

This is evidence that the anomaly integral captures the universal constant-map sector. It does not derive higher-genus constants, worldsheet instantons, nonperturbative corrections, or the full M2 partition function.

# D3 electric/magnetic pair

For D3 branes the proposed characteristic form is

$$
\mathcal I_{12}^{\mathrm{IIB}}
=\frac12E_6\wedge E_6,
\qquad
Y_{12}=X_6^{(\parallel)}\times Z_6^{(\perp)}.
$$

In the magnetic frame,

$$
E_6=N e(T\mathbb C^3),
\qquad
\mathcal I_0^{\mathrm{D3}}(N)
=\frac{N^2}{2}\frac{C_X(\epsilon)}{C_Z(\omega)}.
$$

In the electric frame,

$$
E_6=i\mu e(T\mathbb C^3),
\qquad
\mathcal I_0^{\mathrm{D3}}(\mu)
=-\frac{\mu^2}{2}\frac{C_Z(\omega)}{C_X(\epsilon)}.
$$

With the convention

$$
\mathcal I_0(N)
=\underset{\mu}{\operatorname{ext}}
\left[\mathcal I_0(\mu)+\mu N\right],
$$

the saddle $\mu=N C_X/C_Z$ exactly reproduces the magnetic answer. This is a consistent Legendre relation for the self-dual D3 system.

Equation (4.14), however, writes $\mathcal I_0(N)$ itself as a Gaussian integral with exponent $2C_Z\widetilde\mu^2-2N\widetilde\mu$. Besides equating a zero-form/logarithm to a partition integral, its saddle exponent is $-N^2/(2C_Z)$ rather than the positive canonical expression displayed in equation (4.13), unless an additional contour and overall logarithmic/sign convention is supplied.

# Toric cubic normalization

The general D3 discussion writes

$$
\frac1{C_Z(\omega)}
=\sum_{i,j,k}
\left|\det(v^i,v^j,v^k)\right|
\omega_i\omega_j\omega_k.
$$

If the sum is over ordered triples as written, each unordered triple occurs six times. The conifold appendix correctly inserts $1/6$ in the corresponding ordered sum. Thus the general formula either needs a $1/6$ or must explicitly restrict the sum to $i<j<k$; its present equality conflicts with the appendix normalization.

# Likely use for current projects

- The paper is a useful example of commuting partial equivariant pushforwards and of how the order of reduction encodes an ensemble/polarization choice.
- The separation between characteristic-class data and a full path-integral derivation is directly relevant to the vault's insistence on claim tiers.
- The fixed-point gluing sign error is a concrete warning that a correct global fiber identity is not automatically reproduced by a proposed patchwise implementation.
- The work does not construct a covariant phase space, boundary charge algebra, gluing map, or operator-algebraic duality.

# Verification log

## Source-derived

- Read the complete 35-page PDF and complete 1,627-line TeX source.
- Visually inspected rendered pages containing the abstract, Bott--Cattaneo localization, M5/M2 reductions, D3 electric/magnetic formulas, inverse Laplace expression, discussion, and toric examples.
- Kept the authors' distinction between a shared equivariant computation and a conjectural exact microscopic duality.

## Checked

Verified: Mathematica evaluated equation (2.14) from the printed affine equivariant volume and derivative definitions for $1\leq k,m\leq4$. The result is $[1+(-1)^{km}](\prod_i\omega_i)^{m-1}$, confirming the sign failure and, in particular, the nonzero $k=2,m=2$ result.

Verified: the M2 cubic normalization obeys

$$
(2\pi i)\frac16
\left(\frac{\mu}{2\pi i}\right)^3
(\omega_1\omega_2)^2
=-\frac{\mu^3}{24\pi^2}(\omega_1\omega_2)^2,
$$

matching the printed eight-form.

Verified: exact symbolic Legendre transformation of $-\mu^2C_Z/(2C_X)$ with the $+\mu N$ convention gives $N^2C_X/(2C_Z)$.

Verified: the saddle exponent of the printed Gaussian in equation (4.14) is $-N^2/(2C_Z)$, not the positive result in equation (4.13).

Verified: under the conifold constraint $\epsilon_1\epsilon_2=\epsilon_3\epsilon_4$, Mathematica reduced $1/C_{\mathcal C}$ to the four elementary cubic monomials printed in Appendix A.2. The ordered distinct-index sum is exactly six times this polynomial, confirming the missing $1/6$ or missing ordering restriction in the general formula.

Assumptions: factorized extension spaces; isolated torus fixed points; valid equivariant pushforwards on the noncompact toric models; the stated equivariant Calabi--Yau constraint; the paper's flux and Euclidean conventions; and use of protected/Cardy or perturbative sectors only.

## Failed

Failed: equation (2.14)'s two-patch formula does not algebraically imply its displayed Bott--Cattaneo parity result.

Failed: equation (4.14) is inconsistent with equation (4.13) as written; the integration contour, logarithm, and sign convention needed to reconcile them are absent.

Failed: the ordered toric determinant sum in the general cubic formula is missing the $1/6$ used by the conifold example, unless the summation range is silently meant to be unordered.

## Blocked

Blocked: the paper deliberately does not fix a precise normalization between $\mathcal I_0$ and $\log Z$, so quantitative partition-function equality cannot be assessed from this paper alone.

Blocked: no first-principles equivalence with the full eleven-dimensional or type-IIB localized supergravity path integral, including holographic renormalization and boundary terms, is supplied.

## Not independently verified

Not verified: all equivariant Pontryagin pushforwards entering the subleading M5/M2 terms for a general resolved toric fourfold.

Not verified: exact finite-$N$, higher-genus, instanton, or nonperturbative completion of the M2/M5 correspondence.

Not verified: the proposed extension of the magnetic D3 result from $Z=\mathbb C^3$ to an arbitrary toric Calabi--Yau threefold; the paper infers it from electric/magnetic consistency because its magnetic Euler-class ansatz does not directly generalize.

# Bottom line

The paper identifies a useful common architecture: twelve-dimensional characteristic data, two equivariant factors, and an electric/magnetic choice of which factor to push forward first. With the standard Bott--Cattaneo identity supplied externally, this organizes familiar M5 inflow and recent M2/D3 protected formulas. It remains a relation among protected geometric quantities, not a proved microscopic duality or full quantum equivalence. The paper's own general fixed-point derivation has a sign error, and its D3 inverse-Laplace and toric-cubic normalizations need correction.
