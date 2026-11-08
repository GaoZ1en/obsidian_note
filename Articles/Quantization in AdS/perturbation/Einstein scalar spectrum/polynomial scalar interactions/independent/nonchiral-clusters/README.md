# Nonchiral contact channels for N=k+1: exact rank and finite Gram

## Result and scope

For standard fast scalar modes in global AdS3, Delta>1, unit KG normalization,

\[
 S_{\rm int}=-\frac{\lambda_{2k}}{(2k)!}\int\sqrt{-g}:\phi^{2k}:,
\]

let K be the number-preserving first-order coefficient (the energy shift is lambda_(2k) times an eigenvalue of K). For **k>=3, N=k+1**, at total left/right primary excitation grades (P,Q), put m=min(P,Q), J=|P-Q|. Then

\[
\boxed{\operatorname{rank}K\big|_{\mathcal B_N(P,Q)}=
\begin{cases}
1,&(P,Q)=(0,0),\\
m,&J=0\text{ or }1,\quad(P,Q)\ne(0,0),\\
m+1,&J\ge2.
\end{cases}} \tag{1}
\]

This is an all-Delta>1 algebraic rank theorem, not a finite-mass numerical extrapolation. A proof is in Sections 5–6 below. Every nonzero eigenvalue is obtained from an **(m+1)-square positive Gram matrix**, explicitly given in Sections 3–4. Exactly one channel is redundant for scalar or spin-one primaries away from the vacuum grade. No channel is redundant for spin at least two. The rank-zero (1,0) and (0,1) grades have no Bose primary in the first place.

If D_N(P,Q)=dim B_N(P,Q), the exact physical kernel dimension is D_N(P,Q) minus (1). The small Gram has only the channel-redundancy zeros, not all physical zero modes.

The proof of the rank lower bound uses N>=4 essentially. For k=2,N=3 the same finite Gram remains valid, but the displayed rank formula has a counterexample at (P,Q)=(3,1), where the rank is one rather than two.

**Number-changing resonances are not included in (1).** In particular all examples below at phi6, Delta=2 are spectra of the number-preserving suboperator, not complete physical resonant blocks. Section 9 separates this issue.

No holomorphic coincidence ideal is identified with physical bulk coincidence anywhere in this construction.

## 1. Conventions and representation spaces

AdS radius is one, signature (-++), with

\[
 ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\theta^2.
\]

Use the free global vacuum for normal ordering, source-free standard falloff r^(-Delta), and the Hamiltonian measure r dr dtheta. The one-particle Hilbert space is V_h tensor V_h, h=Delta/2. In one chiral factor use the polynomial realization

\[
 L_-z^p=pz^{p-1},\quad L_+z^p=(p+\Delta)z^{p+1},\quad
 \langle z^p,z^q\rangle=\delta_{pq}\frac{p!}{(\Delta)_p}.
\tag{2}
\]

Thus L_+ is adjoint to L_-. For labelled n-particle chiral primaries,

\[
 W_n(a)=\{f(z_1,\ldots,z_n):\deg f=a,\ \sum_i\partial_{z_i}f=0\},\qquad
 d_n(a)=\dim W_n(a)=\binom{a+n-2}{n-2} \quad(n\ge2).
\tag{3}
\]

For n=1 set d_1(a)=delta_(a,0). The actual Bose primary space is

\[
 \mathcal B_N(P,Q)=\big(W_N(P)\otimes W_N(Q)\big)^{S_N}
 \simeq\operatorname{Hom}_{S_N}(W_N(Q),W_N(P)). \tag{4}
\]

The identification uses real orthonormal polynomial bases and the Hilbert–Schmidt inner product; it is a linear-algebra identification, not bulk holomorphic evaluation. Its free energy and angular momentum are E=N Delta+P+Q and j=P-Q.

A closed dimension formula, useful for the kernel count, is

\[
 \sum_{P,Q}D_N(P,Q)x^Py^Q
 =\sum_{\mu\vdash N}\frac{(1-x)(1-y)}{z_\mu
 \prod_{j\ge1}(1-x^j)^{m_j(\mu)}(1-y^j)^{m_j(\mu)}},\qquad
 z_\mu=\prod_jj^{m_j}m_j! . \tag{5}
\]

## 2. Why the active k-cluster vector is an identity kernel

At the physical AdS origin, the unit KG mode with labels (p,q) vanishes unless p=q, and then has value (-1)^p/sqrt(2pi), in the repository's Jacobi phase convention. On labelled k-particle grade (a,a), bulk-origin evaluation therefore gives, up to the common phase (-1)^a, the maximally entangled vector between the complete left and right grade-a spaces. Projecting each side onto its primary subspace gives

\[
 C_a=\sum_{\alpha=1}^{d_k(a)}e_{a\alpha}\otimes e_{a\alpha},\qquad
 \|C_a\|^2=d_k(a), \tag{6}
\]

for any real orthonormal basis of W_k(a). Simultaneous permutations leave this vector invariant. The normalized active scalar primary is c_a=C_a/sqrt(d_k(a)). Its overall phase will never enter the spectrum.

This proves the active direction needed here directly from physical bulk evaluation. The independently verified k-body eigenvalue is the input

\[
 \kappa_{k,a}=\frac{d_k(a)}{2k!(2\pi)^{k-1}(k\Delta+2a-1)}. \tag{7}
\]

All other k-cluster multiplicity directions and all spinning k-cluster primaries are inactive.

## 3. The small positive channel Gram

Distinguish spectator N and couple the scalar cluster module of weight

\[
 h_a=kh+a
\]

to that spectator. The unique left primary relative level is P-a and the right level Q-a. Hence only a=0,...,m can contribute. Write u_a for this normalized labelled N-particle primary; the u_a are orthonormal. Equivalently, if

\[
 i_{aP}:W_k(a)\longrightarrow W_N(P)
\]

is the chiral isometry given by the two-module Clebsch–Gordan primary, then

\[
 u_a=\frac1{\sqrt{d_k(a)}}\operatorname{vec}(i_{aP}i_{aQ}^{\dagger}). \tag{8}
\]

Let Pi be the simultaneous S_N symmetrizer and v_a=Pi u_a. The sum over the N possible k-subsets is exactly

\[
 \boxed{K=N\sum_{a=0}^{m}\kappa_{k,a}|v_a\rangle\langle v_a|.} \tag{9}
\]

Therefore its nonzero spectrum is the nonzero spectrum of

\[
 \boxed{G_{ab}=N\sqrt{\kappa_{k,a}\kappa_{k,b}}\langle v_a,v_b\rangle
 =\sqrt{\kappa_{k,a}\kappa_{k,b}}(\delta_{ab}+kR_{ab}),}
 \qquad R_{ab}=\langle u_a,\tau u_b\rangle, \tag{10}
\]

where tau exchanges the spectator with any one cluster constituent. The last equality follows because both u_a,u_b are S_k-invariant. G is positive semidefinite. Its rank is (1); its nonzero eigenvalues are strictly positive. In particular no indefinite complete-resonance phenomenon is being hidden inside this positive suboperator.

If G z=rho z with rho>0 and ||z||=1, the physical normalized eigenvector is

\[
 \psi=\frac{\sqrt N}{\sqrt\rho}\sum_a\sqrt{\kappa_{k,a}}z_a v_a. \tag{11}
\]

The physical kernel is the orthogonal complement of span{v_a}. Also -1/k<=R<=1, so 0<=G<=N diag(kappa_(k,a)) in the Loewner order.

## 4. Closed finite Racah formula, with no Fock-shell matrix

Peel off a common core of k-1 particles. At core primary grade c its chiral multiplicity is d_(k-1)(c). Set

\[
 \alpha=(k-1)\Delta+2c,\quad T=P-c,\quad r=a-c.
\]

For three modules of doubled weights (alpha,Delta,Delta), define the unnormalized primary polynomial

\[
 F_r^{(T)}(x,y,z)=\sum_{s=0}^{T-r}(-1)^{T-r-s}\binom{T-r}{s}
 \frac{z^{T-r-s}}{(\alpha+\Delta+2r)_s}
 (L_{+,x}+L_{+,y})^s(x-y)^r, \tag{12}
\]

where L_(+,x)=x^2 partial_x+alpha x and L_(+,y)=y^2 partial_y+Delta y. All sums are finite. For monomial inner products use

\[
 \|x^iy^jz^\ell\|^2=\frac{i!j!\ell!}{(\alpha)_i(\Delta)_j(\Delta)_\ell}.
\]

The two-module primary norm is

\[
 n_r(A,B)=\|(x-y)^r\|^2=\frac{r!(A+B+r-1)_r}{(A)_r(B)_r}. \tag{13}
\]

Consequently

\[
 \|F_r^{(T)}\|^2=n_r(\alpha,\Delta)n_{T-r}(\alpha+\Delta+2r,\Delta).
\]

Let U_(ab)^(P,c) be the normalized overlap of F_(a-c)^(P-c)(x,y,z) and F_(b-c)^(P-c)(x,z,y). It is an ordinary real SU(1,1) Racah coefficient, in a phase convention fixed by (12). The exact nonchiral overlap is

\[
 \boxed{R_{ab}=\frac1{\sqrt{d_k(a)d_k(b)}}
 \sum_{c=0}^{\min(a,b)}d_{k-1}(c)
 U_{ab}^{(P,c)}U_{ab}^{(Q,c)}.} \tag{14}
\]

This is already a closed finite Gram formula: an (m+1)-square matrix, with at most m+1 three-module recoupling terms per entry. Dependence on the large physical primary dimension has disappeared.

### Rational version used by the code

Put eta_a=k Delta+2a-1 and

\[
 b_a=n_{P-a}(k\Delta+2a,\Delta)n_{Q-a}(k\Delta+2a,\Delta),\qquad
 q_a=d_k(a)b_a.
\]

Let X_(ab)^(P,c) denote the **unnormalized** overlap in (12). Define

\[
 C_{ab}=\sum_{c\le\min(a,b)}d_{k-1}(c)
 \frac{X_{ab}^{(P,c)}X_{ab}^{(Q,c)}}
 {n_{a-c}((k-1)\Delta+2c,\Delta)n_{b-c}((k-1)\Delta+2c,\Delta)}.
\]

Then the rational matrix

\[
 \boxed{M_{ab}=\frac{\delta_{ab}q_a+kC_{ab}}{\eta_b b_b}} \tag{15}
\]

has all the nonzero eigenvalues of K in the unit

\[
 \frac1{2k!(2\pi)^{k-1}}. \tag{16}
\]

It is similar to a positive symmetric Gram, although (15) need not look symmetric. For rational Delta every entry is rational. The symmetrized channel Gram before contact weights is (diag(q)+kC)/(k+1).

The independent implementation is [channel_gram.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/nonchiral-clusters/channel_gram.py>). It does not import the Fock contact engine.

## 5. Universal upper bounds and the two exact redundancies

### Scalar, P=Q=m>=1

Under vectorization the channels are the spectral projectors of the k-cluster chiral Casimir. With C(S) the Casimir of particles in S,

\[
 \sum_{i=1}^N C(\{1,\ldots,N\}\setminus\{i\})
 =(N-2)C(\{1,\ldots,N\})+\sum_{i=1}^N C(\{i\}). \tag{17}
\]

On W_N(m) the right side is scalar. Thus if

\[
 c_a=(kh+a)(kh+a-1),\qquad
 \bar c=\frac{(N-2)(Nh+m)(Nh+m-1)+Nh(h-1)}N,
\]

then

\[
 \sum_{a=0}^m\sqrt{d_k(a)}(c_a-\bar c)v_a=0. \tag{18}
\]

For m>=1 this relation is nontrivial, giving rank<=m. For m=0 all its coefficients vanish, so it does not remove the ground channel.

### Spin one, P=Q+1=m+1

Let Pi_s be the orthogonal chiral primary projector at grade s. Since

\[
 \Pi_{m+1}\sum_i L_{+,i}\Pi_m=0, \tag{19}
\]

the symmetrized spectator raising map vanishes. It is diagonal in the cluster multiplicity label a. If r=m-a and A=k Delta+2a, its nonzero reduced coefficient is

\[
 t_a=-(r+1)\sqrt{\frac{n_r(A,\Delta)}{n_{r+1}(A,\Delta)}}.
\]

Hence sum_a sqrt(d_k(a)) t_a v_a=0. This gives rank<=m, including rank zero at m=0. The case Q=P+1 is its transpose.

For J>=2 the dimension bound rank<=m+1 is the only universal upper bound needed below.

## 6. All-mass lower bound: spectator operators and a polynomial lemma

This section excludes every hypothetical exceptional real Delta>1. It does not use continuity from large Delta or finite checks.

Assume P=Q+J, Q=m, J>=0. For r=0,...,m define chiral maps

\[
 T_r=\Pi_P\sum_{i=1}^N(L_{+,i})^{J+r}(L_{-,i})^r\Pi_Q.
\tag{20}
\]

For one fixed spectator i, the operator in (20) acts only on that spectator. It therefore preserves the cluster irrep and acts as the identity on each W_k(a) multiplicity space. Its reduced matrix element is explicit. Put l=m-a and A=k Delta+2a. Then

\[
 t_{r,a}=\begin{cases}
 (-1)^J\dfrac{l!(l+J)!}{(l-r)!^2}
 \dfrac{n_{l-r}(A,\Delta)}{\sqrt{n_l(A,\Delta)n_{l+J}(A,\Delta)}},&r\le l,\\
 0,&r>l.
 \end{cases} \tag{20a}
\]

Indeed move all spectator raising operators to the bra and differentiate the two primary polynomials (X-Y)^l and (X-Y)^(l+J). This also proves the nonzero triangular diagonal at a=m-r, without an abstract recoupling assumption. Summing over spectators and vectorizing gives

\[
 \operatorname{vec}T_r=N\sum_a\sqrt{d_k(a)}t_{r,a}v_a,\qquad
 \boxed{\operatorname{span}\{\operatorname{vec}T_r\}=\operatorname{span}\{v_a\}.}
\tag{21}
\]

Thus it suffices to find the rank of the maps T_r. After the proof below, T_1,...,T_m (and equivalently v_0,...,v_(m-1)) form an active basis when J<=1 and m>=1; for J>=2 all T_0,...,T_m and all v_0,...,v_m are independent. This permits an additional reduction to a rank-square matrix if desired.

### Exact coherent-primary matrix elements

Take f_x(z)=(sum_i x_i z_i)^Q and g_y(z)=(sum_i y_i z_i)^P with

\[
 \sum_i x_i=\sum_i y_i=0.
\]

They are chiral primaries and such powers span W_N(Q), W_N(P). Put t_i=x_i y_i and

\[
 H_s(t)=\sum_{n_1+\cdots+n_N=s}\prod_i\frac{t_i^{n_i}}{n_i!(\Delta)_{n_i}}.
\tag{22}
\]

Adjointness in (2) and differentiation give the exact formula

\[
 \boxed{\langle g_y,T_r f_x\rangle
 =P!Q!\,H_{m-r}(t)\sum_i y_i^J t_i^r.} \tag{23}
\]

For this polynomial identity coefficients are treated bilinearly; complex conjugation can be restored for physical inner products. No positivity or asymptotic approximation has been used in (23).

### Scalar J=0: exactly one relation when m>=1

The map (x,y) to t=(x_i y_i), restricted by sum x=sum y=0, is dominant for N>=3. One way to see this is its differential: a covector annihilating its image must obey u_i y_i=A and u_i x_i=B for every i; generic nonproportional x,y force u=0.

Thus a relation among (23) at J=0 is an ordinary polynomial identity

\[
 \sum_{r=0}^m c_r H_{m-r}(t)p_r(t)=0,\qquad p_r=\sum_i t_i^r,\quad p_0=N.
\]

Set a_n=1/[n!(Delta)_n] and

\[
 F(n)=\sum_{r=0}^{n}c_r\frac{a_{n-r}}{a_n},\qquad0\le n\le m.
\]

The coefficient of a monomial with sum n_i=m is product_i a_(n_i) times sum_i F(n_i). Because a_n is nonzero, a relation is equivalent to

\[
 \sum_iF(n_i)=0\quad\text{for every composition of }m\text{ into }N\text{ parts}.
\]

Compare (n,1,m-n-1,0,...) with (n+1,0,m-n-1,0,...). It follows that F(n+1)-F(n)=F(1)-F(0), hence F(n)=An+B, with mA+NB=0. Conversely every such affine F works. The map (c_0,...,c_m) to (F(0),...,F(m)) is triangular and invertible. Therefore the relation space has dimension exactly one for m>=1, and zero for m=0. So the span of the T_r has dimension m, or one at the ground grade.

### Spin J>=1: algebra over the independent variables t_i

A putative relation in (23) has the form

\[
 \sum_i y_i^J F_i(t)=0,\qquad
 F_i(t)=\sum_{r=0}^m c_r t_i^r H_{m-r}(t), \tag{24}
\]

on sum y=0 and sum_i t_i/y_i=0. Work over K=C(t_1,...,t_N), with all y_i nonzero initially. After eliminating y_N=-sum_(i<N)y_i, the second condition is

\[
 G_t(y)=\sum_i t_i\prod_{j\ne i}y_j=0. \tag{25}
\]

The coefficients product_(j ne i)y_j have gcd one after the elimination. G is linear in independent t_i; hence it is irreducible in C[t,y] and, by Gauss's lemma, in K[y]. Equation (24) therefore says G divides D(y)=sum_i F_i(t)y_i^J on the hyperplane sum y=0. Polynomial divisibility allows evaluation also on the coordinate boundary of that hypersurface.

* **J=1:** degree D=1<N-1=degree G, so D=0 identically, i.e. all F_i are equal. Set t_1=0, retain t_2,t_3, and compare F_2-F_1. Its lowest nonzero t_2 power would be c_r t_2^r H_(m-r)(0,0,t_3,...), which is nonzero. Induction gives c_1=...=c_m=0. The sole relation is r=0, since sum y=0. Thus rank is m.
* **J>=2, N>=5:** set any two y coordinates to zero. Then G=0, while the remaining at least three coordinates obey only their zero-sum relation. A diagonal homogeneous polynomial sum b_i y_i^J of degree J>=2 cannot vanish on a zero-sum hyperplane in at least three variables unless every b_i=0: eliminating one variable produces a mixed monomial with a nonzero binomial coefficient. Varying the omitted pair gives every F_i=0.
* **J>=2, N=4:** setting two y's to zero gives F_l+(-1)^J F_m=0 for every pair l,m. For even J this forces F_i=0. For odd J>=3 it forces all F_i=F. If F were nonzero, G would divide the fixed nonzero polynomial sum_i y_i^J. This is impossible: after clearing denominators, the prime polynomial G, which has positive t-degree and positive y-degree, can divide neither a denominator depending only on t nor a nonzero polynomial depending only on y. Thus again F_i=0.

Finally F_i=0 in (24) implies every c_r=0: expand in t_i and use successively the lowest power, noting H_s evaluated at t_i=0 is not identically zero. Thus for J>=2 the m+1 maps are independent.

Combining these lower bounds with Section 5 proves (1) for every Delta>1. No exceptional algebraic mass set remains.

### Separate fallback check by oscillator contraction

As Delta tends to infinity, the chiral representation contracts to relative oscillators. The channel span becomes

\[
 \left\{T^a\sum_i x_i^{P-a}y_i^{Q-a}:0\le a\le m\right\},\quad
 T=\sum_i x_i y_i,\quad\sum x=\sum y=0.
\]

T-adic valuations give precisely the same rank: for scalar grades the last two polynomials are proportional; for spin one the last polynomial vanishes. All other valuations are distinct. For N>=4, nondivisibility witnesses on T=0 can be chosen as x=(1,1,-2,0), y=(s,2-s,1,-3). This independently gives a generic-Delta theorem, but the preceding operator argument is what upgrades it to all Delta>1.

## 7. Nonzero spectra and a genuinely nonchiral phi6 example

For Q=0 there is just one possible channel:

\[
 \rho_{P,0}=\kappa_{k,0}\left[1+k(-1)^P\frac{(\Delta)_P}{(k\Delta)_P}\right]. \tag{26}
\]

It vanishes at P=1 and is positive otherwise. The nonchiral answer is (10), (12)–(16), not an extrapolation of (26).

For phi6, N=4, measure eigenvalues in units lambda_6/(48pi^2). At (P,Q)=(1,1), the single eigenvalue is

\[
 s_{11}=\frac{4(5\Delta-1)}{9\Delta^2-1}.
\]

At (2,1) the single eigenvalue is

\[
 s_{21}=\frac{2(12\Delta^2+9\Delta-2)}{(3\Delta-1)(3\Delta+1)(3\Delta+2)}.
\]

At (2,2), D_4=3, rank=2, and the two positive values are the roots of

\[
 s^2-A(\Delta)s+B(\Delta)=0,
\]

where

\[
 A=\frac{8(13\Delta^3+12\Delta^2+\Delta-1)}
 {(3\Delta-1)(3\Delta+1)(3\Delta+2)(\Delta+1)},
\]

\[
 B=\frac{16(7\Delta^2+2\Delta+1)(5\Delta^2+4\Delta+1)}
 {(3\Delta-1)(3\Delta+1)^2(3\Delta+2)^2(\Delta+1)}.
\tag{27}
\]

In particular at Delta=2 the rational small matrix is

\[
 M_{22}=\begin{pmatrix}
 52/245&36/343&125/686\\
 9/80&31/56&325/1344\\
 9/14&39/49&271/392
 \end{pmatrix},
\]

with characteristic polynomial

\[
 s\left(s^2-\frac{51}{35}s+\frac{319}{980}\right).
\]

The **number-preserving** physical primary spectrum is therefore

\[
 \boxed{\frac{\lambda_6}{48\pi^2}
 \left\{0,\frac{51-\sqrt{1006}}{70},\frac{51+\sqrt{1006}}{70}\right\}.} \tag{28}
\]

Other Delta=2 examples, in the same number-preserving unit:

| (P,Q) | physical primary dimension | positive spectrum |
|---|---:|---|
| (1,1) | 1 | 36/35 |
| (2,1) | 1 | 16/35 |
| (3,1) | 2 | roots of s^2-(19/42)s+11/294 |
| (3,2) | 3 | 1/2, 1/7 |
| (3,3) | 6 | roots of s^3-(771/385)s^2+(55749/53900)s-918/6125 |

Zeros complete each listed physical dimension. Arbitrary grades require no Fock diagonalization: diagonalize only (15), with its exactly known redundancy.

### An explicit nonchiral kernel state for every k>=3

Define B-basis creation variables b_(pq)^dagger=a_(pq)^dagger/sqrt(w_p w_q), w_p=(Delta)_p/p!. Then

\[
 \boxed{|Z_k\rangle=(b_{00}^{\dagger})^{k-3}
 \big(b_{00}^{\dagger}b_{02}^{\dagger}-(b_{01}^{\dagger})^2\big)
 \big(b_{00}^{\dagger}b_{20}^{\dagger}-(b_{10}^{\dagger})^2\big)|0\rangle}
 \tag{29}
\]

is the (P,Q)=(2,2) primary zero, for all Delta>1 and N=k+1. It spans the one-dimensional kernel in that grade. Each bracket is a two-particle spinning primary, of grades (0,2) or (2,0), with zero **physical bulk** diagonal. Any k-subset of the k+1 constituents includes both constituents of at least one of these two pairs, so every k-body contact annihilates (29). This is a direct physical-coincidence pigeonhole argument, not a classification by a holomorphic ideal. The lowering equations also follow immediately from L_- b_(p,q)^dagger=p b_(p-1,q)^dagger and its right analogue.

## 8. Verification and reproduction

[verify_channels.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/nonchiral-clusters/verify_channels.py>) runs exact checks of the coupled-polynomial primary condition, norms, Racah involution, independent direct bulk/Fock nonzero spectra, the rank formula, and formal-Delta Sturm exclusion at modest grades. The direct Fock engine is imported only by that comparison section, not by the channel construction.

The final run passed **2754 exact checks**, recorded in [exact-checks.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/nonchiral-clusters/exact-checks.json>) and [verification.log](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/nonchiral-clusters/verification.log>):

- 1260 rank blocks: k=3,4,5,6; Delta=6/5,3/2,2,5/2,3,7/2,5; 0<=Q<=P<=8. Every block also passed exact channel-Gram symmetry.
- 30 independent bulk Jacobi/Beta/Fock comparisons for phi6,N=4, at Delta=3/2,2,5/2, through the selected grades (3,3) and (4,2); all nonzero characteristic polynomials agree after the explicit factor k! conversion of stripped units.
- Formal-Delta ranks and Sturm exclusion of numerator/denominator roots on Delta>1 at every 0<=Q<=P<=4 for phi6.
- 30 formal-Delta identities for the scalar Casimir and spin-one null vectors, k=3,4,5 and m=1,...,5.
- Coupled-primary norms, lowering equations, Racah involution, and a deliberate counterexample to the N=3 extension: k=2,Delta=2,(3,1) has small characteristic polynomial s(s-17/35).

Separately, [verify_operator_lemma.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/nonchiral-clusters/verify_operator_lemma.py>) independently applies the differential generators, without importing either channel or Fock code. Its **138 exact checks** of (23) all pass, recorded in [operator-checks.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/nonchiral-clusters/operator-checks.json>).

Additionally [verify_nonchiral_zero.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/nonchiral-clusters/verify_nonchiral_zero.py>) proves the explicit vector (29) is primary and in the number-preserving kernel with formal Delta for k=3,4,5,6 (12 exact identities), and checks the complete-resonance counterexample in Section 9; see [nonchiral-zero-checks.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/nonchiral-clusters/nonchiral-zero-checks.json>).

The algebraic all-index proof above is logically separate from these finite checks. A completed [fresh independent review](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/primary-polynomial-rank-review/review.md>) independently proves the polynomial rank lemma for every N>=4 and every Delta>1 by a simpler four-site boundary specialization, and identifies all polynomial relations. It also records 163 exact ranks of the original constrained polynomials, 16 formal-Delta generic-rank checks, and exact relation/log-recurrence checks. That review's scope is the polynomial lemma; the physical bulk-to-channel identification and triangular operator-to-channel completeness (20a)–(21) are established in this branch and separately reviewed by the parent, not claimed as part of the fresh algebraic review.

## 9. What these ranks do and do not say about complete resonance

The positivity, ranks, and spectra above refer to the k-to-k number-preserving term. In a complete first-order block, other terms of :phi^(2k): may change N. A change N to N+2j at fixed E,j_angular requires j Delta to be an integer, together with nonnegative allowed grades and occupation constraints. Extremal one-to-(2k-1) resonances vanish by the separately established selection rule; other arithmetic-allowed channels can be nonzero.

For phi6, the relevant 2-to-4 and 4-to-2 vertices can mix the N=4 sector with other N at integer Delta. Therefore, for example, (28) is not the complete Delta=2,E=12,j=0 spectrum. The complete resonant operator need not be positive even for positive lambda_6. Conversely for generic nonresonant Delta the fixed-N primary spectra are physical first-order energy shifts, inherited by all global descendants.

There is an explicit failure of nonchiral zero-mode survival. At phi6,Delta=2 the N=4 vector Z_3 in (29) and the N=6 ground state both have E=12,j=0 and are primaries. In the B basis,

\[
 \|Z_3\|^2=\frac{29}{36},\qquad
 \|(b_{00}^{\dagger})^6|0\rangle\|^2=720,\qquad
 \langle0|b_{00}^6 K^{(6)}|Z_3\rangle=\frac1{28\pi^2}.
\]

Consequently the normalized complete first-order off-diagonal entry is

\[
 \boxed{\langle 6\text{-ground}|V_6|Z_3/\|Z_3\|\rangle
 =\frac{\lambda_6}{56\pi^2\sqrt{145}}\ne0.} \tag{30}
\]

Only the b_00^2 b_02 b_20 term of Z_3 can leave the two ground spectators; its finite Beta integral gives the nonzero result directly. Thus Z_3 is not a zero vector of the complete resonant operator. The separately established survival of chiral contact zeros must not be transferred to this nonchiral kernel.

The present theorem does not classify complete cross-N kernels. It also does not solve arbitrary N>k+1 or higher perturbative orders. Its contribution is an exact nonchiral N=k+1 channel compression, all-mass rank/kernel-dimension theorem, finite nonzero-spectrum formula, and an explicit boundary between fixed-N and complete-resonance zero modes.
