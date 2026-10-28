# ADS3 hierarchical spectrum: complete new proof appendices

完整证明附录 · 2026-10-19

本文件完整收录本轮六份数学证明与三份独立审查记录。没有将证明摘要替代全文。英文保留原推导记号；中文主报告使用 H1–H6、S1–S4、U1–U3 对照。附录之间的局部节号与 equation tags 各自独立。

证明所使用的前轮输入仍是前轮成果，不在此重复计为新定理。研究包保存原路径下的相关旧报告、证明和只读后端副本。

最终排版扫描修复了五处本轮文档中的 carriage-return/LaTeX escape；它们均为字面 \rm even，数学内容未改变。

## Contents

- **Appendix A:** Chiral partition algebra and five-body comparison. Source: cluster/PARTITION_ALGEBRA_AND_FIVE_BODY_HVZ.md.
- **Appendix B:** All fixed-Q partition recursion and Bose parity. Source: cluster/ALL_FIXED_Q_PARTITION_RECURSION.md.
- **Appendix C:** Exact regular isolated multiplicities and the top chiral branch. Source: cluster/ISOLATED_CLUSTER_MULTIPLICITIES.md.
- **Appendix D:** Exponential soft spectrum and mass comparison. Source: soft/EXPONENTIAL_SOFT_SPECTRUM.md.
- **Appendix E:** The joint three-particle near-balanced boundary layer. Source: soft/N3_JOINT_BOUNDARY_LAYER.md.
- **Appendix F:** Universality layers and affine-defect chiral phases. Source: universality/UNIVERSALITY_LAYERS_AND_CHIRAL_PHASES.md.
- **Appendix G1:** Final independent adversarial audit. Source: audit/FINAL_ADVERSARIAL_AUDIT_RECORD.md.
- **Appendix G2:** Partition-algebra audit. Source: audit/PARTITION_CLUSTER_ALGEBRA_AUDIT.md.
- **Appendix G3:** Soft flag-transfer audit. Source: audit/SOFT_FLAG_TRANSFER_AUDIT.md.


---

# Appendix A: Chiral partition algebra and five-body comparison

Source SHA-256: 21e23db90d59edee798859a415d9c41d9e8ac7d480805a8beec7fc834d785f70.

## A recursive partition cluster theorem for the chiral Einstein spectrum

**Research status.** New hierarchy-round proof, 19 October 2026. This document treats the already established Einstein scalar pair operator at order `G`, with `Q=0`, `d=Delta>1`, and the original quantum prescription. It does not independently rederive the gravitational reduction. All prior research files are read-only inputs. The new assertion is a recursive spectral **upper bound and matching lower bound for every particle number**, including exact Bose parity selection. The five-body limit is a particularly explicit instance. This is stronger than singleton quasimodes and is not a new matrix representation.

The complete finite-`P` spectrum, a complete multiplicity classification at every limiting value, a five-body Fredholm determinant, and exclusion of additional positive eigenvalues tending to zero remain separate questions. In particular, the limiting set below includes zero; it must not be advertised as an answer to the last of these questions.

### 1. Statement

Put `h=d/2` and

\[
a_0=\frac{2d^2(2d+5)}{(2d-1)(2d+1)},\qquad
a_2=\frac{4d}{(2d+1)(2d+3)}.
\]

On the physical chiral primary space `V_m^B(p)`, write

\[
A_m(p)=\sum_{i<j}\bigl(a_0P_{ij,0}+a_2P_{ij,2}\bigr),
\qquad
W_m(p,0)= -2m(m-1)d^2I+A_m(p).
\tag{1.1}
\]

The pair expression also specifies the permutation-invariant positive extension to labelled states, with zero residual on odd pair channels. Define compact spectral sets

\[
\Sigma_m=\overline{\bigcup_{p\ge0}\sigma(A_m(p))},
\quad\Sigma_1=\{0\},\quad
\Sigma_2=\{0,a_0,a_2\}.
\tag{1.2}
\]

Empty primary spaces make no contribution. The closure in (1.2) is essential: it includes limits of internal cluster excitations, rather than only fixed finite-degree eigenvalues.

**Theorem 1.1 — five-body chiral Hausdorff limit.** For every fixed `d>1`,

\[
\boxed{
\lim_{P\to\infty}^{\rm Hausdorff}\sigma(A_5(P))
=\mathfrak S_5
:=\Sigma_4\ \cup\ \bigl(\Sigma_3+\{0,a_0,a_2\}\bigr).
}
\tag{1.3}
\]

The limit is along **all sufficiently large integer `P`**, without taking a parity subsequence. In particular, the graded direct sum satisfies

\[
\sigma_{\rm ess}\!\left(\bigoplus_{P\ge0}A_5(P)\right)=\mathfrak S_5.
\tag{1.4}
\]

The two maximal channels are the actual physical `4+1` and `3+2` cluster operators. Neither can be replaced by the two leading atoms. Their overlaps and the overlaps of all finer partitions enter a concrete finite filtration proved below.

**Theorem 1.2 — all-particle cluster recursion.** Let `N>=2`. Define

\[
\mathfrak C_N=\overline{\bigcup_{\substack{\pi\text{ a partition of }[N]\\ |\pi|\ge2}}
\ \sum_{S\in\pi}\ \bigcup_{p_S\ge0}\sigma(A_{|S|}(p_S))}.
\tag{1.5}
\]

All internal spectra in (1.5) are **Bose spectra**. Then

\[
\boxed{
\mathfrak C_N=
\bigcup_{m=1}^{\lfloor N/2\rfloor}(\Sigma_m+\Sigma_{N-m})
=\sigma_{\rm ess}\!\left(\bigoplus_PA_N(P)\right)
=\lim_{\substack{P\to\infty\\P\ {\rm even}}}^{\rm Hausdorff}\sigma(A_N(P)).
}
\tag{1.6}
\]

If `N` is odd, the Hausdorff limit holds along all sufficiently large integer `P`. The proof does not insert labelled cluster irreducible representations as additional physical branches.

For completeness, even particle numbers have the following exact parity refinement. Let `N=2m>=4`,

\[
\mathcal U_N=\bigcup_{a=1}^{m-1}(\Sigma_a+\Sigma_{N-a}),\qquad
\mathcal H_m^{\rm prim}=\bigoplus_{s\ge0}V_m^B(s),\qquad
\mathcal A_m^{\rm prim}=\bigoplus_{s\ge0}A_m(s).
\]

Define `E_m^+` and `E_m^-` to be the spectra of the additive lift
`A_m^prim tensor I + I tensor A_m^prim` on `Sym^2 H_m^prim` and
`Lambda^2 H_m^prim`, respectively. If `(lambda_i)` is its internal
orthonormal eigenstate list, with degree labels and multiplicities retained,

\[
E_m^+=\Sigma_m+\Sigma_m,\qquad
E_m^-=\overline{\{\lambda_i+\lambda_j:i<j\}}.
\tag{1.7}
\]

Here `i<j` excludes the same source vector twice; it does not exclude two
independent eigenvectors with the same eigenvalue. For `eta=+1,-1`,

\[
\boxed{
\lim_{\substack{P\to\infty\\(-1)^P=\eta}}^{\rm Hausdorff}\sigma(A_{2m}(P))
=\mathcal U_{2m}\cup E_m^\eta.
}
\tag{1.8}
\]

The `N=2` odd-degree primary spaces are empty, so (1.8) is stated only for
`N>=4`. Its even-degree limit is `{0}`, as (1.6) says.

**Theorem 1.3 — finite accumulation depth.** The prime below is the
Cantor–Bendixson derivative of a compact spectral **set**, meaning its
distinct-point accumulation set; it does not count repeated eigenvalues.
For every `N>=2`,

\[
\boxed{\Sigma_N^{(N-2)}\subset\{0,a_0,a_2\},\qquad
\Sigma_N^{(N-1)}=\varnothing.}
\tag{1.9}
\]

For `N>=3`, also `C_N^(N-2)=empty`. Hence the closure of the full chiral
primary spectrum at each fixed particle number is a countable compact set
of finite accumulation depth. No interval or perfect subset can occur in
this fixed-`N,Q=0` spectrum closure. The depth bound is not asserted to be
sharp, and it does not bound spectral multiplicities.

### 2. Why the relevant local algebra is a block-diagonal compact algebra

For a subset `S` of `m` labelled leaves, positive-discrete series addition gives

\[
(D_h^+)^{\otimes m}=\bigoplus_{p\ge0} V_S(p)\otimes D^+_{mh+p},
\quad \dim V_S(p)=\binom{p+m-2}{m-2}\quad(m\ge2).
\tag{2.1}
\]

A singleton has only `V_S(0)=C`. Every globally covariant internal operator acts on the multiplicity factors and as the identity on the irreducible descendant module. The algebra used here is

\[
\mathcal C_S=c_0\!\operatorname{-}\bigoplus_{p\ge0}\operatorname{End}V_S(p).
\tag{2.2}
\]

This is not the full compact algebra on `direct_sum_p V_S(p)`: off-diagonal operators mixing different `p` are excluded. The corresponding irreducible weights are different. A finite internal cutoff means finitely many entire multiplicity blocks, including all their descendants when embedded into a larger tensor product.

Work on the labelled primary Hilbert space

\[
\mathcal H_N=\bigoplus_{P\ge0}V_N(P).
\tag{2.3}
\]

Operators (2.2), extended by identities on the other leaves, preserve total primaries and act boundedly on (2.3). For a partition `pi={S_1,...,S_k}`, let

\[
\mathcal C_\pi=\bigotimes_{j=1}^k\mathcal C_{S_j}.
\tag{2.4}
\]

It acts as the identity on relative coupling multiplicities between the blocks. More explicitly,

\[
V_N(P)=\bigoplus_{\sum p_j\le P}
\left(\bigotimes_jV_{S_j}(p_j)\right)
\otimes V_k\bigl(P-\sum p_j;\ |S_j|h+p_j\bigr).
\tag{2.5}
\]

The norm of an element of (2.4) is its internal block supremum. Formula (2.5) provides an actual operator realization of the partition algebra; no abstract many-body analogy is used in place of this map.

The one-block partition has

\[
\mathcal C_{[N]}=c_0\!\operatorname{-}\bigoplus_P\operatorname{End}V_N(P),
\tag{2.6}
\]

exactly the compact operators among the degree-preserving block matrices. The discrete partition gives `CI`.

### 3. Overlapping cluster compactness: all bounded labels are accounted for

For `S`, let `E_S(L)` project onto internal degrees `p_S<=L`, with all internal multiplicities. The following is the analytic input.

**Lemma 3.1.** If `S` and `T` intersect, then

\[
\mathcal C_S\mathcal C_T\subset\mathcal C_{S\cup T}.
\tag{3.1}
\]

**Proof.** If one set is contained in the other, the larger cutoff bounds the total union degree; finite-cutoff products are already supported on finitely many union degrees. Otherwise set

\[
A=S\setminus T,\quad C=S\cap T,\quad B=T\setminus S.
\]

All three are nonempty. Internal Casimirs of `A`, `B`, and `C` commute with both `E_S(L)` and `E_T(M)`: each group is either nested inside or disjoint from the relevant larger group. On the support of their product, the internal degrees satisfy

\[
p_A\le L,\quad p_B\le M,\quad p_C\le\min(L,M).
\tag{3.2}
\]

For example, `E_S(L)` forces `p_A+p_C<=L`, and the `A` cutoff commutes through `E_T(M)`. Thus (3.2) holds on both sides of the product. All group multiplicity labels in (3.2) range over finite sets; none is silently allowed to grow with the union degree.

Fix such labels. Put

\[
h_A=|A|h+p_A,\quad h_C=|C|h+p_C,\quad h_B=|B|h+p_B.
\]

The only remaining overlap is between the two coupling schemes `((A C)_u B)` and `(A (C B)_v)` at union relative degree `R`, where `u<=L-p_A-p_C` and `v<=M-p_C-p_B` are bounded. Its matrix entries are normalized positive-discrete Racah coefficients

\[
F_{uv}^{(h_A,h_C,h_B;R)}=O(R^{-2h_C}).
\tag{3.3}
\]

For completeness, this follows directly from the terminating normalized `4F3`: its number of terms is fixed, every nonconstant term is `O(R^{-2})`, and the two gamma-ratio normalization factors have product square root `R^{-2h_C}(C_{uv}+O(R^{-1}))`. All weights and endpoints here belong to a finite family, so the estimate is uniform over precisely the block matrix being considered. In particular

\[
\|E_S(L)E_T(M)|_{V_{S\cup T}(J)}\|\longrightarrow0\quad(J\to\infty).
\tag{3.4}
\]

Internal multiplicity spaces only repeat these finitely many scalar overlaps. For cutoff-supported `X` and `Y`, `XY=X E_S(L)E_T(M)Y`, so (3.4) proves (3.1). Approximation in the `c0` norm removes the cutoffs. `d>1` implies all effective weights exceed `1/2`; no endpoint singularity is present. QED.

The general Racah endpoint formula and gamma-ratio derivation were independently established in the earlier Deep note, Lemma 2.1. The new use here is the uniform finite-label reduction (3.2) for arbitrary overlapping subsets, including all internal multiplicities.

**Corollary 3.2 — partition multiplication.** Write `pi vee tau` for the partition obtained by joining intersecting blocks. Then

\[
\mathcal C_\pi\mathcal C_\tau\subset\mathcal C_{\pi\vee\tau}.
\tag{3.5}
\]

To verify the product order, first take simple tensor products. Multiply a new `T` factor from `tau` into the existing disjoint factors of `pi`. Those disjoint from `T` commute past it. Merge the remaining factors, from right to left, with Lemma 3.1: each intersects `T` and therefore the growing union. Repeat for the other `tau` factors. Norm closure proves (3.5). This argument does not presume that overlapping local operators commute.

Thus any finite word of pair residuals whose edge graph is connected belongs to (2.6), and its norm on `V_N(P)` tends to zero. Disconnected words retain the corresponding proper cluster partition.

### 4. Primary upper proof: a Möbius functional-calculus recursion

The first proof of the all-particle upper inclusion uses connected-word compactness, elementary partition Möbius inversion, and continuous functional calculus. The filtration proof in Sections 5–6 is retained as an independent check. The functional-calculus identity is a concrete recursion beyond a new matrix representation.

Order partitions by refinement and write `1_N` for the one-block partition. Its Möbius function is

\[
\mu(\pi,1_N)=(-1)^{|\pi|-1}(|\pi|-1)!.
\tag{4.1}
\]

Define the labelled internal operator `H_pi=sum_{S in pi} A_{|S|}^{(S)}`. For a continuous scalar function on `I_N=[0,binom(N,2)a0]`, define

\[
\mathfrak M_N(f)=\sum_{\pi}\mu(\pi,1_N)f(H_\pi).
\tag{4.2}
\]

**Theorem 4.1 — connected functional calculus.** For every fixed `N>=2` and `d>1`,

\[
\boxed{\mathfrak M_N(f)\in\mathcal C_{[N]}\qquad(f\in C(I_N)).}
\tag{4.3}
\]

In particular its operator norm on the total-primary block tends to zero as `P->infinity`. For polynomial `f` of degree at most `N-2`, (4.2) is exactly zero at **every** finite total degree.

**Proof.** First take `f(x)=x^r`. Expanding `H_pi^r` gives ordered words of `r` pair operators. A word with edge-graph partition `gamma` occurs exactly for `pi>=gamma`. Its total coefficient in (4.2) is

\[
\sum_{\pi\ge\gamma}\mu(\pi,1_N)=\mathbf1_{\gamma=1_N}.
\tag{4.4}
\]

Thus only connected words survive, and Corollary 3.2 puts each in `C_[N]`. If `r<N-1`, there is no connected graph on all `N` leaves, so no word survives. The constant term also cancels for `N>=2`. For general continuous `f`, approximate uniformly by polynomials on `I_N`; the norm of the linear map (4.2) is at most `sum_pi |mu(pi,1_N)|`. Closedness of `C_[N]` proves (4.3). QED.

On the actual Bose space, let

\[
\mathfrak M_N^B(f)=p\mathfrak M_N(f)p.
\]

For a proper partition, `Q_pi p=p` and `Q_pi` commutes with `H_pi`. Consequently `p f(H_pi)p` depends only on the internal **Bose** cluster spectra. If `f` vanishes on the closed set `mathfrak C_N`, all proper-partition terms vanish exactly. The one-block term is `f(A_N)` on the physical space. Theorem 4.1 therefore gives `f(A_N)` compact. Taking continuous functions supported in the complement of `mathfrak C_N` proves the essential-spectral upper inclusion. This is independent of the irreducible-layer argument of Section 6 and independently checks its physical Bose interface.

For `z` outside the union of all `sigma(H_pi)`, the function `f(x)=(z-x)^{-1}` is continuous on that compact union and has a continuous extension to `I_N`. Applying (4.3) to any such extension gives the connected resolvent

\[
\boxed{
R_N^{\rm conn}(z)=\sum_{\pi}(-1)^{|\pi|-1}(|\pi|-1)!
(z-H_\pi)^{-1}\in\mathcal C_{[N]}.
}
\tag{4.5}
\]

At infinity its first possible coefficient is

\[
R_N^{\rm conn}(z)=z^{-N}
\sum_{T\text{ spanning tree}}\ \sum_{\text{orderings of }E(T)}
\prod_{e\in E(T)}V_e+O(z^{-N-1}),
\quad V_e=a_0P_{e,0}+a_2P_{e,2}.
\tag{4.6}
\]

On the total ground primary this coefficient is `(N-1)! N^(N-2) a0^(N-1)`, by Cayley's tree count, so the connected operator is not identically zero. Equations (4.2)-(4.6) give an explicit recursive spectral functional calculus modulo compact primary-degree operators. They do not claim that the compact remainder is trace class, nor justify a Fredholm determinant without an additional Schatten estimate.

This argument grew from the root collaborator's connected-resolvent suggestion. The extension from resolvents to every continuous function makes the upper theorem elementary once the actual Racah compactness lemma has been proved.

### 5. The labelled algebra and the Bose filtration

Let

\[
\mathcal A_N=\overline{\sum_\pi\mathcal C_\pi}^{\|\cdot\|}.
\tag{5.1}
\]

There are finitely many partitions, but the closure is retained; no unproved algebraic direct-sum or grade-independence assertion is needed. Equation (3.5) makes (5.1) a unital C*-algebra. It contains the labelled extension of (1.1).

Let `G=S_N`, `U_g` its unitary action, and `p=|G|^{-1}sum_g U_g`. The physical Hilbert space is `H_N^B=pH_N`. Define a concrete algebra on it by

\[
\mathcal B_N=\overline{\operatorname{span}\{pX_\pi p:X_\pi\in\mathcal C_\pi\}}.
\tag{5.2}
\]

It is a C*-algebra even though individual compressions need not be algebras. Indeed,

\[
(pX_\pi p)(pY_\tau p)
=\frac1{|G|}\sum_{g\in G}pX_\pi Y_{g\tau}^{\,g}p,
\tag{5.3}
\]

where `Y^g=U_g Y U_g^{-1}`. Each summand belongs to the compressed component of `pi vee g tau`.

For `1<=k<=N`, put

\[
\mathcal F_k=\overline{\operatorname{span}
\{p\mathcal C_\pi p:|\pi|\le k\}}.
\tag{5.4}
\]

Because a join has at most as many blocks as either argument, every `F_k` is a closed two-sided ideal of `B_N`. We have

\[
0\subset\mathcal F_1\subset\cdots\subset\mathcal F_N=\mathcal B_N,
\quad
\mathcal F_1=c_0\!\operatorname{-}\bigoplus_P\operatorname{End}V_N^B(P)
=\mathcal B_N\cap\mathcal K(\mathcal H_N^B).
\tag{5.5}
\]

The last equality uses degree preservation and the fact that compression of (2.6) contains every finite physical block matrix.

#### 5.1 Exact Bose factors in one layer

Fix a partition `pi` with `k` blocks. Its internal permutation group is `G_pi=product_{S in pi} S_S`; its normalizer in `G` is `H_pi`. Let `m_pi=|G|/|H_pi|`, the number of distinct partitions in its orbit.

Let `Q_pi` be the internal Bose projector for `G_pi`. Since `pQ_pi=Q_pi p=p`,

\[
pX_\pi p=pQ_\pi X_\pi Q_\pi p.
\tag{5.6}
\]

The compressed internal operator therefore belongs to

\[
\mathcal C_\pi^{\mathrm{int},B}
=c_0\!\operatorname{-}\bigoplus_{(p_S)}
\operatorname{End}\!\left(\bigotimes_{S\in\pi}V_{|S|}^B(p_S)\right).
\tag{5.7}
\]

Next average `X` by conjugation under `H_pi`; this changes neither `pXp` nor the algebra (5.7). Denote its fixed subalgebra by `K_pi`. Permutations of equal-sized blocks act by exchanging the internal tensor factors. Thus `K_pi` is itself a `c0` direct sum of finite-dimensional matrix algebras, possibly split into equal-block permutation types. This is **conjugation invariance** under equal-block exchanges, not an assertion that the internal state must itself be block-exchange-even.

For `X,Y in K_pi`, (5.3) gives, modulo `F_{k-1}`,

\[
(pXp)(pYp)=\frac{|H_\pi|}{|G|}pXYp
=\frac1{m_\pi}pXYp.
\tag{5.8}
\]

Every term with `g pi != pi` has a strictly coarser join and disappears; each term with `g in H_pi` equals `pXYp`. Consequently

\[
\Theta_\pi:\mathcal K_\pi\longrightarrow\mathcal F_k/\mathcal F_{k-1},
\qquad X\longmapsto m_\pi[pXp]
\tag{5.9}
\]

is a *-homomorphism. It is bounded before invoking any C*-theorem, since its norm is at most `m_pi ||X||`; therefore it extends on the complete domain. Its image is closed and is exactly the orbit component of `pi` in the layer. Distinct partition orbits have zero product in this layer. Hence

\[
\mathcal F_k/\mathcal F_{k-1}
\cong\bigoplus_{[\pi]:|\pi|=k}\operatorname{im}\Theta_\pi.
\tag{5.10}
\]

Each summand is a quotient of the concrete internal Bose algebra (5.7) with normalizer invariance. Faithfulness of (5.9) is **not** assumed and is unnecessary for the upper bound. Possible exchange selection rules can delete representations; they cannot create labelled internal spectra absent from (5.7).

This layer calculation is the point at which a universal crossed-product shortcut would be insufficient: its auxiliary stabilizer representations could artificially compensate a non-Bose internal cluster. Equations (5.6)-(5.9) impose the actual physical relations before taking a quotient.

### 6. Proof of the all-particle upper spectral theorem

For a partition `pi`, define its internal Hamiltonian

\[
H_\pi=\sum_{S\in\pi} A_{|S|}^{(S)}.
\tag{6.1}
\]

It is a bounded multiplier of (5.7), with norm at most `sum_S binom(|S|,2)a0`, and commutes with its normalizer action. Its spectrum in any fixed internal-degree block is a subset of the sums of the physical cluster eigenvalues in that block.

On an element `X in K_pi`,

\[
A_N pXp=pH_\pi Xp+
\sum_{\substack{i,j\text{ in different}\\\text{blocks of }\pi}}p(a_0P_{ij,0}+a_2P_{ij,2})Xp.
\tag{6.2}
\]

The equality uses that `A_N` is invariant under all particle permutations and thus commutes with `p`. Each cross term belongs to `F_{k-1}` by (3.5). Therefore on the layer (5.10), left multiplication by `A_N` is exactly left multiplication by `H_pi`; the same is true on the right.

To turn this identity into a spectral statement, take any nonzero irreducible representation `rho` of `B_N/F_1`. Choose the least `k>=2` for which `rho(F_k)` is nonzero. The preceding ideal is killed. A nonzero ideal in an irreducible representation acts nondegenerately, so `rho` is nondegenerate on one of the orthogonal summands in (5.10). Each such summand is a quotient of a `c0` sum of finite matrix algebras. Irreducibility selects one finite internal-degree orbit and one finite matrix block of its normalizer-invariant algebra. The action of `A_N` on that block is the action of (6.1), by (6.2).

More explicitly, if a real `lambda` is outside the closed set (1.5), then every `H_pi-lambda` has an inverse of norm at most the reciprocal of that distance, on all its physical internal blocks. This inverse is a bounded normalizer-invariant multiplier of (5.7). Equation (6.2), applied to the matrix-block approximate units, supplies the inverse of `rho(A_N)-lambda`. Hence `lambda` is absent from every irreducible representation. The standard C*-algebra characterization of spectrum through irreducible representations proves

\[
\sigma_{\rm ess}\left(\bigoplus_P A_N(P)\right)\subset\mathfrak C_N.
\tag{6.3}
\]

The quotient `B_N/F_1` injects as a unital C*-subalgebra of the Calkin algebra, because `F_1=B_N intersect K`. Spectral permanence therefore identifies the quotient spectrum used in (6.3) with the actual operator essential spectrum. For a bounded graded direct sum of finite matrices, its essential spectrum is precisely the set of limits of spectral values along degrees tending to infinity. Indeed, outside such a set the tail matrices have uniformly bounded inverses; inside it, orthogonal approximate eigenvectors from distinct degree blocks form a singular sequence. This proves the upper inclusion in Theorem 1.2. Equality of essential spectra alone would be weaker than parity-resolved Hausdorff convergence; the additional lower and parity arguments in Section 7 complete that theorem, with the explicit five-body specialization in Section 8.

No finite-dimensional rank estimate, linear independence of all partition grades, or unproved contractive grade truncation is used. The proof works with the actual closed filtration and its exact compressed multiplication identity.

### 7. Two-cluster lower theorem and the complete parity recursion

#### 7.1 Unequal sizes, including simultaneous finite families

Fix `N=m+n`, `m!=n`, and finitely many normalized physical source states from blocks `V_m^B(s) tensor V_n^B(t)`, each an eigenstate of `A_m+A_n`. Couple their two irreducible descendant modules with outer primary degree `P-s-t`. This defines a labelled isometry `T_P` from the finite source space to `V_N(P)` for sufficiently large `P`.

Let `pi=S|T` be that bipartition and choose a finite internal cutoff `E_pi` containing the sources. For every cross pair `e`,

\[
P_{e,j}E_\pi\in\mathcal C_{[N]},\qquad j=0,2,
\tag{7.1}
\]

because joining a bipartition by a cross edge produces the one-block partition. Thus the cross-pair residual on `T_P` is `o(1)` in operator norm. Intra-cluster terms act exactly by the finite source eigenvalue matrix `Lambda`.

If `g pi != pi`, then `E_pi E_{g pi}` also belongs to `C_[N]`, as two distinct bipartitions have one-block join. Hence their overlaps on total degree `P` tend to zero. Since `m!=n`, the stabilizer of `pi` is precisely `S_m times S_n`, and its action on the sources is trivial. Therefore

\[
T_P^*pT_P=m_\pi^{-1}I+o(1),\qquad
m_\pi=\binom Nm,
\tag{7.2}
\]

and

\[
V_P=\sqrt{m_\pi}\,pT_P,\quad
V_P^*V_P=I+o(1),\quad
\|A_NV_P-V_P\Lambda\|=o(1).
\tag{7.3}
\]

Polar normalization gives physical isometries `U_P` with the same intertwining error. All constants and the `o(1)` are for a fixed finite source family. The compactness proof by itself does not provide a uniform rate as source degrees increase.

Different bipartitions, including different unequal block-size types, have compact cutoff overlap. Thus one may combine any finite source family from all such channels, with one representative per partition orbit, and polar-normalize them simultaneously. This gives the sum of their source multiplicities as a **lower bound** on target spectral multiplicity in fixed neighborhoods. It is not a complete upper multiplicity formula.

#### 7.2 Equal sizes: the actual symmetric and exterior-square channel

Let `N=2m`, and combine each internal source block `(s,t)` with its exchanged
block `(t,s)`. On `H_m^prim`, let `D` act as `(-1)^s` at internal degree `s`,
and let `F` exchange the two tensor factors. The normalized two-module
Clebsch-Gordan map `T_P` obeys the exact identity

\[
U_{\rm swap}T_P=(-1)^P T_P J,\qquad
J=(D\otimes D)F=(I\otimes D)F(I\otimes D).
\tag{7.4}
\]

Indeed, exchanging the two modules multiplies their primary coupling of
relative degree `P-s-t` by `(-1)^(P-s-t)`. Both `D` and `I tensor D` commute
with the additive internal Hamiltonian and with the cutoff `s+t<=P`.
For parity `eta=(-1)^P`, only the `J=eta` source subspace survives the full
Bose projection. Conjugation by `I tensor D` identifies it with `Sym^2` for
`eta=+1` and `Lambda^2` for `eta=-1`, without changing the internal energy.

Choose a fixed finite orthonormal family of internal eigenvectors in this
allowed subspace. Its stabilizer acts trivially after coupling, including
the block exchange. The argument of Section 7.1 now gives

\[
T_P^*pT_P=m_\pi^{-1}I+o(1),\qquad
m_\pi=\tfrac12\binom{2m}{m},
\tag{7.5}
\]

along the chosen parity. Crucially, (7.5) is asserted on the **allowed**
source subspace, not on the entire ordered tensor square. On the forbidden
subspace the Bose projection is exactly zero. Cross-cluster residuals and
overlaps with different bipartitions remain compact by Section 3.
Polar normalization therefore gives the same finite-family quasimode
theorem for every energy in the appropriate symmetric/exterior channel.

For a pair of distinct internal eigenstate indices `i,j`, both symmetric
and antisymmetric combinations exist. A repeated source `i=i` exists only
in the symmetric square. The case `s!=t` poses no exception: its exchanged
copy has already been included. This proves the lower inclusion for the
sets in (1.7), along every sufficiently large `P` of the stated parity.

#### 7.3 Reduction to bipartitions and equality of essential spectra

The preceding lower construction implies, for every `a,b>=1`,

\[
\Sigma_{a+b}\supset\Sigma_a+\Sigma_b.
\tag{7.6}
\]

For unequal sizes it holds by all-`P` inheritance. For equal sizes every
source sum occurs in the symmetric channel on even `P`; this already
suffices for membership in the closed set `Sigma_{a+b}`. Approximation by
fixed internal eigenvalues extends the inclusion to the closures.

Given a proper partition, group its blocks into two nonempty groups and
apply (7.6) repeatedly within each group. Its internal spectral sum lies
in `Sigma_m+Sigma_{N-m}` for the two group sizes. Conversely, bipartitions
are proper partitions. Finite sums of compact sets and finite unions are
compact, so no extra closure is introduced by this reduction. This proves
the first equality in (1.6).

Every bipartition admits all its source sums on even `P`. Finite
epsilon-nets of the compact set `C_N`, followed by the finite-source lower
theorem, give the even-`P` Hausdorff lower inclusion. The all-particle
upper theorem gives the opposite inclusion. Every limit on either parity
is contained in `C_N`, and every point of `C_N` is attained along even
`P`, proving the essential-spectrum equality. If `N` is odd, all its
bipartitions have unequal sizes, so the same argument applies along all
sufficiently large `P`.

#### 7.4 The upper inclusion on odd `P` at even particle number

The all-particle upper bound alone does not distinguish the two parities.
The Möbius functional calculus does. Suppose `N=2m>=4` and restrict the
physical direct sum to parity `eta`. For a proper partition with at least
three blocks, choose a block of size different from `m`; such a block
always exists. Repeated use of (7.6) puts the remaining internal cluster
sum in `Sigma_{N-size}`. Its full internal Bose spectrum is therefore
contained in `U_N`. The same is immediate for unequal bipartitions.

Only the equal bipartition remains. Its internal Bose projector `Q_pi`
and its block-swap-even projector both act as the identity on a fully
Bose state and commute with `H_pi`. Under its two-cluster decomposition,
(7.4) identifies their surviving part on parity `eta` with the additive
lift on the symmetric or exterior square. Its spectrum is contained in
`E_m^eta`, including all finite internal-degree cutoffs.

Let `f` be continuous and vanish on `U_N union E_m^eta`. In the physical
compression of (4.2), every proper-partition term vanishes exactly on
this parity subspace: the preceding paragraph handles the only case
that the unrestricted internal Bose spectrum would overcount. Thus
`f(A_N)` is compact there, by Theorem 4.1. This proves the parity upper
inclusion. Combining it with Sections 7.1–7.2 and a finite epsilon-net
proves the complete parity-resolved Hausdorff formula (1.8).

As an independent consistency check, for `N=4` the two-body eigenstate
list contains one `a0` state, one `a2` state, and infinitely many zero
states. The formulas give

\[
\mathfrak C_4^{\rm even}=\Sigma_3\cup\{2a_0,a_0+a_2,2a_2\},\qquad
\mathfrak C_4^{\rm odd}=\Sigma_3\cup\{a_0+a_2\},
\tag{7.7}
\]

because the single atoms and zero already belong to `Sigma3`. This
recovers the earlier four-body cluster sets without using its auxiliary
matrix zero-counting proof.

### 8. Reduction of all proper five-body partitions to the two maximal channels

The possible block-size types other than the one-block partition are

\[
4+1,\quad3+2,\quad3+1+1,\quad2+2+1,\quad2+1+1+1,\quad1+1+1+1+1.
\tag{8.1}
\]

The first two contribute exactly `Sigma4` and `Sigma3+Sigma2`. The remaining contributions lie in their closed union:

* `3+1+1`: every fixed three-body eigenvalue belongs to `Sigma4`, by the `3+1` lower theorem.
* `2+2+1`: every two-body eigenvalue belongs to `Sigma3`, by `2+1` inheritance; adding the other two-body eigenvalue gives `Sigma3+Sigma2`.
* `2+1+1+1`: two successive unequal singleton embeddings place each two-body eigenvalue in `Sigma4`.
* All singletons give zero, which already lies in `Sigma2`, `Sigma3`, and `Sigma4`.

This proves the upper inclusion in (1.3). The two maximal partitions have unequal block sizes, so Section 7 gives a nearby target eigenvalue for every fixed source eigenvalue, for every sufficiently large `P`. Approximate any point in the compact closure `mathfrak S5` by a fixed source value, then use a finite epsilon-net of `mathfrak S5` to make this lower inclusion uniform in the point. Together with the upper inclusion and boundedness of `A5(P)`, this proves Hausdorff convergence.

### 9. A concrete recursive comparison operator

The set (1.3) is the spectrum of the explicit bounded operator

\[
\mathscr D_5=
\left(\bigoplus_{s\ge0}A_4(s)\right)
\oplus
\left(\bigoplus_{t\ge0}\ \bigoplus_{\alpha\in\{0,a_0,a_2\}}
[A_3(t)+\alpha I]\right).
\tag{9.1}
\]

This comparison retains all four-body internal spectra and all three-plus-two sums. Repetition of the two-body zero value from infinitely many even degrees is immaterial to its spectral **set**, so it appears once in (9.1). Omitting those repeated copies would be inappropriate in a claim about total limiting multiplicities; no such claim is made here.

The finite cutoff operator `D5(R)` retains `s,t<=R` in (9.1). Its spectrum increases toward a dense subset of `mathfrak S5`. By compactness of the spectral set, these finite spectral sets converge in Hausdorff distance to `mathfrak S5` as `R->infinity`. For each fixed `R`, Section 7 supplies a finite-dimensional physical cluster embedding and an `o_P(1)` intertwining error. The upper theorem excludes spectral values a fixed distance outside the full comparison set.

This is a recursive spectral-set computation using lower particle numbers, independent of target `P`; it is not a norm approximation of the entire five-body matrix by a single copy of (9.1). No claimed complexity bound is hidden in an unspecified cutoff rate. The existing four-body Fredholm theorem can further organize the first summand, but a complete five-body regularized determinant requires an additional summability theorem.

### 10. Finite accumulation depth, isolated spectral islands, and limits

#### 10.1 The entire chiral spectrum closure is scattered of finite depth

For a compact subset `K` of the real line let `K'` denote its set of
distinct-point accumulation points, and define `K^(r+1)=(K^(r))'`.
For compact `K,L`, compactness of convergent subsequences gives

\[
(K+L)'\subset(K'+L)\cup(K+L'),\qquad
(K+L)^{(r)}\subset\bigcup_{i+j=r}(K^{(i)}+L^{(j)}).
\tag{10.1}
\]

To check the first assertion, write a sequence of distinct sums as
`x_j+y_j` and pass to convergent subsequences in each compact factor.
If both limits were isolated in their respective factors, both
coordinates would eventually be constant, contradicting distinctness
of the sums. Induction proves the second assertion. Finite unions commute
with this derivative.

Each finite-degree primary space has a finite spectrum. Consequently a
sequence of distinct values from the union defining `Sigma_N` can
accumulate only along unbounded internal degrees. Approximating points
in its closure by values in that union gives

\[
\Sigma_N'\subset\mathfrak C_N.
\tag{10.2}
\]

Repeated copies of the same eigenvalue do not affect this argument:
(10.2) is a statement about distinct spectral values, while essential
spectra also detect infinite multiplicity.

We now induct on `N`. The set `Sigma2` is finite. For `N>=3`,

\[
\mathfrak C_N=\Sigma_{N-1}\cup
\bigcup_{2\le m\le N/2}(\Sigma_m+\Sigma_{N-m}).
\tag{10.3}
\]

By induction `Sigma_j^(j-1)=empty` for `j>=2`. Every summand in the second
union of (10.3) therefore has empty derivative of order `N-3`, by (10.1).
For `N=3` that union is empty. It follows that

\[
\Sigma_N^{(N-2)}\subset\mathfrak C_N^{(N-3)}
\subset\Sigma_{N-1}^{(N-3)}\subset\cdots\subset\Sigma_2.
\tag{10.4}
\]

The next derivative is empty, proving (1.9). Also
`C_N^(N-2)=empty` for `N>=3`. A finite-height compact subset of the real
line is countable: each successive isolated-point layer is countable,
as witnessed by disjointness from the rest in some interval with
rational endpoints, and there are only finitely many layers. Thus no
perfect set or interval can appear. For five bodies specifically,

\[
\mathfrak S_5^{(2)}\subset\{0,a_0,a_2\},\qquad
\mathfrak S_5^{(3)}=\varnothing,\qquad
\Sigma_5^{(4)}=\varnothing.
\tag{10.5}
\]

This finite hierarchy is a topological spectral theorem, not a claim
that individual algebraic roots are elementary functions or that all
accumulation-depth bounds are attained.

#### 10.2 What can be said about isolated branches without overcounting

If `J` is a compact interval disjoint from `C_N`, then the spectral
projection of `direct_sum_P A_N(P)` onto `J` has finite rank. Choose a
continuous function equal to one on `J` and vanishing on `C_N`; Section 4
makes its functional calculus compact, so only finitely many eigenvectors
can have eigenvalues in `J`. The same statement holds on each parity
with its sharper limit set (1.8).

Equivalently, outside the recursive cluster set only finitely many
finite-degree exceptions can lie in any fixed compact spectral island.
The proof gives neither their exact total multiplicity nor an effective
last degree. At cluster values, the finite-family embeddings of Section 7
give lower multiplicity bounds only. This distinguishes a finite spectral
island theorem from an unsupported complete isolated-branch count.

#### 10.3 Other consequences and remaining limits

1. The all-`N` recursion is both an upper and a lower spectral-set theorem, with Bose parity treated explicitly. It excludes additional limiting values outside proper Bose cluster sums.
2. For `N=5,Q=0`, both inclusions are proved. This resolves the complete limiting **spectral set**, even though each fixed finite `P` may have algebraically complicated roots.
3. The result immediately gives `lim_P lambda_max(A5(P))=6 a0`: every proper cluster sum is at most `6a0`, and the four-body ground cluster realizes it in the `4+1` channel.
4. A gap in `mathfrak S5` away from zero gives a genuine asymptotic exclusion interval for the full spectrum. A gap between zero and the positive part of `mathfrak S5` does **not** by itself rule out positive finite-`P` eigenvalues approaching zero. Such a sequence has the already permitted limiting value zero. The earlier four-body auxiliary-zero counting theorem has not been generalized here.
5. No claim of integrability, a universal Bethe equation, or a full five-body Fredholm determinant follows from the partition recursion. Its content is the actual operator multiplication law, Möbius functional calculus, parity-resolved limiting spectral sets, and the finite accumulation hierarchy.

### 11. Relation to primary literature and prior work

The general use of semilattice C*-algebras to extract many-body essential spectra is developed by Damak and Georgescu, *On the spectral analysis of many-body systems*, [arXiv:0911.5126](https://arxiv.org/abs/0911.5126). We do not import their Euclidean translation-channel assumptions: equations (2.1)-(3.5) establish the conformal internal-degree replacement directly, and equations (5.6)-(5.10) handle this model's actual Bose corner. The direct upper proof in Section 4 needs neither an abstract HVZ theorem nor a classification of the algebra's representations.

Derkachov and Manashov, *Generic scaling relation in the scalar phi-four model*, [hep-th/9604173](https://arxiv.org/abs/hep-th/9604173), give a constructive lower cluster hierarchy for a different scalar operator. The present upper theorem uses the Einstein finite-channel residual; that paper is precedent, not a substitute for the operator mapping or the upper proof.

The Racah representation-theory background is reviewed by De Bie, Iliev, van de Vijver and Vinet, [arXiv:2001.11195](https://arxiv.org/abs/2001.11195). Its role here is the explicit fixed-endpoint estimate in (3.3), with the common overlap cluster determining the decay exponent.

Inputs reused without claiming novelty: the physical pair spectrum, positivity, global covariance, the complete logarithmic kernel, the original exact finite-matrix algorithms, the prior four-body cluster/Fredholm theorem, and the earlier singleton inheritance theorem. New in this note are arbitrary overlapping-subset compactness with multiplicities, the actual Bose partition filtration, the Möbius functional calculus, the complete all-particle parity-resolved cluster recursion, and the finite accumulation-depth theorem. The all-`P` five-body comparison (1.3) is an explicit application. The companion `ALL_FIXED_Q_PARTITION_RECURSION.md` proves the full extension to every fixed right degree; regular isolated multiplicities are treated separately in `ISOLATED_CLUSTER_MULTIPLICITIES.md`.


---

# Appendix B: All fixed-Q partition recursion and Bose parity

Source SHA-256: af0eca5e5886b8a7bbce4364be1e804a1c110c426a72f88734733f4ad78d9150.

## The complete recursive cluster limit at every fixed right excitation

**Status: new theorem, 19 October 2026.** This note extends the independently
audited chiral partition proof to every fixed `Q>=0`, every `N>=2`, and every
`d=Delta>1`. It retains the established order-`G` Einstein pair operator,
the original quantum prescription, and the physical scalar Fock branch.
No gravitational reduction is redefined. The result determines the complete
limiting **spectral set**, including Bose parity, as `P->infinity` with
`N,Q,d` fixed. It does not determine every finite-`P` algebraic root or all
branch multiplicities, and it gives no uniform statement when `Q` grows
with `P`.

The elementary chiral proof, detailed Racah endpoint estimate, and a
second C*-filtration proof are in
`PARTITION_ALGEBRA_AND_FIVE_BODY_HVZ.md`. This note supplies every additional
operator, right-degree, and Bose interface needed for the nonchiral
extension; in particular, it never projects the two chiralities to Bose
symmetry separately.

### 1. Pair input and the objects in the recursion

Write `C_l=(d+l)(d+l-1)` and `mu=d(d-2)`. The established pair eigenvalue is
`gamma_kl=g_{min(k,l),|k-l|}` on `k+l` even. With `H=d+n`,

\[
\begin{aligned}
u_n&=4\mu-8H(H-1),\\
g_{n,0}&=u_n\frac{2H-2}{2H-1}
-\frac{2[H(H-1)+\mu]^2}{(2H-3)(2H-1)(2H+1)},\\
g_{n,2}&=u_n+
\frac{(n+1)(n+2)(2d+n-1)(2d+n)}{(2H-1)(2H+1)(2H+3)},\\
g_{n,s}&=u_n\quad(s\ge4).
\end{aligned}
\tag{1.1}
\]

The removable `n=0,d=3/2` expression is algebraically cancelled before
evaluation. Define

\[
a_{kl}=\gamma_{kl}-[4\mu-8C_l],\qquad
\mathcal B_Q=\{(k,l):0\le l\le Q,\ 0\le k\le l+2,\ k+l\ {\rm even}\}.
\tag{1.2}
\]

These `a_kl` are positive on `B_Q` and zero on the remaining physical pair
channels. We use the positive labelled extension that is zero on odd
`k+l`. On the simultaneous left/right global-primary space,

\[
\begin{aligned}
W_N(P,Q)&=b_N(Q)I+A_N(P,Q),\\
b_N(Q)&=-2N(N-1)d^2-8Q(Nd+Q-1),\\
A_N(P,Q)&=\sum_{e}\sum_{(k,l)\in\mathcal B_Q}
a_{kl}P^L_{e,k}P^R_{e,l}.
\end{aligned}
\tag{1.3}
\]

Let `V_N^B(P,Q)` mean the invariants of the **diagonal** `S_N` action on
`V_N^L(P) tensor V_N^R(Q)`. In all internal cluster spectra below the same
diagonal Bose condition is imposed. Put

\[
\Sigma_{m,q}=\overline{\bigcup_{p\ge0}\sigma(A_m(p,q))},\qquad
\Sigma_{1,0}=\{0\},\quad\Sigma_{1,q}=\varnothing\ (q>0).
\tag{1.4}
\]

Empty primary blocks contribute nothing. Since `Q` is fixed,
`||A_N(P,q)||<=binom(N,2) max_{B_Q} a_kl` for every `q<=Q`, uniformly in
`P`. Thus all nonempty sets in (1.4) are compact. The two-body sets are
explicitly finite:

\[
\Sigma_{2,q}=\{0\}\cup
\{a_{kq}:0\le k\le q+2,\ k+q\ {\rm even}\}.
\tag{1.5}
\]

The zero occurs at every allowed `p>=q+4` and is a single point in (1.5),
regardless of its repeated realization at different degrees.

### 2. Main theorem: all particles, every fixed right excitation, both parities

For `N>=2` define the proper cluster set

\[
\mathfrak C_{N,Q}=
\bigcup_{a=1}^{\lfloor N/2\rfloor}
\ \bigcup_{q_1+q_2\le Q}
(\Sigma_{a,q_1}+\Sigma_{N-a,q_2}).
\tag{2.1}
\]

The unions are finite; empty summands are omitted. Then

\[
\boxed{
\sigma_{\rm ess}\!\left(\bigoplus_PA_N(P,Q)\right)
=\mathfrak C_{N,Q}
=\lim_{\substack{P\to\infty\\P+Q\ {\rm even}}}^{\rm Hausdorff}
\sigma(A_N(P,Q)).
}
\tag{2.2}
\]

If `N>=3` is odd, the Hausdorff limit in (2.2) holds along every sufficiently
large integer `P`. For even `N=2m>=4`, the other parity has a precise
exterior-square correction, as follows.

Let

\[
\begin{aligned}
\mathcal U_{2m,Q}&=
\bigcup_{a=1}^{m-1}\ \bigcup_{q_1+q_2\le Q}
(\Sigma_{a,q_1}+\Sigma_{2m-a,q_2}),\\
\mathfrak h_{m,Q}&=\bigoplus_{q=0}^{Q}\bigoplus_{p\ge0}V_m^B(p,q),\\
D\big|_{V_m^B(p,q)}&=(-1)^{p+q}I.
\end{aligned}
\tag{2.3}
\]

On `h_m,Q tensor h_m,Q`, retain only the subspace with `q_1+q_2<=Q`.
This budget subspace is invariant under the factor swap, the additive
internal Hamiltonian, and `D` on either factor. Denote the spectra of that
additive Hamiltonian on its symmetric and exterior parts by `E_m,Q^+`
and `E_m,Q^-`. Equivalently, choose a complete orthonormal eigenstate list
`(lambda_i,p_i,q_i)` for the internal direct sum. Then

\[
\begin{aligned}
E_{m,Q}^+&=\overline{\{\lambda_i+\lambda_j: i\le j,\ q_i+q_j\le Q\}}\\
&=\bigcup_{q_1+q_2\le Q}(\Sigma_{m,q_1}+\Sigma_{m,q_2}),\\
E_{m,Q}^-&=\overline{\{\lambda_i+\lambda_j: i<j,\ q_i+q_j\le Q\}}.
\end{aligned}
\tag{2.4}
\]

The eigenstate index includes internal degree and multiplicity: two
independent states with the same eigenvalue are allowed in the exterior
square. Only repeating the very same source vector is forbidden there.
For `eta=+1,-1`,

\[
\boxed{
\lim_{\substack{P\to\infty\\(-1)^{P+Q}=\eta}}^{\rm Hausdorff}
\sigma(A_{2m}(P,Q))
=\mathcal U_{2m,Q}\cup E_{m,Q}^{\eta}.
}
\tag{2.5}
\]

For `N=2`, the `P+Q` odd physical primary space is empty; the even-parity
limit is `{0}`. Thus no Hausdorff distance to an empty spectrum is invoked.

The equations are recursive in particle number. In particular the complete
five-body limit, along all `P`, is the concrete set

\[
\boxed{
\mathfrak C_{5,Q}=
\bigcup_{q=0}^{Q}\Sigma_{4,q}\ \cup\
\bigcup_{q_1+q_2\le Q}(\Sigma_{3,q_1}+\Sigma_{2,q_2}).
}
\tag{2.6}
\]

It retains the full four-body internal spectra and every permitted
three-plus-two sum. It is not the earlier atomic empirical-measure limit.

### 3. Actual operator algebra with a finite right-degree budget

Work first on the labelled primary Hilbert space

\[
\mathcal H_{N,\le Q}=
\bigoplus_{q=0}^{Q}\bigoplus_{P\ge0}
V_N^L(P)\otimes V_N^R(q).
\tag{3.1}
\]

For a cluster `S` of size `s`, the two positive-discrete-series
decompositions yield internal multiplicities
`V_S^L(p) tensor V_S^R(q)` and descendant modules
`D_(sh+p)^+ tensor D_(sh+q)^+`, where `h=d/2`. Set

\[
\mathcal C_S^{\le Q}=
c_0\!\operatorname{-}\bigoplus_{\substack{p\ge0\\0\le q\le Q}}
\operatorname{End}\bigl(V_S^L(p)\otimes V_S^R(q)\bigr).
\tag{3.2}
\]

It is extended as the identity on both descendant modules and on the other
leaves. The right degree `q` labels inequivalent irreducible modules, just
as `p` does; neither degree is mixed by (3.2). Internal operators may
otherwise entangle the two multiplicity factors. They need not factor as
one left operator times one right operator.

For a partition `pi`, let `C_pi` be the concrete image of the product of
the mutually commuting algebras (3.2). Only internal tuples satisfying
`sum_S q_S<=Q` are realized. The formal tensor blocks with a larger sum
have zero image and are explicitly discarded. On every realized internal
tuple the operator acts as the identity on the left and right relative
couplings of the clusters. The image norm is the supremum over these
realized finite internal matrix blocks. This budget qualification avoids
a false claim that the entire unrestricted tensor product is faithful.

The one-block component is exactly

\[
\mathcal C_{[N]}^{\le Q}=
c_0\!\operatorname{-}\bigoplus_{\substack{P\ge0\\0\le q\le Q}}
\operatorname{End}\bigl(V_N^L(P)\otimes V_N^R(q)\bigr),
\tag{3.3}
\]

the compact operators among these degree-preserving matrices. Restriction
of (3.3) to a single total right degree is still compact. Working on
(3.1) before this restriction also avoids misidentifying the full-cluster
blocks with `q<Q` as a faithful action on a `q=Q` primary space alone.

#### 3.1 Overlap compactness survives arbitrary left/right multiplicities

Take the cutoff `E_S(L)` to be the projector onto left internal degrees
`p_S<=L`, tensored with the identity on the right sector of (3.1).
Every finite-cutoff element of (3.2) is supported by such a projector.
For intersecting `S,T`, write `A=S\T`, `C=S intersect T`, `B=T\S`.
Exactly as in the chiral proof, `E_S(L)E_T(M)` decomposes into a finite
family of left Racah rectangles: the left degrees of `A,B,C` are bounded
by `L,M,min(L,M)` before their multiplicities are counted. Their entries
are `O(R^(-2h_C))`, where `h_C=|C|h+p_C` and `R` is the growing union
relative degree. The right tensor factor is an identity on a space whose
dimension is fixed by `N,Q`, so it does not introduce a growing norm.

For arbitrary, possibly left/right-entangling internal operators,

\[
XY=X E_S(L)E_T(M)Y,
\quad
\|XY\|\le\|X\|\,\|E_S(L)E_T(M)\|\,\|Y\|.
\tag{3.4}
\]

Consequently the same norm-decay conclusion holds without requiring
separability of `X` and `Y`. The finite right-degree labels are retained
throughout. Approximation in the `c0` norm gives

\[
\mathcal C_S^{\le Q}\mathcal C_T^{\le Q}
\subset\mathcal C_{S\cup T}^{\le Q},\qquad
\mathcal C_\pi\mathcal C_\tau\subset\mathcal C_{\pi\vee\tau}.
\tag{3.5}
\]

Nested sets are immediate from the larger cutoff. For nonnested sets the
finite-label Racah argument above applies. Products of arbitrary
partitions are merged in their actual operator order; no commutation of
overlapping cluster operators is assumed.

Finally, a pair residual in (1.3) has `l<=Q` and `k<=Q+2`, so it is in the
corresponding finite-cutoff pair component. Every ordered word of pair
residuals whose edge graph connects all leaves is therefore in (3.3).

### 4. Möbius functional calculus and the physical Bose upper bound

For a partition `pi` define the labelled internal Hamiltonian

\[
H_\pi=\sum_{S\in\pi} A_{|S|}^{(S)},\qquad
\mu(\pi,1_N)=(-1)^{|\pi|-1}(|\pi|-1)!.
\tag{4.1}
\]

All these operators are positive and lie in the common interval
`I=[0,binom(N,2)max_(B_Q) a_kl]`. For every continuous `f` on that interval,

\[
\boxed{\sum_{\pi}\mu(\pi,1_N)f(H_\pi)
\in\mathcal C_{[N]}^{\le Q}.}
\tag{4.2}
\]

For `f(x)=x^r`, expand ordered pair words. A word with graph partition
`gamma` occurs exactly for `pi>=gamma`; its coefficient is
`sum_(pi>=gamma) mu(pi,1_N)=1_(gamma=1_N)`. Thus only connected words
survive, and (3.5) makes each compact. For `r<=N-2`, no connected graph
exists and the sum is identically zero at every finite `(P,q)`.
Uniform polynomial approximation proves (4.2) for continuous `f`.

Let `p` be the full diagonal Bose projector. For each partition, its
internal diagonal Bose projector `Q_pi` obeys `pQ_pi=Q_pi p=p` and
commutes with `H_pi`. On a fixed total right degree `Q`, the internal
degree tuples have `sum q_S<=Q`; the remaining right degree is carried
by relative cluster couplings. Thus the exact physical compression
`p f(H_pi)p` depends only on the internal Bose spectral sums with that
budget. In particular, if `f` vanishes on

\[
\bigcup_{|\pi|\ge2}\ \bigcup_{\sum q_S\le Q}
\sum_{S\in\pi}\Sigma_{|S|,q_S},
\tag{4.3}
\]

every proper term in the compression of (4.2) is **exactly zero**. The
one-block term is `f(A_N)` on the actual Bose space, and is compact.
Continuous functions supported outside (4.3) therefore give the full
essential-spectral upper bound, with physical internal Bose spectra.

For a bounded direct sum of finite matrices, its essential spectrum is
exactly the set of limits of spectral values along degrees tending to
infinity: a tail uniformly separated from a number has uniformly bounded
inverses, while eigenvectors from distinct degree blocks form a singular
sequence at any such limit. This identifies the upper bound with actual
high-`P` spectral limits, rather than an abstract representation spectrum.

### 5. Two-cluster lower theorem with both Clebsch-Gordan degrees

Choose physical internal source eigenvectors at `(p_1,q_1)` and
`(p_2,q_2)` in clusters of sizes `a,b`, with `q_1+q_2<=Q`. Couple their
left descendant modules with degree `P-p_1-p_2` and their right modules
with degree `Q-q_1-q_2`. Both couplings are multiplicity-free once the two
internal modules are fixed. This gives a normalized labelled primary
map `T_P` for all sufficiently large `P`.

The internal residual acts exactly with energy

\[
\lambda_{a,p_1,q_1}+\lambda_{b,p_2,q_2}.
\tag{5.1}
\]

There is no additional residual energy from the right relative degree:
the right total-Casimir contribution has already been removed in (1.3),
and the residual is literally the sum of the internal pair terms.
Using `W_a+W_b` without restoring the baselines would give an incorrect
cluster energy; (5.1) is a statement about `A`, followed by the target
baseline `b_N(Q)` when returning to `W_N`.

For a fixed finite source family, choose a finite internal cutoff `E_pi`
containing it. Every cross-pair residual times `E_pi` belongs to (3.3),
because its graph joins the two clusters. Distinct bipartitions have
one-block join, so their cutoff overlaps are also compact. Hence the
cross-pair residual and all distinct-channel overlaps are `o_P(1)` in
operator norm on this fixed family. This uses the entire right family
at fixed `Q`; no limit in right degree is taken.

For unequal cluster sizes, the stabilizer consists of internal
permutations, which act trivially on the physical internal sources.
If `M_pi=binom(N,a)`,

\[
T_P^*pT_P=M_\pi^{-1}I+o(1),\qquad
\|A_N\sqrt{M_\pi}pT_P-
\sqrt{M_\pi}pT_P\Lambda\|=o(1).
\tag{5.2}
\]

Polar normalization yields physical isometries with the same vanishing
intertwining error. This is valid along all large `P`.

#### 5.1 Equal sizes and exact parity selection

For equal sizes combine each source with its exchanged copy. The outer
left and right Clebsch-Gordan couplings contribute together

\[
(-1)^{P-p_1-p_2+Q-q_1-q_2}.
\]

With `D` as in (2.3) and `F` the factor swap, the exact identity is

\[
U_{\rm swap}T_P=(-1)^{P+Q}T_P J,
\qquad J=(D\otimes D)F=(I\otimes D)F(I\otimes D).
\tag{5.3}
\]

The conjugating unitary commutes with the internal additive Hamiltonian,
the right budget `q_1+q_2<=Q`, and the left cutoff `p_1+p_2<=P`.
On parity `eta=(-1)^(P+Q)`, the allowed source subspace is `J=eta`.
After conjugation it is exactly the budget symmetric or exterior square
in (2.4). The full Bose projection annihilates the opposite subspace
identically.

On a fixed finite orthonormal family **within the allowed subspace**,
(5.2) holds with `M_pi=binom(2m,m)/2`. It is not a Gram formula on the
unprojected ordered tensor square. This proves the lower approximation
for every fixed source eigenvalue in (2.4), along its prescribed parity.
One may combine any finite source families from distinct bipartition
orbits before polar normalization, giving the sum of their source
multiplicities as a lower bound in fixed target spectral neighborhoods.
No complete upper multiplicity statement is implied.

### 6. Reduction of all partitions and the exact parity upper bound

The lower theorem gives, for all `a,b>=1` and all available right degrees,

\[
\Sigma_{a+b,q_1+q_2}\supset
\Sigma_{a,q_1}+\Sigma_{b,q_2}.
\tag{6.1}
\]

The right relative degree can be chosen zero in this inclusion. Equal
sizes use the `P+q_1+q_2` even subsequence; membership in the closed
unrestricted set `Sigma` requires no prescribed parity. Approximation
by fixed source eigenvalues extends (6.1) to the closures.

Group any proper partition into two nonempty groups. Repeated use of
(6.1) combines the blocks within each group, with right degree equal to
the sum of their internal right degrees. The final two-group budget is
still at most `Q`. Thus (4.3) equals the binary set (2.1).

All its binary source sums are attained on `P+Q` even. A finite
epsilon-net of the compact set, and then the finite-source lower
construction, make this lower approximation uniform in the spectral
point. The upper bound from Section 4 gives (2.2). For odd particle
number every binary split is unequal, giving the all-`P` assertion.

For even particle number and a specified parity, every proper partition
with at least three blocks has a block whose size differs from `N/2`.
Choose such a block (or, equivalently, its smaller complementary side)
and combine the others with (6.1). Its entire internal Bose spectrum is
contained in `U_N,Q`. The same holds for unequal bipartitions.

Only the equal bipartition can contribute beyond `U_N,Q`. A fully Bose
vector is invariant under its block exchange as well as its internal
permutations. Equation (5.3), including both degree cutoffs, therefore
places its internal source in the allowed budget symmetric/exterior
channel. If `f` vanishes on `U_N,Q union E_m,Q^eta`, all proper compressed
terms of (4.2) vanish exactly on parity `eta`. Hence `f(A_N)` is compact
on that parity, proving the refined upper inclusion. The matching lower
and finite epsilon-net argument prove (2.5).

### 7. A finite-depth spectral hierarchy, not a continuum of hidden limits

For compact real sets, distinct-point Cantor–Bendixson derivatives obey

\[
(K+L)^{(r)}\subset\bigcup_{i+j=r}(K^{(i)}+L^{(j)}).
\tag{7.1}
\]

Every finite `(P,Q)` block has finitely many roots, so
`Sigma_N,Q' subset C_N,Q`. Write
`hatSigma_N(Q)=union_(q<=Q) Sigma_N,q`. Finite unions commute with
derivatives. The singleton terms in the binary recursion are contained
in `hatSigma_(N-1)(Q)`; if both cluster sizes are at least two, induction
and (7.1) make their sum's derivative of order `N-3` empty. Starting with
the finite pair sets (1.5), one obtains

\[
\boxed{
\Sigma_{N,Q}^{(N-2)}
\subset\widehat\Sigma_2(Q)
=\{0\}\cup\{a_{kl}:(k,l)\in\mathcal B_Q\},\qquad
\Sigma_{N,Q}^{(N-1)}=\varnothing.
}
\tag{7.2}
\]

For `N>=3`, also `C_N,Q^(N-2)=empty`. More explicitly,
`hatSigma_N(Q)^(N-2) subset hatSigma_(N-1)(Q)^(N-3)`, and iteration gives
(7.2). This is a distinct-point accumulation theorem, not a statement
about essential spectral multiplicity. Repeated exact kernel values at
infinitely many degrees count once in these sets.

Consequently the full fixed-`N,Q` residual spectrum closure is countable
and compact, with finite accumulation depth. Its deepest possible
accumulation points are among the finitely many Einstein bad-channel
values and zero. This excludes an interval or a nonempty perfect subset
of hidden high-excitation spectral limits in this one-sided regime.
The finite-depth bound is not claimed optimal.

Every compact interval disjoint from the relevant parity cluster set
contains eigenvalues from only finitely many total-degree blocks and
has finite total spectral projection rank. This follows by taking a
continuous `f` equal to one on the interval and zero on the cluster set
in the compact functional calculus above. The argument does not give an
effective last degree or its exact finite multiplicity.

### 8. Recursive comparison, the connected resolvent, and precise limits

An explicit operator whose spectrum is the five-body set (2.6) is

\[
\mathscr D_{5,Q}=
\bigoplus_{q=0}^{Q}\bigoplus_{p\ge0}A_4(p,q)
\ \oplus\
\bigoplus_{q_1+q_2\le Q}\bigoplus_{p\ge0}
\bigoplus_{\alpha\in\Sigma_{2,q_2}}[A_3(p,q_1)+\alpha I].
\tag{8.1}
\]

Repeated two-body zero realizations are collapsed only because (8.1)
specifies a spectral set. It must not be used to infer total channel
multiplicities. Keeping `p<=R` gives a finite comparison whose spectral
sets approach the full comparison set in Hausdorff distance as `R` tends
to infinity. No effective uniform `R(epsilon)` is claimed. The target
excitation `P` is absent from this recursive lower-particle comparison.

The connected resolvent is the genuine operator recursion

\[
\sum_\pi(-1)^{|\pi|-1}(|\pi|-1)!(z-H_\pi)^{-1}
\in\mathcal C_{[N]}^{\le Q}.
\tag{8.2}
\]

Here `z` avoids the union of the partition spectra. If `z` is real in the
common bounding interval, extend the continuous function `(z-x)^(-1)`
from that finite union of compact spectra to the interval before using
(4.2). For large `z`, the first surviving term is `z^(-N)` times the sum
of all ordered spanning-tree pair words. No trace-class property or
Fredholm determinant is inferred from compactness alone.

The scope of the conclusions is exact:

1. All `N`, fixed `Q`, arbitrary fixed mass `d>1`: complete parity-resolved
   high-`P` limiting spectral sets, recursive in lower-particle spectra.
2. A new Möbius continuous functional calculus modulo compact primary
   operators, and a finite Cantor–Bendixson accumulation hierarchy.
3. Finite source families give constructive quasimodes and lower
   multiplicity bounds; no complete limiting multiplicity formula is
   proved here.
4. The theorem includes zero. It does **not** exclude extra positive
   eigenvalues tending to zero, establish a positive-gap count, or imply
   a five-body trace-class comparison.
5. The bounds and proof keep `Q` fixed. When `Q` grows with `P`, the finite
   right budget and finite left endpoint cutoff disappear; the balanced
   regime requires its separate semiclassical analysis.

The root collaborator proposed the Möbius recursion, the exact
equal-cluster exterior-square formulation, and the fixed-right-degree
extension. The present note establishes their concrete operator and Bose
interfaces. An independent audit checked those interfaces, including the
finite right-budget image, diagonal Bose condition, and all degree-dependent
exchange signs. Numerical certificates support the construction but are
not substitutes for the proofs above.


---

# Appendix C: Exact regular isolated multiplicities and the top chiral branch

Source SHA-256: a4fc8fdd256e5e6d4a04bf5350484200d28c0c70849e895ce8e55056ca904d42.

## Exact eventual multiplicities at regular isolated cluster thresholds

**Status: new theorem, 19 October 2026.** This independent continuation
upgrades the fixed-right-degree cluster spectral-set theorem to an exact
eventual multiplicity formula at a precisely defined class of thresholds.
It applies to every fixed `N>=3`, `Q>=0`, and physical `Delta>1`. It uses
the same prescribed order-`G` scalar Fock pair operator and the actual
diagonal Bose primary spaces. No analyticity in the integer excitation
`P`, perturbative eigenvalue labelling, or finite-`P` diagonalization is
assumed.

The inputs from `ALL_FIXED_Q_PARTITION_RECURSION.md`, read in full, are its
finite-right-budget compact partition product, the continuous Mobius
identity, the proper-cluster spectral upper bound, and the exact
two-cluster Bose Gram and exchange identities. The relevant independent
partition audit was also read in full. The argument below independently
checks the additional local-finiteness and projection-rank interfaces;
these are not consequences of a spectral-set statement alone.

### 1. Definitions and theorem

Let

\[
\mathcal V_m(p,q)=V_m^B(p,q),\qquad
\mathcal A_{m,q}=\bigoplus_{p\ge0}A_m(p,q),\qquad
\Sigma_{m,q}=\overline{\bigcup_{p\ge0}\sigma(A_m(p,q))}.
\tag{1.1}
\]

All cluster spaces are invariant under the simultaneous left/right
permutation action. Empty primary blocks contribute no states. A singleton
has only `V_1(0,0)=C`, with residual zero. At fixed right budget `Q`, these
operators are uniformly bounded and all the nonempty sets `Sigma_m,q`,
`q<=Q`, are compact.

The universal proper-cluster set is

\[
\mathfrak C_{N,Q}=
\bigcup_{a=1}^{\lfloor N/2\rfloor}
\ \bigcup_{q_1+q_2\le Q}
   (\Sigma_{a,q_1}+\Sigma_{N-a,q_2}).
\tag{1.2}
\]

Define the finer-partition threshold set

\[
\boxed{
\mathfrak F_{N,Q}=
\bigcup_{\substack{\pi\text{ partition of }[N]\\|\pi|\ge3}}
\ \bigcup_{\sum_{S\in\pi}q_S\le Q}
       \sum_{S\in\pi}\Sigma_{|S|,q_S}.}
\tag{1.3}
\]

The union is finite, each Minkowski sum is compact, and hence (1.3) is
already closed. It is equivalently the closure of all the corresponding
finite-degree internal spectral sums. The lower-cluster inclusion proved
in the prior recursion gives `F_N,Q subset C_N,Q`.

Call

\[
\lambda\in\mathfrak C_{N,Q}\setminus\mathfrak F_{N,Q}
\tag{1.4}
\]

a **regular cluster threshold**. Isolation is a conclusion below; it need
not be separately assumed.

For an unordered size split `a+b=N`, `a<=b`, define the ordered internal
source space with the actual right budget

\[
\mathfrak h_{a,b;Q}=
\bigoplus_{q_1+q_2\le Q}\ \bigoplus_{p_1,p_2\ge0}
      \mathcal V_a(p_1,q_1)\otimes\mathcal V_b(p_2,q_2),
\tag{1.5}
\]

with the additive internal residual `L_a,b=A_a tensor I+I tensor A_b`.
Let

\[
\mathcal K_{a,b}(\lambda;Q)=\ker(L_{a,b}-\lambda I).
\tag{1.6}
\]

This is the internal source eigenspace: the free outer left and right
Clebsch-Gordan couplings are not included in its dimension. Section 2
proves it is finite dimensional at every regular threshold.

If `a<b`, set

\[
M_{a,b}(\lambda;Q)=\dim\mathcal K_{a,b}(\lambda;Q).
\tag{1.7}
\]

If `N=2m`, put `D=(-1)^(p+q)` on each internal `V_m^B(p,q)`, let `F` be
factor swap, and define the involution

\[
J=(D\otimes D)F=(I\otimes D)F(I\otimes D).
\tag{1.8}
\]

It commutes with the additive Hamiltonian and the right-budget projector.
For `eta=+1,-1`, set

\[
M_{m,m}^{\eta}(\lambda;Q)=
\dim\bigl(\mathcal K_{m,m}(\lambda;Q)\cap\ker(J-\eta I)\bigr).
\tag{1.9}
\]

Conjugating by `I tensor D` identifies this space with the appropriate
budget symmetric or exterior square; degree labels and all internal
eigenvalue multiplicities remain present.

**Theorem 1.1 — regular isolated threshold multiplicity.** Suppose (1.4).
Then `lambda` is an isolated point of `C_N,Q`, every space (1.6) is finite
dimensional, and there is `epsilon_0>0` with the following property. For
every fixed `0<epsilon<=epsilon_0`, all sufficiently large `P` satisfy

\[
\boxed{
\operatorname{rank}\mathbf1_{(\lambda-\epsilon,\lambda+\epsilon)}
                  (A_N(P,Q))
=\sum_{a<N/2}M_{a,N-a}(\lambda;Q)
 +\begin{cases}
  M_{N/2,N/2}^{\,(-1)^{P+Q}}(\lambda;Q),&N\text{ even},\\
  0,&N\text{ odd}.
 \end{cases}}
\tag{1.10}
\]

The eigenvalues counted in this fixed window converge to `lambda` as
`P` grows. The right side is an exact eventual multiplicity, including
accidental equality of thresholds from different channels. There is
**one source copy per binary partition orbit**, not one copy for every
labelled partition.

For odd `N`, the count is independent of parity and holds along all large
integers `P`. For even `N`, it can differ on the two `P+Q` parities. It can
be zero on one parity, in which case that regular point of the universal
set `C_N,Q` is absent from that parity's target limiting set. The theorem
does not assert individual eigenvalue series or an effective last degree.

### 2. Why regularity forces local finite internal multiplicity

The essential additional fact is stronger than set isolation.

**Lemma 2.1.** If a compact real interval `I` is disjoint from `F_N,Q`,
then the spectral projection `1_I(L_a,b)` on (1.5) has finite rank for
every binary split `a+b=N`.

**Proof.** Suppose it had infinite rank. Every fixed tuple
`(p_1,q_1,p_2,q_2)` has finite dimensional multiplicity, so there would be
an infinite sequence of distinct degree tuples with source eigenvalues

\[
\alpha_j\in\sigma(A_a(p_{1,j},q_{1,j})),\qquad
\beta_j\in\sigma(A_b(p_{2,j},q_{2,j})),\qquad
\alpha_j+\beta_j\in I.
\]

There are finitely many right-degree pairs. Pass to a subsequence with
fixed `q_1,q_2` and `q_1+q_2<=Q`. At least one left degree tends to
infinity along a further subsequence, say `p_1->infinity`; a singleton
cannot supply such a sequence. Uniform boundedness gives convergent
subsequences `alpha_j->alpha`, `beta_j->beta`, with `alpha+beta in I`.
The smaller-particle proper-cluster upper theorem implies

\[
\alpha\in\mathfrak C_{a,q_1}.
\]

Resolve that proper cluster set into at least two clusters of the first
group. Their right budgets sum to at most `q_1`. Append the second group,
whose limiting value belongs to `Sigma_b,q_2`. The resulting partition
of all `N` leaves has at least three blocks and right budget at most
`q_1+q_2<=Q`. Thus `alpha+beta in F_N,Q`, contradicting the choice of `I`.
The argument is unchanged if both left degrees grow. This proves the
lemma. In particular it excludes infinitely repeated copies of one
numerical eigenvalue outside `F_N,Q`; distinct-point isolation by itself
would not exclude them. □

Choose an interval around a regular `lambda` with closure disjoint from
`F_N,Q`. The spectrum of each additive source operator on that interval
is finite by Lemma 2.1. Its spectrum is exactly the compact sum of the
two cluster spectrum closures: one inclusion follows from its diagonal
finite-block eigenbasis, and the other by approximating both summands
by finite-degree eigenvalues. Therefore (1.2), a finite union, has only
finitely many points in this interval. In particular `lambda` is isolated
and is an actually attained finite-degree source eigenvalue in at least
one binary orbit. Shrink the interval to retain only that value.

This also gives a finite bound on all internal degree tuples contributing
to (1.6). Every such tuple is eventually realizable in the target:
the outer left degree is `P-p_1-p_2>=0`, and the outer right degree is
`Q-q_1-q_2>=0`. Both two-module couplings are multiplicity-free. No extra
factor is associated with the unused right budget.

### 3. A local Mobius identity for the target spectral projection

Choose a continuous real function `f` on the common bounding interval,
equal to one in a small neighborhood of `lambda`, equal to zero outside
a slightly larger neighborhood, and with the latter's closure disjoint
from `F_N,Q` and from `C_N,Q\{lambda}`. In particular `f=0` on every
finer-partition threshold and on every other binary threshold.

For a partition `pi`, let `H_pi` be the labelled internal residual sum,
and let `Q_pi` project to internal diagonal Bose symmetry. The actual
global Bose projector `p` obeys

\[
pQ_\pi=Q_\pi p=p,\qquad [Q_\pi,H_\pi]=0.
\]

For `|pi|>=3`, therefore,

\[
p f(H_\pi)p=0
\tag{3.1}
\]

**exactly**, because its internal Bose spectrum is contained in `F_N,Q`.
For a binary partition define `E_pi` to be its internal Bose
`lambda`-eigenprojection, extended as the identity on the outer modules.
The same functional calculus gives

\[
p f(H_\pi)p=pE_\pi p.
\tag{3.2}
\]

By Lemma 2.1, `E_pi` has only finitely many internal degree blocks and
belongs to that partition's internal cutoff algebra. Globally its
extension is **not** a finite-rank operator: outer left degree can grow
without bound. At each sufficiently large fixed total `(P,Q)`, however,
its rank is the fixed finite source dimension in (1.6).

The established continuous Mobius identity is

\[
\sum_\pi\mu(\pi,1_N)f(H_\pi)\quad\text{compact in total primary degree},
\qquad
\mu(\pi,1_N)=(-1)^{|\pi|-1}(|\pi|-1)!.
\]

Its one-block coefficient is `+1` and every binary coefficient is `-1`.
Compressing by the actual `p`, using (3.1)-(3.2), and restricting to
total right degree `Q` gives

\[
f(A_N)=\sum_{|\pi|=2}pE_\pi p+K,
\qquad K\text{ compact and degree preserving}.
\tag{3.3}
\]

Consequently `||K|_(P,Q)||->0` as `P->infinity`. This is an operator-norm
statement on the entire degree block, not just on a chosen trial family.

For one representative of each binary partition orbit, let

\[
m_\pi=
\begin{cases}
\binom Na,&a<N-a,\\
\tfrac12\binom N{N/2},&a=N/2.
\end{cases}
\]

Permutation covariance and `pU_g=U_gp=p` imply exactly
`pE_(g pi)p=pE_pi p`. Thus (3.3) becomes

\[
f(A_N(P,Q))=
\sum_{\text{binary orbits }[\pi]}m_\pi pE_\pi(P,Q)p+o(1).
\tag{3.4}
\]

### 4. Bose orbit normalization and the joint polar projection

Fix a representative bipartition. For all large `P`, the normalized
two-module coupling gives a labelled isometry

\[
T_{\pi,P}:\mathcal K_{a,b}(\lambda;Q)
\longrightarrow V_N^L(P)\otimes V_N^R(Q),
\qquad E_\pi(P,Q)=T_{\pi,P}T_{\pi,P}^*.
\tag{4.1}
\]

All sources here are fixed finite families. Products of finite cutoffs
belonging to distinct bipartitions are compact because their partition
join is the one-block partition. Hence for distinct labelled binary
cuts their target-degree overlaps tend to zero in operator norm.

#### 4.1 Unequal sizes

The stabilizer of the cut contains only internal permutations; they act
trivially on the internal Bose sources and their global descendants.
There are `|S_N|/m_pi` such terms in the group average. Every other term
has a distinct-cut overlap. Therefore

\[
T_{\pi,P}^*pT_{\pi,P}=m_\pi^{-1}I+o(1).
\tag{4.2}
\]

For `V_pi,P=sqrt(m_pi)pT_pi,P`, this gives

\[
V_{\pi,P}^*V_{\pi,P}=I+o(1),\qquad
m_\pi pE_\pi p=V_{\pi,P}V_{\pi,P}^*.
\tag{4.3}
\]

The orbit factor in (3.4) cancels the inverse factor in (4.2). The resulting
rank is the dimension of one source space, not `m_pi` times that dimension.

#### 4.2 Equal sizes

The exact exchange of the two outer Clebsch-Gordan couplings is

\[
U_{\rm swap}T_{\pi,P}=(-1)^{P+Q}T_{\pi,P}J.
\tag{4.4}
\]

Write `eta=(-1)^(P+Q)`. Because `pU_swap=p`, the map `pT_pi,P` annihilates
`J=-eta` identically. Restrict (4.1) to `K_pi^eta=K_pi cap ker(J-eta)`.
On this allowed source the entire normalizer, including block exchange,
acts trivially after (4.4). Formula (4.2) therefore holds on this source
with `m_pi=binom(N,N/2)/2`. In particular, with the restricted `V_pi,P`,

\[
m_\pi pE_\pi p=V_{\pi,P}V_{\pi,P}^*,\qquad
V_{\pi,P}^*V_{\pi,P}=I_{\mathcal K_\pi^\eta}+o(1).
\tag{4.5}
\]

The full ordered tensor square has not been counted twice. A same-vector
source survives only the symmetric parity. Two distinct internal vectors
with the same eigenvalue are still distinct source states and contribute
to the exterior square when their right budget allows it.

For compact-overlap estimates one uses the full finite internal projection
`E_pi`, which belongs to the partition algebra. It is unnecessary to claim
that the allowed exchange projection by itself is an internal tensor
product operator; its image is a subspace of the full cutoff.

#### 4.3 Combine different binary orbits before taking a polar projection

Let `K_eta` be the direct sum of the finite source spaces just specified,
one per binary orbit, and form the column map

\[
V_P=\bigl(V_{\pi,P}\bigr)_{[\pi]}:\mathcal K_\eta
\longrightarrow V_N^B(P,Q).
\]

For two distinct orbit types, every conjugate cut of one is distinct
from the other. The compact cutoff-overlap estimate, applied termwise
to the finite group average, gives
`V_pi,P^*V_tau,P=o(1)`. Together with (4.3) and (4.5),

\[
V_P^*V_P=I_{\mathcal K_\eta}+o(1).
\tag{4.6}
\]

For all sufficiently large `P`, it is invertible on its source. The
orthogonal projection onto its range is

\[
R_P=V_P(V_P^*V_P)^{-1}V_P^*,\qquad
\operatorname{rank}R_P=\dim\mathcal K_\eta.
\tag{4.7}
\]

Its difference from `V_PV_P^*` tends to zero in norm by (4.6). Equation
(3.4) is therefore the stronger assertion

\[
\boxed{\|f(A_N(P,Q))-R_P\|\longrightarrow0.}
\tag{4.8}
\]

If the allowed source is zero dimensional, interpret `R_P=0`; the same
statement holds. There are only two parities, so their separate eventual
claims can be combined into one sufficiently large lower bound on `P`.

### 5. Norm-close projections have the exact same finite rank

It remains to justify that the left operator in (4.8) is itself a
projection for all large `P`. Choose the constant-one and zero regions
of `f` so that its transition annuli have compact closures disjoint from
`C_N,Q`. The established high-degree upper theorem excludes target
eigenvalues in those annuli for all sufficiently large `P`: otherwise
boundedness would yield a subsequential spectral limit outside `C_N,Q`.

Thus `f(A_N(P,Q))` is eventually exactly the spectral projection onto
the inner window about `lambda`. Its endpoints are also eventually free
of spectrum. Once the norm in (4.8) is less than one, its rank equals
the rank of `R_P`. Indeed, two orthogonal projections at distance less
than one restrict injectively to each other's ranges; for finite ranks
this gives both inequalities and hence equality. This proves (1.10).

For any smaller fixed window, its annular difference from the first
window is again disjoint from `C_N,Q`. Eventually it contains no target
eigenvalues. Hence the same multiplicity holds for every sufficiently
small fixed window and all its counted eigenvalues converge to `lambda`.
The degree beyond which it holds may depend on the chosen window. No
unproved interchange of a shrinking window with `P->infinity` is used.

### 6. Explicit multiplicity formulas

For unequal clusters, the formula can be written entirely in lower-
particle finite-block multiplicities:

\[
M_{a,b}(\lambda;Q)=
\sum_{q_1+q_2\le Q}\ \sum_{p_1,p_2\ge0}\ \sum_{\alpha+\beta=\lambda}
\operatorname{mult}_{A_a(p_1,q_1)}(\alpha)
\operatorname{mult}_{A_b(p_2,q_2)}(\beta).
\tag{6.1}
\]

Only finitely many terms are nonzero by Lemma 2.1. No copies at different
degrees are collapsed merely because they share the same numerical
eigenvalue.

For an equal split, let `K=dim K_m,m(lambda;Q)` be the ordered source
dimension, and set

\[
T(\lambda;Q)=
\sum_{2q\le Q}\ \sum_{p\ge0}
\operatorname{mult}_{A_m(p,q)}(\lambda/2).
\tag{6.2}
\]

Then

\[
\boxed{M_{m,m}^{\eta}(\lambda;Q)=\frac{K+\eta T(\lambda;Q)}2.}
\tag{6.3}
\]

To see this, use a simultaneous internal eigenstate and degree basis.
The swap has zero trace on every pair of distinct basis vectors and
trace one on `v_i tensor v_i`. The latter belongs to the `lambda` source
precisely when `2 lambda_i=lambda` and `2q_i<=Q`. The twist conjugation
in (1.8) preserves this source, so it has the same trace as ordinary
swap. Formula (6.3) is the exact symmetric/exterior count, including
degenerate internal eigenvalues.

As a normalization check at `N=3`, the finer set is `{0}` and there is
one unequal orbit `1+2`. Every positive pair threshold has eventual
multiplicity

\[
\#\{(k,l)\in\mathcal B_Q:a_{kl}=\lambda\}.
\tag{6.4}
\]

This includes accidental equal pair values and agrees with the finite
bad-channel Gram picture without multiplying the answer by the three
labelled choices of the pair.

### 7. Five-body chiral specialization

At `N=5,Q=0`, write `Sigma_m=Sigma_m,0`. The finer partitions are
`3+1+1`, `2+2+1`, and their refinements. Singleton inheritance gives
`Sigma_2 subset Sigma_3`, and therefore

\[
\boxed{\mathfrak F_{5,0}=\Sigma_3\cup(\Sigma_2+\Sigma_2).}
\tag{7.1}
\]

The universal five-body set is

\[
\mathfrak C_{5,0}=\Sigma_4\cup(\Sigma_3+\Sigma_2),\qquad
\Sigma_2=\{0,a_0,a_2\},
\]

where

\[
a_0=\frac{2\Delta^2(2\Delta+5)}{(2\Delta-1)(2\Delta+1)},\qquad
a_2=\frac{4\Delta}{(2\Delta+1)(2\Delta+3)}.
\]

For any
`lambda in C_5,0 \ (Sigma_3 union (Sigma_2+Sigma_2))`, all sufficiently
large integer `P` have exactly

\[
\boxed{
M_5(\lambda)=
\sum_{s\ge0}\operatorname{mult}_{A_4(s,0)}(\lambda)
 +\sum_{\alpha\in\{a_0,a_2\}}\sum_{t\ge0}
       \operatorname{mult}_{A_3(t,0)}(\lambda-\alpha)
}
\tag{7.2}
\]

eigenvalues in every sufficiently small fixed window about `lambda`.
Both binary splits, `4+1` and `3+2`, have unequal sizes, so no parity
qualification remains. Their orbit sizes are five and ten, respectively,
but neither multiplies (7.2).

The two-body positive values are each realized by one source state,
at internal degrees zero and two. The two-body zero is realized at
infinitely many larger degrees. Its contribution is correctly absent
from (7.2): adding it would require `lambda in Sigma_3`, explicitly
excluded in (7.1). If four-body or three-body internal degrees could
grow without bound at this same threshold, the smaller-particle upper
theorem would likewise place `lambda` in (7.1). Thus both sums in (7.2)
are finite, not formal infinite-multiplicity prescriptions.

### 8. A universal eventually simple top chiral branch

The theorem has a concrete all-particle consequence requiring no unknown
internal spectral roots.

**Corollary 8.1.** For every fixed `N>=3`, `Delta>1`, and `Q=0`, the
largest eigenvalue of `A_N(P,0)` is simple for every sufficiently large
integer `P`, of either parity, and

\[
\boxed{
\lambda_{\max}(A_N(P,0))
=\binom{N-1}{2}a_0+O(P^{-\Delta}).}
\tag{8.1}
\]

The error constant and the degree beyond which simplicity holds depend
on `N,Delta`; the statement does not assert simplicity at every low
degree.

#### 8.1 The exact internal maximum is uniquely the ground primary

For the chiral pair, `0<a_2<a_0`. The strict inequality follows directly
from

\[
a_0-a_2=
\frac{2\Delta(4\Delta^3+16\Delta^2+11\Delta+2)}
     {(2\Delta-1)(2\Delta+1)(2\Delta+3)}>0.
\]

Every pair residual is at most `a_0 I`. Therefore

\[
A_m(p,0)\le\binom m2a_0 I.
\tag{8.2}
\]

If a vector attains equality, positivity of each deficit forces it into
the relative-spin-zero space of every pair. Thus every pair Casimir acts
by `C_0=Delta(Delta-1)`. Let `h=Delta/2`. The exact Casimir identity is

\[
\sum_{i<j}C_{ij}
=C_{[m]}+(m-2)\sum_iC_i,
\quad C_i=h(h-1),\quad
C_{[m]}=(mh+p)(mh+p-1).
\tag{8.3}
\]

Subtract its value at `p=0`. Equality of all the pair Casimirs with
their ground values then gives

\[
p(m\Delta+p-1)=0.
\]

Since `Delta>1` and `p>=0`, it forces `p=0`. The degree-zero internal
primary is one dimensional and does attain (8.2). Thus the only internal
source attaining that cluster's exact upper bound is its ground primary.
Singletons have the same one-dimensional ground interpretation.

#### 8.2 The top binary threshold is regular and has one source

For a partition with block sizes `s_1,...,s_k`, (8.2) bounds its internal
sum by `a_0 sum_i binom(s_i,2)`. At fixed `k`, this sum is maximized when
one block has size `N-k+1` and the others are singletons. Consequently

\[
\max\mathfrak C_{N,0}=\binom{N-1}{2}a_0=:\lambda_*,
\qquad
\max\mathfrak F_{N,0}=\binom{N-2}{2}a_0.
\tag{8.4}
\]

Both maxima are attained by the indicated ground clusters. The gap is
`(N-2)a_0>0`, so `lambda_*` is regular.

The only binary size split attaining the first maximum is `1+(N-1)`.
Section 8.1 makes its attaining source unique. This split is unequal for
all `N>=3`, so Theorem 1.1 gives exactly one eigenvalue near `lambda_*`
for all sufficiently large `P`, with no parity exception. Since no
cluster threshold is larger, the upper spectral theorem makes it the
largest target eigenvalue; all other eigenvalues are eventually below
a fixed smaller neighborhood. This proves eventual simplicity and
convergence in (8.1).

#### 8.3 The rate comes from a fixed ground-source estimate

The quantitative singleton theorem in the retained Deep note
`new_research/racah/CLUSTER_INHERITANCE_AND_HIGHER_N_OBSTRUCTION.md`,
sections 2, 3 and 3.2, was read in full for this step. Its input is exactly
the ground cluster of size `n=N-1`, with residual `lambda_*`.

For clarity, the normalized labelled coupled source `T_P` has exact Bose
norm

\[
\|pT_P\|^2=
\frac{1+n(-1)^P(\Delta)_P/(n\Delta)_P}{N}
\longrightarrow\frac1N.
\tag{8.5}
\]

Each cross pair projects onto only left relative spins zero and two.
After splitting off its leaf from the ground source, the relevant
normalized Racah endpoint is

\[
F_{0k}^{((N-2)h,h,h;P)}=O(P^{-2h})=O(P^{-\Delta}),
\qquad k=0,2.
\]

The terminating hypergeometric part is one at this endpoint; the power
follows from the explicit normalization gamma ratio. There are only
`N-1` cross pairs. The internal source terms act exactly by `lambda_*`,
and the labelled residual commutes with the Bose projector. Normalizing
by (8.5) therefore gives a physical unit vector `u_P` satisfying

\[
\|(A_N(P,0)-\lambda_*)u_P\|=O(P^{-\Delta}).
\tag{8.6}
\]

For a finite self-adjoint matrix, (8.6) bounds the distance from
`lambda_*` to its spectrum. The regular multiplicity theorem has already
proved that the nearby eigenvalue is the unique maximum. Thus that
distance bound is exactly the error asserted in (8.1). The quantitative
singleton construction is retained input; the new content is the exact
eventual uniqueness and identification of its eigenvalue as the maximum.

### 9. Audit boundaries and what remains open

The theorem supplies an exact upper multiplicity bound matching the
finite-source lower construction on the open set `C_N,Q\F_N,Q`. It is
strictly stronger there than a Hausdorff spectral-set limit. Its proof
uses four distinct facts that cannot be replaced by numerical checks:

1. Smaller-cluster spectral upper bounds force local finite internal
   multiplicity away from all finer partitions.
2. The continuous Mobius identity leaves precisely binary coefficient
   `-1` after localization, with the true internal Bose projections.
3. Orbit averaging and the exact twisted exchange select and normalize
   a fixed finite source; a joint polar map treats all orbit overlaps.
4. The upper spectral exclusion removes the transition annuli, so
   norm closeness becomes an exact integer rank identity.

At `lambda in F_N,Q`, the proof deliberately stops at its first step:
source multiplicity can be infinite, overlapping finer channels can
survive the localized Mobius identity, and a finite-dimensional joint
polar projection need not exist. These are precise failures of this
argument, not a claim that all such multiplicities are unsolvable.
For `N>=3`, zero belongs to `F_N,Q`; the theorem therefore does not
exclude additional strictly positive eigenvalues tending to zero.
It also does not give a five-body Fredholm determinant, a uniform
cutoff error rate, or a result with growing `Q`.

The assertion concerns global-primary residual blocks. Returning to
the original order-`G` coefficient adds the established target baseline
`b_N(Q)` to the threshold; it does not add internal cluster baselines
or change the source count. The prior global-descendant rules then
apply as before. No additional physical closure assumption is made
inside this mathematical multiplicity theorem.

Independent collaborators reviewed the local-finiteness contradiction,
the Mobius sign, the equal-cluster parity selection, the orbit factor,
and the norm-close projection step before integration. No numerical
experiment is needed to establish this result, and none is substituted
for its proof.


---

# Appendix D: Exponential soft spectrum and mass comparison

Source SHA-256: 6e697d936ec926b40d09d8f89e5f7da1d10e413d60c03c23bb2a74a87625282f.

## Exponentially small positive spectrum from exact pair flags

### Status and scope

This continuation proves an actual small-energy upper scale for the previously
established Grassmann zero atom. It applies to every fixed particle number
`N >= 3`, every physical scalar gap `Delta > 1`, and `P,Q -> infinity` with
`Q/P -> r` in `(0,1)`. All eigenvalues are coefficients in the prescribed
order-`G` scalar Fock branch. The Brown–Henneaux/scalar boundary prescription
and the Einstein pair coefficients are retained.

The main result is an exponential **upper** bound for an extensive number of
strictly positive residual eigenvalues. It does not identify a matching
exponential lower bound or the individual tunnelling actions. No numerical
near-zero eigenvalue is used as evidence of an exact zero or of an exponential
rate. The argument uses exact relative-spin flags, polynomial metric bounds,
coherent tensor large deviations, a trace-only dimension estimate, and the
previous exact kernel formula. It requires no unproved semiclassical
functional calculus at the physical mass.

### 1. Statements

Write the established physical primary operator as

\[
 W_N=b_N(Q)I+A_N(\Delta),\qquad A_N(\Delta)\ge0,
 \quad d_{P,Q}=\dim\mathcal P_N(P,Q),\quad
 \kappa_{P,Q}=\dim\ker A_N.
\]

For two independent Haar oriented planes in `R^N`, let `B_e,B'_e` be their
unsquared Pluecker coordinates, indexed by unordered particle pairs. Put

\[
 \Omega_\delta(r)=\{(B,B'): |B_e|-r|B'_e|>\delta\text{ for every }e\},
 \qquad \omega_\delta(r)=\Pr(\Omega_\delta(r)),
\]

and

\[
 \omega(r)=\Pr\{|B_e|\ge r|B'_e|\ \forall e\},\qquad
 k_N(r)=\lim\kappa_{P,Q}/d_{P,Q}.
\]

The previously proved Grassmann law gives the leading symbol
`8 sum_e (r^2 (B'_e)^2-B_e^2)_+`, with atom `omega(r)` at zero. The exact
logarithmic kernel gives

\[
 k_N(r)=\mathbb E\left(1-r\sum_{a=1}^{N-1}aT_a\right)_+^{N-2},
 \quad T\sim\operatorname{Dirichlet}(1,\ldots,1).
\]

#### Theorem 1: an exponential volume bound

For every fixed `delta > 0`,

\[
 \boxed{\liminf_{P,Q\to\infty\atop Q/P\to r}
 \frac{\#\{0<\lambda(A_N(\Delta))\le
                    \exp(-\delta^2 P/32)\}}{d_{P,Q}}
 \ge \max\{0,\omega_\delta(r)-k_N(r)\}.}
 \tag{1.1}
\]

The exponent `delta^2/32` is an explicit, conservative bound. It is not a
claimed optimal tunnelling action. Its independence of `Delta` is literal;
the degree beyond which the estimate holds depends on `Delta` and on the
fixed parameters.

Since comparison boundaries have Haar measure zero,
`omega_delta(r) -> omega(r)` as `delta -> 0`. Consequently, for every
`eta > 0` there is `c_eta > 0` such that

\[
 \liminf\frac{\#\{0<\lambda(A_N)\le e^{-c_\eta P}\}}{d_{P,Q}}
 \ge \omega(r)-k_N(r)-\eta.
 \tag{1.2}
\]

In particular the result is nontrivial for **every** `0 < r < 1` at `N=3`,
where the preceding study proved `omega(r)>k_3(r)`. It is also nontrivial at
every fixed `N>=4` in the previously proved sufficiently small, fixed-ratio
range. The explicit `N=4` interval `0<r<=exp(-23)` remains available. This
continuation does not enlarge that positivity interval.

The volume loss itself has an explicit universal bound. With
`K_N=binom(N,2)(N-2)`,

\[
 0\le\omega(r)-\omega_\delta(r)\le K_N\delta.
 \tag{1.2a}
\]

Indeed the lost region lies in the union of strips
`0<=|B_e|-r|B'_e|<=delta`. Conditional on the independent right plane, the
left marginal `|B_e|~Beta(1,N-2)` has density at most `N-2`, so each strip
has measure at most `(N-2)delta`. Thus one can take
`c_eta=eta^2/(32 K_N^2)` in (1.2).

For a fully explicit example, at `N=3,r=1/2` the old positive atom series
gives `omega-k=3p_2(1/2)>=1/pi^2` and `k=1/4`. Set
`delta=1/(6 pi^2)`. For every fixed physical `Delta>1`,

\[
 \boxed{\liminf\frac{\#\{0<\lambda(A_3(\Delta))
                \le e^{-P/(1152\pi^4)}\}}{d_{P,Q}-\kappa_{P,Q}}
       \ge\frac{2}{3\pi^2}.}
 \tag{1.2b}
\]

This certifies at least about `6.75%` of the strictly positive spectrum in
an explicit exponential window in this fixed-ratio asymptotic regime. The
bound is conservative; it does not provide a small numerical finite-degree
onset or an optimal exponent.

#### Corollary 1: no positive-density intermediate algebraic scale

Let `t_{P,Q}>0` satisfy

\[
 \log t_{P,Q}=o(P),\qquad t_{P,Q}/P^2\longrightarrow0.
 \tag{1.3}
\]

Then the normalized count of strictly positive levels obeys

\[
 \boxed{\lim\frac{\#\{0<\lambda(A_N)\le t_{P,Q}\}}
                     {d_{P,Q}-\kappa_{P,Q}}
 =\frac{\omega(r)-k_N(r)}{1-k_N(r)}=:z_{+,N}(r).}
 \tag{1.4}
\]

This includes every fixed power cutoff `t=P^alpha`, `alpha<2`, every fixed
positive cutoff, and `t=exp(-P^theta)` with `0<theta<1`. For any two such
cutoffs their difference window contains `o(d_{P,Q})` strictly positive
levels. The macroscopic layer previously known only to be `o(P^2)` is thus
below every algebraic scale, with exponential upper bounds capturing an
arbitrarily large fraction of that layer.

The claim does not say every subleading eigenvalue is exponentially small:
exceptional families of zero limiting density are permitted. Nor does it
assert a common exponential constant for the whole atom, or a single
exponential scale for its individual levels.

#### Theorem 2: mass-independent logarithmic rates

At fixed `N`, the entire ordered positive residual spectrum at two physical
masses `Delta_1,Delta_2>1` is comparable up to powers of `P+1,Q+1`. More
precise bounds through a mass-independent support operator are given in
section 4. In particular, along the regime of Theorem 1,

\[
 \sup_{1\le j\le d_{P,Q}-\kappa_{P,Q}}
 \left|\frac{\log\lambda_j^+(A_N(\Delta_1))}{P}
       -\frac{\log\lambda_j^+(A_N(\Delta_2))}{P}\right|
 =O_{N,\Delta_1,\Delta_2,r}(\log P/P).
 \tag{1.5}
\]

Thus any limiting ordered exponential-rate profile, if it exists, is
independent of the physical scalar mass. Existence or an explicit formula
for that profile is not proved here. This is a finite-dimensional comparison
theorem, not an application of the old leading trace comparison.

The empirical measures of `theta_j=-P^-1 log lambda_j^+` at two physical
masses have bounded-Lipschitz distance tending to zero. Consequently all
their subsequential weak limits along the same degrees agree whenever such
probability limits exist. One may also use the one-point compactification
to retain a possible atom at `theta=+infinity`; the comparison does not
exclude superexponential levels.

### 2. The exact physical support and parameter-independent flags

Let `V_P` be the labelled one-chirality primary polynomial space

\[
 V_P=\{f\text{ homogeneous of degree }P:\sum_i\partial_i f=0\}.
\]

At Bargmann parameter `d>0`, the monomial norm is

\[
 \|z^\alpha\|_d^2=\prod_i\frac{\alpha_i!}{(d)_{\alpha_i}},
\]

and the self-adjoint pair Casimir is

\[
 C_{ij}(d)=-(z_i-z_j)^2\partial_i\partial_j
       +d(z_i-z_j)(\partial_i-\partial_j)+d(d-1).
 \tag{2.1}
\]

Its relative-spin eigenvalue is `(d+k)(d+k-1)`. Denote the corresponding
orthogonal eigenspace in `V_P` by `E_e(k;d)`. Multiplicities for `N>3` are
included in this notation.

**Flag lemma.** For every integer `K>=0`,

\[
 F_e(K):=V_P\cap(z_i-z_j)^K\mathbb C[z_1,\ldots,z_N]_{P-K}
       =\bigoplus_{k\ge K}E_e(k;d).
 \tag{2.2}
\]

In particular the high relative-spin flag is an algebraic subspace
independent of `d`.

**Proof.** Put `delta=z_i-z_j`, `s=(z_i+z_j)/2`. Direct differentiation gives

\[
 C_{ij}(d)=(d+\delta\partial_\delta)
                (d+\delta\partial_\delta-1)
              -\frac{\delta^2}{4}\partial_s^2.
 \tag{2.3}
\]

Choose translation-invariant coordinates `delta,z_a-s` for the spectators.
On their degree-`P` polynomials, (2.3) is triangular in increasing powers of
`delta`: its diagonal on power `k` is `(d+k)(d+k-1)` and its other term raises
that power by two. It preserves `F_e(K)`, and all diagonal eigenvalues there
have `k>=K`. The eigenvalues for distinct `k>=0` are distinct at `d>0`.
Self-adjointness and the dimensions give (2.2), including the spectator
multiplicities. Equivalently, `E_e(k;d)=F_e(k) cap F_e(k+1)^{perp_d}`. End
flags are understood as `F_e(0)=V_P`, `F_e(K)=0` for `K>P`. This proof uses
neither a recoupling approximation nor a large-degree limit.

For the Einstein operator the pair residual is

\[
 a_{k\ell}(\Delta)=\gamma_{k\ell}(\Delta)
        -4\Delta(\Delta-2)
        +8(\Delta+\ell)(\Delta+\ell-1).
 \tag{2.4}
\]

The established exact pair formula proves, on the Bose-even channels,

\[
 a_{k\ell}=0\ (k\ge\ell+4),\qquad
 a_{k\ell}>0\ (k\le\ell+2).
 \tag{2.5}
\]

Only this exact support and positivity, together with a polynomial upper
bound on the weights, are needed for Theorem 1. No leading-symbol
replacement of the low-spin correction is made.

For convenient algebra on the labelled tensor product, define the auxiliary
good subspace

\[
 Z_e(d)=\sum_{\ell=0}^Q
       F_e^L(\ell+3)\otimes F_e^R(\ell+1)^{\perp_d}
       =\bigoplus_{k\ge\ell+3}E_e^L(k;d)\otimes E_e^R(\ell;d).
 \tag{2.6}
\]

The equality follows by expanding the descending left and ascending right
flags. Every physical Bose vector is even under this pair exchange, so
`k+ell` is even. On that subspace `k>=ell+3` is precisely `k>=ell+4`.
Accordingly (2.6) restricts to the exact pair kernel in (2.5).

The odd-channel extension in (2.6) is solely a definition of an auxiliary
subspace. It neither assigns new physical Einstein eigenvalues nor enlarges
the physical Hilbert space. The offset 3 makes its complementary support
exactly `k<=ell+2` before the pair-even restriction as well.

### 3. Exact metric transport; its cost is polynomial

Use `d0=1/2` only as a positive auxiliary Bargmann parameter. The Einstein
coefficient `gamma_00` is singular there, and is never evaluated there.
Define the Riesz operator on `V_P` by

\[
 \langle f,g\rangle_d=\langle f,M_P(d)g\rangle_0.
 \tag{3.1}
\]

This is the metric restricted to the primary space, not the diagonal metric
on the whole homogeneous polynomial space. It is positive, invertible and
commutes with every permutation, because both restricted metrics do.

For every algebraic subspace `F` of `V_P`,

\[
 F^{\perp_d}=M_P(d)^{-1}F^{\perp_0}.
 \tag{3.2}
\]

Consequently the same invertible map

\[
 T_d=I_{V_P}\otimes M_Q(d)^{-1}
 \tag{3.3}
\]

has the simultaneous, exact property

\[
 T_d Z_e(1/2)=Z_e(d)\quad\text{for every pair }e.
 \tag{3.4}
\]

It commutes with the physical Bose projection. No individual pair
eigenvector is claimed to be mass independent: it is the nested flags and
their oppositely oriented orthogonal complements that make (3.4) possible.

Here is an elementary quantitative bound. Put `b=d-1/2>0`. The monomial norm
ratio is

\[
 r_\alpha=\prod_i\frac{(1/2)_{\alpha_i}}{(d)_{\alpha_i}}\le1.
\]

For a single occupation `n`, use `log(1+x)<=x` and

\[
 \sum_{j=0}^{n-1}\frac1{j+1/2}
 \le2+\log(2(n+1)).
\]

It follows, also at `n=0`, that

\[
 \frac{(1/2)_n}{(d)_n}
 \ge e^{-2b}2^{-b}(n+1)^{-b}.
\]

Thus, on the entire homogeneous space and therefore on its primary
restriction,

\[
 m_P(d)I\le M_P(d)\le I,\qquad
 m_P(d)=e^{-2Nb}2^{-Nb}(P+1)^{-Nb}.
 \tag{3.5}
\]

On the labelled tensor product and on the physical Bose subspace,

\[
 \|T_dv\|_d^2
 =\langle v,[M_P(d)\otimes M_Q(d)^{-1}]v\rangle_0,
\]

so

\[
 m_P\|v\|_0^2\le\|T_dv\|_d^2\le m_Q^{-1}\|v\|_0^2.
 \tag{3.6}
\]

Taking an infimum over the exactly transported subspaces in (3.4) gives
the same estimates for squared distances:

\[
 m_P\operatorname{dist}_0(v,Z_e(1/2))^2
 \le\operatorname{dist}_d(T_dv,Z_e(d))^2
 \le m_Q^{-1}\operatorname{dist}_0(v,Z_e(1/2))^2.
 \tag{3.7}
\]

This is the needed physical-mass interface. The older `O(P^-1)` leading
trace comparison alone would not preserve exponentially small energies.

### 4. Comparison with a parameter-free support operator

Let `B_0` be the sum of auxiliary orthogonal bad-support projectors, restricted
to the physical Bose subspace at `d0`:

\[
 B_0=\left.\sum_e\Pi_{Z_e(1/2)^\perp_0}\right|_{\mathrm{Bose}}.
 \tag{4.1}
\]

The sum preserves the Bose subspace; an individual pair summand need not.
From (2.5), (3.4), positivity and `ker sum = intersection ker`,

\[
 T_d\ker B_0=\ker A_N(d).
 \tag{4.2}
\]

Let `a_min(d;P,Q)` and `a_max(d;P,Q)` be the smallest and largest positive
physical pair weights present in the block. For a Bose vector, its projection
onto `Z_e(d)` stays pair even. Hence the physical quadratic form is bounded
by those weights times its squared distance from `Z_e(d)`. Summing (3.7)
and using (3.6), then applying the finite-dimensional min–max principle,
gives, for every ordered eigenvalue including zeros,

\[
 \boxed{a_{\min}m_Pm_Q\lambda_j(B_0)
 \le\lambda_j(A_N(d))
 \le\frac{a_{\max}}{m_Pm_Q}\lambda_j(B_0).}
 \tag{4.3}
\]

The exact Einstein rational formulas give the following explicit bounds at
every `d>1`:

\[
 \boxed{(2d+3)^{-3}\le a_{\min},\qquad
 a_{\max}\le20(d+Q)^2.}
 \tag{4.4}
\]

Here is an elementary certificate covering all channels. On the spin-two
edge, put `h=d+n`:

\[
 a_{n+2,n}=\frac{(n+1)(n+2)(2d+n-1)(2d+n)}
                    {(2h-1)(2h+1)(2h+3)}.
\]

Its numerator is at least `(n+1)^4`, and each denominator factor is at
most `(2d+3)(n+1)`. This gives the stated lower bound. For the spin-zero
edge at `n>=1`, write its numerator over
`(2h-3)(2h-1)(2h+1)` as `U`. With `x=d-1>0,m=n-1>=0`, exact expansion gives

\[
\begin{split}
 U={}&30m^4+120m^3x+180m^3+160m^2x^2+540m^2x+386m^2\\
 &+80mx^3+480mx^2+772mx+348m\\
 &+8x^4+120x^3+362x^2+348x+98.
\end{split}
\]

The coefficients of `U-30(m+1)^4` are all nonnegative. Each denominator
factor is at most `(2d+3)n`, proving
`a_{nn}>=30n/(2d+3)^3`. The separate removable-pole-safe coefficient
`a_00=2d^2(2d+5)/((2d-1)(2d+1))` exceeds `(2d+5)/2`, so also satisfies
(4.4). The opposite spin-two edge adds a positive Casimir difference.
Every remaining bad channel has `ell-k>=4` and equals
`8(C_ell-C_k)>=32(2d+3)`.

For the upper bound, the spin-two numerator is at most `8h^4` and its
denominator at least `h^3`, so it is at most `8h`. For `n>=1`, the
diagonal coefficient is at most `(8h^2+4)/(2h-1)<=8h+4`, using
`d(d-2)>=-1`; the `n=0` expression is at most `2d+5`. The remaining
positive Casimir difference is at most `8(d+Q)^2`. Since `d+Q>1`, all
channels are bounded by `8(d+Q)^2+8(d+Q)+4<=20(d+Q)^2`.
As a separate asymptotic check, the two exceptional edge sequences obey
`a_{n+2,n}/n -> 1/8` and `a_{n,n}/n -> 15/4`. Theorem 1 uses only the
upper bound in (4.4).

Equation (4.3) proves Theorem 2: compare each physical spectrum with the same
`B_0`, whose kernel and rank are unchanged, and take logarithms. All losses
are at most fixed powers of `P+1,Q+1`. This also shows precisely which part
of the new small-energy result is universal for other pair kernels: any
strictly positive weights with the same exact bad support and a polynomial
upper bound obey Theorem 1. A two-sided polynomial weight bound gives the
logarithmic-rate comparison as well.

### 5. Auxiliary harmonic realization and an exact large-deviation estimate

The auxiliary map

\[
 z^\alpha\longmapsto\prod_i\frac{y_i^{2\alpha_i}}{(1/2)_{\alpha_i}}
\]

identifies `V_P` with the coordinate-sign-even part of the degree-`2P`
harmonic representation `H_{2P}(R^N)`. Its norm factor depends only on the
degree and can be normalized away. Exactly,

\[
 C_e(1/2)=\tfrac14J_e^2-\tfrac14,
 \quad J_{ij}=-i(y_i\partial_j-y_j\partial_i).
 \tag{5.1}
\]

On the coordinate-even space, `|J_e|=2k` for pair relative spin `k`. In the
full harmonic product define

\[
 R_e=\mathbf1_{\{|J_e^L|-|J_e^R|\le4\}}.
 \tag{5.2}
\]

Its restriction to the coordinate-even space is exactly the complementary
support `k<=ell+2` of (2.6). After simultaneous Bose projection its sum is
`B_0`. The sum of (5.2) commutes with the full finite sign/permutation group.

For a Haar plane choose an oriented orthonormal frame `(u,v)` and set
`xi=(u+iv)/sqrt(2)`. The normalized tensor `xi^{tensor L}`, `L=2P`, is
harmonic because `xi dot xi=0`. The one-slot Hermitian rotation generator
has spectrum in `{-1,0,1}` and expectation

\[
 \langle\xi,j_{ij}\xi\rangle=u_iv_j-u_jv_i=B_{ij}
\]

(the sign convention for `J` can be reversed without changing (5.2)).
In this product tensor, measuring `J_e=sum_{a=1}^L j_e^{(a)}` is exactly a
sum of independent bounded random variables, not a semiclassical
approximation. Hoeffding's estimate therefore gives

\[
 \Pr\{|J_e-LB_e|\ge t\}\le2\exp[-t^2/(2L)].
 \tag{5.3}
\]

For `N=3` the distribution can alternatively be written as the usual
spin-`2P` coherent binomial distribution with `4P` trials; (5.3) is sufficient
and works unchanged for every `N>=3`.

Take a point of `Omega_delta(r)`. Once `|Q/P-r|<=delta/4`, its absolute
mean gap is at least `3P delta/2`. If both chiral deviations are smaller
than `P delta/2`, the measured absolute gap exceeds `P delta/2`. For
`P delta>8` this excludes the event in (5.2). Since `Q<=P` eventually,

\[
 \boxed{\langle\Psi,R_e\Psi\rangle
 \le4\exp[-P\delta^2/16],\qquad
 \Psi=\xi^{\otimes2P}\otimes\eta^{\otimes2Q}.}
 \tag{5.4}
\]

This bound is uniform on `Omega_delta(r)`. The finite spin-zero and spin-two
Einstein terms cannot create a hidden order-`P` effective term there: their
entire exact support is already part of the event bounded in (5.4).

### 6. An extensive subspace without assuming orthogonal coherent states

Let `D=dim H_{2P} dim H_{2Q}`, and let `Pi` be the orthogonal projection onto
the physical space in the harmonic realization. Coherent frame resolution
is exact:

\[
 D\int|\Psi\rangle\langle\Psi|\,d\mu=I.
\]

For `Omega=Omega_delta(r)` define the physical concentration operator

\[
 C_\Omega=D\int_\Omega
       \Pi|\Psi\rangle\langle\Psi|\Pi\,d\mu.
 \tag{6.1}
\]

It obeys `0<=C_Omega<=I_phys`. The trace asymptotic is

\[
 \frac{\operatorname{Tr}C_\Omega}{d_{P,Q}}
       \longrightarrow\mu(\Omega).
 \tag{6.2}
\]

For completeness, average over
`G=(({+-1}^N)_L x ({+-1}^N)_R) semidirect S_N`. Four central elements act
identically at the even degrees. Every other element has, in at least one
factor, coherent matrix coefficient `(xi^*g xi)^{2P}` with modulus strictly
less than one almost everywhere. Dominated convergence remains valid with
the bounded indicator of `Omega` inserted. Thus the four identity terms
give both `d_{P,Q}/D -> 4/|G|` and (6.2). This is only a coherent trace
calculation; no product-symbol expansion for `C_Omega^2` is needed.

Let `E_tau` be the spectral subspace of `C_Omega` for eigenvalues at least
`tau`, with fixed `0<tau<1`. Since every eigenvalue lies in `[0,1]`,

\[
 \dim E_\tau\ge
       \frac{\operatorname{Tr}C_\Omega-\tau d_{P,Q}}{1-\tau}.
 \tag{6.3}
\]

Moreover positivity, commutation of `sum_e R_e` with `Pi`, and (5.4) give

\[
 \operatorname{Tr}(B_0 C_\Omega)
 \le4\binom N2D\exp[-P\delta^2/16].
 \tag{6.4}
\]

Indeed `B_full Pi<=B_full`, because `B_full>=0` commutes with `Pi`.
For `v` in `E_tau`, write `v=C_Omega^{1/2}w` with
`||w||^2<=tau^-1||v||^2`. Then

\[
 \langle v,B_0v\rangle
 \le\tau^{-1}\operatorname{Tr}(B_0C_\Omega)\|v\|^2.
 \tag{6.5}
\]

Thus **every vector in one subspace of the required large dimension** has
exponentially small Rayleigh quotient. This closes the gap that would remain
if one only exhibited many individually localized, nonorthogonal vectors.

Transport `E_tau` by `T_d`. Equations (4.3) or directly (3.6)–(3.7) yield
the finite bound on that entire physical subspace

\[
 \lambda_{\dim E_\tau}(A_N(d))
 \le \frac{4\binom N2D\,a_{\max}}{\tau m_Pm_Q}
                    \exp[-P\delta^2/16].
 \tag{6.6}
\]

At fixed `N,d,r,delta,tau`, the prefactor grows only polynomially in `P`.
Absorb it into half the exponent. Equations (6.2)–(6.3) give

\[
 \liminf\frac{\#\{\lambda(A_N)\le e^{-P\delta^2/32}\}}{d_{P,Q}}
 \ge\frac{\omega_\delta(r)-\tau}{1-\tau}.
\]

The threshold exponent is independent of `tau`, so send `tau` to zero.
Finally subtract the **exact finite** kernel count `kappa_{P,Q}` before
taking its known limit. This proves (1.1).

### 7. Counting consequences and their limits

For a sequence satisfying (1.3), every fixed exponential threshold
`exp(-cP)` is eventually below `t_{P,Q}`. Theorem 1 and `delta -> 0` give
the lower limit `omega-k` for the count divided by the full dimension.
For the upper limit, eventually `t_{P,Q}/P^2<=epsilon`. Apply the old
full-spectrum weak law at a continuity value `epsilon>0`, then send
`epsilon` to zero, and subtract `kappa_{P,Q}/d_{P,Q}`. The bound is
`omega-k`. Dividing by `1-k` proves (1.4).

Equivalently, on the exponential scale,

\[
 \lim_{c\downarrow0}\liminf\frac{\#\{0<\lambda(A_N)\le e^{-cP}\}}{d_{P,Q}}
 =\lim_{c\downarrow0}\limsup\frac{\#\{0<\lambda(A_N)\le e^{-cP}\}}{d_{P,Q}}
 =\omega(r)-k_N(r).
 \tag{7.1}
\]

No interchange of the two limits is asserted. In particular the proof does
not say there is one positive `c` for which the whole weight `omega-k`
already appears. It also cannot exclude superexponential subfamilies.

### 8. Relation to established methods; precisely failed shortcuts

The bounded-variable estimate used in (5.3) is Hoeffding's original
large-deviation inequality: W. Hoeffding, *Probability Inequalities for Sums
of Bounded Random Variables*, JASA **58** (1963), 13–30,
DOI: https://doi.org/10.1080/01621459.1963.10500830.
Coherent resolutions and classical spin limits are standard ingredients;
see E. H. Lieb, *The Classical Limit of Quantum Spin Systems*, CMP **31**
(1973), 327–340, DOI: https://doi.org/10.1007/BF01646493. Here the actual
Einstein mapping is supplied by (2.4)–(2.6), (3.4), and (5.1)–(5.2), with
all constants and support offsets checked. These references alone do not
give the present conclusion.

The following routes do not suffice:

1. A principal-symbol zero chamber and weak convergence alone give no
   quantitative small-energy scale. The earlier zero-atom theorem did not
   claim one.
2. An `O(P)` mass comparison of Casimirs or an `O(P^-1)` normalized trace
   comparison does not control an `exp(-cP)` spectral window. Exact flag
   transport and polynomial norm distortion replace that missing argument.
3. A small expectation in each of many coherent vectors gives no count
   without a linear-independence/subspace estimate. Equations (6.3)–(6.5)
   provide a uniform Rayleigh estimate on an extensive subspace.
4. Removing all numerically small eigenvalues would incorrectly remove
   strictly positive states. The proof subtracts only the previously proved
   exact logarithmic-kernel multiplicity.
5. Exponential upper bounds alone do not prove a unique tunnelling action,
   an exponential lower bound, or an exact soft spectral determinant.

The remaining hard question is the distribution of positive actions
`-P^-1 log lambda_j^+` within the soft component, and its possible exceptional
scales. Theorem 2 shows that any such rate law is mass independent, while
Theorem 1 fixes how much of the spectrum reaches a strictly positive action
after arbitrarily small-action boundary layers are discarded.

### 9. Reproducibility and read coverage

#### 9.1 Independent symbolic and exact coherent checks

`verify_coherent_bounds.py` enters the Einstein formulas independently of
the old spectrum engine. It proves the positive-coefficient identities
used for (4.4), checks the two edge limits exactly, and audits the full
one-slot projector and Pluecker identities at rational orthonormal frames
for `N=3,4,5`. It also checks 12 exact coherent bad-support probabilities
at `(P,Q)=(16,8),(32,16),(64,32),(128,64)`.

For the latter check the two unit normals are
`(2/3,2/3,1/3)` and `(1,0,0)` at `r=1/2`, so the minimum strict chamber
margin is `1/6`. In the exact spin-`2P` binomial law,
`J=X-2P`, `X~Binomial(4P,(1+B)/2)`. Set

\[
 f_B(z)=\frac{(1+B)^2}{4}z+\frac{1-B^2}{2}
                    +\frac{(1-B)^2}{4z}.
\]

The event `|J_L|-|J_R|<=4` implies `J_L-J_R<=4` or `J_L+J_R<=4`.
Markov's inequality at the rational value `z=4/3` therefore yields an
entirely rational certificate

\[
 \Pr(\text{bad})\le z^4(\rho_+^P+\rho_-^P),\qquad
 \rho_\pm=f_B(z^{-1})^2f_{B'}(z^{\pm1})<1.
\]

For the three coordinate axes these bases are respectively

\[
 (\rho_+,\rho_-)=
 (130321/139968,130321/248832),\quad
 (6385729/8957952,6385729/8957952),\quad
 (30625/34992,30625/34992).
\]

The program compares exact rational probabilities with exact rational
bounds; no floating comparison determines pass/fail. These are coherent
vector checks, not a replacement for the extensive-subspace argument.
The output `coherent_bounds_verification.json` records every rational
certificate and passed in 2.47 seconds in the recorded environment.

#### 9.2 Actual strictly positive Einstein eigenvalues certified by inertia

`exact_soft_inertia.py` constructs the established N=3 Racah/Gram formula
using an independently entered FLINT rational recurrence. Write `G` for
the rational Gram matrix, `w_i>0` for its symmetrizing weights and
`a_i>0` for the Einstein residual weights. Its positive orthonormal Gram
operator is

\[
 H=\operatorname{diag}(\sqrt a)\operatorname{diag}(\sqrt w)
        G\operatorname{diag}(1/\sqrt w)\operatorname{diag}(\sqrt a).
\]

The rational symmetric pencil has the exact congruence

\[
\begin{split}
 S(\epsilon)&=\operatorname{diag}(w)G
                     -\epsilon\operatorname{diag}(w/a)\\
 &=\operatorname{diag}(\sqrt{w/a})(H-\epsilon I)
                     \operatorname{diag}(\sqrt{w/a}).
\end{split}
\]

Thus exact rational Sylvester inertia counts the auxiliary eigenvalues
below any rational threshold. The zero-threshold inertia independently
checks the Gram rank. Only the exactly known auxiliary zeros are then
discarded; the physical logarithmic kernel is recorded separately.
Symmetric elimination handles indefinite and zero-diagonal pivots with
an explicit unimodular shear and has edge-case tests. At `(P,Q)=(8,4)`
all 196 entries are also compared with the retained original exact engine.

The following are actual finite strictly positive residual eigenvalue
certificates at `Delta=2`; every interval endpoint is excluded by nonzero
threshold determinant/inertia.

| `(P,Q)` | Physical dimension | Exact physical kernel | Auxiliary zeros | Certified smallest positive residual |
|---|---:|---:|---:|---|
| `(16,8)` | 26 | 0 | 8 | `1/5 < lambda_min^+ < 1/3` |
| `(32,16)` | 94 | 4 | 8 | `1/6000 < lambda_min^+ < 1/5000` |

For the second row, the inertias `(positive,negative,zero)` at thresholds
`0,1/6000,1/5000` are `(90,0,8),(90,8,0),(89,9,0)` respectively.
The two complete JSON certificates are `exact_soft_P16Q8.json` and
`exact_soft_P32Q16.json`. The latter took 8.21 seconds. These two finite
intervals are not used to fit or prove an asymptotic exponential rate.

#### 9.3 Read coverage and independent mathematical audit

`audit_read_coverage.py` fully reads Deep appendices A, G and I, checks
their entire normalized bodies against the source proofs, and traverses
every dict/list/scalar in all 22 top-level verification fields. Every one
of the 15 embedded certificate payloads is compared with its recorded
source file, byte count and hash. The 24 old finite-spectrum diagnostics
and relevant old soft-atom evidence are separately indexed. The output
`read_coverage.json` records success and distinguishes explicit limitation
flags from failures. No old numerical checks were rerun merely to infer
an exponential rate.

The independent audit `../audit/SOFT_FLAG_TRANSFER_AUDIT.md` verifies the
exact flags, primary-restricted metric map, coherent tail, Bose trace,
full-subspace estimate and ordered-rate comparison. The parent also
constructed a fresh primary polynomial/Casimir program without importing
the old or new spectral engines; its exact mass-transfer certificates are
under `../audit/independent_flag_transfer*.json`. Those finite audits
support the delicate identities; the all-index proof remains the argument
in sections 2–7.

The primary literature publisher record for Hoeffding and the author
institution's publication record for Lieb were consulted. The original
full Hoeffding paper was not retrieved behind the publisher wall. The
particular bounded-variable inequality, coherent tensor identities and
their mapping to the Einstein operator are stated explicitly above, so
the conclusion is not delegated to an unchecked analogy.

From a package root containing `hierarchy_research` and `prior`, run:

```sh
PYTHONDONTWRITEBYTECODE=1 OPENBLAS_NUM_THREADS=1 python -B hierarchy_research/soft/verify_coherent_bounds.py --output work/coherent.json
PYTHONDONTWRITEBYTECODE=1 OPENBLAS_NUM_THREADS=1 python -B hierarchy_research/soft/exact_soft_inertia.py --output work/inertia_P32Q16.json
```

Use `--left 16 --right 8 --thresholds 1/5,1/3` for the smaller inertia
certificate. Both scripts accept an explicit output path. Dependencies
are SymPy for the symbolic check and python-flint for the inertia engine;
the latter uses SymPy only for the optional retained-engine cross-check.
The general theorem is not inferred from any finite check in this section.



---

# Appendix E: The joint three-particle near-balanced boundary layer

Source SHA-256: 92fdea2a32091710294cf463eb93e2c472ed8f99a4ec419df4da8e9f9b55781d.

## A uniform three-body soft-spectrum boundary layer at Q/P approaching one

**Status:** new theorem of the hierarchy round, 19 October 2026. This is a
joint-limit extension of the new exponential soft-band theorem. It uses the
previously proved three-body Grassmann zero-volume formula and the exact
logarithmic-kernel count as inputs. It does not derive tiny eigenvalues from
floating point diagonalization. All operators below are coefficients of the
fixed physical order-G normal form; no uniform finite-G approximation is
asserted.

### 1. Definitions and the finite theorem

Fix a physical mass parameter `d=Delta>1`. Let

\[
 A_3(P,Q)=W_3(P,Q)-b_3(Q)I\geq0,
 \qquad P\geq Q\geq1,
\]

act on the physical global-primary Bose space. Write its dimension as
`d_{P,Q}` and its exact kernel dimension as `kappa_{P,Q}`. Let `n,n'` be
independent uniform unit vectors in `S^2`; equivalently they are the normals
of independent oriented two-planes in `R^3`. Define

\[
 \omega(r)=\Pr\{|n_i|\geq r|n'_i|\ \text{for }i=1,2,3\},\qquad
 k(r)=\frac{(1-r)^2}{2r}\quad(1/2\leq r<1),
 \qquad \mu(r)=\omega(r)-k(r).
 \tag{1.1}
\]

The old three-body zero-atom theorem proves `mu(r)>0` for every `r<1` in
this interval. The theorem here is uniform enough to let `r` vary with P.
Set

\[
 b=d-\tfrac12,\qquad
 m_L=e^{-6b}2^{-3b}(L+1)^{-3b},\qquad
 D_{P,Q}=(4P+1)(4Q+1).
 \tag{1.2}
\]

Let `a_max(d,Q)` be the largest accessible positive Einstein residual
pair-channel coefficient. In particular the explicit bound

\[
 a_{\max}(d,Q)\leq20(d+Q)^2
 \tag{1.3}
\]

is proved in `EXPONENTIAL_SOFT_SPECTRUM.md` and checked by its exact
coefficient certificate.

**Theorem 1.1 (finite boundary-layer count).** Put `r=Q/P` and `mu=mu(r)`.
If

\[
 \tfrac12\leq r<1,\qquad
 \mu\geq\frac{1280}{\min(P,Q)},
 \tag{1.4}
\]

then, counted with multiplicity, at least `mu d_{P,Q}/2` **strictly positive**
eigenvalues of `A_3(P,Q)` obey

\[
 \boxed{
 0<\lambda\leq
 \frac{96D_{P,Q}\,a_{\max}(d,Q)}{\mu m_Pm_Q}
 \exp\!\left(-\frac{P\mu^2}{2304}\right).
 }
 \tag{1.5}
\]

The statement about an integer count means that the count is at least the
displayed real lower bound (and hence at least its ceiling). Constants are
chosen for simple rigorous estimates, not for optimality. The window in
(1.5) can be large at moderate P; its mathematical content is the uniform
asymptotic consequence below.

**Corollary 1.2 (joint-limit window).** For any sequence `r_P=Q/P` in
`[1/2,1)` such that

\[
 \frac{P\mu(r_P)^2}{\log P}\longrightarrow\infty,
 \tag{1.6}
\]

there are, for all sufficiently large P, at least
`mu(r_P)d_{P,Q}/2` strictly positive eigenvalues satisfying

\[
 \boxed{\lambda\leq
 \exp\!\left(-\frac{P\mu(r_P)^2}{4608}\right).}
 \tag{1.7}
\]

This does not assert a matching lower energy bound or a complete boundary
layer distribution.

### 2. A uniform Bose coherent-frame trace estimate

At the auxiliary Bargmann parameter `d_0=1/2`, the labelled chiral
degree-P primary space identifies with the coordinate-sign-even harmonic
polynomials `H_{2P}(R^3)`. Work first in the full harmonic space, of dimension
`4P+1`. For an oriented plane with normal n and an orthonormal frame `(u,v)`,
its normalized coherent vector is represented by

\[
 \psi_{P,n}=\left((u+iv)/\sqrt2\right)^{\otimes 2P}.
\]

It is trace free since the complex vector is null. Its phase depends on
the chosen frame, but its rank-one projector does not. The irreducible
resolution of identity is

\[
 (4P+1)\int_{S^2}|\psi_{P,n}\rangle\langle\psi_{P,n}|\,d\nu(n)=I.
 \tag{2.1}
\]

On the tensor product for P and Q, project by the finite group

\[
 G=(\{\pm1\}^3_L\times\{\pm1\}^3_R)\rtimes S_3,
 \qquad |G|=384,
 \qquad p_G=|G|^{-1}\sum_{g\in G}U_g.
 \tag{2.2}
\]

This imposes both sign-even conditions and the simultaneous physical
Bose permutation condition. For any measurable region `Omega` in the two
spheres, define

\[
 C_\Omega=D_{P,Q}\int_\Omega
 p_G|\psi_{P,n}\otimes\psi_{Q,n'}\rangle
 \langle\psi_{P,n}\otimes\psi_{Q,n'}|p_G\,d\nu(n)d\nu(n').
 \tag{2.3}
\]

Equation (2.1) implies `0<=C_Omega<=I` on the physical space.

**Lemma 2.1.** Uniformly in `Omega` and `P,Q>=1`,

\[
 \left|\frac{\operatorname{Tr}C_\Omega}{d_{P,Q}}
           -\operatorname{vol}(\Omega)\right|
 \leq\frac{160}{\min(P,Q)}.
 \tag{2.4}
\]

**Proof.** A signed permutation matrix `g` in three dimensions acts on the
even harmonic degree as the rotation `R=(det g)g` in `SO(3)`. If
`g!=+I,-I`, this is a nonidentity rotation of the cube. Its rotation angle
has `sin^2(theta/2)>=1/2`. For its unit axis a, the exact coherent matrix
coefficient has modulus

\[
 |\langle\psi_{P,n},U_g\psi_{P,n}\rangle|
 =\left[1-\sin^2(\theta/2)\{1-(n\cdot a)^2\}\right]^{2P}.
 \tag{2.5}
\]

Indeed `|<xi,Rxi>|=(1+n dot Rn)/2`, and Rodrigues' formula gives (2.5).
If `s=n dot a`, its absolute-value integral is bounded by

\[
 \int_0^1e^{-2P\sin^2(\theta/2)(1-s^2)}ds
 \leq\int_0^1e^{-2P\sin^2(\theta/2)(1-s)}ds
 \leq\frac1{2P\sin^2(\theta/2)}\leq\frac1P.
 \tag{2.6}
\]

Exactly four elements of G act as the identity in both even harmonic
factors. Every other element has at least one noncentral factor, so the
absolute integral of its product coefficient `c_g(n,n')` is at most
`1/min(P,Q)`. To control the trace without losing a factor of two, subtract
the full-frame trace **inside** the integral:

\[
 \operatorname{Tr}C_\Omega-d_{P,Q}\operatorname{vol}(\Omega)
 =\frac{D_{P,Q}}{384}\sum_{g\text{ noncentral}}
 \int(\mathbf1_\Omega-\operatorname{vol}(\Omega))c_g\,d\nu d\nu'.
 \tag{2.7}
\]

The central terms vanish exactly. Since the factor in parentheses has
modulus at most one, each remaining integral satisfies (2.6). The exact
primary character count is

\[
 d_{P,Q}=\frac{(P+1)(Q+1)+3e_Pe_Q+2c_Pc_Q}{6},
 \tag{2.8}
\]

where `e_P=1` for even P and zero otherwise, and `c_P=1,-1,0` according
to `P mod 3=0,1,2`. It follows that `d_{P,Q}>=PQ/6` and
`D_{P,Q}/d_{P,Q}<=150`. Thus the constant in (2.4) can be bounded by
`(380/384)*150<160`. This proves the lemma for every measurable Omega,
including a P-dependent shrinking region. QED.

The uniformity in (2.4) is the new step not provided by a fixed-region
dominated-convergence argument.

### 3. Uniform margins, exact zero subtraction, and the energy estimate

For the actual ratio `r=Q/P`, let

\[
 \Omega_\delta(r)=\{|n_i|-r|n'_i|>\delta\ \text{for all }i\}.
 \tag{3.1}
\]

Each `|n_i|` is uniform on `[0,1]`. Conditional on `n'_i`, a strip of width
delta has probability at most delta. The union bound therefore gives

\[
 \operatorname{vol}\Omega_\delta(r)\geq\omega(r)-3\delta.
 \tag{3.2}
\]

At `d_0=1/2`, let `B_0` be the sum of the three unit bad-channel
projectors on the physical space. Each has the full-harmonic extension
`1_{|J_L|-|J_R|<=4}`. On a coherent state, the measurement of J is a sum
of `2P` independent bounded spin-slot variables, with mean `2P n_i`
(up to orientation sign) and range `[-1,1]` per slot. Hoeffding's bound is

\[
 \Pr\{|J-2Pn_i|\geq t\}\leq2e^{-t^2/(4P)}.
 \tag{3.3}
\]

If `(n,n') in Omega_delta(r)` and `P delta>8`, simultaneous deviations
at most `P delta/2` leave a strict good gap. Since `Q<=P`, summing the
two tails in (3.3) yields, for each pair,

\[
 \langle\psi,R_{\rm bad}\psi\rangle
 \leq4e^{-P\delta^2/16}.
 \tag{3.4}
\]

The full sum commutes with the Bose/sign projector, so its positive
quadratic form can only decrease on applying that projector. Consequently

\[
 \operatorname{Tr}(B_0 C_{\Omega_\delta})
 \leq12D_{P,Q}e^{-P\delta^2/16}.
 \tag{3.5}
\]

For `0<tau<1`, let `E_tau` be the spectral subspace of `C_Omega` above
tau. Since `0<=C_Omega<=I`,

\[
 \frac{\dim E_\tau}{d_{P,Q}}
 \geq\frac{\operatorname{Tr}C_\Omega/d_{P,Q}-\tau}{1-\tau}.
 \tag{3.6}
\]

Also `C_Omega>=tau E_tau` implies that every unit vector in `E_tau` has
`B_0` Rayleigh quotient at most the right side of (3.5) divided by tau.
No assumption that `C_Omega` commutes with `B_0` is used.

The exact collision-flag transfer of the exponential soft-band theorem
is one invertible, Bose-equivariant map

\[
 T=I_L\otimes M_Q(d)^{-1}.
\]

It sends every auxiliary good flag to the corresponding physical good
flag. Its metric and distance inequalities imply on the transported
space `T E_tau` the physical Rayleigh upper bound

\[
 \frac{12D_{P,Q}a_{\max}}{\tau m_Pm_Q}
 e^{-P\delta^2/16}.
 \tag{3.7}
\]

This uses the unit-support auxiliary operator, never the singular
Einstein coefficient at `d_0=1/2`.

For the exact zero count, the old logarithmic theorem gives, in the present
range `P<=2Q`,

\[
 \kappa_{P,Q}=\#\{(a,b)\in\mathbb Z_{\geq0}^2:
               2a+3b\leq P-Q-12\}.
 \tag{3.8}
\]

To see the role of this range, the general coefficient count is
`P-12-2Q <= 2a+3b <= P-12-Q`; its lower bound is automatic here. Formula
(3.8) is not asserted for arbitrary `Q/P<1/2`.

If `M=P-Q-12>=0`, disjoint unit cells based at these lattice points lie
in the triangle `2x+3y<=M+5`. Thus

\[
 \kappa_{P,Q}\leq\frac{(M+5)^2}{12}
                 \leq\frac{(P-Q)^2}{12}.
\]

For `M<0` the kernel is zero and the same last bound holds. Combining
with `d_{P,Q}>=PQ/6` proves the **finite**, one-sided estimate

\[
 \frac{\kappa_{P,Q}}{d_{P,Q}}\leq\frac{(1-Q/P)^2}{2Q/P}=k(r).
 \tag{3.9}
\]

Choose `delta=mu/12` and `tau=mu/8`. Assumption (1.4) ensures both
`P delta>8` and `160/min(P,Q)<=mu/8`. Equations (2.4), (3.2), (3.6)
then give

\[
 \frac{\dim E_\tau}{d_{P,Q}}
 \geq\omega(r)-\frac\mu4-\frac\mu8-\frac\mu8
 =\omega(r)-\frac\mu2.
 \tag{3.10}
\]

The numerator used in (3.6) is positive, so dropping its denominator
`1-tau` is a valid lower estimate. The min-max principle applied to
`T E_tau` supplies at least `dim E_tau` physical eigenvalues below (3.7),
including exact zeros. Subtracting the **entire** exact kernel using
(3.9) leaves at least

\[
 [\omega(r)-\mu/2-k(r)]d_{P,Q}=\mu d_{P,Q}/2
\]

strictly positive eigenvalues. Substitution in (3.7) gives precisely
(1.5). This proves Theorem 1.1.

Under (1.6), condition (1.4) eventually holds because `Q>=P/2`.
Moreover `1/m_Pm_Q` and `a_max` are polynomially bounded, and (1.6)
also bounds `1/mu` by a power of P. The logarithm of the prefactor in
(1.5) is therefore `O_d(log P)`. Absorb it into half the exponent to
obtain (1.7). QED.

### 4. An explicit shrinking-ratio family

The previously proved three-body Grassmann-volume asymptotic is

\[
 \omega(1-\epsilon)\sim
 \frac{3}{2\pi^2}\epsilon^2\log^2(1/\epsilon).
 \tag{4.1}
\]

Since `k(1-epsilon)~epsilon^2/2`, the same leading term holds for mu.
Let the integer sequence satisfy

\[
 \frac QP=1-cP^{-\beta}(1+o(1)),\qquad c>0,
 \qquad0<\beta\leq\tfrac14.
 \tag{4.2}
\]

Then

\[
 \mu(Q/P)\sim\frac{3c^2\beta^2}{2\pi^2}
 P^{-2\beta}\log^2 P,
 \tag{4.3}
\]

and (1.6) holds, including `beta=1/4`. Because
`d_{P,Q}~P^2/6`, at least

\[
 \boxed{\left(\frac{c^2\beta^2}{8\pi^2}+o(1)\right)
 P^{2-2\beta}\log^2P}
 \tag{4.4}
\]

strictly positive eigenvalues satisfy

\[
 \boxed{\lambda\leq
 \exp\!\left[-\left(\frac{c^4\beta^4}{2048\pi^4}+o(1)\right)
 P^{1-4\beta}\log^4P\right].}
 \tag{4.5}
\]

For `0<beta<1/4` this is a stretched-exponential upper bound. At
`beta=1/4` it is `exp[-C log^4 P]`, still smaller than every inverse
power of P. The count is subextensive compared with `d_{P,Q}~P^2/6`;
there is no conflict with the absence of a macroscopic zero atom in the
balanced Grassmann law.

The cutoff `beta<=1/4` is the range proved by this concentration-plus-
margin estimate. It is not a proved optimal transition. The actual
microscopic rate, the region `beta>1/4`, and the exactly balanced soft
levels remain open.

### 5. Independent checks and dependency boundary

`../audit/boundary_layer_certificate.py` enumerates all signed permutation
rotations, checks the exact central count and trace constant, independently
checks the character and logarithmic lattice bounds on a finite grid, and
checks the rational factors in (4.4)-(4.5). It computes no microscopic
eigenvalues. These checks support the algebraic constants; the proofs
(2.5)-(3.10) establish the uniform and asymptotic claims.

Dependencies are explicit: the old exact kernel count and old formula
(4.1); the new flag-transfer/coherent exponential theorem for (3.7); and
the new elementary uniform group-trace estimate proved here. An independent
adversarial review checked the group action, the centered trace subtraction,
the finite zero-count direction, both min-max estimates, and the joint-limit
constants. No prior file was changed.


---

# Appendix F: Universality layers and affine-defect chiral phases

Source SHA-256: 7a2ba8a04949f9c0f468fbe5d4b658b9c897d1edc8994d9b3dce1eef4fbb7d0b.

## Universality layers and chiral phases of the AdS3 scalar pair spectrum

Date: 2026-10-19. All earlier research inputs are read-only. This note is a
new mathematical continuation; it does not replace the Einstein action,
boundary conditions, regulator, or quantum prescription by a family of
physical theories. The deformed operators introduced below are explicit
abstract pair operators on the **same** unitary scalar representation.
Einstein supplies one distinguished member, with its independently audited
channel coefficients.

The useful conclusion is a hierarchy of different assumptions. Exact
kernel support, high-energy principal symbol, fixed-excitation occupation
counting, generic slope nonresonance, and a simple Gegenbauer low cluster
are not equivalent properties. Several extend to an infinite-dimensional
class. The last property has a precise chiral phase boundary inside that
class.

### 1. What is inherited, and what is new here

The Fock report proved the complete logarithmic kernel and the finite
positive Gram reduction. The analytic report proved the stable occupation
pencil and developed the chiral affine-Casimir bound. The Deep report
proved the Grassmann spectral law, fixed-right-degree cluster inheritance,
generic all-degree slope linearization, the Einstein Gegenbauer low
cluster, and its third-order next effective operator. None of those
Einstein theorems is counted again here as a new result.

The new results in this note are:

1. A precise, infinite-dimensional pair-kernel class on which kernel,
   Gram rank, Grassmann law, the complete fixed-right-degree cluster hierarchy, and
   the new exponential soft-band theorem all remain valid. Different
   conclusions require different subsets of the hypotheses.
2. An all-degree **first positive affine defect theorem**: it determines
   the entire minimum-leading-slope algebra for an arbitrary nonnegative
   chiral affine defect, including larger algebras than the Einstein one.
3. A universal exact cusp quotient, and the general Gegenbauer coefficient
   in terms of only the fourth and sixth chiral affine defects. This
   identifies exactly which coefficient positivity is needed for a simple
   constant-gap spectrum.
4. An explicit same-support, same-principal-symbol deformation whose
   lowest stable algebra changes from two to four generators and whose
   complete degree-four primary block is an exact doublet.
5. A residue hypothesis, much weaker than the Einstein coefficient
   formula, sufficient for the previously established all-degree graded
   linearization argument.

All asymptotic statements concern the already extracted order-G pair
operator. They do not assert a uniform perturbation expansion at finite
G. The energy remainder remains `o(G)` in the physical theory.

### 2. Common representation and pair conventions

Let `d=Delta>1`. A one-chiral scalar module is the polynomial positive
discrete series with generators

\[
L_-=\partial_z,\qquad L_0=z\partial_z+d/2,\qquad
L_+=z^2\partial_z+dz,
\]

and Bargmann norm

\[
\langle z^p,z^p\rangle_d=\frac{p!}{(d)_p}.
\tag{2.1}
\]

Take N copies in each chirality, impose the two global lowest-weight
conditions, and then impose the diagonal Bose permutation action. Denote
the resulting bidegree `(P,Q)` primary space by `H_{N;P,Q}(d)`. The
underlying polynomial primary space and permutation action are independent
of d; the positive metric and individual pair spectral projectors are not.

The two-body tensor product is multiplicity-free in relative degrees
`(k,l)`, and Bose symmetry permits precisely `k+l` even. The pair Casimir
eigenvalue is

\[
C_k=(d+k)(d+k-1).
\tag{2.2}
\]

Any real sequence `w_{kl}=w_{lk}` on these channels defines a self-adjoint,
globally invariant pair operator on every finite polynomial degree.
No large-degree bound is needed to define these finite matrices. The
number-preserving Fock lift is `W_N=sum_{i<j}w_{ij}`.

For either chirality,

\[
\sum_{i<j}C_{ij}
 =\binom N2 d(d-1)+P(P+Nd-1)
\tag{2.3}
\]

on its degree-P global-primary space. This follows from
`sum C_ij=C_total+(N-2)sum C_i`, with
`C_i=d(d-2)/4` and total lowest weight `Nd/2+P`.

### 3. A broad common kernel and principal-symbol class

Fix constants `c>0` and `a`, possibly depending on the fixed d. Consider

\[
\boxed{
w_{kl}=a-c\min(C_k,C_l)+\epsilon_{|k-l|}(\min(k,l)),
}
\tag{3.1}
\]

where, on the allowed even channels,

\[
\epsilon_j(n)=0\quad(j\ge4),\qquad
\epsilon_0(n)>0,\quad\epsilon_2(n)>0.
\tag{3.2}
\]

The Einstein operator is exactly the member

\[
a=4d(d-2),\qquad c=8,
\]

with the positive spin-zero and spin-two corrections of the original
pair formula. Those corrections grow only linearly in n. Thus the class
is nonempty and contains the complete audited Einstein operator.

#### 3.1 Exact kernel, with no growth assumption

For `P>=Q`, subtract

\[
b_N(Q)=\binom N2\{a-cd(d-1)\}-cQ(Q+Nd-1).
\tag{3.3}
\]

The pair residual is

\[
d_{kl}=c\{C_l-\min(C_k,C_l)\}
       +\epsilon_{|k-l|}(\min(k,l)).
\tag{3.4}
\]

Since `C_k` strictly increases at physical d, this residual is strictly
positive exactly when `k<=l+2`, and is zero exactly when `k>=l+4`.
Consequently

\[
A_N:=W_N-b_N(Q)I\ge0,\qquad
\ker A_N=\bigcap_{i<j}\ker d_{ij}.
\tag{3.5}
\]

The intersection in (3.5) is **identical** to the old Einstein
intersection. Hence the previously proved complete logarithmic theorem
applies without alteration:

\[
\boxed{
\sum_{P,Q\ge0}\dim\ker A_N\,x^Py^Q
 =\frac{x^{2N(N-1)}}{
 \prod_{j=2}^N(1-x^j)\prod_{a=1}^{N-1}(1-yx^a)}.
}
\tag{3.6}
\]

This is a universality consequence of the **old complete theorem**, not
a second claimed proof of that theorem. The Bargmann-dependent inverse
Gram still enters the physical kernel vectors. In a real primary basis
with Gram G, tensor coefficients C correspond to the complex-linear map
`A=CG` using the real-structure bilinear extension, and conversely
`C=AG^{-1}`. Replacing this identification by an unexplained antilinear
Riesz map is not permitted.

The same positive pair-support span also gives the same exact Gram rank
and the same zero multiplicity. Positive eigenvalue values and their
accidental degeneracies need not remain the same. This distinction is
essential: support fixes the range dimension, not the spectrum on it.

Strict positivity in every bad channel matters here. Allowing a listed
bad coefficient to vanish can enlarge the kernel. Allowing negative
coefficients removes the implication from a vanishing total quadratic
form to all pairwise conditions.

#### 3.2 Grassmann law: the additional growth assumption

Assume now

\[
\sup_{0\le n\le L}\epsilon_j(n)=o(L^2),\qquad j=0,2.
\tag{3.7}
\]

At fixed `N>=3` and `P,Q->infinity`, `Q/P->r>0`, let independent oriented
orthonormal two-frames `(u,v)` and `(u',v')` have the invariant Grassmann
distribution in `R^N`. Define

\[
X_{ij}=(u_i v_j-u_jv_i)^2,\qquad
Y_{ij}=(u'_i v'_j-u'_jv'_i)^2,
\qquad \sum_{i<j}X_{ij}=\sum_{i<j}Y_{ij}=1.
\]

The normalized spectral measure of `W_N/P^2` tends to the distribution of

\[
-c\sum_{i<j}\min(X_{ij},r^2Y_{ij}).
\tag{3.8}
\]

The residual measure tends to that of

\[
a_c(X,Y)=c\sum_{i<j}(r^2Y_{ij}-X_{ij})_+.
\tag{3.9}
\]

Proof: the Deep Grassmann theorem already establishes the principal
Casimir symbol and its mass independence. The difference between (3.1)
and `a-c min(C_k,C_l)` has norm at most the left side of (3.7) at the
accessible degrees, per pair. There are only `binom(N,2)` pairs. Dividing
by `P^2` makes that operator-norm difference vanish. Weyl's eigenvalue
inequality transfers the limiting measure. This argument requires no
smooth dependence of the corrections on n.

Thus the min symbol and its zero atom follow from representation,
quadratic principal growth, and this specified leading channel function.
Pair support alone cannot determine the principal symbol: positive bad
weights with a different order-two leading function give another law.

#### 3.3 The new exponential soft band also extends to this class

Write

\[
\omega_N(r)=\Pr\{X_{ij}\ge r^2Y_{ij}\ \hbox{for every pair}\}.
\tag{3.10}
\]

The old logarithmic count gives the exact-kernel limiting fraction

\[
\kappa_N(r)=\frac{((N-2)!)^2}{(2N-4)!r^{N-2}}
\sum_{a=1}^{N-1}
 \frac{(-1)^{a-1}(1-ar)_+^{2N-4}}{(a-1)!(N-1-a)!}.
\tag{3.11}
\]

The new metric-flag/coherent-frame theorem, independently audited in
`../audit/SOFT_FLAG_TRANSFER_AUDIT.md`, yields the following stronger
statement for (3.1)-(3.7). At fixed `0<r<1`, for every eta>0 there are
`c_eta>0` and sufficiently large P such that at least

\[
(\omega_N(r)-\kappa_N(r)-\eta)\dim H_{N;P,Q}
\tag{3.12}
\]

**strictly positive** residual eigenvalues lie below `exp(-c_eta P)`.
The statement is meaningful when the displayed coefficient is positive.
It is an upper bound on these eigenvalues, not a matched exponential
rate for individual branches.

More precisely, if `t_P>0`, `log(t_P)=o(P)`, and `t_P/P^2->0`, then

\[
\frac{\#\{\lambda\in\operatorname{spec}A_N:0<\lambda\le t_P\}}
 {\dim H_{N;P,Q}}
 \longrightarrow\omega_N(r)-\kappa_N(r).
\tag{3.13}
\]

Only a polynomial **upper** bound on accessible positive pair weights
is needed in the flag-transfer part of this proof. A uniform lower bound
on those weights is unnecessary for (3.12)-(3.13). Assumption (3.7)
already supplies the needed upper bound together with the bulk law.
Exact kernel subtraction uses (3.6), so exponentially small positive
weights are never mistaken for exact zero modes.

The order of limits is fixed N, fixed r, then P and Q grow. Statements
about the additional limit r->0 are separate. At r=1 the zero-symbol
set has measure zero; the positive-density conclusion is then empty.

#### 3.4 Fixed Q: finite channel support and endpoint decay

Fix `N>=3`, Q,d and let P grow. Every bad channel obeys `l<=Q` and `k<=l+2`.
Thus only finitely many pair channels and coefficients enter `A_N`.
The fixed-endpoint positive-discrete-series Racah estimate used in the
Deep cluster theorem is kinematic. Replacing its finitely many Einstein
weights by any fixed weights satisfying (3.2) changes its constants,
not its decay exponent.

In particular, for a fixed finite `(N-1;p,q)` primary spectral block,
`q<=Q`, the isometric Bose-symmetrized cluster embeddings obey

\[
\|A_N(P,Q)U_P-U_P A_{N-1}(p,q)\|=O(P^{-d}),
\qquad
U_{P,\mathrm{raw}}^*U_{P,\mathrm{raw}}
 =I+O(P^{-(N-2)d}).
\tag{3.14}
\]

This is the extension of an already proved cluster theorem. It does not
require (3.7). The finite set of source levels is held fixed in this
estimate; uniform bounds for growing source levels require the new
cluster analysis separately.

The all-N binary Racah and Bose compiler likewise depends on the common
representation and permutation action, not on the numerical Einstein
weights. Its use for a spectral conclusion still requires an actual
nonzero source eigenvalue. For example, a particular compact-perturbation
obstruction in the Deep report used an explicit Einstein inequality
between a three-body eigenvalue and atomic pair values. That inequality
must be checked again for a deformation; it is not a consequence of
the word "cluster" or of support alone.

#### 3.5 The new complete fixed-Q hierarchy has the same universality

The new partition-algebra proof further strengthens (3.14). Its minimal
dynamical sufficient condition is that, at each fixed Q, the residual
pair operator belongs to the internal block-diagonal c0 algebra. On
pair channels this means that its real coefficients tend to zero as
k tends to infinity, uniformly over the finitely many l<=Q. Overlapping
finite internal cutoffs have vanishing left-Racah overlap by the common
representation, and norm approximation then covers the c0 tails.
Every member of (3.1)-(3.2) satisfies the stronger finite-channel
condition, with no bulk growth assumption. Neither positivity nor the
Einstein min formula is needed for the compact partition multiplication
and self-adjoint spectral-set theorem. They are needed for other rows
of the hierarchy.

Write

\[
\Sigma_m(q)=\overline{\bigcup_{p\ge0}\sigma(A_m(p,q))},
\qquad \Sigma_1(0)=\{0\},\quad \Sigma_1(q>0)=\varnothing.
\]

The internal spectra are taken on the actual diagonal-Bose two-chirality
primary spaces. For fixed Q define the unequal two-cluster set

\[
U_N(Q)=\bigcup_{1\le m<N/2}\ \bigcup_{q+t\le Q}
       \{\Sigma_m(q)+\Sigma_{N-m}(t)\}.
\tag{3.15}
\]

For even N=2m, use an orthonormal eigenbasis of the entire internal
graded primary space of m particles, with each eigenstate i labelled by
its right degree q_i. Let

\[
\begin{aligned}
E_m^+(Q)&=\overline{\{\lambda_i+\lambda_j:
                                  i\le j,\ q_i+q_j\le Q\}},\\
E_m^-(Q)&=\overline{\{\lambda_i+\lambda_j:
                                  i<j,\ q_i+q_j\le Q\}}.
\end{aligned}
\tag{3.16}
\]

The index includes degree and actual multiplicity, not merely distinct
eigenvalue values. The plus set is equivalently the finite union of
`Sigma_m(q)+Sigma_m(t)` with q+t<=Q. The minus set can delete a diagonal
sum of a unique isolated internal eigenstate; degeneracy or accumulation
can restore that same numerical value.

The complete high-left-degree spectral-set limits for N>=3 are

\[
\begin{cases}
\sigma(A_N(P,Q))\longrightarrow U_N(Q),&N\text{ odd},\\
\sigma(A_{2m}(P,Q))\longrightarrow U_{2m}(Q)\cup E_m^\eta(Q),
 &(-1)^{P+Q}=\eta\in\{+1,-1\},
\end{cases}
\tag{3.17}
\]

in Hausdorff distance, along all sufficiently large allowed degrees in
the stated sequence. The graded essential spectrum, taking both
parities, is `U_N(Q)` for odd N and `U_N(Q) union E_m^+(Q)` for even N.
The two-particle case is already the exact finite set of channel values;
its odd total parity primary space is empty.

The reason the same statement extends to every finite Q is precise.
Use local block algebras in internal `(p,q)` with q<=Q. Their partition
images retain only `sum q_S<=Q`; unachievable tensor blocks are not
treated as faithful representations. Overlapping left cutoffs still
have the old decaying Racah matrix, while all right labels lie in a
fixed finite-dimensional space. Internal Bose projection is diagonal
on left tensor right, not separate Bose projections in the two
chiralities. The internal residual is `sum_S A_|S|(p_S,q_S)`; the
unused right degree Q-sum q_S is an outer Clebsch-Gordan degree and
adds no residual energy, since the global right-Casimir baseline was
already removed.

For equal binary clusters, exchange acts exactly as

\[
(-1)^{P+Q}(D\otimes D)\operatorname{Swap},\qquad
D|_{p,q}=(-1)^{p+q}.
\]

Conjugation by `I tensor D` turns the last two factors into ordinary
Swap, commutes with the additive internal Hamiltonian, and preserves
the right-degree budget. Thus the two channels are the actual symmetric
and exterior squares in (3.16). The connected Mobius functional calculus
annihilates every other proper-cluster contribution when a continuous
test function vanishes on (3.17), giving the upper inclusion. The
allowed finite source families give the matching lower inclusion.

For the finite-channel class there is also a universal finite hierarchy
of accumulation points.
Let `hat Sigma_N(Q)=union_{q<=Q}Sigma_N(q)` and let a superscript `(j)`
mean j iterations of the **distinct-point** derived-set operation.
Then

\[
\boxed{
\widehat\Sigma_N(Q)^{(N-2)}\subset\widehat\Sigma_2(Q),\qquad
\widehat\Sigma_N(Q)^{(N-1)}=\varnothing.
}
\tag{3.18}
\]

The final set on the right is finite, consisting of zero and the
accessible pair residual values with right degree at most Q. To see
the finite-height mechanism, every accumulation of distinct N-body
values must come from degrees tending to infinity, hence from proper
cluster sums. For compact sets,
`(K+L)' subset K'+L union K+L'`; iterate this inclusion. A non-singleton
split m+(N-m) disappears after N-3 derivatives by induction, leaving
only the singleton inheritance chain and ultimately the finite pair
set. This is a hierarchy of spectral sets, not a count of essential
eigenvalue multiplicities. Sharpness of the height is not asserted.

The full proof and its independent interfaces are recorded in the
cluster contributor's hierarchy note and
`../audit/PARTITION_CLUSTER_ALGEBRA_AUDIT.md`. These complete limiting
sets remain coefficient-dependent even though their recursive
structure is universal. They do not determine a convergence rate for
growing internal cutoff, every finite-P root, or a Fredholm determinant.

#### 3.6 c0 tails: one weaker height bound and a determinant obstruction

The finite pair set in (3.18) is an additional assumption and does not
follow from c0 compactness. For general c0 pair tails at fixed Q one
has instead

\[
\widehat\Sigma_2(Q)'\subset\{0\},\qquad
\widehat\Sigma_2(Q)''=\varnothing.
\]

The same cluster recursion implies the rigorously weaker bound

\[
\boxed{
\widehat\Sigma_N(Q)^{(N-1)}\subset\{0\},\qquad
\widehat\Sigma_N(Q)^{(N)}=\varnothing.
}
\tag{3.19}
\]

Proof is by induction. The derived set of the full N-body spectral
set lies in proper cluster sums. After N-2 more derivatives, a
singleton term is at most the top `{0}` of the (N-1)-body set. For
a split m+n=N with m,n>=2, the only surviving term in the iterated
Minkowski derivative formula can have indices m-1 and n-1, whose
sum is `{0}+{0}`. One more derivative is empty. This proof treats
finite unions over q<=Q before deriving, so its finite right-degree
budget creates no extra accumulation level. Bound (3.18) is the
stronger finite-channel specialization, not a claim about all c0 tails.

A precise counterexample also separates compact cluster recursions
from regularized Fredholm determinants. On the two-particle chiral
space take the abstract residual sequence

\[
v_k=\frac1{\log(k+2)},\qquad k=0,2,4,\ldots,
\tag{3.20}
\]

with zero odd extension. It is a positive c0 pair operator. At z=2,
which exceeds its norm, the connected two-body resolvent is diagonal:

\[
(2-V)^{-1}-\tfrac12I
=\operatorname{diag}\left(\frac{v_k}{2(2-v_k)}\right).
\tag{3.21}
\]

These entries tend to zero, but are at least v_k/4. For every finite
s>0, the series `sum_k [log(k+2)]^{-s}` diverges; for large k its
terms dominate 1/k. Thus (3.21) belongs to **no** finite Schatten
class S_s. Compactness and the Mobius recursion cannot alone supply
a regularized Fredholm determinant of any finite order.

Its two-body spectral set has first derived set `{0}` and empty
second derived set, already disproving a finite-pair height-one
assertion under c0 alone. This counterexample is outside the
finite-support Einstein subclass. It does not exclude a determinant
for the actual Einstein hierarchy, which requires additional
summability estimates.

#### 3.7 Regular multiplicities and the top chiral branch: additional precise hypotheses

The new exact regular-threshold theorem in
`../cluster/ISOLATED_CLUSTER_MULTIPLICITIES.md` extends to the same
bounded self-adjoint c0 pair class. For fixed Q, let F_N,Q be the
compact union of all internal spectral sums over partitions with at
least three blocks, respecting `sum q_S<=Q`. For
`lambda in C_N,Q \\ F_N,Q`, its exact eventual target multiplicity is
the sum of the finite binary source dimensions, one per partition
orbit, with the allowed budget symmetric/exterior source at an equal
split. Every ingredient of that proof survives unchanged: infinite
source degree would force a finer cluster limit, the localized Mobius
identity leaves only binary projections, and their joint polar map
is norm-close to the target spectral projection. No positivity or
min-Casimir coefficient enters this argument. It does not classify
multiplicities on F_N,Q.

There is also a simple coefficient-sensitive extremal corollary. In
the chiral Q=0 sector, write v_k for the residual pair values on the
allowed even relative degrees. Suppose

\[
 v_k\longrightarrow0,\qquad
 v_0>0,\qquad v_0>\sup_{k\ge2,\ k\ {{\rm even}}}v_k.
 \tag{3.22}
\]

The other v_k need not be positive. Each pair is bounded above by
v_0, and equality requires its relative degree to be zero. Equality
in `A_m<=binom(m,2)v_0 I` thus forces all pair Casimirs to their
ground value. Subtracting the total-Casimir identity at degree zero
gives `p(md+p-1)=0`, so only the unique internal ground primary
attains this maximum. Consequently

\[
 \max C_{N,0}=\binom{N-1}{2}v_0, \qquad
 \max F_{N,0}=\binom{N-2}{2}v_0.
\]

The top threshold is regular, has exactly the ground source in the
unequal split `1+(N-1)`, and is eventually a simple target maximum
for every fixed N>=3 and both parities. Therefore

\[
 \lambda_{\max}(A_N(P,0))
 =\binom{N-1}{2}v_0+o(1).
 \tag{3.23}
\]

If the residual has **finite** chiral support, the fixed-endpoint
singleton estimate applies to only finitely many channels, and its
error improves to `O(P^{-d})`. General c0 decay alone does not give
this rate. Einstein satisfies (3.22) with `v_0=a_0>a_2=v_2>0` and
all higher v_k zero. In the common-support class (3.1), the same
conclusion holds whenever `epsilon_0(0)>epsilon_2(0)`; this includes
the phase-boundary example of section 8 even though its stable-N
lowest algebra is different. Thus the hierarchy's high-excitation
maximum and the stable-N lowest cluster require different coefficient
conditions.

### 4. Stable particle number is a substantially wider universality

For this section even (3.1) is unnecessary. Assume a unique one-particle
zero mode, nonnegative conserved bidegrees, and a globally invariant,
number-preserving two-body operator. Let `a_alpha` be unnormalized
creation moments with `a_0=1`, let

\[
D=\sum_{\alpha\ne0}a_\alpha\partial_{a_\alpha},\qquad
F_{\alpha\beta}
 =\sum_{\gamma+\delta=\alpha+\beta}
 w^{\gamma\delta}_{\alpha\beta}a_\gamma a_\delta,
\]

and put `g_0=w_{00}`. The stable creation operator is

\[
\begin{split}
W_N={}&\frac{g_0}{2}(N-D)(N-D-1)
 +\sum_{\alpha\ne0}F_{0\alpha}(N-D-1)\partial_{a_\alpha}\\
 &+\sum_{0<\alpha\le\beta}
 \frac{F_{\alpha\beta}}{1+\delta_{\alpha\beta}}
 \partial_{a_\alpha}\partial_{a_\beta}.
\end{split}
\tag{4.1}
\]

The ordering of `(N-D-1)partial_alpha` is part of this formula. Expansion
gives exactly

\[
W_N=\binom N2g_0I+NA+B,
\tag{4.2}
\]

where A is a derivation and B has differential order at most two:

\[
\begin{aligned}
A&=-g_0D+\sum_\alpha F_{0\alpha}\partial_{a_\alpha},\\
B&=\tfrac12g_0(D^2+D)-\sum_\alpha
F_{0\alpha}(D+1)\partial_{a_\alpha}
 +\sum_{\alpha\le\beta}
 \frac{F_{\alpha\beta}}{1+\delta_{\alpha\beta}}
 \partial_{a_\alpha}\partial_{a_\beta}.
\end{aligned}
\tag{4.3}
\]

Two zero modes are the only input capable of producing quadratic N
dependence, and bidegree conservation forces them to remain two zero
modes. This proves (4.2). At fixed `(P,Q)`, averaged occupation coordinates
stabilize for `N>=max(1,P+Q)`. Global lowering covariance is additionally
required to restrict (4.2) to the centered primary algebra. Bidegree
conservation by itself is insufficient for that restriction.

This stable theorem is already present in the earlier reports. Its
precise hypothesis set is recorded here because it shows why positivity,
bad-channel support, quadratic principal growth, and Einstein coefficients
are all unnecessary for this particular property. Likewise, its coordinate
affineness does not imply simultaneous diagonalizability of A and B or
integer-power asymptotic energy branches.

### 5. A general all-degree theorem for the lowest chiral algebra

Here `Q=0`. Let an arbitrary real, globally invariant chiral pair sequence
be denoted by `gamma_k`, k even. Define

\[
g_0=\gamma_0,\qquad g_2=\gamma_2,\qquad
s=\frac{g_2-g_0}{C_2-C_0}=\frac{g_2-g_0}{2(2d+1)},
\]

\[
L(C)=g_0+s(C-C_0),\qquad r_k=\gamma_k-L(C_k).
\tag{5.1}
\]

Always `r_0=r_2=0`. Suppose

\[
r_k\ge0\quad\hbox{for all even }k,
\tag{5.2}
\]

and that the first strictly positive one is

\[
k_*=2m+2,\qquad m\ge1.
\tag{5.3}
\]

No upper-degree growth hypothesis or special formula for `r_k` is needed.

#### Theorem 5.1: first positive affine defect

For stable `N>=P>=2`, the exact elementary-primary eigenvalue is a global
minimum,

\[
g_*(N,P)=g_0\binom N2+sP(Nd+P-1).
\tag{5.4}
\]

Let `E=sum_{p>=2}p c_p partial_{c_p}` be excitation degree and put

\[
K=A-sdE.
\tag{5.5}
\]

Then its complete graded kernel is

\[
\boxed{\ker K=\mathbb C[c_2,c_3,\ldots,c_{2m+1}].}
\tag{5.6}
\]

At every finite degree, zero is semisimple and every other eigenvalue of
K is strictly positive. Hence

\[
q=\lim_{\tau\to\infty}e^{-\tau K}
\tag{5.7}
\]

is a well-defined graded algebra retraction onto (5.6). Its multiplicities
have generating function

\[
\prod_{p=2}^{2m+1}(1-z^p)^{-1}.
\tag{5.8}
\]

##### Proof

The pair operator minus its affine line is positive by (5.2). Summing
the affine line and using (2.3) gives the lower bound (5.4).

Take the Bose-symmetric seed with P particles each in chiral degree one
and all other particles in degree zero. For every pair, its relative
degrees are at most two. Global primary projection commutes with each
pair projector, so the projected seed has only pair channels zero and
two. The affine residual annihilates it, proving equality. It is nonzero:
its pairing with the primary centered creation moment c_P is a nonzero
normalization times `(-1)^P(1-P)`.

For completeness, the endpoint projector weights are

\[
\alpha_{p,k}=\binom pk\frac{(d)_p}
 {(2d+k-1)_k(2d+2k)_{p-k}}>0\quad(0\le k\le p).
\tag{5.9}
\]

The pair Casimir is tridiagonal in the monomial endpoint basis. For
`p>=2` its matrix element between opposite endpoints vanishes, and its
diagonal increment above C_0 is dp. Completeness and the swap projector
therefore imply

\[
2\sum_{k\ \mathrm{even}}\alpha_{p,k}(C_k-C_0)=dp.
\]

The one-generator slope formula consequently gives

\[
\boxed{
\sigma_p-sdp=2\sum_{k\ \mathrm{even}}\alpha_{p,k}r_k.
}
\tag{5.10}
\]

This is zero for `2<=p<k_*` and strictly positive for `p>=k_*` because
`alpha_{p,k_*}>0`. More strongly, at `p<k_*` all available pair channels
equal their affine line, so `Kc_p=0`, including its decomposable terms.
Since K is a derivation, every polynomial in the displayed generators
is an actual zero eigenvector.

The stable monomial matrix is triangular by number of creation factors.
Its diagonal entries are sums of the generator gaps (5.10). Thus its
zero algebraic multiplicity is exactly (5.8), which has already been
realized by actual eigenvectors. Zero is semisimple and its full kernel
is (5.6); all other diagonal eigenvalues are positive. Even possible
Jordan polynomials at positive eigenvalues decay under the exponential.
Finally each `exp(-tau K)` is multiplicative because K is a derivation.
The finite-degree limit remains multiplicative, proving (5.7).

If all `r_k` vanish, the full chiral primary Hamiltonian is the scalar
(5.4) at every degree and K is zero on the entire stable algebra. That
case is separate from the finite first-positive hypothesis.

There is also an exact finite-degree consequence without the stable-N
threshold: whenever P<k_*, every accessible pair channel equals its
affine line, so the **entire** chiral primary block is the scalar (5.4)
for every N for which that block exists. This follows directly from
the pair operator and (2.3), regardless of the block's multiplicity.

### 6. The exact cusp quotient is more universal than its Einstein coefficient

The elementary-primary state used above is an exact eigenstate for **any**
globally invariant chiral pair sequence, even when some r_k are negative.
Positivity was needed to identify it as a minimum, not for its eigenvalue.

Pairing a degree-P primary with the degree-one seed extracts the
`a_1^P` coefficient. The centered moment

\[
c_p=\sum_{j=0}^p\binom pj(-a_1)^{p-j}a_j
\]

has that coefficient `(-1)^p(1-p)`. After removing the common degree sign,
the exact eigenfunctional is the algebra homomorphism

\[
\mathcal L(c_p)=(1-p)t^p.
\tag{6.1}
\]

Self-adjointness of the finite-N pair lift and the nonzero seed pairing
give `L W_N=g_*(N,P)L`. Comparing coefficients in N for infinitely many
stable integers yields, on each degree,

\[
\mathcal L K=0,\qquad
\mathcal L\{B-sE(E-1)\}=0.
\tag{6.2}
\]

Under Theorem 5.1, `Lq=L`. The reduced Bloch family in the graph gauge
`q Omega=I` has this same exact quotient at every perturbative order.
Every effective coefficient after subtraction of the exact (5.4) maps
the low algebra into the kernel of L. This assertion is formal at all
orders and analytic at each finite degree on the isolated spectral
subspace. It is not an all-order differential-order bound.

When `m=1`, let `x=c_2`, `y=c_3`. Then

\[
\mathcal L(x)=-t^2,\qquad \mathcal L(y)=-2t^3,\qquad
\ker(\mathcal L|_{\mathbb C[x,y]})=(y^2+4x^3).
\tag{6.3}
\]

Thus the cusp quotient follows from the representation, the degree-one
seed, global covariance and the two-variable low retraction. It is not
an accidental factor in the Einstein rational coefficients.

For `m>=2` the exact image remains `C[t^2,t^3]`, but the low algebra has
more variables. Its quotient ideal contains (6.3) and the graph relations

\[
c_{2a}-(1-2a)(-x)^a,\qquad
c_{2a+3}-(a+1)(-x)^a y,
\tag{6.4}
\]

for the additional available generators. These generate the full ideal:
eliminate the extra variables and then use the two-variable cusp kernel.
A surviving cusp quotient therefore does not imply that the entire
lowest algebra is two-dimensional in its number of generators.

### 7. A universal Gegenbauer operator, including its exact coefficient

Assume (5.2) and `v:=r_4>0`, and put `w:=r_6>=0`. Then Theorem 5.1 has
`m=1`. Let `B_low=qB|_{C[x,y]}`.

Multiplicativity gives `q M_f=M_f q` for all low polynomials f. Thus
the vanishing of the third iterated commutator of B with multiplications
passes to B_low, so B_low has differential order at most two. Equation
(6.2) implies that every coefficient of
`B_low-sE(E-1)` is divisible by the weight-six polynomial `J=y^2+4x^3`.
This coefficient statement follows inductively by applying the operator
to monomials up to its differential order.

With `weight(x)=2`, `weight(y)=3`, the only weight-zero operator of order
at most two having every coefficient divisible by J is a constant
multiple of `J partial_y^2`. Consequently the **form** is forced:

\[
\boxed{
B_{\rm low}=sE(E-1)+\frac{\varepsilon(d;v,w)}2
 (y^2+4x^3)\partial_y^2.
}
\tag{7.1}
\]

#### Theorem 7.1: only r_4 and r_6 enter the first gap coefficient

The coefficient in (7.1) is

\[
\boxed{
\varepsilon(d;v,w)=
\frac{27vw(d+3)(d+4)(2d+9)}
 {2(2d+5)\{15(2d+7)(d+5)v+(2d+3)(d+2)w\}}.
}
\tag{7.2}
\]

It is strictly positive if `w>0`, and vanishes if `w=0`. No channel above
relative degree six enters this formula.

##### Exact determining calculation

An affine Casimir pair term contributes exactly the scalar (5.4), so it
is enough to calculate with `gamma_0=gamma_2=0`, `gamma_4=v`, and
`gamma_6=w`. Let

\[
D_*=15(2d+7)(d+5)v+(2d+3)(d+2)w.
\]

The rank-one descendant projectors and occupation formula (4.3) give

\[
\begin{aligned}
\kappa_4&=\frac{d(d+1)v}{2(2d+3)(2d+5)},\\
\kappa_5&=\frac{5d(d+1)v}{4(2d+3)(2d+5)},\\
\kappa_6&=\frac{d(d+1)D_*}
 {4(2d+3)(2d+5)(2d+7)(2d+9)},
\end{aligned}
\tag{7.3}
\]

\[
q(c_4)=-3x^2,\qquad q(c_5)=-2xy,
\]

\[
q(c_6)=-\frac5{D_*}\left[
3(2d+7)v\{3(d-3)x^3+2(d+2)y^2\}
 -(2d+3)(d+2)w\{9x^3+2y^2\}
\right].
\tag{7.4}
\]

The six determining jets of the affine-subtracted B_low are zero on
`1,x,y,x^2,xy`, and equal `epsilon J` on `y^2`, with epsilon in (7.2).
These finite rational identities determine an already proved order-two
operator at **all** weighted degrees; they are not a fit of a few spectra.

For independent reproduction, on pair degree T the metric is

\[
G_{jj}=\frac{j!(T-j)!}{(d)_j(d)_{T-j}}.
\]

Start with `(z_1-z_2)^k`, apply total raising `T-k` times to obtain v_k,
and form `P_k=v_kv_k^tG/(v_k^tGv_k)`. The script
`universal_chiral_defect.py` constructs only `k=4,6` projectors, checks
their idempotence and self-adjointness exactly, inserts them into (4.3),
and derives (7.3)-(7.4) and all six jets as rational functions of d,v,w.
It imports no preceding spectral code. Its adjacent JSON records an
actually completed successful run.

For the Einstein values,

\[
v=\frac{2d(d+4)}{2d-1},\qquad
w=\frac{4d(2d+5)(2d^2+9d+3)}{(2d-1)(2d+1)(2d+3)},
\]

equation (7.2) reduces identically to the coefficient in the Deep report.

#### 7.1 Exact scope of the special functions and analytic branches

The monic polynomials F_b solving

\[
(y^2+4x^3)\partial_y^2F_b=b(b-1)F_b
\]

are the same rescaled Gegenbauer polynomials of parameter `-1/2` as in
the Einstein calculation. For `2a+3b=P`, their eigenvalues are

\[
sP(P-1)+\varepsilon(d;v,w)\binom b2.
\tag{7.5}
\]

When `w>0`, the admissible b have one parity and these values are
distinct. The isolated semisimple leading cluster followed by this
simple next matrix gives convergent integer-power `1/N` branches at
every fixed P, with no uniform radius claimed as P grows.

When `w=0`, formula (7.1) is scalar on each weighted degree. This supplies
a precise obstruction to inferring simple constant gaps or integer-power
continuation from a two-variable leading algebra and positive affine
defect alone. A concrete example is `r_4=1` and all other r_k zero:
K still has the full low algebra `C[c_2,c_3]`, but the entire constant-gap
operator vanishes after the affine scalar is removed. Higher-order
resolution is then necessary. This example belongs to the general
nonnegative-affine-defect class; it is **not** asserted to preserve the
Einstein bad-channel support of section 3.

### 8. A chiral phase boundary inside the common kernel class

For (3.1), write

\[
e_0=\epsilon_0(0)>0,\qquad e_2=\epsilon_2(0)>0,
\qquad u=a-cC_0.
\]

The chiral channels are `gamma_0=u+e_0`, `gamma_2=u+e_2`, and
`gamma_k=u` for even `k>=4`. Direct subtraction of their affine line gives

\[
r_4=\frac{(2d+5)e_0-(4d+6)e_2}{2d+1},
\tag{8.1}
\]

and, for k>=4,

\[
r_k=r_4+\frac{e_0-e_2}{2(2d+1)}(C_k-C_4).
\tag{8.2}
\]

Therefore:

| Chiral ratio | Complete minimum-leading algebra | Consequence |
|---|---|---|
| `e_2/e_0 < (2d+5)/(4d+6)` | `C[c_2,c_3]` | r_4,r_6 are positive; the universal simple Gegenbauer cluster applies |
| `e_2/e_0 = (2d+5)/(4d+6)` | `C[c_2,c_3,c_4,c_5]` | r_4=0, r_6>0; the low multiplicity jumps |
| `e_2/e_0 > (2d+5)/(4d+6)` | Not determined by the affine-bound theorem | r_4<0, so c_4 has leading slope below the elementary branch |

The equality and strict inequalities hold at a fixed physical mass.
The whole class retains the same global residual positivity and kernel
(3.6); the sign of r_4 concerns a **different**, chiral affine-Casimir
baseline. There is no contradiction between the last row and (3.5).

#### 8.1 An exact same-support counterexample

At d=2 choose

\[
w_{kl}=16-8\min(C_k,C_l)+
\begin{cases}
1,&|k-l|=0,\\
9/14,&|k-l|=2,\\
0,&|k-l|\ge4.
\end{cases}
\tag{8.3}
\]

All bad residual coefficients are strictly positive, and both corrections
are bounded. Hence the exact logarithmic kernel, Grassmann principal
symbol with c=8, fixed-Q cluster construction, and exponential soft-band
universality all remain in force.

Its chiral values are `gamma_0=1`, `gamma_2=9/14`, and `gamma_k=0` for
even k>=4. Here

\[
s=-1/28,\qquad r_4=0,\qquad r_6=13/14>0.
\]

Thus its complete lowest stable algebra has four generators. Moreover
all channels available at P=4 lie on the affine line, so the **entire**
primary block for every N>=4 is exactly

\[
\boxed{
W_N\big|_{P=4,Q=0}
=\left[\binom N2-\frac{2N}{7}-\frac37\right]I_2.
}
\tag{8.4}
\]

The multiplicity two is the stable primary partition count
`4=4=2+2`. Equation (8.4) follows from the operator identity (2.3), not
from fitting eigenvalues at several N. The symbolic certificate verifies
the rational channel relations and the exact formula.

This counterexample proves that the fixed two-generator Einstein
minimum cluster and its simple constant-gap spectrum do **not** follow
from complete kernel support, global positivity, and the Grassmann
principal symbol. It does not erase the broader cusp quotient (6.4).

### 9. A minimal residue class for all-degree leading linearization

The previous all-degree generic nonresonance proof can also be separated
from the Einstein formula. Suppose the channel family is rational in d,
regular at physical d>1, and satisfies:

* Only `gamma_00` has a pole at `d=1/2`.
* That pole is simple, with
  `R=lim_{d->1/2}(2d-1)gamma_00 != 0`.
* Every other allowed channel is regular there.

The kinematic projector weights are regular at that point. With

\[
f_n=\binom{2n}{n}/4^n,
\]

their completeness and swap identities give, for p+q>=2,

\[
\operatorname*{Res}_{2d-1}\sigma_{pq}
=R(2f_pf_q-1).
\tag{9.1}
\]

The notation means the coefficient of `(2d-1)^{-1}`. This is a test of
a rational identity at an auxiliary parameter, not a physical mass
continuation.

Set `e(n)=2n-s_2(n)` and `E(p,q)=e(p)+e(q)`. For p+q>=2,

\[
v_2(2f_pf_q-1)=1-E(p,q).
\]

For every true primary partition `alpha=sum_i beta_i` with at least two
parts of total degree at least two,

\[
E(\alpha)\ge\sum_iE(\beta_i)>\max_iE(\beta_i).
\]

After factoring out the common nonzero R, the first residue has the
unique smallest binary valuation and cannot cancel the sum of the other
residues. Thus every one-generator homological divisor is a nonzero
rational function.

The established finite graded triangular construction now produces
one all-degree polynomial leading normal form outside the explicitly
defined countable set of roots of these divisors. With rational
coefficients that exceptional set consists of algebraic physical masses;
at each excitation cutoff only finitely many occur. No local finiteness
of the all-degree union, or absence at every rational mass, follows.

Positivity, support and bulk growth were unnecessary for this residue
theorem. Conversely those three assumptions alone do not supply the
pole hypothesis. For example an affine Casimir pair sequence has
`sigma_p=sdp` and every chiral decomposition is resonant as an identity;
its forcing vanishes and the actual leading operator is still simple.
Nonresonance is a sufficient coordinate theorem, not a definition of
solvability.

There are infinite-dimensional deformations satisfying all the useful
Einstein assumptions simultaneously: add arbitrary nonnegative bounded
corrections, rational and regular at d=1/2, to the spin-zero/spin-two
channels with `min(k,l)>=1`, while retaining their chiral values. Their
kernel, principal symbol, pole residue and full chiral low cluster are
unchanged, while finite nonchiral matrices generally change. One may
also increase `epsilon_0(0)` by a nonnegative regular term and keep
`epsilon_2(0)` fixed; this remains inside the open simple-Gegenbauer
region and changes its coefficient according to (7.2).

### 10. Assumptions and nonconclusions at a glance

| Structure | Minimal sufficient inputs used here | Not implied |
|---|---|---|
| Finite scalar pair lift | Physically audited closure and actual Einstein pair values; or an explicitly defined abstract two-body model | An abstract deformation is another minimal Einstein theory |
| Stable affine coordinate pencil | Unique zero mode, nonnegative bidegrees, two-body number conservation; covariance for primaries | Simultaneous diagonalization or globally integer `1/N` branches |
| Complete logarithmic kernel and exact rank | Common unitary representation, strictly positive bad support `k<=l+2` | Positive eigenvalues or accidental positive degeneracies |
| Grassmann min law | Same representation, specified min-Casimir principal term, subquadratic remainder | Complete finite-energy spectrum or an individual spectral gap |
| Exponentially small positive fraction | Collision flags, polynomial metric comparison, polynomial upper weights, exact kernel count and min law | A matched exponential rate or eigenvectors for every branch |
| Complete fixed-Q cluster/parity spectral-set hierarchy | Same representation, global covariance, Bose action, self-adjoint c0 pair residual at fixed Q | Every finite-P root, a cutoff rate, or complete limiting multiplicities |
| Exact eventual regular-threshold multiplicities | The c0 cluster theorem, away from all finer-partition sums F_N,Q | Multiplicities on F_N,Q or a shrinking-window rate |
| Eventually simple chiral maximum (3.23) | The c0 cluster theorem and the strict ground-channel maximum (3.22) | A quantitative rate from c0 alone; finite support adds O(P^{-d}) |
| Finite pair-top accumulation hierarchy (3.18) | The cluster theorem plus finitely many pair spectral values at each fixed Q | The same bound for arbitrary c0 tails |
| General c0 accumulation hierarchy (3.19) | The c0 cluster theorem and its pair tail tending to zero | Finite-order Schatten or determinant summability |
| Generic all-degree leading normal form | One nonzero isolated `gamma_00` pole plus rational channel dependence | Every physical mass is nonresonant, or the full pencil is diagonal |
| Minimum-leading algebra | Nonnegative chiral affine defects and first positive channel | It always has two generators |
| Exact cusp quotient | Globally invariant pair action and elementary-primary seed; low retraction for the effective quotient | The entire low operator has only two variables |
| Simple Gegenbauer constant-gap layer | `r_4>0`, `r_6>0`, all chiral affine defects nonnegative | A closed complete finite-N spectrum |

The deeper organization is therefore partly universal and partly
dynamical. Collision flags and the scalar representation govern exact
support and semiclassical localization. Creation occupation counting
governs the stable coordinate pencil. A positive affine defect selects
its low algebra; its first two relevant coefficients determine the
Gegenbauer gap. The Einstein coefficients select a particular region of
this hierarchy and provide numerical values that support alone cannot
recover.

### 11. Reproduction and source boundaries

Run the independent generic chiral certificate from the workspace root:

```bash
PYTHONDONTWRITEBYTECODE=1 research_venv/bin/python hierarchy_research/universality/universal_chiral_defect.py
```

`universal_chiral_defect.json` records the executed exact identities and
the counterexample. The proof of all-degree sufficiency is the operator
order and retraction argument above; the script determines its finite
jets. It never imports the original evaluator or alters an earlier file.

The inherited mathematical inputs are precisely:

* Fock report and `prior/fock_research/general/LOGARITHMIC_KERNEL_THEOREM.md`:
  complete collision-flag/logarithmic kernel and positive Gram reduction.
* Analytic report: stable occupation coordinates, global covariance and
  the chiral elementary-primary construction.
* Deep report Appendix A: fixed-N Grassmann law; Appendix C: fixed-source
  endpoint Racah cluster inheritance; Appendix E: Einstein stable normal
  form, retraction and effective-operator arguments; Appendix H: their
  independent audit.
* `AdS3两轮结果独立审查与补证.md`, read completely: full physical closure
  interfaces, the `A=CG` real-structure convention, the primary-covariance
  requirement, and the conditional status of a bounded canonical-to-
  covariant response bridge.

These are source dependencies, not fresh independent integrations of
the Einstein constraints. No universality claim above can replace the
physical derivation of the distinguished Einstein coefficients.


---

# Appendix G1: Final independent adversarial audit

Source SHA-256: 4cad79693e4755ba22a0a6c94dfe1965ca2916c1d6934730e96ebac9f3a58314.

## Final adversarial audit record for the hierarchy continuation

Date: 2026-10-19. All original research sources remain unchanged. This
record distinguishes retained inputs, newly checked implications, new
independent symbolic coefficients, and open endpoints. It is the final
audit record of the universality/audit subproject, not a replacement for
the other contributors' full proofs or execution reports.

### 1. Reading completed and source boundaries

The named `AdS3两轮结果独立审查与补证.md` was read completely, including all
seven appendices. The Deep report's entire main text and appendices A,
C, D, E, F and H were read in full across this continuation; E, F and H
were read again in full during this final hierarchy exploration because
the new universality argument uses their precise interfaces. The earlier
Fock report, quickstart and JSON were read completely in the preceding
independent audit. Its extracted package was inventoried and its
physics, kernel, Gram and stable proof files were read where used.
The complete binary ZIP being available is not represented as a claim
that every implementation line was independently rederived.

The Analytic report's main results and relevant physics/kernel/stable
appendices were read in the preceding round and are retained sources.
The separate cluster contributor is responsible for the complete
final-round reading of that long report; this subproject does not
claim complete fresh reading of all its 6299 lines. New soft and
cluster drafts, including the added connected functional calculus,
complete all-N fixed-Q parity recursion, and exact regular-threshold
multiplicity note with its top chiral corollary, were read completely
before the present audit conclusions. The complete N=3 joint-boundary
note and the final soft theorem's execution/coverage section were also
read. The retained singleton proof's sections 2–3.2 were reread against
the new top-branch rate claim.

`audit_read_ledger.json` records hashes, sizes, line counts and exact
reading scopes. The original input hashes are provenance records;
draft hashes refer to the versions assessed at the ledger's timestamp.

### 2. Physical closure and original Hamiltonian: retained with exact conditions

The independent two-round report does not supply a counterexample to
the minimal Einstein-real-scalar order-G pair lift under the specified
Brown-Henneaux/scalar boundary conditions and quantum prescription.
Its careful distinctions are retained:

* The complete cubic normal form and the singular leading
  **non-global** Brown-Henneaux charge identities remove independent
  boundary oscillators from the resonant quartic symbol.
* The global scalar charge identities then make a normal-ordered 31
  coefficient an intertwiner from one irreducible scalar module into
  its symmetric cube. It annihilates the source lowest vector by
  energy positivity and hence all its descendants. Spectators cannot
  restore a vanished normal-ordered coefficient.
* Branch and scalar-number preservation of the lower quantum-degree
  terms follows separately from parity and positive resonant
  frequencies. Their numerical one-body subtraction is an additional
  prescribed calculation, not something a classical quartic identity
  fixes by itself.
* The canonical paired graph is an algebraic symplectic reduction.
  Its equivalence to a bounded covariant response requires the stated
  reconstruction, boundary domain and renormalized endpoint hypotheses.
  A continuum bounded lapse/shift and endpoint-existence assertion
  cannot be inferred merely from bounded oscillator coordinates.
* The physical energy statement remains `E=E_0+Gg+o(G)`. The given
  order-G Ward argument does not justify replacing that remainder by
  `O(G^2)`; a stronger next-order quantum identity would be needed.

The prior independently constructed noncircular d=2 and d=3 raw
constraint calculations remain useful finite checks of the physical
source-to-pair bridge. They were not rerun and relabelled as new
experiments in this final exploration. No new continuum Einstein
integration or prescription-independent quantum closure is claimed.

### 3. Exact kernel and Gram: no unsupported reversal

The old logarithmic classification remains a complete kernel theorem.
The pair-Casimir collision flags are exact; dividing the fourth-power
Vandermonde converts the support condition to preservation of every
root-ideal power. The local normal lattice and its symmetric powers
remove all possible denominator primes. Since coefficients initially
lie in the Vandermonde localization, there is no unexplained
codimension-two rational residue.

The actual tensor-to-map convention must use the real polynomial
structure: `A=CG`, with inverse `C=AG^{-1}`. This is a clarification
of the complex-linear identification, not a counterexample to the
kernel formula. Bose projection and positive frame compression retain
the proven range and nonzero multiplicities. Support universality fixes
that range and zero multiplicity, but does not fix accidental positive
degeneracies.

The earlier implementation issue of unnecessarily materializing a
dense characteristic-polynomial zero factor is a program-output
efficiency defect. It does not invalidate the kernel or compressed
spectral theorem. Original code was not altered by this subproject.

### 4. New soft theorem: all critical interfaces independently checked

The full audit is `SOFT_FLAG_TRANSFER_AUDIT.md`. It checks:

1. The exact support offset three on the auxiliary odd extension,
   becoming the physical Bose inequality `k>=l+4`.
2. A **single** restricted metric map `I tensor M_Q^{-1}` transports
   all good pair subspaces simultaneously, with polynomial norm and
   distance distortion. No individual eigenvector is treated as mass
   independent.
3. The harmonic support projector is exactly
   `1_{|J_L|-|J_R|<=4}`. Its coherent expectation is bounded by an
   actual bounded-variable large-deviation estimate.
4. The projected coherent concentration operator is positive and at
   most the physical identity. Its trace asymptotic, together with
   a spectral threshold, produces an **entire** subspace of the
   necessary large dimension and uniformly small Rayleigh quotient.
   Nonorthogonality of individual coherent states is not ignored.
5. Exact finite kernel subtraction distinguishes exponentially small
   positive levels from true kernel vectors. The bulk weak law is
   used only for the complementary counting upper bound.
6. Two-sided polynomial comparison gives equality of ordered
   logarithmic-rate profiles between physical masses whenever a
   limiting profile exists; existence is not asserted.

No material gap was found. Uniform lower bounds on bad coefficients
are unnecessary for the exponential **upper** count; polynomial upper
bounds suffice. Two-sided polynomial bounds are needed for the
separate logarithmic-rate comparison.

### 5. Complete fixed-Q cluster hierarchy and exact regular multiplicities

The full audit is `PARTITION_CLUSTER_ALGEBRA_AUDIT.md`. It checks the
bounded internal-label reduction before applying fixed-endpoint
Racah asymptotics, including all growing-target multiplicities. It
then checks the operator product by partition join, the actual Bose
corner and normalizer average, and the least-nonzero-ideal argument
for the essential spectrum. The quotient embeds into the Calkin
algebra with exactly the stated compact kernel.

The finite right budget is implemented by the concrete partition
image: only internal tuples with `sum q_S<=Q` exist. Left/right
multiplicity spaces may be entangled; internal Bose symmetry is
the diagonal permutation action. A left cutoff tensored with the
finite right identity gives the same compact overlap estimate,
without imposing separate chiral Bose symmetry.

The unequal two-cluster lower theorem holds for every sufficiently
large P because its stabilizer has no cluster-exchange phase. For
equal sizes, the exact swap is
`(-1)^(P+Q)(D tensor D)Swap`, where `D=(-1)^(p+q)` on internal states.
Conjugating by `I tensor D` identifies the allowed budget symmetric
or exterior square. Indices retain actual degree and eigenvalue
multiplicity; the exterior channel cannot use only distinct numerical
energies. This selection is used in both the upper and lower proofs.

The subsequently added Mobius connected functional calculus supplies
an independent proof of the Bose upper theorem. Ordered pair words
survive its inversion exactly when their edge graph is connected.
It is compact for every continuous scalar function and vanishes
identically for polynomials of degree at most N-2. This was checked
separately from the C*-layer proof. At a real resolvent point inside
the common spectral interval, the argument needs a continuous
extension from the actual union of spectra; this clarification was
communicated and incorporated.

The resulting all-N fixed-Q Hausdorff limit is the proper binary
cluster union along `P+Q` even. Odd N have the same limit along all
P; even N have the proved exterior-square refinement on the other
parity. Finite source families and a finite epsilon-net supply the
all-large-degree quantifier. The union over `q<=Q` of internal
spectral sets has derived set of order `N-2` contained in the finite
pair-atom union, and its next derived set is empty. These are
distinct-point statements, not statements about multiplicity at
an essential threshold.

The additional regular-threshold theorem was audited separately.
Let F_N,Q be the compact union of sums over at least three clusters.
For `lambda in C_N,Q \\ F_N,Q`, an infinite internal source family
would force one left degree to infinity and hence resolve that
source into a finer cluster limit, a contradiction. Thus the source
is genuinely finite dimensional, including repeated numerical values,
and lambda is isolated. Localized Mobius inversion leaves exactly
the binary coefficient minus one. Orbit normalization and a joint
polar projection then approximate the target spectral projection
in operator norm. Once the upper theorem excludes its transition
annuli, distance less than one gives an **exact eventual rank**:
one allowed internal source per binary orbit, with the precise
equal-size parity selection. This proves complete local multiplicity
at this stated class of thresholds, stronger than a spectral-set limit.

For Q=0, the positive Einstein pair deficits show that the maximal
internal energy `binom(m,2)a_0` is attained only at internal degree
zero. The top binary threshold `binom(N-1,2)a_0` lies strictly above
all finer thresholds and has the unique source `1+(N-1)`. The new
multiplicity theorem therefore makes the largest residual eigenvalue
eventually simple, for every fixed N>=3 and either parity. Combining
this identification with the retained ground-source singleton estimate
gives `lambda_max=binom(N-1,2)a_0+O(P^{-Delta})`. The rate was an old
quasimode input; its eventual uniqueness and extremal identification
are new.

At thresholds in F_N,Q, especially zero, the local finite-source
argument can fail. The results do not exclude further positive levels
tending to zero, give every threshold's multiplicity, or provide a
five-body Fredholm determinant.

### 6. New universality theorem and independently computed chiral coefficient

The standalone proof is
`../universality/UNIVERSALITY_LAYERS_AND_CHIRAL_PHASES.md`. Its new
claims separate the following mechanisms:

| Mechanism | Needed input |
|---|---|
| Exact logarithmic kernel | Same representation and strictly positive common bad support |
| Grassmann min law | Specified min-Casimir leading term plus subquadratic correction |
| Exponential soft upper band | Exact flags, polynomial metric distortion, polynomial upper pair weights and exact kernel subtraction |
| Complete fixed-Q partition/parity hierarchy | Common representation, global covariance, actual Bose action, bounded self-adjoint c0 pair residual |
| Exact regular-threshold eventual multiplicity | The preceding compact recursion, away from all finer-partition sums |
| Finite pair-top derived-set bound | The cluster recursion plus a finite pair spectral set |
| Stable affine coordinates | Unique zero mode, nonnegative bidegrees, number-preserving two-body action; covariance for primary restriction |
| Generic all-degree leading linearization | Rational channel dependence with one isolated nonzero ground-channel pole |
| Minimum-leading chiral algebra | Nonnegative affine-Casimir defect and its first positive even channel |
| Simple Gegenbauer constant gaps | Fourth and sixth affine defects both positive, with all defects nonnegative |

The first-positive-defect theorem is an all-degree proof: if the first
positive even defect is at `2m+2`, the complete lowest leading algebra
is `C[c_2,...,c_{2m+1}]`, zero is semisimple, and the exponential of
its derivation defines an algebra retraction. It does not rely on
finite slope scans.

The exact elementary-primary character gives a cusp quotient even
outside the Einstein coefficient family. When the low algebra has
two generators, the differential-order and ideal conditions force
the Gegenbauer operator's form. Its scalar coefficient was computed
in a new independent program using explicit Bargmann descendant
rank-one projectors at relative degrees four and six and direct
occupation counting. No earlier spectral evaluator was imported.

The executed symbolic calculation gives

\[
\varepsilon(d;v,w)=
\frac{27vw(d+3)(d+4)(2d+9)}{
2(2d+5)[15(2d+7)(d+5)v+(2d+3)(d+2)w]},
\quad v=r_4>0,\ w=r_6\ge0.
\]

It verifies all six determining jets as rational functions of the
three variables, checks the Einstein specialization exactly, and
checks the strict-support d=2 counterexample with `epsilon_0=1`,
`epsilon_2=9/14`. That example has a four-generator low algebra and
an exact degree-four doublet for every stable N, while retaining
the same logarithmic kernel and Grassmann principal symbol.

The exact cusp quotient should therefore **not** be described as
Einstein-specific or disproved by this deformation. What fails is
the stronger universal assertion of the particular two-generator
lowest algebra and its simple nonzero Gegenbauer gaps.

The complete cluster and regular-multiplicity proofs need only the
bounded self-adjoint c0 pair residual at each fixed Q. They need neither
the Einstein min-Casimir coefficients nor positivity. Finite support
is a sufficient stronger condition. The distinction matters for the
derived-set endpoint: arbitrary c0 tails can already give a two-body
accumulation at zero, so their general all-N bound is one order weaker,
with the `(N-1)`st derived set contained in `{0}` and the Nth empty.

An exact counterexample prevents an unsupported determinant conclusion.
For N=2,Q=0 take even-channel residuals `v_k=1/log(k+2)`. They tend to
zero, but the connected resolvent at z=2 has diagonal entries
`v_k/[2(2-v_k)]>=v_k/4`. Their s-powers have divergent sum for every
finite s>0. Thus this compact connected remainder belongs to no finite
Schatten class. The example is outside Einstein's finite-support
subclass and does not exclude an Einstein determinant; it proves that
c0 compactness and partition inversion alone cannot justify one.

### 7. Moving-ratio boundary layer: an independently verified joint limit

Section 7 of `SOFT_FLAG_TRANSFER_AUDIT.md` audits the root's
three-body boundary-layer extension. It explicitly derives the
noncentral signed-permutation coherent trace bound, all four central
group elements, the finite primary multiplicity lower bound, and a
finite kernel upper bound. These uniform estimates justify a moving
ratio; a fixed-r limiting law alone would not do so.

For `r=Q/P` in `[1/2,1)`, let `mu=omega_3(r)-k_3(r)`. With
`delta=mu/12`, `tau=mu/8`, and `mu>=1280/min(P,Q)`, at least
`mu d_{P,Q}/2` strictly positive eigenvalues have Rayleigh upper
bound

\[
\frac{96D a_{\max}}{\mu m_Pm_Q}\exp[-P\mu^2/2304].
\]

The centered-indicator trace formula is essential to the numerical
constant 160 in the uniform trace bound. Its constants and the
resulting factor 96 and exponents 2304/4608 were checked directly.
Using the already proved endpoint atom asymptotic establishes the
joint limit `1-Q/P~P^{-beta}` for every `0<beta<=1/4`. At the endpoint
beta=1/4 the upper energy scale is `exp[-c log^4 P]`, and the
certified count has order `P^{3/2}log^2 P`. Its fraction of the full
block tends to zero; it is not a new fixed-density atom at r=1.

### 8. Actual execution and unresolved items

New code independently executed by this subproject:

* `../universality/universal_chiral_defect.py`: completed successfully;
  all generic d,v,w projector, retraction, six-jet, Einstein reduction
  and exact deformation assertions passed. Its JSON is the actual
  execution result.
* `build_audit_read_ledger.py`: produces provenance and reading scope;
  hashing a file is not counted as proving or reading its mathematics.

Other contributors' physical-metric, tail, finite-inertia, group/count
and Mobius certificates are reported in their own execution records.
Their existence is not converted here into a claim that this subagent
independently ran them.

Remaining questions include the complete finite nonchiral spectrum,
individual soft-rate distributions and lower bounds, growth-uniform
cluster cutoffs, multiplicities at finer-partition thresholds and
Schatten determinants, resolution of generalized
chiral phase-boundary clusters, all-mass leading Jordan classification,
and the full continuum covariant reconstruction under every old
gauge representative. The new work proves structural reductions and
precisely delimited theorems; it does not rename these open questions
as solved or infer nonintegrability from absence of a construction.

### 9. Final complete audit of the Chinese main report and adopted corrections

The complete 918-line main report
`../ADS3_Hierarchical_spectrum_research.md` was read for a final
claim, scope and numerical-constant audit. This was a check of its
faithfulness to the completed proofs, not a claim that the already
audited arguments were newly proved a second time. The full H1–H6,
S1–S4 and U1–U3 statements passed that comparison.

In particular, the main report correctly distinguishes spectral-set
limits from positive-spectrum counts and from eventual multiplicity;
fixed Q from the double-high-excitation and moving-ratio limits;
regular thresholds from finer-partition thresholds; the general c0
non-Schatten counterexample from Einstein's finite-support subclass;
and the simple Gegenbauer first-gap cluster from the complete finite
spectrum. The constants in the exponential windows, ordered metric
comparison, N=3 boundary layer, generic Gegenbauer coefficient and
same-support exact deformation agree with the final proofs. No other
required mathematical correction was found.

Three scope corrections were requested and adopted by the main-report
author; their presence was checked in the updated text:

1. The abstract now states the soft theorem's parameters as
   `N>=3, Delta>1, r in (0,1)`, removing the ambiguous combined
   interval notation for N, Delta and r.
2. H5 now explicitly begins with fixed
   `N>=3, Q>=0, Delta>1`, matching the stated multiplicity theorem.
3. The open-problem statement that zero lies in the finer-threshold
   set now explicitly assumes `N>=3`. Without that restriction it
   would be false for N=2, where `F_2,Q` is empty.

The author also replaced the ambiguous phrase about infinite-rate
"mass" by the precise statement that **probability mass may occur at
an infinite exponential rate**. This preserves the proved comparison
of rate profiles and does not assert existence or finiteness of their
limit.

After these checked corrections, the main report is faithful to the
completed theorem scope and evidence. The universality/audit subproject's
proof and audit files are frozen for packaging as of this final entry.


---

# Appendix G2: Partition-algebra audit

Source SHA-256: 6893d624e9294492727f57716e61249ccc39886869ac0e18dd099240c7bc4b2a.

## Independent audit of the conformal partition algebra and five-body limit

Date: 2026-10-19. The initial complete draft audited here was
`../cluster/PARTITION_ALGEBRA_AND_FIVE_BODY_HVZ.md`, sections 1–10.
Sections 1–9 below retain that stage's proof audit. The source was later
reorganized and strengthened; section 10 audits the complete all-N,
fixed-Q and parity continuation, and section 11 audits its exact regular
threshold multiplicities. Thus references to the initial unequal-size
lower theorem describe an intermediate result, not the final scope.
This note checks the **upper** spectral theorem as well as its source
constructions. Merely constructing quasimodes would not establish the
upper inclusion.

### 1. Verdict

The proof establishes the stated all-N proper-Bose-cluster upper bound
and the complete five-body chiral limiting **spectral set**, along all
sufficiently large integer P. Its internal-degree compact algebra,
overlap estimate, concrete Bose corner, and ideal filtration have the
required operator meanings. No unproved independence of partition grades
or faithful crossed-product representation is necessary.

One wording correction was communicated: equality of the essential
spectrum alone is generally weaker than all-P Hausdorff convergence.
The latter follows here because the separate unequal-cluster lower
theorem holds for every sufficiently large P and a finite epsilon-net
makes that lower inclusion uniform. The essential-spectrum assertion
should therefore be introduced as a consequence, not as an abstract
equivalence without these extra facts.

### 2. Why all internal multiplicities are controlled

For overlapping, nonnested clusters S and T, set
`A=S\T`, `C=S cap T`, and `B=T\S`. Their internal Casimirs commute with
both cutoffs E_S(L) and E_T(M), because each is nested or disjoint in
each case. In the common product support,

\[
p_A\le L,\qquad p_B\le M,\qquad p_C\le\min(L,M).
\tag{2.1}
\]

This is not just a bound on the initial vector: these commuting
spectral labels are bounded on both sides of the cutoff product.
For example E_S bounds p_A+p_C, and the p_A cutoff commutes through
E_T. Thus the joint internal multiplicity spaces form a **finite**
family before the union excitation grows.

For fixed such labels, only the three effective irreducible modules of
weights `|A|h+p_A`, `|C|h+p_C`, `|B|h+p_B` remain. The two cutoffs fix
both Racah endpoints to bounded sets, while the total relative degree
R tends to infinity. Their overlap is a matrix of fixed size with
entries `O(R^{-2h_C})`. The norm therefore tends to zero, uniformly over
the finite label family. No growing multiplicity factor has been
suppressed in this passage.

Arbitrary cutoff-supported internal operators X,Y satisfy
`XY=X E_S(L)E_T(M)Y`. They need not individually preserve the smaller
A,B,C labels; the norm of the middle product is already controlled.
All such operators commute with the union global action and hence
preserve its internal degree. The norm tends to zero on its degree-J
blocks, so the product belongs to the union's block-diagonal c0 algebra.
Nested clusters are easier: the larger internal cutoff already bounds
the union degree. Norm approximation removes the finite cutoffs.

### 3. Partition multiplication is valid for noncommuting overlaps

For simple tensor products over disjoint blocks of a partition, multiply
one block from the second partition into the first. Factors disjoint
from it commute past it. Starting at the rightmost intersecting factor,
the two-cluster lemma merges the current product into the union cluster;
each remaining intersecting factor also intersects that growing union.
Repeat for the other blocks. This proves

\[
\mathcal C_\pi\mathcal C_\tau
 \subset\mathcal C_{\pi\vee\tau}
\]

without commuting overlapping operators. The local algebra is a c0 sum
of multiplicity matrices, extended as identity on the descendant
irreducible module. It is not the full compact algebra of that entire
module. This distinction is necessary for the asserted compactness.

### 4. The actual Bose corner removes a potential representation loophole

Let p average the true S_N action. For compressed components,

\[
(pX_\pi p)(pY_\tau p)
=|S_N|^{-1}\sum_g pX_\pi Y_{g\tau}^{g}p.
\tag{4.1}
\]

The filtration by number of blocks is therefore a filtration by closed
two-sided ideals. Its first ideal consists exactly of the compact,
degree-preserving physical matrices, since every finite physical block
can be lifted through the one-block labelled component.

For a fixed partition pi, compression by its internal Bose projector
Q_pi changes no pXp. Consequently all internal spectral blocks in that
component are actual Bose spaces. Averaging X by the normalizer also
changes no compression. On the normalizer-invariant internal algebra,
with `m_pi=|S_N|/|H_pi|`, equation (4.1) gives

\[
(pXp)(pYp)=m_\pi^{-1}pXYp
\quad\bmod\mathcal F_{|\pi|-1}.
\tag{4.2}
\]

Indeed a distinct conjugate partition has a strictly coarser join, and
each normalizer term is identical. Hence
`Theta_pi(X)=m_pi[pXp]` is a bounded *-homomorphism in that layer.
Its image is closed. Distinct partition orbits multiply to zero at the
same layer, so their finite sum is a genuine direct sum of these image
algebras. Faithfulness of Theta_pi is irrelevant for a spectral upper
bound.

The normalizer invariance is an invariance of **operators under
conjugation**. It does not assert that every internal state is even
under exchange of equal-sized blocks. Its fixed algebra is a c0 sum of
finite matrix blocks, possibly split into exchange types. A quotient
can remove some of these blocks, but cannot add non-Bose internal
spectra. This avoids the error that can occur by passing too early to a
crossed product with artificial stabilizer representations.

### 5. The upper theorem is a genuine quotient-spectrum argument

The chiral residual is a bounded sum of pair components with internal
degrees zero and two. Thus it belongs to the partition algebra. On the
layer of pi, its cross-pair products land in lower ideals, while its
within-block products act by the multiplier

\[
H_\pi=\sum_{S\in\pi} A_{|S|}^{(S)}.
\tag{5.1}
\]

Each internal fixed-degree block of (5.1) has spectrum contained in
the sum of the actual Bose cluster spectra. It is normalizer invariant.

Take an irreducible representation of the quotient by the compact
first ideal, and the least nonzero filtration layer. The preceding
ideal is killed. A nonzero ideal in an irreducible representation acts
nondegenerately and irreducibly; hence one orbit component and one
finite matrix block of its c0 algebra is selected. The action of A_N
there is exactly the action of (5.1), by the multiplication identity.

If lambda lies outside the closed union of proper Bose cluster sums,
all these block multipliers have inverses bounded by the reciprocal
of its distance to that closed set. They are compatible with the
normalizer, so every irreducible quotient representation excludes
lambda. This proves the upper spectrum inclusion.

For clarity, the link to the actual Hilbert-space essential spectrum
is not merely terminology. The first ideal is precisely
`B_N cap K(H_N^B)`, so `B_N/F_1` injects unitally into the Calkin algebra.
A unital C*-subalgebra has the same spectrum for its elements as the
ambient C*-algebra. Thus this quotient spectrum is the actual essential
spectrum of the graded operator. For a bounded direct sum of finite
degree blocks, it equals all subsequential limits of block eigenvalues
as the degree tends to infinity: tail resolvents prove one inclusion,
and orthogonal approximate eigenvectors from distinct degrees prove
the other.

### 6. Why unequal two-cluster lower bounds hold for every large degree

For a bipartition m+n=N and a fixed finite source family, the two
internal module degrees are fixed and the outer Clebsch-Gordan degree
can be every sufficiently large integer. Every cross pair joins the
bipartition into a one-block partition, so its product with the source
cutoff is compact in the just-proved sense. Its norm on the target
degree tends to zero.

Likewise, two distinct bipartitions have one-block join, so their
finite-cutoff overlap tends to zero. If m!=n the stabilizer has no
block exchange, only permutations internal to each already Bose
cluster. Therefore the averaged Gram is

\[
T_P^*pT_P=\binom Nm^{-1}I+o(1).
\]

Polar normalization gives a physical isometry and an o(1) intertwining
error for the entire source family, with no parity subsequence. The
same argument combines finitely many inequivalent unequal channels
because their cutoffs are asymptotically orthogonal. This establishes
lower multiplicities in fixed neighborhoods, not complete limiting
multiplicities at all spectral accumulation points.

For equal sizes, an actual exchange phase remains and can depend on
outer degree parity. Omitting it would invalidate the unrestricted
all-P assertion. The draft correctly restricts its lower theorem to
unequal sizes.

### 7. Five-body completeness and the remaining boundary at zero

Every proper partition of five is one of
`4+1`, `3+2`, `3+1+1`, `2+2+1`, `2+1+1+1`, or all singletons.
The first two give Sigma_4 and Sigma_3+Sigma_2. The singleton lower
embeddings put every Sigma_3 value into Sigma_4 and every Sigma_2 value
into Sigma_3. Hence all finer partition sums are contained in the
closed union of those first two sets. The all-N upper theorem supplies
the required upper inclusion.

Both maximal five-body channels have unequal sizes. Approximate any
point in their compact closed spectral union by a fixed internal
eigenvalue, and take a finite epsilon-net of the union. The lower
theorem holds for all sufficiently large P for this finite family,
so it gives the uniform lower Hausdorff inclusion. This is the
additional quantifier argument that essential-spectrum equality alone
would not supply.

The result is a recursive spectral **set** reduction to lower particle
numbers. It does not assert a norm approximation by one copy of the
comparison operator, a cutoff error rate uniform in internal degrees,
or a Fredholm determinant. Since zero belongs to the limiting set,
the theorem also cannot exclude additional finite positive eigenvalues
approaching zero. A gap in the nonzero part of the limiting set is
insufficient for such an exclusion.

The maximal limiting residual is `6a_0`, because all proper-cluster
sums are at most that value and the four-body ground cluster in the
4+1 channel attains it. This conclusion uses the actual positive
Einstein chiral coefficients, including a_0>=a_2.

### 8. Relation to the universality continuation

The partition proof requires a chiral residual with only finitely many
relative channels, together with the common unitary representation and
endpoint Racah decay. The class in
`../universality/UNIVERSALITY_LAYERS_AND_CHIRAL_PHASES.md` has exactly
two such chiral channels, so the algebra and upper/lower theorems extend
with their deformed positive coefficients. The numerical maximum
`6a_0` requires checking which pair coefficient is largest. This
coefficient-sensitive last step is distinct from the universal
partition multiplication and Bose filtration.

### 9. Further independent audit: connected continuous functional calculus

The subsequently added section 10 was read and checked separately. Order
partitions by refinement and let `mu(pi,1)=(-1)^{|pi|-1}(|pi|-1)!`. The
new operator

\[
\mathfrak M_N(f)=\sum_\pi\mu(\pi,1)f(H_\pi)
\]

is compact in total primary degree for every continuous f on a common
compact spectral interval. For a monomial f, expand each power as
**ordered** pair words. A word with connected-component partition gamma
appears exactly for pi>=gamma, so its coefficient is
`sum_{pi>=gamma}mu(pi,1)=1_{gamma=1}`. Only connected words survive.
The already checked partition multiplication puts every such word in
the one-block c0 algebra. Uniform polynomial approximation then proves
the assertion for continuous f, since there are only finitely many
partitions and their absolute Mobius coefficients have finite sum.

For polynomial degree at most N-2, no connected N-vertex edge graph
can occur, so the operator is exactly zero at every finite degree.
At degree N-1, every surviving graph is a spanning tree with distinct
edges and every edge ordering is retained. On the ground primary the
coefficient is `(N-1)! N^{N-2} a_0^{N-1}`: each edge acts by a_0, there
are `(N-1)!` orderings, and the labelled tree count is `N^{N-2}`.

This also independently reproves the Bose upper theorem. Internal
Bose projection Q_pi commutes with H_pi and satisfies Q_pi p=p. If f
vanishes on all proper **Bose** cluster spectral sums, then every
proper compressed `p f(H_pi)p` vanishes exactly. The one-block term
is f(A_N), which is therefore compact. Continuous bumps away from
the proper-cluster set exclude those points from the essential
spectrum. This proof needs neither the least-layer irreducible
argument nor a faithful graded decomposition.

For a resolvent at nonreal z, its scalar function is continuous on
the common real interval, so the identity applies immediately. If a
real z inside that interval avoids the spectra of all H_pi, one
should first extend `(z-x)^{-1}` continuously from their finite
compact union of spectra to the interval. The functional calculus
then gives exactly the same resolvents. This minor interface was
communicated to the author; the unextended rational function is
not itself continuous on the entire interval in that case.

The connected functional calculus is a substantive recursive
operator identity, rather than a new matrix representation. Its
compact remainder need not be trace class. A Fredholm determinant
would still require a suitable Schatten estimate.

### 10. Final full audit of all particles, both parities and fixed Q

The later complete note `../cluster/ALL_FIXED_Q_PARTITION_RECURSION.md`
was read in full. Its extensions were checked conceptually before
writing and then checked again against the final formulas. They
strengthen the earlier five-body/Q=0 statement; no counterexample or
new logical gap was found.

#### 10.1 The finite right budget is an actual operator quotient

Work first on all labelled global-primary sectors with right degree
q<=Q. A cluster algebra is the c0 sum, over left degree p and these
finitely many q, of all endomorphisms of
`V_S^L(p) tensor V_S^R(q)`, extended by the identity on both
descendant modules. The right and left multiplicity factors may be
entangled by an internal operator; separability is not assumed.

A partition only realizes tuples with `sum q_S<=Q`. The impossible
formal tensor blocks have zero image and are discarded. The final
note correctly takes this concrete image, rather than claiming an
unrestricted faithful tensor action. The one-block c0 algebra on
the q<=Q container is the full degree-preserving compact algebra;
restricting to total right degree exactly Q remains compact.

The cutoff needed in the overlap proof is simply a left internal
degree cutoff tensored with the identity on the right global-primary
sector. The latter has fixed finite dimension. Consequently the
same finite-endpoint left Racah norm estimate holds. Arbitrary
left/right-entangling internal operators can be placed on the two
sides of this cutoff product and bounded by their norms. Decay here
is in the union's internal left degree; it becomes decay in the
full target degree when the union is all N leaves.

Internal physical symmetry is the **diagonal** S_|S| on the two
chiralities, exactly as in the final note. No step replaces it by
separate left and right Bose projections.

#### 10.2 Residual energies and both exchange signs

For a binary source with internal `(p_1,q_1)` and `(p_2,q_2)`, the
outer Clebsch-Gordan degrees are `P-p_1-p_2` and `Q-q_1-q_2`.
Their sum contributes exchange sign

\[
(-1)^{P+Q-p_1-q_1-p_2-q_2}.
\]

For equal sizes, write `D|_{p,q}=(-1)^{p+q}`. The exchange operator
is therefore exactly `(-1)^{P+Q}(D tensor D)Swap`. Conjugating by
`I tensor D` converts the last factor to ordinary Swap, commutes
with the additive internal Hamiltonian, and preserves both degree
cutoffs. The admissible source space is the budget symmetric square
for P+Q even and the budget exterior square for P+Q odd. Indices
must label actual eigenstates including degree and multiplicity;
using only a list of distinct eigenvalue values would be wrong for
the exterior channel.

The source residual energy is precisely the sum of its two internal
A eigenvalues. Its unused right degree is an outer coupling degree,
not an extra residual energy. The global right-Casimir baseline was
removed from every pair before forming A_N. A formula using the two
unadjusted internal W values would need the corresponding baseline
correction; the final note explicitly makes this distinction.

#### 10.3 The parity upper theorem and completeness

Every proper partition with at least three blocks has a block of
size less than N/2. Combining its other blocks by the source lower
theorem places its entire internal spectral sum in an unequal
binary channel, without violating `sum q_S<=Q`. Only the equal
binary orbit remains beyond those channels when N is even.

A globally Bose vector, resolved in this equal-binary coupling,
lies exactly in the allowed exchange sector just identified. A
continuous function that vanishes on the unequal channels and the
allowed budget symmetric/exterior spectrum therefore makes every
proper compressed term of the Mobius formula zero on that parity.
The connected remainder is compact, giving the refined upper
inclusion. Finite allowed source families provide the matching
lower inclusion; a finite epsilon-net turns it into Hausdorff
convergence along every sufficiently large degree of that parity.

Thus all N have the complete limit along P+Q even; odd N have the
same complete limit along all large P; even N have the stated
exterior-square correction on the other parity. N=2's empty odd
sector is explicitly separated, so no Hausdorff distance to an
empty spectral set is invoked.

#### 10.4 The deepest finite-channel accumulation points

For finite Q, the two-body spectral sets are finite and their union
over right degrees at most Q is

\[
\widehat\Sigma_2(Q)=\{0\}\cup
\{a_{kl}:l\le Q,\ k\le l+2,\ k+l\text{ even}\}.
\]

For each N, an accumulation of distinct spectral values must come
from total left degrees tending to infinity, hence from the
proper-cluster set. Apply the compact Minkowski derivative identity
to the finite union over q<=Q. By induction, all nonsingleton
binary terms disappear after N-3 derivatives; only the singleton
chain remains. It yields

\[
\widehat\Sigma_N(Q)^{(N-2)}\subset\widehat\Sigma_2(Q),\qquad
\widehat\Sigma_N(Q)^{(N-1)}=\varnothing.
\]

The union over q<=Q in the last pair set is necessary. Restricting
it to the single value q=Q would miss inherited internal clusters
with right excitation carried by outer coupling. The final note
has the correct finite union. These are distinct-point derivatives,
not essential multiplicity counts, and their upper depth is not
claimed sharp.

The compact partition and parity theorems need only a self-adjoint
c0 pair tail at each fixed Q, not finite support or positivity.
The sharper finite-channel derived-set bound does need the finite
pair base. For general c0 tails the analogous bound is one order
weaker, as proved in the universality note. Compactness alone also
does not imply any finite Schatten class; that note gives an exact
two-body counterexample to such an inference.

### 11. Exact eventual multiplicities away from finer-cluster thresholds

The full note `../cluster/ISOLATED_CLUSTER_MULTIPLICITIES.md` was read
and independently checked. Let the compact set F_N,Q be the union of
all internal spectral sums over partitions with at least three blocks,
with the actual right budget. The stated regularity condition is
`lambda in C_N,Q \\ F_N,Q`. It implies isolation; isolation need not be
added as an independent assumption.

#### 11.1 The additional finite-rank fact is proved, not inferred from isolation

For a binary split a+b=N, consider its ordered source Hilbert space,
including every internal degree and multiplicity and only right tuples
with `q_1+q_2<=Q`. If its additive spectral projection on a compact
interval disjoint from F_N,Q had infinite rank, infinitely many distinct
internal degree tuples would contribute. At least one left internal
degree would then tend to infinity along a subsequence. Boundedness and
the smaller-particle essential upper theorem put that cluster's limiting
energy in a proper cluster sum. Appending the other original cluster
gives at least three blocks and still respects the right budget. Its
total limit lies in F_N,Q, a contradiction.

This excludes infinitely many copies of one numerical eigenvalue as
well as accumulation of different numerical eigenvalues. A finite union
over binary orbit types then proves that lambda is an actually attained
finite-degree source value, has finite source multiplicity, and is
isolated in C_N,Q. Both outer two-module couplings are multiplicity-free;
the unused right degree supplies no further count.

#### 11.2 Localized Mobius inversion has the correct coefficient and Bose rank

Choose a continuous bump f that is one near lambda and vanishes near
every other proper threshold. The internal Bose identity `Q_pi p=p`
kills every term with at least three blocks exactly. On each binary
partition its compressed functional calculus is the compressed finite
internal lambda-eigenprojection E_pi. The Mobius coefficient of every
binary partition is minus one, so

\[
 f(A_N(P,Q))=
 \sum_{\text{binary orbits }[\pi]}m_\pi pE_\pi p+o(1)
 \quad\text{in operator norm}.
\]

Although its internal source is finite, E_pi is not globally finite
rank: the outer left degree is unbounded. Compactness is applied to the
connected remainder and to overlaps of distinct cuts, not incorrectly
to this individual cluster projection.

For an unequal split the fixed-source Gram is
`T_pi^* p T_pi=m_pi^{-1}I+o(1)`. For an equal split this identity holds
only on the allowed eigenspace of
`J=(D tensor D)Swap`, with eigenvalue `(-1)^(P+Q)`. The other eigenspace
is annihilated by p exactly. Multiplying by m_pi therefore cancels the
orbit factor; one counts one internal source per binary orbit, not one
copy per labelled cut.

Different binary orbit types have only distinct-cut overlaps. Combining
their allowed finite source maps into one column map V_P gives
`V_P^*V_P=I+o(1)`. A single polar projection R_P has rank equal to the
sum of these allowed source dimensions and obeys
`||f(A_N(P,Q))-R_P||->0`. The use of one joint polar map is necessary:
separately normalized ranges need not be exactly orthogonal at finite P.

#### 11.3 Why the resulting count is an exact eventual integer

The already proved target upper bound excludes all eigenvalues from
the transition annuli of f once P is sufficiently large. Thus f(A_N)
is then an exact orthogonal spectral projection. Two finite-rank
orthogonal projections at distance less than one have identical rank,
which gives the claimed exact eventual multiplicity. Applying the same
argument to any smaller fixed window proves convergence of all counted
eigenvalues; no assertion about a P-dependent shrinking window is used.

For equal clusters the trace of J on the ordered source is the number
of actual single internal eigenstates with energy lambda/2 and right
degree q satisfying `2q<=Q`. Hence the parity counts `(K+eta T)/2`
are correct even when different states share the same energy. Discarding
degree labels or using distinct numerical eigenvalues would give an
incorrect exterior-square multiplicity.

No additional hypothesis on positivity was used in this local argument;
the same proof extends to the bounded self-adjoint c0 universality
class once its cluster theorem is available. At thresholds in F_N,Q,
local source finiteness can fail and finer Mobius terms can survive.
The theorem does not assert their multiplicities or exclude positive
branches accumulating at zero.

### 12. All-N eventually simple top chiral branch

The final section 8 added to the regular-threshold note was read in
full. Its quantitative input was checked by rereading the retained
singleton theorem's sections 2–3.2, including the explicit ground-source
certificate.

For the Einstein chiral pair, `0<a_2<a_0`. Equality in the bound
`A_m(p,0)<=binom(m,2)a_0 I` forces every pair into its relative-zero
channel, because each positive pair deficit must vanish separately.
The exact total-Casimir sum then forces
`p(m Delta+p-1)=0`, so only the one-dimensional internal ground primary
attains the bound. This proves the required uniqueness, rather than
assuming it from the positivity of the Hamiltonian.

Among proper binary partitions, the maximal sum is
`lambda_*=binom(N-1,2)a_0`, realized only by the ground cluster in the
unequal split `1+(N-1)`. The maximal sum over at least three clusters
is `binom(N-2,2)a_0`, separated by `(N-2)a_0`. Thus lambda_* is a
regular threshold with exactly one source and no parity exception.
The local multiplicity theorem and the global upper exclusion make
the nearby eigenvalue the unique maximum for all sufficiently large P.

The retained fixed ground-source quasimode has Bose probability
`[1+(N-1)(-1)^P(Delta)_P/((N-1)Delta)_P]/N`, tending to `1/N`.
Its cross-pair endpoint is
`F_{0k}^{((N-2)h,h,h;P)}`, `k=0,2`, with middle weight `h=Delta/2`.
The explicit normalization ratio therefore gives residual norm
`O(P^{-Delta})`. This rate bounds the distance to some nearby eigenvalue;
the newly proved exact uniqueness identifies that eigenvalue with
the maximum. Consequently

\[
 \lambda_{\max}(A_N(P,0))
 =\binom{N-1}{2}a_0+O(P^{-\Delta})
\]

with eventual simplicity for both parities. The new theorem does not
assert a uniform onset in N or Delta, simplicity at small P, or a
matching nonzero leading coefficient of the error. The old quasimode
rate is explicitly retained input; the new result is the exact eventual
uniqueness and extremal identification.


---

# Appendix G3: Soft flag-transfer audit

Source SHA-256: 35308679ca12fc6f15392292a4df7500bfcb7b118393f9c1927e8a6d093fc0b4.

## Independent audit of exact flag transport and exponential soft spectrum

Date: 2026-10-19. Audited draft:
`../soft/EXPONENTIAL_SOFT_SPECTRUM.md`, read in full. The underlying Deep
Grassmann proof and the complete logarithmic kernel are retained prior
theorems. This audit independently verifies the new physical-mass
interface, the extensive-subspace argument, the ordered logarithmic-rate
comparison, and the subsequent three-body boundary-layer extension.

### 1. Verdict and novelty boundary

The new argument proves more than the old scaled zero atom: it gives an
exponential **upper** bound for an extensive number of strictly positive
eigenvalues. Its exact flags and polynomial metric distortion make it
applicable at each physical Delta>1, without applying an order-P error
estimate inside an exponentially small spectral window. The proof does
not determine matching tunnelling rates or claim a unique scale for every
positive eigenvalue.

The individual interfaces below withstand this independent check. The
general proof uses only exact finite-dimensional identities, elementary
coherent tensor probability, and a trace-to-subspace estimate. A test of
some small matrices would not establish these conclusions and is not used
for that purpose here.

### 2. Collision flags, including the auxiliary odd extension

For one chirality let V_P be the degree-P simultaneous-global-primary
polynomial space. Its underlying vector space is independent of d. For a
pair e=(i,j), put

\[
F_e(K)=V_P\cap(z_i-z_j)^K\mathbb C[z]_{P-K}.
\]

In `delta=z_i-z_j`, `s=(z_i+z_j)/2`, the pair Casimir is

\[
C_e(d)=(d+\delta\partial_\delta)
       (d+\delta\partial_\delta-1)
       -\frac{\delta^2}{4}\partial_s^2.
\tag{2.1}
\]

After using translation-invariant spectator coordinates `z_a-s`, the
last derivative still changes no power of delta before multiplication
by delta squared. Thus the operator is triangular in delta power, with
diagonal `(d+k)(d+k-1)`. For k>j>=0, their difference is
`(k-j)(2d+k+j-1)>0` for d>0. Self-adjointness in the positive restricted
Bargmann metric and the triangular dimensions prove exactly

\[
F_e(K)=\bigoplus_{k\ge K}E_e(k;d).
\tag{2.2}
\]

This includes all spectator multiplicities and uses the restricted
primary metric. No individual eigenspace is asserted independent of d.

On the labelled two-chirality tensor product the useful auxiliary good
subspace is

\[
Z_e(d)=\sum_{\ell=0}^QF_e^L(\ell+3)\otimes
                    F_e^R(\ell+1)^{\perp_d}.
\tag{2.3}
\]

Expanding the two flags yields precisely the sum of pair eigenspaces
with `k>=l+3`. A physical Bose vector is even under this pair exchange,
so `k+l` is even. On that subspace the inequality is exactly
`k>=l+4`, the proven Einstein good support. Its auxiliary complement
is `k<=l+2`, so the threshold offset in the harmonic calculation is
exact. The odd extension neither adds physical states nor assigns
unproved Einstein coefficients to odd channels.

### 3. One global metric map transports every pair condition

Let `d0=1/2` and define the positive Riesz operator **on V_P** by

\[
\langle f,g\rangle_d=\langle f,M_Pg\rangle_0.
\]

For any algebraic subspace F,

\[
F^{\perp_d}=M_P^{-1}F^{\perp_0}.
\]

Hence the same map

\[
T=I\otimes M_Q^{-1}
\tag{3.1}
\]

transports every Z_e(0) onto Z_e(d). Both metrics are permutation
invariant, so their restricted Riesz operators commute with all
permutations; T preserves the physical Bose subspace. This simultaneous
transport is the strong identity that would fail for an arbitrary list
of unrelated mass-dependent pair eigenspaces.

For b=d-1/2>0 the monomial norm ratio has elementary bounds

\[
m_P I\le M_P\le I,\qquad
m_P=e^{-2Nb}2^{-Nb}(P+1)^{-Nb}.
\]

Compression to a subspace preserves these quadratic-form bounds, even
though M_P is no longer diagonal there. Direct substitution into (3.1)
gives

\[
\|Tv\|_d^2
 =\langle v,(M_P\otimes M_Q^{-1})v\rangle_0,
\]

and therefore

\[
m_P\|v\|_0^2\le\|Tv\|_d^2\le m_Q^{-1}\|v\|_0^2.
\tag{3.2}
\]

Taking infima over exactly transported Z_e gives the identical two
bounds for squared distances from these subspaces. If B_0 is the sum of
auxiliary bad orthoprojectors on the Bose subspace, and the physical
positive weights are between a_min and a_max, then the Rayleigh
quotients satisfy

\[
a_{\min}m_Pm_Q\,\mathcal R_{B_0}(v)
\le\mathcal R_{A_d}(Tv)
\le\frac{a_{\max}}{m_Pm_Q}\,\mathcal R_{B_0}(v).
\tag{3.3}
\]

The min-max principle gives these comparisons for **all ordered
eigenvalues**, including zeros. T maps the common kernels bijectively,
so no ambiguity arises when passing to positive-only ordered indices.

The Einstein formulas give `a_max=O((P+Q+1)^2)` and a positive d-dependent
lower bound on a_min. The latter follows from strict positivity of the
finitely many low values and the asymptotics of the two edge sequences,
`a_{n+2,n}~n/8`, `a_{n,n}~15n/4`; the remaining opposite-side channels
have a uniformly positive Casimir difference. No assertion about where
the smallest edge value occurs is needed.

Only the upper comparison is used for the exponential-volume theorem.
A polynomial lower bound, rather than a uniform positive lower bound,
would already suffice for the logarithmic-rate comparison. Without a
lower bound, arbitrarily tiny positive deformed coefficients can change
ordered rates despite preserving the exact kernel.

The subsequently added explicit all-channel bounds also pass an
independent elementary check:

\[
(2d+3)^{-3}\le a_{\min},\qquad a_{\max}\le20(d+Q)^2.
\]

For the spin-two edge the numerator is at least `(n+1)^4` and each
denominator factor is at most `(2d+3)(n+1)`. For the spin-zero edge
n>=1, the displayed positive numerator polynomial minus `30n^4`
still has nonnegative coefficients in `d-1,n-1`, while each denominator
factor is at most `(2d+3)n`. The largest such denominator difference
is exactly `(n-1)(2d+1)`. For the upper bound the spin-two coefficient
is at most 8h, the diagonal coefficient is at most 8h+4, and the
remaining Casimir difference is at most `8(d+Q)^2`. The final bound
uses `8H^2+8H+4<=20H^2` for H=d+Q>1, whose difference is
`4(3H+1)(H-1)>0`. The n=0 removable-pole-safe value is separately
bounded between `(2d+5)/2` and `2d+5`. Thus the explicit bounds cover
every physical d>1 and every Q>=0 without a hidden exceptional edge.

### 4. The coherent tail is an exact probability estimate

At d0, the primary Bargmann representation is the coordinate-sign-even
part of `H_{2P}(R^N)`, and

\[
C_e(1/2)=J_e^2/4-1/4,\qquad |J_e|=2k.
\]

On the full harmonic product, the projector

\[
R_e=\mathbf1_{\{|J_e^L|-|J_e^R|\le4\}}
\tag{4.1}
\]

therefore restricts exactly to the bad support in (2.3). Its sum
commutes with coordinate signs and simultaneous permutations.

For an oriented plane with orthonormal u,v, take
`xi=(u+iv)/sqrt(2)`. The null tensor `xi^{tensor 2P}` is harmonic. A
one-slot Hermitian rotation generator has outcomes -1,0,1 and mean the
Pluecker coordinate B_e, up to an immaterial common sign convention.
The total measurement in this tensor is exactly a sum of 2P independent
bounded measurements. Thus

\[
\Pr\{|J_e-2PB_e|\ge t\}\le2e^{-t^2/(4P)}.
\tag{4.2}
\]

On the region `|B_e|-r|B'_e|>delta` for every e, with Q/P sufficiently
close to the fixed r<1, the two deviations `P delta/2` leave an absolute
gap exceeding `P delta/2`. For `P delta>8` the event (4.1) is excluded
unless a deviation occurs. Consequently

\[
\langle\Psi,R_e\Psi\rangle\le4e^{-P\delta^2/16}.
\tag{4.3}
\]

The numerical factors 4 in (4.1), 16 in (4.3), and 32 in the final
polynomially weakened exponent are consistent. The estimate treats the
exact low-spin support; an omitted order-P remainder is not being
assumed harmless on the zero-symbol chamber.

### 5. Trace localization produces an entire large subspace

Let D be the full harmonic product dimension, Pi the physical projection,
and Omega the fixed strict chamber region. Coherent resolution gives

\[
C_\Omega=D\int_\Omega\Pi|\Psi\rangle\langle\Psi|\Pi\,d\mu,
\qquad 0\le C_\Omega\le I_{\rm phys}.
\]

The finite group has four central elements acting as the identity at
these even degrees. Every other coherent matrix coefficient decays
almost everywhere in at least one factor. Dominated convergence remains
valid with an arbitrary bounded indicator inserted, and gives

\[
\frac{\operatorname{Tr}C_\Omega}{d_{P,Q}}\to\mu(\Omega).
\tag{5.1}
\]

Let E_tau be the eigenvalue-at-least-tau spectral subspace of C_Omega.
For 0<tau<1,

\[
\dim E_\tau\ge
\frac{\operatorname{Tr}C_\Omega-\tau d_{P,Q}}{1-\tau}.
\tag{5.2}
\]

Because the full positive sum B_full of (4.1) commutes with Pi,
`B_full Pi<=B_full`. Hence (4.3) gives

\[
\operatorname{Tr}(B_0C_\Omega)
 \le4\binom N2D e^{-P\delta^2/16}.
\tag{5.3}
\]

Since `C_Omega>=tau E_tau`, positivity implies
`Tr(B_0C_Omega)>=tau Tr(B_0E_tau)`.
For every unit vector v in E_tau,

\[
\langle v,B_0v\rangle
\le\operatorname{Tr}(B_0E_\tau)
\le\tau^{-1}\operatorname{Tr}(B_0C_\Omega).
\tag{5.4}
\]

This is a direct independent derivation of the full-subspace estimate.
It avoids assuming that localized coherent states are orthogonal or
linearly independent. D and the metric and weight losses are polynomial
at fixed N,d,r, so (3.3) and (5.3)-(5.4) give exponential eigenvalue upper
bounds on the transported subspace T E_tau. Letting tau go to zero
after the fixed-parameter large-degree limit loses no limiting volume.

Subtracting the exact finite logarithmic kernel dimension gives the
claimed positive count. Weak convergence of the scaled full spectrum
then supplies the matching upper count at every subexponential,
subquadratic threshold. No assertion of convergence of individual zero
atom masses is used: the exact kernel count is removed explicitly from
the full finite measure.

### 6. Ordered exponential rates are mass independent in a precise sense

Apply (3.3) at d_1 and d_2 through the same B_0. All comparison factors
are polynomial in P,Q for the Einstein coefficients, so at fixed Q/P->r

\[
\sup_j\left|P^{-1}\log\lambda_j^+(A_{d_1})
              -P^{-1}\log\lambda_j^+(A_{d_2})\right|
 =O(\log P/P).
\tag{6.1}
\]

This is stronger than equality of leading quadratic symbols, but does
not establish existence of a limiting rate distribution. Uniformly
coupling the ordered lists proves convergence to zero of their
bounded-Lipschitz distance. Possible mass-independent superexponential
subfamilies are not excluded. The same conclusion holds between any two
strict same-support kernels whose positive accessible weights have
two-sided polynomial bounds.

### 7. Independent audit of the three-body moving-ratio extension

The following checks concern the additional root derivation for ratios
`r=Q/P` approaching one. They are supplied separately because fixed-r
dominated convergence alone would not justify that joint limit.

#### 7.1 A uniform finite-degree Bose trace bound

At N=3, the group has order `8*8*6=384`. A signed permutation in O(3)
acts on even-degree harmonics as its determinant times itself in SO(3).
Every nonidentity rotation so obtained has angle at least pi/2. If the
rotation has angle theta and the coherent spin direction has axial
coordinate t, then

\[
|\langle\xi^{\otimes2P},U_g\xi^{\otimes2P}\rangle|
 =[1-\sin^2(\theta/2)(1-t^2)]^{2P}.
\]

Using `1-t^2>=1-t` on [0,1] and `sin^2(theta/2)>=1/2`, its Haar integral
is bounded by

\[
\int_0^1e^{-P(1-t)}dt\le1/P.
\tag{7.1}
\]

For a noncentral element of the product group at least one factor is
nontrivial, hence its absolute product coefficient integrates to at
most `1/min(P,Q)`. There are exactly four central identity-acting
elements, and 380 others.

The exact physical multiplicity is

\[
d_{P,Q}=\frac{(P+1)(Q+1)+3e_Pe_Q+2c_Pc_Q}{6},
\tag{7.2}
\]

where e_P is one for even P and zero otherwise, and c_P repeats
`1,-1,0` modulo three. For P,Q>=1 this is at least PQ/6. Thus, with
`D=(4P+1)(4Q+1)`, one has `D/d<=150`.

For **any measurable** Omega, including degree-dependent ones, write
the trace error using the integral of
`(1_Omega-mu(Omega))` times each noncentral coefficient. Its multiplier
has absolute value at most one. Consequently

\[
\left|\frac{\operatorname{Tr}C_\Omega}{d_{P,Q}}-\mu(\Omega)\right|
\le\frac{380}{384}\frac{150}{\min(P,Q)}
<\frac{160}{\min(P,Q)}.
\tag{7.3}
\]

Using two separate triangle bounds would waste a factor two; the
centered-indicator form is the reason the stated constant 160 is valid.

#### 7.2 The exact kernel upper bound needed at a moving ratio

For `r>=1/2`, the old logarithmic series gives exactly

\[
\kappa_{P,Q}=\#\{a,b\ge0:2a+3b\le P-Q-12\}.
\tag{7.4}
\]

If the right side cutoff D_0=P-Q-12 is negative, this is zero. Otherwise
assign each lattice point its disjoint rectangle of side lengths 2 and
3 in the first quadrant. Their union lies in the triangle
`x+y<=D_0+5`, so its count is at most `(D_0+5)^2/12`, and certainly at
most `(P-Q)^2/12`. Combining with (7.2),

\[
\kappa_{P,Q}/d_{P,Q}\le (P-Q)^2/(2PQ)=k_3(r).
\tag{7.5}
\]

No asymptotic kernel error has been silently compared with a shrinking
soft weight.

#### 7.3 Constants and the joint limit

Let `mu(r)=omega_3(r)-k_3(r)>0`, set `delta=mu/12`, and `tau=mu/8`.
The N=3 strip bound gives `omega_delta>=omega-mu/4`. If
`mu>=1280/min(P,Q)`, equation (7.3) loses at most mu/8. Equation (5.2)
then gives

\[
\dim E_\tau\ge(\omega-\mu/2)d_{P,Q}.
\]

Subtract (7.5). At least `mu d/2` **strictly positive** eigenvalues obey

\[
\lambda\le
\frac{96D a_{\max}}{\mu m_Pm_Q}
\exp[-P\mu^2/2304].
\tag{7.6}
\]

The factor 96 is `4 binom(3,2)/tau` after substituting tau=mu/8;
2304 is `16*12^2`. If `P mu^2/log P->infinity`, the prefactor can be
absorbed to give `exp[-P mu^2/4608]` for these same levels.

The earlier N=3 endpoint theorem gives

\[
\mu(1-\varepsilon)\sim
\frac3{2\pi^2}\varepsilon^2\log^2(1/\varepsilon).
\tag{7.7}
\]

Therefore for `1-Q/P~P^{-beta}`, every fixed `0<beta<=1/4` satisfies the
two finite-degree conditions. The certified count is asymptotically at
least

\[
\left(\frac{\beta^2}{8\pi^2}+o(1)\right)
 P^{2-2\beta}\log^2P.
\tag{7.8}
\]

At beta=1/4 the energy upper scale is `exp[-c log^4 P]`, still smaller
than every algebraic power. For beta<1/4 it is a stretched exponential
with the additional logarithmic factor. The count in (7.8) has zero
fraction of the full P-squared block because the ratio approaches the
balanced boundary. It must not be called a fixed positive-density
extension at r=1.

This joint limit is supported by the uniform finite-degree trace and
kernel bounds, not by exchanging the limits in the old fixed-r theorem.

### 8. Final audit boundaries

The proofs retain the prescribed Einstein pair coefficients as physical
input. Their abstract same-support extensions do not demonstrate that
every deformed pair kernel comes from the same gravitational action.
The new spectral upper scales, mass-rate comparison, and controlled
moving-ratio window are rigorous within those inputs. Complete soft
rate distributions, lower tunnelling bounds, and finite-level positive
eigenvectors remain open.
