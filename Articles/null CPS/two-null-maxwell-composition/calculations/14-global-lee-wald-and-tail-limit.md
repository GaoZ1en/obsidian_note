# Global Lee--Wald Form and Tail Limit

## 1. Direct verdict

**G-C is proved** on the gauge-invariant Maxwell energy space of calculation
12. The proof uses the exact finite Stokes identity, the massive $L^2$ tail
lemma, and the explicit Maxwell/master pullback. Outer terms vanish by an
estimate; they are not discarded by an endpoint convention.

## 2. Sectorwise massive tail estimate

For one master mass $\mu>0$, restriction gives

$$
f(u)=\Phi(u,0),\qquad g(v)=\Phi(0,v).
$$

The exact frequency changes

$$
\alpha_k=\frac{\omega_k+k}{\sqrt2},
\qquad \beta_k=\frac{\omega_k-k}{\sqrt2}
$$

give

$$
\|f\|_{H^1(\mathbb R_+)}^2+
\|g\|_{H^1(\mathbb R_+)}^2
\leq
\sqrt2\left(1+\frac2{\mu^2}\right)
\int\omega_k|a(k)|^2dk.
\tag{2.1}
$$

Therefore, for two energy profiles,

$$
\begin{aligned}
\left|\int_U^\infty(f_1'f_2-f_2'f_1)du\right|
\leq{}&\|f_1'\|_{L^2(U,\infty)}\|f_2\|_{L^2(U,\infty)}\\
&+\|f_2'\|_{L^2(U,\infty)}\|f_1\|_{L^2(U,\infty)},
\end{aligned}
\tag{2.2}
$$

and the right side tends to zero. The $g$ tail is identical. On the Schwartz
spectral core, the fields and all derivatives decay faster than every power
in the exterior region $t\geq1$, $|z|\geq t$. Energy density then extends the
vanishing exterior Cauchy flux to the full energy space.

These analytic statements are the read-only theorem of
`../../null-characteristic-cps/calculations/12-global-characteristic-completion.md`.
They are imported here only after the full-Maxwell lift below.

## 3. Finite identity and completion

For every $T<\infty$, calculation 06 gives, sector by sector,

$$
\Omega_{X_T}^{P,\ell m}
=\Omega_{\Sigma_T^{\rm int}}^{P,\ell m}.
\tag{3.1}
$$

There are no missing sides in (3.1). Equation (2.2) completes the two null
half-rays, while the exterior Cauchy estimate completes
$[-T,T]\subset\mathbb R_z$. Hence

$$
\boxed{
\lim_{T\to\infty}\Omega_{X_T}^{P,\ell m}
=\Omega_{X_\infty}^{P,\ell m}
=\Omega_{\rm Cauchy}^{P,\ell m}.}
\tag{3.2}
$$

Because $\mu_\ell^2=\lambda_\ell\geq\lambda_1>0$, the constants in the
sectorwise bilinear energy bound are uniform over the radiative tower up to
the fixed $R$-dependent lower mass. Dominated convergence with the direct-sum
energy (2.5) therefore yields

$$
\Omega_{X_\infty}^{\rm master}
=\sum_{P,\ell,m}\Omega_{X_\infty}^{P,\ell m}
=\Omega_{\rm Cauchy}^{\rm master}.
\tag{3.3}
$$

## 4. Lift to full Maxwell variables

The action reduction and the direct pullback audited in calculations 04 and
06 give

$$
\Omega_{X_T}^{\rm Max}
=\sum_{P,\ell,m}\Omega_{X_T}^{P,\ell m},
\qquad
\Omega_{\rm bulk}^{\rm Max}
=\sum_{P,\ell,m}\Omega_{\rm Cauchy}^{P,\ell m}.
\tag{4.1}
$$

The characteristic profiles in (4.1) are not independent news: they are
obtained from $(r,p;E_0,b^0)$ by (4.3) of calculation 12. Combining
(3.3), (4.1), and G-A gives

$$
\boxed{R_\infty^*\Omega_{X_\infty}^{\rm Max}
=\Omega_{\rm bulk}^{\rm Max}.}
\tag{4.2}
$$

Weak nondegeneracy follows either from the explicit spectral form

$$
\Omega_{X_\infty}(a_1,a_2)
=i\sum_{P,\ell,m}\int dk
(\bar a_1a_2-\bar a_2a_1)
\tag{4.3}
$$

or by G-A and Cauchy weak nondegeneracy. Thus $R_\infty$ is a global
Lee--Wald symplectomorphism.

## 5. Outer endpoints and representative ambiguity

The raw finite Maxwell calculation contains the physical outer-cut terms and,
in a split potential presentation, exact frame/connection endpoint terms.
Their global treatment is:

1. physical radiative terms vanish in the $T\to\infty$ bilinear limit by
   (2.2) and the full-tower dominated-convergence argument;
2. on the fixed-asymptotic-frame Schwartz potential core, the exact dressed
   connection and frame variations tend to zero by the massive exterior
   estimate of G-B;
3. the primary energy theorem is stated on $F$, so no unproved potential trace
   is needed.

Under a common Lee--Wald representative change

$$
\theta\longmapsto\theta+dY+\delta B,
\tag{5.1}
$$

$\delta B$ drops from $\omega$ and $dY$ changes each finite form by its
oriented cut integral. For representative changes whose cut functional is
continuous in the energy graph topology and vanishes on the Schwartz core,
density makes the limit zero. An arbitrary $Y$ with uncontrolled asymptotic
trace, or a genuinely dynamical boundary action, defines another boundary
theory and is not included.

## 6. Zero-mode boundary

The estimate (2.1) contains $\mu^{-2}$. It has no uniform massless limit.
Consequently $\ell=0$ electric flux, Chern sectors, and any memory/charged
frame extension are excluded from G-C and must be treated as superselection or
separate finite-dimensional sectors.

## 7. Evidence boundary

**Proved:** full-Maxwell finite exhaustion, vanishing physical tails, the
fixed-frame ambiguity limit on the declared core, and (4.2).

**Checked numerically:** Schwartz packet exhaustion and translation residual
decay in `global_horizon_exhaustion_checks.py`.

**Not inferred from the script:** $L^2$ tail convergence, dominated convergence
of the angular tower, or potential Sobolev completion.
