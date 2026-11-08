# Appendix F. Clebsch–Gordan norms, Racah matrices, and the compiled finite construction

## F.1 A finite binary intertwiner

Let \(A,B\) be normalized or unnormalized lowest-weight vectors of positive weights \(a,b\), annihilated by their lowering operators. Denote raising by \(U_A,U_B\). Their relative-degree-\(m\) lowest vector is

\[
\mathcal C_m(A,B)=\sum_{r=0}^m
\frac{(-1)^r\binom mr}{(2a)_r(2b)_{m-r}}
U_A^rA\otimes U_B^{m-r}B.
\tag{F.1}
\]

To check primarity, use \(D_AU_A^rA=r(2a+r-1)U_A^{r-1}A\). The contribution of the \(r+1\) term from \(D_A\) cancels that of the \(r\) term from \(D_B\), including the two Pochhammer factors. The total weight is \(a+b+m\). Different \(r\) terms are orthogonal because they have different separate \(L_0\) eigenvalues. Therefore

\[
\frac{\|\mathcal C_m(A,B)\|^2}{\|A\|^2\|B\|^2}
=\sum_{r=0}^m\frac{\binom mr^2r!(m-r)!}{(2a)_r(2b)_{m-r}}
=\frac{m!(2a+2b+m-1)_m}{(2a)_m(2b)_m}.
\tag{F.2}
\]

For the last identity, multiply by \((2a)_m(2b)_m/m!\), reverse one Pochhammer using \((c)_{m-r}=(c)_m(-1)^r/(1-c-m)_r\), and sum the resulting terminating binomial identity. This is the finite Chu–Vandermonde identity; it can also be proved by comparing the coefficient of \(t^m\) in \((1-t)^{-u}(1-t)^{-v}\). Thus no infinite-series convergence condition is involved.

For two single-particle factors of weight \(\Delta/2\), (F.1) is \((z_2-z_1)^m\). Replacing it consistently by \((z_1-z_2)^m\) changes a phase but not its norm,

\[
\|(z_1-z_2)^m\|^2=\frac{m!(2\Delta+m-1)_m}{(\Delta)_m^2}.
\tag{F.3}
\]

Equations (F.1)–(F.3), tensor products, and finite raising norms construct every pair–spectator vector in Chapter 5, including its metric. A spectator with primary degrees \((a_L,a_R)\) has weights \(((N-2)\Delta/2+a_L,(N-2)\Delta/2+a_R)\); the remaining coupling degrees are \(P-k-a_L\) and \(Q-\ell-a_R\). Terms with negative coupling degrees are absent. Summing over spectator primaries and these coupling degrees is exactly the full spectator-level count in (5.17).

## F.2 The three-particle Racah matrix, including its metric

At total primary degree \(T\), couple particles \(12\) first, with relative degree \(k\), then particle 3. Let \(E_k\) denote the resulting normalized state in a fixed consistent phase. The exchange of particles 2 and 3 has matrix

\[
\mathcal R_T(k,r)=e_T\sqrt{\omega_k^{(T)}\omega_r^{(T)}}
\,{}_4F_3\!\left(
\begin{matrix}-k,k+2\Delta-1,-r,r+2\Delta-1\\
\Delta,-T,T+3\Delta-1\end{matrix};1\right),
\tag{F.4}
\]

where

\[
e_T=(-1)^T\frac{(\Delta)_T}{(2\Delta)_T},
\quad
\omega_k^{(T)}=
\frac{(T+3\Delta-1)_k(-T)_k(2\Delta-1)_k}
{(1-\Delta-T)_k(2\Delta+T)_k k!}
\frac{2\Delta+2k-1}{2\Delta-1}.
\tag{F.5}
\]

The series ends at \(\min(k,r)\), so every expression is finite. For \(0\le k\le T\), \((-T)_k\) and \((1-\Delta-T)_k\) have the same sign, while all other factors are positive; hence \(\omega_k^{(T)}>0\). Equations (F.4)–(F.5) can be derived without assuming an orthogonality table: expand the two coupled polynomials by (F.1), use the diagonal monomial norm, perform the inner binomial contraction by (F.2), and leave the final terminating sum. Its successive-term ratio is

\[
\frac{(-k+j)(k+2\Delta-1+j)(-r+j)(r+2\Delta-1+j)}
{(\Delta+j)(-T+j)(T+3\Delta-1+j)(j+1)},
\tag{F.6}
\]

with initial term one. This determines the entire finite sum. The endpoint \(k=r=0\) is \(e_T\), also obtained from the endpoint coefficient proof in Appendix G. The norm contractions provide exactly the square roots in (F.4). Thus the matrix is the literal permutation in an orthonormal coupled basis. It is symmetric, squares to the identity, and has the correct permutation relations. Orthogonality alone would not identify which permutation it represents.

For a two-chiral bad-channel index \(\alpha=(k,\ell)\), put \(\Omega_\alpha=\omega_k^{(P)}\omega_\ell^{(Q)}\), \(U=\operatorname{diag}\sqrt\Omega\), and \(D=\operatorname{diag}a_\alpha\). With normalized coupled Bose columns \(S\), a rational coordinate choice is

\[
M_{\rm rat}=U^{-1}(3S^\dagger S)UD,
\quad L=SDU,
\quad A_3L=LM_{\rm rat},
\quad L^\dagger L=\frac13D\Omega M_{\rm rat}.
\tag{F.7}
\]

The terminating sums and the cancellation of square roots make \(M_{\rm rat}\) rational at rational \(\Delta\). Its physical metric is the last expression in (F.7), restricted to its nonzero image. It may have auxiliary zero directions. In contrast, the manifestly Hermitian matrix (5.18) has the ordinary Euclidean eigenvector metric, and its physical reconstruction is (5.19). These two gauges describe the same positive space but do not use the same coordinate normalization.

## F.3 A local rational exchange for arbitrary combs

The all-\(N\) compiler needs the exchange of two equal leaves in \(((a,b)_k,b)\), at total relative degree \(M\), where \(a>0\) is the accumulated common-subtree weight and \(b=\Delta/2>0\) is a leaf weight. Define

\[
\begin{gathered}
\alpha=2a-1,\quad\beta=2b-1,\quad
\gamma=-M-1,\quad\delta_R=2a+2b+M-1,\\
\lambda_r=r(r+2a+2b-1),\quad K_{0r}=1,\quad C_0=0,\\
A_k=\frac{(k+\alpha+1)(k+\alpha+\beta+1)(k+\beta+\delta_R+1)(k+\gamma+1)}
{(2k+\alpha+\beta+1)(2k+\alpha+\beta+2)},\\
C_k=\frac{k(k+\beta)(k+\alpha-\delta_R)(k+\alpha+\beta-\gamma)}
{(2k+\alpha+\beta)(2k+\alpha+\beta+1)},\\
K_{k+1,r}=\frac{(\lambda_r+A_k+C_k)K_{kr}-C_kK_{k-1,r}}{A_k}.
\end{gathered}
\tag{F.8}
\]

Only \(0\le k<M\) is used in the last recurrence. Its denominator is nonzero for the physical weights in the comb. The resulting table equals the terminating polynomial

\[
K_{kr}={}_4F_3\!\left(
\begin{matrix}-k,k+2a+2b-1,-r,r+2a+2b-1\\
2a,-M,M+2a+4b-1\end{matrix};1\right).
\tag{F.9}
\]

Substitution of the finite sum into (F.8), shifting its summation index once, proves the recurrence; its degree-zero initial value fixes the table uniquely. Equivalently, (F.8) is the tridiagonal action of the exchanged intermediate Casimir on binary coupled states. Set

\[
\begin{aligned}
\omega_k={}&\frac{(2a)_k(M+2a+4b-1)_k(-M)_k(2a+2b-1)_k}
{(2b)_k(1-2b-M)_k(M+2a+2b)_k k!}
\frac{2a+2b+2k-1}{2a+2b-1},\\
t_k={}&\frac{(2a+2b)_{2k}}{(2b)_k(2a+2b+M)_k},\qquad
e_M=(-1)^M\frac{(2b)_M}{(2a+2b)_M}.
\end{aligned}
\tag{F.10}
\]

In the unnormalized canonical gauge of (F.1), the exchange matrix is

\[
T_{kr}=(-1)^{k+r}e_M\omega_k\frac{t_r}{t_k}K_{kr}.
\tag{F.11}
\]

Its Gram diagonal is \(g_k=\eta(k;a,b)\eta(M-k;a+b+k,b)\). Direct Pochhammer cancellation gives

\[
t_k^2=\omega_k\frac{g_k}{g_0}.
\tag{F.12}
\]

This identity explains why a real orthogonal Racah change of basis can be implemented with rational entries in a nonorthonormal gauge. To verify (F.11) as an actual exchange, expand the two coupling orders by (F.1), interchange the two leaf variables, and use the norm sum (F.2). The overlap reduces to (F.9); (F.12) converts its orthonormal prefactor to (F.11). This gives a direct finite algebraic derivation, including phases. No assumption about a universal scalar recurrence for the full many-body spectrum is made.

For a left comb \((n_2,\ldots,n_N)\), the successive weights are

\[
h_j=j\Delta/2+\sum_{i=2}^j n_i.
\tag{F.13}
\]

Exchanging leaves \(j,j+1\), \(j\ge2\), affects only the two local labels \(n_j,n_{j+1}\). In (F.8)–(F.11), take \(a=(j-1)\Delta/2+\sum_{i<j}n_i\), \(b=\Delta/2\), and \(M=n_j+n_{j+1}\). The right comb is transformed independently. Particle permutations, however, apply the same exchange to both combs. This is the diagonal Bose action.

## F.4 Projection, independence, and the complexity statement

Let \(e_i\) be the raw comb coordinate vectors, with diagonal physical Gram \(g_i\). Project spectator leaves \(3,\ldots,N\) by the nested cosets (5.21), and retain only allowed bad-pair seeds. If \(H\) is this spectator projector, the Gram of projected raw seeds is \(\Gamma_{ij}=g_i(He_j)_i\). A positive principal minor selects an independent spectator-Bose frame. The final symmetrized columns \(B_i=\Pi_Ne_i\) have \(T_{ij}=c_Ng_i(\Pi_Ne_j)_i\). Formula (5.15) then gives \(M_+\) and metric \(T_{II}/c_N\).

This description proves all three required equivalences. The raw comb is complete by repeated lowest-weight decompositions. The nested cosets are exact group projectors. Positive-Gram column selection removes only linear dependence. The nonzero determinant and state map are therefore independent of coupling-tree coordinates and agree with the direct construction.

For explicit counting, the number of raw bad seeds is

\[
r_0=\sum_{\substack{0\le\ell\le Q\\0\le k\le\min(P,\ell+2)\\k+\ell\ \mathrm{even}}}
\binom{P-k+N-3}{N-3}\binom{Q-\ell+N-3}{N-3}.
\tag{F.14}
\]

Each local table has \(O((M+1)^2)\) entries and can be generated once. Applying the coset words to \(r\) columns entails \(O(N^3(P+Q+2)rD_{\rm labelled})\) elementary arithmetic operations in a dense representation, with the analogous raw-seed term \(O(N^3(P+Q+2)r_0^2)\). Gram contractions and the two column eliminations give \(O(r_0r^2+rR^2+r^3)\). This proves the stated assembly bound for that representation. Root isolation and coefficient bit lengths are not counted by arithmetic operations. More favorable sparse behavior is possible, but is not an all-input theorem.

# Appendix G. Positive pair ordering, the collision gap, and exact equality

## G.1 All-index positivity certificates

Use the cancelled pair coefficients of Chapter 4. For \(n\ge1\), put \(\Delta=1+x,n=1+y\), where \(x>0,y\ge0\). The difference \(g_{n,0}-g_{n,2}\) has denominator \((2\Delta+2n-3)(2\Delta+2n-1)(2\Delta+2n+3)>0\) and numerator

\[
\begin{aligned}
&8x^4+80x^3y+128x^3+156x^2y^2+532x^2y+438x^2\\
&+116xy^3+606xy^2+938xy+448x\\
&+29y^4+202y^3+469y^2+448y+130.
\end{aligned}
\tag{G.1}
\]

Every coefficient is positive. For \(n=0\), the difference is \(c\) in (6.39). The difference \(g_{n,2}-u_n\) is the positive product in the pair formula. Finally, with \(\Delta=1+x,n=y\), the numerator of \(u_n-g_{n+1,0}\), over the positive denominator \((2\Delta+2n-1)(2\Delta+2n+1)(2\Delta+2n+3)\), is

\[
\begin{aligned}
&120x^4+432x^3y+584x^3+608x^2y^2+1632x^2y+950x^2\\
&+392xy^3+1572xy^2+1852xy+628x\\
&+98y^4+524y^3+926y^2+628y+142.
\end{aligned}
\tag{G.2}
\]

This proves the strict order (6.38) for all indices. If only one relative label is nonzero, Bose parity makes it at least two, and the maximum in that set is \(\gamma_{20}\). If both are nonzero, the maximum is \(g_{1,0}\). The exact identity

\[
\gamma_{00}-g_{1,0}-2c=
\frac{8\Delta(14\Delta^3+9\Delta^2-12\Delta-1)}
{(2\Delta-1)(2\Delta+1)(2\Delta+3)}>0
\tag{G.3}
\]

then proves (6.40). Under \(\Delta=1+x\), its numerator is \(112x^4+520x^3+792x^2+464x+80\). Thus the equality list \(00,20,02\) is exhaustive.

These inequalities do not assert negativity of every \(\gamma\). Indeed

\[
\gamma_{00}=-\frac{2\Delta^2(8\Delta^2-2\Delta-7)}{(2\Delta-1)(2\Delta+1)}
\]

is positive for \(1<\Delta<(1+\sqrt{57})/8\), zero at the endpoint, and negative above it. The upper-edge and residual arguments use ordering and differences, so remain valid on the entire physical interval.

For completeness define pair spectral projectors \(Q_n=\sum_{\min(k,\ell)\ge n}\mathsf P_{k\ell}\), \(E_n=\mathsf P_{nn}\), and \(F_n=\mathsf P_{n+2,n}+\mathsf P_{n,n+2}\). The positive telescoping resolution is

\[
\begin{aligned}
\gamma_{00}I-w={}&\sum_{n\ge0}(g_{n,0}-g_{n,2})(Q_n-E_n)\\
&+\sum_{n\ge0}(g_{n,2}-u_n)(Q_n-E_n-F_n)\\
&+\sum_{n\ge0}(u_n-g_{n+1,0})Q_{n+1}.
\end{aligned}
\tag{G.4}
\]

On each finite level these are finite sums. On a channel with minimum \(n\), the terms below that minimum telescope, and the last one or two terms select its spin branch. This proves the identity on every channel. It is not a simultaneous diagonalization of different particle pairs.

## G.2 Pair-zero averaging in the physical Bargmann metric

At pair degree \(T\), the pair-zero line is generated by

\[
\psi_{T,0}=(U_1+U_2)^T1
=\sum_{a+b=T}\binom Ta(\Delta)_a(\Delta)_b z_1^az_2^b,
\quad\|\psi_{T,0}\|^2=T!(2\Delta)_T.
\tag{G.5}
\]

The inner product with any monomial \(z_1^az_2^b\) of total degree \(T\) is \(T!\). Consequently

\[
\mathsf P_{12,0}(z_1^az_2^b)=\frac{\psi_{T,0}}{(2\Delta)_T}.
\tag{G.6}
\]

Equivalently, with \(\zeta=tz_1+(1-t)z_2\),

\[
(\mathsf P_{12,0}f)(z_1,z_2,\ldots)
=\frac1{B(\Delta,\Delta)}\int_0^1t^{\Delta-1}(1-t)^{\Delta-1}
f(\zeta,\zeta,\ldots)\,dt.
\tag{G.7}
\]

Expanding \(\zeta^T\) and using the Beta moments reproduces (G.6). This proves the integral operator with the correct physical Gram. Idempotence also follows by restricting to the diagonal \(z_1=z_2\); self-adjointness follows from (G.5)–(G.6).

## G.3 The labelled three-site estimate, including low-degree rank defects

Let \(F_i^{(T)}\) be the total primary of degree \(T\) in which the other two particles form a zero pair, normalized by spectator coefficient \([z_i^T]F_i^{(T)}=1\). For spectator 3,

\[
F_3^{(T)}=\sum_{r=0}^T(-1)^r\binom Tr
\frac{(U_1+U_2)^r1}{(2\Delta)_r}z_3^{T-r}.
\tag{G.8}
\]

Neighboring-term cancellation proves primarity. Permutation gives the other two vectors with equal norms. The coefficient of \(z_3^T\) in \(F_2^{(T)}\) is \(r_T=(-1)^T(\Delta)_T/(2\Delta)_T\). The pair-zero projector \(\mathsf P_{12,0}\) maps the total primary space into the line spanned by \(F_3^{(T)}\) and preserves that spectator coefficient, so \(\mathsf P_{12,0}F_2^{(T)}=r_TF_3^{(T)}\). Self-adjointness now identifies \(r_T\) as the normalized overlap, including its odd-\(T\) sign.

The three-column Gram has eigenvalues \(1+2r_T\) and \(1-r_T\), the latter twice. Its nonzero eigenvalues are those of \(U_3=\sum\mathsf P_{ij,0}\). At \(T=0\), the columns coincide: the physical \(U_3\) is 3 on a one-dimensional space. At \(T=1\), \(r_1=-1/2\), the symmetric combination vanishes, and \(K_3=3I-U_3\) is \(3/2\) on the two-dimensional labelled primary space. At \(T\ge2\), all three columns are independent; the physical \(K_3\) values on their image are \(2-2r_T\) and \(2+r_T\) twice. The orthogonal complement, if present, has value 3.

Because \(|r_{T+1}|/|r_T|=(\Delta+T)/(2\Delta+T)<1\), the smallest positive value is the symmetric \(T=2\) value \((3\Delta+1)/(2\Delta+1)\). Odd degrees have value at least \(3/2\), which is larger. Descendants carry the same pair projections. This proves the operator inequality on the entire labelled triple, so it can legitimately be tensored with arbitrary spectators.

## G.4 Triangle summation and equality in the Einstein problem

Write \(D_e=I-\mathsf P_{e,0}\) for a pair \(e\), and \(K_T=\sum_{e\subset T}D_e\) for a three-element subset. Expanding squares gives the exact noncommutative identity

\[
K_N^2=\sum_{|T|=3}K_T^2-(N-3)K_N
+\sum_{\substack{e,f\ \mathrm{disjoint}\\ e\ne f\ \mathrm{ordered}}}D_eD_f.
\tag{G.9}
\]

A diagonal \(D_e^2=D_e\) appears \(N-2\) times in the triple sum. Every ordered overlapping pair appears once. The subtraction corrects the diagonal count, and the last sum restores the disjoint products. Those products are positive because the disjoint projectors commute. Combining the triple estimate with \(\sum_TK_T=(N-2)K_N\) proves (6.43).

If \(K_N\Psi=0\), each pair has its minimal Casimir. The sum-of-Casimirs identity then gives total Casimir \((N\Delta/2)(N\Delta/2-1)\). The total primary Casimir \((N\Delta/2+P)(N\Delta/2+P-1)\) is strictly increasing for \(P\ge0\); only the ground primary is possible. Conversely every descendant of the constant is fixed by each pair-zero projector. This proves the complete kernel.

For sharpness, apply (G.7) to \(F_2\). With \(\sigma=(z_i+z_j)/2,\delta=z_i-z_j\), the Beta moments are \(\mathbb E\zeta=\sigma\) and \(\mathbb E\zeta^2=\sigma^2+\delta^2/[4(2\Delta+1)]\). Substitution gives (6.44), and \(\sum_{i<j}(z_i-z_j)^2=NF_2\) gives \(K_NF_2=\lambda_NF_2\).

The two chiral collision operators commute. Equality at the first positive value of their sum permits only a left-excited/right-ground summand or its mirror. Equality in the stronger Einstein comparison forces pair channels \(00,20,02\). In a left primary of degree \(P>0\) with only channels 0 and 2,

\[
K_N^L=\sum_{i<j}\mathsf P_{ij,2}^L
=\frac{P(N\Delta+P-1)}{2(2\Delta+1)}.
\tag{G.10}
\]

Equating this to \(\lambda_N\) forces \(P=2\). The symmetric degree-two primary is one-dimensional. This proves the equality classification, including \(N=2\), where the collision operator alone would have additional equality states that fail the strict Einstein comparison. Finally, every full level contains exactly one descendant of the ground primary and one descendant of each admissible degree-two primary, proving the multiplicity formula in Theorem EX-06.

## G.5 The Gamma–Laguerre primary dictionary and the Markov distinction

Laguerre orthogonality gives

\[
\int_0^\infty L_p^{(\Delta-1)}(x)L_q^{(\Delta-1)}(x)d\nu_\Delta(x)
=\delta_{pq}\frac{(\Delta)_p}{p!}.
\tag{G.11}
\]

This proves unitarity of (6.47). The Laguerre identity \(L_p^{(\Delta-1)}(x)=(\Delta)_p\sum_{r=0}^p(-1)^rx^r/[ (p-r)!(\Delta)_r r!]\) also shows that the tensor transform equals the Fischer transform of \(F(1-z)\). A translation-invariant homogeneous primary satisfies \(F(1-z)=(-1)^PF(z)\), so it becomes a homogeneous polynomial in the \(x_i\). Splitting \(x_i=S\xi_i\) separates the Gamma radial density from the Dirichlet angular density. Raising supplies the radial Laguerre descendants with the stated parameter. Computing the transformed Casimir on monomials gives (6.48); the resulting degree-\(k\) Jacobi polynomial has eigenvalue \(C_k\), fixing the full operator dictionary.

The Beta-binomial moments in (6.52) follow by expanding powers of \(2a-T\) in falling factorials and using \(\mathbb E(a)_{\underline r}=(T)_{\underline r}(\Delta)_r/(2\Delta)_r\). The minimum product of centered squares occurs at opposite extremes. It gives the sharper bound \(-T(2\Delta+3)/[2(T+2\Delta+1)]\) for even \(T\), and \(-(T-1)(2\Delta+3)/[2(T+2\Delta)]\) for odd \(T\). Both imply (6.53). The positive off-diagonal kernel and the zero row sum of \(w-\gamma_{00}I\) prove the stated reversible chiral generator. Its \(N\)-particle stationary law is

\[
\pi_P(p_1,\ldots,p_N)=\frac{P!}{(N\Delta)_P}
\prod_i\frac{(\Delta)_{p_i}}{p_i!},\qquad \sum_ip_i=P.
\tag{G.12}
\]

The global ground-descendant similarity restricts on each pair to its local version; hence the generators add correctly. Bose occupations carry the permutation quotient with its orbit multiplicities.

For the nonchiral counterexample, expand \(X^2Y^2=m^2+m(q(X)+q(Y))+q(X)q(Y)\). The four terms lie in channels \(00,20,02,22\). Their eigenvalues immediately give (6.54)–(6.55). Under \(\Delta=1+x\), the numerator of minus (6.54) is \(120x^3+708x^2+1152x+396\), so strict negativity holds throughout the physical interval. This finite polynomial argument proves failure of the natural cone without a domain limit.

There is a complementary structural explanation. A stationary Markov semigroup has Dirichlet form satisfying

\[
\mathcal E(fg,fg)\le2\|f\|_\infty^2\mathcal E(g,g)
+2\|g\|_\infty^2\mathcal E(f,f).
\tag{G.13}
\]

Expand the difference \(f(x)g(x)-f(y)g(y)\), square, use \((a+b)^2\le2a^2+2b^2\), integrate against the stationary transition measure, and take the derivative at zero to prove (G.13). Even Chebyshev polynomials \(T_{2n}(X),T_{2n}(Y)\) are bounded by one. Their marginal costs remain bounded because the chiral pair values reach a plateau. Their overlaps with any fixed low Jacobi polynomial tend to zero by the cosine integral after \(X=\cos\theta\), while their squared norms tend to \(1/2\). The product therefore places asymptotically positive norm in arbitrarily high mixed channels, where the penalty tends to infinity by (6.38). This contradicts (G.13). It explains the bounded-margin/unbounded-mixed-cost mechanism; the four-channel polynomial already supplies the sharper explicit counterexample.
