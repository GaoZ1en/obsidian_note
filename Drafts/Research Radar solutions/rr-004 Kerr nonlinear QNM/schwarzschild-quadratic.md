# Independent solution of a quadratic gravitational source

## Result

Solving the full published Schwarzschild $220\times220\to44$ direct--direct source gives the strain ratio
$$
\boxed{\mathcal R_{++}=0.13659455468937742-0.01143881633002327i.}
$$
This is an independently computed inhomogeneous gravitational response, using the analytic source from [Ma--Yang, Appendix E](https://arxiv.org/pdf/2401.15516v2). It agrees with the separate public hyperboloidal dataset's direct--direct channel within $4.7\times10^{-12}$ in absolute value. The source tensor itself has not been independently rederived from the Einstein action in this calculation.

The result is one selected channel at $a=0$. It does not include the direct--mirror contribution, and it does not close the rotating Kerr CPS/reconstruction comparison. Those distinctions remain as stated in [published-gravitational-benchmark.md](published-gravitational-benchmark.md).

## 1. Input, normalization and boundary conditions

Set $M=1$, $a=0$, $\Delta=r(r-2)$, $x=(r-2)/r$, and use $e^{-i\omega t+2i\varphi}$. The independently computed parent frequency is
$$
\omega=0.37367168441804183579-0.08896231568893569828i.
$$
The $s=+2$ Hertz radial mode has $A_{+2}=0$ and is normalized by
$$
R_+(r)=e^{i\omega r}r^{-3+4i\omega}(r-2)^{-2-2i\omega}F(x),
\qquad F(x)=\sum_{n\geq0}a_nx^n,\quad a_0=1.
$$
The general-spin equation and recurrence are derived in [spin2-benchmark.md](spin2-benchmark.md). Here the angular harmonics are the usual unit-normalized spin-weighted spherical harmonics. The source normalization below is the one in the paper, including the identical-parent convention; no additional symmetrization factor is inserted.

The daughter equation is
$$
\Delta R_Q''-\Delta'R_Q'+V_{-2}(2\omega,4,A_{-2}=18)R_Q=Q(r).
$$
The explicit source is
$$
Q(r)=\frac{5}{48\sqrt{7\pi}}
\left[r^2P_1(r,\omega)R_+^2
+r^2\Delta P_2(r,\omega)R_+R_+'
+\Delta^2P_3(r,\omega)(R_+')^2\right].
$$
The three polynomial coefficient lists are transcribed in `verification/schwarzschild-quadratic.wl` as `p1`, `p2`, `p3`. Their reference is equation (E1) on PDF page 21, visually checked against the saved rendering `sources/ma-yang-page-21.png`. The radial equation and asymptotics on page 9 and the strain conversion on page 13 were also visually checked. This separates the literature input from the new solution of that input.

Factor out the daughter's ingoing-horizon/outgoing-infinity behaviour:
$$
R_Q=e^{2i\omega r}r^{1+8i\omega}(r-2)^{2-4i\omega}D(x),
\qquad D(x)=\sum_{n\geq0}d_nx^n.
$$
Its outgoing amplitude in this convention is $E=D(1)$. The numerical calculation imposes the analytic ingoing branch at $x=0$ and the minimal, outgoing branch at $x=1$.

## 2. A nontrivial horizon cancellation

Let
$$
\rho=\frac{R_+'}{R_+}-\frac{x'F'}{F}
=i\omega+\frac{-3+4i\omega}{r}+\frac{-2-2i\omega}{r-2},
\qquad x'=\frac2{r^2}.
$$
Then the forcing of the $D$ equation is
$$
f(x)=\frac{5}{48\sqrt{7\pi}}
\{U_0(x)F^2+U_1(x)FF'+U_2(x)(F')^2\},
$$
where primes on $F$ denote $x$ derivatives and
$$
\begin{aligned}
U_0&=\frac{r^2P_1+r^2\Delta P_2\rho+\Delta^2P_3\rho^2}{r^7(r-2)^6},\\
U_1&=\frac{r^2\Delta P_2x'+2\Delta^2P_3\rho x'}{r^7(r-2)^6},\\
U_2&=\frac{\Delta^2P_3(x')^2}{r^7(r-2)^6},
\qquad r=\frac2{1-x}.
\end{aligned}
$$
The ratio of the squared parental prefactor to the daughter's prefactor is exactly $r^{-7}(r-2)^{-6}$. After rational simplification, $U_0,U_1$ have at most $x^{-5}$ poles and $U_2$ at most $x^{-4}$.

These apparent singularities cannot be discarded term by term. Insert the parent's Frobenius recurrence, retaining enough coefficients to determine all five negative powers. Mathematica gives, for symbolic $\omega$,
$$
[x^{-5}]f=[x^{-4}]f=[x^{-3}]f=[x^{-2}]f=[x^{-1}]f=0.
$$
This is an exact rational identity wherever the parent recurrence denominators are nonzero. For this parent $\alpha_n=(n+1)(n-1-4i\omega)$; the computed frequency has nonzero real part and is away from these exceptional denominators. The check proves that $f$ is holomorphic at the horizon. It uses the field equation; finite-pole bounds alone would not establish the cancellation.

At $x=1$, the rational coefficients contain respectively factors $(1-x)$, $(1-x)^3$, and $(1-x)^5$. On the outgoing branch, this reproduces a source one power below the leading outgoing daughter asymptotic. The full source is therefore compatible with the stated radial boundary ansatz.

## 3. Inhomogeneous recurrence and convergence

The differential equation for $D$ has the same polynomial left side as in the spin-two calculation, now at $(s,m,\Omega,A)=(-2,4,2\omega,18)$:
$$
x(1-x)^2D''+(B_0+B_1x+B_2x^2)D'+(C_0+C_1x)D=f(x).
$$
Expand $f=\sum f_nx^n$. Its coefficients are computed by convolutions of the parent series and its derivative with the exact polynomial lists $x^5U_j$; the five vanishing Laurent coefficients are retained as a diagnostic before dropping them.

The coefficients solve
$$
\alpha_nd_{n+1}+\beta_nd_n+\gamma_nd_{n-1}=f_n,\qquad d_{-1}=0.
$$
For each finite calculation retain $0\leq n\leq N$ and impose $d_{N+1}=0$. This is a truncation of the minimal-solution boundary condition, not an assertion that the exact coefficients terminate. The parent uses continued-fraction depth 1600 and 2000 minimal coefficients. Arithmetic precision is held fixed at 100 digits; convergence determines the reported accuracy.

| Daughter cutoff $N$ | Computed strain ratio |
|---|---|
| 100 | $0.136594553283552-0.0114388185362432i$ |
| 200 | $0.136594554691800-0.0114388163341105i$ |
| 400 | $0.136594554689377-0.0114388163300235i$ |
| 800 | $0.136594554689377-0.0114388163300233i$ |
| 1200 | $0.136594554689377-0.0114388163300233i$ |

The 800-to-1200 change is below $2\times10^{-21}$. As a separate check, substitute the finite solution into the differential equation and evaluate the unsimplified source products at $x=0.2,0.6,0.9,0.99,0.999$. Relative residuals range from approximately $10^{-53}$ in the interior to $3.6\times10^{-19}$ at $x=0.999$. These checks are stronger than the tridiagonal linear-solve residual alone, but they are not certified bounds for the infinite recurrence.

The numerical horizon-cancellation residual is below $3\times10^{-55}$; the generic-frequency identity above is exact. An initial numerical-symbolic simplification timed out, and a second attempt exhausted tracked precision in the long recurrence. The authoritative run forms the source polynomials symbolically before numerical substitution and maintains the specified working precision. Both failed attempts and the corrected result are preserved.

## 4. Extracting the observable coefficient

The computed amplitudes are
$$
\sum_na_n=5.0991863548538939163-0.45027120500593524573i,
$$
$$
E=-0.0021026171790054437228-0.022978260864433038084i.
$$
With the paper's asymptotic tetrad and strain conventions,
$$
\mathcal R_{++}=\frac{E}{2\omega^6(\sum_na_n)^2}.
$$
The factor includes the tetrad conversion and the different linear and quadratic frequencies when integrating curvature to strain. Equation (99) on the rendered PDF page 13 was checked explicitly. This fixed observable convention is essential; the raw curvature ratio changes under a tetrad boost.

The independently imported public dataset gives
$$
\mathcal R_{++}^{\rm data}=0.13659455469156842339-0.01143881633414656278i.
$$
The absolute difference is $4.6693\times10^{-12}$, or $3.4065\times10^{-11}$ relative. Its coarser dataset has a substantially larger resolution difference, as recorded in `published-gravitational-benchmark.md`; the many stored digits are not a certified error estimate.

The mixed channel is approximately $0.0164646282122+0.00103476811689i$ in that dataset. Adding it once gives a different physical total. It has not been recomputed by the present source solver, and the direct--direct result must not be labelled as that total.

**Verified:** the symbolic cancellation of all negative horizon powers; an independent full-source radial solution with cutoff refinement and off-grid differential residuals; the normalization conversion; numerical agreement with a separately published dataset.

**Assumptions:** the published analytic source and its gauge/polarization convention; the selected outgoing branches; minimal-series convergence; standard normalized spherical harmonics; the fixed asymptotic strain convention.

The [rotating-source follow-up](kerr-quadratic.md) checks the general source against the earlier reconstruction formulas, finds three inconsistent printed coefficients, and independently solves the Kerr DD waveform. Its Schwarzschild limit provides an additional check on this appendix-source calculation.

**Not verified:** an independent tensor derivation of the source; a certified infinite-series error bound; the direct--mirror channel; equality with the metric-CPS response on its completed domain. The original gravitational success criterion remains open.
