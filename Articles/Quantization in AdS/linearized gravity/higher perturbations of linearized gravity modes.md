# Nonlinear vacuum modes and the CPS moment map

Review base: `4fb3d286505cec4503e6901d133f5402d434b345` (2026-09-16, 01:32 Beijing time).
The pre-review version is retained, byte for byte, in `archived/higher perturbations before 2026-09-16.md` in this review branch. This replacement distinguishes an exact formula, a formal chart, an analytic local inverse, and a representation-theoretic quantization.

## Scope and the precise question

Work with pure Einstein gravity on the smooth global-AdS3 solid cylinder, unit AdS radius, Brown--Henneaux boundary conditions, a fixed boundary clock, and the global-AdS vacuum subtraction. Quotient only proper diffeomorphisms. Do not include BTZ, conical defects, changed holonomy, other topologies, matter, or logarithmic sectors in the vacuum phase space discussed here.

The constructive question is:

> Can the normalized linearized boundary-graviton modes be promoted to a formally complete canonical chart on the smooth global-AdS3 vacuum phase space, with an explicit all-order Brown--Henneaux moment map, and can that specific CPS construction be quantized to an intertwining quantum moment map on the Virasoro vacuum module?

The existence of finite diffeomorphism solutions alone does not answer this question. Nor does postulating a Virasoro module prove that a particular Wick prescription for the original nonlinear CPS charges gives that module.

## Conventions and formal completeness

Use one chirality below; the other is an independent copy. Set

$$
\kappa^2=16\pi G,\qquad c_{\rm cl}=\frac{24\pi}{\kappa^2},\qquad
[\xi_m,\xi_n]=-i(m-n)\xi_{m+n},\qquad D_m=2\pi m(m^2-1).
$$

The Witt relation is a relation modulo proper vectors. With descendant label $N=n+2\ge2$, retain the normalized modes of [[Articles/Quantization in AdS/linearized gravity/solving modes|solving modes]]:

$$
\zeta=\sum_{N\ge2}(q_Na_N\xi_{-N}+q_N^*a_N^*\xi_N)
=\sum_{|k|\ge2}z_k\xi_k,\qquad
q_N=-\frac{(-i)^{N-1}}{\sqrt{D_N}}.
$$

Classically $a_N^*$ is complex conjugation, not yet an operator adjoint. Thus $z_{-N}=q_Na_N$, $z_N=q_N^*a_N^*$. Let $P_>$ remove the final $-1,0,1$ components. Never insert this projection inside a nested Witt bracket unless it is explicitly displayed.

The selected representative and its complete fixed-coordinate expansion are

$$
g[a]=e^{\kappa\mathcal L_{\zeta[a]}}g^{(0)},\qquad
g=g^{(0)}+\kappa\sum_{r\ge0}\kappa^rh^{[r]},\qquad
h^{[r]}=\frac{\mathcal L_\zeta^{r+1}g^{(0)}}{(r+1)!}.
$$

Diffeomorphism covariance proves the exact field equation for every genuine allowed flow. Formal completeness additionally uses completeness of the smooth linearized BH vacuum modes modulo proper gauge: at each order subtract the already constructed particular solution; the remainder is a homogeneous linearized solution and can be absorbed into the next coefficient of $a(\kappa)$ and a proper transformation. This induction proves formal surjectivity within the stated vacuum sector. It does not prove convergence, a global chart on Diff$(S^1)$, or autonomous-flow embeddability of every nearby smooth diffeomorphism.

For reference, the next two metric coefficients are

$$h^{[3]}=\frac1{24}\mathcal L_\zeta^4g^{(0)},\qquad
h^{[4]}=\frac1{120}\mathcal L_\zeta^5g^{(0)}.$$

## Exact CPS form, charges, and the stabilizer correction

The renormalized bulk/boundary/corner CPS form gives the vacuum cocycle

$$B(\xi_m,\xi_n)=iD_m\delta_{m+n,0}.$$

Define $A=\operatorname{ad}_\zeta$ and the entire function

$$F(w)=\frac{1-e^{-w}}w,\qquad F(0)=1.$$

On the formal high-mode section the closed expressions are

$$
\Theta=F(\kappa A)\delta\zeta,\qquad
\Omega_\zeta(u,v)=B(\Theta(u),\Theta(v)),\qquad
H_p(\zeta)=\frac1\kappa B\bigl(\zeta,F(\kappa A)\xi_p\bigr).
$$

$B$ annihilates its final stabilizer arguments, so final $P_>$ projections are optional in the first formula. At the origin $\Omega_0=i\sum_{N\ge2}\delta a_N^*\wedge\delta a_N$. The charge formula applies to **every** integer $p$, including $0,\pm1$, and gives

$$
H_p=\sum_{n\ge1}\frac{(-1)^{n-1}\kappa^{n-2}}{n!}
B(\zeta,A^{n-1}\xi_p).
$$

Its first three terms reproduce the previous signed-mode charge sums. The next two are

$$H_{p,2}=-\frac1{24}B(\zeta,A^3\xi_p),\qquad
H_{p,3}=\frac1{120}B(\zeta,A^4\xi_p),$$

where $H_p=\kappa^{-1}H_{p,-1}+H_{p,0}+\kappa H_{p,1}+\kappa^2H_{p,2}+\kappa^3H_{p,3}+\cdots$.

### Correction to the previous $X_p$ expansion

The previously printed expansion with the term $-\tfrac12P_>[\zeta,\xi_p]$ is valid only when $|p|\ge2$. Using it at $p=0$ incorrectly gives half the exact rotation vector field. The compensator must be solved before expanding. In the present section it is eliminated by

$$
\boxed{X_p\zeta=\frac1\kappa
\bigl(P_>F(\kappa A)|_>\bigr)^{-1}P_>e^{-\kappa A}\xi_p.}
$$

Indeed, the unprojected tangent equation is
$\kappa F(\kappa A)X_p\zeta=e^{-\kappa A}\xi_p+\sigma_p$ with $\sigma_p$ in the vacuum stabilizer. This gives, without an expansion,

$$X_0z_k=ikz_k.$$

For a low $u\in\{-1,0,1\}$ its leading high-mode action is
$X_u\zeta=-P_>[\zeta,\xi_u]+O(\kappa)$, not half this value. In particular $H_u$ has no $\kappa^{-1}$ term, but is not zero away from the vacuum.

An explicit two-extra-order formula is obtained by setting

$$M_j=\frac{(-1)^j}{(j+1)!}P_>A^j|_>,\qquad
v_j=\frac{(-1)^j}{j!}P_>A^j\xi_p,\qquad
X_p\zeta=\sum_{r\ge0}\kappa^{r-1}x_r.$$

Then

$$
\begin{aligned}
x_0&=v_0,\\
x_1&=v_1-M_1v_0,\\
x_2&=v_2-M_1v_1+(M_1^2-M_2)v_0,\\
x_3&=v_3-M_1v_2+(M_1^2-M_2)v_1+(-M_1^3+M_1M_2+M_2M_1-M_3)v_0,\\
x_4&=v_4-M_1v_3+(M_1^2-M_2)v_2+(-M_1^3+M_1M_2+M_2M_1-M_3)v_1\\
&\quad+(M_1^4-M_1^2M_2-M_1M_2M_1-M_2M_1^2+M_2^2+M_1M_3+M_3M_1-M_4)v_0.
\end{aligned}
$$

### Two further CPS coefficients

Every coefficient is fixed by

$$\Omega_r(u,v)=(-1)^r\sum_{j=0}^r
\frac{B(A^ju,A^{r-j}v)}{(j+1)!(r-j+1)!}.$$

In particular

$$
\begin{aligned}
\Omega_3(u,v)&=-\frac{B(A^3u,v)+B(u,A^3v)}{24}
-\frac{B(A^2u,Av)+B(Au,A^2v)}{12},\\
\Omega_4(u,v)&=\frac{B(A^4u,v)+B(u,A^4v)}{120}
+\frac{B(A^3u,Av)+B(Au,A^3v)}{48}
+\frac{B(A^2u,A^2v)}{36}.
\end{aligned}
$$

These formulas obey $\iota_{X_p}\Omega=-\delta H_p$. Independent exact rational tests verify the coefficients through $\kappa^3$ for 180 combinations of charges, variations and orders, including all three low modes, without discarding intermediate Witt modes.

## Darboux completion and its boundary

Let $\mathcal E$ be the Euler vector field in $z$. The all-order radial Moser primitive and equation are

$$\alpha=\sum_{r\ge1}\frac{\kappa^r}{r+2}\iota_{\mathcal E}\Omega_r,
\quad \Omega_t=\Omega_0+t(\Omega-\Omega_0),
\quad\iota_{Y_t}\Omega_t=-\alpha.$$

If $\Phi_t$ is the formal flow of $Y_t$, then $\Phi_1^*\Omega=\Omega_0$. This is a closed flow prescription, not an elementary coordinate formula. Its rotation-equivariant choice gives exactly

$$H_0^D=\sum_{N\ge2}N b_N^*b_N.$$

At finite dimension this is the local equivariant Darboux result. Here the infinite-mode statement is formal, coefficientwise on finite-support configurations. A common analytic topology and convergence of the full Moser map are not established. Retain the distinction between a Lie-flow coefficient and a direct-coordinate coefficient: $Y_2^{\rm coord}=Z_2+\frac12(Y_1\cdot\partial)Y_1$.

## A finite reparametrization formula for every classical charge

Choose $\xi_n=e^{inx}\partial_x$ at the boundary and write $f(x+2\pi)=f(x)+2\pi$, $f'>0$. In a compatible finite-flow representative,

$$
T[f](x)=\frac{c_{\rm cl}}{24}(1-f'^2)
-\frac{c_{\rm cl}}{12}\{f,x\},\qquad
H_p[f]=\frac1{2\pi}\int_0^{2\pi}e^{ipx}T[f](x)\,dx.
$$

Here $T=\sum_nH_ne^{-inx}$ and $\{f,x\}=f'''/f'-\tfrac32(f''/f')^2$. The sign and vacuum shift agree with the cocycle formulas above. Let $w=f''/f'$ and $\langle\cdot\rangle=(2\pi)^{-1}\int dx$. Integration by parts yields

$$H_0=\frac{c_{\rm cl}}{24}\langle1-f'^2+w^2\rangle,$$

$$H_{\pm1}=\frac{c_{\rm cl}}{24}
\left\langle e^{\pm ix}(-f'^2+w^2\pm2iw)\right\rangle.$$

These are explicit functionals of $f$, not yet expressions using only the high charges. The stress transformation and vacuum orbit are standard coadjoint-orbit structures; see Cotler--Jensen, arXiv:1808.03263, sections 2--3. The purpose here is their normalization and constructive matching to the original bulk modes.

## Closed implicit low charges as functions of the high charges

Set $\lambda=6/c_{\rm cl}=\kappa^2/(4\pi)$. The vacuum Hill equation is

$$\psi''+\left(\frac14-\lambda T\right)\psi=0.$$

For the vacuum orbit it has two independent antiperiodic solutions and monodromy $-\mathbf1$, with winding one. Explicit solutions are proportional to $\cos(f/2)/\sqrt{f'}$ and $\sin(f/2)/\sqrt{f'}$. The winding condition matters away from the local vacuum neighborhood.

Use the antiperiodic Fourier basis $e^{-ikx}$, $k\in\mathbb Z+\tfrac12$. Define $D=-\partial_x^2-1/4$, let $P$ project to $k=+1/2,-1/2$ in this order, and put $Q=1-P$. Multiplication by $T$ has entries $T_{kl}=H_{k-l}$. Its vacuum condition is the exact Schur equation

$$
\boxed{\begin{pmatrix}H_0&H_1\\H_{-1}&H_0\end{pmatrix}
=\lambda PTQ\,[Q(D+\lambda T)Q]^{-1}\,QTP.}
$$

The low modes on the right are to be solved self-consistently, not set to zero. The two diagonal equations coincide: multiplication and the scalar differential operator are symmetric under the bilinear Fourier transpose, which interchanges the two $P$ modes. With reality, the off-diagonal equations are conjugates. Thus there are exactly three real equations.

For a real $H^s$ stress with $s>1/2$, sufficiently small in norm, $QD Q$ has a bounded inverse (its smallest eigenvalue is 2) and the multiplication perturbation is bounded. At the vacuum the derivative of these three equations with respect to the three low charges is the identity. The analytic implicit-function theorem therefore gives a unique local analytic $H_{0,\pm1}(H_>)$. The Schur condition gives two antiperiodic solutions; near the vacuum these reconstruct the winding-one projective coordinate, hence the vacuum orbit. This is an implicit resolvent closed form, not a finite polynomial in $H_>$.

### Two additional classical orders with all ordered kernels retained

Let $V=\sum_{|n|\ge2}H_ne^{-inx}$ be multiplication by the high stress, let $R=(QDQ)^{-1}$ on $Q$, and define ordered $2\times2$ kernels

$$K_j(A_1,\ldots,A_j)=PA_1Q R Q A_2Q R\cdots R Q A_jP,\qquad j\ge2.$$

For a matrix with equal diagonals, $\ell(S)$ denotes multiplication by
$S_{++}+S_{+-}e^{-ix}+S_{-+}e^{ix}$. Put

$$T=V+\lambda U_1+\lambda^2U_2+\lambda^3U_3+O(\lambda^4),$$

where the $U_r$ contain only low Fourier modes. Then

$$
\begin{aligned}
U_1&=\ell K_2(V,V),\\
U_2&=\ell\{K_2(U_1,V)+K_2(V,U_1)-K_3(V,V,V)\},\\
U_3&=\ell\{K_2(U_2,V)+K_2(V,U_2)+K_2(U_1,U_1)\\
&\quad-K_3(U_1,V,V)-K_3(V,U_1,V)-K_3(V,V,U_1)+K_4(V,V,V,V)\}.
\end{aligned}
$$

These are respectively quadratic, cubic and quartic in the independent high charges. They are explicit all-mode finite-depth sums, with diagonal denominators $k^2-1/4$ and all intermediate $k\ne\pm1/2$. The first line reproduces

$$
\begin{aligned}
H_0&=\frac{12}{c_{\rm cl}}\sum_{n\ge2}\frac{H_nH_{-n}}{n^2-1}+O(c_{\rm cl}^{-2}H^3),\\
H_1&=\frac{12}{c_{\rm cl}}\sum_{n\ge3}\frac{H_nH_{1-n}}{n(n-1)}+O(c_{\rm cl}^{-2}H^3),\\
H_{-1}&=\frac{12}{c_{\rm cl}}\sum_{n\ge2}\frac{H_nH_{-1-n}}{n(n+1)}+O(c_{\rm cl}^{-2}H^3).
\end{aligned}
$$

For the slice with only $H_2=a,H_{-2}=b$ independent,

$$H_1=H_{-1}=0,\qquad H_0=\frac{4ab}{c_{\rm cl}}
-\frac{176a^2b^2}{5c_{\rm cl}^3}+O(c_{\rm cl}^{-5}).$$

A separate Fourier calculation verifies the Schur equation through fourth order for $f=x+\epsilon[\sin(2x)/5+\cos(3x)/7]$.

### Charge coordinates and inverse reconstruction

On the above local branch the high-charge Poisson matrix and symplectic form are

$$\mathsf P_{pq}=-i(p-q)H_{p+q}-\frac{i}{\kappa^2}D_p\delta_{p+q,0},
\qquad \Omega=\frac12(\mathsf P^{-1})_{pq}\delta H_p\wedge\delta H_q,
\qquad |p|,|q|\ge2.$$

The former Neumann series is the expansion of this inverse, after the low charges have been replaced by their vacuum branch. To reconstruct the original coordinates, solve the Hill equation, reconstruct $f$ from its solution ratio, fix the projective redundancy, and take the formal logarithm in the selected high-mode section. This specifies the inverse functional, but does not supply a globally convergent autonomous logarithm.

Two transcription fixes in the previous inverse-coordinate display are important: a denominator $D_s$ requires $|r|,|s|\ge2$, not $|r|+|s|\ge2$; the next remainder in $H_1$ is cubic, not quartic, in high charges. Also the generator in the $N$ sum is $\xi_{-N}$, not $\xi_{-n}$.

## Quantum low charges: exact formulas at fixed physical central charge

Fix $c>1$ and the positive-energy unitary vacuum representation, with $\widehat H_n^\dagger=\widehat H_{-n}$,

$$[\widehat H_m,\widehat H_n]=(m-n)\widehat H_{m+n}
+\frac c{12}m(m^2-1)\delta_{m+n,0},\qquad
\widehat H_n|0\rangle=0\quad(n\ge-1).$$

Here $c$ is the physical quantum central charge, not an unqualified identification with the coefficient of a bare classical action. The finite commutator identities

$$\widehat H_0=\frac14[\widehat H_2,\widehat H_{-2}]-\frac c8,
\quad\widehat H_1=\frac15[\widehat H_3,\widehat H_{-2}],
\quad\widehat H_{-1}=\frac15[\widehat H_2,\widehat H_{-3}]$$

are exact, but alone do not fix a normal symbol or prove a CPS quantization theorem.

### A nonrecursive projector closed form

Let $\mathcal P_{\ge2}(N)$ be the descending partitions of $N$ with parts at least 2. Use

$$|I\rangle=\widehat H_{-i_1}\cdots\widehat H_{-i_r}|0\rangle,
\quad\widehat H_J^{(+)}=\widehat H_{j_s}\cdots\widehat H_{j_1},
\quad G_N(I,J)=\langle I|J\rangle,\quad\Pi_0=|0\rangle\langle0|.$$

Write $A_u^{(N)}$ for the coefficient matrix of $\widehat H_u:\mathcal V_N\to\mathcal V_{N-u}$ in this PBW basis, not its matrix of inner products. It is explicitly obtained by commuting $\widehat H_u$ through the negative word. In particular $A_0^{(N)}=N\mathbf1$, while

$$[\widehat H_1,\widehat H_{-n}]=(n+1)\widehat H_{1-n},\qquad
[\widehat H_{-1},\widehat H_{-n}]=(n-1)\widehat H_{-(n+1)}.$$

Thus the $A_u^{(N)}$ require only finite word manipulation. On the algebraic vacuum module,

$$
\boxed{\widehat H_u=\sum_{N\ge2}\sum_{I\in\mathcal P_{\ge2}(N-u),\,J\in\mathcal P_{\ge2}(N)}
(A_u^{(N)}G_N^{-1})_{IJ}\,
\widehat H_{-I}\Pi_0\widehat H_J^{(+)},\qquad u=-1,0,1.}
$$

This is a representation-dependent, exact Gram/projector closed expression. It does not claim to be a finite element of the uncompleted enveloping algebra with $\Pi_0$ eliminated. The inverse-Gram/completeness method is standard; compare Fortin--Quintavalle--Skiba, arXiv:2409.12224. Here the level-one vacuum null module has already been quotiented out, so the restricted $G_N$ is the relevant matrix.

### Eliminating the vacuum projector: a finite chain formula

Define the normal block

$$E_N^u(C)=\sum_{I\in\mathcal P_{\ge2}(N-u),J\in\mathcal P_{\ge2}(N)}
C_{IJ}\widehat H_{-I}\widehat H_J^{(+)}.$$

For $M<N$, let $\mathcal T_{NM}(C)$ be the PBW action matrix of $E_M^u(C)$ on level $N$, multiplied on the right by $G_N^{-1}$; set $S_N=A_u^{(N)}G_N^{-1}$. Empty level spaces contribute zero. The exact coefficient is the nonrecursive finite chain sum

$$\boxed{C_N=\sum_{r=0}^{N-2}(-1)^r
\sum_{N>N_1>\cdots>N_r\ge2}
\mathcal T_{NN_1}\cdots\mathcal T_{N_{r-1}N_r}S_{N_r},}$$

with the $r=0$ term equal to $S_N$. Equivalently $C_N=S_N-\sum_{M<N}\mathcal T_{NM}C_M$, the previous triangular recursion. This fixes every coefficient at every level without an ordering ambiguity after the PBW prescription is chosen.

**Domain correction.** The sum $\sum_NE_N^u(C_N)$ is locally finite on
$\mathcal D_{\rm alg}=\bigoplus_{N\ge0}^{\rm alg}\mathcal V_N$: its $N$th block kills every state below level $N$. Hence it defines the exact low operator on this common invariant dense domain. No infinite-series convergence argument is needed there. Uniform/operator-norm convergence and common domains after closure are separate questions; the old wording that no common dense domain was established was unnecessarily weak. This does not turn a formal expansion in $1/c$ into a convergent operator expansion.

### Two additional orders in $1/c$

The independent Python reconstruction gives exact rational coefficients and their expansion through $c^{-4}$ (two orders beyond the previous $c^{-2}$). It gives 299 nonzero $H_0$ normal coefficients through positive level 10, 196 $H_1$ coefficients through positive level 10, and the 196 adjoint coefficients of $H_{-1}$ with output level at most 10. The last table has input level at most 9; an edge-truncated table is not an exact representation on the truncated space.

Representative newly evaluated coefficients are:

| Normal monomial | Operator | coefficient of $c^{-3}$ | coefficient of $c^{-4}$ |
|---|---|---:|---:|
| $H_{-4}H_4$ | $H_0$ | $-1584/125$ | $34848/625$ |
| $H_{-4}H_2^2$ and its adjoint | $H_0$ | $528/25$ | $-11616/125$ |
| $H_{-2}^2H_2^2$ | $H_0$ | $-176/5$ | $3872/25$ |
| $H_{-4}H_5$ | $H_1$ | $-528/125$ | $11616/625$ |
| $H_{-4}H_2H_3$ | $H_1$ | $264/25$ | $-5808/125$ |
| $H_{-2}^2H_5$ | $H_1$ | $176/25$ | $-3872/125$ |
| $H_{-2}^2H_2H_3$ | $H_1$ | $-88/5$ | $1936/25$ |

For example the first three exact coefficients are
$4(c+8)/[c(5c+22)]$, $-24/[c(5c+22)]$, and $-176/[c^2(5c+22)]$. The quartic leading coefficient $-176/5$ agrees with the classical single-high-pair calculation. There is no claim here of a single simplified all-index scalar kernel for the whole $c^{-3}$ or $c^{-4}$ symbol; the chain formula supplies the all-level exact construction and the tables supply the executed finite-level extension.

### Exact quadratic global generators in an adapted Fock basis

There is also an exact but coordinate-dependent alternative. On a bosonic Fock space with $[d_n,d_m^\dagger]=\delta_{nm}$, $n\ge2$, put

$$J_0=\sum_{n\ge2}n d_n^\dagger d_n,\qquad
J_{-1}=\sum_{n\ge2}\sqrt{(n-1)(n+2)}\,d_{n+1}^\dagger d_n,
\qquad J_1=J_{-1}^\dagger.$$

These obey $[J_1,J_{-1}]=2J_0$ and the other global commutators exactly on finite-energy algebraic vectors. At $c>1$ the vacuum Virasoro module and this Fock space have identical level dimensions; positive-energy unitary $sl(2)$ decomposition then gives identical lowest-weight multiplicities, and an intertwining unitary exists. Its choices are the orthonormal bases of quasiprimaries. Thus all three low quantum generators can be quadratic in an adapted basis.

This does **not** identify $d_n$ with the previously chosen radial-Moser $b_n$. Constructing a prescribed, semiclassically compatible intertwiner is additional work. One must not use this representation equivalence as an unproved simultaneous $SL(2,\mathbb R)$-equivariant Darboux theorem for the infinite-dimensional CPS chart.

## What this review does and does not establish

The reference CPS/Wick prescription and a chosen finite renormalization remain distinct from the algebraic construction at fixed $c$. Zero vacuum identity terms in the first few commutators do not prove the full quantum moment-map relations at every order. Similarly, a finite linear counterterm that passes low-order tests is not by itself an all-order renormalized operator construction. Keep the discussion of $c_{\rm phys}=3\ell/[2G_R(\mathsf S)]+\Delta c(\mathsf S)$ separate from the fixed-$c$ module and from claims about a unique bare $+13$ or zero shift.

The remaining central target is the constructive compatibility diagram: bulk nonlinear vacuum solution and renormalized CPS form -> a specified canonical chart -> renormalized composite charges -> the fixed-$c$ vacuum representation, with the actual intertwining maps and Ward identities. The generic existence of the vacuum orbit and its quantization is not a novelty claim.

The accompanying sourced de Donder note retains a conditional global statement. Independent component checks reproduce $Q=\Box-2$, the radial indicial polynomial $s^2-2s-4$, the tangential polynomial $s^2-4$ with mixing $2\partial_a a_r$, and the exact axial equation. At $\Delta_*=(1+\sqrt5)/2$ its trace obstruction has the explicit coefficient

$$q^{\rm dD}_{\log}=\frac{3-\sqrt5}{2\sqrt5}\,\beta^2
r^{-(1+\sqrt5)}\log r+\cdots.$$

This is a log-free-class obstruction, not a failure of unconstrained de Donder gauge. Smooth reflecting Proca/scalar evolution with the claimed asymptotic regularity remains an analytic input; the symbolic checks do not prove it.

## Reproduction

The repository scripts are in `scripts/vacuum_orbit_review/`. The downloadable review package contains `verify_classical.py`, `verify_hill.py`, `verify_gauge.py`, `verify_quantum.py`, and `audit_quantum.py`, together with exact JSON coefficient tables and machine-readable results. Only Python and SymPy are required. `verify_quantum.py --level 10 --u 0` and `--u 1` generate the exact tables; `audit_quantum.py` checks the previous all-index $c^{-1},c^{-2}$ kernels against them and generates the adjoint table. The independent comparisons give 1020 matching old coefficients and 154 exact PBW commutator tests, in addition to the classical and Hill tests. No independent xAct or Mathematica run is claimed.

**Audit boundary:** the all-order CPS checks start from the vacuum cocycle $B$ specified in the original note. They are not a new component-by-component evaluation of the full bulk/boundary/corner symplectic integral, nor a new proof of linearized mode completeness. The formal-completeness induction uses that linearized completeness as an input. The $1/c$ tables expand coefficients at fixed algebra generators; they are not uniform large-$c$ operator estimates.
