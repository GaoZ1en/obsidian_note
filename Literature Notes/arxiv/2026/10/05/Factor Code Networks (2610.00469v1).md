---
paper id: 2610.00469v1
title: Factor Code Networks
authors:
  - Abhisek Sahu
  - Jeremy van der Heijden
  - Mark Van Raamsdonk
  - Rana Zibakhsh
publication date: 2026-09-30T18:00:03
abstract: |-
  For a quantum code defined by an isometry $T:H_{\rm code} \to H_{\rm phys}$, an operator map is a *-homomorphism $\varphi: B(H_{\rm code}) \to B(H_{\rm phys})$ from the space of operators on the logical Hilbert space to the space of operators on the physical Hilbert space satisfying $\varphi({\cal O}) T = T {\cal O}$ for every operator ${\cal O}$ on $H_{\rm code}$. This can additionally be taken to be unital $\varphi(I_{code}) = I_{phys}$ if and only if $\dim H_{\rm code}$ divides $\dim H_{\rm phys}$. In this case, $\varphi(B(H_{\rm code})$ is a von Neumann factor subalgebra of $B(H_{\rm phys})$ and we call the pair $(T,\varphi)$ a {\it factor code}. A code network is a family of Hilbert spaces $\{{\cal H}_i\}$ indexed by a partially ordered set with isometries $T_{ji}:{\cal H}_i \to {\cal H}_j$ for $i < j$ satisfying $T_{kj} T_{ji} = T_{ki}$ for $i < j < k$. In this paper, we ask when this can be promoted to a {\it factor code network} by defining unital operator maps $\varphi_{ji}$ so that $(T_{ji}, \varphi_{ji})$ is a factor code and $\varphi_{kj} \varphi_{ji} = \varphi_{ki}$. We show that the divisibility conditions on Hilbert space dimensions are sufficient for any code network with a tree structure but not in general. For a diamond-shaped network, we show that promotion is possible if and only if the principle angles between $T_{42} H_2$ and $T_{43} H_3$ all have multiplicity divisible by $H_1$. For incomparable $i_1,i_2 < j$, we characterize when $\varphi_{j i_1} (B(H_{i_1}))$ and $\varphi_{j i_2} (B(H_{i_2}))$ commute, when they generate all of $B(H_j)$, and when they intersect only on multiples of the identity. For $i < j_1,j_2 < k$, we characterize when $\varphi_{k j_1} (B(H_{j_1})) \cap \varphi_{k j_2} (B(H_{j_2})) = \varphi_{k i} (B(H_{i}))$ and when these algebras together with $B(H_k)$ form a nondegenerate commuting square.
comments: "40 pages, 3 figures"
url: https://arxiv.org/abs/2610.00469v1
summary: "Finite-dimensional tests for extending code isometries to compatible unital observable algebras, with separate criteria for joins, intersections and commuting squares."
tags: []
---

# Factor Code Networks

The useful result is a distinction between compatibility of code embeddings and compatibility of observable algebras. A tree of isometries admits compatible unital algebra maps once the dimensions divide along each edge. A diamond also imposes a principal-angle multiplicity condition. Correct intersections and commuting squares impose further conditions. These are finite-dimensional tests for proposed regional-algebra sewing, not a construction of a gravitational local net.

Placement: high priority; `T1-boundary`, `T2-dS-BH-holography`, `T3-math`. The immediate use is an explicit obstruction test for promoting a diagram of state spaces to a diagram of regional observable algebras. The author signal `A-big-name` (Mark Van Raamsdonk) is separate from this technical reason. Read after *Leading gravitational dressing of operators and states in de Sitter space* (2610.02209v1); the daily selection is [[2026_10_05_overview]].

## Source structure and notation

**Source-derived.** The complete v1 PDF and TeX were inspected. The PDF is 40 pages; page references below use the printed pagination. Formula extraction had font-mapping warnings, so the source and rendered pages were compared, including the commuting-factor proof, the diamond obstruction figure, Proposition 13 and Appendix A's index convention.

| Source cluster | Purpose and later dependency |
| --- | --- |
| §1, introduction, pp. 1–4 | Separates code networks from factor code networks; motivates algebraic overlap and holographic applications. |
| §2.1, quantum codes; §2.2, factor codes, pp. 4–9 | Defines isometries, operator maps and factors; Propositions 1–2 establish multiplicity and inclusion. |
| §3.1, families of factor codes, pp. 9–12 | Proposition 3 identifies completions modulo their auxiliary-unitary redundancy and defines the measure used by “generic.” |
| §4, tree networks, pp. 12–13 | Proposition 4 composes edge completions along unique paths. |
| §4.1, duplex codes, pp. 13–28 | Introduces principal angles. §4.1.1: join, Proposition 5/Corollary 6. §4.1.2: intersection, Proposition 7/Corollary 8. §4.1.3: commuting factors, Proposition 9. |
| §5, diamond networks, pp. 28–31 | Proposition 10 gives the additional compatibility obstruction. |
| §5.1, intersections, pp. 31–32 | Proposition 11 reduces the desired intersection to a duplex problem in a multiplicity space. |
| §5.2, nondegenerate commuting squares, pp. 32–35 | Propositions 12–13 and Corollary 14 give the normal form, code-subspace criterion and product-code example. |
| Appendix A, pp. 35–38 | Derives the normal form and the partial-transpose unitarity condition using normalized partial traces. References complete the paper. |

All Hilbert spaces are finite-dimensional over $\mathbb C$. $B(\mathcal H)=M_{\dim\mathcal H}(\mathbb C)$, with ordinary adjoint and identity. $T_{ji}:\mathcal H_i\to\mathcal H_j$ is an isometry, $T_{ji}^\dagger T_{ji}=I_i$; $P_i$ denotes a code-image projector in a specified ambient space. The operator map is $\varphi_{ji}$, and its image in a later space is $\mathcal M_i^{(k)}$. A prime denotes the commutant in the common ambient full matrix algebra, not in the code corner. Join means generated unital $*$-algebra; intersection means literal intersection there.

For a duplex, use $A=T_A\mathcal H_A$, $B=T_B\mathcal H_B$, $a=\dim A$, $b=\dim B$ and $N=\dim\mathcal H=ka=mb$. The paper sometimes calls this ambient dimension $n$; $N$ here prevents confusion with the bottom dimension of a diamond. The principal angles satisfy $\sigma_i(T_A^\dagger T_B)=\cos\theta_i$. $\|X\|_1=\operatorname{Tr}\sqrt{X^\dagger X}$ is the unnormalized trace norm, whereas $\tau_d=\operatorname{Tr}/d$ is the normalized trace used for conditional expectations. There is no spacetime metric, gauge fixing, boundary action or symplectic form in this finite-dimensional construction.

## From an isometry to a unital factor: §§2–3

An operator map obeys
$$
\varphi(O_1O_2)=\varphi(O_1)\varphi(O_2),\qquad
\varphi(O^\dagger)=\varphi(O)^\dagger,\qquad
\varphi(O)T=TO.
$$
The canonical corner map $O\mapsto TOT^\dagger$ has unit $P=TT^\dagger$, so it does not solve the unital-extension problem unless the code fills the physical space.

Proposition 1 uses the representation theory of $M_n$: every unital representation is a direct sum of copies of its defining representation. Thus $\dim\mathcal H_{\rm phys}=nm$ and, for a unitary $W$,
$$
\mathcal H_{\rm phys}\simeq\mathcal H_{\rm code}\otimes\mathbb C^m,
\quad T\psi=W(\psi\otimes e_1),\quad
\varphi(O)=W(O\otimes I_m)W^\dagger.
$$
Conversely this formula is a unital intertwining $*$-homomorphism. The code image is invariant, and restriction to it recovers $O$. The image is a factor with commutant $W(I_n\otimes M_m)W^\dagger$. Proposition 2 then turns compatible compositions of operator maps into inclusions of these images in a common ambient algebra.

Proposition 3 makes the freedom explicit. Complete $T=T^{(1)}$ by isometries $T^{(a)}$ with orthogonal ranges:
$$
T^{(a)\dagger}T^{(b)}=\delta_{ab}I_n,\qquad
\sum_{a=1}^{m}T^{(a)}T^{(a)\dagger}=I_{nm},\qquad
\varphi(O)=\sum_{a=1}^{m}T^{(a)}O T^{(a)\dagger}.
$$
The multiplication rule follows by inserting the first identity into a product of two sums; the second proves unitality. Rotating the auxiliary labels $a=2,\ldots,m$ by $U(m-1)$ leaves $\varphi$ unchanged. With the original isometry fixed pointwise, the family is
$$
U(nm-n)/U(m-1),
$$
where the denominator acts as the multiplicity-space rotation. This supplies the Haar-induced measure, rather than a probability distribution over code subspaces. “Generic” below always refers to this completion freedom.

## Unique paths versus duplex overlap: §4

For a tree, choose an orthogonal completion on each edge. Along a path $i\to j\to k$, products $T_{kj}^{(b)}T_{ji}^{(a)}$ are an orthogonal completion of $T_{ki}$. Their operator map is exactly $\varphi_{kj}\circ\varphi_{ji}$. Unique paths prevent inconsistent choices around loops. Edge divisibility is sufficient here; it is not sufficient for a diamond.

For two incomparable codes in one ambient space, invariants of the pair of subspaces survive changes of basis: the principal angles and their multiplicities. The paper asks three distinct questions about the possible completed algebras.

### Generic join and generic intersection

**Source-derived.** Proposition 5 gives $\mathcal M_A\vee\mathcal M_B=B(\mathcal H)$ for almost every pair of completions except when (i) $a=1$ and $B\ne\mathcal H$; (ii) the exchanged condition; (iii) $A=B\ne\mathcal H$; or (iv) $A=B^\perp$. In these exceptions no completion gives the full join. For example, a common proper code subspace is a reducing subspace for both $*$-algebras, so its projector lies in their joint commutant.

Proposition 7 instead gives $\mathcal M_A\cap\mathcal M_B=\mathbb C I$ generically, except when (i) $A=\mathcal H$, $b>1$; (ii) the exchanged condition; or (iii) $a=b=N/2>1$ and $A=B$ or $A=B^\perp$. These force a nonscalar intersection. Corollaries 6 and 8 restate these results directly for factors leaving the specified subspaces invariant.

The proofs use finite-dimensional incidence varieties, not random numerical trials. The join is full iff $\mathcal M_A'\cap\mathcal M_B'=\mathbb C I$. A nontrivial intersection contains a spectral projector. One therefore stratifies rank-$R$ projectors and compares the dimensions of pairs of completions admitting the same projector with the full parameter space.

For the join proof, a projector in $\mathcal M_A'$ has $R=ar$. Its multiplicity-space range makes angle $\theta$ with the fixed code vector. The three strata have real dimensions
$$
d_0=2(r-1)(k-r),\quad d_{\pi/2}=2r(k-r-1),\quad
d_{\rm int}=2r(k-r)-1,
$$
in the paper's parameter count. The stabilizer dimensions within the complement unitary group are respectively
$$
D_0=(R-a)^2+(N-R)^2,\quad
D_{\pi/2}=R^2+(N-R-a)^2,\quad
D_{\rm int}=(R-a)^2+(N-R-a)^2.
$$
Here $d_\theta$ themselves are the real dimensions of the multiplicity projector strata; the eventual incidence inequalities are conveniently divided by two. Their reduced positive gaps are
$$
(r-1)(k-r)(a^2-2),\quad
r(k-r-1)(a^2-2),\quad
\left[r(k-r)-\frac12\right](a^2-2)-\frac12.
$$
Combining the $A$ and $B$ estimates shows a measure-zero bad locus outside the listed degeneracies. The equality cases must be retained: simply asserting a positive gap would lose the common-subspace exceptions.

For the intersection proof, a rank-$R=kr$ projector in $\mathcal M_A$ restricts to a rank-$r$ logical projector. The fiber dimension is $(k-1)^2[r^2+(a-r)^2]$, and the reduced gap is
$$
r(a-r)\big[(k-1)^2-1\big].
$$
It is positive for $k>2$, but vanishes at $k=2$. The half-dimensional case is resolved separately through the centralizer of the relative completion unitary; it cannot be discarded by dimension counting. These steps explain why the two exception lists differ.

### Commuting factors and the overlap matrix

Proposition 9 is an existence statement, not a genericity statement. Commuting factors of sizes $a,b$ require $N=abr$ for an integer $r\ge1$. In addition,
$$
\begin{cases}
\operatorname{rank}(P_AP_B)=1,\quad\|P_AP_B\|_1=1,&r=1,\\
\operatorname{rank}(P_AP_B)\le r,\quad\|P_AP_B\|_1\le1,&r\ge2.
\end{cases}
$$
Necessity starts from $\mathcal H=\mathbb C^a\otimes\mathbb C^r\otimes\mathbb C^b$, with factors acting on the first and third slots. The code subspaces have bases $\alpha_n=a_n\otimes e$ and $\beta_m=f\otimes b_m$, where
$$
e=\sum_{i,m}U_{im}c_i\otimes b_m,\qquad
f=\sum_{n,i}V_{ni}a_n\otimes c_i,\qquad
\|U\|_F=\|V\|_F=1.
$$
With these source index conventions, direct contraction gives
$$
C_{nm}=\langle\alpha_n,\beta_m\rangle
=\sum_iV_{ni}\overline{U_{im}},\qquad C=V\overline U.
$$
Hence $\operatorname{rank}C\le r$ and Schatten Hölder gives
$$
\|C\|_1\le\|V\|_F\|\overline U\|_F=1.
$$
The nonzero singular values of $C$ and $P_AP_B$ agree. At $r=1$ both factors in this matrix product are unit vectors, so the sole singular value is one.

For sufficiency, match a singular-value decomposition of the overlap by normalized vectors with component products equal to the desired singular values. When at least two components are available, varying positive components continuously realizes a total norm product of one whenever the sum of singular values is at most one. Rank-zero and rank-one cases with $r\ge2$ use the extra auxiliary direction; external basis labels may need repeating when $a=1$ or $b=1$. The resulting two subspaces have the same principal-angle data as the original pair and can be transferred by an ambient unitary.

**Failed, with bounded repair.** The printed proof, p. 26, writes $C=VU^\dagger$ with the above $U_{im}$ convention; this is generally dimensionally incompatible. Its claimed equality $\|C\|_1=\sum_{ij}u_{ij}v_{ij}$, $u=\sqrt{UU^\dagger}$, $v=\sqrt{V^\dagger V}$, also fails. Take
$$
U=\begin{pmatrix}1&0\\0&0\end{pmatrix},\qquad
V=\begin{pmatrix}3/5&4/5\\0&0\end{pmatrix}.
$$
Both have Frobenius norm one, but $\|V\overline U\|_1=3/5$ while the asserted sum is $9/25$. The corrected contraction and Hölder inequality above recover the required bound. This rejects the displayed proof step, not the commuting-factor criterion.

## Diamond compatibility and the common factor: §5

Let $1<2,3<4$ and $T_{41}=T_{42}T_{21}=T_{43}T_{31}$. Write $n_i=\dim\mathcal H_i$. Retain the surrounding assumption that $n_i\mid n_j$ for every edge. Proposition 10 then requires each principal-angle multiplicity of $T_{42}\mathcal H_2$ and $T_{43}\mathcal H_3$ to be divisible by $n_1$.

Necessity follows from the common bottom factor: in a compatible network,
$$
\mathcal H_4=\mathcal H_1\otimes\mathcal K,\qquad
P_2=I_{n_1}\otimes\widehat P_2,\qquad
P_3=I_{n_1}\otimes\widehat P_3.
$$
Thus every principal-angle block repeats $n_1$ times. For sufficiency, group the canonical two-projector blocks into groups of that size. The common code is placed at $\mathcal H_1\otimes e_1$, with $e_1$ in both residual code subspaces. Choose completions in $\mathcal K$ and tensor with the bottom algebra. This makes both routes agree on $B(\mathcal H_1)$.

The paper's $(2,4,4,8)$ counterexample has top code images spanned by $e_1,e_2,e_3,e_4$ and $e_1,e_2,e_3,e_5$. The restricted projector product has eigenvalues $(1,1,1,0)$: multiplicities three and one fail divisibility by two despite all edge dimensions dividing. Conversely, a compatible example with two nontrivial equal-angle blocks has spectrum $(1,1,9/25,9/25)$. Compatibility therefore allows non-right angles.

Proposition 11 factors out the common $M_{n_1}$:
$$
\mathcal M_2\cap\mathcal M_3
=M_{n_1}\otimes(\widehat{\mathcal M}_2\cap\widehat{\mathcal M}_3).
$$
The desired intersection equals $\mathcal M_1$ iff the residual intersection is scalar. Apply Proposition 7 in $\mathcal K$. The exceptions are a top-filling side with a strictly larger-than-bottom other side, or equal half-sized residual code subspaces with nontrivial residual algebra. The orthogonal-complement option in the general duplex list cannot occur with a nonzero common bottom code. Outside these exceptions the desired intersection is generic. The final sentence of Proposition 11 is read with this nonexceptional qualification; it cannot assert generic success in the exceptional cases just excluded.

## Conditional expectations and bi-unitarity: §5.2 and Appendix A

A commuting square $A\subset B,C\subset D$ means
$$
E_BE_C=E_CE_B=E_A,
$$
where $E_X$ is the trace-preserving orthogonal projection onto $X$ in the Hilbert–Schmidt inner product. Co-commuting means the analogous condition for commutants in $D$. This does not say that every element of $B$ commutes with every element of $C$.

Proposition 12 and Appendix A put a nondegenerate square into the form
$$
\begin{aligned}
A&=M_n\otimes I_k\otimes I_m,\\
B&=M_n\otimes M_k\otimes I_m,\\
C&=M_n\otimes U(I_k\otimes M_m)U^\dagger,\\
D&=M_n\otimes M_k\otimes M_m.
\end{aligned}
$$
Both $U$ and its partial transpose must be unitary:
$$
(U^R)_{i\alpha,j\beta}=U_{i\beta,j\alpha},\qquad
U^R(U^R)^\dagger=(U^R)^\dagger U^R=I_{km}.
$$
The superscript $R$ is the paper's partial-transpose convention; replacing it with an index realignment changes the assertion.

To see the coefficient identity, remove the spectator $M_n$ and take $c=U(I_k\otimes y)U^\dagger$. Then
$$
[E_B(c)]_{il}=\frac1m\sum_{j,\alpha,\beta,\delta}
U_{i\alpha,j\beta}\overline{U_{l\alpha,j\delta}}y_{\beta\delta}.
$$
Requiring this to equal $\tau_m(y)\delta_{il}$ for every matrix unit gives
$$
\sum_{j,\alpha}U_{i\alpha,j\beta}\overline{U_{l\alpha,j\delta}}
=\delta_{il}\delta_{\beta\delta}.
$$
This is $U^R(U^R)^\dagger=I$. Repeating for the commutants gives the reversed product. The appendix also uses the dimension identity $\dim B\dim C=\dim A\dim D$ for a nondegenerate square, which fixes the multiplicities in this normal form.

For code networks, Proposition 13 has a stronger geometric criterion. Under integer ratios $k=n_2/n_1$, $m=n_3/n_1$,
$$
n_4=n_1km,\qquad P_2P_3=P_3P_2=P_1.
$$
The two code subspaces have precisely the bottom code as intersection and orthogonal complements away from it. Necessity follows from the normal form and the common code vector; the overlap block has one unit singular value and no others after removing $M_{n_1}$. For sufficiency use
$$
\mathcal H_4=\mathcal H_1\otimes\mathbb C^k\otimes\mathbb C^m,
\quad P_2=I\otimes I_k\otimes|1\rangle\langle1|,
\quad P_3=I\otimes|1\rangle\langle1|\otimes I_m.
$$
The untwisted $U=I$ supplies the square. Corollary 14 realizes this with independent left/right encodings $T_L,T_R$ and the four spaces formed by encoding neither, one or both tensor factors.

**Assumption repair.** Propositions 10 and 13 should not be detached from edge divisibility. Literal Proposition 13 lists ratios but does not explicitly demand that they be integers. Dimensions $(n_1,n_2,n_3,n_4)=(2,3,4,6)$ and top subspaces
$$
P_1:\langle e_1,e_2\rangle,\quad
P_2:\langle e_1,e_2,e_3\rangle,\quad
P_3:\langle e_1,e_2,e_4,e_5\rangle
$$
satisfy the dimension-product and projector equations, but no unital $M_2\to M_3$ exists. Likewise $(2,2,2,3)$ with coincident two-dimensional code images passes the angle test alone and fails top divisibility. These are counterexamples to dropping the hypothesis, not to the theorem with its ambient factor-code assumptions restored.

## Equation ledger and use for regional observables

| Reusable object | Dependency and meaning |
| --- | --- |
| $\varphi(O)=\sum_aT^{(a)}OT^{(a)\dagger}$ | Orthogonal completion extends the code action to the ambient unit; it records additional representation data. |
| $\sigma(T_A^\dagger T_B)$ | Code-image geometry; tests commutation feasibility and diamond compatibility. |
| $\mathcal M_A'\cap\mathcal M_B'=\mathbb C I$ | Full join in a finite full matrix algebra; distinct from a scalar direct intersection. |
| $P_2P_3=P_1$ with integer dimensions | Sufficient geometry for a nondegenerate code square; stronger than angle multiplicities. |
| $E_BE_C=E_A$ and partial-transpose unitary | Conditional-expectation compatibility; distinct from elementwise commutation. |

The derivation map is: irreducible representations → orthogonal completions → path composition → duplex incidence analysis → common-factor obstruction for loops → conditional-expectation normal form. This supplies several separate tests for a proposed sewing diagram. A compatible map of states alone does not choose a unital map of all observables. Extra multiplicity-space data are the finite-dimensional counterpart of missing extension data, but they are not identified here with a physical edge mode.

For the vault's CPS problem, first specify the classical regional phase space, constraints, degeneracy quotient and boundary response. Only after quantization and a controlled finite truncation could the resulting Hilbert spaces be inserted into this test. The paper supplies neither a causal propagator nor a Poisson-to-commutator map. Type-III local algebras, centers from gauge constraints, unbounded operators, and state-dependent gravitational dressings all lie outside the full-matrix-factor assumptions. Generic completions also need not preserve locality or the intended charges.

## Verification ledger

**Checked — exact Sage algebra.** Orthogonal completions for $(n,m)=(2,2),(2,3),(3,2)$ passed all matrix-unit product, adjoint, identity and intertwining identities. A $2\to4\to8$ tree passed composition checks. Thirty-six stabilizer-rank cases with $a=2,3$, $k=2,3,4$, $1\le r<k$ and the three angle strata matched the displayed formulas. The three join gap identities and the intersection gap identity reduced to zero over a polynomial ring. A half-dimensional example had nonscalar intersection of dimension two, as required.

**Checked — concrete distinctions.** Tensor-factor examples passed scalar-intersection, full-join and commuting tests. The two diamond spectra above were computed exactly. A CNOT unitary on $\mathbb C^2\otimes\mathbb C^2$ and its partial transpose were unitary; all ambient matrix units satisfied both conditional-expectation square identities, and products spanned all 16 matrix dimensions. An explicit pair of elements still had nonzero commutator. SWAP instead had partial-transpose rank one. These examples distinguish the source's bi-unitarity from a swap-friendly realignment convention.

**Failed — localized source steps.** The printed overlap-matrix formula and trace-norm equality require the repairs given above; the numerical counterexample is rational and exact. Standalone readings of the diamond criteria without integer multiplicities fail the displayed dimension counterexamples. No downstream conclusion here relies on the rejected norm equality or omitted hypothesis.

**Source-derived / Not independently verified.** The complete incidence-variety measure-zero proof, classification in every finite dimension, and the general normal-form theorem are reconstructed from the source; finite Sage examples are not proofs of these global claims. The corrected Hölder argument independently supplies the required norm bound, but a separate formal proof of every sufficiency edge case was not mechanized. No analytic or continuum limit was taken. There is no outstanding retrieval or CAS execution blocker.

Verified: the stated exact finite examples, matrix identities, dimension polynomials and counterexamples. Assumptions: finite complex Hilbert spaces, unital full-matrix factor embeddings, integer edge multiplicities, normalized trace for expectations and unnormalized trace norm for overlap. Not verified: continuum/gauge/CPS extension, causal locality and physical uniqueness of completion.

## How to read this long paper

Read Propositions 1–4 first to fix what data the algebra map adds to an isometry. For immediate regional sewing use, go next to the $(2,4,4,8)$ obstruction and Proposition 10, then to Proposition 13. Return to §§4.1.1–4.1.2 as technical reference for the difference between full join and minimal intersection; their dimension-count equality cases matter. Read §4.1.3 with the corrected contraction and Hölder bound. Appendix A is essential when using conditional expectations: its partial-transpose convention must be checked before importing a tensor-network notion of bi-unitarity. The introduction and general holographic motivation are optional background once these objects are fixed.
