# Stage-2.1 finite-cell audit summary

> **Superseded by Stage 2.2.**  The HF corner and algebraic branch-normal
> dictionary below remain valid.  The former area-gauge proof omitted the
> fixed-$v$ versus fixed-$x=v/\bar v$ variation and the common-domain
> constraint; the former composition statement was subdivision consistency.
> See `STAGE2_2_AUDIT_SUMMARY.md` and calculation 04 for the authoritative
> claims.

## Direct verdict

**Historical Stage-2.1 verdict:** the corner was correct, while the area and
composition evidence was incomplete.  Stage 2.2 now proves the area identity
with an explicit generator and proves independent-data bulk reduction; a
geometric closing-port theorem remains conditional.

## Initial corner

HF define $e^h=\sqrt{|H|}$.  For

$$
ds_\perp^2=-2e^{-m}du\,dv,
$$

the normal block has determinant $-e^{-2m}$, hence $h=-m$ with no additive
term.  The two negatively incident initial HF cut terms give

$$
\Theta_{S_0}^{\rm HF}
=C_G\int_{S_0}(m_0-1)\delta\Omega_0\,d^2x,
$$

and therefore

$$
\boxed{
\Omega_{S_0}^{\rm HF}
=+C_G\int_{S_0}\delta m_0\wedge\delta\Omega_0\,d^2x.}
$$

The former negative sign mixed the HF cut split with an independently signed
Jubb/LMPS joint split.  It is withdrawn.  Subtracting
$\delta[C_G\int\Omega_0(m_0-1)]$ gives the equivalent boost polarization
$-C_G\int\Omega_0\delta m_0$.

## Shared normal-bundle datum

With

$$
\omega_A^{(+)}=-e^m\ell_-\cdot D_A\ell_+,
\qquad
\omega_A^{(-)}=-e^m\ell_+\cdot D_A\ell_-,
$$

direct differentiation of $\ell_+\cdot\ell_-=-e^{-m}$ gives

$$
\omega_A^{(+)}+\omega_A^{(-)}=-D_A m.
$$

The shared datum and branch values are

$$
\boxed{
\widehat\omega_A=\frac12(\omega_A^{(+)}-\omega_A^{(-)}),
\quad
\omega_A^{(+)}=\widehat\omega_A-\frac12D_A m,
\quad
\omega_A^{(-)}=-\widehat\omega_A-\frac12D_A m.}
$$

CK's sheetwise H\'aj\'i\v{c}ek datum is the appropriate branch value.
Reisenberger's affine twist is
$\tau_{\ell A}=2\widehat\omega_A$; after
$n_s=B_s\ell_s$ it becomes
$\tau_{vA}=2\widehat\omega_A+D_A\log|B_+/B_-|$.

## Area-gauge equivalence

On the open set where
$v_s=r_s/r_0$ is monotonic,

$$
B_s=\frac{d\lambda_s}{dv_s}=\frac{2}{v_s\theta_s},
\qquad
B_{s0}=\frac2{\theta_{s0}},
$$

and

$$
\lambda_R=m-\log|B_+B_-|.
$$

The fixed-$v$ calculation below was incomplete because Reisenberger's natural
outer-normalized coordinate is $x=v/\bar v_s$.  Stage 2.2 instead derives,
per branch, the shared-corner conformal term

$$
-\frac{C_G}{8}\int_{S_0}
\delta\Omega_0\wedge
\operatorname{tr}(K_sC_s)|_{v=1}\,d^2x.
$$

The corrected identity is calculation 04 equation (3.12), with explicit
$Y$ and area-port shift.  It allows the outer conformal metric to vary.  No
independent traceless shape port is forced by the null reduction; one can be
added only by a selected closing action or endpoint polarization.  The area
chart remains invalid through $\theta_s=0$.

## Composition

For a common forward generator, the matching locus is

$$
\Omega_L=\Omega_R,
\quad
\bar q_{AB,L}=\bar q_{AB,R},
\quad
\theta_L=\theta_R,
\quad
\sigma_{AB,L}=\sigma_{AB,R}.
$$

Equivalently, $q_{AB}$ and
$B_{AB}=\sigma_{AB}+\theta q_{AB}/2$ are continuous.  In this Stage-2.1
calculation the two regional reconstructions were assumed to be restrictions
of the unique long reconstruction.  This proves subdivision consistency.
Calculation 04 starts with independent regional data, constructs $\iota$ and
$\rho$, and proves the bulk reduction.  The complete geometric port quotient
remains conditional on a closing action.

Before first-jet matching the explicit obstruction is

$$
\mathcal J_{AB}
=(\sigma_{AB,R}-\sigma_{AB,L})
+\frac12(\theta_R-\theta_L)q_{AB},
$$

with

$$
\mathcal J_{AB}\mathcal J^{AB}
=\Delta\sigma_{AB}\Delta\sigma^{AB}
+\frac12(\Delta\theta)^2.
$$

A nonzero $\mathcal J_{AB}$ means there is no smooth combined vacuum
characteristic solution.  It is a domain obstruction, not an anomalous
two-form left over after composition.

## Outer ports and Stage-3 gate

Additional outer shape ports are not required by a variable outer conformal
metric.  They are closing-wall/polarization dependent.

**Stage 3 is ready only in the controlled polarization fixed by Stage 2.2:**
retain $\widehat\omega_A=\tau_{\ell A}/2$, endpoint maps $s_\pm^A$, and their
Reisenberger momenta $\widetilde\tau_{\pm A}$.  It has not been started.

## Verification

**Verified at Stage 2.1:** V15--V22 check the normal determinant and corner
sign, branch connection dictionary, affine-to-area Jacobians, conformal
endpoint coefficient, normal-scale one-form algebra, first-jet mismatch,
subdivision additivity/associativity, and shear-free/diagonal limits.  V23--V25
are the Stage-2.2 moving-endpoint and independent-data checks.

**Assumptions:** four-dimensional vacuum; caustic-free finite intervals;
smooth positive conformal metric; affine zero-shift generators; fixed labels
and endpoint maps; monotonic area for the area chart; coherent cut incidence.

**Not verified:** a closing-wall action and its port momenta; an area chart
through $\theta=0$; the varying endpoint-map/twist block; full gauge
nondegeneracy; functional completion; or Stage 3.
