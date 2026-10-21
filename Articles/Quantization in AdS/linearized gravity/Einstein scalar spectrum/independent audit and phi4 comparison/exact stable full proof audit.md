# Fresh proof audit: exact structure, stable particle number, and universality

## Verdict

**The principal EX/ST/UN theorems withstand this fresh review, conditional on the declared selfadjoint covariant pair kernels (Einstein where specified) and physical scalar representation.** The stable construction really handles the singular physical Gram form; the all-degree low-algebra and effective-operator assertions are not inferred from a finite fit. EX-01's full logarithmic-symbol proof, including collision intersections, is valid.

There are two local repairs and two scope clarifications worth making:

1. **ST-06's literal uniqueness wording is false without weighted homogeneity.** At \(b=1\), every \(y+f(x)\) is monic in \(y\) and solves \(J\partial_y^2F=0\). Require weight \(3b\), or define \(F_b\) by the displayed finite expansion. The intended basis and eigenvalues are unaffected.
2. **ST-11's displayed full-energy-looking limit must explicitly mean the first large-\(N\) layer.** It is not the fixed-finite-\(N\) large-mass limit. An exact countercheck below distinguishes these limits.
3. **UN-02's compact operator lives on the internal relative-channel multiplicity space**, not on the full pair representation with infinitely many global descendants per channel.
4. The arbitrary-real-coefficient character in ST-10 is unconditional, but an **effective low pencil** additionally presupposes a specified isolated semisimple cluster and its graph gauge. That qualification should accompany the register's compressed all-order wording.

No manuscript or existing research file was changed. All 27 assigned claim IDs, including EX-01 at the parent's further request, are covered below. No core claim is omitted. Fresh exact checks total **211 labelled assertions**, with their mathematical scope distinguished from the analytic proofs.

A separately requested, independently computed \(\phi^4\) comparison is also included: its stable \((2,2)\) block has a genuine leading Jordan resonance at
\[
\Delta_c=\frac{\sqrt{13}-1}{2}>1,
\]
with a nonzero \(\sqrt N\) splitting. Thus such a resonance is not an Einstein-only phenomenon.

## Sources, conventions, and independence

The authoritative object is the 190-page [desktop manuscript][pdf], metadata dated 20 October 2026. Its SHA-256 is `97d9ea4ee42dc0443104c71bfdd12aaea28b39528d9b56d899de9e283464b9bc`. Its bytes differ from the [packaged PDF][packpdf], but the **entire extracted layout text is identical**. I visually checked PDF/printed pages 72, 74, 78, 175, and 179 against the source formulas; the page numbers coincide. The [manifest][manifest] records both PDF hashes and source hashes.

The definitions of all EX/ST/UN claims were read from the [claim register][register]; a scoped [definition extract][definitions] retains their statements, assumptions, limitations, and dependencies. Main proof sources were the [exact chapter][exact], [exact appendices][exactapp], the gap/dictionary portions of the [finite appendices][finiteapp], [Chapter 9][ch9], [Appendix ST][appst], [Chapter 10][ch10], and [Appendix UN][appun]. Applicable vault rules and the mathematical-computation and paper-reading skills were read. The CPS convention anchor was consulted, but no gravity derivation is being audited here.

Conventions throughout:

- \(d=\Delta>1\), scalar one-particle polynomial norm \(h_{pq}=p!q!/[(d)_p(d)_q]\).
- \(C_k=(d+k)(d+k-1)\). Physical pair channels obey \(k+\ell\) even; this is **diagonal** Bose symmetry, not separate left/right symmetrization.
- \(W_N=\sum_{i<j}w_{ij}\) is the coefficient of the perturbative coupling, not the full interacting energy.
- Stable coordinates are **creation-algebra** variables. Their product is not pointwise multiplication of fixed-\(N\) wavefunctions.
- The averaged occupation Gram is \(\Gamma_s=g_s/(N)_{\downarrow r_s}\), with \(g_s=\prod n_\alpha!h_\alpha^{n_\alpha}\). Physical selfadjointness means \(\Gamma W=W^*\Gamma\), not coordinate Euclidean symmetry.
- The stable limit fixes the excitation block and mass before taking \(N\to\infty\). Other limits are separately specified.

This review did not read old audit verdicts as evidence, import manuscript engines, or rerun retained validators. New implementations construct physical pair projectors by rank-one descendants or by differential-Casimir interpolation, then literally count occupied pairs. The \(\phi^4\) calculation used only the pair sequence supplied by the parent, **before seeing any parent candidate matrix or exceptional mass**. Further delegation was unavailable at the assigned depth; this report is itself the fresh independent review for the parent.

## 1. The stable construction: why the singular metric is not a loophole

### 1.1 The affine pencil and stable primary algebra

The occupation formula in ST-01 is correct with the factor \(N-\mathcal R\) acting on the source on the right. Its three contributions count zero–zero, zero–excited, and excited–excited unordered pairs. Conservation of nonnegative bidegrees prevents either a zero–zero pair producing an excitation or a nonzero pair becoming two zeros. Therefore the only quadratic dependence on \(N\) is the scalar ground-pair contribution, and expansion gives
\[
W_N=\gamma_{00}\binom N2+N\mathscr A+\mathscr B.
\]
The first operator is a derivation and the second has differential order at most two. This conclusion does not require pair positivity.

The centered generating function removes both translation directions. Its triangular inverse shows that, once \(N\ge\max(1,P+Q)\), the simultaneous lowering kernel is the indicated free polynomial algebra on the \(c_{pq}\). Independence is important: at smaller \(N\), a stable coordinate calculation must not be treated as a physical matrix through an occupation-rank change.

The exact physical normalization follows directly from the canonical Fock factorials, including the numerator \(\prod h_\alpha^{n_\alpha/2}\) and denominator \(\sqrt{N!}\). These factors cannot be dropped while keeping the quoted Gram formula.

### 1.2 Analyticity in \(t=N^{-1/2}\)

[ST-A.2–3][appst] establishes the missing hypotheses for Rellich, rather than assuming that a singular metric is harmless:

1. The signed diagonal norm factor is
   \[
   U_s(t)=t^{r_s}\sqrt{g_s}\prod_{j=0}^{r_s-1}(1-jt^2)^{-1/2}.
   \]
   Retaining \(t^{r_s}\), rather than \(|t|^{r_s}\), is essential for real analyticity through zero.
2. An \(\mathscr A\) entry changes occupation count by 0 or +1. A \(\mathscr B\) entry changes it by at most one in either direction. Thus \(U(\mathscr A+t^2\mathscr B)U^{-1}\) has no negative powers of \(t\).
3. Selfadjointness for all sufficiently large integer \(N\), after clearing finite denominators, is a rational identity. It therefore extends to the real interval with positive occupation Gram, including negative \(t\) through \(N=t^{-2}\). The analytic matrix is Hermitian at zero by continuity.
4. A centered monomial with \(\ell\) factors has one distinct lowest-count occupation monomial. Hence
   \[
   V(t)=U(t)C\operatorname{diag}(t^{-\ell})
   \]
   is analytic and full rank at zero. Its Gram is **positive definite**, unlike the unrescaled physical coordinate Gram. Analytic Cholesky gives a fixed orthonormal primary frame.
5. Parity intertwines the occupation and primary frames. A simple leading branch is individually even; a degenerate cluster can have its branches exchanged by \(t\mapsto-t\).

This proves convergent local Taylor branches in \(t\), not just a formal expansion. It does **not** establish a common convergence radius over all degrees or masses. The cluster graph equation avoids division inside an unresolved degenerate eigenspace. Repeatedly diagonalizing only the first non-scalar coefficient is the correct procedure at degeneracies.

Fresh tests reconstructed the full \((4,1)\) and \((3,1)\) matrices and verified the \((4,1)\) **symbolic physical-Gram identity**. A separate chiral \(P=6,d=2\) test checks the Gram identity as a rational function of \(N\), while confirming that the coordinate matrix is not Euclidean-Hermitian. These are checks of the construction, not a replacement for the all-block argument.

### 1.3 Actual resonances and protected collisions

ST-03 is genuine, not an inference from a triangular degeneracy. The independent bivariate reconstruction verifies:

- the entire displayed \(\mathscr A\) matrix;
- both \(\mathscr A S=S A_2\) and \(\mathscr B S=S B_2\) for the stated invariant plane;
- the exact left eigenvector \((-2,1,1)\);
- both physical roots of \(2d^3-37d^2-11d+100\) in the printed rational intervals;
- square-zero rank-one nilpotent action at resonance, and a nonvanishing reverse coupling \(k\);
- the plane discriminant and its collision determinant with the third branch.

Consequently the resonant pair splits by \(\pm\sqrt{kvN}\), while the finite physical matrix remains selfadjoint. The local detuning law follows directly from this exact radical and analyticity in \(d\); it is not a claim of degree-uniform asymptotics.

ST-09 is different: its full two-dimensional stable pencil is scalar at \(d_*=(\sqrt{33}-1)/4\). Both off-diagonal entries vanish with the slope difference. The independently constructed \((4,1)\) matrix also has the claimed rank-one shifted matrix at this mass, giving its protected doublet. Neither argument identifies an arbitrary invariant plane with a scalar eigenspace.

### 1.4 All-degree generic linearization

The residue/valuation proof of ST-04 works for every genuine splitting of one generator into at least two generators, not merely for an enumerated degree range. At the algebraic test point \(d=1/2\), only \(\gamma_{00}\) has residue \(3/2\); the apparent exceptional-channel poles cancel. Write \(f_n=\binom{2n}{n}/4^n\), and let \(s_2(n)\) be the number of ones in the binary expansion of \(n\). Completeness and exchange give
\[
\rho_{pq}=\frac32(2f_pf_q-1),\qquad
v_2(\rho_{pq})=-E(p,q),\quad E(p,q)=2(p+q)-s_2(p)-s_2(q).
\]
For \(\alpha=\sum_i\beta_i\), with each \(|\beta_i|\ge2\),
\[
E(\alpha)\ge\sum_iE(\beta_i)>\max_iE(\beta_i).
\]
Thus the one-generator residue has uniquely smallest dyadic valuation in the proposed relation. No homological divisor vanishes identically. Each finite cutoff has finitely many rational-function zeros, and the finite triangular recursion constructs polynomial eigenvariables.

This does not prohibit resonances between two different multi-generator monomials, nor is that needed: once the generators are diagonalized, their products are eigenvectors. It gives no simultaneous diagonalization of \(\mathscr B\), no locally finite infinite exceptional set, and no classification of every exceptional mass. Fresh residue and endpoint-weight checks support, but do not supply, the infinite quantifier.

## 2. Low algebras and effective operators: the all-degree proofs

### 2.1 Defects really imply the generator count

For the affine pair interpolant through 0 and 2, write
\[
r_k=\gamma_k-L(C_k),\qquad
s=\frac{\gamma_2-\gamma_0}{2(2d+1)},\qquad K=\mathscr A-sd\,\mathcal E.
\]
Under UN-03's hypotheses, the first positive defect is \(k_*=2m+2\), while all even defects are nonnegative. The exact endpoint formula gives
\[
\kappa_p=2\sum_{k\le p,\ k\ \mathrm{even}}\alpha_{p,k}r_k.
\]
Every accessible weight \(\alpha_{p,k}\) is positive. Thus \(\kappa_p=0\) for \(p<k_*\) and \(\kappa_p>0\) for **all** \(p\ge k_*\), because the same first positive channel remains accessible. No finite cutoff is used here.

The crucial stronger statement is also justified: \(Kc_p=0\) for \(p<k_*\), not merely its diagonal coefficient. No pair in that degree can see a nonzero defect, so the whole finite pair action agrees with the affine-Casimir operator. The derivation therefore annihilates every polynomial in \(c_2,\ldots,c_{2m+1}\). Triangularity counts exactly the same number of zero diagonal entries. Equality of geometric and algebraic multiplicities proves semisimplicity and the exact kernel.

Consequently
\[
q=\lim_{\tau\to\infty}e^{-\tau K}
\]
exists in every degree. Possible Jordan blocks at positive eigenvalues decay. Each exponential is multiplicative, so the limit is a multiplicative retraction. This is degreewise convergence on a graded polynomial algebra, not a norm limit on an unspecified infinite Hilbert completion.

The finite-\(N\) lower bound is a separate positivity argument. Its attainment follows from the nonzero projected elementary seed, or from the exact nonzero character and finite-dimensional selfadjointness. ST-05 is the Einstein specialization \(k_*=4\), hence the two-generator algebra \(\mathbb C[c_2,c_3]\).

### 2.2 The character and the all-order cusp quotient

The coefficient proof in ST-C.1 is sufficient for arbitrary chiral pair coefficients. A homogeneous primary has coefficients \(f_1=[a_1^P]f\) and \(f_2=[a_2a_1^{P-2}]f\) satisfying \(Pf_1+2f_2=0\). Only the degree-two pair inputs that are explicitly counted can reach the all-\(a_1\) output. This yields
\[
\mathcal L\mathscr A=sdP\mathcal L,
\qquad \mathcal L\mathscr B=sP(P-1)\mathcal L,
\qquad \mathcal L(c_p)=(1-p)\xi^p.
\]
Here \(\xi\) is an independent formal parameter, not the frame parameter \(t=N^{-1/2}\). On \(\mathcal S=\mathbb C[x,y]\), with \(x=c_2\), \(y=c_3\), and weight operator \(E=2x\partial_x+3y\partial_y\), the kernel is \((J)\), \(J=y^2+4x^3\), by division by the monic quadratic in \(y\) and separation of even and odd powers of \(\xi\).

The short all-order argument can usefully be written explicitly. In a constructed isolated low cluster, let \(q\Omega=I\) and
\[
(K+u\mathscr B)\Omega=\Omega H_{\rm eff},\qquad u=N^{-1}.
\]
Since \(\mathcal Lq=\mathcal L\), one has \(\mathcal L\Omega=\mathcal L|_{\mathcal S}\), and hence
\[
\mathcal L H_{\rm eff}=u\,sP(P-1)\mathcal L.
\]
After subtracting the scalar first coefficient, every effective coefficient has image in \((J)\). This proves the persistent quotient in the stated graph gauge. It does not construct an isolated two-generator low cluster for an arbitrary signed pair sequence. For example, if the first positive defect is 6, the natural low cluster has four generators; its quotient still maps to the same cusp, as Chapter 10 correctly explains.

### 2.3 Why finitely many jets prove the entire first operator

The third multiplication commutator of \(q\mathscr B|_{\mathcal S}\) vanishes, because \(\mathscr B\) is order at most two and \(q\) is a low-algebra module map. Subtracting \(sE(E-1)\), the character puts its image in \((J)\). For a differential operator on a characteristic-zero polynomial algebra, induction on monomial inputs shows that ideal-valued image forces every differential coefficient into the same ideal. Weight zero and order at most two leave only \(J\partial_y^2\).

This establishes the **all-degree form before the coefficient is calculated**. Only total pair degrees through six can enter the determining jets. The fresh rank-one physical-projector computation over \(\mathbb Q(d,v,w)\) confirms
\[
\varepsilon(d;v,w)=
\frac{27vw(d+3)(d+4)(2d+9)}{2(2d+5)[15(2d+7)(d+5)v+(2d+3)(d+2)w]},
\]
and the full degree-six retraction and low matrix. The independent Einstein reconstruction over \(\mathbb Q(d)\) gives the printed specialization.

With \(v>0,w>0\), the denominator and numerator are positive. At fixed weight the allowed \(b\)'s have one parity, so \(b(b-1)\) is strictly increasing on the allowed list. This—not a generic assertion about non-Hermitian matrices—makes the first low spectrum simple. The correct Gegenbauer parameter is \(-1/2\); the manuscript correctly refuses to use its non-integrable classical weight as a physical norm.

At \(w=0\), the first coefficient vanishes. UN-04 appropriately does not infer either integer-power simplicity or a half-integer splitting from this degeneracy alone.

### 2.4 The first higher operator is genuinely order three

The oblique reduced inverse is
\[
K=\begin{pmatrix}0&T\\0&D\end{pmatrix},\qquad
q=\begin{pmatrix}I&-TD^{-1}\\0&0\end{pmatrix},\qquad
R=\begin{pmatrix}0&TD^{-2}\\0&D^{-1}\end{pmatrix}.
\]
In particular, dropping the upper-right block of \(R\) would be wrong. The graph-gauge coefficient is \(C_2=-q\mathscr BR\mathscr B\).

The fourth multiplication commutator expands into terms distributed between the two copies of \(\mathscr B\). Three commutators on either factor vanish. In each remaining term there are two on each; those double commutators are multiplication operators. Multiplicativity gives
\[
qM_hRM_{h'}=M_{q(h)}qRM_{h'}=0.
\]
Thus \(C_2\) has order at most three. The exact character gives cusp-valued image, and the coefficient-divisibility argument gives
\[
C_2=J\left(r_0\partial_y^2+r_1\partial_x^3+r_2x\partial_x\partial_y^2+r_3y\partial_y^3\right).
\]
The four allowed terms exhaust the possibilities: their derivative weights are 6, 6, 8, and 9, leaving coefficient weights 0, 0, 2, and 3 after factoring out \(J\).

Fresh physical pair reconstruction verifies the **entire** determining matrices at weights 6, 8, and 9 over \(\mathbb Q(d)\), including the oblique inverse. All four printed rational functions and their \(d=2\) specializations pass, as do the printed \(P=12\) corrections. Independently treating \(r_i\) as formal coefficients confirms the diagonal-extraction formula through weight 24; the general proof is the triangular extraction in ST-C.5, where only the nearest-neighbour \(b\pm2\) terms enter the triangular diagonal extraction.

### 2.5 Integer expansions and their limits

At fixed chiral weight and mass, the isolated semisimple zero cluster of \(K\) admits an analytic Riesz reduction in \(u=1/N\). Its reduced matrix begins with \(uB_{\rm low}\); after division by \(u\), the simple first spectrum permits ordinary analytic-root continuation. Hence the chiral low branches have convergent integer-power expansions. This is compatible with genuine \(N^{-1/2}\) branches in other blocks.

There is no claim, and no proof here, of a radius uniform in growing \(P\), a complete mass-dependent resonance classification, or explicit formulas for all higher effective operators. The all-order cusp-image property is much weaker than those statements.

## 3. Exact structures: full support, ranks, eigenspaces, and gap

### 3.1 EX-01: all collision flags, not only first-order tangency

The complete proof in K.1–K.4 is sound. The key transitions are:

1. A pair Casimir preserves \(F_r=\delta^rR_{P-r}\) and is scalar \(C_r\) on \(F_r/F_{r+1}\). Because it is selfadjoint in the positive physical metric, these invariant finite-dimensional subspaces are reducing. Descending induction identifies \(F_r\) with the sum of relative-channel spaces \(k\ge r\).
2. Strict positivity of each bad-channel coefficient turns the residual kernel into an intersection of pair kernels, with no commutativity assumption. In particular every collision has a fourth-order left zero. Nonassociate prime factors imply \(\mathcal V_N^4\mid\Psi\).
3. For each collision, write \(\mathcal V_N^4=\delta^4B\), with \(\delta\nmid B\). Cancellation is cancellation of **prime valuations**, not division by a function invertible at all intersections.
4. For tensor coefficient matrix \(C\), the correct bilinear tensor–Hom map is \(\mathcal A=C\Gamma\). Physical symmetry \(P^T\Gamma=\Gamma P\) carries right action to \(\mathcal AP\). It follows that the quotient tensor obeys exactly \(\mathcal A(F_r)\subset F_r\) for every \(r\), in both directions of the equivalence.
5. The unique pure normally ordered order-\(Q\) operator representing \(\mathcal A\) has adapted coefficients \(c_{a\beta}\). Applying it to \(\delta^ay^\beta\) isolates that coefficient, giving \(\delta^a\mid c_{a\beta}\). This upgrades the finite homogeneous flag condition to preservation of **all** powers of each collision ideal on the whole ring.
6. The explicit logarithmic frame has determinant a nonzero constant times the Vandermonde. Its inverse introduces no denominators other than collision factors. At one collision prime, its determinant has valuation one; after extracting the normal \(\delta\), it is a basis of the local logarithmic tangent module. Thus the symmetric-power coefficients are regular at that prime. Repeating over all possible denominator primes removes every denominator globally by unique factorization.
7. This is precisely the argument needed at multiple intersections; it does not assert that symmetric powers commute with arbitrary intersections. Uniqueness of the frame expansion and invariance of its symbols force symmetric coefficients, giving \(\mathbb C[e_2,\ldots,e_N]\), the Hilbert series, support threshold, and unique first state.

The physical reconstruction also passes a fresh exact check: at \(Q=2,N=3,4\), the printed kernel reproduces every basis quadratic under the actual Bargmann Gram and obeys the pair-degree-two flag. At \(N=4,d=2\), replacing it with the Euclidean \(I_2\) gives exactly the nonzero residual in (6.15). Thus this is not merely a normalization convention.

### 3.2 EX-02: unaveraged rank and exact three-body threshold

Once EX-01 and the physical dimension count are fixed, positive rank is exactly \(d_N-\kappa_N\). At fixed \(N,Q\), the identity pole at \(x=1\) cancels between the Molien and kernel series. The next coefficient receives the identity correction and transpositions. The derivative of \(h_Q(x,x^2,\ldots,x^{N-1})\) at 1 is \((NQ/2)L_{N,Q}\), and \(J_N=4\binom N2\), giving the displayed coefficient \(\rho_{N,Q}\).

The remaining root-of-unity check is essential and is present: for \(N\ge5\), all other pole orders give at most \(O(P^{N-4})\); for \(N=4\), the possible double pole at \(-1\) cancels because the relevant complete homogeneous polynomials differ only by permutation of arguments. The result is genuinely unaveraged. Neither \(N\) nor \(Q\) may silently grow in this estimate.

For \(N=3\), the exact quasipolynomial formula extends with value zero at the four possible negative arguments in the claimed eventual range. Substitution and residue summation modulo six give the stated constant rank. Fresh rational counting checks cover \(Q=0,\ldots,20\) and include the two printed pre-threshold defects; the analytic residue cancellation proves all \(Q\).

### 3.3 EX-03–05: support is not automatically an eigenspace

The affine-support lemma is valid because the pair action agrees with one affine Casimir polynomial **on every supporting channel**, and the sum-of-Casimirs identity is scalar on a total primary. It does not require overlapping pair terms to commute. Global primary projection preserves pair cutoffs because the global action commutes with a pair Casimir.

The projected seeds' nonzero ranges are justified by physical coefficient pairings; the stable overlap determinant proves independence. At \(N=P\), the first seed is a right descendant and vanishes after primary projection, so endpoint care is not optional.

For the complete minima, the Fischer transform is an isometry with the stated non-Euclidean norm. It converts the channel cutoff into root-derivative annihilation. Both multiplication by \(S\) and its adjoint lowering preserve the inverse system, so the primary slice is the orthogonal complement of \(S\mathscr K_{P-1}\), not an informal coordinate-centering prescription.

The cubic and quartic proofs have matching upper and lower bounds. Their explicit inverse-system polynomials attain the operator-ideal normal-form counts, and the restriction kernels are proved using degree in each variable. The complete subset/marked-subset representations then give the right-standard intersections, including all finite endpoints. Finally, **all-channel positive defects** identify those intersections with complete minimum eigenspaces in the specified mass ranges. For general right degree, the manuscript correctly leaves them as intersection counts unless affine support is separately proved.

Fresh exact Hilbert-series computations for the cubic/quartic ideals at \(N=2,3,4,5\) support the algebraic proof. More decisively for the potential invariant-space error, the independently rebuilt \((4,1),d=2,N=5\) matrix gives
\[
\det[v_1,v_2,Wv_2]=10080000\ne0.
\]
The reported low-channel seed span really is noninvariant away from the protected situation. The fifth-root counterexample at \(N=3\) also passes directly; its degree exceeds the proposed small-family cutoff.

### 3.4 EX-06: a sharp all-degree coefficient gap

The pair-band ordering is proved at arbitrary indices by positive-coefficient polynomials after \(d=1+x\) and the appropriate shift of \(n\). These two polynomial identities were freshly recomputed, not sampled at finitely many radial levels. The stronger comparison has equality only at 00, 20, and 02.

The three-site Gram argument handles its exceptional degrees: rank one at \(T=0\), the missing symmetric column at \(T=1\), and three independent columns from \(T=2\) onward. Monotonicity of the endpoint overlap gives the true labelled three-site minimum. Triangle summation then yields
\[
K_N^2\ge\frac{Nd+1}{2d+1}K_N,
\]
with commuting disjoint-pair products positive. The explicit degree-two polynomial saturates it.

Equality for the full Einstein comparison is stronger than equality for the collision operator alone. With only channels 0 and 2 on the excited chirality, the total-Casimir identity forces primary degree \(P=2\). This excludes higher-degree or mixed equality states, including the otherwise troublesome \(N=2\) collision degeneracies. Hence the exact upper coefficient, gap, and multiplicity statements are valid on the entire coefficient tower at each fixed \(N\). They are not a uniform perturbation theorem at fixed nonzero gravitational coupling.

### 3.5 EX-07–09: precise obstructions

The Gamma–Laguerre transform is unitary by Laguerre orthogonality. On a primary, translation invariance removes the lower-degree pieces, giving the homogeneous Dirichlet angular realization. The chiral Markov claim requires, and supplies, an additional pointwise positive-kernel bound; unitarity alone would not preserve a cone.

The nonchiral cone obstruction is independently confirmed by the four physical channels 00, 20, 02, 22. Its negative derivative and exact finite spectral evolution give negativity on an open positive-measure set, not just a pointwise/domain artifact. A separate direct five-dimensional averaged-occupation calculation reproduces the cycle factors \(312/35,-528/35,416/35\), with negative product, so the narrower diagonal-similarity obstruction is also fresh.

For EX-08, new labelled differential-Casimir matrices reproduce both generic forced odd values and the exceptional-shift forced values. The degree-four generic obstruction and degree-five exceptional obstruction remain nonzero for every \(d>1\), certified by exact factors/positive shifted coefficients. The computation did **not** Bose-project before testing the labelled Kohno relation. It also freshly verifies the supplementary rank-two commutator and scalar common commutant at \(N=4,d=2,P=6\), and the stated \(D_2\) failure. These exclude their specified ansätze, not general integrability.

EX-09 is now fully re-established, not left as a historical certificate. A new 28-dimensional labelled primary construction at \(N=3,d=2,(P,Q)=(6,3)\), followed by diagonal Bose projection of rank five, gives exactly the printed quintic for \(x=g+240\). Its reduction modulo 23 is irreducible of degree five; modulo 17 it has factors of degrees 2 and 3. Both are square-free and retain degree, hence have nonzero discriminant at those primes. Irreducibility gives a transitive prime-degree, therefore primitive, action; cubing the \((2,3)\) element gives a transposition. The conjugate-transposition graph is connected by primitivity, and its edge transpositions generate \(S_5\). This is a complete fresh \(S_5\) certificate.

## 4. Claim-by-claim coverage

“Valid” below means the manuscript's stated finite-block/degreewise theorem, with its declared pair kernel, not a stronger uniform or nonperturbative statement. Mathematical proofs were read independently; the listed CAS checks supplement them.

### Stable claims

| Claim | Coverage and verdict | Limits or repair |
|---|---|---|
| ST-01 | **Valid.** Literal unordered-pair counting, exact averaged Gram, centered-coordinate inverse, affine dependence, and differential orders checked. | Stable range and creation multiplication must be retained. |
| ST-02 | **Valid.** Signed norm factor, regular full-rank primary frame, analytic Cholesky, rational physical selfadjointness, parity, and degenerate-cluster graph checked. | Fixed block and mass; no uniform radius. |
| ST-03 | **Valid.** Full bivariate pencil, invariant plane, left branch, root isolation, nilpotent resonance, nonzero reverse coupling, discriminants, and detuning mechanism independently checked. | Leading coordinate Jordan block is not finite-\(N\) nonselfadjointness. |
| ST-04 | **Valid.** All-degree dyadic divisor proof and finite homological recursion checked; exceptional pole cancellations checked. | No classification/local finiteness of the full resonance set, and no full-pencil integrability. |
| ST-05 | **Valid.** Positive affine defects imply actual low-generator kernel, matching zero multiplicity, semisimplicity, and multiplicative oblique retraction. | Coefficientwise/degreewise, not unspecified global operator-norm convergence. |
| ST-06 | **Operator and spectrum valid.** Order-two/ideal argument supplies all degrees; symbolic determining matrices and recurrence checked. | Literal uniqueness of \(F_1\) needs weighted homogeneity; see repair A. |
| ST-07 | **Valid.** Isolated semisimple Riesz reduction in \(1/N\), division by the first power, then simple first-low spectrum. | Cannot be extended to every nonchiral block or growing degree. |
| ST-08 | **Valid.** Full oblique inverse, order-three theorem, ideal-valued coefficients, four allowed terms, rational table and diagonal corrections checked. | Statement is in graph gauge; it is not a formula for all later operators. |
| ST-09 | **Valid.** Complete \((3,1)\) pencil and exact scalar critical specialization independently reconstructed. | Do not continue the stable two-dimensional space to \(N=3\). |
| ST-10 | **Character valid for arbitrary real chiral coefficients.** Cusp kernel and conditional all-order effective identity checked. | Effective reduction requires the low cluster/gauge; add that to compressed register wording. |
| ST-11 | **Valid at fixed degree for the pair contraction and first low coefficient.** \(\varepsilon/d\to27/34\) checked. | Full finite-\(N\) energy reading is false; explicit countercheck and corrected limit below. |

### Universality claims

| Claim | Coverage and verdict | Limits or repair |
|---|---|---|
| UN-01 | **Valid.** Exact positive support gives identical intersection kernel/rank; the subquadratic norm remainder transfers the principal law with coefficient \(c\). | Principal-law input is SC-01; no growth condition is needed just for kernel equality. |
| UN-02 | **Valid on internal relative-channel multiplicity space.** The \(c_0\) diagonal tail is compact and the resolvent tail is outside every finite Schatten class. | Name this Hilbert space explicitly; full descendant pair space is not compact. |
| UN-03 | **Valid in every degree.** First positive defect remains accessible with positive endpoint weight; full low-generator annihilation plus zero multiplicity proves the generator count. | Nonnegativity is sufficient, not necessary; finite minimum and leading kernel are distinct conclusions. |
| UN-04 | **Valid.** Order/character/weight argument is all-degree, and exact \(\mathbb Q(d,v,w)\) reconstruction verifies the coefficient. | \(w=0\) loses first-layer simplicity, without deciding the next layer. |
| UN-05 | **Valid counterexample.** Same oriented support and quadratic symbol, but first positive affine defect at 6; the whole stable \((4,0)\) block is scalar. | These are abstract pair deformations, not a classification of bulk Lagrangians. |
| UN-06 | **Valid counterexample to necessity.** The exact endpoint ratio bounds the signed contribution for every \(p\ge6\); degrees 4,5 are positive separately. | It does not retain the global nonnegative-defect minimum guarantee; its first low splitting is negative. |
| UN-07 | **Valid.** The common nonzero residue cancels from every proposed homological relation, leaving the same dyadic proof. | The stated pole structure and rationality are indispensable, not consequences of covariance. |

### Exact claims

| Claim | Coverage and verdict | Limits |
|---|---|---|
| EX-01 | **Valid in full.** All-power flags, physical tensor–Hom map, pure differential symbol, local logarithmic bases, global denominator removal, invariants, Hilbert series and physical reconstruction reviewed. Fresh \(Q=2\) metric/flag checks pass. | One oriented baseline kernel, not the full spectrum or a thermodynamic gap. |
| EX-02 | **Valid.** Exact rank subtraction, three-body eventual threshold, both pole coefficients and exceptional \(N=4,-1\) cancellation checked. | Fixed \(N,Q\) for the asymptotic; auxiliary nullity and physical kernel remain distinct. |
| EX-03 | **Valid.** Pairwise affine-support substitution plus total Casimir identity; primary projection preserves pair support. | A sufficient eigenstate lemma, not a generic invariant-cutoff theorem. |
| EX-04 | **Valid.** Seed existence, coefficient pairings, independence, critical interpolation and protected scalar block checked. | Exact finite endpoint ranges are necessary. |
| EX-05 | **Valid.** Fischer metric, root-derivative equivalence, orthogonal primary quotient, cubic/quartic module completeness, Bose intersections and positivity-to-eigenspace step checked. | Arbitrary-right-degree intersections are not automatically eigenspaces; higher cutoff extrapolation fails. |
| EX-06 | **Valid.** Arbitrary-index pair ordering, three-site low-degree rank defects, triangle inequality, saturation and strict equality classification checked. | Coefficient tower at fixed \(N\), not the physical mass gap or a uniform full-energy bound. |
| EX-07 | **Valid with its specified cone/similarity.** Laguerre/Dirichlet dictionary, positive chiral kernel argument, four-channel nonchiral obstruction and negative occupation cycle checked. | Does not exclude arbitrary nonlocal changes of cone. |
| EX-08 | **Valid for the stated labelled residue ansatz at every \(d>1\).** Both shift branches freshly reconstructed, plus finite commutant and \(D_2\) checks. | Not general nonintegrability. |
| EX-09 | **Valid, freshly certified.** Exact physical quintic reconstructed; square-free finite-field cycle types and the complete \(S_5\) argument checked. | One physical counterexample to universal radical formulas, not a universal Galois classification. |

## 5. Precise repairs and boundary counterchecks

### A. ST-06 polynomial uniqueness

Location: [Chapter 9:411–425][fdefinition], PDF/printed p.72, visually confirmed in the [page image][page72].

Replace “the unique polynomial monic in \(y^b\)” by

> the unique weighted-homogeneous polynomial of weight \(3b\), with \(\deg x=2\), \(\deg y=3\), monic in \(y^b\).

Alternatively use the displayed recurrence as the definition. The exact counterexample is \(F_1=y+x\), which is monic in \(y\) and satisfies the differential equation but is not the intended \(F_1=y\). This is a local definition repair; fixed-weight parity and first-low simplicity remain correct.

### B. ST-11 order of limits

Location: [Chapter 9:513–535][masslimit], PDF/printed p.74, visually confirmed in the [page image][page74]. The phrase “at the first low layer” supplies the intended qualification, but the displayed use of the full \(g_{a,b}\) is unnecessarily ambiguous.

A precise form is
\[
\lim_{d\to\infty}\frac{1}{d}
\left[\lim_{N\to\infty}(g_{a,b}(N,P;d)-g_{\min}(N,P;d))\right]
=\frac{27}{68}b(b-1),
\]
or simply state \(\varepsilon(d)\binom b2/d\to27b(b-1)/68\).

A fresh fixed-\(N=P=6\) contraction gives the complete shifted contact-gap characteristic polynomial
\[
f(x)=x^4-\frac{63}{8}x^3+\frac{1197}{64}x^2-\frac{837}{64}x.
\]
At the proposed first-low gap \(27/34\),
\[
f(27/34)=-\frac{45691533}{21381376}\ne0.
\]
The nonzero gaps are approximately \(1.26392845,2.54437667,4.06669488\), not \(27/34\). Thus a fixed-finite-\(N\) reading is demonstrably false. This does not refute the manuscript's expressly qualified first-low-layer contraction; it shows why the qualification must remain in the equation.

### C. UN-02 compactness space

Location: [Chapter 10:86–100][compactspace], PDF/printed p.77.

Specify \(\ell^2(\{k\ge0:k\text{ even}\})\), the internal pair-primary multiplicity space. On this space the diagonal entries tend to zero, giving compactness, while comparison with \(1/\log(k+2)\) excludes all finite Schatten classes. On the full direct sum of positive-discrete-series pair modules, each nonzero channel eigenvalue has infinite descendant multiplicity and the operator is not compact. The intended cluster-internal reading makes the counterexample valid.

### D. ST-10 effective-pencil hypothesis

Location: the ST-10 entry in the [claim definition extract:423–440][st10definition], and [Chapter 9 §9.4.1][ch9].

Separate the arbitrary-coefficient character theorem from the effective theorem: assume a constructed isolated semisimple low cluster, and name the graph gauge \(q\Omega=I\). The three-line character calculation in §2.2 supplies the all-order proof. The manuscript's Einstein context already provides these hypotheses; the compressed register should not suggest that arbitrary coefficients automatically provide a two-generator low reduction.

## 6. Independent \(\phi^4\) contrast: a mixed-block Jordan resonance

This section was requested after the main audit and calculated independently of the parent's candidate. Input only:
\[
\frac{c_{k\ell}}{c_0}=\delta_{k\ell}\frac{2d-1}{2d+2k-1},\qquad d>1.
\]
Use the complete stable \((P,Q)=(2,2)\) creation basis
\[
(c_{22},c_{20}c_{02},c_{11}^2),\qquad N\ge4,
\]
and normalize \(c_0=1\). With \(D=(2d+1)(2d+3)\), the independent Casimir calculation gives
\[
W_N=\binom N2 I+N A+B,
\]
\[
A=\frac1D
\begin{pmatrix}
-(d^2+5d+3)&0&0\\
-d^2-d+3&-2d(2d+3)&0\\
2d^2&0&-2(2d+3)
\end{pmatrix},
\]
\[
B=\frac1D
\begin{pmatrix}
d^2-d-3&-d^2-d+3&(d+1)^2\\
5d^2+5d-3&3d^2-3d-9&(d+1)^2\\
-2d^2+4d+12&2d^2&-2d^2-2d+2
\end{pmatrix}.
\]
The three leading slopes are
\[
\lambda_0=-\frac{d^2+5d+3}{D},\qquad
\lambda_1=-\frac{2d}{2d+1},\qquad
\lambda_2=-\frac2{2d+1}.
\]
Their differences are
\[
\lambda_1-\lambda_0=-\frac{3d^2+d-3}{D},\quad
\lambda_2-\lambda_0=\frac{d^2+d-3}{D},\quad
\lambda_2-\lambda_1=\frac{2(d-1)}{2d+1}.
\]
The first and third cannot vanish for \(d>1\). There is exactly one physical exceptional mass,
\[
d_c=\frac{\sqrt{13}-1}{2}\simeq1.302775637732.
\]
At this point \(\lambda_0=\lambda_2=-2/\sqrt{13}\), with algebraic multiplicity two but geometric multiplicity one. The third slope is distinct and lower. In the resonant pair, the leading nilpotent coefficient is \(A_{31}=2d_c^2/D_c\), while the reverse constant coefficient is \(B_{13}=(d_c+1)^2/D_c\). Therefore
\[
A_{31}B_{13}=\frac{18}{D_c^2}>0,
\qquad D_c=13+2\sqrt{13},
\]
and
\[
\boxed{\frac{g_\pm(N)}{c_0}=\binom N2-\frac2{\sqrt{13}}N
\ \pm\frac{3\sqrt2}{13+2\sqrt{13}}\sqrt N+O(1).}
\]
The split coefficient is approximately \(0.209916340607\). The third branch and all branches away from the exceptional mass have ordinary integer \(1/N\) expansions after their leading slopes, by the simple-leading-eigenvalue argument.

The new calculation checks \(\Gamma(NA+B)=(NA+B)^T\Gamma\) for the **exact physical Gram as a rational function of \(N,d\)**. It independently checks the leading characteristic-polynomial coefficient after setting \(N=t^{-2}\) and \(\lambda=\lambda_0+tz\), obtaining the factor
\[
(\lambda_1-\lambda_0)\left(z^2-A_{31}B_{13}\right).
\]
Hence the half-power splitting is actual, not merely guessed from a Jordan block. The unnormalized answer is multiplied by \(c_0\); ordering of the levels additionally depends on its sign. See the [independent calculation][phi4script] and [exact result][phi4result].

### A second arithmetic contrast: a supplied degree-seven factor has group \(S_7\)

At the parent's separate request, I independently audited the arithmetic of the degree-seven factor in the supplied [\(N=8,d=2,(P,Q)=(3,3)\) result:292][phi4sevensource]. Its identification with the physical even block is the parent's independent matrix check, **not** an identification reconstructed in this subreview.

Let \(F\in\mathbb Z[z]\) be that rational factor after clearing denominators and removing content. A fresh exact computation gives
\[
F\bmod11=8\left(z^7+4z^6+8z^5+6z^4+4z^3+7z^2+4z+8\right),
\]
with the degree-seven factor irreducible, and
\[
F\bmod19=12(z+1)(z+4)(z+8)(z+10)(z+11)(z^2+8z+2).
\]
Both retain degree and are square-free; their discriminants are respectively 5 modulo 11 and 10 modulo 19. Thus the Galois action is transitive of prime degree seven, hence primitive, and contains a transposition. The connected conjugate-transposition graph proves
\[
\operatorname{Gal}(F/\mathbb Q)=S_7.
\]
This does not reuse the Einstein quintic certificate. Once the physical-factor identification is supplied, the nonsolvable group excludes one universal radical formula for all these \(\phi^4\) eigenvalues. It says nothing by itself about integrability. The [arithmetic script][phi4sevenscript] and [complete certificate][phi4sevenresult] retain the full polynomial and discriminant.

## 7. Verification record and what remains outside this review

All computations used fresh Sage 10.9 kernels. The [manifest][manifest] gives script/result hashes, source hashes, and all successful final executions. Earlier implementation-level coercion, serialization, and polynomial-API errors were corrected before the recorded successful runs; they were not counted as mathematical failures or successes.

| New computation | Exact scope | Output |
|---|---|---|
| [Stable/chiral reconstruction][mainscript] | Physical rank-one projectors; universal \(\mathbb Q(d,v,w)\) coefficient; complete Einstein \(C_2\) matrices at weights 6,8,9 over \(\mathbb Q(d)\); characters; Gram; printed specializations; finite-field quintic tests; three-body counts. | [Result][mainresult] |
| [Bivariate reconstruction][bivscript] | Complete Einstein \((4,1),(3,1)\) pencils, physical Gram, Jordan/protected collisions, exact noninvariant-span counterexample, residue and cone checks. | [Result][bivresult] |
| [Exact remaining structures][remaining_script] | Physical \(Q=2\) kernels at \(N=3,4\); labelled Kohno generic and exceptional branches; arbitrary-index positive pair-band identities. | [Result][remaining_result] |
| [Limits and physical quintic][limits_script] | Fixed-\(N\) large-mass countercheck; literal \(F_1\) nonuniqueness; full physical quintic identification. | [Result][limits_result] |
| [Supplementary structures][supp_script] | Cubic/quartic root ideals; exact chiral common commutant; Gegenbauer recurrence; formal-coefficient diagonal extraction through weight 24. | [Result][supp_result] |
| [Occupation cycle][cycle_script] | Complete two-body \((2,2),d=2\) averaged-occupation matrix and the quoted negative cycle. | [Result][cycle_result] |
| [Independent \(\phi^4\) block][phi4script] | Complete stable mixed \((2,2)\) pencil, unique exceptional mass, physical Gram and genuine half-power splitting. | [Result][phi4result] |
| [\(\phi^4\) degree-seven arithmetic][phi4sevenscript] | Fresh irreducibility, square-free modular cycle types, and \(S_7\) certificate for the supplied factor; physical identification remains separate. | [Result][phi4sevenresult] |

**Not asserted here:** a new gravity derivation of the pair kernel; an independent reproof of every FIN/SC/CL theorem; uniform growing-degree/large-\(N\)/large-mass estimates; a general resonance classification; explicit all-order effective operators; physical realization of every abstract deformed pair sequence; or a theorem excluding all integrability mechanisms. The EX/ST/UN results audited above either prove their own all-degree quantifiers or clearly identify the external finite-representation/SC/CL input. No numerical fit is being promoted to those quantifiers.

[pdf]: </Users/koishi/Desktop/todo/ADS3_Einstein_Scalar_Master_Note.pdf>
[packpdf]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/docs/ADS3_Einstein_Scalar_Master_Note.pdf>
[phi4sevensource]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_nbody_N8_P3_Q3_D2.json#L292>
[phi4sevenscript]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/audit2_stable_phi4_galois7.py>
[phi4sevenresult]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_stable_phi4_galois7.json>
[register]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/provenance/claim_register.json>
[definitions]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_stable_claim_definitions.json>
[exact]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/exact_chapter.md>
[exactapp]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/exact_appendices.md>
[finiteapp]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/finite_appendices.md#L161-L322>
[ch9]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/semiclassical/chapter9.md>
[appst]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/semiclassical/appendix_st.md>
[ch10]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/semiclassical/chapter10.md>
[appun]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/semiclassical/appendix_un.md>
[fdefinition]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/semiclassical/chapter9.md#L411-L425>
[masslimit]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/semiclassical/chapter9.md#L513-L535>
[compactspace]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/semiclassical/chapter10.md#L86-L100>
[st10definition]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_stable_claim_definitions.json#L423-L440>
[page72]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/reviews/audit2_stable_page72.png>
[page74]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/reviews/audit2_stable_page74.png>
[manifest]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_stable_manifest.json>
[mainscript]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/audit2_stable_exact_checks.py>
[mainresult]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_stable_exact_checks.json>
[bivscript]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/audit2_stable_bivariate_checks.py>
[bivresult]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_stable_bivariate_checks.json>
[remaining_script]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/audit2_stable_exact_remaining.py>
[remaining_result]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_stable_exact_remaining.json>
[limits_script]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/audit2_stable_limits_and_quintic.py>
[limits_result]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_stable_limits_and_quintic.json>
[supp_script]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/audit2_stable_supplementary.py>
[supp_result]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_stable_supplementary.json>
[cycle_script]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/audit2_stable_cycle.py>
[cycle_result]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_stable_cycle.json>
[phi4script]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/audit2_stable_phi4_22.py>
[phi4result]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_stable_phi4_22.json>
