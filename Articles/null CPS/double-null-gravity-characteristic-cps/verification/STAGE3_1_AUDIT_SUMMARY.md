# Stage-3.1 classical hardening audit summary

## Direct verdict

**Stage 3.1 is closed under the declared classical characteristic
conditions.**  The endpoint momentum now has one nonambiguous
source-density/target-covector type; arbitrary fixed invertible interface maps
$f,g$ obey a derived cotangent matching law; and diagonal
$\mathrm{Diff}(S_0)$ is Hamiltonian for the full retained reduced
characteristic form after Raychaudhuri reconstruction, Damour restriction,
and abstract-port matching.

This is not an off-shell spacetime moment-map theorem, a physical
closing-wall theorem, or a proof of functional nondegeneracy.  Opposite
boosts remain a declared normal-frame gauge policy because the missing wall
action has not fixed the transformation of the abstract closing momenta.

## Endpoint momentum type

The canonical momentum is

$$
\boxed{
\pi_s\in\Gamma\!\left(
s_s^*T^*S_{sL}\otimes\operatorname{Dens}(S_0)
\right),
\qquad
\Theta_s^{(1)}=\frac{C_G}{2}\int_{S_0}
\langle\pi_s,\boldsymbol\delta s_s\rangle.}
$$

Its common-cut one-form density is

$$
\boxed{p_{sA}=\pi_{s i}\partial_A s_s^i.}
$$

No determinant is added here.  If a target density is separately introduced,

$$
\widehat\tau_s\in
\Gamma(T^*S_{sL}\otimes\operatorname{Dens}(S_{sL})),
$$

then only its density factor is pulled to the source:

$$
\pi_{s i}(x)=|\det Ds_s(x)|
\widehat\tau_{s i}(s_s(x)).
$$

Reisenberger's printed $\widetilde\tau_{Ai}$ is the coefficient of
$\delta s_A^i$ under the common $d^2\theta$ integral.  It is therefore the
source-density object $\pi_{Ai}$, not an intrinsic target-cut density.

## General interface theorem

For

$$
g:S_0^{(1)}\to S_0^{(2)},
\qquad
f:I_1\to I_2,
\qquad
s_2\circ g=f\circ s_1,
$$

variation of the commuting square and change of source variables give

$$
\boxed{
\pi_1=(Df)^*g^*\pi_2,
\qquad
\pi_{1i}(x)=|\det Dg_x|
(Df_{s_1(x)})^j{}_i\pi_{2j}(g(x)).}
$$

With opposite incidences this makes the two interface Liouville forms cancel
for arbitrary endpoint-map variations.  Taking $\boldsymbol\delta$ proves
two-form cancellation.  The law is functorial under composition of both
$f$ and $g$.  The theorem assumes fixed smooth invertible incidence maps;
field-dependent incidence maps require additional terms.

## Full reduced characteristic moment map

Let

$$
\mathfrak D_{sA}
=\partial_{\lambda_s}(\Omega_s\bar\eta_{sA})
-\Omega_s[D_A(\kappa_s+\theta_s/2)-D_B\sigma_s^B{}_A]
$$

be the Damour residual.  The combined contraction is

$$
\iota_{X_\xi}(\Omega_{\rm bulk}^{(0+2)}
+\Omega_{S_0}^{(0+1)}+\Omega_{\rm ports})
=\boldsymbol\delta\left[
\frac{C_G}{2}\int_{S_0}\xi^A\mathcal C_A
+C_G\sum_s\int_{N_s}\xi^A\mathfrak D_{sA}
+H_{\partial,\xi}\right],
$$

where

$$
\mathcal C_A=p_{+A}+p_{-A}-2\Omega_0D_A\lambda_R.
$$

On the Raychaudhuri-reconstructed, Damour-restricted characteristic surface,
with closed cuts or tangent vector fields and matched abstract ports,

$$
\boxed{
\iota_{X_\xi}\Omega_{\rm total}
=\boldsymbol\delta H_\xi,
\qquad
H_\xi=\frac{C_G}{2}\int_{S_0}\xi^A\mathcal C_A.}
$$

For field-independent smearing fields,

$$
\{H_\xi,H_\eta\}=H_{[\xi,\eta]}
$$

on a closed cut or under the stated no-flux boundary condition.  With an open
cut the extra term is a field-dependent boundary charge, not a central
extension.

## HF and compensator lemmas

- HF's $h\,\delta L^a d_aS/2$ cut term vanishes because the cuts have
  constant affine parameter and the retained endpoint-map variation is
  cut-tangential.  A normal cut displacement would restore it.
- Two compensators with the same endpoint values differ by
  $-C_G\int\mathfrak D_{sA}\zeta_s^A$.  Hence the endpoint potential is
  interpolation independent on the Damour constraint surface, with the
  off-surface obstruction displayed rather than suppressed.

## Boost and surviving-pair policy

Affine gauge is preserved only for $\ell_+[b]=0=\ell_-[b]$.  The affine
profiles reparametrize with the expected boost weights, while the endpoint
maps, $m$, $\lambda_R$, $\tau_v$, $p_\pm$, and $\pi_\pm$ are invariant.
Because the abstract closing momenta have no action-derived boost law, this is
a declared quotient policy, not a full-form kernel theorem.

After diagonal reduction, the local corner count leaves the area/normal pair
and two relative endpoint-map/embedding/port pairs surviving the declared
extended reduction.  Reisenberger's warning remains operative: endpoint maps
are diffeomorphism data and need not be physical variables of an interior
diffeomorphism-invariant phase space.

## Verification and final status

**Verified:** analytic equations in calculations 04--05; old V0--V33;
new V34--V41; xAct `canonical_contract` residuals with `allZero=true`.

**Assumptions:** four-dimensional vacuum gravity; selected HF representative;
smooth caustic-free branches; fixed affine ruling with $\kappa_\pm=0$;
Raychaudhuri reconstruction; Damour constraint; invertible endpoint and
incidence maps; fixed incidence maps; closed cut or tangent/no-flux fields;
matched abstract ports.  The area chart additionally assumes $\theta_s\ne0$.

**Open:** physical closing-wall action and ports; full functional
nondegeneracy/completion; chart through $\theta_s=0$; full spacetime gauge
quotient; boost kernel including the wall; completeness, positivity,
surjectivity, and continuum topology.

**Decision:** freeze the classical calculation chain here.  Reopen it only
for a genuinely new obstruction or after a novelty/manuscript decision.
