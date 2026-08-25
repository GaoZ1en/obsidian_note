---
paper id: 2608.22509v1
title: A second rotational Killing field on gauged $D=5$ vector multiplet horizons
authors:
  - Usman Kayani
publication date: 2026-08-23T17:07
abstract: |-
  The paper studies compact supersymmetric near-horizon sections in gauged five-dimensional supergravity with vector multiplets. It constructs a second commuting Killing field on the open nondegenerate frame locus, proves a global result on the constant-moduli branch, and gives a conditional global extension statement on the varying-moduli branch.
comments: "48 pages, no figures"
url: https://arxiv.org/abs/2608.22509v1
summary: "A strong local rigidity construction with useful branch structure; the global varying-moduli toricity claim remains conditional, and its stated extension hypothesis needs a regularity strengthening."
tags: []
---

Daily package: [[2026_08_25_overview]].

# Direct verdict

Correct under the following precise conditions: the horizon section is smooth; the gauged $D=5$ vector-multiplet near-horizon equations and Killing-spinor identities quoted from the earlier work hold; the scalar potential is non-negative; $Q_{IJ}$ is positive definite; and one remains on the branch with the canonical rotational field $\widetilde V\neq0$.

The unconditional new result on the varying-moduli branch is local-to-open-set: a second commuting Killing field exists on

$$
\mathcal S_0=\{Z,W\ \text{linearly independent}\}.
$$

A second isometry on all of a compact horizon is unconditional on the constant-moduli branch, but conditional on the varying-moduli branch. Corollary 7.6 is not fully proved under its stated hypothesis: continuity of $U$ plus a limiting symmetric-gradient residual does not by itself make $U$ differentiable, let alone make $\widetilde\nabla_{(i}U_{j)}$ a continuous tensor on the degenerate set. The statement becomes correct if the hypothesis is strengthened to a $C^1$ extension of $U$ with continuous symmetric derivative, or to a smooth extension.

The numerical endpoint calculation for one explicit family is evidence for such an extension, not a proof of the exact extension hypothesis. The paper itself acknowledges this in Appendix D, despite the abstract's stronger phrase "verifies the extension hypothesis numerically."

Reason codes: `T1-horizon`, `T1-rigidity`, `T1-Killing`, `T1-supergravity`, `T1-global-extension`, `T2-AdS5`.

# Source map

1. Section 2 imports the enhanced-supersymmetry branch, horizon Killing-spinor equations, and canonical Killing vector $\widetilde V$.
2. Sections 3--6 derive moduli-gradient collapse, first-order bilinear identities, closure of $P$, divergence identities, and a closed scalar transport system.
3. Section 7 proves the $K$ dichotomy, compactness consequences, the constant-moduli result, and the second Killing field on the varying-moduli branch.
4. Appendices A--C collect conventions, field equations, and an independent light-cone derivation.
5. Appendix D describes a high-precision SymPy endpoint calculation but supplies neither code nor machine-readable data.
6. The final appendices explain the analytic tools and record a superseded quotient-space route.

# How to read this long paper

- Essential path: Sections 2--3 for inherited bilinears and $K$; Sections 6.3--6.11 for $dP=0$ and the closed gradient system; Sections 7.1--7.6 for the branch split, $U$, and the extension boundary.
- Technical-reference path: Sections 4--5 and Appendices A--C contain the long spinor, Ricci, flux, and light-cone identity chain on which the classification rests.
- Verification-critical path: read Theorem 7.5 together with its three following remarks, then Corollary 7.6 and Appendix D. The unconditional open-set theorem and conditional global statement must not be merged.
- Optional path: Appendix E summarizes standard analytic tools, while Appendix F records a quotient construction that the author explicitly supersedes.

# Complete section tree and dependencies

1. Introduction — states the global problem, theorem bundle, assumptions, and precise novelty boundary.
2. Results established earlier — imports horizon Killing-spinor equations, the $\widetilde V\neq0$ branch, and the two-component bilinears.
3. The invariant $K$ and minimal theory — defines $C^I$, $K$, $P$, and the collinear moduli-gradient structure.
4. Supersymmetry doubling fixes $\|\eta_-\|$ — relates the negative-chirality norm to $P$.
5. Remaining first-order data — derives symmetric/antisymmetric derivatives of $h$, the Ricci tensor, and a second-order relation for $\alpha$.
6. Scalar-invariant determination — studies zeros of $P$, divergence-free transverse vectors, $dP=0$, parallel-gradient collapse, integrability of $h\cdot P$, the closed gradient system, exclusion of a constant-coefficient Killing tensor, and divergence of the graviphoton flux.
7. Classification — proves the $K$ dichotomy, compact extrema and integral identity, then treats constant- and varying-moduli branches; Theorem 7.5 constructs $U$ and Corollary 7.6 states conditional global toricity.
8. Conclusion — separates the unconditional local, unconditional constant-moduli global, and conditional varying-moduli global results.
9. Appendix A — spinor and gamma-matrix conventions.
10. Appendix B — near-horizon field equations and Bianchi identities.
11. Appendix C — light-cone integrability derivation of the key $dh$ identity.
12. Appendix D — numerical endpoint evidence for extending $U$ across $\{P=0\}$.
13. Appendix E — maximum principle, divergence theorem, extrema, topology, and flat-connection tools.
14. Appendix F — superseded two-dimensional quotient route and its remaining scalar obstruction.

# Global notation and equation ledger

- $\mathcal S$ is the three-dimensional horizon section; $h$, $\Delta=\alpha^2$, $X^I$, and $F^I$ are intrinsic near-horizon data; $\chi$ is the gauge coupling and $\Phi=\chi V_IX^I$.
- $Z,W$ are unit spinor-bilinear one-forms; $P=Z+W$, $N=Z-W$, and $Y=Z\times W$ form an orthogonal frame on $\mathcal S_0$.
- $C^I=(Q^{IJ}-2X^IX^J/3)V_J$ and $K=Q_{IJ}C^IC^J$ distinguish the minimal branch $K=0$ from the everywhere non-minimal branch $K>0$.
- $h_N$ and $h_Y$ are coefficients, not contractions: $h_N=(h\cdot N)/(N\cdot N)$ and similarly for $Y$; $\sigma=\|\eta_-\|^2$.
- Central chain: Killing-spinor bilinears $\Rightarrow d\log\sigma=-\Phi P$ and $d\Phi\parallel P$ $\Rightarrow dP=0$ $\Rightarrow$ flat transverse transport $\Rightarrow U=\sigma(h_YN-h_NY)$ on $\mathcal S_0$ $\Rightarrow$ extra regularity required for global extension.

# Geometric and field-theory assumptions

The horizon section $(\mathcal S,g)$ is a smooth connected Riemannian three-manifold, compact and without boundary for the global results. The near-horizon fields include

$$
g,quad h,quad \Delta,quad X^I,quad F^I,
$$

with very-special-geometry metric $Q_{IJ}>0$, nonzero gauge coupling $\chi$, and

$$
\Phi=\chi V_IX^I.
$$

The paper assumes the scalar potential is non-negative on $\mathcal S$. This is used to exclude $h=0$ and $\widetilde V=0$ and to show $\Phi\neq0$ everywhere.

On the retained branch,

$$
\Delta=\alpha^2,
\qquad
L^I=0,
\qquad
M_i^I=\alpha\widetilde\nabla_iX^I.
$$

No second rotational symmetry is assumed at the start.

# Bilinears and the invariant branch parameter

Two unit one-forms $Z$ and $W$ are built from the doubled horizon Killing spinors. Define

$$
P=Z+W,
\qquad
N=Z-W,
\qquad
Y=Z\times W.
$$

The moduli obey

$$
\widetilde\nabla_iX^I
=\frac32\chi C^I P_i,
$$

where

$$
C^I=\left(Q^{IJ}-\frac23X^IX^J\right)V_J.
$$

The non-minimal invariant is

$$
K=Q_{IJ}C^IC^J\geq0,
$$

and

$$
\widetilde\nabla_i\Phi
=\frac32\chi^2K P_i.
$$

Thus every function of the moduli has gradient parallel to $P$. The estimate

$$
|\widetilde\nabla K|\leq cK
$$

on a compact connected section yields the dichotomy

$$
K\equiv0
\quad\text{or}\quad
K>0\ \text{everywhere}.
$$

This is a valid Gronwall/path argument; importantly, the estimate is stated on the zero set as well as on $\{K>0\}$.

# Closure of the distinguished one-form

The negative-chirality norm satisfies

$$
d\log\|\eta_-\|^2=-\Phi P.
$$

Taking an exterior derivative gives

$$
0=-d\Phi\wedge P-\Phi\,dP.
$$

Since $d\Phi$ is parallel to $P$ and $\Phi\neq0$, one obtains

$$
dP=0.
$$

This closure relation is central: it makes all scalar gradients collinear and turns the transverse Killing equation into a flat transport system along $P$.

# Compactness consequences

At every critical point of $\|\eta_-\|^2$,

$$
P=0.
$$

Compactness supplies at least a maximum and a minimum, so $P$ must vanish somewhere on every compact section. It does not imply $P\equiv0$ and gives only a sign constraint on $\widetilde\nabla\cdot P$ at the two extrema.

The integrated trace equation gives

$$
\int_\mathcal S
\left[
|h|^2-\frac12|\widetilde F|^2-8\Phi^2
+\frac32\chi^2K|P|^2
\right]d\mathrm{vol}_\mathcal S=0.
$$

Its equality case separates three global branches:

1. $K\equiv0$, the minimal theory;
2. $K>0$ and $P\equiv0$, the non-minimal constant-moduli branch;
3. $K>0$ and $P\not\equiv0$, the varying-moduli branch.

# Constant-moduli branch

When $P\equiv0$, one has $W=-Z$ and

$$
h=3\Phi Z,
\qquad
\widetilde\nabla_iZ_j
=-\frac12\alpha\epsilon_{ijk}Z^k.
$$

Moreover $\Phi$, $\alpha$, $K$, and all $X^I$ are constant. Hence $Z$ is a unit Killing field and $h$ is Killing. The local homogeneous classification quoted from Kunduri--Lucietti applies, yielding a second rotational isometry. This part of the global result is unconditional once $P\equiv0$ is established.

It does not exclude the $S^1\times S^2$ black-ring window

$$
\frac13\Phi^2<\chi^2K\leq\frac43\Phi^2.
$$

# Varying-moduli branch and the second field

On $\mathcal S_0$, the orthogonal frame $\{P,N,Y\}$ is nondegenerate. Write

$$
h_N=\frac{h\cdot N}{N\cdot N},
\qquad
h_Y=\frac{h\cdot Y}{Y\cdot Y}.
$$

The canonical rotational field is

$$
\widetilde V
=-\sigma(h_NN+h_YY),
\qquad
\sigma=\|\eta_-\|^2.
$$

The paper constructs

$$
U=\sigma(h_YN-h_NY).
$$

For a transverse vector $aN+bY$, the Killing equation reduces to

$$
d(a+ib)
=(a+ib)\big[(h_N-2\Phi)+ih_Y\big]P.
$$

The connection one-form is closed because $dP=0$ and the gradients of $h_N$, $h_Y$, and $\Phi$ are parallel to $P$. Multiplication of the known solution for $\widetilde V$ by $i$ rotates its coefficient pair and gives $U$. The determinant

$$
\sigma^2(h_N^2+h_Y^2)
$$

shows $U$ and $\widetilde V$ are independent wherever $\widetilde V$ is nonzero. The commutator vanishes, and the algebraic flux formulas show that $U$ preserves $h$, $X^I$, and $F^I$.

This establishes a genuine Killing field on $\mathcal S_0$. It does not by itself extend the field across $\mathcal S\setminus\mathcal S_0$, where the frame degenerates.

# Global-extension issue

Corollary 7.6 assumes:

- $\mathcal S$ compact, connected, and boundaryless;
- $K>0$, $\alpha\neq0$, and $P\not\equiv0$;
- $\{P=0\}$ has empty interior;
- $U$ extends continuously to $\mathcal S$;
- $\widetilde\nabla_{(i}U_{j)}\to0$ at the degenerate set.

The proof then says that $\widetilde\nabla_{(i}U_{j)}$ is continuous on all of $\mathcal S$ "by the extension hypothesis." That implication is not established. A continuous vector field need not possess a classical derivative on the extension set, and a limit for the symmetric derivative on the punctured open set is not, as stated, a $C^1$ extension theorem.

The statement should be rewritten as: if $U$ extends as a $C^1$ vector field to $\mathcal S$ and its symmetric covariant derivative extends continuously with zero value on $\mathcal S\setminus\mathcal S_0$, then $U$ is a global Killing field; compactness of $\operatorname{Isom}(\mathcal S,g)$ then gives an effective torus containing a two-torus.

# Numerical example

For a compact $U(1)^3$ family with coordinate $x\in[4,5]$, the source reports high-precision evaluation at $x=4+\epsilon$ and $x=5-\epsilon$ for $\epsilon=10^{-3},\ldots,10^{-15}$. It finds finite limits for $U$ and maximum Killing residuals near $8\times10^{-9}$ and $10^{-7}$.

These numbers are stable numerical evidence, but the source archive contains only the TeX manuscript. It refers to a "Data availability statement" that is not present in the source, and the SymPy program and intermediate data are not supplied. Exact endpoint regularity and exact vanishing of the residual therefore remain unverified.

# Verification log

- `Checked` The official 48-page PDF and complete TeX source were retrieved; the theorem, extension corollary, and numerical appendix were visually inspected in the rendered PDF.
- `Checked` From $d\log\sigma=-\Phi P$ and $d\Phi\parallel P$, exterior differentiation gives $dP=0$ when $\Phi\neq0$.
- `Checked` Mathematica substitutes $\sigma'=-\Phi\sigma$, $h_Y'=(2h_N-\Phi)h_Y$, and $h_N'=h_N(h_N-\Phi)-h_Y^2$ and returns zero for both residuals of the transport equations for $a=\sigma h_Y$, $b=-\sigma h_N$.
- `Checked` The determinant proving pointwise independence of $U$ and $\widetilde V$ is $\sigma^2(h_N^2+h_Y^2)$.
- `Failed` Corollary 7.6 treats the symmetric gradient as a continuous tensor on the degenerate set although the stated hypothesis only gives a continuous extension of $U$ and a limiting residual. A $C^1$ or smooth-extension hypothesis is needed.
- `Blocked` The numerical extension calculation cannot be independently reproduced exactly because the cited SymPy code and data are absent from the official source archive.
- `Blocked` Many first-order spinor-bilinear and field-equation identities are imported from earlier papers and were not independently rederived with xAct in this screening run.
- `Not checked` The 38th-degree endpoint expressions, the sampled Ricci-eigenvalue observations, and the remaining black-ring parameter-space claims were not machine-verified.

# Relevance to the current program

The paper is relevant as a careful example of local-to-global control for boundary-like horizon data. Its strongest reusable lesson is the separation between an unconditional Killing construction on a nondegenerate open set and the additional regularity needed to cross a degenerate locus. That distinction mirrors the vault's existing rule: a finite or local canonical construction does not automatically supply a global continuum factorization or extension theorem.
