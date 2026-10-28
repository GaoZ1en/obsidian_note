# Independent referee report: three-body rank

## Verdict

**The rank theorem is correct for every stated Delta>1 and every strictly positive set of weights. No decisive proof gap or additional exceptional mass was found.** The rectangular Casimir argument is sound, including its potentially resonant last-row entries. Its proof can be shortened substantially, and the abstract rank theorem actually holds for every **Delta>0**.

This review was initially blind. The route and rank conjecture were recorded in [rank_blind_route.md](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/submission-referee-20261021.gu7ZA5/rank_blind_route.md>) before reading the submission. Only Appendix B, lines 602–1123, was subsequently read; the mathematical certification below concerns its rank and counting results, not its separate spectral asymptotics or the original 74-claim audit. No submission script was loaded or executed. No original file was modified.

Let m=min(P,Q), d=abs(P-Q). The result is

\[
\operatorname{rank}W=\begin{cases}
1,&P=Q=0,\\
m,&d\le1,\ (P,Q)\ne(0,0),\\
1,&\{P,Q\}=\{3,1\},\\
m+1,&d\ge2,\ \{P,Q\}\ne\{3,1\}.
\end{cases}
\]

In particular, (1,0) and (0,1) have zero-dimensional physical spaces and rank zero. The exceptional (3,1) and (1,3) spaces have dimension one and rank one. All other degree-gap-at-least-two channels are independent after Bose averaging.

The physical dimension is
\[
d_3(P,Q)=\frac{(P+1)(Q+1)+3\epsilon_P\epsilon_Q+2\eta_P\eta_Q}{6},
\quad \epsilon_n=\mathbf1_{2\mid n},\quad
\eta_n=(1,-1,0)_{n\bmod3},
\]
and nullity is exactly d_3 minus the displayed rank.

## 1. Independent structural reduction

Work over the real coefficient spaces and then complexify. The squared monomial norm is the positive product of a!/(Delta)_a. In the C12 eigenbasis, eigenvalues are lambda_k=(Delta+k)(Delta+k-1), and the transposition (12) acts by (-1)^k. For Delta>0,
\[
\lambda_{k+1}-\lambda_k=2(\Delta+k)>0.
\]

For N=3, each pair label occurs once in U_n. Let D be the span of equal-label tensors v_{P,k} tensor v_{Q,k}, k=0,...,Q, assuming P>=Q. With unit pair-channel vectors and Bose projector Gamma,
\[
W|_{\mathcal H}=3\sum_{k=0}^Q c_k\,|\Gamma d_k\rangle\langle\Gamma d_k|.
\]
Consequently its rank is rank(Gamma restricted to D). Strict positivity of every c_k is essential to this reduction.

Use the invariant bilinear form to identify tensors with maps U_Q -> U_P. Write A_n=C12, B_n=C23, E_n=diag((-1)^k). Then
\[
A_n+B_n+E_nB_nE_n=s_n I,
\quad s_n=n(n+3\Delta-1)+3\Delta(\Delta-1).
\]
In the eigenvectors normalized by f_{n,k}=r^k u^{n-k}+O(r^{k+2}), r=z1-z2 and u=(z1+z2)/2-z3,
\[
(B_n)_{k-1,k}=-k(n-k+\Delta),\qquad
(B_n)_{kk}=(s_n-\lambda_k)/2.
\]
The differential action lowers the r-vanishing order by at most one; self-adjointness gives the opposite bandwidth bound and nonzero reverse neighboring entries. Thus B_n is irreducible tridiagonal for Delta>0.

A relation T in ker(Gamma restricted to D) is rectangular diagonal. Put U=rho_P(13) T rho_Q(13)^(-1). The three cosets give
\[
T+U+E_PUE_Q=0,\qquad B_PU=UB_Q.
\]
Thus U has only its diagonal and odd-parity entries, with U_jj=-t_j/2. The far odd entries obey
\[
\big[s_P-s_Q-(\lambda_j-\lambda_k)\big]U_{jk}=0,
\qquad |j-k|>1.
\]
This is exactly the decisive rectangular identity. For even parity, the far entries already vanish.

## 2. A single boundary argument for every degree gap at least two

The submission separates gaps >=3 from gap two. They can be treated together.

Let P-Q>=2 and S=s_P-s_Q. A possible nonzero last-row entry U_{P,k} must satisfy lambda_P-lambda_k=S. Strict monotonicity permits at most one column. It cannot be k=Q because
\[
S-(\lambda_P-\lambda_Q)=\Delta(P-Q)>0.
\]
Hence k<Q; parity also requires P-k odd.

If P-k>3, inspect entry (P,k+1) of B_PU=UB_Q:
\[
(B_P)_{P,P-1}U_{P-1,k+1}=U_{P,k}(B_Q)_{k,k+1}.
\]
There are no omitted terms: all other last-row entries vanish, and the two diagonal terms multiply U_{P,k+1}=0. Now |(P-1)-(k+1)|=P-k-2>1 and
\[
\lambda_{P-1}-\lambda_{k+1}<\lambda_P-\lambda_k=S.
\]
The far-entry identity kills U_{P-1,k+1}, and irreducibility kills U_{P,k}.

The only remaining possibility is P-k=3. Since k<Q and P-Q>=2, this forces P=Q+2 and k=Q-1. Its resonance condition is
\[
\lambda_{Q+2}-\lambda_{Q-1}-(s_{Q+2}-s_Q)=2(Q-1)=0.
\]
Thus **only (P,Q)=(3,1) survives**. This calculation is independent of Delta and makes the absence of exceptional masses especially transparent.

In every other case the last row vanishes. The last-row equation then forces the preceding row to vanish, because (B_P)_{P,P-1} is nonzero. Repeating downwards gives U=0 and hence T=0. This also covers Q=0: there is then no allowed k<Q.

For (3,1), the character dimension is one. Define centered coordinates X_i and Y_i and p_ab=sum_i X_i^a Y_i^b. The invariant F=p20 p11 has bidegree (3,1), and at X=(x,x,-2x), Y=(y,y,-2y),
\[
F=36x^3y\ne0.
\]
All positive pair labels vanish at that double collision, so the (0,0) pair-channel component is nonzero. Hence positivity of c0 gives rank one.

## 3. Short proofs of the adjacent and balanced bands

### Adjacent degrees

For P=Q+1, every far last-row entry is killed because, writing k=Q-a with a>=1,
\[
\lambda_P-\lambda_k-(s_P-s_Q)
=(2a-1)\Delta+a(2Q-a-1)>0.
\]
Only U_{P,Q} can survive. The tridiagonal intertwining recurrence determines each preceding row uniquely from the later rows, so the relation space has dimension at most one. This includes Q=0, where there are no far entries to inspect.

A nonzero relation is D3=Pi_{Q+1} J_{3,+}|_{U_Q}. The three particle versions sum to zero after primary projection and are permuted by S3. C12 commutes with D3, so D3 is an equal-label rectangular map. Its nonvanishing can be shown explicitly, avoiding any dimension argument for the descendant space. For f=r^Q and s=(z1+z2)/2,
\[
J_{\mathrm{tot},+}f=[2(\Delta+Q)s+\Delta z_3]f,
\]
and decomposition into the primary r^Q(s-z3) and that descendant gives
\[
D_3(r^Q)=-\frac{2\Delta(\Delta+Q)}{3\Delta+2Q}\,r^Q u\ne0.
\]
Therefore the relation space is exactly one-dimensional, and rank W=Q.

### Balanced degrees: simpler than the submitted odd-band argument

Let P=Q>=1. Write T=h(A_P), deg h<=P. Then U=h(B_P). The far-entry identity has S=0, so strict monotonicity of lambda_k kills every entry of U beyond its first off-diagonals. Thus **h(B_P) is tridiagonal**.

If h has degree m>=2, entry (0,m) of h(B_P) equals the nonzero leading coefficient times the product of the m neighboring entries of B_P. Lower powers cannot reach that entry. This contradicts tridiagonality. Hence h is affine. Its Bose average vanishes precisely for h(t)=a(t-s_P/3), yielding one relation and rank P. The case P=0 is separate and has rank one.

This replaces the submitted even/odd highest-power split and its two-starting-positions bookkeeping. The submitted argument is nevertheless correct, including the endpoint m=P.

## 4. Source locators and assessment

All links in this section point to the submitted report.

- [Theorem and dimensions: 654–683](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L654-L683>): correct.
- [Differential/tridiagonal input: 690–729](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L690-L729>): correct; both off-diagonal directions really are nonzero.
- [Rank reduction and rectangular equation: 731–787](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L731-L787>): correct. A relation among averaged channels is not a physical zero mode.
- [Resonant boundary elimination: 789–826](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L789-L826>): correct. The neighboring column k+1 exists because k<Q; the predecessor entry lies outside the nearest-neighbor band; the strict spectral-gap inequality removes it. No unjustified nonresonance assumption is made.
- [Gap-two and low-degree endpoints: 828–854](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L828-L854>): correct. The unified argument above is shorter.
- [Adjacent band: 856–915](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L856-L915>): correct, including Q=0. The explicit projection coefficient above shortens the nonvanishing proof.
- [Balanced band: 917–954](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L917-L954>): correct; the rectangular identity supplies a much shorter proof.
- [Counting series: 956–983](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L956-L983>): the coefficient accounting follows from the rank formula. It is not an ideal statement.
- [Sample determinant: 1085–1093](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L1085-L1093>): independently reproduced exactly.

## 5. Fresh exact checks and limitations

The independent implementation is [rank_fresh_checks.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/submission-referee-20261021.gu7ZA5/rank_fresh_checks.py>); machine results are [rank_exact_results.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/submission-referee-20261021.gu7ZA5/rank_exact_results.json>). It constructs differential operators directly on x=z1-z3,y=z2-z3 monomials, computes eigenspaces by exact linear algebra, and averages actual permutation substitutions. It does not assume a recoupling formula.

Executed scope:

1. **168 blind-grid exact ranks:** Delta=3/2,2,3; 0<=min(P,Q)<=6 and min(P,Q)<=max(P,Q)<=10. Every rank agrees with the blind formula.
2. **12 targeted exact ranks:** including genuine last-row resonances (P,Q,Delta)=(7,3,2),(8,3,6),(11,5,2),(12,4,6),(10,4,3/2). Their ranks are respectively 4,4,6,5,5, despite resonances in columns 2,1,4,1,3. Also checked the exceptional case and both bands at Delta=1/7, and endpoints at Delta=1.
3. **Symbolic Delta, n=0,...,6:** Casimir sum, parity, tridiagonality, diagonal entries, nonzero neighboring entries, and the normalized upper-entry formula all verified identically.
4. **Symbolic compressed determinants:** (2,0),(3,1),(4,2),(5,3). The (3,1) determinant is zero and its exact rank is one; the others are nonzero with positive factors on Delta>0. The (4,2) determinant exactly equals the submission's displayed expression.
5. **All-symbolic boundary identities:** the general resonance equation, adjacent-band inequality polynomial, and the exceptional 2(Q-1) identity were checked exactly.

An initial exploratory tool call stopped only because Sage does not factor the zero polynomial at (3,1); this was corrected by handling zero separately. The final recorded run passed every assertion.

These finite checks are regression and counterexample-search evidence, not the proof of arbitrary degree or mass. The general proof is the analytic argument above. No critical rank-proof step remains unverified. The separate spectral convergence, numerical bottom-gap conjecture, and source audit outside the requested new result are not certified here.

## 6. Assumption sharpening

All rank-proof inputs remain valid for **Delta>0**: the monomial inner product is positive, lambda_k strictly increase, neighboring entries do not vanish, the boundary inequalities retain their signs, and 3 Delta+2Q is positive. Thus the abstract theorem has no exceptional Delta anywhere on (0,infinity). Delta=0 is excluded because the specified representation norm becomes singular; no extension there is claimed.

If the particular physical weights c_k=[8 pi(2 Delta+2k-1)]^(-1) are retained, their strict positivity requires Delta>1/2. The stronger Delta>0 statement is for arbitrary independently specified positive weights, not for those physical weights below their positivity threshold.
