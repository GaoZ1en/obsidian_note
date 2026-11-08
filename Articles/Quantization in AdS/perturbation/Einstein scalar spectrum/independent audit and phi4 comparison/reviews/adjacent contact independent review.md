# Independent review: adjacent N=3 contact rank and the balanced upper spectral edge

## Results

No current contact2 candidate note, candidate script, or proposed edge proof was read before the independent adjacent and edge derivations. Only afterwards was the actual new note read for the requested §4 review, recorded below. The derivations use only the earlier balanced result and the conventions stated in the task. All coefficients are finite and strictly positive; the Bargmann parameter is real \(\Delta>1\).

**Adjacent-sector theorem.** Put \(q=Q\), \(P=q+1\), and impose simultaneous \(S_3\)-invariance and the two primary conditions. Then
\[
\boxed{\operatorname{rank}W_{q+1,q}=q\qquad(q\ge0).}
\]
There are no exceptional values of \(\Delta>1\). The physical sector is empty for \(q=0\). For \(q\ge1\), its exact zero fraction is
\[
\boxed{1-\frac{6q}{(q+1)(q+2)-2\mathbf1_{3\mid q}}.}
\]
The single-pair matched-channel image is exactly one explicit hyperplane. In normalized pair eigenbases with the phases fixed below, its amplitudes satisfy the sole relation
\[
\boxed{\sum_{k=0}^{q}\gamma_k a_k=0,\qquad
\gamma_k=\sqrt{(q-k+1)(q+k+2\Delta)(q-k+\Delta)(q+k+3\Delta-1)}.}
\]

**Balanced fixed-index edge theorem.** In the balanced \((P,P)\) sector, order the positive eigenvalues decreasingly, with \(j=1\) the largest. For the physical coefficients
\[
c_k=\frac1{8\pi(2\Delta+2k-1)},
\]
one has
\[
\boxed{\lim_{P\to\infty}\lambda_j^+(W_{P,P})
=\frac1{8\pi(2\Delta+2j-3)}\quad\text{for every fixed }j\ge1.}
\]
In particular the largest positive eigenvalue has a nonzero limit. The factor is \(c_{j-1}\), not \(3c_{j-1}\). This coexists with the positive-only empirical measure converging to \(\delta_0\): each fixed number of upper-edge eigenvalues has vanishing empirical weight.

More generally, for any positive sequence \(c_k\to0\), the balanced matched-channel compression converges in operator norm, after zero extension, to \(\operatorname{diag}(c_0,c_1,\ldots)\). Its fixed-index spectral limits are therefore the decreasing rearrangement of that sequence.

## I. Adjacent sectors: exact rank and the unique channel relation

### 1. Reduction to a rectangular twirling problem

Let \(\mathcal A_d\) denote the degree-\(d\), translation-invariant polynomial space in three left coordinates. It has dimension \(d+1\). On it, the pair Casimir \(A=C_{12}\) has simple eigenvalues
\[
\lambda_k=(\Delta+k)(\Delta+k-1),\qquad k=0,\ldots,d.
\]
Write \(E_k^{(d)}\) for its orthogonal projectors and
\[
\mathcal H_q=(\mathcal A_{q+1}\otimes\mathcal A_q)^{S_3},\qquad
Q_{\rm match}=\sum_{k=0}^{q}E_k^{(q+1)}\otimes E_k^{(q)}.
\]
For a physical vector \(F\),
\[
\langle F,WF\rangle=3\sum_{k=0}^{q}c_k
\|(E_k^{(q+1)}\otimes E_k^{(q)})F\|^2.
\]
Thus strict positivity makes the rank independent of the \(c_k\), and the rank equals that of the single-pair restriction to physical vectors.

Use real orthonormal bases to identify \(\mathcal A_{q+1}\otimes\mathcal A_q\) with rectangular maps \(\mathcal A_q\to\mathcal A_{q+1}\). The group acts by
\(D\mapsto U_g^{(q+1)}D(U_g^{(q)})^{-1}\). The adjoint of the single-pair restriction is the twirling map
\[
\Gamma(D)=\frac16\sum_{g\in S_3}U_g^{(q+1)}D(U_g^{(q)})^{-1}
\]
on the \((q+1)\)-dimensional space of rectangular pair-Casimir intertwiners.

### 2. A nonsingular diagonal intertwiner

Define
\[
J^+=\sum_{i=1}^3(z_i^2\partial_i+\Delta z_i),\qquad
h=2q+3\Delta,\qquad X_i=J^+-hz_i,
\]
where \(X_i\) acts on degree-\(q\) primaries. Since \([D,J^+]=2J^0\) and \(2J^0=h\) on that degree, every \(X_i\) maps primaries of degree \(q\) to primaries of degree \(q+1\). It commutes with the Casimir of the opposite pair and transforms covariantly under permutations.

Set
\[
r=z_1-z_2,\qquad u=(z_1+z_2)/2-z_3.
\]
Normalize the real pair eigenvectors by
\[
v_k^{(d)}=r^ku^{d-k}+O(r^{k+2}).
\]
The pair Casimir is triangular in powers of \(r\), so this fixes each eigenvector uniquely. In the chart \(z_3=0\),
\[
X_3=2ur\partial_r+(u^2+r^2/4)\partial_u+2\Delta u,
\]
and its exact action on the pair eigenvectors is
\[
X_3v_k^{(q)}=(q+k+2\Delta)v_k^{(q+1)}.
\]
All these coefficients are nonzero. Consequently every matched rectangular map has the unique form
\[
D=X_3f(A),\qquad \deg f\le q.
\]
With \(B=C_{23}\), \(C=C_{13}\) on the source degree, its twirl is
\[
\Gamma(X_3f(A))=\frac13\left[X_3f(A)+X_1f(B)+X_2f(C)\right].
\]
Define
\[
T_m=X_3A^m+X_1B^m+X_2C^m,\qquad m\ge0.
\]
The rank problem is exactly the dimension of the span of \(T_0,\ldots,T_q\).

### 3. The explicit linear relation

Put
\[
s=q(q+3\Delta-1)+3\Delta(\Delta-1),\qquad
\alpha=(q+2\Delta)(q+2\Delta-1).
\]
The pair-Casimir sum is \(A+B+C=sI\). We claim
\[
\boxed{T_1=\alpha T_0.}
\]
Here is a direct calculation, including the operator ordering. Let
\(Z=z_1B+z_2C+z_3A\), \(t=q+3\Delta-1\), and \(c=\Delta(\Delta-1)\). On degree-\(q\) primaries, evaluated in the chart \(z_3=0\),
\[
Z=t(u^2-r^2/4)\partial_u+2cu.
\]
Euler homogeneity gives
\[
X_3=2(q+\Delta)u-(u^2-r^2/4)\partial_u,
\]
so
\[
Z=-tX_3+2\alpha u,
\qquad \alpha=(q+\Delta)t+c,
\qquad s+ht=3\alpha.
\]
It follows that
\[
T_0=3X_3-2hu,
\qquad T_1=sX_3-hZ=\alpha(3X_3-2hu).
\]
For \(q\ge1\), \(T_0\ne0\), since
\[
T_0(r^q)=2q\,r^qu.
\]
For \(q=0\), \(T_0=0\), as required by the absence of a physical \((1,0)\) primary.

### 4. No further relations: a uniform monomial-band proof

This step proves the theorem at every \(\Delta>1\), rather than only at generic parameter values.

Use source monomials \(e_k=r^ku^{q-k}\) and target monomials \(e'_j=r^ju^{q+1-j}\). The lowest shift of \(B\) in the index \(k\) is \(-1\), with coefficient
\[
L_k=-k(q-k+\Delta),
\]
and its diagonal entry is
\[
D_k=\frac{s-\lambda_k}{2}.
\]
The remaining shifts are \(+1,+2\). The matrix of \(C\) is obtained by multiplying the \((j,k)\) entry of \(B\) by \((-1)^{j+k}\). Thus its odd shifts have the opposite sign and its even shifts have the same sign.

Write \(v_k=q-k+\Delta>0\). The raising intertwiners have the particularly simple monomial actions
\[
X_3e_k=(q+k+2\Delta)e'_k+\frac{q-k}{4}e'_{k+2},
\]
\[
X_1e_k=-v_ke'_k-\frac h2e'_{k+1}+\frac{q-k}{4}e'_{k+2},
\]
\[
X_2e_k=-v_ke'_k+\frac h2e'_{k+1}+\frac{q-k}{4}e'_{k+2}.
\]
Terms outside the index range have zero coefficients.

Suppose \(\sum_{m=0}^q a_mT_m=0\), and let \(m\ge2\) be the largest index with \(a_m\ne0\).

**Even \(m\).** At row \(k-m\), column \(k\), for \(m\le k\le q\),
\[
(T_m)_{k-m,k}
=-2v_{k-m}\prod_{\ell=k-m+1}^{k}L_\ell\ne0.
\]
No lower power can reach this band. Hence a relation with even top degree is impossible.

**Odd \(m\ge3\).** Set \(k=j+m-1\), with \(0\le j\le q-m+1\). The band at shift \(-(m-1)\) satisfies
\[
(T_m)_{j,k}=\rho_m(j)(T_{m-1})_{j,k},
\]
where
\[
\rho_m(j)=\frac12\left[ms-\sum_{\ell=j}^{j+m-1}\lambda_\ell-hj\right],
\qquad
(T_{m-1})_{j,k}=-2v_j\prod_{\ell=j+1}^{j+m-1}L_\ell\ne0.
\]
To derive the ratio, the only paths in \(B^m\) that lower the index by \(m-1\) have one diagonal step and \(m-1\) downward steps. The additional contribution comes from the \(+1\) shift of \(X_1,X_2\) following \(m\) downward steps. These are precisely the displayed sum of \(D_\ell\) and the term \(-hj/2\). The \(X_3A^m\) term cannot reach a negative band.

No power below \(m-1\) contributes at this band. But
\[
\boxed{\rho_m(j+1)-\rho_m(j)
=-\frac12\bigl[\lambda_{j+m}-\lambda_j+h\bigr]<0.}
\]
Since \(m\le q\), at least two consecutive values of \(j\) are allowed. Thus \(a_m\rho_m(j)+a_{m-1}\) cannot vanish for all of them. Odd top degree is impossible as well.

Every relation therefore has degree at most one. For \(q\ge1\), the sole relation is \(T_1-\alpha T_0=0\). Hence
\[
\dim\operatorname{span}\{T_0,\ldots,T_q\}=q.
\]
This proves the rank theorem. The argument has no resonant denominators: its decisive coefficients are explicitly nonzero for all \(\Delta>1\).

### 5. Normalized form of the unique channel relation

Let \(N_{d,k}=\|v_k^{(d)}\|^2\), and set \(e_k^{(d)}=v_k^{(d)}/\sqrt{N_{d,k}}\). This fixes the real phases by positive leading coefficient. The orthonormal coefficient of \(X_3\) is
\[
x_k=(q+k+2\Delta)\sqrt{N_{q+1,k}/N_{q,k}}.
\]
The required norm ratio is
\[
\frac{N_{q+1,k}}{N_{q,k}}
=\frac{(q-k+1)h(h-1)}
{(q+k+3\Delta-1)(q+k+2\Delta)(q-k+\Delta)}.
\]
For completeness, fuse the pair into a site of Bargmann parameter \(a=2\Delta+2k\), retain the spectator parameter \(b=\Delta\), and put \(n=q-k\). The norm of the two-site primary is
\[
\|(t-z_3)^n\|^2_{a,b}
=\frac{n!(a+b+n-1)_n}{(a)_n(b)_n}.
\]
This follows by expanding the monomials and applying the terminating Vandermonde identity. The pair lowest-vector norm is an overall factor independent of \(n\), so taking the ratio at \(n+1\) and \(n\) gives the displayed formula.

The twirl-null rectangular map \(X_3(A-\alpha)\) has diagonal coefficients
\[
x_k(\lambda_k-\alpha)=-\sqrt{h(h-1)}\,\gamma_k,
\]
where \(\gamma_k\) is the positive coefficient in the result statement. Consequently the matched-channel image is exactly
\[
\left\{(a_0,\ldots,a_q):\sum_k\gamma_ka_k=0\right\}.
\]
The rank theorem proves equality, not merely containment. At \(q=0\) the hyperplane is the zero space, consistently with the empty physical sector.

### 6. Exact dimensions, soft modes, and a trace-bound warning

The characters of \(\mathcal A_d\) on the three conjugacy classes of \(S_3\) are \(d+1\), \(\mathbf1_{d\ {m even}}\), and \((1,-1,0)\) according to \(d\bmod3\). Thus
\[
D_{q+1,q}=\frac{(q+1)(q+2)-2\mathbf1_{3\mid q}}6,
\qquad
\dim\ker W=\frac{(q-1)(q-2)-2\mathbf1_{3\mid q}}6.
\]
The first nonempty kernel occurs at \(q=4\). The zero fraction is undefined at the empty \(q=0\) sector; for \(q\ge1\) it has expansion
\[
1-\frac6q+\frac{18}{q^2}+O(q^{-3}).
\]
By left–right exchange, the same rank theorem holds for \((P,Q)=(q,q+1)\).

If \(c_k\to0\), the adjacent positive-only empirical measure also converges to \(\delta_0\): for fixed \(K\), the low-channel interaction has rank at most \(K+1\), the tail norm is at most \(3\sup_{k>K}c_k\), and the full rank is \(q\). This conclusion needs no lower trace bound.

**Do not import the balanced lower trace inequality into the adjacent sector.** The balanced trace sum contains squares; the adjacent sum contains products of different traces and may have negative terms. In the one-dimensional \((P,Q)=(2,1)\) physical sector, the exact sole eigenvalue is
\[
\lambda^+=\frac{3\Delta+1}{4\Delta+2}c_0+\frac32c_1.
\]
For example, \(\Delta=2,c_0=10,c_1=1\) gives \(\operatorname{Tr}W=17/2<11=c_0+c_1\). The stabilizer upper bound \(\operatorname{Tr}W\le3\sum_{k=0}^q c_k\) remains valid. The rank proof does not assert a uniform lower bound on positive eigenvalues.

## II. Balanced sectors: the fixed-index upper edge

### 7. The actual physical channel compression

Return to \((P,Q)=(P,P)\). Let \(e_k=e_k^{(P)}\), \(k=0,\ldots,P\), be the real normalized pair-12 eigenbasis, and let \(S\) be physical \(S_3\)-averaging. The matched basis is \(e_k\otimes e_k\). Define the actual physical recoupling matrix
\[
R_{kl}=\langle e_k,U_{(13)}e_l\rangle.
\]
This is a real symmetric orthogonal matrix, because \((13)\) is an involution. It conjugates \(C_{12}\) to \(C_{23}\). Using \((23)\) instead changes only row/column signs and gives the same entrywise squares. Put
\[
M_{P,kl}=R_{kl}^2.
\]
The matrix \(M_P\) is symmetric, nonnegative, and doubly stochastic, so \(\|M_P\|\le1\).

The exact matched Gram matrix is
\[
G_{P,kl}=\langle e_k\otimes e_k,S(e_l\otimes e_l)\rangle
=\frac13\left(\delta_{kl}+2M_{P,kl}\right).
\]
The two nontrivial pair cosets give equal squares; the pair stabilizer gives the identity term. Hence the nonzero eigenvalues of \(W\) equal those of
\[
\boxed{K_P=C_P^{1/2}(I+2M_P)C_P^{1/2},\qquad
C_P=\operatorname{diag}(c_0,\ldots,c_P).}
\]
The factor of three from the three physical pairs has already canceled the factor \(1/3\) in \(G_P\). This normalization is essential for the edge limit.

### 8. Fixed physical Racah corners vanish

We now prove, rather than assume, that
\[
R_{kl}=O_{k,l,\Delta}(P^{-\Delta})
\quad\text{for every fixed }k,l.
\]
Only the actual primary norms, the actual Casimir recurrence, and one terminating hypergeometric identity are needed.

First,
\[
\boxed{R_{00}=(-1)^P\frac{(\Delta)_P}{(2\Delta)_P}.}
\]
To derive it, embed the fused pair-0 monomial by
\(t^m\mapsto(J_{12}^+)^m1/(2\Delta)_m\). The total primary is the image of \((t-z_3)^P\) and has leading coefficient \(u^P\). At the pair coincidence, the coefficient of its recoupled pair-0 component is
\[
\sum_{m=0}^P\binom Pm(-1)^{P-m}\frac{(\Delta)_m}{(2\Delta)_m}
=(-1)^P\,{}_2F_1(-P,\Delta;2\Delta;1)
=(-1)^P\frac{(\Delta)_P}{(2\Delta)_P}.
\]
Because this is a diagonal coefficient, the normalization of the pair basis cancels. The gamma-ratio asymptotic gives \(R_{00}=O(P^{-\Delta})\).

Next consider \(B=C_{23}\) in the normalized pair-12 eigenbasis. It is irreducibly tridiagonal, with diagonal
\[
b_k=\frac{s_P-\lambda_k}{2},\qquad
s_P=P(P+3\Delta-1)+3\Delta(\Delta-1),
\]
and off-diagonal entry between \(k-1\) and \(k\)
\[
a_{k-1}=-k(P-k+\Delta)\sqrt{N_{P,k-1}/N_{P,k}}.
\]
The exact norm ratio is
\[
\frac{N_{P,k-1}}{N_{P,k}}
=\eta_k\frac{(P-k+1)(P+k+3\Delta-2)(P+k+2\Delta-1)}{P-k+\Delta},
\]
\[
\eta_k=\frac{k+2\Delta-2}{4k(2k+2\Delta-3)(2k+2\Delta-1)}>0.
\]
It follows either from the fused-primary norm above or from
\[
N_{P,k}=\kappa_k\frac{(P-k)!(P+k+3\Delta-1)_{P-k}}
{(2\Delta+2k)_{P-k}(\Delta)_{P-k}},\qquad
\kappa_k=\frac{k!(2\Delta+k-1)_k}{(\Delta)_k^2}.
\]
In particular, for every fixed \(k\ge1\),
\[
\frac{a_{k-1}}{P^2}\longrightarrow-k\sqrt{\eta_k}\ne0,
\qquad \frac{b_k}{P^2}\longrightarrow\frac12.
\]
These formulas explicitly tie the argument to the physical Racah recurrence; an arbitrary family of orthogonal matrices would not suffice.

Since \(BR=R\operatorname{diag}(\lambda_l)\), each column obeys
\[
a_{k-1}R_{k-1,l}+b_kR_{kl}+a_kR_{k+1,l}=\lambda_lR_{kl}.
\]
For fixed indices, the ratios needed to solve for \(R_{k+1,l}\) remain bounded as \(P\to\infty\). Starting with \(R_{00}=O(P^{-\Delta})\), induction gives \(R_{k0}=O(P^{-\Delta})\). Symmetry gives \(R_{0l}=R_{l0}\), and a second induction gives the claimed bound for arbitrary fixed \(k,l\). Thus every fixed finite corner of \(M_P\) tends to zero, at rate \(O(P^{-2\Delta})\).

### 9. Compact-tail argument and the edge limit

Embed every finite matrix in \(\ell^2(\mathbb N_0)\) by zero extension. Let
\[
C=\operatorname{diag}(c_0,c_1,\ldots),\qquad c_k>0,\quad c_k\to0.
\]
Then \(\|C_P-C\|\to0\). Moreover,
\[
\|C^{1/2}M_PC^{1/2}\|\longrightarrow0.
\]
Indeed, let \(F_L\) project onto indices \(0,\ldots,L\), and put \(c_*=\sup_kc_k<\infty\), \(t_L=\sup_{k>L}c_k\). The finite corner
\(F_LC^{1/2}M_PC^{1/2}F_L\) tends to zero for fixed \(L\), while
\[
\left\|C^{1/2}M_PC^{1/2}
-F_LC^{1/2}M_PC^{1/2}F_L\right\|
\le2\sqrt{c_*t_L},
\]
uniformly in \(P\), because \(\|M_P\|\le1\). First choose \(L\) large, then send \(P\) to infinity. Therefore
\[
\boxed{\|K_P-C\|\longrightarrow0.}
\]
Compact self-adjoint eigenvalue continuity gives every fixed-index limit. For the strictly decreasing physical sequence, the \(j\)-th limit is \(c_{j-1}\), proving the result stated at the beginning.

This argument proves no rate for the full operator-norm convergence, no relative approximation for an index growing with \(P\), and no complete positive-spectrum distribution under rescaling. It does prove that, at every threshold not equal to a limiting \(c_k\), the number of eigenvalues above that threshold eventually equals the finite number of \(c_k\)'s above it.

## III. Actual-note review: the strengthened all-N upper-edge trial bound

**Verdict: §4 of [phi4 further structures.md:216–262](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 further structures.md#L216-L262>) is correct as written.** Its all-\(N\) finite bound and its degree-uniform large-\(N\) consequence follow from the stated construction. No source-note modification was made.

The points independently checked are:

1. For the single-sided total-primary orthogonal projector \(\Pi\), \(\Pi z_i^P\ne0\), because its inner product with the primary \((z_i-z_j)^P\) equals the nonzero inner product of \(z_i^P\) with that primary. Permutation covariance gives equal norms and a common real off-diagonal overlap \(\rho\) for the normalized vectors \(v_i\).
2. For any pair not containing \(i\), its Casimir acts on \(z_i^P\) with eigenvalue \(\lambda_0\). It commutes with \(\Pi\): it is self-adjoint and preserves the primary subspace. Thus the projected \(v_i\) still has pair label zero.
3. With \(d_i=v_i\otimes v_i\), the off-diagonal Gram entry is \(a=\rho^2\ge0\), even when \(\rho<0\). Therefore \(x=\sum_i d_i\) is nonzero. For \(y=\sum_{i=3}^N d_i\), which lies in pair-12 matched label zero, and \(h_N=1+(N-1)a\),
   \[
   \|x\|^2=Nh_N,\quad
   \|y\|^2=(N-2)[1+(N-3)a],\quad
   \langle y,x\rangle=(N-2)h_N.
   \]
4. Orthogonal projection and Cauchy–Schwarz give exactly
   \[
   \frac{\|Q_{12,0}x\|^2}{\|x\|^2}
   \ge\frac{(N-2)[1+(N-1)a]}{N[1+(N-3)a]}.
   \]
   The ratio is at most one: denominator minus numerator is \(2(1-a)\ge0\). Multiplying by \(\binom N2c_0\) proves the refined lower bound and hence
   \[
   \boxed{\binom{N-1}{2}c_0\le\lambda_{\max}(W_{N;P,P})\le\binom N2c_0.}
   \]
   The upper inequality uses \(c_k\le c_0\), which holds for the physical coefficients. It would need \(\sup_kc_k\) instead for a general nonmonotone positive sequence.
5. At \(P=0\), \(a=1\) and the refined trial bound reaches the upper bound. For every \(P\), division by \(\binom N2c_0\) gives \(1-2/N\le\lambda_{\max}/[\binom N2c_0]\le1\), so the stated large-\(N\) conclusion is genuinely uniform in arbitrary \(P=P(N)\).

As a compatibility check, the note's projected-local-raising intertwiner in [§2](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 further structures.md#L83-L128>) equals
\[
D_{\rm note}=\frac{X_3(A-\alpha)}{h(h-1)},\qquad h=2q+3\Delta
\]
in the present conventions. Thus its constant polynomial twirling relation is the same unique null map as the linear relation found independently here, despite the different starting intertwiners. The independently derived balanced edge limit also agrees with [§5](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 further structures.md#L266-L352>). This review did not need to read any candidate implementation.

## IV. Certificates and scope

The adjacent exact reproducer is [review_contact2_adjacent_exact.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/review_contact2_adjacent_exact.py>), with completed certificate [review_contact2_adjacent_exact.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/review_contact2_adjacent_exact.json>). It reports `all_passed: true` and includes:

- Symbolic-\(\Delta\) intertwining, linear-relation, and nontrivial even/odd band identities for \(q=0,\ldots,8\).
- The discrete-difference identity for \(\rho_m(j)\) as an exact polynomial identity with symbolic \(q,\Delta,j,m\).
- 44 exact rational rank instances: \(\Delta=4/3,3/2,2,7/3\), \(q=0,\ldots,10\).
- Direct full six-permutation twirling and physical dimensions for \(q=0,\ldots,6\), independently checking the rectangular reduction and its factor \(1/3\).
- 63 direct Bargmann-monomial norm checks, confirming both the norm ratio and the normalized \(\gamma_k\) relation.

The edge reproducer is [review_contact2_edge_exact.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/review_contact2_edge_exact.py>), with completed certificate [review_contact2_edge_exact.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/review_contact2_edge_exact.json>). It reports `all_passed: true`. It reuses only the accompanying independent adjacent checker's polynomial operators and permutation matrices, not any candidate implementation. Its exact checks cover five symbolic-\(\Delta\) physical-Racah sectors \(P=0,\ldots,4\) and 27 rational sectors \(\Delta=4/3,2,7/3\), \(P=0,\ldots,8\). They verify the physical Gram orthogonality/self-adjointness, the actual pair-Casimir recurrence, the endpoint formula, symmetric doubly-stochastic squares, the norm ratios, and the full six-permutation compression factor \(I+2M\). It also checks the all-\(N\) trial Gram identities symbolically.

The same edge certificate includes an exact symbolic check in \((P,Q)=(2,1)\), giving the displayed weighted trace coefficients \((3\Delta+1)/(4\Delta+2)\) and \(3/2\). Both scripts can be run with Sage in fresh processes; they print their JSON reports without importing old research packages.

The all-degree rank and edge statements are analytic theorems proved above, not extrapolations from these finite checks. No numerical spectral diagonalization was used. The arguments assume the stated positive Bargmann Hilbert structure, identical chiral representations, simultaneous bosonic \(S_3\)-invariance, and the exact equal-pair-channel support. The adjacent theorem does not settle gaps \(|P-Q|\ge2\) or arbitrary \(N\). The edge theorem is balanced, fixed \(N=3\), fixed \(\Delta\), and fixed eigenvalue index; it is not a double-scaling statement.
