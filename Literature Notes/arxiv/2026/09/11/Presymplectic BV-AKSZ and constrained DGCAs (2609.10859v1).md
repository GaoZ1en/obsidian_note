---
paper id: 2609.10859v1
title: Presymplectic BV-AKSZ and constrained DGCAs
authors:
  - Maxim Grigoriev
  - Alexander Mamekin
  - Dmitry Rudinsky
publication date: 2026-09-09T21:52
abstract: |-
  The paper formulates a common algebraic AKSZ framework in which source and target graded-commutative algebras may carry relations and the induced two-form may be degenerate or nonregular. It derives presymplectic and Costello formulations of Chalmers--Siegel theory from a constrained-BF intermediate system, proves a master-equation proposition on the space of supersections, and constructs source DGCAs for self-dual higher-spin Yang--Mills, abelian higher forms, and first-order Yang--Mills.
comments: "37 pages"
url: https://arxiv.org/abs/2609.10859v1
summary: "A useful algebraic unification of constrained-source and degenerate-target AKSZ systems, with a local regularity scope and one explicit alpha-sign inconsistency in the Chalmers--Siegel comparison."
tags: []
---

Return to [[2026_09_11_overview|the 11 September 2026 arXiv overview]].

# Verdict

Correct under the following precise conditions: the pair of graded algebras is admissible in the paper's restricted sense; prolonged ideals or kernel distributions are quasi-regular when a genuine space of supersections is invoked; the induced presymplectic kernel is regular when passing to an ordinary BV quotient; global geometry and functional-analytic completion are suppressed; and spacetime boundary terms vanish. Under these conditions, the algebraic data induce the stated presymplectic BV equations, and the constrained-BF mechanism explains locally how target relations can be traded for a constrained source algebra.

Incorrect as written at one identifiable point. Equation (3.10) defines Costello's differential as

$$
\delta=d_X-\alpha\partial_\xi,
$$

but the final paragraph of section 3.5 uses $d_X+\alpha\partial_\xi$ while claiming to recover the same Costello formulation. With the paper's evaluation convention and Chalmers--Siegel term $Q(C)\supset+\alpha G^+\theta_+$, the minus sign in equation (3.10) is the consistent one. The later plus sign produces the opposite $\alpha G^+$ component. This appears to be a local typographical sign error rather than a failure of the $\alpha=0$ self-dual construction.

The main statement should therefore be rewritten as:

> Algebraic AKSZ unifies the displayed presymplectic and Costello-type models locally, after imposing the stated admissibility and regularity hypotheses and correcting the sign in the last source-differential formula of section 3.5 to $d_X-\alpha\partial_\xi$.

# Source map

1. **Introduction.** Contrasts finite-target AKSZ for topological theories with two non-topological extensions: presymplectic targets and Costello's constrained source DGCA.
2. **Preliminaries.** Reviews presymplectic BV-AKSZ and Chalmers--Siegel theory; defines algebraic spaces of supersections for free algebras, invariant subalgebras, and quotients; proves the prolongation and constraint/base-change propositions.
3. **Algebraic presymplectic BV-AKSZ systems.** Gives the general data and induced master equations, embeds ordinary presymplectic AKSZ, reviews Costello's YM algebra, constructs constrained BF, and relates the three formulations.
4. **Further examples.** Develops square-zero source-algebra extensions, higher-spin SDYM, abelian higher forms, and first-order YM.
5. **Appendix A.** Fixes Hodge-star and signature conventions.
6. **Appendix B.** Defines algebraic differential forms and the relevant Cartan calculus.
7. **Appendix C.** Proves that the algebraic AKSZ identities induce the presymplectic BV master equations on supersections.

# Presymplectic BV-AKSZ data

The geometric starting point is a bundle

$$
E\longrightarrow T[1]X
$$

with degree-one vector field $Q$, a degree-$(n-1)$ presymplectic form $\omega=d\chi$, and degree-$n$ Hamiltonian $\mathcal L$. They satisfy

$$
i_Q\omega+d\mathcal L\in\mathcal I_{T[1]X},
\qquad
\frac12i_Qi_Q\omega+Q\mathcal L=0.
$$

On the space of supersections,

$$
\bar\omega=\int_{T[1]X}\operatorname{ev}^*\omega,
$$

$$
S_{\mathrm{BV}}
=\int_{T[1]X}
\left[\operatorname{ev}^*(\chi)(d_X)
+\operatorname{ev}^*(\mathcal L)\right].
$$

The prolonged degree-one derivation $s$ obeys

$$
s\circ\operatorname{ev}^*
=\operatorname{ev}^*\circ Q-d_X\circ\operatorname{ev}^*.
$$

The result is presymplectic rather than automatically BV:

$$
i_s\bar\omega+dS_{\mathrm{BV}}=0,
\qquad
i_si_s\bar\omega=0,
\qquad
s^2\in\ker\bar\omega.
$$

Only when the kernel is regular can one form a local symplectic quotient on which $s^2=0$ and recover an ordinary BV system.

# Chalmers--Siegel benchmark

For a real reductive Lie algebra $\mathfrak g$ on Euclidean $\mathbb R^4$,

$$
S[A,G^+]
=\int_X\left(
\langle G^+,F_A\rangle_{\mathfrak g}
-\frac\alpha2\langle G^+,G^+\rangle_{\mathfrak g}
\right),
$$

$$
F_A=dA+A\wedge A.
$$

The equations are

$$
F_A^+-\alpha G^+=0,
\qquad
d_AG^+=0.
$$

For $\alpha\neq0$, exact auxiliary-field elimination gives

$$
S[A]
=\frac{1}{2\alpha}\int_X\langle F_A^+,F_A^+\rangle
=\frac{1}{4\alpha}\int_X
\left(\langle F_A,*F_A\rangle+\langle F_A,F_A\rangle\right).
$$

Mathematica independently verifies the quadratic elimination. For $\alpha=0$, the theory is self-dual YM rather than ordinary YM.

The compact presymplectic target has coordinates $C$ and $G^+_{\mu\nu}$ with

$$
Q_{\mathrm{ChS}}C
=-\frac12[C,C]+\alpha G^+_{\mu\nu}\theta_+^{\mu\nu},
$$

$$
Q_{\mathrm{ChS}}G^+_{\mu\nu}=[G^+_{\mu\nu},C],
$$

and

$$
\chi_{\mathrm{ChS}}
=\langle\theta_+^{\mu\nu}G^+_{\mu\nu},dC\rangle.
$$

# Algebraic supersections and admissibility

Let $\mathcal A\subset\mathcal C$ be graded-commutative algebras with

$$
\mathcal C=\mathcal A\otimes\mathcal O(M)
$$

free of finite rank over $\mathcal A$ in the initial construction. The algebraic space $\Gamma_{\mathcal A}(\mathcal C)$ is defined by the coefficients of the evaluation map. For a derivation $D$ that preserves $\mathcal A$, its prolongation $\bar D$ is uniquely fixed by

$$
(1\otimes\bar D)\operatorname{ev}^*
=\operatorname{ev}^*D-(\delta\otimes1)\operatorname{ev}^*,
\qquad
\delta=D|_{\mathcal A}.
$$

The paper proves

$$
\overline{[D_1,D_2]}=[\bar D_1,\bar D_2].
$$

It then allows two constrained cases:

- invariants of an involutive, quasi-regular vertical distribution;
- quotients by an ideal whose prolonged ideal cuts out a regular submanifold.

This is not a construction for every non-freely generated DGCA. “Admissible” means precisely one of these controlled presentations.

# Moving constraints from target to source

The key finite-algebra proposition starts from

$$
\mathcal C=\mathcal A\otimes\mathbb R[v^1,\ldots,v^q]
$$

and an ideal generated by $h^i\otimes v^A$. Define the annihilator

$$
\mathcal B
=\{a\in\mathcal A:ah^i=0\text{ for all }i\}.
$$

Then

$$
\Gamma_{\mathcal A}(\mathcal C/\mathcal I)
\simeq
\Gamma_{\mathcal B}
(\mathcal B\otimes\mathbb R[v^1,\ldots,v^q]).
$$

The proof uses a vector-space complement $\mathcal A=\mathcal B\oplus\mathcal F$ and the injectivity of multiplication

$$
\mathcal F\longrightarrow\bigoplus_i\mathcal A,
\qquad
f\longmapsto(h^1f,\ldots,h^rf).
$$

Sage verifies a nontrivial finite toy instance with $\mathcal A=\mathbb Q[\epsilon]/(\epsilon^2)$ and $h=\epsilon$: the total-space constraint removes the coefficient along $1$ and leaves exactly the coefficient along $\operatorname{Ann}(\epsilon)=\langle\epsilon\rangle$.

The field-theory extension from finite algebras to finite-rank $C^\infty(X)$-modules is argued fiberwise. Global rank jumps or singular distributions remain outside the proof.

# Algebraic AKSZ definition and master equation

An algebraic presymplectic AKSZ system consists of

$$
(\mathcal C,Q,\mathcal A,\operatorname{Tr},\chi,\mathcal L),
$$

where $\mathcal A\subset\mathcal C$ is admissible and $Q$ preserves $\mathcal A$. The trace has degree $-n$ and satisfies

$$
\operatorname{Tr}\circ\delta=0,
\qquad
\operatorname{Im}\delta^2
\subset\ker\langle\cdot,\cdot\rangle_{\operatorname{Tr}},
\qquad
\delta=Q|_{\mathcal A}.
$$

The same two presymplectic identities hold modulo the ideal generated by one-forms on $\mathcal A$. Using the base/field form-degree projections $\Pi_{p,q}$, the induced data are

$$
S_{\mathrm{BV}}
=\operatorname{Tr}\left[
i_{\delta\otimes1}\Pi_{1,0}(\operatorname{ev}^*\chi)
+\operatorname{ev}^*\mathcal L
\right],
$$

$$
\bar\omega
=\operatorname{Tr}\left[
\Pi_{0,2}(\operatorname{ev}^*\omega)
\right].
$$

Appendix C proves

$$
i_s\bar\omega+dS_{\mathrm{BV}}=0,
\qquad
i_si_s\bar\omega=0,
$$

and then

$$
s^2\in\ker\bar\omega,
\qquad
K(S_{\mathrm{BV}})=0
\quad(K\in\ker\bar\omega).
$$

The proof is internally coherent under the trace and boundary assumptions. It establishes a local BV quotient only when $\bar\omega$ is regular.

# Constrained BF and the three-way equivalence

Four-dimensional BF uses target generators $C^a$ and $B^a$ with

$$
Q_{\mathrm{BF}}C=-\frac12[C,C]+\alpha B,
\qquad
Q_{\mathrm{BF}}B=[B,C],
$$

$$
\chi_{\mathrm{BF}}=\langle B,dC\rangle,
\qquad
\mathcal L_{\mathrm{BF}}
=-\frac\alpha2\langle B,B\rangle
+\frac12\langle B,[C,C]\rangle.
$$

The $Q$-invariant ideal

$$
\mathcal I_-=\langle\theta_-^{\mu\nu}B^a\rangle
$$

removes the scalar, one-form, and anti-self-dual two-form components of the superfield $B$. The quotient gives the constrained-BF version of Chalmers--Siegel.

The map

$$
\Upsilon^*(C)=C,
\qquad
\Upsilon^*(B)=\theta_+^{\mu\nu}G^+_{\mu\nu}
$$

intertwines $Q$, $\chi$, and $\mathcal L$. Under the regularity assumption, the corresponding symplectic quotients of supersections are locally identical. The constraint/base-change proposition then moves the $B$ relation into an extended source algebra with degree-$(-1)$ generator $\xi$, and quotienting the trace kernel gives Costello's DGA.

# The alpha-sign inconsistency

Section 3.3 defines

$$
\delta=d_X-\alpha\partial_\xi.
$$

With

$$
\operatorname{ev}^*(c)
=c+\theta^\mu A_\mu
+\xi\theta_+^{\mu\nu}G^+_{\mu\nu}
+\text{antifields},
$$

the prolongation equation contains $-\delta\operatorname{ev}^*(c)$, so the degree-one field component receives

$$
-(-\alpha\partial_\xi)
(\xi\theta_+G^+)
=+\alpha\theta_+G^+,
$$

matching $Q_{\mathrm{ChS}}C$. The plus sign printed in the last paragraph of section 3.5 instead gives $-\alpha\theta_+G^+$.

Mathematica verifies the two component calculations exactly: the equation-(3.10) convention has zero residual, while the later plus convention differs from the Chalmers--Siegel term by

$$
-2\alpha\theta_+G^+.
$$

The equivalence at $\alpha=0$ is unaffected. At nonzero $\alpha$, the later occurrence should be corrected before using that displayed total differential.

# Further source DGCAs

## Square-zero extension

For a graded algebra $\mathcal P$ and module $\mathcal R$, the square-zero extension is

$$
(a_1,r_1)(a_2,r_2)
=\left(a_1a_2,
a_1r_2+(-1)^{|a_2||r_1|}a_2r_1\right),
\qquad
\mathcal R^2=0.
$$

An annihilator module $\mathcal R_\mathcal I$ over $\mathcal P/\mathcal I$, a trace $\lambda:\mathcal R\to\mathbb R$, and a compatible degree-one map $\zeta:\mathcal R\to\mathcal P$ supply a family of constrained source DGCAs with differential $D+\alpha\zeta$.

## Higher-spin SDYM

In split signature $(2,2)$, the source uses polynomial auxiliary spinors $y^A$ and the ideal

$$
\mathcal I
=\langle\bar H^{A'B'},\theta^{AA'}y_A\rangle.
$$

The annihilator module produces the field/antifield spectrum of the Krasnov--Skvortsov--Tran higher-spin self-dual Yang--Mills theory. The Chern--Simons-like AKSZ action is concise, but the claim is classical/BV and local; quantization and global functional spaces are not developed.

## Abelian higher forms

For $n=2r$, the paper assumes split signature $(r,r)$ and even $r$, so real middle-degree self-duality and the required wedge pairing hold. It obtains

$$
S[A_{r-1},G_r^+]
=\int_X\left(G_r^+\wedge dA_{r-1}
+\frac\alpha2G_r^+\wedge G_r^+\right).
$$

At $\alpha=0$ this is the self-dual theory.

## First-order Yang--Mills

In four-dimensional Euclidean signature,

$$
S[A,G]
=\int_X\left(
\langle G,F_A\rangle
+\frac\alpha2\langle G,*G\rangle
\right).
$$

For $\alpha\neq0$,

$$
G=-\frac1\alpha*F_A
$$

and substitution gives

$$
S[A]
=-\frac1{2\alpha}\int_X\langle F_A,*F_A\rangle.
$$

Mathematica verifies this auxiliary elimination mode by mode using $*^2=1$.

# Relation to the gluing programme

The paper is high-value for the algebraic side of constrained gauge systems, especially because it distinguishes three operations that should not be conflated:

$$
\text{degenerate presymplectic form}
\longrightarrow
\text{kernel invariants or quotient}
\longrightarrow
\text{constrained DGCA presentation}.
$$

It is not itself a regional sewing result. The derivation assumes compact $X$ or otherwise discards spacetime boundary terms, while the vault's central problem is precisely how boundary/corner data alter the symplectic and Peierls structures. Nor does a local algebra isomorphism of BV quotients establish equality of regional observable algebras, quantum representations, or gluing maps across a physical interface.

The safe reuse is as a finite algebraic model for constrained BV data. Any application to a cut region must restore boundary terms, specify the presymplectic kernel and regularity on that region, and compare the resulting regional and global brackets explicitly.

# Verification record

- **Source-derived:** Definitions, propositions, proofs, Chalmers--Siegel/Costello/constrained-BF maps, master-equation argument, and the three further example families were read from the official v1 source.
- **Checked:** Mathematica verifies both auxiliary-field eliminations and the Costello differential sign. Sage verifies a finite nontrivial instance of the proposition that replaces a total-space constraint by the annihilator source algebra.
- **Visually confirmed:** Rendered PDF page 16 gives $\delta=d_X-\alpha\partial_\xi$; page 20 prints the inconsistent $d_X+\alpha\partial_\xi$; page 14 gives the algebraic AKSZ data and trace conditions; page 28 gives the first-order YM elimination.
- **Assumptions:** Graded-commutative algebras over $\mathbb R$; the paper's admissible presentations; compact support for trace integrations; quasi-regular prolonged constraints; regular presymplectic quotient when ordinary BV is claimed; ignored spacetime boundary terms; Euclidean four-space for Chalmers--Siegel/YM; split signature and stated parity condition for higher-form self-duality.
- **Failed:** The literal plus-$\alpha\partial_\xi$ formula in the last paragraph of section 3.5 does not reproduce the preceding Costello/Chalmers--Siegel sign convention at $\alpha\neq0$.
- **Not independently verified:** Global equivalence of the quotient spaces; behavior at rank-changing or singular constraints; functional-analytic completion of supersection spaces; quantum master equation, measure, anomalies, renormalization, or boundary BV-BFV structure; higher-spin interaction claims beyond matching the displayed field spectrum and action.

# What to reuse

- Reuse the admissible-pair and annihilator-source construction as a controlled algebraic tool.
- Correct the section-3.5 Costello differential sign before copying the nonzero-$\alpha$ equivalence.
- Keep regularity and global-geometry hypotheses attached whenever replacing a presymplectic system by its symplectic quotient.
- Do not infer physical regional gluing from the algebraic AKSZ identification until boundary terms and Peierls brackets are supplied.
