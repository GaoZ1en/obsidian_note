# Appendix CL. Proofs of the fixed-degree cluster hierarchy

The finite pair coefficients, the orthogonal primary decomposition, and the exact physical kernel used here are the results of the finite-theory chapters. This appendix proves all subsequent asymptotic and operator statements. Internal source blocks always have the oriented residual \(A_m(p,q)=W_m(p,q)-b_m(q)I\); in particular, no chiral reordering is implicit.

## CL.A. Normalized Clebsch–Gordan maps and the endpoint Racah estimate

### CL.A.1. Polynomial normalization

Let \(D_a^+\) denote the positive discrete series with a unit lowest-weight vector \(v_a\), lowering operator \(L\), raising operator \(R=L^*\), and
\[
LR^rv_a=r(2a+r-1)R^{r-1}v_a,\qquad
\|R^rv_a\|^2=r!(2a)_r.
\]
The scalar particles have \(h=\Delta/2>1/2\). A cluster of \(s\) particles and internal degree \(p\) has lowest weight \(sh+p\). All effective weights appearing below therefore exceed \(1/2\).

For unit lowest-weight vectors \(A,B\) of weights \(a,b\), define
\[
\mathcal C_m(A,B)=
\sum_{r=0}^m(-1)^r\binom mr
\frac{R_A^rA\otimes R_B^{m-r}B}{(2a)_r(2b)_{m-r}}.
\tag{CL.A1}
\]
The two contributions to each coefficient in \((L_A+L_B)\mathcal C_m\) cancel, because their ratio is
\[
\frac{c_{r+1}}{c_r}
=-\frac{(m-r)(2b+m-r-1)}{(r+1)(2a+r)}.
\]
Thus (CL.A1) is a lowest-weight vector. Orthogonality of separate descendant degrees gives
\[
\|\mathcal C_m(A,B)\|^2
=m!\sum_{r=0}^m\binom mr\frac1{(2a)_r(2b)_{m-r}}
=\frac{m!(2a+2b+m-1)_m}{(2a)_m(2b)_m}.
\tag{CL.A2}
\]
The last equality follows by multiplying by \((2b)_m\), using
\((2b)_m/(2b)_{m-r}=(-1)^r(1-2b-m)_r\), and applying the terminating binomial identity
\({}_2F_1(-m,c;d;1)=(d-c)_m/(d)_m\).
Repeated normalized maps yield orthonormal binary coupling bases. They also give
\[
(D_h^+)^{\otimes s}
=\bigoplus_{p\geq0}V_s(p)\otimes D_{sh+p}^+,\qquad
\dim V_s(p)=\binom{p+s-2}{s-2}\quad(s\geq2).
\tag{CL.A3}
\]
Indeed the coefficient of \(x^n\) in \((1-x)^{-s}\) counts all level-\(n\) states, and multiplication by \(1-x\) removes their unique total descendants. For a singleton, \(V_1(0)=\mathbb C\) and all other multiplicity spaces vanish.

### CL.A.2. Exact finite recoupling identity

For three factors of lowest weights \(a,b,c\) and total relative degree \(R\), let \(u\) label the \(a,b\) coupling and \(v\) the \(b,c\) coupling. Choose real phases of the two orthonormal trees so that their Racah overlap is
\[
\begin{split}
F_{uv}^{(a,b,c;R)}
={}&\sqrt{\Omega(u;c,b,a;R)\Omega(v;a,b,c;R)}\\
&\times
\sum_{j=0}^{\min(u,v)}
\frac{(-v)_j(v+2b+2c-1)_j(-u)_j(u+2a+2b-1)_j}
{(2b)_j(R+2a+2b+2c-1)_j(-R)_j\,j!},
\end{split}
\tag{CL.A4}
\]
where
\[
\Omega(n;a,b,c;R)=
\binom Rn
\frac{(2n+2b+2c-1)(2b)_n
(R+2a+2b+2c-1)_n(2a)_{R-n}}
{(2c)_n(2b+2c+n-1)_{R+1}}.
\tag{CL.A5}
\]
Admissibility is \(0\leq u,v\leq R\). The sum terminates before the apparent singularity of \((-R)_j\). Formula (CL.A4) is the normalized one-variable Racah identity, obtained by inserting (CL.A1) twice, summing the shared descendant index, and applying the same terminating binomial identity. Equivalently, it is the orthogonal Racah normalization with parameters \(c_i=2h_i-1\) in [@CrampeEtAl2024, §2, equations (2.2)–(2.5)]. Those equations state the finite hypergeometric identity and weighted orthogonality; (CL.A1)–(CL.A2) identify its Hilbert-space normalization here. A change of tree phases multiplies rows and columns by signs and does not change any estimate below. The physical permutation signs are restored explicitly in CL.I.

For completeness, a reproducible finite identity check requires no recoupling implementation: expand the two trees with (CL.A1), compute their inner product using \(\|R^rv_h\|^2=r!(2h)_r\), divide by (CL.A2) at both vertices, and square. This gives exactly the square of (CL.A4), over the rational numbers for rational weights. The delivered verification scripts perform this check, independently of the original matrix engine. The mathematical input is the all-index terminating identity, not those finitely many checks.

### Lemma CL.A.3. Finite endpoint rectangle

For fixed \(a,b,c>1/2\) and fixed nonnegative \(u,v\),
\[
F_{uv}^{(a,b,c;R)}
=\sqrt{c_u(c,b,a)c_v(a,b,c)}\,R^{-2b}
\bigl(1+O(R^{-1})\bigr),
\tag{CL.A6}
\]
where
\[
c_n(a,b,c)=
\frac{(2n+2b+2c-1)(2b)_n\Gamma(2b+2c+n-1)}
{n!(2c)_n\Gamma(2a)}>0.
\tag{CL.A7}
\]
The estimate is uniform on any fixed finite set of \(u,v,a,b,c\).

**Proof.** In (CL.A4), the \(j=0\) term is one. Each \(j\geq1\) term has denominator of degree \(2j\) in \(R\) and numerator independent of \(R\), hence the finite sum is \(1+O(R^{-2})\). Writing all long Pochhammer symbols in (CL.A5) as Gamma ratios gives
\[
\Omega(n;a,b,c;R)
=c_n(a,b,c)R^{2a-2b-2c}(1+O(R^{-1})).
\]
For example, the factors \(\binom Rn(R+2a+2b+2c-1)_n\) contribute \(R^{2n}/n!\), whereas the long Gamma ratio contributes \(R^{2a-2b-2c-2n}\). The two square-root powers in (CL.A4) add to \(-2b\). Finitely many choices have a common constant and a common large-\(R\) threshold. Enlarging that constant controls all remaining admissible \(R\). ∎

In particular, for three scalar leaves,
\[
|F_{kr}^{(h,h,h;t)}|\leq C_{Q,\Delta}(1+t)^{-\Delta}
\quad(0\leq k,r\leq Q+2).
\tag{CL.A8}
\]
For effective clusters, the exponent is twice the middle effective weight, rather than twice the weight of an arbitrarily chosen leaf.

## CL.B. Gram estimates, atomic measures and descendants

Let \(M=\binom N2\), and let \(F\) be the orthonormal labelled-primary distinguished-pair frame, internally invariant under \(S_2\times S_{N-2}\). Its columns have pair labels in \(\mathcal B_Q\). Averaging \(S_N\) by the possible images of that distinguished pair gives
\[
T:=MF^*p_BF=I+2(N-2)R_1+\binom{N-2}{2}R_0.
\tag{CL.B1}
\]
Here \(R_1\) and \(R_0\) are the compressed representatives of overlapping and disjoint pair exchanges. The finite frame factorization has \(A_N=XX^*\) and \(B=X^*X=D^{1/2}TD^{1/2}\) for \(X=\sqrt M\,p_BFD^{1/2}\). Hence their strictly positive eigenvalues agree, including multiplicities, while their kernels generally do not.

Write \(P_F=FF^*\leq P_{12}^{\rm bad}\). For a unitary pair-exchange representative \(U\),
\[
\|F^*UF\|_{\rm HS}^2
=\operatorname{tr}(P_FUP_FU^*)
\leq\operatorname{tr}(P_{12}^{\rm bad}P_{U(12)}^{\rm bad}).
\tag{CL.B2}
\]
To justify the inequality without commutativity, if \(0\leq X\leq Y\) and \(Z\geq0\), then
\(\operatorname{tr}(XZ)\leq\operatorname{tr}(YZ)\), since
\(\operatorname{tr}((Y-X)Z)=\operatorname{tr}(Z^{1/2}(Y-X)Z^{1/2})\geq0\).
Apply this successively to the two factors.

For disjoint pairs, fixing two pair labels leaves \(N-2\) effective discrete-series factors. By (CL.A3), the upper trace equals
\[
S_0=\sum_{\alpha=(k,\ell),\,\beta=(r,v)\in\mathcal B_Q}
\binom{P-k-r+N-4}{N-4}
\binom{Q-\ell-v+N-4}{N-4}.
\tag{CL.B3}
\]
An inadmissible binomial is zero. The sum is finite at fixed \(Q\), so \(S_0=O(P^{N-4})\).

For overlapping pairs, decompose their three-particle union at degrees \((t,u)\). Put
\[
c_{t,u}=\sum_{\alpha=(k,\ell),\,\beta=(r,v)\in\mathcal B_{t,u}}
|F_{kr}^{(h,h,h;t)}F_{\ell v}^{(h,h,h;u)}|^2,\qquad
\mathcal B_{t,u}=\{(k,\ell)\in\mathcal B_u:k\leq t\}.
\]
The trace is
\[
S_1=\sum_{t=0}^P\sum_{u=0}^Q
\binom{P-t+N-4}{N-4}
\binom{Q-u+N-4}{N-4}c_{t,u}.
\tag{CL.B4}
\]
All right-hand labels lie in a fixed finite set; (CL.A8) gives
\(c_{t,u}=O((1+t)^{-2\Delta})\). This sequence is summable, and bounding the left binomial by \(C(1+P)^{N-4}\) proves \(S_1=O(P^{N-4})\). In particular,
\[
\|B-D\|_{\rm HS}^2
\leq2a_{\max}^2
\left(4(N-2)^2S_1+\binom{N-2}{2}^{\!2}S_0\right).
\tag{CL.B5}
\]
The same reasoning without \(a_{\max}^2\) bounds \(\|T-I\|_{\rm HS}^2\). This proves (CL.3).

A fixed distinguished pair label has exactly
\[
n_{k\ell}(P,Q)=H_{N-2}(P-k,Q-\ell)
\tag{CL.B6}
\]
auxiliary copies, where \(H_m\) is the **full** spectator Bose level dimension. Indeed, each internal spectator primary couples to the distinguished pair with unique nonnegative left and right relative degrees. Summing over those relative degrees telescopes the primary multiplicities to \(H_m\).

The full Bose Molien series is
\[
\sum_{p,q\geq0}H_m(p,q)x^py^q
=\frac1{m!}\sum_{\sigma\in S_m}
\frac1{\det(1-x\sigma)\det(1-y\sigma)}.
\tag{CL.B7}
\]
For fixed \(q\) and \(m=N-2\geq2\), the identity permutation has an \(x=1\) pole of order \(m\), with leading coefficient
\(\binom{q+m-1}{m-1}/m!\). Every other permutation has fewer than \(m\) cycles. At a root of unity other than one, even the largest possible pole has order at most \(m-1\). Partial fractions therefore give
\[
H_m(p,q)=
\frac{\binom{q+m-1}{m-1}}{m!(m-1)!}p^{m-1}
+O(p^{m-2}).
\tag{CL.B8}
\]
Consequently \(d_{\rm aux}\asymp P^{N-3}\), with leading coefficient
\(Z_{N,Q}/((N-2)!(N-3)!)\).

Every zero of \(B\) corresponds, by congruence with invertible \(D^{1/2}\), to a zero of \(T\). Each such zero is an eigenvalue \(-1\) of \(K=T-I\), so
\[
z_{\rm aux}\leq\|K\|_{\rm HS}^2=O(P^{N-4}).
\tag{CL.B9}
\]
Thus the physical positive rank is
\[
\operatorname{rank}A_N(P,Q)
=\frac{Z_{N,Q}}{(N-2)!(N-3)!}P^{N-3}+O(P^{N-4}).
\tag{CL.B10}
\]

For Hermitian matrices \(B,D\) of the same dimension, the Hoffman–Wielandt inequality gives an eigenvalue matching whose total squared displacement is at most \(\|B-D\|_{\rm HS}^2\) [@HoffmanWielandt1953]. Since \(0\leq T\leq MI\), every eigenvalue in this comparison lies in a fixed bounded interval. Dividing by \(d_{\rm aux}\) gives matching cost \(O(P^{-1})\). Removing the \(O(P^{-1})\) fraction of auxiliary zeros, renormalizing the remaining measure, and replacing the exact weights (CL.B6) by their leading ratios each costs at most a fixed squared diameter times \(O(P^{-1})\). The square root gives (CL.2). An eigenvalue farther than \(\varepsilon\) from every atom contributes at least \(\varepsilon^2\) to the matching cost, proving the outlier count.

The physical primary dimension grows as \(P^{N-2}\), with positive leading coefficient from the identity term of the primary Molien series. Equation (CL.B10) is one power smaller. Therefore the entire primary correction measure tends to its baseline atom. Summing those primary dimensions over \(0\leq p\leq M_L\) and \(0\leq q\leq M_R\) gives the weight in (CL.4), using
\[
\sum_{q=0}^{M_R}\binom{q+N-2}{N-2}
=\binom{M_R+N-1}{N-1}.
\]
For nonsaturated descendants, sum (CL.B10) instead. The leading left-degree sum is common to all \(q,k,\ell\), leaving weights proportional to \(\binom{q-\ell+N-3}{N-3}\). Summing the squared matching estimates gives \(O(M_L^{N-3})\) against total positive descendant count \(O(M_L^{N-2})\), hence again a \(W_2\) rate \(O(M_L^{-1/2})\). The finitely many parent blocks with \(p<q\) have no effect on this limit, but their finite spectra still require (CL.1).

As a further consequence, for every fixed \(s>0\),
\[
\frac1{\operatorname{rank}A_N}
\log\det(sI+A_N|_{\operatorname{im}A_N})
\longrightarrow\sum_{\alpha\in\mathcal B_Q}\omega_\alpha\log(s+a_\alpha),
\]
and the normalized resolvent trace tends to
\(\sum_\alpha\omega_\alpha/(s+a_\alpha)\). Both test functions are Lipschitz on the common bounded spectral interval. No \(s=0\) conclusion follows from this argument alone; the four-body zero separation is proved separately in CL.J.

## CL.C. Overlapping clusters, degree cutoffs and the partition join

Work first on the labelled direct sum with global right degree at most \(Q\), using the even-pair extension that is zero on odd \(k+\ell\). Its internally Bose corners are the physical residuals. The local algebra \(\mathcal C_S^{\leq Q}\) acts on internal multiplicities, preserves both total cluster degrees, and is scalar on each descendant representation. Its norm is the supremum of the finite internal matrix norms. The \(c_0\) condition means that these norms tend to zero as the internal left degree tends to infinity. For a singleton the only internal degree is zero.

Let \(E_S(L)\) be the projection onto internal left degree at most \(L\) in \(S\); the right degree is already bounded. If \(X\in\mathcal C_S\), then
\(\|X-XE_S(L)\|\to0\). The same projection can be placed on either side because it is central in the local degree-preserving algebra.

Suppose first that \(S\subseteq T\). Every bounded \(S\)-local operator commutes with the total \(T\) action. If \(Y\in\mathcal C_T\), the product \(XY\) has \(T\)-degree tail bounded by \(\|X\|\) times the tail of \(Y\), so it is in \(\mathcal C_T\). The reversed inclusion is analogous. This handles nested sets.

Now assume that neither \(S\) nor \(T\) contains the other, and set
\[
A=S\setminus T,\qquad C=S\cap T,\qquad B=T\setminus S.
\]
All three sets are nonempty. The separate internal Casimirs of \(A,C,B\) commute with \(E_S(L)\) and \(E_T(M)\): each is nested in or disjoint from the cluster concerned. In a nonzero part of \(E_S(L)E_T(M)\), positivity of the binary coupling degrees forces
\[
p_A\leq L,\qquad p_C\leq\min(L,M),\qquad p_B\leq M.
\tag{CL.C1}
\]
There are therefore only finitely many choices of all three internal degree and multiplicity labels. Fix one choice. Its effective left weights are
\[
a=|A|h+p_A,\qquad c=|C|h+p_C,\qquad b=|B|h+p_B.
\]
In the order \(A,C,B\), the two cutoffs are fixed endpoint ranges
\[
u\leq L-p_A-p_C,\qquad v\leq M-p_C-p_B.
\]
On union degree \(J\), their relative total degree is \(R=J-p_A-p_C-p_B\). Their overlap matrix is a fixed finite rectangle of the Racah matrix \(F^{(a,c,b;R)}\). By CL.A,
\[
\|E_S(L)E_T(M)\|_{J}
\leq C_{L,M,N,Q,\Delta}(1+J)^{-2c}
\leq C_{L,M,N,Q,\Delta}(1+J)^{-|C|\Delta}.
\tag{CL.C2}
\]
The matrix norm is bounded by its finite Frobenius norm. The right chiral factor has bounded degree and finite multiplicity, so it changes only the constant. Taking the maximum over the finitely many labels in (CL.C1) proves (CL.C2) on the entire degree-\(J\) block.

For arbitrary \(X\in\mathcal C_S\), \(Y\in\mathcal C_T\), choose finite cutoffs with
\(\|X-XE_S\|<\varepsilon\) and \(\|Y-E_TY\|<\varepsilon\). Then
\[
XY=XE_SE_TY+\mathcal E,\qquad
\|\mathcal E\|\leq\varepsilon(\|X\|+\|Y\|).
\tag{CL.C3}
\]
The product is covariant under the union action, hence degree-preserving on union internal multiplicities. Its union-degree norm has limsup at most the right side of (CL.C3), by (CL.C2). Letting \(\varepsilon\downarrow0\) proves \(XY\in\mathcal C_{S\cup T}\).

For partitions, multiply their local factors in the given order. Factors on disjoint label sets commute, so one may bring together the successive factors in a connected component of the overlap graph. Whenever two factors overlap, replace their product by a factor on their union using the result just proved. Do not interchange overlapping factors. At the end, the surviving blocks are exactly the blocks of \(\pi\vee\tau\), proving (CL.6). Linear combinations and norm closure preserve this inclusion.

For the one-block partition, global primaries remove the descendant representation, leaving a direct sum of finite matrices indexed by \(P\), with norm tending to zero. Such an operator is compact: truncating at \(P\leq R\) is finite rank and the norm error tends to zero. Conversely, a degree-preserving compact operator has block norms tending to zero, since otherwise unit vectors in distinct degree blocks would give an orthonormal sequence whose images do not tend to zero. This identifies the compact component exactly.

## CL.D. Möbius functional calculus and the whole-block upper bound

For a polynomial \(f(x)=x^r\), expand \(H_\pi^r\) as a sum of ordered words
\(V_{e_1}\cdots V_{e_r}\) in pair residuals. The word occurs precisely for partitions \(\pi\) coarser than the connected-component partition \(\gamma\) of the graph with edges \(e_1,\ldots,e_r\). Its coefficient in (CL.7) is
\[
\sum_{\pi\geq\gamma}\mu(\pi,1_N)
=\begin{cases}1,&\gamma=1_N,\\0,&\gamma\ne1_N.\end{cases}
\tag{CL.D1}
\]
This is the defining finite Möbius identity. Thus only connected words remain. Their local support products lie in the one-block algebra by CL.C. A connected graph on \(N\) vertices needs at least \(N-1\) edges, so the expression is zero for \(r\leq N-2\). The constant polynomial is included by the same identity.

For continuous \(f\), choose polynomials \(p_n\) converging uniformly on a common compact spectral interval \(I\). Continuous functional calculus gives
\[
\|\mathfrak M_N(f)-\mathfrak M_N(p_n)\|
\leq\left(\sum_{\pi\in\Pi_N}|\mu(\pi,1_N)|\right)
\|f-p_n\|_{\infty,I}.
\tag{CL.D2}
\]
The prefactor is finite at fixed \(N\). Since the compact algebra is norm closed, this proves CL-03. For nonreal \(z\), take \(f(x)=(z-x)^{-1}\). For real \(z\) outside the union of the actual cluster spectra, their compactness gives a positive distance from \(z\). Keep the reciprocal formula outside a smaller interval about \(z\), and interpolate continuously inside that interval, which is disjoint from the spectra. The resulting continuous function agrees with the resolvent on every actual spectral value.

For \(|z|>\max_\pi\|H_\pi\|\), expand the resolvents in \(z^{-1}\). The first admissible connected words have \(N-1\) edges; their graphs are spanning trees and their edges are all distinct. There are \(N^{N-2}\) labelled trees, and \((N-1)!\) edge orders. On the labelled ground vector every pair residual is \(a_0\). This proves (CL.8).

To transfer the upper bound to diagonal Bose primaries, let \(Q_\pi\) be the product of the internal Bose projections in all blocks of \(\pi\). Then
\[
Q_\pi p_B=p_B,\qquad [Q_\pi,H_\pi]=0.
\tag{CL.D3}
\]
Hence
\(p_Bf(H_\pi)p_B=p_BQ_\pi f(H_\pi)Q_\pi p_B\).
The restriction of \(H_\pi\) to \(\operatorname{ran}Q_\pi\) is the sum of the actual internally diagonal-Bose cluster residuals, at all admissible actual internal degrees. Its spectrum is contained in the corresponding compact sum of \(\Sigma_{|S|,q_S}\). This is a reducing-space argument, not an identity \(f(pHp)=pf(H)p\) for arbitrary compressions.

Let \(\mathfrak P_{N,Q}\) be the finite union of all proper-partition spectral sums. If a continuous \(f\) vanishes on \(\mathfrak P_{N,Q}\), then every proper-partition term disappears after Bose compression. The remaining term is \(f(A_N)\), and CL-03 shows it is compact on \(\bigoplus_P\mathcal P_N(P,Q)\). Therefore
\[
\|f(A_N(P,Q))\|\longrightarrow0.
\tag{CL.D4}
\]
Choose \(f\) equal to one on any compact spectral window outside \(\mathfrak P_{N,Q}\) and supported away from that set. An eigenvalue in that window would give norm at least one, contradicting (CL.D4) for all large \(P\). A finite covering of the common bounded spectral interval gives the uniform whole-block upper inclusion. No estimate on the dimension of a chosen trial subspace is used.

The pair algebra is finite-support in the Einstein problem, but compactness alone would not imply Schatten estimates. For a general two-body residual with eigenvalues \(v_k=1/\log(k+2)\) on the admissible even channels, the connected resolvent at \(z=2\) has eigenvalues
\[
\frac1{2-v_k}-\frac12=\frac{v_k}{2(2-v_k)}\geq\frac{v_k}{4}.
\]
They tend to zero, so the operator is compact. For every finite \(s>0\), \(\sum_k|v_k|^s=\infty\): eventually \((\log(k+2))^s\leq k\), so the terms dominate a harmonic tail. Thus this compact connected resolvent belongs to no finite Schatten class. The example concerns the implication from an arbitrary \(c_0\) input; it does not negate stronger estimates separately proved for the actual Einstein four-body tail.

### CL.D.1. The physical partition filtration

The same local algebra also gives a precise Bose quotient identity, independently useful for identifying which representations survive. Let
\[
\mathfrak B=\overline{\operatorname{span}\{p_BXp_B:X\in\mathcal C_\pi,\ \pi\in\Pi_N\}},
\qquad
\mathfrak F_k=\overline{\operatorname{span}\{p_BXp_B:|\pi|\leq k\}}.
\]
Expanding the intervening group average in a product and using CL.C shows that each \(\mathfrak F_k\) is a two-sided ideal: every resulting component is supported on a join, whose number of blocks is no larger than that of either factor. The first ideal is the compact degree-preserving physical component.

Fix \(|\pi|=k\). Its stabilizer \(H_\pi\subset S_N\) consists of permutations preserving its unordered blocks, and \(m_\pi=N!/|H_\pi|\) is the orbit size. Let \(Q_\pi\) project onto internal diagonal-Bose states. Compress \(\mathcal C_\pi\) with \(Q_\pi\) and retain its \(H_\pi\)-invariant part, denoted \(\mathfrak K_\pi\). Internal compression and stabilizer averaging do not change \(p_BXp_B\), so these algebras generate the \(k\)-th physical layer.

For \(X,Y\in\mathfrak K_\pi\), expand
\[
(p_BXp_B)(p_BYp_B)
=\frac1{N!}\sum_{g\in S_N}p_BX(gYg^{-1})p_B.
\]
If \(g\notin H_\pi\), the two distinct \(k\)-block partitions have a join with fewer than \(k\) blocks, so that summand lies in \(\mathfrak F_{k-1}\). If \(g\in H_\pi\), invariance of \(Y\) makes the summand \(p_BXYp_B\). Therefore
\[
(p_BXp_B)(p_BYp_B)
\equiv m_\pi^{-1}p_BXYp_B\pmod{\mathfrak F_{k-1}}.
\tag{CL.D5}
\]
It follows that
\[
\Theta_\pi(X)=m_\pi[p_BXp_B]
\]
is a star homomorphism into \(\mathfrak F_k/\mathfrak F_{k-1}\). Distinct partition orbits have zero products in this quotient. The maps can have kernels, including impossible right-budget sectors; they need not be faithful tensor-product representations.

Finally, multiply \(p_BXp_B\) by the full residual. A pair within a block contributes \(H_\pi X\). A cross-block pair joins two blocks and belongs to \(\mathfrak F_{k-1}\). Thus the residual acts in the \(\pi\)-layer by the internally Bose multiplier \(H_\pi\). Quotienting can remove spectral channels but cannot introduce a non-Bose internal representation. This yields an alternative layer proof of the upper inclusion; CL.D's Möbius proof already establishes it without relying on quotient faithfulness.

## CL.E. Binary embeddings, equal-cluster exchange and the recursive set theorem

### CL.E.1. Labelled source maps and Bose normalization

Fix a bipartition \(S\sqcup T=\{1,\ldots,N\}\) of sizes \(a,b\), and a finite orthonormal family of internally Bose eigenstates in
\[
\mathcal P_a(p_1,q_1)\otimes\mathcal P_b(p_2,q_2),
\qquad q_1+q_2\leq Q.
\]
For \(P\geq p_1+p_2\), couple the two cluster primaries with relative degrees
\[
L=P-p_1-p_2,\qquad R=Q-q_1-q_2
\tag{CL.E1}
\]
using normalized (CL.A1) in each chirality. Denote the resulting labelled isometry by \(T_{\pi,P}\). Since cluster residuals commute with the cluster conformal action,
\[
H_\pi T_{\pi,P}=T_{\pi,P}\Lambda,
\tag{CL.E2}
\]
where \(\Lambda\) is the sum of the two source residual eigenvalues. Formula (CL.E2) proves both additivity and the absence of an additional energy from the relative right degree.

Let \(E_\pi\in\mathcal C_\pi\) be the finite internal cutoff containing this family, tensored with all outer descendants. Every cross-cluster pair joins the two blocks, hence
\(V_{ij}E_\pi\in\mathcal C_{1_N}\) by CL.C. Its norm on high global primary degree tends to zero. Summing the finitely many cross pairs gives
\[
\|(A_N-H_\pi)T_{\pi,P}\|=o(1).
\tag{CL.E3}
\]
This statement is uniform on the fixed finite family; it makes no assertion uniform over growing internal degree.

If \(\pi\) and \(\tau\) are different unordered bipartitions, then \(\pi\vee\tau=1_N\). Thus \(E_\pi E_\tau\) is compact, and the overlap of their fixed-family images tends to zero. The same observation applies to the images of one source under permutations not stabilizing its unordered cut.

For unequal sizes, the stabilizer is \(S_a\times S_b\), acting trivially on the internally Bose source. If \(m_\pi=\binom Na\), the group average therefore gives
\[
T_{\pi,P}^*p_BT_{\pi,P}=m_\pi^{-1}I+o(1).
\tag{CL.E4}
\]
For several cut orbits and finite source families, the off-diagonal Gram blocks are \(o(1)\). Consequently the combined map
\(V_P=\bigoplus_{[\pi]}\sqrt{m_\pi}\,p_BT_{\pi,P}\) has
\(V_P^*V_P=I+o(1)\), and
\[
U_P=V_P(V_P^*V_P)^{-1/2}
\tag{CL.E5}
\]
is a well-defined isometry for all sufficiently large \(P\). Since its finite-dimensional inverse-square-root correction tends to \(I\), (CL.E3) yields
\(\|A_NU_P-U_P\Lambda\|=o(1)\).
For any unit eigenvector of \(\Lambda\), the spectral theorem then gives a target eigenvalue within the corresponding residual error of its energy.

### CL.E.2. The exact exchange involution for equal sizes

For \(a=b=m\), the stabilizer also exchanges the two clusters. Swapping two normalized binary factors in (CL.A1) produces \((-1)^L\) in the left sector and \((-1)^R\) in the right sector. On an elementary source tensor of degrees \((p_i,q_i)\), this is
\[
(-1)^{L+R}=(-1)^{P+Q}(-1)^{p_1+q_1+p_2+q_2}.
\]
Define on the full internal source
\[
D|_{\mathcal P_m(p,q)}=(-1)^{p+q}I,\qquad
J=(D\otimes D)\operatorname{Swap}.
\tag{CL.E6}
\]
Then the exact labelled relation is
\[
U_{\rm cluster\ swap}T_{\pi,P}
=(-1)^{P+Q}T_{\pi,P}J.
\tag{CL.E7}
\]
If \(\eta=(-1)^{P+Q}\), Bose projection kills the \(J=-\eta\) sector exactly. On \(J=\eta\), the stabilizer average is the identity and (CL.E4) holds with
\(m_\pi=\frac12\binom{2m}{m}\).

The involution is unitarily conjugate to ordinary exchange:
\[
J=(I\otimes D)\operatorname{Swap}(I\otimes D).
\tag{CL.E8}
\]
The conjugation preserves the additive source Hamiltonian, its degree cutoff, and the right budget, because \(D\) is diagonal in actual degrees. Thus the allowed \(J=\eta\) source has the same spectral and multiplicity data as \(\operatorname{Sym}^2\mathfrak h_{m,Q}\) for \(\eta=+1\) or \(\bigwedge^2\mathfrak h_{m,Q}\) for \(\eta=-1\), restricted to \(q_1+q_2\leq Q\). This proves exactly the state-index rules in (CL.12). It also explains why forming an exterior square of a list of distinct numerical eigenvalues loses legitimate states.

### CL.E.3. Reduction to binary sums

The construction above implies
\[
\Sigma_{a+b,q_1+q_2}\supseteq
\Sigma_{a,q_1}+\Sigma_{b,q_2}.
\tag{CL.E9}
\]
To see this for closure points, first approximate the two summands by actual finite-block eigenvalues, construct their binary images, and then take a diagonal sequence of large total left degrees. For equal sizes choose the even-total-degree subsequence, on which a source can be paired with itself. The definition of \(\Sigma\) includes all left degrees, so this suffices.

Take any proper partition with at least three blocks, together with admissible internal right degrees. Merge blocks into two nonempty groups and apply (CL.E9) repeatedly inside each group. The right budgets add and remain at most \(Q\). Thus every proper-partition sum lies in (CL.10). The reverse inclusion is already a proper bipartition sum. Therefore
\[
\mathfrak P_{N,Q}=\mathfrak C_{N,Q}.
\tag{CL.E10}
\]
The whole-block upper inclusion in CL.D now gives
\[
\sup_{\lambda\in\sigma(A_N(P,Q))}
\operatorname{dist}(\lambda,\mathfrak C_{N,Q})\longrightarrow0.
\tag{CL.E11}
\]

For the lower Hausdorff inclusion on the even-total-degree subsequence, every point of \(\mathfrak C_{N,Q}\) can be approximated by a finite binary source and then by its Bose-coupled images. Given \(\varepsilon>0\), choose a finite \(\varepsilon/3\)-net in the compact set \(\mathfrak C_{N,Q}\). Choose source approximants to all points of that net, and then take the maximum of their finitely many degree thresholds. Every sufficiently large \(P\) of the stated parity has an eigenvalue within \(\varepsilon\) of every point in the limit set. Together with (CL.E11), this proves Hausdorff convergence. For odd \(N\), every bipartition has unequal sizes, so no parity restriction enters and the argument holds for all large \(P\).

For even \(N=2m\), all unequal binary cuts still give \(\mathfrak U_{2m,Q}\) on either subsequence, while CL.E.2 gives exactly \(\mathfrak E_{m,Q}^{\eta}\) from the equal cut. To sharpen the upper inclusion, note that every partition with at least three blocks contains a block of size strictly less than \(m\); merging the other blocks puts its whole sum set in \(\mathfrak U_{2m,Q}\). In the equal-bipartition terms of the Möbius identity, the exact source decomposition (CL.E7) restricts Bose compression to \(J=\eta\). A function vanishing on \(\mathfrak U_{2m,Q}\cup\mathfrak E_{m,Q}^{\eta}\) therefore kills every proper-partition term on that subsequence. The compact remainder again proves (CL.E11) with the smaller parity-specific set. The finite-net argument gives its reverse Hausdorff inclusion.

For \(N=2\), the primary space is one-dimensional exactly when \(P+Q\) is even. Since its residual vanishes for \(P\geq Q+4\), the even-subsequence set limit is \(\{0\}\); the other primary blocks are empty.

Finally, a bounded block-diagonal self-adjoint operator with finite-dimensional blocks has essential spectrum equal to the set of spectral limit points obtained from block indices tending to infinity, counting an eigenvalue appearing in infinitely many blocks as essential. Outside those points, a small window contains only finitely many eigenvalues from finitely many blocks and hence a finite-rank spectral projection. At a limit point, choose unit eigenvectors in distinct blocks; they are orthonormal approximate eigenvectors, so the point is essential. The parity-specific Hausdorff limits just proved imply (CL.11), since the even limit contains every binary sum.

## CL.F. Derived sets and the finite accumulation-depth bound

We record the elementary compact-set facts needed here. If \(K,L\subset\mathbb R\) are compact, then
\[
(K+L)'\subseteq(K'+L)\cup(K+L').
\tag{CL.F1}
\]
Indeed, for distinct sums \(x_n+y_n\to z\), compactness gives a subsequence with \(x_n\to x\), \(y_n\to y\). If neither \(x\) nor \(y\) were a derived point of the corresponding set, both component sequences would be eventually constant, contradicting distinctness of the sums. Applying this argument inductively gives
\[
(K+L)^{(r)}
\subseteq\bigcup_{i+j=r}\bigl(K^{(i)}+L^{(j)}\bigr).
\tag{CL.F2}
\]
Derived sets commute with finite unions; this follows because an infinite distinct sequence in a finite union has an infinite subsequence in one member.

Let \(\widehat\Sigma_N(Q)=\bigcup_{q\leq Q}\Sigma_{N,q}\). A derived point of \(\Sigma_{N,q}\) must involve eigenvalues from unbounded left degree: finitely many finite-dimensional blocks contain only finitely many distinct values. CL.E then implies
\[
\Sigma_{N,q}'\subseteq\mathfrak C_{N,q},\qquad
\widehat\Sigma_N(Q)'
\subseteq
\bigcup_{a=1}^{\lfloor N/2\rfloor}
\bigl(\widehat\Sigma_a(Q)+\widehat\Sigma_{N-a}(Q)\bigr).
\tag{CL.F3}
\]
The relaxed right budget on the right is sufficient for a depth upper bound.

For the Einstein pair residual, \(\widehat\Sigma_2(Q)\) is finite. We prove by induction that
\[
\widehat\Sigma_N(Q)^{(N-2)}\subseteq\widehat\Sigma_2(Q),
\qquad
\widehat\Sigma_N(Q)^{(N-1)}=\varnothing.
\tag{CL.F4}
\]
The case \(N=2\) is immediate. Differentiate (CL.F3) another \(N-3\) times. A singleton split contributes
\(\widehat\Sigma_{N-1}(Q)^{(N-3)}\), which is contained in \(\widehat\Sigma_2(Q)\) by induction. For a split \(a,b\geq2\), every term in (CL.F2) with \(i+j=N-3=a+b-3\) has either \(i\geq a-1\) or \(j\geq b-1\); otherwise the sum would be at most \(a+b-4\). The corresponding factor is empty by induction, so these terms vanish. This proves the first inclusion in (CL.F4), and its derivative is empty because the right side is finite. Since \(\Sigma_{N,Q}\subseteq\widehat\Sigma_N(Q)\), (CL.15) follows.

For a general \(c_0\) pair tail, the pair spectrum is a null sequence with finite multiplicities per internal block, so \(\widehat\Sigma_2(Q)'\subseteq\{0\}\) and its second derivative is empty. The same induction, shifted by one, gives
\(\widehat\Sigma_N(Q)^{(N-1)}\subseteq\{0\}\) and
\(\widehat\Sigma_N(Q)^{(N)}=\varnothing\).

A compact subset of \(\mathbb R\) with an empty finite derived set is countable. To verify this directly, each difference \(K^{(j)}\setminus K^{(j+1)}\) consists of isolated points of \(K^{(j)}\); assigning a rational open interval that isolates each point shows that layer is countable. There are finitely many layers. A nonempty perfect subset would survive every derivative, and an interval contains such a subset, so neither is possible.

## CL.G. Regular source finiteness and exact eventual projector ranks

Fix \(\lambda\in\mathfrak C_{N,Q}\setminus\mathfrak F_{N,Q}\), \(N\geq3\). The finer set is compact: it is a finite union of sums of compact sets with a finite degree budget. Choose a compact interval \(J\) around \(\lambda\) disjoint from \(\mathfrak F_{N,Q}\).

For a binary size split \(a+b=N\), consider the internally Bose source Hilbert space
\[
\mathfrak h_{a,b;Q}
=\bigoplus_{\substack{p_1,p_2\geq0\\q_1+q_2\leq Q}}
\mathcal P_a(p_1,q_1)\otimes\mathcal P_b(p_2,q_2)
\]
and its bounded additive Hamiltonian
\(L_{a,b}=A_a\otimes I+I\otimes A_b\).

### CL.G.1. Why the local source is finite

Suppose the spectral subspace \(\mathbf1_J(L_{a,b})\mathfrak h_{a,b;Q}\) were infinite-dimensional. Choose orthonormal source eigenvectors in infinitely many degree blocks, with source energies \(\alpha_n+\beta_n\in J\). The finite right budget permits a subsequence with fixed \(q_1,q_2\). Each fixed pair of left degrees has finite dimension, so at least one of \(p_{1,n},p_{2,n}\) tends to infinity along a subsequence. Both energies lie in bounded intervals, so refine the subsequence to \(\alpha_n\to\alpha\), \(\beta_n\to\beta\), with \(\alpha+\beta\in J\).

A singleton cannot have unbounded internal degree. Thus the unbounded side has at least two particles, and its high-degree upper theorem splits its limit energy into a proper lower-particle cluster sum. Adding the other binary cluster produces at least three clusters, with right budget at most \(Q\). Therefore \(\alpha+\beta\in\mathfrak F_{N,Q}\), contradicting the choice of \(J\). This proof also excludes infinitely many distinct internal states with the same numerical sum: their degrees would still become unbounded. It proves a finite source space, not just local discreteness of a set of values.

There are finitely many size splits. Thus their source spectra in \(J\) contain only finitely many values. Since \(\lambda\) lies in the closure of binary sums, it is actually one of those values and is isolated in \(\mathfrak C_{N,Q}\). Shrink \(J\) so that it contains no other binary sum value. All source states contributing \(\lambda\) have bounded actual degrees.

### CL.G.2. From the connected identity to the target projection

Choose a continuous function \(f\) equal to one on a smaller interval about \(\lambda\), supported in \(J\), and vanishing on the rest of the binary spectrum. On an internally Bose binary source, \(f(H_\pi)\) is exactly its internal energy-\(\lambda\) projection \(E_\pi\), tensored with outer descendants. It has finite internal support by CL.G.1. On every partition with three or more blocks, the compressed term vanishes because \(J\cap\mathfrak F_{N,Q}=\varnothing\).

The Möbius coefficients are \(+1\) for one block and \(-1\) for two blocks. Compressing (CL.7) therefore gives, on the whole degree-\((P,Q)\) physical block,
\[
f(A_N(P,Q))
=\sum_{|\pi|=2}p_BE_\pi p_B+o_{\mathrm{op}}(1)
=\sum_{[\pi]}m_\pi p_BE_\pi p_B+o_{\mathrm{op}}(1).
\tag{CL.G1}
\]
The last sum has one representative per unordered size orbit, with
\(m_\pi=\binom Na\) for \(a<b\) and
\(m_\pi=\frac12\binom{2m}{m}\) for equal sizes. The factor counts labelled cuts only in this intermediate operator identity.

Let \(T_{\pi,P}\) be an isometry from the finite energy-\(\lambda\) source onto \(E_\pi\) in degree \((P,Q)\); for equal sizes retain the allowed \(J=(-1)^{P+Q}\) sector. The forbidden sector has zero Bose image exactly by (CL.E7). With
\[
V_{\pi,P}=\sqrt{m_\pi}\,p_BT_{\pi,P},\qquad
V_P=\bigl(V_{\pi,P}\bigr)_{[\pi]},
\]
the main sum in (CL.G1) is \(V_PV_P^*\). CL.E gives
\(V_P^*V_P=I+o(1)\). Its polar isometry
\(U_P=V_P(V_P^*V_P)^{-1/2}\) defines an orthogonal projection
\[
R_P=U_PU_P^*,\qquad
\operatorname{rank}R_P=\dim(\text{allowed binary source}).
\tag{CL.G2}
\]
Writing \(V_P=U_P(V_P^*V_P)^{1/2}\) yields
\[
\|V_PV_P^*-R_P\|=\|V_P^*V_P-I\|\longrightarrow0.
\tag{CL.G3}
\]
Thus \(\|f(A_N(P,Q))-R_P\|\to0\) on the entire target block.

Choose the constant part and support of \(f\) so that their transition intervals avoid the limiting spectral set. The high-degree upper theorem excludes target eigenvalues in those transition intervals for all sufficiently large \(P\). Therefore \(f(A_N(P,Q))\) is then exactly the spectral projector of the fixed small window about \(\lambda\). Once its distance to \(R_P\) is less than one, their ranks agree: if a vector in the range of one projection is killed by the other, the norm distance would be at least one; applying this to both ranges gives injections in both directions. This proves exact eventual equality, not only a lower bound.

The same upper theorem implies that all eigenvalues in the fixed window converge to \(\lambda\). The proof gives the quantifiers \(P_0(\varepsilon)\) for each fixed sufficiently small window. It supplies no uniform bound for a window shrinking with \(P\).

### CL.G.3. Counting the allowed source

For \(a<b\), each source tensor contributes its product multiplicity, giving (CL.17). There is one binary coupling in each chirality at the fixed relative degrees (CL.E1); no multiplicity comes from unused right budget.

For \(a=b=m\), let \(K\) be the dimension of the ordered energy-\(\lambda\) source. The allowed eigenspace of \(J\) has dimension
\[
\frac12(K+\eta\,\operatorname{tr}J).
\]
In a degree-labelled orthonormal eigenbasis, a tensor \(e_i\otimes e_j\) contributes to the trace only for \(i=j\). For such a tensor, the degree twist is
\((-1)^{2(p_i+q_i)}=1\). It has energy \(2\lambda_i\) and budget \(2q_i\leq Q\). Hence
\[
\operatorname{tr}J
=\sum_{\substack{p\geq0\\2q\leq Q}}
\operatorname{mult}_{A_m(p,q)}(\lambda/2)=T_{m,Q}(\lambda).
\tag{CL.G4}
\]
This proves (CL.18) and (CL.19). The factors \(m_\pi\) were absorbed by normalizing the Gram maps; multiplying the final source dimension by a binomial coefficient would count permutations of the same Bose cluster state repeatedly.

## CL.H. Singleton inheritance, the chiral maximum and the compactness obstruction

For a finite family of \((N-1)\)-body eigenstates with \(q_i\leq Q\), let \(T_P\) be their labelled coupling to a singleton at the degrees in (CL.E1). A cross pair consists of the singleton and one internal particle. In the overlap proof CL.C its common cluster with the \((N-1)\)-particle source is one leaf, so the endpoint exponent is \(\Delta\). Since there are finitely many source labels and bad pair channels,
\[
\|(A_N-H_{(N-1)|1})T_P\|=O(P^{-\Delta}).
\tag{CL.H1}
\]
A permutation exchanging the singleton with an internal particle compares two \((N-1)\)-particle clusters with \(N-2\) common leaves. CL.C therefore gives
\[
(\sqrt N\,p_BT_P)^*(\sqrt N\,p_BT_P)
=I+O(P^{-(N-2)\Delta}).
\tag{CL.H2}
\]
For \(N\geq3\), the polar correction changes the finite-family map by \(O(P^{-(N-2)\Delta})\), which is no larger than the residual error in (CL.H1). Since all residual Hamiltonians are uniformly bounded, this proves (CL.21).

There is also an explicit normalization for the chiral ground-cluster source. Couple the unique ground state of \(N-1\) particles to a singleton with left relative degree \(P\). Its squared Bose-projected norm is
\[
g_P=\|p_BT_P\|^2
=\frac{1+(N-1)(-1)^P\,(\Delta)_P/((N-1)\Delta)_P}{N}.
\tag{CL.H3}
\]
To obtain the overlap in (CL.H3), expand the binary ground coupling by (CL.A1) and exchange the singleton with one leaf. The terminating binomial sum gives
\((-1)^P(\Delta)_P/((N-1)\Delta)_P\). The group average has one unchanged singleton placement and \(N-1\) exchanged placements, yielding (CL.H3). At \(P=0\) it is one; at \(P=1\) it is zero, consistent with the absence of a first-degree Bose primary. For \(P\geq2\), it is positive: the ratio at \(P=1\) is \(1/(N-1)\) and decreases strictly thereafter. It tends to \(1/N\).

For this source, the cross-pair endpoint is
\(F_{0k}^{((N-2)h,h,h;P)}\), \(k=0,2\). CL.A gives
\[
F_{0k}^{((N-2)h,h,h;P)}
=C_kP^{-\Delta}(1+O(P^{-1})),
\]
with
\[
C_k^2=
\frac{\Gamma((N-1)\Delta)}{\Gamma(\Delta)}
\frac{(2k+2\Delta-1)\Gamma(2\Delta+k-1)}
{k!\Gamma((N-2)\Delta)}.
\tag{CL.H4}
\]
The norm of a sum of the \(N-1\) cross-pair terms is bounded by their number times the largest sum-of-squares estimate, so the normalized squared residual is bounded by a constant times
\[
\frac{(N-1)^2}{g_P}
\sum_{k=0,2}a_k^2|F_{0k}^{((N-2)h,h,h;P)}|^2
=O(P^{-2\Delta}).
\tag{CL.H5}
\]
No nonzero leading coefficient of the eigenvalue shift is asserted.

For the chiral maximum, \(0\leq V_{ij}\leq a_0I\). Equality in
\(A_m\leq\binom m2a_0I\) forces every nonnegative pair deficit \(a_0I-V_{ij}\) to annihilate the vector, hence every pair is in channel \(k=0\), since \(a_2<a_0\). Let \(C_S\) denote the \(\mathfrak{sl}(2)\) Casimir of a set of leaves. The Lie-algebra expansion of the quadratic Casimir gives
\[
\sum_{i<j}C_{ij}=C_{\rm total}+(m-2)\sum_iC_i.
\tag{CL.H6}
\]
Here \(C_i=h(h-1)\), \(C_{\rm total}=(mh+p)(mh+p-1)\), and pair channel zero has \(C_{ij}=2h(2h-1)\). Subtracting the \(p=0\) identity from (CL.H6) gives
\[
p(m\Delta+p-1)=0.
\]
Since \(\Delta>1\), \(p=0\), whose Bose primary is unique.

This finite-block equality argument must be supplemented before using the closed set \(\Sigma_{m,0}\). The high-degree upper theorem bounds every high-degree limit by
\[
\max_{1\leq a\leq m-1}
\left\{\binom a2+\binom{m-a}{2}\right\}a_0
=\binom{m-1}{2}a_0
<\binom m2a_0.
\tag{CL.H7}
\]
Thus no sequence with internal degree tending to infinity approaches the full \(m\)-body endpoint. It follows that its only source at the endpoint is the finite \(p=0\) state.

For \(N\) particles, the largest binary sum is
\(\lambda_{\rm top}=\binom{N-1}{2}a_0\), attained only by the unequal split \(1+(N-1)\) and its ground source. Every sum with at least three clusters is at most
\(\binom{N-2}{2}a_0\), a gap \((N-2)a_0\) below. Hence \(\lambda_{\rm top}\) is regular, and CL.G gives an eventual rank-one spectral window on both parities. The global upper theorem and compactness of the limiting set separate that window from all other high-degree eigenvalues, so its unique eigenvalue is the maximum. The residual estimate (CL.H5) places it within \(O(P^{-\Delta})\) of \(\lambda_{\rm top}\), proving CL-07. The conclusion is eventual; it makes no simplicity assertion at small \(P\).

For multiplicity proliferation, fix a positive eigenvalue \(\lambda\) in a finite \(m\)-body block and an interval about it. Apply the singleton construction first to \(m+1\) particles at infinitely many distinct large internal left degrees. Choose any prescribed number \(K\) of those mutually orthogonal primary source states, all with energies sufficiently close to \(\lambda\). Apply the finite-family singleton construction to this fixed \(K\)-dimensional family. For all sufficiently large final \(P\), the \(m+2\)-particle Hamiltonian has at least \(K\) eigenvalues in the original interval: the images are isometric and the spectral projection onto the interval is injective on them once the residual is smaller than the distance to its boundary. Additional singleton insertions preserve this conclusion. The right degree can be increased to any fixed \(Q\geq q\) by assigning the unused right degree to the final relative coupling. Since \(K\) was arbitrary, the local count tends to infinity. Choosing \(K\) before the final large-\(P\) limit is essential; there is no uniform rate in \(K\).

In particular, the three-body ground eigenvalue is \(3a_0\). For every \(N\geq5\), it gives an unbounded number of chiral positive eigenvalues in a small interval strictly above \(a_0\). Suppose (CL.22) held. Choose \(\delta>0\) so that the interval lies above \(a_0+3\delta\), and take \(P\) with \(\|E_P\|<\delta\). On its target spectral subspace \(\mathcal L_P\),
\[
\langle x,K_Px\rangle
=\langle x,(A_N^+-D_P-E_P)x\rangle
\geq2\delta\|x\|^2.
\]
The min–max principle gives at least \(\dim\mathcal L_P\) eigenvalues of \(K_P\) at least \(2\delta\), hence that many singular values above \(\delta\). This contradicts uniform compactness because \(\dim\mathcal L_P\to\infty\). This proves the stated obstruction and no broader impossibility theorem.

## CL.I. Exact four-body recoupling and the finite-section comparison

### CL.I.1. Pair-pair and triple coupling bases

A distinguished-pair frame for four particles consists of normalized states
\[
F_{k,\ell;a,b}^{P,Q}
=\bigl((12)_k(34)_a\bigr)_P^L
 \otimes\bigl((12)_\ell(34)_b\bigr)_Q^R,
\tag{CL.I1}
\]
where \(\alpha=(k,\ell)\in\mathcal B_Q\), the spectator pair obeys \(a+b\) even, and \(k+a\leq P,\ell+b\leq Q\). With the prescribed real tree phases, exchanging the two pairs gives
\[
R_0F_{\alpha;\beta}^{P,Q}
=\epsilon F_{\beta;\alpha}^{P,Q},\qquad
\epsilon=(-1)^{P+Q},
\tag{CL.I2}
\]
when \(\beta=(a,b)\) is also bad, and its compression vanishes otherwise. The apparent extra phase from the relative degrees is
\((-1)^{k+\ell+a+b}=1\) by pair Bose parity.

For \(\alpha\ne\beta\), the diagonal-plus-exchange block is
\[
\begin{pmatrix}
a_\alpha&\epsilon\sqrt{a_\alpha a_\beta}\\
\epsilon\sqrt{a_\alpha a_\beta}&a_\beta
\end{pmatrix},
\tag{CL.I3}
\]
with characteristic polynomial \(x(x-a_\alpha-a_\beta)\). For a repeated label it is \((1+\epsilon)a_\alpha\). Thus each allowed unordered pair has one positive sum; the repeated-label sum occurs only for \(\epsilon=+1\).

For clarity, the exact overlapping-pair matrix can be computed without a four-body quadrature. In one chirality, insert the basis that couples particles \(1,2,3\) first:
\[
\begin{split}
R_1^P(k,a;r,c)
=\sum_{t=\max(k,r)}^P
&F_{t-k,a}^{(\Delta+k,h,h;P-k)}
(-1)^{t+k+r}F_{kr}^{(h,h,h;t)}\\
&\times F_{t-r,c}^{(\Delta+r,h,h;P-r)}.
\end{split}
\tag{CL.I4}
\]
The first and last coefficients change the pair-pair tree to the triple tree; in the triple tree, the leaf transposition has the middle Racah coefficient and the displayed exchange phase. This follows by applying (CL.A1) to interchange the two factors at the affected binary vertex. The right chiral entry is the same expression with \((P,k,a,r,c)\) replaced by \((Q,\ell,b,v,d)\), and the full entry is their product. Thus (CL.I4) is a finite sum identity for every admissible degree, not an asymptotic formula. It is also the appropriate recoupling structure behind the Racah-type nine-\(j\) kernel; replacing it by a product of two independent one-variable polynomials would omit the shared triple sum.

It is advantageous for limits to enlarge the auxiliary space to \(\mathcal X_{P,Q}\), which imposes Bose parity on pair \(12\) but leaves particles \(3,4\) unsymmetrized. Its triple basis is indexed by \((t,u;\alpha)\), \(0\leq t\leq P\), \(0\leq u\leq Q\), \(\alpha\in\mathcal B_{t,u}\). Let
\[
J_P=U_{34},\qquad H_P=\frac{I+J_P}{2}.
\]
The physical distinguished-pair frame is \(\operatorname{ran}H_P\). Since \(U_{34}\) leaves pair \(12\) unchanged, \([H_P,D]=0\).

On the enlarged space the compression of \(U_{23}\) is block diagonal in \((t,u)\):
\[
R=\bigoplus_{t,u}R_{3;t,u},\qquad
(R_{3;t,u})_{\alpha\beta}
=(-1)^{t+u+k+\ell+r+v}
F_{kr}^{(h,h,h;t)}F_{\ell v}^{(h,h,h;u)}.
\tag{CL.I5}
\]
The bad pair parities reduce the sign to \((-1)^{t+u}\), but retaining the full expression tracks the tree convention. The three-body auxiliary matrix is
\[
A_{3;t,u}^{\rm aux}
=D_{t,u}^{1/2}(I+2R_{3;t,u})D_{t,u}^{1/2}.
\tag{CL.I6}
\]
The factor two counts the two overlapping pair images in a three-particle Bose average. Its positive spectrum is exactly that of \(A_3(t,u)=W_3(t,u)-b_3(u)I\); zeros are Gram dependencies.

Since \(|\mathcal B_{t,u}|\) is bounded at fixed \(Q\), CL.A gives
\[
\|R_{3;t,u}\|=O((1+t)^{-\Delta}),\qquad
\sum_{t\geq0}\sum_{u=0}^Q\|R_{3;t,u}\|_1<\infty.
\tag{CL.I7}
\]
The finite right matrices affect only constants. If \(W_P\) is the isometric inclusion of the finite ordered bad-pair-pair sector, and
\(K_{22}^\epsilon=D_{22}^{1/2}(\epsilon\operatorname{Swap})D_{22}^{1/2}\), the exact four-body formula on \(\operatorname{ran}H_P\) is
\[
B_{P,Q}
=D+4H_PD^{1/2}RD^{1/2}H_P+W_PK_{22}^{\epsilon}W_P^*.
\tag{CL.I8}
\]

### CL.I.2. Uniform finite-section separation

Fix a triple cutoff \(T\), and let \(E_T\) project onto \(t\leq T,u\leq Q\) in the enlarged space. It has a fixed finite dimension for all \(P\geq T\). Its overlap with its spectator-swapped copy satisfies
\[
\|E_TJ_PE_T\|\longrightarrow0.
\tag{CL.I9}
\]
Indeed, with the distinguished pair label \(k\) fixed, exchanging particles \(3,4\) compares two trees whose common effective cluster is pair \(12\), of weight \(\Delta+k\). CL.A gives the finite-rectangle rate \(O(P^{-2\Delta-2k})\). This is convergence of fixed sections, not operator-norm convergence \(J_P\to0\); \(J_P\) is an involution.

The overlap of a fixed triple section with the fixed bad-pair-pair section is \(O(P^{-\Delta})\), by the outer Racah coefficient in (CL.I4), whose middle factor is a single scalar. Therefore
\[
V_{P,T}=\sqrt2\,H_PE_T,\qquad
Y_{P,T}=(V_{P,T},W_P)
\]
obeys
\[
Y_{P,T}^*Y_{P,T}=I+o_{P,T}(1).
\tag{CL.I10}
\]
Its source dimension is fixed when \(T\) is fixed. Moreover \(Y_{P,T}\) preserves the distinguished-pair label and intertwines \(D\) with the diagonal source matrix \(D_{\rm src}\). Consequently its Gram matrix commutes with \(D_{\rm src}\), and its polar isometry
\[
U_{P,T}=Y_{P,T}(Y_{P,T}^*Y_{P,T})^{-1/2}
\tag{CL.I11}
\]
also intertwines these diagonal matrices exactly.

Let
\[
\mathcal B_T^\epsilon=
\left(\bigoplus_{\substack{t\leq T\\u\leq Q}}A_{3;t,u}^{\rm aux}\right)
\oplus A_{22}^{\epsilon},
\qquad
A_{22}^{\epsilon}=D_{22}+K_{22}^{\epsilon}.
\]
The truncated triple correction in (CL.I8) is
\(V_{P,T}\bigl(2D^{1/2}R_{\leq T}D^{1/2}\bigr)V_{P,T}^*\).
Together with the pair-pair term, it is \(Y_{P,T}C_TY_{P,T}^*\), where
\(C_T=\mathcal B_T^\epsilon-D_{\rm src}\).
Writing \(Y=U(Y^*Y)^{1/2}\) shows that its difference from \(U C_TU^*\) tends to zero both in operator norm and trace norm at fixed \(T\); the dimension is fixed. The discarded triple tail in (CL.I8) has operator norm at most \(4\|D\|\sup_{t>T,u}\|R_{3;t,u}\|\). Thus
\[
\begin{split}
\bigl\|B_{P,Q}
-&\bigl[U_{P,T}\mathcal B_T^\epsilon U_{P,T}^*
+D(I-U_{P,T}U_{P,T}^*)\bigr]\bigr\|\\
&\leq4\|D\|\sup_{t>T,u\leq Q}\|R_{3;t,u}\|
+o_{P,T}(1).
\end{split}
\tag{CL.I12}
\]
The bracket is a direct sum because \(D\) reduces the range of \(U_{P,T}\).

For self-adjoint finite matrices on the same space, operator-norm distance bounds Hausdorff distance between spectra: if \(\operatorname{dist}(x,\sigma(B))>\|A-B\|\), the resolvent identity makes \(A-x\) invertible. Apply this to (CL.I12), first at fixed \(T\), then let \(T\to\infty\). Triple matrices tend to their positive diagonal atom matrices by (CL.I7). Each atom retains arbitrarily many diagonal copies outside the fixed section because \(n_\alpha(P,Q)\) grows linearly in \(P\). This proves the limiting spectral description except for a possible sequence of positive eigenvalues tending to zero. That remaining point requires the exact nullity argument below.

Away from both zero and the atoms, a compact window has only finitely many triple source eigenvalues, because the triple matrices approach the atoms. Choose \(T\) containing those sources. The resolvent integral around the window for (CL.I12) converges in norm to the source projection; once the distance is below one, its rank is exactly the finite triple-plus-pair-pair source multiplicity. This already proves the isolated positive multiplicity assertion away from zero, subject to choosing the window away from all other source values.

## CL.J. Exact auxiliary nullity and exclusion of positive collapse at zero

Let \(\mathcal M_n(x,y)\) be the physical primary Molien series and \(\mathcal K_n(x,y)\) the physical kernel series for the **oriented** residual. The finite theory gives
\[
\mathcal M_n=(1-x)(1-y)
\sum_{\lambda\vdash n}
\frac1{z_\lambda\prod_{j\in\lambda}(1-x^j)(1-y^j)},
\tag{CL.J1}
\]
where \(z_\lambda=\prod_jj^{m_j}m_j!\), and
\[
\begin{aligned}
\mathcal K_3&=\frac{x^{12}}
{(1-x^2)(1-x^3)(1-xy)(1-x^2y)},\\
\mathcal K_4&=\frac{x^{24}}
{(1-x^2)(1-x^3)(1-x^4)(1-xy)(1-x^2y)(1-x^3y)}.
\end{aligned}
\tag{CL.J2}
\]
The powers \(12,24\) are the left fourth-discriminant degrees. These are physical kernels, not auxiliary Gram kernels.

The bad-channel bivariate generating series is obtained by summing \(0\leq k\leq\ell+2\) with \(k+\ell\) even:
\[
\mathcal B(x,y)
=\frac{1+x^2-x^2y^2}{(1-y^2)(1-xy)},\qquad
\mathcal A(y)=\mathcal B(1,y)
=\frac{2-y^2}{(1-y)(1-y^2)}.
\tag{CL.J3}
\]
Auxiliary nullity is auxiliary dimension minus positive physical rank, and the latter is physical dimension minus physical kernel dimension. For three and four particles, (CL.B6) therefore gives exactly
\[
Z_3=\frac{\mathcal B}{(1-x)(1-y)}-\mathcal M_3+\mathcal K_3,\qquad
Z_4=\frac{\mathcal B\mathcal M_2}{(1-x)(1-y)}
-\mathcal M_4+\mathcal K_4.
\tag{CL.J4}
\]

Here is a finite rational certificate of the simplifications needed below. Combining the three partitions of \(3\) in (CL.J1) gives
\[
Z_3(x,y)=
\frac{(x^7+x^5+x^4)(y^4-y^3-y+1)
+(x^3+x^2)(1-y^3)+x+y}
{(1-y)^2(1-xy)(1-x^2y)(1+y+y^2)}.
\tag{CL.J5}
\]
At fixed \(u\), the coefficient \([y^u]Z_3\) is a polynomial in \(x\) of degree at most \(2u+7\). Thus only finitely many triple blocks at right degree \(u\) have auxiliary zeros. Substitution \(x=1\) is legitimate coefficientwise and gives
\[
z_3(y)=Z_3(1,y)
=\frac{3y^4-5y^3-2y+6}{(1-y)^4(1+y+y^2)}.
\tag{CL.J6}
\]

For four particles define
\[
C(y)=\frac{z_3(y)}{1-y}+\frac{\mathcal A(y)^2}{2(1-y)},
\qquad E(y)=-\frac{\mathcal A(y^2)}{2(1+y)}.
\]
Then the exact rational identity is
\[
Z_4(x,y)=\frac{C(y)}{1-x}+\frac{E(y)}{1+x}+R(x,y),
\tag{CL.J7}
\]
where, with
\[
d(y)=(y-1)^5(y+1)^3(y^2+1)(y^2+y+1),
\]
\[
R(x,y)=
\frac{d(y)L(x)+\sum_{j=0}^5r_j(y)x^j}
{d(y)(xy-1)(x^2y-1)(x^3y-1)},
\tag{CL.J8}
\]
and
\[
L(x)=x^{15}+x^{13}+x^{12}+2x^{11}+x^{10}
+3x^9+2x^8+4x^7+3x^6.
\]
The six remaining coefficient polynomials are
\[
\begin{aligned}
r_5={}&-9y^{11}-6y^{10}+19y^9+20y^8+11y^7-13y^6\\
&-34y^5-23y^4-13y^3+10y^2+5y-5,\\
r_4={}&-(y-1)(y+1)
(7y^9-y^8-8y^7-8y^6-7y^5\\
&\hspace{34mm}+10y^4+12y^3+14y^2+4y-4),\\
r_3={}&-3y^{11}+3y^{10}+14y^9-2y^8-15y^7-22y^6\\
&-13y^5+19y^4+27y^3+30y^2+7y-7,\\
r_2={}&7y^{10}+6y^9-13y^8-18y^7-15y^6+7y^5\\
&+29y^4+27y^3+18y^2-5y-5,\\
r_1={}&(y-1)(y+1)
(3y^8+2y^7-4y^6-6y^5-6y^4\\
&\hspace{34mm}+2y^3+10y^2+10y+8),\\
r_0={}&-3y^9-6y^8+5y^7+12y^6+14y^5+4y^4
-16y^3-20y^2-21y-7.
\end{aligned}
\tag{CL.J9}
\]
Equations (CL.J7)–(CL.J9) can be verified by multiplication using the five partitions of \(4\) in (CL.J1); thus no infinite coefficient computation is hidden in the certificate. The \(x\)-dependent denominator factors in \(R\) are only \(1-x^iy\), \(i=1,2,3\). At right degree \(Q\), their geometric expansions contribute \(x\)-degree at most \(3Q\), and the numerator has \(x\)-degree \(15\). It follows immediately that
\[
[x^Py^Q]R=0\qquad(P>15+3Q).
\tag{CL.J10}
\]
This proves the finite transient bound for every \(Q\), not only the values checked numerically.

Extract the coefficient of \(x^P\) in (CL.J7). Since
\((-1)^P[y^Q]\mathcal A(y^2)/(1+y)
=(-1)^{P+Q}[y^Q]\mathcal A(y^2)/(1-y)\),
the result is exactly (CL.25).

The limit comparator in CL.I has the same number of zeros. The triple contribution is \([y^Q]z_3(y)/(1-y)\), since a right triple degree \(u\leq Q\) has unique outer right coupling. An unordered distinct bad-pair pair contributes one zero. Its generating series is
\((\mathcal A(y)^2-\mathcal A(y^2))/2\). A repeated bad label contributes one zero precisely for \(\epsilon=-1\), adding \(\mathcal A(y^2)\) on that subsequence. Multiplication by \(1/(1-y)\) accounts for unused pair-pair relative right degree. Their sum is the second term of (CL.25).

To exclude positive collapse, choose \(T\) beyond every triple auxiliary zero at \(u\leq Q\). This is possible by (CL.J5). Large triple matrices are uniformly positive: (CL.I7) implies
\(A_{3;t,u}^{\rm aux}\geq(a_{\min}/2)I\) once \(t\) is large. The finitely many remaining positive triple eigenvalues and positive pair-pair eigenvalues have a positive minimum. Thus the comparator's spectrum lies in \(\{0\}\cup[c,\infty)\) for some \(c>0\).

Take a circle of radius less than \(c/2\) around zero. The norm estimate (CL.I12), first with large \(T\) and then with large \(P\), makes the resolvent integrals for the target and comparator projections within distance less than one. Their ranks therefore agree. The comparator rank is exactly the right side of (CL.25), and the exact target nullity is the same number for \(P>15+3Q\). Because \(B_{P,Q}\geq0\), every one of the target eigenvalues inside that circle is already accounted for by an exact zero; no additional positive eigenvalue can be there. This proves a uniform positive gap for the target, completes CL-08, and permits \(s=0\) logarithmic or pseudodeterminant limits only after the exact zero factor has been removed.

## CL.K. Branch-free complex Fredholm convergence and isolated zero multiplicity

The matrices \(B_{P,Q}-D\) have uniformly bounded trace norm at fixed \(Q,\Delta>1\), by (CL.I7)–(CL.I8). For \(s\in\Omega_Q\),
\[
\mathcal F_{P,Q}(s)
=\det\!\left[I+(s+D)^{-1}(B_{P,Q}-D)\right].
\tag{CL.K1}
\]
This identity is finite-dimensional determinant multiplicativity. It uses no square root of \(s+a_\alpha\), and is holomorphic throughout \(\Omega_Q\).

Fix a compact \(K\subset\Omega_Q\), and let
\(\rho_K=\min_{s\in K,\alpha}|s+a_\alpha|>0\).
Then \(\|(s+D)^{-1}\|\leq\rho_K^{-1}\), uniformly in the target degree and \(s\in K\). Removing the triple tail \(t>T\) from (CL.I8) changes the normalized perturbation in (CL.K1) by trace norm at most
\[
4\rho_K^{-1}\|D\|
\sum_{\substack{t>T\\u\leq Q}}\|R_{3;t,u}\|_1
=O_K(T^{1-\Delta}).
\tag{CL.K2}
\]
This bound is uniform in \(P\).

At fixed \(T\), use the polar isometry \(U_{P,T}\) from CL.I. Because it intertwines \(D\) and \(D_{\rm src}\),
\[
(s+D)^{-1}U_{P,T}
=U_{P,T}(s+D_{\rm src})^{-1}.
\tag{CL.K3}
\]
The difference between the truncated target perturbation and
\[
U_{P,T}(s+D_{\rm src})^{-1}
(\mathcal B_T^\epsilon-D_{\rm src})U_{P,T}^*
\]
tends to zero in trace norm, uniformly for \(s\in K\). This follows from the fixed-dimensional convergence \(Y^*Y\to I\), the uniform inverse bound \(\rho_K^{-1}\), and the identity \(Y=U(Y^*Y)^{1/2}\). It does not require norm convergence of the full exchange involution \(J_P\).

The Fredholm determinant satisfies the trace-norm continuity estimate
\[
|\det(I+X)-\det(I+Y)|
\leq \|X-Y\|_1
\exp\!\bigl(1+\|X\|_1+\|Y\|_1\bigr)
\tag{CL.K4}
\]
for trace-class operators. A slightly sharper bound with the maximum of the two norms appears in [@Bornemann2010, equation (4.1)]; the weaker form displayed here suffices. The trace norms of the perturbations in this argument are uniformly bounded by (CL.I7) and \(\rho_K^{-1}\). Hence (CL.K2)–(CL.K4) control the determinant errors uniformly on \(K\).

The determinant of a perturbation \(U XU^*\) by an isometry equals \(\det(I+X)\): decompose its target space into \(\operatorname{ran}U\) and its orthogonal complement, on which the perturbation is zero. The fixed-\(T\) comparison determinant is therefore
\[
\mathcal F_{22,Q}^\epsilon(s)
\prod_{\substack{u\leq Q\\t\leq T}}
\frac{\det(sI+A_{3;t,u}^{\rm aux})}
{\det(sI+D_{t,u})}.
\]
The pair factor is (CL.28), by the explicit blocks (CL.I3). Taking \(P\to\infty\) at fixed \(T\), and then \(T\to\infty\) with (CL.K2), proves locally uniform convergence to (CL.27). The same trace-norm bound implies uniform summability of the deviations of the sufficiently late factors from one on every compact \(K\); thus the infinite product is normal and defines a holomorphic function.

The limit is not identically zero: for positive real \(s\), every finite factor is positive, the tail factors have summable deviations from one, and no factor vanishes. At an isolated zero \(s_0\in\Omega_Q\), choose a small circle containing no other zeros and no excluded atom location. The limit determinant has positive minimum modulus on that circle. Local uniform convergence makes the difference smaller than that minimum, so Rouché's theorem gives exactly the same number of zeros inside, counted with analytic multiplicity, for all large \(P\) on the chosen parity. Since the denominator in (CL.26) does not vanish there, these zeros are \(s=-\lambda\) for the corresponding target eigenvalues. At zero, the exact power is (CL.25); dividing it out yields the appropriate auxiliary pseudodeterminant. Atom locations are excluded because the growing bulk denominator lives there. No isolated-root theorem at an excluded atom location is being claimed.

A useful explicit tail certificate is obtained from
\[
r_t=\frac{(\Delta)_t}{(2\Delta)_t},\qquad
\sum_{t=T}^{\infty}r_t
=r_T\,\frac{T+2\Delta-1}{\Delta-1}.
\tag{CL.K5}
\]
Indeed \(r_{t+1}/r_t=(t+\Delta)/(t+2\Delta)\), and the proposed antiderivative
\(q_t=r_t(t+2\Delta-1)/(\Delta-1)\) satisfies \(q_t-q_{t+1}=r_t\), while \(q_t\to0\) for \(\Delta>1\). At fixed channel cutoff, the weights and terminating sums in (CL.A4) are \(r_t\) times finitely many explicitly bounded rational factors. Bounding those factors for \(t\geq T\) turns (CL.K5) into a computable trace-norm determinant tail certificate. The local uniform theorem uses the existence of these finite constants; a numerical truncation must record the constants actually used.

## CL.L. Integer-dimension rational tails and finite Gamma products

### CL.L.1. Removing square roots from the determinant

For scalar weights \(h=\Delta/2\), (CL.A5) simplifies to
\[
\Omega_n(t)=
\frac{(2n+2\Delta-1)\Gamma(2\Delta+n-1)}{n!\Gamma(\Delta)}
\frac{(t-n+1)_n(t+3\Delta-1)_n}
{(t+\Delta-n)_{\Delta+2n}}
\tag{CL.L1}
\]
when \(\Delta\) is a positive integer. It is rational in \(t\). The terminating hypergeometric part of (CL.A4), denoted \(H_{kr}(t)\), is also rational in \(t\), because \(k,r\) are fixed nonnegative integers. On the full bad-label set at fixed \(u\), write
\[
w_{(k,\ell)}(t,u)=\Omega_k(t)\Omega_\ell(u),\qquad
\mathcal H_{\alpha\beta}(t,u)=H_{kr}(t)H_{\ell v}(u).
\]
For \(\eta=(-1)^t\), (CL.I5) is
\[
R_{3;t,u}=\eta(-1)^u\,W^{1/2}\mathcal H W^{1/2}.
\]
Using \(\det(I+XY)=\det(I+YX)\), the normalized triple factor becomes
\[
f_{u,\eta}(t;s)=
\det\!\left[
I+2\eta(-1)^u\mathcal H(t,u)
\operatorname{diag}_\alpha
\frac{a_\alpha w_\alpha(t,u)}{s+a_\alpha}
\right].
\tag{CL.L2}
\]
This diagonal gauge removes every square root from the determinant. It is valid first at admissible integer degrees, where the weights are positive, and then as a rational identity in \(t\).

Take \(K=u+2\) and \(r_u=|\mathcal B_u|\). A common \(t\)-denominator for all entries in (CL.L2) is
\[
d_u(t)=
(t+\Delta)_\Delta
(t+\Delta-K)_K(t+2\Delta)_K
(-t)_K(t+3\Delta-1)_K.
\tag{CL.L3}
\]
The first three factors cover the denominator intervals in (CL.L1); the last two cover the terminating hypergeometric terms. Its degree is \(\Delta+4K\). The entries tend to those of the identity matrix, so after multiplying by \(d_u\), their numerators have degree at most \(\deg d_u\). Therefore the determinant numerator and denominator have degree at most
\(r_u(\Delta+4K)\), before cancellation. Since \(r_u=O(u^2)\), summing over \(u\leq Q\) and both parities gives a conservative \(O(Q^4)\) root count for fixed \(\Delta\).

The trace-norm estimate (CL.I7) implies, uniformly on compact \(s\)-sets away from the atoms,
\[
f_{u,\eta}(t;s)=1+O(t^{-\Delta}).
\tag{CL.L4}
\]
Cancel common factors in the rational function and normalize its numerator and denominator to be monic. The limit one makes their degrees equal. Since integer \(\Delta\geq2\), the coefficient of \(1/t\) vanishes. For the numerator roots \(\alpha_j\) and denominator roots \(\beta_j\), this is exactly
\(\sum_j\alpha_j=\sum_j\beta_j\). This proves (CL.29).

### CL.L.2. Deriving the Gamma product

For a finite product of length \(L\),
\[
\prod_{n=0}^{L-1}(m+2n-\alpha)
=2^L\frac{\Gamma(L+(m-\alpha)/2)}
{\Gamma((m-\alpha)/2)}.
\]
Use this identity for each numerator and denominator root. Equal root counts cancel the powers \(2^L\). The Gamma ratio asymptotic
\(\Gamma(L+a)/\Gamma(L+b)=L^{a-b}(1+O(L^{-1}))\)
then cancels the remaining powers of \(L\), because the root sums are equal. Taking \(L\to\infty\) yields (CL.30).

The derivation can first be made at positive \(s\), away from any accidental root collision or Gamma pole. The right side is symmetric separately in the numerator and denominator roots; permuting root labels has no effect. The left side is already the holomorphic determinant product from CL.K. Consequently the identity extends analytically on \(\Omega_Q\) through root collisions and removable changes in degree. If an individual Gamma symbol is singular while the ratio has a removable limit, that limit is the definition. This is why no chosen ordering or global square-root branch is required. For noninteger \(\Delta\), the long Gamma ratio in (CL.A5) does not in general become rational in \(t\), and this argument proves no finite Gamma representation.

### CL.L.3. The two-dimensional chiral block at \(\Delta=2\)

For \(u=0,t\geq2\), set
\[
w_0(t)=\frac6{(t+2)(t+3)},\qquad
w_2(t)=\frac{84(t-1)(t+6)}
{(t+1)(t+2)(t+3)(t+4)},
\]
\[
H(t)=1-\frac{50}{t(t+5)}
+\frac{300}{t(t-1)(t+5)(t+6)}.
\tag{CL.L5}
\]
These are (CL.L1) for \(n=0,2\) and the \(k=r=2\) terminating sum. Since the off-diagonal terminating sum is one,
\[
R_{3;t,0}=\eta
\begin{pmatrix}
w_0&\sqrt{w_0w_2}\\
\sqrt{w_0w_2}&w_2H
\end{pmatrix}.
\tag{CL.L6}
\]
The normalized determinant, with \(a=24/5,b=8/35\), is
\[
f_{0,\eta}(t;s)=
\frac{(s+a+2\eta aw_0)(s+b+2\eta bw_2H)
-4ab\,w_0w_2}{(s+a)(s+b)}.
\tag{CL.L7}
\]
Substituting (CL.L5) and \(C=(t+2)(t+3)\) into (CL.L7), clearing its common denominator, yields the polynomial (CL.31). This is an exact two-by-two determinant computation; its off-diagonal term only enters squared, avoiding any phase choice. The factors \(C,C-2,C-6\) give the denominator roots listed after (CL.31). The \(t=0\) auxiliary block has eigenvalue \(3a\), while the \(t=1\) auxiliary block is zero, giving the finite prefix there.

### CL.L.4. The completed nonchiral \(\Delta=2,u=1,s=20\) specialization

The four bad labels are
\[
(0,0),(2,0),(1,1),(3,1),\qquad
a_\alpha=\frac{24}{5},\frac8{35},\frac{312}{35},\frac8{21}.
\]
Formula (CL.L2) is a four-by-four rational determinant. With \(C=(t+2)(t+3)\), its numerator is \(\sum_{j=0}^{10}c_j^\eta C^j\) and its common denominator is
\[
49512859\,C^4(C-12)(C-6)^2(C-2)^3.
\tag{CL.L8}
\]
The complete exact coefficient data are:

| \(j\) | \(c_j^+\) | \(c_j^-\) |
|---:|---:|---:|
| 10 | 49512859 | 49512859 |
| 9 | -965349490 | -2005422050 |
| 8 | -36897892656 | 59626249104 |
| 7 | 2531703580048 | -2109151550192 |
| 6 | -55706313971344 | 39871122618736 |
| 5 | 448355770462944 | 59239627206624 |
| 4 | -804814733494656 | -13129076943639936 |
| 3 | -99602839321159680 | 231488302666106880 |
| 2 | 2354932309885747200 | -1819047222197452800 |
| 1 | -15868616384839680000 | 5323530281287680000 |
| 0 | 22777385983672320000 | 22777385983672320000 |

These two identities were independently reconstructed in the present assembly from (CL.L1)–(CL.L2), with symbolic \(t\) and no import from the original recoupling code. The exact differences simplify to zero for both parity signs. The smaller blocks \(t=0,1,2\), built with their actual admissible labels, give the factors
\(25/31\), \(8875/7843\), and \(1413125/1388211\). The even and odd tails begin at \(4\) and \(3\).

For the full \(Q=1,\epsilon=+1\) determinant one also needs the \(u=0\) factors at \(s=20\). Their numerator polynomials in \(C\) are
\[
1829C^4-6912C^3-248132C^2+3022560C+7257600
\]
for even \(t\), and
\[
1829C^4-22352C^3+292028C^2-3828960C+7257600
\]
for odd \(t\); their denominator is \(1829C^2(C-2)(C-6)\). They follow by specializing (CL.31). Combine their Gamma products, the \(u=1\) products, both finite prefixes, and the pair factor (CL.28). A new evaluation at 80 decimal working precision gives
\[
\log\mathcal F_1^+(20)=
-0.03585462866989608117295310521438741375902240815406055763950798\ldots,
\tag{CL.L9}
\]
and
\[
\mathcal F_1^+(20)=
0.964780534718939024811782919504366521154710236000869935159\ldots.
\]
The normalized residual of each computed polynomial root was below \(10^{-70}\), all four Gamma tail products were positive real within the recorded tolerance, and the logarithm agreed with the retained earlier decimal to \(2.5\times10^{-60}\). This is a high-precision numerical evaluation of an exact formula, not an interval-certified claim of that many correct decimal digits.

## CL.M. Exact minimum certificate at \(\Delta=2,Q=0\)

Let \(a=24/5,b=8/35\), and use (CL.L5). For each integer \(t\geq2\), the trace and determinant of the positive semidefinite auxiliary triple matrix are the rational numbers
\[
\tau_t=a+b+2(-1)^t(aw_0+bw_2H),
\]
\[
d_t=(a+2(-1)^taw_0)(b+2(-1)^tbw_2H)-4ab\,w_0w_2.
\tag{CL.M1}
\]
At \(t=9\), substitution gives
\[
x^2-\tau_9x+d_9
=\frac{825825x^2-3654200x+124032}{825825}.
\tag{CL.M2}
\]
The smaller root simplifies to (CL.32). It is positive because \(d_9>0\) and \(\tau_9>0\), and it is below \(c=7/200\) because the polynomial in (CL.M2) is negative at \(c\).

For the finite remaining range \(2\leq t\leq128\), an exact rational certificate is as follows. It is sufficiently short to give in full; the only arithmetic is Python's exact Fraction type.

~~~python
from fractions import Fraction as F
a, b, c = F(24, 5), F(8, 35), F(7, 200)
for t in range(2, 129):
    eta = (-1)**t
    w0 = F(6, (t+2)*(t+3))
    w2 = F(84*(t-1)*(t+6), (t+1)*(t+2)*(t+3)*(t+4))
    h = 1 - F(50, t*(t+5)) + F(300, t*(t-1)*(t+5)*(t+6))
    tr = a + b + 2*eta*(a*w0 + b*w2*h)
    det = (a+2*eta*a*w0)*(b+2*eta*b*w2*h) - 4*a*b*w0*w2
    assert det >= 0 and tr > 0
    if t == 9:
        assert det > 0 and det-c*tr+c*c < 0
    elif det == 0:
        assert tr > c
    else:
        assert tr > 2*c and det-c*tr+c*c > 0
~~~

For a positive two-by-two matrix, the last pair of inequalities means both roots exceed \(c\): the characteristic polynomial is positive at \(c\), and the trace excludes the alternative that both roots lie below \(c\). A zero determinant leaves the single positive root equal to the trace. Thus the certificate proves the required comparison for all 127 finite degrees; it does not use floating-point eigenvalues. The \(t=0\) positive value is \(3a\), and the \(t=1\) auxiliary block is zero.

The infinite tail needs a uniform estimate. For \(t\geq T=129\),
\[
\begin{aligned}
0<w_0(t)&\leq U_0:=\frac6{(T+2)(T+3)},\\
0<w_2(t)&\leq U_2:=
\frac{84(1+5/(T+1))}{(T+2)(T+3)},\\
|H(t)|&\leq U_H:=
1+\frac{50}{T(T+5)}
+\frac{300}{T(T-1)(T+5)(T+6)}.
\end{aligned}
\tag{CL.M3}
\]
For the second inequality, write
\(w_2=84[(t-1)/(t+4)][(t+6)/(t+1)]/[(t+2)(t+3)]\)
and bound the first bracket by one. The other factors decrease with \(t\). The third inequality follows by the triangle inequality and decreasing positive reciprocal factors.

Gershgorin's row-sum bound, together with
\(\sqrt{w_0w_2}\leq(w_0+w_2)/2\), gives
\[
\|R_{3;t,0}\|
\leq\max(U_0,U_2U_H)+\frac{U_0+U_2}{2}
=\frac{18595}{2397824}<\frac1{100}.
\tag{CL.M4}
\]
Hence
\[
A_{3;t,0}^{\rm aux}=D+2D^{1/2}R_{3;t,0}D^{1/2}
\geq\left(b-\frac{2a}{100}\right)I
=\frac{116}{875}I>\frac7{200}I.
\tag{CL.M5}
\]
This proves the comparison for every \(t\geq129\).

The pair atoms and all positive pair-pair sums also exceed \(c\). Thus (CL.32) is the smallest positive point of the compact set \(\mathfrak S_0^\epsilon\) for both parities. CL.J supplies a uniform gap from zero in the target matrices, and CL-08 supplies Hausdorff convergence of their positive spectra. The minimum of a nonempty compact subset of a common bounded interval is Lipschitz under Hausdorff distance, so the smallest target positive eigenvalue converges to that point. This proves CL-11.
