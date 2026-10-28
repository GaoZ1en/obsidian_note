# Referee report: new AdS₃ contact-spectrum results

**21 October 2026. Verdict: all four principal mathematical results survive independent scrutiny under their stated assumptions.** No counterexample or fatal proof gap was found. The main qualifications concern what is *not* proved: the size of every resonance cluster, operator-norm convergence of the Racah-square matrices, and convergence of the finite contact bottom eigenvalue. The submission already recognizes most of these limitations.

This review concerns the new results in [the submitted investigation](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md>), not the old 74-claim audit, a fresh derivation of gravitational dynamics, or priority in the literature. Four fresh reviewers first developed independent routes without receiving the candidate conclusions, then compared the relevant appendices. The original report and research records were not edited. No supplied verification script was executed.

## Assumptions and objects

Use the submission's polynomial representation, with squared monomial norm \(p!/(\Delta)_p\), and
\[
\mathcal H_{N;P,Q}=(U_{N,P}\otimes U_{N,Q})^{S_N},\qquad
U_{N,P}=\ker\Bigl(\sum_i\partial_{z_i}\Bigr)\cap\mathbb C[z]_P.
\]
Bose symmetrization is simultaneous in both chiral factors. The operator is
\[
W=\sum_{i<j,k}c_k\Pi_{ij}^{(k,k)},\qquad
c_k=\frac1{8\pi(2\Delta+2k-1)},\quad\Delta>1.
\]
Rank and kernel results only need positive weights; actual spectral formulas use the displayed weights. Large-\(N\) statements concern first-order coefficients in a fixed primary block, not a uniform interacting-QFT remainder.

## 1. Complete three-particle rank: accept; simplify the proof

The [complete formula and exceptional case](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L654-L683>) are correct. With \(m=\min(P,Q)\) and \(d=|P-Q|\),
\[
\operatorname{rank}W_{3;P,Q}=\begin{cases}
1,&P=Q=0,\\
m,&d\le1,\ (P,Q)\ne(0,0),\\
1,&\{P,Q\}=\{3,1\},\\
m+1,&\text{otherwise}.
\end{cases}
\]
Subtract this from the stated character dimension to obtain nullity. There are no exceptional rank-drop masses in the physical range.

The decisive issue is not generic nonresonance: actual resonant last-row entries do occur. The submitted neighboring-row argument eliminates them correctly. It admits a useful uniform version. Assume \(P\ge Q+2\), write \(A=C_{12}\), \(B=C_{23}\), and let \(U\) be the conjugate of a putative relation among averaged equal-label channels. Then
\[
B_PU=UB_Q,\qquad
[s_P-s_Q-(\lambda_j-\lambda_k)]U_{jk}=0\quad(|j-k|>1),
\]
where \(s_n=n(n+3\Delta-1)+3\Delta(\Delta-1)\) and \(\lambda_k=(\Delta+k)(\Delta+k-1)\). Its last row has at most one candidate nonzero entry, necessarily at \(k<Q\). If \(P-k>3\), the equation at \((P,k+1)\) kills it: the predecessor entry has a strictly smaller spectral difference and is outside the nearest-neighbor band. The only remaining possibility is \(P=Q+2,k=Q-1\); its resonance condition is simply
\[
\lambda_{Q+2}-\lambda_{Q-1}-(s_{Q+2}-s_Q)=2(Q-1)=0.
\]
This isolates \((3,1)\) immediately. A zero last row propagates through the irreducible tridiagonal intertwiner.

The balanced proof also shortens substantially. For \(P=Q\), the same far-entry equation makes \(U=h(B)\) tridiagonal. The highest nonzero band of a polynomial in an irreducible tridiagonal matrix forces \(\deg h\le1\). Thus the sole relation is \(A-s_P/3\), with no even/odd highest-power case split.

The abstract proof actually works for **\(\Delta>0\) with independently specified positive weights**. This does not extend the stated physical boundary-value problem below \(\Delta>1\). See the [independent rank proof and checks](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/submission-referee-20261021.gu7ZA5/rank_referee.md>).

## 2. Arbitrary N, Q=1: accept exactly as a polynomial-subspace theorem

The [kernel and Hilbert series](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L502-L584>) are correct:
\[
\ker W_{N;P,1}=V_N(z)^2\mathcal H_{N;P-N(N-1),1},
\qquad
\sum_P\dim\ker W_{N;P,1}\,t^P=
\frac{t^{N(N-1)}(t+\cdots+t^{N-1})}{\prod_{j=2}^N(1-t^j)}.
\]
The shortest proof needs only positivity, pair parity, and the triangular pair-descendant filtration. At right degree one, labels are only 0 and 1; Bose parity makes left labels 0 and 1 exclusively penalized equal-label sectors. Removing them is equivalent to divisibility by \((z_i-z_j)^2\). Unique factorization over all pairs gives \(V_N^2\). The quotient remains primary and Bose symmetric.

The invariant-covariant module basis \(p_{r1}\), \(1\le r\le N-1\), over \(\mathbb C[e_2,\ldots,e_N]\) is free, so the counting follows. In particular, \(N=2\) gives \(t^3/(1-t^2)\), not a nonzero kernel at every higher degree.

The differential-intertwiner normalization is also correct, but is unnecessary for this short kernel proof. Its warning about higher jets matters: individual channel extraction contains tangential derivatives; only removing *all* labels below a threshold gives ordinary divisibility. No extension of the same argument to \(Q=2\) follows. See [independent first-strip review](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/submission-referee-20261021.gu7ZA5/q1_referee.md>).

## 3. Infinite genuine square-root resonances: accept, retaining the cluster qualification

The [beta-binomial slopes, unique masses, and active couplings](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L1580-L1823>) survive an independent pair-channel derivation and selective exact integral checks. Set
\[
g_n=\frac{2(1/2)_n(\Delta)_n}{n!(\Delta+1/2)_n}.
\]
For every \(n\ge2\), there is exactly one \(\Delta_n>1\) satisfying
\[
(2\Delta_n+1)(g_{n-1}-g_n)=1,
\qquad
\Delta_n=\frac{\sqrt\pi}{2}n^{3/2}-\frac n2+O(\sqrt n).
\]
Monotonicity of the factored scalar equation proves uniqueness and the strict increase of the masses; this is not inferred from numerical roots.

The decisive nonzero *physical* edge is
\[
b_n=\frac{n g_n(\Delta_n)}{(2n-1)\sqrt{1+\mathbf1_{n=2}}}>0.
\]
After primary reduction, the first resonant perturbation matrix is Hermitian and bipartite in excitation-number parity. Its spectrum contains \(\pm b\), with \(b\ge b_n\), so actual branches obey
\[
\frac{\varepsilon_\pm}{c_0}
=\binom N2+[g_n(\Delta_n)-1]N\pm b\sqrt N+O(1).
\]
A repeated slope or a Jordan block would not have sufficed; the submitted argument proves the nonzero edge and the needed metric regularity.

A shorter frame argument is available: inside a degenerate \(H_0\)-eigenspace, the first correction from an analytic orthonormal frame is \(\sigma\,\partial_t\langle u_i,u_j\rangle=0\). Thus the resonant compression of \(H_1\) cannot be removed by a regular change of frame. The submission's stronger dipole-orthogonality argument is valid.

**Do not promote \(b\ge b_n\) to \(b=b_n\) for every n.** A universally two-dimensional cluster is still conjectural. Likewise \(b_n\sim1/\sqrt{\pi n}\) describes the displayed edge, not automatically the extremal splitting of a larger cluster. See [independent resonance review](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/submission-referee-20261021.gu7ZA5/resonance_contact_independent_review.md>).

## 4. Racah-square continuum: accept the stated topology and form theorem

The [strong-limit proof](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L1137-L1225>) is sound. For fixed \(\Delta\), with the precise uniform step embedding \(V_P\),
\[
V_P(R_P\circ R_P)V_P^*\longrightarrow K\quad\text{strongly},
\qquad
(Kf)(x)=\frac2\pi\int_0^{\sqrt{1-x^2}}
\frac{f(y)}{\sqrt{1-x^2-y^2}}\,dy.
\]
The local Jacobi moments, stochastic bound, and dense polynomial test space are sufficient; uniform endpoint asymptotics are not needed for strong convergence. Restricted even Legendre polynomials form a complete basis, and
\[
KP_{2r}=P_{2r}(0)P_{2r}.
\]
There is no missing odd sector on \([0,1]\). The operator is compact, though not Hilbert–Schmidt.

The [weighted form theorem](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L1263-L1336>) is also correct. With \(A=(2x)^{-1/2}\),
\[
q[f]=\langle Af,(I+2K)Af\rangle,\qquad \mathcal D(q)=\mathcal D(A),
\]
is closed; the proof explicitly controls the otherwise troublesome null direction of \(I+2K\). Its operator \(\mathcal H\) has kernel \(\mathbb C\sqrt{2x}P_2\) and gap at least \(3/16\).

Three qualifications should remain explicit:

1. At [1128–1130](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L1128-L1130>), replace “not operator-norm convergence” by **“operator-norm convergence is not established.”** The proof does not disprove it. Use the actual \(k/(P+1)\) step embedding in the summary, not a literal \(k/P\) isometric embedding.
2. Strong convergence alone proves neither ordered finite spectral convergence nor the proposed \(0.27758582\ldots\) finite-contact limit. The submission correctly leaves this open.
3. Fixed \(\Delta\) is essential. If \(\Delta_P/P\to\infty\), the exact first Casimir moment instead gives \(M_P(y)\to3/4-x/2\), whereas \(Ky=(2/\pi)\sqrt{1-x^2}\). Thus fixed-mass universality cannot be transferred to a joint growing-mass limit such as \(\Delta_P\asymp P^{3/2}\).

## 5. A useful additional theorem about the continuum operator

The continuum spectral interpretation can be strengthened without claiming finite-P convergence:
\[
\boxed{\sigma_{\rm ess}(\mathcal H)=[1/2,\infty),\qquad
\frac3{16}\le\lambda_1^+(\mathcal H)\le\frac{800}{2691}<\frac12.}
\]
In particular, the first positive continuum level is an isolated eigenvalue, not merely the bottom of a continuous band.

**Proof.** Let \(\mathcal H_0=A^2\), multiplication by \(1/(2x)\). The relative form perturbation is compact, since
\[
A(\mathcal H_0+1)^{-1/2}=(1+2x)^{-1/2},\qquad
(1+2x)^{-1/2}K(1+2x)^{-1/2}
\]
is compact. The established graph-norm equivalence gives the resolvent formula and a compact difference from \((\mathcal H_0+1)^{-1}\); hence the essential spectra agree. This is *not* an assertion that \(AKA\) is itself bounded or compact.

For a trial state take \(h=P_6+P_2/20\), \(f=\sqrt{2x}h\). It is orthogonal to the null mode, and exact polynomial integration gives
\[
\|f\|^2=\frac{621}{6400},\qquad q[f]=\frac3{104},\qquad
\frac{q[f]}{\|f\|^2}=\frac{800}{2691}.
\]
Min–max and the submitted lower gap bound prove the claim.

Moreover, \(\sqrt{2x}\operatorname{span}\{P_0,P_2,\ldots,P_{2L}\}\) is a nested form core containing the exact null mode. Consequently its **exact-arithmetic** first-positive Ritz values decrease to this continuum eigenvalue. The floating-point table still has no certified eight-digit error bound, and none of this identifies the finite contact limit.

A separate endpoint analysis also narrows the remaining obstacle. Writing \(M_P=R_P\circ R_P\) and \(\chi_\eta\) for the index cutoff to \([\eta,1-\eta]\), one can prove
\[
\lim_{\eta\downarrow0}\limsup_{P\to\infty}
\|M_P-\chi_\eta M_P\chi_\eta\|=0.
\]
Fixed-index endpoint rows have Jacobi/Beta laws; rows with \(k/P\to1\) concentrate at zero. Together with stochasticity and the Schur test these give the norm estimate and a uniform weighted graph bound. **Bulk high-frequency compactness remains unproved.** The full argument, independent checks, and the continuum extension are in [the separate continuum review](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/submission-referee-20261021.gu7ZA5/continuum_referee.md>).

## Evidence and limits of the review

The conclusions above rest on analytic arguments and independent fresh derivations. Supporting checks were targeted: exact ranks including genuinely resonant boundary cases; symbolic collision-map covariance; unequal Jacobi-product identities and the all-index active-coupling residual; exact continuum moments and trial-state integrals. The finite checks are not proofs of arbitrary degree. The original 74-claim audit, the old septic example, and the supplied cluster enumeration through n=8 were not repeated.

All review material is contained in this separate directory. The supplied report and ZIP were hashed; the report inside the ZIP matches the external report byte-for-byte. Initial hashes:

```text
report  6d243f9d48a0e01031789d99dc06ebe3499c027b93983bccef931dc6d9e55236
zip     9e950b2444d919f755752e8e5f3725405eafd44d2d8bb3fa9330ec24b2b03ec0
```

**Recommendation:** accept the four new theorems with the above scope retained and minor topology/embedding wording clarified. Incorporate the shorter rank and resonant-frame arguments if revising the exposition. The only worthwhile continuation identified here is the remaining bulk no-pollution estimate; this review does not claim to have solved it.
