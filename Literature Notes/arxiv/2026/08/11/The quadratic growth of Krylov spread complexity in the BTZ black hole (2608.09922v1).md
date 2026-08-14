---
paper id: 2608.09922v1
title: "The quadratic growth of Krylov spread complexity in the BTZ black hole"
authors:
  - Aranya Bhattacharya
  - Mario Flory
  - Michal P. Heller
  - Emiliano Rizza
  - Tim Schuhmann
publication date: 2026-08-10T17:58
abstract: |-
  Thermal partition-function moments are used to reconstruct thermofield-double Krylov spread complexity. A double-scaled SYK benchmark shows that the classical limit must be taken only after assembling the complexity. For the high-temperature Cardy/BTZ saddle, the boundary series departs from early quadratic growth and has a Padé continuation compatible with a return toward quadratic growth. An infinite extrinsic-curvature functional on maximal BTZ slices is fitted order by order as a nonunique bulk candidate.
comments: "v1: 22 main-text plus 15 appendix pages, 10 figures; replication data available"
url: https://arxiv.org/abs/2608.09922v1
summary: "A careful partition-function-to-Krylov reconstruction and a deliberately singular infinite-order BTZ bulk candidate; the early-time matching is reproducible, while strict late-time quadratic growth remains an extrapolation."
tags: []
---

Daily overview: [[2026_08_11_overview]]

## Placement

Reason codes: `T2-dS-BH-holography`, `T2-spectral`, `T2-model`.

This is a medium-priority detailed note because it connects black-hole partition functions, moment problems, Lanczos data, and a geometric BTZ construction with an explicit order-of-limits warning. It is not high priority for the charge/CPS program: there are no surface charges, boundary symplectic forms, edge modes, or variational boundary conditions, and the bulk dual is fitted rather than uniquely derived.

## Source map

- Sections 2--3 define Krylov spread complexity, the finite moment method, and reconstruction from a TFD partition function.
- Section 4 benchmarks the order of semiclassical limits in double-scaled SYK (DSSYK).
- Section 5 applies the construction to the high-temperature Cardy saddle of CFT$_2$ and analyzes its early-time series and Padé continuation.
- Section 6 constructs a generalized complexity-equals-anything (CAny) observable on maximal BTZ slices, fixes 100 coefficients, and analyzes finite versus infinite truncations.
- Appendices A--E document the moment recursion, TFD convention, temperature limits, large-$c$ Lanczos fits, and CFT$_2$ sanity checks.
- Appendices F--H derive the BTZ slice formulas, late-time harmonic-tail mechanism, and an exactly resummable toy model.
- The public replication dataset contains Mathematica notebooks, the 100-coefficient data file, and a readme mapping files to equations and figures.

## Partition function to Krylov complexity

For a normalized reference state $|R\rangle$, Lanczos recursion gives

$$
|A_{n+1}\rangle=(H-a_n)|K_n\rangle-b_n|K_{n-1}\rangle,
\qquad
b_n=\|A_n\|,
$$

and the spread complexity is

$$
C_K(t)=\sum_{n\ge0}n\left|\langle K_n|e^{-iHt}|R\rangle\right|^2.
$$

For the thermofield-double state and $H_K=h_L$,

$$
m_k(\beta)
=\langle\mathrm{TFD}|H_K^k|\mathrm{TFD}\rangle
=\frac{(-\partial_\beta)^kZ(\beta)}{Z(\beta)}.
$$

Moments through $m_{2N+1}$ determine $a_0,\ldots,a_N$ and $b_1,\ldots,b_N$. The corresponding finite Jacobi matrix determines the exact Taylor coefficients of $C_K$ through $t^{2N}$. Thus

$$
Z(\beta)\longrightarrow m_k
\longrightarrow(a_n,b_n)
\longrightarrow C_K(t)
$$

is exact for an exact positive thermal measure.

The crucial warning is that this map is nonlinear and uses arbitrarily high derivatives. A semiclassical or temperature expansion may not be truncated at the level of $Z$, moments, or individual Lanczos coefficients without changing the leading classical complexity. The controlled operation is to assemble each finite Taylor coefficient $c_{2n}$ first and only then take the classical limit.

## DSSYK order-of-limits benchmark

The paper compares the exact DSSYK partition function with its saddle as $q\to1$. Subleading terms of individual Lanczos coefficients cancel parametrically larger contributions in $c_{2n}$ and can survive in the leading quantity

$$
\lim_{q\to1}|\log q|\,C_K(t).
$$

At high temperature, truncating the saddle exponent after $k_{\rm cut}$ terms produces the correct complexity only through a finite Taylor order and fails thereafter. At low temperature, a special hierarchy makes the Schwarzian leading series stable once enough terms are retained. This is presented correctly as a case-dependent exception, not a general commutativity theorem.

The benchmark also distinguishes the temperature-dependent TFD Krylov basis used here from the chord-number basis whose DSSYK complexity tracks wormhole length. Agreement of partition functions does not identify these two Krylov problems.

## Cardy/BTZ boundary series

Above the Hawking--Page temperature, the dominant large-$c$ CFT$_2$ saddle is

$$
Z(\beta)=\exp\left(\frac{\pi cV}{6\beta}\right)
=\exp\left(\frac{\mathfrak c}{\beta}\right),
\qquad
\mathfrak c=\frac{\pi cV}{6}.
$$

The first exact Lanczos data are

$$
a_0=\frac{\mathfrak c}{\beta^2},
\qquad
a_1=\frac{\mathfrak c}{\beta^2}+\frac3\beta,
$$

$$
b_1^2=\frac{2\mathfrak c}{\beta^3},
\qquad
b_2^2=\frac{4\mathfrak c}{\beta^3}+\frac3{\beta^2}.
$$

Taking $c\to\infty$ only after the complexity coefficients are assembled gives

$$
\lim_{c\to\infty}\frac{C_K(t)}c
=\frac{\pi V}{6\beta}
\left[
2\left(\frac t\beta\right)^2
-\frac12\left(\frac t\beta\right)^4
+\frac12\left(\frac t\beta\right)^6
-\frac9{16}\left(\frac t\beta\right)^8+\cdots
\right].
$$

The direct series has radius $|t|/\beta\simeq0.8$. Its instantaneous exponent

$$
\gamma(t)=t\,\partial_t\log C_K(t)
$$

departs from the universal early-time value $2$ within that radius. Diagonal Padé approximants through $t^{200}$ dip below $2$ and turn upward over the displayed range. Their visible order dependence prevents a controlled conclusion about the strict $t/\beta\to\infty$ limit. The defensible statement is compatibility with quadratic pre-saturation behavior, not a proof of it.

## BTZ bulk carrier and triangular matching

The carrier is the maximal-volume slice $\Sigma$, while the evaluated density is generalized to

$$
F_1(X)=\bar\lambda
\left[1+\sum_{n=1}^{\infty}\lambda_nX^{n+1}\right],
\qquad
X=\frac12K_{ab}K^{ab}.
$$

For the nonrotating BTZ metric

$$
ds^2=-(r^2-r_h^2)dv^2+2dv,dr+r^2d\phi^2,
$$

the maximal slice has $K=0$ and

$$
X=\frac{\mathcal P_v^2}{r^4}.
$$

At small two-sided time $\tau$, $X=O(\tau^2)$. Therefore $\lambda_n$ first appears at order $\tau^{2n+1}$ in the growth rate, giving a triangular order-by-order match. The first terms are

$$
\frac{G_N}{V_\phi}\frac{d\mathcal O}{d\tau}
=\bar\lambda\left[
\frac{8\pi^2}{\beta^3}\tau
+\frac{40\pi^2}{\beta^5}(\lambda_1-1)\tau^3
-\frac{3\pi^2}{\beta^7}
(85\lambda_1-63\lambda_2-74)\tau^5+\cdots
\right].
$$

Matching to the boundary series fixes

$$
\bar\lambda=\frac16,
\qquad
\lambda_1=\frac9{10},
\qquad
\lambda_2=\frac1{14},
\qquad
\lambda_3=\frac{43}{130}.
$$

The supplied numerics extend this to $\lambda_{99}$. Temperature independence of these coefficients is a useful check within the scale-related nonrotating BTZ family, but it does not establish state independence for rotating, shocked, or otherwise perturbed states.

## Infinite-order late-time mechanism

Every finite truncation leaves $F_1$ finite on the accumulation slice and therefore returns to linear late-time growth. On maximal BTZ slices,

$$
Q(\tau)=\frac{\mathcal P_v^2}{r_{\min}^4}\longrightarrow1,
\qquad
1-Q(\tau)\sim e^{-\kappa\tau/2}.
$$

The fitted odd and even subsequences are compatible over the available range with a harmonic $1/n$ tail. The elementary resummations are

$$
\sum_{n\ge1,\,n\ \mathrm{odd}}\frac{X^{n+1}}n
=X\operatorname{arctanh}X,
$$

$$
\sum_{n\ge2,\,n\ \mathrm{even}}\frac{X^{n+1}}n
=-\frac X2\log(1-X^2).
$$

Both produce a logarithmic singularity at $X=1$. Since $1-X$ approaches zero exponentially, the logarithm grows linearly in $\tau$; multiplying the ordinary constant late-time flux by this factor makes $d\mathcal O/d\tau\sim\tau$ and hence $\mathcal O\sim\tau^2$.

This is a valid conditional mechanism:

- faster-than-$1/n$ decay leaves the density finite and restores linear growth;
- an actual $1/n$ tail yields the logarithm and quadratic growth;
- slower decay gives a stronger singularity and faster growth.

The available 99 coefficients and parity-resolved fits do not prove the asymptotic tail. The hybrid completion inserts the fitted tail for all uncomputed orders, so its late-time behavior is conditional on that ansatz.

## Verification log

### Checked

- Read the complete TeX source and visually checked representative rendered pages covering DSSYK cancellations, the Cardy series, bulk functional, and late-time derivation.
- Retrieved the official Jagiellonian University replication dataset through its Dataverse API. Its readme maps Mathematica notebooks to the paper's equations and figures; `100lambdas.m` contains the numerical coefficients.
- Mathematica independently derived from $Z=e^{\mathfrak c/\beta}$ the displayed $a_0$, $a_1$, $b_1^2$, and $b_2^2$.
- Substitution into the universal early-time formula gave

  $$
  \frac{c_2}{\mathfrak c}=\frac2{\beta^3},
  \qquad
  \frac{c_4}{\mathfrak c}=-\frac1{2\beta^5},
  $$

  matching the first two Cardy/BTZ classical coefficients.
- Mathematica solved the triangular bulk equations and reproduced $(\bar\lambda,\lambda_1,\lambda_2,\lambda_3)=(1/6,9/10,1/14,43/130)$. The first three nontrivial values in the supplied data file agree numerically.
- Mathematica verified the odd/even harmonic resummations to $X\operatorname{arctanh}X$ and $-(X/2)\log(1-X^2)$ for $0<X<1$.

### Source-derived

- The $t^{200}$ boundary series, Padé plots, 100-parameter pseudospectral matching, finite-truncation curves, and parity-resolved asymptotic fits are source-derived and supported by public notebooks/data, but were not rerun end to end.
- The geometric reduction $K_{ab}K^{ab}/2=\mathcal P_v^2/r^4$, the regulated radial integrals, and the exponential approach to the final slice were followed from the analytic appendices.

### Blocked

- The full notebook suite was not executed end to end: reproducing the $t^{200}$ high-precision moment recursion, 1400-point pseudospectral differentiation, Padé stability study, and 100-coefficient fit exceeds a feasible daily-note check. Exact kernels, working-precision histories, and runtime environments remain source-supplied evidence.
- The strict late-time exponent is not determined by the visible Padé sequence. The $1/n$ tail is inferred from only 99 coefficients and is less stable in the even branch; the infinite-order bulk completion is therefore not verified.
- Triangular early-time matching proves existence of many fitted densities, not uniqueness or a state-independent holographic dictionary. The same functional has not been tested on rotating BTZ, shockwaves, or nonthermal states.

### Failed

- The replication-data readme says the CFT$_2$ result is followed by “asymptotically quadratic growth.” This is stronger than the paper's corrected claim. The Padé evidence only supports behavior compatible with a return toward quadratic growth; it does not establish the strict asymptotic limit.

## Relevance and limits

The most transferable lesson is the order-of-limits discipline: a finite-cutoff or semiclassical approximation to spectral data need not commute with reconstructing a nonlinear observable. This is directly relevant to the user's insistence on separating finite matrix identities, spectral convergence, and continuum claims.

The proposed bulk dual is an existence construction with infinitely many fitted couplings and a final-slice singularity. It is not a conventional finite local effective-field-theory observable, and no microscopic principle selects it. At finite $c$, eventual saturation must replace any indefinite quadratic growth.

## Next checks

- Run the supplied notebooks in a pinned Mathematica environment and reproduce the $t^{200}$ series and all 99 nontrivial coefficients with residual tables.
- Apply the same fixed coefficient sequence to rotating BTZ or a shockwave TFD before calling it state independent.
- Replace Padé extrapolation by a controlled Stieltjes/moment-problem bound or a spectral representation that constrains the pre-saturation exponent.
