# Smooth-Interface Gaussian Regulator

> Status: a normalized smooth lower-order interface potential gives a uniformly controlled energy comparison and a Hilbert--Schmidt Bogoliubov map at every finite coupling. Its zero-width limit is a finite-strength point interaction with the same properties. The exact left--right split is instead the strong-coupling limit, where both properties fail.

## 1. Verdict

Direct smoothing is sufficient for a connected Gaussian bridge; no independent collar Hilbert factor is needed.

The appropriate deformation is not a discontinuous product Hamiltonian and not a rapidly varying coefficient in the principal part. Keep the scalar principal symbol fixed and add a normalized smooth lower-order potential

$$
A_{\epsilon,g}=A_0+g w_\epsilon,
\qquad
A_0=-\partial_x^2+m^2,
$$

on $[-L,L]$ with physical Dirichlet conditions, where $m>0$, $g\geq0$, $w_\epsilon\geq0$, and $\int w_\epsilon=1$. Then:

1. for every fixed finite $(\epsilon,g)$, the two energy norms are equivalent and the Gaussian Bogoliubov creation block is Hilbert--Schmidt;
2. at fixed finite $g$, the limit $\epsilon\to0$ is the point interaction $A_g=A_0+g\delta_0$, still with equivalent energy norms and Hilbert--Schmidt creation block;
3. the finite-$g$ state is connected and does not factorize into left and right vacua;
4. exact decoupling requires $g\to\infty$, in which limit the energy condition number diverges and the sharp Neumann-to-Dirichlet comparison is not Hilbert--Schmidt.

Thus smoothing solves the finite-coupling comparison problem, but it does not make exact tensor factorization Fock-unitary.

## 2. Declared Smooth Profile

Use the compactly supported bump

$$
b(s)=
\begin{cases}
\exp\!\left(1-\dfrac1{1-s^2}\right),&|s|<1,\\
0,&|s|\geq1,
\end{cases}
\qquad
c_b=\int_{-1}^1b(s)\,\mathrm ds,
$$

and its point-normalized rescaling

$$
w_\epsilon(x)=\frac1{\epsilon c_b}b\!\left(\frac{x}{\epsilon}\right).
$$

Then

$$
w_\epsilon\in C_c^\infty((-\epsilon,\epsilon)),
\qquad
w_\epsilon\geq0,
\qquad
\int_{-L}^Lw_\epsilon(x)\,\mathrm dx=1.
$$

The $1/\epsilon$ normalization is essential. A fixed-height barrier would disappear as $\epsilon\to0$ and would not test a nontrivial point interface.

The transition band $(-\epsilon,\epsilon)$ is only the support of the coupling. It is not treated as a third subsystem and introduces no independent collar modes.

## 3. Continuum Energy Forms

On the common form domain $H_0^1([-L,L])$, define

$$
q_0[\phi]
=\int_{-L}^L\left(|\phi'|^2+m^2|\phi|^2\right)\mathrm dx,
$$

and

$$
q_{\epsilon,g}[\phi]
=q_0[\phi]+g\int_{-L}^Lw_\epsilon(x)|\phi(x)|^2\,\mathrm dx.
$$

Let $G_m(x,y)$ be the Dirichlet Green kernel of $A_0$. Point evaluation is continuous in the $q_0$ norm and

$$
|\phi(x)|^2\leq G_m(x,x)q_0[\phi].
$$

The diagonal is maximal at the midpoint:

$$
\max_{x\in[-L,L]}G_m(x,x)
=G_m(0,0)
=\frac{\tanh(mL)}{2m}.
$$

Because $w_\epsilon$ is nonnegative and point-normalized,

$$
q_0[\phi]
\leq q_{\epsilon,g}[\phi]
\leq
\left(1+g\frac{\tanh(mL)}{2m}\right)q_0[\phi].
$$

This bound is uniform in $\epsilon$. It uses the energy topology and does not depend on the diverging quantity $\|w_\epsilon\|_\infty=O(\epsilon^{-1})$.

## 4. Common Finite Regulator

For the numerical check, divide $[-1,1]$ into $N$ cell-centered variables with spacing $h=2/N$. Use the same mass matrix and connected stiffness matrix for both theories:

$$
M_N=h\mathbf1_N,
\qquad
K_{0,N}=\frac1h B_N^{\mathsf T}B_N+m^2M_N.
$$

The rows of $B_N$ are the nearest-neighbour differences with the two physical Dirichlet endpoint contributions. The smooth deformation is

$$
K_{\epsilon,g,N}
=K_{0,N}+gh\,\operatorname{diag}\bigl(w_\epsilon(x_1),\ldots,w_\epsilon(x_N)\bigr).
$$

The sampled profile is renormalized so that

$$
h\sum_{j=1}^Nw_\epsilon(x_j)=1.
$$

Both Hamiltonians live on the same $2N$-dimensional phase space. If $U_0$ and $U_{\epsilon,g}$ are Euclidean-orthonormal eigenvector matrices of $M_N^{-1}K_{0,N}$ and $M_N^{-1}K_{\epsilon,g,N}$, then

$$
O_N=U_0^{\mathsf T}U_{\epsilon,g}
$$

is orthogonal. The normal-coordinate map

$$
Q_0=O_NQ_{\epsilon,g},
\qquad
P_0=O_NP_{\epsilon,g}
$$

is exactly symplectic. Writing the two diagonal frequency matrices as $\Omega_0$ and $\Omega_{\epsilon,g}$, its Bogoliubov blocks are

$$
\begin{aligned}
\alpha_N
&=\frac12\left(
\Omega_0^{1/2}O_N\Omega_{\epsilon,g}^{-1/2}
+\Omega_0^{-1/2}O_N\Omega_{\epsilon,g}^{1/2}
\right),\\
\beta_N
&=\frac12\left(
\Omega_0^{1/2}O_N\Omega_{\epsilon,g}^{-1/2}
-\Omega_0^{-1/2}O_N\Omega_{\epsilon,g}^{1/2}
\right).
\end{aligned}
$$

No finite-$N$ mode is added, deleted, or projected out.

## 5. Fixed-Width Hilbert--Schmidt Theorem

For fixed $\epsilon>0$ and finite $g$, the multiplication operator

$$
V_{\epsilon,g}=g w_\epsilon
$$

is bounded. The basis-independent creation block can be written as

$$
\beta_{\epsilon,g}
=\frac12A_0^{-1/4}
\left(A_0^{1/2}-A_{\epsilon,g}^{1/2}\right)
A_{\epsilon,g}^{-1/4}.
$$

Since $A_0,A_{\epsilon,g}\geq m^2$, the square-root difference is bounded. For example, the standard integral representation of the square root gives a norm estimate depending on $m$ and $\|V_{\epsilon,g}\|$, but not on mode number.

In one spatial dimension,

$$
A_0^{-1/4}\in\mathfrak S_4,
\qquad
A_{\epsilon,g}^{-1/4}\in\mathfrak S_4,
$$

because

$$
\operatorname{Tr}A_0^{-1}
=\sum_{r=1}^\infty
\frac1{m^2+(r\pi/(2L))^2}
=\frac Lm\coth(2mL)-\frac1{2m^2}<\infty,
$$

and $A_{\epsilon,g}\geq A_0$. The Schatten Hölder inequality therefore gives

$$
\beta_{\epsilon,g}\in
\mathfrak S_4\,\mathcal B\,\mathfrak S_4
\subset\mathfrak S_2.
$$

Hence the fixed-width Gaussian comparison is Fock-unitarily implementable.

This argument is dimension-sensitive: it uses the one-dimensional trace estimate and is not, by itself, a higher-dimensional theorem.

## 6. Zero-Width Limit at Finite Coupling

For every $\phi\in H_0^1([-L,L])$,

$$
\int w_\epsilon(x)|\phi(x)|^2\,\mathrm dx
\longrightarrow |\phi(0)|^2.
$$

Indeed,

$$
|\phi(x)-\phi(0)|
\leq |x|^{1/2}\|\phi'\|_{L^2},
$$

so the form difference is $O(\epsilon^{1/2})$ relative to $q_0$ on the $q_0$-unit ball. Thus $q_{\epsilon,g}$ converges in form norm to

$$
q_g[\phi]=q_0[\phi]+g|\phi(0)|^2,
\qquad
\operatorname{Dom}q_g=H_0^1([-L,L]).
$$

The associated operator is the finite-strength point interaction

$$
A_g=A_0+g\delta_0,
$$

with continuity at $x=0$ and derivative jump

$$
\phi'(0^+)-\phi'(0^-)=g\phi(0).
$$

Its exact energy-topology condition number relative to $q_0$ is

$$
\kappa_E(g)
=1+gG_m(0,0)
=1+g\frac{\tanh(mL)}{2m}.
$$

The upper endpoint is attained by the Green representer of evaluation at the midpoint; the lower endpoint is one on the infinite-dimensional subspace $\phi(0)=0$.

## 7. Exact Point-Interaction Bogoliubov Estimate

Reflection odd modes vanish at $x=0$ and are unchanged by the point interaction. On the even sector, restrict to $[0,L]$. The undeformed modes $u_p$ obey

$$
u_p'(0)=0,
\qquad
u_p(L)=0,
\qquad
k_p=\frac{(p+1/2)\pi}{L},
$$

whereas the deformed modes $v_j$ obey

$$
v_j'(0)=\frac g2v_j(0),
\qquad
v_j(L)=0,
\qquad
k_j\cot(k_jL)=-\frac g2.
$$

Green's identity gives

$$
(k_p^2-k_j^2)\langle u_p,v_j\rangle
=-\frac g2u_p(0)v_j(0).
$$

Set

$$
\Omega_p=\sqrt{m^2+k_p^2},
\qquad
\omega_j=\sqrt{m^2+k_j^2}.
$$

The frequency difference in the Bogoliubov coefficient cancels the spectral denominator:

$$
\begin{aligned}
\beta_{pj}
&=\frac12\langle u_p,v_j\rangle
\left(\sqrt{\frac{\Omega_p}{\omega_j}}
-\sqrt{\frac{\omega_j}{\Omega_p}}\right)\\
&=-\frac g4
\frac{u_p(0)v_j(0)}
{(\Omega_p+\omega_j)\sqrt{\Omega_p\omega_j}}.
\end{aligned}
$$

For fixed finite $g$, the normalized boundary amplitudes $u_p(0)$ and $v_j(0)$ are uniformly bounded. Consequently

$$
|\beta_{pj}|^2
\leq
\frac{C_g}{(p+1)(j+1)(p+j+2)^2},
$$

and the double series converges. Therefore

$$
\beta_g\in\mathfrak S_2
$$

also after the zero-width limit. The fixed-$\epsilon$ Schatten argument and the point-interaction mode estimate are independent checks of the two stages.

## 8. Strong Coupling and Exact Splitting

The forms $q_g$ increase monotonically as $g\to\infty$. Their limit has the smaller domain

$$
\operatorname{Dom}q_\infty
=\{\phi\in H_0^1([-L,L]):\phi(0)=0\},
$$

so $A_\infty$ is the direct sum of the two half-interval Dirichlet operators. This is the exact left--right split.

It is not a controlled limit in the original connected energy topology:

$$
\kappa_E(g)=1+g\frac{\tanh(mL)}{2m}\longrightarrow\infty.
$$

The Fock obstruction can also be seen directly. On $[0,L]$, the $g=\infty$ comparison is between Neumann--Dirichlet modes $u_p$ and Dirichlet--Dirichlet modes $v_j$. Green's identity now gives a numerator proportional to $v_j'(0)=O(j)$, and for each fixed $p$,

$$
|\beta_{pj}|^2\asymp\frac{C_p}{j}.
$$

Hence one row already fails to lie in $\ell^2$. The exact split is not Fock-unitarily equivalent to the connected vacuum representation.

The finite-$g$ family therefore approaches the split only through a singular, non-uniform limit. Its success at each finite $g$ must not be promoted to a theorem at $g=\infty$.

## 9. Numerical Results at $L=m=1$

The script `numerics/smooth_interface_gaussian_checks.wl` uses the common mass-lumped lattice above.

At fixed $\epsilon=1/4$ and $g=4$:

| $N$ | $\kappa_E$ | $\|\beta_N\|_{\mathrm{HS}}^2$ |
|---:|---:|---:|
| 64 | 2.311258 | 0.0420067 |
| 128 | 2.310773 | 0.0419737 |
| 256 | 2.310639 | 0.0419652 |
| 512 | 2.310606 | 0.0419631 |

The partial Hilbert--Schmidt sum stabilizes rather than growing with $N$.

For the simultaneous point-interaction sequence $\epsilon=h=2/N$ at $g=4$:

| $N$ | active cells | $\kappa_E$ | $\|\beta_N\|_{\mathrm{HS}}^2$ |
|---:|---:|---:|---:|
| 64 | 2 | 2.492090 | 0.0441795 |
| 128 | 2 | 2.507601 | 0.0438276 |
| 256 | 2 | 2.515385 | 0.0435741 |
| 512 | 2 | 2.519284 | 0.0434176 |

The energy condition approaches the exact point-interaction value

$$
1+2\tanh1=2.523188\ldots.
$$

At fixed $N=512$ and $\epsilon=1/4$, increasing the coupling gives:

| $g$ | $\kappa_E$ | $\|\beta_N\|_{\mathrm{HS}}^2$ |
|---:|---:|---:|
| 1 | 1.327651 | 0.0047490 |
| 4 | 2.310606 | 0.0419631 |
| 16 | 6.242422 | 0.213950 |
| 64 | 21.969688 | 0.725161 |
| 256 | 84.878753 | 2.022368 |

This is finite-regulator evidence for the analytically identified loss of uniform control as $g\to\infty$.

Across all tested rows, the profile mass residual is below $10^{-12}$, the mass condition number is exactly one, the symplectic and Bogoliubov CCR residuals are below $10^{-10}$, and the connected-Hamiltonian basis-change residual is below $10^{-8}$. The script also returns zero for the trace-resolvent and point-interaction frequency-cancellation identities.

## 10. Relation to Observable Smearing and a Collar

This construction differs from `smeared-interface-regulator.md`. Observable smearing leaves the connected Hamiltonian unchanged and regularizes a selected canonical pair. Here the entire Gaussian Hamiltonian is changed by the smooth interface potential, so there is a genuine global-to-deformed Gaussian comparison.

It also differs from `full-collar-galerkin-quantum-test.md`. The transition band is not promoted to a third tensor factor. The full field remains connected across it, and the lower-order potential supplies smooth finite-strength correlation rather than a sharply decoupled three-region product state.

Therefore:

- if the target is a controlled connected interface bridge, the smooth-potential family is sufficient and an independent collar is unnecessary;
- if the target is a type-I split factor or a literal left--right product state, this family does not supply it;
- adding a collar remains a separate algebraic split-property route, not a prerequisite for the present Gaussian comparison.

## 11. Consequence for the Project

The next quantum calculation may use a fixed finite $g$ smooth-interface vacuum as a legitimate Fock reference and compute its two-point functions, overlap, and relative particle number. Those quantities describe a connected soft interface.

They must not be called entanglement across a factorized left--right Hilbert space unless an independent split factor is specified. Nor should $g\to\infty$ be taken inside a claim of uniform Fock equivalence.

## Verified

- The uniform energy-form inequality and exact finite-$g$ point-interaction condition number.
- Hilbert--Schmidt implementability for fixed $\epsilon>0$ and finite $g$ by the one-dimensional Schatten estimate.
- Form-norm convergence of the normalized smooth potential to the finite-strength point interaction at fixed $g$.
- Hilbert--Schmidt implementability of the finite-$g$ point interaction by the exact even-sector coefficient estimate.
- Divergence of the energy condition and non-Hilbert--Schmidt sharp split at $g=\infty$.
- The finite-dimensional symplectic, connected-Hamiltonian basis-change, and Bogoliubov identities in `numerics/smooth_interface_gaussian_checks.wl`; the script returns exit code zero and `AllChecksPassed -> True`.

## Assumptions

- One real free scalar in one spatial dimension, $L>0$, $m>0$, physical Dirichlet conditions at $x=\pm L$, centered nonnegative point-normalized profile, and $g\geq0$.
- The Gaussian comparison is between the ground-state complex structures of $A_0$ and $A_{\epsilon,g}$ on their common phase space.
- The point-interaction conclusion takes $\epsilon\to0$ at fixed finite $g$; exact splitting is the distinct limit $g\to\infty$.
- Displayed finite-matrix data use $L=m=1$ and machine-precision symmetric eigensystems through $N=512$.

## Not Verified

- A factorizing left--right product representation or a preferred type-I split factor supplied by the smooth potential.
- Uniform Hilbert--Schmidt control as $g\to\infty$; the analytic result is instead that the limit fails.
- Entropy, Rényi entropy, modular Hamiltonian, or mutual information for an independently specified split algebra.
- Regulator-profile independence of finite covariance constants or finite-$g$ particle number.
- Higher-dimensional, interacting, gauge-theory, or gravitational extensions.
