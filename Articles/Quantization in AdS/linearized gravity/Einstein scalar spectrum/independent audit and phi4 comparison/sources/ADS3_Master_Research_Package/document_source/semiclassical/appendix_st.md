# Appendix ST. Stable metrics, normal forms and effective low operators

This appendix proves the steps behind Chapter 9 that depend on the creation normalization, the singular physical metric or the finite determination of an effective differential operator. Its sources are [AS, App. F], [DS, Apps. E and H] and [A2, App. C]. All coefficient conventions are those of the exact pair operator in Chapter 4.

## ST-A. Occupation counting and analytic Hermitian reduction

### ST-A.1 Why there are only three powers of $N$

Let a creation monomial have occupation numbers $n_\alpha$ for $\alpha\ne0$ and $r=\sum n_\alpha$. In its averaged tensor realization there are $N-r$ zero excitations. The numbers of unordered selected pairs are

\[
\binom{N-r}{2},\qquad (N-r)n_\alpha,\qquad
\begin{cases}
n_\alpha n_\beta,&\alpha\ne\beta,\\
\binom{n_\alpha}{2},&\alpha=\beta.
\end{cases}
\]

Applying a fixed pair map to those choices gives the operator formula of ST-01. Conservation of both nonnegative excitation degrees forces a zero–zero input to remain zero–zero. It also prevents a nonzero input from disappearing into two zero modes. Thus the only quadratic dependence on $N$ is the scalar zero–zero contribution. Expanding $(N-\mathcal R)(N-\mathcal R-1)$ and the source-ordered middle term gives
$\gamma_{00}\binom N2+N\mathscr A+\mathscr B$ with exactly the coefficients in Chapter 9.

The averaged occupation map has squared norm

\[
\frac{\prod_\alpha h_\alpha^{n_\alpha}}{N!}
(N-r)!\prod_\alpha n_\alpha!
=\frac{g_s}{(N)_{\downarrow r}}.
\]

This calculation is also a direct normalization check against canonical Fock operators. The symbolic creation matrix acts in this averaged basis, so its selfadjointness condition is

\[
\Gamma_{\rm occ}(N)W_N=W_N^*\Gamma_{\rm occ}(N),
\]

and not $W_N=W_N^*$ in the coordinate Euclidean metric.

The generating function
$A(z,w)=\sum a_{pq}z^pw^q/(p!q!)$ obeys
$D_LA=zA$, $D_RA=wA$.
Multiplication by $\exp(-a_{10}z-a_{01}w)$ removes those two translation directions and produces the $c_{pq}$. Conversely multiplication by the inverse exponential recovers every $a_{pq}$. This proves the centered coordinate theorem and the identification of the simultaneous lowering kernel.

### ST-A.2 A regular orthonormal frame at $t=0$

On any fixed stable full excitation space put $t=N^{-1/2}$. The diagonal matrix

\[
U_s(t)=t^{r_s}\sqrt{g_s}\,
\prod_{j=0}^{r_s-1}(1-jt^2)^{-1/2}
\]

is analytic for small real $t$, using the positive analytic square root of the even factor. If a matrix entry sends count $r$ to $r'$, conjugation multiplies it by $t^{r'-r}$ times an analytic even nonvanishing factor. In $\mathscr A$, only $r'=r,r+1$ occur. In $\mathscr B$, only $r'=r-1,r,r+1$ occur. One sees this either from the pair count or directly from the fact that a nonzero conserved pair degree has at least one nonzero output excitation. Hence
$U(\mathscr A+t^2\mathscr B)U^{-1}$
has only nonnegative powers of $t$, beginning at orders zero or one.

The physical selfadjointness identity holds for every sufficiently large integer $N$. After clearing the finite denominators it is a polynomial identity in $N$, so it holds for all real $N$ in the domain where the Gram form is positive. Consequently the conjugated analytic matrix is Hermitian for every sufficiently small nonzero real $t$, and by continuity also at zero. Its parity is
$H(-t)=\Pi_{\rm occ}H(t)\Pi_{\rm occ}$,
with $(\Pi_{\rm occ})_{ss}=(-1)^{r_s}$.

Let $C$ be the constant embedding matrix of a centered monomial basis into the full occupation basis. For a centered monomial with $\ell$ factors, the unique term with $\ell$ excited factors is the product of its uncentered higher moments; every other term contains additional $a_{10}$ or $a_{01}$ factors and has strictly larger factor count. Distinct centered monomials have distinct leading occupation terms. Thus

\[
V(t)=U(t)C\,\operatorname{diag}(t^{-\ell})
\]

is analytic at zero and has independent columns there. Its Gram matrix
$\Gamma_{\rm frame}(t)=V(t)^*V(t)$ is analytic positive definite near zero. Choose its analytic Cholesky factor $\Gamma_{\rm frame}=LL^*$ and set $E(t)=V(t)L(t)^{-*}$. Then $E^*E=I$ and
$\widehat H(t)=E(t)^*H(t)E(t)$
is analytic Hermitian on a fixed coordinate space. The column-count parity intertwines $V(-t)$ with $\Pi_{\rm occ}V(t)$; uniqueness of the normalized Cholesky factor gives the corresponding primary parity relation.

Rellich's local theorem now applies exactly: a matrix analytic on a real interval and Hermitian at every real point has an analytic unitary eigenbasis and analytic real eigenvalues. The construction has supplied the fixed Hilbert space and real interval required by that theorem. It also explains why applying analytic eigenvalue theory directly to the non-Hermitian coordinate matrix $\mathscr A+u\mathscr B$ at a Jordan point would give the wrong unrestricted Puiseux conclusion.

### ST-A.3 A perturbative algorithm that respects clusters

For a simple leading eigenvalue, the usual recursive procedure is valid: project the coefficient equation along the leading vector to obtain the next eigenvalue coefficient, and solve on its orthogonal complement with the reduced inverse. At a degenerate leading eigenvalue $\lambda_0$, first retain its entire orthogonal spectral projection $P$, let $Q=I-P$, and put
$R_0=[Q(H_0-\lambda_0)Q]^{-1}$.
Writing $H=H_0+V(t)$, an invariant graph $P+\chi$, $\chi=Q\chi P$, satisfies

\[
\chi=-R_0\big[
QVP+QV\chi-\chi PVP-\chi PV\chi
\big].
\]

This equation recursively determines the graph without dividing inside the leading cluster. Its coordinate effective matrix is
$\lambda_0P+PVP+PV\chi$.
Conjugation by the positive square root of its graph metric $P+\chi^*\chi$ makes it Hermitian. Diagonalize the first non-scalar coefficient within that full cluster and repeat if it remains degenerate. This procedure is constructive and uses only finite matrix operations at fixed $(P,Q)$. Parity is preserved throughout, but it can pair two distinct branches rather than make each branch even.

### ST-A.4 The displayed Jordan example

For $(4,1)$, exact pair-projector evaluation and centered substitution give the matrix in ST-03. At a zero of the cubic $F(d)=2d^3-37d^2-11d+100$, its nilpotent part sends the first basis vector to $v(-1,1)$ in the last two coordinates and kills those coordinates, so it has rank one and square zero. The cubic has precisely two roots above one: $F(1)>0$, $F(2)<0$, $F(20)>0$, and
$F'(d)=6d^2-74d-11$ has only one critical point above one, a minimum. Evaluating $F$ at the rational endpoints in ST-03 isolates the roots.

The row vector $\ell=(-2,1,1)$ is an exact left eigenvector of $N\mathscr A+\mathscr B$ with eigenvalue $s_0N+b_0$. Its kernel is the invariant plane with columns

\[
S=\begin{pmatrix}1&0\\2&-1\\0&1\end{pmatrix}.
\]

Restriction through $S$ gives the two-dimensional matrix printed there. Expanding its quadratic characteristic polynomial proves the exact square-root formulas. Since $k,v>0$, the resonant splitting is actually nonzero; it is not inferred from the existence of a Jordan block alone.

### ST-A.5 The spectral curve and protected collisions

Let $h=b_{11}-b_{22}$ and
$\mathcal D(N)=(\delta N+h)^2+4kv(N+6/d)$.
It is strictly positive for every real $N>-6/d$, so the two plane eigenvalues remain separated throughout the physical stable range. Direct expansion gives

\[
\begin{aligned}
\operatorname{disc}_N\mathcal D&=
\frac{1728d^6(d+1)(d+3)(d+4)(2d^2+d-4)}
{(2d-1)^3(2d+1)^3(2d+3)^4(2d+5)^4}\\
&\quad\times(2d^2+25d+36)(2d^4+31d^3+77d^2+47d-4).
\end{aligned}
\]

All factors except $2d^2+d-4$ are positive for $d>1$. Away from $\delta=0$, the two finite branchpoints are a complex conjugate pair for $1<d<d_*$, and real outside $N>-6/d$ for $d>d_*$. At $d=d_*$ they coalesce and the radical is a perfect square. At a root of $\delta$, the polynomial becomes linear in $N$; one branchpoint moves to infinity and the remaining one is
$-6/d-h^2/(4kv)<0$.
This spectral curve gives a direct explanation for the square-root parameter at the physical mass resonances.

For the plane matrix $H_2$ and the exact third branch $\lambda_0=s_0N+b_0$,

\[
\det(H_2-\lambda_0I)=
-\frac{18d^2(d+3)(d+4)(2d^2+d-4)
[5d^2N+12d^2+7dN+60d+60]}
{(2d-1)^2(2d+1)(2d+3)^2(2d+5)^2}.
\]

At $d=d_*$ the full three-dimensional matrix minus $\lambda_0I$ has rank one: its two-dimensional invariant plane contributes one copy of $\lambda_0$, and the exact rank-one minors verify that the remaining copy is independent. Its physical eigenspace therefore has dimension two. This is the next protected doublet of the exact $Q=1$ family. Both factor identities are obtained by substituting the rational entries of ST-03 and clearing their displayed denominators, so their verification is finite polynomial algebra.

## ST-B. The residue test and finite algebraic linearization

The endpoint weights can be obtained by projecting the endpoint tensor $z_1^p$ onto pair-primary descendants. They satisfy

\[
\sum_{k=0}^p\alpha_{p,k}=1,\qquad
\sum_{k=0}^p(-1)^k\alpha_{p,k}=\mathbf1_{\{p=0\}}.
\]

The first identity is completeness of the orthogonal pair projectors; the second inserts the exchange operator, whose expectation on the endpoint tensor is zero for $p>0$. At $d=1/2$,

\[
\alpha_{p,0}=\frac{(1/2)_p}{(1)_p}
=\frac{\binom{2p}{p}}{4^p}=f_p.
\]

All the weights are regular at that parameter. In the exact Einstein sequence only $\gamma_{00}$ has a simple pole there, with residue $3/2$ relative to $2d-1$. The apparent pole in the spin-two $n=0$ formula cancels a numerator factor. In the diagonal $n=1$ channel the factor
$C+\mu=d(2d-1)$ is squared, so its apparent pole also cancels. All other denominators are nonzero there.

For any nonzero bidegree, the total even-pair weight is $1/2$. Thus the residue of
$2\sum\alpha_{p,k}\alpha_{q,\ell}(\gamma_{k\ell}-\gamma_{00})$
is $3(f_pf_q-1/2)$, proving ST-04's formula. This use of $d=1/2$ is a rational-function identity test outside the physical mass range.

Legendre's factorial valuation formula gives
$v_2\binom{2n}{n}=s_2(n)$, so
$v_2(f_n)=s_2(n)-2n$. For $p+q\geq2$,
$E(p,q)\geq2$; hence
$v_2(2f_pf_q-1)=1-E(p,q)$ and
$v_2(\rho_{pq})=-E(p,q)$.
For a genuine splitting into at least two primary indices, binary subadditivity gives
$E(\alpha)\geq\sum_iE(\beta_i)$, and every summand is positive. The proposed difference of residues has a unique term of least valuation, so cannot vanish.

To construct an eigenvariable $u_\alpha$, order monomials of degree $\alpha$ by their number of factors. Begin with $c_\alpha$. Suppose all terms through a chosen factor count have been removed from
$(\mathscr A-\sigma_\alpha)u_\alpha$. A remaining monomial
$\prod_i c_{\beta_i}$ has diagonal action $\sum_i\sigma_{\beta_i}$ and a triangular tail of higher count. Divide its coefficient by
$\sigma_\alpha-\sum_i\sigma_{\beta_i}$ and add the corresponding monomial to $u_\alpha$. The unwanted term cancels and only higher-count terms are introduced. The process stops because every factor has total degree at least two. The substitutions have leading coefficient one and hence an inverse of the same triangular form. On every finite cutoff the nonzero denominators are finitely many rational functions; their physical zeros form a finite exceptional set.

## ST-C. The character, finite jets and the first correction

### ST-C.1 An exact character derived without an eigenvector ansatz

Let $f$ be a centered chiral homogeneous polynomial of weight $P$, and write $f_1$ for the coefficient of $a_1^P$ and $f_2$ for that of $a_2a_1^{P-2}$. The lowering identity $Df=0$ implies

\[
Pf_1+2f_2=0.
\]

The coefficient of $a_1^p$ in $c_p$ is $(-1)^p(1-p)$, so
$\mathcal L(f)=(-t)^P f_1$ is exactly the multiplicative character
$\mathcal L(c_p)=(1-p)t^p$.

Only two kinds of excited pair input can contribute to the coefficient of $a_1^P$ after applying $W_N$: $(1,1)$ already present in $a_1^P$, and $(0,2)$ in $a_2a_1^{P-2}$. The exact degree-two pair matrix gives their output coefficients

\[
A=\frac{d\gamma_0+(d+1)\gamma_2}{2d+1},
\qquad B=\frac{d(\gamma_0-\gamma_2)}{2d+1}.
\]

For example these follow by taking the Gram-orthogonal projectors onto the descendants of $1$ and the primary $(z_1-z_2)^2$ in the degree-two pair space. The zero–zero and zero–one selected pairs contribute $\gamma_0$ unchanged. Literal pair counting therefore gives

\[
[a_1^P](W_N f)=
\left\{\gamma_0\left[\binom N2-\binom P2\right]
+\binom P2 A\right\}f_1
+(N-P+1)Bf_2.
\]

With $s=(\gamma_2-\gamma_0)/[2(2d+1)]$ and $f_2=-Pf_1/2$, this is

\[
\left[\gamma_0\binom N2+sP(Nd+P-1)\right]f_1.
\]

Comparison of powers of $N$ proves
$\mathcal L\mathscr A=sdP\,\mathcal L$ and
$\mathcal L\mathscr B=sP(P-1)\mathcal L$.
The character is nonzero for $P\geq2$ because $\mathcal L(c_P)=(1-P)t^P$.
Hence its scalar is an exact eigenvalue of the finite matrix. Under nonnegative affine defects it equals the global lower bound, which proves attainment as well as the exact minimum. This proof works for arbitrary real chiral coefficients and explains which later conclusions use positivity.

### ST-C.2 A finite exact prescription for the determining jets

At total pair degree $T$ use the basis $z_1^jz_2^{T-j}$, $0\leq j\leq T$, with

\[
\Gamma_T=\operatorname{diag}\left(
\frac{j!(T-j)!}{(d)_j(d)_{T-j}}\right).
\]

Construct the two lowering and raising matrices by

\[
(L_-)_{j-1,j}=j,\quad (L_-)_{j,j}=T-j,
\qquad
(L_+)_{j+1,j}=j+d,\quad (L_+)_{j,j}=T-1-j+d.
\]

Then
$C=(T+d)(T+d-1)I-L_+L_-$.
Its pair-channel projector is the finite polynomial

\[
\Pi_k=\prod_{\substack{0\leq\ell\leq T\\\ell\ne k}}
\frac{C-C_\ell I}{C_k-C_\ell}.
\]

Alternatively start with
$v_{k,j}=(-1)^{k-j}\binom kj$, raise it $T-k$ times using $L_+$, and set
$\Pi_k=v_k(v_k^*\Gamma_T)/(v_k^*\Gamma_Tv_k)$.
Both formulas are exact over $\mathbb Q(d)$ and yield
$\Pi_k^2=\Pi_k$ and $\Pi_k^*\Gamma_T=\Gamma_T\Pi_k$.

For Einstein in a chiral block,

\[
w_T=-4d^2\,\Pi_{\rm even}
+(\gamma_0+4d^2)\Pi_0+(\gamma_2+4d^2)\Pi_2.
\]

Here $\Pi_{\rm even}$ is the exchange-even projection, so no choice of unphysical odd-channel coefficient is used. Map each output monomial to its creation product, apply the unordered occupation formula to centered input polynomials, and set $a_1=0$ at the end. A primary polynomial expressed in centered coordinates has precisely those coordinates after this substitution, so this extracts its centered matrix without an inversion ambiguity.

For each higher generator, use $qKc_p=0$ recursively. The degree-four, degree-five and degree-six retractions are those printed in ST-05. Applying the resulting $q$ to the six low monomials gives exactly the six values of ST-06. Only total pair degrees through six occur. Together with the order-two proof in Chapter 9, those identities establish the operator in every degree.

### ST-C.3 The oblique inverse and the order-three theorem

At one weight order the coordinate basis as low monomials followed by all others. Then

\[
K=\begin{pmatrix}0&T\\0&D\end{pmatrix},\quad
q=\begin{pmatrix}I&-TD^{-1}\\0&0\end{pmatrix},\quad
R=\begin{pmatrix}0&TD^{-2}\\0&D^{-1}\end{pmatrix}.
\]

The matrix $D$ is invertible because its eigenvalues are positive. Both the upper-right block of $q$ and that of $R$ are required. Omitting the latter changes the effective correction.
If $L=-TD^{-1}$, write $\mathscr B$ in the same blocks and set

\[
B_{\rm low}=B_{LL}+LB_{HL},\quad
R_H=D^{-1}B_{HL},\quad R_L=TD^{-1}R_H.
\]

Then the exact correction matrix is

\[
C_2=-B_{\rm low}R_L-(B_{LH}+LB_{HH})R_H.
\]

This formula is the finite implementation of $-q\mathscr BR\mathscr B$ used in the independent checks.

For the differential order, use the characterization that an operator has order at most $m$ exactly when every $(m+1)$-fold commutator with multiplication vanishes. Both $q$ and $R$ commute with low multiplication: $K$ does because it is a derivation annihilating the low algebra, and the same follows for its exponential, spectral projection and reduced inverse. Expand a fourfold commutator of $q\mathscr BR\mathscr B$. A term with three commutators on either $\mathscr B$ vanishes. Every surviving possibility has two on each. A double commutator of an order-two operator is a multiplication $M_h$; multiplicativity gives
$qM_h=M_{q(h)}q$, hence
$qM_hR M_{h'}=0$.
This proves order at most three.

The character identity gives $\mathcal L\mathscr BR=0$, because $\mathcal LR=0$. Hence the correction has image in $\ker(\mathcal L|_{\mathcal S})=(J)$. If a differential operator $D=\sum a_\alpha\partial^\alpha$ has image in an ideal $I$, its coefficients lie in $I$: apply it first to $1$, then to monomials in increasing degree, subtract the already known lower-derivative contributions, and divide by the nonzero integer factorial. Applying this with $I=(J)$ proves coefficient divisibility. Weight zero and order at most three now allow only
$J\partial_y^2$, $J\partial_x^3$, $Jx\partial_x\partial_y^2$, $Jy\partial_y^3$.
The determining finite jets therefore prove the asserted four-function formula globally.

### ST-C.4 Complete coefficient table

In the following formulas $d=\Delta$. Define

\[
D_3=34d^3+273d^2+611d+240,
\]

\[
D_4=86d^4+1085d^3+4743d^2+7834d+2800,
\quad
E_4=214d^4+2709d^3+11915d^2+19854d+7056,
\]

\[
\begin{aligned}
P_7={}&392d^7+9492d^6+89350d^5+421595d^4\\
&+1048276d^3+1289469d^2+633490d+102000,
\end{aligned}
\]

\[
\begin{aligned}
P_{14}={}&67104d^{14}+3197136d^{13}+66188408d^{12}
+795919444d^{11}\\
&+6226850796d^{10}+33484727498d^9+127072393159d^8\\
&+343156515762d^7+655642305361d^6+869816630456d^5\\
&+776152186308d^4+445514734144d^3+155217203264d^2\\
&+29611287360d+2362752000,
\end{aligned}
\]

\[
\begin{aligned}
P_{11}={}&16d^{11}-1776d^{10}-52556d^9-618940d^8-4053536d^7\\
&-16362829d^6-41978760d^5-67587211d^4\\
&-64664772d^3-33117132d^2-8025696d-677376.
\end{aligned}
\]

Then

\[
r_0=-\frac{162(d+2)(d+3)(d+4)^2(2d^2+9d+3)P_7}
{(d+1)(2d-1)(2d+3)D_3^3},
\]

\[
r_1=\frac{24(d+2)^2(d+3)(d+4)^2(2d^2+9d+3)}
{(d+1)(2d-1)(2d+3)D_3},
\]

\[
r_2=-\frac{54(d+3)(d+4)P_{14}}
{5(d+1)(2d-1)(2d+1)(2d+3)(2d+7)D_3^2D_4},
\]

\[
r_3=-\frac{405(d+2)(d+3)(d+4)(d+5)(2d^2+11d+6)^2P_{11}}
{(d+1)(2d-1)(2d+1)(2d+3)(2d+7)D_3^3E_4}.
\]

Every denominator is strictly positive for $d>1$. The numerators need not have a common sign, and no such sign is used in the perturbation theorem.

The independent symbolic verifier constructs the complete pair-derived matrices at weights $6,8,9$, forms the complete oblique inverse above, and checks every entry of $C_2$ against these expressions as rational functions of $d$. The order-three and cusp-ideal argument shows why those finite identities determine the all-weight formula; checking a few numerical masses alone would not suffice.

### ST-C.5 Gegenbauer diagonal extraction and convergence

The recurrence for $F_b$ follows by matching the coefficient of
$x^{3j}y^{b-2j}$ in $J\partial_y^2F_b=b(b-1)F_b$. Its denominator is positive whenever $1\leq j\leq b/2$, so the polynomial is uniquely defined. Its first lower coefficient is

\[
f_{b,1}=\frac{2b(b-1)}{2b-3}.
\]

Acting with $C_2$ on a monomial $x^ay^b$ can raise its $y$ degree by at most two. To extract the diagonal coefficient in the triangular $x^aF_b$ basis, take its monomial diagonal contribution, include the contribution from the first lower monomial of $F_b$, and subtract the first lower term of the generated $F_{b+2}$ component. The contributions from more distant lower powers cannot return to $y^b$. This gives

\[
\eta(a,b)=b(b-1)\left[
r_0+r_2a+r_3(b-2)+
2r_1\left(
\frac{(a+1)(a+2)(a+3)}{2b-3}
-\frac{a(a-1)(a-2)}{2b+1}\right)\right].
\]

For $b=0,1$ the prefactor is zero; its denominators remain nonzero. For any fixed weight, the allowed $b$ have a fixed parity, so $b(b-1)$ is strictly increasing on that list. The first reduced matrix is therefore simple when $\varepsilon>0$.

Finally, since zero is semisimple and isolated in $K$, its finite Riesz projection and invariant graph for $K+u\mathscr B$ are analytic in a complex neighborhood of $u=0$. Their reduced matrix starts with $uB_{\rm low}$; after division by $u$, the simple roots at zero continue analytically. Multiplying back by $N=1/u$ produces a convergent integer expansion of the original energy coefficient. The rational recursions use only positive higher-generator gaps and nonzero first-low gaps, so at each fixed weight their coefficients are rational in $d$ with no physical poles. No analogous assertion about the complete nonchiral pencil is needed.
