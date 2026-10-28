# Independent adversarial audit: fixed-right atomic limits, four-body cluster/Fredholm structure, and higher-particle inheritance

Date: 2026-10-19. Scope: Analytic report Appendix A §5, D in full, M §§1–5, and Deep report Appendix C in full. Original reports and code were not edited. All programs in this review are newly written and import no delivered research-package module.

## Verdict and evidence boundary

I found no counterexample to the assigned spectral theorems, conditional on the previously established Einstein pair operator, positive pair residuals, physical inner product, and oriented full-kernel formula. In particular, the complete four-body statement is not merely an extrapolation from plotted eigenvalues: it has the necessary changing-space norm approximation and an exact nullity identity. The latter is essential, not cosmetic.

Three compressed interfaces warrant a fuller written argument:

1. The Fredholm proof given first for real s>0 must be upgraded to locally uniform holomorphic convergence off the atomic poles before zeros and their multiplicities can be read from it. This is repairable with the same estimates; a complete argument is supplied below.
2. Exact auxiliary nullity is what excludes spurious positive levels converging to zero. Positivity and norm convergence alone cannot do so. I independently reconstructed the needed rational identities.
3. The all-N inheritance result is only a lower spectral inclusion, uniform for a fixed finite source family. Its iteration proves divergence of multiplicity without a growth rate. Nothing in this proof supplies a general N≥5 upper cluster bound or an HVZ classification.

No claim is made here about a new independent derivation from the Einstein action, renormalization choices, or the uniform validity of the O(G) approximation at high excitation. These results concern the O(G) coefficient with N, Q and Δ fixed as stated. They also do not imply integrability.

## Source positions

Line references are to the supplied consolidated Markdown reports, not to their embedded local equation numbers.

- Analytic 1494–1689: fixed-Q atomic measure, Gram bounds, multiplicity and descendants.
- Analytic 2857–2988: four-body physical/auxiliary operator and normalized recoupling.
- Analytic 2989–3107: changing-space decomposition and polar embedding.
- Analytic 3108–3195: complete cluster limit and auxiliary-nullity identities.
- Analytic 3226–3274: Fredholm determinant and complex extension.
- Analytic 3275–3360: integer-Δ Gamma reduction and explicit chiral example.
- Analytic 3361–3385: minimum positive residual at Δ=2,Q=0.
- Analytic 5835–6063: prior internal audit of atomic law; checked rather than treated as authority.
- Deep 1233–1356: oriented residual and fixed-endpoint Racah lemma.
- Deep 1357–1502: simultaneous singleton isometries and multiplicity.
- Deep 1503–1586: proliferating cluster levels and compactness obstruction.

## 1. What follows from finite bad pair channels, and what does not

For fixed Q the distinguished bad-channel set B_Q is finite, with pair coefficients a_α>0. The physical residual is the Bose restriction of a sum of positive low-channel pair projectors. Its auxiliary Gram operator is

B = D^(1/2)(I+K)D^(1/2),

with D diagonal on the distinguished pair labels and K a sum of overlapping/disjoint exchange compressions. Positive spectra of B and the physical residual agree, but their zero multiplicities do not.

This decomposition already depends on more than the word “quartic.” A generic number-conserving quartic interaction gives a two-body sum, but need not have a finite low-channel residual after subtracting a global Casimir baseline, positive coefficients, Racah endpoint decay, or this full kernel. The atomic theorem uses all those ingredients, not quarticity alone. The Gram double-coset bookkeeping itself is much more general.

## 2. Atomic law: an independent proof audit

Let F be an isometric distinguished-pair/spectator embedding, P_F=FF*, and Q_12 the bad-channel projector on the complete labelled primary space. Then P_F≤Q_12. For an involutive permutation U,

||F*UF||_HS² = tr(P_F U P_F U*) ≤ tr(Q_12 U Q_12 U*).

The last inequality holds without commutativity: for positive X≤X' and Y≤Y', tr(XY)≤tr(X'Y)≤tr(X'Y'). Restriction to a primary sector is legitimate because the pair Casimir projectors commute with the total global algebra.

For disjoint pairs, two fixed pair modules and N−4 labelled leaves leave N−2 effective factors. Their primary multiplicity has left degree binomial(P−k−r+N−4,N−4), hence O(P^(N−4)). For overlapping pairs, first couple the union of three leaves to degree t. Fixed low-channel Racah coefficients are O(t^(−Δ)); their squared overlap is O(t^(−2Δ)). The remaining multiplicity is bounded by C P^(N−4), and the t-series converges. This yields ||K||_HS² and ||B−D||_HS² = O(P^(N−4)).

The spectator multiplicity is the FULL (N−2)-particle level H_(N−2)(P−k,Q−l), not its primary multiplicity: the outer pair/spectator relative excitations telescope the spectator primary sum to the full level. Its leading term follows from the identity permutation in the Molien cycle-type formula. Every other x-root pole has lower order for N−2≥2. Therefore the auxiliary dimension is c P^(N−3)+O(P^(N−4)), with the reported c and channel weights.

An auxiliary zero of B corresponds bijectively, via invertible D^(1/2), to an eigenvector of K with eigenvalue −1; therefore z_aux≤||K||_HS². Removing these zeros loses only O(1/P) of the normalized mass. Hoffman–Wielandt bounds the mean squared matching displacement by O(1/P). Replacing finite channel multiplicities by their limits has total variation O(1/P), and all eigenvalues stay in a fixed compact interval. Thus W₂=O(P^(−1/2)). Coincident atom values pose no difficulty: combine their measure weights, rather than assume distinctness.

The outlier estimate is immediate from the same matching cost: every eigenvalue farther than ε from every atom contributes at least ε². It gives O(P^(N−4)/ε²), not an absolute bounded number for N≥5. An atomic empirical limit cannot be used to conclude that every eigenvalue converges to an atom.

Descendants require a second normalization. Summing primary degrees p≤P and q≤Q gives the stated full-level baseline mixture over b_N(q). A single atom b_N(Q) would be false for the full free level. Finitely many orientation-reversed p<q sectors do not affect the asymptotic.

## 3. Four-body changing spaces: why the argument actually works

Write E_T for the finite triple-degree cutoff. In the enlarged distinguished-pair space, H_P=(I+J_P)/2 is the spectator Bose projection. J_P is an involution and cannot approach zero in operator norm. Only its fixed finite matrix elements approach zero. Consequently

V_P=√2 H_P E_T,

has V_P*V_P→I at fixed T. Adding the finite pair-pair inclusion W_P gives Y_P=(V_P,W_P), whose cross Gram entries vanish by the endpoint Racah estimate. Thus U_P=Y_P(Y_P*Y_P)^(−1/2) is an actual isometry for large P.

D commutes with these embeddings in the precise intertwining sense: every matrix entry that can overlap preserves the distinguished pair label. Hence the Gram Y_P*Y_P commutes with source D and so does its inverse square root. This is the fact needed to place the untouched diagonal atomic operator on the orthogonal complement without artificial off-diagonal terms.

The triple exchange correction has uniformly bounded block size at fixed Q, and each block is O(t^(−Δ)). The operator-norm tail is bounded by its largest remaining block, while its trace-norm tail is bounded by the sum of block trace norms. Therefore:

- compact/norm approximation requires Δ>0 at this mathematical step;
- the determinant trace-class estimate needs Δ>1;
- the physical theorem retains its original Δ>1 regime throughout.

After replacing Y_P by U_P, the finite triple correction acquires precisely the factor 2 needed for the three-body auxiliary block D^(1/2)(I+2R)D^(1/2). The pair-pair term is finite rank. This proves the claimed approximation in operator norm and, for determinant comparisons, in trace norm after truncation. Weak convergence by itself would not suffice; the supplied argument does not make that mistake.

## 4. Auxiliary nullity and exclusion of zero pollution

I rebuilt the primary Molien series from conjugacy partitions:

M_n(x,y)=(1−x)(1−y) Σ_(λ⊢n) [z_λ ∏_(j in λ)(1−x^j)(1−y^j)]^(−1).

Using the stated oriented K_3,K_4 and B(x,y), an independent SymPy calculation yields exactly the claimed z_3(y), and

Z_4=C(y)/(1−x)+E(y)/(1+x)+R(x,y).

The reduced numerator of R has x-degree 15. Its only x-dependent denominator factors are (1−xy),(1−x²y),(1−x³y). Therefore [y^Q]R is a polynomial of x-degree at most 15+3Q, proving the stated cutoff for every Q, not just checked coefficients. The fresh script also verifies the first nine transient degrees, and computes nullities 7/9 for Q=0 and 64/68 for Q=2 (even/odd total parity), agreeing with the report.

The exact count is logically necessary. For example, diag(1/P,1,1,...) is positive and norm-approaches a comparator with one zero eigenvalue, but has a positive eigenvalue tending to zero. Thus a proof based only on positivity plus norm approximation would fail.

Here the direct-sum limit has only finitely many zero blocks at fixed Q, and all other eigenvalues are bounded away from zero: large triple blocks approach the strictly positive atom matrix D, and only finitely many exceptional blocks remain. Choose a small contour around zero excluding their positive eigenvalues. Norm approximation makes the finite-P number of eigenvalues inside the contour equal the finite limit zero multiplicity. The rational identity shows that exactly this many eigenvalues are already EXACT auxiliary zeros for all P>15+3Q. There is no room for additional positive levels converging to zero.

This reasoning is conditional on the oriented physical kernel formula used in Z_3,Z_4. It is not a new proof of that earlier kernel theorem. Replacing the right-oriented baseline by the chirality-optimized baseline for t<u would invalidate this calculation.

## 5. Repair of the complex Fredholm/zero-count interface

The report proves the determinant limit for s>0, then states a complex extension in one sentence. The extension is valid, but requires more than pointwise convergence on a real line. Here is a branch-free proof.

Let Ω = C minus the finite set {−a_α}, and let E_P=B_P−D_P. Define

F_P(s)=det[I+(s+D_P)^(−1) E_P].

This equals the stated determinant ratio. It is holomorphic on Ω; no square-root choice is required. Fix any compact K⊂Ω and write η=dist(K,{−a_α})>0. Then ||(s+D_P)^(−1)||≤η^(−1) uniformly in P and s∈K.

For the triple tail after cutoff T,

||(s+D_P)^(−1) E_(P,tail)||_1 ≤ C_K Σ_(t>T,u≤Q)||R_(t,u)||_1 = O_K(T^(1−Δ)).

The finite pair-pair term has no tail. For fixed T, the polar embeddings above commute/intertwine with D. The finite normalized perturbations therefore converge in trace norm uniformly for s∈K to the direct sum of the normalized finite triple and pair-pair corrections. Their trace norms have a common bound. Apply the elementary Fredholm determinant continuity inequality

|det(I+A)−det(I+B)| ≤ ||A−B||_1 exp(1+||A||_1+||B||_1).

First P→∞ at fixed T, then T→∞. This gives locally uniform holomorphic convergence F_P→F on Ω and the product formula. It simultaneously proves that the infinite product converges normally on every compact subset of Ω. The limit is not identically zero, since it is nonzero on s>0.

For an isolated zero s_0∈Ω, choose a small circle containing no other limit zero and avoiding atomic poles. Uniform convergence on that circle and Rouché's theorem show that the sum of finite-P zero multiplicities inside equals the limit multiplicity for all sufficiently large P. Finite-P zeros are precisely eigenvalues of B_P reflected through s=−λ, except at the explicitly excluded atomic denominator points. This rigorously recovers isolated cluster eigenvalues WITH total multiplicity, including coincident contributions from several cluster blocks.

At s=0, D is invertible and the same argument is available. The exact auxiliary-nullity formula identifies the zero order and permits dividing by s^z; the normalized analytic nonvanishing factor then converges on a small neighborhood of zero. This justifies the positive pseudodeterminant passage and the absence of hidden small-positive levels.

Limitations: this Fredholm ratio does NOT encode infinite bulk atom multiplicities as isolated zeros at s=−a_α. Those points are excluded from Ω, and cancellations there must not be interpreted by the isolated-zero theorem. Nor does real-s numerical agreement alone certify complex zeros; it is the uniform trace-class proof above that does so.

## 6. Gamma reduction: balance, collisions, and independent verification

At integer Δ≥2 and fixed u, each parity tail factor is rational in t, approaches one, and differs from one by O(t^(−Δ)). After cancellation, numerator and denominator have equal degree and equal leading coefficient. The absence of a 1/t term forces equality of root sums. For m of the chosen parity, the finite product through n=L is obtained directly from Γ(z+L+1)/Γ(z); the powers of 2 cancel by equal degrees, and the large-L Gamma power cancels by equal root sums. This gives the reported finite Gamma expression.

Roots are MULTISETS, not individually preferred analytic branches. At a collision, the product is symmetric in roots and extends by the original rational-factor/Fredholm formula. One must not independently choose discontinuous square-root branches and regard a numerical phase jump as physical. Possible apparent Γ pole ratios are resolved by limits. At exceptional s where a polynomial degree drops, continue from generic s on Ω. The rational/Fredholm representation supplies the unambiguous analytic function.

I independently derived, at Δ=2,u=0,

w_0=6/[(t+2)(t+3)],
w_2=84(t−1)(t+6)/[(t+1)(t+2)(t+3)(t+4)],
H=1−50/[t(t+5)]+300/[t(t−1)(t+5)(t+6)].

Then R has diagonal entries εw_0, εw_2 H and off-diagonal square w_0 w_2. Inserting this in the 2×2 three-body determinant reproduces the full reported two-variable rational formula (25), symbolically for both parities, not only at chosen t,s values.

I did not independently execute the nonchiral degree-ten Gamma polynomial or all integer-Δ/Q cases. Their general algebraic construction is covered by the argument, but their stored numerical coefficients are not newly certified here.

## 7. Independent all-t certificate for the Δ=2,Q=0 minimum

For t=2,…,128 I rebuilt traces and determinants from the preceding rational formulas, with no import of original code. Every nonzero eigenvalue except the smaller t=9 eigenvalue is greater than 7/200. For a positive 2×2 block this is checked exactly by tr>2c and det−c tr+c²>0, c=7/200; one-dimensional positive remainders after auxiliary zeros are handled separately. The t=9 polynomial is exactly

825825 λ²−3654200 λ+124032.

For every t≥129, the following NEW, deliberately looser rational bound suffices. Set T=129,

U_0=6/[(T+2)(T+3)],
U_2=84[1+5/(T+1)]/[(T+2)(T+3)],
U_H=1+50/[T(T+5)]+300/[T(T−1)(T+5)(T+6)].

Then w_0≤U_0, w_2≤U_2 and |H|≤U_H. Gershgorin and √(w_0w_2)≤(U_0+U_2)/2 give

||R_t||≤max(U_0,U_2 U_H)+(U_0+U_2)/2
         =18595/2397824 < 1/100.

Thus λ_min(A_t)≥8/35−2(24/5)/100=116/875>7/200. This proves the infinite tail without trusting the supplied tail certificate. The t=0 positive value is 3a_00, t=1 is auxiliary zero, and the atoms and pair-pair positive sums also exceed 7/200. Together with complete cluster convergence and zero exclusion, the limit minimum is the smaller root

(33220−4√66856729)/15015 = 0.034206748172…

for both target parity subsequences. This is a residual coefficient, not an absolute physical energy; b_4(0)=−96 must still be added.

## 8. Deep singleton theorem and N≥5 obstruction

The endpoint lemma is correct. At fixed u,v the terminating hypergeometric factor is 1+O(M^−2), and the two Gamma-ratio normalization weights give M^(−2h_middle). This is why a cross pair with a single middle leaf gives P^(−Δ), while exchanging a singleton across an (N−2)-leaf remainder gives P^(−(N−2)Δ). Confusing these two exponents would invalidate the Bose normalization estimate.

I constructed six pairs of coupled three-factor vectors directly as Bargmann polynomials, applied the raising operators with their actual weights, and used the diagonal physical monomial norms. Their squared normalized overlaps agree exactly with the claimed Racah formula, including unequal weights and Δ=3/2,7/3. Three large-degree numerical endpoint checks at 1000,10000,100000 approach the derived constants. These are independent finite tests supporting the all-index derivation, not replacements for it.

The finite source-family map T_P is isometric before Bose projection because source Casimir sectors and internal orthonormal states are orthogonal. On each source state, internal pair terms act exactly by the source eigenvalue even after outer CG coupling, since they commute with source global raising operators. Only finitely many new cross-pair channels remain, each with P^(−Δ) norm. Bose cosets give V_P*V_P=I+O(P^(−(N−2)Δ)). Polar normalization is legitimate; its commutator with the diagonal source eigenvalue matrix costs only this latter order. This proves the simultaneous isometry error O(P^(−Δ)).

For repeated equal λ, spectral projection onto an interval around λ is injective on the approximate eigenspace once the error is below the distance to the interval boundary. For different λ inside one interval, use its center c: ||(A−c)U|| is bounded by the largest |λ_i−c| plus the residual. This explicitly proves the generalized finite-family multiplicity claim, rather than falsely assuming each quasimode produces a distinct eigenvalue.

Two insertions: for ANY fixed K first choose K finite, distinct intermediate source degrees whose eigenvalues lie within ε/3 of λ. Only then take the final P sufficiently large for this finite family. This establishes eventual count≥K for every K. It supplies no lower growth rate in P, because the thresholds can depend arbitrarily on those chosen source degrees.

For N≥5,Q=0, λ_*=3a_00>a_00>a_20 is inherited with unbounded multiplicity. If A=D+K+E with spectrum(D)⊂{a_00,a_20}, uniformly compact self-adjoint K and ||E||→0, the subspace near λ_* has growing dimension and uniformly positive quadratic form for K. Min–max forces an unbounded number of singular values of K above a fixed δ, a contradiction. This is a sound obstruction to an atomic comparator plus uniformly compact correction.

It does not rule out a recursive cluster comparator, higher regularized determinant, or integrability. It also does not contradict the atomic empirical law: an unbounded subleading family can have vanishing normalized weight. The report's limitations are appropriately stated here.

## 9. Reproduction and what was not done

Run the three new scripts in this directory with Python, SymPy, mpmath:

- independent_checks.py: Molien/nullity rational identities, transient degree bounds, pair-pair spectra and tail telescoping identity.
- cg_endpoint_checks.py: six direct polynomial CG comparisons and three asymptotic constant checks.
- fredholm_formula_check.py: full chiral rational determinant identity, 127 finite t comparisons, and independent all-t tail bound.

Each writes its own JSON result. These do not modify or import the original research packages. I did not independently recompute large four-body matrix spectra, all nonchiral Gamma numerators, arbitrary-N exact quasimodes, or original Einstein vertices. The conclusions here come from the displayed analytic derivations plus the specified independent checks, not from rebranding the source's stored verification outputs as new tests.
