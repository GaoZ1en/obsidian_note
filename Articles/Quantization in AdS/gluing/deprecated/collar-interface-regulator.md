# Positive-Collar Interface Regulator

> Status: the finite collar is treated as a genuine third spatial region, not as a deleted gap. Its exact frequency-domain Dirichlet-to-Neumann response, low-width common/relative limit, and a concrete pair of exterior edge probes are verified in `numerics/collar_regulator_checks.wl`. A complete-collar Galerkin follow-up in `full-collar-galerkin-quantum-test.md` shows that the simplest three-region Neumann product state is not Fock-equivalent to the connected vacuum even at fixed positive width. A smoothly correlated split-state construction and regional entropy remain open.

## 1. Verdict

Introduce a geometric collar

$$\begin{align}
C_\epsilon&=[-\epsilon,\epsilon],
&
\Sigma_{L,\epsilon}&=[-L,-\epsilon],
&
\Sigma_{R,\epsilon}&=[\epsilon,L].
\end{align}$$

The collar has two independent boundary histories $q_L(t)$ and $q_R(t)$ at finite $\epsilon$. Integrating its classical field equation at a fixed frequency gives a $2\times2$ boundary response. In the common and relative channels,

$$\begin{align}
D_{\mathrm c}(k,\epsilon)&=-k\tan(k\epsilon),
&
D_{\mathrm d}(k,\epsilon)&=k\cot(k\epsilon).
\end{align}$$

For fixed low $k$,

$$\begin{align}
D_{\mathrm c}(k,\epsilon)
&=-k^2\epsilon+O(\epsilon^3),
&
D_{\mathrm d}(k,\epsilon)
&=\frac1\epsilon-\frac{k^2\epsilon}{3}+O(\epsilon^3).
\end{align}$$

Thus the narrow collar suppresses a relative boundary mismatch while leaving the common channel dynamical. This recovers sharp continuity only as a controlled low-energy limit; it does not identify $q_L=q_R$ at finite width.

At the quantum level, the positive separation makes the left and right exterior local algebras commute with a nonzero buffer. A type-I split inclusion is available only under the standard split or nuclearity hypotheses and is not canonical. The explicit two-edge Gaussian calculation below supplies finite probe covariances, not a construction of the full split factor.

## 2. Three-Region Variational Problem

Keep the original connected scalar action and decompose its spatial integral into

$$\begin{align}
[-L,L]
&=\Sigma_{L,\epsilon}\cup C_\epsilon\cup\Sigma_{R,\epsilon}.
\end{align}$$

The physical outer Dirichlet conditions remain at $x=\pm L$. At $x=-\epsilon$ and $x=+\epsilon$, first identify the exterior and collar boundary values and then vary the two common histories independently. The two resulting equations are the oriented flux-matching conditions at the two collar boundaries.

The collar is not removed from the theory. Removing $C_\epsilon$ and imposing new Dirichlet conditions at $x=\pm\epsilon$ would define a different disconnected Hamiltonian and would reintroduce a sharp-boundary comparison at two new points.

## 3. Exact Collar Response

For a harmonic mode with $\Omega^2=m^2+k^2$, introduce

$$\begin{align}
s&=x+\epsilon\in[0,2\epsilon],
&
f(0)&=q_L,
&
f(2\epsilon)&=q_R.
\end{align}$$

Away from the collar Dirichlet poles $\sin(2k\epsilon)=0$, the solution is

$$\begin{align}
f(s)
&=
q_L\frac{\sin[k(2\epsilon-s)]}{\sin(2k\epsilon)}
+q_R\frac{\sin(ks)}{\sin(2k\epsilon)}.
\end{align}$$

Using the outward normal derivatives of the collar, define

$$\begin{align}
\begin{pmatrix}
-f'(0)\\ f'(2\epsilon)
\end{pmatrix}
&=
D_\epsilon(k)
\begin{pmatrix}q_L\\q_R\end{pmatrix}.
\end{align}$$

Then

$$\begin{align}
D_\epsilon(k)
&=
\frac{k}{\sin(2k\epsilon)}
\begin{pmatrix}
\cos(2k\epsilon)&-1\\
-1&\cos(2k\epsilon)
\end{pmatrix}.
\end{align}$$

The common vector $(1,1)$ and relative vector $(-1,1)$ diagonalize this matrix with the eigenvalues stated in Section 1. At $\sin(2k\epsilon)=0$, the eliminated formula is invalid and the collar Dirichlet modes must be restored from the original amplitude equations. No collar pole is deleted at finite $\epsilon$.

For the spatial quadratic form, the low-energy relative contribution is already visible from the linear interpolant:

$$\begin{align}
\frac12\int_{-\epsilon}^{\epsilon}dx\,|\partial_x\phi|^2
&\supset
\frac{(q_R-q_L)^2}{4\epsilon}.
\end{align}$$

Bounded form energy therefore forces $q_R-q_L\to0$ as $\epsilon\to0$. This is the classical continuity limit. The common value remains part of the global field and is not quotiented out.

## 4. Algebraic Role of the Buffer

Let $\mathcal A_{L,\epsilon}$ and $\mathcal A_{R,\epsilon}$ denote the local algebras generated in spacetime regions based on the two exterior intervals. Their closures are separated by the nonzero spatial buffer $C_\epsilon$, so locality gives

$$\begin{align}
[\mathcal A_{L,\epsilon},\mathcal A_{R,\epsilon}]&=0.
\end{align}$$

Under the model's required nuclearity or split hypothesis, one may seek a type-I factor $\mathcal N_\epsilon$ between the corresponding nested local algebras. Three limitations remain:

1. the split factor is not selected canonically by the collar width alone;
2. the existence statement does not specify a preferred product state;
3. the sharp limit $\epsilon\to0$ need not converge to a tensor factorization.

Consequently, the collar route naturally organizes algebraic separation and regulated state comparisons, but it does not by itself produce a unique canonical Bogoliubov map.

## 5. Concrete Exterior Edge Probes

To obtain explicit finite covariance matrices, choose the same tent profile

$$\begin{align}
f(s)&=(1-|s|)_+,
&
\widehat f(u)&=\frac{2(1-\cos u)}{u^2},
&
c_0&=\int_{-1}^{1}ds\,f(s)^2=\frac23.
\end{align}$$

Let $\sigma>0$ be the probe width and set

$$\begin{align}
a&:=\epsilon+\sigma,
\\
f_{L,\epsilon,\sigma}(x)
&:=\frac1\sigma
f\left(\frac{x+a}{\sigma}\right),
\\
f_{R,\epsilon,\sigma}(x)
&:=\frac1\sigma
f\left(\frac{x-a}{\sigma}\right).
\end{align}$$

Their supports are

$$\begin{align}
\operatorname{supp}f_L&=[-\epsilon-2\sigma,-\epsilon],
&
\operatorname{supp}f_R&=[\epsilon,\epsilon+2\sigma],
\end{align}$$

and are disjoint for every $\epsilon>0$. Define

$$\begin{align}
q_A&:=\phi(f_A),
&
p_A&:=\frac{\pi(f_A)}{\|f_A\|_{L^2}^2}
=\frac{\sigma}{c_0}\pi(f_A),
&
A&=L,R.
\end{align}$$

Disjoint support gives the exact two-pair CCR

$$\begin{align}
[q_A,p_B]&=i\delta_{AB},
&
[q_A,q_B]&=[p_A,p_B]=0.
\end{align}$$

These probes generate a concrete finite Weyl subalgebra of the two exterior local algebras. They do not exhaust either local algebra.

## 6. Common and Relative Darboux Pairs

Define

$$\begin{align}
q_{\mathrm c}&=\frac{q_L+q_R}{2},
&
p_{\mathrm c}&=p_L+p_R,
\\
q_{\mathrm d}&=\frac{q_R-q_L}{2},
&
p_{\mathrm d}&=p_R-p_L.
\end{align}$$

Then

$$\begin{align}
[q_{\mathrm c},p_{\mathrm c}]&=i,
&
[q_{\mathrm d},p_{\mathrm d}]&=i,
\end{align}$$

and all cross commutators vanish. In matrix form the configuration and momentum transformations obey

$$\begin{align}
T_qT_p^{\mathrm T}&=\mathbf1_2,
\\
T_q&=
\begin{pmatrix}
1/2&1/2\\-1/2&1/2
\end{pmatrix},
&
T_p&=
\begin{pmatrix}
1&1\\-1&1
\end{pmatrix}.
\end{align}$$

This is an exact finite-dimensional symplectic change of probe coordinates. It is separate from the collar DtN diagonalization, although reflection symmetry labels the two channels in the same way.

## 7. Connected-Mode Covariance

For

$$\begin{align}
e_r(x)&=\frac1{\sqrt L}\sin[k_r(x+L)],
&
k_r&=\frac{r\pi}{2L},
&
\Omega_r&=\sqrt{m^2+k_r^2},
\end{align}$$

the edge overlaps are

$$\begin{align}
F_{R,r}
&=\frac{\widehat f(k_r\sigma)}{\sqrt L}
\sin[k_r(L+a)],
\\
F_{L,r}
&=\frac{\widehat f(k_r\sigma)}{\sqrt L}
\sin[k_r(L-a)].
\end{align}$$

The common probe has only odd connected modes,

$$\begin{align}
G_{\mathrm c,r}
&:=\frac{F_{L,r}+F_{R,r}}2
=\frac{\widehat f(k_r\sigma)}{\sqrt L}
\sin(k_rL)\cos(k_ra),
\end{align}$$

while the relative probe has only even connected modes,

$$\begin{align}
G_{\mathrm d,r}
&:=\frac{F_{R,r}-F_{L,r}}2
=\frac{\widehat f(k_r\sigma)}{\sqrt L}
\cos(k_rL)\sin(k_ra).
\end{align}$$

With

$$\begin{align}
\|G_{\mathrm c}\|_{L^2}^2
=\|G_{\mathrm d}\|_{L^2}^2
=\frac{c_0}{2\sigma},
\end{align}$$

the vacuum covariances are

$$\begin{align}
V_{q,\mathrm c}
&=\sum_r\frac{G_{\mathrm c,r}^2}{2\Omega_r},
&
V_{p,\mathrm c}
&=\sum_r
\frac{\Omega_rG_{\mathrm c,r}^2}
{2\|G_{\mathrm c}\|_{L^2}^4},
\\
V_{q,\mathrm d}
&=\sum_r\frac{G_{\mathrm d,r}^2}{2\Omega_r},
&
V_{p,\mathrm d}
&=\sum_r
\frac{\Omega_rG_{\mathrm d,r}^2}
{2\|G_{\mathrm d}\|_{L^2}^4}.
\end{align}$$

Reflection parity makes the common-relative cross covariances vanish. Time-reversal invariance makes the symmetrized $q$--$p$ covariances vanish.

## 8. Simultaneous Narrow-Collar Limit

Take

$$\begin{align}
\sigma&=\kappa\epsilon,
&
\kappa&>0
\end{align}$$

with fixed $\kappa$. Then

$$\begin{align}
V_{q,\mathrm c}(\epsilon)
&=\frac1{2\pi}\log\frac L\epsilon
+C_{\mathrm c}(mL,\kappa,f)+o(1).
\end{align}$$

The common channel retains the point-field logarithm. The relative field covariance instead has a finite limit

$$\begin{align}
\lim_{\epsilon\to0}V_{q,\mathrm d}(\epsilon)
&=
\frac1{2\pi}
\int_0^\infty\frac{du}{u}
\widehat f(\kappa u)^2
\sin^2[(1+\kappa)u].
\end{align}$$

This finite quantum fluctuation does not contradict the classical form-energy suppression of a fixed boundary mismatch. The probes themselves shrink with $\epsilon$ and continue to sample ultraviolet vacuum fluctuations; the quantum field is not pointwise continuous as an operator.

For the declared benchmark $\kappa=1$,

$$\begin{align}
\lim_{\epsilon\to0}V_{q,\mathrm d}
&=
\frac1{2\pi}
\int_0^\infty\frac{du}{u}
\widehat f(u)^2\sin^2(2u)
\\
&=0.201705\ldots,
\\
\lim_{\epsilon\to0}V_{p,\mathrm c}
&=
\frac{2}{\pi c_0^2}
\int_0^\infty du\,u\widehat f(u)^2\cos^2(2u)
\\
&=1.937863\ldots,
\\
\lim_{\epsilon\to0}V_{p,\mathrm d}
&=
\frac{2}{\pi c_0^2}
\int_0^\infty du\,u\widehat f(u)^2\sin^2(2u)
\\
&=2.033578\ldots.
\end{align}$$

The common symplectic eigenvalue diverges like $\sqrt{\log(L/\epsilon)}$, while the relative one tends to the finite mixed value

$$\begin{align}
\nu_{\mathrm d}
&\longrightarrow
\sqrt{0.201705\ldots\times2.033578\ldots}
=0.640456\ldots.
\end{align}$$

## 9. Numerical Check at $L=m=1$ and $\sigma=\epsilon$

| $\epsilon$ | $V_{q,\mathrm c}$ | $V_{q,\mathrm d}$ | $V_{p,\mathrm c}$ | $V_{p,\mathrm d}$ | $\nu_{\mathrm c}$ | $\nu_{\mathrm d}$ |
|---:|---:|---:|---:|---:|---:|---:|
| $1/8$ | $0.304958$ | $0.188628$ | $1.971004$ | $2.048225$ | $0.775289$ | $0.621573$ |
| $1/16$ | $0.411806$ | $0.197651$ | $1.947816$ | $2.037090$ | $0.895612$ | $0.634533$ |
| $1/32$ | $0.520576$ | $0.200482$ | $1.940781$ | $2.034412$ | $1.005149$ | $0.638641$ |
| $1/64$ | $0.630339$ | $0.201346$ | $1.938672$ | $2.033747$ | $1.105450$ | $0.639911$ |
| $1/128$ | $0.740476$ | $0.201602$ | $1.938055$ | $2.033581$ | $1.197950$ | $0.640292$ |

The final common-field doubling slope is $0.158894$, compared with $1/(2\pi)=0.159155$. The common and relative CCR residuals stay below $1.18\times10^{-7}$.

The profile quadratures use $0\leq u\leq2000$. From $|\widehat f(u)|\leq4/u^2$, the omitted relative-field integral is bounded by $2.5\times10^{-13}$ and the induced error in either displayed momentum covariance is bounded by $2.87\times10^{-6}$.

For reference, the mutual information of only these two selected edge-probe modes increases from $0.0464$ at $\epsilon=1/8$ to $0.2607$ at $\epsilon=1/128$. This is not the mutual information of the full exterior algebras and cannot be used as the former collar entropy benchmark archived in `TODO.md`.

## 10. Separation from the Smearing Route

The centered smearing construction and the collar construction answer different questions:

1. centered smearing regularizes one interface observable inside the already connected theory;
2. the collar supplies two interfaces, a central transfer problem, and positive separation between exterior algebras;
3. explicit collar edge probes still require test functions, because unsmeared momentum traces are not operators;
4. the common edge probe is mathematically a double-lobed smeared field, but this identity concerns that finite probe only and does not identify the full collar construction with centered smearing.

Both common-field covariances have the same universal logarithmic coefficient $1/(2\pi)$. Their finite constants and momentum covariances differ. One may match them by a profile-dependent effective length, but no regulator-independent canonical identification follows from that matching.

## 11. Consequences

The collar route has now supplied:

1. an exact finite-width classical transfer matrix;
2. a controlled low-energy recovery of continuity;
3. two commuting exterior probe algebras;
4. an exact common-relative Darboux transformation;
5. finite fixed-width Gaussian covariance diagnostics.

It has not supplied a preferred type-I factor, a preferred product state, the full regional covariance matrix, or the entropy coefficient. Those require a separate split-state or finite-element construction that retains all collar degrees of freedom.

## 12. Complete-Collar Galerkin Follow-Up

`full-collar-galerkin-quantum-test.md` retains every cell and every internal mode of the collar. On the same finite phase space it compares the connected Hamiltonian with the explicit product of a left Dirichlet--Neumann chain, a collar Neumann--Neumann chain, and a right Neumann--Dirichlet chain. The mass matrix is uniformly conditioned and the finite-dimensional symplectic and Bogoliubov identities hold exactly.

This declared product prescription nevertheless fails at fixed $\epsilon>0$ as $N\to\infty$. Its energy-form condition number grows as $h^{-1}$, and the collar's constant Neumann mode alone gives

$$\begin{align}
\sum_{\substack{r\leq R\\r\ \mathrm{odd}}}|\beta_{r0}|^2
&=\frac{1}{4\pi m\epsilon}\log R+O(1).
\end{align}$$

Thus retaining the collar modes resolves the finite-dimensional degree-counting problem but does not make a sharply decoupled three-region vacuum into a valid continuum split state. This negative result does not rule out a smoothly correlated Gaussian interpolation across the collar boundaries.

## Verified

- The exact collar Dirichlet-to-Neumann matrix and its common/relative eigenvalues.
- The small-$\epsilon$ expansions of $D_{\mathrm c}$ and $D_{\mathrm d}$.
- The exact two-edge CCR and common-relative symplectic transformation.
- The parity-resolved connected-mode covariance formulas.
- The logarithmic coefficient $1/(2\pi)$ of the common field probe.
- The displayed $\kappa=1$ profile constants and covariance limits as numerical quadratures and mode-sum limits.
- `numerics/collar_regulator_checks.wl` returns exit code zero and `AllChecksPassed -> True`.
- For the separately declared complete-collar Neumann product state, the fixed-$\epsilon$ energy-form divergence and non-Hilbert--Schmidt collar-mode column in `full-collar-galerkin-quantum-test.md`.

## Assumptions

- $L>0$, $m>0$, centered collar, and the original physical outer Dirichlet conditions.
- The collar remains part of the connected scalar theory.
- The DtN formula is used away from $\sin(2k\epsilon)=0$; collar Dirichlet poles are retained separately.
- Algebraic split statements are conditional on the standard nuclearity or split hypotheses for the chosen local net.
- The numerical constants use tent edge probes with $\sigma=\epsilon$ and $L=m=1$.

## Not Verified

- A preferred split factor or canonical product state for the two exterior algebras.
- Hilbert--Schmidt implementability of a smoothly correlated collar split map; the sharply decoupled Neumann product prescription has been ruled out.
- Full exterior-algebra entropy, Rényi entropy, modular Hamiltonian, or mutual information.
- The massless $c=1$ entropy coefficient $\frac16\log(L/\epsilon)$.
- Removal of the collar in a representation topology stronger than the displayed finite-probe covariance limits.
