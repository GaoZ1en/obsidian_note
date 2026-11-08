# Independent full-proof audit of the SC semiclassical and soft-spectrum claims

## Verdict

**The SC-specific arguments close under their stated hypotheses and finite-algebraic interfaces. I found no theorem-level counterexample or unresolved semiclassical limit exchange.** This judgment is based on reconstructed proofs, not on the package's execution manifest. It covers all **17** registered SC identifiers: SC-01–09, SC-11–17, and SC-19. There are no registered SC-10 or SC-18 claims.

The essential distinction survives the audit: the Grassmannian zero atom, the exact kernel, and exponentially small **positive** eigenvalues are different objects. The common restricted Riesz transport and the concentration-operator cutoff genuinely supply the all-vector estimates required by min–max. The three-particle moving-layer theorem includes the uniform estimate that would be missing in a naive shrinking-margin application of the fixed-ratio theorem.

**Dependency boundary:** I take the declared Einstein pair multiplier as input, as requested. I reconstruct its elementary residual bounds here. For SC-02 and its kernel-subtraction consequences I use the all-N kernel Hilbert series EX-01 as an explicit finite-algebraic interface; I do not claim to have independently reproved the all-N logarithmic-arrangement classification in this audit. The counting asymptotics following that series are independently derived below, and the two finite three-particle kernel counts are independently checked. Thus this note cannot by itself certify EX-01 if the separate exact-structure audit rejects that input.

Three local wording corrections are advisable, none requiring a weakened theorem:

1. [SC-A.2][sc-harm]: with the standard Fischer inner product, **squared** norms differ by \(4^P\); norms differ by \(2^P\). The unitary map is \(2^{-P}\mathcal T\).
2. [SC-A.1][sc-transfer]: individual pair Casimirs and arbitrary words do not generally preserve the simultaneous Bose subspace. Replace that explanation by the compressed-trace inequality \(|\operatorname{Tr}(\Pi T)|\leq d_N\|T\|_0\). Permutation-invariant pair sums do preserve it. The claimed trace estimate is unchanged.
3. [SC-C.3][sc-concentration], PDF p. 171: a polynomial prefactor is not eventually bounded by \(e^{-P\delta^2/32}\). The intended valid statement is **prefactor \(\leq e^{+P\delta^2/32}\)**, hence **prefactor times \(e^{-P\delta^2/16}\leq e^{-P\delta^2/32}\)**.

### Claim-by-claim coverage

| ID | Judgment and actual analytic coverage |
|---|---|
| SC-01 | Supported. Harmonic realization, exact resolution, fixed-word trace transfer, metric-correct smoothing, simultaneous Bose projection, dimension normalization, correlated Grassmannian law, absolute continuity, support, and separate edge bounds reconstructed. |
| SC-02 | Supported conditional on EX-01. Weighted-partition error, simplex limit including spline knots, divided-difference formula, and positive-only weak-law identity reconstructed. No moving-window substitution into weak convergence. |
| SC-03 | Supported conditional on SC-02's kernel input. All-r three-particle strict excess proved through the series/curvature argument; fixed-N small-r shared-edge logarithm and the explicit N=4 range reconstructed. No all-r assertion for N≥4 is inferred. |
| SC-04 | Supported conditional on exact kernel subtraction. Exact common transport, coherent Hoeffding tails, concentration rank, all-vector Rayleigh bound, polynomial absorption, and order of limits reconstructed. This is an upper window estimate, not an action asymptotic. |
| SC-05 | Supported in the stated fixed-r regime. Lower count uses a fixed exponential window before the density loss tends to zero; upper count uses a fixed macroscopic window before its width tends to zero. |
| SC-06 | Supported independently of any rate-limit existence. The same support operator compares every ordered positive eigenvalue at two fixed masses by polynomial factors. |
| SC-07 | Supported. The finite group error and finite kernel bound suffice for the stated loss allocation; the condition also implies the tail estimate's finite-size requirement. Both boundary-layer constants and the endpoint β=1/4 checked. |
| SC-08 | Supported in exactly the stated classes. Finite-atom compression obstruction follows from rank/trace-norm bounds; analytic-charge obstruction has the claimed nonzero Poisson Jacobian. No general nonintegrability conclusion. |
| SC-09 | Supported. Full-level spectator count, parity/triangle factor, dimension ratio, balanced absence of an exact residual kernel, and auxiliary zero-mode Hilbert–Schmidt contribution reconstructed. |
| SC-11 | Supported. The symbol is \(B_{ij}^2\), not \(B_{ij}^2/4\); exactly four central sign pairs survive. The squared-norm wording should be clarified. |
| SC-12 | Supported. Collision flags are algebraic and mass independent; one restricted, generally nondiagonal Riesz map transports all good spaces. Exact independent finite tests cover every edge in N=3 and N=4 examples. |
| SC-13 | Supported. All-parameter positive-coefficient certificates and denominator bounds prove the uniform nonzero channel bounds, including the removable exceptional channel. Independently checked by CAS. |
| SC-14 | Supported. Positivity gives a uniform Rayleigh estimate on the entire cutoff range, even though the concentration and support operators need not commute. |
| SC-15 | Supported only with its stated fixed positive regularizer. Beta marginal, mean, and regularized logarithmic determinant derived. No unregularized inverse/determinant limit follows from the weak law alone. |
| SC-16 | Independently verified exactly for both stated finite blocks. A fresh differential-polynomial construction reproduces all six rational inertia triples without importing package code or certificates. |
| SC-17 | Supported. Positive series, tail, derivative identities, endpoint remainder, and numerical values reconstructed. Stable near-endpoint quadrature avoids cancellation. |
| SC-19 | Supported. The measurable-set trace bound is genuinely uniform; the finite triangle count retains the shift 12. Both inequalities supply the needed finite-size control. |

## 1. Sources, conventions, and independence

The reviewed PDF is [Global AdS3 Einstein–Scalar: Complete Finite First-Order Spectra and Their Structures][pdf], dated **19 October 2026**, 190 pages, with PDF and printed pagination identical. Its metadata gives creation/modification on 20 October 2026. The relevant text is Chapter 8, pp. 58–65, and Appendix SC, pp. 163–173. I read all of [Chapter 8][ch8] and [Appendix SC][sc], discovered the other semiclassical files, and extracted the statements and proof locations of every SC record from the [claim register][register]. The [statement-only extraction][claims] deliberately omits earlier audit conclusions and execution-status material. I did not read the previous audit reports or import their implementation.

I visually checked the rendered PDF pages 58, 61, 63, 64, 163, 164, 169, 170, 171, 172, and 173, including the normalization, transport, concentration, boundary-layer, finite-inertia, and Poisson-Jacobian formulas. Source Markdown provides line-level locations; the displayed formulas agree with the checked PDF pages.

Throughout:

- \(N\geq3\) is fixed and finite, \(\Delta>1\) is fixed, \(P\geq Q\), and \(P,Q\to\infty\) with \(Q/P\to r\in(0,1]\), unless the theorem explicitly changes that limit.
- The physical space is \((V_P\otimes V_Q)^{S_N}\), with the **same** permutation on both factors, and with the positive Bargmann form.
- \(V_L=\ker\sum_i\partial_{z_i}\) in homogeneous degree \(L\), and \(\langle z^\alpha,z^\beta\rangle_d=\delta_{\alpha\beta}\prod_i\alpha_i!/(d)_{\alpha_i}\).
- \(A_N=W_N-b_N(Q)I\geq0\), \(b_N=-2N(N-1)\Delta^2-8Q(N\Delta+Q-1)\). Eigenvalues refer to the physical Hermitian problem, not an unweighted coordinate matrix.
- The auxiliary parameter \(d_0=1/2\) is a representation-theoretic device, not a physical mass at which the Einstein multiplier is being assumed.
- These are statements about the coefficient of \(G\) on fixed finite blocks and then limits of those coefficients. No uniform bound on the original perturbative remainder is used or established.

## 2. Coherent symbol and trace law: SC-01, SC-11, SC-15

### 2.1 Exact normalization, not a guessed symbol

For \(\mathcal Tz^\alpha=y^{2\alpha}/\prod_i(1/2)_{\alpha_i}\), the identity

\[
(2a)!=4^a a!(1/2)_a
\]

gives

\[
\|\mathcal Tz^\alpha\|_{\rm Fischer}^2
=4^P\|z^\alpha\|_{1/2}^2.
\]

Direct differentiation identifies total lowering with \(\Delta_y/4\), so primaries become coordinate-even harmonics of degree \(L=2P\). For \(J_{ij}=-i(y_i\partial_j-y_j\partial_i)\),

\[
\mathcal TC_{ij}(1/2)\mathcal T^{-1}=\frac14J_{ij}^2-\frac14.
\]

Let \(\xi=(u+iv)/\sqrt2\), where \(u,v\) are orthonormal. Then \(\xi\cdot\xi=0\), \(\xi^*\xi=1\), and the normalized symmetric traceless tensor \(\psi_L=\xi^{\otimes L}\) has

\[
\int|\psi_L\rangle\langle\psi_L|\,d\mu
=\frac{I_{\mathcal H_L}}{\dim\mathcal H_L}.
\]

This is an exact Schur-resolution identity. Expanding a word in total generators into tensor slots shows that distinct-slot terms give its classical product and repeated-slot terms are \(O(L^{-1})\) after normalization. In particular,

\[
\langle J_{ij}^2\rangle=L^2B_{ij}^2+O(L),
\qquad
\frac{\langle C_{ij}\rangle}{P^2}=B_{ij}^2+O(P^{-1}).
\]

The factor \(L=2P\) cancels the \(1/4\). This fixes the principal symbol independently of any numerical trace fitting.

### 2.2 Why the true Bose projection does not change the Haar law

The group

\[
\mathcal G=((\mathbb Z_2)^N_L\times(\mathbb Z_2)^N_R)\rtimes S_N
\]

has order \(2^{2N}N!\). Its average selects coordinate-even harmonics and simultaneous Bose invariants. Exactly the four independent sign pairs \((\pm I,\pm I)\) contribute at leading order. For any other signed-permutation pair, at least one factor has \(|\xi^*g\xi|<1\) almost everywhere. A fixed inserted generator word changes only finitely many tensor slots; all remaining slots retain the decaying overlap. Dominated convergence therefore eliminates each noncentral term, also with a fixed measurable indicator inserted.

Using \(\dim\mathcal H_{2P}\sim2(2P)^{N-2}/(N-2)!\), the surviving factor is

\[
\frac4{2^{2N}N!}\dim\mathcal H_{2P}\dim\mathcal H_{2Q}
\sim\frac{P^{N-2}Q^{N-2}}{N!((N-2)!)^2}.
\]

Separate Bose projections would instead change the group and dimension; they are not used here.

### 2.3 Mass transfer without a hidden ill-conditioned functional calculus

At fixed auxiliary norm,

\[
C_{ij}(d)-C_{ij}(1/2)
=(d-1/2)(z_i-z_j)(\partial_i-\partial_j)+(d-1/2)^2
\]

has norm \(O(P+1)\), while \(C_{ij}(d)=O((P+1)^2)\). Thus telescoping a **fixed polynomial word** in normalized Casimirs gives \(O(P^{-1}+Q^{-1})\) operator error. Even for a non-Bose-preserving word, compression gives

\[
\left|\frac1{d_N}\operatorname{Tr}(\Pi T)\right|\leq\|T\|_0.
\]

This supplies the trace transfer without multiplying by the growing physical/auxiliary condition number.

The nonsmooth minimum is then approximated uniformly by a fixed bivariate polynomial **separately in each parameter's positive Hilbert metric**. Left and right Casimirs commute there, so the joint functional calculus is legitimate. First take the excitation limit for that fixed polynomial, then let the approximation error vanish; repeat with an outer polynomial and finally the continuous test function. There is no unjustified claim that a nonsmooth functional calculus is stable in the auxiliary norm under the nonunitary mass change.

The declared pair multiplier has

\[
w_e=4\Delta(\Delta-2)-8\min(C_e^L,C_e^R)+R_e,
\qquad \|R_e\|=O_\Delta(1+\min(P,Q)).
\]

The spin-zero and spin-two rational residuals are at most linear in their smaller channel label; the remainder vanishes for spin at least four. Finitely many pairs leave an \(o(P^2)\) error. Therefore the limiting symbols are precisely

\[
h_{N,r}=-8\sum_e\min(X_e,r^2Y_e),
\qquad a_{N,r}=8\sum_e(r^2Y_e-X_e)_+.
\]

### 2.4 Correlations, support, atoms, and edges

Both \(X\) and \(Y\) arise from a single decomposable normalized bivector. The constraints are not just their one-dimensional marginals. For example, with \(D_N=N(N-1)(N+1)(N+2)\), direct star-radius moments give

\[
\mathbb EX_{12}^2=\frac{24}{D_N},\qquad
\mathbb EX_{12}X_{13}=\frac8{D_N},\qquad
\mathbb EX_{12}X_{34}=\frac4{D_N}\quad(N\geq4).
\]

The last identity follows also from \(\sum_eX_e=1\), counting shared and disjoint edges. These are not the products of the marginals. A wrong independent-entry model can reproduce the **mean** of the symbol while giving the wrong variance, support, and atom; the fresh tests below deliberately demonstrate this failure.

The product Grassmannian is connected. Equal generic planes give \(a=0\), and the coordinate planes 12 and 13 give \(a=8r^2\), so the continuous image is the full interval. The comparison walls have Haar measure zero. On each strict sign region,

\[
a=8\left(r^2\sum_{e\in S}Y_e-\sum_{e\in S}X_e\right).
\]

For a proper nonempty \(S\), each subset sum is nonconstant: a coordinate plane on an edge in \(S\) gives one and one outside \(S\) gives zero. Analytic continuation rules out constancy on any open sign region. Its analytic critical set has measure zero; local coarea then implies an absolutely continuous pushforward. The empty \(S\) is the only constant region, and the all-edge violation region is impossible for \(r\leq1\). At balance, \(a=0\) requires \(X=Y\), a measure-zero set. For \(r<1\), equal generic planes have a neighborhood inside the strict zero region, giving \(p_N(r)>0\).

Weak convergence alone does not prove edge convergence. Here positivity and

\[
A_N\leq8Q(Q+N\Delta-1)I+O_{N,\Delta}(P+Q+1)I
\]

prevent outliers beyond the limiting upper endpoint. Full support then forces eigenvalues near both endpoints. Both ingredients are supplied.

### 2.5 Marginal, mean, and regularized determinant

The independent star factors satisfy

\[
R^2\sim\operatorname{Beta}(1,(N-2)/2),\quad
W_1^2\sim\operatorname{Beta}(1/2,(N-2)/2),\quad |B_{12}|=R|W_1|.
\]

Their moments are \(m!(N-2)!/(m+N-2)!\), identifying \(|B_{12}|\sim\operatorname{Beta}(1,N-2)\). For independent copies \(U,V\),

\[
\mathbb E\min(U^2,r^2V^2)
=2\int_0^r t(1-t)^{N-2}(1-t/r)^{N-2}dt.
\]

Multiplication by \(-8\binom N2\) gives the stated terminating hypergeometric mean. At balance the means are \(-4N/(2N-3)\) and \(12(N-2)/(2N-3)\).

For fixed \(s>0\), \(x\mapsto\log(s+x)\) is continuous on the common compact spectral interval. Thus SC-15 follows directly. The positivity and fixedness of \(s\), not merely the existence of a weak law, justify this determinant limit.

## 3. Exact kernel versus scaled zero atom: SC-02, SC-03, SC-17

### 3.1 Counting after the kernel-series interface

Assume EX-01's exact series

\[
\sum_{P,Q}\kappa_N(P,Q)x^Py^Q
=\frac{x^{J_N}}{\prod_{j=2}^N(1-x^j)\prod_{a=1}^{N-1}(1-yx^a)},
\qquad J_N=2N(N-1).
\]

For \(q_N(M)=[x^M]\prod_{j=2}^N(1-x^j)^{-1}\), the pole at one has order \(N-1\) and gives

\[
q_N(M)=\frac{M_+^{N-2}}{N!(N-2)!}+O_N((M_++1)^{N-3}).
\]

All other root-of-unity poles have order at most \(N-2\). Summing over \(m_1+\cdots+m_{N-1}=Q\), with \(M=P-J_N-\sum a m_a\), gives a relative \(O(P^{-1})\)-type error in the fixed-ratio regime. The fixed shift may now be removed at leading order. The normalized lattice simplex tends to \(T\sim\operatorname{Dirichlet}(1,\ldots,1)\), yielding

\[
k_N(r)=\mathbb E\left(1-r\sum_{a=1}^{N-1}aT_a\right)_+^{N-2}.
\]

The integrand is continuous at every knot \(r=1/a\), so no separate limit exchange fails there. Repeated integration of a truncated power gives the stated divided difference. The use of a Dirichlet variable here is a **counting** construction, not an independence assumption for Plücker coordinates.

The exact finite measure identity

\[
\nu_{P,Q}=\frac{\kappa_N}{d_N}\delta_0+
\left(1-\frac{\kappa_N}{d_N}\right)\nu^+_{P,Q}
\]

proves the positive-only weak law. Since \(k_N(r)\leq(1-r)_+^{N-2}<1\), division is harmless. Positivity of the limiting measure, or Portmanteau applied to \(\{0\}\), implies \(p_N\geq k_N\). Nothing here claims convergence of positive eigenvalue counts in a moving interval.

### 3.2 Independent derivation of the three-particle series

For \(N=3\), \(X\sim\operatorname{Dirichlet}(1/2,1/2,1/2)\). Three comparison violations are impossible when \(r<1\), while each has probability \(r/2\). Thus

\[
p_3=1-\frac32r+3q_2.
\]

For the two violated coordinates, the density of their absolute spherical coordinates is \(2/[\pi\sqrt{1-s^2-t^2}]\) on the positive quarter disk. Expand

\[
(1-s^2-t^2)^{-1/2}
=\sum_{a,b\geq0}\frac{(1/2)_{a+b}}{a!b!}s^{2a}t^{2b}
\]

and integrate over \(0<s<r|y_1|\), \(0<t<r|y_2|\). All terms are nonnegative, so Tonelli justifies the exchange. Dirichlet moments cancel \(a!b!\), and

\[
\sum_{a+b=s}\frac1{(2a+1)(2b+1)}
=\frac{H_{s+1}^{\rm odd}}{s+1}
\]

gives exactly

\[
q_2(r)=\frac4{\pi^2}\sum_{s\geq0}
\frac{H_{s+1}^{\rm odd}r^{2s+2}}{(s+1)(2s+1)(2s+3)}.
\]

The printed geometric tail follows from \(H_{s+1}^{\rm odd}/(s+1)\leq1\). Differentiation is justified on compact subintervals of \((0,1)\), and gives

\[
q_2''(r)=\frac{8C(r)}{\pi^2r^3},\qquad
C(r)=\int_0^r\frac{t\operatorname{artanh}t}{1-t^2}dt.
\]

At \(r=1\), the zero chamber has measure zero, hence \(p_3(1)=0\). The derivative endpoint is not an assumption: summation by parts gives

\[
\sum_{s\geq0}\frac{H_{s+1}^{\rm odd}}{(2s+1)(2s+3)}
=\frac12\sum_{s\geq0}\frac1{(2s+1)^2}=\frac{\pi^2}{16},
\]

so \(q_2'(1)=1/2\) and \(p_3'(1)=0\).

For \(r\leq1/2\), \(p_3-k_3=3q_2>0\). For \(r>1/2\), writing \(d=p_3-(1-r)^2/(2r)\),

\[
d''(r)=r^{-3}(24C(r)/\pi^2-1).
\]

Because \(C\) increases strictly to infinity, the curvature changes sign at most once. Integrating backward from \(d(1)=d'(1)=0\) proves positivity on the terminal convex interval; any preceding concave interval lies above the chord joining positive endpoints. This proves the full stated three-particle range, not just sampled ratios.

### 3.3 Endpoint remainder and the moving-layer input

Set \(w=\operatorname{artanh}(1-u)\). An independent primitive is

\[
C(1-u)=\frac{w^2}{2}+w\log(1+e^{-2w})
-\frac12\operatorname{Li}_2(-e^{-2w})-\frac{\pi^2}{24}.
\]

Consequently

\[
C(1-u)=\frac18\log^2(1/u)+O(\log(1/u)).
\]

The derivative identity and the two zero endpoint data imply

\[
p_3(1-\epsilon)
=\int_0^\epsilon(\epsilon-u)p_3''(1-u)du
=\frac{3}{2\pi^2}\epsilon^2\log^2(1/\epsilon)
+O(\epsilon^2\log(1/\epsilon)).
\]

This independently controls the remainder needed by SC-07; it is not an inference from finite near-endpoint values. A further check is that the next logarithmic coefficient is \(3(3/2+\log2)/\pi^2\), explaining the slow convergence seen in endpoint numerics.

### 3.4 The arbitrary-N shared-edge logarithm and its sign

For edges 12 and 13 sharing a particle,

\[
(B_{12},\ldots,B_{1N})=RW,
\quad f_R(R)=(N-2)R(1-R^2)^{(N-4)/2}.
\]

For \(N\geq4\), the absolute two-coordinate density of \(W\) is

\[
\frac{2(N-3)}\pi(1-s^2-t^2)^{(N-5)/2}.
\]

On \(R\geq2r\), the comparison rectangle stays uniformly away from the disk boundary, including \(N=4\) where the full density has a boundary singularity. Its probability is its area times the density at zero plus \(O_N(r^4/R^4)\). The neglected small-radius region and integrated error are both \(O_N(r^2)\). Since

\[
\mathbb E(R^{-2};R\geq2r)=(N-2)\log(1/r)+O_N(1),
\qquad \mathbb E|B'_{12}B'_{13}|=\frac4{\pi N(N-1)},
\]

the intersection probability has exactly the coefficient claimed in SC-03. Merging these two events **before** applying the union bound gives

\[
p_N\geq1-\sum_e\Pr(E_e)+\Pr(E_{12}\cap E_{13}).
\]

Both the first term on the right and \(k_N\) have linear part \(1-N(N-2)r/2\). This proves the positive logarithmic excess with a controlled inequality direction. No truncated inclusion–exclusion assumption is hidden.

For the optional explicit N=4 range, the exact joint density is particularly useful:

\[
f_{|B_{12}|,|B_{13}|}(s,t)
=\frac4\pi\log\frac{1+\sqrt{1-s^2-t^2}}{\sqrt{s^2+t^2}}.
\]

It follows by integrating the uniform \(R^2\) distribution. Scaling the comparison rectangle and bounding its numerator at radius \(r\) produces the manuscript's lower bound. The remaining angular integral is independently reducible to

\[
\int_{[0,1]^3}\log(tu^2+(1-t)v^2)\,dt\,du\,dv
=-2-2\int_0^1\frac{v^2\log v}{1-v^2}dv
=\frac{\pi^2}{4}-4.
\]

Together with \(\mathbb ET=1/3\) and \(\mathbb E(T\log T)=(2\log2-13/6)/3\), this recovers the full constant \(37/12-\pi^2/8\). At \(r=e^{-23}\), the shared-event lower bound divided by \(r^2\) is approximately 3.35706, exceeding the sufficient 143/45. The stated \(r^2/90\) excess is conservative and valid.

## 4. All-vector soft estimates: SC-12, SC-13, SC-14, SC-04–06

### 4.1 Exact flags and one simultaneous transport

In translation-invariant coordinates \(\delta=z_i-z_j\), \(t_a=z_a-(z_i+z_j)/2\),

\[
C_e(d)=(d+\delta\partial_\delta)(d+\delta\partial_\delta-1)
-\frac{\delta^2}{4}\Big(\sum_a\partial_{t_a}\Big)^2.
\]

The distinct diagonal eigenvalues are \((d+k)(d+k-1)\); their differences are nonzero for \(d>0\). Triangular elimination therefore identifies the divisibility flag \(F_e(K)\) with the sum of channels \(k\geq K\). This is an exact finite algebraic identity, not an asymptotic channel matching.

The good space is

\[
Z_e(d)=\sum_{\ell=0}^QF_e^L(\ell+3)\otimes F_e^R(\ell+1)^{\perp_d}.
\]

The threshold \(+3\) becomes \(+4\) on pair-even physical vectors. The left flag does not depend on mass. For the restricted Riesz operator \(M_Q(d)\),

\[
F^{\perp_d}=M_Q(d)^{-1}F^{\perp_0}.
\]

Hence the **same** map \(\mathcal R_d=I\otimes M_Q(d)^{-1}\) carries every \(Z_e(1/2)\) to \(Z_e(d)\). It is simultaneous-Bose equivariant because both Gram forms are permutation invariant. There is no need to find a separate map for each noncommuting pair.

### 4.2 Uniform norm and distance inequalities

For \(b=d-1/2>0\), the ambient monomial form ratio satisfies

\[
m_L=e^{-2Nb}2^{-Nb}(L+1)^{-Nb}\leq
\prod_i\frac{(1/2)_{\alpha_i}}{(d)_{\alpha_i}}\leq1.
\]

Restricting the quadratic-form inequality gives \(m_LI\leq M_L\leq I\), without pretending that the restricted Riesz map is diagonal. Directly,

\[
\|\mathcal R_dv\|_d^2
=\langle v,(M_P\otimes M_Q^{-1})v\rangle_0,
\]

so

\[
m_P\|v\|_0^2\leq\|\mathcal R_dv\|_d^2\leq m_Q^{-1}\|v\|_0^2.
\]

Taking infima over the exactly transported full good spaces proves the same inequalities for squared distances. They hold for **every** vector, not only pair eigenvectors, coherent states, or an arbitrarily selected basis.

### 4.3 All-parameter residual bounds

For spin two the numerator is at least \((n+1)^4\), while each denominator factor is at most \((2d+3)(n+1)\). Thus the residual is at least \((2d+3)^{-3}\). For diagonal \(n\geq1\), the printed polynomial \(U\) satisfies \(U\geq30n^4\), and its denominator is at most \(((2d+3)n)^3\). The exceptional \(n=0\) residual is

\[
a_{00}=\frac{2d^2(2d+5)}{(2d-1)(2d+1)},
\]

regular at \(d=3/2\), and exceeds \((2d+5)/2\). Opposite orientations add \(8(C_\ell-C_k)>0\).

The upper estimates follow from positive-coefficient certificates for the spin-two bound \(8(d+n)\) and the diagonal bound \(8(d+n)+4\). Since the Casimir difference is at most \(8(d+Q)^2\),

\[
a_{\min}\geq(2d+3)^{-3},\qquad a_{\max}\leq20(d+Q)^2.
\]

These are general inequalities, not conclusions extrapolated from finitely many channels. The [independent CAS record][symbolic-result] verifies the polynomial identities and coefficient signs; positivity of the denominator and the elementary factor estimates are part of the analytic argument.

### 4.4 Whole-spectrum comparison

Let \(B_0=\sum_e\Pi_{Z_e(1/2)^\perp}\) on the physical space. Its quadratic form is the sum of squared distances to the good spaces. The residual has the same sum with weights in \([a_{\min},a_{\max}]\). Dividing the distance inequalities by the norm inequalities and applying min–max to every transported trial subspace gives

\[
a_{\min}m_Pm_Q\lambda_j(B_0)
\leq\lambda_j(A_d)
\leq\frac{a_{\max}}{m_Pm_Q}\lambda_j(B_0)
\]

for every ordered index. Intersections of all good spaces are transported exactly, so zero multiplicities coincide. Applying the comparison at two fixed masses yields SC-06 uniformly over all positive indices, including exceptional tiny eigenvalues. The logarithms of the comparison factors are \(O(\log P)\); no lower bound on the eigenvalues of \(B_0\) is needed.

### 4.5 From coherent tails to an entire small-energy subspace

At the auxiliary parameter, \(|J_e|=2k\) on channel \(k\), so the bad projector is the restriction of

\[
R_e=\mathbf1_{\{|J_e^L|-|J_e^R|\leq4\}}.
\]

In a coherent tensor, the measured \(J_e\) is a sum of independent bounded **tensor-slot** variables. This is not independence of different Plücker components. Hoeffding yields

\[
\Pr(|J_e-2PB_e|\geq t)\leq2e^{-t^2/(4P)}.
\]

On \(\Omega_\delta(r)\), if \(|Q/P-r|\leq\delta/4\) and \(P\delta>8\), two deviations of size at most \(P\delta/2\) leave a measured gap larger than four. Because \(Q\leq P\), the union bound gives \(\langle\Psi,R_e\Psi\rangle\leq4e^{-P\delta^2/16}\).

For

\[
C_\Omega=D\int_\Omega\Pi|\Psi\rangle\langle\Psi|\Pi\,d\mu,
\qquad E_\tau=\mathbf1_{[\tau,1]}(C_\Omega),
\]

the exact resolution gives \(0\leq C_\Omega\leq I\), and

\[
\operatorname{rank}E_\tau\geq
\frac{\operatorname{Tr}C_\Omega-\tau d_N}{1-\tau}.
\]

The full sum \(\sum_eR_e\) commutes with the group projection, although an individual pair term need not. Therefore

\[
\operatorname{Tr}(B_0C_\Omega)\leq4\binom N2D e^{-P\delta^2/16}.
\]

Most importantly, \(C_\Omega-\tau E_\tau\geq0\) implies

\[
\tau\operatorname{Tr}(B_0E_\tau)\leq\operatorname{Tr}(B_0C_\Omega),
\qquad
\langle v,B_0v\rangle\leq\operatorname{Tr}(B_0E_\tau)
\]

for every unit \(v\in\operatorname{ran}E_\tau\). Noncommutation of \(B_0\) and \(C_\Omega\) does not obstruct this positive trace inequality. Transport gives the displayed all-vector physical Rayleigh bound. Its prefactor is polynomial for fixed \(\delta,\tau,N,\Delta\), so half the exponent absorbs it.

Min–max counts a whole subspace, then the exact kernel is subtracted. The limit is taken before \(\tau\downarrow0\). The marginal density bound \(N-2\) gives the strip loss \(\binom N2(N-2)\delta\). This proves SC-04 with its constants and density normalization.

### 4.6 Subexponential windows and the order of limits

For a fixed density loss \(\eta>0\), SC-04 supplies an exponential threshold \(e^{-c_\eta P}\). The assumption \(\log t=o(P)\) ensures \(t\geq e^{-c_\eta P}\) eventually. This is the lower count. For the upper count, use \(t/P^2\to0\) to compare with a **fixed** interval \([0,\epsilon]\) in the scaled spectrum, apply SC-02, and only afterward let \(\epsilon\downarrow0\). Finally let \(\eta\downarrow0\). This proves SC-05 without an illicit moving-set use of weak convergence.

## 5. Moving balance layer: SC-07 and SC-19

A general fixed-set dominated-convergence result would not suffice when \(r\) and the chamber margin move. The manuscript supplies a stronger N=3 estimate.

For an even-degree harmonic, a signed permutation acts through a cubic rotation. Every nonidentity such rotation has \(\sin^2(\theta/2)\geq1/2\), and

\[
|\langle\psi_{2P}(n),R\psi_{2P}(n)\rangle|
=\left[1-\sin^2(\theta/2)(1-(n\cdot a)^2)\right]^{2P}.
\]

Its spherical integral is at most \(1/P\). There are 384 group elements and four central pairs. Since

\[
d_3=\frac{(P+1)(Q+1)+3e_Pe_Q+2c_Pc_Q}{6}\geq\frac{PQ}{6},
\quad \frac{D}{d_3}\leq150,
\]

subtracting the volume multiple **inside** each noncentral integral bounds the indicator by \(|\mathbf1_\Omega-\mu(\Omega)|\leq1\). Therefore

\[
\left|\frac{\operatorname{Tr}C_\Omega}{d_3}-\mu(\Omega)\right|
\leq\frac{380}{384}\frac{150}{\min(P,Q)}
<\frac{160}{\min(P,Q)}
\]

uniformly over every measurable set, including a moving one.

When \(P\leq2Q\), the exact kernel series reduces to the finite count

\[
\kappa_3=\#\{a,b\geq0:2a+3b\leq P-Q-12\}.
\]

Unit squares above the admissible lattice points lie inside \(2x+3y\leq P-Q-7\), so \(\kappa_3\leq(P-Q)^2/12\). Hence \(\kappa_3/d_3\leq(1-r)^2/(2r)\). The shift 12 matters in this finite estimate; it was not discarded by an asymptotic substitution.

With \(\mu=p_3-k_3\), \(\delta=\mu/12\), and \(\tau=\mu/8\), the strip, group, and cutoff losses are at most \(\mu/4,\mu/8,\mu/8\). Thus at least \(\mu d_3/2\) eigenvalues remain positive. The assumption \(\mu\geq1280/\min(P,Q)\) also implies \(P\delta>8\), so the coherent-tail finite-size requirement is satisfied, not omitted. The Rayleigh bound becomes

\[
\frac{96Da_{\max}}{\mu m_Pm_Q}e^{-P\mu^2/2304}.
\]

Under \(P\mu^2/\log P\to\infty\), the hypothesis itself bounds \(1/\mu\) polynomially, so the entire prefactor is polynomial and is absorbed by half the exponent. For \(1-r\sim cP^{-\beta}\),

\[
\mu=\left(\frac{3c^2\beta^2}{2\pi^2}+o(1)\right)
P^{-2\beta}\log^2P.
\]

Combining this with \(d_3\sim P^2/6\) gives exactly the printed constants \(c^2\beta^2/(8\pi^2)\) in the count and \(c^4\beta^4/(2048\pi^4)\) in the exponent. At \(\beta=1/4\), \(P\mu^2\asymp\log^4P\), which still dominates \(\log P\). There is no argument here for \(\beta>1/4\) or the exactly balanced microscopic spectrum, and none is claimed.

## 6. Obstructions: SC-08 and SC-09

For SC-08(i), a rank-\(o(d_N)\) difference changes empirical distribution functions by \(o(1)\); a normalized trace-norm \(o(1)\) difference changes bounded-Lipschitz observables by \(o(1)\). With a common compact spectral bound, a sequence with at most a fixed number of atoms has a subsequential limit with at most that number of atoms. This contradicts the absolutely continuous, full-interval balanced law. The conclusion excludes exactly that approximation class.

For SC-08(ii), define \(d_i=x_i^2-z_i^2\) on \(S^2\times rS^2\). A chamber with only \(d_i<0\) is nonempty for each \(i\), and \(h=-8(r^2+d_i)\) there. Global real analyticity extends \(\{F,d_i\}=0\) from that chamber to the connected orbit. Jacobi then gives commutation with

\[
c=\{d_1,d_2\}=4(x_1x_2x_3+z_1z_2z_3),
\]

\[
e=\{d_1,c\}=8[x_1^2(x_3^2-x_2^2)-z_1^2(z_3^2-z_2^2)].
\]

The determinant of the six gradients of \(|x|^2,|z|^2,d_1,d_2,c,e\), at \(z_1=0\), is exactly

\[
-2048x_1^3x_2x_3z_2^2z_3^2,
\]

and at the stated point equals \(-524288r^4/16875\ne0\). Thus the four Hamiltonian fields span the orbit tangent space on an open set; \(F\) is constant there and hence globally. The independent CAS reconstruction agrees, including the sign. Exchange and common rescaling handle \(r>1\). The energy itself is only piecewise analytic and does not contradict this restricted theorem.

For SC-09, with \(M=N-2\), the full-level spectator dimension has leading term

\[
H_M(L-k,L-\ell)\sim
\frac{(L-k)^{M-1}(L-\ell)^{M-1}}{M!((M-1)!)^2}.
\]

The bad-pair domain is asymptotically half of the square, parity gives another factor one half, and the width-two strip is lower order. Hence

\[
d_{\rm aux}\sim\frac{L^{2N-4}}{4((N-2)!)^3},
\qquad \frac{d_{\rm aux}}{d_N}\longrightarrow\frac12\binom N2.
\]

At \(P=Q\), a common good vector would make every \(C_e^L-C_e^R\geq8\Delta+12\), while the sum of these differences is exactly zero by the total-Casimir identity. Such a vector is impossible. The physical residual therefore has full rank, the auxiliary Gram has \(d_{\rm aux}-d_N\) exact zeros, and each contributes one to \(\|T_{\rm norm}-I\|_{\rm HS}^2\). This proves the stated lower bound without any weak-limit inference about a finite nullity.

## 7. Fresh finite and numerical evidence

All Python work used the requested pinned interpreter. No package regression runner or previous certificate was imported.

### 7.1 Exact finite soft certificates: SC-16

The [fresh inertia script][inertia-script] starts from the differential pair Casimir in \((\delta,t)\) coordinates. Its triangular eigenpolynomials determine the transposition \((23)\) through

\[
(\delta,t)\mapsto(\delta/2-t,-3\delta/4-t/2).
\]

Positive diagonal weights are reconstructed from exact self-adjointness of this transposition in the pair-eigenbasis. They are unique up to an overall scalar because every zeroth-row coupling used is nonzero, so this is the physical Gram form up to scale. On pair-even tensors, compression of \(3\Pi_{S_3}\) is \(I+2R_P\otimes R_Q\). Restricting to the bad channel strip gives the auxiliary Gram. Rational Schur congruence then computes inertia with no eigenvalue tolerance.

The [fresh results][inertia-result] are:

| \((P,Q)\) | Shift | Exact \((n_+,n_-,n_0)\) |
|---|---:|---:|
| (16,8) | 0 | (26,0,8) |
| (16,8) | 1/5 | (26,8,0) |
| (16,8) | 1/3 | (25,9,0) |
| (32,16) | 0 | (90,0,8) |
| (32,16) | 1/6000 | (90,8,0) |
| (32,16) | 1/5000 | (89,9,0) |

The physical dimensions are 26 and 94. The finite kernel triangle gives 0 and 4; the auxiliary nullity is 8 in both blocks. Subtracting the auxiliary nullity once gives exactly the two strict brackets in SC-16. Numerical estimates, not used for certification, are approximately 0.2859689784 and 0.000191466445.

### 7.2 Exact common-map stress tests

The [fresh Riesz/flag script][riesz-script] constructs translation-invariant polynomial bases and their restricted physical Gram matrices directly. For every pair edge it compares the exact column spaces of \(\mathcal R_dZ_e(1/2)\) and \(Z_e(d)\). All equalities hold at

- \((N,P,Q,d)=(3,6,3,7/3)\): all three edges, good-space dimension 10;
- \((4,4,2,3/2)\): all six edges, good-space dimension 11.

Both restricted Riesz maps are nondiagonal, making these tests sensitive to the invalid shortcut explicitly excluded by the manuscript. See [exact records][riesz-result]. The tests support the algebraic argument; they do not replace its all-degree proof.

### 7.3 Haar correlations and singular endpoint tests

The [fresh probability script][prob-script] uses actual Gaussian Gram–Schmidt Haar planes, 200,000 independent pairs for each \(N=3,4,6\), seed 20261021. Plücker normalization errors are below \(10^{-15}\), and the four-index Plücker relation is below \(1.3\times10^{-16}\). Sampled means at \(r=0.2,0.5,0.9,1\) agree with the derived formula within ordinary Monte Carlo fluctuations. These are numerical checks, not atom or asymptotic proofs.

The wrong independent-marginal model supplies a useful counterexample to a tempting shortcut: at N=4, r=1 its residual variance is about 11.13 rather than the Haar value about 2.47, and approximately 16.7% of its samples exceed the true upper edge 8. A mean-only comparison would miss this error.

The positive N=3 series independently gives

\[
p_3(1/2)=0.3550126403234545976\ldots,\quad
z_3^+(1/2)=0.1400168537646061302\ldots.
\]

Endpoint quadrature evaluates the stable twice-integrated derivative formula at \(\epsilon=10^{-4},10^{-8},10^{-16},10^{-32}\); its normalized remainder remains bounded on the \(\epsilon^2\log(1/\epsilon)\) scale. The approach of the leading ratio is slow, as predicted by the next logarithmic term. N=4 shared-event QMC, using the exact logarithmic density rather than counting rare events, approaches the independently derived constant 0.2498759772 after subtraction of the leading logarithm. See [full probability results][prob-result]. No numerical absence of rare events is interpreted as zero probability.

### 7.4 Symbolic checks and calculation diagnostics

The [self-contained Wolfram script][symbolic-script] and [result record][symbolic-result] certify the residual polynomial identities, their positive coefficient tests, the exceptional ground-channel differences, the Poisson-Jacobian identity, and the N=4 angular integral. The final record has no Wolfram messages. An initial exploratory version omitted rational cancellation before polynomial coefficient extraction; its nonpolynomial output was identified as a test-construction error and corrected before drawing any claim judgment.

## 8. Inverse moments, determinants, and what remains open

A weak law for bounded continuous functions cannot by itself determine inverse moments or \(\log x\) at zero. This remains true even if the limiting balanced law has no atom at zero: an \(o(d_N)\) family of sufficiently tiny eigenvalues can change a normalized logarithmic determinant substantially while being invisible to weak convergence. The manuscript's restriction to fixed \(s>0\) is therefore necessary and correctly stated. Exact kernel removal alone does not supply uniform integrability.

A separate consequence of **SC-04**, rather than of SC-01 alone, is worth recording. Wherever \(p_N(r)>k_N(r)\), choose a fixed density loss smaller than the excess. A fixed positive fraction of the positive spectrum then lies below \(e^{-cP}\). Together with the uniform upper spectral bound, this implies

\[
\frac1{d_N-\kappa_N}\sum_{\lambda_j>0}\log(\lambda_j/P^2)\longrightarrow-\infty,
\]

and every normalized positive inverse moment of the scaled eigenvalues diverges at least exponentially along an appropriate fixed-density estimate. This does **not** give a finite log-determinant asymptotic, a common tunneling action, or a complete rate distribution. It is a valid additional deduction in the strict-excess regimes, not a correction to the manuscript's more limited regularized-determinant statement.

The genuinely unresolved issues are exactly of a different strength: matching exponential lower bounds; a microscopic action or rate distribution and its tightness; possible superexponential or zero-density families; all-r strict excess for N≥4; the optimal moving balance scale; and the exactly balanced microscopic spectrum. Finite certificates, Monte Carlo, and the coarse all-vector exponential estimate do not settle them.

**Final coverage boundary:** all semiclassical estimates and limit orders used in the 17 SC claims have been analytically reviewed above. General exact-kernel classification EX-01, the physical derivation of the declared pair multiplier, and higher-order or uniform-in-G physics are not independently certified by this note. No original manuscript, previous audit, or unrelated research file was modified.

[pdf]: </Users/koishi/Desktop/todo/ADS3_Einstein_Scalar_Master_Note.pdf>
[ch8]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/semiclassical/chapter8.md>
[sc]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/semiclassical/appendix_sc.md>
[sc-harm]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/semiclassical/appendix_sc.md#L50-L118>
[sc-transfer]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/semiclassical/appendix_sc.md#L7-L48>
[sc-concentration]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/semiclassical/appendix_sc.md#L401-L466>
[register]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/provenance/claim_register.json>
[claims]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/reviews/audit2_sc_claim_statements.json>
[inertia-script]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/audit2_sc_soft_inertia.py>
[inertia-result]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_sc_soft_inertia.json>
[riesz-script]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/audit2_sc_riesz_flags.py>
[riesz-result]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_sc_riesz_flags.json>
[prob-script]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/audit2_sc_probability.py>
[prob-result]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_sc_probability.json>
[symbolic-script]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/audit2_sc_symbolic.wl>
[symbolic-result]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_sc_symbolic.json>
