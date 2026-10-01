---
paper id: 2609.27966v1
title: "From Null Modes to Gauge Generators: A Bordered Faddeev--Jackiw Theory of Constraint Chains"
authors:
  - E. Chan-López
publication date: 2026-08-23T18:51:04Z
abstract: |-
  A null mode of the bordered Faddeev--Jackiw matrix is not, in general, a gauge generator. We determine exactly what the residual kernel encodes and identify the additional condition required for genuine gauge symmetry. Writing $f^{(m)}=\begin{pmatrix}f^{(0)}&B\\-B^{\mathsf T}&0\end{pmatrix}$ and $\Gamma=N^{\mathsf T}B$, we prove $\dim\ker f^{(m)}=\dim\ker\Gamma^{\mathsf T}+\dim\ker\Gamma-\operatorname{rank}(\Pi M\Pi)$, where $M=B^{\mathsf T}f^{(0)+}B$ and $\Pi$ projects onto $\ker\Gamma$. The two kernel contributions have distinct meanings: the first consists of null directions of $f^{(0)}$ tangent to the constraint surface, while the second counts independent first-class combinations. We then show that $\Gamma$ is not the Dirac constraint matrix: it is the primary--secondary block of the reduced constraint matrix, with $M$ providing the secondary--secondary block. For a residual null mode with nonzero multiplier component, we derive the associated two-step chain and prove that it closes to an exact gauge symmetry precisely when the chain contraction vanishes in the effective ring modulo the constraint ideal. A four-variable counterexample shows that the Faddeev--Jackiw stopping condition can hold while the system has no gauge freedom, and that the chain criterion rejects the false generators. Mechanical examples then exhibit the criterion and show that parameter strata can carry distinct gauge and dynamical content that is erased by premature cancellation.
comments: "50 pages, 4 figures. Supplementary material: self-contained Wolfram Language notebook"
url: https://arxiv.org/abs/2609.27966v1
summary: "A useful finite-dimensional test for whether a presymplectic null mode lifts to an action symmetry, with explicit failures in the claimed general Poisson and first-class identifications."
tags: []
---

# What can be reused

The useful result is the two-step Noether-chain test in §7: solve a presymplectic linear equation, then remove the remaining potential contraction by an allowed null direction. This gives a concrete test for the vault's proposed regional gauge quotients: a kernel vector on a restricted surface is insufficient; it must lift to a symmetry of the specified regional action. **The field-theory extension remains open in the paper.** No boundary charge, gluing theorem or infinite-dimensional gauge reduction follows from its finite matrices.

The bordered-kernel formula is sound linear algebra. Several stronger identifications fail: the pseudoinverse need not define a Poisson bracket on arbitrary functions; a compressed kernel may require adding primary constraints; and rank deficiency of a secondary bracket alone does not ensure preservation by the Hamiltonian. These failures do not invalidate the direct variational proof of the two-step criterion. Reason codes: `T1-Wald-CPS`, `T1-symplectic`, `T1-symmetry`, `T2-model`.

# Complete source map and reading guide

Source: official v1 PDF, 50 pages, TeX `NModes.tex`, and ancillary `NullModesSupplement.nb`. The September 24 issue membership is authoritative; the official raw record gives the unusual earlier v1 date 23 August. This note preserves that metadata rather than inferring submission time from the identifier. There are no technical appendices.

| Source tree | Role and dependency |
|---|---|
| §1 Introduction | Distinguishes null vectors, first-class candidates and action symmetries. |
| §2.1 First-order Lagrangian; §2.2 Bordering; §2.3 Canonical blocks; §2.4 Effective ring | Defines the objects and domains used everywhere below. |
| §3 Master identity and strong gauge criterion | Variational starting point; does not require a Dirac-bracket interpretation. |
| §4 Exact kernel structure | Eliminates the invertible block and obtains the dimension formula. |
| §5.1 Symmetry obstruction; §5.2 Canonical extension; §5.3 Three blocks; §5.4 Splitting dependence; §5.5 Pfaffian lemma; §5.6 Determinantal factorization | Explains what the reduced matrices measure; the claimed Jacobi consequence needs correction. |
| §6 First-class combinations | Interprets compressed kernels; distinguish pure secondary combinations from primary-corrected ones. |
| §7.1 General chain; §7.2 Two-step chains; §7.3 Relation to bordered kernel | Essential action-symmetry test and quotient-ideal obstruction. |
| §8 Why weak modes are not gauge | Four-variable counterexample; its proposed generalization is too strong. |
| §9 Involutivity and reduced gauge distribution | Closed forms, regular foliations and the final constraint surface. |
| §10.1 Genericity and strata; §10.2 Nonorthonormal frames; §10.3 Nonconstant frames | Prevents generic ranks or frame choices from becoming global statements. |
| §11.1 Reducible borderings; §11.2 Ideal versus surface vanishing; §11.3 Real inconsistency; §11.4 Constant versus functional coefficients | Algebraic and real-geometric qualifications to stopping tests. |
| §12 Canonical charges; §12.1 Trivial transformations and counting | Requires a declared canonical structure and an exhausted constraint analysis. |
| §13.1 Four-regime family; §13.2 Genuine two-step chain; §13.3 Counterexample unit test; §13.4 Rank jump; §13.5 Parameter-controlled transition | Concrete tests, including a printed transformation that misses a chain term. |
| §14 Mechanical realizations; §14.1 Degenerate-mechanics template; §14.2 Three pulley pairs; §14.3 Two pulleys and one mass; §14.4 Square gauge model; §14.5 Square non-gauge control | Legendre bridge, constraints, potential obstructions and parameter branches. Includes compound-spring comparison. |
| §15.1 Assumption catalogue; §15.2 Dirac–Bergmann relation; §15.3 Open points | Exact boundary of the framework. |
| §16 Conclusions; supplementary material and data availability | Synthesis; ancillary notebook supplies mechanical checks. Remaining declarations and references contain no further derivation. |

**How to read this long paper.** Read §§2–4, 7–8 and 14.1 first; they contain the reusable construction. Read §§5–6 alongside the counterexamples below before using their interpretations. §§10–12 and 15 are technical reference for a concrete application. The mechanical drawings, historical discussion and bibliography are optional background, but all four mechanical models are reconstructed below. §13.5 should be read with the corrected original-variable transformation.

# First-order conventions and the variational test

Let $\xi^A$ be local real coordinates on a finite-dimensional manifold, with
$$
L=a_A(\xi)\dot\xi^A-V(\xi),\qquad
f_{AB}=\partial_Aa_B-\partial_Ba_A,\qquad
f_{AB}\dot\xi^B=\partial_AV.
$$
Use a fixed constant-rank open stratum. The rank of the skew matrix is $r$, its nullity $d$, and $N$ is a local kernel frame. With an orthonormal frame $Q=(Q_R,N)$,
$$
Q^TfQ=\begin{pmatrix}J&0\\0&0\end{pmatrix},\qquad
J^{-1}\text{ exists},\qquad f^+=Q_RJ^{-1}Q_R^T.
$$
The superscript $+$ here is relative to the splitting; the orthogonal choice is the skew Moore–Penrose inverse. It is not automatically a Poisson tensor.

For generated constraints $\Omega_\alpha$, put
$$
B_{A\alpha}=\partial_A\Omega_\alpha,\quad
\Sigma=\{\Omega=0\},\quad
\mathcal I=\langle\Omega_1,\ldots,\Omega_k\rangle\subset\mathcal R.
$$
$\mathcal R$ is the declared effective function ring, including any explicit localizations. Polynomial, smooth and localized ideals are different objects. Bordering introduces auxiliary multiplier coordinates and
$$
f^{(m)}=\begin{pmatrix}f&B\\-B^T&0\end{pmatrix},\qquad
\Gamma=N^TB,\quad B_u=Q_R^TB,\quad M=B_u^TJ^{-1}B_u.
$$
The added velocity terms impose $\dot\Omega=0$, not $\Omega=0$ without admissible initial data. The extended system need not be dynamically equivalent to the original one merely because this matrix exists.

For $\delta\xi=\eta(t)u(\xi)$, integration by parts gives
$$
\delta S=-\int\eta A_u\,dt+[a_A\delta\xi^A],\qquad
A_u=\dot\xi^Tf u+u\cdot\nabla V.
$$
Thus an arbitrary compactly supported $\eta$ produces a symmetry on every curve precisely when $fu=0$ and $uV=0$ as identities. Vanishing only on $\Sigma$, or membership of $uV$ in $\mathcal I$, does not prove this strong statement. Time-endpoint terms are retained; no spatial boundary theory is present.

# Eliminating the symplectic block

Write $u=Q_Rx+Ny$ and a bordered null vector as $(u,w)$. The two block equations become
$$
Jx+B_uw=0,\qquad \Gamma w=0,\qquad B_u^Tx+\Gamma^Ty=0.
$$
Therefore
$$
x=-J^{-1}B_uw,\qquad \Gamma^Ty=Mw.
$$
Let $\Pi$ be the orthogonal projector onto $\ker\Gamma$. A solution for $y$ exists iff $\Pi Mw=0$. On $w\in\ker\Gamma$, this is $\Pi M\Pi w=0$. Each admitted $w$ has an affine space of lifts with direction $\ker\Gamma^T$. Hence
$$
\dim\ker f^{(m)}
=\dim\ker\Gamma^T+\dim\ker\Gamma-\operatorname{rank}(\Pi M\Pi).
$$
This argument is pointwise linear algebra. Smooth choices of bases require constant ranks; ranks over a rational function field describe only a generic stratum. The multiplier-free contribution $w=0$ is $Ny$ with $\Gamma^Ty=0$, the original kernel tangent to the constraints.

For square $\Gamma$ with $k=d$, elimination gives
$$
\det f^{(m)}=\det J\,(\det\Gamma)^2.
$$
The reduced skew matrix
$$
C=\begin{pmatrix}0&-\Gamma\\\Gamma^T&M\end{pmatrix}
$$
has Pfaffian $(-1)^{d(d+1)/2}\det\Gamma$ in this block ordering. Nonorthonormal frames change the volume factor: replacing the orthonormal $N$ by $NS$ multiplies $\det\Gamma$ by $\det S$, and the invariant determinant formula must divide by $\det(N^TN)$. A determinant of the actual bordered matrix cannot change just because a kernel basis was rescaled.

# What the reduced matrices do and do not mean

In the canonical cotangent extension define $\chi_A=p_A-a_A$. Then $\{\chi_A,\chi_B\}_{\rm can}=f_{AB}$. Eliminate the $r$ second-class combinations associated with $Q_R$. The remaining primary candidates are $\pi_\alpha=N^A_\alpha\chi_A$. Modulo the full primary constraints, the primary–secondary pairing is $\Gamma$ (with the displayed signs in $C$), and the secondary–secondary pairing is $M$.

When $\Omega=N^T\nabla V$ and $N$ is constant, $\Gamma$ is a Hessian in null directions, hence symmetric; it cannot be the antisymmetric constraint-bracket matrix. Derivatives of $N$ enter for nonconstant frames. Changing the complement changes $M$ by terms containing $\Gamma$; its restriction to $\ker\Gamma$ is invariant under the stated regular splitting changes. These statements do not make an arbitrary ambient pseudoinverse into a Poisson tensor.

## Lemma 5.5: the unrestricted Jacobi claim fails

Take on $\mathbb R^3$
$$
a=x\,dy+\tfrac12(x^2+y^2)\,dz,\qquad
f=\begin{pmatrix}0&1&x\\-1&0&y\\-x&-y&0\end{pmatrix},\qquad
f^+=-\frac{f}{1+x^2+y^2}.
$$
The form is closed and has constant rank two everywhere. Its orthogonal pseudoinverse satisfies $ff^+f=f$. Nevertheless, for $\{F,G\}_+=\partial F\,f^+\partial G$,
$$
\{x,\{y,z\}_+\}_++\{y,\{z,x\}_+\}_++\{z,\{x,y\}_+\}_+
=\frac{2}{(1+x^2+y^2)^2}\ne0.
$$
**Failed:** the final sentence of Lemma 5.5, printed p.10, asserts Jacobi on such arbitrary functions. Equality modulo remaining primary constraints cannot simply be substituted inside another bracket: the discarded terms can contribute. Work with invariant observables on an actual reduction, or prove an appropriate Poisson splitting. The constant-frame mechanical examples avoid this particular obstruction.

## Theorem 6.1: primary corrections matter

The compressed condition counts secondary coefficients *admitting a primary correction*, rather than proving that the pure secondary combination is first class. For
$$
\Gamma=\begin{pmatrix}1&0\\0&0\end{pmatrix},\quad
M=\begin{pmatrix}0&1\\-1&0\end{pmatrix},\quad w=(0,1)^T,
$$
we have $\Gamma w=\Pi M\Pi w=0$, but $Mw=(1,0)^T\ne0$. In the ordering $(\pi_1,\pi_2,\Omega_1,\Omega_2)$,
$$
C(0,0,0,1)^T=(0,0,1,0)^T,\qquad
C(-1,0,0,1)^T=0.
$$
**Failed:** identifying $\Omega_w$ itself as first class under only the compressed condition. The corrected combination here is $-\pi_1+\Omega_2$. This is realizable with canonical $(q,p)$ and null $(z_1,z_2)$, $V=z_1^2/2+qz_1+pz_2$, so $\Omega=(z_1+q,p)$; it is not merely an arbitrary inadmissible skew matrix. All statements at this stage concern the displayed constraint set, before any additional consistency constraints.

# The two-step chain and its obstruction class

For $\delta\xi=\sum_{s=0}^S\rho^{(s)}u_s$, integration by parts produces the Noether identity
$$
\sum_{s=0}^S(-1)^sD_t^s A_{u_s}\equiv0
$$
on all jets. For $S=1$ and $fu_1=0$, this reduces exactly to
$$
fu_0=\nabla(u_1V),\qquad u_0V=0.
$$
For $u_1=N_b$ and $\Omega_b=N_bV$, the first equation is solvable when the corresponding column of $\Gamma$ vanishes. Two solutions differ by $Nc$. If all null contractions generate the declared ideal, the change in $u_0V$ is $c^\alpha\Omega_\alpha$, and
$$
[u_0V]\in\mathcal R/\mathcal I
$$
is well defined. If it vanishes, choose an explicit representation $u_0V=c^\alpha\Omega_\alpha$ and replace $u_0$ by $u_0-c^\alpha N_\alpha$. This yields an exact action symmetry. It is a constructive argument within the chosen ring, not merely a test on a constraint surface.

A bordered vector $(u_0,-e_b)$ additionally obeys $B^Tu_0=0$; the chain equation alone need not imply this. Conversely, the full original transformation contains $\dot\rho N_b$. Keeping only the $u_0$ component loses part of the symmetry. Longer chains satisfy the general jet identity, but a general solvability algorithm for $S\ge2$ is explicitly open.

## Weak halting and the missing Hamiltonian test

The source's four-variable example is
$$
L=q_2\dot q_1-q_1q_3-q_2q_4,\quad
\Omega=(q_1,q_2),\quad\Gamma=0,\quad M=J^{-1}.
$$
The bordered matrix has rank four and two multiplier-free null vectors $e_3,e_4$. Their contractions lie in $\langle q_1,q_2\rangle$, yet the equations require $q_1=q_2=q_3=q_4=0$. The chain obstructions are $[-q_4]$ and $[q_3]$, both nonzero. This is a successful example of the source criterion.

**Failed:** Proposition 8.4 then claims that for $V=V_0(q,p)+z^\alpha\Omega_\alpha(q,p)$, gauge freedom exists iff $\operatorname{rank}M<k$. Consider instead
$$
L=p\dot q-\tfrac12q^2-zp.
$$
Here $\Omega=p$, $\Gamma=M=0$, and $k=1$. But $fu_0=dp$ has $u_0=\partial_q$ with obstruction $[q]\ne0$ modulo $\langle p\rangle$. The equations give $p=0$, then $q=0$, then $z=0$. There is no nontrivial on-shell gauge freedom. Hamiltonian consistency must be exhausted; the rank of the initial secondary bracket does not replace this step. EL-proportional trivial transformations are excluded from the gauge count.

# Regularity, reducibility, charges and physical counting

Sections 9–12 supply the geometric cautions. Closed constant-rank presymplectic forms have involutive kernels; intersecting with $\ker dV$ describes strong directions under regularity assumptions. Pullback to $\Sigma$ can acquire additional null vectors. Quotient dimensions must use the final admissible constraint manifold and its actual gauge distribution, not the ambient bordered nullity.

Reducibility $Bw=0$ produces pure-multiplier null vectors that do not transform the original fields. Constant linear relations and function-valued syzygies are different modules. The example $\Omega=q^2$ makes the distinction between $\mathcal I$ and the vanishing ideal explicit: $q$ vanishes on the surface but is not in $\langle q^2\rangle$. Over the reals, $q^2+1=0$ has no admissible point even though the polynomial ideal is proper. Rank-jump loci must be classified separately from regular open sets; poles introduced by a normalized frame can be coordinate artifacts.

Section 12 introduces a separate canonical form $\omega_{\rm can}$. A candidate charge requires $\iota_u\omega_{\rm can}$ to be closed, and exactness requires a local contractible/star-shaped domain or a global cohomological argument. A direction null for the original presymplectic form has only a locally constant intrinsic Hamiltonian; this is not the same as a nontrivial canonical generator on an extension. In the vault, a boundary charge can arise precisely because the regional form and allowed variations differ, but this paper does not construct that boundary data.

# Worked parameter families and a repaired original-variable transformation

For $V=W(q_1,q_2)+cq_3+mq_3^2/2$, $\Omega=c+mq_3$ and $\Gamma=m$. On $m\ne0$ the bordered determinant is $m^2$; on $m=0,c\ne0$ the constraint surface is empty; on $m=c=0$ the free shift of $q_3$ is a strong gauge direction. These are distinct branches. The separate choice $V=q_2q_3$ gives $L=q_2\dot q_1-q_2q_3$ and the genuine chain $\delta q_1=\rho$, $\delta q_3=\dot\rho$, $\delta q_2=0$, with $\delta L=0$ identically.

For §13.5,
$$
L=p\dot q_1+\alpha q_1\dot q_2-\tfrac12p^2-\tfrac\beta2(q_1-q_2)^2,
$$
$$
f=\begin{pmatrix}0&\alpha&-1\\-\alpha&0&0\\1&0&0\end{pmatrix},\quad
N=(0,1,\alpha)^T,\quad
\Omega=\alpha p-\beta(q_1-q_2),\quad\Gamma=\alpha^2+\beta.
$$
On $\beta=-\alpha^2$, $\alpha\ne0$, $u_0=(\alpha,\alpha,0)$ obeys $fu_0=d\Omega$ and $u_0V=0$. The **original** transformation is therefore
$$
\delta q_1=\alpha\rho,\qquad
\delta q_2=\alpha\rho+\dot\rho,\qquad
\delta p=\alpha\dot\rho.
$$
Direct variation gives
$$
\delta L=D_t(\alpha q_1\dot\rho+\alpha^2q_2\rho).
$$
**Failed:** source Eq.(63), p.27, prints only $\delta q_1=\delta q_2=\alpha\rho$, $\delta p=0$, plus a bordered $\delta\lambda=\dot\rho$. That is not the original-variable chain. Its original-action variation is $\alpha[\dot\rho(p+\alpha q_1)+\alpha\rho\dot q_2]$, which is not generically a total derivative. The corrected chain preserves the source's useful distinction between a regular branch with no arbitrary function and the critical branch with one arbitrary function. At $\alpha=\beta=0$, the border becomes reducible and $q_2$ instead has a direct strong shift symmetry.

# Mechanical bridge and all four realizations

For $L_{\rm mech}=\dot q^TK\dot q/2-V(q)$ with constant positive semidefinite $K$, let $w_a$ span its kernel. The constrained Legendre map imposes $\phi_a=w_a\cdot p=0$. The first-order action is
$$
L_{\rm FJ}=p\cdot\dot q-\left(\tfrac12p^TK^+p+V+\lambda^a w_a\cdot p\right).
$$
Its presymplectic matrix has canonical $(q,p)$ block and null $\partial_{\lambda^a}$ directions: its rank is $2n$, not $\operatorname{rank}K$. Initially $\Gamma=M=0$, and the chain has $u_0=w_a\partial_q$, $u_1=\partial_{\lambda^a}$. Its only potential obstruction is $w_a\cdot\nabla V$. If this vanishes identically, $\delta q=\rho^aw_a$, $\delta p=0$, $\delta\lambda^a=\dot\rho^a$ is exact. If it does not, consistency generates new constraints. Since the obstruction depends only on $q$, it cannot belong to the momentum ideal except by vanishing.

| Model | Kinetic and potential data | Chain result and domain |
|---|---|---|
| Three pulley pairs (§14.2) | $\Lambda=3I-\mathbf1\mathbf1^T$, $K=mR^2\Lambda/4$, $V=kR^2\alpha^T\Lambda\alpha/8$; $K^+=4(I-\mathbf1\mathbf1^T/3)/(3mR^2)$ | $w=\mathbf1$, $wV=0$; two physical configuration degrees of freedom for $mR^2\ne0$. Vanishing $mR^2$ is a different branch. |
| Two pulleys (§14.3) | $v=(R_1,R_2)$, $K=mvv^T$, $K^+=vv^T/[m(v^Tv)^2]$, $V=-mg\,v\cdot b$ | $w=(-R_2,R_1)$ leaves the height $h=-v\cdot b$ invariant; one physical degree of freedom for $m\ne0,v^Tv\ne0$. |
| Square, springs on masses (§14.4) | Let $S$ sum adjacent corners around the square. $K=mS^TS/4$, $V=mg\sum y_i+(k/8)\sum_{\rm edges}(2a-y_i-y_j)^2$ | $w=(-1,1,-1,1)$ obeys $Sw=0$, $wV=0$; three physical degrees of freedom. Eigenvalues of $K$: $m,m/2,m/2,0$. |
| Square, springs on corners (§14.5) | Same $K$, but $V=mg\sum y_i+(k/2)\sum(y_i-a)^2$ | $wV=k(-y_1+y_2-y_3+y_4)$. For $k\ne0$ a new constraint fixes the alternating direction; for $k=0$ it becomes gauge. |

For the corner-spring model, with $m>0,k\ne0$, the equilibrium is $y_i^*=a-mg/k$ and
$$
\det(kI-\lambda K)=\frac{k}{4}(k-\lambda m)(2k-\lambda m)^2.
$$
The finite squared frequencies are $k/m,2k/m,2k/m$. For $mg\ne0$, the equilibrium escapes to infinity as $k\to0$; for negative $k$ the finite modes are unstable, an extended negative-stiffness model. The exact $k=0$ branch has an additional gauge direction; this is not a collision of finite equilibrium branches. The source's coefficient $k/4$ in Eq.(116) was visually confirmed and independently reproduced.

The compound-spring comparison separates loss of restoring force from changes in constraints: $k_{\rm eff}=k_1k_2/(k_1+k_2)$ can vanish when one spring vanishes while the constraint pairing $k_1+k_2$ stays nonzero. At $k_1+k_2=0$ the consistency chain changes and this reduced formula is undefined; it must not be used to infer gauge freedom or a finite reduced frequency on that locus. The introductory pendulum example similarly retains $2k\ell(x\cos\theta+y\sin\theta)=0$ until the $k\ell=0$ branch is separately considered.

# Equation ledger and translation to the vault

| Object | Reusable conclusion | Required qualification |
|---|---|---|
| $f=da$ and $A_u$ | Direct action-symmetry test | All curves/jets, time boundary term retained. |
| $\Gamma,M,\Pi$ | Exact bordered nullity | Fixed rank stratum and declared splitting. |
| Reduced $C$ | Primary plus secondary constraint pairing | Weak identification; pure-secondary and corrected combinations differ. |
| $[u_0V]$ | Obstruction to a two-step chain | Explicit ring, ideal and null contractions; not just surface vanishing. |
| $w\cdot\nabla V$ | Constant-kinetic mechanical gauge test | Full Legendre bridge and regular parameter locus. |
| $\iota_u\omega_{\rm can}$ | Candidate canonical charge | Declared canonical form and exactness domain; not a CPS boundary charge. |

The derivation map is $L\to(f,V)\to(N,\Omega,B)\to(\Gamma,M)\to$ kernel candidates, followed by the logically separate $A_u\to$ chain equations $\to$ ideal obstruction $\to$ exact generator. Only after consistency and quotient regularity can physical degrees of freedom be counted. For regionalization, use this as a finite model for testing a proposed gauge quotient against its original regional action; do not transport a global null algebra and declare it a regional construction.

# Verification record and remaining boundary

**Checked — independent Mathematica calculations.** The kernel formula passed 30 exact integer cases with varying symplectic rank, nullity and border size, including forced deficient $\Gamma$; the elimination argument above supplies the reason beyond those finite cases. A symbolic square two-by-two $\Gamma$ determinant test gives zero residual. The constant-rank Jacobi counterexample, primary-correction counterexample, Proposition 8.4 counterexample, four-variable bordered rank, critical two-step chain and corrected total derivative were explicitly reproduced. The pulley pseudoinverse identities, kinetic spectra, both square potential contractions and generalized characteristic polynomial also reduce exactly to the displayed results. An intermediate determinant test had a symbol-name collision; clearing the context and rerunning with distinct symbols gave zero residual.

**Checked — author-code replay, separately scoped.** The official ancillary notebook was inspected and its 87 `Code` cells evaluated sequentially in Mathematica; no per-cell timeout occurred. Its own summary reported 281 passed checks and no failures. The 19 `Input` cells are inline explanatory fragments, not the executable sequence. This reproduces the supplied mechanical audit, not the general claims of §§5–8. The independent counterexamples above are not contradicted by those 281 tests. No claim of general validity is inferred from the notebook's success.

**Source-derived.** Section structure, historical comparisons, general splitting-invariance discussion, Pfaffian orientation statement, charge homotopy and the open-problem catalogue. PDF formulas on pp.10, 27 and 43 were visually inspected in addition to TeX and text extraction. The notebook supplies additional branch tests but does not establish an infinite-dimensional theorem.

**Failed.** Lemma 5.5's unrestricted Jacobi claim; Theorem 6.1's pure-secondary first-class reading; Proposition 8.4's gauge iff rank-deficient criterion; Eq.(63) read as a transformation of the original variables. Each failure has an explicit counterexample or variation above. Dependent general Poisson/gauge conclusions are not used.

**Blocked.** A general repair identifying the required invariant observable algebra, an exhausted final constraint manifold, and a field-theory boundary-value domain is absent from the source. The finite examples do not supply those missing definitions. No retrieval or computation blocker remains for the completed finite-dimensional reconstruction.

**Assumptions.** Smooth local finite-dimensional systems; declared real/rational function ring; constant ranks on the chosen branch; real nonempty regular constraint surface where a geometric quotient is invoked; stated canonical pairs; compact support in time for gauge parameters or the retained endpoint term. Positivity and nonzero denominators are stated separately for the mechanical models.

**Not independently verified.** General syzygy-module completeness, all degeneracy strata, equivalence of bordering to the Gotay–Nester final surface, chains beyond two steps, global quotient topology, field-theory extension and quantum statements. These are either open in the source or outside the computations recorded here.
