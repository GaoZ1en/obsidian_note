# Independent audit of the fixed-right-degree atomic spectral limit

Date: 2026-10-19. The root researcher proposed the asymptotic theorem below. This audit checks its dimension counting, projector domains, overlap bounds, removal of auxiliary zeros and descendant extension. It finds no missing leading multiplicity or projection in the proof, subject to the explicit fixed-parameter assumptions below.

This is a theorem about the non-saturated spectrum in the specified Einstein pair theory. It is not a uniform asymptotic for simultaneous growth of \(N,Q,\Delta\), nor a claim that the exceptional levels outside the limiting bands have been diagonalized.

## 1. Precise block and positive auxiliary operator

Fix \(N\ge4\), \(Q\ge0\), and \(d=\Delta>1\), and let the left **global-primary** degree \(P\to\infty\). The previous Fock report §§5–6 gives

\[
W_N-b_N(Q)I\ge0,\qquad
b_N(Q)=-2N(N-1)d^2-8Q(Nd+Q-1).
\]

The finite pair set is

\[
\mathcal B_Q=\{(k,l):0\le l\le Q,\ 0\le k\le l+2,
\ k+l\equiv0\pmod2\},
\]

with strictly positive pair residuals

\[
a_{kl}=\gamma_{kl}-\{4d(d-2)-8(d+l)(d+l-1)\}>0.
\]

Choose a complete **orthonormal** pair–spectator frame in the subspace symmetric under \(S_2\times S_{N-2}\), with the distinguished pair in \(\mathcal B_Q\), and project onto the total-primary degrees \((P,Q)\). Let \(F\) be its isometric inclusion into the complete labelled primary space. Then the old Gram construction becomes

\[
T=\binom N2F^\dagger\Pi_{S_N}F=I+K,
\]

\[
K=2(N-2)R_1+\binom{N-2}{2}R_0,
\qquad R_i=F^\dagger\sigma_iF,
\]

where \(\sigma_1\) maps the distinguished pair to an overlapping pair and \(\sigma_0\) maps it to a disjoint pair. Representatives can be taken to be involutions. If \(D\) is diagonal with value \(a_{kl}\) on every corresponding spectator block, the positive auxiliary operator is

\[
B=\sqrt D(I+K)\sqrt D.
\tag{1}
\]

Its positive eigenvalues, with multiplicities, are exactly those of the physical \(W_N-b_N(Q)I\). Its zero eigenvalues are auxiliary dependencies and must be removed before normalizing a physical positive-spectrum measure.

The orthonormalization here is legitimate because the old frame Gram is positive and \(D\) is scalar on each of its blocks. Applying a Euclidean Frobenius norm directly to an arbitrary unnormalized coordinate matrix would not prove the bound below.

## 2. Projector domination is valid in the labelled primary space

Write \(P_{\rm aux}=FF^\dagger\). Let \(P_{12}^{\rm bad}\) be the sum of the distinguished pair projectors with labels in \(\mathcal B_Q\), restricted to the complete labelled global-primary space. The pair projectors commute with the total global algebra, so this restriction is well-defined and remains an orthogonal projector. Completeness of the frame gives

\[
P_{\rm aux}\le P_{12}^{\rm bad},\qquad
\sigma_iP_{\rm aux}\sigma_i^{-1}\le P_{\sigma_i(12)}^{\rm bad}.
\]

Consequently

\[
\|R_i\|_{\rm HS}^2
=\operatorname{Tr}(P_{\rm aux}\sigma_iP_{\rm aux}\sigma_i^{-1})
\le\operatorname{Tr}(P_{12}^{\rm bad}P_{\sigma_i(12)}^{\rm bad}).
\tag{2}
\]

The trace inequality does not require the two overlapping projectors to commute. For positive operators \(P\le A,Q\le C\), use
\(\operatorname{Tr}(PQ)\le\operatorname{Tr}(AQ)\le\operatorname{Tr}(AC)\).
All traces are finite because \((P,Q)\) is fixed during this step.

### Disjoint pairs

Fixing the two pair primary labels leaves two pair modules and \(N-4\) scalar modules to couple. There are \(N-2\) effective positive-discrete-series factors. Their left total-primary multiplicity is
\(\binom{P-k-k'+N-4}{N-4}\), where a negative excitation gives zero. Right multiplicities and all pair labels are bounded because \(Q\) is fixed. Hence

\[
\operatorname{Tr}(P_{12}^{\rm bad}P_{34}^{\rm bad})=O(P^{N-4}).
\tag{3}
\]

For \(N=4\) the binomial is one whenever allowed, giving the required bounded rank. Thus the edge case has not lost a factor of \(P\).

### Overlapping pairs

Decompose the three particles in the union into triple primary labels \((t,u)\). The remaining \(N-3\) particles are labelled spectators. The multiplicity for coupling the triple module and those spectators to \((P,Q)\) is exactly

\[
\binom{P-t+N-4}{N-4}
\binom{Q-u+N-4}{N-4}.
\tag{4}
\]

At fixed \((t,u)\), the local trace is a finite sum of products
\(|\mathcal R^{(t)}_{kk'}|^2|\mathcal R^{(u)}_{ll'}|^2\), over the admitted low pair strips. The orthonormal three-body Racah entries have

\[
\mathcal R^{(t)}_{kk'}=(-1)^t\frac{(d)_t}{(2d)_t}
\sqrt{w_k(t)w_{k'}(t)}\,\mathscr R_{kk'}(t).
\]

For bounded \(k,k'\), the finite rational functions satisfy
\(w_k(t)=O(1)\) and \(\mathscr R_{kk'}(t)=O(1)\), while
\((d)_t/(2d)_t=O(t^{-d})\). After absorbing finitely many small degrees into the constant,

\[
|\mathcal R^{(t)}_{kk'}|^2\le C(1+t)^{-2d}.
\tag{5}
\]

Equation (5) uses the orthonormal matrix, or the correctly Gram-adjusted rational Racah matrix. Squaring arbitrary rational-similarity entries without their physical weight would require a separate argument.

Since \(d>1\), the \(t\)-series is absolutely summable. Equations (4)–(5), summed over \(0\le t\le P,0\le u\le Q\), prove

\[
\operatorname{Tr}(P_{12}^{\rm bad}P_{13}^{\rm bad})=O(P^{N-4}).
\tag{6}
\]

Combining (2), (3), and (6), with \(N\) fixed,

\[
\boxed{\|K\|_{\rm HS}^2=O(P^{N-4}),\qquad
\|B-D\|_{\rm HS}^2=O(P^{N-4}).}
\tag{7}
\]

## 3. Exact auxiliary dimension and its leading coefficient

Let \(H_M(p,q)\) be the complete Bose level dimension for \(M=N-2\) spectator particles. The auxiliary dimension in pair channel \((k,l)\) is exactly

\[
d_{kl}(P,Q)=H_{N-2}(P-k,Q-l).
\tag{8}
\]

Indeed the pair-to-spectator coupling allows independent nonnegative left and right coupling degrees. Summing spectator **primary** multiplicities over their two labels is precisely the complete spectator level dimension. This is the same two-variable telescoping that reconstructs global descendants; a primary spectator multiplicity without the coupling sums would undercount by powers of \(P\).

The identity term of the spectator Molien series is
\(1/[M!(1-x)^M(1-y)^M]\). All other permutations have smaller order of the \(x=1\) pole, and possible other roots of unity give only lower powers at fixed \(M\ge2\). Thus

\[
d_{kl}(P,Q)=
\frac{\binom{Q-l+N-3}{N-3}}
 {(N-2)!(N-3)!}P^{N-3}+O(P^{N-4}).
\tag{9}
\]

Let

\[
\mathcal Z_{N,Q}=\sum_{(k,l)\in\mathcal B_Q}
\binom{Q-l+N-3}{N-3}.
\]

Then \(d_{\rm aux}=\sum d_{kl}\) has the same leading expression with the binomial replaced by \(\mathcal Z_{N,Q}\). The mass parameter remains \(d=\Delta\).

## 4. Zeros, the Wasserstein rate and outlier counting

Since \(D\) is uniformly positive for these fixed parameters,
\(\ker B\) and \(\ker(I+K)\) have equal dimensions. Every vector in the latter is a \(-1\) eigenvector of the Hermitian \(K\). Therefore

\[
z_{\rm aux}:=\dim\ker B\le\|K\|_{\rm HS}^2=O(P^{N-4}).
\tag{10}
\]

This independently bounds auxiliary dependencies; the logarithmic full-kernel theorem is not a premise of (10). The positive physical rank is consequently \(d_{\rm aux}-O(P^{N-4})\).

Hoffman–Wielandt applied to the Hermitian \(B,D\) matches their eigenvalues with total squared displacement bounded by (7). Divide by \(d_{\rm aux}\asymp P^{N-3}\). Equation (9) also shows that the atomic multiplicity weights of \(D\) differ from their limits by \(O(P^{-1})\). Finally, deleting the \(O(P^{N-4})\) auxiliary zeros and renormalizing changes the measure by mass \(O(P^{-1})\). All eigenvalues lie in a parameter-dependent compact interval because \(0\le B\le\binom N2\|D\|I\).

Thus the physical positive-residual empirical measure obeys

\[
\boxed{
\mathsf W_2\!\left(\mu_{N,P,Q}^{+},
\sum_{(k,l)\in\mathcal B_Q}
\frac{\binom{Q-l+N-3}{N-3}}{\mathcal Z_{N,Q}}
\,\delta_{a_{kl}}\right)=O(P^{-1/2}).}
\tag{11}
\]

Coincident atoms at particular masses are automatically combined as measures; no assumed separation between distinct \(a_{kl}\) is needed. The number of positive physical eigenvalues more than \(\epsilon\) away from the finite atom set is

\[
O(P^{N-4}/\epsilon^2).
\tag{12}
\]

Equation (12) leaves a nontrivial exceptional spectrum and does not give its individual levels. For \(N=4\) it permits a bounded number of fixed-distance outliers. For larger \(N\), it permits a lower-order growing number.

## 5. Full free-level descendants: a further analytic consequence

The preceding theorem is for primary blocks. Summing their global descendants gives a distinct statement for the complete free level \((P,Q)\). In that level the right primary label can be any \(0\le q\le Q\), and its baseline is \(b_N(q)\).

The old Molien character gives primary multiplicity

\[
m_N(p,q)=\frac{\binom{q+N-2}{N-2}}
 {N!(N-2)!}p^{N-2}+O(p^{N-3}).
\]

Summing \(p\le P\) and then \(q\le Q\), while using that non-saturated dimensions are one power smaller, proves the normalized **entire full-level** correction-spectrum limit

\[
\boxed{
\mu^{\rm full}_{N,P,Q}\longrightarrow
\sum_{q=0}^Q
\frac{\binom{q+N-2}{N-2}}{\binom{Q+N-1}{N-1}}
\,\delta_{b_N(q)}.}
\tag{13}
\]

If instead only the full-level non-saturated states are normalized, with saturation identified within each primary module before descendant summation, the atoms are

\[
b_N(q)+a_{kl},\qquad 0\le q\le Q,\quad(k,l)\in\mathcal B_q,
\]

with weights proportional to \(\binom{q-l+N-3}{N-3}\). The same \(O(P^{-1/2})\) Wasserstein rate follows by summing the primary squared-error bounds:
\(\sum_{p\le P}O(p^{N-4})=O(P^{N-3})\), while the total non-saturated dimension is \(\asymp P^{N-2}\). Finitely many blocks with \(p<q\) do not affect these limits.

Equation (13) must not be replaced by a single atom at \(b_N(Q)\); that would discard the lower-right-primary descendant modules. This distinction is the principal state-counting qualification added by this audit.

## 6. An exact obstruction to extrapolating the same mechanism to balanced degrees

Now keep \(N\ge4\) and \(\Delta>1\) fixed but set \(P=Q=L\to\infty\). The previous normalized-Hilbert–Schmidt approximation \(T=I+K\simeq I\) cannot hold in this regime. This is an obstruction to that specific approximation, not an integrability or computational-complexity no-go theorem.

The physical primary dimension has leading term

\[
d_{\rm phys}(L,L)\sim
\frac{L^{2N-4}}{N!((N-2)!)^2}.
\tag{14}
\]

For the auxiliary dimension, put \(M=N-2\). The identity Molien term for the full spectator level gives
\(H_M(L-k,L-l)\sim (L-k)^{M-1}(L-l)^{M-1}/[M!((M-1)!)^2]\).
The leading bad-pair domain is \(0\le k\le l\le L\); the extra strip of width two only affects lower powers. Its continuum integral is half of the symmetric square, and simultaneous pair parity adds a factor of one half. Thus

\[
\begin{aligned}
d_{\rm aux}(L,L)
&\sim\frac{L^{2M}}{2M!((M-1)!)^2}
\int_{0\le u\le v\le1}(1-u)^{M-1}(1-v)^{M-1}\,du\,dv\\
&=\frac{L^{2N-4}}{4((N-2)!)^3},
\end{aligned}
\tag{15}
\]

and consequently

\[
\frac{d_{\rm aux}}{d_{\rm phys}}\longrightarrow
\frac{N(N-1)}4=\frac12\binom N2.
\tag{16}
\]

There is no physical baseline kernel at \(P=Q\). This fact can be checked without invoking the full logarithmic-kernel theorem. Baseline equality would require every pair to have \(k_L\ge k_R+4\). On that support,

\[
C_{ij}^{L}-C_{ij}^{R}\ge 8\Delta+12>0.
\]

But the pair Casimir sum identity implies
\(\sum_{i<j}(C_{ij}^{L}-C_{ij}^{R})=C_{\rm tot}^{L}-C_{\rm tot}^{R}=0\)
on a \((L,L)\) primary. Taking its expectation is a contradiction. The positive physical residual therefore has full rank \(d_{\rm phys}\), and \(T\) has exactly \(d_{\rm aux}-d_{\rm phys}\) auxiliary zeros.

Accordingly \(K=T-I\) has that many exact \(-1\) eigenvalues, yielding

\[
\boxed{
\liminf_{L\to\infty}
\frac{\|K\|_{\rm HS}^2}{d_{\rm aux}}
\ge1-\frac{2}{\binom N2}>0.}
\tag{17}
\]

For \(N=4\), the auxiliary-to-physical ratio tends to three and the lower bound in (17) is \(2/3\). The fixed-right-degree proof cannot simply be copied with \(Q=P\). Removing the dependencies before choosing another reference operator, or finding a different limit with its own state weights, remains possible.
