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

## 5. Outer endpoints and a uniform ambiguity class

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
oriented cut integral. Denote the resulting antisymmetric bilinear by

$$
C_T^Y(x_1,x_2)
=\int_{\partial X_T}
\bigl(\delta_1Y[\delta_2]-\delta_2Y[\delta_1]\bigr).
\tag{5.2}
$$

Pointwise continuity of each $C_T^Y$ is not enough for a density argument.
The allowed class $\mathscr Y_{\rm tr}^0$ is therefore restricted as follows.
After harmonic reduction and the fixed-frame Maxwell/master dictionary, its
outer-cut bilinear must factor as

$$
C_T^Y(x_1,x_2)
=\langle\Gamma_Tx_1,B_T\Gamma_Tx_2\rangle
-\langle\Gamma_Tx_2,B_T\Gamma_Tx_1\rangle,
\qquad \sup_T\|B_T\|\leq b_Y,
\tag{5.3}
$$

where $\Gamma_T$ contains only zeroth-order master traces
$f^P_{\ell m}(\sqrt2T),g^P_{\ell m}(\sqrt2T)$, with the angular weights used
in the energy direct sum. Generator-derivative point traces and an
energy-level asymptotic potential trace are not included.

For $q\in H^1(\mathbb R_+)$, its continuous representative obeys the uniform
trace estimate

$$
|q(L)|^2
\leq 2\|q\|_{L^2(L,\infty)}\|q'\|_{L^2(L,\infty)}
\leq \|q\|_{H^1(\mathbb R_+)}^2.
\tag{5.4}
$$

The massive estimate (2.1), together with
$\lambda_\ell\geq\lambda_1>0$, therefore gives one $T$-independent constant
$c_{\rm tr}$ such that

$$
\|\Gamma_Tx\|\leq c_{\rm tr}\|x\|_E,
\qquad
\boxed{\sup_T|C_T^Y(x_1,x_2)|
\leq 2b_Yc_{\rm tr}^2\|x_1\|_E\|x_2\|_E.}
\tag{5.5}
$$

This includes zeroth-order local cut functionals whose reduced angular
coefficient matrices are uniformly bounded in the displayed trace norm. It
does not include arbitrary asymptotic $Y$.

On the finite-harmonic Schwartz core, every entry of $\Gamma_Tx$ tends to
zero, hence $C_T^Y(x_1,x_2)\to0$. For general energy data choose core
sequences $x_{i,n}\to x_i$. From (5.5), uniformly in $T$,

$$
\begin{aligned}
|C_T^Y(x_1,x_2)-C_T^Y(x_{1,n},x_{2,n})|
\leq C_Y\bigl(&\|x_1-x_{1,n}\|_E\|x_2\|_E\\
&+\|x_{1,n}\|_E\|x_2-x_{2,n}\|_E\bigr).
\end{aligned}
\tag{5.6}
$$

Take $\limsup_{T\to\infty}$ and then $n\to\infty$ to obtain
$C_T^Y(x_1,x_2)\to0$ for all energy data. Equivalently, if pointwise
boundedness of the family $\{C_T^Y\}_T$ is established for every pair, the
bilinear Uniform Boundedness Principle supplies the uniform operator bound
used in (5.5).

Thus **G-C-amb-uniform is proved only for $Y\in\mathscr Y_{\rm tr}^0$**.
An arbitrary local representative with derivative traces, an uncontrolled
asymptotic potential, or a genuinely dynamical boundary action remains
`conditional` and may define another boundary theory. The fixed Maxwell
Lee--Wald representative and G-C itself remain `proved` independently of this
restricted ambiguity theorem.

## 6. Zero-mode boundary

The estimate (2.1) contains $\mu^{-2}$. It has no uniform massless limit.
Consequently $\ell=0$ electric flux, Chern sectors, and any memory/charged
frame extension are excluded from G-C and must be treated as superselection or
separate finite-dimensional sectors.

## 7. Evidence boundary

**Proved:** full-Maxwell finite exhaustion, vanishing physical tails, (4.2),
and G-C-amb-uniform for the uniformly trace-bounded class
$\mathscr Y_{\rm tr}^0$.

**Assumptions for G-C-amb-uniform:** zeroth-order $H^1$ master traces,
uniformly bounded angular cut operators, fixed radiative sector, and no
dynamical boundary action.

**Checked numerically:** Schwartz packet exhaustion and translation residual
decay in `global_horizon_exhaustion_checks.py`.

**Not verified/proved here:** a uniform bound for arbitrary asymptotic $Y$,
generator-derivative point traces, or the energy potential completion.

**Not inferred from the script:** $L^2$ tail convergence, dominated convergence
of the angular tower, the ambiguity theorem, or potential Sobolev completion.
