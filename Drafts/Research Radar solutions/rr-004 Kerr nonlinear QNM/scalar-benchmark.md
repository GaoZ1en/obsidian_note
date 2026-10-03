# A scalar Kerr pairing benchmark with independent regularizations

## Result

**The declared two-mode scalar benchmark passes.** At $M=1$, $a=0.3$, and $\ell=m=1$, the fundamental and first-overtone modes give the same regularized bilinear norms by a complex radial contour and by a separate Tricomi-$U$ continuation of the hyperboloidal expression. Direct evaluation of the hyperboloidal current on the contour agrees as well. Angular, radial, contour, and series refinements support agreement to at least ten significant digits.

This is a finite numerical benchmark combined with the exact identities below. The error estimates are observed convergence, not certified interval bounds. It does not establish a bounded bilinear form on the whole Gajic–Warnick Hilbert space, completeness of QNMs, or the original gravitational coupling theorem.

## 1. Fix the modes and their normalization

Use the scalar action, angular eigenvalue convention, and complex-bilinear CPS form of [solution.md](solution.md). Set
$$
b=\sqrt{1-a^2},\qquad r_\pm=1\pm b,\qquad d=r_+-r_-=2b,
\qquad x=\frac{r-r_+}{r-r_-}.
$$
For a mode of frequency $\omega$, write
$$
\sigma=\frac{2r_+\omega-am}{2b},\qquad
\gamma=-i\sigma,\qquad \beta=-1+2i\omega+i\sigma,
$$
$$
R(r)=e^{i\omega r}(r-r_-)^\beta(r-r_+)^\gamma F(x),
\qquad F(x)=\sum_{n=0}^\infty a_nx^n,\qquad a_0=1.
$$
All lengths in logarithms are measured in units of $M$. The branch of $R$ is fixed by continuation from real $r>r_+$ and is then tracked along the contour. The angular mode is normalized by
$$
\int_0^\pi S^2\sin\theta\,d\theta=1.
$$
No conjugation is used. The factor $2\pi$ from the azimuthal integral is retained.

The normalization $a_0=1$ is part of the reported numbers; it is not an assertion that the full prefactor has unit horizon amplitude.

## 2. Derive the recurrence from the scalar equation

Substitution into $(\Delta R')'+V_\omega R=0$ gives
$$
x(1-x)^2F''+(B_0+B_1x+B_2x^2)F'
+(C_0+C_1x)F=0.
$$
With $q=am$ and angular separation constant $A=A_{\ell m}(\omega)$,
$$
B_0=\frac{b-2i\omega-2ib\omega+iq}{b},
$$
$$
B_1=\frac{2i}{b}\left[2\omega+2b^2\omega
+b(2i+4\omega)-q\right],
\qquad
B_2=-\frac{i}{b}\left[2\omega+b(3i+6\omega)-q\right],
$$
$$
C_0=-1+(15+b^2)\omega^2+2b\omega(i+4\omega)
+\frac{(i+4\omega)(2\omega-q)}b
-2\omega(-2i+q)-A,
$$
$$
C_1=-\frac{(i+4\omega)\,[2\omega+b(i+2\omega)-q]}b.
$$
Thus
$$
\alpha_na_{n+1}+\beta_na_n+\gamma_na_{n-1}=0,
$$
$$
\alpha_n=(n+1)(n+B_0),\quad
\beta_n=-2n(n-1)+B_1n+C_0,
$$
$$
\gamma_n=(n-1)(n-2)+B_2(n-1)+C_1.
$$
Here the recurrence coefficients $\beta_n,\gamma_n$ are distinct from the prefactor exponents $\beta,\gamma$.

To select the minimal sequence, use backward ratios
$$
\rho_n=\frac{a_n}{a_{n-1}}
=-\frac{\gamma_n}{\beta_n+\alpha_n\rho_{n+1}},
\qquad
\beta_0+\alpha_0\rho_1=0.
$$
At finite depth $N$, the calculation sets $\rho_{N+1}=0$ and increases $N$. The differential equation, rather than an imported recurrence, was used to derive these coefficients. The [qnm radial implementation](https://github.com/duetosymmetry/qnm/blob/master/qnm/radial.py) was inspected as an independent implementation reference.

For the angular problem, expand in normalized associated Legendre modes of the same parity, $\ell'=1,3,\ldots,\ell_{\max}$. Multiplication by $\cos\theta$ has coefficients
$$
c_\ell^+=
\sqrt{\frac{(\ell+1)^2-m^2}{(2\ell+1)(2\ell+3)}},
\qquad
c_\ell^-=
\sqrt{\frac{\ell^2-m^2}{(2\ell-1)(2\ell+1)}}.
$$
The matrix of the angular operator is
$$
\operatorname{diag}[\ell'(\ell'+1)]-a^2\omega^2\,C,
$$
where $C$ represents $\cos^2\theta$. The eigenvalue branch is the one continuing from $A=2$ at $a\omega=0$.

At depth 1200 and $\ell_{\max}=13$, the frequencies are
$$
\omega_0=0.3201264576179286-0.0966913168558801\,i,
$$
$$
\omega_1=0.2962126664971207-0.3003246791131332\,i.
$$
Changing radial depth from 800 to 1200 changes $\omega_1$ by approximately $8.0\times10^{-25}$ and changes $\omega_0$ by approximately $1.1\times10^{-34}$. These are successive-truncation differences, not rigorous errors.

## 3. A specific spacelike hyperboloidal coordinate system

Choose
$$
\tau=t-h(r),\qquad \widetilde\varphi=\varphi-k(r),
$$
$$
h=r+\left(2+\frac{r_+}{b}\right)\log(r-r_-)
-\frac{r_+}{b}\log(r-r_+),
$$
$$
k=-\frac{a}{2b}\log\frac{r-r_+}{r-r_-}.
$$
Then
$$
h'=\frac{r^2+a^2-4r_+}{\Delta},\qquad
k'=-\frac a\Delta.
$$
These coordinates approach the future horizon and future infinity with the required ingoing/outgoing shifts. They also have a useful exact relation to the recurrence:
$$
\boxed{
\widetilde R=e^{-i\omega h+imk}R
=\frac{F(x)}{r-r_-}.
}
$$
The two noninteger powers cancel exactly. Hence the regular hyperboloidal radial unknown is precisely the same $F$ selected by the minimal recurrence, rather than a separately guessed field.

The inverse metric components needed for the hypersurface current simplify to
$$
\Sigma g^{\tau\tau}
=-\frac{8r_+(r+r_+)}{r-r_-}+a^2\sin^2\theta,
$$
$$
\Sigma g^{\tau r}=4r_+-r^2-a^2,\qquad
\Sigma g^{\tau\widetilde\varphi}
=-\frac{a(r+r_++2)}{r-r_-}.
$$
For real $r>r_+$, the first expression is negative: $(r+r_+)/(r-r_-)>1$ and $8r_+>a^2$. Thus the $\tau$ slices are spacelike. None of these inverse-metric components diverges at the future horizon.

The reflected field must still be transformed as the same spacetime solution:
$$
\mathcal Ju_1
=e^{i\omega_1\tau-im\widetilde\varphi}
e^{i\omega_1h-imk}R_1S_1.
$$
Replacing it by the naive reflection of only the regular hyperboloidal profile would define a different product.

## 4. Direct contour calculation

The contour has three pieces, oriented from the horizon towards infinity:
$$
r(u)=r_++\rho\,e^{(1+i\kappa)u},
\qquad -U\leq u\leq0,
$$
then a real segment from $r_++\rho$ to $r_0=3$, followed by
$$
r(y)=r_0+iy,\qquad 0\leq y\leq Y.
$$
On the spiral, the continuous logarithm is
$$
\log(r-r_+)=\log\rho+(1+i\kappa)u.
$$
It must not be reset to its principal value after each turn.

For $0<\rho<b$, the entire contour lies in $\operatorname{Re}r>1$ and hence $|x|<1$ at finite points. The Frobenius series is evaluated in its convergence disk. At the horizon the products decay when
$$
\operatorname{Re}[(\gamma_i+\gamma_j)(1+i\kappa)]>0.
$$
For the hyperboloidal off-diagonal integrand, the corresponding condition involves $2\gamma_i$. Both tested modes satisfy these conditions at $\kappa=2$ and $\kappa=3$. At the upper-infinity leg, $\operatorname{Re}\omega_i>0$ gives exponential damping.

This is a horizon-spiral contour of the type used in [Green et al., Section V.2](https://arxiv.org/html/2210.15935v3), with a specified branch throughout. A two-ended Hankel contour around the horizon is a different contour prescription and requires its monodromy normalization; it is not silently substituted here.

The Boyer–Lindquist integrand is evaluated from the scalar current. The hyperboloidal calculation separately uses the displayed transformed inverse metric and derivatives of the two transformed mode profiles. It does not define its answer by adding the analytically predicted endpoint term.

With $F$ truncated at degree 800, $(\rho,\kappa,U,Y)=(0.3,3,40,100)$, the results are

| Pair | Contour bilinear form |
|---|---|
| $0,0$ | $134.54519944519555+13.94280516969829\,i$ |
| $1,1$ | $-57.68321991189984+1655.63251210859482\,i$ |
| $0,1$, Boyer–Lindquist | $-1.15\times10^{-20}+2.54\times10^{-20}i$ |
| $0,1$, hyperboloidal | $-2.44\times10^{-21}+8.97\times10^{-21}i$ |

The tiny last two numbers are numerical residuals, not exact zeros certified by the integrator. Orthogonality of exact modes follows from the Green identity and the vanishing endpoint expression.

The diagonal hyperboloidal density equals the Boyer–Lindquist density algebraically, as derived in the main note. Direct computation with the unsimplified mode derivatives confirms that equality without dropping the reflection factor.

## 5. An independent real-axis analytic regularization

The diagonal hyperboloidal norm has the same radial density as the scalar CPS norm:
$$
B_{jj}=2\pi i\int dr\,R_j^2\,\partial_\omega V_j.
$$
To regularize it independently of the numerical contour, let
$$
z=\frac{r-r_+}{d},\qquad x=\frac z{1+z},
\qquad
\zeta=-2i\omega d,\qquad
F(x)^2=\sum_{n\geq0}c_nx^n.
$$
Write
$$
\partial_\omega V_\omega
=\frac{P_4(z)}{z(1+z)},
$$
where
$$
P_4(z)=
\frac{2\omega(r^2+a^2)^2-4amr}{d^2}
-2a^2\omega(1-C_\theta)z(1+z),
\qquad r=r_++dz,
$$
$$
C_\theta=\int_0^\pi S^2\cos^2\theta\sin\theta\,d\theta,
\qquad P_4(z)=\sum_{k=0}^4p_kz^k.
$$
For a finite polynomial $F$, the regularized answer is explicitly
$$
\boxed{
B_{jj}^{U}
=2\pi i\,e^{2i\omega r_+}d^{-1+4i\omega}
\sum_{n,k}c_np_k\,
\Gamma(2\gamma+n+k)\,
U(2\gamma+n+k,-2+4i\omega+k,\zeta).
}
$$
This follows by first evaluating
$$
\int_0^\infty e^{-\zeta z}z^{A-1}(1+z)^{B-A-1}\,dz
=\Gamma(A)U(A,B,\zeta)
$$
in its convergence domain, then continuing the parameters on the branch connected to the physical exterior. The sum coefficients are computed directly from the truncated mode series. This route calls the special function; it does not numerically integrate the complex contour.

For finite polynomials, deformation to the spiral/infinity contour gives the same analytic continuation whenever both endpoints damp. To pass to the minimal infinite series, one additionally needs summability sufficient for dominated convergence along that contour, including derivatives for off-diagonal currents. Minimal-sequence decay supplies the standard sufficient condition; the numerical calculation tests the approach to that limit, without purporting to prove all recurrence asymptotics from a finite cutoff.

The computed diagonal norms approach the contour values as follows:

| Degree of $F$ | $B_{00}^{U}$ | $B_{11}^{U}$ |
|---|---|---|
| 40 | $134.5451994188+13.9428059014i$ | $-57.6844327176+1655.6346255664i$ |
| 80 | $134.5451994452+13.9428051691i$ | $-57.6832214191+1655.6325262535i$ |
| 160 | $134.5451994452+13.9428051697i$ | $-57.6832199014+1655.6325121098i$ |
| 320 | $134.54519944519555+13.94280516969829i$ | $-57.68321991189947+1655.63251210859462i$ |

At degree 320, the discrepancy in the overtone norm is approximately $4.2\times10^{-13}$ in absolute value against the refined contour, or $2.6\times10^{-16}$ relative to the norm. The displayed accuracy claim is deliberately weaker than these last differences.

This analytic-continuation strategy is related to the Schwarzschild calculation of [Minucci et al., Section V.3.2](https://arxiv.org/html/2604.13182). The Kerr prefactors, angular derivative, transformed coordinates, and numerical results above were computed here.

## 6. Check the endpoint term where it is not negligible

The exact formula in the main note is
$$
B_h-B_t
=\frac{2\pi}{i(\omega_0-\omega_1)}
\left[(e^{i(\omega_0-\omega_1)h}-1)
\Delta(R_0'R_1-R_0R_1')
\int_0^\pi S_0S_1\sin\theta\,d\theta\right]_{\partial C}.
$$
With shorter cutoffs $(U,Y)=(10,15)$ and $(\rho,\kappa)=(0.3,3)$, direct integration gives
$$
B_t=-0.0192396959296754+0.0208303045389505i,
$$
$$
B_h=0.0016673354383751-0.0028632468248441i.
$$
Their nonzero difference is
$$
B_h-B_t=0.0209070313680506-0.0236935513637946i.
$$
Direct evaluation of the endpoint expression agrees, with a residual approximately $2.0\times10^{-20}$ in this computation. Thus the test detects the finite-cutoff surface difference; equality was not imposed by making both truncated expressions zero.

## 7. Error evidence and limits

The computation varied independent sources of numerical error:

- Radial continued-fraction depth: 100, 200, 400, 800, 1200.
- Angular cutoff: $\ell_{\max}=5,9,13,17$. The change from 13 to 17 in $A$ is below $10^{-57}$ for these parameters.
- Radial function degree: 400 and 800 in the contour comparison. The observed overtone-norm change is about $1.0\times10^{-12}$.
- Contour parameters: $(\rho,\kappa,U,Y)=(0.4,2,60,80)$ and $(0.3,3,40,100)$. Their degree-800 overtone norms differ by about $5.2\times10^{-13}$.
- Independent analytic norm: polynomial degrees 40, 80, 160, 320 in the Tricomi sum.
- Radial differential-equation residuals at $r=r_++0.1,3,3+10i,3+30i$. At degree 800 the largest tested relative residual is $1.8\times10^{-15}$.

These are consistency and convergence checks, not an interval enclosure of the exact resonance or of the infinite integral.

**Verified:** the scalar recurrence was derived by substitution; the hyperboloidal regular-field identity and transformed inverse metric returned zero symbolic residuals in Mathematica; both scalar frequencies were obtained from the recurrence and angular eigenproblem; the two contour currents and independent Tricomi norms were evaluated numerically; the non-negligible endpoint identity was checked.

**Assumptions:** subextremal Kerr; the specified mode branch and bilinear normalization; minimal radial solution; analytic continuation along the stated spiral, with the logarithm unwrapped; summability for the infinite-series interpretation. Only the finite computations and their observed convergence are claimed as machine evidence.

**Not verified:** all Kerr frequencies, the entire regularity-QNM Hilbert domain, gravitational second-order source terms and reconstruction, or a numerical gravitational three-mode coupling.

The initial root script suffered precision-tracking loss and is retained as an unsuccessful run. The accepted root solver uses fixed 80-digit arithmetic and a secant method, with accuracy assessed by cutoff changes. Its extremely small residual for the *truncated* continued fraction is not used as an error bound for the true frequency. The first Tricomi call hit the short tool timeout; the subsequent long-running Mathematica/xAct-kernel calls completed successfully. The authoritative files are the stable root, mode, contour, contour-convergence, Tricomi-long, and Tricomi-refined records in the verification directory.

