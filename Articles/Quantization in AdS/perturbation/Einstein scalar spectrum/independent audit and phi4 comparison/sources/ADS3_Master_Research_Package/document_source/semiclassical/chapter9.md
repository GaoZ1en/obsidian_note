# 9. Fixed excitation degrees and large particle number

This chapter fixes $(P,Q)$ and lets the integer particle number $N$ grow. This is a different limit from Chapters 7–8. The stable primary space stops changing once $N\geq\max(1,P+Q)$, but its physical Gram matrix still depends on $N$. That dependence explains how a triangular leading operator with a Jordan block can arise from an exactly selfadjoint finite-$N$ Hamiltonian.

## 9.1 Creation moments, centered coordinates and the exact affine pencil

Let $\alpha=(p,q)$ label a one-particle excitation, let $0=(0,0)$ be the unique zero excitation, and let $h_\alpha>0$ be the one-particle monomial norm, with $h_0=1$. Introduce commuting creation moments $a_\alpha$, set $a_{00}=1$, and write

\[
\mathcal R=\sum_{\alpha\ne0}a_\alpha\partial_\alpha.
\]

The degree of $a_{pq}$ is $(p,q)$; $\mathcal R$ counts excited particles in a monomial. Multiplication here belongs to the creation algebra. It is not pointwise multiplication of fixed-$N$ many-particle wavefunctions.

The global lowering derivations act by

\[
D_La_{pq}=p\,a_{p-1,q},\qquad D_Ra_{pq}=q\,a_{p,q-1}.
\]

The centered coordinates

\[
c_{pq}=\sum_{i=0}^{p}\sum_{j=0}^{q}
\binom{p}{i}\binom{q}{j}(-a_{10})^{p-i}(-a_{01})^{q-j}a_{ij},
\qquad p+q\geq2,
\]

are killed by both lowerings. Together with $a_{10},a_{01}$ they give an invertible triangular coordinate system, in which $D_L=\partial_{a_{10}}$ and $D_R=\partial_{a_{01}}$. Thus in the stable range the primary creation algebra is
$\mathbb C[c_{pq}:p+q\geq2]$.

For clarity about normalization, if $s=(n_\alpha)_{\alpha\ne0}$, $r_s=\sum n_\alpha$ and the $b_\alpha^\dagger$ create orthonormal one-particle modes, its averaged occupation vector is

\[
e_s=
\frac{\prod_{\alpha\ne0}h_\alpha^{n_\alpha/2}}{\sqrt{N!}}
(b_0^\dagger)^{N-r_s}
\prod_{\alpha\ne0}(b_\alpha^\dagger)^{n_\alpha}|0\rangle.
\]

Consequently

\[
\langle e_s,e_{s'}\rangle
=\delta_{ss'}\,\frac{g_s}{(N)_{\downarrow r_s}},
\qquad
g_s=\prod_{\alpha\ne0}n_\alpha!h_\alpha^{n_\alpha}.
\]

The numerator and $\sqrt{N!}$ in the state map are part of the convention. Omitting them while retaining the displayed Gram formula mixes normalized and averaged occupation bases.

Let $F_\alpha$ be the degree-two creation polynomial obtained by acting with the pair operator on the symmetric pair $(0,\alpha)$, and let $F_{\alpha\beta}$ be its action on $(\alpha,\beta)$. These definitions use the same two-particle normalization as the exact engine; equivalently they are obtained by summing the ordered tensor matrix elements against $a_\gamma a_\eta$. Counting actual unordered pairs in a source with $N-\mathcal R$ zero excitations gives

\[
\begin{aligned}
W_N={}&\frac{\gamma_{00}}2(N-\mathcal R)(N-\mathcal R-1)\\
&+\left(\sum_{\alpha\ne0}F_\alpha\partial_\alpha\right)(N-\mathcal R)
+\frac12\sum_{\alpha,\beta\ne0}
F_{\alpha\beta}\partial_\alpha\partial_\beta.
\end{aligned}
\]

The factor $N-\mathcal R$ in the middle term acts on the source, on the right. The three terms count zero–zero, zero–excited and excited–excited pairs respectively.

**Theorem ST-01 (exact stable affine pencil).** On each stable primary block,

\[
W_N=\gamma_{00}\binom N2 I+N\mathscr A+\mathscr B,
\]

where

\[
\mathscr A=\sum_{\alpha\ne0}(F_\alpha-\gamma_{00}a_\alpha)\partial_\alpha,
\]

\[
\mathscr B=-\mathscr A\mathcal R
-\frac{\gamma_{00}}2\mathcal R(\mathcal R-1)
+\frac12\sum_{\alpha,\beta\ne0}F_{\alpha\beta}\partial_\alpha\partial_\beta.
\]

The operator $\mathscr A$ is a derivation and $\mathscr B$ has differential order at most two. Their restrictions to primaries are independent of $N$. Two-body structure, the unique zero excitation and conservation of the nonnegative excitation bidegrees are sufficient for this affine dependence. Global covariance is used to preserve the primary algebra. Pair positivity is not required.

The operator $\mathscr A$ is triangular by the number of centered factors:

\[
\mathscr Ac_\alpha=\sigma_\alpha c_\alpha+
\sum_{\substack{\beta+\gamma=\alpha\\|\beta|,|\gamma|\geq2}}
V_{\alpha;\beta\gamma}c_\beta c_\gamma.
\]

Its diagonal eigenvalues on a centered monomial are sums of the generator slopes. For the physical pair coefficients,

\[
\sigma_{pq}=2\sum_{\substack{0\leq k\leq p,\ 0\leq\ell\leq q\\ k+\ell\ {\rm even}}}
\alpha_{p,k}\alpha_{q,\ell}(\gamma_{k\ell}-\gamma_{00}),
\qquad
\alpha_{p,k}=
\binom pk\frac{(\Delta)_p}
{(2\Delta+k-1)_k(2\Delta+2k)_{p-k}}.
\]

These $\alpha$ are the endpoint pair-channel weights, not arbitrary mixing parameters. Appendix ST-A derives the occupation formula and its physical metric consequences. [AS, §4 and App. F; DS, §7]

## 9.2 The general expansion is analytic in $N^{-1/2}$

Put $t=N^{-1/2}$ and let $\Gamma_{\rm occ}$ be the diagonal occupation Gram matrix above. Its signed analytic square root can be chosen as

\[
U_s(t)=t^{r_s}
\left[g_s\prod_{j=0}^{r_s-1}(1-jt^2)^{-1}\right]^{1/2}.
\]

The word “signed” means $t^{r_s}$ is retained for negative as well as positive real $t$, rather than replaced by $|t|^{r_s}$. On the full stable excitation space,

\[
H(t)=U(t)(\mathscr A+t^2\mathscr B)U(t)^{-1}
\]

extends analytically across $t=0$ and is Hermitian for real $t$ sufficiently near zero. The absence of negative powers follows directly from occupation changes: $\mathscr A$ preserves the number of excited factors or increases it by one; $\mathscr B$ can decrease it by at most one. The prefactor $t^2$ compensates that decrease.

Centered primary columns have distinct leading occupation monomials. Rescaling each column by the power of $t$ of its leading monomial gives an analytic, full-rank frame at zero. Its positive Gram matrix has an analytic Cholesky factor. Compressing $H(t)$ in the resulting orthonormal primary frame gives an analytic Hermitian matrix $\widehat H(t)$, with

\[
\widehat H(-t)=\Pi\,\widehat H(t)\Pi
\]

for the corresponding factor-count parity matrix $\Pi$.

**Theorem ST-02 (convergent large-$N$ branches).** For every fixed primary block and $\Delta>1$, its eigenvalues and orthonormal eigenvectors admit convergent real-analytic expansions in $t=N^{-1/2}$ in a regular orthonormal primary frame. In particular,

\[
g_j(N)=\gamma_{00}\binom N2+
N\sum_{m=0}^{\infty}\lambda_{j,m}N^{-m/2}
\]

for all sufficiently large $N$. No fractional powers with denominators greater than two are needed. A simple leading eigenvalue has an even analytic branch and hence an expansion in integer powers of $1/N$. Within a degenerate leading cluster, parity can exchange branches and half-integer terms may occur.

This is the finite-dimensional analytic Hermitian theorem of Rellich, after the preceding model-specific construction has checked its hypotheses. Selfadjointness with an $N$-dependent singular Gram matrix does not make the coordinate matrix $\mathscr A$ Hermitian in an $N$-independent metric. Conversely, a nonzero odd matrix coefficient inside a degenerate cluster does not by itself prove a half-integer splitting; one must compute the reduced eigenvalues. Appendix ST-A supplies the complete frame and perturbation construction. [AS, App. F; A2, App. C; Rellich]

### 9.2.1 A genuine leading Jordan resonance

**Example ST-03.** The physical stable block $(P,Q)=(4,1)$ has basis
$(c_{41},c_{11}c_{30},c_{20}c_{21})$. Writing $d=\Delta$ and
$D_4=(2d-1)(2d+1)(2d+3)(2d+5)$,

\[
\mathscr A=
\begin{pmatrix}
s_0+\delta&0&0\\
2\delta-v&s_0&0\\
v&0&s_0
\end{pmatrix},
\]

\[
s_0=-\frac{d^2(70d^2+89d-20)}{(2d-1)(2d+1)(2d+3)},\quad
\delta=\frac{d^2(2d^3-37d^2-11d+100)}{2D_4},
\]

\[
v=\frac{3d^2(d+1)(d+4)}{(2d-1)(2d+3)(2d+5)}>0.
\]

The cubic $2d^3-37d^2-11d+100$ has two roots in $d>1$, isolated in
$(1.563,1.564)$ and $(18.651,18.652)$. At either root, $\mathscr A-s_0I$ is nonzero, has rank one and squares to zero. Its Jordan type is $(2,1)$.

The exact invariant two-dimensional block of $N\mathscr A+\mathscr B$ is

\[
\begin{pmatrix}
(s_0+\delta)N+b_{11}&k\\
v(N+6/d)&s_0N+b_{22}
\end{pmatrix},
\]

where

\[
k=\frac{d(d+3)(2d^2+25d+36)}{2(2d+1)(2d+3)(2d+5)}>0,
\]

\[
b_{11}=-\frac{3d(38d^3+169d^2+131d-108)}{D_4},\qquad
b_{22}=\frac{3d(4d^4+20d^3+11d^2-39d-4)}{D_4}.
\]

Its two eigenvalues are

\[
\left(s_0+\frac\delta2\right)N+\frac{b_{11}+b_{22}}2
\ \pm\frac12\sqrt{(\delta N+b_{11}-b_{22})^2+4kv(N+6/d)}.
\]

The third eigenvalue is $s_0N+b_0$, where
$b_0=-12d(2d^2+7d+2)/[(2d-1)(2d+1)(2d+3)]$.
The common ground-pair term $\gamma_{00}\binom N2$ is added to all three.
At resonance the split is $\pm\sqrt{kv}\sqrt N+O(1)$, explicitly demonstrating half-integer branches. For $d=d_c+u/\sqrt N$, the two-level gap divided by $\sqrt N$ tends to
$\sqrt{\delta'(d_c)^2u^2+4k(d_c)v(d_c)}$.
The finite physical matrix remains selfadjoint and diagonalizable. The Jordan block belongs to the singular leading coordinate limit. [AS, App. F; A2, App. C]

### 9.2.2 A protected collision with a two-dimensional eigenspace

**Example ST-09.** In the complete stable $(3,1)$ basis
$(c_{31},c_{11}c_{20})$, $N\geq4$, define

\[
\delta_{31}=-\frac{6d^2(2d^2+d-4)}{D_4},\qquad
\beta=\frac{d+2}{d},\qquad s_{31}=\sigma_{11}+\sigma_{20},
\]

\[
b_*=-\frac{6d(10d^3+39d^2+33d-14)}{D_4}.
\]

The full shifted pencil is

\[
N\mathscr A+\mathscr B=
(s_{31}N+b_*)I+
\delta_{31}\begin{pmatrix}N&\beta\\3N+9\beta&0\end{pmatrix}.
\]

Its discriminant is the exact square $\delta_{31}^2(N+6\beta)^2$.
Its two eigenvalues are
$\sigma_{31}N+b_*+3\beta\delta_{31}$ and
$s_{31}N+b_*-3\beta\delta_{31}$. At
$d_*=(\sqrt{33}-1)/4>1$, the whole matrix is scalar, and the energy coefficient is

\[
g_*=\binom N2\frac{-93+13\sqrt{33}}{16}
+N\frac{939-379\sqrt{33}}{128}
+\frac{225-81\sqrt{33}}{64}
\]

with multiplicity two. Both off-diagonal terms vanish together with the slope difference. The physical Gram is positive for the stable $N$, so this is a true doublet, distinct from ST-03's singular leading Jordan limit. At $N=3$ the primary dimension is one; the stable two-dimensional coordinate space must not be continued through that rank change. The exact all-degree $Q=1$ families and their finite-$N$ endpoint multiplicities are treated in the exact-family chapter. Appendix ST-A.5 records the related branchpoint structure of $(4,1)$. [AS, App. F, §§5–6; A2, App. C]

## 9.3 Generic algebraic linearization of the leading derivation

The triangular nonlinear terms of $\mathscr A$ can be removed generically in every bidegree. The result is about the derivation, not the full affine pencil.

**Theorem ST-04 (all-degree generic nonresonance).** There is a countable set $\mathcal E\subset(1,\infty)$ of algebraic numbers such that, for every $\Delta\notin\mathcal E$, a triangular polynomial change of centered generators gives

\[
\mathscr A=\sum_{p+q\geq2}\sigma_{pq}u_{pq}\partial_{u_{pq}}.
\]

At each fixed degree only finitely many substitutions are required. For every finite degree cutoff the excluded set is finite. The theorem does not claim that the full countable set is locally finite, does not exclude every rational mass from it, and does not classify the resonances at points of $\mathcal E$.

**Proof.** It is enough to show that no genuine splitting
$\alpha=\beta_1+\cdots+\beta_m$, $m\geq2$, $|\beta_i|\geq2$,
makes the rational homological divisor
$\sigma_\alpha-\sum_i\sigma_{\beta_i}$ vanish identically in $\Delta$.
Use $\Delta=1/2$ solely as an algebraic pole test. With
$f_n=\binom{2n}{n}/4^n$,

\[
\rho_{pq}:=\lim_{\Delta\to1/2}(2\Delta-1)\sigma_{pq}
=\frac32(2f_pf_q-1).
\]

If $s_2(n)$ counts binary ones and
$E(p,q)=2(p+q)-s_2(p)-s_2(q)$, then
$v_2(\rho_{pq})=-E(p,q)$.
Binary subadditivity gives
$E(\alpha)\geq\sum_iE(\beta_i)>\max_iE(\beta_i)$.
Thus the residue on the left of a proposed relation has a uniquely smaller dyadic valuation than every residue on the right, and cancellation is impossible. Every divisor is a nonzero rational function, with finitely many zeros on a finite degree range. Solving the triangular homological equations then constructs the $u_{pq}$. Appendix ST-B verifies the residue, including the removable exceptional channels, and the finite recursion. [DS, §7 and App. E; A2, App. C]

Resonance is only a possible obstruction: a resonant forcing coefficient may vanish. The theorem supplies an upper bound on the exceptional set. It gives no diagonalization of $\mathscr B$, no commuting family for the full many-body operator and no complete finite-spectrum formula.

## 9.4 The chiral lowest cluster and its algebra retraction

Now take $Q=0$, $P\geq2$, $N\geq P$, and write $c_p=c_{p0}$, $x=c_2$, $y=c_3$. Define

\[
\sigma_2=-\frac{2\Delta^2(2\Delta^2+7\Delta+2)}
{(2\Delta-1)(2\Delta+1)(2\Delta+3)},\qquad
\beta_2=\frac{\sigma_2}{\Delta}
=\frac{\gamma_{20}-\gamma_{00}}{2\Delta+1}.
\]

The exact minimum is

\[
g_{\min}(N,P)=
\gamma_{00}\binom N2+
\frac{P\sigma_2}{2}N+
\frac{\beta_2}{2}P(P-1).
\]

To see its origin, subtract the affine function of the pair Casimir through channels zero and two. The defects are zero in those channels, while

\[
r_4=\frac{2\Delta(\Delta+4)}{2\Delta-1}>0,\qquad
r_k=r_4+
\frac{\gamma_{00}-\gamma_{20}}{2(2\Delta+1)}(C_k-C_4)>0
\quad(k\geq4,\ k\ {\rm even}).
\]

Positivity gives a global lower bound. The primary projection of the elementary degree-$P$ seed attains it: every pair has relative degree at most two, and its projection is nonzero in the stable range. This proves the displayed exact minimum.

Let

\[
\mathcal E=\sum_{p\geq2}p\,c_p\partial_{c_p},\qquad
K=\mathscr A-\frac{\sigma_2}{2}\mathcal E.
\]

The endpoint identity

\[
\sigma_p-\frac p2\sigma_2=
2\sum_{\substack{k\geq4\\k\ {\rm even}}}\alpha_{p,k}r_k
\]

gives zero for $p=2,3$ and a strictly positive value for every $p\geq4$.
The full derivation kills $x$ and $y$, since channels above two are inaccessible at degrees two and three.

**Theorem ST-05 (semisimple low algebra and retraction).** On each homogeneous block, zero is a semisimple eigenvalue of $K$ and

\[
\ker K=\mathcal S:=\mathbb C[x,y].
\]

All other eigenvalues have positive real part. The coefficientwise limit

\[
q=\lim_{\tau\to\infty}e^{-\tau K}
\]

exists on the graded algebra and is a multiplicative retraction onto $\mathcal S$. It is generally oblique, not an orthogonal projection in an $N$-independent physical metric.

**Proof.** Triangularity shows that the algebraic multiplicity of zero equals the number of monomials containing only $c_2,c_3$. All those monomials are actual zero vectors because $K$ is a derivation and kills both generators. Thus zero is semisimple, and every other diagonal eigenvalue is a sum containing a positive higher-generator gap. Possible Jordan blocks at positive eigenvalues decay under $e^{-\tau K}$. Each exponential is an algebra homomorphism; passing to the finite-dimensional limit in each degree makes $q$ multiplicative.

For instance,

\[
q(c_4)=-3x^2,\qquad q(c_5)=-2xy,
\]

\[
q(c_6)=
\frac{5[(18\Delta^3+153\Delta^2+387\Delta+144)x^3
-(4\Delta^3+30\Delta^2+56\Delta+24)y^2]}
{34\Delta^3+273\Delta^2+611\Delta+240}.
\]

In every degree the retraction follows recursively from $qKc_p=0$, dividing only by the positive higher-generator gap. [DS, §8 and App. E; A2, App. C]

### 9.4.1 The exact cusp quotient

There is an exact left character on the full centered algebra,

\[
\mathcal L(c_p)=(1-p)t^p.
\]

On the homogeneous degree-$P$ component it obeys

\[
\mathcal L\mathscr A=\frac{P\sigma_2}{2}\mathcal L,\qquad
\mathcal L\mathscr B=\frac{\beta_2}{2}P(P-1)\mathcal L.
\]

It can be extracted from the coefficient of the degree-one elementary seed; the coefficient of $a_1^p$ in $c_p$ is $(-1)^p(1-p)$. It follows that $\mathcal LK=0$ and $\mathcal Lq=\mathcal L$.
On $\mathcal S$ this character is

\[
x\longmapsto-t^2,\qquad y\longmapsto-2t^3,
\]

whose kernel is the cusp ideal

\[
J=y^2+4x^3,\qquad
\mathcal S/(J)\cong\mathbb C[t^2,t^3].
\]

To prove the kernel assertion, divide any polynomial by the monic polynomial $J$ in $y$. Its remainder is $f(x)+yg(x)$; substituting $x=-t^2,y=-2t^3$ separates even and odd powers and forces both polynomials to vanish. The quotient character is preserved by every order of the low effective pencil after subtracting $g_{\min}$. This is an exact algebraic quotient; it does not identify the physical scalar product with an integral over a real cusp.

## 9.5 The first low operator and the actual Gegenbauer parameter

**Theorem ST-06 (first effective operator).** On $\mathcal S$,

\[
B_{\rm low}:=q\mathscr B|_{\mathcal S}
=\frac{\beta_2}{2}E(E-1)+\frac{\varepsilon}{2}J\partial_y^2,
\qquad E=2x\partial_x+3y\partial_y,
\]

where

\[
\varepsilon=
\frac{54\Delta(\Delta+3)(\Delta+4)^2(2\Delta^2+9\Delta+3)}
{(2\Delta-1)(2\Delta+3)(34\Delta^3+273\Delta^2+611\Delta+240)}>0.
\]

There is a structural reason that a finite calculation determines the operator. Because $\mathscr B$ has order at most two and $q$ commutes with multiplication by every low polynomial, the third iterated multiplication commutator of $B_{\rm low}$ vanishes. Hence $B_{\rm low}$ has order at most two on $\mathbb C[x,y]$. Only after this proof does one use its determining values on
$1,x,y,x^2,xy,y^2$:

\[
0,\quad\beta_2x,\quad3\beta_2y,\quad
6\beta_2x^2,\quad10\beta_2xy,\quad
(15\beta_2+\varepsilon)y^2+4\varepsilon x^3.
\]

Appendix ST-C derives these values directly from the exact two-particle action. [DS, App. E; A2, App. C]

Let $F_b(x,y)$ be the unique polynomial monic in $y^b$ satisfying

\[
J\partial_y^2F_b=b(b-1)F_b.
\]

It has the finite expansion

\[
F_b=\sum_{j=0}^{\lfloor b/2\rfloor}f_{b,j}x^{3j}y^{b-2j},
\quad f_{b,0}=1,\quad
f_{b,j}=
\frac{4(b-2j+2)(b-2j+1)}
{b(b-1)-(b-2j)(b-2j-1)}f_{b,j-1}.
\]

For example,

\[
F_0=1,\quad F_1=y,\quad F_2=J,\quad F_3=yJ,\quad
F_4=y^4+\frac{24}{5}x^3y^2+\frac{16}{5}x^6.
\]

At weight $P$, the vectors $x^aF_b$, $2a+3b=P$, diagonalize $B_{\rm low}$, with eigenvalues

\[
\frac{\beta_2}{2}P(P-1)+\varepsilon\binom b2.
\]

All allowed $b$ have the same parity, so these eigenvalues are distinct. Formally setting $z=y/(2i x^{3/2})$ identifies the equation with the Gegenbauer equation of parameter **$-1/2$**. The finite polynomial definition avoids any need to choose fractional powers of $x$. This parameter does not carry the usual positive integrable Gegenbauer weight on $(-1,1)$; that orthogonality formula must not be used as the physical norm. The physical metric remains the original $\Gamma$, or its analytic orthonormal-frame transform.

**Corollary ST-07 (integer expansions for this isolated low cluster).** For every fixed $P$ and $\Delta>1$, exactly $\#\{(a,b)\geq0:2a+3b=P\}$ branches lie in the lowest leading cluster. Each has a convergent expansion

\[
g_{a,b}(N,P)=g_{\min}(N,P)+
\varepsilon\binom b2+\frac{\eta(a,b)}N+O(N^{-2}).
\]

All subsequent powers are integers. Indeed the zero eigenspace of $K$ is isolated and semisimple, so its Riesz-reduced pencil is analytic in $u=1/N$ and starts with $uB_{\rm low}$. Dividing out $u$ leaves a matrix with simple spectrum at $u=0$. Analytic perturbation of simple roots gives the claim. This proof is specific to the chiral low cluster; ST-03 shows why it cannot be extended to every primary block without further hypotheses.

## 9.6 The first $1/N$ correction and its finite determination

Define the reduced inverse

\[
R=K^{-1}(1-q)=\int_0^\infty(e^{-\tau K}-q)\,d\tau,
\qquad KR=RK=1-q,\quad qR=Rq=0.
\]

It commutes with multiplication by low polynomials. In the graph gauge $q\Omega=I$, solving the invariant-subspace equation gives

\[
\Omega=I-uR\mathscr B+O(u^2),\qquad
H_{\rm eff}=uB_{\rm low}+u^2C_2+O(u^3),
\qquad C_2=-q\mathscr BR\mathscr B.
\]

**Theorem ST-08 (third-order correction with cusp image).** There are rational functions $r_0,r_1,r_2,r_3$ of $\Delta$, regular for every $\Delta>1$, such that

\[
C_2=
J\left[r_0\partial_y^2+r_1\partial_x^3+
r_2x\partial_x\partial_y^2+r_3y\partial_y^3\right].
\]

The complete exact coefficient table is in Appendix ST-C. At $\Delta=2$,

\[
(r_0,r_1,r_2,r_3)=
\left(-\frac{1622417760}{27089251},
\frac{37120}{3297},
-\frac{174410861280}{3756088567},
\frac{807408000}{3533212309}\right).
\]

The two structural assertions precede the coefficient calculation. First, every fourth iterated multiplication commutator vanishes: only two commutators on each copy of $\mathscr B$ could survive, and a double commutator of an order-two operator is multiplication by a polynomial. Multiplicativity of $q$ then inserts $qR=0$. Thus $C_2$ has order at most three. Second, $\mathcal L\mathscr BR=0$ by the exact character identity, so the image of $C_2$ lies in $(J)$. Induction on monomial inputs shows that each differential coefficient is divisible by $J$. Weighted degree zero now leaves exactly the four displayed terms. Finite jets at weights six, eight and nine determine them.

The diagonal correction in the Gegenbauer basis is

\[
\begin{aligned}
\eta(a,b)=b(b-1)\bigg[
r_0+r_2a+r_3(b-2)
&+2r_1\bigg(
\frac{(a+1)(a+2)(a+3)}{2b-3}\\
&-\frac{a(a-1)(a-2)}{2b+1}
\bigg)\bigg].
\end{aligned}
\]

It vanishes for $b=0,1$, as required by the exact minimum. The operator $C_2$ need not annihilate $x^a$: off-diagonal mixing and a zero diagonal eigenvalue correction are different statements.

At $\Delta=2,P=12$ the full primary block has dimension 21, while its lowest leading cluster has dimension three, with $b=0,2,4$. Its first gaps are
$0,10440/1099,62640/1099$ and the two nonzero first corrections are

\[
\eta(3,2)=\frac{2920079516375808}{589705905019},\qquad
\eta(0,4)=-\frac{9620027665536}{24732486163}.
\]

These describe only those three branches. The exact finite block still contains eighteen branches with larger leading slope. Independent symbolic pair-projector calculations verify the complete $C_2$ matrices at weights six, eight and nine, and independent rational calculations check higher weights. The general theorem rests on the order and ideal arguments together with the exact determining identities, not on a fit to a few eigenvalues. [DS, App. E; A2, App. C]

## 9.7 A controlled large-mass contraction

There is a useful comparison with a different established many-boson problem. At fixed excitation degree, write $x_i=\sqrt{\Delta}\,z_i$. Then

\[
\frac{\Delta^p p!}{(\Delta)_p}\longrightarrow p!,
\qquad
\frac{w_{\rm chiral}+4\Delta^2}{\Delta}
\longrightarrow \Pi_{\rm relative\ degree\ 0}
\]

in the finite-dimensional oscillator limit. In this normalization,

\[
\frac{\varepsilon(\Delta)}{\Delta}\longrightarrow\frac{27}{34},
\qquad
\frac{g_{a,b}-g_{\min}}{\Delta}
\longrightarrow\frac{27}{68}b(b-1)
\]

at the first low layer. The same quadrupole–octupole coefficient occurs in the weakly interacting rotating Bose gas of Kavoulakis, Mottelson and Reimann [KMR]. The explicit contraction above explains the comparison. It does not identify finite-$\Delta$ Einstein pair coefficients with a contact interaction, nor interchange the fixed-degree large-mass limit with all other limits.

The established stable results therefore consist of an exact affine pencil, a general analytic Hermitian expansion in $N^{-1/2}$, a generic algebraic normal form for its derivation, actual exceptional Jordan resonances, and a more rigid isolated chiral cluster with a cusp quotient and Gegenbauer first layer. A full mass-dependent resonance classification and all higher effective operators remain open.
