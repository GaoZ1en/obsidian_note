# Numerical check of the real-frequency completeness relation

Date: 2026-07-12

## 0. Direct verdict

The continuous real-frequency modes pass a weak completeness test in the primary $\Delta=2$ benchmark.

For two independent compactly supported smooth test functions and for the $m=0,1$ angular sectors, the truncated spectral reconstruction converges toward the original function as the frequency cutoff is increased. This directly tests the radial measure and the normalization factor in the mode functions.

The test is a numerical check of distributional completeness. It is not a claim that a sharply truncated kernel converges pointwise to a Dirac delta.

## 1. Dimensionless exterior coordinate

Set

$$
\ell=r_+=1,
\qquad
x=-r_*.
$$

Then

$$
r=\coth x,
\qquad
z=1-\frac1{r^2}=\operatorname{sech}^2x,
\qquad
x\in(0,\infty).
$$

The AdS boundary is $x=0$ and the horizon is $x=\infty$. The radial Klein-Gordon measure becomes

$$
\frac r f\,dr=\coth x\,dx
$$

after reversing the radial orientation.

For fixed $m$, the normalized modes obey

$$
2\int_0^\infty d\omega\,
\omega R_{\omega m}(x)R_{\omega m}(x')
=\frac{\delta(x-x')}{\coth x'}.
$$

Therefore a test function $h$ should be reconstructed by

$$
h(x)
=2\int_0^\infty d\omega\,
\omega R_{\omega m}(x)
\int_0^\infty dx'\,
\coth x'\,R_{\omega m}(x')h(x').
$$

## 2. Truncated reconstruction

Define

$$
c_m(\omega)
=\int_0^\infty dx'\,
\coth x'\,R_{\omega m}(x')h(x')
$$

and

$$
h_{\Lambda,m}(x)
=2\int_0^\Lambda d\omega\,
\omega R_{\omega m}(x)c_m(\omega).
$$

The exact $\Delta=2$ radial mode used in the integration is

$$
R_{\omega m}(x)
=N_{\omega m}\,
z^{-i\omega/2}(1-z)\,
{}_2F_1
\left(
1-\frac{i(\omega+m)}2,
1-\frac{i(\omega-m)}2;
2;
1-z
\right),
$$

where $z=\operatorname{sech}^2x$ and

$$
N_{\omega m}
=\frac1{\sqrt{4\pi\omega}\,|A_{\omega m}|},
$$

$$
A_{\omega m}
=\frac{\Gamma(i\omega)}
{\Gamma\!\left(1+\frac{i(\omega-m)}2\right)
 \Gamma\!\left(1+\frac{i(\omega+m)}2\right)}.
$$

The numerical imaginary part of $R_{\omega m}$ stayed below roundoff at the sampled points, as required by the real standard-boundary solution.

## 3. Smooth test functions

Use the compactly supported bump

$$
h_{x_c,a}(x)
=
\begin{cases}
\displaystyle
\exp\left[
1-\frac1{1-\left(\frac{x-x_c}{a}\right)^2}
\right],
&
|x-x_c|<a,
\\[3mm]
0,
&
|x-x_c|\ge a.
\end{cases}
$$

Two supports were tested:

$$
(x_c,a)=(1.5,0.8),
\qquad
(x_c,a)=(2.3,0.7).
$$

The first probes the middle exterior. The second is shifted toward the horizon.

The frequency integration began at $\omega=5\times10^{-4}$; lowering this endpoint did not change the displayed digits. The spatial and frequency integrals used adaptive numerical integration with no symbolic preprocessing.

## 4. First bump

For $(x_c,a)=(1.5,0.8)$, seven points in the support and its edge region were sampled. The maximum absolute point error was

| $m$ | $\Lambda=4$ | $\Lambda=8$ | $\Lambda=12$ |
|---:|---:|---:|---:|
| $0$ | $0.206618$ | $0.104592$ | $0.053157$ |
| $1$ | $0.215412$ | $0.105830$ | $0.053270$ |

Representative interior values at $\Lambda=12$ are

| $x$ | $h(x)$ | $h_{12,0}(x)$ | absolute error |
|---:|---:|---:|---:|
| $1.0$ | $0.526752$ | $0.496915$ | $0.029837$ |
| $1.2$ | $0.849051$ | $0.871147$ | $0.022097$ |
| $1.5$ | $1$ | $0.981392$ | $0.018608$ |
| $1.8$ | $0.849051$ | $0.867019$ | $0.017969$ |
| $2.0$ | $0.526752$ | $0.494423$ | $0.032329$ |

The largest errors occur near the rapidly varying edge of the bump, as expected for a finite spectral cutoff.

## 5. Horizon-shifted bump

For $(x_c,a)=(2.3,0.7)$, the maximum errors were

| $m$ | $\Lambda=6$ | $\Lambda=12$ |
|---:|---:|---:|
| $0$ | $0.129482$ | $0.049645$ |
| $1$ | $0.128959$ | $0.049738$ |

At the center,

$$
h(2.3)=1,
$$

while

$$
h_{12,0}(2.3)=0.979860,
\qquad
h_{12,1}(2.3)=0.979988.
$$

The agreement between $m=0$ and $m=1$ shows that the reconstruction is not relying on an accidental simplification of the zero-angular-momentum sector.

## 6. Interpretation

The numerical test checks the combined statement

$$
\text{radial solution}
+\text{horizon coefficient}
+\text{KG normalization}
+\text{Sturm--Liouville measure}
\longrightarrow
\text{weak identity operator}.
$$

The approximately factor-of-two decrease in the largest error when the cutoff is doubled is consistent with a finite-cutoff oscillatory approximation to a compactly supported smooth function.

Together with self-adjointness of the radial operator, this supplies the missing benchmark evidence for the continuous spectral resolution used in

$$
iE_{\mathcal R}
=\sum_m\int_0^\infty d\omega\,
(u_{\omega m}\bar u_{\omega m}-\bar u_{\omega m}u_{\omega m}).
$$

## 7. Verification status

Verified:

1. Mathematica evaluated both nested integrals using the exact hypergeometric modes.
2. Two distinct bump functions and the $m=0,1$ sectors were tested.
3. The maximum errors decrease monotonically over the displayed cutoff sequence.
4. The same normalization was independently used in the mode/image Green-function comparison.

Assumptions:

1. The numerical units are $\ell=r_+=1$.
2. Completeness is tested weakly on the displayed compactly supported functions.
3. The exact theorem-level extension to all test functions uses self-adjoint Sturm--Liouville spectral theory.

Not verified:

1. No uniform pointwise convergence of the unsmeared cutoff kernel is claimed.
2. Higher $|m|$ sectors were not separately sampled because their radial normalization has the same analytic derivation.
