# Stage-2.2 hardening audit summary

## Direct verdict

**Correct under the following precise conditions:** on the monotonic-area,
fixed-endpoint-map sector with common fixed affine endpoints, the selected HF
affine reduced form and Reisenberger's outer-normalized area form differ by
the explicit field-space exact term $C_G\delta Y$ in calculation 04 equation
(3.10).  If outer areas vary, the retained area-port momentum must transform
by equation (3.11).  No fixed outer conformal metric is required.

Two independently declared characteristic segments also reduce to the long
**bulk** spin-$0+2$ form after matching

$$
q^L_{AB}=q^R_{AB},
\qquad
B^L_{AB}=B^R_{AB}.
$$

This is a genuine independent-data statement with explicit maps
$\iota:\mathcal C_{12}\hookrightarrow\mathcal P_1\times\mathcal P_2$ and
$\rho:\mathcal C_{12}\to\mathcal P_{12}$.  Calling it a complete geometric
finite-cell gluing theorem remains conditional on deriving the abstract
interface port from a closing action.

## Affine-to-area transformation

Ordinary and comoving variations obey

$$
\delta_\lambda F=\Delta_vF-\frac\chi{\mathcal B}\partial_vF,
\qquad
\chi=(\delta\lambda)_v,
\qquad
\Delta_v\mathcal B=\partial_v\chi.
$$

At the moving upper endpoint $V_s=r_s(L_s)/r_0$,

$$
0=\delta L_s
=\int_1^{V_s}\Delta_v\mathcal B_s\,dv
+\mathcal B_s(V_s)\delta V_s.
$$

Reisenberger's natural coordinate is $x=v/V_s$, so

$$
e^{-1}\Delta_xe
=e^{-1}\Delta_ve
+v\delta\log V_s\,e^{-1}\partial_ve.
$$

Keeping these terms yields

$$
\Theta_X^\lambda-\Theta_X^A
=C_G\delta Y+C_G\sum_s\gamma_s\delta\Omega_{sL}.
$$

For fixed outer areas the second term vanishes.  For variable outer areas it
is absorbed by $b_s^A=b_s^\lambda+\gamma_s$.  Taking a curl proves the full
fixed-map two-form identity.  V23 derives the two curls directly from the
affine one-form for a nontrivial conformal profile with moving endpoints.

All logarithms are dimensionless:
$H_s=\log|\mathcal B_s/\mathcal B_{*s}|$ and
$\log(\Omega_0/\Omega_*)$.  Changing the fixed references shifts

$$
Y\mapsto Y+\sum_s(c_s-c_\Omega/2)\Omega_{sL},
\qquad
\gamma_s\mapsto\gamma_s-c_s+c_\Omega/2,
$$

so $\delta Y+\sum_s\gamma_s\delta(s_s^*\Omega_{sL})$ and the two-form are
unchanged.  Whenever an outer-cut field is integrated on $S_0$, its $s_s^*$
pullback is explicit.  In the fixed-map Stage-2 sector this is trivialized by
the common generator chart.

## Outer shape

**A variable outer conformal metric does not require an independent shape
port.**  Its endpoint value is already part of Reisenberger's bulk conformal
profile.  A traceless endpoint pair can be induced by a selected closing-wall
action or another $dY$ polarization; no such wall has been chosen here.

## Independent reduction

Before matching, the left and right profile coefficients and all endpoint
data are independent.  The matching surface imposes the full retained first
jet and separately matches the oriented geometric port.  On that surface,

$$
\iota^*(\Omega_1^{\rm bulk}+\Omega_2^{\rm bulk})
=\rho^*\Omega_{12}^{\rm bulk}.
$$

The off-locus first-jet obstruction is

$$
\mathcal J_{AB}
=\Delta\sigma_{AB}+\frac12\Delta\theta\,q_{AB}.
$$

It is a domain obstruction: $\rho$ is not defined there.  The separate
abstract interface-port residual vanishes after diagonal port matching.  V24
constructs the independent product matrix and rank-four matching Jacobian;
V25 repeats the construction for three cells and verifies associativity of
the bulk reduction.

## CK and shared normal data

With natural cross riggings,

$$
\pi_A^{(+)}=\omega_A^{(+)},
\qquad
\pi_A^{(-)}=\omega_A^{(-)},
\qquad
\omega_A^{(+)}+\omega_A^{(-)}=-D_Am.
$$

CK do not fix a cross-rigging convention that identifies their single symbol
$\pi_A$ literally with $\widehat\omega_A$.  The project uses

$$
\widehat\omega_A
=\frac12(\omega_A^{(+)}-\omega_A^{(-)})
=\frac12\tau_{\ell A}.
$$

After $n_s=\mathcal B_s\ell_s$,

$$
\lambda_R=m-\sum_s\log|\mathcal B_s/\mathcal B_{*s}|,
\qquad
\tau_{vA}=2\widehat\omega_A
+D_A\log|\mathcal B_+/\mathcal B_-|.
$$

## Stage-3 gate

The corrected nonredundant Stage-3 extended coordinates are

$$
(s_+^A,s_-^A,\pi_+,\pi_-;
\Omega_0,\lambda_R,\bar h_{AB}),
$$

with

$$
\pi_{+i}\partial_A s_+^i
=\Omega_0(D_A\lambda_R-\tau_{vA}),
\qquad
\pi_{-i}\partial_A s_-^i
=\Omega_0(D_A\lambda_R+\tau_{vA}),
$$

and

$$
\tau_{vA}=\frac{p_{-A}-p_{+A}}{2\Omega_0},
\qquad
\widehat\omega_A=\frac12\left[
\tau_{vA}-D_A\log|\mathcal B_+/\mathcal B_-|\right].
$$

$\pi_s$ has type
$\Gamma(s_s^*T^*S_{sL}\otimes\operatorname{Dens}(S_0))$ and
$p_{sA}=\pi_{s i}\partial_A s_s^i$ contains no additional determinant.
$\widehat\omega_A$ is derived, not an additional coordinate.  The constraint
is the source one-form-density equation

$$
p_{+A}+p_{-A}
=2\Omega_0D_A\lambda_R.
$$

Calculation 05 and the Stage-3.1 audit derive its full constrained
bulk-plus-corner moment-map role.  Opposite boosts are a declared quotient
policy rather than a proved closing-wall kernel.

## Verification boundary

**Verified:** analytic one-form transformation and explicit generator/area-
port shift; moving-lower-limit conformal term; independent-data bulk
reduction; first-jet obstruction; three-cell bulk associativity; branch normal
and twist dictionaries; reference-scale independence V26; V23--V26.

**Not verified by Stage 2.2:** a chart through $\theta_s=0$; a closing-wall
action and its port momenta; a full finite-cell port quotient; functional
completion; or full gauge nondegeneracy.  Stage-3.0 results are recorded in a
separate audit summary.
