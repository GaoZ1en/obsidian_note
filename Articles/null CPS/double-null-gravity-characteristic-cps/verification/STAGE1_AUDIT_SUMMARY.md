# Stage-1 finite-cell audit summary

## Direct verdict

**Correct under the declared area/boost outer-port policy:** the classical
affine, shear-free, twist-free spin-0 sector is endpoint/corner complete on a
finite double-null cell.  This is not yet the full reduced gravitational
characteristic CPS.

## What is proved

For each branch,

$$
\theta_\pm=\frac{\theta_{\pm0}}
{1+\lambda_\pm\theta_{\pm0}/2},
\qquad
\Omega_\pm=\Omega_0
(1+\lambda_\pm\theta_{\pm0}/2)^2
$$

solve the affine shear-free Raychaudhuri and area equations on the caustic-free
domain.  The selected HF/LMPS sheet representative pulls back to

$$
\Omega_{N_\pm}^{(0),\rm bulk}
=\frac{C_GL_\pm}{2}
\delta\Omega_0\wedge\delta\theta_{\pm0}
=\frac{C_G\delta\Omega_0\wedge\delta\Omega_{\pm L}}
{2\sqrt{\Omega_0\Omega_{\pm L}}}.
$$

At $S_0$, the two sheet endpoint variations sum to
$-C_G\Omega_0\delta a_0$.  Adding
$\delta I_{S_0}=C_G(\Omega_0\delta a_0+a_0\delta\Omega_0)$ cancels the normal-
normalization variation and leaves one corner pair
$-C_G\delta m_0\wedge\delta\Omega_0$.

Retaining signed outer boosts $b_\pm$ in area polarization gives

$$
\Omega_{\rm cell}^{(0)}=C_G\int d^2x\left[
-\delta m_0\wedge\delta\Omega_0
+\sum_{s=\pm}\left(
\frac{\delta\Omega_0\wedge\delta\Omega_{sL}}
{2\sqrt{\Omega_0\Omega_{sL}}}
+\delta b_s\wedge\delta\Omega_{sL}\right)\right].
$$

Pointwise this form has rank six and zero kernel in the declared truncated,
fixed-gauge phase space.  Each $\theta_{\pm0}$ obtains a partner through its
own outer port.  If the outer areas are fixed, the pulled-back rank is two;
the unused $b_\pm$ directions are kernel source directions until fixed or
quotiented, after which only $(\Omega_0,-m_0)$ remains.  Two consecutive affine
sheet segments compose after the middle area/boost port is matched once.

The $\kappa$ and $\kappa+\theta$ null-boundary representatives give the same
spin-0 form when their initial and outer endpoint shifts are both included.

## What depends on port polarization or corner ambiguity

The rank-six statement uses retained area/boost outer ports.  The rank-two
statement uses fixed outer areas and reduction of the associated source
momenta.  Fixing boosts while varying areas is a different boundary policy.

Under $\boldsymbol\theta_N\to\boldsymbol\theta_N+d\boldsymbol Y$, sheet support
moves to the cuts.  The extended form is canonically equivalent only when the
outer boosts and the common initial boost are shifted with $\boldsymbol Y$.
Deleting or freezing a cut without transforming its policy produces a
representative-dependent answer.  A concrete outer closing geometry is still
needed to express $b_\pm$ in terms of specified wall normals or embeddings,
but not to retain the ports abstractly.

## What remains open before Stage 2 is reduced

The spin-2 density convention is repaired: with
$\widetilde\sigma^{AB}=\Omega\sigma^{AB}$ and bare measure
$d\lambda d^2x$, the potential contains the remaining factor
$\Omega\widetilde\sigma^{AB}\delta\bar q_{AB}/2$.  The diagonal conformal chart
checks only this kinematics.

Stage 2 still requires the actual conformal-metric constraint pullback,
matching $\bar q^+_{AB}|_{S_0}=\bar q^-_{AB}|_{S_0}$ once, retaining all cut
terms, and computing the resulting rank/kernel.  Damour/spin-1 reduction and
the full gauge quotient remain open.  Cross-focusing is not an extra algebraic
compatibility condition on generic CK/Sachs data; it is only a test of whether
the special shear-free/twist-free truncation used here is preserved by
transverse vacuum evolution.
