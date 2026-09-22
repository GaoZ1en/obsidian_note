---
paper id: 2604.05262v3
title: "Residual Symmetries and Their Algebras in the Kerr-Schild Double Copy"
authors:
  - "Holton, B. P."
publication date: 2026-04-06
abstract: |-
  The Kerr-Schild double copy (KSDC) is well-known for relating exact classical solutions between Yang-Mills theory and theories of gravity. However, whether this correspondence provides a more fundamental mapping between the underlying symmetries of gauge theory and gravity remains an underdeveloped area of research in the contemporary double copy program. In this paper, we demonstrate that the KSDC correspondence does not provide a mapping between the residual symmetry structures of the Kerr-Schild ansatz in Yang-Mills theory and gravity. On the gauge theory side, residual symmetries form an infinite-dimensional algebra of functions along null directions. On the gravitational side, residual diffeomorphisms preserving the Kerr-Schild form of the Schwarzschild metric generate a conformal algebra on $S^2$, which decomposes into Killing vectors and proper conformal Killing vectors (CKVs). While the Killing sector reproduces the expected global isometries, the CKV sector yields an infinite-dimensional algebra after imposing asymptotic flatness and horizon regularity. This appears to contradict the fact that the Schwarzschild solution admits no proper conformal symmetries. We resolve this apparent contradiction by constructing a Weyl-compensated BRST complex, showing that the CKV sector is BRST-exact and therefore trivial in cohomology, so that the physical symmetry algebra reduces to the global isometries of Schwarzschild. This demonstrates that the KSDC introduces an enlarged symmetry structure at the level of the ansatz, but preserves physical symmetries after a cohomological reduction, revealing a fundamental mismatch between Yang-Mills and gravity at the level of residual symmetries.
comments: "Minor typos fixed and corrections made to Eq. 3.49, 3.72, and 3.73 to reflect JHEP version"
url: https://arxiv.org/abs/2604.05262v3
summary: "Separates valid Yang–Mills ansatz residuals from failed gravitational preservation, closure and BRST-cohomology claims using explicit counterexamples."
tags: []
---

# Verdict: the gravitational enlargement and BRST reduction fail their defining tests

The Yang–Mills residual parameter calculation is reusable under its fixed-null-one-form ansatz. The claimed infinite gravitational residual sector, its closure and its BRST removal are **incorrect as stated**: a supplied generator fails the original Kerr–Schild preservation equation, the proposed family is not closed, and the reported Chevalley–Eilenberg cohomology is not the Lie algebra itself. These are explicit failures, not merely an absence of independent confirmation.

Source: [2604.05262v3](https://arxiv.org/abs/2604.05262v3), B. P. Holton, 29 PDF pages (printed pp.1–28 plus cover). Full source/text inspected; physical PDF p.12 visually confirms the crucial sign in (3.29). This previously untracked replacement is a new detailed note, not an edit to an older note. Context: [[2026_09_22_overview]].

# Full section tree and how to read

- §1 Introduction, printed pp.1–3: solution-level double copy versus residual transformations.
- §2 Yang–Mills, pp.3–5; 2.1 fixed-$k$ preservation; 2.2 current algebra.
- §3 Gravity, pp.5–19; 3.1 preservation PDEs; 3.2 sphere CKVs; 3.3 Killing sector; 3.4 proper angular CKVs, with 3.4.1 temporal angular dependence and 3.4.2 radial transport; 3.5 asymptotic flatness; 3.6 horizon regularity; 3.7 bracket; 3.8 closure and claimed semidirect product.
- §4 BRST, pp.19–24; 4.1 Killing CE complex; 4.2 Weyl compensator; 4.3 unified complex; 4.4 interpretation; 4.5 summary.
- §5 Discussion, pp.24–26; references pp.26–28. No appendices.

**How to read this long paper:** read §2 independently. For gravity, compare (3.4), Table 3 and (3.29) before using the characteristic solution. Sections 3.5–3.8 cannot repair a vector that fails (3.4). Read §4 as a proposed algebraic construction whose input algebra and representation must first be established. The failures below stop reliance on that construction; §5's physical conclusion does not follow.

# Fixed ansatz, profile variation and gauge parameters

The convention is mostly plus, spherical Minkowski coordinates $(t,r,\vartheta,\varphi)$,
$$
\eta_{\mu\nu}=\operatorname{diag}(-1,1,r^2,r^2\sin^2\vartheta),\qquad
k_\mu=(-1,1,0,0),\quad k^\mu=(1,1,0,0),\quad u=t-r.
$$
In Yang–Mills, $A^a_\mu=\Phi^a(x)k_\mu$ and $\delta A^a_\mu=\partial_\mu\Lambda^a+gf^{abc}\Phi^bk_\mu\Lambda^c$. Requiring the change to remain proportional to the fixed $k_\mu$ gives both
$$
(\partial_t+\partial_r)\Lambda^a=0,\qquad\partial_A\Lambda^a=0,
$$
so $\Lambda^a=f^a(u)$ and
$$
\delta_f\Phi=-f'(u)+g[\Phi,f],\qquad
[f,h]_{\rm res}=g[f(u),h(u)].
$$
The angular equations are necessary: null contraction alone would allow angular dependence. The transformation is affine in $\Phi$, not a homogeneous linear operation on profiles. The parameter restriction does not force the original profile itself to depend only on $u$; a Coulomb profile can still depend on $r$. With standard fixed-parameter variation conventions, Jacobi gives $[\delta_f,\delta_h]\Phi=\delta_{g[f,h]}\Phi$.

This is a current algebra of parameters along null characteristics. It is not yet an algebra of nonzero physical charges. Proper gauge versus boundary symmetry requires boundary conditions, allowed source sectors and a symplectic generator. In an Abelian sector constant parameters may act trivially on the potential, so an isomorphism from parameters to faithful transformations also needs its kernel handled.

# Gravity: the original preservation equation is the test

For $m=GM\ne0$,
$$
g_{\mu\nu}=\eta_{\mu\nu}+\phi k_\mu k_\nu,\quad\phi=2m/r,
\qquad\mathcal L_\xi g_{\mu\nu}=\alpha(x)k_\mu k_\nu.\tag{3.4}
$$
Both the background and null one-form are fixed in this condition; it is a restriction on the tangent to the metric ansatz, not arbitrary coordinate covariance of all its ingredients. Defining $\zeta=\alpha-\xi^\rho\partial_\rho\phi$ leaves the background Lie derivative plus $\phi$ times derivatives of $\xi$. The resulting equations are linear in $\xi$ for a fixed background, despite the source calling them nonlinear in §3.1.

The angular block is
$$
D_A\xi_B+D_B\xi_A=-{2\xi^r\over r}\gamma_{AB},
$$
with angular indices lowered by the unit sphere metric. Global smooth sphere CKVs split into three rotations $R_i$ and three gradient CKVs $K_i=D n_i$, where $n_i$ are Cartesian embedding coordinates. Their coefficients may initially depend on $t,r$. The angular equation then fixes the radial component; it cannot subsequently be chosen independently.

The rotation branch has $\xi^r=0$, constant time component and constant rotational coefficients. These supply $\mathbb R\oplus\mathfrak{so}(3)$ isometries; direct Lie derivatives of time translation and the axial rotation vanish. Exhaustiveness of the full residual problem is a different question.

# The proper angular CKV branch: source chain and first failure

The source writes $\xi^A=b_i(t,r)K_i^A$ and
$\xi^r=-r\partial_\vartheta\xi^\vartheta=-r\,b\cdot n$ in (3.29). But $K_3^\vartheta=-\sin\vartheta$, so $\partial_\vartheta(b_3K_3^\vartheta)=-b_3\cos\vartheta$ and the first equality actually gives **$+rb_3\cos\vartheta$**. The last sign is wrong.

There is an independent omission in Table 3. The full mixed equations from (3.4) include
$$
(\mathcal L_\xi g)_{tA}=r^2\gamma_{AB}\partial_t\xi^B-(1-\phi)\partial_A\xi^t-\phi\partial_A\xi^r,
$$
$$
(\mathcal L_\xi g)_{rA}=r^2\gamma_{AB}\partial_r\xi^B-\phi\partial_A\xi^t+(1+\phi)\partial_A\xi^r.
$$
The source drops the $\partial_A\xi^r$ terms and has the opposite temporal-gradient sign in its radial mixed equation. Those terms vanish in part of the Killing branch but not in the claimed dipole branch.

Using that incomplete system, §3.4 introduces $\chi=t+2m\log(r-2m)$ and $F(r)=r^3/(r-2m)$, obtains $\xi^t=F[Q(\chi)+P(\chi)\cdot n]+S(t,r)$, and integrates a transport equation for $rb$ along $u=t-r$. Sections 3.5–3.6 then set $P=Q=0$ and claim the remaining family
$$
\eta^\mu=(S(u),-B(u)\cdot n,\,r^{-1}B_i(u)K_i^A).\tag{3.60}
$$
The exclusions also require actual function-space/falloff hypotheses: arbitrary $P(\chi)$ or $Q(\chi)$ may decay, so growth of the prefactor alone does not prove that each function vanishes identically. Bounded coordinate components are not by themselves a definition of an asymptotic symmetry. These issues are secondary to the already failed PDE.

## Checked counterexamples to preservation and closure

Choose $S=0$, $B=(0,0,1)$. The printed generator is
$$
\eta_B=(0,-\cos\vartheta,-\sin\vartheta/r,0).
$$
Mathematica evaluates
$$
(\mathcal L_{\eta_B}g)_{\vartheta\vartheta}=-4r\cos\vartheta,\qquad
(\mathcal L_{\eta_B}g)_{r\vartheta}={2(m+r)\over r}\sin\vartheta.
$$
Both must vanish for a tensor proportional to $k_\mu k_\nu$. The failure is already present in the flat part and holds away from coordinate poles. It is not a horizon-limit artifact.

Choose instead $B=0$, $S(u)=u$. Its $t,r$ Lie-derivative block is
$$
\begin{pmatrix}-2+4m/r&1-4m/r\\1-4m/r&4m/r\end{pmatrix},
$$
which is not proportional to $\begin{pmatrix}1&-1\\-1&1\end{pmatrix}$. Thus arbitrary surviving $S(u)$ is also not a residual solution.

Even as an abstract family of vector fields, (3.60) is not closed: $[\eta_B,u\partial_t]=\cos\vartheta\,\partial_t$, whose time coefficient has angular dependence and cannot be an $S(u)$. The source's own (3.61)/(3.65) introduces $\Sigma=S+B\cdot n$, then incorrectly relabels angle-dependent output as functions only of $u$. The claimed semidirect product and its use in §4 therefore lack a valid input algebra.

# Why a sphere CKV is not a spacetime Weyl symmetry

Section 4 replaces the ansatz condition with $\mathcal L_\Xi g=\Omega g$. These are different equations. In fact, if both held for the same vector and null $k$, tracing with the full inverse metric gives
$$
0=\alpha k^2=4\Omega,
$$
so $\Omega=0$. Therefore a genuine KS-preserving vector under (3.4) cannot at the same time be a proper spacetime CKV of that metric. A proper **angular** CKV may participate in a larger spacetime transformation, but this does not imply a Weyl variation of the full spacetime metric. xAct independently gives the trace $\alpha k^2-4\Omega$, confirming this incompatibility.

Lie derivatives already furnish a representation of the vector-field Lie algebra on all tensor fields, whether or not a chosen background is invariant. Non-invariance of a background does not itself obstruct the standard diffeomorphism BRST construction. If the allowed field space is an ansatz subspace, its tangency and closure must instead be checked there.

# BRST claims and the actual CE test

For the isometry algebra, the source takes $Q_Kc^a=-f^a{}_{bc}c^bc^c/2$ and $Q_K\Psi=c^a\mathcal L_{K_a}\Psi$. Restricting specifically to invariant background data makes the coefficient action trivial. Arbitrary dynamical fields or perturbations do not automatically have trivial action.

The proposed Weyl sector adds a compensator with $Q_W\Phi=\Omega(c)$, sets $Q_Wg=\mathcal L_{\Xi_c}g-\Omega(c)g=0$ and then declares $Q_Wc=0$. This does not justify replacing a non-Abelian parameter bracket by an Abelian one merely because some fields are invariant. A trivial representation still has the original ghost CE differential. Mixed brackets also require mixed ghost terms before one can assert $(Q_K+Q_W)^2=0$.

A contractible pair $(\Phi,\Omega)$ removes only that pair under the usual independent-coordinate and regularity hypotheses. To remove every $c(u)$ one would need to show the map from ghosts to $\Omega(c)$ is injective/suitably split and construct the contracting homotopy on the specified complex. Ghosts in its kernel are not removed by declaring $Q_Wc=0$. No action-derived Weyl gauge invariance or BV extension establishing physical equivalence is supplied.

Finally, the explicit claim $H(Q_K)\cong\mathfrak{so}(3)\oplus\mathbb R$ with trivial coefficients is false. Sage constructs the CE differential with $dc_1=-c_2c_3$, cyclically, and $dc_0=0$. Differential ranks in degrees $0,1,2,3$ are $(0,3,3,0)$; the cohomology dimensions are
$$
(\dim H^0,\ldots,\dim H^4)=(1,1,0,1,1).
$$
In particular $H^1$ contains the abelian time-translation dual class, not the four-dimensional isometry Lie algebra. The full cohomology is a graded algebra, with degree-three rotational volume class and its product with the degree-one class. Calling its total dimension four does not identify it with a Lie algebra of four generators.

# Verification boundary and reusable content

**Source-derived:** complete §§1–5, including the proposed characteristic solution and BRST chain, retained to locate the exact dependency failures.

**Checked:** the fixed-$k$ Yang–Mills parameter restriction and affine bracket; Mathematica verifies the bracket for a non-Abelian $\mathfrak{su}(2)$ polynomial-parameter test with zero residual. Direct metric Lie derivatives reproduce the two failed gravitational generators and the nonclosed bracket. Time translation/axial rotation pass their isometry test. xAct verifies the null-rank-one versus Weyl trace incompatibility. Sage computes the finite CE differential and cohomology dimensions above.

**Failed:** (3.29)'s radial sign; mixed PDE omissions; the general residual family (3.60); closure (3.66)–(3.74); substitution of a sphere CKV by a spacetime Weyl symmetry; cohomology identification (4.20). The proposed “physical symmetry preservation after cohomological reduction” cannot be relied on.

**Blocked:** no source/PDF retrieval blocker. Repair requires solving the correct residual PDEs and specifying an action-derived gauge/BRST complex; the printed algebra cannot serve as that input.

**Not independently verified:** a replacement exhaustive gravitational classification, global horizon/asymptotic function spaces, non-Abelian boundary charges, or any symmetry-level double-copy isomorphism. No older version or companion paper was decomposed in this run.

**Verified:** the limited Yang–Mills ansatz calculation, selected genuine isometries, and explicit counterexamples to the central gravitational claims. **Assumptions:** fixed flat background and fixed $k$, Schwarzschild $m\ne0$, smooth local fields away from spherical coordinate singularities, trivial coefficients only for the CE test. **Not verified:** physical gauge equivalence after adding a compensator.

For the vault, this is primarily a negative reference: a solution ansatz, a spacetime isometry, an angular conformal transformation and an action-generated gauge redundancy are four different objects. A cohomological quotient can only be used after its symmetry action and complex have actually been defined.
