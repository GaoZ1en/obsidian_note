# 05 — Stage 3.0: endpoint maps, twist, and corner reduction

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
\widetilde\tau_{s i}\boldsymbol\delta s_s^i
\right]d^2x.}
\tag{0.1}
$$

The coefficient and sign of the endpoint-map term are derived in section 2,
not imported from Reisenberger.  Reisenberger arXiv:1211.3880 equations
(98)--(101) are used only as a regression target in section 9.

After the Stage-2 bulk is restricted by the Damour Ward identity, the
generator-chart constraint is a moment map for diagonal relabelling of the
remaining corner block, with the sign convention fixed in section 5.  The
project quotients the residual opposite boost as proper normal-frame gauge.
After the generator-chart constraint and diagonal quotient, two transverse
relative endpoint-map pairs survive.  The endpoint block composes under
diagonal cotangent matching at an abstract interface.  None of these results
derives a physical closing-wall action or a full gravitational gauge quotient.

**Known from literature.**  HF arXiv:1611.03096 equations (4.29)--(5.5)
identify $-\bar\eta_A$ as the momentum of the tangential null generator.
The affine vacuum Damour equation is CK arXiv:2607.07785 equation (18) in the
project conventions.  Reisenberger supplies the regression variables, not the
project derivation.

**Re-derived here.**  The conversion of $-\bar\eta_A\boldsymbol\delta\ell^A$
to an endpoint-map cut term, its normalization and sign, the two branch
initial values, the integrating-factor transport, the moment-map contraction,
the local rank/kernel, the opposite-boost kernel, and the abstract interface
cancellation.

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

defined by following the generator labelled by $x$ to the outer cut.  For a
one-form density $\widetilde\tau_s$ on $S_{sL}$, define the common-cut
one-form density

$$
\boxed{p_{sA}:=(s_s^*\widetilde\tau_s)_A.}
\tag{1.2}
$$

In local charts $x^A$ on $S_0$ and $y_s^i$ on $S_{sL}$,

$$
p_{sA}\,d^2x
=\left|\det\frac{\partial s_s}{\partial x}\right|
\widetilde\tau_{s i}(s_s(x))
\frac{\partial s_s^i}{\partial x^A}\,d^2x.
\tag{1.3}
$$

Equivalently, keep the target index and define the source-density canonical
momentum $\pi_{s i}(x)d^2x$ by pairing it directly with
$\boldsymbol\delta s_s^i(x)$.  In (0.1),
$\widetilde\tau_{s i}d^2x$ denotes precisely this source-density
representative $\pi_{s i}d^2x$; the invariant common-cut representative is
(1.2)--(1.3).  The two descriptions are related by the differential of
$s_s$.  Formula (1.3), rather than an unmarked identification of the two
cuts, is used whenever $s_s$ varies.

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
=\{s_+^i,s_-^i,\widetilde\tau_{+i},\widetilde\tau_{-i};
\Omega_0,\lambda_R,\bar h_{AB}\}.}
\tag{1.5}
$$

$\widetilde\tau_{s i}$ is a covector density, so no $\bar h_{AB}$ is used to
raise its index.  The shared conformal corner metric is paired through the
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
\pi_{s i}\boldsymbol\delta s_s^i\,d^2x.}
\tag{2.11}
$$

Adding the already derived area/normal representative from Stage 2 gives
(0.1).  The plus sign and factor $C_G/2=1/(16\pi G)$ follow from the HF
coefficient, the endpoint incidence in (2.4), and (2.10).

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
density.  In common-cut components, (1.4) gives

$$
\boldsymbol\delta p_s
=s_s^*(\boldsymbol\delta\widetilde\tau_s
+\mathcal L_{\upsilon_s}\widetilde\tau_s),
\tag{5.2}
$$

so the Lie-derivative term is the explicit pullback/map cross term.  If the
momenta are replaced by $(\Omega_0,\lambda_R,\tau_v)$, then

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
The project treats diagonal relabelling as proper gauge and relative
endpoint displacement as a retained port/physical symmetry.

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
larger redundant affine description the vector

$$
X_b:
\quad
\delta_b\widehat\omega_A=D_Ab,
\quad
\delta_b\log\mathcal B_+=-b,
\quad
\delta_b\log\mathcal B_-=b
\tag{6.3}
$$

annihilates (0.1) and (5.1).  It is a kernel direction.

**Stage-3.0 policy:** quotient (6.3) as proper normal-frame gauge.  No
independent corner-frame variable is added.  The nonredundant coordinates
(1.5) are already boost invariant.  This policy does not prove that the full
spin-$0+1+2$ functional form has no other gauge kernel.

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

Thus the spin-1 sector adds two physical/port canonical pairs after the
declared reductions.  The pointwise count omits the shared conformal metric,
whose partners live in the Stage-2 profile, and is not a functional
nondegeneracy theorem.  V31 checks the matrices before and after reduction.

## 8. Endpoint-sector composition

Let two cells meet at an abstract interface $S_I$.  Denote the outgoing data
of cell 1 by $(s_{1I},\pi_{1I})$ and the incoming data of cell 2 by
$(s_{2I},\pi_{2I})$.  After choosing the incidence map
$f:S_I^{(1)}\to S_I^{(2)}$, impose cotangent matching

$$
s_{2I}=f\circ s_{1I},
\qquad
\pi_{1I}=f^*\pi_{2I}.
\tag{8.1}
$$

The two interface incidences have opposite signs, so

$$
\Theta_I^{(1)}+\Theta_I^{(2)}
=\frac{C_G}{2}\int_{S_I}
\left(\pi_{1I}\boldsymbol\delta s_{1I}
-f^*\pi_{2I}\boldsymbol\delta(f^{-1}\circ s_{2I})\right).
\tag{8.2}
$$

Equation (8.1) makes (8.2) and its curl vanish.  Hence

$$
\boxed{
\iota_I^*(\Omega_{I,1}^{(1)}+\Omega_{I,2}^{(1)})=0}
\tag{8.3}
$$

for the abstract endpoint-map/twist port.  V32 checks this cancellation in a
two-cell finite truncation.  This is spin-1 port composition, not a theorem
that a chosen physical closing wall supplies precisely these interface data.

## 9. Reisenberger regression

With the assignment $+=R$, $-=L$ and the pulled-back density convention,

$$
\widetilde\tau_{+A}
=\Omega_0(D_A\lambda_R-\tau_{vA}),
\qquad
\widetilde\tau_{-A}
=\Omega_0(D_A\lambda_R+\tau_{vA}).
\tag{9.1}
$$

Reisenberger's branch surface potential has coefficient
$1/(16\pi G)=C_G/2$ multiplying
$\widetilde\tau_{s i}\boldsymbol\delta s_s^i$, and the sum of the two branch
normal terms is $-C_G\Omega_0\boldsymbol\delta\lambda_R$.  This agrees with
(0.1).

The dictionary is:

| Project | Reisenberger | Classification |
|---|---|---|
| $S_0$, $S_{sL}$, $s_s:S_0\to S_{sL}$ | $S_0$, $S_A$, $s_A^i$ | same maps; project writes every pullback |
| $\pi_{s i}d^2x$ | $\widetilde\tau_{Ai}d^2\theta$ | same covector density after branch assignment |
| $p_{sA}=s_s^*\widetilde\tau_s$ | implicit chart conversion | pullback convention |
| $\tau_v$ | $\tau$ | same area-normal twist with $R/L$ sign convention |
| $\lambda_R$ with fixed reference normalizations | $\lambda$ | constant normalization convention |
| quotient of diagonal $\mathrm{Diff}(S_0)$ | $\theta$-chart gauge | same moment-map reduction |
| quotient of opposite boosts | fixed area-normal frame | normal-frame policy |

There is no genuine mismatch in the endpoint block.  The visible differences
are density weight, explicit pullback, fixed reference normalization, and
normal-frame convention.

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

In addition, xAct check V33 verifies the tracefree conformal Lie-variation
contraction (2.5a) and the integration-by-parts identity producing the Damour
coefficient in (2.5).

**Verified analytically:** equations (2.4)--(2.11), (3.1)--(3.3),
(4.1)--(4.5), (5.1)--(5.6), (6.1)--(6.3), and (8.1)--(8.3), under the
displayed boundary conditions, boost gauge, and covariance assumptions.

**Verified computationally:** only the finite algebraic/profile statements
V26--V32 and the local tensor identities V33 listed in the claim ledger.

**Not proved:** a concrete closing-wall action and its spin-1 ports; a global
quotient of all gravitational diffeomorphisms; functional nondegeneracy on a
completed profile space; a chart through $\theta_s=0$; completeness,
surjectivity, positivity, or continuum topology.  No quantization is performed.
