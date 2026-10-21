# Independent full-proof audit of the CL cluster/Fredholm claims

## Verdict

**The CL hierarchy is mathematically supported under its expressly inherited finite-theory inputs.** I found no counterexample to CL-01–CL-11 in their stated fixed-parameter regimes. This conclusion comes from reconstructing the compactness, Bose-source, spectral-projector, nullity and trace-norm arguments, not from the manuscript's execution records.

There is **one local proof/convention clarification**: the short proof of the CL-07 attached obstruction (CL.22) uses the operator inequality `D_P ≤ a_0 I`, whereas its displayed hypothesis gives only the spectrum of `D_P`. The intended diagonal/self-adjoint comparator makes the proof correct. If arbitrary nonnormal `D_P` is intended, that short argument is insufficient, but the obstruction still follows from the already-established cluster gaps by the replacement proof in §8 below. This is not a failure of the chiral-maximum theorem or of the hierarchy.

The principal conditional dependency is not hidden: CL-08's exact auxiliary nullity and exclusion of positive collapse, and consequently CL-11, use the oriented physical kernel Hilbert series for three and four particles from EX-01. I independently verified all the rational consequences used here, but did not re-prove EX-01's logarithmic-symbol theorem. The normal Fredholm product in CL-09 and the Gamma reduction in CL-10 do **not** require that kernel theorem; the explicit zero-power/pseudodeterminant statement does.

### Scope and inspected version

- Authoritative [manuscript](</Users/koishi/Desktop/todo/ADS3_Einstein_Scalar_Master_Note.pdf>): title date **19 October 2026**, 190 PDF pages; relevant printed page numbers equal PDF page numbers. SHA-256: `97d9ea4ee42dc0443104c71bfdd12aaea28b39528d9b56d899de9e283464b9bc`.
- Read the complete [cluster main source:1–591](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/cluster/cluster.md#L1-L591>) and complete [CL.A–CL.M proof appendix:1–1185](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/cluster/cluster_appendices.md#L1-L1185>), discovered independently with glob. Read every CL definition from the [claim register](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/provenance/claim_register.json>); the eleven extracted definitions are preserved in the [audit claim extract](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_cluster_claim_definitions.json>).
- Located every theorem and proof subsection in the authoritative PDF, not a different version; see the [page crosswalk](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_cluster_pdf_map.json>). Read extracted PDF proof pages 138–146 and visually checked decisive pages 139, 153, 156–158, 161–162. Full proof coverage is through the complete source appendix; I do not claim to have visually inspected all 190 pages.
- Read both applicable AGENTS rules and the paper-reading/math-computation skills. No input, manuscript source, old audit, or old report was changed. No older audit conclusions or supplied verification programs were used as a starting point.
- This is the parent's fresh independent cluster audit. Runtime delegation depth prohibited a further child reviewer; no additional independent reviewer is claimed.

## 1. Objects and inherited inputs

Fix `N`, `Q ≥ 0`, and `Δ > 1`, with AdS radius one. The same real scalar is symmetrized under **simultaneous** permutations of the two chiral factors:

\[
\mathcal P_N(P,Q)=\bigl(V_N^L(P)\otimes V_N^R(Q)\bigr)^{S_N},
\qquad
\mathscr H_{N,Q}=\bigoplus_{P\ge0}\mathcal P_N(P,Q).
\]

The coefficient of `G` is extracted on each finite block before any limit. The audit takes the pair multiplier as input and does not re-derive gravitational dynamics, a response inverse, CPS, or a uniform perturbative remainder.

The stipulated pair input gives

\[
A_N(P,Q)=W_N(P,Q)-b_N(Q)I,\qquad
b_N(q)=-2N(N-1)\Delta^2-8q(N\Delta+q-1),
\]
\[
A_N=\sum_{i<j}\sum_{(k,\ell)\in\mathcal B_Q}
 a_{k\ell}\Pi_{ij,k}^{L}\Pi_{ij,\ell}^{R},\qquad
\mathcal B_Q=\{0\le\ell\le Q,\ 0\le k\le\ell+2,\ k+\ell\text{ even}\}.
\]

All displayed coefficients on `B_Q` are strictly positive. The labelled extension is zero on odd pair parity. Therefore

\[
0\le A_N\le {N\choose2}a_{\max}I
\]

on the entire fixed-right-budget direct sum, including **ordered** internal blocks with `p < q`. This uniform boundedness is used throughout continuous functional calculus, source-energy subsequences and spectral-set compactness.

Other declared finite inputs are the positive discrete-series/primary decomposition, the rectangular Bose Gram factorization and the Molien series. The four-body nullity argument additionally takes

\[
\mathcal K_3=\frac{x^{12}}{(1-x^2)(1-x^3)(1-xy)(1-x^2y)},\quad
\mathcal K_4=\frac{x^{24}}{(1-x^2)(1-x^3)(1-x^4)(1-xy)(1-x^2y)(1-x^3y)}
\]

from EX-01. These are physical kernels of the **oriented** residual, not auxiliary Gram nullities.

### Ordered baseline: independently checked, not an omitted assumption

If a backend swaps `(p,q)` with `p < q`, its returned residual has subtracted `b_m(p)`, not `b_m(q)`. Every eigenvalue, including its returned zeros, must receive

\[
b_m(p)-b_m(q)=8(q-p)(m\Delta+p+q-1).
\]

This polynomial identity was checked symbolically. For example, `m=2, Δ=2, (p,q)=(0,4)` has a correction **224**: the swapped high-spin residual is zero, while the ordered residual is 224. Thus dropping the backend's zero states or restoring the shift only on its positive spectrum would be a genuine error. The manuscript explicitly avoids both errors in (CL.1), not merely in code.

## 2. Claim-by-claim proof coverage

“Verified” below means the stated conditional mathematical assertion is justified by the inspected proof, with the reconstruction explained in the following sections. Finite checks do not upgrade quantifiers.

| Claim | Verdict and exact coverage | Decisive locators |
|---|---|---|
| **CL-01** | Verified: fixed-`N,Q,Δ` positive atomic `W₂=O(P^{-1/2})` law; `O(P^{N-4} ε^{-2})` outlier count; positive-rank coefficient; full-primary baseline atom; full-level and nonsaturated descendant mixtures. Auxiliary zeros are removed correctly. | Main PDF p.47–48; CL.A–B, PDF pp.138–142; appendix lines 74–213. |
| **CL-02** | Verified: overlapping local `c₀` algebras multiply into the union algebra; partition multiplication into the join; fixed-cutoff operator-norm exponent; whole-primary one-block compactness. Arbitrary internal multiplicity matrices and nested sets are covered. | Main PDF p.48–49; CL.C, pp.142–143; appendix lines 215–261. |
| **CL-03** | Verified: continuous connected Möbius calculus; exact low-degree cancellations; ordered-tree resolvent coefficient; real resolvents outside actual spectra; physical partition quotient with correct normalizer. No false Schatten or arbitrary-compression claim is used. | Main PDF p.49–50; CL.D/D.1, pp.143–145; appendix lines 263–336. |
| **CL-04** | Verified: essential spectrum of the direct sum; full even-total-degree Hausdorff limit; all-large-`P` limit for odd `N`; exact state-based symmetric/exterior limit for even `N`; `N=2` empty odd blocks. The five-body countable comparison is only a spectral-set construction, as stated. | Main PDF p.50–51; CL.E, pp.145–147; appendix lines 338–441. |
| **CL-05** | Verified: finite Cantor–Bendixson depth, countability and absence of intervals; also the weaker general self-adjoint `c₀`-pair bound. Distinct values, not repeated multiplicities, are differentiated. | Main PDF p.51; CL.F, pp.147–148; appendix lines 443–483. |
| **CL-06** | Verified: regularity implies finite actual source space and an isolated binary value; exact eventual target-projector rank with no extra binomial factor; exchange trace `(K+ηT)/2`; fixed-window quantifiers. | Main PDF p.52; CL.G, pp.148–150; appendix lines 485–561. |
| **CL-07** | Main theorem verified: eventual simple top chiral eigenvalue and `O(P^{-Δ})` residual bound; finite-family singleton inheritance; two-insertion multiplicity proliferation. Attached (CL.22) obstruction is correct for the intended self-adjoint comparator; the short proof needs that convention made explicit, or the broader repair in §8. | Main PDF p.53; CL.H, pp.150–152; appendix lines 563–644; narrow issue at lines 638–643. |
| **CL-08** | Verified conditional on the stated finite kernel input: refined positive Hausdorff limit, off-atom isolated multiplicities, exact eventual auxiliary nullity and a uniform positive gap. Exact rational identities and the all-`Q` transient bound were independently certified. | Main PDF p.54; CL.I–J, pp.152–156; appendix lines 646–896. |
| **CL-09** | Verified: branch-free holomorphic local uniform convergence on `C \ {-a_α}`, normal product, uniform compact-`s` trace-norm tail, isolated zero multiplicity. The explicit zero-power statement uses CL.J; ordinary determinant convergence does not. | Main PDF p.54–55; CL.K, pp.157–158; appendix lines 898–960. |
| **CL-10** | Verified: arbitrary fixed integer `Δ≥2`, rational parity tails, equal root counts and sums, finite Gamma products by analytic continuation, conservative `O(Q⁴)` root count. Both nonchiral symbolic-`t` identities were reconstructed; the displayed decimal was independently reproduced, not interval-certified. | Main PDF p.55–56; CL.L, pp.158–161; appendix lines 962–1109. |
| **CL-11** | Verified conditional on CL-08's zero separation: the `t=9` algebraic value is the least positive limiting value for either parity. Exact finite comparison plus a uniform analytic infinite-tail bound, not extrapolation. | Main PDF p.56; CL.M, pp.161–162; appendix lines 1111–1185. |

The [complete proof appendix](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/cluster/cluster_appendices.md>) contains all line locators in this table. **No CL id or proof subsection remains unread.**

## 3. Endpoint control, compact overlap and the atomic law

### 3.1 Why the endpoint estimate is an operator-norm statement

Use unit lowest vectors in `D_a^+`, with `R=L*` and `||R^r v_a||²=r!(2a)_r`. The binary vector

\[
\mathcal C_m(A,B)=\sum_{r=0}^{m}(-1)^r{m\choose r}
\frac{R_A^r A\otimes R_B^{m-r}B}{(2a)_r(2b)_{m-r}}
\]

has the norm in (CL.A2), obtained by a terminating Vandermonde sum. There is no hidden indefinite or coordinate metric in the subsequent overlap norm.

I checked the cited all-index Racah convention against [Crampé et al., arXiv:2403.12148v2, equations (2.2)–(2.5)](https://arxiv.org/html/2403.12148v2#S2): substitute `(c₁,c₂,c₃)=(2a−1,2b−1,2c−1)` and take the square-root weight normalization. It gives precisely the two `Ω` weights and the terminating `₄F₃` in (CL.A4)–(CL.A5). This is a named classical finite identity, not a theorem inferred from sampled recoupling matrices.

For fixed endpoint labels, its finite hypergeometric sum is `1+O(R^{-2})`. Writing the long Pochhammer ratio as Gamma functions gives

\[
\Omega(n;a,b,c;R)=c_n(a,b,c)R^{2a-2b-2c}(1+O(R^{-1})),
\]

so the normalized overlap is `O(R^{-2b})`. All factors are positive and nonsingular for the effective weights in this problem. Finite sets of labels have a common constant and threshold.

Now let `S,T` overlap without containing one another, and put `A=S\T`, `C=S∩T`, `B=T\S`. With cutoffs `L,M`, every nonzero common sector has

\[
p_A\le L,\qquad p_C\le\min(L,M),\qquad p_B\le M.
\]

These bounds are essential: they make **all** effective weights and multiplicity spaces a finite list. The overlap on union degree `J` is a finite rectangle of the three-effective-factor Racah matrix with middle weight

\[
c=|C|\Delta/2+p_C.
\]

The matrix operator norm is at most its Frobenius norm. The right sector also has finitely many bounded labels. Consequently

\[
\|E_S(L)E_T(M)\|_J\le C_{L,M,N,Q,\Delta}(1+J)^{-|C|\Delta}.
\]

This controls the entire degree block, not individual entries with an unbounded number of rows. Arbitrary multiplicity matrices cause no problem because they are outside the overlap estimate:

\[
XY=XE_SE_TY+(X-XE_S)Y+XE_S(Y-E_TY).
\]

Thus, for fixed finite cutoffs,

\[
\limsup_{J\to\infty}\|XY\|_J
\le\varepsilon(\|X\|+\|Y\|),
\]

and only then is `ε→0` taken. In the nested case the compact larger-cluster factor already controls the larger-degree tail. Products of partition factors can be grouped by connected overlap components by commuting **only disjoint** factors; induction then gives the join. This closes CL-02 without any unproved growing-cutoff estimate.

On global primaries, the one-block image is a direct sum of finite matrices with norms tending to zero, hence compact by finite-degree truncation. Proper-cluster images still have outer-relative copies and are not generally compact.

### 3.2 Hilbert–Schmidt estimates genuinely suffice for CL-01

For the distinguished-pair orthonormal source frame,

\[
T={N\choose2}F^*p_BF=I+2(N-2)R_1+{N-2\choose2}R_0,
\qquad B=D^{1/2}TD^{1/2}.
\]

The rectangular factorization `A=XX*`, `B=X*X` identifies **positive** eigenvalues, not kernels. For a pair-exchange unitary `U`,

\[
\|F^*UF\|_{HS}^2
=\operatorname{tr}(P_FUP_FU^*)
\le\operatorname{tr}(P_{12}^{bad}P_{U(12)}^{bad}).
\]

The inequality follows by positivity of `tr(XZ)` under either positive-factor enlargement, not by commuting the projections.

Disjoint bad pairs leave `N−2` effective factors, giving `O(P^{N−4})`. For an overlapping pair the three-particle degree `t` contributes a factor `O((1+t)^{-2Δ})`; convolution with `binom(P−t+N−4,N−4)` is again `O(P^{N−4})` because this sequence is summable. Therefore both `||T−I||²_HS` and `||B−D||²_HS` have the asserted order.

A bad label `(k,ℓ)` has the **full spectator level** count `H_{N−2}(P−k,Q−ℓ)`. The identity pole of the Molien series gives

\[
H_m(p,q)=\frac{{q+m-1\choose m-1}}{m!(m-1)!}p^{m-1}+O(p^{m-2}).
\]

All other permutations and nontrivial roots of unity have lower pole order. Hence the auxiliary dimension is of order `P^{N−3}`, with exactly the displayed coefficient `Z/((N−2)!(N−3)!)`. Every auxiliary zero costs an eigenvalue `−1` of `T−I`, so its count is `O(P^{N−4})`.

Hoffman–Wielandt matching divided by the auxiliary dimension gives squared transport cost `O(P^{-1})`. Removing auxiliary zeros and replacing finite weights by their leading coefficients costs the same order because every spectrum lies in a common bounded interval. This establishes the `W₂` rate and outlier count. The primary dimension is one higher power of `P`; summing primary versus positive-rank asymptotics separately gives precisely the two descendant laws. The proof does not confuse spectator primaries with spectator levels or positive auxiliary nullity with physical saturation.

## 4. Connected calculus and the recursive spectral sets

For an ordered pair word, form its graph-component partition `γ`. Its coefficient in the connected Möbius sum is

\[
\sum_{\pi\ge\gamma}\mu(\pi,1_N)=\mathbf1_{\gamma=1_N}.
\]

A connected surviving word belongs to the compact one-block algebra. Fewer than `N−1` edges cannot connect `N` vertices. At exactly `N−1` edges the words are ordered spanning trees, yielding `(N−1)!N^{N−2}a_{00}^{N−1}` on the labelled ground vector. This reconstructs both the exact cancellation and the first permitted resolvent coefficient. Uniform polynomial approximation extends the result to continuous functions. For a real resolvent parameter in a spectral gap, continuous interpolation is performed only in that gap.

The physical upper bound inserts the reducing internal Bose projection `Q_π`, with `Q_πp_B=p_B` and `[Q_π,H_π]=0`. Thus cluster spectra may be used **after** internal Bose reduction. No identity of the form `f(pHp)=pf(H)p` for an arbitrary compression is needed.

A continuous function supported away from proper-cluster sums kills every proper-partition term; its full `f(A_N(P,Q))` norm tends to zero. This excludes an entire high-degree spectral window, not just states missing from a trial subspace.

The quotient argument is also correctly normalized. For the stabilizer of a `k`-block partition, averaging the intervening group element gives

\[
(p_BXp_B)(p_BYp_B)\equiv m_\pi^{-1}p_BXYp_B
\pmod{\mathfrak F_{k-1}},\quad m_\pi=N!/|H_\pi|.
\]

Distinct conjugate cuts join into fewer blocks. Hence multiplication by `m_π` gives the quotient star homomorphism, without a faithfulness assumption or fictitious right-budget sectors.

### Binary lower inclusion and parity

Normalized binary coupling has unique relative degrees

\[
L=P-p_1-p_2,\qquad R=Q-q_1-q_2.
\]

The source Hamiltonian is exactly the sum of the two **ordered residuals**; the relative right degree adds no scalar term. For a fixed finite source, a cross pair multiplied by its finite internal cutoff is one-block compact. Hence its residual tends to zero uniformly on that source.

For different unordered cuts, the product of their cutoff projections is compact because their join is the full particle set. The finite Bose Gram matrix therefore approaches the stabilizer contribution. For unequal cuts it is `m_π^{-1}I+o(1)`. Rescaling by `sqrt(m_π)` and polar correcting produces an actual isometry; the correction does not change the vanishing residual.

For equal sizes, define `D e_i=(-1)^{p_i+q_i}e_i` on actual internal eigenstates. The exact cluster-swap relation gives

\[
J=(D\otimes D)\operatorname{Swap}
=(I\otimes D)\operatorname{Swap}(I\otimes D).
\]

Bose projection retains `J=(-1)^{P+Q}`. The conjugation preserves energy and the right budget, so the allowed source is the symmetric or exterior square of the **state space**, not the set of distinct energies. A degenerate energy with two independent states legitimately appears in the exterior square; one state repeated twice does not.

Merging several clusters using these binary embeddings reduces every proper-partition sum to a binary sum. Finite nets in the compact target set then upgrade pointwise source constructions to the exact stated Hausdorff limits. For even `N`, finer cuts already lie in an unequal cut; the equal-cut terms retain the exact `J` restriction in the upper-bound argument. This is the missing ingredient in many informal parity arguments, and it is present here.

The direct-sum essential-spectrum assertion follows separately: finite blocks are finite-dimensional; a sequence of eigenvectors in distinct degrees is orthonormal and gives the required singular sequence. Infinite repetition is essential spectrum even when it is not a derived-set point.

### Finite depth

For compact sets,

\[
(K+L)^{(r)}\subseteq\bigcup_{i+j=r}(K^{(i)}+L^{(j)}).
\]

A derived point of the full finite-block union requires unbounded internal left degree and therefore belongs to a proper-cluster sum. For finite Einstein pair support, differentiating the binary recursion `N−3` additional times kills every split with both sizes at least two: one derivative index must be at least its factor's empty-set threshold. Only singleton inheritance survives, leaving the finite pair-atom set at derivative `N−2`. One further derivative is empty. For a general `c₀` pair sequence the two-body derivative is `{0}` rather than empty; the same induction shifts by one. This proves CL-05, including its generalization, with no scan-based inference.

## 5. Regular-source finiteness and exact multiplicity

The local finiteness proof is substantive. Choose a closed interval `J` around a regular value disjoint from the compact finer-cluster set. If the binary source spectral subspace in `J` were infinite-dimensional, its finite right budget and finite-dimensional fixed-degree blocks would force an unbounded left internal degree on at least one nonsingleton side. Taking convergent energy subsequences and applying the lower-particle high-degree upper theorem splits that side into at least two clusters. With the other side, the limiting sum lies in the forbidden finer-cluster set. This contradiction proves finite **state** dimension, including repeated identical numerical energies.

After shrinking the interval, the only binary source energy is the target `λ`. Choose a continuous cutoff `f` that is one near `λ` and zero on other cluster energies. The connected identity now reads on the entire target block

\[
f(A_N)=\sum_{[\pi]}m_\pi p_BE_\pi p_B+o_{op}(1)=V_PV_P^*+o_{op}(1).
\]

The joint source Gram matrix is `V_P*V_P=I+o(1)`. Its polar isometry gives a projection `R_P` with the source rank and

\[
\|V_PV_P^*-R_P\|=\|V_P^*V_P-I\|\to0.
\]

The global upper inclusion excludes target eigenvalues in the transition intervals of `f`; thus `f(A_N)` is eventually the **exact** fixed-window spectral projection. Norm distance below one then proves equality of ranks, not merely a variational lower bound.

For the equal source, the trace of `J` only receives tensors `e_i⊗e_i`. Their degree twist is one. Consequently `tr J=T` and the allowed dimension is `(K+ηT)/2`, precisely (CL.18). Labelled-cut orbit factors have already been absorbed into Gram normalization and cannot multiply this final dimension. Neither unused right degree nor cluster permutation supplies another physical multiplicity.

## 6. Singleton inheritance, the chiral maximum and proliferation

A singleton cross pair overlaps the fixed internal source in one leaf, giving `O(P^{-Δ})`, while exchanging the singleton placement compares clusters with `N−2` common leaves, giving Gram error `O(P^{-(N−2)Δ})`. The polar correction is therefore no worse than the residual error for `N≥3`. This supplies the stated finite-family norm estimate, with family-dependent constants.

At `Q=0`, `0<a₂<a₀` and each pair is bounded by `a₀I`. Equality in the sum forces every pair into channel zero. The Casimir identity

\[
\sum_{i<j}C_{ij}=C_{\mathrm{tot}}+(m-2)\sum_i C_i
\]

then gives `p(mΔ+p−1)=0`, hence the unique `p=0` state. Crucially, equality on individual finite blocks does not alone exclude an endpoint in the closure. The high-degree upper theorem bounds every such limit by `binom(m−1,2)a₀`, strictly below `binom(m,2)a₀`; this supplies the needed closure gap.

The largest `N`-body binary value is therefore uniquely the `1+(N−1)` ground source, and the finer-cluster maximum is lower by `(N−2)a₀`. CL-06 supplies eventual rank one, the global upper theorem makes that eigenvalue the maximum, and the explicit singleton residual supplies the rate. There is no unsupported claim of a nonzero leading shift or small-degree simplicity.

For proliferation, choose any finite number `K` of mutually orthogonal, distinct-degree `(m+1)`-body source states approximating a fixed positive `m`-body energy. Only after fixing that family is the final singleton limit taken. Its isometric images have an injective target spectral projection in the desired fixed neighborhood for all sufficiently large `P`. Since `K` is arbitrary, the count tends to infinity. No uniform rate in `K` or growing-family endpoint estimate is assumed.

## 7. Four-body comparison, exact nullity and the Fredholm theorem

### 7.1 Finite sections: the factors two and four are consistent

Enlarge the auxiliary source by leaving the two spectators unsymmetrized. With `H_P=(I+U₃₄)/2`, the triple exchange is the block diagonal matrix

\[
R=\bigoplus_{t,u}R_{3;t,u},\qquad
A_{3;t,u}^{aux}=D_{t,u}^{1/2}(I+2R_{3;t,u})D_{t,u}^{1/2}.
\]

There are only finitely many bad labels at fixed `Q`; the endpoint estimate gives

\[
\|R_{3;t,u}\|_1\le C_{Q,\Delta}(1+t)^{-\Delta},\qquad
\sum_{t>T,u\le Q}\|R_{3;t,u}\|_1=O(T^{1-\Delta}).
\]

The four-body matrix is

\[
B_{P,Q}=D+4H_PD^{1/2}RD^{1/2}H_P+W_PK_{22}^{\epsilon}W_P^*.
\]

For a fixed triple cutoff `E_T`, the overlap `E_TU₃₄E_T` tends to zero, not the full involution `U₃₄`. Thus `sqrt(2)H_PE_T` is asymptotically isometric. It is also asymptotically orthogonal to the finite bad-pair–bad-pair sector. The resulting map `Y_{P,T}` has Gram `I+o(1)`.

Both maps preserve the distinguished pair label, so they intertwine `D` exactly. Their Gram and polar correction commute with the source diagonal matrix. Consequently the polar isometry yields the direct-sum comparator

\[
U_{P,T}\left[\bigoplus_{t\le T,u\le Q}A_{3;t,u}^{aux}\oplus A_{22}^{\epsilon}\right]U_{P,T}^*
 +D(I-U_{P,T}U_{P,T}^*)
\]

with operator-norm error `O(sup_{t>T,u}||R_{3;t,u}||)+o_{P,T}(1)`. The triple coefficient becomes two because the source map contains `sqrt(2)`. No multiplicity factor is missing. The diagonal complement retains unboundedly many copies of each pair atom.

The distinct pair-pair block has eigenvalues `0,a_α+a_β`; a repeated label has `(1+ε)a_α`. These are state/channel, rather than distinct-energy, counts. Fixed sections give the off-atom isolated multiplicities. They do **not** by themselves exclude positive eigenvalues approaching zero.

### 7.2 The nullity step closes exactly that gap

From the finite Molien and oriented kernel series,

\[
Z_3=\frac{\mathcal B}{(1-x)(1-y)}-\mathcal M_3+\mathcal K_3,\qquad
Z_4=\frac{\mathcal B\mathcal M_2}{(1-x)(1-y)}-\mathcal M_4+\mathcal K_4.
\]

I generated the partition sums for `M₃,M₄` independently in exact rational arithmetic. The full bivariate identity (CL.J5) holds. At each fixed right degree it is a polynomial in `x` of degree at most `2u+7`, hence only finitely many triple auxiliary blocks have zeros.

I also computed the exact rational remainder

\[
\left(Z_4-\frac{C(y)}{1-x}-\frac{E(y)}{1+x}\right)
 (1-xy)(1-x^2y)(1-x^3y).
\]

Its denominator is independent of `x` and its numerator has `x` degree **15**. This is an algebraic certificate for every `Q`: the remainder contributes nothing for `P>15+3Q`. It is not an extrapolated coefficient table. The two parity nullities reproduce `7,9` at `Q=0` and `64,68` at `Q=2`.

Past a fixed triple cutoff, triple matrices are bounded below by `a_min/2`. The finitely many remaining positive comparator values have a positive minimum, and all comparator zeros are included. Norm closeness makes the target and comparator zero-window spectral projections have the same rank. The target's **exact nullity** already equals that rank. Since the target is positive, no additional positive eigenvalues can enter that window. This proves the uniform gap and the positive-set Hausdorff statement in CL-08. Replacing this argument by positivity or full-spectrum norm convergence would be invalid; the manuscript does not do so.

### 7.3 Complex Fredholm convergence requires trace norm, and has it

For compact `K⊂Ω_Q`, put `ρ_K=min_{s∈K,α}|s+a_α|>0`. Use the branch-free factor

\[
\mathcal F_{P,Q}(s)=\det\bigl(I+(s+D)^{-1}(B_{P,Q}-D)\bigr).
\]

The discarded triple tail has uniformly bounded normalized trace norm

\[
\frac{4\|D\|}{\rho_K}\sum_{t>T,u\le Q}\|R_{3;t,u}\|_1
=O_K(T^{1-\Delta}).
\]

For fixed `T`, polar-corrected source/target differences tend to zero in trace norm because the source dimension is fixed. Exact diagonal intertwining lets `(s+D)^{-1}` pass through the isometry, uniformly in `s∈K`. The trace-class determinant continuity bound converts these two estimates into locally uniform convergence. One takes `P→∞` at fixed `T`, then `T→∞`; no growing-cutoff uniformity is asserted.

The tail factors differ from one by a normally summable sequence on every such compact set. Positive real `s` shows the limit is not identically zero. Rouché then counts isolated zeros away from the excluded atoms. The fixed exact zero power can be divided out using holomorphic convergence/Cauchy estimates once CL.J is supplied. A complex square-root normalization or an unspecified logarithm branch is unnecessary and would not substitute for this proof.

The explicit tail antiderivative in (CL.K5) is correct:

\[
\frac{(\Delta)_t}{(2\Delta)_t}\frac{t+2\Delta-1}{\Delta-1}
-\frac{(\Delta)_{t+1}}{(2\Delta)_{t+1}}\frac{t+2\Delta}{\Delta-1}
=\frac{(\Delta)_t}{(2\Delta)_t}.
\]

Its endpoint vanishes exactly in the required `Δ>1` range. At bounded channels the remaining factors are explicitly bounded finite rational expressions or their positive square roots. This is sufficient for a computable tail constant; it is not a claim that arbitrary `c₀` cluster interactions are trace class.

## 8. One local proof clarification and concrete repairs

Location: [main (CL.22):400–408](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/cluster/cluster.md#L400-L408>), PDF p.53; [short proof:638–644](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/cluster/cluster_appendices.md#L638-L644>), PDF p.152.

The displayed hypotheses explicitly call `K_P` self-adjoint but only impose `σ(D_P)⊂{a₀,a₂}` on `D_P`. The proof uses `⟨x,D_Px⟩≤a₀||x||²`. A spectral inclusion alone does not imply this for a nonnormal matrix: an upper triangular matrix with diagonal `a₀` and a large off-diagonal entry already has numerical range extending beyond `a₀`.

**Minimal repair:** say “`D_P` is self-adjoint (in particular, the diagonal pair-atom comparator)”. Then the given min–max proof is complete. This is consistent with all earlier diagonal comparators and is probably the intended convention.

**Stronger repair, if nonnormal comparators are deliberately allowed:** the obstruction still follows, but use the following argument instead of that min–max step.

1. By CL-04/05, the full high-degree spectral upper limit is a compact countable set. Choose an interval around the inherited value `3a₀`, entirely above `a₀`, whose two endpoints have small open neighborhoods disjoint from that set. Such choices exist even if `3a₀` is itself an accumulation point.
2. For all sufficiently large `P`, `A_P=A_N^+(P,0)` has no spectrum in these endpoint neighborhoods and has an unbounded eigenvalue count inside the interval.
3. Uniform compactness and self-adjointness of `K_P` give, for any fixed sufficiently small `δ`, a decomposition `K_P=K_P^{(r)}+T_P` with `rank K_P^{(r)}≤r` uniformly in `P` and `||T_P||≤δ`. No uniform bound on the large singular values is needed.
4. Interlacing for the finite-rank perturbation and norm control of `T_P` imply that `H_P=A_P-K_P` still has unboundedly many interior eigenvalues, but only at most `2r` eigenvalues in suitably trimmed endpoint gaps. Choose the two contour endpoints within those gaps a fixed positive distance from these finitely many eigenvalues. The distance can be chosen uniformly in `P`, since `r` is fixed.
5. Surround that interval by a fixed-height rectangle. Because `H_P` is self-adjoint, its resolvent is uniformly bounded on these contours. In `D_P=H_P-E_P`, `||E_P||→0` therefore implies norm convergence of the Riesz projections, regardless of whether `D_P` is normal. Their ranks agree eventually.
6. The `H_P` projection has unbounded rank, whereas `σ(D_P)⊂{a₀,a₂}` makes its projection on this rectangle zero. Contradiction.

Thus the broad obstruction can be completed from the manuscript's other proved results; this audit does **not** label CL-07 false. The local written proof should either declare the intended self-adjointness or use this replacement. No input text was edited.

## 9. Gamma reduction and the certified minimum

For integer `Δ≥2`, the long Gamma ratio in `Ω_n(t)` becomes the finite rational denominator `(t+Δ−n)_{Δ+2n}`. The terminating Racah sum is rational as well. The determinant identity `det(I+XY)=det(I+YX)` removes all square roots before taking the determinant. A common denominator has degree `Δ+4(u+2)` per entry; multiplying by the `O(u²)` matrix size and summing over `u≤Q` gives the conservative `O(Q⁴)` bound.

The rational factor tends to one, and its correction is `O(t^{-Δ})`. Therefore, after cancellation, numerator and denominator are monic with equal degree and equal root sums. The finite arithmetic-progression product is an exact Gamma ratio; the equal degrees cancel powers of two, and equal root sums cancel the limiting power of the cutoff. Symmetry in each root multiset plus the already-holomorphic determinant supplies continuation through collisions and removable specializations. This is a proof for every fixed integer `Δ≥2`, not a fit to the `Δ=2` example.

I reconstructed both `u=1, Δ=2, s=20` four-by-four determinants from the finite Racah sums as rational functions of symbolic `t`. Both equal the complete printed degree-ten polynomials in `C=(t+2)(t+3)` with denominator `49512859 C⁴(C−12)(C−6)²(C−2)³`. The actual admissible finite blocks give all three printed prefixes. Separate 250- and 350-bit Gamma evaluations give

\[
\log\mathcal F_1^+(20)
=-0.03585462866989608117295310521438741375902240815406055763950798142707954069\ldots.
\]

The displayed manuscript value agrees through the tested 55 decimals. This is independent high-precision numerical support, **not an interval certificate**, as the manuscript correctly says.

For CL-11, the independent exact calculation yields the `t=9` characteristic polynomial

\[
x^2-\frac{3654200}{825825}x+\frac{124032}{825825}.
\]

Its smaller root is `(33220−4 sqrt(66856729))/15015`, positive and below `7/200`. All other positive roots for `2≤t≤128` exceed `7/200`; exact zero determinants occur at `t=2,3,4,5,7`, and their remaining positive roots also exceed that threshold. The `t=0` value is `3a₀`, and `t=1` is auxiliary zero.

For **every** `t≥129`, the monotone-factor bounds in (CL.M3), followed by the row-sum estimate, give exactly

\[
\|R_{3;t,0}\|\le\frac{18595}{2397824}<\frac1{100},\qquad
A_{3;t,0}^{aux}\ge\frac{116}{875}I>\frac7{200}I.
\]

I independently checked these rational constants. The argument bounds the whole infinite tail analytically; the finite loop is not asked to establish the tail. Pair atoms and positive pair-pair sums exceed the same threshold. CL-08's uniform positive gap then makes the minimum continuous under the positive Hausdorff limit, proving CL-11 for both parities.

## 10. Fresh verification record and limits of the verdict

Two new, self-contained programs were executed in separate fresh Sage kernels; neither imports manuscript recoupling code or old audit code:

- [Exact audit program](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/audit2_cluster_exact.py>) → [685 passed exact checks](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_cluster_exact.json>). These include 280 polynomial CG overlap-square checks at total degree 0–6 for equal weights `(1,1,1)` and unequal weights `(3/4,5/4,7/4)`, 140 exact physical leaf-transposition sign checks, symbolic bivariate nullity identities and transient degree certificate, arbitrary-parameter ordered-baseline and tail-telescoping identities, symbolic chiral determinant identities, the finite minimum comparison and its analytic-tail constants.
- [Gamma/nonchiral audit program](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/audit2_cluster_gamma.py>) → [exact identities and independent numerical results](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_cluster_gamma.json>). Five exact rational checks and two numerical cross-precision checks passed. Normalized polynomial-root residuals were below about `4.5×10^{-76}` and `6.4×10^{-106}` at 250 and 350 bits respectively; these are diagnostics, not rigorous decimal enclosures.

The finite CG checks guard normalization and phase mistakes; the all-index Racah identity and the analytic tail estimates carry the universal quantifiers. The rational nullity remainder, in contrast, really is an all-`Q` certificate because its exact denominator and degree were established symbolically.

### What remains conditional or unproved here

1. **Finite-theory inputs:** this audit does not re-prove the physical pair multiplier, the full finite Bose/Gram compiler, or EX-01's collision-kernel classification. The formulas needed by the cluster proof are explicitly identified in §1. If a separate audit cannot establish the `K₃,K₄` input, retain CL-08's zero-separation and CL-11 as conditional; repair by proving those two Hilbert series or an equivalent exact eventual auxiliary-nullity formula. Do not discard CL-09's trace-norm product merely because that separate dependency is unresolved.
2. **The local CL.22 convention:** repair as in §8. The main CL-07 theorem has no corresponding gap.
3. **Not asserted by these claims:** uniformity in growing `N,Q,Δ`; a balance-regime fixed-`Q` law; rates for growing source families or shrinking spectral windows; an effective uniform cluster cutoff `R(ε)`; a single-copy operator-norm comparison for the five-body countable set construction; generic Schatten membership; excluded-atom root multiplicities; a noninteger-`Δ` finite Gamma formula; interval certification of the displayed decimal; or a uniform nonzero-`G` perturbative expansion.

Apart from the precisely identified comparator convention/proof clarification, **no unresolved internal operator-theoretic gap was found in the CL proofs under their declared inputs**. All eleven CL ids have an explicit audited proof route; none was defaulted to “passed” because its finite script ran.
