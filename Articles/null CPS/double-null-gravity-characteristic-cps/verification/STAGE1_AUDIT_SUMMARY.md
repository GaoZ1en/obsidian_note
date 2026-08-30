# Stage-1 finite-cell audit summary

## Direct verdict

**Correct under the declared area/boost outer-port policy and
fixed-generator pullback:** the classical affine, shear-free spin-0 block is
endpoint/corner complete and consistently embedded in the Raychaudhuri--Damour
constraints.  It is not a generic twist-free truncation and is not by itself
the full reduced gravitational characteristic CPS.

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

The 4D affine, shear-free Damour equation and its exact solution are

$$
(\partial_{\lambda_\pm}+\theta_\pm)\omega_A^\pm
=\frac12D_A\theta_\pm,
$$

$$
\boxed{
\omega_A^\pm(\lambda_\pm)
=\frac{\omega^{(\pm)}_{A0}+\lambda_\pm D_A\theta_{\pm0}/2}
{(1+\lambda_\pm\theta_{\pm0}/2)^2}.}
$$

Here
$\omega^{(+)}_{A0}=\widehat\omega_A-D_A m_0/2$ and
$\omega^{(-)}_{A0}=-\widehat\omega_A-D_A m_0/2$.  The spin-0 block survives
because $\delta\ell_\pm^A=0$ makes the spin-1
potential vanish, not because $\omega_A=0$.  Global $\omega_A=0$ in this
gauge requires the extra restrictions
$\omega^{(\pm)}_{A0}=0=D_A\theta_{\pm0}$ and is not generic CIVP data.

At $S_0$, the unified HF cut representative has $h=-m$ and gives
$\Theta_{S_0}=C_G(m_0-1)\delta\Omega_0$.  Its curl leaves one corner pair
$+C_G\delta m_0\wedge\delta\Omega_0$.  The former negative sign mixed the HF
cut split with an independent Jubb/LMPS joint split and is withdrawn.

Retaining signed outer boosts $b_\pm$ in area polarization gives

$$
\Omega_{\rm cell}^{(0)}=C_G\int d^2x\left[
+\delta m_0\wedge\delta\Omega_0
+\sum_{s=\pm}\left(
\frac{\delta\Omega_0\wedge\delta\Omega_{sL}}
{2\sqrt{\Omega_0\Omega_{sL}}}
+\delta b_s\wedge\delta\Omega_{sL}\right)\right].
$$

Pointwise this form has rank six and zero kernel in the declared truncated,
fixed-gauge phase space.  Each $\theta_{\pm0}$ obtains a partner through its
own outer port.  If the outer areas are fixed, the pulled-back rank is two;
the unused $b_\pm$ directions are kernel source directions until fixed or
quotiented, after which only $(\Omega_0,m_0)$ remains.  For consecutive
affine segments, area matching alone leaves

$$
2C_G\,\delta(r_1-r_0)\wedge\delta(r_2-r_1).
$$

Composition holds only after the additional dynamical condition

$$
\frac{r_1-r_0}{L_1}=\frac{r_2-r_1}{L_2},
$$

equivalently expansion/canonical-area-momentum continuity.  The geometric
closing boost $b_1$ does not impose this condition.

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

## Stage-2 handoff

The spin-2 density convention is repaired: with
$\widetilde\sigma^{AB}=\Omega\sigma^{AB}$ and bare measure
$d\lambda d^2x$, the potential contains the remaining factor
$\Omega\widetilde\sigma^{AB}\delta\bar q_{AB}/2$.  The diagonal conformal chart
checks only this kinematics.

Calculation 02 performs the coupled conformal-metric/Raychaudhuri pullback,
and calculation 03 closes the Stage-2.1 corner/area/composition dictionary.
The latter imposes
$\bar q^+_{AB}|_{S_0}=\bar q^-_{AB}|_{S_0}$ once, and retains the induced
outer-area port response.  Full gauge nondegeneracy, a concrete
variable-shape closing wall, and the spin-1 embedding block remain open.  The
affine-to-area equivalence is proved only on the monotonic-area,
fixed-outer-two-metric sector.  Cross-focusing is not an extra algebraic
compatibility condition on generic CK/Sachs data; it would only test an
additional angularly restricted twist-free truncation.
