# Independent n=3 Ising Gaussian word: branch-free determinant and Fredholm convergence

## Result and scope

For the even-N critical-PBC Ising even vacuum specified below, both string-free words have exact finite, branch-free determinant formulas. In particular, the normalized n=3 word with one parity-conjugated Gaussian is exactly a relative determinant of 3-by-3 auxiliary-replica blocks. Its continuum convergence follows from the supplied strong diagonal and Hilbert–Schmidt cross-block convergence, without Fisher–Hartwig asymptotics.

The conclusion is an explicit matrix Fredholm determinant and its convergence, not a closed cross-ratio formula, a CFT/theta-function identification, or a theorem for general replica number. No other review was read in obtaining the argument. No main-text file was edited.

## 1. Objects, conventions, and finite signs

Let A=A1 union A2 consist of two disjoint lattice intervals, with m_j sites in A_j and m=m1+m2. Order the 2m Majoranas by the two sublattices, and use

\[
\{\eta_a,\eta_b\}=2\delta_{ab},\qquad
\Gamma_{ab}=\frac{i}{2}\operatorname{Tr}G[\eta_a,\eta_b].
\]

Consequently, the convention used in this review is

\[
\boxed{\operatorname{Tr}G\eta_a\eta_b=\delta_{ab}-i\Gamma_{ab}.}
\]

The finite vacuum reduction has

\[
\Gamma(C)=\begin{pmatrix}0&C\\-C^T&0\end{pmatrix},\qquad
C_{ij}=\frac{1}{N\sin[\pi(j-i+1/2)/N]},\quad i,j\in A.
\]

The formula keeps the original signed sine kernel, including its half-site shift. In particular, no absolute values of C entries or continuum replacements are made in the finite identities. G is the normalized even Gaussian density with this covariance. Physical finite reductions have real antisymmetric Gamma and norm at most one.

Let P1 be the fermion parity of A1, and set

\[
T=\operatorname{diag}(-I_{A_1},I_{A_2}),\qquad
S=\operatorname{diag}(T,T).
\]

Parity conjugation sends each Majorana in A1 to its negative, so

\[
G'=P_1GP_1,\qquad \Gamma'=S\Gamma S=\Gamma(TCT).
\]

The words and reference moments are

\[
W_0=\operatorname{Tr}G^3,\qquad W_1=\operatorname{Tr}G^2G',\qquad
p_3(A_j)=\operatorname{Tr}G_j^3,
\]

where G_j is the Gaussian reduction with covariance Gamma(C_jj).

### Convention map and the Wick phase

The earlier independent calculation used the alternative notation Gamma_old satisfying

\[
\operatorname{Tr}G\eta_a\eta_b=\delta_{ab}+i(\Gamma_{\rm old})_{ab}.
\]

It describes the same state precisely when

\[
\Gamma_{\rm old}=-\Gamma,\qquad C_{\rm old}=-C.
\]

For an ordered subset I of size 2k, write eta_I for the ordered Clifford monomial. In the present convention,

\[
\operatorname{Tr}G\eta_I=(-i)^k\operatorname{Pf}(\Gamma_I),\qquad
G=2^{-m}\sum_{I\text{ even}} i^{|I|/2}\operatorname{Pf}(\Gamma_I)\eta_I.
\tag{1}
\]

Indeed, eta_I squared is (-1)^k and different Clifford monomials are trace-orthogonal. The alternative convention has coefficient (-i)^k Pf((Gamma_old)_I), which equals i^k Pf(Gamma_I) after the map above. The final determinant formulas contain C only quadratically and are unchanged under C to -C. The verification script tests both the contraction identity and this convention map explicitly.

## 2. Branch-free finite formulas

The result is

\[
\boxed{
W_0=4^{-m}\det(I+3CC^T),\qquad
W_1=4^{-m}\det M(C),\quad
M(C)=I+CC^T+2CTC^TT.
}
\tag{2}
\]

In particular,

\[
p_3(A_j)=4^{-m_j}\det(I+3C_{jj}C_{jj}^T).
\tag{3}
\]

### 2.1 Single-Gaussian moment and squared-density covariance

Orthogonal canonical form gives 2-by-2 covariance blocks nu_l J, where J=[[0,1],[-1,0]]. Each normalized one-mode density has eigenvalues (1 plus/minus nu_l)/2. Thus

\[
p_3=\prod_{\ell=1}^m\frac{1+3\nu_\ell^2}{4}.
\]

For Gamma(C), the nu_l squared are the eigenvalues of CC^T, proving the W0 formula. The same canonical calculation gives

\[
p_2=\operatorname{Tr}G^2=2^{-m}\prod_\ell(1+\nu_\ell^2),\qquad
\Gamma^{(2)}=\frac{2\Gamma}{I-\Gamma^2}
\tag{4}
\]

for the covariance of G squared divided by p2. The denominator is positive and at least I for real antisymmetric Gamma.

### 2.2 Signed overlap Pfaffian

For normalized Gaussian Wick polynomials G(A), G(B), with real antisymmetric 2m-by-2m A and B, (1) gives

\[
\operatorname{Tr}G(A)G(B)
=2^{-m}\sum_{I\text{ even}}\operatorname{Pf}(A_I)\operatorname{Pf}(B_I)
=(-1)^m2^{-m}\operatorname{Pf}
\begin{pmatrix}A&I\\-I&-B\end{pmatrix}.
\tag{5}
\]

The block order in the Pfaffian is the displayed order. Its basepoint value at A=B=0 is (-1)^m, fixing the sign in (5). Squaring gives the determinant identity

\[
[\operatorname{Tr}G(A)G(B)]^2=2^{-2m}\det(I-AB).
\tag{6}
\]

Equations (4) and (6) imply

\[
W_1^2=4^{-2m}\det(I-\Gamma^2-2\Gamma\Gamma').
\tag{7}
\]

No square-root prescription has yet been used.

### 2.3 Why the finite square has a globally fixed polynomial root

The two diagonal sublattice blocks on the right-hand side of (7) are

\[
M(C)=I+CC^T+2CTC^TT,\qquad
\widetilde M(C)=I+C^TC+2C^TTCT.
\]

They have the same determinant: Sylvester's identity gives

\[
\det M(C)=\det\{I+(C^T+2TC^TT)C\},
\]

and transposing the last matrix gives tilde M. Hence (7) is

\[
(4^mW_1)^2=[\det M(C)]^2.
\]

The Wick expansion makes both 4^m W1 and det M polynomials in the entries of C. Equality of their squares on the open physical ball is therefore a polynomial identity. A polynomial ring is an integral domain, and both polynomials equal 1 at C=0. It follows that

\[
4^mW_1=\det M(C)
\]

as a polynomial identity, including nonphysical real C and physical boundary points by continuation. This is the decisive branch argument: the answer is not obtained by silently taking a principal square root or an absolute value. For physical states W1 is nonnegative because it is the trace of the product of the positive operators G squared and G prime; the determinant inherits that property.

## 3. A 3m-dimensional exact linearization

Define the auxiliary-replica matrix

\[
L(C)=
\begin{pmatrix}
I&C&\sqrt2 CT\\
-C^T&I&0\\
-\sqrt2 C^TT&0&I
\end{pmatrix}.
\tag{8}
\]

A Schur complement against its last two identity blocks gives

\[
\det L(C)=\det(I+CC^T+2CTC^TT)=4^mW_1.
\tag{9}
\]

This linearization is useful because all its spatial cross blocks are linear in C and C^T. It is an exact algebraic three-component representation; no unproved identification with a continuum replica path integral is needed.

Order the variables by region instead of auxiliary index, and put t1=-1, t2=+1. Then

\[
L=\begin{pmatrix}L_1&X_{12}\\X_{21}&L_2\end{pmatrix},
\]

where

\[
L_j=
\begin{pmatrix}
I&C_{jj}&\sqrt2t_jC_{jj}\\
-C_{jj}^T&I&0\\
-\sqrt2t_jC_{jj}^T&0&I
\end{pmatrix},
\tag{10}
\]

\[
X_{ab}=
\begin{pmatrix}
0&C_{ab}&\sqrt2t_bC_{ab}\\
-C_{ba}^T&0&0\\
-\sqrt2t_bC_{ba}^T&0&0
\end{pmatrix},\qquad a\ne b.
\tag{11}
\]

In particular, the t in an off-diagonal block is the sign of its column region. This order matters.

### 3.1 Uniform diagonal inverse: finite and continuum

For every finite C_jj, L_j-I is real antisymmetric. Therefore

\[
\|L_jv\|^2=\|v\|^2+\|(L_j-I)v\|^2,\qquad
\boxed{\|L_j^{-1}\|\le1.}
\tag{12}
\]

This bound does not require C_jj itself to be skew, does not require a finite density-matrix spectral gap, and is independent of N and the region sizes.

More explicitly, rotate the second and third components by

\[
v=(y+\sqrt2t_jz)/\sqrt3,\qquad
w=(-\sqrt2t_jy+z)/\sqrt3.
\]

In the coordinates (x,v,w),

\[
L_j\simeq
\begin{pmatrix}I&\sqrt3 C_{jj}\\-\sqrt3 C_{jj}^T&I\end{pmatrix}\oplus I
=(I+\sqrt3\Gamma_j)\oplus I.
\tag{13}
\]

Thus

\[
\det L_j=\det(I+3C_{jj}C_{jj}^T)=4^{m_j}p_3(A_j).
\tag{14}
\]

### 3.2 Exact normalization before taking the limit

Using (9), (14), and the regional Schur complement,

\[
\boxed{
R_N:=\frac{W_1}{p_3(A_1)p_3(A_2)}
=\det_{\mathbb C^{3m_1}}
\left(I-L_1^{-1}X_{12}L_2^{-1}X_{21}\right).
}
\tag{15}
\]

All powers of 4 cancel because m=m1+m2. The formula does not involve a quotient of separately regularized continuum determinants.

## 4. Continuum relative Fredholm determinant and convergence

Use the supplied staggered NS embeddings on the two fixed continuum intervals, with positive separation and fixed circle length L. The scalar kernel is

\[
H(x,y)=\operatorname{PV}\frac1{L\sin[\pi(y-x)/L]}.
\]

It is skew-adjoint on the relevant real Hilbert space and its complexification. The supplied strong convergence of the Majorana covariance says, in the corresponding sublattice copies,

\[
C_{jj,N}\longrightarrow H_j,\qquad
C_{jj,N}^T\longrightarrow-H_j
\]

strongly. The two off-diagonal covariance blocks converge in Hilbert–Schmidt norm. Thus the off-diagonal blocks of C and its transpose have the corresponding HS limits. The kernel has dimension inverse length, so H as an integral operator and all determinants below are dimensionless.

Set

\[
A_t=
\begin{pmatrix}
0&1&\sqrt2t\\
1&0&0\\
\sqrt2t&0&0
\end{pmatrix},\qquad \operatorname{spec}A_t=\{0,\sqrt3,-\sqrt3\}.
\tag{16}
\]

The diagonal and off-diagonal limits of (10), (11) are

\[
B_j=I+A_{t_j}\otimes H_j,\qquad
X_{ab,\infty}=A_{t_b}\otimes H_{ab}.
\tag{17}
\]

The matrix A_t is real symmetric, hence A_t tensor H_j is skew-adjoint and B_j is invertible with inverse norm at most one. If P_0,P_+,P_- are its three spectral projectors,

\[
B_j^{-1}=P_0\otimes I+
P_+\otimes(I+\sqrt3 H_j)^{-1}+
P_-\otimes(I-\sqrt3 H_j)^{-1}.
\tag{18}
\]

The nontrivial pieces are exactly real skew resolvents with s=+1/sqrt(3) and -1/sqrt(3), up to the explicit scalar prefactor in I+aH=a(H+1/a).

After extension by the identity on the orthogonal complements of the embedding spaces, (12), strong convergence, and the inverse identity prove

\[
L_{j,N}^{-1}\longrightarrow B_j^{-1}\quad\text{strongly}.
\]

Uniformly bounded strongly convergent operators multiply a fixed HS operator with convergence in HS norm. Consequently,

\[
L_{a,N}^{-1}X_{ab,N}\longrightarrow
B_a^{-1}(A_{t_b}\otimes H_{ab})\quad\text{in HS norm}.
\]

The product of these two HS factors converges in trace norm. Fredholm-determinant continuity applied to (15) proves

\[
\boxed{
R_N\longrightarrow
\det_F\!\left[
I-(I+A_-\otimes H_1)^{-1}(A_+\otimes H_{12})
(I+A_+\otimes H_2)^{-1}(A_-\otimes H_{21})
\right].
}
\tag{19}
\]

The determinant acts on the three-component space over A1. The elementary trace-norm estimate is

\[
\|Y_{12,N}Y_{21,N}-Y_{12}Y_{21}\|_1
\le\|Y_{12,N}-Y_{12}\|_2\|Y_{21,N}\|_2
+\|Y_{12}\|_2\|Y_{21,N}-Y_{21}\|_2.
\]

This proof needs neither FH asymptotics nor the asymptotics of the raw, UV-vanishing p3 factors. It also does not require invertibility of the full L or of the final Fredholm operator. Only the regional diagonal inverses are used.

A determinant-class point is important: the full relative block matrix with HS off-diagonal entries need not differ from I by a trace-class operator. No ordinary Fredholm determinant of that full matrix is asserted. The Schur product in (19) is trace class, and its ordinary Fredholm determinant is the object whose convergence is proved.

## 5. Species counting and the limitation of the scalar determinant input

Equation (15) is the ratio R_N itself, not its square. Therefore (19) must not be squared again and must not be assigned an additional square root.

At each diagonal block, (13) consists of I+sqrt(3) Gamma_j plus one spectator. The supplied continuum Gamma_j becomes [[0,H_j],[H_j,0]], whose two species diagonalize to +H_j and -H_j. These yield I+sqrt(3)H_j and I-sqrt(3)H_j exactly once each, matching (18). The multiplicity is already fixed by the finite identity and the 4^{-m} normalization.

The two regional matrices in the W1 problem do not commute:

\[
[A_-,A_+]=
\begin{pmatrix}
0&0&0\\0&0&2\sqrt2\\0&-2\sqrt2&0
\end{pmatrix}\ne0.
\tag{20}
\]

Thus the supplied scalar relative-determinant result D(s1,s2)=q^{-2 beta1 beta2}, with its own specified species convention, does not by itself evaluate (19): it cannot simply be applied separately to simultaneous replica eigenchannels. The noncommuting matrix determinant nevertheless converges by the direct operator argument above. No closed q-dependence, simultaneous diagonalization, or CFT/theta bridge is included in the proved conclusion.

For strictly positive finite reductions R_N>0. Equation (19) therefore gives a nonnegative limit. Strict nonvanishing of that limit has not been established here, and is not required for the convergence statement or the branch-free finite identity.

## 6. Reproducible verification and actual numerical results

The self-contained [Wolfram verification script](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/ising_n3_fredholm_checks.wl>) prints only to stdout; it contains no Export or JSON creation. It can be run from the project directory with

```bash
wolframscript -file verification/ising_n3_fredholm_checks.wl
```

The checks include:

- An explicit 8-by-8 Clifford representation for m=3 and a rational C with noncommuting regional data.
- The Clifford algebra, the primary contraction delta-i Gamma, the definition Gamma=i times the commutator expectation divided by two, and the Gamma_old=-Gamma convention map with the corresponding Wick phase.
- Exact Hermiticity, trace-one normalization, and positivity by the exact Sylvester principal-minor criterion.
- Explicit parity conjugation, including P1 squared equal to I.
- Exact W0 and W1 determinant identities, the signed two-Gaussian overlap Pfaffian, and the covariance of the normalized square.
- The conventional 6m-dimensional replica determinant, checked to be the square of 4^m W1 rather than W1 itself.
- The new 3m-dimensional linearization, regional Schur determinant, local skew property, local normalization, continuum replica eigenvalues, and the nonzero commutator (20).
- A full symbolic polynomial check for an arbitrary 2-by-2 C, without assuming it is a physical covariance.
- Actual signed finite critical-PBC Ising matrices for N=32,64,128,256,512 at 40-digit working precision.

For the rational m=3 example,

\[
C=\begin{pmatrix}
1/5&1/7&-1/9\\
1/11&2/9&1/13\\
-1/8&1/15&1/6
\end{pmatrix},\qquad T=\operatorname{diag}(-1,1,1),
\]

all identity checks are exact, and their numerical values are

\[
W_1=0.0210742879181483545869\ldots,\qquad
R=0.9469346167572203829997\ldots.
\]

For A1=[0,L/8), A2=[L/2,5L/8), using the actual finite sine kernel rather than a continuum discretization, the results are:

| N | W1 / [p3(A1)p3(A2)] | Smallest eigenvalue of diag(I+3C11 C11^T, I+3C22 C22^T) |
| ---: | ---: | ---: |
| 32 | 0.997569412165128616 | 1.71060047982 |
| 64 | 0.994455759650041108 | 1.55794571761 |
| 128 | 0.992336744973448483 | 1.44826496839 |
| 256 | 0.990943463183951361 | 1.36738048331 |
| 512 | 0.990043819918413973 | 1.30623010236 |

The geometric q for these arcs is 1-sin(pi/8)^2=0.853553390593273762... . This finite sequence is numerical support and a normalization/sign diagnostic, not a proof of convergence or an extrapolated exact limit.

The first script run exposed a numerical-test issue: a generic eigensolver returned tiny imaginary roundoff in eigenvalues of an exactly Hermitian density, so Min rejected the comparison. That numerical positivity test was replaced with exact positive leading principal minors; no mathematical formula was changed.

The final script was actually run with Wolfram 14.3.0 for Mac OS X ARM (64-bit). All 29 labelled checks passed (24 exact algebraic checks and 5 finite-Ising numerical checks), with process exit code 0 and no Wolfram warning in the final run. Its concluding stdout was:

```text
TOTAL FAILURES: 0
ALL CHECKS PASSED
```

## 7. Completion boundary

Verified: the finite branch-free formulas, covariance-convention map and Wick phase, exact normalization, uniform diagonal inverse bound, and convergence to the explicit matrix Fredholm determinant under the supplied operator hypotheses; the listed finite algebraic and numerical tests are reproducible.

Assumptions: the stated finite Gaussian reduction and parity action; two fixed separated continuum intervals; the supplied staggered NS strong and cross-block HS convergence; the same spatial and sublattice ordering throughout each identity.

Not proved: a closed scalar-q evaluation of the noncommuting matrix Fredholm determinant, a CFT/theta-function identification, strict positivity of the limiting determinant, or an extension beyond n=3.
