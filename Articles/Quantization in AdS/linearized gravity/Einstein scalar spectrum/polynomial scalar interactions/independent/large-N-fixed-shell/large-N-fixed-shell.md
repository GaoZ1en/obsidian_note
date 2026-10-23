# All fixed-excitation large-N shells of the number-preserving AdS3 contact

## Result

**The all-fixed-(P,Q) limit exists in operator norm and is an explicitly diagonal, additive excitation-oscillator spectrum.** No extrapolation from low-degree characteristic polynomials is needed. After subtracting the all-ground energy and taking lambda_(2k)=g N^(1-k), its interaction frequencies are

\[
\boxed{\Omega_{pq}^{(k)}=\frac{g\kappa_{k,0}}{(k-1)!}\,\omega_{pq}^{(k)},\qquad
\omega_{pq}^{(k)}=kR_{pq}^{(k)}-1,\quad(p,q)\ne(0,0),}
\tag{1}
\]

where, writing nu=min(p,q), b=|p-q|,

\[
\boxed{R_{pq}^{(k)}=(k\Delta-1)\frac{(\Delta+\nu)_b}{(\nu+1)_b}
\int_0^1x^{k\Delta-2}(1-x)^b
\left[P_\nu^{(\Delta-1,b)}(1-2x)\right]^2dx.}
\tag{2}
\]

For every fixed P,Q, the complete limiting spectrum, with multiplicities, is

\[
\boxed{\left\{\frac{g\kappa_{k,0}}{(k-1)!}
\sum_{(p,q)\ne(0,0)}\omega_{pq}^{(k)}m_{pq}:
\sum p m_{pq}=P,\quad\sum q m_{pq}=Q\right\}.}
\tag{3}
\]

Each occupation configuration is counted once; configurations with the same sum give the corresponding multiplicity. The finite-N matrix differs from this diagonal matrix by O(N^(-1/2)) in operator norm. The rate is sharp even for eigenvalues: §7 gives an irrational-Delta, phi^4 primary doublet with a nonzero N^(-1/2) splitting.

The two unit modes (1,0),(0,1) have zero interaction frequency. The limiting **primary** spectrum is obtained by excluding these two modes from (3). They instead supply the left and right global descendants. This is a statement about limiting primary subspaces, not a claim that individual finite-N occupation states are primaries.

## 1. Conventions and the precise operator

AdS radius is one, theta has period 2pi, time is on the universal cover, and

\[
ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\theta^2,\qquad
m^2=\Delta(\Delta-2),\quad\Delta>1.
\]

Impose regularity at the center and source-free fast falloff at the boundary. The action is

\[
S_{\rm int}=-\frac{\lambda_{2k}}{(2k)!}\int\sqrt{-g}:\phi^{2k}:,
\quad k\ge2,
\]

normal ordered in the same global free vacuum. There is no dynamical gravity or finite boundary multitrace term. The conventions are those of the allowed [primitive note](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Polynomial scalar spectrum.md#L28-L123>) and [CPS formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L54-L82>).

With x=(1+r^2)^(-1),

\[
u_{pq}=\frac{d_{pq}}{\sqrt{2\pi}}e^{-i(\Delta+p+q)t+i(p-q)\theta}
 x^{\Delta/2}(1-x)^{|p-q|/2}J_{pq}(x),
\]
\[
J_{pq}=P_{\min(p,q)}^{(\Delta-1,|p-q|)}(1-2x),\quad
 d_{pq}^2=\frac{(\Delta+\min(p,q))_{|p-q|}}{(\min(p,q)+1)_{|p-q|}}.
\]

These modes have unit KG norm. The interaction measure is r dr dtheta, not the KG measure. In particular the radial phase of J_11=Delta-(Delta+1)x is retained.

Let T_N be the **number-preserving, secular k-to-k contact**, with lambda removed, on the N-particle (P,Q) shell:

\[
T_N=\Pi_{N,P,Q}\frac1{(k!)^2}\int r\,dr\,d\theta
 (\phi^-)^k(\phi^+)^k\Pi_{N,P,Q},
\quad \phi^+=\sum_Ia_Iu_I,\quad\phi^-=(\phi^+)^\dagger.
\tag{4}
\]

The known all-ground eigenvalue is

\[
E_{N,0}^{(1)}=\lambda_{2k}\kappa_{k,0}\binom Nk,\qquad
\kappa_{k,0}=\frac1{2k!(2\pi)^{k-1}(k\Delta-1)}.
\tag{5}
\]

For positive integer N, define a dimensionless shifted operator without dividing by g:

\[
D_N=\frac{(k-1)!}{\kappa_{k,0}}N^{1-k}
 \left(T_N-\kappa_{k,0}\binom Nk\mathbf1\right).
\tag{6}
\]

Physical first-order relative shifts are g kappa_(k,0)/(k-1)! times its eigenvalues. Adding the free gap gives P+Q plus that shift. The N in lambda_(2k)=g N^(1-k) is the **total** particle number throughout a shell; it is not replaced by the depleted ground occupation N-M.

## 2. Stable finite excitation space and an exact finite-N matrix

Let

\[
\mathcal C_{P,Q}=\left\{\mathbf m=(m_{pq})_{(p,q)\ne0}:m_{pq}\in\mathbb Z_{\ge0},
\ \sum p m_{pq}=P,\ \sum q m_{pq}=Q\right\},
\quad M(\mathbf m)=\sum m_{pq}.
\]

Only p<=P,q<=Q occur, and M<=P+Q. Thus this is a finite set. For N>=P+Q, the isometry

\[
U_N|\mathbf m\rangle=
\frac{(a_{00}^\dagger)^{N-M}}{\sqrt{(N-M)!}}
\prod_{I\ne0}\frac{(a_I^\dagger)^{m_I}}{\sqrt{m_I!}}|0\rangle
\tag{7}
\]

identifies the whole N-particle shell with the same finite Hilbert space, independently of N.

There is also an exact finite-N matrix on this space. For bra m', ket m, choose an excited spectator multiset t satisfying 0<=t_I<=min(m_I,m'_I), and put

\[
a_I=m_I-t_I,\quad c_I=m'_I-t_I,\quad
s=|a|,\quad r=|c|,\quad T=|t|.
\]

Only r,s<=k contribute. Let I(c,a) denote the mode integral with c excited creators, a excited annihilators, k-r ground creators and k-s ground annihilators. Then

\[
\boxed{(U_N^\dagger T_NU_N)_{\mathbf m'\mathbf m}
=\sum_{\mathbf t}
\frac{\mathcal I(c,a)}{(k-r)!(k-s)!\prod_I c_I!a_I!}
\sqrt{(N-M)_{\underline{k-s}}(N-M')_{\underline{k-r}}}
\prod_{I\ne0}\frac{\sqrt{m_I!m'_I!}}{t_I!}.}
\tag{8}
\]

A falling factorial is zero if insufficient ground particles are available. Equivalently the ground factor is sqrt[(N-M)!(N-M')!]/(N-k-T)! when the factorials exist. Formula (8) follows directly by acting with the normal-ordered oscillator monomial; it does not use a fitted matrix or a large-N assumption.

The integral in (8) is a finite Beta sum. If the product of all Jacobi polynomials is sum_h j_h x^h and B=one-half the sum of all absolute spins, then

\[
\mathcal I(c,a)=c_k\prod_{\rm legs}d_I\sum_hj_h
 B(k\Delta-1+h,B+1),\qquad c_k=\frac{(2\pi)^{1-k}}2.
\tag{9}
\]

All external states lie in the same (P,Q), so angular and secular selection are automatic in (8). This is the requested finite excitation description at every N, as well as the starting point for the limit.

## 3. Proof of the limit and the exact offdiagonal power counting

For fixed m,m',t, the ground factor in (8) obeys

\[
\sqrt{(N-M)_{\underline{k-s}}(N-M')_{\underline{k-r}}}
=N^{k-(r+s)/2}\left[1+O(N^{-1})\right].
\tag{10}
\]

After the prescribed coupling scaling, a vertex with d=r+s non-ground legs therefore has size N^(1-d/2).

- d=0 is the ground-only interaction.
- d=1 is impossible: each excited mode has p+q>0, whereas the two sides have equal total p and q.
- d=2 can only be one excited creator and one annihilator. Conservation of both p and q forces the two labels to coincide. These terms are diagonal.
- All genuine mixing has d>=3 and vanishes at least as N^(-1/2).

The ground-only diagonal contribution is

\[
\frac{\mathcal I_0}{(k!)^2}(N-M)_{\underline k},\qquad
\mathcal I_0=\frac{c_k}{k\Delta-1}=k!\kappa_{k,0}.
\]

Consequently its shifted, scaled limit is

\[
N^{1-k}\frac{\mathcal I_0}{(k!)^2}
\left[(N-M)_{\underline k}-N_{\underline k}\right]
\longrightarrow-\frac{\kappa_{k,0}}{(k-1)!}M.
\tag{11}
\]

The one-excitation diagonal term is

\[
\frac{\mathcal I_I}{((k-1)!)^2}(N-M)_{\underline{k-1}}m_I,
\qquad\mathcal I_I=\int r\,dr\,d\theta\,|u_0|^{2k-2}|u_I|^2.
\]

After multiplication by N^(1-k), its limit is k kappa_(k,0) R_I m_I/(k-1)!, since R_I=I_I/I_0. Equations (11) and (2) give

\[
\boxed{U_N^\dagger D_NU_N=D_\infty+O(N^{-1/2}),\qquad
D_\infty=\sum_{I\ne0}\omega_I b_I^\dagger b_I.}
\tag{12}
\]

Here b_I are auxiliary canonical excitation oscillators on the stable finite-grade Fock spaces. Since the matrix dimension is finite, entrywise bounds imply the operator-norm bound. Weyl's inequality gives convergence of the ordered eigenvalues with multiplicities. At a degenerate limit, individual finite-N eigenvectors need not approach individual occupation states; the corresponding spectral subspace is the invariant object.

### Stronger pairwise offdiagonal statement

For m'!=m define

\[
d_0=\sum_{I\ne0}|m'_I-m_I|,\quad
r_0=\sum_I(m'_I-m_I)_+,\quad s_0=\sum_I(m_I-m'_I)_+.
\]

If max(r_0,s_0)>k, the matrix element vanishes exactly. Otherwise d_0>=3 and

\[
(D_N)_{\mathbf m'\mathbf m}=O(N^{1-d_0/2}).
\tag{13}
\]

The coefficient of this leading power comes from the **unique** maximal common spectator multiset t_I=min(m_I,m'_I), evaluated in (8). It can vanish because its mode integral vanishes; (13) is a bound, not a generic-nonzero assertion. Every additional active common excitation lowers the power by one. The diagonal error is O(N^(-1)), not O(N^(-1/2)).

Thus the finite matrix has a full asymptotic expansion

\[
D_N=D_\infty+N^{-1/2}D_{1/2}+N^{-1}D_1+\cdots,
\tag{14}
\]

obtainable by expanding (8). D_(1/2) contains precisely the 1-to-2 and 2-to-1 excited-mode processes. A simple limiting eigenvalue has no diagonal N^(-1/2) correction. A degenerate eigenvalue, however, can split at that order through the restriction of D_(1/2) to its eigenspace; §7 shows this actually happens.

## 4. Explicit frequencies and useful limits

Writing J_nu(x)^2=sum_h c_h x^h gives the finite exact formula

\[
R_{pq}^{(k)}=(k\Delta-1)d_{pq}^2\sum_{h=0}^{2\nu}c_h
 B(k\Delta-1+h,b+1).
\tag{15}
\]

Because b,h are nonnegative integers, this is a rational function of Delta for every fixed p,q,k. No unevaluated spectral problem remains in the limiting frequencies.

In particular

\[
R_{p0}^{(k)}=\frac{(\Delta)_p}{(k\Delta)_p},\qquad
\omega_{p0}^{(k)}=k\frac{(\Delta)_p}{(k\Delta)_p}-1,
\tag{16}
\]

and reflection p<->q leaves every frequency unchanged. Some useful low modes are

\[
\omega_{10}=\omega_{01}=0,
\]
\[
\omega_{20}=-\frac{(k-1)\Delta}{k\Delta+1},\qquad
\omega_{11}=\frac{(k-1)[(k-2)\Delta-1]}{k\Delta+1},
\tag{17}
\]
\[
\omega_{21}=\frac{(k-1)(\Delta+2)[(k-3)\Delta-1]}
 {(k\Delta+1)(k\Delta+2)},
\qquad
\omega_{30}=-\frac{(k-1)\Delta[(k+1)\Delta+3]}
 {(k\Delta+1)(k\Delta+2)}.
\tag{18}
\]

In particular the radial (1,1) frequency is negative for k=2 and strictly positive for all k>=3, Delta>1. Chiral modes p>=2 have negative frequencies for every k>=2. This sign contrast survives at arbitrarily large N.

The KG norm gives a useful all-mode estimate. Since

\[
\int_0^1x^{\Delta-1}(1-x)^bJ_\nu(x)^2dx
=\frac1{(\Delta+p+q)d_{pq}^2}
\]

and (k-1)Delta-1>0,

\[
0<R_{pq}^{(k)}<\frac{k\Delta-1}{\Delta+p+q},\qquad
\omega_{pq}^{(k)}>-1,\qquad
\omega_{pq}^{(k)}\longrightarrow-1\quad(p+q\to\infty).
\tag{19}
\]

The last limit is uniform over the spin at fixed total p+q. It is a statement about the frequency sequence, not about uniform convergence of growing many-particle shells.

## 5. Multiplicities and global primary/descendant organization

Let h_infty(P,Q)=|C_(P,Q)|. Its character is

\[
\sum_{P,Q}h_\infty(P,Q)x^Py^Q
=\prod_{(p,q)\ne(0,0)}(1-x^py^q)^{-1}.
\tag{20}
\]

The spectral character records all degeneracies exactly:

\[
\sum_{P,Q}x^Py^Q\operatorname{Tr}_{P,Q}e^{tD_\infty}
=\prod_{(p,q)\ne(0,0)}\left(1-x^py^q e^{t\omega_{pq}}\right)^{-1}.
\tag{21}
\]

For a prescribed eigenvalue e, its multiplicity is the number of occupations in C_(P,Q) for which sum_I omega_I m_I=e. Equation (21) handles symmetry-related coincidences, accidental coincidences, and coincident sums without an unjustified generic nondegeneracy assumption.

### Why removing the two unit modes gives exactly the primary limit

In normalized one-particle conventions,

\[
L_-|p,q\rangle=\sqrt{p(p+\Delta-1)}\,|p-1,q\rangle.
\]

On the stable excitation space,

\[
\frac{U_N^\dagger L_-U_N}{\sqrt N}
=\sqrt\Delta\,\sqrt{1-\widehat M/N}\,b_{10}
+\frac1{\sqrt N}\sum_{\substack{p\ge1\\(p,q)\ne(1,0)}}
 \sqrt{p(p+\Delta-1)}\,b_{p-1,q}^\dagger b_{pq}.
\tag{22}
\]

The square root stands to the left of b_10 and therefore acts after the annihilation. The barred lowering map has the analogous limit sqrt(Delta)b_01. Their stacked map converges in norm to sqrt(Delta)(b_10,b_01). Its kernel is exactly the span of occupations with m_10=m_01=0.

The exact finite-N primary dimension, once N>=P+Q, is

\[
p_\infty(P,Q)=h_\infty(P,Q)-h_\infty(P-1,Q)
-h_\infty(P,Q-1)+h_\infty(P-1,Q-1).
\tag{23}
\]

This follows from the positive-energy unitary global modules; there are no null descendants at Delta>1. The generating function of (23) removes exactly the (1,0),(0,1) factors from (20), so this dimension equals the limiting joint-kernel dimension. The nonzero singular values of the limiting stacked map have a positive gap. Perturbation of a fixed-rank finite matrix therefore gives convergence of the primary orthogonal projectors, at rate O(N^(-1/2)).

The secular contact commutes with the free global generators. This follows either from the invariant first-order action and its Ward identity, or from the intertwining k-body contact construction. Particle number is preserved by the free global generators, so the statement applies to the number-preserving diagonal block even at a particle-number resonance. Consequently the compressed primary contact has the limiting spectrum

\[
\boxed{\left\{\sum_I\omega_Im_I:
\mathbf m\in\mathcal C_{P,Q},\ m_{10}=m_{01}=0\right\}.}
\tag{24}
\]

A normalized descendant with a left and b right raises tends to the same primary occupation with a extra b_10 quanta and b extra b_01 quanta. Explicitly L_+/sqrt(N Delta) tends to b_10^dagger, and the corresponding barred generator tends to b_01^dagger. Their interaction frequencies vanish, so the shift stays constant throughout each global module. Equivalently, the primary spectral character is (1-x)(1-y) times (21).

Extra zero-frequency primary states, should (15) produce them at a special Delta, are not to be mistaken for descendants.

## 6. Exact all-shell examples

All numbers in this section are in units g kappa_(k,0)/(k-1)!. These examples evaluate the proved formula; they are not the source of the theorem.

### The full (2,2) shell for arbitrary k,Delta

The stabilized shell has dimension nine, with spectrum

\[
\{\omega_{22},\ 2\omega_{20},\ 2\omega_{11},\
\omega_{21}\ [2],\ \omega_{20}\ [2],\ \omega_{11},\ 0\}.
\tag{25}
\]

Brackets give multiplicities before any further numerical coincidences. The three primaries are represented in the limit by 22, (20)(02), and (11)^2. For k=3, Delta=2, (25) is

\[
\{-4/21,\ -8/7,\ 4/7,\ -1/7\ [2],\ -4/7\ [2],\ 2/7,\ 0\}.
\]

At this parameter this is explicitly only the number-preserving phi^6 suboperator.

### A degree-six example: the (3,3) primary multiplicity space

There are eight primaries at stable (3,3), with limiting occupation representatives

\[
33;\ (02)(31);\ (03)(30);\ (11)(22);\ (12)(21);\
(13)(20);\ (02)(11)(20);\ (11)^3.
\]

For k=3, Delta=2 their spectrum is

\[
\boxed{\{-11/7,\ -43/42\ [2],\ -6/7,\ -31/77,\ -2/7,\ 2/21,\ 6/7\}.}
\tag{26}
\]

The full shell has dimension 31. Its full spectrum, and those at (3,2),(4,0) for k=2,3,4, are recorded in the [exact check data](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-fixed-shell/checks.json>).

### Collaborative extension: an all-N radial primary

After the independent all-shell derivation, the parent researcher supplied the exact (1,1) family below. It was then checked against (8), not used to infer (1).

Let A have one (1,1) and N-1 grounds, and B have one (1,0), one (0,1), and N-2 grounds. In normalized occupation conventions,

\[
T_N-\kappa_{k,0}\binom Nk\mathbf1
=\kappa_{k,0}\frac{(k-2)\Delta-1}{k\Delta+1}\binom{N-2}{k-2}
\begin{pmatrix}N-1&-\sqrt{N-1}\\-\sqrt{N-1}&1\end{pmatrix}.
\tag{27}
\]

The primary is (sqrt(N-1) A-B)/sqrt(N), and its unscaled contact eigenvalue is

\[
\frac{\epsilon_{11}}{\kappa_{k,0}}=\binom Nk+
N\frac{(k-2)\Delta-1}{k\Delta+1}\binom{N-2}{k-2}.
\tag{28}
\]

It tends to (17) with the stated scaling. Equation (27) passed 36 exact comparisons using the independent implementation of (8).

## 7. A sharp irrational-Delta N^(-1/2) eigenvalue splitting

Take k=2 and

\[
\Delta_*=(\sqrt{13}-1)/2>1.
\]

This Delta is irrational, so no other particle number lies in the same free (E,J) block. Nevertheless the primary spectrum has an accidental collision:

\[
\omega_{11}=-\frac1{2\Delta+1},\qquad
\omega_{22}=-\frac{\Delta^2+5\Delta+3}{(2\Delta+1)(2\Delta+3)},
\]
\[
\omega_{22}-2\omega_{11}
=-\frac{\Delta^2+\Delta-3}{(2\Delta+1)(2\Delta+3)}.
\tag{29}
\]

At Delta=Delta_* the occupations 22 and (11)^2 have the same limiting frequency -2/sqrt(13). No other state in the nine-dimensional (2,2) shell shares it.

The 22+ground <-> 11+11 contact is not zero. With c_2=1/(4pi), direct polynomial integration gives

\[
\frac{\mathcal I(11,11;22,0)}{c_2}
=\int_0^1x^{2\Delta-2}J_{11}(x)^2J_{22}(x)dx
=\frac{\Delta(\Delta+1)}{(2\Delta-1)(2\Delta+1)(2\Delta+3)}.
\tag{30}
\]

At Delta_* this is 1/(3sqrt(13)). The occupation factor sqrt(2) and the 1/2! vertex multiplicity give the offdiagonal coefficient in D_(1/2)

\[
\alpha=\sqrt2(2\Delta_*-1)\frac{\mathcal I}{c_2}
=\frac{\sqrt2(\sqrt{13}-2)}{3\sqrt{13}}>0.
\tag{31}
\]

The restriction of D_(1/2) to the two-dimensional limiting eigenspace is [[0,alpha],[alpha,0]]. Corrections to the primary embedding do not alter this first-order degenerate restriction: the leading operator is scalar on this eigenspace. Therefore the two primary shifts are

\[
\boxed{E_\pm^{(1)}-E_{N,0}^{(1)}
=g\kappa_{2,0}\left[-\frac2{\sqrt{13}}
\pm\frac{\sqrt2(\sqrt{13}-2)}{3\sqrt{13N}}+O(N^{-1})\right].}
\tag{32}
\]

This proves that an unconditional O(N^(-1)) eigenvalue estimate is false, even at a nonresonant irrational Delta. Exact algebraic-arithmetic checks verify (29)-(31). Numerically, sqrt(N) times the two residual eigenvalues at N=4096 are -0.2125741614 and 0.2074684762; their predicted limits are +/-0.2099163406.

## 8. Limits of uniformity and physical scope

### Not uniform on growing excitation shells

The fixed-shell estimates are uniform in Delta on compact subsets of (1,infinity), for fixed k and bounded g. They do **not** imply uniformity as P,Q or k grow. This failure can be exhibited with fixed low mode labels, without relying on large-mode Jacobi estimates.

In the chiral sector consider two states related by 10+10 <-> 20. The contribution with maximal common spectators is

\[
(D_N)_{\mathbf m'\mathbf m}
=\frac{C_{k,\Delta}}{\sqrt N}
\sqrt{m_{10}(m_{10}-1)(m_{20}+1)}[1+O(M/N)]
+\text{additional chiral terms},
\tag{33}
\]
\[
C_{k,\Delta}=\frac{(k-1)\sqrt{\Delta(\Delta+1)/2}}{k\Delta+1}>0.
\]

For fixed k, the stated relative estimate for the displayed term holds when M=o(N). Every additional term is nonnegative because all chiral Jacobi polynomials are one and their radial integrals are positive. Choose Q=0,P=4L, m_10=2L,m_20=L. The displayed offdiagonal is asymptotic to 2 C L^(3/2)/sqrt(N). For L proportional to N^(1/3), it stays bounded away from zero, even though M/N tends to zero. Since D_infty is diagonal, this is a direct lower bound on the norm of D_N-D_infty. Thus even subextensive depletion is not sufficient for uniform operator convergence.

This example concerns the norm estimate. It is not, by itself, a proof of a particular simultaneous-limit eigenvalue law.

### Particle-number resonance and perturbative order

For irrational Delta, fixed E=N Delta+P+Q and J=P-Q select this N uniquely. At rational Delta there can be other N in the same free block. Nonzero number-changing first-order channels may then occur; for Delta=a/b in lowest terms and phi^(2k), the verified contact selection rules allow them precisely when k>=b+2. Even when a particular contact has no such matrix element, the distinction between the complete free block and its fixed-N subspace should be retained.

The theorem above is about the number-preserving suboperator (4). At resonance it is **not** asserted to be the full first-order Fock-block spectrum. In particular the all-ground subtraction in (5) is an eigenvalue of the number-preserving block, not necessarily an eigenvalue of a full resonantly mixed block.

Likewise this is an exact theorem about the first-order contact matrix and its large-N limit. Taking lambda=g N^(1-k) does not, by itself, prove suppression of all higher perturbative orders at fixed g. Interpreting these as full physical gaps requires a controlled expansion in g; nonresonant virtual channels and renormalization at higher orders have not been analyzed here.

## 9. Verification record and independence

The independent derivation used only the specified verified primitive note, its contact engine, the applicable AGENTS rules, and the CPS convention anchor. No parent round-three candidate or other research branch was read. Equation (27) was received later as an explicitly identified collaborative extension.

- **Analytic proof:** exact normalized spectator formula (8), exhaustive leg counting, finite-dimensional norm convergence, exact character multiplicities, and contraction of the joint lowering kernel.
- **Independent implementation comparison:** the new [fixed-shell implementation](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-fixed-shell/fixed_shell.py>) constructs normalized matrices directly from (8). Exact AA equality with the existing [contact engine](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/code/contact_blocks.py>) passed in four 9x9/16x16 blocks, at k=2,3,4, Delta=2,5/3. Gram self-adjointness and primary dimensions were also checked.
- **Exact examples:** complete limiting spectra for twelve shells; 36 all-N radial-family matrix equalities; exact algebraic collision and half-order coefficient at Delta_*.
- **Independent kernel algebra:** the [Wolfram checks](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-fixed-shell/symbolic_checks.wl>) verify the symbolic frequencies, direct radial integral, collision polynomial, and nonzero splitting coefficient. All Boolean checks returned True, with no messages.
- **Numerical asymptotic support:** full matrices at N=32,128,512,2048 for (k,P,Q)=(2,2,2),(3,3,2),(4,3,3). Both sqrt(N)||D_N-D_infty|| and N||D_N-D_infty-N^(-1/2)D_(1/2)|| remain bounded as predicted. Full data, including the exceptional doublet through N=4096, are in [checks](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-fixed-shell/checks.json>).
- **Not claimed:** higher-order-in-g control, a uniform growing-shell theorem, a classification of every accidental additive-frequency identity, or the full resonant number-changing spectrum. No additional fresh subagent review was available at this delegation depth; the derivation itself was performed as an independent research branch.

## 10. Collaborative extension: an all-grade gap/density contrast

The parent researcher proposed the arguments in §§10.1–10.3 after the fixed-shell result was completed. They have been critically checked analytically and with independent exact representation calculations. This section concerns the **direct sum of the already-taken fixed-shell limits**, not a simultaneous large-N/large-grade limit.

Let B_prim be the countable set of all finite occupations with the modes 00,10,01 excluded. On ell^2(B_prim), define

\[
\mathcal D_{\rm prim}|\mathbf m\rangle=d_{\mathbf m}|\mathbf m\rangle,
\qquad d_{\mathbf m}=\sum_I\omega_Im_I,
\]
\[
\operatorname{Dom}\mathcal D_{\rm prim}
=\left\{\psi:\sum_{\mathbf m}|d_{\mathbf m}|^2|\psi_{\mathbf m}|^2<\infty\right\}.
\tag{34}
\]

This is the natural diagonal self-adjoint operator; the finite occupation span is a core. Its spectrum is the closure of its eigenvalue set. All statements below are in dimensionless defect units, before multiplication by g kappa_(k,0)/(k-1)!.

### 10.1 Quartic contact: a uniform nonvacuum primary gap

For k=2 the exact two-body spectrum gives the operator inequality

\[
T^{(2)}_2\le\kappa_{2,1}\mathbf1+
(\kappa_{2,0}-\kappa_{2,1})\Pi_{\rm lowest},
\qquad\frac{\kappa_{2,1}}{\kappa_{2,0}}=\frac{2\Delta-1}{2\Delta+1}.
\tag{35}
\]

Here Pi_lowest is the orthogonal projector onto the complete global module generated by the two-particle ground state. All other nonzero two-body eigenvalues are at most kappa_(2,1), and the remaining channels are zero, so (35) is an exact quadratic-form inequality.

For the normalized symmetric state |0,(p,q)>, with (p,q)!=00, the projector weight is

\[
W_{pq}=\langle0,(p,q)|\Pi_{\rm lowest}|0,(p,q)\rangle
=2r_pr_q,\qquad r_p=\frac{(\Delta)_p}{(2\Delta)_p}.
\tag{36}
\]

To see this directly, let |G_2> be the normalized two-particle ground state. Its normalized grade-(p,q) descendant is

\[
|G_{p,q}\rangle=
\frac{(L_+)^p(\bar L_+)^q|G_2\rangle}
 {\sqrt{p!(2\Delta)_p\,q!(2\Delta)_q}}.
\]

The coefficient of |0,(p,q)> in its numerator is sqrt[2 p!q!(Delta)_p(Delta)_q]: all left and right raises must act on the same particle, and the factor two comes from Bose symmetrization of the distinct labels 00 and (p,q). Squaring and dividing by the descendant norm proves (36).

The sequence r_p strictly decreases, with r_0=1 and r_1=1/2. If (p,q) is not 00,10,01, then either one index is at least two, or both are positive. Therefore

\[
W_{pq}\le2r_2=\frac{\Delta+1}{2\Delta+1}.
\tag{37}
\]

The contact expectation in this state is I_(pq)=2 kappa_(2,0) R_(pq). Taking its expectation in (35) gives

\[
\omega_{pq}^{(2)}=2R_{pq}^{(2)}-1
\le-\frac{2}{2\Delta+1}(1-W_{pq})
\le-\frac{2\Delta}{(2\Delta+1)^2}.
\tag{38}
\]

Thus every nonvacuum primary defect obeys the uniform estimate

\[
\boxed{d_{\mathbf m}\le-\frac{2\Delta}{(2\Delta+1)^2}
\quad(\mathbf m\ne0),\qquad k=2.}
\tag{39}
\]

In fact the stronger bound with an additional factor M holds. The zero at the vacuum grade is isolated from all nonvacuum primary defect eigenvalues. This bound is sufficient for the contrast; optimality of its constant is not claimed.

### 10.2 Higher contacts: dense primary defects for every Delta>1

For k>=3 define

\[
A=\omega_{11}=\frac{(k-1)[(k-2)\Delta-1]}{k\Delta+1}>0,
\qquad
B=-\omega_{20}=\frac{(k-1)\Delta}{k\Delta+1}>0.
\tag{40}
\]

**Irrational Delta.** The ratio A/B=k-2-1/Delta is irrational. The set

\[
\{mA-nB:m,n\in\mathbb Z_{\ge0}\}
\tag{41}
\]

is dense in the real line: fractional parts of mA/B are dense, and m can be taken large enough that the integer n needed to approach any prescribed real number is nonnegative. Every value in (41) is a primary defect, realized by (11)^m(20)^n.

**Rational Delta.** Then A=u/v>0 for positive integers u,v. For every p>=2 the primary configuration (11)^v(p0)^u has defect

\[
\delta_p=vA+u\omega_{p0}=ukR_{p0}>0,
\qquad\delta_p\longrightarrow0.
\tag{42}
\]

To approximate any x in the real line, first choose a fixed n>=0 with y=x+nB>0. For p large, take t=floor(y/delta_p). Repeating the configuration in (42) t times and adding n copies of 20 gives

\[
|t\delta_p-nB-x|<\delta_p\longrightarrow0.
\tag{43}
\]

This is an elementary constructive density proof; no irrationality is required in this case. Combining both cases,

\[
\boxed{\overline{\{d_{\mathbf m}:\mathbf m\in\mathcal B_{\rm prim}\}}
=\sigma(\mathcal D_{\rm prim})=\mathbb R,
\qquad k\ge3,\quad\Delta>1.}
\tag{44}
\]

The point spectrum is countable and dense. The operator still has a complete orthonormal eigenbasis and pure-point spectral measures. Equation (44) does not assert an absolutely continuous spectral component.

### 10.3 Exact zero defects and a qualification

If Delta=a/b>1 in lowest terms, the primary occupation

\[
(11)^a(20)^{(k-2)a-b}
\tag{45}
\]

has exact defect zero. Its grades are P=(2k-3)a-2b, Q=a; the exponents are positive integers. This follows directly from aA-[(k-2)a-b]B=0.

Rationality is sufficient for this particular construction, **not necessary for the existence of an exact zero defect**. For example at k=3,

\[
\omega_{22}^{(3)}=
\frac{2(\Delta^3-4\Delta^2-3\Delta-2)}
 {(\Delta+1)(3\Delta+1)(3\Delta+2)}.
\tag{46}
\]

The irreducible cubic in the numerator has a real root in (4,5), approximately 4.7245767276. At this irrational Delta, the single primary limiting mode 22 has zero defect.

### 10.4 Dense defect spectrum does not imply dense total excitation energies

Let S=P+Q be the free excitation operator and beta=g kappa_(k,0)/(k-1)!. Since every nonunit mode has p+q>=2 and omega_I>-1,

\[
\mathcal D_{\rm prim}\ge-M\ge-\frac12S.
\]

For positive 0<=beta<2, the formal all-grade, first-order total excitation operator therefore satisfies

\[
\boxed{\mathcal H_{\rm eff}=S+\beta\mathcal D_{\rm prim}
\ge(1-\beta/2)S.}
\tag{47}
\]

Every fixed-S space is finite dimensional. Consequently this diagonal total operator has compact resolvent: its excitation energies tend to infinity as S tends to infinity, with only finitely many states below any finite cutoff. The same argument permits the unit descendant modes, since they contribute zero defect and positive free excitation energy.

Thus the dense interaction-defect spectrum is fully compatible with a discrete, positive total excitation spectrum in the formal small-positive-coupling model. Neither (44) nor (47) establishes a statement about higher orders in g, a simultaneous growing-shell limit, or dynamical stability of the full interacting theory.

### 10.5 Checks of the extension

The [gap/density check script](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-fixed-shell/gap_density_checks.py>) independently constructs the total-raising descendants in the two-particle algebraic basis and tests (36), rather than assuming the projector weight. Its [recorded exact results](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-fixed-shell/gap-density-checks.json>) contain 120 projector-probability equalities, 390 finite-mode checks of (38), four rational-Delta small-positive and exact-zero constructions, and irreducibility/root-location checks for (46). Wolfram polynomial integration separately verified (46) exactly, with no messages. Density and the uniform gap are established by the analytic arguments above, not by these finite checks.
