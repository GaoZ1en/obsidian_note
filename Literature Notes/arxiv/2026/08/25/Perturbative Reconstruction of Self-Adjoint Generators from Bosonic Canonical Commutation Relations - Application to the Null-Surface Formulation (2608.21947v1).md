---
paper id: 2608.21947v1
title: "Perturbative Reconstruction of Self-Adjoint Generators from Bosonic Canonical Commutation Relations: Application to the Null-Surface Formulation"
authors:
  - C. N. Kozameh
publication date: 2026-08-22T13:17
abstract: |-
  The paper solves an inverse adjoint problem for perturbative bosonic outgoing maps. Under polynomial, vacuum-preserving CCR hypotheses it reconstructs a formal self-adjoint BCH generator recursively, and applies the construction to a flat solution-space specialization of null-surface graviton scattering through order epsilon squared.
comments: "53 pages"
url: https://arxiv.org/abs/2608.21947v1
summary: "A useful formal CCR integrability theorem and a detailed NSF application, with a sharp boundary between polynomial algebraic reconstruction and genuine Hilbert-space unitary implementability."
tags: []
---

Daily package: [[2026_08_25_overview]].

# Direct verdict

Correct under the following precise conditions: the outgoing map is a near-identity formal power series; every BCH-subtracted residual is a normally ordered polynomial in bosonic creation and annihilation operators; each homogeneous residual annihilates the Fock vacuum; the adjoint compatibility conditions and the full perturbative CCR hierarchy hold; and equality is understood in the polynomial CCR algebra, not as an operator-domain statement on completed Fock space.

Under those hypotheses, the paper's recursive lifting formula is correct and gives a formal self-adjoint generator unique up to a real scalar. The title and abstract should not be read as proving an everywhere-defined self-adjoint operator or a genuine unitary on the infinite-dimensional graviton Fock space. The NSF application checks only the fixed-Minkowski-cone specialization through $\delta a_3$, i.e. through $O(\varepsilon^2)$.

Reason codes: `T1-CCR`, `T1-canonical`, `T1-symplectic`, `T1-scattering`, `T2-null-surface`, `T2-gravity`.

# Source map

1. The introduction separates the abstract inverse-adjoint theorem from its NSF application and fixes the flat solution-space specialization with the auxiliary cut operator $U=\mathrm{Id}$.
2. Section 2 states and proves three algebraic results: local inverse-commutator reconstruction, the perturbative outgoing CCR hierarchy, and recursive BCH reconstruction.
3. Sections 3--5 reconstruct $\delta T_1$ and $\delta T_2$ from the NSF coefficients after direct CCR tests.
4. Sections 6--8 organize $3\to1$ and $2\to2$ matrix elements and their canonical-contraction topology.
5. Appendix A supplies the direct order-two and order-three CCR identities, including the scalar ordering calculation.
6. Later appendices collect NSF kernel and contraction details. No executable code or numerical dataset is supplied.

# How to read this long paper

- Essential theorem path: Section 2 from the inverse-commutator theorem through the CCR hierarchy and Theorem 3; Sections 3--5 for the NSF input and the explicit lifts $\delta T_1$, $\delta T_2$; Appendix A for the direct CCR evidence.
- Technical reference path: Sections 6--8 and Appendices B--C for $3\to1$, $2\to2$, crossing, helicity support, and canonical-contraction topology.
- Optional background path: the introductory NSF history and the diagrammatic discussion are useful for interpretation but are not inputs to the algebraic reconstruction theorem.
- Safe stopping point: readers interested only in regulated canonical-map reconstruction can stop after Section 5 plus Appendix A. The later amplitude sections do not strengthen formal self-adjointness into Hilbert-space implementability.

# Complete section tree and dependencies

1. Introduction — defines the inverse problem, fixed-Minkowski-cone specialization, retarded Yang--Feldman prescription, and $U=\mathrm{Id}$.
2. CCR integrability and recursive BCH reconstruction — fixes the polynomial CCR algebra; proves Theorem 1 (local lift), Theorem 2 (order hierarchy), and Theorem 3 (inductive reconstruction); supplies all later generator logic.
3. NSF coefficients and their perturbative CCR test — identifies $\delta a_2$ and the complete ordered $\delta a_3$ as dynamical inputs.
4. Reconstruction of $\delta T_1$ — lifts the quadratic NSF coefficient to a cubic Hermitian vertex.
5. Reconstruction of $\delta T_2$ — subtracts $I_3$, separates cubic and linear residuals, and lifts them to quartic and bilinear sectors.
6. The $3\to1$ transition — combines the point term $i\delta T_2$ with the three on-shell contractions from $-\delta T_1^2/2$.
7. The $2\to2$ scattering process — gives diagrammatic rules, the direct $\delta a_3\delta a_3$ decomposition, and tree/loop topology.
8. Discussion and conclusions — states the formal scope and summarizes helicity and topology claims.
9. Appendix A, perturbative outgoing-CCR verification — derives the $K/L$ kernel relations, the $c=1$ scalar ordering identity, and all degree-two cancellations.
10. Appendix B, tree-level $3\to1$ matrix element — records operator decomposition, momentum support, tree topology, and helicity constraints.
11. Appendix C, construction of the $2\to2$ kernel — records signed crossing, crossed cone form factors, point and contraction terms, and helicity rules.

# Global notation and equation ledger

- $i=(\lambda_i,\vec k_i)$ is a complete oscillator label; $\int_i$ includes helicity sum and Lorentz-invariant momentum measure; $\Delta(i,j)$ implements the half-contraction convention.
- $n$ labels perturbative order, while $d$ labels normal-ordered operator degree and $r$ the number of creators in a residual sector.
- $I_n$ is fixed BCH iteration from lower generators; $R_n=\delta a_n^{\mathrm{out}}-I_n$ is the new homogeneous residual; $\delta T_{n-1}$ is its lifted coefficient.
- $K=\mathcal K^{aa}$ and $L=\mathcal K^{ca}$ are the quadratic NSF kernels; $A,B,C,D$ are cubic and linear pieces of $\delta a_3$; $\mathcal I_A,\mathcal I_B,\mathcal I_C,D_I$ are the corresponding $I_3$ kernels.
- Central chain: outgoing CCRs $\Rightarrow$ identical inhomogeneous sources for $\delta a_n$ and $I_n$ $\Rightarrow$ homogeneous equations for $R_n$ $\Rightarrow$ polynomial lift $\Rightarrow$ formal self-adjoint $\delta T_{n-1}$.

# Algebraic setup

The incoming oscillators satisfy

$$
[a(i),a^\dagger(j)]=\Delta(i,j),
\qquad
[a(i),a(j)]=0,
$$

with the paper's half-contraction convention

$$
\int_i\Delta(j,i)F(i)=\frac12F(j).
$$

The outgoing map is written as

$$
a_i^{\mathrm{out}}(\varepsilon)
=a_i+\sum_{n=2}^{\infty}
\varepsilon^{n-1}\delta a_{n,i}^{\mathrm{out}}.
$$

The inverse problem asks for

$$
\delta T(\varepsilon)
=\sum_{m\geq1}\varepsilon^m\delta T_m,
\qquad
\delta T_m^\dagger=\delta T_m,
$$

such that, formally,

$$
a^{\mathrm{out}}
=e^{-i\delta T}a\,e^{i\delta T}.
$$

At order $n$, let $I_n$ be the BCH coefficient already fixed by $\delta T_1,\ldots,\delta T_{n-2}$ and define

$$
R_{n,i}=\delta a_{n,i}^{\mathrm{out}}-I_{n,i}.
$$

The new information is precisely the inverse-commutator problem

$$
R_{n,i}=i[a_i,\delta T_{n-1}].
$$

# Local lifting theorem

For a homogeneous residual of operator degree $d$, decompose

$$
R_{[d]}(i)
=\sum_{r=0}^{d-1}R_{[d]}^{(r,d-r)}(i),
$$

where $r$ counts creators. If the homogeneous $aa$ and mixed $aa^\dagger$ compatibility conditions hold, the paper proposes

$$
T_{[d]}
=-2i\sum_{r=0}^{d-1}\frac{1}{r+1}
\int_i a^\dagger(i)R_{[d]}^{(r,d-r)}(i).
$$

The coefficient is fixed by two facts: the explicit $a^\dagger$ adds one creator, and commutation with the external annihilator can hit any of the $r+1$ symmetric creator legs; each hit contributes $1/2$ under the chosen normalization. Hence

$$
i[a(k),T_{[d]}]=R_{[d]}(k).
$$

The mixed condition then forces $T_{[d]}^\dagger-T_{[d]}$ to contain only pure-creation, pure-annihilation, or central pieces. The hypothesis $R_{[d]}(i)|0\rangle=0$ makes the constructed lift contain both creator and annihilator legs, excluding the pure sectors. Vacuum normalization removes the scalar.

This vacuum-preserving condition is essential. CCR preservation alone also permits canonical translations and more general sectors not covered by the stated lift. The theorem itself includes the condition, but the short slogan "CCRs are sufficient" suppresses it.

# Perturbative CCR hierarchy

At order $\varepsilon^{n-1}$, the no-dagger equation is

$$
0=[\delta a_{n,i}^{\mathrm{out}},a_j]
+[a_i,\delta a_{n,j}^{\mathrm{out}}]
+\sum_{r=2}^{n-1}
[\delta a_{r,i}^{\mathrm{out}},
\delta a_{n+1-r,j}^{\mathrm{out}}],
$$

with an analogous mixed equation. A partial BCH conjugation built from the already reconstructed generators preserves the CCR exactly. Its order-$n$ coefficient $I_n$ has the same lower-order inhomogeneous sum as the given outgoing coefficient. Subtraction therefore yields homogeneous equations for $R_n$, so the local lifting theorem applies.

The induction is logically clean: it does not assume a scattering generator to prove that one exists. Its conclusion remains a formal algebraic exponential.

# First two reconstructed generators

The quadratic NSF coefficient has the normal-ordered form

$$
\delta a_2(3)
=\int_{12}\mathcal K^{aa}(3;1,2)a(1)a(2)
+\int_{12}\mathcal K^{ca}(3,1|2)a^\dagger(1)a(2).
$$

The order-two CCR identities relate the two kernels and produce the manifestly Hermitian cubic generator

$$
\delta T_1
=-i\int_{312}L(3,1|2)
a^\dagger(3)a^\dagger(1)a(2)+\mathrm{H.c.}
$$

At the next order,

$$
I_3=\frac{i}{2}[\delta a_2,\delta T_1],
\qquad
R_3=\delta a_3-I_3.
$$

Normal ordering splits $R_3$ into cubic and linear operator degrees. The lift correspondingly gives

$$
\delta T_2=\delta T_2^{(4)}+\delta T_2^{(2)},
$$

where the quartic part comes from the cubic residual and the bilinear $a^\dagger a$ part comes from the linear residual. This separation is important: the bilinear term is a one-particle canonical rotation, not an extra four-point interaction.

# Ordering selected by the scalar CCR

The mixed cubic monomial has three inequivalent placements of its creator. The paper parameterizes left, symmetric, and right ordering by $c=0,1,2$. Normal ordering produces

$$
D_c=cD_1
$$

in the annihilation-linear sector. The scalar part of the mixed order-three CCR reduces to

$$
E_{3,ij}^{a\bar a;(0)}(c)
=\frac{1-c}{2}
\int_{rs}K(i;r,s)K(j;r,s)^*.
$$

Thus the nontrivial kernel selects $c=1$. At this value the induced linear contraction cancels the double contraction from $[\delta a_2,\delta a_2^\dagger]$. The coefficient arithmetic and the half-contraction factors are consistent.

# NSF scope and geometric assumptions

The NSF variables $x^a$ label the four-dimensional solution space of the cut equation. The paper does not claim that an external background spacetime is inserted from the beginning. It does, however, specialize the reconstructed solution-space metric to $\eta_{ab}$ and holds the corresponding cuts, null generators, affine parameter, cone measure, and geodesics at their flat values. It also fixes the auxiliary cut-data operator to $U=\mathrm{Id}$ and omits recursive-cut products involving $\delta Z_1$.

Therefore the application proves neither the fully dynamical NSF geometry nor generic curved-background graviton scattering. Metric and geodesic corrections must be restored together beyond this sector.

# Scattering interpretation

Exponentiating the reconstructed phase organizes point vertices and canonical contractions through on-shell intermediate states. The paper distinguishes:

- the three-graviton vertex from $\delta T_1$;
- the quartic point sector from $\delta T_2^{(4)}$;
- the one-particle rotation from $\delta T_2^{(2)}$;
- iterated on-shell contractions generated by powers of the exponential.

Its topological loop counting is not a proof of equivalence with off-shell covariant Feynman loops, and it does not establish ultraviolet finiteness. Numerical amplitudes still require external kinematics and evaluation of the remaining angular Green-function and principal-value integrals.

# Verification log

- `Checked` The official 53-page PDF and TeX source were retrieved. The algebraic theorem pages and the displayed BCH/lifting formulas were visually inspected in the PDF.
- `Checked` Expanding $e^{-i\delta T}ae^{i\delta T}$ through the first three nontrivial coefficients reproduces the paper's $\delta a_2$, $\delta a_3$, and $\delta a_4$ formulas.
- `Checked` In a one-mode test with $[a,a^\dagger]=1/2$ and $T=a^{\dagger2}a+a^\dagger a^2$, the residual sectors are $i a^\dagger a$ and $(i/2)a^2$; Mathematica evaluates both lifting coefficients to one and reconstructs $T$ exactly.
- `Checked` Mathematica simplifies the scalar ordering residue to $(1-c)q/2$, confirming the printed cancellation at $c=1$ once the kernel identity is assumed.
- `Checked` The theorem's induction correctly cancels the lower-order inhomogeneous CCR source by comparison with the partial BCH map.
- `Blocked` The full distributional NSF kernel identities, including all angular Green functions, principal values, momentum supports, and helicity sums, were not independently recomputed because no executable notebook or machine-readable kernel dataset is supplied.
- `Blocked` The result does not address domains, closures, essential self-adjointness, Shale--Stinespring implementability, or convergence of the formal exponential on completed graviton Fock space.
- `Not checked` The remaining angular integrals and numerical values of the $3\to1$ and $2\to2$ matrix elements were not evaluated.

# Relevance to the current program

The paper supplies a clean finite-polynomial diagnostic for whether a perturbative canonical map can be integrated to a formal generator. It is useful for regulated finite-mode gluing calculations and order-by-order metaplectic/nonlinear checks. It does not justify passing from such finite or polynomial tests to continuum product-Fock factorization, a globally defined scattering unitary, or an entropy theorem.
