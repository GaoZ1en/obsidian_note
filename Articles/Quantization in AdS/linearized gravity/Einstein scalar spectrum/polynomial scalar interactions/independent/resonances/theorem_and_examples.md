# Fixed-global-AdS3 scalar contact resonances: independent theorem and exact checks

## Result and scope

**At first order, all resonant one-to-many contact coefficients vanish, but resonant particle-number conservation is false in general.** If both sides contain at least two legs, a nonzero coefficient exists whenever energy and angular-momentum arithmetic permits that channel. This is an existence theorem for a channel, not a claim that every allowed mode tuple is nonzero.

For a normal-ordered nonderivative vertex of degree n >= 3 on fixed global AdS3, with Delta > 1 and standard fast boundary conditions:

1. An r-creation, s-annihilation resonance, r+s=n and r,s >= 1, requires and kinematically can realize
   \[
   (r-s)\Delta\in2\mathbb Z.
   \]
2. Every resonant 1 <-> (n-1) spatial coefficient is exactly zero.
3. For r,s >= 2, the entire r <-> s channel is nonzero if and only if the arithmetic condition holds. Individual entries can still vanish.
4. For irrational Delta, the first-order resonant Hamiltonian conserves free particle number. Every odd-degree vertex has zero resonant projection.
5. For rational Delta=a/b in lowest terms, number-changing resonances exist at sufficiently high degree. At fixed degree:
   - even n: a number-changing resonant term exists iff n >= 2b+4;
   - odd n: a resonant term exists iff a is even and n >= b+4. Here b is automatically odd.
6. In particular, normal-ordered phi^3 has zero first-order resonant Hamiltonian for every Delta > 1. Normal-ordered phi^5 has a nonzero first-order resonant Hamiltonian precisely when Delta is a positive even integer (with Delta > 1).

All statements concern the resonant projection / degenerate first-order mixing, not the complete interacting Hamiltonian or an in/out S-matrix. Off-resonant number-changing vertices generally remain nonzero.

### Independence and conventions consulted

The original derivation used only the supplied problem, the applicable repository instructions, and the authoritative [formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md>). No candidate research note was read. The final phi^6 primary-channel calculation below was a subsequent targeted recomputation after the parent supplied a target magnitude; it is separate from the independently obtained resonance theorem. The parent also supplied the alternative Jacobi phase convention, whose exact mapping is recorded below.

No pre-existing research file was edited. The scripts, results, and this report are new files in the assigned independent directory.

## 1. Modes and KG normalization

Set the AdS radius to one and use signature (-,+,+):
\[
 ds^2=\sec^2\rho(-dt^2+d\rho^2+\sin^2\rho\,d\theta^2),
 \quad 0\leq\rho<\pi/2,\quad\theta\sim\theta+2\pi.
\]
The field is real, m^2=Delta(Delta-2), Delta > 1. The regular fast modes are
\[
 u_{pq}(t,\rho,\theta)=\mathcal N_{pq}
 e^{-i(\Delta+p+q)t+i(p-q)\theta}
 (\sin\rho)^L(\cos\rho)^\Delta
 P_k^{(L,\Delta-1)}(\cos2\rho),
\]
where
\[
 k=\min(p,q),\quad L=|p-q|,\quad p,q\in\mathbb Z_{\geq0}.
\]
**The phase choice in this report is positive real N and the displayed Jacobi polynomial.** In particular, it does not include an extra (-1)^k.

The future unit normal is n^t=cos(rho), and the induced KG measure is tan(rho) d rho d theta. Thus
\[
 (u,v)_{\rm KG}=i\int d\rho\,d\theta\,\tan\rho
 \left(u^*\partial_t v-v\partial_tu^*\right).
\]
With x=sin^2(rho), Jacobi orthogonality gives
\[
 \int_0^{\pi/2}d\rho\,\tan\rho
 (\sin\rho)^{2L}(\cos\rho)^{2\Delta}
 [P_k^{(L,\Delta-1)}(\cos2\rho)]^2
 =\frac{\Gamma(k+L+1)\Gamma(k+\Delta)}
 {2(\Delta+L+2k)\,k!\,\Gamma(k+L+\Delta)}.
\]
Consequently
\[
 \boxed{\mathcal N_{pq}^2=
 \frac{k!\,\Gamma(k+L+\Delta)}
 {2\pi\,\Gamma(k+L+1)\Gamma(k+\Delta)}}.
\]
Examples are N_(0,0)=1/sqrt(2pi), N_(k,k)=1/sqrt(2pi), and
\[
 \mathcal N_{K,0}^2=\mathcal N_{0,K}^2=
 \frac{(\Delta)_K}{2\pi K!}.
\]
The field expansion and oscillator algebra are
\[
 \phi=\sum_{p,q}(a_{pq}u_{pq}+a_{pq}^\dagger u_{pq}^*),
 \qquad[a_{pq},a_{p'q'}^\dagger]=\delta_{pp'}\delta_{qq'}.
\]
This agrees with the sign and normalization anchors in the authoritative [formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md>).

The radial equation is
\[
 R''+(\cot\rho+\tan\rho)R'
 +\left[\omega^2-\frac{L^2}{\sin^2\rho}
 -\frac{\Delta(\Delta-2)}{\cos^2\rho}\right]R=0.
\]
After stripping x^(L/2)(1-x)^(Delta/2), it is the Jacobi equation with eigenvalue k(k+L+Delta), giving omega=Delta+L+2k=Delta+p+q.

## 2. Contact coefficient and complete resonance arithmetic

At t=0 define the spatial coefficient, without lambda_n or oscillator combinatorics,
\[
 C_{I_1\cdots I_r;J_1\cdots J_s}
 =\int d\rho\,d\theta\frac{\sin\rho}{\cos^3\rho}
 \prod_{i=1}^r u_{I_i}^*(0)\prod_{j=1}^s u_{J_j}(0).
\]
With ordered index sums,
\[
 H_n(t)=\sum_{r+s=n}\frac{\lambda_n}{r!s!}
 \sum_{I_1\ldots I_r,J_1\ldots J_s}
 C_{I;J}e^{i(\sum_i\omega_{I_i}-\sum_j\omega_{J_j})t}
 a_{I_1}^\dagger\cdots a_{I_r}^\dagger a_{J_1}\cdots a_{J_s}.
\]
The theta integral forces sum l_I=sum l_J. Combining this with the energy resonance gives
\[
 \boxed{\sum_i p_{I_i}-\sum_j p_{J_j}
 =\sum_i q_{I_i}-\sum_j q_{J_j}
 =\frac{(s-r)\Delta}{2}}.
\]
Thus (r-s)Delta must be an **even integer**, not merely an integer. Conversely, if this arithmetic holds and both sides are nonempty, nonnegative p,q can be chosen to satisfy the two equations. For example, put the required nonnegative offset into one leg on the smaller-particle side and use grounds elsewhere.

If r=0 or s=0, there is no resonance because every frequency is strictly positive. For r=s, resonance arithmetic places no restriction on Delta. For r!=s and irrational Delta, no resonance is possible.

For rational Delta=a/b, with coprime positive integers a,b,
\[
 r-s\in d_0\mathbb Z,\qquad d_0=\frac{2b}{\gcd(a,2)}.
\]
Hence the resonant projection preserves particle number modulo d_0. This is not a symmetry claim for the full interaction.

### Exact finite formula for individual spatial coefficients

Write all n mode labels as (k_a,L_a), let
\[
 M=\frac12\sum_{a=1}^nL_a,\qquad B=\frac{n\Delta}{2}-1,
 \quad \prod_aP_{k_a}^{(L_a,\Delta-1)}(1-2x)=\sum_hc_hx^h.
\]
When angular momentum is conserved, M is a nonnegative integer. Then
\[
 \boxed{C_{I;J}=\pi\prod_a\mathcal N_a
 \sum_hc_h\,\mathrm B(M+h+1,B)}.
\]
Equivalently, use B(M+h+1,B)=(M+h)!/(B)_(M+h+1). Since n Delta > 2, all integrals converge. This formula supplies an exact coefficient test for any fixed tuple. For rational Delta, the stripped integral is rational. It also exposes extra individual cancellations not captured by channel-level existence.

## 3. Exact vanishing theorem for one-to-many resonances

Let mode 0 be the one-particle side, and modes 1,...,n-1 the other side. Energy resonance and angular conservation imply
\[
 k_0=\sum_{i=1}^{n-1}k_i+A+K,
 \qquad A=\frac{\sum_iL_i-L_0}{2}\in\mathbb Z_{\geq0},
 \qquad K=\frac{(n-2)\Delta}{2}\in\mathbb Z_{>0}.
\]
The nonnegativity of A follows from the angular triangle inequality; its integrality follows from angular parity. With x=sin^2(rho), the radial integrand can be arranged as
\[
 \int_0^1 dx\,x^{L_0}(1-x)^{\Delta-1}
 P_{k_0}^{(L_0,\Delta-1)}(1-2x)\,Q(x),
\]
where
\[
 Q(x)=x^A(1-x)^{K-1}
 \prod_{i=1}^{n-1}P_{k_i}^{(L_i,\Delta-1)}(1-2x).
\]
This is a polynomial and
\[
 \deg Q=A+K-1+\sum_i k_i=k_0-1.
\]
Jacobi orthogonality annihilates every polynomial below degree k_0. Therefore C=0. This proves the full one-to-many theorem for all n >= 3 and Delta > 1, including every rational exceptional case at which kinematic resonance exists.

More generally, when (n-2)Delta/2 is an integer, the same argument gives a degree-forced zero whenever some individual mode has omega_i >= sum_(j!=i) omega_j. In a genuine resonant partition with at least two legs on each side, every individual mode instead satisfies omega_i <= E_side-Delta, so this one-mode obstruction cannot occur.

## 4. Nonzero existence theorem for both sides at least two

Take s>r>=2 and assume
\[
 K=\frac{(s-r)\Delta}{2}\in\mathbb Z_{>0}.
\]
Choose creation modes
\[
 (K,0),\ (0,K),\ \underbrace{(0,0),\ldots,(0,0)}_{r-2},
\]
and s ground annihilation modes. Their angular sums agree and
\[
 E_{\rm creation}=r\Delta+2K=s\Delta=E_{\rm annihilation}.
\]
All Jacobi degrees are zero. The radial integrand is strictly positive:
\[
 C=\pi\,\mathcal N_{K,0}^2\mathcal N_{0,0}^{n-2}
 \int_0^1dx\,x^K(1-x)^{n\Delta/2-2}.
\]
Explicitly,
\[
 \boxed{C=
 \frac{(\Delta)_K\,\Gamma(n\Delta/2-1)}
 {2(2\pi)^{(n-2)/2}\,\Gamma(K+n\Delta/2)}>0}.
\]
The reverse channel is its complex conjugate. For r=s, all ground modes supply a positive balanced coefficient. Thus arithmetic is sufficient for a nonzero entire channel whenever both sides have at least two legs.

For the displayed unbalanced family, the matrix element between normalized states with s initial grounds and final (K,0),(0,K),(r-2) grounds is
\[
 \langle (K,0),(0,K),(r-2)0|H_n|s0\rangle
 =\frac{\lambda_n C}{\sqrt{(r-2)!s!}}.
\]
Normal ordering and the stated factorials are essential here.

### Fixed-degree classification

For even n, an unbalanced channel with both sides >=2 has |r-s|=2j with 1<=j<=n/2-2. The condition is j Delta integer, so for Delta=a/b the smallest possible j is b. This proves n>=2b+4.

For odd n, |r-s| is odd. If a is odd, (r-s)a/(2b) cannot be integral. If a is even, b is odd and the smallest positive allowed |r-s| is b. The requirement |r-s|<=n-4 gives n>=b+4.

Across all contact degrees, the first number-changing degree is therefore b+4 for a even and 2b+4 for a odd. The would-be lower degree obtained with one leg on one side is removed by the one-to-many theorem.

## 5. Odd vertices and small exact counterexamples

### Cubic

Only 1<->2 could resonate. It requires Delta to be an even integer, and every such spatial coefficient vanishes. Therefore
\[
 \boxed{(H_3)_{\rm res}=0\qquad\text{for all }\Delta>1.}
\]
There are no first-order energy shifts from this vertex, including within degenerate subspaces. This statement does not remove second-order effects or nonresonant finite-time transitions.

### Quintic

The 1<->4 channel requires 3Delta/2 integer and vanishes. The 2<->3 channel requires Delta/2 integer and is nonzero for at least one tuple at every even Delta. Thus
\[
 \boxed{(H_5)_{\rm res}\ne0\quad\Longleftrightarrow\quad
 \Delta\in2\mathbb Z_{>0},\ \Delta>1.}
\]
At Delta=2,
\[
 C_{(1,0),(0,1);(0,0)^3}=\frac1{40\sqrt2\,\pi^{3/2}},
\]
and the normalized Fock matrix element is
\[
 \boxed{\langle1_{10},1_{01}|H_5|3_{00}\rangle
 =\frac{\lambda_5}{80\sqrt3\,\pi^{3/2}}.}
\]
Both states have E=6,J=0. The alternative two-particle state |1_(11),1_(00)> has the same coupling in this report's Jacobi phase.

The entire E=6,J=0 free block consists of
\[
 a_{22}^\dagger|0\rangle,\quad
 a_{10}^\dagger a_{01}^\dagger|0\rangle,\quad
 a_{11}^\dagger a_{00}^\dagger|0\rangle,\quad
 (a_{00}^\dagger)^3|0\rangle/\sqrt6.
\]
The only quintic couplings are from the last state to each middle state. Exact diagonalization gives first-order shifts
\[
 \boxed{\left\{\frac{\lambda_5}{40\sqrt6\pi^{3/2}},
 -\frac{\lambda_5}{40\sqrt6\pi^{3/2}},0,0\right\}.}
\]
Thus an odd contact vertex can generate genuine first-order degenerate energy splitting.

### More exact nonzero spatial coefficients

In every row the annihilation modes are all ground modes. These C values exclude lambda and Fock factorials.

| n | Delta | creation modes | annihilation count | C |
|---|---:|---|---:|---|
| 5 | 2 | (1,0),(0,1) | 3 | 1/(40 sqrt(2) pi^(3/2)) |
| 5 | 2 | (1,1),(0,0) | 3 | 1/(40 sqrt(2) pi^(3/2)) |
| 6 | 3 | (3,0),(0,3) | 4 | 1/(1056 pi^2) |
| 7 | 4/3 | (2,0),(0,2) | 5 | 3/(748 sqrt(2) pi^(5/2)) |
| 8 | 3/2 | (3,0),(0,3) | 6 | 1/(2048 pi^3) |

These include rational noninteger Delta and demonstrate that the exception is not confined to integer dimensions.

### Arithmetic-allowed individual zero

At n=5, Delta=2, the tuple
\[
 \{(0,1),(1,1)\}\longleftrightarrow
 \{(0,0),(0,0),(0,1)\}
\]
is energy- and angular-resonant, but its coefficient vanishes:
\[
 \int_0^1dx\,x(1-x)^3(1-3x)=0.
\]
This is why the nonzero theorem is formulated as existence in a channel, not universal nonvanishing of its entries. In an exact scan of all 2<->3 tuples with each p,q<=3, there were 1069 resonant tuples, 66 zero coefficients, and 1003 nonzero coefficients.

## 6. Targeted phi^6 primary-channel recomputation

This section was added after the parent supplied a target off-diagonal magnitude. It does not assume the parent's full-block matrix or characteristic polynomial.

At Delta=2, E=8,J=0, choose the normalized two-particle basis
\[
 |00,22\rangle,\ |01,21\rangle,\ |02,20\rangle,\
 |10,12\rangle,\ |11,11\rangle_{\rm norm},
\]
where the last state is (a_11^dagger)^2|0>/sqrt(2). Direct integration against four ground annihilation modes gives raw coefficients
\[
 (C_1,\ldots,C_5)=\frac1{280\pi^2}(1,\sqrt3,1,\sqrt3,3).
\]
Fock normalization divides the first four by sqrt(24) and the last by sqrt(48). The resulting coupling vector has norm
\[
 g_6=\frac1{224\sqrt3\pi^2}
\]
and unit direction
\[
 |P_2\rangle=\frac15(\sqrt2,\sqrt6,\sqrt2,\sqrt6,3).
\]
Both SL(2) lowering generators annihilate this vector exactly in the declared Jacobi convention. Thus it is the scalar two-particle primary at E=8. The normalized four-ground primary is |P_4>=(a_00^dagger)^4|0>/sqrt(24).

Normal ordering implies the two-particle diagonal entry vanishes: the balanced degree-six monomial needs three annihilators. The four-ground diagonal is
\[
 \frac{\lambda_6}{(3!)^2}\frac1{40\pi^2}\,4\cdot3\cdot2
 =\frac{\lambda_6}{60\pi^2}.
\]
There is no other four-particle state at this energy. Particle-number parity excludes coupling to three-particle states. The resulting closed primary block is
\[
 \boxed{H_6\big|_{\{P_2,P_4\}}
 =\frac{\lambda_6}{8\pi^2}
 \begin{pmatrix}0&1/(28\sqrt3)\\1/(28\sqrt3)&2/15\end{pmatrix}.}
\]
Its characteristic polynomial in these stripped units is
\[
 z^2-\frac2{15}z-\frac1{2352}.
\]
The determinant is negative, so for positive lambda_6 there is a negative first-order eigenvalue. This is not a positivity contradiction: normal ordering does not preserve positivity of the pointwise classical polynomial.

## 7. Exact phase mapping and lowering conventions

The alternative convention reported by the parent uses z=cos^2(rho) and
\[
 P_k^{(\Delta-1,L)}(1-2z)
 =(-1)^kP_k^{(L,\Delta-1)}(1-2x),\qquad x=1-z.
\]
Therefore
\[
 u_{pq}^{\rm repo}=(-1)^{\min(p,q)}u_{pq}^{\rm here},
 \qquad a_{pq}^{\rm repo}=(-1)^{\min(p,q)}a_{pq}^{\rm here}.
\]
Each contact coefficient acquires the product of the external-leg signs; all zeros, magnitudes, spectra, and number-changing existence statements are invariant.

One convenient differential lowering operator is
\[
 L_-^{(p)}=\frac{e^{i(t-\theta)}}2
 \left(i\sin\rho\,\partial_t-i\csc\rho\,\partial_\theta
 +\cos\rho\,\partial_\rho\right),
\]
with the opposite angular signs for L_-^(q). In this report's mode phase,
\[
 L_-^{(p)}u_{pq}=(-1)^{\min(p,q)-\min(p-1,q)}
 \sqrt{p(\Delta+p-1)}\,u_{p-1,q},
\]
and analogously for q. The rephased repository basis has positive single-particle lowering coefficients.

Thus the phi^6 scalar-primary vector in the repository convention is
\[
 \frac15(\sqrt2,-\sqrt6,\sqrt2,-\sqrt6,3),
\]
not the all-positive vector written in the preceding section. The off-diagonal magnitude remains lambda_6/(224 sqrt(3) pi^2). The quintic radial coefficient also changes sign when exactly one external mode has k=1, but its block eigenvalues do not.

## 8. Verification artifacts and limits

The following new files are self-contained and reproducible:

- [Wolfram direct-integration script](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/resonances/independent_resonance_checks.wls>): exact KG norms, resonant zeros, nonzero examples, quintic spectrum, sextic primary block, and differential lowering phases.
- [Wolfram machine output](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/resonances/wolfram_results.txt>): all checks True, no Wolfram messages, process exit 0.
- [Sage exact-polynomial script](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/resonances/independent_resonance_checks.sage.py>): independently implements Jacobi coefficients and beta integrals over QQ; uses QQbar for exact primary lowering.
- [Sage machine output](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/resonances/sage_results.txt>): 273 one-to-many zero tests, 1069 quintic resonances, four positive families, both primary-lowering residuals, finite arithmetic classification checks; all passed, process exit 0.

The general theorems above are analytical; the finite scans are checks, not substitutes for those proofs. A complete closed-form classification of every accidental individual zero was not attempted, though the finite beta formula tests any chosen tuple exactly. No higher-order effective Hamiltonian, UV renormalization, derivative vertex, backreaction, alternative boundary condition, or other spacetime dimension is claimed here. The full nine-dimensional sextic block was deliberately not duplicated; only its closed scalar-primary 2x2 block was computed in this independent work.
