# Stage-3.0 endpoint-map/twist audit summary

## Superseded verdict

**Stage 3.0 by itself was not closed.**  Its HF endpoint reduction, Damour
transport, and local corner rank calculation were valid, but three claims
required Stage-3.1 repair:

1. one symbol ambiguously denoted both a source density and a target density;
2. interface cancellation had only been checked in the identity incidence
   chart;
3. the diagonal moment map had only been stated for the remaining corner
   block, not for the combined retained bulk-plus-corner characteristic form.

`verification/STAGE3_1_AUDIT_SUMMARY.md` and
`verification/FINAL_CLASSICAL_THEOREM_LEDGER.md` are authoritative.  This
file records the corrected disposition of the Stage-3.0 claims.

## Claims retained after correction

The selected HF representative and a tangential compensator give

$$
\Theta_{S_0}^{\rm ext}
=C_G\int_{S_0}\left[
-\Omega_0\boldsymbol\delta\lambda_R
+\frac12\sum_{s=\pm}
\langle\pi_s,\boldsymbol\delta s_s\rangle
\right],
$$

where the canonical object is

$$
\pi_s\in\Gamma\!\left(
s_s^*T^*S_{sL}\otimes\operatorname{Dens}(S_0)
\right),
\qquad
p_{sA}=\pi_{s i}\partial_A s_s^i.
$$

Reisenberger's printed $\widetilde\tau_{Ai}$ is identified with this source
coefficient $\pi_{Ai}$.  A target covector density, if wanted, is the distinct
$\widehat\tau_s$ and obeys locally
$\pi_{s i}=|\det Ds_s|\widehat\tau_{s i}\circ s_s$.

The Damour transport remains

$$
\omega_A^{(s)}(\lambda_s)
=\frac{\Omega_0\omega_{A0}^{(s)}
+\int_0^{\lambda_s}\Omega_s
[D_A(\theta_s/2)-D_B\sigma_s{}^B{}_A],d\tau}
{\Omega_s(\lambda_s)}.
$$

The local corner block has rank ten before constraints and rank six after
pullback to the two generator-chart constraints, with two diagonal
relabelling kernel directions.  The surviving variables are described only
as relative endpoint-map/embedding/port pairs under the declared extended
reduction, not as diffeomorphism-invariant physical pairs.

## Claims upgraded by Stage 3.1

For fixed smooth invertible incidence maps

$$
g:S_0^{(1)}\to S_0^{(2)},
\qquad f:I_1\to I_2,
\qquad s_2\circ g=f\circ s_1,
$$

the derived matching law is

$$
\pi_1=(Df)^*g^*\pi_2.
$$

It cancels the oppositely oriented endpoint Liouville forms and two-forms and
is functorial.  V32 is only its identity-chart special case; V35--V36 test
nontrivial $f,g$ and composition.

On the Raychaudhuri-reconstructed and Damour-restricted characteristic
surface, with closed cuts or tangent/no-flux fields and matched abstract
ports,

$$
\iota_{X_\xi}\Omega_{\rm total}
=\boldsymbol\delta H_\xi,
\qquad
H_\xi=\frac{C_G}{2}\int_{S_0}\xi^A
(p_{+A}+p_{-A}-2\Omega_0D_A\lambda_R).
$$

This is the full retained reduced characteristic moment-map theorem.  It is
not an unreduced off-shell spacetime theorem.  Equivariance holds for
field-independent smearings under the stated boundary assumptions; an open
cut carries a field-dependent boundary charge rather than a central term.

## Lemmas and boost-policy correction

The HF term $h\,\delta L^a d_aS/2$ vanishes for constant-$\lambda$ cuts and
the retained cut-tangential endpoint variation.  Two compensator
interpolations with equal endpoint values differ only by the bulk Damour
residual and therefore agree on the characteristic constraint surface.

Opposite boosts satisfying $\ell_+[b]=0=\ell_-[b]$ preserve affine gauge and
act covariantly on the reconstructed profiles.  Because the closing-wall
momentum has no action-derived boost law, the quotient is a declared
normal-frame gauge policy.  The former phrase “boost kernel” applies only to
the reconstructed corner block and is not a theorem for the full retained
form.

## Final boundary

V26--V41 and the xAct residuals verify the finite algebra and local tensor
identities stated in the claim ledger.  They do not prove a physical
closing-wall action, functional nondegeneracy/completion, a chart through
$\theta_s=0$, a full spacetime quotient, or any quantum claim.
