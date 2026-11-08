---
title: "Global AdS₃ Einstein–Scalar: Complete Finite First-Order Spectra and Their Structures"
author: "Research note prepared for koishi"
date: "19 October 2026"
lang: en
---

# Abstract

We organize the global AdS₃ minimal Einstein–real-scalar spectral problem around a constructive finite result. With AdS radius one, physical scalar gap \(\Delta>1\), source-free fast falloff, Brown–Henneaux boundary data, a fixed boundary cylinder and clock, and the specified canonical quantization and physical-gap subtraction, the order-\(G\) scalar branch is governed by a number-preserving sum of pair operators. The unreduced canonical derivation retains gravitational constraints, boundary momentum, virtual boundary modes, and inverse dressing. Its direct finite \(\mathcal K_4\) construction is distinguished from the source–Einstein–Casimir derivation of the closed pair formula and from a further continuum response comparison, whose analytic domain and endpoint requirements are stated explicitly.

For every finite particle number and finite free level, the physical Bose-primary space, its Gram matrix, its complete characteristic polynomial, exact multiplicities, physical eigenspaces, and global descendants admit a finite construction. A pair–spectator Gram reduction and a rational all-particle Racah compiler provide equivalent compressed representations. The exact positive residual has a fully classified collision kernel, including the physical tensor–Hom map, all collision-ideal powers, a logarithmic-symbol basis, and a closed Hilbert series. Separate low-channel families yield complete affine-bound eigenspaces at the appropriate masses, while a collision comparison gives the upper edge and its exact coefficient gap.

Three asymptotic questions are then kept distinct: fixed right degree and large left degree, where atomic empirical laws coexist with a recursive cluster spectral set; two large excitation degrees, where a Grassmannian law coexists with a strictly positive exponentially soft spectrum; and fixed excitation degrees with large particle number, where an exact finite pencil leads to general half-integer expansions and a special chiral low cluster with a proved integer expansion and an explicit first correction. Universality statements identify which conclusions depend only on representation, positive pair support, channel growth, or finitely many Einstein coefficients. Detailed proofs, exact counterexamples to overextended claims, a source-and-claim map, and reproducible finite certificates accompany the text. Throughout, physical energies are asserted only as \(E=E_0+Gg+o(G)\) on each fixed finite block.

# 1. The problem, conventions, and the route to the answer

## 1.1 What is being solved

The original question is the weak-gravity energy spectrum of a real scalar coupled minimally to Einstein gravity in global AdS₃. Even though pure three-dimensional Einstein gravity has no local bulk graviton polarization, the constrained metric response, boundary charges, and physical boundary modes affect the scalar spectrum. They must therefore enter the derivation before a scalar effective operator can be identified.

We fix the theory and boundary conditions, the boundary Hamiltonian measured by a fixed global clock, and the original quantum prescription. The free one-particle scalar representation has weights \((\Delta/2,\Delta/2)\) and energies \(\Delta+p+q\), with \(p,q\ge0\). The physical gap \(\Delta\), rather than an unrenormalized mass parameter, is held fixed when the vacuum and one-body terms are subtracted. We study the normal-form branch with no independent free boundary-graviton occupation. This definition keeps all constraint backreaction and virtual boundary-graviton effects encoded in the pair interaction; inverse normal-form dressing reconstructs them in the original variables.

The expansion has the form

\[
E=E_0+Gg+o(G).
\tag{1.1}
\]

The coefficient is first defined on a fixed finite free block. Large particle number or high excitation is subsequently a limit of these coefficients. None of the limits in this note supplies, by itself, an error estimate uniform at fixed nonzero \(G\). In particular, an \(o(G)\) remainder is not replaced by \(O(G^2)\) merely because the first nontrivial scalar operator is quartic.

**Complete finite solution** means a finite construction of all coefficients \(g\), exact multiplicities, physical eigenspaces, spectral projectors, and global descendants in every allowed finite scalar shell. The roots may be represented by exact polynomials and isolating intervals. Completeness does not require a radical expression for a general root, a Bethe ansatz, a complete commuting family, or a nonperturbative spectrum. An explicit \(S_5\) example shows why radical formulas would be an inappropriate completion criterion.

## 1.2 The central logical chain

The physical derivation first determines an effective pair operator. The finite spectral construction then treats that pair operator as its precise dynamical input. The remaining structures describe portions or limits of the same finite spectra.

\[
\begin{gathered}
\text{boundary-completed Einstein--scalar action}\\
\Downarrow\quad\text{canonical constraints, normal form, quantum subtraction}\\
W_N=\displaystyle\sum_{i<j}w_{ij}\\
\Downarrow\quad\text{physical Bose primaries and exact finite matrices}\\
\text{all finite coefficients, multiplicities, states, and descendants}\\
\Downarrow\quad\text{exact structure and separately ordered limits}\\
\text{collision kernels, clusters, high-excitation laws, and stable pencils}.
\end{gathered}
\tag{1.2}
\]

There are three distinct interfaces in the first step. The direct canonical finite-sum algorithm is constructed in the canonical chart and does not require reconstructing a covariant response at every spacetime point. The closed all-label pair formula is obtained on the specified common renormalized source/Hessian/observable domain, where the source-Casimir identity and reciprocity apply. Comparing this with a general continuum response representative additionally requires the chosen lapse and shift, the same self-adjoint boundary problem, and control of renormalized averaged endpoints. Chapter 3 and Appendix A identify each condition where it is used. An unfinished version of the last interface neither invalidates the independent finite canonical construction nor establishes a domain theorem that has not been proved.

Once the pair input is fixed, Chapters 5–10 are finite representation theory and analysis of its spectral limits. Their conditional dependence on that input is explicit; they do not require the optional continuum reconstruction. The finite construction in Chapter 5 is logically prior to the logarithmic-kernel and asymptotic results. In particular, it can determine the physical zero multiplicity by an exact rank before the closed formula for that multiplicity is known.

## 1.3 Unified notation

| Symbol | Meaning |
|---|---|
| \(G\) | Newton's constant; never a Gram matrix |
| \(\kappa\) | Coupling with \(\kappa^2=16\pi G\) |
| \(\Delta>1\) | Physical one-particle scalar gap and representation parameter |
| \(\Delta_0,\mu_0\) | Bare quantities where the one-body subtraction requires them |
| \(\mu=\Delta(\Delta-2)\) | Unit-radius physical mass-squared parameter |
| \(N\) | Scalar particle number |
| \(p,q\) | Single-particle excitation labels, or local polynomial degrees when explicitly declared |
| \(M_L,M_R\) | Full many-particle free-level degrees, including descendants |
| \(P,Q\) | Global-primary bidegrees |
| \(E_0,J\) | Free energy and signed angular momentum |
| \(k,\ell\) | Left and right pair relative labels; physical channels have \(k+\ell\) even |
| \(n,s\) | Pair radial index \(n=\min(k,\ell)\) and nonnegative even spin \(s=|k-\ell|\) |
| \(\gamma_{k\ell}=g_{n,s}\) | Dimensionless pair coefficient multiplying \(G\) |
| \(C_k=(\Delta+k)(\Delta+k-1)\) | Pair chiral Casimir value |
| \(D_L,U_L\), \(D_R,U_R\) | Total lowering and raising operators |
| \(\mathcal P_{N;P,Q}\), \(d_N(P,Q)\) | Physical Bose-primary space and its dimension |
| \(\Gamma\) | Physical Gram matrix in the explicitly stated coordinate basis |
| \(W_N\) | First-order scalar coefficient operator \(\sum_{i<j}w_{ij}\) |
| \(b_N(Q)\) | Oriented right-degree Casimir baseline |
| \(A_N=W_N-b_N(Q)I\) | Positive residual; the right degree is kept fixed in internal clusters |
| \(a_{k\ell}\) | Positive residual pair coefficient on the bad-channel strip |
| \(\kappa_N(P,Q)\) | Exact physical residual-kernel multiplicity |
| \(\mathcal V_N,J_N\) | Vandermonde and degree \(J_N=2N(N-1)\) of its fourth power |
| \(a_{pq},c_{pq}\) | Formal creation and centered creation generators; products are occupation products |
| \(\mathscr A,\mathscr B\) | Stable-\(N\) leading and constant matrices, distinct from \(A_N\) |
| \(r=Q/P\) | Ratio used only in the balanced high-excitation limit |
| \(p_N(r),k_N(r)\) | Geometric zero-atom fraction and exact physical kernel fraction |

The letters \(x,y\) are polynomial coordinates, spectral variables, or generating-function variables only within an explicitly identified local calculation. The direct circular two-particle calculation uses total level \(T\), avoiding confusion with particle number \(N\). In the stable chiral algebra, \(x=c_{20},y=c_{30}\). The source-and-claim map records the older notations and their conversion to this table.

## 1.4 Reading and proof dependencies

Chapters 2–4 reconstruct the physical input. Chapter 5 gives the complete finite answer and worked examples. Chapter 6 explains exact kernels, protected states, and the global coefficient gap. Chapter 7 studies fixed-\(Q\) high-\(P\) spectra, including sparse branches invisible to the empirical atomic measure. Chapter 8 treats two large degrees and the exponentially soft positive spectrum. Chapter 9 treats fixed degrees and large \(N\). Chapter 10 states proved universality classes and their counterexamples. Chapter 11 collects the remaining limitations and open problems.

Appendices A–D provide the full physical analytic chain and ancillary formal transfer results. Appendix F contains the finite intertwiner and compiler formulas; G proves pair ordering and the sharp collision gap; K and L prove the complete high- and low-channel kernel classifications; O proves the precise algebraic obstructions. Appendix CL contains the cluster proofs, SC the balanced and soft proofs, ST the stable-pencil proofs, UN the general effective-operator determining identities, and V the reproduction record. Each major result has a stable identifier, such as FIN-01 or EX-01. The separate source-and-claim map gives its original proof locations, direct dependencies, absorbed audit corrections, implementation, and current versus inherited verification status.

The note presumes working knowledge of GR, QFT, perturbation theory, and covariant phase space. The less familiar mathematical structures are introduced through their concrete map to the physical operator or its metric. Long identities are included where needed to reconstruct a proof. The standard external results actually invoked are stated in the relevant proofs and linked in the bibliography; no novelty claim is based on a broad or incomplete literature search.
