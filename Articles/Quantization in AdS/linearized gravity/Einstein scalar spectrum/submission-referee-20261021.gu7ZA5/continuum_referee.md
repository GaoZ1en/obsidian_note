# Independent continuum analysis and focused submission review

## Verdict

The strong Racah-square limit and the closed weighted form in Appendix C are **correct under their stated fixed-Δ>1 conventions**. In particular, the proof of closedness does not overlook the kernel of the bounded middle operator: the displayed graph-norm estimate controls precisely that missing direction. The spectral-pollution problem is real, but its endpoint part can be removed using the same Jacobi-moment method. What remains is a genuinely bulk, high-frequency compactness problem.

The only proposed additional spectral conclusion is modest and rigorous: the weighted continuum operator has essential spectrum [1/2,∞), and it has at least one isolated positive eigenvalue below 1/2. An exact two-polynomial trial state gives the upper bound 800/2691, independently of any finite-P convergence or numerical Galerkin scan.

**Order of work.** The bulk kernel, Jacobi coefficients, endpoint measures, and Legendre spectrum below were derived before reading the proposed Appendix C kernel/spectrum. The manuscript was then read at the requested locations. No source file was edited; no old verification script or 74-claim audit was run. This is an independent child review, not an additional independent review of itself.

## 1. Definitions and independent derivation

Let Δ>1 be fixed as P→∞. The polynomial scalar product is

\[
\|z^\alpha\|^2=\prod_i\frac{\alpha_i!}{(\Delta)_{\alpha_i}}.
\]

Write h=Δ/2, J=P+3h, and

\[
\lambda_k=(k+\Delta)(k+\Delta-1),\qquad
s_P=J(J-1)+3h(h-1).
\]

In a real orthonormal C12 basis, C23 is a Jacobi matrix B_P. If R_P literally represents the transposition (23), then R_P C12 R_P=C13; C23=D12 C13 D12 with D12=diag((-1)^k). Consequently their diagonal powers and squared recoupling matrix M_P are identical. This particle-label distinction only changes the relevant off-diagonal signs. More generally those signs can be changed by basis phases; choose negative off-diagonals below. The exact coefficients, with a_{P,k} connecting k to k+1, are

\[
b_{P,k}=\frac{s_P-\lambda_k}{2},
\]

\[
a_{P,k}^2=
\frac{(P-k)(k+1)(P-k+\Delta-1)(k+2\Delta-1)
(P+k+2\Delta)(P+k+3\Delta-1)}
{4(2k+2\Delta-1)(2k+2\Delta+1)}.
\tag{1}
\]

One derivation uses u=z1−z2 and v=(z1+z2)/2−z3. The pair Casimir is

\[
C_{12}=u^2\partial_u^2-\frac{u^2}{4}\partial_v^2
+2\Delta u\partial_u+\Delta(\Delta-1).
\]

The eigenpolynomial with lowest u power k begins

\[
f_k=u^kv^{P-k}
+\frac{(P-k)(P-k-1)}{8(2k+2\Delta+1)}u^{k+2}v^{P-k-2}+\cdots.
\]

The coefficient of f_{k−1} in C23 f_k is −k(P−k+Δ). The coefficient of f_{k+1}, found from the first two displayed monomials, is

\[
-\frac{(P-k)(k+2\Delta-1)(P+k+2\Delta)(P+k+3\Delta-1)}
{4(2k+2\Delta-1)(2k+2\Delta+1)}.
\]

The product of the two opposite transition coefficients gives (1). This derivation neither assumes a Racah asymptotic nor imports a submitted script.

### Bulk row measures

If k/P→x∈(0,1), every fixed displacement of k has

\[
\frac{b_{P,k}}{P^2}\to\frac{1-x^2}{2},\qquad
\frac{a_{P,k}}{P^2}\to-\frac{1-x^2}{4}.
\]

Since M_P=R_P∘R_P,

\[
\sum_\ell M_{P,k\ell}\left(\frac{\lambda_\ell}{P^2}\right)^m
=\left[(B_P/P^2)^m\right]_{kk}.
\]

Fixed moments only inspect finitely many neighboring coefficients. They converge to the moments of

\[
\nu_x(dt)=\frac{\mathbf1_{0<t<1-x^2}}{\pi\sqrt{t(1-x^2-t)}}\,dt.
\tag{2}
\]

All measures have uniformly bounded support, so their moments determine weak convergence. Since t≈(ℓ/(P+1))² uniformly, the row law in y=ℓ/(P+1) is

\[
K(x,y)\,dy=\frac{2\mathbf1_{x^2+y^2<1}}{\pi\sqrt{1-x^2-y^2}}\,dy.
\tag{3}
\]

Thus the stationary measure is dx, not a Δ-dependent Jacobi weight. The empirical Casimir eigenvalue measure is separately

\[
\frac1{P+1}\sum_{\ell=0}^P\delta_{\lambda_\ell/P^2}
\ \Longrightarrow\ \frac{\mathbf1_{0<t<1}}{2\sqrt t}\,dt.
\]

Integrating (2) over uniform x yields this last density, a useful normalization check.

### Strong topology and spectrum

Let V_P e_k=√(P+1) 1_{[k/(P+1),(k+1)/(P+1))}, and extend M_P by T_P=V_P M_P V_P*. Row moment convergence proves T_P f→Kf in L² for f(y)=y^{2m}; stochasticity supplies the uniform L∞ bound needed for dominated convergence. Polynomials in y² are dense even in C[0,1], because g(t)=f(√t) is continuous and can be polynomially approximated. The contraction bound then gives strong convergence on all L².

The polynomial filtration and self-adjointness imply

\[
K P_{2n}=\mu_n P_{2n},\qquad
\mu_n=(-1)^n\binom{2n}{n}4^{-n}.
\]

The orthonormal basis is φ_n=√(4n+1)P_{2n}. Completeness follows from that same density statement; there is no missing odd sector on [0,1]. Since μ_n→0, K is compact. It is not Hilbert–Schmidt: the integral of K(x,y)² diverges logarithmically at the circular boundary. Equivalently, |μ_n|∼1/√(πn). In particular K belongs to Schatten S_p exactly for p>2. Its eigenvalues are nonzero; zero is the spectral accumulation point, not an L² eigenvalue.

**Important distinction.** The strong limit above concerns M_P. It does not identify a strong operator limit of C23/P² with its row spectral measures. In the negative-offdiagonal phase of (1),

\[
V_P(B_P/P^2)V_P^*\to0\quad\text{strongly},
\]

because on fixed smooth test functions neighboring shifts agree asymptotically and b+2a→0. Its norm tends to 1, so this is not norm convergence. If the basis phases alternate, a changes sign and the strong limit becomes multiplication by 1−x². The row measures and M_P are phase invariant. Moving microscopic coordinate vectors and fixed L² test functions probe different limits.

### Why fixed Δ is a substantive hypothesis

No conclusion above is uniform when Δ scales with P. Indeed, the exact first moment gives

\[
b_{P,k}-\Delta(\Delta-1)
=\frac{P^2-k^2-P+k+\Delta(3P-2k)}2.
\]

If Δ=Δ_P and Δ_P/P→∞, then the shifted/scaled eigenvalues satisfy

\[
\frac{\lambda_k-\Delta_P(\Delta_P-1)}{2\Delta_PP}
=\frac{k}{P}+O(P/\Delta_P)
\]

uniformly, whereas the diagonal moments converge uniformly to 3/4−x/2. Consequently M_P applied to the sampled function y converges to 3/4−x/2, not to the fixed-Δ value (2/π)√(1−x²). This is not a counterexample to Theorem 2, which fixes Δ. It prevents transferring that theorem into a joint scaling such as Δ_P of order P^(3/2) without a new analysis.

## 2. Endpoint regimes

The bulk row law is not uniform down to fixed k. The following classification is sufficient for the endpoint reduction in §4.

### 2.1 k fixed at the lower endpoint

For fixed k,

\[
b_{P,k}/P^2\to\frac12,
\]

\[
a_{P,k}^2/P^4\to
\frac{(k+1)(k+2\Delta-1)}
{4(2k+2\Delta-1)(2k+2\Delta+1)}.
\]

These are the recurrence coefficients for multiplication by t in the orthonormal shifted Jacobi basis for the beta probability measure

\[
w_\Delta(t)dt=\frac{t^{\Delta-1}(1-t)^{\Delta-1}}{B(\Delta,\Delta)}dt.
\]

If p_k is orthonormal for this measure, the row-k limiting measure is

\[
p_k(t)^2w_\Delta(t)dt.
\tag{4}
\]

In the y variable it has density

\[
\frac{2y^{2\Delta-1}(1-y^2)^{\Delta-1}}{B(\Delta,\Delta)}p_k(y^2)^2.
\]

This is Δ dependent and generally different from the bulk x=0 arcsine law. However, if k→∞ while k/P→0, the neighboring coefficients approach 1/2 and −1/4, so the bulk x=0 arcsine law is recovered. Neither kind of lower-endpoint row has an atom at y=0 or y=1.

### 2.2 k/P→1

For every sequence k/P→1, b/P² and all finitely displaced a/P² tend to zero. Hence the y row law tends to δ0. The integral formula at x=1 is only an a.e. statement; on continuous functions its natural endpoint extension is Kf(1)=f(0).

There is a finer boundary layer. If r=P−k is fixed, use C23/P, not C23/P². In the reversed r index its coefficients tend to

\[
b_r=r+\frac\Delta2,\qquad
|a_{r,r+1}|=\frac12\sqrt{(r+1)(r+\Delta)}.
\]

These are the Laguerre coefficients for the gamma measure

\[
\gamma_\Delta(dt)=\frac{2^\Delta}{\Gamma(\Delta)}t^{\Delta-1}e^{-2t}dt.
\]

The row-r limiting measure is the square of its normalized degree-r Laguerre polynomial times γ_Δ. Moment determinacy follows, for example, from the exponential tail. Thus ℓ is of order √P in this regime. This refined gamma law is informative, but is not needed to prove strong convergence or the endpoint norm estimate below.

## 3. Submission scrutiny

The text reviewed is [Appendix C:1124–1366](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L1124-L1366>) and [§4.4:276–310](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L276-L310>).

- **Theorem 2 is valid.** Its stated interior coefficient limits, moment argument, boundedness, density, completeness, and compactness steps are all sufficient. It does not need a uniform endpoint asymptotic to prove strong convergence. “Every fixed finite displacement” refers to displacement of a bulk-moving k, not to k fixed as P→∞.
- **The phrase “not operator-norm convergence” should be softened.** At [1128–1130](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L1128-L1130>), the proof establishes strong convergence and does not establish norm convergence. It does not prove that norm convergence is false for M_P.
- **Use the exact embedding consistently.** [§4.4:278](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L278>) should say k/(P+1), or explicitly refer to V_P, rather than present k/P as the isometric step embedding. The O(P⁻¹) difference is harmless analytically but the literal embedding definition matters.
- **Clarify local notation.** In [1167–1175](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L1167-L1175>), displaying (1) avoids the auxiliary norm ratio g_{P,k+1}/g_{P,k} and makes positivity and both endpoints transparent. Define s_P locally if the appendix is advertised as independent.
- **No additional eigenfunction/completeness assumption is missing.** Restricted even Legendre polynomials are complete in L²([0,1],dx), despite not including the odd Legendre polynomials.
- **The finite-spectrum caveat is correct.** Fixed limiting eigenvectors produce finite approximate eigenvalues, but this does not control ordered spectra or exclude extra eigenvalues carried by weakly vanishing vectors.

### Theorem 3: kernel and closedness

Set A=(2x)^−1/2, B=I+2K, e=√5 P2. The exact spectral information gives

\[
\ker B=\mathbb Ce,\qquad B\ge\frac38(I-|e\rangle\langle e|),\qquad \|B\|=3.
\]

For g=Af=v+ce with v⊥e,

\[
q[f]\ge\frac38\|v\|^2.
\]

The potentially uncontrolled coefficient c is controlled by f=A^−1v+cA^−1e and

\[
\|A^{-1}\|=\sqrt2,\qquad\|A^{-1}e\|^2=\frac54.
\]

Indeed,

\[
\|Af\|^2\le\frac85\|f\|^2+\frac{56}{5}q[f],\qquad q[f]\le3\|Af\|^2.
\]

These are the submitted constants, and they are correct. Consequently the form norm is equivalent to the graph norm of closed A. The form on D(A), not merely some unspecified extension, is closed and densely defined. The null space is exactly span{√(2x)P2}.

For f⊥A^−1e, eliminate c using X=A^−2=2x. Then

\[
\|f\|^2=\left\langle v,\left(X-\frac{X|e\rangle\langle e|X}{\langle e,Xe\rangle}\right)v\right\rangle
\le2\|v\|^2.
\]

Thus the asserted gap q[f]≥(3/16)‖f‖² is valid. There is no incorrect inference of closedness merely from boundedness of B; the manuscript has supplied the needed missing argument.

## 4. A genuine reduction of the pollution problem

The endpoint classification proves more than a.e. row convergence: endpoint input/output strips vanish **uniformly in operator norm** in the double-limit sense below. This does not require any pointwise Racah asymptotic or any rate.

Write N=P+1. For a subset E of indices define the row probability p_{P,i}(E)=Σ_{j∈E}M_{P,ij}. Let

\[
F_{\delta,P}=\{j:j/N>1-\delta\},\quad E_{\epsilon,P}=\{j:j/N<\epsilon\}.
\]

The sequential endpoint classification implies

\[
h(\delta):=\limsup_{P\to\infty}\sup_i p_{P,i}(F_{\delta,P})\longrightarrow0
\quad(\delta\downarrow0),
\tag{5}
\]

and, for each fixed δ>0,

\[
g(\epsilon,\delta):=\limsup_{P\to\infty}
\sup_{i/N\le1-\delta}p_{P,i}(E_{\epsilon,P})\longrightarrow0
\quad(\epsilon\downarrow0).
\tag{6}
\]

For completeness, a contradiction proof selects P→∞ and offending rows. Pass to a subsequence with i/P→x. If x∈(0,1), use (2); if x=0, pass to either a fixed i or i→∞ and use (4) or the x=0 arcsine law; if x=1, use δ0. Every possible limit has no atom at y=1, proving (5) by Portmanteau on shrinking closed neighborhoods. In (6), x≤1−δ excludes δ0, and every remaining limit has no atom at y=0. The fixed-k and k→∞ alternatives at x=0 are both indispensable.

For a nonnegative doubly stochastic matrix, the Schur test gives

\[
\|M_P\mathbf1_{F_{\delta,P}}\|\le
\sqrt{\sup_i p_{P,i}(F_{\delta,P})}.
\]

Symmetry gives the same output-strip estimate. Split the output of M_P 1_{Eε} into Fδ and its complement. The former is bounded using (5); the latter has row sums bounded by (6) and column sums at most one. Hence

\[
\limsup_P\|M_P\mathbf1_{E_{\epsilon,P}}\|
\le\sqrt{h(\delta)}+\sqrt{g(\epsilon,\delta)}.
\]

First ε↓0 and then δ↓0. Together with (5), this proves

\[
\boxed{\lim_{\eta\downarrow0}\limsup_{P\to\infty}
\|M_P-\mathbf1_{[\eta,1-\eta]}M_P\mathbf1_{[\eta,1-\eta]}\|=0,}
\tag{7}
\]

where interval cutoffs act on j/N. Therefore any norm-convergence or no-pollution proof may be confined to fixed bulk rectangles. A hypothetical spurious eigenvalue bounded away from zero cannot be carried by an endpoint-localized unit vector.

### Consequence for the unbounded physical weights

For the physical scaled contact form use

\[
A_P^2=\operatorname{diag}\frac{P}{2k+2\Delta-1},\qquad
q_P[f]=\langle A_Pf,(I+2M_P)A_Pf\rangle.
\]

Assume the established finite Bose-compression positivity I+2M_P≥0. Choose a lower cutoff ε so that t_P=‖M_P1_{Eε}‖≤1/6 for all sufficiently large P, which (7) permits. Write g=A_P f=u+v, where u is supported in Eε. Stochastic contraction and symmetry give

\[
q_P[f]\ge(1-3t_P)\|u\|^2-(1+4t_P)\|v\|^2
\ge\frac12\|u\|^2-\frac53\|v\|^2.
\]

Since ‖v‖²≤(2ε)^−1‖f‖²,

\[
\boxed{\|A_Pf\|^2\le2q_P[f]+\frac{13}{6\epsilon}\|f\|^2.}
\tag{8}
\]

This is a uniform graph-norm estimate, despite the endpoint-unbounded weights and the middle operator's exact kernel. It still does not establish a positive finite-P gap.

In particular a normalized sequence with q_P[f_P]→0 has bounded g_P=A_Pf_P. Positivity gives ‖(I+2M_P)g_P‖²≤3q_P[f_P]→0. Equation (7) then forces g_P to have negligible endpoint norm. Once the known finite null vector is projected out, any obstruction is a weakly vanishing **bulk** sequence, not an unresolved boundary layer.

The exact unweighted null vector is proportional to λ_k−s_P/3 and converges, after step embedding and normalization, to √5P2. This follows directly from M_P λ=(s_P−λ)/2 and M_P1=1. The inverse weights A_P^−2 converge uniformly to multiplication by 2x, so the physical null direction converges to √(2x)P2 as well.

**What remains missing.** Local Jacobi moments only control smooth input tests. They do not control rapidly oscillating vectors on a bulk rectangle. A bulk collective-compactness estimate, a suitable oscillatory Racah-square estimate, or another no-pollution argument is still required. Neither (7) nor (8) should be advertised as finite spectral convergence.

## 5. Limited useful extension: essential spectrum and one positive bound state

Let H be the self-adjoint operator represented by q, and H0=A², multiplication by 1/(2x). The essential spectrum of H0 is [1/2,∞). Set

\[
S=H_0+I,\qquad D=A S^{-1/2}=(1+2x)^{-1/2}.
\]

Because K is compact, 2DKD is compact. The graph-norm equivalence proved above makes I+2DKD boundedly invertible and positive. The form representation therefore gives

\[
(H+I)^{-1}=S^{-1/2}(I+2DKD)^{-1}S^{-1/2}.
\]

Its difference from (H0+I)^−1 is compact. Weyl's theorem yields

\[
\boxed{\sigma_{\mathrm{ess}}(H)=[1/2,\infty).}
\tag{9}
\]

This is relative form compactness, not the false assertion that A K A is automatically bounded or compact on L².

There is at least one isolated positive eigenvalue below the essential threshold. Take

\[
g=P_6+\frac1{20}P_2,\qquad f=\sqrt{2x}\,g.
\]

The exact integrals are

\[
2\int_0^1xP_2^2dx=\frac14,\quad
2\int_0^1xP_2P_6dx=-\frac1{80},\quad
2\int_0^1xP_6^2dx=\frac{25}{256}.
\]

Thus f is orthogonal to the zero mode and

\[
\|f\|^2=\frac{621}{6400},\qquad q[f]=\frac3{104},\qquad
\frac{q[f]}{\|f\|^2}=\frac{800}{2691}<\frac12.
\]

The min–max principle and (9) imply

\[
\boxed{\frac3{16}\le\lambda_1^+(H)\le\frac{800}{2691}<\frac12,}
\tag{10}
\]

where λ1+ is an isolated positive eigenvalue of finite multiplicity. This independently justifies the existence of a continuum eigenvalue of the kind seen numerically near 0.27758. It does not certify those digits, the number of subthreshold eigenvalues, or any finite-P limiting constant.

### Exact Galerkin convergence within the continuum problem

The map g↦f=A^−1g identifies L² with D(q), and the closedness estimates imply that the q-form norm of f is equivalent to ‖g‖₂. Therefore

\[
\mathcal V_L=\sqrt{2x}\operatorname{span}\{P_0,P_2,\ldots,P_{2L}\}
\]

is a nested form core; the null mode lies in every V_L for L≥1. By min–max, the **exact-arithmetic** first positive Ritz values on these spaces decrease to the actual isolated λ1+(H). Thus the submitted generalized eigenvalue calculation has a mathematically valid convergent Galerkin scheme. The floating-point table alone supplies neither a rigorous discretization-error estimate nor certified eight-digit accuracy. This result is internal to the continuum form and does not establish the finite-P connection.

## 6. Checks and scope

Fresh Sage exact checks were performed in symbolic Δ:

1. Factoring the opposite unnormalized C23 transition coefficients reproduces (1), and the diagonal equals (s_P−λ_k)/2.
2. For m=0,…,6, the limiting fixed-k Jacobi moments at k=0 and k=1 agree with beta moments and the squared degree-one orthonormal polynomial. All exact checks pass.
3. For m=0,…,6, the limiting upper-endpoint moments at r=0 and r=1 agree with gamma(rate 2) moments and squared normalized Laguerre polynomials. All exact checks pass.
4. The closed-form normalization ‖A^−1e‖²=5/4 and the coefficient 56/5 pass exactly.
5. The two-polynomial trial integrals and Rayleigh bound in (10) are exact rational calculations.

The corresponding fresh self-contained algebra is recorded in [continuum_checks.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/submission-referee-20261021.gu7ZA5/continuum_checks.py>). The endpoint norm reduction is an analytic subsequence/Schur-test argument; finite moments are consistency checks, not its proof. No independent second reviewer was available below this delegated depth. The parent review can cross-check the endpoint reduction and extension.

**Not established:** norm convergence of M_P; bulk collective compactness; finite-P spectral convergence to H; a matching finite contact lower bound; certified numerical eigenvalues; any statement uniform in Δ when Δ itself scales with P.
