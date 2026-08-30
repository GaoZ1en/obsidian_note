# Stage-2.1 finite-cell audit summary

## Direct verdict

**Correct under the following precise conditions:** the classical
spin-0+spin-2 finite double-null form is corner-consistent and compositional in
the selected HF representative, affine fixed-generator gauge, and full
first-jet matching locus.  Its Reisenberger area-data expression is equivalent
on the monotonic-area, fixed-endpoint-map, fixed-outer-two-metric sector.  This
is not a global area chart and not a unique variable-shape outer completion.

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

Using comoving variations at fixed $v_s$, the focusing identity for $B_s$,
the normal-scale terms, and the moving lower limit reproduces Reisenberger
equation (117), including, per branch, the shared-corner conformal term

$$
-\frac{C_G}{8}\int_{S_0}
\delta\Omega_0\wedge
\operatorname{tr}(K_sC_s)|_{v=1}\,d^2x.
$$

Thus the affine and area forms are equivalent on the declared fixed-map,
fixed-outer-two-metric sector.  The statement is false as a global chart
through $\theta_s=0$.  If the outer conformal metric varies, retain

$$
C_G\int_{S_s}\left[
b_s\delta\Omega_{sL}
+\pi_s^{AB}\delta\bar q_{AB,sL}
\right]d^2x,
\qquad
\bar q_{AB,sL}\pi_s^{AB}=0.
$$

A unique $\pi_s^{AB}$ requires a concrete closing boundary action.

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
$B_{AB}=\sigma_{AB}+\theta q_{AB}/2$ are continuous.  On this locus the two
regional reconstructions are restrictions of the unique long reconstruction,
and the non-integrated reduced density is additive.  Hence spin-0+spin-2
composition holds exactly.  Three-segment associativity follows from the same
integral additivity.

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

Additional outer shape ports are required precisely when the outer traceless
metric is allowed to vary.  They vanish on the fixed-outer-two-metric
pullback.  No uniqueness claim is made without a closing action.

**Stage 3 is ready to begin, but has not been started.**  The shared
$\widehat\omega_A$ and the Stage-2 corner/composition structure are now fixed.
Stage 3 must still choose the endpoint-map/embedding polarization before
pulling back the spin-1 term.

## Verification

**Verified:** V15--V22 check the normal determinant and corner sign, branch
connection dictionary, affine-to-area Jacobians, conformal endpoint
coefficient, normal-scale cancellation, first-jet mismatch, two-segment
additivity, three-segment associativity, and shear-free/diagonal limits.

**Assumptions:** four-dimensional vacuum; caustic-free finite intervals;
smooth positive conformal metric; affine zero-shift generators; fixed labels
and endpoint maps; monotonic area for the area chart; coherent cut incidence.

**Not verified:** a unique variable-shape closing-wall momentum; an area chart
through $\theta=0$; the varying endpoint-map/twist block; full gauge
nondegeneracy; functional completion; or Stage 3.
