# 05 — Stage 3.0/3.1: endpoint maps, twist, and classical hardening

## 0. Direct verdict and provenance

**Derived in the following precise classical lane:** for a caustic-free
four-dimensional vacuum double-null cross, the HF/Einstein--Hilbert null
potential with variable tangential generator displacement reduces, after the
Damour constraint is used, to

$$
\boxed{
\Theta_{S_0}^{\rm ext}
=C_G\int_{S_0}\left[
-\Omega_0\boldsymbol\delta\lambda_R
+\frac12\sum_{s=\pm}
\langle\pi_s,\boldsymbol\delta s_s\rangle
\right].}
\tag{0.1}
$$

The coefficient and sign of the endpoint-map term are derived in section 2,
not imported from Reisenberger.  Reisenberger arXiv:1211.3880 equations
(98)--(101) are used only as a regression target in section 9.

On the Damour-restricted characteristic constraint surface, the combined
Stage-2 bulk, Stage-3 corner, and matched abstract-port contraction has the
generator-chart constraint as its moment map, with the sign convention fixed
in section 5.  The project quotients the residual opposite boost as a declared
proper normal-frame gauge policy; it is not promoted to a proved kernel of an
unspecified closing-wall form.  After the generator-chart constraint and
diagonal quotient, two transverse relative endpoint-map/embedding/port pairs
survive the declared extended reduction.  The endpoint block composes under
general cotangent matching at an abstract interface.  None of these results
derives a physical closing-wall action or an off-shell spacetime gauge
quotient.

**Known from literature.**  HF arXiv:1611.03096 equations (4.29)--(5.5)
identify $-\bar\eta_A$ as the momentum of the tangential null generator.
The affine vacuum Damour equation is CK arXiv:2607.07785 equation (18) in the
project conventions.  Reisenberger supplies the regression variables, not the
project derivation.

**Re-derived here.**  The conversion of $-\bar\eta_A\boldsymbol\delta\ell^A$
to an endpoint-map cut term, its normalization and sign, the two branch
initial values, the integrating-factor transport, the moment-map contraction,
the local rank/kernel, boost covariance of the reconstructed variables, and
the general abstract-interface cotangent cancellation.

## 1. Extended corner space and maps

Let $S_0$ be the common abstract initial cut.  Each branch has an outer cut
$S_{sL}$ and an endpoint map

$$
s_s:S_0\longrightarrow S_{sL},
\qquad
x\longmapsto s_s(x),
\qquad s=\pm,
\tag{1.1}
$$

defined by following the generator labelled by $x$ to the outer cut.  The
canonical endpoint momentum has the precise source-density/target-covector
type

$$
\boxed{
\pi_s\in\Gamma\!\left(
s_s^*T^*S_{sL}\otimes\operatorname{Dens}(S_0)
\right).}
\tag{1.2}
$$

It pairs directly with
$\boldsymbol\delta s_s\in\Gamma(s_s^*TS_{sL})$.  The branch Liouville form is

$$
\boxed{
\Theta_{S_0,s}^{(1)}
=\frac{C_G}{2}\int_{S_0}
\langle\pi_s,\boldsymbol\delta s_s\rangle.}
\tag{1.3}
$$

In local source coordinates write
$\pi_s=\pi_{s i}(x)\,dy_s^i\otimes d^2x$.  The common-cut one-form density is

$$
\boxed{p_{sA}=\pi_{s i}\,\partial_A s_s^i.}
\tag{1.3a}
$$

No determinant is added in (1.3a); it is already encoded in the density
weight of $\pi_s$.  If a target-side covector density is useful, introduce the
distinct object

$$
\widehat\tau_s\in
\Gamma\!\left(T^*S_{sL}\otimes\operatorname{Dens}(S_{sL})\right),
\qquad
\boxed{\pi_s=s_s^{\sharp_{\rm dens}}\widehat\tau_s.}
\tag{1.3b}
$$

Here
$s_s^{\sharp_{\rm dens}}:=\mathrm{id}_{s_s^*T^*S_{sL}}
\otimes\operatorname{Dens}(Ds_s)^*$ transports the density factor while the
target covector fiber remains paired with $\delta s_s$.  This is deliberately
distinct from the ordinary tensor pullback, which would also apply $Ds_s^T$
to the covector index.  In oriented local coordinates this is exactly

$$
\boxed{
\pi_{s i}(x)=|\det Ds_s(x)|\,
\widehat\tau_{s i}(s_s(x)).}
\tag{1.3c}
$$

Combining (1.3a) and (1.3c) gives the familiar determinant only when one
starts from the optional target density.  It must not be inserted a second
time when $\pi_s$ is already the canonical momentum.

For any target tensor $T_s$ define the target-side and source-side
representatives of the map variation by

$$
\upsilon_s:=\boldsymbol\delta s_s\circ s_s^{-1},
\qquad
v_s:=(ds_s)^{-1}\circ\boldsymbol\delta s_s.
\tag{1.4a}
$$

Then

$$
\boxed{
\boldsymbol\delta(s_s^*T_s)
=s_s^*\!\left(
\boldsymbol\delta T_s+\mathcal L_{\upsilon_s}T_s
\right).}
\tag{1.4}
$$

This is the pullback identity responsible for the map-dependent cross terms
in the two-form.

The nonredundant extended corner coordinates are

$$
\boxed{
\Gamma_{\rm ext}
=\{s_+^i,s_-^i,\pi_+,\pi_-;
\Omega_0,\lambda_R,\bar h_{AB}\}.}
\tag{1.5}
$$

$\pi_s$ is a source density with a target covector index, so no
$\bar h_{AB}$ is used to raise that index.  The shared conformal corner metric is paired through the
Stage-2 bulk profile, not by an additional point-supported spin-1 momentum.
$\widehat\omega_A$ is reconstructed in section 3 and is not another
independent coordinate.

## 2. From the gravitational null potential to the endpoint term

### 2.1 HF representative and the compensating displacement

For one branch the selected HF bulk potential is

$$
\Theta_{N_s}^{\rm HF}
=C_G\int_{N_s}\Omega\left[
\frac12\widetilde\sigma^{AB}
\boldsymbol\delta\bar q_{AB}
-\bar\eta_A\boldsymbol\delta L^A
-\left(\kappa+\frac12\theta\right)
\boldsymbol\delta\log\Omega
\right]d\lambda\,d^2x.
\tag{2.1}
$$

To compare two varying generator embeddings in one fixed chart, introduce a
tangential compensator $\xi_s^A(\lambda,x)$.  The perturbed generator is
straightened at the outer cut and its initial value records the endpoint-map
variation:

$$
\xi_s^A(L_s,x)=0,
\qquad
\xi_s^A(0,x)=v_s^A(x).
\tag{2.2}
$$

In the straight generator chart $L=\partial_\lambda$, the tangential change is

$$
\boldsymbol\delta_\xi L^A=[\xi,L]^A
=-\partial_\lambda\xi^A.
\tag{2.3}
$$

Therefore the HF spin-1 term becomes

$$
\begin{aligned}
-C_G\int_0^{L_s}\Omega\bar\eta_A
\boldsymbol\delta_\xi L^A d\lambda
={}&C_G[\Omega\bar\eta_A\xi^A]_0^{L_s}\\
&-C_G\int_0^{L_s}
\partial_\lambda(\Omega\bar\eta_A)\xi^A d\lambda .
\end{aligned}
\tag{2.4}
$$

The first term in (2.4) is
$-C_G\Omega_0\bar\eta_{A0}v_s^A$.

### 2.2 Why the bulk term cancels

The same compensator acts on $\Omega$ and $\bar q_{AB}$ by their tangential
Lie derivatives.  With $D_Aq_{BC}=0$ and $\sigma^A{}_A=0$, their explicit
trace/traceless decomposition is

$$
\boldsymbol\delta_\xi\log\Omega=D_A\xi^A,
\qquad
\frac12\widetilde\sigma^{AB}
\boldsymbol\delta_\xi\bar q_{AB}
=\sigma^B{}_A D_B\xi^A.
\tag{2.5a}
$$

Substituting (2.5a) in (2.1) and integrating by parts on the cut gives

$$
C_G\int_0^{L_s}\Omega
\left[D_A\!\left(\kappa+\frac12\theta\right)
-D_B\sigma^B{}_A\right]\xi^A d\lambda,
\tag{2.5}
$$

up to the already retained cut representative and a transverse divergence.
For a closed cut the transverse divergence vanishes; with a boundary it is a
separate codimension-three port.  The coefficient is fixed by the displayed
HF momenta in (2.1); no Reisenberger formula is used.  The null momentum
constraint is the Damour identity

$$
\boxed{
\partial_\lambda(\Omega\bar\eta_A)
=\Omega\left[D_A\!\left(\kappa+\frac12\theta\right)
-D_B\sigma^B{}_A\right]}
\tag{2.6}
$$

in the boost gauge in which $\bar\eta_A$ is the branch normal connection.
Equations (2.4)--(2.6) cancel the bulk compensator dependence.  This is the
action-first step that pushes the HF spin-1 pair to the endpoint; omitting
(2.5) would leave a false bulk remainder.

### 2.3 Exact normalization and sign

At $S_0$ use the area-normal tangents
$n_s=\mathcal B_s\ell_s$.  In the corresponding HF boost gauge,

$$
\bar\eta_{+A0}
=\omega^{(+)}_{A0}+D_A\log|\mathcal B_{+0}/\mathcal B_{*+}|
=\frac12(\tau_{vA}-D_A\lambda_R),
\tag{2.7}
$$

$$
\bar\eta_{-A0}
=\omega^{(-)}_{A0}+D_A\log|\mathcal B_{-0}/\mathcal B_{*-}|
=-\frac12(\tau_{vA}+D_A\lambda_R).
\tag{2.8}
$$

Define

$$
p_{+A}=\Omega_0(D_A\lambda_R-\tau_{vA}),
\qquad
p_{-A}=\Omega_0(D_A\lambda_R+\tau_{vA}).
\tag{2.9}
$$

Then both branches obey

$$
\boxed{\bar\eta_{sA0}=-\frac{p_{sA}}{2\Omega_0}.}
\tag{2.10}
$$

Substitution into the initial term of (2.4) yields

$$
\boxed{
\Theta_{S_0,s}^{(1)}
=\frac{C_G}{2}\int_{S_0}
p_{sA}v_s^A\,d^2x
=\frac{C_G}{2}\int_{S_0}
\langle\pi_s,\boldsymbol\delta s_s\rangle.}
\tag{2.11}
$$

Adding the already derived area/normal representative from Stage 2 gives
(0.1).  The plus sign and factor $C_G/2=1/(16\pi G)$ follow from the HF
coefficient, the endpoint incidence in (2.4), and (2.10).

### 2.4 Two completion lemmas

**HF cut-term lemma.**  The full HF corner potential in the polarization of
their equation (71) contains

$$
\frac12\int_{\partial N_s}h\,\boldsymbol\delta L^a\,d_aS.
\tag{2.12}
$$

For the cuts used here, $S=\lambda_s-\lambda_{s,\rm cut}$ is constant and
$d_aS$ is normal to the cut within $N_s$.  The endpoint-map variation is
strictly cut-tangential,

$$
\boldsymbol\delta L^a\in T(\partial N_s),
\qquad
\boldsymbol\delta L^a d_aS=0.
\tag{2.13}
$$

Therefore (2.12) vanishes without setting $h$ to zero.  The other HF cut term,
proportional to $L^a\delta q\,d_aS$, is not discarded; it belongs to the
area/normal cut representative already combined in calculations 00--04.  If
the cut is moved normally, or if a variation of $L^a$ has a generator-normal
component, (2.13) fails and the omitted contribution must be restored.

**Compensator-interpolation lemma.**  Let $\xi_s$ and $\xi'_s$ obey (2.2)
with the same endpoint values and set $\zeta_s=\xi'_s-\xi_s$.  Then
$\zeta_s(0)=\zeta_s(L_s)=0$.  Define the Damour residual density

$$
\mathfrak D_{sA}:=
\partial_{\lambda_s}(\Omega_s\bar\eta_{sA})
-\Omega_s\left[
D_A\!\left(\kappa_s+\frac12\theta_s\right)
-D_B\sigma_s^B{}_A\right].
\tag{2.14}
$$

Repeating (2.4)--(2.5) for the difference gives exactly

$$
\boxed{
\Theta_s[\xi'_s]-\Theta_s[\xi_s]
=-C_G\int_{N_s}\mathfrak D_{sA}\zeta_s^A
\,d\lambda_s\,d^2x.}
\tag{2.15}
$$

There is no endpoint term because $\zeta_s$ vanishes at both ends.  Hence the
endpoint potential depends only on $\boldsymbol\delta s_s$, not on its chosen
bulk interpolation, after pullback to the characteristic constraint surface
$\mathfrak D_{sA}=0$.  Its field-space curl is likewise interpolation
independent for variations tangent to that surface.  Off the constraint
surface, (2.15) is the precise obstruction and is not suppressed.

## 3. Nonredundant twist reconstruction

The generator-chart constraint is

$$
\boxed{
\mathcal C_A:=p_{+A}+p_{-A}
-2\Omega_0D_A\lambda_R=0.}
\tag{3.1}
$$

The difference reconstructs the area-normal twist:

$$
\boxed{
\tau_{vA}=\frac{p_{-A}-p_{+A}}{2\Omega_0}.}
\tag{3.2}
$$

With the dimensionless Jacobian ratios of calculation 04,

$$
\boxed{
\widehat\omega_A
=\frac12\left[
\tau_{vA}-D_A\log|\mathcal B_+/\mathcal B_-|
\right].}
\tag{3.3}
$$

Thus $(\widehat\omega_A,p_{+A},p_{-A})$ is a redundant simultaneous choice.
The project keeps $p_{\pm A}$ as coordinates and treats
$\widehat\omega_A$ as the derived affine normal datum.

## 4. Damour transport with the Stage-2 sources

In affine gauge $\kappa_s=0$, each branch-adapted form obeys

$$
\boxed{
(\partial_{\lambda_s}+\theta_s)\omega_A^{(s)}
=J_A^{(s)},
\qquad
J_A^{(s)}:=D_A\!\left(\frac{\theta_s}{2}\right)
-D_B\sigma_s^B{}_A.}
\tag{4.1}
$$

Because $\partial_{\lambda_s}\Omega_s=\theta_s\Omega_s$,

$$
\partial_{\lambda_s}(\Omega_s\omega_A^{(s)})
=\Omega_sJ_A^{(s)},
\tag{4.2}
$$

and hence

$$
\boxed{
\omega_A^{(s)}(\lambda_s)
=\frac{
\Omega_0\omega_{A0}^{(s)}
+\int_0^{\lambda_s}\Omega_s(\tau)J_A^{(s)}(\tau)d\tau}
{\Omega_s(\lambda_s)}.}
\tag{4.3}
$$

The branch initial values are kept separate:

$$
\boxed{
\omega_{A0}^{(+)}
=-\frac{p_{+A}}{2\Omega_0}
-D_A\log|\mathcal B_{+0}/\mathcal B_{*+}|,}
\tag{4.4}
$$

$$
\boxed{
\omega_{A0}^{(-)}
=-\frac{p_{-A}}{2\Omega_0}
-D_A\log|\mathcal B_{-0}/\mathcal B_{*-}|.}
\tag{4.5}
$$

Equations (3.1)--(3.3) and
$m=\lambda_R+\sum_s\log|\mathcal B_s/\mathcal B_{*s}|$
reproduce
$\omega_{A0}^{(+)}=\widehat\omega_A-D_Am/2$ and
$\omega_{A0}^{(-)}=-\widehat\omega_A-D_Am/2$.
The Stage-2 Green reconstruction supplies
$\Omega_s$, $\theta_s$, and $\sigma^s_{AB}$ in (4.1)--(4.3).

## 5. Two-form and the diagonal moment map

### 5.1 Curl and pullback terms

In target-chart components the corner two-form is

$$
\boxed{
\Omega_{S_0}^{\rm ext}
=C_G\int_{S_0}\left[
\boldsymbol\delta\lambda_R\wedge\boldsymbol\delta\Omega_0
+\frac12\sum_{s=\pm}
\boldsymbol\delta\pi_{s i}\wedge
\boldsymbol\delta s_s^i
\right]d^2x.}
\tag{5.1}
$$

This form has no metric-raising cross term because $\pi_{s i}$ is a covector
density.  In common-cut components, direct variation of (1.3a) gives

$$
\boxed{
\boldsymbol\delta p_{sA}
=(\boldsymbol\delta\pi_{s i})\partial_A s_s^i
+\pi_{s i}\partial_A\boldsymbol\delta s_s^i.}
\tag{5.2}
$$

If $\pi_s=s_s^{\sharp_{\rm dens}}\widehat\tau_s$, (5.2) is equivalently the pullback identity
(1.4), including its Lie-derivative term.  If the momenta are replaced by
$(\Omega_0,\lambda_R,\tau_v)$, then

$$
\begin{aligned}
\boldsymbol\delta p_{\pm A}={}&
(D_A\lambda_R\mp\tau_{vA})\boldsymbol\delta\Omega_0\\
&+\Omega_0(D_A\boldsymbol\delta\lambda_R
\mp\boldsymbol\delta\tau_{vA})
+\text{the pullback term in (5.2)}.
\end{aligned}
\tag{5.3}
$$

Thus all $\Omega_0$ and $\lambda_R$ cross terms are present when the derived
twist variables are used.  No independent $\bar h_{AB}$ cross term is induced
in the covector-density polarization.

### 5.2 Diagonal relabelling

Let $\xi^A$ generate a relabelling of the common abstract corner.  Choose the
active convention

$$
\delta_\xi s_s=-ds_s\cdot\xi,
\qquad
\delta_\xi\lambda_R=-\mathcal L_\xi\lambda_R,
\qquad
\delta_\xi\Omega_0=-\mathcal L_\xi\Omega_0,
\tag{5.4}
$$

with the cotangent lift on $\pi_s$ and the tensor lift on $\bar h_{AB}$.
For a closed cut, or a generator tangent to its boundary, the Liouville form
satisfies

$$
\iota_{X_\xi}\Theta_{S_0}^{\rm ext}
=-\frac{C_G}{2}\int_{S_0}\xi^A\mathcal C_A\,d^2x.
\tag{5.5}
$$

The cotangent-lifted action preserves the Liouville form.  Cartan's identity
therefore gives

$$
\boxed{
\iota_{X_\xi}\Omega_{S_0}^{\rm ext}
=\boldsymbol\delta H_\xi,
\qquad
H_\xi=\frac{C_G}{2}\int_{S_0}
\xi^A\mathcal C_A\,d^2x.}
\tag{5.6}
$$

Thus, after restricting the Stage-2 bulk by the Damour Ward identity derived
in section 2, (3.1) **is** the moment map for diagonal generator-chart
relabelling of the remaining corner block in the convention
$\iota_X\Omega=\boldsymbol\delta H$.  This conclusion uses the area/normal
term as well as the two endpoint cotangent terms; the latter alone would miss
$-2\Omega_0D_A\lambda_R$.  It is not a moment-map theorem on an unreduced
off-shell bulk profile space.

A relative displacement acts oppositely on the two maps and is not generated
by (3.1).  It remains in the reduced phase space as the spin-1 configuration.
The project treats diagonal relabelling as proper gauge and relative endpoint
displacement as a retained endpoint-map/embedding/port variable.

### 5.3 Full reduced characteristic moment-map theorem

The corner calculation alone does not show that relabelling the Stage-2
profiles is harmless.  Let $X_\xi$ act diagonally by minus Lie derivative on
$\bar q^\pm_{AB}$, $\Omega_\pm$, $\theta_\pm$, $\sigma^\pm_{AB}$, the shared
corner fields $(\Omega_0,\lambda_R,\bar h_{AB})$, and the endpoint maps as in
(5.4), with the cotangent lift on $\pi_\pm$.  The affine ruling and the
caustic-free interval are preserved.  Abstract outer/interface ports carry
the corresponding induced tensor-density action.

Equations (2.4)--(2.6) give the missing bulk statement.  Before imposing the
Damour constraint, the contraction of the full retained reduced form is

$$
\boxed{
\begin{aligned}
\iota_{X_\xi}\big(
\Omega_{\rm bulk}^{(0+2)}
+\Omega_{S_0}^{(0+1)}
+\Omega_{\rm ports}\big)
=\boldsymbol\delta\Bigg[
&\frac{C_G}{2}\int_{S_0}\xi^A\mathcal C_A\,d^2x\\
&+C_G\sum_{s=\pm}\int_{N_s}
\xi^A\mathfrak D_{sA}\,d\lambda_s\,d^2x
+H_{\partial,\xi}\Bigg].
\end{aligned}}
\tag{5.7}
$$

Here $\mathfrak D_{sA}$ is (2.14).  The term $H_{\partial,\xi}$ is the sum of
unmatched transverse-boundary and outer-wall Ward charges.  With the outer
straightening $\xi(L_s)=0$, a closed cut (or $\xi$ tangent to its boundary),
and diagonally matched abstract ports, $H_{\partial,\xi}=0$.  The initial-cut
term generated by the integration by parts is precisely the endpoint
cotangent contribution in (5.5); it is not counted twice in (5.7).

Let $\mathcal C_{\rm char}$ be the reduced characteristic constraint surface
on which Raychaudhuri has been solved by the Stage-2 Green map and
$\mathfrak D_{sA}=0$.  For variations tangent to $\mathcal C_{\rm char}$,

$$
\boxed{
\iota_{X_\xi}\Omega_{\rm total}\big|_{\mathcal C_{\rm char}}
=\boldsymbol\delta H_\xi,
\qquad
H_\xi=\frac{C_G}{2}\int_{S_0}\xi^A
\big(p_{+A}+p_{-A}-2\Omega_0D_A\lambda_R\big)d^2x.}
\tag{5.8}
$$

This proves the diagonal $\mathrm{Diff}(S_0)$ moment map for the **full
retained reduced characteristic form**, not merely for an isolated corner
matrix.  It is not an unreduced off-shell spacetime theorem: it uses vacuum
Raychaudhuri reconstruction, the Damour constraint, affine gauge
$\kappa_\pm=0$, the fixed ruling/zero-shift chart, common corner matching,
the declared endpoint polarization, and the boundary assumptions above.  The
area chart additionally requires $\theta_s\neq0$; the affine statement does
not.

### 5.4 Equivariance and algebra

Take field-independent smearing fields and use the convention
$\iota_{X_H}\Omega=\boldsymbol\delta H$ and
$\{F,G\}:=X_F[G]$.  The cotangent lift makes $\mathcal C_A$ a one-form
density.  Therefore

$$
\boxed{
\{H_\xi,H_\eta\}
=H_{[\xi,\eta]}
-\frac{C_G}{2}\int_{\partial S_0}
\iota_\xi\big(\eta^A\mathcal C_A\,d^2x\big).}
\tag{5.9}
$$

For a closed $S_0$, or vector fields tangent to $\partial S_0$ with the
corresponding no-flux condition, the second term vanishes and the moment map
is equivariant:

$$
\boxed{\{H_\xi,H_\eta\}=H_{[\xi,\eta]}.}
\tag{5.10}
$$

No central extension appears under these assumptions.  If transverse-boundary
flux is allowed, the displayed extra term is a field-dependent boundary
charge, not a central term.  Field-dependent smearing vectors require the
standard adjusted bracket and are outside (5.9).

## 6. Relative boosts

The residual opposite boost is

$$
\ell_+\mapsto e^b\ell_+,
\qquad
\ell_-\mapsto e^{-b}\ell_-.
\tag{6.1}
$$

Keeping the area-normal tangents $n_s=\mathcal B_s\ell_s$ fixed gives

$$
\mathcal B_+\mapsto e^{-b}\mathcal B_+,
\qquad
\mathcal B_-\mapsto e^b\mathcal B_-,
\qquad
\widehat\omega_A\mapsto\widehat\omega_A+D_Ab.
\tag{6.2}
$$

Consequently $\lambda_R$, $\tau_v$, and $p_{\pm A}$ are invariant.  In the
larger redundant affine description the corner reconstruction is unchanged by

$$
\delta_b\widehat\omega_A=D_Ab,
\quad
\delta_b\log\mathcal B_+=-b,
\quad
\delta_b\log\mathcal B_-=b
\tag{6.3}
$$

and therefore (0.1) and (5.1) do not see the redundant corner-frame
representative.

The affine condition adds a real restriction.  Under
$\ell'=e^\beta\ell$,

$$
\kappa'=e^\beta(\kappa+\ell[\beta]).
\tag{6.4}
$$

Thus an opposite boost preserves $\kappa_\pm=0$ only when

$$
\boxed{\ell_+[b]=0=\ell_-[b],}
\tag{6.5}
$$

so $b=b(x)$ is transported constantly along both rulings.  With initial
affine origins fixed,

$$
\lambda_+'=e^{-b}\lambda_+,
\quad L_+'=e^{-b}L_+,
\qquad
\lambda_-'=e^{b}\lambda_-,
\quad L_-'=e^{b}L_-.
\tag{6.6}
$$

The retained affine profiles transform by reparametrization:

$$
\begin{aligned}
(\Omega_+',\bar q_+')(\lambda_+',x)
&=(\Omega_+,\bar q_+)(e^b\lambda_+',x),
& (\theta_+',\sigma_+')(\lambda_+',x)
&=e^b(\theta_+,\sigma_+)(e^b\lambda_+',x),\\
(\Omega_-',\bar q_-')(\lambda_-',x)
&=(\Omega_-,\bar q_-)(e^{-b}\lambda_-',x),
& (\theta_-',\sigma_-')(\lambda_-',x)
&=e^{-b}(\theta_-,\sigma_-)(e^{-b}\lambda_-',x).
\end{aligned}
\tag{6.7}
$$

The endpoint maps, outer areas, $m$, $\lambda_R$, $\tau_v$, $p_\pm$, and
$\pi_\pm$ are unchanged.  With the fixed reference conventions of
calculation 04, $\mathcal B_+\mapsto e^{-b}\mathcal B_+$ and
$\mathcal B_-\mapsto e^b\mathcal B_-$, while their product and hence
$\lambda_R$ are invariant.  The Raychaudhuri and Damour reconstructions are
covariant under (6.5)--(6.7).

**Stage-3.0 policy:** quotient (6.3) as proper normal-frame gauge.  No
independent corner-frame variable is added.  The nonredundant coordinates
(1.5) are already boost invariant.

**Claim boundary:** the abstract closing momenta $b_s^\lambda$ and their
geometric boost law have not been derived from a closing-wall action.  Hence
the project does **not** claim that (6.3) is a proved kernel of the entire
retained bulk-plus-port form.  It is a declared gauge policy compatible with
the reconstructed bulk and corner variables.  A full kernel theorem requires
the missing wall realization.

## 7. Local rank and surviving pairs

At one transverse point keep

$$
(\Omega_0,\lambda_R;
s_+^1,s_+^2,p_{+1},p_{+2};
s_-^1,s_-^2,p_{-1},p_{-2}).
\tag{7.1}
$$

Before imposing (3.1), (5.1) has rank ten.  The two components of
$\mathcal C_A=0$ are first class.  Their constraint surface is
eight-dimensional and the pulled-back form has rank six with a two-dimensional
kernel generated by diagonal relabelling.  Quotienting that kernel leaves a
six-dimensional symplectic block:

$$
\boxed{
(\Omega_0,\lambda_R)
\quad\text{and two transverse components of}\quad
(s_{\rm rel}^A,p_{{\rm rel}A}).}
\tag{7.2}
$$

Thus two relative endpoint-map/embedding/port canonical pairs survive the
declared extended reduction.  This is not a proof of diffeomorphism-invariant
physicality.  Reisenberger treats the endpoint maps as diffeomorphism data:
they can be removed from an interior physical phase space while remaining
relevant to quasi-local or extended-region data.  The pointwise count omits
the shared conformal metric, whose partners live in the Stage-2 profile, and
is not a functional nondegeneracy theorem.  V31 checks the matrices before
and after reduction.

## 8. Endpoint-sector composition

Let two cells have independent source corners $S_0^{(1)}$ and $S_0^{(2)}$
and interface targets $I_1$ and $I_2$.  The endpoint maps are

$$
s_1:S_0^{(1)}\to I_1,
\qquad
s_2:S_0^{(2)}\to I_2.
\tag{8.1}
$$

Choose fixed orientation-compatible diffeomorphisms

$$
g:S_0^{(1)}\to S_0^{(2)},
\qquad
f:I_1\to I_2,
\tag{8.2}
$$

and impose the full commuting square

$$
\boxed{s_2\circ g=f\circ s_1.}
\tag{8.3}
$$

Varying (8.3) with $f$ and $g$ fixed gives

$$
\boldsymbol\delta s_2(g(x))
=Df_{s_1(x)}\boldsymbol\delta s_1(x).
\tag{8.4}
$$

Take the outgoing incidence of cell 1 to be positive and the incoming
incidence of cell 2 to be negative.  The interface Liouville form is

$$
\Theta_I
=\frac{C_G}{2}\left[
\int_{S_0^{(1)}}\langle\pi_1,\boldsymbol\delta s_1\rangle
-\int_{S_0^{(2)}}\langle\pi_2,\boldsymbol\delta s_2\rangle
\right].
\tag{8.5}
$$

Change variables $y=g(x)$ in the second integral and use (8.4).  Equality of
the paired one-forms for arbitrary $\boldsymbol\delta s_1$ gives, rather than
guesses, the matching law

$$
\boxed{
\pi_1=(Df)^*g^*\pi_2.}
\tag{8.6}
$$

The $g^*$ in (8.6) pulls back the source density; $(Df)^*$ acts only on the
target covector index.  In local coordinates,

$$
\boxed{
\pi_{1i}(x)=|\det Dg_x|\,
(Df_{s_1(x)})^j{}_i\,\pi_{2j}(g(x)).}
\tag{8.7}
$$

Equations (8.4) and (8.7) give directly

$$
\int_{S_0^{(2)}}\langle\pi_2,\boldsymbol\delta s_2\rangle
=\int_{S_0^{(1)}}\langle\pi_1,\boldsymbol\delta s_1\rangle,
\qquad
\boxed{\iota_I^*\Theta_I=0.}
\tag{8.8}
$$

Taking a field-space exterior derivative with fixed $f,g$ proves

$$
\boxed{
\iota_I^*(\Omega_{I,1}^{(1)}+\Omega_{I,2}^{(1)})=0.}
\tag{8.9}
$$

For arbitrary incidence signs $\epsilon_1,\epsilon_2$, the invariant law is
$\epsilon_1\pi_1+\epsilon_2(Df)^*g^*\pi_2=0$.  The displayed equality
(8.6) is the opposite-incidence case $\epsilon_1=-\epsilon_2$.

The law is functorial.  For a third cell with maps $(f_{23},g_{23})$,
substitution of the $2\leftrightarrow3$ law into the $1\leftrightarrow2$ law
gives

$$
\pi_1=
(D(f_{23}\circ f_{12}))^*
(g_{23}\circ g_{12})^*\pi_3,
\tag{8.10}
$$

because density Jacobians multiply and cotangent pullbacks compose in reverse
order.  Thus the abstract endpoint sector has genuine cotangent interface
reduction for arbitrary smooth invertible fixed $f,g$.  V35--V36 use
nontrivial linear $f,g$, including $|\det Dg|$, to regress (8.7)--(8.10).
This remains an abstract spin-1 port theorem, not a derivation of the port
supplied by a physical closing wall.  If $f$ or $g$ is field dependent, its
variation produces additional incidence-map terms and (8.6) is not the whole
matching condition.

## 9. Reisenberger regression

With the assignment $+=R$, $-=L$ and the pulled-back density convention,

$$
p_{+A}
=\Omega_0(D_A\lambda_R-\tau_{vA}),
\qquad
p_{-A}
=\Omega_0(D_A\lambda_R+\tau_{vA}).
\tag{9.1}
$$

Reisenberger's branch surface potential has coefficient
$1/(16\pi G)=C_G/2$ multiplying
$\widetilde\tau_{Ai}\boldsymbol\delta s_A^i$ under the common
$d^2\theta$ integral, and the sum of the two branch
normal terms is $-C_G\Omega_0\boldsymbol\delta\lambda_R$.  This agrees with
(0.1) after the precise identification
$\widetilde\tau_{Ai}^{\rm Reis}=\pi_{Ai}$ in source coordinates.  His object
is the coefficient of $\delta s_A^i$ on the common initial parameter domain;
it is not the optional target density $\widehat\tau_A$ of (1.3b).

The dictionary is:

| Project | Reisenberger | Classification |
|---|---|---|
| $S_0$, $S_{sL}$, $s_s:S_0\to S_{sL}$ | $S_0$, $S_A$, $s_A^i$ | same maps; project writes every pullback |
| $\pi_s\in\Gamma(s_s^*T^*S_{sL}\otimes\operatorname{Dens}S_0)$ | $\widetilde\tau_{Ai}d^2\theta$ | same source-density/target-covector coefficient after branch assignment |
| $p_{sA}=\pi_{s i}\partial_A s_s^i$ | $\widetilde\tau_{Ai}ds_A^i$ | common-cut one-form density; no extra determinant |
| optional $\widehat\tau_s$ on $S_{sL}$ | no separate symbol in the displayed canonical potential | $\pi_s=s_s^{\sharp_{\rm dens}}\widehat\tau_s$ only if such a target density is introduced |
| $\tau_v$ | $\tau$ | same area-normal twist with $R/L$ sign convention |
| $\lambda_R$ with fixed reference normalizations | $\lambda$ | constant normalization convention |
| quotient of diagonal $\mathrm{Diff}(S_0)$ | $\theta$-chart gauge | same moment-map reduction |
| quotient of opposite boosts | fixed area-normal frame | normal-frame policy |

There is no genuine mismatch in the endpoint block after this type correction.
The visible differences are source versus target density bookkeeping, fixed
reference normalization, and normal-frame convention.

## 10. Verification and claim boundary

The Stage-3 Wolfram script checks:

1. reference-scale independence of the Stage-2.2 generator/port combination;
2. linear pullback composition identities;
3. the Damour integrating-factor solution for a finite nonzero source;
4. reconstruction of $\tau_v$ and $\widehat\omega_A$;
5. the curl of (0.1);
6. the finite moment-map contraction;
7. rank/kernel before and after diagonal reduction and the boost-invariant
   reconstruction;
8. two-cell endpoint-potential cancellation.

The Stage-3.1 closure script then checks:

1. the corrected source-density/target-covector type and absence of a second
   determinant;
2. the nontrivial $f,g$ commuting square, Liouville cancellation, two-form
   cancellation, and functoriality;
3. compensator interpolation independence modulo the Damour residual;
4. the HF $h\,\delta L^a d_aS/2$ cut-term lemma;
5. a finite Ward-mode contraction of the full bulk-plus-corner moment map;
6. equivariance in a nonabelian cotangent truncation; and
7. affine-profile and reconstructed-variable covariance under an opposite
   boost satisfying $\ell_\pm[b]=0$.

In addition, xAct check V33 verifies the tracefree conformal Lie-variation
contraction (2.5a) and the integration-by-parts identity producing the Damour
coefficient in (2.5).

**Verified analytically:** equations (1.2)--(1.4), (2.4)--(2.15),
(3.1)--(3.3), (4.1)--(4.5), (5.1)--(5.10), (6.1)--(6.7), and
(8.1)--(8.10), under the
displayed boundary conditions, boost gauge, and covariance assumptions.

**Verified computationally:** only the finite algebraic/profile statements
V26--V41 and the local tensor identities V33 listed in the claim ledger.

**Not proved:** a concrete closing-wall action and its spin-1 ports; a global
quotient of all gravitational diffeomorphisms; functional nondegeneracy on a
completed profile space; an opposite-boost kernel theorem for the unspecified
closing ports; a chart through $\theta_s=0$; completeness, surjectivity,
positivity, or continuum topology.  No quantization is performed.
