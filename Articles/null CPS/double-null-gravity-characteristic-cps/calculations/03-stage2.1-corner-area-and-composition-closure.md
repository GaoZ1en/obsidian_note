# 03 — Stage 2.1 corner, area-gauge, and composition closure

## 0. Direct verdict and claim boundary

**Stage-2.2 correction:** the initial HF corner and the algebraic
branch-normal dictionary in sections 1--2 are correct.  The former section
3.3 did not prove the claimed affine-to-area identity: it confused fixed-$v$
and fixed-outer-normalized variations and did not impose the common-domain
constraint relating $B_s$, the moving endpoint, and the fixed affine length.
The former section 4 proved subdivision additivity, not yet an
independent-data reduction theorem.  Calculation 04 supplies the corrected
field-dependent one-form transformation, the explicit generator and port
shift, and the independent-data inclusion/reconstruction maps.

Three qualifications remain.

1. The area chart does not cover a generator through a zero of $\theta_s$.
2. Reisenberger's displayed form holds fixed the outer area density in the
   adapted outer chart but allows the conformal profile, including its outer
   value, to vary.  No independent traceless shape port is forced by the null
   reduction; one can arise only from a selected closing-wall action or a
   different endpoint polarization.
3. The spin-1 endpoint-map block is not part of Stage 2.1.  Fixed endpoint
   maps remove its variation, not the normal-bundle datum itself.

The earlier negative initial corner sign is **incorrect** in the declared HF
canonical representative.  It came from combining the HF cut potential with
an independently split Jubb/LMPS joint variation.  The unified representative
gives

$$
\boxed{
\Omega_{S_0}^{\rm HF}
=+C_G\int_{S_0}
\boldsymbol\delta m_0\wedge\boldsymbol\delta\Omega_0\,d^2x.}
\tag{0.1}
$$

This agrees in sign with Reisenberger after the field-dependent normal
rescaling is included.

**Known from literature.**  HF arXiv:1611.03096 equations (4.29)--(4.30) and
(5.4)--(5.6) supply one bulk-plus-cut canonical representative.  Reisenberger
arXiv:1211.3880 equations (98)--(100) and (105)--(118) supply the area-data
regression target.  Neither result is imported as a replacement for the
project pullback.

**Re-derived here.**  The normal-block dictionary, corner sign, two-branch
normal-connection relation, and elementary affine-to-area Jacobians are
derived below.  Calculation 04 supersedes the former functional and
composition claims.

## 1. One HF representative at the initial cut

HF define the logarithmic normal volume scalar by

$$
e^h=\sqrt{|H|},
\tag{1.1}
$$

where $H$ is the $2\times2$ normal metric block.  In the project metric gauge

$$
ds_\perp^2=-2e^{-m}du\,dv,
\qquad
H_{ij}=\begin{pmatrix}0&-e^{-m}\\-e^{-m}&0\end{pmatrix},
\tag{1.2}
$$

one has

$$
\det H=-e^{-2m},
\qquad
\boxed{h=-m.}
\tag{1.3}
$$

There is no additive normalization term in (1.3).  Constants such as the
$-\log2$ in one LMPS null--null joint convention belong to a different split
of the total corner variation.

For fixed generator embeddings, HF equation (4.30) gives on a cut of one
branch

$$
\Theta_{\partial N_s}^{\rm HF}
=\frac{C_G}{2}\int_{\partial N_s}(1+h_s)
\boldsymbol\delta\Omega\,d^2x.
\tag{1.4}
$$

The initial endpoint has negative incidence.  The two branches share the same
normal block and the same area, so

$$
\begin{aligned}
\Theta_{S_0}^{\rm HF}
&=-\frac{C_G}{2}\int_{S_0}(1+h_0)
\boldsymbol\delta\Omega_0
-\frac{C_G}{2}\int_{S_0}(1+h_0)
\boldsymbol\delta\Omega_0\\
&=C_G\int_{S_0}(m_0-1)
\boldsymbol\delta\Omega_0\,d^2x.
\end{aligned}
\tag{1.5}
$$

Taking the field-space curl proves (0.1).  Equivalently, subtracting the exact
variation

$$
\boldsymbol\delta\left[
C_G\int_{S_0}\Omega_0(m_0-1)d^2x\right]
\tag{1.6}
$$

changes (1.5) to the boost polarization

$$
-C_G\int_{S_0}\Omega_0\boldsymbol\delta m_0\,d^2x
\tag{1.7}
$$

without changing (0.1).  Thus the initial canonical pair is
$(\Omega_0,m_0)$ in the convention
$\Omega=\boldsymbol\delta p\wedge\boldsymbol\delta q$.

The old calculation instead used the HF bulk/cut split, inserted endpoint
normalization variations from a Jubb-style split, and then varied an LMPS joint
with an independently chosen sign.  Those pieces do not belong to one
representative.  They generated the spurious negative sign and are not
retained.

At an outer cut the HF incidence is positive.  Before a concrete closing
geometry is chosen, write the combined normal/closing-boundary coefficient as
$b_s^{\rm HF}$ and retain

$$
\Theta_{S_s}^{\rm area-port}
=C_G\int_{S_s}b_s^{\rm HF}
\boldsymbol\delta\Omega_{sL}\,d^2x.
\tag{1.8}
$$

Equation (1.8) includes the HF contribution
$(1+h_{sL})/2$ and the as-yet unspecified closing-boundary contribution.  It
does not assert a unique geometric realization of $b_s^{\rm HF}$.

## 2. Two branch-adapted H\'aj\'i\v{c}ek forms

At $S_0$ define separately

$$
\omega_A^{(+)}
:=-e^m\ell_-\!\cdot D_A\ell_+,
\qquad
\omega_A^{(-)}
:=-e^m\ell_+\!\cdot D_A\ell_-.
\tag{2.1}
$$

Differentiating $\ell_+\cdot\ell_-=-e^{-m}$ gives

$$
\ell_-\!\cdot D_A\ell_+
+\ell_+\!\cdot D_A\ell_-
=e^{-m}D_A m.
\tag{2.2}
$$

Multiplying (2.2) by $-e^m$ fixes the sign unambiguously:

$$
\boxed{
\omega_A^{(+)}+\omega_A^{(-)}=-D_A m.}
\tag{2.3}
$$

The shared normal-bundle datum is the antisymmetric combination

$$
\boxed{
\widehat\omega_A
:=\frac12\left(\omega_A^{(+)}-\omega_A^{(-)}\right).}
\tag{2.4}
$$

Hence

$$
\boxed{
\omega_A^{(+)}=\widehat\omega_A-\frac12D_A m,
\qquad
\omega_A^{(-)}=-\widehat\omega_A-\frac12D_A m.}
\tag{2.5}
$$

CK's single-sheet H\'aj\'i\v{c}ek datum is the branch-adapted form appropriate
to that sheet.  On a double-null cross it is therefore (2.5), not one common
$\omega_A$ assigned unchanged to both branches.  The single CIVP torsion datum
is $\widehat\omega_A$ together with the normal scalar $m$.

For affine generators, the two Damour initial conditions are

$$
\begin{aligned}
(\partial_{\lambda_+}+\theta_+)\omega_A^{(+)}
&=D_A(\theta_+/2)-D_B\sigma^{+B}{}_A,
&\omega_A^{(+)}(0)&=\widehat\omega_A-\tfrac12D_A m,\\
(\partial_{\lambda_-}+\theta_-)\omega_A^{(-)}
&=D_A(\theta_-/2)-D_B\sigma^{-B}{}_A,
&\omega_A^{(-)}(0)&=-\widehat\omega_A-\tfrac12D_A m.
\end{aligned}
\tag{2.6}
$$

In particular, the shear-free formula of calculation 01 remains valid on
each branch after replacing its former common initial value by the
corresponding value in (2.5).

The twist of the affine pair is

$$
\tau_{\ell A}
:=\frac{\ell_-\cdot D_A\ell_+
-\ell_+\cdot D_A\ell_-}{\ell_-\cdot\ell_+}
=\omega_A^{(+)}-\omega_A^{(-)}
=2\widehat\omega_A.
\tag{2.7}
$$

Thus Reisenberger's twist is twice the shared connection, followed by the
normal-rescaling correction derived in section 3.

## 3. Field-dependent affine-to-area map

### 3.1 Domain and Jacobians

On one branch set

$$
v:=\frac r{r_0}=\sqrt{\frac\Omega{\Omega_0}}.
\tag{3.1}
$$

Use this chart only on the open set on which $dv/d\lambda$ is nowhere zero.
Since

$$
\frac{dv}{d\lambda}=\frac12\theta v,
\tag{3.2}
$$

this excludes zeros of $\theta$.  The affine chart remains primary outside
this open set.

Let

$$
n:=\partial_v=B\ell,
\qquad
B:=\frac{d\lambda}{dv}=\frac{2}{v\theta},
\qquad
\boxed{B_0=\frac2{\theta_0}.}
\tag{3.3}
$$

Write $e_{AB}(v,x):=\bar q_{AB}(\lambda(v),x)$ and

$$
K:=e^{-1}\partial_v e,
\qquad
C:=e^{-1}\boldsymbol\Delta e,
\tag{3.4}
$$

where $\boldsymbol\Delta$ is variation at fixed $v$.  Let
$\chi(v):=(\boldsymbol\delta\lambda)_v$ and
$\alpha:=(\boldsymbol\delta v)_\lambda$.  Ordinary and comoving variations
are related by

$$
\boxed{
\boldsymbol\delta_\lambda F
=\boldsymbol\Delta F+(\partial_vF)\alpha,
\qquad
\alpha=-\frac\chi B,
\qquad
\boldsymbol\Delta B=\partial_v\chi.}
\tag{3.5}
$$

The fixed initial cut gives $\chi(1)=0$.  If the affine endpoint $L$ is fixed,

$$
\chi(\bar v)=-B(\bar v)\boldsymbol\delta\bar v,
\qquad
\boldsymbol\delta\log\bar v
=\frac12\left(
\boldsymbol\delta\log\Omega_L
-\boldsymbol\delta\log\Omega_0\right).
\tag{3.6}
$$

The affine focusing equation becomes

$$
\boxed{
\partial_v\log|B|
=\frac v8\operatorname{tr}(K^2).}
\tag{3.7}
$$

Its field variation is

$$
\partial_v\boldsymbol\Delta\log|B|
=\frac v4\operatorname{tr}(K C'),
\qquad
\boldsymbol\Delta\log|B_0|
=-\frac{\boldsymbol\delta\theta_0}{\theta_0}.
\tag{3.8}
$$

The commutator in
$\boldsymbol\Delta K=C'+[K,C]$ drops out of (3.8) by cyclicity.

### 3.2 Normal scalar and twist

Under $n_+=B_+\ell_+$ and $n_-=B_-\ell_-$,

$$
\boxed{
\lambda_R:=-\log|n_+\cdot n_-|
=m-\log|B_+B_-|.}
\tag{3.9}
$$

At $S_0$, where $B_{s0}=2/\theta_{s0}$,

$$
\lambda_R
=m+\log\left|\frac{\theta_{+0}\theta_{-0}}4\right|.
\tag{3.10}
$$

The area-normal twist is

$$
\boxed{
\tau_{vA}
=2\widehat\omega_A+D_A\log|B_+/B_-|.}
\tag{3.11}
$$

Equivalently,

$$
\begin{aligned}
\omega_A^{(+)}
&=\frac12(\tau_{vA}-D_A\lambda_R)-D_A\log|B_+|,\\
\omega_A^{(-)}
&=-\frac12(\tau_{vA}+D_A\lambda_R)-D_A\log|B_-|.
\end{aligned}
\tag{3.12}
$$

Equations (3.9)--(3.12) are the complete fixed-label normal dictionary.  The
shortcut $\lambda_R=m$ is false unless the product $B_+B_-$ is fixed to one.

### 3.3 Fixed-map area-data two-form

The original version of this subsection was an outline, not a proof.  It used
the fixed-$v$ variation inside an expression whose natural coordinate is the
outer-normalized area variable $x=v/\bar v_s$, and it left the scale and
moving-limit transformations unnamed.

Calculation 04 corrects this.  In particular,

$$
e^{-1}\boldsymbol\Delta_xe
=e^{-1}\boldsymbol\Delta_ve
+v\boldsymbol\delta\log\bar v_s\,
e^{-1}\partial_ve,
\tag{3.13}
$$

and fixed affine length requires

$$
0=\int_1^{\bar v_s}\boldsymbol\Delta B_s\,dv
+B_s(\bar v_s)\boldsymbol\delta\bar v_s.
\tag{3.14}
$$

With these relations retained, calculation 04 equations (3.9)--(3.13) give
the explicit field-space generator $Y$ and the complete area-port shift.  On
Reisenberger's fixed-outer-area pullback,

$$
\Theta_X^\lambda-\Theta_X^A=C_G\boldsymbol\delta Y,
\qquad
\Phi^*\Omega_X^A=\Omega_X^\lambda.
\tag{3.15}
$$

The former formula
$b_s^{(v)}=b_s^{(\lambda)}+\log|B_s(\bar v_s)|$ is incomplete and is
withdrawn.  The correct shift is calculation 04 equation (3.11), which
contains the bulk Jacobian functional and all moving-upper-limit terms.

No independent traceless outer-shape momentum follows from this
transformation.  Reisenberger permits arbitrary conformal data up to the
outer cut, and the endpoint value is already contained in the conformal bulk
integral.  A chosen closing-wall action may add a traceless endpoint pair, but
that is a separate polarization choice.

## 4. Historical subdivision statement

### 4.1 Matching locus

This section starts from two restrictions of one common forward profile.  It
therefore proves subdivision consistency.  Calculation 04 section 5 replaces
it with independently declared left/right data, the matching constraint
surface, inclusion $\iota$, and reconstruction map $\rho$.  For the present
subdivision, impose at $S_1$

$$
\boxed{
\Omega_L=\Omega_R,
\quad
\bar q_{AB,L}=\bar q_{AB,R},
\quad
\theta_L=\theta_R,
\quad
\sigma_{AB,L}=\sigma_{AB,R}.}
\tag{4.1}
$$

Equivalently,

$$
q_{AB,L}=q_{AB,R},
\qquad
B_{AB,L}=B_{AB,R},
\qquad
B_{AB}:=\sigma_{AB}+\frac12\theta q_{AB}.
\tag{4.2}
$$

If each regional action instead uses its own outward generator, the second
equation in (4.2) carries the corresponding incidence sign.  Equations
(4.1)--(4.2) use a single forward generator, so no such sign is present.

The geometric boost port $b_1$ is separate from (4.2).  Matching $b_1$ cancels
the two closing-normal port contributions; it does not imply continuity of
$B_{AB}$.

### 4.2 Additivity of the subdivided reduced form

Here the two regional reconstructions of $r$ and their linearized variations
are assumed to be restrictions of the reconstruction on the combined
interval.  The conformal profile and its first derivative are likewise
restrictions of one $C^1$ profile.

Calculation 02 equation (5.1) was deliberately left without integration by
parts in $\lambda$.  Its density is therefore additive:

$$
\begin{aligned}
\Omega_{[0,L_1],\rm red}^{(0+2)}
+\Omega_{[L_1,L_1+L_2],\rm red}^{(0+2)}
&=\int_0^{L_1}\boldsymbol\omega_{\rm red}
+\int_{L_1}^{L_1+L_2}\boldsymbol\omega_{\rm red}\\
&=\int_0^{L_1+L_2}\boldsymbol\omega_{\rm red}\\
&=\boxed{\Omega_{[0,L_1+L_2],\rm red}^{(0+2)}}.
\end{aligned}
\tag{4.3}
$$

Equation (4.3) alone does not derive an intermediate port cancellation from a
closing action.  In the abstract diagonal port policy, opposite incidences
cancel after the port coordinates and momenta are matched.  Calculation 04
equations (5.7)--(5.9) state the independent-data bulk theorem and the
remaining closing-action qualification.

Before first-jet matching, the obstruction is

$$
\boxed{
\mathcal J_{AB}
:=B_{AB,R}-B_{AB,L}
=(\sigma_{AB,R}-\sigma_{AB,L})
+\frac12(\theta_R-\theta_L)q_{AB}.}
\tag{4.4}
$$

Because the shear jump is tracefree,

$$
\mathcal J_{AB}\mathcal J^{AB}
=(\Delta\sigma_{AB})(\Delta\sigma^{AB})
+\frac12(\Delta\theta)^2.
\tag{4.5}
$$

A nonzero (4.4) means that the concatenated metric is not $C^1$ and is not a
smooth vacuum characteristic solution.  Thus there is no combined reduced
form to which the two regional forms could be equated.  This is a domain
obstruction, not an anomalous leftover of the additive density.  In the
shear-free affine restriction it reduces to the Stage-1 slope obstruction and
the diagnostic two-form

$$
2C_G\boldsymbol\delta(r_1-r_0)\wedge
\boldsymbol\delta(r_2-r_1).
\tag{4.6}
$$

Equation (4.6) vanishes on the common-slope locus.  It must not be interpreted
as a defect of (4.3) away from the domain on which the long solution exists.

### 4.3 Subdivision associativity

For three segments satisfying (4.1) at both intermediate cuts,

$$
(\Omega_1+\Omega_2)+\Omega_3
=\int_{I_1\cup I_2\cup I_3}\boldsymbol\omega_{\rm red}
=\Omega_1+(\Omega_2+\Omega_3).
\tag{4.7}
$$

Thus subdivision associativity follows analytically from integral additivity.
V21 checks precisely this statement.  Independent three-cell reduction is
instead V25 and calculation 04 section 5.3; a geometrically realized port
quotient remains conditional on a closing action.

## 5. Stage-2.1 answer sheet

- **Initial corner sign:**
  $+C_G\boldsymbol\delta m_0\wedge
  \boldsymbol\delta\Omega_0$ in the unified HF representative.
- **Shared normal datum:**
  $\widehat\omega_A=(\omega_A^{(+)}-\omega_A^{(-)})/2$, with
  $\omega_A^{(+)}+\omega_A^{(-)}=-D_A m$ and
  $\tau_{\ell A}=2\widehat\omega_A$.
- **Area-gauge equivalence:** the old outline is superseded by calculation 04,
  which proves the monotonic-area, fixed-endpoint-map identity with an explicit
  $Y$ and area-port shift.  It does not require a fixed outer conformal metric.
- **Composition:** (4.3) is subdivision consistency.  Calculation 04 proves
  independent-data bulk reduction under full first-jet matching; the full
  finite-cell port theorem remains conditional on a closing action.
- **Outer shape port:** not required by the null reduction.  It is
  closing-wall/polarization dependent.
- **Stage 3:** calculation 04 gives the precise controlled gate.  No Stage-3
  derivation is performed here.

## 6. Verification boundary

**Verified:** the determinant identity $h=-m$; positive HF corner curl and its
exact polarization change; the branch connection sum/difference relations;
the area Jacobian, focusing equation for $B$, initial $B_0$, and normal-scalar
dictionary; the diagonal-profile coefficient of the conformal endpoint term;
the first-jet jump norm; two-segment subdivision additivity; and three-segment
subdivision associativity in the declared finite mode.  V23--V25 and the
analytic identities in calculation 04 supply the Stage-2.2 hardening.

**Assumptions:** four-dimensional vacuum; smooth positive conformal metrics;
caustic-free affine intervals; fixed generator labels and endpoint maps;
monotonic area for section 3; one common forward generator for section 4;
the HF canonical representative; and either fixed outer two-metric or the
extended port (3.17).

**Not verified:** a closing-wall action; a chart through $\theta_s=0$;
varying endpoint-map/twist symplectic terms; full gravitational gauge
nondegeneracy; a functional-analytic completion theorem; or any Stage-3
spin-1 pullback.
