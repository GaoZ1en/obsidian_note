# Final classical theorem ledger

## Direct verdict

**Correct under the conditions below:** the selected HF representative admits
a finite, caustic-free double-null characteristic reduction with explicit
Raychaudhuri reconstruction, the coupled affine spin-$0+2$ pullback, the
initial area/relative-boost pair, the endpoint-map/twist block, the constrained
diagonal generator-chart moment map, independent first-jet bulk composition,
and general fixed-incidence endpoint cotangent composition.

Stage 4.1 proves the core dictionary on a smooth splitting slice, a
global reference-density affine chart, an endpoint potential through
$\theta=0$, partial completion estimates and fixed-metric framing
uniqueness. Stage 4.3 constructs $C_{\rm init}$, while project-data framed
germ/collar bijectivity remains unproved. The intrinsic EH restriction identity is
proved for compatible existing linearized variations, hence on any
constructed lift image; full tangent surjectivity is not proved.

Calculations 08--09 prove angular-flux stability and $R_\perp^k$ with
loss three for existing reduced solutions under explicit background bounds.
Stage 4.3 closes both-sheet initial Bianchi/gauge/copy compatibility,
$C_{\rm init}$ and its differential/completion remainder: loss five in
free-slot $I^k$, six in filled-cross $J^k$. It proves the pure-generator
reduced difference loss $2r+1$ and a local reduced
$I^{2k+8}\to I^k$ restart theorem. Full affine reset and bulk Einstein
constraint propagation remain open; the first reset estimate is 10.(7.6).
$P_{\rm cell}^k$ and $P_{\rm rect}^{s,r}$ remain conditional. Extended
abstract ports still require the separate action-derived $P_{\rm red}$.

This ledger is authoritative for the classical scope.  It is not a theorem
of arbitrary-data fixed-rectangle existence, representative-independent
gravitational CPS, a physical closing-wall action, functional nondegeneracy,
or an unreduced off-shell spacetime quotient.  No quantization is included.

Throughout,

$$
q_{AB}=\Omega\bar q_{AB},\qquad \epsilon_q=\Omega\nu_0,\quad\det_{\nu_0}\bar q=1,
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

with fixed positive reference density $\nu_0$, metric $h_0$ and connection
$D^0$ (all norms intrinsic), and one common initial conformal metric
$\bar q^+_{AB}(0)=\bar q^-_{AB}(0)=\bar h_{AB}$.  On the monotonic-area sector, in the varying-endpoint
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
p_{sA}\nu_0=\pi_{s i}\partial_A s_s^i.
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
=C_G\int_{S_0}\!\nu_0\int_0^L\!d\lambda
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
=C_G\int \nu_0\,d\lambda\Big[
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
\wedge\boldsymbol\delta\Omega_0\,\nu_0,
$$

or, in the area-normalized polarization, the equivalent
$C_G\boldsymbol\delta\lambda_R\wedge\boldsymbol\delta\Omega_0$ block with
the reference and endpoint shifts retained.

On the monotonic-area sector, the action-derived endpoint block is

$$
\boxed{
\Theta_{S_0}^{\mathrm{endpoint,area}}
=C_G\int_{S_0}\left[-\Omega_0\boldsymbol\delta\lambda_R\,\nu_0
+\frac12\sum_{s=\pm}
\langle\pi_s,\boldsymbol\delta s_s\rangle\right],}
$$

and

$$
\Omega_{S_0}^{\mathrm{endpoint,area}}
=C_G\int_{S_0}\left[
\boldsymbol\delta\lambda_R\wedge\boldsymbol\delta\Omega_0\,\nu_0
+\frac12\sum_s
\boldsymbol\delta\pi_{s i}\wedge\boldsymbol\delta s_s^i
\right].
$$

The common-cut momentum coefficient obeys $p_{sA}\nu_0=\pi_{s i}\partial_A s_s^i$ with no
additional determinant.  If a distinct target density $\widehat\tau_s$ is
introduced, then locally
$\pi_{s i}=|\det Ds_s|\widehat\tau_{s i}\circ s_s$.

For the primary affine chart use instead the globally defined
$\pi_s^{\rm aff}\in\Gamma(s_s^*T^*S_{sL}\otimes\operatorname{Dens}S)$ and

$$
p_{sA}^{\rm aff}\nu_0=\pi_{si}^{\rm aff}\partial_A s_s^i,\quad
p_s^{\rm aff}=-2\Omega_0\bar\eta_{s0},\quad
\Theta_{S_{00}}^{\rm aff}=C_G\left[-\int_S\Omega_0\delta m\,\nu_0
+\tfrac12\sum_s\int_S\langle\pi_s^{\rm aff},\delta s_s\rangle\right].
$$

This is regular at $\theta_s=0$. The area transformation must retain the
bulk and cut shifts in calculations 04--06; it is not an isolated corner
substitution. With fixed reference density, every area/normal integral
above and below carries $\nu_0$; density-valued $\pi$ is integrated directly.

### 2.3 Full retained characteristic moment map

Let

$$
\mathfrak D_{sA}
=\partial_{\lambda_s}(\Omega_s\bar\eta_{sA})
-\Omega_s\left[D_A(\kappa_s+\theta_s/2)
-D_B\sigma_s{}^B{}_A\right]
$$

be the Damour residual relative to $\nu_0$, and

$$
\mathcal C_A=p_{+A}+p_{-A}-2\Omega_0D_A\lambda_R.
$$

For the cotangent-lifted diagonal generator relabelling $X_\xi$, including
its action on the reconstructed bulk profiles, corner fields, endpoint maps,
momenta, and matched abstract ports,

$$
\iota_{X_\xi}\Omega_{\mathrm{total}}
=\boldsymbol\delta\left[
\frac{C_G}{2}\int_{S_0}\xi^A\mathcal C_A\,\nu_0
+C_G\sum_s\int_{N_s}\xi^A\mathfrak D_{sA}\,d\lambda_s\nu_0
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
H_\xi=\frac{C_G}{2}\int_{S_0}\xi^A\mathcal C_A\,\nu_0.}
$$

For field-independent smearings,
$\{H_\xi,H_\eta\}=H_{[\xi,\eta]}$ on a closed cut or with tangent/no-flux
boundary conditions.  On an open cut the remainder is a field-dependent
boundary charge, not a central extension.  This is a theorem on the declared
reduced characteristic constraint surface, not an unreduced off-shell
spacetime theorem.

## 3. Stage-4.3 development and solution-space truth boundary

Calculation 10 supersedes the initial-completion and reduced-restart gaps
in the Stage-4.2 record immediately below. The nine current answers are
10.8. No bulk Einstein tangent or $C^1$ claim is promoted: initial
homogeneous transport is not a bulk subsidiary theorem, and the full
refoliated affine reset remains open.

The authoritative detailed statements are calculations 06--10 and
`DEVELOPMENT_MAP_AUDIT.md`. The core map is an equivalence in the smooth
category onto the slice $\mathcal F$ defined by $a_\pm[m]=\sqrt2e^{m/2}$
and original markings. The PDE gauge uses $e_3=\ell_-$ and
$e_4=2e^m\ell_+$ on their respective incoming sheets; it keeps original
parameter endpoints and records the boost from the symmetric core frame.

$C_{\rm pre}$ reconstructs Raychaudhuri/Damour variables and the intrinsic
connection with smooth/Lipschitz bounds into lower-order Sobolev spaces.
It is not by itself $C_{\rm init}$. Stage 4.2 closes the opposite-sheet
second-form transports in 09.3 and prepares the free slots in 09.4;
Stage 4.3 closes their full initial compatibility and constrained
differential/remainder in 10.4. Metric local/collar existence from complete
source data remains a literature theorem. The finite-regularity bulk
Einstein identification, gauge reset and framed metric bijection still
require their separate proofs.

The framed solution-space identity is

$$
\Omega_{\rm EH}^{\rm fr}(\delta_1g,\delta_2g)
=\Omega_{\rm char}^{\rm intr}(R_{\rm lin}\delta_1g,R_{\rm lin}\delta_2g)
$$

for compatible existing variations. Any actually constructed right inverse
$L$ on $V_d$ therefore obeys
$L^*\Omega_{\rm EH}^{\rm fr}=\Omega_{\rm char}^{\rm intr}|_{V_d}$.
No full lift for all project tangents or full tangent surjectivity is proved.
The intrinsic form contains the actual HF cuts and affine endpoint block;
the independent abstract $b_s$ port pairs belong only to
$\Omega_{\rm char}^{\rm ext}$, whose geometric identification needs
$P_{\rm red}$. A nonlinear neighborhood pullback additionally needs $C^1$.

For existing full-rectangle solutions, coherent on-shell current conservation
equates the intrinsic input/output forms under the stated side-flux policy.
It does not establish a uniform solution map or any auxiliary port equality.

### Historical Stage-4.2 verdict

1. **Copy system:** a slot-only swap with unchanged RHS is false.
   Calculation 08 now uses the printed allocation with the full conjugation
   09.(1.4), exactly equivalent to the literal Appendix equations.
2. **Fixed reference energy:** proved with the explicit metric, density,
   connection and coefficient margins in 09.2.
3. **$C_{\rm init}$:** not proved. $C_{\rm free}$, its differential and
   quadratic remainder have conservative loss five, 09.(4.3); no full
   initial-completion loss is assigned.
4. **$C_{\rm mix}$:** proved by 09.(3.3),(3.5), with conservative loss four
   and the same loss for its differential and quadratic remainder.
5. **$R_\perp^k$:** proved for existing reduced solutions under 09.7,
   with loss three. This is not a project-data Einstein existence theorem.
6. **Outgoing traces:** first $C^0$ traces are controlled; full generator
   jets, complementary constraints and bounded reset are not.
7. **$P_{\rm cell}^k$:** not proved. The first remaining initial lemma is
   $C_{\rm Bianchi}$, beginning with 09.(5.4); full restart, linearized
   Einstein existence and the quadratic evolution remainder also remain.
8. **$P_{\rm rect}^{s,r}$:** conditional; no finite-grid continuation,
   guessed global threshold, or quantization.

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

1. Complete the refoliated affine-reset estimate 10.(7.6), its inverse
   graph/label compositions and all endpoint jets; no full reset loss
   has been assigned;
2. Prove direct finite-regularity bulk Einstein/copy/gauge constraint
   propagation, then linearized Einstein existence and the quadratic
   evolution remainder for $P_{\rm cell}^k$. Initial completion and local
   reduced restart are already proved in 10.4--6;
3. only then finite-grid/gauge/regularity bookkeeping for
   $P_{\rm rect}^{s,r}$, including target openness and inverse regularity;
4. $P_{\rm red}$: action-derived physical ports and their full functional
   boundary/boost kernel;
5. functional nondegeneracy, full spacetime gauge quotient and any global
   completeness, positivity or continuum claim.

The affine endpoint chart now crosses zero expansion; the area/Reisenberger
chart still does not. The chart repair is not a solution-space theorem.


Stages 0--3 are frozen at their established algebraic boundary. Stage 4.3
closes initial compatibility/completion and the local reduced restart
hierarchy. It does not declare the smooth project-data collar, Einstein
one-cell theorem or rectangle closed.

### Stage-4.3 current theorem list

| Claim | Status | Precise scope |
|---|---|---|
| Initial $C_{\rm Bianchi}$ and homogeneous augmented subsidiary system | proved | both initial sheets, fixed corners, 10.1--4; not the bulk |
| $C_{\rm init}$, differential, completion quadratic remainder | proved | sufficient losses five in free $I^k$, six in filled $J^k$ |
| Pure-generator exact reduced difference hierarchy | proved | sufficient loss $2r+1$ with 10.5's high backgrounds |
| Continuous outgoing source-jet endpoint traces | proved | $r\le k$ in $H^{k-r}$, 10.6 |
| Local reduced $I^{2k+8}\to I^k$ restart | proved | regular source neighborhood and common local width; not an Einstein range theorem |
| Label/inverse flow margins, scalar affine factor/length, null-rotation formulas | proved | supplied regular coefficients, 10.7; not the full reset map |
| Full project affine reset and bulk Einstein identification | open | first reset estimate 10.(7.6); direct bulk subsidiary theorem still required |
| $P_{\rm cell}^k$, $P_{\rm rect}^{s,r}$ | conditional | no finite grid, quantization, or intrinsic/extended-port identification |
