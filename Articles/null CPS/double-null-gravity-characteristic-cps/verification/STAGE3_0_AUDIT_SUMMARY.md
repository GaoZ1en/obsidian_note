# Stage-3.0 endpoint-map/twist audit summary

## Direct verdict

**Correct under the declared classical, caustic-free, selected-HF-representative
conditions:** the endpoint-map/twist potential is derived from the
gravitational null potential; after the Stage-2 bulk is restricted by the
Damour Ward identity, the generator-chart constraint is the moment map for
diagonal relabelling of the remaining corner block; and two transverse
relative endpoint-map pairs survive the declared reductions.  The opposite
normal boost is quotiented as proper gauge.  The abstract spin-1 interface
block composes under diagonal cotangent matching.

This is not a full reduced gravitational characteristic CPS.  A concrete
closing-wall action, the complete functional diffeomorphism quotient, and
full spin-$0+1+2$ nondegeneracy remain open.

## Endpoint potential

For each branch the HF term is

$$
-C_G\int_{N_s}\Omega\bar\eta_A
\boldsymbol\delta L^A.
$$

Straightening the perturbed generator with a tangential compensator gives
$\boldsymbol\delta L^A=-\partial_\lambda\xi^A$.  Integration by parts leaves
an initial-cut term and a bulk term.  The latter cancels the tangential
spin-$0+2$ variation by the Damour constraint.  With

$$
\bar\eta_{sA0}=-\frac{(s_s^*\widetilde\tau_s)_A}{2\Omega_0},
$$

the surviving cut potential is

$$
\boxed{
\Theta_{S_0}^{\rm ext}
=C_G\int_{S_0}\left[-\Omega_0\boldsymbol\delta\lambda_R
+\frac12\sum_s\widetilde\tau_{s i}
\boldsymbol\delta s_s^i\right]d^2x.}
$$

Here $\widetilde\tau_{s i}d^2x$ is the source-density representative
$\pi_{s i}d^2x$.  In invariant common-cut variables the same term is
$(C_G/2)\int_{S_0}p_{sA}v_s^A d^2x$, with
$p_s=s_s^*\widetilde\tau_s$ and
$v_s=(ds_s)^{-1}\boldsymbol\delta s_s$.

Thus the sign and coefficient $+C_G/2=1/(16\pi G)$ are derived from HF,
endpoint incidence, and the normal/twist dictionary.  Reisenberger is only a
regression target.

## Constraint and surviving pairs

Writing $p_{sA}=(s_s^*\widetilde\tau_s)_A$,

$$
\mathcal C_A=p_{+A}+p_{-A}-2\Omega_0D_A\lambda_R=0.
$$

For the active diagonal relabelling convention used in calculation 05,

$$
\iota_{X_\xi}\Omega_{S_0}^{\rm ext}
=\boldsymbol\delta\left[
\frac{C_G}{2}\int_{S_0}\xi^A\mathcal C_A\right].
$$

Therefore, on the Damour-restricted Stage-2 bulk, $\mathcal C_A$ is the
moment map of the remaining corner block.  This is not an off-shell bulk
moment-map theorem.  The local extended block has rank ten.  On the
two-component constraint surface it has rank six and two diagonal-relabelling
kernel directions; quotienting them leaves the area/normal pair and two
transverse relative spin-1 pairs.

## Twist, Damour transport, and boost policy

The nonredundant reconstruction is

$$
\tau_{vA}=\frac{p_{-A}-p_{+A}}{2\Omega_0},
\qquad
\widehat\omega_A=\frac12\left[
\tau_{vA}-D_A\log|\mathcal B_+/\mathcal B_-|\right].
$$

Each affine branch obeys

$$
\omega_A^{(s)}(\lambda_s)
=\frac{\Omega_0\omega_{A0}^{(s)}
+\int_0^{\lambda_s}\Omega_sJ_A^{(s)}d\tau}
{\Omega_s(\lambda_s)},
\qquad
J_A^{(s)}=D_A(\theta_s/2)-D_B\sigma_s^B{}_A.
$$

Under the opposite boost,
$\widehat\omega_A\mapsto\widehat\omega_A+D_Ab$ and
$\log|\mathcal B_+/\mathcal B_-|\mapsto
\log|\mathcal B_+/\mathcal B_-|-2b$, so $\tau_v$ and the endpoint momenta
are invariant.

**Declared policy:** quotient this combined direction as proper normal-frame
gauge.  No extra corner-frame variable is introduced in Stage 3.0.

## Composition and regression

At a shared interface, match endpoint maps through the incidence
diffeomorphism and match momenta by cotangent pullback.  The two oriented
potentials then cancel, so the abstract spin-1 interface block composes.
This does not derive a physical closing-wall port.

The resulting endpoint block agrees with Reisenberger after accounting for
branch assignment, density weight, explicit pullback, fixed reference
normalization, and normal-frame policy.  No genuine mismatch remains in this
block.

## Verification boundary

**Verified:** analytic HF-to-endpoint derivation; Damour integrating factor;
twist reconstruction; moment-map contraction; local rank/kernel; boost
kernel; abstract interface cancellation; exact finite checks V26--V32; xAct
tracefree-Lie and integration-by-parts identities V33.

**Not verified:** a physical closing-wall action; the full functional gauge
quotient; nondegeneracy of the completed spin-$0+1+2$ form; a chart through
$\theta_s=0$; completeness, surjectivity, positivity, or continuum topology.
No quantization is included.
