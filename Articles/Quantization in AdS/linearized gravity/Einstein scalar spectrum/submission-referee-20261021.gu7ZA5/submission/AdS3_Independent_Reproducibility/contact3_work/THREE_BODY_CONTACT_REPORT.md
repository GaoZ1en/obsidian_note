# Independent three-body contact investigation

Source snapshot: `GaoZ1en/obsidian_note`, commit
`670abb1bb4b644a162278415ef94dde09cdeb016` (21 October 2026).

The principal new result below completes the previously open three-body rank
problem. The proof uses only the differential representation, positivity,
and elementary properties of an irreducible tridiagonal matrix. No existing
research implementation is imported.

## 1. Setup and source statements audited

Let
\[
U_n=\ker(\partial_{z_1}+\partial_{z_2}+\partial_{z_3})
\cap\mathbb C[z_1,z_2,z_3]_n,
\qquad
\mathcal H_{P,Q}=(U_P\otimes U_Q)^{S_3}.
\]
Use the positive product inner product
\(\|z_1^{a_1}z_2^{a_2}z_3^{a_3}\|^2
=\prod_i a_i!/(\Delta)_{a_i}\), with \(\Delta>1\).
The operator is
\[
W=\sum_{i<j}\sum_{k\ge0}c_kP^L_{ij,k}P^R_{ij,k},
\qquad c_k>0.
\]
All rank conclusions are independent of the values of the strictly positive
weights. The physical contact interaction has
\(c_k=[8\pi(2\Delta+2k-1)]^{-1}\).

The precise source claims are:

* `independent audit and phi4 comparison/structural comparison.md`,
  §5.1, lines 245–267: positivity reduces the Bose rank to the restriction of
  the Bose projector to one pair's equal-label subspace. This is correct.
* The same file, §5.2, lines 270–342: balanced rank \(P\) for \(P\ge1\).
  The tridiagonal proof is valid; it is an analytic proof, not an inference
  from the exact scans. In its odd-degree bandwidth argument, there really
  are two allowed starting positions, including the endpoint degree \(m=P\).
* `phi4 further structures.md`, §§2–3, lines 83–208: adjacent rank \(Q\).
  The extra diagonal term in (3.5) is necessary and has been retained. The
  all-index proof is valid under the declared positive inner product.
* `phi4 further structures.md`, lines 210–214 explicitly leaves
  \(P\ge Q+2\) open. That remaining rank problem is solved below.
* `phi4 further structures.md`, §5: the fixed-index positive spectral limit
  follows from a compactly weighted channel operator. The endpoint
  recoupling estimate and the fixed-index recurrence give the claimed
  operator-norm convergence; the argument does not assert a bottom-gap
  estimate. We add such an upper estimate and Schatten consequences below,
  but do not claim a matching lower bound.

## 2. New theorem: complete three-body rank and kernel dimensions

Write \(P\ge Q\), without loss of generality, and
\[
d_3(P,Q)=\frac{(P+1)(Q+1)+3\epsilon_P\epsilon_Q+2\eta_P\eta_Q}{6},
\quad
\epsilon_n=\mathbf1_{2\mid n},\quad
\eta_n=(1,-1,0)_{n\bmod3}.
\]
This is the character dimension of \(\mathcal H_{P,Q}\).

**Theorem 1.** For all \(\Delta>1\) and all strictly positive \(c_k\),
\[
\operatorname{rank}W|_{\mathcal H_{P,Q}}=
\begin{cases}
1,&P=Q=0,\\
P,&P=Q\ge1,\\
Q,&P=Q+1,\\
1,&(P,Q)=(3,1),\\
Q+1,&P\ge Q+2,\ (P,Q)\ne(3,1).
\end{cases}
\tag{T1}
\]
In particular, the source's entire remaining conjecture is true:
\[
\operatorname{rank}W
=\min\{d_3(P,Q),Q+1\}\qquad(P\ge Q+2).
\]
The kernel dimension is exactly \(d_3(P,Q)-\operatorname{rank}W\).
There are no additional positive-mass exceptional rank drops.

The new classification is the last two lines of (T1). The proof below
establishes every case without assuming the rank conjecture or numerical
data. For the already known adjacent band, a shorter last-row argument is
included so that the complete classification is self-contained.

### 2.1 Pair Casimirs and their tridiagonal matrices

Set
\[
A_n=C_{12}|_{U_n},\quad B_n=C_{23}|_{U_n},\quad C_n=C_{13}|_{U_n},
\quad A_n+B_n+C_n=s_nI,
\]
\[
s_n=n(n+3\Delta-1)+3\Delta(\Delta-1),\qquad
\lambda_k=(\Delta+k)(\Delta+k-1).
\]
In the coordinates \(r=z_1-z_2\), \(u=(z_1+z_2)/2-z_3\),
\[
A_n=r^2\partial_r^2-\tfrac14r^2\partial_u^2
 +2\Delta r\partial_r+\Delta(\Delta-1).
\]
Consequently it has simple eigenvectors
\(f_{n,k}=r^ku^{n-k}+O(r^{k+2})\), \(0\le k\le n\).
The transposition \((12)\) is therefore
\(E_n=\operatorname{diag}((-1)^k)\).

Direct differential action gives
\[
B_n=-(u-r/2)^2(\partial_r\partial_u-\tfrac12\partial_u^2)
 +\Delta(u-r/2)(-\partial_r+\tfrac32\partial_u)
 +\Delta(\Delta-1).
\]
It lowers the order of vanishing in \(r\) by at most one; self-adjointness
in the orthogonal \(f\)-basis supplies the opposite bandwidth bound. Thus
\(B_n\) is tridiagonal, and
\[
(B_n)_{k-1,k}=-k(n-k+\Delta)\ne0.
\tag{2.1}
\]
Its other neighboring entries are also nonzero by self-adjointness and
positive norms. Finally \(C_n=E_nB_nE_n\), so the Casimir sum gives
\[
(B_n)_{jj}=b_{n,j}=\frac{s_n-\lambda_j}{2}.
\tag{2.2}
\]

### 2.2 Translate a rank defect into a rectangular intertwiner

Use the real physical bilinear form to identify
\(U_P\otimes U_Q\simeq\operatorname{Hom}(U_Q,U_P)\). The equal-pair-label
space is precisely
\[
\mathcal D_{P,Q}=\{T:A_PT=TA_Q\}.
\]
Because the eigenvalues \(\lambda_k\) are simple and increase strictly,
\(T\) is a rectangular diagonal matrix, with entries \(t_0,\ldots,t_Q\).
In particular \(E_PTE_Q=T\).

Let \(\Gamma\) be simultaneous permutation averaging. Positivity and
permutation conjugacy of the three pair interactions imply
\[
\operatorname{rank}W=
\operatorname{rank}(\Gamma|_{\mathcal D_{P,Q}}).
\tag{2.3}
\]
Here a vector killed by \(\Gamma\) is a *relation among symmetrized channel
vectors*, not a physical zero mode. Their dimensions are different.

Suppose \(T\in\mathcal D_{P,Q}\) and \(\Gamma(T)=0\). Define
\[
U=\rho_P(13)T\rho_Q(13)^{-1},\qquad
V=E_PUE_Q.
\]
Since \((13)\) takes pair \(12\) to pair \(23\),
\[
B_PU=UB_Q.
\tag{2.4}
\]
There are three cosets of the stabilizer \(\{1,(12)\}\), so
\[
T+U+V=0.
\tag{2.5}
\]
Equation (2.5) implies
\[
U_{jj}=-t_j/2\quad(j\le Q),\qquad
U_{jk}=0\quad(j\ne k,\ j+k\text{ even}).
\tag{2.6}
\]
Thus, apart from its diagonal, \(U\) can have entries only on odd diagonals.

Take an entry with \(j+k\) odd and \(|j-k|>1\) in (2.4). An off-diagonal
entry of either tridiagonal \(B\) multiplies an even-parity off-diagonal
entry of \(U\), hence contributes zero. The only surviving contribution
is diagonal multiplication. By (2.2),
\[
\boxed{[s_P-s_Q-(\lambda_j-\lambda_k)]U_{jk}=0
\qquad(|j-k|>1).}
\tag{2.7}
\]
For even parity the same conclusion is automatic because \(U_{jk}=0\).
Crucially, the proof below does not assume that the factor in brackets is
always nonzero: resonant entries are explicitly eliminated.

### 2.3 The last row when the degree gap is at least three

Let \(d=P-Q\ge3\), and put \(S=s_P-s_Q>0\). Every entry of the last row
has \(P-k\ge3\). By (2.7), a nonzero last-row entry must satisfy
\[
\lambda_P-\lambda_k=S.
\tag{2.8}
\]
Strict monotonicity of \(\lambda_k\) permits at most one such column \(k\).
It cannot be \(k=Q\), because
\[
S-(\lambda_P-\lambda_Q)=\Delta(P-Q)>0.
\]
Thus \(k<Q\). Also \(P+k\) must be odd by (2.6).

Now inspect entry \((P,k+1)\) of (2.4). The entire last row except possibly
column \(k\) is zero. Tridiagonality therefore gives
\[
(B_P)_{P,P-1}U_{P-1,k+1}
   =U_{P,k}(B_Q)_{k,k+1}.
\tag{2.9}
\]
The left-side entry is outside the nearest-neighbor band:
\[
(P-1)-(k+1)=P-k-2\ge d-1\ge2.
\]
Furthermore
\[
\lambda_{P-1}-\lambda_{k+1}<\lambda_P-\lambda_k=S.
\]
Hence (2.7) makes \(U_{P-1,k+1}=0\). The factor
\((B_Q)_{k,k+1}\) is nonzero, so (2.9) gives \(U_{P,k}=0\). This eliminates
the only possible last-row resonance.

Thus the last row of \(U\) vanishes. Applying (2.4) to that row then forces
the preceding row to vanish, because \((B_P)_{P,P-1}\ne0\). Induction
forces every row to vanish. Consequently \(U=0\), hence \(T=0\).
Therefore \(\Gamma|_{\mathcal D_{P,Q}}\) is injective and has rank \(Q+1\).

### 2.4 Degree gap two and its single small exception

Let \(P=Q+2\). Again the last row can be nonzero only if (2.8) holds,
with \(k<Q\). Put \(a=Q-k\ge1\). The resonance condition is equivalent to
\[
a(2Q-a-1)+2(a-1)\Delta=0.
\tag{2.10}
\]
For \(Q\ge2\), the first term is strictly positive and the second is
nonnegative. Hence there is no resonance. For \(Q=0\), there is no
column \(k<Q\). In either case the last row vanishes and the preceding
induction proves injectivity.

The only remaining case is \(Q=a=1\), i.e. \((P,Q)=(3,1)\).
The physical space has dimension one. It is spanned by
\[
F=p_{20}p_{11},\qquad p_{ab}=\sum_{i=1}^3X_i^aY_i^b,
\quad \sum_iX_i=\sum_iY_i=0.
\]
At \(X=(x,x,-2x)\), \(Y=(y,y,-2y)\), its value is \(36x^3y\ne0\).
All positive pair-label components vanish at the corresponding collision,
so \(P^L_{12,0}P^R_{12,0}F\ne0\). Positive \(c_0\) then implies
\(\langle F,WF\rangle>0\). Thus the rank is exactly one.

This proves the new part of Theorem 1, including every exceptional-mass
possibility and both small endpoints. The remaining cases are established
next using the same matrix framework.

### 2.5 A shorter independent proof of the adjacent band

Let \(P=Q+1\), so \(S=s_P-s_Q=2Q+3\Delta\). Suppose again that
\(T\in\mathcal D_{P,Q}\) and \(\Gamma(T)=0\), with the corresponding
intertwiner \(U\) of §2.2. For a last-row entry farther than the first
off-diagonal, write \(k=Q-a\), where \(1\le a\le Q\). Direct algebra gives
\[
\lambda_P-\lambda_k-S
=(2a-1)\Delta+a(2Q-a-1)>0.
\tag{2.11}
\]
Thus (2.7) eliminates every last-row entry except possibly \(U_{P,Q}\).
When \(Q=0\), this assertion is immediate without a far entry to check.

The relation \(B_PU=UB_Q\) and irreducibility determine the preceding row
uniquely from the last row, then determine each earlier row from the two
following rows. Explicitly, if \(U_j\) denotes row \(j\),
\[
(B_P)_{j,j-1}U_{j-1}
=U_jB_Q-(B_P)_{jj}U_j-(B_P)_{j,j+1}U_{j+1},
\]
with the absent final-row term omitted. Every coefficient on the left is
nonzero. Consequently the relation space
\(\ker(\Gamma|_{\mathcal D_{P,Q}})\) has dimension at most one.

To exhibit a nonzero relation, let \(\Pi_{Q+1}\) be the physical orthogonal
projection from all degree-\(Q+1\) polynomials onto \(U_{Q+1}\), and put
\[
D_i=\Pi_{Q+1}J_{i,+}|_{U_Q},\qquad i=1,2,3.
\]
The pair Casimir \(C_{12}\) commutes with \(J_{3,+}\) and with the total
raising and lowering operators, hence with \(\Pi_{Q+1}\). Therefore
\(A_PD_3=D_3A_Q\), so \(D_3\in\mathcal D_{P,Q}\). Permutations permute
the three \(D_i\), and
\[
D_1+D_2+D_3=\Pi_{Q+1}J_{\mathrm{tot},+}|_{U_Q}=0.
\]
Thus \(\Gamma(D_3)=0\).

For nonzero \(f=(z_1-z_2)^Q\), write \(s=(z_1+z_2)/2\). The pair-label
\(Q\) subspace in full degree \(Q+1\) is two dimensional, spanned by
\(sf\) and \(z_3f\). Its total-descendant subspace is the single line
\[
J_{\mathrm{tot},+}f=[2(\Delta+Q)s+\Delta z_3]f.
\]
Indeed the same pair label has its lowest possible total degree at \(Q\),
where its subspace is \(\mathbb C f\). Since
\(J_{3,+}f=\Delta z_3f\) is not on that descendant line for \(\Delta>0\),
its primary projection is nonzero. Hence \(D_3\ne0\).

The relation space is exactly one dimensional. Since the equal-label
space has dimension \(Q+1\),
\[
\boxed{\operatorname{rank}W_{3;Q+1,Q}=Q,\qquad Q\ge0.}
\tag{2.12}
\]
The endpoint \(Q=0\) is included: the physical primary space is zero
dimensional, while the one-dimensional equal-label space is averaged to
zero. No special raising-matrix formula or high-degree interpolation is
needed for this proof.

### 2.6 A self-contained proof of the balanced band

Let \(P=Q\ge1\). Every \(T\in\mathcal D_{P,P}\) is uniquely
\(h(A_P)\) for a polynomial of degree at most \(P\). Its Bose average
vanishes precisely when
\[
h(A_P)+h(B_P)+h(C_P)=0,
\qquad C_P=s_PI-A_P-B_P.
\tag{2.13}
\]
Write the highest terms as \(h(t)=a_mt^m+a_{m-1}t^{m-1}+\cdots\),
with \(a_m\ne0\). If \(m\ge2\) is even, an entry at distance \(m\)
from the main diagonal receives no contribution from \(h(A_P)\) or any
lower power. The contribution from \(h(B_P)+h(C_P)\) is
\[
2a_m\prod_{j=i}^{i+m-1}(B_P)_{j,j+1}\ne0,
\]
contradicting (2.13).

If \(m\ge3\) is odd, take an entry at distance \(m-1\). A length-\(m\)
tridiagonal path over that distance has exactly one diagonal pause.
Writing \(b_j=(s_P-\lambda_j)/2\), the surviving coefficient after
dividing by the nonzero product of neighboring entries is
\[
2a_m\sum_{j=i}^{i+m-1}b_j+2a_{m-1}.
\]
There are at least two allowed consecutive starting positions because
\(m\le P\). Their difference is
\(2a_m(b_{i+m}-b_i)\ne0\), since the \(\lambda_j\) increase strictly.
Thus they cannot both vanish, again contradicting (2.13).

It follows that \(h\) is at most linear. The Casimir sum shows that its
only nonzero vanishing-average direction is
\(h(t)=a(t-s_P/3)\). The relation space therefore has dimension one,
and \(\operatorname{rank}W=P\). For \(P=0\), the equal-label and physical
spaces are both one dimensional and the Bose average is the identity, so
the rank is one. Together with §§2.3–2.5, this completes an independent
proof of every case in Theorem 1.

### 2.7 Complete bivariate counting series

The theorem gives a rational counting series for all three-body kernels.
Let
\[
D(t,u)=\frac16\left[
\frac1{(1-t)^2(1-u)^2}
+\frac3{(1-t^2)(1-u^2)}
+\frac2{(1+t+t^2)(1+u+u^2)}\right].
\]
This is the \(S_3\) Molien series of the physical primary spaces. The rank
generating series is
\[
R(t,u)=\frac1{(1-t)(1-u)(1-tu)}
-\frac{t+u+tu}{1-tu}-t^3u-tu^3.
\tag{2.14}
\]
Indeed the first term counts \(\min(P,Q)+1\); the next term removes the
one-dimensional relations on the nonzero diagonal and the two adjacent
bands, and the last terms remove the two exceptional low-degree relations.
Therefore
\[
\boxed{\sum_{P,Q\ge0}\dim\ker W|_{\mathcal H_{P,Q}}\,t^Pu^Q
=D(t,u)-R(t,u).}
\tag{2.15}
\]
This is a graded-vector-space counting formula. It does not assert that
the contact kernels are an ideal of the invariant polynomial ring.

## 3. Further analytic spectral consequences

### 3.1 An all-index upper bound and a rigorous bottom-gap upper scale

List strictly positive eigenvalues in decreasing order as \(e_j\).
Assume \(c_0\ge c_1\ge\cdots>0\), as for physical contact. Split the
interaction into channels \(k<j-1\) and \(k\ge j-1\). The former has
rank at most \(j-1\) by the one-pair rank construction. Each of the three
pairs contributes a positive operator of norm at most \(c_{j-1}\) to the
tail. The finite-dimensional min–max principle gives
\[
\boxed{e_j\le3c_{j-1}.}
\tag{3.1}
\]
For balanced \(P\ge1\), the rank is \(P\), hence
\[
\boxed{0<e_{\min}(P)\le
\frac3{8\pi(2\Delta+2P-3)}=O(P^{-1}).}
\tag{3.2}
\]
This is stronger than the \(O(\log P/P)\) upper bound obtainable from the
mean alone. It supplies no matching lower bound.

### 3.2 Schatten convergence and all positive moments above order one

The source's balanced channel realization is
\[
H_P=C_P^{1/2}(I+2M_P)C_P^{1/2},\qquad
M_P=R_P\circ R_P,
\]
with \(C_P=\operatorname{diag}(c_0,\ldots,c_P)\). Its nonzero spectrum is
that of physical \(W\). Extend it by zero in \(\ell^2(\mathbb N_0)\).
The source proves \(H_P\to C_\infty=\operatorname{diag}(c_k)\) in operator
norm by fixed-index recoupling decay and \(c_k\to0\).

For every real \(p>1\), (3.1) and \(c_k\asymp1/(k+1)\) give a summable
dominating sequence for the \(p\)-th powers of all eigenvalues. Fixed-index
spectral convergence therefore implies
\[
\boxed{\lim_{P\to\infty}\operatorname{Tr}(W_{3;P,P}^{p})
=\sum_{k=0}^{\infty}c_k^p
=\frac{\zeta(p,\Delta-\tfrac12)}{(16\pi)^p},\qquad p>1.}
\tag{3.3}
\]
The stronger statement
\[
\boxed{\|H_P-C_\infty\|_{\mathcal S_p}\longrightarrow0
\quad(p>1)}
\tag{3.4}
\]
also follows. The singular-value sum inequality gives
\(s_{2j-1}(H_P-C_\infty)\le s_j(H_P)+s_j(C_\infty)
\le4c_{j-1}\); operator-norm convergence controls each fixed singular
value, and dominated convergence completes the argument. There is no
trace-class claim at \(p=1\); the trace diverges logarithmically.

### 3.3 Fixed smaller degree: complete positive spectrum at large spin

Fix \(Q\). For \(P\ge Q+2\), apart from the single small exception, the
channel matrix is positive definite of dimension \(Q+1\) by Theorem 1.
Its nonzero physical spectrum is that of
\[
H_{P,Q}=C_Q^{1/2}\bigl[I+2(R_P\circ R_Q)_{0\le j,k\le Q}\bigr]C_Q^{1/2}.
\]
The fixed-index recoupling estimate
\((R_P)_{jk}=O_{j,k,\Delta}(P^{-\Delta})\) gives, in this fixed finite
dimension,
\[
\|H_{P,Q}-C_Q\|=O_{Q,\Delta}(P^{-\Delta}).
\]
Thus the entire positive spectrum, rather than only any fixed top part,
satisfies
\[
\boxed{e_{k+1}(P,Q)=c_k+O_{Q,\Delta}(P^{-\Delta}),
\qquad k=0,\ldots,Q.}
\tag{3.5}
\]
The remaining \(d_3(P,Q)-(Q+1)\) eigenvalues are exactly zero.
The dependence on \(Q\) is not uniform in this estimate.

## 4. Independent computation and its exact scope

`verify_rectangular_rank.py` constructs the pair eigenpolynomials from the
triangular differential operator, applies particle transpositions by
binomial substitution, and forms the compressed Bose average. It imports
no source implementation or saved result. The output is
`rectangular_rank_verification.json`.

Executed checks:

* All \(0\le Q\le P\le12\) at each of
  \(\Delta=3/2,2,7/3\): 273 exact rational rank computations, all agreeing
  with Theorem 1. These are regression evidence, not the all-index proof.
* Symbolic determinants for \((P,Q)=(2,0),(3,1),(4,2),(5,2),(6,3),(7,3),(8,4)\).
  Apart from the predicted \((3,1)\) zero, each factors into expressions
  strictly positive for \(\Delta>1\).
* Direct differential construction of \(B_n\) at symbolic mass for
  \(1\le n\le7\): tridiagonality, nonzero upper off-diagonal formula,
  and diagonal formula (2.2), all exact.

For example the independently obtained determinant at \((4,2)\) is
\[
\det K_{4,2}=
\frac{(\Delta+3)(3\Delta+4)(3\Delta+5)}
{18(2\Delta+1)^2(2\Delta+3)^2(2\Delta+5)}>0,
\]
where \(K\) is the unweighted Bose compression, not the physical contact
Hamiltonian. Its nonzero determinant verifies the rank, not physical
energy normalization.

## 5. Remaining questions and numerical leads

The exact kernel dimensions are now settled for all three-body bidegrees.
Constructing a convenient explicit polynomial basis for the full kernels,
especially the balanced left-right-even kernels, remains nontrivial.
The representation-theoretic rank proof gives linear constraints and
dimension, but does not by itself produce such a basis.

The matching lower bound \(e_{\min}(P)\gtrsim1/P\) remains open here.
Fresh double-precision Jacobi-diagonalization calculations suggest that
\(P\lambda_{\min}^{+}(8\pi W)\) tends to a positive, mass-independent
constant near \(0.277\), but this is only evidence. The unweighted
\(M_P=R_P\circ R_P\) has the exact eigenvalue \(-1/2\) corresponding to
the Casimir relation; its next lowest eigenvalues appear to approach
\(-5/16,-63/256,\ldots\), the negative subsequence of
\(P_{2n}(0)=(-1)^n\binom{2n}{n}/4^n\). A limiting integral operator for
the Racah-square kernel is a concrete route to an actual spectral-gap
proof. Uniform finite-degree inequalities must be checked carefully:
the proposed bound \(\lambda_2^{\uparrow}(M_P)\ge-5/16\) is **false**
already at finite degree (for example \(P=4,\Delta=2\), the value is
approximately \(-0.312939077<-0.3125\)).

No new error in the audited three-body rank and endpoint-limit proofs was
found. The distinction between their proofs and their numerical regression
records is correctly made in the newer source notes. The new theorem closes
a stated open problem rather than correcting a false claim.
