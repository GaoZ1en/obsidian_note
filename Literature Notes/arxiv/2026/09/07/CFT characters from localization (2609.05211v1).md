---
paper id: 2609.05211v1
title: CFT characters from localization
authors:
  - Lorenz Eberhardt
  - Duarte Fragoso
  - Hessel Posthuma
publication date: 2026-09-04T14:42:22
abstract: |-
  The paper derives Virasoro, affine Kac-Moody, and N=1,2,4 super-Virasoro characters from geometric quantization of coadjoint orbits and equivariant fixed-point formulas. Finite-dimensional localization is rigorous under standard compact Kahler hypotheses; the chiral-algebra applications use the localized expression as a formal definition because the orbits are infinite-dimensional.
comments: "35 pages; the official generated PDF has 43 pages including appendices and references"
url: https://arxiv.org/abs/2609.05211v1
summary: "Coadjoint-orbit fixed points reproduce standard chiral characters, with infinite-dimensional localization kept explicitly formal."
tags: []
---

Daily overview: [[2026_09_07_overview]].

# Verdict

**Correct under the following precise conditions:** the finite-dimensional construction assumes a compact semisimple simply connected group, an integral dominant coadjoint orbit with a positive prequantum line bundle, a compatible Kähler polarization, higher-cohomology vanishing, and a torus action with the stated fixed points. Under these hypotheses, equivariant Riemann--Roch plus ABBV localization gives the Weyl character formula.

For Virasoro, affine Kac--Moody, and super-Virasoro orbits, **the statement should be rewritten as:** the formal localized fixed-point prescription reproduces the standard characters for the listed generic, vacuum, and BPS modules. The paper explicitly does not establish an infinite-dimensional index theorem, a measure on the full orbit, convergence of the original orbit integral, or a general orbit-method classification of all unitary chiral-algebra representations.

# Complete section tree

- Section 1 states the orbit/index/localization chain and its relation to Chern--Simons theory on a punctured disk or solid torus.
- Section 2.1 reviews KKS symplectic forms, momentum maps, prequantum line bundles, Kähler polarization, and the invariant-complex-structure criterion.
- Section 2.2 turns holomorphic quantization into an equivariant Riemann--Roch index, using higher-cohomology vanishing to identify the index with a character.
- Section 2.3 applies ABBV localization and records the fixed-point Todd/Euler ratio.
- Section 2.4 evaluates the data on $G/T$ and derives the Weyl character formula, then explains enhanced stabilizers on Weyl-chamber walls.
- Section 3.1 treats generic and vacuum Virasoro orbits, their admissible Kähler structures, unique rotation fixed point, and Verma/vacuum characters.
- Section 3.2 treats centrally extended loop-group orbits, affine-Weyl fixed points, the canonical-line-bundle shift, and the Weyl--Kac formula.
- Section 3.3.1 treats $\mathcal N=1$ NS generic/vacuum orbits and the special Ramond ground-state orbit; generic Ramond orbits fail the Kähler criterion because of $G_0$.
- Section 3.3.2 treats $\mathcal N=2$ generic, vacuum, BPS, and anti-BPS NS orbits with noncompact R symmetry; Ramond results are reached by spectral flow.
- Section 3.3.3 treats small $\mathcal N=4$ generic, spin-zero, vacuum, and BPS orbits, including affine-Weyl fixed points and spectral-flow removal of stabilizer modes.
- Appendix A reduces the superindex to characteristic classes on the bosonic reduced space and derives the bosonic/fermionic fixed-point ratio.
- Appendix B identifies canonical or Berezinian line bundles through ghost determinant lines for Virasoro, affine, and $\mathcal N=1,2,4$ cases.

# Finite-dimensional geometric core

For $\lambda\in\mathfrak g^*$, the orbit

$$
\mathcal O_\lambda=\{\operatorname{Ad}^*(g)\lambda:g\in G\}\cong G/H_\lambda
$$

carries the KKS form

$$
\omega_\lambda(\xi_X,\xi_Y)=\langle\lambda,[X,Y]\rangle.
$$

The $G$ action is Hamiltonian and the momentum map is the inclusion

$$
\mu:\mathcal O_\lambda\hookrightarrow\mathfrak g^*.
$$

Prequantization requires the normalized class $[\omega]$ to be integral. With a Kähler polarization and line bundle $\mathcal L_\lambda$ satisfying

$$
c_1(\mathcal L_\lambda)=[\omega],
$$

the quantized space is

$$
\mathcal H_\lambda=H^0(\mathcal O_\lambda,\mathcal L_\lambda).
$$

If $\mathfrak g=\mathfrak h\oplus\mathcal K$ and

$$
\mathcal K_\mathbb C=\mathcal K^+\oplus\mathcal K^-,
$$

the invariant integrable complex structure must obey

$$
[\mathfrak h,\mathcal K^+]\subset\mathfrak h\oplus\mathcal K^+,
\qquad
[\mathcal K^+,\mathcal K^+]\subset\mathfrak h\oplus\mathcal K^+.
$$

These conditions later exclude most exceptional Virasoro and generic Ramond super-Virasoro orbits.

# Index and localization chain

Under the compact positivity assumptions, Kodaira vanishing reduces the holomorphic Euler characteristic to $H^0$. Equivariant Riemann--Roch gives

$$
\chi_\lambda(e^X)=\int_{\mathcal O_\lambda}
\operatorname{td}^G(T\mathcal O_\lambda)e^{\omega^G}(X).
$$

At isolated torus fixed points $p$, ABBV localization gives

$$
\chi_\lambda(e^X)=\sum_{p\in\mathcal O_\lambda^T}
e^{\mu_p(X)}\prod_i\frac{1}{1-e^{-x_i(X)}},
$$

where $x_i$ are the holomorphic tangent weights. For a regular compact orbit $G/T$, fixed points are labelled by the Weyl group. Rewriting the denominator antisymmetrically yields

$$
\chi_\lambda=
\frac{\sum_{w\in W}\epsilon(w)e^{w(\lambda+\rho)}}
{\prod_{\alpha\in\Delta^+}(e^{\alpha/2}-e^{-\alpha/2})}.
$$

For weights on Weyl walls, the stabilizer enlarges. Quantizing the smaller orbit $G/H$ or the degenerate pullback on $G/T$ gives the same sections because the compact fiber $H/T$ contributes only constants. Compactness of that fiber is essential.

# Virasoro cluster

The Virasoro dual is represented by $(b(\varphi)d\varphi^2,c)$ with coadjoint action

$$
b\mapsto b\circ f^{-1}\,((f^{-1})')^2-
\frac{c}{24\pi}\{f^{-1},\varphi\}.
$$

For generic constant $b_0$, the orbit is

$$
\operatorname{Diff}^+(S^1)/S^1,
$$

with holomorphic directions $L_n$, $n\ge1$. At

$$
b_0=-\frac{k^2c}{48\pi},
$$

the stabilizer includes $L_0,L_{\pm k}$, but only $k=1$ admits the required invariant Kähler structure. This is the vacuum orbit

$$
\operatorname{Diff}^+(S^1)/\operatorname{PSL}(2,\mathbb R),
$$

with holomorphic modes $L_n$, $n\ge2$.

The rigid-rotation action has one constant fixed point. Identifying

$$
2\pi b_0=h-\frac{c}{24},
$$

the prescription gives

$$
\chi_h(q)=q^{h-c/24}\prod_{m=1}^\infty(1-q^m)^{-1},
$$

$$
\chi_{\rm vac}(q)=q^{-c/24}\prod_{m=2}^\infty(1-q^m)^{-1}.
$$

The missing $m=1$ vacuum factor is exactly the removal of the $L_{-1}$ descendant by the enhanced $\operatorname{PSL}(2,\mathbb R)$ stabilizer.

# Affine Kac--Moody cluster

A coadjoint vector of $\widehat{LG}$ is a circle gauge field $A(\varphi)d\varphi$ together with level $k$, with action

$$
A\mapsto gAg^{-1}-ik\,\partial_\varphi g\,g^{-1}d\varphi.
$$

The orbit is labelled by the conjugacy class of the holonomy of $A/k$. For $G=SU(2)$, generic orbits are $LSU(2)/U(1)$ and the vacuum orbit is $LSU(2)/SU(2)$. Integrality of the KKS class quantizes both $j$ and $k$, with integrable representatives

$$
j\in\left\{0,\frac12,\ldots,\frac{k}{2}\right\}.
$$

The $U(1)\times U(1)$ fixed points are

$$
A_{\sigma,n}=\operatorname{diag}(\sigma j+nk,-\sigma j-nk)d\varphi,
\quad \sigma=\pm1,\quad n\in\mathbb Z,
$$

and are labelled by the affine Weyl group. Passing from the Todd class to the $\widehat A$ class requires the canonical-line-bundle correction

$$
\mathcal K_{\mathcal O}\cong\mathcal L_{-1,-4},
$$

so $j\mapsto j+\frac12$ and $k\mapsto k+2$. The fixed-point sum then reproduces the $\widehat{\mathfrak{su}}(2)_k$ Weyl--Kac character. For general simple simply connected $G$, the shifts are

$$
\lambda\mapsto\lambda+\rho,
\qquad
k\mapsto k+h^\vee,
$$

and fixed points are indexed by $\widehat W=W\ltimes Q^\vee$.

The paper relates this orbit to Chern--Simons theory on a punctured disk. Its character is the solid-torus partition function with a Wilson line around the noncontractible cycle. This is the most direct connection to the vault's regional operator-algebra direction, but the paper does not construct a gluing map between multiple punctured regions.

# Superindex rule

For a super-orbit, localization reduces to the bosonic fixed set. If $x_i$ and $\xi_j$ are bosonic and fermionic holomorphic tangent weights,

$$
\chi_\pm=
\sum_{p\ {m fixed}}e^{\mu_p}
\frac{\prod_j(1\pm e^{-\xi_j})}{\prod_i(1-e^{-x_i})}.
$$

The plus sign gives the ordinary character and the minus sign the supercharacter with $(-1)^F$. Appendix A justifies the fermionic exterior-algebra factor at the level of characteristic classes on the reduced space, while retaining the same formal infinite-dimensional caveat.

# $\mathcal N=1$ cluster

Generic NS orbits have stabilizer $S^1$ and holomorphic modes

$$
L_n\ (n\ge1),\qquad G_r\ (r\ge\tfrac12).
$$

The vacuum removes $L_1$ and $G_{1/2}$. A generic Ramond orbit cannot carry the chosen Kähler structure because the Hermitian zero mode $G_0$ cannot belong to only one of $\mathcal K^\pm$. The special $b_0=0$ Ramond orbit includes $G_0$ in its stabilizer and is admissible.

The characters are

$$
\chi_{\pm,h}=q^{h-c/24}\prod_{m=1}^\infty
\frac{1\pm q^{m-1/2}}{1-q^m},
$$

$$
\chi_{\pm,\rm vac}=q^{-c/24}\prod_{m=2}^\infty
\frac{1\pm q^{m-1/2}}{1-q^m},
$$

$$
\chi_{\pm,R}=\prod_{m=1}^\infty\frac{1\pm q^m}{1-q^m}.
$$

In particular $\chi_{-,R}=1$, the expected Witten index.

# $\mathcal N=2$ cluster

The paper uses noncompact $U(1)_R$, so $J_0$ charge is not quantized and winding sectors are absent. Generic NS orbits have stabilizer $S^1\times\mathbb R$ generated by $L_0,J_0$. Constant orbit data obey

$$
2\pi b_0=h-\frac{c}{24},
\qquad
2\pi A_0=Q.
$$

The BPS loci

$$
b_0=\pm\frac12A_0-\frac{c}{48\pi}
$$

give $h=\pm Q/2$ and enlarged $U(1|1)^\pm$ stabilizers. The generic character is

$$
\chi_{\pm,h,Q}=q^{h-c/24}y^Q
\prod_{m=1}^\infty
\frac{(1\pm q^{m-1/2}y)(1\pm q^{m-1/2}y^{-1})}{(1-q^m)^2}.
$$

Vacuum and (anti-)BPS characters follow by deleting precisely the modes in the enhanced stabilizer. Ramond-sector statements are obtained by spectral flow, not by a separate orbit-localization proof in this paper.

# Small $\mathcal N=4$ cluster

The algebra contains $L_n$, an $\widehat{\mathfrak{su}}(2)_k$ R current, and four supercurrents, with

$$
c=6k.
$$

The shortening constraint on the $S^{1|4}$ generating superfield leaves the independent content

$$
\mathbf1\oplus(\mathbf2,\mathbf2)\oplus(\mathbf3,\mathbf1),
$$

corresponding to stress tensor, four supercurrents, and R-current triplet. Generic, spin-zero, vacuum, and BPS stabilizers determine which tangent modes are removed.

Localization uses $L_0$, $J_0^3$, and an outer-automorphism $U(1)$. Bosonic fixed points are the affine-$SU(2)$ fixed points; fermions alter the characteristic-class ratio but not the fixed-point set. The canonical/Berezinian correction shifts

$$
j\mapsto j+\frac12,
\qquad
k\mapsto k+1.
$$

The generic and BPS formulas are affine-Weyl sums multiplied by the common oscillator factor $\Xi_\pm$. Degenerate representations require removing the stabilizer modes separately at each spectral-flow image. This geometric deletion reproduces the familiar null-state subtractions.

# Canonical-line-bundle ledger

Appendix B obtains the determinant-line shifts from ghost systems:

- Virasoro $bc$ ghosts have $c=-26$, giving $\mathcal K_{\mathcal O}\cong\mathcal L_{c=26}$.
- $\mathcal N=1$ adds one $\beta\gamma$ system: $-26+11=-15$.
- Affine adjoint complex ghosts give level $2h^\vee$ and the $2\rho$ finite shift.
- $\mathcal N=2$ gives $-26+2\cdot11-2=-6$.
- Small $\mathcal N=4$ gives $-26+4\cdot11-3\cdot2=12$; its R-current ghost levels give $4-2=2$, consistent with $c=6k$.

These anomaly computations motivate the square-root canonical-line-bundle corrections. They do not by themselves construct the global square root or resolve every determinant-line phase on an infinite-dimensional orbit.

# Global derivation map

1. Identify a coadjoint orbit and its KKS form.
2. Impose integrality and choose an invariant Kähler polarization.
3. Quantize by holomorphic sections of the prequantum line bundle.
4. Replace the trace by an equivariant holomorphic index.
5. Localize to torus fixed points and compute momentum-map values and tangent weights.
6. Include canonical/Berezinian shifts, equivalently the ghost determinant-line correction.
7. For enhanced stabilizers, remove the corresponding tangent oscillators or work on the smaller orbit.
8. Sum finite Weyl or affine-Weyl images to obtain the character.

Steps 1--8 are theorems in the finite compact setting under the listed hypotheses. In the chiral infinite-dimensional setting, Step 4 is not defined independently; the fixed-point formula in Step 5 is adopted as the formal prescription and checked against known characters.

# Local translation to the vault

The reusable bridge is

$$
\text{boundary phase space}
\longrightarrow
\text{coadjoint orbit}
\longrightarrow
\text{polarized Hilbert space}
\longrightarrow
\text{character/solid-torus trace}.
$$

For Chern--Simons sewing, the punctured-disk orbit and its Wilson-line label are concrete regional data. However, the paper computes a single-region character; it does not prove factorization, fusion under gluing, an exact regional-to-global observable map, or compatibility of polarizations across cuts. Those remain separate tasks.

The explicit stabilizer audit is especially relevant: null states are not inserted ad hoc but correspond to tangent directions removed by enhanced gauge symmetry. Any regional analogue should likewise distinguish a true stabilizer quotient from a formal cancellation in a partition function.

# Verification log

- **Source-derived:** the complete section tree, every orbit/stabilizer class, tangent-mode prescription, fixed-point set, character family, and both appendices were reconstructed from the official v1 TeX source and complete 43-page PDF.
- **Visually confirmed:** PDF pages 1, 10, 20, 30, 40, and 43 display the metadata, finite Weyl setup, affine $\widehat A$ correction, $\mathcal N=2/4$ transition, and reference tail without clipped formulas or missing text.
- **Checked:** Sage expanded the generic Virasoro product through $q^{10}$ and obtained $1,1,2,3,5,7,11,15,22,30,42$; the vacuum product gave $1,0,1,1,2,2,4,4,7,8,12$, confirming removal of the level-one state. The $\mathcal N=1$ NS generic and vacuum oscillator products were independently expanded through $q^6$. The finite $SU(2)$ spin-$3/2$ Weyl quotient reduced exactly to its four weights. Ghost central charges gave $(-15,-6,12)$ for $\mathcal N=(1,2,4)$ and the small-$\mathcal N=4$ R-current ghost level gave $4-2=2$.
- **Assumptions:** $|q|<1$ for analytic products or formal power-series interpretation; integral dominant data in the finite case; compatible Kähler structures; stated zeta regularization; noncompact $U(1)_R$ in the $\mathcal N=2$ section; standard spectral-flow identifications.
- **Not independently verified:** a rigorous infinite-dimensional equivariant index theorem, all higher-cohomology vanishing statements outside the compact finite case, global determinant-line square roots, the full $\mathcal N=4$ affine-Weyl sum coefficient by coefficient, or equivalence to a nonperturbative Chern--Simons path integral.
- **Blocked:** the method intentionally starts from the localized formula in the infinite-dimensional cases, so it cannot by itself prove that a pre-localization orbit integral or measure exists.

# How to read this long paper

Essential: Sections 2.1--2.3 for the logic and hypotheses; Section 3.1 for the cleanest infinite-dimensional example; Section 3.2 for the punctured-disk/Chern--Simons connection and affine Weyl sum.

Technical reference: Section 2.4 for the finite rigorous benchmark; Appendix A for the superindex numerator; Appendix B for the ghost-induced line-bundle shifts.

Selective reading: use the $\mathcal N=1$ subsection to understand zero-mode obstructions, the $\mathcal N=2$ subsection for BPS stabilizers, and the $\mathcal N=4$ subsection when the full spectral-flow bookkeeping is needed. The central conceptual limitation is already stated in the introduction: the chiral-algebra localization is a formal fixed-point prescription, not a proved infinite-dimensional index theorem.
