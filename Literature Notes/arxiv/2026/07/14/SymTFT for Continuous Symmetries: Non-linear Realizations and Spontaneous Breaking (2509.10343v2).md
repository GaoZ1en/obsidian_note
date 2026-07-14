---
paper id: 2509.10343v2
title: "SymTFT for Continuous Symmetries: Non-linear Realizations and Spontaneous Breaking"
authors:
  - Federico Bonetti
  - Michele Del Zotto
  - Ruben Minasian
publication date: 2025-09-12T15:24
abstract: |-
  The paper studies non-linear realizations and spontaneous breaking of continuous symmetries through their topological symmetry theories. Non-Abelian BF theory and its defects encode continuous symmetries; suitable physical and symmetry boundary conditions recover Abelian higher-form Goldstone actions and non-Abelian coset/CCWZ theories. Lateral boundaries and corners distinguish broken and unbroken phases, while defect sweeping yields the corresponding Ward identities. Higher groups and non-invertible examples are also developed.
comments: "68 pages plus appendices; v2: published version"
url: https://arxiv.org/abs/2509.10343v2
summary: "A selective reconstruction of the BF boundary-condition mechanism that produces Goldstone and CCWZ actions and turns spontaneous symmetry breaking into a choice of lateral boundary and corner interface."
tags: []
---

Back to [[2026_07_14_overview]].

The reusable mechanism is a “sandwich” construction: a topological bulk transports symmetry data between a symmetry boundary and a physical boundary. Closing the interval converts the boundary conditions into an ordinary Goldstone or CCWZ action. When the physical spacetime is noncompact, a lateral boundary and its corners encode the choice between broken and unbroken phases.

# Continuous symmetry from non-Abelian BF theory

For a compact Lie group $G$ with an invariant positive pairing, the basic $(d+1)$-dimensional SymTFT is

$$
S_{\mathrm{BF}}
=\frac1{2\pi}\int_{X^{d+1}}
\operatorname{Tr}(B\wedge F_A),
\tag{2.1}
$$

where $A$ is a $G$ connection and $B$ a $\mathfrak g$-valued $(d-1)$-form. The transformations are

$$
A\mapsto g(d+A)g^{-1},
\qquad
B\mapsto g(B-d_A\tau)g^{-1},
\tag{2.3}
$$

and the equations are

$$
F_A=0,
\qquad
d_AB=0.
$$

Wilson loops label representations of $G$. A codimension-two $B$ defect associated with an adjoint-orbit representative $X_0$ is

$$
\mathbf Q_{X_0}(\Sigma^{d-1})
=\int[\mathcal DU][\mathcal D\beta]
\exp\left[
i\int_{\Sigma^{d-1}}
\operatorname{Tr}\left((B+d_A\beta)UX_0U^{-1}\right)
\right].
\tag{2.19}
$$

Its linking with a Wilson loop in representation $\mathbf R$ gives

$$
\frac{\chi_{\mathbf R}(e^{2\pi X_0})}
{\chi_{\mathbf R}(1)}.
\tag{2.50}
$$

This character-valued factor becomes the non-Abelian Ward-identity factor in the SSB analysis.

The long source contains additional higher-linking, fusion, mixed Chern--Simons, and non-flat-background proposals. They are important to the paper's scope but are not needed for the boundary-condition mechanism reconstructed here.

# Abelian higher-form Goldstone action

For a $U(1)$ $p$-form symmetry, the bulk fields are $C_{p+1}$ and $B_{d-p-1}$ with

$$
S_{\mathrm{bulk}}
=\frac1{2\pi}\int_{X^{d+1}}
B_{d-p-1}\wedge dC_{p+1}.
\tag{3.8}
$$

The symmetry boundary contains dynamical potentials and background sources. Its boundary equations impose

$$
B_{d-p-1}
=R^{-1}\left(d\widetilde\varphi_{d-p-2}
+\widetilde{\mathcal A}_{d-p-1}\right),
$$

$$
C_{p+1}
=R\left(d\varphi_p+\mathcal A_{p+1}\right).
\tag{3.16}
$$

The physical boundary carries the quadratic action

$$
S_{\mathrm{phys}}
=-\frac1{4\pi}
\int_{B^d_{\mathrm{phys}}}
C_{p+1}\wedge *_dC_{p+1}.
\tag{3.22}
$$

Closing the sandwich gives

$$
\begin{aligned}
S=\frac1{2\pi}\int_{M^d}\Big[
&-\frac12R^2(d\varphi_p+\mathcal A_{p+1})
\wedge *_d(d\varphi_p+\mathcal A_{p+1})\\
&+(-1)^{d-p}\widetilde{\mathcal A}_{d-p-1}
\wedge(d\varphi_p+\mathcal A_{p+1})
\Big].
\end{aligned}
\tag{3.24}
$$

This is the higher-form Goldstone action including the mixed background term. When $d=2p+2$, exchanging $B$ and $C$ implements $R\leftrightarrow R^{-1}$, unifying the topological core of compact-boson T-duality and Maxwell S-duality.

# Non-Abelian boundary data and CCWZ

For fully broken $G$, the symmetry boundary uses a $G$-valued field $\mathcal V$. Its action enforces

$$
A
=\mathcal V^{-1}d\mathcal V
+\mathcal V^{-1}\mathcal A\mathcal V.
\tag{3.47}
$$

After closing the sandwich with the physical kinetic boundary condition, one obtains

$$
S
=-\frac{f^2}{4\pi}\int_{M^d}
\operatorname{Tr}\left[
(\mathcal V^{-1}d\mathcal V
+\mathcal V^{-1}\mathcal A\mathcal V)
\wedge *
(\mathcal V^{-1}d\mathcal V
+\mathcal V^{-1}\mathcal A\mathcal V)
\right].
\tag{3.54}
$$

For a nontrivial unbroken subgroup $H\subset G$, decompose

$$
\mathfrak g=\mathfrak h\oplus\mathfrak h^\perp,
\qquad
A=a+\mathscr A.
\tag{3.56}
$$

The Maurer--Cartan form with background connection splits as

$$
\mathcal V^{-1}(d+\mathcal A)\mathcal V=P+Q,
\qquad
P\in\mathfrak h^\perp,
\quad
Q\in\mathfrak h.
\tag{3.67}
$$

Closing the sandwich produces the general CCWZ structure

$$
S=\frac1{2\pi}\int_{M^d}
\left[
\mathcal L_{\mathrm{univ}}(P,d_QP,F_Q)
+\mathcal L_{\mathrm{non-univ}}(\Psi;P,d_QP,F_Q)
\right].
\tag{3.69}
$$

The topological bulk does not determine all EFT coefficients. It determines which covariant objects are allowed and how the non-linear realization is assembled from boundary data.

# Lateral boundaries and corners

For noncompact physical spacetime,

$$
X^{d+1}=M^d\times[z_0,z_1]
$$

has a symmetry boundary $B_{\mathrm{sym}}$, physical boundary $B_{\mathrm{phys}}$, lateral boundary $B_{\mathrm{lat}}$, and corners where these meet. Two topological boundary conditions are central.

The $\mathcal D_A$ boundary condition is generated by

$$
S_{\mathrm{bdy}}^{\mathcal D_A}
=\frac1{2\pi}\int_{Y^d}
(-1)^{d-p}B_{d-p-1}
\wedge(A_{p+1}-\mathcal A_{p+1}-d\varphi_p).
\tag{4.5}
$$

The dual $\mathcal D_B$ condition is

$$
S_{\mathrm{bdy}}^{\mathcal D_B}
=\frac1{2\pi}\int_{Y^d}
(-1)^{d-p}
(d\Phi_{d-p-2}+\mathcal B_{d-p-1})
\wedge A_{p+1}.
\tag{4.10}
$$

An $\mathcal D_A$--$\mathcal D_A$ corner carries

$$
S_{\mathrm{int}}^{\mathcal D_A\mathcal D_A}
=\frac1{2\pi}\int_{Z^{d-1}}
B_{d-p-1}\wedge
(\varphi_p^{(2)}-\varphi_p^{(1)}-d\nu_{p-1}-\xi_p).
\tag{4.15}
$$

Absorbing a symmetry defect shifts the interface datum,

$$
\xi_p\mapsto\xi_p
+2\pi\alpha\,
\delta_p(\Sigma^{d-p-1}\subset Z^{d-1}).
\tag{4.18}
$$

The source summarizes the phases by the boundary-condition table:

| Phase | $B_{\mathrm{sym}}$ | $B_{\mathrm{lat}}$ | Corner |
|---|---|---|---|
| Unbroken | $\mathcal D_A$ | $\mathcal D_B$ | $\mathcal D_A$--$\mathcal D_B$ |
| Broken | $\mathcal D_A$ | $\mathcal D_A$ | $\mathcal D_A$--$\mathcal D_A$ |

# Defect sweeping and Ward identities

For an Abelian operator of charge $n$, a symmetry defect can be swept away in the unbroken configuration, giving

$$
\langle\mathcal O\rangle
=e^{2\pi in\alpha}\langle\mathcal O\rangle.
\tag{4.21}
$$

Unless the phase is trivial,

$$
\langle\mathcal O\rangle=0.
\tag{4.22}
$$

In the broken configuration, sweeping changes the lateral boundary condition from a vacuum label $v$ to $v'$:

$$
\langle\mathcal O\rangle_v
=e^{2\pi in\alpha}
\langle\mathcal O\rangle_{v'}.
\tag{4.23}
$$

The equation relates different vacua rather than forcing a one-point function in a fixed vacuum to vanish. For non-Abelian symmetry, the phase is replaced by the linked character ratio,

$$
\langle\mathcal O\rangle
=\frac{\chi_{\mathbf R}(e^{2\pi X_0})}
{\chi_{\mathbf R}(1)}
\langle\mathcal O\rangle.
\tag{4.33}
$$

In the fully broken zero-form case, the family of lateral boundary conditions is parametrized by $G$; for Abelian higher-form symmetry, $\xi_p$ modulo integral periods supplies the Goldstone gauge-field family.

# Boundary and charge translation

| SymTFT object | Local interpretation |
|---|---|
| Bulk BF fields | Topological carriers of symmetry data, not propagating physical fields |
| Symmetry boundary | Encodes background gauge field and symmetry action |
| Physical boundary | Supplies the dynamical kinetic/EFT data |
| Lateral boundary | Selects asymptotic vacuum behavior |
| Corner interface | Glues symmetry and vacuum boundary conditions |
| Linked defect | Topological implementation of a symmetry action/Ward identity |
| $G/H$ decomposition | Non-linear realization and Goldstone geometry |

This is `T1-boundary`, `T1-symmetry`, and `T3-math`. Defect linking supplies Ward data, but the paper does not construct a Hamiltonian charge, so it is not assigned `T1-charge`. The paper is medium rather than high because it does not directly construct the gravitational or gauge CPS/charge algebra used in the active projects; fully promoting the 86-page framework would also require monograph reconstruction of its fusion, higher-linking, higher-group, and appendix variation chains.

# Verification note

The section tree and the displayed BF, Goldstone, CCWZ, interface, and Ward-identity formulas were checked against the official TeX and rendered PDF. No independent full gauge-variation calculation was completed for the boundary actions, and the character/linking factor was not recomputed in Sage. The following boundaries should be retained:

- the non-flat Dirichlet construction in Section 2 is explicitly a proposal;
- the fusion and higher-linking discussions contain conjectural elements;
- the higher-group examples and Appendix B interface cancellations were not independently reproduced;
- Section 4 assumes that distinct topological lateral interfaces faithfully label distinct physical vacua;
- the v2 listing is the published version, but no earlier local v1 note was tracked, so it is not assigned the tracked-paper code `V-update`.
