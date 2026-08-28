# Raw Horizon CPS, Constraints, Corners, and Gauge Policy

## 1. Direct verdict

The unconstrained pullback of Maxwell theory to one cosmological-horizon
sheet is not specified by $F_{VA}$ or $A_A$ alone.  Use distinct names for
the affine and logarithmic radiative fields,

$$
r_A^{\rm aff}(V,x):=F_{VA},
\qquad
\mathfrak r_A(v,x):=F_{vA}=(-V)F_{VA}.
\tag{1.0}
$$

Before imposing the regular-bulk range, the constraint-complete affine data
on $\mathcal H^-$ are

$$
\boxed{\left(r_A^{\rm aff}(V,x);\ \mathcal E_B(x),\ b^B_{AB}(x)\right),}
\tag{1.1}
$$

together with an endpoint policy and, in a potential polarization, the
declared gauge-frame data.  The generator constraints transport $\mathcal E$
and $F_{AB}$ from the corner.  `03` proves completeness of the logarithmic
field $\mathfrak r_A$ on `T1-log`; it does not prove that
$r_A^{\rm aff}=e^v\mathfrak r_A$ is affine smooth.  The latter range is
governed by `10` and remains conditional at maximal fixed-Sobolev level.

The main project starts from one global potential on the trivial bundle.
Therefore

$$
\boxed{\int_{S^2}b^B=0}
\tag{1.2}
$$

already in the raw tangent space.  A nonzero magnetic Chern integer requires
patchwise connections and transition functions and is an external discrete
superselection sector, not a tangent vector of (1.1).

There is no universal independent edge oscillator. A relative frame becomes canonical only in an endpoint-enlarged or split-frame polarization where its conjugate flux is allowed to vary.

## 2. Action, symplectic potential, and current

Start from

$$
S[A]=-\frac12\int_M F\wedge *F,
\qquad F=dA.
\tag{2.1}
$$

With the metric fixed,

$$
\delta S
=-\int_M\delta A\wedge d*F
+\int_{\partial M}\theta[A;\delta A],
\tag{2.2}
$$

where

$$
\boxed{\theta[A;\delta A]=-\delta A\wedge *F,}
\tag{2.3}
$$

and the equation of motion is $d*F=0$. For two linearized solutions, fix the
field-space ordering once and for all by

$$
\omega(\delta_1,\delta_2)
:=\delta_2\theta[\delta_1]-\delta_1\theta[\delta_2].
$$

Thus

$$
\boxed{
\omega[A;\delta_1A,\delta_2A]
=\delta_2A\wedge *\delta_1F
-\delta_1A\wedge *\delta_2F.}
\tag{2.4}
$$

This is the ordering for which a mechanical potential $p\,\delta q$ gives
$\omega=\delta q\wedge\delta p$. The opposite ordering is equally possible,
but it may not be mixed with (3.5) or the master convention of `02`. No gauge
condition has been used. Equations (2.3)--(2.4), including their signs, are
checked directly in `../scripts/geometry_hodge_checks.wl`.

## 3. General double-null decomposition

Near a horizon, write

$$
ds^2=-2\mathcal A\,dU\,dV+q_{AB}dx^A dx^B,
\qquad
\operatorname{or}(M)=dU\wedge dV\wedge\operatorname{vol}_q.
\tag{3.1}
$$

Define

$$
\mathcal E:=\frac{F_{UV}}{\mathcal A},
\qquad
p_A:=F_{UA},
\qquad
r_A^{\rm aff}:=F_{VA}.
\tag{3.2}
$$

The pullbacks of (2.3), using the presentation orientations of `00`, are

$$
\boxed{
\theta\big|_{\mathcal H^-}
=dV\wedge\operatorname{vol}_{q}
\left(\mathcal E\,\delta A_V+r_{\rm aff}^A\delta A_A\right),}
\tag{3.3}
$$

$$
\boxed{
\theta\big|_{\mathcal H^+}
=dU\wedge\operatorname{vol}_{q}
\left(\mathcal E\,\delta A_U-p^A\delta A_A\right).}
\tag{3.4}
$$

For example, (3.3) gives the bilinear sheet form

$$
\begin{aligned}
\Omega_-^{\rm raw}(\delta_1,\delta_2)
=\int_{\mathcal H^-}dV\,dS_q\big[&
\delta_1A_V\,\delta_2\mathcal E-
\delta_2A_V\,\delta_1\mathcal E\\
&+\delta_1A_A\,\delta_2r_{\rm aff}^A-
\delta_2A_A\,\delta_1r_{\rm aff}^A\big].
\end{aligned}
\tag{3.5}
$$

The analogous expression on $\mathcal H^+$ follows from (3.4), with the displayed minus sign multiplying the $p^A\delta A_A$ term. Endpoint terms are not dropped in (3.5).

Explicitly, the future-generator presentation pullback is

$$
\begin{aligned}
\Omega_{+,\mathrm{pres}}^{\rm raw}(\delta_1,\delta_2)
=\int_{\mathcal H^+}dU\,dS_q\big[&
\delta_1A_U\,\delta_2\mathcal E-
\delta_2A_U\,\delta_1\mathcal E\\
&-\delta_1A_A\,\delta_2p^A+
\delta_2A_A\,\delta_1p^A\big].
\end{aligned}
\tag{3.6}
$$

For scattering we later use $\Omega_+:=-\Omega_{+,\mathrm{pres}}^{\rm raw}$.
The minus sign is the outward-boundary sign of the future characteristic
triangle, not a change of (2.4); `04` proves this statement before taking the
horizon limit.

Status of (3.3)--(3.6): `checked symbolically`.

## 4. Constraint/evolution split

### 4.1 Past horizon

Because $q_{AB}=L^2\gamma_{AB}$ is constant along the generators of $\mathcal H^-$, the $U$-component of Maxwell's equation and the tangential Bianchi identity give

$$
\boxed{\partial_V\mathcal E+D^Ar_A^{\rm aff}=0,}
\tag{4.1}
$$

$$
\boxed{\partial_VF_{AB}-2D_{[A}r^{\rm aff}_{B]}=0.}
\tag{4.2}
$$

These are generator transport constraints, not bulk evolution equations.

### 4.2 Future horizon

Similarly,

$$
\boxed{\partial_U\mathcal E-D^Ap_A=0,}
\tag{4.3}
$$

$$
\boxed{\partial_UF_{AB}-2D_{[A}p_{B]}=0.}
\tag{4.4}
$$

### 4.3 Transverse equations are bulk evolution

The remaining angular Maxwell equation can be written before restriction as

$$
\frac1{\sqrt q}\partial_U(\sqrt q\,r_{\rm aff}^A)
+\frac1{\sqrt q}\partial_V(\sqrt q\,p^A)
-D_B\!\left(\mathcal A F_q^{BA}\right)=0,
\tag{4.5}
$$

where $F_q^{BA}=q^{BC}q^{AD}F_{CD}$. The $UVA$ Bianchi identity is

$$
\partial_Ur_A^{\rm aff}-\partial_Vp_A+D_A(\mathcal A\mathcal E)=0.
\tag{4.6}
$$

Equations (4.5)--(4.6) contain transverse derivatives of data not intrinsic to a single sheet. They belong to bulk evolution/reconstruction. Treating them as extra free horizon data would double count the solution.

The classification is therefore:

| role | past-horizon quantity | status before bulk range |
|---|---|---|
| affine radiative profile | $r_A^{\rm aff}(V,x)$ | freely specifiable within the declared affine regularity class |
| logarithmic radiation field | $\mathfrak r_A(v,x)=(-V)r_A^{\rm aff}$ | variable used by `T1-log`; not automatically affine smooth |
| generator transport | (4.1), (4.2) | intrinsic constraints |
| corner integration data | $\mathcal E_B, b^B_{AB}$ | independent raw data |
| endpoint data | limits/frames at $V=-\infty,0$ | require a separate endpoint policy |
| transverse equations | (4.5), (4.6) | bulk evolution, not sheet constraints |

## 5. Corner integration

On an affine-smooth horizon core, integrating from $B$, located at $V=0$, gives

$$
\boxed{
\mathcal E(V,x)=\mathcal E_B(x)
-\int_0^VdV'\,D^Ar_A^{\rm aff}(V',x),}
\tag{5.1}
$$

$$
\boxed{
F_{AB}(V,x)=b^B_{AB}(x)
+2\int_0^VdV'\,D_{[A}r^{\rm aff}_{B]}(V',x).}
\tag{5.2}
$$

Thus $r_A^{\rm aff}$ alone is not constraint-complete on a generic null
sheet.  In the logarithmic CPS completion, the corresponding equations are
interpreted weakly through $\mathfrak r_A$ and pointwise
$\mathcal E_B,b^B_{AB}$ are not assigned unless a separate affine trace
hypothesis is imposed.

The spherical means obey

$$
\partial_V\int_{S^2}dS_q\,\mathcal E=0,
\qquad
\partial_V\int_{S^2}F=0.
\tag{5.3}
$$

They are the electric-flux and magnetic-Chern $j=0$ sectors.  The raw sheet
equations preserve both means, but the present global-potential/trivial-bundle
tangent space already fixes the magnetic mean to zero by (1.2).  Smooth
source-free extension through the center additionally removes the electric
mean.  A sum over discrete Chern sectors would require a separate patchwise
bundle formulation.

## 6. Harmonic content and the regular-bulk range

Let $Y_{jm}$ be unit-sphere scalar harmonics and, for $j\geq1$,

$$
\mathbb E_A^{jm}=\frac{D_AY_{jm}}{\sqrt{\lambda_j}},
\qquad
\mathbb B_A^{jm}=\frac{(\star_\gamma dY_{jm})_A}{\sqrt{\lambda_j}},
\qquad
\lambda_j=j(j+1),
\tag{6.1}
$$

with the orientation convention

$$
2D_{[A}\mathbb B_{B]}^{jm}
=-\sqrt{\lambda_j}Y_{jm}\epsilon^{\gamma}_{AB}.
\tag{6.2}
$$

The action-derived dictionary of `02` implies on either horizon

$$
\mathcal E_{jm}=-\frac{\sqrt{\lambda_j}}{L^2}\Psi^E_{jm},
\qquad
\mathcal B_{jm}:=\frac12\epsilon_q^{AB}F_{AB}
=-\frac{\sqrt{\lambda_j}}{L^2}\Psi^B_{jm}.
\tag{6.3}
$$

Therefore, for $j\geq1$, the cut values $\mathcal E_B$ and $b^B_{AB}$ are not additional oscillators after the regular bulk range is imposed: they are the electric and magnetic master cut values. This does not contradict their independence in the raw sheet problem. It says that the image of the bulk restriction map is a proper subspace of the unconstrained sheet data.

On $\mathcal H^-$, in logarithmic coordinate $v$,

$$
F_{vA}^{E,jm}=-\partial_v f^E_{jm}(v)\,\mathbb E_A^{jm},
\qquad
F_{vA}^{B,jm}=+\partial_v f^B_{jm}(v)\,\mathbb B_A^{jm},
\tag{6.4}
$$

where $f^P_{jm}$ is the incoming master profile. Equations (6.3)--(6.4) show exactly when the radiative field strength determines the corner fields: one must be able to invert $\partial_v$ without an independent zero-frequency constant. `03` proves this on the spectral core and its infrared-controlled completion.

## 7. Potential polarization without prior gauge fixing

The potential is retained through the raw pullback. Only now, as an optional polarization, write locally on $\mathcal H^-$

$$
A_V=\partial_V\alpha,
\qquad
\overline A_A:=A_A-D_A\alpha.
\tag{7.1}
$$

Then

$$
\boxed{\partial_V\overline A_A=r_A^{\rm aff}.}
\tag{7.2}
$$

Choosing $A_V=0$ is equivalent to choosing a generator frame $\alpha$; it is not part of the derivation of (3.3), (4.1), or (4.2). The residual $V$-independent shift of $\overline A_A$ is fixed only after specifying a cut frame or quotient policy.

Consequently:

- arbitrary $A_A(V,x)$ is gauge dependent and is not intrinsically complete;
- $A_A$ in generator gauge is complete on the zero-frequency-free bulk range only after fixing its integration frame;
- arbitrary $r_A^{\rm aff}=F_{VA}$ is not raw-sheet complete;
- $\mathfrak r_A=F_{vA}$ is bulk complete on the `T1-log` core because the
  master derivative is invertible there and $j=0$ is absent;
- that statement does not make $r_A^{\rm aff}=e^v\mathfrak r_A$ affine
  regular; `10` gives the extra condition;
- in an endpoint/memory extension, an integration constant or frame may have to be restored.

## 8. Proper gauge and charged endpoint transformations

For a gauge variation $\delta_\varepsilon A=d\varepsilon$, $\delta_\varepsilon F=0$. On shell,

$$
\boxed{
\omega(\delta_\varepsilon A,\delta A)
=-d\left(\varepsilon\,*\delta F\right).}
\tag{8.1}
$$

Hence on a hypersurface $\Sigma$,

$$
\Omega_\Sigma(\delta_\varepsilon,\delta)
=-\int_{\partial\Sigma}\varepsilon\,*\delta F.
\tag{8.2}
$$

The definitions are:

$$
\delta_\varepsilon\in\mathcal G_{\rm proper}
\quad\Longleftrightarrow\quad
\int_{\partial\Sigma}\varepsilon\,*\delta F=0
\quad\text{for every allowed }\delta F.
\tag{8.3}
$$

If (8.3) fails, the endpoint transformation is charged and is not divided out. This criterion depends on the allowed endpoint variations, not merely on whether $\varepsilon$ vanishes pointwise.

If separate frames are introduced on two cuts or two sheets, their difference

$$
\lambda_{\rm rel}:=\alpha_2-\alpha_1
\tag{8.4}
$$

can pair with the normal electric field through a term of the schematic form

$$
\int_{S^2}\delta\mathcal E\wedge\delta\lambda_{\rm rel}.
\tag{8.5}
$$

Equation (8.5) is not appended universally. It arises only after an endpoint-extended polarization has supplied both a trace of $\mathcal E$ and an independent relative frame. With one smooth bulk trivialization and the zero-endpoint core, no such independent oscillator is present.

## 9. Constraint-complete horizon spaces

On the smooth affine core, define

$$
\mathcal X_{\mathcal H^-}^{\rm raw}
=\left\{(r_A^{\rm aff};\mathcal E_B,b^B_{AB};\text{endpoint frame policy})
\text{ satisfying (5.1)--(5.2)}\right\}.
\tag{9.1}
$$

This is an affine raw space and includes the zero magnetic-mean condition
(1.2).  The `T1-log` target is instead the independently defined spectral
space of $\mathfrak r_A$ in `03`.  The affine bulk-compatible subspace

$$
\mathcal X_{\mathcal H^-}^{\rm aff,bulk}
:=\mathcal X_{\mathcal H^-}^{\rm raw}
\cap\operatorname{Ran}(R_-),
\tag{9.2}
$$

is not identified merely by declaring it to be an image.  `10` gives an
independent finite-order description using weighted affine limits of the
incoming trace and the opposite-end limits of $S_jc$.  That description is
proved for finite harmonics/rapid-angular smooth data; the maximal completed
space remains `T1-aff`, status `conditional`.

## 10. What has and has not been established

- Raw action, pullback, relative signs, and Hodge map: `checked symbolically`.
- Intrinsic constraint hierarchy and corner integrations: `proved`.
- $\mathfrak r_A=F_{vA}$-only completeness on `T1-log`: `proved` in `03`.
- affine $r_A^{\rm aff}=F_{VA}$ range: `T1-aff(k)` proved in `10` on the
  finite-order smooth core; maximal completion `conditional`.
- arbitrary nonzero magnetic Chern mean within the global-potential tangent
  space: `false`.
- $A_A$-only completeness without a generator frame: `false`.
- A universal independent edge oscillator on every null sheet: `false`.
- Complete endpoint/memory/large-gauge classification on the maximal finite-energy space: `conditional`, deferred to `08`.
