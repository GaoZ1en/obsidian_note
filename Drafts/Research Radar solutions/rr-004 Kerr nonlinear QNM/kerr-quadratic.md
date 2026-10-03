# Rotating Kerr quadratic source and an independent waveform benchmark

## Result

**The $220+\times220+\to(4,4)$ direct--direct channel has now been independently solved at $M=1$, $a=0.3$.** With the fixed spherical strain convention,
$$
\boxed{\mathcal R_{\rm DD}^{22\to44}
=0.13411911684264305335-0.00708489139678474978i.}
$$
It differs from the independently imported public dataset by $1.63\times10^{-13}$ in absolute value ($1.21\times10^{-12}$ relative). The radial 800-to-1200 truncation change is $3.17\times10^{-22}$. These are numerical convergence and cross-implementation checks, not interval error bounds.

A symbolic audit was necessary first. The expanded source in [Ma--Yang, 2401.15516v2](https://arxiv.org/abs/2401.15516v2), equations (54)--(58), is not identical to the result of substituting its earlier reconstruction formulas into equation (53). Three coefficients differ. The corrected expansion below agrees identically for arbitrary $a,m,\omega,r,\cos\theta$ and formal radial/angular jets. It also reproduces the paper's Schwarzschild Appendix E source on a parent solution. The originally transcribed expansion is preserved alongside the derived version.

The input metric reconstruction, Newman--Penrose identities and definition of the source are source-derived. Their algebraic substitution and the numerical solution are independent calculations here. This is not an independent component derivation of the full quadratic Einstein tensor. Nor does this computation alone establish the metric-CPS/source map on the completed gravitational QNM domain; that remaining requirement is stated at the end.

## 1. Conventions and the source to be solved

Use the conventions of the [spin-two benchmark](spin2-benchmark.md):
$$
M=1,\quad \Delta=r^2-2r+a^2,\quad r_\pm=1\pm\sqrt{1-a^2},
\quad d=r_+-r_-,\quad x=\frac{r-r_+}{r-r_-},
$$
$$
z=\cos\theta,\qquad \Gamma=r+iaz,\qquad
\bar\Gamma=r-iaz,\qquad \Sigma=\Gamma\bar\Gamma.
$$
The bar on $\bar\Gamma$ names its algebraic partner on the complex radial contour; it does not conjugate the continued coordinate $r$. Frequency and radial functions are likewise not conjugated in the bilinear angular projection.

The parent Hertz harmonic is
$$
\bar\Psi_{\rm ORG}=R(r)S(\theta)e^{-i\omega t+2i\phi},
\qquad R={}_{+2}R_{22\omega},\quad S={}_{-2}S_{22\omega}.
$$
The reflection sign in the source's equation (27) is $(-1)^{\ell+m}=1$ for this parent. Define
$$
K=(r^2+a^2)\omega-am,\qquad
\mathcal D_2^\dagger=\partial_r+\frac{iK+4(r-1)}{\Delta},
\qquad h_j=(\mathcal D_2^\dagger)^jR,
$$
$$
\mathcal L_n^\dagger
=-\sqrt{1-z^2}\,\partial_z+a\omega\sqrt{1-z^2}
-\frac{m}{\sqrt{1-z^2}}+\frac{nz}{\sqrt{1-z^2}}.
$$
Here $m=2$ for the parent; $h_j$ is only an auxiliary radial jet, not a metric component.

In the direct--direct sector the earlier source formula is
$$
S_4^{(2)}
=d_4^{(0)}
\left[-(D+4\epsilon-\rho)^{(1)}\Psi_4^{(1)}
+(\bar\delta+2\alpha+4\pi)^{(1)}\Psi_3^{(1)}
-3\lambda^{(1)}\Psi_2^{(1)}\right],
$$
$$
d_4^{(0)}=\Delta_{\rm NP}^{(0)}+4\mu+\bar\mu+3\gamma-\bar\gamma.
$$
The operator $\Delta_{\rm NP}$ is the Newman--Penrose directional derivative, not the radial polynomial $\Delta$. Inserting the harmonic of frequency $n\omega$ and azimuthal number $nm$ gives
$$
\Delta_{\rm NP}^{(0)}f
=-\frac{\Delta}{2\Sigma}\left(\partial_r+\frac{inK}{\Delta}\right)f.
$$
The outer source operator uses $n=2$; the single-parent operations use $n=1$. This distinction is retained in the symbolic script.

The scaled source has four angular structures:
$$
\frac{32\bar\Gamma^4\Sigma}{\Delta^6}S_4^{(2)}
=A_1G_1+A_2G_2+A_3G_3+A_4G_4,
$$
$$
G_1=(\mathcal L_2^\dagger S)^2,\quad
G_2=S\mathcal L_1^\dagger\mathcal L_2^\dagger S,\quad
G_3=3ia\sin\theta\,S\mathcal L_2^\dagger S,\quad
G_4=a^2\sin^2\theta\,S^2.
$$
The common spacetime harmonic is suppressed. The separated daughter equation has right side
$$
Q=-2\bar\Gamma^4\Sigma S_4^{(2)}
=-\frac{\Delta^6}{16}\sum_{\alpha=1}^4 A_\alpha G_\alpha,
$$
before angular projection. The sign follows the source's equation (62).

## 2. Exact audit of the expanded source

Let $A_\alpha^{\rm print}$ denote equations (55)--(58) as visually transcribed from PDF pages 7--8. Substitution of equations (33), (35)--(38), (42), (46), (B1), (B12) and (B13) into equation (53) gives
$$
\boxed{
\begin{aligned}
A_1&=A_1^{\rm print}+\frac{3h_1^2}{2\bar\Gamma^4},\\
A_2&=A_2^{\rm print},\\
A_3&=A_3^{\rm print}
+\frac{r h_0h_4}{3\bar\Gamma^4}
+\frac{h_3^2}{4\bar\Gamma},\\
A_4&=A_4^{\rm print}.
\end{aligned}}
$$
Equivalently, the three affected printed numerators change as follows:

| Coefficient | Printed numerator | Numerator obtained by substitution |
|---|---|---|
| $h_1^2$ in $A_1$, denominator $2\bar\Gamma^5$ | $3(\bar\Gamma-15\Gamma)$ | $3(2\bar\Gamma-15\Gamma)$ |
| $h_0h_4$ in $A_3$, denominator $6\bar\Gamma^4$ | $2r+\Gamma$ | $4r+\Gamma$ |
| $h_3^2$ in $A_3$, denominator $12\bar\Gamma^2$ | $3\Gamma-4\bar\Gamma$ | $3\Gamma-\bar\Gamma$ |

The check treats $h_0,\ldots,h_7$ and $S,S_z,\ldots$ as formal jets, with
$$
\partial_rh_j=h_{j+1}
-\frac{iK+4(r-1)}{\Delta}h_j.
$$
After the displayed corrections, the entire difference vanishes exactly. No radial equation, angular eigenvalue equation, numerical frequency or small-$a$ approximation is used in this identity. All denominators must be nonzero; the endpoint statement is obtained after factoring the known singular prefactors.

A separate Schwarzschild test distinguishes this discrepancy from a harmless on-shell rewriting. For normalized spherical parent/daughter harmonics,
$$
\int {}_{-2}Y_{44}\,G_1\,d\Omega=\frac{20}{3\sqrt{7\pi}},
\qquad
\int {}_{-2}Y_{44}\,G_2\,d\Omega=\frac{5}{\sqrt{7\pi}},
$$
with the azimuthal harmonic factored as usual. Reducing radial derivatives with the parent equation gives
$$
Q_{\rm print}-Q_{\rm Appendix\ E}
=\frac{5r^2(r-2)^6}{8\sqrt{7\pi}}
(\mathcal D_2^\dagger R)^2.
$$
It is nonzero for a generic parent. The corrected source removes precisely this residual; the $G_3,G_4$ structures vanish at $a=0$.

The source formulas used here were checked on rendered PDF pages 5--8 and 18--19; the Appendix E expression was previously checked on page 21. This is an internal audit of the specified v2 document. It does not assert anything about other versions, unpublished implementations, or the authors' numerical code.

The reproducible files are:

- [Printed expansion](verification/kerr-source-published.wl) and [derived expansion](verification/kerr-source-corrected.wl).
- [Primitive substitution](verification/kerr-source-primitive.wl) and [generic exact identity](verification/kerr-source-corrected-check.wl).
- [Schwarzschild discrepancy](verification/kerr-source-schwarzschild-audit.wl).
- Corresponding saved tool outputs ending in `-result.json`.

## 3. Regular source after factoring the QNM endpoints

Write
$$
R=p_+F(x),\qquad
p_+=e^{i\omega r}(r-r_-)^{-3+2i\omega+i\sigma}
(r-r_+)^{-2-i\sigma},
\qquad
\sigma=\frac{2r_+\omega-am}{d}.
$$
The source requires up to six $\mathcal D_2^\dagger$ operations. Direct calculation gives
$$
\boxed{p_+^{-1}\mathcal D_2^\dagger p_+
=\partial_r+2i\omega+\frac{-1+4i\omega}{r-r_-}.}
$$
In particular, the outer-horizon pole cancels. Set
$$
\mathfrak D=\frac{(1-x)^2}{d}\partial_x
+2i\omega+\frac{(-1+4i\omega)(1-x)}d,\qquad
T_j=\mathfrak D^jF.
$$
Then $h_j=p_+T_j$.

For the daughter frequency $\Omega=2\omega$, $m_Q=4$, and spin $-2$, the outgoing prefactor is
$$
p_Q=e^{2i\omega r}(r-r_-)^{1+4i\omega+2i\sigma}
(r-r_+)^{2-2i\sigma}.
$$
The full prefactor identity is
$$
\boxed{\frac{\Delta^6p_+^2}{p_Q}=\frac1{r-r_-}=\frac{1-x}{d}.}
$$
Thus the regularized source is
$$
f_\ell(x)
=-\frac{1-x}{16d}
\int d\Omega\,S_{Q\ell}
\sum_{\alpha=1}^4 A_\alpha[T_0,\ldots,T_6]G_\alpha.
$$
All radial factors inside $A_\alpha$ remain as functions of $r(x)$. This representation is directly regular at $x=0$. It avoids introducing negative horizon powers and then cancelling them with the parent equation.

After using $\Gamma=2r-\bar\Gamma$, the corrected $A_\alpha$ contain 101 terms of the form
$$
c\,T_iT_j\,G_\alpha\,\frac{r^p}{\bar\Gamma^k},
\qquad p=0,1,\quad k=1,\ldots,7.
$$
The factor multiplying each such term becomes
$$
\frac{1-x}{d}\frac{r^p}{\bar\Gamma^k}
=\frac{(r_+-r_-x)^p(1-x)^{k+1-p}}
{d[(r_+-iaz)-(r_--iaz)x]^k}.
$$
For real $z\in[-1,1]$ and $0<a<1$,
$$
\max_z\left|\frac{r_--iaz}{r_+-iaz}\right|
=\frac{a}{r_+}<1.
$$
At $a=0.3$ this maximum is $0.1535359953$. Therefore the Taylor expansion of the rational angular coefficients converges uniformly for $|x|\leq1$. This statement controls these rational coefficients, not the whole infinite QNM series or the metric Green operator.

With $c_z=r_+-iaz$, $e_z=r_--iaz$, their moments are
$$
J_{\alpha kn}
=\binom{k+n-1}{n}
\int d\Omega\,S_{Q\ell}G_\alpha c_z^{-k}
\left(\frac{e_z}{c_z}\right)^n.
$$
Only polynomial convolutions with $T_iT_j$ remain. This also gives an explicit source input for the finite-jet contour bounds in [the analytic-domain note](analytic-source-domain.md).

## 4. Angular normalization and spherical extraction

Use the complex symmetric angular matrix from the spin-two benchmark. Normalize its parent and daughter eigenvectors bilinearly,
$$
v_P^Tv_P=v_{Q\ell}^Tv_{Q\ell}=1,
$$
and choose the dominant spherical coefficient to have positive real part. This is not Hermitian normalization. The solver uses bilinear angular projection; the final spherical coefficient below is insensitive to rescaling these intermediate eigenvectors.

For $m=2$ the spherical angular factors are
$$
{}_{-2}Y_{\ell2}(z)
=\sqrt{\frac{2\ell+1}{4\pi}}\left(\frac{1+z}{2}\right)^2
P_{\ell-2}^{(0,4)}(z).
$$
For $m=4$ they are
$$
{}_{-2}Y_{\ell4}(z)
=\sqrt{\frac{2\ell+1}{4\pi}}
\sqrt{\frac{(\ell+4)!(\ell-4)!}{(\ell+2)!(\ell-2)!}}
\frac{(1-z)(1+z)^3}{16}P_{\ell-4}^{(2,6)}(z).
$$
The common $e^{im\phi}$ is omitted; angular projections include $2\pi\,dz$.

The independently solved parent has
$$
\omega=0.41952668176385148648-0.08772927189431198649i,
$$
$$
F(1)=\sum_na_n
=5.7239574358525684073-0.11798708581538594292i.
$$
Let $D_\ell(x)=\sum_nd_{\ell n}x^n$ be the daughter series and $E_\ell=D_\ell(1)$. The observed ratio of the spherical daughter $44$ amplitude to the square of the spherical parent $22$ amplitude is
$$
\boxed{
\mathcal R_{\rm DD}^{22\to44}
=\frac{\sum_{\ell\geq4}(v_{Q\ell})_4E_\ell}
{2\omega^6F(1)^2(v_P)_2^2}.
}
$$
The curvature-to-strain factor is the same fixed asymptotic convention checked in the Schwarzschild note. At nonzero spin, retaining only the $\ell=4$ spheroidal daughter is insufficient for comparison with a spherical dataset.

For illustration, the leading contributions to this spherical sum are

| Spheroidal daughter $\ell$ | Contribution to $\mathcal R_{\rm DD}^{22\to44}$ |
|---|---|
| 4 | $0.13416323624820787-0.007103411589565389i$ |
| 5 | $-0.000044120846944823+0.000018521842209272i$ |
| 6 | $1.44108845\times10^{-9}-1.64864179\times10^{-9}i$ |
| 7 | $2.91550434\times10^{-13}-7.86895791\times10^{-13}i$ |
| 8 | $4.36316\times10^{-18}+5.61754\times10^{-17}i$ |

The calculation includes daughters through $\ell=10$. The last included contribution has magnitude below $4\times10^{-25}$; this observed decay is not a bound on every omitted multipole.

## 5. Independent solve and checks

The daughter equation is
$$
x(1-x)^2D_\ell''
+(B_0+B_1x+B_2x^2)D_\ell'
+(C_0+C_1x)D_\ell=f_\ell.
$$
The coefficients are those derived in the spin-two note at $(s,m,\Omega)=(-2,4,2\omega)$ and the appropriate daughter angular eigenvalue. Solve the inhomogeneous recurrence
$$
\alpha_nd_{n+1}+\beta_nd_n+\gamma_nd_{n-1}=f_n,
\qquad d_{-1}=0,\quad d_{N+1}=0.
$$
The final boundary condition is a finite truncation of the minimal solution. No exact termination is assumed.

The parent continued fraction uses depth 1600, with 2000 minimal parent coefficients. Arithmetic uses 80 digits with fixed precision in the long recurrence and source solve. The source implementation first reproduced the independently derived Schwarzschild Appendix E solve. Its initial $a=0$ test encountered the computational convention $0^0$ in the zeroth geometric moment; that moment is now explicitly the constant vector 1. The failed and corrected results are saved.

| Radial cutoff $N$ | Angular cutoff | Quadrature points | Moment cutoff | Spherical strain ratio |
|---|---|---|---|---|
| 400 | 14 | 40 | 100 | $0.134119116842642914-0.007084891396784877i$ |
| 800 | 20 | 64 | 140 | $0.134119116842643053-0.007084891396784750i$ |
| 1200 | 20 | 64 | 140 | $0.134119116842643053-0.007084891396784750i$ |

The first row includes daughters $4\leq\ell\leq8$; the last two include $4\leq\ell\leq10$. The first refinement changes several cutoffs together, so its $1.89\times10^{-16}$ difference is a combined check. The last refinement isolates the daughter radial cutoff and changes the result by $3.16\times10^{-22}$.

For an independent residual check, evaluate the source directly from its rational angular expression and the long parent series, without the source moment expansion or tridiagonal right-side coefficients. Substitute the daughter polynomial and its derivatives into the differential equation at $x=0.2,0.6,0.9,0.99,0.999$. The largest relative residual over daughters $4,\ldots,10$ and these points is $3.84\times10^{-20}$. Interior residuals are below $2\times10^{-57}$. Both checks are finite computations.

The public spherical DD datum at this spin is
$$
\mathcal R_{\rm DD}^{\rm data}
=0.13411911684248251776-0.00708489139681203463i.
$$
The comparison uses the unchanged imported dataset described in [the published-data audit](published-gravitational-benchmark.md). It does not use a fit. The small discrepancy is much smaller than that dataset's saved coarse-to-fine difference.

Reproducible calculations are [the 400-mode run](verification/kerr-quadratic.wl), [the 800-mode refinement](verification/kerr-quadratic-refined.wl), and [the final solve with direct source residuals](verification/kerr-quadratic-final.wl). Their adjacent JSON files retain tool results. The separately saved `kerr-quadratic-residual-partial` run includes only daughters 4--6; its sum is a partial sum, not the final spherical answer.

## 6. Relation to the original CPS question

The calculation now supplies a rotating gravitational source, an endpoint-factored representation, an independent response solve, and a fixed waveform coefficient matching public data. The azimuthal selection rule $m_Q=2m=4$ is explicit. Angular mixing into $\ell>4$ is also explicit; setting those terms to zero at nonzero spin would be incorrect.

The [separated Green-integral derivation](separated-source-green.md) uses this source's endpoint powers to prove convergence of the radial source projection, including the algebraic tail from the incoming Green-kernel branch. It identifies the waveform amplitude with the sourced radial-current balance at a nonresonant frequency.

The [chiral null-plane proof](chiral-source-identity.md) now shows that this DD source allows a zero GHZ corrector and has zero quadratic extreme-curvature extraction in its compatible tetrad. The [Hertz reconstruction](hertz-metric-reconstruction.md) provides a metric and independent full Einstein-component checks at two points. These results do not apply to the opposite-chirality mixed channel.

The source-free spin-two norm and the sourced waveform remain different objects. To identify this coefficient with a metric-CPS construction, one still has to apply the sourced metric/Teukolsky current relation, including its $j_S(u,Eh)$ term and boundary superpotential, with consistent normalization on the same continued domain. The untruncated all-component reconstruction statement also remains to be established.

**Verified:** generic symbolic equality between the reconstructed source and the corrected expansion; a nonzero discrepancy in the original expanded formulas; Schwarzschild consistency; exact endpoint-prefactor identities; an independent rotating source solve with refinement and direct differential residuals; numerical agreement with the public spherical DD datum.

**Assumptions:** the source-derived reconstruction and Newman--Penrose source identities in the specified v2 document; the selected QNM branch and asymptotic strain frame; convergence of the minimal radial series; the displayed finite angular truncation and bilinear projection.

**Not verified:** an independent full Einstein-tensor derivation; certified infinite-series error bounds; the direct--mirror channel; a completed metric-CPS/residue/reconstruction theorem for the gravitational source domain. The later [normalized metric-CPS projection](metric-cps-normalization.md) and [gauge-completed selected coefficient](invariant-selected-coupling.md) now supply the original criterion on their declared domain. The full infinite-angular metric remains an unproved extension.
