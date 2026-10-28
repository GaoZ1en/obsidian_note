# 5. Constructing the complete finite scalar Fock spectrum

The preceding chapters supply a particular self-adjoint pair operator. This chapter turns that input into a complete finite spectral construction. The construction does not assume a large excitation, a large particle number, the later kernel classification, or an integrable many-body algebra. The essential finite-dimensional objects are the true Bose-primary space, its physical Gram matrix, and the matrix of the sum of pair interactions. Compression improves their representation; it does not change the problem being solved.

## 5.1 The finite Hilbert space and its exact dimension

For fixed particle number \(N\), let \(M_L,M_R\) denote the full left and right excitation levels. The scalar free energy and spin are

\[
E_0=N\Delta+M_L+M_R,\qquad J=M_L-M_R.
\tag{5.1}
\]

Write \(P,Q\) for primary degrees. They need not equal \(M_L,M_R\): the difference is the level of a global descendant. On labelled polynomials, the two total lowering operators are \(D_L=\sum_i\partial_{z_i}\) and \(D_R=\sum_i\partial_{w_i}\). Thus a primary is translation invariant in each set of variables. If \(V=\{(Z_1,\ldots,Z_N):\sum Z_i=0\}\) is the standard \(S_N\) representation, the physical primary space is

\[
\mathcal P_{N;P,Q}
=\left[\operatorname{Sym}^P(V)\otimes
\operatorname{Sym}^Q(V)\right]^{S_N}.
\tag{5.2}
\]

Here the permutation acts simultaneously on the left and right particle labels. Separate symmetrization of the two tensor factors would give a different Hilbert space and loses legitimate states. Every metric and projection below uses this diagonal Bose action.

The dimension follows by averaging characters. A permutation with cycle lengths \(a_1,\ldots,a_s\) has

\[
\det(1-x\sigma|_V)^{-1}
=\frac{1-x}{\prod_{j=1}^s(1-x^{a_j})}.
\]

Multiplying the left and right characters and grouping permutations by cycle type gives

\[
\sum_{P,Q\ge0}d_N(P,Q)x^Py^Q
=(1-x)(1-y)\sum_{\lambda\vdash N}
\frac1{z_\lambda}\prod_{a\in\lambda}
\frac1{(1-x^a)(1-y^a)},
\quad z_\lambda=\prod_j j^{m_j}m_j!.
\tag{5.3}
\]

This is also an elementary proof of the required Molien formula: the averaging operator is the orthogonal projector onto the invariant subspace, and its trace is its rank. The vacuum is treated separately. For \(N=1\), only \((P,Q)=(0,0)\) is primary.

For a distinct simultaneous orbit of monomials, choose its sum \(m_A\), rather than its average, as a coordinate vector. If a representative contains \(n_{pq}\) particles in mode \((p,q)\), then

\[
\|m_A\|^2=
\frac{N!}{\prod_{p,q}n_{pq}!}
\prod_{p,q}\left[\frac{p!q!}{(\Delta)_p(\Delta)_q}\right]^{n_{pq}}.
\tag{5.4}
\]

Distinct orbits are orthogonal. Averaged orbit vectors instead have the reciprocal orbit-size factor. Standard normalized occupation states are obtained by dividing by the square root of (5.4). These conversions are necessary whenever one compares a first-quantized pair kernel, averaged creation tensors, and standard Fock matrix elements.

## 5.2 A direct construction that is complete before compression

**Theorem FIN-01 (finite primary construction).** Fix \(\Delta>1\), \(N\in\mathbb Z_{\ge0}\), and finite \(P,Q\in\mathbb Z_{\ge0}\). With the pair coefficients of Chapter 4, the following finite procedure constructs every first-order coefficient on \(\mathcal P_{N;P,Q}\), its exact multiplicity, and its physical eigenspace.

First enumerate the finitely many simultaneous occupation orbits at bidegree \((P,Q)\). In their positive metric (5.4), take the common kernel of \(D_L,D_R\), or apply the explicit orthogonal primary projector below and select independent columns. Let \(\Phi\) be the resulting injective map from coordinate vectors to physical polynomials, and set

\[
\Gamma=\Phi^\dagger\Phi>0.
\]

The dagger includes the full physical monomial metric. On the labelled degree-\(T\) left space, the pair Casimir is

\[
C_{ij}^L=-(z_i-z_j)^2\partial_i\partial_j
+\Delta(z_i-z_j)(\partial_i-\partial_j)+\Delta(\Delta-1),
\quad C_k=(\Delta+k)(\Delta+k-1).
\tag{5.5}
\]

Its possible eigenvalues are \(C_k\), \(0\le k\le T\), and they are distinct because \(\Delta>1\). Its exact projector is the finite polynomial

\[
\mathsf P_{ij,k}^L
=\prod_{\substack{0\le r\le T\\r\ne k}}
\frac{C_{ij}^L-C_rI}{C_k-C_r}.
\tag{5.6}
\]

Use the analogous right projectors, set \(w_{ij}=\sum_{k,\ell}\gamma_{k\ell}\mathsf P^L_{ij,k}\mathsf P^R_{ij,\ell}\), and sum over pairs. On a Bose state only \(k+\ell\) even occurs for the interacting pair; any choice on unused odd-parity channels gives the same physical restriction. The matrix \(M\) defined by \(W_N\Phi=\Phi M\) satisfies

\[
M^\dagger\Gamma=\Gamma M.
\tag{5.7}
\]

Its characteristic polynomial, exact kernels \(\ker(M-gI)\), and the embedding \(\Phi\) solve the finite problem.

**Proof.** The occupation basis spans the full symmetric tensor level. Taking the two lowering kernels gives exactly (5.2), because in positive discrete series the total representation decomposes into lowest-weight modules and the two chiral actions commute. Formula (5.6) is ordinary spectral interpolation on a finite diagonalizable Casimir. Therefore the constructed pair action is exactly the prescribed spectral multiplier on every pair submodule. Its sum commutes with permutations and both global algebras, so it maps the primary space to itself. The physical metric is positive, and the pair coefficients are real. Equation (5.7) follows, giving a matrix similar to the Hermitian matrix \(\Gamma^{1/2}M\Gamma^{-1/2}\). Consequently every root is real, geometric and algebraic multiplicities agree, and the coordinate eigenspaces exhaust the physical space. No assertion about a later kernel or limit enters this proof. \(\square\)

An explicit primary projector often avoids solving two linear systems. Put \(U_L=\sum_i(z_i^2\partial_{z_i}+\Delta z_i)\). For \(N\ge1\), at left degree \(P\),

\[
\Pi_L(P)=\sum_{j=0}^{P}
\frac{(-1)^j U_L^jD_L^j}
{j!\prod_{r=0}^{j-1}(N\Delta+2P-r-2)},
\qquad \Pi_{P,Q}=\Pi_L(P)\Pi_R(Q).
\tag{5.8}
\]

For \(H=N\Delta/2+P\), commuting \(D_L\) past \(U_L^j\) gives coefficient \(j(2H-j-1)\) on \(U_L^{j-1}D_L^j\). Consecutive summands in \(D_L\Pi_L\) cancel. Each term is self-adjoint, and the sum is the identity on \(\ker D_L\); hence it is its orthogonal projector. The smallest denominator factor is positive in the indicated finite domain. The right construction commutes with it. Equation (5.8) also proves that primary projection preserves any restriction on the pair Casimir support, since each pair Casimir commutes with the total generators.

## 5.3 Exact roots, multiplicities, and physical spectral projectors

“Exact” has three distinct computational meanings here. For rational \(\Delta>1\), every matrix entry is rational. A root is specified exactly by its irreducible or square-free polynomial and a rational isolating interval; decimal values are optional displays. For a real algebraic \(\Delta\), work in its explicitly specified ordered number field, cancel removable expressions, and use real algebraic root isolation over that field. For a symbolic \(\Delta\), the entries are rational functions and the characteristic polynomial is a finite symbolic specification of the family. At a general real parameter it defines the finite spectral problem exactly, but it does not supply a terminating numerical oracle for a noncomputable real number. The command-line entry accepts rational or symbolic gaps; exact algebraic specializations are illustrated through the Python interface.

**Theorem FIN-02 (physical projectors and specialization).** Let \(m(t)\) be the square-free characteristic polynomial of \(M\) after fixing the parameter. For any root \(a\) of \(m\),

\[
p_a(M)=\frac{[m(t)/(t-a)]_{t=M}}{m'(a)},
\qquad
\mathbb P_a=\Phi p_a(M)\Gamma^{-1}\Phi^\dagger.
\tag{5.9}
\]

The first expression is the coordinate spectral projector; the second is the orthogonal projector on the physical Hilbert space. Its rank is the exact multiplicity of \(a\).

Indeed the scalar polynomial in (5.9) is one at \(a\) and zero at every other eigenvalue. Applying the spectral theorem proves idempotence, completeness, and metric self-adjointness. For the embedded operator, \(\Phi^\dagger\Phi=\Gamma\) immediately gives \(\mathbb P_a^2=\mathbb P_a\). Omitting \(\Gamma^{-1}\) would fail in a nonorthonormal basis.

A special mass must be substituted **before** deciding pivot columns, matrix rank, square-free factors, or multiplicities. One may first construct a redundant symbolic presentation with regular entries, specialize it, and then choose a new independent image basis. A generic eigenvector chart can have a pole where the physical eigenspace remains regular. Such a pole is a coordinate failure, not a singularity of the Hamiltonian. The removable ground-channel expression at \(\Delta=3/2\) is cancelled before evaluation. The critical mass \(\Delta_*=(\sqrt{33}-1)/4\), discussed in Chapter 6, gives a concrete multiplicity jump.

## 5.4 Pair–spectator Gram compression

For computational purposes orient the external block so \(P\ge Q\). Chapter 4 gives

\[
W_N=b_N(Q)I+A_N,\quad
b_N(Q)=-2N(N-1)\Delta^2-8Q(N\Delta+Q-1),
\tag{5.10}
\]

where \(A_N\ge0\) and its pair summands have coefficients

\[
a_{k\ell}=\gamma_{k\ell}-[4\mu-8C_\ell]>0
\quad\hbox{exactly when }k\le\ell+2,
\qquad k+\ell\text{ even}.
\tag{5.11}
\]

All other allowed channels have zero coefficient. This narrow support in the pair labels, rather than any commutativity between different pairs, is the reason a smaller matrix exists.

Fix pair \(12\). Couple its primary \((z_1-z_2)^k(w_1-w_2)^\ell\) to a complete spectator primary of \(N-2\) particles and then to total bidegree \((P,Q)\). Retain all bad channels in (5.11). These coupled vectors form the columns of \(F\). They span the pair-\(12\) positive subspace invariant under \(H=S_2\times S_{N-2}\). Choose independent spectator bases, so the Gram \(\Gamma=F^\dagger F\) is positive. The diagonal matrix \(D=\operatorname{diag}(a_{k\ell})\) commutes with \(\Gamma\), because different pair channels are orthogonal. Write

\[
\Pi_B=\frac1{N!}\sum_{\sigma\in S_N}U_\sigma,
\quad S=\Pi_BF,\quad c_N=\binom N2,
\quad T=c_NS^\dagger S.
\tag{5.12}
\]

The three double-coset types are the same pair, one overlapping particle, and disjoint pairs. Counting their multiplicities gives the finite formula

\[
T=\Gamma+2(N-2)R_1+\binom{N-2}{2}R_0,
\quad
R_1=F^\dagger U_{(23)}F,
\quad R_0=F^\dagger U_{(13)(24)}F.
\tag{5.13}
\]

The \(R_1\) term is absent at \(N=2\), and the \(R_0\) term is absent if \(N<4\). These are Gram overlaps with the actual physical inner product. In particular, they are not unweighted recoupling tables.

**Theorem FIN-03 (positive-image equivalence).** With these definitions,

\[
A_N=c_NS D\Gamma^{-1}S^\dagger,
\qquad M_{\rm aux}=D\Gamma^{-1}T,
\qquad A_NS=SM_{\rm aux}.
\tag{5.14}
\]

The nonzero spectrum of \(M_{\rm aux}\), including multiplicities, is exactly the positive spectrum of \(A_N\). Its auxiliary zero directions do not represent physical zero-energy states.

**Proof.** On the labelled pair-\(12\) subspace, spectral resolution in the complete frame is \(FD\Gamma^{-1}F^\dagger\). On Bose vectors all pairs have the same compressed quadratic form, so summing the \(c_N\) conjugates yields (5.14). Multiplication by \(S\) proves the intertwining. Since \(K=D\Gamma^{-1}>0\), \(M_{\rm aux}=KT\) is similar to the positive semidefinite Hermitian matrix \(K^{1/2}TK^{1/2}\). Its zero eigenvalue is semisimple. The identity \(A_N=(\sqrt{c_N}SK^{1/2})(\sqrt{c_N}SK^{1/2})^\dagger\) proves equality of the nonzero spectra by the singular-value decomposition. On the auxiliary nonzero spectral space \(S\) is injective; otherwise (5.14) would turn a nonzero eigenvector into a zero column and contradict the positive quadratic form. This proves the full state correspondence. \(\square\)

Let \(I\) index independent columns of \(T\ge0\); then \(T_{II}>0\). The exact coordinate reduction is

\[
C=T_{II}^{-1}T_{I,:},\qquad
S=S_I C,\qquad
M_+=C(M_{\rm aux})_{:,I}.
\tag{5.15}
\]

Its metric is \(T_{II}/c_N\), and it acts on an actual basis of \(\operatorname{im}A_N\). If \(R=\operatorname{rank}T\), the physical characteristic polynomial is

\[
\det(xI-A_N)=x^{d_N(P,Q)-R}\det(xI_R-M_+).
\tag{5.16}
\]

Thus exact positive-image compression is available before knowing the closed kernel formula. Chapter 6 identifies \(d_N-R\) with \(\kappa_N(P,Q)\). An implementation should retain the pair \((d_N-R,\det(xI_R-M_+))\), rather than expanding an enormous list of zero coefficients.

The auxiliary size is

\[
r_{\rm aux}=
\sum_{\ell=0}^{Q}
\sum_{\substack{0\le k\le\min(P,\ell+2)\\k+\ell\ \mathrm{even}}}
\dim\mathcal H^{\rm Bose}_{N-2;P-k,Q-\ell}.
\tag{5.17}
\]

The spectator degree includes its descendants. It is not merely the spectator-primary dimension. For fixed \(N,Q\), \(N\ge4\), the physical dimension grows as \(P^{N-2}\), whereas this auxiliary size and the actual positive rank grow as \(P^{N-3}\). These fixed-parameter statements do not imply uniformly polynomial complexity when \(N,P,Q\) all vary.

## 5.5 Three particles and the all-\(N\) recoupling compiler

For three particles the spectator has no internal primary excitation. The bad labels are simply \((k,\ell)\) in (5.17), and normalized pair bases give

\[
H_{k\ell,rs}=\sqrt{a_{k\ell}a_{rs}}
\left[\delta_{kr}\delta_{\ell s}+2\mathcal R_P(k,r)\mathcal R_Q(\ell,s)\right].
\tag{5.18}
\]

Here \(\mathcal R_T\) is the finite, real orthogonal Racah matrix for three equal \(D^+_{\Delta/2}\) factors. Appendix F gives its terminating formula, norm weights, and a rational version without square roots. The positive eigenvalues of (5.18) are the residual eigenvalues. If \(v\) is a unit eigenvector of \(H\) with eigenvalue \(x>0\), and \(S_{k\ell}\) denotes the Bose projection of the normalized coupled state, the physical normalized state is

\[
\Psi_x=\sqrt{\frac3x}\sum_{k,\ell}\sqrt{a_{k\ell}}\,v_{k\ell}S_{k\ell}.
\tag{5.19}
\]

Its norm follows directly from (5.18), including the factor three. Keeping an eigenvector of a nonsymmetric rational table with the Euclidean norm would not give this state.

For general \(N\), use a left-comb coupling basis labelled by nonnegative integers \(n_2,\ldots,n_N\) with sum \(P\), and an independent right comb with sum \(Q\). A binary coupling of lowest weights \(a,b\) with relative degree \(m\) has norm

\[
\eta(m;a,b)=\frac{m!(2a+2b+m-1)_m}{(2a)_m(2b)_m}.
\tag{5.20}
\]

The comb metric is the product of these norms. Adjacent particle exchanges act by a local rational Racah matrix; exchange of the first two leaves contributes \((-1)^{n_2}\) in each chirality. The total Bose projector has the nested coset factorization

\[
\Pi_m=\frac1m\left(I+\sum_{i=1}^{m-1}U_{(im)}\right)\Pi_{m-1}.
\tag{5.21}
\]

Expanding each transposition as a palindrome of adjacent exchanges costs \(\sum_{m=2}^N(m-1)^2=O(N^3)\) local permutation steps. This avoids a literal \(N!\)-term average. It does not remove the growing dimension

\[
D_{\rm labelled}=\binom{P+N-2}{N-2}\binom{Q+N-2}{N-2}.
\tag{5.22}
\]

**Theorem FIN-04 (compiled construction).** Apply (5.21) first to spectator leaves and then to all particles, using the actual local Racah exchange matrices and the product Gram (5.20). Select independent positive-image columns by exact Gram elimination. The resulting matrix and metric are exactly those in (5.15), up to an invertible change of coordinates. They therefore supply the same physical eigenvalues and states as Theorem FIN-01.

The proof is representation theoretic, not an inference from matching spectra. The finite Clebsch–Gordan formula in Appendix F constructs each comb as an actual polynomial intertwiner. The local Racah transformation equals the literal exchange of two leaves in that construction. Consequently different exchange words agree because they act as the same permutation, and (5.21) is the true orthogonal Bose projector. Selecting columns changes only coordinates. The implementation uses these identities without materializing those polynomials. Exact comparisons with the direct orbit engine test its normalization and coding; the intertwiner identity supplies its all-index justification.

For the specified dense-arithmetic model, writing \(r_0\) for the labelled bad-pair seed count, \(r\) for the spectator-Bose auxiliary count, and \(R\) for the final rank, a useful assembly bound is

\[
O\!\left(N^3(P+Q+2)(r_0^2+rD_{\rm labelled})
+r_0r^2+rR^2+r^3\right).
\tag{5.23}
\]

Characteristic-polynomial work and rational bit growth are additional. At fixed \(N,Q\), one projected-column strategy stores \(O(P^{2N-5})\) entries for \(N\ge4\). The three-particle cached outer table uses \(O(P^2)\) entries. These bounds describe specific implementations. Neither an absence of factorial enumeration nor a favorable fixed-\(Q\) exponent is a universal speed comparison against every other solver. At fixed \(P,Q\), the stable-\(N\) pencil of Chapter 9 offers a different compression, whose correctness is proved independently there.

## 5.6 Descendants and full energy-shell assembly

**Theorem FIN-05 (finite Fock completeness).** After constructing every primary block with \(P\le M_L,Q\le M_R\), apply normalized global raising operators to obtain its unique descendant at level \((M_L,M_R)\). A primary of weights \(h_L=N\Delta/2+P\), \(h_R=N\Delta/2+Q\) has descendant

\[
\frac{(U_L)^{M_L-P}(U_R)^{M_R-Q}\Psi}
{\sqrt{(M_L-P)!(2h_L)_{M_L-P}(M_R-Q)!(2h_R)_{M_R-Q}}}.
\tag{5.24}
\]

It has the same coefficient \(g\). The full level dimension is

\[
\dim\mathcal H^{\rm Bose}_{N;M_L,M_R}
=\sum_{P=0}^{M_L}\sum_{Q=0}^{M_R}d_N(P,Q).
\tag{5.25}
\]

At fixed numerical \(E_0,J\), enumerate \(0\le N\le\lfloor E_0/\Delta\rfloor\), retaining exactly those for which

\[
M_L=\frac{E_0-N\Delta+J}{2},\qquad
M_R=\frac{E_0-N\Delta-J}{2}
\tag{5.26}
\]

are nonnegative integers. Include the vacuum only at \(E_0=J=0\). The direct sum of these finite levels is the whole normal-form scalar shell.

To merge repeated roots, factor each characteristic polynomial into square-free pieces with their multiplicities. Split two pieces by their polynomial greatest common divisor, add multiplicities on the common factor, and continue until all root sets are pairwise coprime. This procedure merges equal algebraic eigenvalues exactly across primary, descendant, and particle-number sectors. Comparing rounded decimal roots is unnecessary and can be wrong near crossings.

The proof uses the orthogonal lowest-weight decomposition, whose raising norm is the denominator in (5.24), and the global Ward identities ensuring \(W_N\) intertwines both chiral actions. Equation (5.25) is also obtained by dividing the character of a full level by the two descendant factors. The order-\(G\) number-preservation theorem of Chapter 3 is what permits the direct sum over \(N\), even at integer \(\Delta\), where different particle numbers may share \(E_0,J\). This is a statement about the effective scalar branch in normal form. Inverse dressing reconstructs the original variables and their constraint/virtual gravitational content.

## 5.7 Worked examples

### A two-particle normalization check

For \(N=2\), each allowed primary pair label \((k,\ell)\), \(k+\ell\) even, occurs once. At \(\Delta=2\),

\[
\gamma_{00}=-\frac{56}{5},\quad
\gamma_{11}=-\frac{1368}{35},\quad
\gamma_{20}=-\frac{552}{35},\quad
\gamma_{40}=-16.
\tag{5.27}
\]

The primary is proportional to \((z_1-z_2)^k(w_1-w_2)^\ell\); its norm is the product of \(k!(2\Delta+k-1)_k/(\Delta)_k^2\) and the analogous right expression. This check sees both the Bose parity rule and the \(G\)-coefficient convention. At the superficially singular point \(\Delta=3/2\), the cancelled ground formula gives \(\gamma_{00}=-9/2\).

### A mixed block with genuine spectral mixing

Take \(\Delta=2,N=3,(P,Q)=(2,2)\). There are two primaries, free primary energy \(E_0=10\), and no logarithmic zero mode. A rational coordinate matrix from the direct orbit construction is

\[
M=\frac1{35}\begin{pmatrix}-4848&1088\\-424&-2048\end{pmatrix}.
\tag{5.28}
\]

It is not symmetric in these coordinates, but it is self-adjoint in the physical Gram. To reconstruct the coordinate basis without an unspecified convention, use the eight orbit sums in this order:

\[
\begin{gathered}
\{00,00,22\},\ \{00,01,21\},\ \{00,02,20\},\ \{00,10,12\},\\
\{00,11,11\},\ \{01,01,20\},\ \{01,10,11\},\ \{02,10,10\}.
\end{gathered}
\]

Here \(pq\) means \(z^pw^q\), and braces mean the sum of distinct simultaneous permutations. A convenient embedded basis for the same matrix is

\[
\Phi=\frac1{35}
\begin{pmatrix}
588&-1232\\-588&1232\\506&-2392\\-588&1232\\
752&1088\\-424&3552\\424&-3552\\-424&3552
\end{pmatrix},
\quad
\Gamma=\begin{pmatrix}
2685056/3675&-1762304/735\\
-1762304/735&17099776/1225
\end{pmatrix}.
\tag{5.29}
\]

Equations (5.4), (5.28), and (5.29) allow a direct check of \(M^T\Gamma=\Gamma M\). The characteristic polynomial is

\[
g^2+\frac{6896}{35}g+\frac{1484288}{175}=0,
\tag{5.30}
\]

with simple roots approximately \(-133.4916894988750\) and \(-63.53688192969638\). At either root, one may use the coordinate vector \((1088,35g+4848)^T\), embed it through \(\Phi\), and divide by its \(\Gamma\)-norm. This gives the physical state, not merely its eigenvalue. The two-projector formula simplifies to \((M-g_{\mp}I)/(g_{\pm}-g_{\mp})\). The packaged run contains rational isolating intervals and the full embedding. An independent all-\(N\) Racah compilation gives exactly the same polynomial.

### A genuinely saturated block

At \(\Delta=2,N=3,(P,Q)=(12,0)\), the primary dimension is three. One exact state is

\[
\Psi_0=\prod_{i<j}(z_i-z_j)^4,\qquad
\|\Psi_0\|^2=\frac{15158}{49},\qquad g_0=b_3(0)=-48.
\tag{5.31}
\]

The remaining two coefficients are the roots of

\[
g^2+\frac{700516}{7735}g+\frac{110719968}{54145}=0,
\tag{5.32}
\]

approximately \(-47.64884154589118\) and \(-42.91560577149731\). Thus the Casimir bound is attained once, and the other two states are strictly above it. The compressed output stores one zero residual factor and a quadratic positive residual polynomial. The general proof of the state and its exact multiplicity follows in Chapter 6; the finite construction already obtains all three roots without that classification.

### One complete free shell

At \(\Delta=2,E_0=10,J=0\), the legal particle-number sectors are:

| \(N\) | \(M_L,M_R\) | Full scalar dimension |
|---:|:---:|---:|
| 1 | \(4,4\) | 1 |
| 2 | \(3,3\) | 8 |
| 3 | \(2,2\) | 8 |
| 4 | \(1,1\) | 2 |
| 5 | \(0,0\) | 1 |

The total dimension is 20. Its exact coefficient multiset, already merging coincident roots, is:

| Coefficient \(g\), or polynomial defining each root | Multiplicity of each root |
|---|---:|
| \(0\) | 1 |
| \(-56/5\) | 1 |
| \(-552/35\) | 2 |
| \(-1368/35\) | 1 |
| \(-1000/21\) | 2 |
| \(-416/5\) | 1 |
| \(-11040/77\) | 1 |
| \(-168/5\) | 1 |
| \(-40\) | 2 |
| \(-528/7\) | 1 |
| \(-2768/35\) | 2 |
| \(g^2+(6896/35)g+1484288/175=0\) | 1 |
| \(-336/5\) | 1 |
| \(-4304/35\) | 1 |
| \(-112\) | 1 |

The quadratic contributes two roots, so the displayed multiplicities sum to 20. Every corresponding descendant and primary embedding is included in the run record. All these states have \(E=10+Gg+o(G)\); their common free energy does not justify mixing particle-number sectors after the proven normal-form reduction.

A large label provides a separate encoding check: for \(N=3,P=10^9,Q=6\), the exact primary dimension is \(1{,}166{,}666{,}668\), the exact bound multiplicity is \(1{,}166{,}666{,}645\), and the positive rank is 23. The present regression recalculates these counts; it does not claim a new billion-degree diagonalization. The finite 23-channel representation is the theorem that makes such an input meaningful.

## 5.8 Practical entry points and verification scope

The package has one shared finite engine at `code/engine/fock_spectrum.py`, an independent direct orbit implementation at `code/engine/general/fock_exact.py`, and the all-\(N\) compiler at `code/research/racah/all_n_recoupling.py`. For example, from the extracted package directory:

```bash
python code/engine/fock_spectrum.py primary --delta 2 --n 3 --p 2 --q 2 --roots --states --projectors --output primary.json
python code/engine/fock_spectrum.py shell --delta 2 --energy 10 --spin 0 --roots --states --output shell.json
python code/engine/fock_spectrum.py bound --delta 2 --n 3 --p 12 --q 0 --verify --output bound.json
python code/research/racah/all_n_recoupling.py --delta 2 --n 4 --p 2 --q 2 --states --output compiled.json
```

The code uses exact rational algebra for the finite matrices and can add rational root intervals. Numerical cluster comparisons are separately labelled. The mandatory verification runner refuses optimized Python, requires every scheduled task, validates payload status and required fields, checks independent physical and auxiliary dimensions, and tests strict rational inertia bounds. Missing dependencies, skipped tasks, and malformed certificates cannot count as passes. Appendix V describes the current run and its negative tests. These safeguards validate what a computation actually established; the all-index proofs are the arguments in this note.
