# 03 — Stage 2.1 corner, area-gauge, and composition closure

## 0. Direct verdict and claim boundary

**Correct under the following precise conditions:** in the affine,
fixed-generator, fixed-endpoint-map sector, the spin-0+spin-2 pullback of
calculation 02 has an internally consistent finite-cell corner and composes
under full metric first-jet matching.  On the open set on which
$v_s=r_s/r_0$ is monotonic, its fixed-outer-two-metric pullback is the
fixed-endpoint-map restriction of Reisenberger's area-data form.

Three qualifications remain.

1. The area chart does not cover a generator through a zero of $\theta_s$.
2. Reisenberger's displayed form holds fixed the outer area density in the
   adapted outer chart.  If the outer conformal metric is also allowed to
   vary, a traceless shape port must be retained.  Its completion is not
   unique until a closing boundary action is selected.
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
normal-connection relation, affine-to-area Jacobians, fixed-map translation
of Reisenberger's form, and two-/three-segment composition are derived below
in the project notation.

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

Use one common transverse chart and fix the endpoint maps, so
$\boldsymbol\delta s_s^A=0$.  For two commuting comoving variations, write
$\Delta_i e_{AB}$ for the variation at fixed $v$.  Reisenberger's branch form,
translated from equation (117), is

$$
\boxed{
\begin{aligned}
\Omega_s^{\rm area}[\delta_1,\delta_2]
=\frac{C_G}{2}\int_{S_0}d^2x\Bigg\{&
\delta_1\lambda_R\,\delta_2\Omega_0\\
&+\frac14\delta_1\Omega_0
(\partial_v e^{AB})\Delta_2e_{AB}\big|_{v=1}\\
&+\frac12\Omega_0\int_1^{\bar v_s}v^2
(\Delta_1e^{AB})\partial_v(\Delta_2e_{AB})\,dv
-(1\leftrightarrow2)\Bigg\}.
\end{aligned}}
\tag{3.13}
$$

The full fixed-map double-null form is the sum of (3.13) over $s=\pm$,
with the single shared $\lambda_R,\Omega_0$.  Consequently its normal corner
sector is

$$
+C_G\int_{S_0}
\boldsymbol\delta\lambda_R\wedge
\boldsymbol\delta\Omega_0\,d^2x.
\tag{3.14}
$$

The second line of (3.13) is the shared-corner conformal endpoint term.  In
matrix notation it is

$$
-\frac{C_G}{8}\int_{S_0}
\boldsymbol\delta\Omega_0\wedge
\operatorname{tr}(K_sC_s)\big|_{v=1}\,d^2x
\tag{3.15}
$$

per branch.  It is not removed by fixing endpoint maps.

To derive (3.13) from the project form, rather than assume it, use the
following chain.

1. Substitute (3.3)--(3.5) into calculation 02 equation (4.4).  The conformal
   coefficient becomes $C_G\Omega_0v^2/4$, with no untracked Jacobian.
2. Use (3.7)--(3.8) to combine the affine spin-0 term with the variation of the
   normal scale.  The initial scale terms
   $\boldsymbol\delta\log B_{+0}$ and
   $\boldsymbol\delta\log B_{-0}$ cancel the corresponding terms obtained by
   substituting (3.9) into (0.1), leaving (3.14).
3. Normalize the generator coordinate at the outer cut by
   $\varrho=v/\bar v_s$.  Its moving lower limit
   $\varrho_0=1/\bar v_s$ gives (3.15).  Under the fixed-outer-area policy,
   $\boldsymbol\delta\log\varrho_0
   =\boldsymbol\delta\log\Omega_0/2$; this is precisely the step from
   Reisenberger equations (106) to (116).
4. The remaining conformal bulk curl is the last two lines of (3.13).  The
   inverse-metric variation supplies the sign already checked in calculation
   02.

This proves equality of the two-forms on the monotonic-area,
fixed-outer-two-metric, fixed-endpoint-map sector.  It does not identify the
two one-forms without their exact corner generators.  At the initial cut the
explicit generator is (1.6); the remaining scale and moving-limit shifts are
the endpoint canonical transformations in steps 2--3.

For a variable outer area the normal port changes under
$\ell_s\mapsto n_s=B_s\ell_s$ as

$$
b_s^{(v)}=b_s^{(\lambda)}+\log|B_s(\bar v_s)|
\tag{3.16}
$$

with the project incidence convention.  Equation (3.6) must then be retained,
and the moving upper-limit terms are part of the transformed outer port.

If $\boldsymbol\delta\bar q_{AB,sL}\neq0$, those terms have a traceless
component.  A differentiable extended port must therefore be enlarged to

$$
\Theta_{S_s}^{\rm port}
=C_G\int_{S_s}\left[
b_s^{(v)}\boldsymbol\delta\Omega_{sL}
+\pi_s^{AB}\boldsymbol\delta\bar q_{AB,sL}
\right]d^2x,
\qquad
\bar q_{AB,sL}\pi_s^{AB}=0.
\tag{3.17}
$$

The field-dependent map determines the shift of this port relative to the
affine chart, but a unique geometric $\pi_s^{AB}$ also depends on the action of
the boundary that closes the cell.  Therefore (3.17), not $\pi_s^{AB}=0$, is
the correct general outer policy.  In Reisenberger's fixed outer two-metric
sector its pullback vanishes.

## 4. Spin-0+spin-2 composition

### 4.1 Matching locus

Consider two consecutive segments with a common forward generator.  At their
shared cut $S_1$ impose

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

### 4.2 Additivity of the reduced form

On (4.1), uniqueness of the focusing ODE implies that the two regional
reconstructions of $r$ and their linearized variations are the restrictions
of the reconstruction on the combined interval.  The conformal profile and
its first derivative are likewise the restrictions of one $C^1$ profile.

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

The two incidences of the intermediate area/boost port cancel.  If the shape
port (3.17) is active, its two incidences cancel after matching its common cut
data.  In area gauge, the conformal endpoint terms generated on the two sides
also cancel.  No residual $dY$ transformation is required in the unified HF
representative.

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

### 4.3 Associativity

For three segments satisfying (4.1) at both intermediate cuts,

$$
(\Omega_1+\Omega_2)+\Omega_3
=\int_{I_1\cup I_2\cup I_3}\boldsymbol\omega_{\rm red}
=\Omega_1+(\Omega_2+\Omega_3).
\tag{4.7}
$$

Thus associativity follows analytically from additivity and uniqueness of the
reconstruction.  The Wolfram finite-mode regression checks (4.3) and (4.7) in
a diagonal conformal profile.  That regression is evidence for the tested
truncation; the functional statement is the direct integral identity (4.3),
not an extrapolation from the finite mode.

## 5. Stage-2.1 answer sheet

- **Initial corner sign:**
  $+C_G\boldsymbol\delta m_0\wedge
  \boldsymbol\delta\Omega_0$ in the unified HF representative.
- **Shared normal datum:**
  $\widehat\omega_A=(\omega_A^{(+)}-\omega_A^{(-)})/2$, with
  $\omega_A^{(+)}+\omega_A^{(-)}=-D_A m$ and
  $\tau_{\ell A}=2\widehat\omega_A$.
- **Area-gauge equivalence:** proved on the monotonic-area sector after fixing
  endpoint maps and the outer two-metric; conditional on the enlarged port
  (3.17) for variable outer shape; false as a global chart through
  $\theta=0$.
- **Composition:** proved under the full first-jet matching (4.1); the explicit
  off-locus obstruction is (4.4).
- **Outer shape port:** required when the outer traceless metric varies;
  absent only after the corresponding Dirichlet pullback.
- **Stage 3:** ready to begin as a separate controlled classical calculation.
  Stage 2.1 has fixed the shared normal datum and made the corner/composition
  structure internally consistent.  No Stage-3 derivation is performed here.

## 6. Verification boundary

**Verified:** the determinant identity $h=-m$; positive HF corner curl and its
exact polarization change; the branch connection sum/difference relations;
the area Jacobian, focusing equation for $B$, initial $B_0$, and normal-scalar
dictionary; the diagonal-profile coefficient of the conformal endpoint term;
the first-jet jump norm; two-segment additivity; and three-segment
associativity in the declared finite mode.

**Assumptions:** four-dimensional vacuum; smooth positive conformal metrics;
caustic-free affine intervals; fixed generator labels and endpoint maps;
monotonic area for section 3; one common forward generator for section 4;
the HF canonical representative; and either fixed outer two-metric or the
extended port (3.17).

**Not verified:** a unique closing-wall action or unique $\pi_s^{AB}$; a chart
through $\theta_s=0$; varying endpoint-map/twist symplectic terms; full
gravitational gauge nondegeneracy; a functional-analytic completion theorem;
or any Stage-3 spin-1 pullback.
