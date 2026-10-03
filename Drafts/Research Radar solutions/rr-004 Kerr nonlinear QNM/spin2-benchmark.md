# A spin-two radial pairing check on Kerr

## Result and scope

For the gravitational $220$ mode at $M=1$, $a=0.3$, an independently derived Leaver calculation gives
$$
\omega_{220}=0.41952668176385148648-0.08772927189431198649i.
$$
The $s=+2$ and $s=-2$ equations agree. The bilinear radial operator-pencil norm computed below is
$$
N_{-2}=-8.8083835340993497949+80.449744421582527483i.
$$
Direct complex integration, a frequency-dependent hyperboloidal change of variables with its endpoint term, and an independent Tricomi-function sum agree in the saved numerical checks. This is a spin-two radial result. No Einstein--Hilbert normalization or nonlinear waveform coefficient is inferred from this number.

The [scalar calculation](scalar-benchmark.md) and the [gravitational source balance](gravitational-response.md) remain separate parts of the comparison.

## 1. Separated equation and normalization

Use $e^{-i\omega t+im\varphi}$, $b=\sqrt{1-a^2}$, $r_\pm=1\pm b$, $d=2b$, and
$$
\Delta=(r-r_+)(r-r_-),\qquad K=(r^2+a^2)\omega-am.
$$
The radial equation is
$$
\Delta R_s''+(s+1)\Delta'R_s'+V_sR_s=0,
\quad
V_s=\frac{K^2-2is(r-1)K}{\Delta}+4is\omega r-a^2\omega^2+2am\omega-A_s.
$$
The angular eigenvalue tends to $\ell(\ell+1)-s(s+1)$ at $a\omega=0$. Its matrix in spin-weighted spherical harmonics is
$$
\mathsf A_s=\operatorname{diag}[\ell(\ell+1)-s(s+1)]
-(a\omega)^2\mathsf C^2+2a\omega s\mathsf C,
$$
where
$$
\mathsf C_{\ell\ell}=-\frac{ms}{\ell(\ell+1)},\qquad
\mathsf C_{\ell,\ell+1}=
\sqrt{\frac{((\ell+1)^2-m^2)((\ell+1)^2-s^2)}{(\ell+1)^2(2\ell+1)(2\ell+3)}}.
$$
The matrix is complex symmetric, not Hermitian. Normalize the selected eigenvector by $v^Tv=1$, without conjugation. Then
$$
A_s'=v^T(-2a^2\omega\mathsf C^2+2as\mathsf C)v.
$$
The truncation retains one additional angular mode when forming $\mathsf C^2$, before restricting the matrix. Squaring the already truncated $\mathsf C$ would lose a contribution at the last diagonal entry.

Set
$$
x=\frac{r-r_+}{r-r_-},\quad
\sigma=\frac{2r_+\omega-am}{d},\quad
R_s=e^{i\omega r}(r-r_-)^\beta(r-r_+)^\gamma F(x),
$$
$$
\beta=-1-s+2i\omega+i\sigma,\qquad \gamma=-s-i\sigma,
\qquad F(x)=\sum_{n\geq0}a_nx^n,\quad a_0=1.
$$
Substitution, without importing a tabulated recurrence, gives
$$
x(1-x)^2F''+(B_0+B_1x+B_2x^2)F'+(C_0+C_1x)F=0.
$$
For reproducibility, these polynomials are defined directly from the equation. With $\rho=i\omega+\beta/(r-r_-)+\gamma/(r-r_+)$ and $x'=d/(r-r_-)^2$, they are
$$
B(x)=2\Delta\rho x'+\Delta x''+(s+1)\Delta'x',
\qquad
C(x)=\Delta(\rho^2+\rho')+(s+1)\Delta'\rho+V_s,
$$
evaluated at $r=(r_+-r_-x)/(1-x)$. Their expanded coefficients and exact substitution are saved in `verification/spin-radial-recurrence.wl`.

Thus
$$
\alpha_na_{n+1}+\beta_na_n+\gamma_na_{n-1}=0,
$$
$$
\alpha_n=(n+1)(n+B_0),\quad
\beta_n=-2n(n-1)+B_1n+C_0,\quad
\gamma_n=(n-1)(n-2)+B_2(n-1)+C_1.
$$
Here $\beta_n$ is a recurrence coefficient, distinct from the prefactor exponent $\beta$. Backward minimal-solution ratios impose the outgoing condition at infinity; the equation at $n=0$ determines $\omega$.

The frequency was refined through depths $100,200,400,800,1200$ and angular cutoffs $10,14,18,22$. The $s=+2$ computation also gives $A_{+2}=A_{-2}-4$. At the displayed frequency,
$$
A_{-2}=3.65313717233988727275+0.075127441166099446613i,
\quad
\sigma=0.54482468984058323110-0.17969453735777360304i.
$$
These are numerical convergence checks, not certified root enclosures.

## 2. Radial norm and the change of variables

Multiply the radial equation by $\Delta^s$:
$$
P_s(\omega)R=(pR')'+qR=0,\qquad p=\Delta^{s+1},\quad q=\Delta^sV_s.
$$
On a specified complex contour with vanishing endpoint Green terms, the formal radial left mode is $R$ itself. Define
$$
N_s=\int_{\mathcal C}R^2\partial_\omega q\,dr,
$$
$$
\partial_\omega V_s=
\frac{2(r^2+a^2)K-2is(r-1)(r^2+a^2)}{\Delta}
+4isr-2a^2\omega+2am-A_s'.
$$
In particular, the angular derivative must be retained.

Use $\tau=t-h(r)$, $\widetilde\varphi=\varphi-k(r)$, with the same branches as the scalar benchmark:
$$
h=r+\left(2+\frac{r_+}{b}\right)\log(r-r_-)-\frac{r_+}{b}\log(r-r_+),
\quad
k=-\frac{a}{2b}\log\frac{r-r_+}{r-r_-}.
$$
Write
$$
f_\omega=e^{i\omega h-imk}\frac{\Delta^{-s}}{r-r_-},
\qquad R=f_\omega\widetilde R,
\qquad \widetilde R=F(x),
\qquad \widetilde P=f_\omega^{-1}P_sf_\omega.
$$
Because the transformation depends on frequency, the transformed derivative norm is
$$
\widetilde N_s=\int_{\mathcal C}f_\omega^2\widetilde R
(\partial_\omega\widetilde P)\widetilde R\,dr.
$$
The factor $f_\omega^2$ is the transformed bilinear left density. Direct differentiation gives
$$
\boxed{\widetilde N_s-N_s=i[p h'R^2]_{\partial\mathcal C}.}
$$
Indeed $\partial_\omega\log f_\omega=ih$ and
$R[P_s,ih]R=i(p h'R^2)'$. Mathematica checked this identity with arbitrary $p(r)$, $q(r,\omega)$, $h(r)$ and frequency-independent radial rescaling. This operator-pencil endpoint formula is distinct from the diagonal scalar spacetime-current identity in `scalar-benchmark.md`.

## 3. Complex integration and an independent evaluation

The contour starts at the outer horizon on its logarithmic cover,
$r-r_+=\rho e^{(1+i\kappa)u}$, $u\in(-\infty,0]$, follows the real axis to $r=3$, and then follows $r=3+iy$ to $y=+\infty$. The continuous horizon logarithm is $\log\rho+(1+i\kappa)u$. We keep $\rho<b$, so the whole spiral has $\operatorname{Re}r>1$ and $|x|<1$.

For $s=-2$, $\rho=0.3$, $\kappa=3$, truncated at $u=-30$, $y=80$, an 800-coefficient calculation gives the stated $N_{-2}$. Changing the radial degree to 400 or 1200, or using $\rho=0.4$, $\kappa=2$, $u=-40$, $y=100$, changes the result by less than $3\times10^{-21}$ in the observed runs.

A deliberately short contour, $u=-3$, $y=8$, gives
$$
N=-9.9187528660921982492+79.750616463570538402i,
$$
$$
\widetilde N=-8.9403372107895770426+80.811561902711153066i.
$$
Their difference is the nonzero endpoint term
$0.97841565530262120659+1.0609454391406146636i$; the saved numerical identity residual is below $5\times10^{-37}$.

For an independent calculation, put $z=(r-r_+)/d$, $\zeta=-2i\omega d$, and expand a finite polynomial $F^2=\sum_nc_nx^n$. Define $P_4(z)=\sum_{k=0}^4p_kz^k$ by
$$
P_4(z)=\frac{2(r^2+a^2)K-2is(r-1)(r^2+a^2)}{d^2}
+(4isr-2a^2\omega+2am-A_s')z(1+z),\qquad r=r_++dz.
$$
Termwise analytic continuation of the defining Tricomi integral yields
$$
N_s=e^{2i\omega r_+}d^{-1-2s+4i\omega}
\sum_{n,k}c_np_k\,
\Gamma(2\gamma+s+n+k)
U(2\gamma+s+n+k,-2-2s+4i\omega+k,\zeta).
$$
This identity is exact for each finite polynomial, with the specified continuation. The norm from degree 320 agrees with the long contour to less than $4\times10^{-23}$. Degrees $40,80,160,320$ show convergence. Passage to an infinite series still requires minimal-solution estimates and interchange of continuation with summation; the finite checks alone do not prove that theorem.

## 4. The quadratic frequency is not this channel's daughter pole

The same independent recurrence, at $\Omega=2\omega_{220}$ in the $s=-2$, $(\ell,m)=(4,4)$ channel, gives the continued-fraction condition
$$
\beta_0+\alpha_0\frac{a_1}{a_0}
=-3.49858563142809557655-1.18384328227328829272i.
$$
Depths 400--1200 and angular cutoffs 14--22 agree. This is numerical evidence of nonresonance in the selected channel, not an interval proof. It confirms the need to solve an inhomogeneous response at $2\omega_{220}$ instead of identifying that response with one linear daughter pole.

**Verified:** exact general-spin radial substitution; exact frequency-dependent similarity identity; independent spin-two frequency, angular and radial refinements; finite-contour endpoint term; independent special-function norm.

**Assumptions:** simple non-self-orthogonal angular eigenvalue; minimal radial branch; complex-bilinear normalization; fixed logarithmic branches; the analytic-continuation prescription above.

The [rotating quadratic-source calculation](kerr-quadratic.md) separately computes the fixed spherical DD waveform coefficient. It does not infer that coefficient from the homogeneous norm alone.

**Not verified:** an interval error bound; a map from this radial norm to the full Einstein--Hilbert CPS normalization on the gravitational source domain; the sourced nonlinear metric reconstruction and its observable/CPS correspondence. These remain necessary parts of rr-004.
