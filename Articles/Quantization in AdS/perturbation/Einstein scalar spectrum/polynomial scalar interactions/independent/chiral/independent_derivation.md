# Independent Chiral Contact Derivation on Global AdS3

## Results and Scope

For the number-preserving part of a normal-ordered `phi^(2k)` interaction, the chiral `q=0` compression is exactly

$$\begin{align}
V^{\rm ch}_{N,k}=c_k\sum_{\substack{S\subset\{1,\ldots,N\}\\
|S|=k}}P_S, \qquad c_k=\frac{\lambda_{2k}}{2^k\pi^{k-1}k!(k\Delta-1)}.
\end{align}$$

Here `P_S` is the orthogonal projector onto the lowest holomorphic `SL(2,R)` representation of the `k` selected particles. Equivalently it reconstructs their polynomial from its value when their coordinates coincide. Thus, for nonzero coupling, the exact kernel is the symmetric-polynomial ideal

$$\begin{align}
\mathcal I_{N,k}= \{F\in\mathbb C[z_1,\ldots,z_N]^{S_N}:F(z,\ldots,z,z_{k+1},\ldots,z_N)=0\}.
\end{align}$$

The first kernel degree for `N=(k-1)a+b`, `0<=b<k-1`, is

$$\begin{align}
L_{\min}=(k-1)a(a-1)+2ab,
\end{align}$$

and that first zero mode is unique. In particular, for `phi^6`,

$$\begin{align}
L_{\min}(2m)=2m(m-1),\qquad L_{\min}(2m+1)=2m^2.
\end{align}$$

The all-degree kernel character is known exactly by applying the published Feigin–Jimbo–Miwa–Mukhin coincidence-ideal theorem. The entire nonzero spectrum is also obtained here for `N=k` and `N=k+1`. For `N=k+1`, one primary family occurs at each degree `d=0,2,3,...`, with

$$\begin{align}
\boxed{\frac{E_d^{(1)}}{c_k} =1+k(-1)^d\frac{(\Delta)_d}{(k\Delta)_d}.}
\end{align}$$

Every holomorphic descendant has the same first-order eigenvalue. In particular this solves the complete nonzero chiral `N=4` spectrum for `phi^6`.

These nonzero eigenvalues are eigenvalues of the number-preserving compression. At special `Delta`, number-changing resonances can invalidate their interpretation as eigenvalues of the full first-order mixing matrix. The zero modes have a stronger resonant protection statement reviewed in §9. No claim of higher-order protection is made.

No parent candidate new results were read during the independent derivation. Only the explicitly labelled extension in §9 was proposed by the parent and then reviewed. After the independent derivation and tests were complete, the parent's [§§8.3–8.5](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Polynomial scalar spectrum.md#L455-L550>) were read at the parent's explicit request for collaborative consistency review; that review is not counted as fresh independent verification. No existing notes were edited.

## 1. Conventions and Normalized Free Modes

Use the action, radius, boundary conditions and metric in the task:

$$\begin{align}
S_0=-\frac12\int\sqrt{-g}\big[(\nabla\phi)^2+\Delta(\Delta-2)\phi^2\big], \quad\Delta>1,\quad ds^2=\sec^2\rho(-dt^2+d\rho^2+\sin^2\rho\,d\theta^2),
\end{align}$$

with `0<=rho<pi/2`, `theta` of period `2pi`, standard reflecting quantization and positive-frequency modes. The convention agrees with [the authoritative formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L54-L83>): `phi=sum(a_I u_I+a_I^dagger u_I^*)`, `[a_I,a_J^dagger]=delta_IJ`.

The Klein–Gordon product is

$$\begin{align}
(u,v)_{\rm KG}=i\int_0^{2\pi}d\theta\int_0^{\pi/2}d\rho\, \tan\rho\,[u^*\partial_t v-(\partial_tu^*)v].
\end{align}$$

Let `n=min(p,q)`, `ell=p-q`, `a=|ell|`, so `omega=Delta+a+2n=Delta+p+q`. A real-phase choice is

$$\begin{align}
u_{pq}=C_{n,a}\,e^{-i\omega t+i\ell\theta} (\cos\rho)^\Delta(\sin\rho)^a P_n^{(a,\Delta-1)}(\cos2\rho),
\end{align}$$

$$\begin{align}
C_{n,a}^2= \frac{n!\,\Gamma(n+a+\Delta)} {2\pi\,\Gamma(n+a+1)\Gamma(n+\Delta)}.
\end{align}$$

Indeed the radial norm before multiplying by `2omega*2pi` is

$$\begin{align}
\int_0^{\pi/2}\tan\rho\,(\cos\rho)^{2\Delta}(\sin\rho)^{2a}
 [P_n^{(a,\Delta-1)}(\cos2\rho)]^2d\rho =\frac{\Gamma(n+a+1)\Gamma(n+\Delta)} {2\omega\,n!\,\Gamma(n+a+\Delta)}.
\end{align}$$

For chiral modes set `z=sin(rho)e^(i theta)` and `beta_p=sqrt((Delta)_p/p!)`. Then

$$\begin{align}
u_{p0}(t,z)=\frac{\beta_p}{\sqrt{2\pi}} e^{-i(\Delta+p)t}(1-|z|^2)^{\Delta/2}z^p.
\end{align}$$

In particular the ground mode has normalization `1/sqrt(2pi)`, independent of `Delta`.

## 2. General K-Body Factorization Before the Chiral Restriction

Write the positive-frequency annihilation field at a fixed time as

$$\begin{align}
A(x)=\sum_Iu_I(x)a_I,\qquad\phi=A+A^\dagger.
\end{align}$$

The binomial coefficient in the normal-ordered vertex gives

$$\begin{align}
V_{\rm np}= \frac{\lambda_{2k}}{(k!)^2}\int d\mu(x)\,[A^\dagger(x)]^k[A(x)]^k, \qquad d\mu=\frac{\sin\rho}{\cos^3\rho}\,d\rho d\theta.
\end{align}$$

Consequently `V_np/lambda_(2k)` is positive. This statement concerns a single fixed normal-ordered number-preserving vertex; it does not assert positivity of the full number-changing normal-ordered interaction.

Let `C_S` evaluate the `k` selected one-particle wavefunctions at one common point, leaving the other tensor factors untouched. Its target scalar product uses `dmu` at that common point and the free one-particle Hilbert product on the spectators. With normalized symmetric first-quantized wavefunctions,

$$\begin{align}
V_{N,k}=\frac{\lambda_{2k}}{k!}\sum_{|S|=k}C_S^\dagger C_S.
\end{align}$$

The coefficient follows already at `N=k`: applying `A^k` to a normalized symmetric `k`-particle wavefunction produces `sqrt(k!)` times its diagonal value. It also reproduces the ground-condensate occupation factor `N!/(N-k)!` in Fock space.

For finite superpositions of arbitrary free modes, stripping the common factor `(1-|z|^2)^(Delta/2)` from every particle gives a symmetric polynomial in the pairs `(z_i,bar z_i)`: the Jacobi factors are polynomials in `z_i*bar z_i`. The general finite-polynomial kernel is therefore a simultaneous coincidence condition in both coordinates of each selected pair. It is not the holomorphic Jack ideal until one restricts to `q=0`.

## 3. Holomorphic Hilbert Space and the Projector Formula

The chiral one-particle Hilbert space is the weighted Bergman space with

$$\begin{align}
\langle f,g\rangle_\Delta =\frac{\Delta-1}{\pi}\int_{|z|<1}d^2z\, (1-|z|^2)^{\Delta-2}\overline{f(z)}g(z), \qquad \|z^p\|^2=\frac{p!}{(\Delta)_p}.
\end{align}$$

Thus `beta_p z^p` is orthonormal. The `N`-particle chiral space is its symmetric tensor power. A homogeneous symmetric polynomial of degree `L` has free energy `E_0=N Delta+L` and angular momentum `J=L`; its dimension is `p_N(L)`, the number of partitions of `L` into at most `N` parts.

For a partition `lambda` padded to `N` entries, with multiplicities `n_j`, let `m_lambda` denote the sum of distinct monomials in its permutation orbit. Its exact squared norm is

$$\begin{align}
g_\lambda=\frac{N!}{\prod_jn_j!}\prod_{i=1}^N\frac{\lambda_i!}{(\Delta)_{\lambda_i}}.
\end{align}$$

The normalized occupation state corresponds to

$$\begin{align}
F_{\boldsymbol n}=\sqrt{\frac{\prod_jn_j!}{N!}} \left[\prod_i\beta_{\lambda_i}\right]m_\lambda.
\end{align}$$

The spatial measure becomes `dmu=d^2z/(1-|z|^2)^2`. Define

$$\begin{align}
A_M=\sum_{p_1+\cdots+p_k=M}\beta_{p_1}\cdots\beta_{p_k} a_{p_1}\cdots a_{p_k},
\end{align}$$

where the sum is over ordered tuples. Angular integration and the beta integral give

$$\begin{align}
V_{\rm np}^{\rm ch} =\frac{\lambda_{2k}}{2^k\pi^{k-1}(k!)^2} \sum_{M\ge0}B(M+1,k\Delta-1)A_M^\dagger A_M.
\end{align}$$

The convolution identity

$$\begin{align}
\sum_{p_1+\cdots+p_k=M}\prod_i\frac{(\Delta)_{p_i}}{p_i!} =\frac{(k\Delta)_M}{M!}
\end{align}$$

implies

$$\begin{align}
\|A_M^\dagger|0\rangle\|^2=k!\frac{(k\Delta)_M}{M!}.
\end{align}$$

With `B_M=A_M/sqrt(k! (kDelta)_M/M!)`, one obtains

$$\begin{align}
V_{\rm np}^{\rm ch}=c_k\sum_M B_M^\dagger B_M.
\end{align}$$

In particular `c_2=lambda_4/[8pi(2Delta-1)]` and `c_3=lambda_6/[48pi^2(3Delta-1)]`.

To see the first-quantized projector explicitly, define, for a set `S` of `k` particles,

$$\begin{align}
h_{M,S}=\sum_{\sum_{i\in S}p_i=M}\prod_{i\in S}\frac{(\Delta)_{p_i}}{p_i!}z_i^{p_i}, \qquad C_M=\frac{(k\Delta)_M}{M!}.
\end{align}$$

Then

$$\begin{align}
h_{M,S}(z,\ldots,z)=C_Mz^M,\qquad \|h_{M,S}\|^2=C_M.
\end{align}$$

If a polynomial restricted to the `S` diagonal is `sum_M z^M f_M(z_(S^c))`, then

$$\begin{align}
P_SF=\sum_M\frac{h_{M,S}}{C_M}f_M(z_{S^c}).
\end{align}$$

This is an orthogonal projector, not merely an algebraic retraction: for each cluster monomial, its inner product with `h_M` equals its diagonal coefficient. Directly,

$$\begin{align}
C_S^\dagger C_S= \frac{1}{2^k\pi^{k-1}(k\Delta-1)}P_S,
\end{align}$$

which proves the normalization and factorization in the opening result.

## 4. Exact Kernel, Hilbert Series and First Zero Modes

The positive sum of squares gives, for nonzero real coupling,

$$\begin{align}
V_{N,k}^{\rm ch}F=0
 \iff P_SF=0\ \text{for every }S
 \iff F(z,\ldots,z,z_{k+1},\ldots,z_N)=0.
\end{align}$$

Bosonic symmetry makes the last condition sufficient for every choice of `S`. The kernel is independent of `Delta`; only its Hilbert-space metric depends on `Delta`. If `N<k`, the interaction vanishes and the whole space is the kernel.

For `k>=2`, apply **FJMM Theorem 4.2**, with their clustering parameter `s=k-1`, `r=2`, `n=N`, and their Jack coupling `beta=-1/k` (the conventional Jack parameter is `alpha=-k`). Its regularity assumptions are satisfied because `gcd(k,1)=1`. This identifies the ideal with the span of regular admissible Jack polynomials. It is an application of a published theorem, not a new proof of that theorem. See [the source and hypothesis record](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/chiral/source_evidence.md>).

Write `(t)_m=prod_(j=1)^m(1-t^j)`. The exact kernel and rank generating functions are

$$\begin{align}
Z_N^{(k)}(t) =\sum_{\substack{\lambda_1\ge\cdots\ge\lambda_N\ge0\\
          \lambda_i-\lambda_{i+k-1}\ge2}}t^{|\lambda|}, \qquad R_N^{(k)}(t)=\frac1{(t)_N}-Z_N^{(k)}(t).
\end{align}$$

Equivalently, the Feigin–Stoyanovsky fermionic character, in the polynomial-degree normalization of Ardonne–Kedem–Stone equations (33)–(36), is the finite sum

$$\begin{align}
\boxed{Z_N^{(k)}(t)= \sum_{\substack{m_1,\ldots,m_{k-1}\ge0\\
\sum_i i m_i=N}} \frac{t^{\sum_{i,j}\min(i,j)m_im_j-N}}
      {\prod_{i=1}^{k-1}(t)_{m_i}}.}
\end{align}$$

For `phi^6` this specializes to an elementary one-sum formula:

$$\begin{align}
Z_N^{(3)}(t)=\sum_{b=0}^{\lfloor N/2\rfloor} \frac{t^{(N-b)^2+b^2-N}}{(t)_{N-2b}(t)_b}.
\end{align}$$

For pair contact it reduces to `t^(N(N-1))/(t)_N`, agreeing with the elementary identity that every symmetric pair-coincidence zero is divisible by the squared Vandermonde.

The componentwise minimal admissible partition is

$$\begin{align}
\lambda_i^{\min}=2\left\lfloor\frac{N-i}{k-1}\right\rfloor.
\end{align}$$

It is unique, proving the exact threshold degree and uniqueness stated at the beginning. A concrete nonzero polynomial attaining it is

$$\begin{align}
\Phi_{N,k}=\operatorname{Sym}\left[ \prod_{a=1}^{k-1}\ \prod_{\substack{i<j\\
i,j\in G_a}}(z_i-z_j)^2\right],
\end{align}$$

where the `k-1` groups have balanced sizes `a` and `a+1`, with `b` of the latter. If `k` particles coincide, two lie in one group in every summand. The polynomial is nonzero because for distinct real coordinates every summand is nonnegative and some are positive. Arbitrary symmetric-polynomial multiples are further zero modes; for `k>2` they do not in general span the whole ideal.

For `phi^6`, the first two nontrivial examples can be chosen as

$$\begin{align}
\Phi_{3,3}=\sum_{i<j}(z_i-z_j)^2,
\end{align}$$

$$\begin{align}
\Phi_{4,3}=(z_1-z_2)^2(z_3-z_4)^2 +(z_1-z_3)^2(z_2-z_4)^2 +(z_1-z_4)^2(z_2-z_3)^2.
\end{align}$$

The thresholds for `N=3,4,5,6,7,8` are `L=2,4,8,12,18,24`. For `N=4`, the kernel dimension at `L=6` is three, whereas multiples of the unique degree-four zero by degree-two symmetric polynomials span only two dimensions. This is a simple explicit warning against treating the triple-coincidence ideal as principal.

## 5. Exact Finite-Rank Construction and phi6 Table

There is a convenient exact matrix implementation without square roots or polynomial expansion. On `m_lambda`, let `R` be diagonal restriction to the first `k` variables. Its rows are indexed by `(M,mu)`, with `M+|mu|=L` and `mu` padded to `N-k` entries. If `c_j=n_j(lambda)-n_j(mu)` are all nonnegative, then

$$\begin{align}
R_{(M,\mu),\lambda}=\frac{k!}{\prod_jc_j!};
\end{align}$$

otherwise the entry is zero. This follows by counting assignments of the remaining exponents to the `k` equal coordinates, including zero exponents.

Let `G=diag(g_lambda)` and

$$\begin{align}
W_{(M,\mu)}=\frac{M!}{(k\Delta)_M}g_\mu.
\end{align}$$

Then the dimensionless contact matrix, in the unnormalized monomial basis, is

$$\begin{align}
\boxed{H_{N,k,L}:=\frac{V_{N,k,L}^{\rm ch}}{c_k} =\binom Nk\,G^{-1}R^{\mathsf T}WR.}
\end{align}$$

All factors in `G,W` are positive for `Delta>1`, so `rank H=rank R`. The following ranks were computed directly over `QQ`, not inferred from the character:

| N \ L | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 3 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 4 | 1 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
| 5 | 1 | 1 | 2 | 3 | 5 | 7 | 10 | 13 | 17 | 21 | 26 | 31 | 37 |
| 6 | 1 | 1 | 2 | 3 | 5 | 7 | 11 | 14 | 20 | 26 | 35 | 44 | 57 |
| 7 | 1 | 1 | 2 | 3 | 5 | 7 | 11 | 15 | 21 | 28 | 38 | 49 | 65 |
| 8 | 1 | 1 | 2 | 3 | 5 | 7 | 11 | 15 | 22 | 29 | 40 | 52 | 70 |

For `N=3` and `N=4`, these rank formulas continue exactly to all degrees as described below. The table is independent of `Delta>1`.

## 6. SL(2,R) Symmetry and Elementary Eigenfamilies

In the polynomial realization define

$$\begin{align}
D_- =\sum_i\partial_{z_i},\qquad D_0=\sum_i(z_i\partial_{z_i}+\Delta/2),\qquad D_+=\sum_i(z_i^2\partial_{z_i}+\Delta z_i).
\end{align}$$

They obey `[D_-,D_+]=2D_0`, and `D_+` is the adjoint of `D_-` in the product Bergman norm. Each `P_S` is an irreducible-cluster projector and commutes with the total generators. Therefore every lowest-weight eigenpolynomial `F_d` produces the infinite family `D_+^r F_d` with the same contact eigenvalue. The lowest-weight multiplicity at degree `d` is `p_N(d)-p_N(d-1)`.

The constant polynomial has eigenvalue

$$\begin{align}
\epsilon_0=\binom Nk,\qquad D_+^L1=L!\,h_{L,\{1,\ldots,N\}}.
\end{align}$$

At `N=k`, the whole degree-`L` contact has rank one: its only nonzero eigenvalue is `c_k`, and its eigenpolynomial is `h_L`. Thus every other polynomial at that degree is a zero mode.

For general `N>=3`, the degree-two and degree-three lowest-weight spaces are one dimensional. Write `S_j=sum_i z_i^j`. The primaries

$$\begin{align}
F_2=S_2-\frac{S_1^2}{N},\qquad F_3=S_3-\frac{3S_1S_2}{N}+\frac{2S_1^3}{N^2}
\end{align}$$

have exact dimensionless eigenvalues

$$\begin{align}
\boxed{\epsilon_2=\binom Nk -\frac{N\Delta+1}{k\Delta+1}\binom{N-2}{k-2},}
\end{align}$$

$$\begin{align}
\boxed{\epsilon_3=\binom{N-1}{k} +\binom{N-1}{k-1} \frac{(N-k)(N-2k)(\Delta+1)(\Delta+2)} {(N-1)(N-2)(k\Delta+1)(k\Delta+2)}.}
\end{align}$$

They vanish when `N=k`, as required by the rank-one result, and are nonzero when `N>k`. For `phi^6`, `epsilon_2=binom(N,3)-(N-2)(N Delta+1)/(3Delta+1)`. At `N=6`, the cubic family has `epsilon_3=10` for every `Delta`.

One short derivation of `epsilon_2` is to define the cluster variance `V_S=sum_(i in S) z_i^2-(sum_(i in S)z_i)^2/k`. The reconstruction formula gives

$$\begin{align}
P_SF_2=F_2-\frac{k(\Delta+1/N)}{k\Delta+1}V_S, \qquad \sum_{|S|=k}V_S=\frac Nk\binom{N-2}{k-2}F_2.
\end{align}$$

For the cubic result, evaluate at `(z_1,z_2,...,z_N)=(x,0,...,0)`. Subsets not containing particle 1 leave that coefficient unchanged; a subset containing it contributes the ratio `(Delta)_3/(kDelta)_3` times the diagonal value with `k` equal coordinates. Uniqueness of the degree-three lowest weight then proves the eigenvalue, rather than merely its expectation value.

## 7. Complete Nonzero Spectrum for N=K+1

This result holds for every integer `k>=2` and every `Delta>1`.

### 7.1 Exact Rank and Completeness

Set `N=k+1`, and restrict a symmetric polynomial to `k` equal variables `z` and one variable `y`. Introduce

$$\begin{align}
x=\frac{kz+y}{k+1},\qquad r=y-z.
\end{align}$$

The image ring is exactly

$$\begin{align}
\operatorname{im}R=\mathbb C[x,r^2,r^3].
\end{align}$$

To prove it, symmetric polynomials are generated by the power sums, whose restrictions are `kz^m+y^m`. Their expansion in `(x,r)` has no term linear in `r`, so they lie in this ring. Conversely, the first three power sums generate `x`, a nonzero multiple of `r^2`, and a nonzero multiple of `r^3`; the cubic coefficient is nonzero for `k>=2`.

It follows that

$$\begin{align}
R_{k+1}^{(k)}(t)=\frac{1-t^6}{(1-t)(1-t^2)(1-t^3)} =1+\frac{t}{(1-t)^2}.
\end{align}$$

Hence the rank is one at degree zero and `L` at every `L>=1`. Removing holomorphic descendants leaves exactly one nonzero primary at `d=0` and every `d>=2`, with none at `d=1`. This proof is independent of the Jack theorem.

### 7.2 Explicit Primaries and Their Eigenvalues

For each omitted particle `j`, let `S_j` be the remaining `k` particles. Define

$$\begin{align}
g_{j,d}=\sum_{m=0}^d(-1)^m\binom dm z_j^{d-m}\frac{h_{m,S_j}}{(k\Delta)_m/m!}.
\end{align}$$

This is a lowest-weight polynomial in the image of `P_(S_j)`. Indeed `D_- [h_(m,S_j)/C_m]=m h_(m-1,S_j)/C_(m-1)`, and the binomial sum cancels. On its own cluster diagonal it is `(z_j-z)^d`.

For `i!=j`, both `P_(S_i) g_(j,d)` and `g_(i,d)` are lowest weights of degree `d` in the same cluster-times-particle representation, whose such space is one dimensional. Evaluate at particle `i` equal to `x` and every other coordinate zero. This gives

$$\begin{align}
P_{S_i}g_{j,d}=a_dg_{i,d},\qquad a_d=(-1)^d\frac{(\Delta)_d}{(k\Delta)_d}.
\end{align}$$

The symmetric sum

$$\begin{align}
G_d=\sum_{j=1}^{k+1}g_{j,d}
\end{align}$$

therefore obeys

$$\begin{align}
\sum_iP_{S_i}G_d=(1+ka_d)G_d.
\end{align}$$

At `d=1`, `a_1=-1/k` and `G_1=0`. At `d=0` it is the constant state. For `d>=2`, `1+ka_d>0`: for odd `d>1`, the initial ratio `1/k` is multiplied by strictly smaller-than-one positive factors. The norm identity

$$\begin{align}
\|G_d\|^2=(k+1)\|g_{1,d}\|^2(1+ka_d)
\end{align}$$

also proves that the listed states are nonzero. The rank count proves completeness of all their descendants in the nonzero spectral subspace.

For `phi^6`, `N=4`, `Delta=2`, the dimensionless primary eigenvalues at `d=0,2,3,4,5,6` are

$$\begin{align}
4,\quad\frac{10}{7},\quad\frac{11}{14},\quad \frac{47}{42},\quad\frac{13}{14},\quad\frac{23}{22}.
\end{align}$$

As a consistency limit, at large `Delta` the dimensionless expression tends to `1+(-1)^d/k^(d-1)`, the corresponding flat holomorphic contact overlap.

## 8. Exact Tests and a Failed Tempting Generalization

The full reproducible test suite and its captured output are:

- [Exact Sage program](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/chiral/check_chiral_contact.py>).
- [Successful exact output](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/chiral/exact_check_output.txt>).

All final matrix arithmetic uses `QQ` or `QQ(Delta)` with explicit coercions; no floating-point eigenvalue fit is used. Direct polynomial radial integrals additionally verified the full Jacobi-mode KG norms for `Delta=2,3,4`, `n=0,...,3`, `|ell|=0,...,3`, and the absolute chiral beta-integral factor for `k=2,3,4`, `Delta=2,3,4`, `M=0,...,8`. Fresh checks passed for:

1. Restriction nullities versus the admissible-partition count: `k=2,3,4`, `k<=N<=8`, `L=0,...,12`.
2. Fermionic characters versus admissible counts: `k=2,3,4`, `N=0,...,8`, `L=0,...,24`.
3. Threshold degree and uniqueness: `k=2,3,4`, `k<=N<=8`.
4. Rank-one cluster spectrum: `N=k=2,3,4`, `L=0,...,8`.
5. Exact `SL(2)` raising intertwiners: `(N,k)=(4,2),(4,3),(5,3)`, `L=0,...,7` at `Delta=2`.
6. The degree-two and degree-three eigenvector equations over the rational-function field `QQ(Delta)`: `3<=N<=7`, `2<=k<=N`.
7. The complete `N=k+1` characteristic polynomial: `k=2,3,4`, `Delta=3/2,2,3`, `L=0,...,8`.
8. Direct nonvanishing, degree and triple-coincidence checks of the balanced-group `phi^6` zero polynomials for `N=3,4,5,6`.

A natural extrapolation of the quartic multilinear-descendant construction fails already for the sextic theory at `N=4,L=4,Delta=2`. Let the candidate subspace be spanned by `D_+^(L-s)e_s` for `s=0,2,3,4`, where `e_s` is elementary symmetric. Its dimension is four. It is invariant under pair contact at these parameters, but the span of it and its sextic image has dimension five. Thus that particular quartic shortcut does not extend to arbitrary k-body contact.

For an explicit larger-N comparison, the `phi^6`, `N=5,L=4`, `Delta=2` characteristic polynomial is

$$\begin{align}
(x-10)(x-37/7)(x-53/14) \left(x^2-\frac{85}{14}x+\frac{376}{49}\right).
\end{align}$$

The two new degree-four primary eigenvalues are `(85+-sqrt(1209))/28`. This is finite exact evidence, not a claim of general nonintegrability or an obstruction to all other closed families.

## 9. Reviewed Extension: the Zero Modes Survive Full First-Order Resonant Mixing

This paragraph reviews a proposal supplied by the parent after the independent derivation; it is not presented as an independent discovery.

Let the initial state be homogeneous, chiral, and satisfy the `k`-coincidence condition. The sum-of-squares result gives `A_M|psi>=0` for every `M`, hence `A(t,x)^k|psi>=0` for all spacetime points. For the full normal-ordered vertex, a term has `r` creators and `s` annihilators, with `r+s=2k`.

- If `s>=k`, it annihilates the state algebraically: `A^s=A^(s-k)A^k`. This includes all number-preserving and number-lowering channels.
- If `s<k`, the output number is `N_out=N+2(k-s)>N`. But every free Fock state obeys `E-J=N Delta+2Q`, where `Q=sum q_i>=0`. Energy and angular-momentum resonance with a chiral input would require

$$\begin{align}
Q_{\rm out}=\frac{(N-N_{\rm out})\Delta}{2}<0,
\end{align}$$

which is impossible.

Thus these zero modes are in the exact kernel of the **full first-order resonant normal-ordered vertex**, including at special resonant `Delta`. This does not mean the unaveraged interaction annihilates them: number-raising off-resonant terms can remain, and higher-order virtual corrections have not been computed.

For several even contacts, coincidence ideals are nested: `I_(N,k_min)` is contained in every `I_(N,k)` with `k>=k_min`. Their common chiral zero modes are therefore exactly the smallest-k ideal. If the number-preserving chiral contacts have positive couplings, their sum has precisely this kernel by positivity. In the full number-changing resonant Hilbert space these states remain guaranteed common zero modes, but no assertion that they exhaust the full kernel follows from this argument.

## 10. Remaining Boundaries of the Result

- The general chiral kernel and its finite-N character are exact; the all-degree Jack-basis component is a correctly mapped application of published mathematics.
- The full nonzero chiral spectrum is obtained for `N=k` and `N=k+1`, with several exact families for arbitrary `N`. An all-N nonzero spectral classification for `phi^6` has not been obtained and is not needed for the kernel/rank statements.
- The bare number-preserving operator need not leave the chiral subspace invariant off resonance. Its chiral compression equals the fixed-N first-order resonant chiral block because `E-J=N Delta` forces every outgoing `q_i=0` at fixed `N`.
- Number-changing resonances are excluded from the nonzero spectral formulas unless their absence is separately established. Their effect on the protected zero modes is addressed only at first order in §9.
- No ultraviolet renormalization, second-order energy shift, gravity backreaction, alternative quantization, or finite-flux truncation is included.
