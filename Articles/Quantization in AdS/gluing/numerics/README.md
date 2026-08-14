# Truncation and Diagonalization Programme

This directory tracks the systematic numerical study of the models in the parent `gluing` workspace. The reference calculation is `../finite_truncation.wl`, now including the cutoff-matched Neumann-interval benchmark from `quantum_neumann_gluing.pdf`.

## Numerical Contract

For a truncated set of canonical coordinates, write

$$\begin{align}
H_N=\frac12 P^{\mathrm T}G_N^{-1}P+\frac12Q^{\mathrm T}K_NQ.
\end{align}$$

When the kinetic matrix is the identity, the one-particle frequencies are the positive square roots of the eigenvalues of $K_N$. When boundary or gauge degrees of freedom contribute to the symplectic form, solve the generalized problem

$$\begin{align}
K_Nv_j=\omega_j^2G_Nv_j, \qquad v_i^{\mathrm T}G_Nv_j=\delta_{ij}.
\end{align}$$

For every model, the calculation should record:

1. the off-shell basis and the boundary traces it retains;
2. the matrices $G_N$ and $K_N$, including every interface contribution;
3. positivity, null directions, and the gauge quotient, when present;
4. comparison with an independent analytic spectrum or a finer regulator;
5. fixed-energy-window errors for eigenvalues and spectral subspaces;
6. the cutoff dependence of the bare interface coupling;
7. the exact claim tier reached.

A finite matrix identity, fixed-mode spectral convergence, convergence of smeared fields or correlators, Fock-space equivalence, and an interacting continuum QFT are separate claims. The first two do not imply the last three.

The companion script `analytic_structure_checks.wl` verifies the algebraic backbone used across the models: the finite-rank determinant lemma, exact boundary-response matching at a selected spectral point, the energy-dependent Maxwell kinetic pencil, the AdS--Rindler Gegenbauer transverse equation and cut response, and the strong-limit global-$\mathrm{AdS}_3$ degeneracies. The polished statements are recorded in `../article/1_gluing_formalism.md` and `../ads-rindler gluing.md`.

The calculations separate three regulator structures. Stiffness defects are ordinary finite-rank updates and admit $A_N=(A^{-1}+T_N(0))^{-1}$ low-energy matching. Kinetic defects change the CPS metric and lead to a generalized eigenproblem with energy-dependent matching. Presymplectic theories such as pure Chern--Simons require constraint, pullback, and quotient rather than frequency diagonalization. These structures share an interface interpretation but not a common finite matrix problem.

## Model Inventory

| Track | Source notes | Finite problem | Primary check | Status |
|---|---|---|---|---|
| Neumann scalar on two intervals | `continuous theory I.md`, `article/2_interval_scalar.md`, `finite truncation.md` | Rank-one update of the two decoupled Neumann stiffness matrices | Exact even tower and $k\tan(kL)=2g$ odd tower | Baseline reproduced |
| Dirichlet-to-glued scalar interpolation | `continuous theory I.md`, `article/appendix_a_dirichlet.md` | Boundary-value penalty with both $\mu/\kappa$ and $\mu\kappa$ blocks | Two parity secular equations and both endpoint spectra | Finite-$\kappa$ benchmark reproduced; two-coefficient matching verified |
| Uniform periodic scalar lattice | `lattice theory.md` | Exact site stiffness matrix and Dirichlet/Neumann mode decompositions | Periodic dispersion, Bogoliubov identities, and fixed-mode continuum limit | Exact finite lattice and convergence scan verified |
| Global $\mathrm{AdS}_2$ scalar | `continuous theory V.md`, `article/3_scalar_geometries.md` | Half-space Neumann Galerkin basis plus a rank-one trace penalty | $D_\Delta(\omega)=2g$ and $\omega_n=\Delta+n$ at strong gluing | $\Delta=2$ benchmark and response matching verified |
| Four quadrants of a flat square | `continuous theory V.md`, `article/3_scalar_geometries.md` | Four subdomain bases with four trace-penalty blocks | Tensor-product answer for separable couplings; refinement for four unrelated couplings | Separable identity and nonseparable response matching verified |
| Global $\mathrm{AdS}_3$ angular wedges | `continuous theory II.md` | Truncated angular wedge modes, followed by the radial Jacobi problem | Transfer-matrix condition and global $\ell\in\mathbb Z$ spectrum | Unequal-wedge monodromy roots and matrix response matching verified |
| Global-time completion of AdS--Rindler halves | `ads-rindler gluing.md` | Transverse rank-one Robin problem in the $\mathrm{AdS}_2$ slicing, followed by exact $\mathrm{AdS}_2$ towers | Noninteger Gegenbauer response and recovery of the global spectrum | Finite-$\kappa$ spectrum and matching verified; not a direct horizon-gluing problem |
| Intrinsic AdS--Rindler scalar | `ads-rindler gluing.md` | Continuous horizon scattering basis with brick-wall spectral regulator | Hypergeometric radial equation, CPS normalization, closed global/Rindler kernels, and Unruh thermal factor | Generalized-mode identities verified; no sharp-wedge Fock factorization claimed |
| Maxwell theory on a cut cylinder | `continuous theory III.md`, `article/4_maxwell.md`, `article/appendix_a_dirichlet.md` | Fourier decomposition in $y$ and a generalized eigenproblem in $x$ including the cut CPS term | Dual-scalar towers, CPS norms, and the single global holonomy pair | Finite-$g$ and Dirichlet-to-glued generalized spectra verified |
| Compact $U(1)_k$ Chern--Simons theory | `continuous theory IV.md` | Fourier-truncated presymplectic constraint and quotient, not a stiffness-matrix interpolation | Cancellation of cut current modes and reduction to the global holonomy pair | Exact finite-cutoff reduction verified |

## Baseline: Two Neumann Intervals

For equal half-lengths $\ell$, mass $m>0$, and modes $n=0,\ldots,N$ on each side,

$$\begin{align}
K_N=K_{0,N}+\kappa_{\mathrm{trunc}}cc^{\mathrm T},
\end{align}$$

where $c$ is the vector of left-minus-right boundary values. At fixed $N$, hard gluing is the restriction to $c^{\mathrm T}Q=0$ and removes one finite-dimensional direction. The low-energy cutoff-matched coupling for perfect continuum gluing is

$$\begin{align}
\kappa_{\mathrm{trunc}}=\frac{\pi^2N}{4\ell}.
\end{align}$$

An independent Mathematica evaluation reproduced the PDF's maximum relative error among the first eight frequencies:

| $N$ | Hard constraint | Cutoff matched |
|---:|---:|---:|
| 8 | $2.5151\times10^{-2}$ | $1.2114\times10^{-3}$ |
| 16 | $1.2445\times10^{-2}$ | $3.3827\times10^{-4}$ |
| 32 | $6.2371\times10^{-3}$ | $8.9449\times10^{-5}$ |
| 64 | $3.1276\times10^{-3}$ | $2.3005\times10^{-5}$ |
| 128 | $1.5668\times10^{-3}$ | $5.8738\times10^{-6}$ |

Thus direct hard projection is $O(N^{-1})$ in this test, while the matched coupling cancels the leading omitted-boundary-response error and gives $O(N^{-2})$ low-energy convergence. The statement is uniform only on a fixed spectral window; it is not uniform up to a cutoff-dependent ultraviolet energy.

## First Extension: Dirichlet-to-Glued Interpolation

The strict Dirichlet modes vanish at the cut and therefore cannot serve as an off-shell truncation basis for a boundary-value interaction. The script `interval_dirichlet_interpolation.wl` instead uses modes that are Dirichlet at the physical endpoint and Neumann at the artificial cut,

$$\begin{align}
k_n=\frac{(n+\frac12)\pi}{L}, \qquad b_n=(-1)^n\sqrt{\frac2L}.
\end{align}$$

In the common and relative reflection sectors, the continuum boundary stiffnesses are

$$\begin{align}
\alpha_+=\frac\mu\kappa, \qquad \alpha_-=\mu\left(\frac1\kappa+2\kappa\right).
\end{align}$$

Each is a rank-one update. The zero-energy response of the omitted modes is

$$\begin{align}
T_N(0) =\sum_{n=N+1}^{\infty}\frac{b_n^2}{k_n^2} =\frac{2L}{\pi^2}\,\psi_1\!\left(N+\frac32\right),
\end{align}$$

and the low-energy matched coefficients obey

$$\begin{align}
\frac1{\alpha_{\sigma,N}} =\frac1{\alpha_\sigma}+T_N(0), \qquad \sigma=\pm.
\end{align}$$

For $L=m=\mu=1$, $\kappa\in\{0.1,1,5\}$, and the first eight frequencies, direct truncation has $O(N^{-1})$ error. Matching the two sector coefficients independently gives errors from $5.93\times10^{-4}$ at $N=8$ down to $1.41\times10^{-6}$ at $N=64$ for $\kappa=0.1,5$, and from $8.45\times10^{-5}$ down to $2.04\times10^{-7}$ for $\kappa=1$.

Writing the regulated boundary form as

$$\begin{align}
d_N(q_1^2+q_2^2)+h_N(q_1-q_2)^2,
\end{align}$$

the matched values are $d_N=\alpha_{+,N}$ and $h_N=(\alpha_{-,N}-\alpha_{+,N})/2$. In general $d_Nh_N\neq\mu^2$. Therefore the continuum one-parameter relation $d=\mu/\kappa$, $h=\mu\kappa$ is not preserved by this low-energy cutoff matching: the two allowed quadratic boundary operators require independent bare coefficients if both parity sectors are to be accelerated simultaneously.

## Uniform Periodic Scalar Lattice

The script `uniform_periodic_lattice.wl` treats the uniform regulator of `lattice theory.md`; the separate nonuniform model is intentionally excluded. For an unequal split $N_1=7$, $N_2=10$, it constructs the site-space periodic stiffness matrix and reconstructs it in two independent ways:

1. two Dirichlet path matrices plus the two missing cross terms;
2. two Neumann path matrices plus the two positive missing-bond quadratic forms.

Both identities hold entry by entry with zero residual. Diagonalizing in the real periodic basis gives

$$\begin{align}
(\omega_r^{P})^2 =m^2+\frac4{\varepsilon^2}\sin^2\!\left(\frac{\pi r}{N}\right).
\end{align}$$

The overlap matrices with both product bases produce Bogoliubov matrices $\mathsf A,\mathsf B$ satisfying

$$\begin{align}
\mathsf A\mathsf A^{\mathrm T}-\mathsf B\mathsf B^{\mathrm T}=I, \qquad \mathsf A\mathsf B^{\mathrm T}-\mathsf B\mathsf A^{\mathrm T}=0
\end{align}$$

to 30-digit numerical precision. At fixed circumference $C=2\pi$, mass $m=1$, and fixed mode labels $r=0,\ldots,8$, the maximum frequency errors are $7.91\times10^{-1}$, $2.02\times10^{-1}$, $5.09\times10^{-2}$, and $1.27\times10^{-2}$ for $N=32,64,128,256$. This is the expected fixed-mode $O(N^{-2})$ lattice-dispersion convergence.

For equal Neumann halves, the periodic constant-mode row has $\mathsf B=0$ exactly at every tested cutoff. This does not make the complete continuum transformation unitary: the squared norm of the fixed half-chain $n=1$ Bogoliubov column increases from $0.1055$ at 16 sites per half to $0.2519$ at 128 sites per half, while $\operatorname{Tr}(\mathsf B\mathsf B^{\mathrm T})$ increases from $0.6510$ to $2.2230$. The finite lattice is exactly canonical at every $N$, but the numerical cutoff sequence retains the non-Hilbert--Schmidt obstruction described in the source note.

## Curved-Space Extension: Global $\mathrm{AdS}_2$

For the standard branch $\Delta>1$, the half-space Neumann basis consists of the normalized restrictions of the even global modes. Its free frequencies and origin traces are

$$\begin{align}
\omega_r^{(0)}=\Delta+2r, \qquad b_r=\sqrt2\,\frac{C_{2r}^{\Delta}(0)}{\sqrt{h_{2r}^{(\Delta)}}}.
\end{align}$$

The reflection-even tower is exact and unaffected. The reflection-odd truncated matrix is

$$\begin{align}
(K_N)_{rs} =(\Delta+2r)^2\delta_{rs}+2g\,b_rb_s.
\end{align}$$

Its continuum boundary resolvent is fixed by the exact response function:

$$\begin{align}
\sum_{r=0}^{\infty} \frac{b_r^2}{(\Delta+2r)^2-\omega^2} =-\frac1{D_\Delta(\omega)}.
\end{align}$$

Consequently, with $T_N^{\mathrm{AdS}_2}(0)$ equal to the omitted part of this sum at $\omega=0$, the low-energy matched coupling is

$$\begin{align}
\frac1{g_N}=\frac1g+2T_N^{\mathrm{AdS}_2}(0).
\end{align}$$

The script `global_ads2_scalar.wl` verifies this at $\Delta=2$. For the first six affected frequencies and $g=1$, the direct errors at $N=8,16,32,64$ are respectively $7.59\times10^{-3}$, $4.04\times10^{-3}$, $2.09\times10^{-3}$, and $1.06\times10^{-3}$. Response matching reduces them to $1.04\times10^{-4}$, $1.32\times10^{-5}$, $1.78\times10^{-6}$, and $2.35\times10^{-7}$. Thus the acceleration mechanism is a boundary-resolvent statement and is not special to flat intervals.

## Four Quadrants of a Flat Square

The script `four_quadrant_scalar.wl` uses a product Neumann basis on each quadrant. For truncation $0\leq n_x,n_y\leq N$, the matrix dimension is $4(N+1)^2$. Each half-axis interaction is a sum of positive rank-one updates: the vertical penalties are diagonal in the retained $y$ mode on each half-axis, and the horizontal penalties are diagonal in the retained $x$ mode.

When $g_x^-=g_x^+=g_x$ and $g_y^-=g_y^+=g_y$, the finite matrix agrees with the Kronecker sum of the two one-dimensional gluing matrices. The $N=4$ verification residual is $6.3\times10^{-13}$. With four unrelated couplings, the problem is genuinely nonseparable; exchanging $x$ and $y$ together with their coupling pairs leaves the spectrum invariant, with residual $1.2\times10^{-12}$. The constant mode remains exact for all nonnegative couplings.

For the nonseparable benchmark

$$\begin{align}
(g_x^-,g_x^+,g_y^-,g_y^+)=(0.4,1.1,0.7,2.0),
\end{align}$$

each local coupling is response matched using

$$\begin{align}
\frac1{g_{e,N}} =\frac1{g_e} +\frac{4L}{\pi^2}\psi_1(N+1),
\end{align}$$

where $e$ labels a half-axis. Relative to a matched $N=36$ reference, the maximum absolute error among the first twelve frequencies decreases from $1.96\times10^{-3}$ at $N=4$ to $8.28\times10^{-6}$ at $N=24$. The corresponding unmatched errors are $8.65\times10^{-2}$ and $1.44\times10^{-2}$. This is numerical refinement evidence; the $N=36$ reference is not an exact continuum solution.

## Global $\mathrm{AdS}_3$ Angular Wedges

The script `global_ads3_angular.wl` uses Neumann modes on wedges of lengths $\alpha$ and $\beta=2\pi-\alpha$. Order the four endpoint traces as

$$\begin{align}
q=(q_{1A},q_{1B},q_{2B},q_{2A})^{\mathrm T}.
\end{align}$$

The continuum boundary quadratic form is $q^{\mathrm T}A_\kappa q$, where $A_\kappa$ contains the four $1/\kappa$ penalties and the two $\kappa$ mismatch penalties. Because each wedge has two endpoints, its omitted-mode response is a $2\times2$ matrix,

$$
T_N^{(s)}(0)
=\frac{2s}{\pi^2}
\sum_{n=N+1}^{\infty}\frac1{n^2}
\begin{pmatrix}
1&(-1)^n\\
(-1)^n&1
\end{pmatrix},
$$

and the two wedge blocks form $T_N(0)$. The matched finite-cutoff boundary matrix is

$$\begin{align}
A_{\kappa,N} =\left(A_\kappa^{-1}+T_N(0)\right)^{-1}.
\end{align}$$

For the unequal split $\alpha=2\pi/3$, $\beta=4\pi/3$, and $\kappa=13/10$, the first twelve angular roots were checked against

$$\begin{align}
\operatorname{Tr}\!\left[J_\kappa P_\lambda(\beta) J_\kappa P_\lambda(\alpha)\right]-2=0.
\end{align}$$

The monodromy residual is below $10^{-30}$ and $\det M_\kappa=1$ to the same tolerance. The unmatched maximum absolute error decreases from $1.14\times10^{-1}$ at $N=8$ to $1.87\times10^{-2}$ at $N=32$; matrix matching reduces it from $2.68\times10^{-2}$ to $1.85\times10^{-4}$. Once $\lambda_j$ is obtained, the radial tower is lifted without further numerical approximation as $\omega_{n,j}=\Delta+2n+\lambda_j$.

The matrix $A_{\kappa,N}$ is positive in the tested range but is not generally of the original one-parameter form. Thus a single bare $\kappa_N$ does not encode the complete cutoff response of two unequal two-ended wedges; the regulator generates the full symmetry-allowed endpoint quadratic matrix.

## Maxwell Theory on a Cut Cylinder

The script `maxwell_cut_cylinder.wl` implements the gauge-invariant transition-field model after dualization. For each Fourier momentum $q_m=m/R$ along the circle, the $x$-dependent reflection-even field is expanded in the outer-Dirichlet/cut-Neumann basis

$$\begin{align}
k_n^{(0)}=\frac{(n+\frac12)\pi}{L}, \qquad b_n=\frac{(-1)^n}{\sqrt L}.
\end{align}$$

The bulk stiffness matrix is diagonal, while the cut term in the reduced CPS form changes the kinetic metric:

$$\begin{align}
K_N=\operatorname{diag}\!\left((k_n^{(0)})^2\right), \qquad G_N=I+\frac1g bb^{\mathrm T}, \qquad K_Nv=k^2G_Nv.
\end{align}$$

For $g>0$, $G_N$ is positive and the eigenvectors must be normalized with $v_i^{\mathrm T}G_Nv_j=\delta_{ij}$. The matrix determinant lemma reduces the finite problem to

$$\begin{align}
1-\frac{k^2}{g} \sum_{n=0}^{N}\frac{b_n^2}{(k_n^{(0)})^2-k^2}=0.
\end{align}$$

Mathematica independently verifies the continuum identity

$$\begin{align}
\sum_{n=0}^{\infty}\frac{b_n^2}{(k_n^{(0)})^2-k^2} =\frac{\tan(kL)}{2k},
\end{align}$$

so the affected tower obeys $k\tan(kL)=2g$. The reflection-odd tower has vanishing cut trace and remains exactly $k_{-,n}=n\pi/L$. The full oscillator frequencies are then

$$\begin{align}
\omega_{m,j}^2=q_m^2+k_j^2.
\end{align}$$

For $L=g=R=1$, the maximum absolute error among the first eight affected $k_j$ is $5.76\times10^{-1}$, $2.67\times10^{-1}$, $1.34\times10^{-1}$, and $6.80\times10^{-2}$ at $N=8,16,32,64$. At $N=24$, the generalized eigen-equation residual is $7.0\times10^{-37}$, the $G_N$-orthogonality residual is $1.0\times10^{-38}$, and the smallest eigenvalue of $G_N$ is one.

This model has a different cutoff structure from a boundary stiffness penalty. If $T_N(k)$ is the omitted response, exact matching at one chosen root requires

$$\begin{align}
g_N(k)=g-k^2T_N(k).
\end{align}$$

The correction vanishes at zero energy and depends on the selected root. Thus the zero-energy constant-coupling matching used for the scalar stiffness updates does not accelerate this generalized spectrum; matching a finite window requires energy-dependent boundary operators or an equivalent auxiliary-mode completion. The common spatial holonomy is a separate exact canonical pair and is not produced by diagonalizing the local dual-scalar oscillators. The relative holonomy is the $m=0$ member of the lowest affected oscillator tower.

The appendix interpolation is implemented separately in `maxwell_dirichlet_interpolation.wl`. Diagonalizing the boundary matrix gives common and relative coefficients

$$\begin{align}
\alpha_+=\frac\mu\kappa, \qquad \alpha_-=\mu\left(\frac1\kappa+2\kappa\right).
\end{align}$$

Each sector has the generalized pencil $K_N=\operatorname{diag}((k_n^{(0)})^2)$ and $G_{\sigma,N}=I+\alpha_\sigma^{-1}bb^{\mathrm T}$, now with $b_n=(-1)^n\sqrt{2/L}$. The continuum roots obey $k\tan(kL)=\alpha_\sigma$. For $L=\mu=1$, the maximum absolute errors among the first eight combined roots at $N=64$ are $1.53\times10^{-2}$, $2.91\times10^{-2}$, and $2.95\times10^{-2}$ for $\kappa=0.1,1,5$. The response sum, the two CPS-metric normalizations, and exact energy-dependent matching at a selected root were verified. As in the single-transition-field Maxwell model, no constant zero-energy counterterm accelerates a whole spectral window.

## Global-Time Completion of AdS--Rindler Halves

The script `ads_rindler_global_completion.wl` uses the global-time completion and invariant $\mathrm{AdS}_2$ defect of `ads-rindler gluing.md`. The finite defect is not separable in the usual global polar coordinates, but it is separable in the $\mathrm{AdS}_2$ slicing already used in that note,

$$\begin{align}
\mathrm ds^2=\mathrm dy^2+\cosh^2y\, \mathrm ds_{\mathrm{AdS}_2}^2.
\end{align}$$

Writing the effective $\mathrm{AdS}_2$ mass as $M^2=\delta_{\mathrm{eff}}(\delta_{\mathrm{eff}}-1)$, the transverse equation is

$$\begin{align}
-\partial_y\!\left(\cosh^2y\,\partial_yf\right) +m^2\cosh^2y\,f=M^2f.
\end{align}$$

For a bulk scalar of dimension $\Delta$, its decaying solution can be written with $\nu=\delta_{\mathrm{eff}}-\Delta$ as

$$\begin{align}
f_\nu(y)=\operatorname{sech}^{\Delta}y\, C_\nu^{\Delta-1/2}(\tanh y).
\end{align}$$

The exact finite-$\kappa$ roots in the common and relative sectors obey

$$\begin{align}
\frac{f_\nu'(0)}{f_\nu(0)}=a_\sigma, \qquad a_+=\kappa^{-1}, \qquad a_-=\kappa^{-1}+2\kappa.
\end{align}$$

The half-line Neumann Galerkin basis consists of the even full-line modes. Its diagonal entries and boundary traces are

$$\begin{align}
M_r^2=(\Delta+2r)(\Delta+2r-1), \qquad b_r=\sqrt2\, \frac{C_{2r}^{\Delta-1/2}(0)}{\sqrt{h_{2r}^{(\Delta-1/2)}}},
\end{align}$$

and each sector is the ordinary rank-one matrix $K_{\sigma,N}=\operatorname{diag}(M_r^2)+a_\sigma bb^{\mathrm T}$. The usual zero-energy response matching applies independently,

$$\begin{align}
\frac1{a_{\sigma,N}} =\frac1{a_\sigma}+T_N(0).
\end{align}$$

At $\Delta=2$ the complete zero-energy boundary response is exactly one. For $\kappa=13/10$ and the first eight $\delta_{\mathrm{eff}}$ roots, the common-sector matched error decreases from $3.73\times10^{-4}$ at $N=8$ to $5.61\times10^{-7}$ at $N=64$; the relative-sector error decreases from $7.26\times10^{-3}$ to $1.03\times10^{-5}$. The corresponding direct errors decrease only from $5.76\times10^{-3}$ to $8.01\times10^{-4}$ and from $3.67\times10^{-2}$ to $4.83\times10^{-3}$.

Every transverse root produces an exact global-$\mathrm{AdS}_2$ tower $\omega_{j,n}=\delta_{\mathrm{eff},j}+n$. In the strong-gluing limit the common sector approaches even $\nu$ and the relative sector approaches odd $\nu$; their union is $\delta_{\mathrm{eff},j}=\Delta+j$. Hence $\omega=\Delta+j+n$, with $N+1$ states at level $\Delta+N$, reproducing the standard global $\mathrm{AdS}_3$ scalar spectrum including its degeneracy. This is a spectral result for the global-time defect completion, not a two-exterior horizon action or a proof of continuum Rindler-Fock factorization.

## Intrinsic AdS--Rindler Scalar Modes

The script `ads_rindler_intrinsic_modes.wl` checks the logically separate quantization of the open right and left AdS--Rindler wedges. For $m^2=\Delta(\Delta-2)$ it verifies the standard-normalizable radial generalized eigenfunction

$$\begin{align}
f_{\omega k}(\rho)
=\rho^{-\Delta}(1-\rho^{-2})^{-i\omega/2}
{}_2F_1\!\left(
\frac{\Delta-i\omega+ik}{2},
\frac{\Delta-i\omega-ik}{2};
\Delta;\rho^{-2}
\right)
\end{align}$$

against the radial equation at three independent parameter points. Its horizon connection coefficient gives the exact CPS normalization recorded in `../ads-rindler gluing.md`; the script checks the resulting algebraic normalization identity and the independent global Jacobi-mode normalization.

For the half-circle boundary diamond, the global-to-Rindler boundary transform factorizes into

$$\begin{align}
\mathcal I_{h,N}(q)
=(-i)^N2^he^{\pi q/2}
\frac{\Gamma(h+iq)\Gamma(h-iq)}{\Gamma(2h)}
{}_2F_1(-N,h-iq;2h;2).
\end{align}$$

Numerical integration at three noninteger $h,q$ samples agrees with this closed expression to better than $1.1\times10^{-28}$. The script also verifies

$$\begin{align}
\mathcal I_{h,N}(-q)&=(-1)^Ne^{-\pi q}\mathcal I_{h,N}(q)^*,\\
\beta^R_{n\ell;\omega k}&=(-1)^\ell e^{-\pi\omega}\alpha^{R*}_{n\ell;\omega k},
\end{align}$$

and the canonical commutator of the corresponding Unruh oscillators. These are generalized-mode, Fourier-kernel, and thermal-analyticity checks. They do not prove a literal tensor-product factorization of sharp wedge Hilbert spaces, a complete null-boundary variational principle, or interacting KMS renormalization.

## Compact $U(1)_k$ Chern--Simons Theory

The script `chern_simons_cut_reduction.wl` implements the Fourier-truncated presymplectic reduction in `continuous theory IV.md`. There is no local bulk photon spectrum and no finite-$\kappa$ stiffness interpolation. For a positive Fourier number $m$, write the real cut phases as

$$\begin{align}
\lambda_A(y)=q_A\cos(my)+p_A\sin(my).
\end{align}$$

With cut normals $n_{0_1}=+1$ and $n_{0_2}=-1$, the two cut blocks are

$$\begin{align}
\Omega_{\Gamma,m} =\frac{km}{2}\left(\mathrm dq_1\wedge\mathrm dp_1 -\mathrm dq_2\wedge\mathrm dp_2\right).
\end{align}$$

The matching embedding sets $(q_1,p_1)=(q_2,p_2)$. Its pullback is identically zero for every $m$, so the common cut variation is entirely null and the quotient removes all nonzero cut-current modes. For Fourier cutoffs $M=1,2,4,8,16$, the product matrices have dimensions $4M$ and full rank $4M$; after matching, the dimensions are $2M$, the pullback ranks are exactly zero, and the nullities are exactly $2M$. Thus this result is exact at every cutoff, with no extrapolation in $M$.

For the zero modes, start from the two regional holonomy pairs,

$$\begin{align}
\Omega_{\mathrm{top}} =\frac{k}{2\pi}\left( \mathrm d\mathcal W_{x,1}\wedge\mathrm d\mathcal W_{y,1} +\mathrm d\mathcal W_{x,2}\wedge\mathrm d\mathcal W_{y,2} \right).
\end{align}$$

On $\mathcal W_{y,1}=\mathcal W_{y,2}$, the three-dimensional matching surface has rank two and one null vector, the relative $\mathcal W_x$ direction. Quotienting leaves

$$\begin{align}
\Omega_{\mathrm{red}} =\frac{k}{2\pi}\, \mathrm d(\mathcal W_{x,1}+\mathcal W_{x,2}) \wedge\mathrm d\mathcal W_y,
\end{align}$$

exactly the uncut-cylinder holonomy form. If the physical outer endpoints are also identified, the prequantization number of the resulting holonomy torus is $k$ and the compact $U(1)_k$ Hilbert-space dimension is $|k|$. The script checks this explicitly at $k=3$. Large-gauge winding sectors still depend on the outer-boundary quotient convention stated in the source note; the local finite-mode reduction does not decide that global choice.

## Execution Order

1. Compare eigenvectors, spectral projectors, and smeared two-point functions only when a stronger claim than fixed-window spectral convergence is needed.
2. Treat interacting gluing as a separate project; none of the finite Gaussian benchmarks establishes it.

## Current Verification Boundary

Verified: the PDF was checked by both text extraction and rendered-page inspection; its Neumann-interval tables were independently reproduced with a finite symmetric-matrix calculation. The uniform periodic lattice was checked in both Dirichlet and Neumann product bases, including its Bogoliubov identities and fixed-mode continuum dispersion. The Dirichlet-to-glued interval spectrum was checked against both parity secular equations, the global $\mathrm{AdS}_2$ spectrum was checked against $D_\Delta(\omega)=2g$, the separable four-quadrant matrix was checked against an exact finite Kronecker sum, and the unequal global-$\mathrm{AdS}_3$ angular roots were checked against the exact monodromy equation. The Maxwell cut-cylinder generalized spectrum was checked against both the exact response sum and $k\tan(kL)=2g$, including positivity and $G_N$-orthonormality. The AdS--Rindler global-time completion was checked against the noninteger Gegenbauer Robin response, the transverse ODE, both endpoint spectra, and the global-spectrum strong limit. The Chern--Simons cut-current and holonomy reductions agree exactly with the uncut presymplectic form at every tested Fourier cutoff. All stored regressions pass.

Assumptions: $m>0$, equal half-lengths for the displayed flat-interval cutoff formula, the decoupled Neumann basis includes its constant mode, the displayed curved-space tables use the standard branch at $\Delta=2$, and errors are evaluated in a fixed low-energy window. The nonseparable square convergence table uses a finer matched truncation as its reference rather than an exact continuum spectrum. The Maxwell calculation assumes $g>0$, outer dual-scalar Dirichlet conditions, and the gauge-invariant transition-field reduction stated in the source notes. The AdS--Rindler calculation concerns the global-time $\mathrm{AdS}_2$-plane defect, not intrinsic horizon matching.

Not verified: continuum Fock equivalence except for the displayed lattice obstruction evidence, pointwise composite operators, interacting gluing, and any universal cutoff-running coefficient beyond the equal-interval Neumann benchmark.
