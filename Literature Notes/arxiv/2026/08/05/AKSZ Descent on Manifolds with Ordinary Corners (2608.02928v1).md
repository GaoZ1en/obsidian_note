---
paper id: 2608.02928v1
title: AKSZ Descent on Manifolds with Ordinary Corners
authors:
  - Cristian Anghel
publication date: 2026-08-03T22:26
abstract: |-
  The paper develops a facewise AKSZ/BV-BFV descent formalism for manifolds with ordinary corners. Incidence signs, transgression, and boundary restriction are assembled into a total complex; regular coisotropic reduction, BF theory on a square, gluing, and the relation to generalized corners are treated as examples and extensions.
comments: "35 pages"
url: https://arxiv.org/abs/2608.02928v1
summary: "A global face-poset formulation of corner descent that makes codimension-two compatibility and the ordinary-corner sign complex explicit."
tags: []
---

Back to [[2026_08_05_overview]].

This is a long structural paper, so the useful unit is not one formula but a hierarchy:

$$\begin{align}
\text{target Hamiltonian data} \longrightarrow
\text{facewise mapping spaces} \longrightarrow
\text{modified Hamiltonian identities} \longrightarrow
\text{corner square} \longrightarrow
\text{total face complex}.
\end{align}$$

The main achievement is an ordinary-corner bookkeeping system in which the codimension-one BV-BFV defect and its codimension-two compatibility become one cochain identity. The main limitation is equally important: mapping spaces, clean reduction, and gluing are treated under explicit regularity assumptions; the paper does not prove a general infinite-dimensional smoothness theorem or reconstruct gravitational corner targets intrinsically.

## How to Read This Long Paper

Read Sections 2–4 first. They contain the self-contained core: oriented faces, incidence numbers, transgression, the modified Hamiltonian identity, and the total differential. Section 5 is the finite-dimensional Poisson-model test. Sections 6–7 are applications—Palatini–Cartan gravity is imported through earlier reduction results, while four-dimensional BF theory is worked out explicitly. Section 8 states gluing under a clean-composition hypothesis. Sections 9–11 separate proved results, assumptions, and the extension to Joyce generalized corners. The appendices are not dispensable if signs matter: they record the degree dictionary, a local collar check, the transgression proof, and the total-complex calculation.

| Cluster | Source content | Reading purpose |
| --- | --- | --- |
| 1–2 | Motivation; ordinary corners and the face complex | Fix geometric scope and incidence conventions. |
| 3 | Target and transgression data | Establish degrees and Stokes signs. |
| 4 | Facewise AKSZ descent theorem | Derive the Hamiltonian defect, symplectic defect, and corner square. |
| 5 | Shifted cotangent Poisson model | Test regular versus singular coisotropic reduction. |
| 6 | Palatini–Cartan gravity | Show how a known reduced boundary theory fits the facewise package. |
| 7 | Four-dimensional BF theory | Give an explicit face-by-face field-theory realization. |
| 8 | Gluing | Formulate composition by derived/fiber products under clean hypotheses. |
| 9 | Claims and assumptions | State the exact theorem boundary. |
| 10–11 | Generalized corners; conclusion | Explain why ordinary-corner incidence data do not yet cover Joyce corners. |
| App. A–D | Degree/sign dictionary; collar calculation; transgression proof; total complex | Audit the convention-sensitive parts of Sections 3–4. |

## Ordinary Faces and Their Incidence Differential

Let $M$ be an oriented $m$-manifold with ordinary corners. Its codimension-$k$ connected faces form a finite set $\mathcal F_k(M)$. If a codimension-$k+1$ face $G$ lies in the boundary of $F$, the induced orientations determine an incidence number

$$\begin{align}
[F:G]\in\{-1,0,+1\}.
\end{align}$$

The face differential on a facewise family $u=\{u_F\}$ is

$$\begin{align}
(\partial_{\mathrm{face}}u)_G =\sum_{F\supset G}[F:G]\,\iota_{GF}^{*}u_F.
\end{align}$$

The ordinary-corner cancellation is

$$\begin{align}
\sum_{F\supset G\supset H}[F:G][G:H]=0,
\end{align}$$

so $\partial_{\mathrm{face}}^2=0$. Around a square, each vertex is reached through two edges with opposite signed products. This is the global form of “boundary of a boundary is zero.”

The construction requires ordinary embedded faces with compatible collars. It is not merely stratification by codimension: the incidence relation and its orientation signs are part of the input.

## Target Data and the Transgression Tower

The AKSZ target is a graded manifold $\mathcal Y$ with

- an exact graded symplectic form $\omega_{\mathcal Y}=\delta\alpha_{\mathcal Y}$ of degree $r$;
- a cohomological vector field $Q_{\mathcal Y}$;
- a Hamiltonian $\Theta$ satisfying $\iota_{Q_{\mathcal Y}}\omega_{\mathcal Y}=\delta\Theta$ in the source convention.

For each oriented face $F$ of dimension $n$, the face field space is formally

$$\begin{align}
\mathcal F_F=\operatorname{Map}(T[1]F,\mathcal Y).
\end{align}$$

The paper explicitly treats the mapping-space differential forms formally. Smoothness, nondegeneracy, and existence of quotients must be supplied in any analytic application.

Let $D_F$ denote the source de Rham vector field on $T[1]F$, and define the $k$-th transgression by

$$\begin{align}
\mathsf T_F^k(\beta) =\iota_{D_F}^{,k}\mathsf T_F^0(\beta).
\end{align}$$

The central Stokes identity is

$$\begin{align}
\delta\mathsf T_F^k(\beta) -(-1)^n\mathsf T_F^k(d_{\mathcal Y}\beta) =k\sum_{G\subset\partial F}[F:G] \iota_{GF}^{*}\mathsf T_G^{k-1}(\beta), \tag{3}
\end{align}$$

with the paper's conventions for source degree, target degree, and the anticommutation of field-space and source differentials. The coefficient $k$ later forces the factorial normalization in the total transgression.

### Global Degree Dictionary

| Symbol | Role | Degree information |
| --- | --- | --- |
| $r$ | Degree of $\omega_{\mathcal Y}$ | Fixed target datum. |
| $n=\dim F$ | Face dimension | Transgression lowers internal degree by $n$. |
| $\omega_F=\mathsf T_F^0\omega_{\mathcal Y}$ | Face two-form | Degree $r-n$ in unshifted bookkeeping. |
| $\alpha_F=\mathsf T_F^0\alpha_{\mathcal Y}$ | Face primitive | Satisfies $\delta\alpha_F=\omega_F$ up to the chosen signs. |
| $S_F=\mathsf T_F^1\alpha_{\mathcal Y}+\mathsf T_F^0\Theta$ | AKSZ action on $F$ | Source kinetic term plus target interaction. |
| $Q_F=D_F+Q_{\mathcal Y}^{\mathrm{lift}}$ | Face cohomological vector field | Degree $+1$. |
| $[F:G]$ | Oriented incidence coefficient | Geometric sign, independent of ghost degree. |

When translating to the vault's BV-BFV notation, $\omega_F$ is the presymplectic/symplectic form on the field space assigned to a face, $\alpha_G$ is the boundary primitive entering the Hamiltonian defect, and the restriction $\iota_{GF}^{*}$ is the face pullback. These objects should not be conflated with an already reduced physical boundary phase space.

## The Facewise Hamiltonian Defect

The facewise action is

$$\begin{align}
S_F=\mathsf T_F^1(\alpha_{\mathcal Y}) +\mathsf T_F^0(\Theta).
\end{align}$$

Applying the transgression–Stokes formula yields the modified Hamiltonian identity

$$\begin{align}
\iota_{Q_F}\omega_F =(-1)^n\delta S_F +\sum_{G\subset\partial F}[F:G]\,iota_{GF}^{*}\alpha_G. \tag{14}
\end{align}$$

For a closed face the last term vanishes and one recovers an ordinary Hamiltonian $Q$-structure. For a face with boundary, the failure of $Q_F$ to be Hamiltonian is exactly the sum of the primitives on its codimension-one faces.

Applying $\delta$ gives the symplectic defect

$$\begin{align}
\mathcal L_{Q_F}\omega_F =\sum_{G\subset\partial F}[F:G],iota_{GF}^{*}\omega_G, \tag{16}
\end{align}$$

up to the degree sign already fixed in (14). Applying the cohomological operator once more produces the codimension-two corner square

$$\begin{align}
\sum_{F\supset G\supset H}
[F:G][G:H],iota_{HF}^{*}\alpha_H=0. \tag{17}
\end{align}$$

The cancellation is not an extra boundary condition: it is the incidence identity transported through restriction.

This is the paper's most useful CPS/BV-BFV translation. A boundary failure is not discarded; it becomes the input assigned to the next face. At codimension two, consistency means that the two descent paths to a corner agree with opposite incidence signs.

## From the Face Poset to One Total Differential

Let the total space be the direct sum over all faces, shifted by codimension. The paper combines the cohomological differential with the incidence differential as

$$\begin{align}
\mathbb D=Q+(-1)^{\deg_{\mathrm{vert}}}\partial_{\mathrm{face}}. \tag{18}
\end{align}$$

The exponent is chosen so the two mixed compositions cancel. Hence

$$\begin{align}
\mathbb D^2=Q^2 +(-1)^p\bigl(Q\partial_{\mathrm{face}} -\partial_{\mathrm{face}}Q\bigr) +\partial_{\mathrm{face}}^2=0.
\end{align}$$

The normalized total transgression is

$$\begin{align}
\mathbb T(\beta) =\sum_{k\ge0}\frac1{k!}
\sum_{F\in\mathcal F_k(M)} \mathsf T_F^k(\beta). \tag{19}
\end{align}$$

The factorial is not cosmetic. The boundary term in (3) carries a factor $k$, and

$$\begin{align}
\frac{k}{k!}=\frac1{(k-1)!}
\end{align}$$

is exactly what aligns adjacent codimensions. The transgression tower is therefore a cochain map between the target complex and the total face complex.

### Dependency Map for the Main Result

$$\begin{align}
\text{oriented collars}
\Rightarrow [F:G] \Rightarrow \partial_{\mathrm{face}}^2=0,
\end{align}$$

$$\begin{align}
\text{exact target symplectic data}
\Rightarrow \text{Stokes transgression (3)}
\Rightarrow \text{Hamiltonian defect (14)},
\end{align}$$

$$\begin{align}
(14)+\delta
\Rightarrow \text{symplectic defect (16)}
\Rightarrow \text{corner square (17)},
\end{align}$$

$$\begin{align}
\partial_{\mathrm{face}}^2=0 +\text{mixed sign} +k/k!=1/(k-1)!
\Rightarrow \mathbb D^2=0 \text{ and (19) is a cochain map}.
\end{align}$$

## Shifted Cotangent Targets and Poisson Reduction

Section 5 takes

$$\begin{align}
\mathcal Y=T^*[r]N
\end{align}$$

with canonical symplectic form and a bivector $\pi$ on $N$. In local coordinates $(x^i,p_i)$, the Hamiltonian is

$$\begin{align}
S_\pi=\frac12\pi^{ij}(x)p_ip_j.
\end{align}$$

The classical master equation reads

$$\begin{align}
\{S_\pi,S_\pi\} =\frac16[\pi,\pi]^{ijk}p_ip_jp_k.
\end{align}$$

Thus $Q_\pi^2=0$ exactly when $\pi$ is Poisson.

The paper then distinguishes two outcomes of coisotropic reduction:

- **regular case:** the characteristic distribution has constant rank, the quotient is smooth, and the reduced face inherits the expected Poisson/symplectic structure;
- **singular case:** the quotient may be stratified or fail to be a manifold, so the facewise formulas remain formal but do not by themselves produce a smooth reduced phase space.

This distinction matters for corner work. The descent equations survive as algebraic identities before reduction; the physical reduced corner phase space needs independent clean-reduction hypotheses.

## Palatini–Cartan Gravity as an Imported Boundary Graph

The gravity section uses a known affine action of boundary gauge data on Palatini–Cartan variables and a previously established coisotropic reduction. Schematically, the boundary pair consists of a coframe $e$ and connection $\omega$, with affine shifts along degenerate directions. The reduced boundary data form a Poisson graph, and face restriction organizes these graphs across corners.

What is genuinely supplied here is the ordinary-face packaging: incidence signs, restriction maps, and the place of the reduced Poisson graph in the total complex. What is not supplied is an intrinsic AKSZ target whose transgression reconstructs four-dimensional Palatini–Cartan gravity from scratch. Smoothness of the quotient and compatibility of reduction with every face differential are assumed from the cited reduction framework. This section should therefore be used as a translation layer, not as a new derivation of gravitational corner phase space.

## Four-Dimensional BF Theory on a Square

For a quadratic Lie algebra $\mathfrak g$, the target is

$$\begin{align}
T^*[3](\mathfrak g[1]).
\end{align}$$

On a four-manifold $M$, the superfields have classical components

$$\begin{align}
A\in\Omega^1(M,\mathfrak g), \qquad B\in\Omega^2(M,\mathfrak g^*),
\end{align}$$

with

$$\begin{align}
\omega_M=\int_M\langle\delta B,\delta A\rangle, \qquad S_M=\int_M\left\langle B,dA+\frac12[A,A] \right\rangle.
\end{align}$$

The bulk equations are

$$\begin{align}
F_A=dA+\frac12[A,A]=0, \qquad d_AB=0.
\end{align}$$

The variation is written in the paper's bicomplex convention $\delta d=-d\delta$:

$$\begin{align}
\delta S_M =\int_M\bigl( \langle\delta B,F_A\rangle +\langle\delta A,d_AB\rangle \bigr) -\int_{\partial M}\langle B,\delta A\rangle. \tag{28}
\end{align}$$

The last term is the BFV primitive on the boundary. Repeating the same operation on each boundary face produces edge data, and the two routes from a two-face to a corner cancel by incidence.

For the local model

$$\begin{align}
M=\Gamma\times[0,1]^2,
\end{align}$$

the four codimension-one faces inherit alternating outward-normal orientations. Each corner occurs in two boundary faces. The corresponding incidence products are opposite, so all four corner coefficients vanish in the second boundary. This explicit square is the most concrete ordinary-corner benchmark in the paper.

## Gluing and Composition

Suppose $M=M_1\cup_\Sigma M_2$ is obtained by gluing along a common face $\Sigma$ with opposite induced orientations. Face fields are composed by a fiber product over the matching data on $\Sigma$, schematically

$$\begin{align}
\mathcal F_M \simeq \mathcal F_{M_1} \times_{\mathcal F_\Sigma} \mathcal F_{M_2}. \tag{29}
\end{align}$$

The two copies of the BFV primitive cancel because the induced incidence signs are opposite. Associativity follows at the combinatorial level from associativity of restriction and the face differential.

The theorem boundary is essential: the fiber product must be clean or derived in a category where it exists; reduction must commute with restriction; and the relevant forms must descend. Equation (29) is not a general analytic theorem that arbitrary infinite-dimensional gauge quotients glue smoothly.

## Ordinary Versus Generalized Corners

Joyce generalized corners allow local models based on toric monoids rather than $[0,\infty)^k$. Their strata need not be controlled by the Boolean face lattice of an ordinary corner. The paper explains that the present incidence complex is therefore insufficient without additional monoid and multiplicity data. The proposed extension is programmatic: replace the ordinary face poset by the correct generalized-corner combinatorics and rebuild the transgression complex. No complete generalized-corner AKSZ theorem is proved here.

## Relation to Local Corner and CPS Conventions

The most direct dictionary for current work is:

| Facewise AKSZ statement | CPS/corner interpretation |
| --- | --- |
| $\iota_Q\omega=(-1)^n\delta S+\sum\alpha_{\partial}$ | The bulk cohomological vector field is Hamiltonian only up to the boundary symplectic potential. |
| $\mathcal L_Q\omega=\sum\omega_{\partial}$ | Symplectic non-invariance is the next-face symplectic structure. |
| Corner square | Compatibility of the two induced edge/corner descent routes. |
| Total differential $\mathbb D$ | BRST/BV differential plus oriented face descent. |
| Clean coisotropic reduction | Extra hypothesis needed before calling the quotient a physical boundary/corner phase space. |
| Gluing fiber product | Composition of regions after matching boundary data; derived if transversality fails. |

The paper is complementary to the recent note on the reduced Dirac structure of GR on manifolds with corners. It supplies a global ordinary-face complex and a transparent BF square. It does not repair or supersede the type/sign questions recorded for the gravity-specific reduction, because its Palatini–Cartan section imports that reduction rather than deriving it.

## Concrete Extensions for the Current Projects

1. Apply the face-complex signs to the current finite-region CPS setup and check whether the two corner pullbacks of the presymplectic potential cancel before imposing asymptotics.
2. Instantiate $\mathbb D$ for the simplest BF/BV-BFV model already used in the vault, keeping ghost number and codimension shifts explicit.
3. Separate three statements in the gravitational application: algebraic descent before reduction, clean reduction of each face, and commutation of reduction with face restriction.
4. Test gluing on two rectangles first. A successful finite-dimensional or linear BF benchmark would justify moving to Palatini–Cartan variables.
5. Treat generalized corners as an open extension; do not import the ordinary Boolean incidence complex without the missing monoid multiplicities.

## Verification Log

### Checked

- **Sage:** for the square face poset, every vertex received two length-two incidence paths with coefficients summing to zero. This independently reproduced $\partial_{\mathrm{face}}^2=0$ in the paper's model ordinary corner.
- **Sage:** for dimensions $0$ through $6$, the two mixed coefficients in $\mathbb D^2$ reduced to $(-1)^m+(-1)^{m-1}=0$, while the horizontal square vanished by the incidence calculation.
- **Sage:** the transgression normalization was checked for $k=1,\ldots,8$: $k/k!=1/(k-1)!$, exactly matching adjacent codimensions in (19).
- **Sage:** a non-Poisson polynomial bivector was used to compute the canonical shifted-cotangent bracket. The coefficient of $p_1p_2p_3$ in $\{S_\pi,S_\pi\}$ agreed exactly with the Einstein-summed $\frac16[\pi,\pi]^{ijk}p_ip_jp_k$.
- **Sage:** the Chevalley–Eilenberg differential for an $\mathfrak{su}(2)$-type structure was implemented in an exterior algebra; its square vanished on all three generators, independently checking the Jacobi mechanism behind the BF target's cohomological vector field.
- **Rendered PDF inspection:** the shifted-cotangent formulas, the BF face data, the square-corner cancellation, and the total-transgression formulas were visually checked on the relevant rendered pages because extracted text alone did not preserve every sign and diagram.

### Blocked

- The mapping spaces are used formally in the source. This run did not supply Sobolev completions or prove that the transgressed two-forms are nondegenerate on completed spaces.
- The general clean coisotropic quotient and the claim that reduction commutes with every face restriction were not independently proved; the source states them as hypotheses where needed.
- The Palatini–Cartan affine reduction and Poisson graph were not regenerated from the gravitational action. They remain imported from the cited construction.
- The full graded sign in every component of (14), (16), and (28) depends on the source's total-degree convention. The incidence, factorial, canonical-bracket, and local BF/CE mechanisms were checked, but the entire mapping-space sign theorem was not re-derived in a proof assistant.
- The gluing fiber product (29) was not analytically constructed for an infinite-dimensional gauge quotient.
- The generalized-corner extension is only proposed by the source, so there is no complete theorem to verify.

### Failed

- No displayed formula failed the completed independent checks.
