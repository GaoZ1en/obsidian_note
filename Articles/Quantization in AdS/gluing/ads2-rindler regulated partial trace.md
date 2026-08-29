# AdS$_2$--Rindler Regulated Partial Trace and the Continuum Wedge Restriction

> **Status.** The finite-regulator partial trace is closed. For every fixed finite family of smooth right-wedge Cauchy/Weyl labels, the continuum limit is the global Friedrichs vacuum restricted to the right-wedge algebra; by the independent identification in [[Articles/Quantization in AdS/gluing/ads2-rindler global reconstruction|ads2-rindler global reconstruction]], this is the null-derived global vacuum restriction and is boost KMS at $\beta=2\pi$. No trace-norm limit of the finite density matrices and no sharp continuum Hilbert-space tensor factorization is claimed. Convergence of the full finite modular kernel or modular group to the boost generator is not proved; smooth collar pairings and real boost-flow correlators are checked numerically.
>
> The regulator in this note is a factorizing lattice of the **global $t=0$ Cauchy theory**. It is not the finite-$Z$ Neumann-wall construction and has no independent Rindler-gluing interpretation.

The controlled chain is

$$
\boxed{
\begin{gathered}
\text{null-derived global theory}
\longrightarrow \text{global Friedrichs Cauchy form}
\longrightarrow \text{factorizing finite lattice}\\
\longrightarrow |0_G^{(\Lambda)}\rangle
\longrightarrow \rho_R^{(\Lambda)}
=\operatorname{Tr}_L|0_G^{(\Lambda)}\rangle\langle0_G^{(\Lambda)}|\\
\longrightarrow \text{finite Williamson/modular data}
\longrightarrow \omega_G|_{\mathfrak A(R)}
\longrightarrow \beta_{\mathrm{boost}}=2\pi\ \mathrm{KMS}.
\end{gathered}}
$$

## 1. Scope and Nonclaims

The continuum global theory is the one already reconstructed from characteristic data. On the global $t=0$ slice its comparison Hamiltonian is

$$\begin{align}
H_G=\frac12\int_{-\pi/2}^{\pi/2}d\rho\, \left[p^2+(\partial_\rho q)^2+a\sec^2\rho\,q^2\right], \qquad a=m^2L^2=\Delta(\Delta-1),\qquad \Delta\geq1. \tag{1.1}
\end{align}$$

The corresponding Friedrichs operator is

$$\begin{align}
A_\Delta=-\partial_\rho^2+a\sec^2\rho, \tag{1.2}
\end{align}$$

with standard falloff $q=O((\cos\rho)^\Delta)$ at the two conformal endpoints. The main reconstruction note proves independently that the positive-frequency split of (1.2) is the null-derived global state, computes its $RR$, $RL$, and $RF$ correlators, and proves that

$$\begin{align}
\omega_R:=\omega_G|_{\mathfrak A(R)} \tag{1.3}
\end{align}$$

is boost KMS at inverse temperature $2\pi$ after smearing.

Three objects must not be identified:

$$\begin{align}
\rho_R^{(\Lambda)} =\operatorname{Tr}_L\rho_G^{(\Lambda)}, \qquad \omega_R=\omega_G|_{\mathfrak A(R)}, \qquad \text{a hypothetical continuum trace-class }\rho_R. \tag{1.4}
\end{align}$$

The first exists for every finite lattice in this note. The second is the proved continuum target. The third is not constructed or assumed. In particular, the result is not

$$\begin{align}
\rho_R^{(\Lambda)}\longrightarrow\rho_R \quad\text{in trace norm}.
\tag{1.5}
\end{align}$$

The actual statement is convergence of expectation values on fixed smeared/Weyl observables.

## 2. Factorizing Global Regulator

### 2.1 Cell-Centred Global Lattice

Let $\Lambda$ be a symmetric partition

$$\begin{align}
-\frac\pi2=e_0<e_1<\cdots<e_{2N}=\frac\pi2, \qquad e_N=0, \tag{2.1}
\end{align}$$

with cell centres and widths

$$\begin{align}
\rho_j=\frac{e_j+e_{j+1}}2, \qquad h_j=e_{j+1}-e_j, \qquad j=0,\ldots,2N-1. \tag{2.2}
\end{align}$$

There is no site at $\rho=0$. The left sites have $\rho_j<0$ and the right sites have $\rho_j>0$. With lattice fields $q_j$ and canonical momenta $\pi_j$, the symplectic form is

$$\begin{align}
\Omega_\Lambda=\sum_{j=0}^{2N-1}\delta\pi_j\wedge\delta q_j. \tag{2.3}
\end{align}$$

Consequently the regular Schrödinger representation has the exact finite-mode factorization

$$\begin{align}
\mathcal H_\Lambda =L^2(\mathbb R^{2N}) \cong L^2(\mathbb R^N)_L\otimes L^2(\mathbb R^N)_R =:\mathcal H_L^{(\Lambda)}\otimes\mathcal H_R^{(\Lambda)}. \tag{2.4}
\end{align}$$

The number of canonical pairs is finite; each oscillator factor remains infinite-dimensional. Equation (2.4) is a regulator statement, not a continuum wedge factorization.

Set $M_\Lambda=\operatorname{diag}(h_j)$. The discrete quadratic form is

$$
\begin{aligned}
q^{\mathsf T}K_\Lambda q={}&
\frac{q_0^2}{\rho_0-e_0}
+\sum_{j=0}^{2N-2}\frac{(q_{j+1}-q_j)^2}{\rho_{j+1}-\rho_j}
+\frac{q_{2N-1}^2}{e_{2N}-\rho_{2N-1}}\\
&+\sum_{j=0}^{2N-1}h_j\,a\sec^2\rho_j\,q_j^2.
\end{aligned}
\tag{2.5}
$$

The endpoint terms are the energy of the piecewise-linear continuation to the fixed value zero at $\rho=\pm\pi/2$. They implement the standard/Friedrichs endpoint rather than a Neumann or finite-$Z$ wall. The finite Hamiltonian is

$$\begin{align}
\boxed{ H_G^{(\Lambda)} =\frac12\pi^{\mathsf T}M_\Lambda^{-1}\pi +\frac12q^{\mathsf T}K_\Lambda q.} \tag{2.6}
\end{align}$$

$K_\Lambda$ is positive because every term in (2.5) is nonnegative and the endpoint terms exclude the constant zero direction.

Two shape-regular partitions were implemented:

1. uniform midpoint cells, $e_j=-\pi/2+j\pi/(2N)$;
2. a symmetric stretched lattice, $e_j=(\pi/2)\tanh(0.8u_j)/\tanh(0.8)$ with uniform $u_j\in[-1,1]$.

Both put the cut between two sites. The second is a regulator comparison, not evidence for arbitrary discretization independence.

### 2.2 General Mass Matrix and Canonicalization

For any finite element regulator with positive mass matrix $M_\Lambda$, define

$$\begin{align}
Q=M_\Lambda^{1/2}q, \qquad P=M_\Lambda^{-1/2}\pi, \qquad \mathcal A_\Lambda=M_\Lambda^{-1/2}K_\Lambda M_\Lambda^{-1/2}. \tag{2.7}
\end{align}$$

Then $[Q_j,P_k]=i\delta_{jk}$ and

$$\begin{align}
H_G^{(\Lambda)}=\frac12P^{\mathsf T}P +\frac12Q^{\mathsf T}\mathcal A_\Lambda Q. \tag{2.8}
\end{align}$$

The present mass-lumped regulators have diagonal $M_\Lambda$, so (2.7) is local and does not mix the left and right factors. For a consistent FEM mass matrix with entries crossing the cut, one must take the partial trace in the original canonical $(q,\pi)$ split; a nonlocal $M^{1/2}$ cannot be used silently to redefine the subsystem.

## 3. Finite Global Gaussian Vacuum

With $\hbar=1$, order the canonical variables as

$$\begin{align}
R=(Q_0,\ldots,Q_{2N-1},P_0,\ldots,P_{2N-1}), \qquad [R_a,R_b]=iJ_{ab}, \tag{3.1}
\end{align}$$

where

$$
J=\begin{pmatrix}0&\mathbf1\\-\mathbf1&0\end{pmatrix}.
\tag{3.2}
$$

The ground state $|0_G^{(\Lambda)}\rangle$ of (2.8) is the centred pure Gaussian with

$$\begin{align}
\boxed{ X_\Lambda:=\langle QQ^{\mathsf T}\rangle =\frac12\mathcal A_\Lambda^{-1/2}, \qquad P_\Lambda:=\langle PP^{\mathsf T}\rangle =\frac12\mathcal A_\Lambda^{1/2}, \qquad C_\Lambda=0.} \tag{3.3}
\end{align}$$

In the original coordinates this is

$$\begin{align}
\langle qq^{\mathsf T}\rangle =\frac12M_\Lambda^{-1/2}\mathcal A_\Lambda^{-1/2}M_\Lambda^{-1/2}, \qquad \langle\pi\pi^{\mathsf T}\rangle =\frac12M_\Lambda^{1/2}\mathcal A_\Lambda^{1/2}M_\Lambda^{1/2}. \tag{3.4}
\end{align}$$

The full covariance

$$
\Gamma_\Lambda=\begin{pmatrix}X_\Lambda&0\\0&P_\Lambda\end{pmatrix}
\tag{3.5}
$$

satisfies

$$\begin{align}
X_\Lambda P_\Lambda=\frac14\mathbf1, \qquad \Gamma_\Lambda+\frac i2J\geq0. \tag{3.6}
\end{align}$$

Thus this is the vacuum of the same regulated global operator, not a state fitted to a thermal occupation number.

For comparison only, the continuum normalized spatial modes obtained in the main reconstruction note are

$$\begin{align}
e_n(\rho)=\sqrt{2(\Delta+n)}\,N_{n,\Delta} (\cos\rho)^\Delta C_n^\Delta(\sin\rho), \qquad A_\Delta e_n=(\Delta+n)^2e_n. \tag{3.7}
\end{align}$$

The numerical script compares the lattice covariance with the mode-functional calculus of (3.7) only after constructing (2.6)--(3.3).

## 4. Exact Finite Partial Trace

Split $R=(R_L,R_R)$ and write

$$
\Gamma_\Lambda=
\begin{pmatrix}
\Gamma_L&C_{LR}\\
C_{RL}&\Gamma_R
\end{pmatrix}.
\tag{4.1}
$$

The genuine finite partial trace is

$$\begin{align}
\boxed{ \rho_R^{(\Lambda)} =\operatorname{Tr}_{\mathcal H_L^{(\Lambda)}}
|0_G^{(\Lambda)}\rangle\langle0_G^{(\Lambda)}|.}
\tag{4.2}
\end{align}$$

For a Gaussian state, (4.2) is again Gaussian and its covariance is exactly the right principal block $\Gamma_R$. No Schur complement is taken. The Schur complement would describe conditioning or elimination, not a partial trace.

### 4.1 Williamson Form

For the time-reflection invariant covariance write

$$\begin{align}
\Gamma_R=\operatorname{diag}(X_R,P_R). \tag{4.3}
\end{align}$$

Diagonalize

$$\begin{align}
X_R^{1/2}P_RX_R^{1/2} =O\operatorname{diag}(\nu_1^2,\ldots,\nu_N^2)O^{\mathsf T}. \tag{4.4}
\end{align}$$

Define

$$\begin{align}
T=\operatorname{diag}(\sqrt{\nu_j})O^{\mathsf T}X_R^{-1/2}, \qquad W=\operatorname{diag}(T,T^{-\mathsf T}). \tag{4.5}
\end{align}$$

Then $WJW^{\mathsf T}=J$ and, with the convention used here,

$$\begin{align}
\boxed{ W\Gamma_RW^{\mathsf T} =\operatorname{diag}(\nu_1,\ldots,\nu_N,\nu_1,\ldots,\nu_N), \qquad \nu_j\geq\frac12.} \tag{4.6}
\end{align}$$

The vacuum value is $\nu=1/2$. The modular single-particle energies are

$$\begin{align}
\boxed{ \epsilon_j =2\operatorname{arccoth}(2\nu_j) =\log\frac{\nu_j+1/2}{\nu_j-1/2}.} \tag{4.7}
\end{align}$$

Modes with $\nu_j-1/2$ exponentially small require high precision; replacing them by zero before computing (4.7) produces a false finite modular kernel.

### 4.2 The Finite Density Operator and Modular Quadratic Form

Let $b_j$ be the annihilators of the Williamson quadratures. The actual finite-mode density operator is

$$\begin{align}
\boxed{ \rho_R^{(\Lambda)} =U_W\left[ \bigotimes_{j=1}^{N} (1-e^{-\epsilon_j})e^{-\epsilon_jb_j^\dagger b_j} \right]U_W^\dagger.} \tag{4.8}
\end{align}$$

Every factor has trace one because

$$\begin{align}
(1-e^{-\epsilon_j})\sum_{n=0}^{\infty}e^{-n\epsilon_j}=1. \tag{4.9}
\end{align}$$

Thus this is more than an occupation-number list: it is a positive trace-class operator on the finite-site right Hilbert factor.

With $E=\operatorname{diag}(\epsilon_1,\ldots,\epsilon_N)$,

$$\begin{align}
\boxed{ K_R^{(\Lambda)}:=-\log\rho_R^{(\Lambda)} =\frac12R_R^{\mathsf T}G_{\mathrm{mod},\Lambda}R_R+c_\Lambda, \qquad G_{\mathrm{mod},\Lambda}=W^{\mathsf T}(E\oplus E)W,} \tag{4.10}
\end{align}$$

where

$$\begin{align}
c_\Lambda=\sum_j\left[-\frac{\epsilon_j}{2} -\log(1-e^{-\epsilon_j})\right]. \tag{4.11}
\end{align}$$

Equations (4.5)--(4.10) reconstruct $\Gamma_R$ from $G_{\mathrm{mod},\Lambda}$ with no thermal ansatz.

For the uniform $\Delta=2$ regulator, the direct calculation gives:

| total sites | $\min_j(\nu_j-1/2)$ at high precision | $\max_j\nu_j$ | Williamson/covariance reconstruction residual |
|---:|---:|---:|---:|
| 12 | $4.17\times10^{-31}$ | 0.538180 | $1.6\times10^{-13}$ |
| 16 | $1.10\times10^{-41}$ | 0.551641 | $1.7\times10^{-13}$ |
| 24 | $8.10\times10^{-63}$ | 0.573479 | $1.8\times10^{-13}$ |

The positive values verify $\nu_j\geq1/2$ within the stated high-precision calculation. Their rapid approach to $1/2$ is also why the machine-precision modular kernel was not used for the final kernel table.

## 5. Right-Wedge Boost Charge and the Modular Comparison

### 5.1 Independent Continuum Derivation

The global embedding is

$$\begin{align}
X^{-1}=L\sec\rho\cos t, \qquad X^0=L\sec\rho\sin t, \qquad X^1=L\tan\rho. \tag{5.1}
\end{align}$$

The embedding boost $\delta X^0=X^1$, $\delta X^1=X^0$, $\delta X^{-1}=0$ induces

$$\begin{align}
\boxed{ \zeta=\sin\rho\cos t\,\partial_t +\cos\rho\sin t\,\partial_\rho.} \tag{5.2}
\end{align}$$

At $t=0$, $\zeta=\sin\rho\,\partial_t$. It is future-directed on the right half-slice and past-directed on the left, agreeing with $\zeta=\partial_{\eta_R}=-\partial_{\eta_L}$.

For

$$\begin{align}
ds^2=L^2\sec^2\rho(-dt^2+d\rho^2), \tag{5.3}
\end{align}$$

the unit normal and induced measure obey

$$\begin{align}
n^t=\frac{\cos\rho}{L}, \qquad d\Sigma=L\sec\rho\,d\rho, \qquad d\Sigma\,n^t=d\rho. \tag{5.4}
\end{align}$$

The stress tensor gives

$$\begin{align}
T_{tt}=\frac12\left[p^2+(\partial_\rho q)^2+a\sec^2\rho\,q^2\right]. \tag{5.5}
\end{align}$$

Therefore the positive right-wedge boost charge is

$$\begin{align}
\boxed{ H_R^{\mathrm{boost}} =\frac12\int_0^{\pi/2}d\rho\,\sin\rho \left[p^2+(\partial_\rho q)^2+a\sec^2\rho\,q^2\right].} \tag{5.6}
\end{align}$$

The sign and normalization in (5.6) follow from the Killing vector and the Cauchy orientation; they were not copied from a thermofield formula. A fresh symbolic check verifies the embedding action, Killing equation, (5.5), and the complete lapse/measure factor.

### 5.2 What the Continuum Modular Relation Means

The main reconstruction note proves that $\omega_R$ is $2\pi$-KMS for the automorphism $\alpha_s$ generated by $\zeta$. In the GNS modular representation this identifies the modular automorphism with the boost automorphism after the standard $2\pi$ rescaling. On analytic elements the shorthand is

$$\begin{align}
K_R=2\pi H_R^{\mathrm{boost}}+\text{constant}. \tag{5.7}
\end{align}$$

Equation (5.7) is an algebraic modular-generator statement. It is not an equality between a sharp-wedge trace-class $-\log\rho_R$ and an operator on a tensor factor. With the density-matrix convention $\rho=e^{-K}$, the associated modular flow has the usual opposite sign, $\sigma_t=\alpha_{-2\pi t}$.

### 5.3 Finite Discretized Boost Generator

On the right lattice, discretize (5.6) as

$$\begin{align}
H_{R,\Lambda}^{\mathrm{boost}} =\frac12P_R^{\mathsf T}G_{P,\Lambda}^{\mathrm{boost}}P_R +\frac12Q_R^{\mathsf T}G_{Q,\Lambda}^{\mathrm{boost}}Q_R. \tag{5.8}
\end{align}$$

$G_P^{\mathrm{boost}}$ is the mass-lumped multiplication by $\sin\rho_j$. $G_Q^{\mathrm{boost}}$ is obtained from the weighted gradient and potential form. No horizon Dirichlet term is added because the weight $\sin\rho$ vanishes at $\rho=0$; the Friedrichs endpoint term at $\rho=\pi/2$ is retained.

At finite cutoff,

$$\begin{align}
G_{\mathrm{mod},\Lambda}\neq
2\pi\left(G_{Q,\Lambda}^{\mathrm{boost}}\oplus G_{P,\Lambda}^{\mathrm{boost}}\right)
\tag{5.9}
\end{align}$$

as a matrix. The spatial lattice preserves global time reflection but not exact boost symmetry. The comparison must therefore use smooth local quadratic pairings and correlators, not only modular eigenvalues.

High-precision smooth-pairing errors for the uniform lattice are:

| total sites | collar $\epsilon$ | $Q$-kernel relative error | $P$-kernel relative error |
|---:|---:|---:|---:|
| 12 | 0.12 | $5.01\times10^{-3}$ | $4.39\times10^{-3}$ |
| 20 | 0.12 | $3.62\times10^{-3}$ | $1.17\times10^{-3}$ |
| 32 | 0.12 | $4.05\times10^{-3}$ | $3.10\times10^{-4}$ |
| 12 | 0.24 | $7.87\times10^{-3}$ | $3.35\times10^{-3}$ |
| 20 | 0.24 | $5.07\times10^{-3}$ | $6.92\times10^{-4}$ |
| 32 | 0.24 | $5.25\times10^{-3}$ | $4.57\times10^{-5}$ |

The momentum pairing converges cleanly in this range. The configuration pairing remains at the $0.4$--$0.8\%$ level and is nonmonotone, so these data support local agreement but do not prove full modular-kernel convergence.

## 6. Continuum smeared/Weyl Convergence

### 6.1 Analytic Fixed-Label Theorem

Let

$$\begin{align}
\mathfrak a_\Delta[u] =\int_{-\pi/2}^{\pi/2} \left(|u'|^2+a\sec^2\rho\,|u|^2\right)d\rho. \tag{6.1}
\end{align}$$

For $a\geq0$, Hardy's inequality at the two endpoints shows that the Friedrichs form domain is $H_0^1(-\pi/2,\pi/2)$ with an equivalent weighted form norm. Let $I_\Lambda q$ be the piecewise-linear interpolation through the cell centres and the two zero endpoint values. The derivative part of (2.5) is exactly $\int|(I_\Lambda q)'|^2$. On either implemented shape-regular partition family:

1. the mass-lumped $L^2$ norm is uniformly equivalent to the interpolated $L^2$ norm;
2. the discrete Hardy inequality uniformly controls the sampled $\sec^2\rho$ term;
3. $C_c^\infty(-\pi/2,\pi/2)$ admits interpolating recovery sequences for which (2.5) converges to (6.1);
4. a bounded-energy sequence is weakly compact in $H_0^1$, and the derivative and nonnegative potential terms are lower semicontinuous.

For completeness, the endpoint step is not an appeal to pointwise convergence against a singular weight. On either endpoint half-interval, the interpolant obeys the ordinary Hardy bound

$$\begin{align}
\int\frac{|I_\Lambda q|^2}{d(\rho,\partial\Sigma)^2}\,d\rho
\leq4\int|(I_\Lambda q)'|^2\,d\rho.
\tag{6.1a}
\end{align}$$

Shape regularity transfers this to the sampled potential in (2.5) with a cutoff-independent constant. For the liminf statement, first restrict to $d(\rho,\partial\Sigma)\geq\delta$, where the potential is bounded and the interpolants converge strongly in $L^2$; take the lower limit there and then let $\delta\downarrow0$ by monotonicity. For recovery, first take $u\in C_c^\infty$, for which interpolation and midpoint quadrature converge directly, and then use that $C_c^\infty$ is a core of the Friedrichs form together with a diagonal sequence. This proves both Mosco inequalities rather than inferring them from the numerical spectra.

These statements give Mosco convergence of the embedded discrete forms to $\mathfrak a_\Delta$. Hence

$$\begin{align}
\mathcal A_\Lambda\longrightarrow A_\Delta \quad\text{in embedded strong resolvent sense}.
\tag{6.2}
\end{align}$$

Poincaré's inequality supplies a cutoff-uniform positive lower bound, while the continuum value is $\inf\operatorname{spec}A_\Delta=\Delta^2$. Hence $x^{-1/2}$ is bounded on the common spectral half-line. Strong functional calculus therefore gives, for fixed $f,g\in C_c^\infty$,

$$\begin{align}
\frac12(f_\Lambda,\mathcal A_\Lambda^{-1/2}g_\Lambda) \longrightarrow
\frac12(f,A_\Delta^{-1/2}g), \tag{6.3}
\end{align}$$

and form convergence gives

$$\begin{align}
\frac12(f_\Lambda,\mathcal A_\Lambda^{1/2}g_\Lambda) \longrightarrow
\frac12(f,A_\Delta^{1/2}g).
\tag{6.4}
\end{align}$$

The same argument with $e^{-i\tau\sqrt{x}}$ gives the time-dependent field covariance locally uniformly for $\tau$ in compact sets.

Because partial trace leaves all right-observable expectations unchanged,

$$\begin{align}
\operatorname{Tr}\left(\rho_R^{(\Lambda)}A_{R,\Lambda}\right) =\langle0_G^{(\Lambda)}|A_{R,\Lambda}|0_G^{(\Lambda)}\rangle, \tag{6.5}
\end{align}$$

equations (6.3)--(6.4) immediately imply

$$\begin{align}
\boxed{ \operatorname{Tr}\!\left[ \rho_R^{(\Lambda)}\Phi_\Lambda(f)\Phi_\Lambda(g) \right] \longrightarrow G_{RR}^+(f,g).}
\tag{6.6}
\end{align}$$

They likewise give the $\pi$--$\pi$ covariance. At equal global time the symmetrized $\phi$--$\pi$ covariance is zero; the ordered mixed covariance is fixed by the convergent CCR. For a phase-space label $F$ and

$$\begin{align}
W_\Lambda(F)=e^{iR_\Lambda(F)}, \tag{6.7}
\end{align}$$

the centred Gaussian characteristic functional is

$$\begin{align}
\operatorname{Tr}\left[\rho_R^{(\Lambda)}W_\Lambda(F)\right] =\exp\left[-\frac12\mu_\Lambda(F,F)\right] \longrightarrow \exp\left[-\frac12\mu_R(F,F)\right] =\omega_R(W(F)). \tag{6.8}
\end{align}$$

The theorem is pointwise/directed on every fixed finite family of smooth labels. It is not universal Weyl $C^*$-norm convergence of moving generators.

### 6.2 Identification with the Null-Derived Target

Equation (6.2) alone identifies the limit as the Friedrichs ground state. Sections 5--7 of the main reconstruction note independently identify that Friedrichs state with the positive split reconstructed from null data. Therefore no thermal state was selected by fitting the lattice:

$$\begin{align}
\boxed{ \lim_\Lambda\rho_R^{(\Lambda)} \quad\text{on fixed right observables means precisely}\quad \omega_G|_{\mathfrak A(R)}.}
\tag{6.9}
\end{align}$$

The two implemented lattice families converge to the same functional by the same form theorem. Their finite errors differ, so no universal convergence rate is claimed.

### 6.3 Numerical Covariance and Weyl Checks

The benchmark is $\Delta=2$, so $a=2$. RR-phi compares two separated smooth right smearings, RR-pi their momentum covariance, LR-phi a mirrored left--right pair, and Weyl a mixed field/momentum characteristic functional. The continuum comparator uses 320 reconstructed global modes and 12001 quadrature points.

| regulator | total sites | first-six max frequency error | RR-phi relative error | RR-pi relative error | LR-phi relative error | Weyl relative error |
|---|---:|---:|---:|---:|---:|---:|
| uniform | 32 | $1.04\times10^{-1}$ | $3.91\times10^{-2}$ | $5.89\times10^{-2}$ | $2.16\times10^{-2}$ | $1.27\times10^{-3}$ |
| uniform | 64 | $2.64\times10^{-2}$ | $2.57\times10^{-3}$ | $1.96\times10^{-2}$ | $1.56\times10^{-3}$ | $5.33\times10^{-4}$ |
| uniform | 128 | $6.63\times10^{-3}$ | $2.80\times10^{-4}$ | $4.25\times10^{-3}$ | $1.98\times10^{-4}$ | $2.14\times10^{-4}$ |
| stretched | 32 | $1.23\times10^{-1}$ | $8.97\times10^{-2}$ | $1.59\times10^{-1}$ | $6.36\times10^{-2}$ | $1.62\times10^{-3}$ |
| stretched | 64 | $3.08\times10^{-2}$ | $5.10\times10^{-3}$ | $5.84\times10^{-2}$ | $1.43\times10^{-3}$ | $9.21\times10^{-4}$ |
| stretched | 128 | $7.72\times10^{-3}$ | $3.68\times10^{-4}$ | $6.90\times10^{-3}$ | $5.98\times10^{-4}$ | $2.49\times10^{-4}$ |

The smallest eigenvalue of $\mathcal A_\Lambda$ approaches $4=\Delta^2$. The smallest eigenvalue of $\Gamma_\Lambda+iJ/2$ stays within $1.1\times10^{-13}$ of zero from below, the expected floating-point residual for a pure Gaussian state.

## 7. Collar/split Two-Parameter Limit

Let

$$\begin{align}
R_\epsilon=\{\rho\geq\epsilon\}, \qquad \epsilon>0, \tag{7.1}
\end{align}$$

and restrict the test labels to compact support in $R_\epsilon$ and away from $\rho=\pi/2$. At fixed $\epsilon$, (6.3)--(6.8) apply directly. For a normalized smooth field bump, the uniform-grid errors are:

| $\epsilon$ | total sites | field variance relative error | momentum variance relative error | Weyl relative error |
|---:|---:|---:|---:|---:|
| 0.12 | 64 | $5.23\times10^{-4}$ | $1.88\times10^{-3}$ | $3.37\times10^{-5}$ |
| 0.12 | 128 | $1.41\times10^{-4}$ | $5.06\times10^{-4}$ | $9.04\times10^{-6}$ |
| 0.24 | 64 | $7.92\times10^{-4}$ | $2.89\times10^{-3}$ | $6.89\times10^{-5}$ |
| 0.24 | 128 | $1.75\times10^{-4}$ | $6.55\times10^{-4}$ | $1.61\times10^{-5}$ |
| 0.36 | 64 | $1.02\times10^{-3}$ | $3.76\times10^{-3}$ | $1.16\times10^{-4}$ |
| 0.36 | 128 | $2.23\times10^{-4}$ | $8.82\times10^{-4}$ | $2.83\times10^{-5}$ |

The correct order of limits is

$$\begin{align}
\Lambda\to\infty\quad\text{at fixed }\epsilon, \qquad \epsilon\downarrow0\quad\text{afterward}. \tag{7.2}
\end{align}$$

Every compactly supported right-wedge test function belongs to some $R_\epsilon$. The directed union over $\epsilon>0$ therefore determines the sharp-wedge state restriction without introducing a point field at the bifurcation point. This does not control entropy or a sharp boundary operator uniformly as $\epsilon\downarrow0$.

## 8. Entropy Diagnostic

The finite right entropy is

$$\begin{align}
\boxed{ S_R^{(\Lambda)} =\sum_j\left[ (\nu_j+\tfrac12)\log(\nu_j+\tfrac12) -(\nu_j-\tfrac12)\log(\nu_j-\tfrac12) \right].} \tag{8.1}
\end{align}$$

For $\Delta=2$:

| regulator | total sites | $S_R^{(\Lambda)}$ | doubling slope $(S_N-S_{N/2})/\log2$ |
|---|---:|---:|---:|
| uniform | 32 | 0.316741 | -- |
| uniform | 64 | 0.430520 | 0.164148 |
| uniform | 128 | 0.545528 | 0.165922 |
| stretched | 32 | 0.286718 | -- |
| stretched | 64 | 0.399778 | 0.163112 |
| stretched | 128 | 0.514570 | 0.165610 |

The slopes approach $1/6$ in this range, while the offsets depend on the regulator. This is a diagnostic consistent with the expected one-dimensional ultraviolet logarithm; it is not an analytic derivation of the coefficient. The divergence is compatible with the absence of a trace-norm continuum density-matrix target and is not a failure of the state-restriction limit.

## 9. LR Information Loss and the B2 Interpretation

The full finite vacuum contains the nonzero block

$$\begin{align}
C_{LR}^{(\Lambda)}\neq0.
\tag{9.1}
\end{align}$$

For the $\Delta=2$ uniform grids, the Frobenius norm of the equal-time field block is

$$\begin{align}
0.06708\ (N_{\mathrm{sites}}=32), \qquad 0.06882\ (64), \qquad 0.06945\ (128). \tag{9.2}
\end{align}$$

The smeared $LR$ covariance simultaneously converges to the nonzero continuum $G_{RL}^+$, with the errors displayed in Section 6.3. By contrast, (4.2) retains only $\Gamma_R$:

$$\begin{align}
\rho_R^{(\Lambda)}
\not\Longrightarrow C_{LR}^{(\Lambda)}.
\tag{9.3}
\end{align}$$

The arrow means that the marginal contains no datum from which the cross covariance can be reconstructed. Thus the partial trace is information loss, not a different encoding of the full B2 state. In the continuum,

$$\begin{align}
G_{RL}^+(x,x')=\frac1{2\pi}Q_{\Delta-1}(\zeta_{RL})\neq0 \tag{9.4}
\end{align}$$

is fixed by the null-derived global positive-frequency split. Two thermal exterior marginals do not determine (9.4). This finite calculation therefore realizes exactly the distinction already stated in the main reconstruction note: the regional restrictions are thermal, while the cross covariance is additional global B2 data.

## 10. Direct KMS and Boost-Flow Connection

For the discretized boost Hamiltonian (5.8), let

$$\begin{align}
T_\Lambda(s)= \exp\left[sJ_R \left(G_{Q,\Lambda}^{\mathrm{boost}}\oplus G_{P,\Lambda}^{\mathrm{boost}}\right)\right]. \tag{10.1}
\end{align}$$

For linear right observables $A=a^{\mathsf T}R_R$ and $B=b^{\mathsf T}R_R$,

$$\begin{align}
F_{AB}^{(\Lambda)}(s) =a^{\mathsf T}\left(\Gamma_R+\frac i2J_R\right) T_\Lambda(s)^{\mathsf T}b. \tag{10.2}
\end{align}$$

The script compares (10.2) with the continuum global-mode Wightman function whose second smearing is moved by the exact boost. Representative uniform-grid errors are:

| $s$ | total sites | relative error of real part | absolute error of imaginary part |
|---:|---:|---:|---:|
| 0.2 | 64 | $1.09\times10^{-2}$ | $5.32\times10^{-7}$ |
| 0.2 | 128 | $8.93\times10^{-4}$ | $7.41\times10^{-9}$ |
| 0.5 | 64 | $1.71\times10^{-3}$ | $3.54\times10^{-4}$ |
| 0.5 | 128 | $2.66\times10^{-3}$ | $3.92\times10^{-5}$ |
| 0.8 | 64 | $1.43\times10^{-2}$ | $5.99\times10^{-5}$ |
| 0.8 | 128 | $2.86\times10^{-3}$ | $6.34\times10^{-5}$ |

These real-time checks support convergence of the chosen discretized flow on the tested smooth family. They do not establish complex-time uniformity or convergence of the full modular group.

The KMS conclusion does not depend on upgrading this numerical check into a theorem. The analytic chain is instead:

$$
\begin{aligned}
\operatorname{Tr}(\rho_R^{(\Lambda)}A_\Lambda)
&=\omega_G^{(\Lambda)}(A_\Lambda)
\longrightarrow \omega_G(A)
=\omega_R(A),\\
F_{AB}(s+i2\pi)&=F_{BA}(-s),
\end{aligned}
\tag{10.3}
$$

where the first line is the fixed-label theorem of Section 6 and the second line is the already-derived smeared KMS theorem for that same limiting state. Each finite $\rho_R^{(\Lambda)}$ is exactly KMS at inverse temperature one for its own modular flow generated by $K_R^{(\Lambda)}$; it is not exactly $2\pi$-KMS for the boost lattice (5.8).

## 11. Verification Scripts and Evidence Tables

Two new scripts accompany this note:

1. numerics/ads2_rindler_partial_trace_gaussian.py constructs both factorizing lattices, the finite global vacuum, the partial trace, Williamson data, modular quadratic form, entropy, $RR/LR$ covariance limits, Weyl functional, collar tests, modular/boost pairings, and real boost-flow correlators. It prints every cutoff, error definition, numerical table, and failure line.
2. numerics/ads2_rindler_partial_trace_checks.wl verifies the boost Killing vector, stress-tensor density, lapse/orientation normalization, Williamson energy, thermal trace normalization, and occupation formula exactly. It also performs the modular-kernel comparison at 90-digit working precision, needed because some $\nu_j-1/2$ are below machine precision.

The executed versions were Wolfram Engine 14.3.0 and Python 3.12.13 with NumPy 2.3.5. The runs returned all exact checks true. Finite Williamson diagonalization and covariance-reconstruction relative residuals were $8.1\times10^{-14}$--$1.9\times10^{-13}$ for the displayed $12$--$24$ site tests. The occupation sums truncated at 80 quanta had trace error below the displayed double-precision resolution.

An independent $\Delta=1$ endpoint smoke test at 32 and 64 total sites also passed every finite check. On the uniform grid its 64-site $RR$ field, $RR$ momentum, $LR$ field, and Weyl relative errors were respectively $2.20\times10^{-3}$, $1.53\times10^{-2}$, $1.63\times10^{-3}$, and $5.59\times10^{-4}$; the entropy doubling slope was $0.166497$.

Run from Articles/Quantization in AdS/gluing/ with a NumPy-enabled Python:

    Python3 numerics/ads2_rindler_partial_trace_gaussian.py
    wolframscript -file numerics/ads2_rindler_partial_trace_checks.wl

The Python script ends with both an exact-finite status and the explicit evidence boundary that finite matrices are exact to the displayed residuals while its continuum tables are numerical evidence. The analytic fixed-label convergence theorem is the separate form/functional-calculus argument in Section 6, not an inference from the script status.

## 12. Claim Ledger

| ID | claim | status | assumptions/domain | evidence | remaining boundary |
|---|---|---|---|---|---|
| A1 | global cell-centred regulator factorizes across $\rho=0$ | proved at every finite cutoff | even site count, cut is a cell edge, regular Schrödinger CCR | (2.1)--(2.6) | not a continuum factorization |
| A2 | standard/Friedrichs endpoint treatment | proved for the displayed discrete form | $\Delta\geq1$, zero endpoint interpolation | endpoint terms in (2.5), discrete Hardy control | alternate quantization not covered |
| A3 | two implemented regulator families have the same form limit | proved in fixed-label form/strong-resolvent scope | uniform shape regularity | Section 6.1 | no universal rate or arbitrary nonconforming regulator theorem |
| B1 | finite global vacuum covariance | proved | positive $M_\Lambda,K_\Lambda$ | (3.3)--(3.6), finite residuals | none at finite cutoff |
| B2 | this vacuum converges to the null-derived global vacuum | proved on fixed smeared/Weyl labels | Section 6 hypotheses plus the main note's Friedrichs/null identification | (6.2)--(6.9) | not Fock-unitary convergence |
| C1 | $\rho_R^{(\Lambda)}=\operatorname{Tr}_L\rho_G^{(\Lambda)}$ exists | proved | finite site factorization | (4.2) | no continuum density operator inferred |
| C2 | reduced covariance is the right principal block | proved | Gaussian partial trace | (4.1)--(4.3) | cross block is lost |
| C3 | Williamson spectrum, normalized density operator and $G_{\mathrm{mod}}$ | proved + exact/high-precision check | $\hbar=1$, vacuum $\nu=1/2$ | (4.4)--(4.11), scripts | exponentially small $\nu-1/2$ requires high precision |
| D1 | right boost charge is (5.6) with positive sign | proved + exact symbolic check | stated embedding, right future orientation | (5.1)--(5.6), Wolfram script | none |
| D2 | continuum modular action is the $2\pi$-rescaled boost action | proved in the existing smeared algebraic scope | the main note's KMS theorem and GNS modular implementation | (5.7), (10.3) | not a sharp density-matrix equality |
| D3 | finite modular matrix equals $2\pi$ times the finite boost matrix | false | displayed lattice | (5.9) and numerical differences | regulator breaks boost symmetry |
| D4 | smooth finite modular-kernel pairings approach boost pairings | checked, not proved as a full limit | $\Delta=2$, displayed bumps/collars | Section 5.3 high-precision table | $Q$ pairing remains nonmonotone at $0.4$--$0.8\%$ |
| E1 | reduced $RR$ field/momentum/Weyl expectations converge to $G_{RR}^+$ and $\omega_R$ | proved on each fixed finite smooth label family; numerically checked | compact support, form-compatible approximants | Section 6 | no sharp cut-point observable |
| E2 | full $LR$ block converges to $G_{RL}^+$ | same fixed-label theorem; numerically checked | one fixed left and one fixed right smearing | Sections 6.3 and 9 | no pointwise horizon pullback |
| E3 | partial trace loses the $LR$ cross covariance | proved at finite cutoff and retained in the limit interpretation | covariance block decomposition | Section 9 | marginal cannot reconstruct B2 global data |
| F1 | fixed-$\epsilon$ collar limit is controlled | proved on fixed smooth labels | $\epsilon>0$ before $\Lambda\to\infty$ | Sections 6--7 | no entropy-uniform estimate |
| F2 | $\epsilon\downarrow0$ gives the sharp-wedge state on the directed local algebra | proved as directed restriction | compactly supported wedge labels | Section 7 | no operator supported exactly at the bifurcation point |
| G1 | finite entropy diverges with a slope near $1/6$ | numerical diagnostic | $\Delta=2$, two lattice families, up to 128 sites | Section 8 | coefficient not analytically derived here |
| H1 | discretized real boost-flow correlators converge on the tested family | numerical evidence | displayed times/smearings and uniform grid | Section 10 | no complex-strip or full-group convergence theorem |
| H2 | partial-trace limit is the already-derived $\beta=2\pi$ KMS state | proved in fixed-label state topology | E1 plus the existing KMS theorem | (10.3) | no finite-cutoff equality with $e^{-2\pi H_{R,\Lambda}^{\mathrm{boost}}}$ |

## 13. Conclusion

The B2 partial-trace layer is now explicit:

$$\begin{align}
\boxed{ \text{finite global vacuum} \xrightarrow{\operatorname{Tr}_L} \rho_R^{(\Lambda)} \xrightarrow{\text{fixed smeared/Weyl limit}} \omega_G|_{\mathfrak A(R)} \xrightarrow{\text{existing theorem}} \beta_{\mathrm{boost}}=2\pi\ \mathrm{KMS}.} \tag{13.1}
\end{align}$$

At finite cutoff, $\rho_R^{(\Lambda)}$ is a genuine normalized density operator with exact Williamson and modular data. In the continuum, the durable object is the algebraic state restriction, not a trace-class density matrix. The full global regulator also retains a nonzero $LR$ covariance converging to $G_{RL}^+$; partial trace discards it. This makes precise why a thermal regional marginal does not determine the global B2 state.

The remaining open item is narrower than the state-restriction problem: prove convergence of the finite modular quadratic forms or modular automorphisms to the boost modular action on a declared smooth analytic core. The current high-precision kernel pairings and real-flow correlators support that statement but are not its proof.

## Verified

- The factorizing finite global regulator, positive Hamiltonian, mass-matrix canonicalization, exact global Gaussian vacuum, finite partial trace, Williamson decomposition, normalized density operator, modular quadratic form, and entropy formula.
- The boost Killing vector, future orientation, stress-tensor charge, and $\sin\rho$ normalization in the right-wedge boost generator.
- Mosco/strong-resolvent and fixed-label functional-calculus convergence to the global Friedrichs state for the two displayed shape-regular regulators.
- Identification of that limiting state with the null-derived global vacuum and hence with the existing smeared $\beta=2\pi$ wedge-KMS theorem.
- Numerical convergence of $RR$, $LR$, momentum, Weyl, collar, and selected real boost-flow observables with all cutoffs and errors recorded.

## Assumptions

- Universal-cover AdS$_2$, signature $(-,+)$, $\hbar=1$, $\Delta\geq1$, and standard/Friedrichs falloff.
- The analytic convergence statements use fixed finite families of smooth Cauchy/Weyl labels and shape-regular mass-lumped partitions whose cut is a cell edge.
- The continuum modular identification uses the KMS theorem already proved in ads2-rindler global reconstruction.md; no new algebra classification is inserted.

## Not Verified

- Trace-norm convergence of $\rho_R^{(\Lambda)}$ or existence of a sharp continuum trace-class $\rho_R$.
- A sharp Hilbert-space factorization $\mathcal H_G=\mathcal H_L\otimes\mathcal H_R$, a product of Fulling Fock spaces, or a continuum partial-trace map.
- Norm convergence of $G_{\mathrm{mod},\Lambda}$, convergence of the complete finite modular group, or complex-time uniform convergence of the discretized boost flow.
- A theorem for the entropy coefficient or regulator-dependent constant.
- A Type III or Type III$_1$ classification. Such language is at most a structural interpretation consistent with the result, not a theorem established here.
- Alternate quantization, interacting fields, gauge theory, gravity, or any reinterpretation of the finite-$Z$ Neumann-wall construction as this regulator.
