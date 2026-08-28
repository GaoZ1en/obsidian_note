# Finite-Cross Hamiltonian Obstruction

## 1. Direct verdict

**Correct obstruction statement:** on a fixed finite cross with freely varying
physical outer data, $\partial_t$ and $\partial_z$ are not internal symmetries
and are not Hamiltonian vector fields. This is theorem L-H-trans with status
`proved`.

**Incorrect former interpretation:** the nonzero endpoint term is not, by
itself, evidence that the finite local characteristic data are incomplete.
The finite cross is a local Goursat chart/open region, and neither translation
preserves its two fixed physical outer cuts.

The $SO(3)$ rotations and proper/diagonal cut-gauge statements remain
Hamiltonian on the declared smooth domain. Global translations are treated on
the complete cross in calculation 15.

## 2. Domain of the induced local actions

For one master, write

$$
f(u)=\Phi(u,0),\qquad g(v)=\Phi(0,v),\qquad
a=\frac{\lambda_\ell}{2}.
$$

The equation $(2\partial_u\partial_v+\lambda_\ell)\Phi=0$ gives

$$
\partial_v\Phi(u,0)=g'(0)-a\int_0^u f(s)ds,
\tag{2.1}
$$

$$
\partial_u\Phi(0,v)=f'(0)-a\int_0^v g(r)dr.
\tag{2.2}
$$

Thus the formal restricted translation actions require $f'(0),g'(0)$ and are
defined on the dense smooth-generator subcore (or a matched $H^2$ domain), not
as bounded operators on all matched $H^1$ data. More importantly, their flows
move the outer cuts, so the action is not an automorphism of a fixed finite
regional phase space.

## 3. Moving-boundary identity

Let $\Sigma$ be the finite spacelike diagonal used in calculation 06. For a
bulk Killing field $X$ and on-shell variations,

$$
\begin{aligned}
(\mathcal L_{\delta_X}\Omega_\Sigma)(\delta_1,\delta_2)
&=\int_\Sigma\mathcal L_X\omega(\delta_1,\delta_2)\\
&=\int_{\partial\Sigma}i_X\omega(\delta_1,\delta_2).
\end{aligned}
\tag{3.1}
$$

For $X=\partial_t,\partial_z$ the final expression is generically nonzero at
the two physical outer cuts. Fixed outer frames remove frame variations; they
do not set the physical Maxwell flux variations to zero. Hence

$$
d_{\rm field}(\iota_{\delta_X}\Omega_X)
=\mathcal L_{\delta_X}\Omega_X\ne0.
\tag{3.2}
$$

No scalar counterterm added to a putative Hamiltonian can make a nonclosed
one-form exact. Equation (3.1) is precisely the flux balance law for a moving
open region.

## 4. Finite regression

`scripts/hamiltonian_test_checks.wl` uses six exact on-shell directions for
one master. It finds

$$
\operatorname{rank}(A_t^T\Omega_X+\Omega_XA_t)=2,
\qquad
\operatorname{rank}(A_z^T\Omega_X+\Omega_XA_z)=4,
\tag{4.1}
$$

while the rotational residual has rank zero. The nonsymmetric finite
translation Hamiltonian candidates are a regression witness for (3.2), not a
continuum tail theorem.

The separate global packet regression in
`scripts/global_horizon_exhaustion_checks.py` restricts Schwartz massive wave
packets to $X_T$ and checks that the two residuals decay as $T$ grows. The
analytic reason is the $L^2$ massive-tail theorem used in calculation 14.

## 5. Rotations and cut gauge

Every $SO(3)$ generator is tangent to the sphere cuts and preserves the round
metric, harmonic decomposition, and endpoint section. Since $S^2$ has no
boundary,

$$
\mathcal L_{\delta_J}\Omega_X=0,
\qquad
H_J^X=\frac12\Omega_X(\Phi,\delta_J\Phi),
\qquad
\iota_{\delta_J}\Omega_X=-\delta H_J^X.
\tag{5.1}
$$

The $\mathfrak{so}(3)$ algebra closes on finite harmonic sums and on its dense
angular-generator domain. The moment map is fixed to vanish at the zero field,
so no corner central term occurs.

Before reduction, sheet-proper and diagonal generators are exactly the kernel
directions of calculations 03 and 05. Proper generators have zero Hamiltonian;
the diagonal moment map is the oriented electric matching constraint and acts
trivially after zero-level reduction.

## 6. Theorem L-H-trans

| Generator | Verdict | Precise condition |
|---|---|---|
| $\partial_t$ | `proved` | obstruction: not an internal Hamiltonian symmetry of a fixed finite cross with variable physical outer data |
| $\partial_z$ | `proved` | obstruction: same; its endpoint bilinear differs from the time case |
| $SO(3)$ | `proved` | smooth angular-generator domain, round $S^2$ |
| proper cut gauge | `proved` | zero-Hamiltonian kernel |
| diagonal cut gauge | `proved` | electric zero level, then quotient |

The authoritative status word is `proved`; “obstruction” describes the claim,
not a second status vocabulary. No statement in this table blocks the algebraic Weyl
functor of calculation 10 or the global Hamiltonian theorem of calculation 15.

## Evidence boundary

**Verified:** the exact moving-boundary identity, nonzero finite translation
residuals, zero rotation residual, and the proper/diagonal moment-map behavior.

**Assumptions:** finite fixed cross, varying physical outer data, smooth
generator domain, trivial bundle, $Q_E=n=0$, $\ell\geq1$.

**Not claimed:** that translations are Hamiltonian on the finite region, that
an endpoint scalar repairs them, or that local Goursat completeness fails.
