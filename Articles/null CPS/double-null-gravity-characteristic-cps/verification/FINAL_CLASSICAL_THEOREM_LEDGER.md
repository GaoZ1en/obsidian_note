# Final classical theorem ledger

## Direct verdict

**Correct under the conditions below:** the selected HF representative admits
a finite, caustic-free double-null characteristic reduction with explicit
Raychaudhuri reconstruction, the coupled affine spin-$0+2$ pullback, the
initial area/relative-boost pair, the endpoint-map/twist block, the constrained
diagonal generator-chart moment map, independent first-jet bulk composition,
and general fixed-incidence endpoint cotangent composition.

After the explicit rigorous-CIVP dictionary, smooth restricted germ data and
smooth full-sheet data are now connected to actual framed vacuum solutions
on, respectively, a local germ and the long-by-thin neighborhood supplied by
the cited theorems.  On the corresponding framed linearized solution spaces,

$$
L_{\rm loc}^{*}\Omega_{\rm EH}^{\rm fr}=\Omega_{\rm char}.
$$

The literal nonlinear pullback by $E_{\rm loc}^{\rm fr}$ on an entire Banach
neighborhood still requires the $C^1$ estimate below.
The stronger finite-Sobolev Banach theorem on one prescribed full
$\mathcal R_{U,V}$ is **conditional** on
$\mathbf P_{\rm rect}^{s,r}$, and its physical nondegenerate boundary
reduction is independently open pending $\mathbf P_{\rm red}$.

This ledger is authoritative for the classical scope.  It is not a theorem
of arbitrary-data fixed-rectangle existence, representative-independent
gravitational CPS, a physical closing-wall action, functional nondegeneracy,
or an unreduced off-shell spacetime quotient.  No quantization is included.

Throughout,

$$
q_{AB}=\Omega\bar q_{AB},\qquad \det\bar q=1,
\qquad
\ell_+\!\cdot\ell_-=-e^{-m},
\qquad C_G=\frac1{8\pi G}.
$$

## 1. Data and reconstruction theorem

### 1.1 Declared reduced characteristic data

In the fixed-generator affine chart, the two-sheet data are

$$
\left(
\bar q^+_{AB}(\lambda_+,x),
\bar q^-_{AB}(\lambda_-,x);
\Omega_0,\theta_{+0},\theta_{-0},
\widehat\omega_A,m
\right),
$$

with one common initial conformal metric
$\bar q^+_{AB}(0)=\bar q^-_{AB}(0)=\bar h_{AB}$.  In the varying-endpoint
polarization, the nonredundant corner variables are

$$
(s_+,s_-,\pi_+,\pi_-;\Omega_0,\lambda_R,\bar h_{AB}),
$$

where

$$
\pi_s\in\Gamma\!\left(
s_s^*T^*S_{sL}\otimes\operatorname{Dens}(S_0)
\right),
\qquad
p_{sA}=\pi_{s i}\partial_A s_s^i.
$$

$\widehat\omega_A$ is reconstructed from $p_- -p_+$ and the reference
Jacobians $\mathcal B_s$; it is not counted again.

### 1.2 Assumptions

- Four-dimensional vacuum Einstein gravity and the selected HF
  bulk-plus-cut representative.
- Smooth, finite, caustic-free null sheets with a fixed ruling and zero shift.
- Affine generators, $\kappa_\pm=0$, with fixed affine endpoints in the
  affine chart.
- Positive area density.  The area chart additionally requires
  $\theta_s\ne0$ and a monotonic-area interval.
- Invertible endpoint maps and, for composition, fixed smooth invertible
  incidence maps.
- Closed cuts, or vector fields tangent to the cut boundary with the stated
  no-flux condition.

### 1.3 Raychaudhuri and Damour reconstruction

Writing $r_s=\sqrt{\Omega_s}$ and
$A_s=(\bar q^s)^{-1}\partial_{\lambda_s}\bar q^s$, the affine vacuum
Raychaudhuri equation is

$$
r_s''+\frac18\operatorname{tr}(A_s^2)r_s=0,
\qquad
r_s(0)=\sqrt{\Omega_0},
\qquad
r_s'(0)=\frac12\sqrt{\Omega_0}\,\theta_{s0}.
$$

Its linearization is the retarded Volterra/Green map in calculation 02,
equation (3.8).  Thus $\Omega_s$, $\theta_s=2r_s'/r_s$, and
$\sigma^s_{AB}=r_s^2\partial_{\lambda_s}\bar q^s_{AB}/2$ are reconstructed
from the displayed data on the caustic-free interval.

The branch normal connections obey

$$
(\partial_{\lambda_s}+\theta_s)\omega_A^{(s)}
=D_A\frac{\theta_s}{2}-D_B\sigma_s{}^B{}_A,
$$

hence

$$
\omega_A^{(s)}(\lambda_s)
=\frac{
\Omega_0\omega_{A0}^{(s)}
+\int_0^{\lambda_s}\Omega_s
\left(D_A\frac{\theta_s}{2}-D_B\sigma_s{}^B{}_A\right)d\tau
}{\Omega_s(\lambda_s)}.
$$

The initial values are fixed by
$\omega_A^{(+)}+\omega_A^{(-)}=-D_A m$ and
$\widehat\omega_A=(\omega_A^{(+)}-\omega_A^{(-)})/2$.

## 2. Symplectic theorem

### 2.1 Selected affine spin-$0+2$ form

For one sheet, with
$B=\bar q^{-1}\boldsymbol\delta\bar q$, the reduced potential is

$$
\boxed{
\Theta_{N,\mathrm{red}}^{(0+2)}
=C_G\int_{S_0}\!d^2x\int_0^L\!d\lambda
\left[
\frac{r^2}{4}\operatorname{tr}(AB)
-2r'\boldsymbol\delta r
\right].}
$$

Its curl is

$$
\boxed{
\begin{aligned}
\Omega_{N,\mathrm{red}}^{(0+2)}
=C_G\int d^2x\,d\lambda\Big[
&2\boldsymbol\delta r\wedge\partial_\lambda\boldsymbol\delta r
+\frac r2\boldsymbol\delta r\wedge\operatorname{tr}(AB)\\
&+\frac{r^2}{4}\operatorname{tr}
\big(B'\wedge B+A\,B\wedge B\big)
\Big].
\end{aligned}}
$$

$\boldsymbol\delta r$ is the Green pullback, so the spin-$0/2$ cross terms
are explicit and not treated as spectators.

### 2.2 Corner and endpoint blocks

The two sheets share exactly one initial area/relative-boost pair,

$$
C_G\int_{S_0}\boldsymbol\delta m
\wedge\boldsymbol\delta\Omega_0,
$$

or, in the area-normalized polarization, the equivalent
$C_G\boldsymbol\delta\lambda_R\wedge\boldsymbol\delta\Omega_0$ block with
the reference and endpoint shifts retained.

The action-derived endpoint block is

$$
\boxed{
\Theta_{S_0}^{\mathrm{ext}}
=C_G\int_{S_0}\left[-\Omega_0\boldsymbol\delta\lambda_R
+\frac12\sum_{s=\pm}
\langle\pi_s,\boldsymbol\delta s_s\rangle\right],}
$$

and

$$
\Omega_{S_0}^{\mathrm{ext}}
=C_G\int_{S_0}\left[
\boldsymbol\delta\lambda_R\wedge\boldsymbol\delta\Omega_0
+\frac12\sum_s
\boldsymbol\delta\pi_{s i}\wedge\boldsymbol\delta s_s^i
\right].
$$

The common-cut momentum is $p_{sA}=\pi_{s i}\partial_A s_s^i$ with no
additional determinant.  If a distinct target density $\widehat\tau_s$ is
introduced, then locally
$\pi_{s i}=|\det Ds_s|\widehat\tau_{s i}\circ s_s$.

### 2.3 Full retained characteristic moment map

Let

$$
\mathfrak D_{sA}
=\partial_{\lambda_s}(\Omega_s\bar\eta_{sA})
-\Omega_s\left[D_A(\kappa_s+\theta_s/2)
-D_B\sigma_s{}^B{}_A\right]
$$

be the Damour residual and

$$
\mathcal C_A=p_{+A}+p_{-A}-2\Omega_0D_A\lambda_R.
$$

For the cotangent-lifted diagonal generator relabelling $X_\xi$, including
its action on the reconstructed bulk profiles, corner fields, endpoint maps,
momenta, and matched abstract ports,

$$
\iota_{X_\xi}\Omega_{\mathrm{total}}
=\boldsymbol\delta\left[
\frac{C_G}{2}\int_{S_0}\xi^A\mathcal C_A
+C_G\sum_s\int_{N_s}\xi^A\mathfrak D_{sA}
+H_{\partial,\xi}
\right].
$$

On the Raychaudhuri-reconstructed, Damour-restricted characteristic surface,
with $H_{\partial,\xi}=0$ under the declared cut/port conditions,

$$
\boxed{
\iota_{X_\xi}\Omega_{\mathrm{total}}
=\boldsymbol\delta H_\xi,
\qquad
H_\xi=\frac{C_G}{2}\int_{S_0}\xi^A\mathcal C_A.}
$$

For field-independent smearings,
$\{H_\xi,H_\eta\}=H_{[\xi,\eta]}$ on a closed cut or with tangent/no-flux
boundary conditions.  On an open cut the remainder is a field-dependent
boundary charge, not a central extension.  This is a theorem on the declared
reduced characteristic constraint surface, not an unreduced off-shell
spacetime theorem.

## 3. Framed development and solution-space theorem

### 3.1 Framed spaces and exact dictionary

The framed characteristic chart retains

$$
(\bar q^+,\bar q^-;\Omega_0,\theta_{+0},\theta_{-0},
\widehat\omega,m;x^A,s_+,s_-),
$$

with one shared corner metric.  The framed solution space retains the
double-null optical functions, marked null frame, generator labels, corner
embedding, and endpoint markings, and quotients only
$\operatorname{Diff}_0$, which is trivial on that framing.

For

$$
e_4=a_+\ell_+,\qquad e_3=a_-\ell_-,
\qquad a_+a_-e^{-m}=2,
$$

the regular Luk data are

$$
\gamma_0=\Omega_0\bar h,\qquad
\chi^+=a_+\left(\sigma^++\frac{\theta_+}{2}q^+\right),\qquad
\underline\chi^-=a_-\left(\sigma^-+\frac{\theta_-}{2}q^-\right),
$$

$$
\zeta=-\omega^{(+)}-D\log a_+
=\omega^{(-)}+D\log a_-.
$$

In the symmetric frame, $\zeta=-\widehat\omega$.  Calculation 06 proves this
map locally smooth and invertible on the positive-area/no-caustic sector.
It does not claim a finite-Sobolev completion of every MSP $Y_\pm$ component.

### 3.2 Unconditional and conditional development domains

After that dictionary:

- a framed development/restriction bijection for restricted smooth
  corner-germ data is proved by the cited Rendall/Luk local theorem; MSP's
  theorem is not used here without the separately open completion of all
  $Y_\pm$ fields;
- a framed development/restriction bijection on an L-shaped neighborhood of
  the complete truncated sheets is proved in the smooth category by Luk for
  spherical cuts and by Cabet--Chru\'sciel--Tagne Wafo for general compact
  cuts;
- a common finite-Sobolev Banach neighborhood developing on the prescribed
  full $\mathcal R_{U,V}$ is conditional on
  $\mathbf P_{\rm rect}^{s,r}$.

The exact missing proposition requires, simultaneously, common-domain
existence, a background-relative $\mathcal X^r$ stability estimate,
double-null margin preservation, finite-Sobolev output trace/restart
control, forward $C^1$ dependence with derivative equal to the unique framed
linearized Einstein evolution, and target openness/$C^1$ inverse restriction
in the independently declared trace-regular solution topology.  Theorem 3.13
of arXiv:1406.3009 assumes the common domain; Theorem 3.15 treats smooth
continuation and explicitly leaves finite differentiability open.  Therefore
the finite-cell reduction in calculation 07 is not marked as a proof of
$\mathbf P_{\rm rect}^{s,r}$.

### 3.3 Solution-space form, output, and reduction

On the proved smooth germ/collar domains the linearized characteristic map

$$
L_{\rm loc}:T\mathcal D_{\rm char}^{\infty,{\rm fr}}(X_{\rm loc})
\longrightarrow
T^{\rm lin}\operatorname{Sol}_{\rm vac}^{\infty,{\rm fr}}(\mathcal U_{\rm loc})
$$

is bijective, and

$$
\boxed{L_{\rm loc}^{*}\Omega_{\rm EH}^{\rm fr}=\Omega_{\rm char}.}
$$

Along a smooth family for which differentiability of the nonlinear
development has independently been established, this is its actual
solution-space pullback.  A map-level Banach-manifold pullback on a whole
local neighborhood requires $\mathbf P_{\rm cell}^{k}$, and on the full
rectangle it requires $\mathbf P_{\rm rect}^{s,r}$.  Diagonal generator
relabelling descends the linearized identity on a regular moment-map slice.
A nondegenerate reduced symplectomorphism is not proved because the
boost/four-face functional kernel is open.

For every particular development that already exists on the full rectangle,
on-shell current conservation gives

$$
\Omega_{X_{\rm in}}=\Omega_{X_{\rm out}}
$$

for closed $S$ and the same coherent HF representative, or with an explicit
side no-flux condition.  This conservation law does not prove existence of a
uniform evolution map.

### 3.4 Required seven-part verdict

1. A rigorously defined framed development map exists for restricted smooth
   local-germ data and for smooth full-sheet data on a collar.
2. It is bijective onto its framed image on those respective domains; a germ
   does not recover the omitted part of a full-sheet datum, and
   full-rectangle bijectivity is conditional.
3. Entire-rectangle existence is conditional on
   $\mathbf P_{\rm rect}^{s,r}$, not proved.
4. The framed linearized characteristic problem is uniquely solvable, but
   its identification with $DE$ on a Banach neighborhood, target openness,
   and $C^1$ inverse restriction are conditional on the chart estimate.
5. The EH/characteristic identity is proved on the framed linearized
   local/collar solution spaces.  A literal nonlinear pullback holds along
   independently differentiable families; the neighborhood-level and
   full-rectangle Banach statements are conditional.
6. Diagonal relabelling gives a linearized reduced
   presymplectic identification.  No nondegenerate reduced
   symplectomorphism is proved.
7. The single PDE obstacle to the strongest framed fixed-rectangle
   development theorem is $\mathbf P_{\rm rect}^{s,r}$.  After it is solved,
   $\mathbf P_{\rm red}$ remains as the separate action/kernel obstacle to a
   physical nondegenerate reduction.

## 4. Composition theorem

### 4.1 Independent bulk composition

Two independently constructed spin-$0+2$ sheet forms satisfy

$$
\iota^*(\Omega_1^{\mathrm{bulk}}+\Omega_2^{\mathrm{bulk}})
=\rho^*\Omega_{12}^{\mathrm{bulk}}
$$

on the first-jet matching locus
$[q_{AB}]=0=[B_{AB}]$, equivalently continuity of
$(\Omega,\bar q_{AB},\theta,\sigma_{AB})$.  Three-cell reduction is
associative under the same matching at both cuts.  Off this locus the
first-jet jump is the domain obstruction.

### 4.2 General endpoint cotangent composition

For fixed smooth invertible maps

$$
g:S_0^{(1)}\to S_0^{(2)},
\qquad f:I_1\to I_2,
\qquad s_2\circ g=f\circ s_1,
$$

opposite interface incidences cancel precisely when

$$
\boxed{
\pi_1=(Df)^*g^*\pi_2,
\qquad
\pi_{1i}(x)=|\det Dg_x|
(Df_{s_1(x)})^j{}_i\pi_{2j}(g(x)).}
$$

This follows from equality of the paired one-forms after changing source
variables; taking $\boldsymbol\delta$ proves two-form cancellation.  The law
is functorial under composition of $f$ and $g$.  Field-dependent incidence
maps would add variation terms and are outside this theorem.

For developments that already exist, matching the full DND first jet and the
endpoint cotangent data makes PDE uniqueness identify gluing with composition,
and three-cell composition is associative on the common existence domain.
A uniform fixed-rectangle neighborhood version is conditional on
$\mathbf P_{\rm rect}^{s,r}$.  The complete physical-port composition theorem
remains conditional on $\mathbf P_{\rm red}$ because the abstract
area/normal and endpoint ports have not been derived from a specific physical
closing-wall action.

## 5. Gauge policy

- **Diagonal generator relabelling:** Hamiltonian and quotiented by the
  moment map $\mathcal C_A=0$ on the declared characteristic constraint
  surface.
- **Opposite boosts:** declared proper normal-frame gauge.  Affine gauge is
  preserved for $\ell_+[b]=0=\ell_-[b]$.  The reconstructed affine profiles,
  $\mathcal B_s$, endpoint maps, and endpoint momenta transform consistently,
  but the abstract closing-wall momentum has no action-derived boost law.
  Therefore no kernel theorem for the full retained bulk-plus-wall form is
  claimed.
- **Retained variables:** after the declared extended reduction, the local
  corner count contains the area/normal pair and two relative
  endpoint-map/embedding/port pairs.  They are not called
  diffeomorphism-invariant physical pairs.

## 6. Open items and continuation rule

The following remain open:

1. $\mathbf P_{\rm rect}^{s,r}$: finite-Sobolev buffered-background
   continuation/stability, trace/restart control, and the forward/inverse
   Banach $C^1$ chart in the trace-regular solution topology;
2. a finite-Sobolev completion from the Luk core to every MSP $Y_\pm$
   component, if MSP rather than Luk/Cabet is to be used as the primary chart;
3. $\mathbf P_{\rm red}$: a physical oriented four-face/closing-wall action
   and the complete functional boost/boundary kernel;
4. functional completion and nondegeneracy of the full profile space;
5. a chart that crosses $\theta_s=0$;
6. the full spacetime gauge quotient including the physical wall;
7. completeness, positivity, surjectivity, and continuum-topology results.

Stages 0--3 are frozen at their established algebraic boundary.  Stage 4 is
closed only at the local/collar solution-space level; the next legitimate
research step is the single PDE estimate
$\mathbf P_{\rm rect}^{s,r}$, not a quantum extension.
