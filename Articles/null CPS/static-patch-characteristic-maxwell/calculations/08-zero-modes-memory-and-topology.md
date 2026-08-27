# Zero Modes, Memory, Large Gauge, and Topology

## 1. Verdict and scope

The classification theorem T4 is **proved** below, but only after separating
three different spaces which must not be identified:

1. the smooth source-free bulk phase space on the static spatial ball;
2. the infrared-controlled CPS completion used in `03`--`07`;
3. a smooth endpoint-trace extension of the raw half-horizon data.

On the first space the electric and magnetic $j=0$ fluxes vanish.  On the
second space there is no zero-frequency vector and generic pointwise endpoint
traces do not exist.  On the third space a cut constant and a half-horizon
memory form a finite canonical pair after a fixed trace splitting.  The trace
extension is a classification of raw characteristic data; it is **not** being
asserted to be the image of every center-regular finite-energy bulk solution.
Consequently T4 is proved.  The energy-only statements `T1-max` and `T2-max`
are `false` without extra topology; the trace-range versions `T1-trace` and
`T2-trace`, and the sharp-observable claim `T3-max`, remain `conditional`.

This distinction is the main result of this calculation.  In particular,
there is no universal extra edge oscillator hidden in the CPS space.

## 2. Fixed conventions and the two notions of endpoint

On the past horizon,

$$
V=-e^{-v},\qquad V\in(-\infty,0),\qquad v\in\mathbb R,
\tag{2.1}
$$

and $B$ is $V=0$, or $v=+\infty$.  In the optional generator polarization of
`01`,

$$
\overline A_A=A_A-D_A\alpha,
\qquad
\partial_V\overline A_A=F_{VA}.
\tag{2.2}
$$

The past-half memory is therefore

$$
\boxed{
\Delta_A^-
:=\overline A_A(0,x)-\overline A_A(-\infty,x)
=\int_{-\infty}^{0}dV\,F_{VA}
=\int_{-\infty}^{\infty}dv\,F_{vA}.}
\tag{2.3}
$$

Equation (2.3) is defined only on a space with the indicated traces or with an
equivalent absolutely integrable radiative field.  A generic vector in the
CPS Hilbert completion has neither property.  We use:

- **affine endpoint trace** for an actual limit in $V$;
- **logarithmic weak data** for a spectral or Sobolev class in $v$ without
  point evaluation.

Affine smoothness at $B$ implies

$$
\overline A_A(V,x)=A_A^B(x)+O(V)
\quad\Longrightarrow\quad
\overline A_A(v,x)=A_A^B(x)+O(e^{-v}),
\tag{2.4}
$$

but the converse is not automatic.  In particular, finite static energy is
not a trace theorem.

## 3. The $j=0$ sectors on the static ball

Let $S_r^2$ be a round sphere on a static slice.  Define

$$
Q_E(r)=\int_{S_r^2}*F,
\qquad
Q_B(r)=\int_{S_r^2}F.
\tag{3.1}
$$

Source-free Maxwell and Bianchi give $d*F=dF=0$, so both fluxes are independent
of $r$.  Smoothness at the center gives

$$
\lim_{r\to0}Q_E(r)=\lim_{r\to0}Q_B(r)=0,
\tag{3.2}
$$

and hence

$$
\boxed{Q_E=Q_B=0}
\tag{3.3}
$$

on the smooth source-free phase space.  The magnetic statement also follows
from the trivial bundle class on $B^3$,

$$
H^2(B^3;\mathbb Z)=0,
\tag{3.4}
$$

and there is no independent flat holonomy because

$$
H^1(B^3)=0.
\tag{3.5}
$$

Thus the following objects are different:

- an electric Coulomb sector requires a charge or a center singularity;
- a magnetic monopole sector requires a puncture or a nontrivial bundle;
- a flat holonomy requires nontrivial first cohomology;
- none is a radiative $\omega\to0$ limit on the smooth ball.

If punctures, charged matter, or nontrivial bundles are admitted, $Q_E$ and
$Q_B$ become superselection/topological labels of a different theory.  They
are not added to the phase space studied here.

## 4. A finite endpoint-trace symplectic space

The endpoint classification is most transparent mode by mode.  Fix one real
polarization/harmonic label $(P,j,m)$, choose once and for all

$$
h\in C^\infty(\mathbb R),\qquad
h(-\infty)=0,\quad h(+\infty)=1,\quad h'\in\mathscr S(\mathbb R),
\tag{4.1}
$$

and define the smooth trace core

$$
\boxed{
\mathscr T_h
=\left\{f(v)=a+m h(v)+x(v):
a,m\in\mathbb R,\ x\in\mathscr S(\mathbb R)\right\}.}
\tag{4.2}
$$

The three entries are unique:

$$
a=f(-\infty),\qquad
m=f(+\infty)-f(-\infty),\qquad
x=f-a-mh.
\tag{4.3}
$$

Here $a$ is a cut constant, $m$ is half-horizon memory, and $x$ is a
zero-endpoint radiative profile.  Start with finite angular sums; the
weighted-angular core consists of rapidly decreasing families of all the
Schwartz seminorms of $x$ and of $a,m$.

For $f,g\in\mathscr T_h$, define

$$
\Omega_{\rm tr}(f,g)
=\int_{-\infty}^{\infty}dv\,(fg'-gf').
\tag{4.4}
$$

It is finite because $f,g$ are bounded and $f',g'\in L^1$.  Write

$$
f=a+mh+x,\qquad g=b+nh+y,
\qquad
\ell_h(x):=\int_{-\infty}^{\infty}x(v)h'(v)dv.
\tag{4.5}
$$

Direct integration gives

$$
\Omega_{\rm tr}(f,g)
=\Omega_0(x,y)+an-bm+2n\ell_h(x)-2m\ell_h(y).
\tag{4.6}
$$

With the canonical shifted cut coordinate

$$
\widehat a:=a+2\ell_h(x),
\tag{4.7}
$$

this becomes

$$
\boxed{
\Omega_{\rm tr}(f,g)
=\Omega_0(x,y)+\widehat a\,n-\widehat b\,m.}
\tag{4.8}
$$

The dependence on the chosen switch $h$ is only a linear canonical change of
splitting.  The underlying function $f$ and form (4.4) do not depend on it.

The form is weakly nondegenerate.  If $\Omega_{\rm tr}(f,g)=0$ for every
compactly supported $g$, then integration by parts gives $f'=0$ as a
distribution.  Pairing the remaining constant $f=a$ with $g=h$ then gives
$a=0$.

For both polarizations and all $j\geq1$, the trace core is consequently the
unique symplectic direct sum

$$
\boxed{
\mathcal X_{\rm tr}^{\rm curv}
=\bigoplus_{P=E,B}\bigoplus_{j\geq1,m}
\left(\mathscr S_{0,jm}^P\oplus
\mathbb R\widehat a_{jm}^P\oplus
\mathbb R m_{jm}^P\right),}
\tag{4.9}
$$

where $\mathscr S_0=\mathscr S(\mathbb R)$ has zero endpoint limits and the
sum is first understood on the rapid angular core.  Equation (4.9), not a
postulated oscillator for every cut, is the declared endpoint completion.

## 5. Electric and magnetic parity memory

On the regular-bulk harmonic range, `01` gives

$$
F_{vA}^{E,jm}=-\partial_v f^E_{jm}\,\mathbb E_A^{jm},
\qquad
F_{vA}^{B,jm}=+\partial_v f^B_{jm}\,\mathbb B_A^{jm}.
\tag{5.1}
$$

Thus (2.3) has the Hodge decomposition

$$
\boxed{
\Delta_A^-
=\sum_{j\geq1,m}
\left(-m^E_{jm}\mathbb E_A^{jm}
+m^B_{jm}\mathbb B_A^{jm}\right).}
\tag{5.2}
$$

There is no harmonic one-form on $S^2$, so electric and magnetic parity are a
complete and disjoint decomposition.  Integrating the intrinsic transport
equations (4.1)--(4.2) of `01` gives the exact cut relations

$$
\boxed{
\mathcal E_f-\mathcal E_i=-D^A\Delta_A^-,
\qquad
F_{AB,f}-F_{AB,i}=2D_{[A}\Delta^-_{B]}.}
\tag{5.3}
$$

Consequently:

- electric-parity memory is the change of the $j\geq1$ normal electric cut
  field;
- magnetic-parity memory is the change of the $j\geq1$ normal magnetic cut
  field;
- neither statement creates a spherical-mean Coulomb or monopole flux.

The $j\geq1$ normal fields themselves are

$$
\mathcal E_{jm}=-\frac{\sqrt{j(j+1)}}{L^2}f^E_{jm},
\qquad
\mathcal B_{jm}=-\frac{\sqrt{j(j+1)}}{L^2}f^B_{jm}.
\tag{5.4}
$$

Their initial and final trace values are therefore fixed by $(a,m)$; they are
not further independent oscillators.  They are independent integration data
only on the unconstrained raw sheet before the regular bulk range is imposed.

## 6. Large gauge, proper gauge, and a relative frame

A residual generator-gauge transformation is

$$
\overline A_A(V,x)\longmapsto
\overline A_A(V,x)+D_A\varepsilon(x).
\tag{6.1}
$$

It shifts the two endpoint frames equally, leaves $F$ and $\Delta_A^-$
unchanged, and is not automatically proper.  Substituting a $V$-independent
$\varepsilon$ into the raw form (3.5) and using the transport constraint gives

$$
\boxed{
\Omega_-^{\rm raw}(d\varepsilon,\delta A)
=\left[\int_{S^2}dS_q\,\varepsilon\,\delta\mathcal E\right]_{i}^{f}
=\delta\int_{S^2}dS_q\,\Delta_A^-D^A\varepsilon.}
\tag{6.2}
$$

The last equality uses (5.3).  Hence electric-parity memory generates the
large-gauge direction, with the sign fixed by the Lee--Wald ordering of `01`.
Magnetic-parity memory does not generate an ordinary $U(1)$ gauge
transformation; electromagnetic duality maps it to the corresponding
statement for a dual potential.

The proper subgroup is still exactly

$$
\mathcal G_{\rm proper}
=\{d\varepsilon:\Omega(d\varepsilon,\delta)=0
\text{ for every allowed }\delta\}.
\tag{6.3}
$$

Thus a transformation charged by (6.2) is retained.  Quotienting it would
change the phase space.

A **relative frame** is a different object.  It is introduced only if the two
endpoint trivializations are allowed to vary independently.  For one electric
harmonic, let $q_i,q_f$ be the endpoint values of the potential variable
$q_E$ in `04`, and define

$$
q_c=\frac{q_f+q_i}{2},\qquad q_{\rm rel}=q_f-q_i,
\quad
\psi_c=\frac{\psi_f+\psi_i}{2},\qquad
\psi_{\rm rel}=\psi_f-\psi_i.
\tag{6.4}
$$

The electric endpoint term derived from the unfixed action is exactly

$$
\boxed{
\delta\psi_f\wedge\delta q_f
-\delta\psi_i\wedge\delta q_i
=\delta\psi_c\wedge\delta q_{\rm rel}
+\delta\psi_{\rm rel}\wedge\delta q_c.}
\tag{6.5}
$$

Equation (6.5) shows why there is no universal single ``edge oscillator.''
Which pair survives depends on whether the common frame, relative frame,
normal cut fields, or endpoint charges are fixed, retained, or reduced.  A
relative frame is a polarization coordinate with $F=0$; it is not Coulomb
flux, curvature memory, or a radiative soft limit.

## 7. Finite energy, the CPS norm, and the absence of a zero mode

For a real master profile,

$$
H_{\partial\tau}[f]=\int_{-\infty}^{\infty}|f'(v)|^2dv
=2\int_0^\infty\omega^2|c(\omega)|^2d\omega,
\tag{7.1}
$$

whereas the CPS infrared condition is

$$
\int_0^1\omega|c(\omega)|^2d\omega<\infty.
\tag{7.2}
$$

If $f$ has memory $m$, then in the Fourier convention of `03`

$$
c(\omega)=\frac{i\,m}{\sqrt{2\pi}\,\omega}+O(1)
\qquad(\omega\downarrow0),
\tag{7.3}
$$

up to the distributional $\delta(\omega)$ attached to the cut constant.
Therefore a smooth switching profile has finite energy but logarithmically
divergent CPS norm:

$$
\int_0^1\omega^2|c|^2d\omega<\infty,
\qquad
\int_\epsilon^1\omega|c|^2d\omega
\sim\frac{m^2}{2\pi}\log\frac1\epsilon.
\tag{7.4}
$$

More generally, if $c(\omega)\sim\omega^{-\alpha}$, then

$$
\text{finite energy}\iff\alpha<\frac32,
\qquad
\text{finite CPS infrared norm}\iff\alpha<1.
\tag{7.5}
$$

The interval $1\leq\alpha<3/2$ is therefore finite-energy but not CPS.  Only
the borderline trace class $\alpha=1$ has the canonical memory interpretation
without further hypotheses; for stronger singularities a pointwise affine
endpoint generally does not exist.

None of these configurations is a zero eigenfunction of

$$
H_j=-\partial_\rho^2+j(j+1)\operatorname{csch}^2\rho.
\tag{7.6}
$$

`03` proved that the center-regular zero-energy solution grows linearly at the
horizon and has infinite energy, while the bounded solution is singular at
the center.  Thus a memory profile is an endpoint/infrared configuration, not
a regular static zero mode.

## 8. Radiative $\omega\to0$ sequences are not memory vectors

Let $\chi\in C_c^\infty(1,2)$ and

$$
c_\epsilon(\omega)=\epsilon^{-1}\chi(\omega/\epsilon).
\tag{8.1}
$$

Every $\epsilon>0$ vector lies in the radiative core, has zero endpoint
memory, and contains no $\omega=0$ component.  Nevertheless

$$
\int\omega|c_\epsilon|^2d\omega=O(1),
\qquad
\int\omega^2|c_\epsilon|^2d\omega=O(\epsilon).
\tag{8.2}
$$

Thus radiative packets can concentrate at arbitrarily low frequency while
their static energy tends to zero.  This is a sequence in the CPS space, not
an additional vector at $\omega=0$.  It cannot be identified with:

- $Q_E$ or $Q_B$, which are $j=0$ spherical means;
- a trace memory $m$, whose spectral behavior is $1/\omega$ and is outside
  the CPS space;
- a relative frame, which is a potential-fiber coordinate with $F=0$.

The energy topology alone may identify distinct endpoint constants because
it assigns them zero seminorm.  The trace symplectic topology (4.4) instead
retains the constant and pairs it with memory.  There is no canonical
continuous inclusion of the entire energy completion into that trace space.

## 9. Exact intersection table

The required classification contains both linear sectors and regularity
properties.  ``Finite energy but not CPS'' and ``has an affine trace'' are
properties, not additional direct-sum factors.  With that correction, the
intersections are exact:

| object | defining datum | curvature? | belongs to CPS? | belongs to trace core? | intersection statement |
|---|---|---:|---:|---:|---|
| electric Coulomb flux | $Q_E$, $j=0$ | yes | no in this project | excluded | zero on smooth source-free $B^3$ |
| magnetic monopole/Chern flux | $Q_B$, $j=0$ | yes | no in this project | excluded | zero on the trivial smooth bundle |
| radiative sector | $x^P_{jm}\in\mathscr S_0$ | yes | yes | yes | common part is exactly $a=m=0$ |
| cut constant | $\widehat a^P_{jm}$ | yes | no | yes | no regular bulk zero eigenvector |
| half memory | $m^P_{jm}$ | yes | no for $m\ne0$ | yes | finite energy, logarithmically non-CPS |
| common large gauge | $D_A\varepsilon$ | no, $F=0$ | potential fibre only | yes if retained | meets curvature space only at zero |
| split relative frame | $q_{\rm rel}$ | no, $F=0$ | not intrinsic | only by extension | independent of common large gauge by definition |
| soft radiative family | $\{c_\epsilon\}$ | yes | every member yes | every member zero-memory | a family, not an extra intersection vector |
| generic energy-only IR | $1\leq\alpha<3/2$ | yes | no | only with extra trace hypothesis | not a linear sector and has no universal endpoint value |

Harmonic orthogonality makes $j=0$ disjoint from every $j\geq1$ entry;
Hodge uniqueness makes electric parity disjoint from magnetic parity; and the
proper-gauge quotient makes a zero-curvature gauge direction distinct from
all curvature entries.  Equations (4.3) and (4.8) prove uniqueness and finite
pairing for every vector admitted to the declared trace core.

## 10. Translation of the 2025 complete-horizon theorem

Kudler-Flam--Prabhu--Satishchandran use the complete cosmological horizon

$$
\mathcal H:\eta=\chi,
\qquad
V_{\rm glob}=\tan(\eta-\pi/2)\in(-\infty,+\infty).
\tag{10.1}
$$

The static bifurcation sphere is the finite affine cut $V_{\rm glob}=0$.
Our past half is the $V_{\rm glob}<0$ branch, up to a constant affine
normalization.  The continuation $V_{\rm glob}>0$ is the continuation of the
same null hypersurface beyond $B$ into the adjacent de Sitter region.  It is
**not** our outgoing static-patch horizon $\mathcal H^+$, which is the other
Kruskal branch $V=0$, $U>0$.

Their complete-horizon memory therefore splits as

$$
\boxed{
\Delta_A^{\rm full}
=\underbrace{A_A(0)-A_A(-\infty)}_{\Delta_A^-}
+\underbrace{A_A(+\infty)-A_A(0)}_{\Delta_A^{\rm cont}}.}
\tag{10.2}
$$

For source-free solutions generated by compact local gauge-invariant
smearings, they prove decay at $V_{\rm glob}\to\pm\infty$ and
$\Delta_A^{\rm full}=0$.  Equation (10.2) then gives

$$
\Delta_A^{\rm cont}=-\Delta_A^-,
\tag{10.3}
$$

but it does not set $A_A(0)$ or either term separately to zero.  A nonzero
half-memory ending at $B$ can therefore be an ordinary finite-cut value of a
globally zero-memory solution.  It is not by itself evidence for a new global
infrared sector.  Their theorem also does not identify the continuation term
with our center-scattering outgoing data on $\mathcal H^+$.

Their horizon symplectic form, large-gauge generator, electric radial-field
law, magnetic-parity analogue, zero-memory Fock representation, and global
state reconstruction are prior art.  What is retained here is the narrower
distinction between:

- a complete-horizon asymptotic memory;
- a static half-horizon cut difference at the bifurcation sphere;
- a weak logarithmic CPS vector without a cut trace.

## 11. Theorem T4

### Theorem 11.1 — stratified zero-mode/topology/memory classification

For source-free $U(1)$ Maxwell on the smooth static spatial ball $B^3$:

1. $Q_E=Q_B=0$, and there is no flat-holonomy sector.
2. Every curvature datum in the smooth past-half trace core has a unique
   decomposition (4.9) into radiative, cut-constant, and electric/magnetic
   memory coordinates.
3. The trace form is finite and weakly nondegenerate and has the canonical
   expression (4.8).
4. The $j\geq1$ normal electric/magnetic cut fields are the master trace
   values (5.4), not extra independent bulk oscillators.
5. Electric memory generates the charged large-gauge direction through
   (6.2); magnetic memory does not generate ordinary $U(1)$ gauge.
6. A relative frame exists only in the explicitly split potential
   polarization and carries the endpoint form (6.5).
7. There is no regular finite-energy zero eigenmode.  Soft radiative
   wave-packet families, trace memory, and generic energy-only infrared data
   are the three distinct cases described in sections 7--9.
8. The complete-horizon zero-memory theorem of arXiv:2503.19957 constrains
   (10.2), not the individual bifurcation-cut term and not the static
   incoming-to-outgoing scattering map.

#### Proof

Items 1 and 4 follow from Gauss/Bianchi, ball topology, and the action-derived
master dictionary.  Hodge decomposition on $S^2$ and the endpoint limits
give the unique coordinates (4.3), proving item 2.  Equations (4.6)--(4.8)
and the compact-test argument below (4.8) prove item 3.  The integrated
constraints prove item 5, and the unfixed-action cut term proves item 6.
The spectral theorem and zero-energy asymptotics of `03`, together with
(7.3)--(8.2), prove item 7.  Finally, the affine-coordinate identification
(10.1) and elementary endpoint splitting (10.2) prove item 8. $\square$

Status of T4: `proved` on the stratified spaces stated above.

## 12. What T4 does not prove

The following stronger trace-range statements remain `conditional`:

- every vector of the raw trace space reconstructs a smooth-center bulk
  solution;
- sharp memory/cut observables lie in the Peierls test algebra of `06`;
- an endpoint frame survives the stretched-horizon null limit.

The omitted energy-only trace and continuity statements are `false` without
extra hypotheses.  The first displayed item is `T1-trace`; the second is
`T3-max`; the last is resolved conditionally on endpoint polarization in `09`.

## 13. Regression

`../scripts/memory_sector_checks.py` checks:

- the direct integral (4.4) against the canonical decomposition (4.8);
- the constant--memory unit pairing and weak nondegeneracy controls;
- the $O(1)$ CPS norm and $O(\epsilon)$ energy of (8.1);
- logarithmic CPS divergence but finite energy for the regulated $1/\omega$
  memory profile;
- the $j=1,2,3$ harmonic coefficient form of the transport identities.

These finite tests have status `checked symbolically` or numerical regression
only.  They do not prove the topological, trace-space, or spectral theorems.

## 14. Claim boundary

| statement | status | location |
|---|---|---|
| smooth source-free $B^3$ has $Q_E=Q_B=0$ and no holonomy | `proved` | section 3; `02`, section 14 |
| trace-core decomposition and finite canonical pairing | `proved` | section 4 |
| electric/magnetic half-memory transport laws | `proved` | section 5 |
| electric memory generates half-horizon large gauge | `proved` | section 6 |
| universal independent edge oscillator on every null sheet | `false` | section 6 |
| nonzero memory is a regular $H_j$ zero mode | `false` | sections 7--8 |
| finite energy implies the CPS infrared condition | `false` | section 7 |
| a generic CPS vector has an affine endpoint trace | `false` | sections 2 and 9 |
| complete-horizon zero memory forces each static-half memory to vanish | `false` | section 10 |
| T4 on the declared stratified spaces | `proved` | Theorem 11.1 |
| universal energy-only point-trace reconstruction/symplectic equivalence | `false` | sections 2, 7, 9, and 12 |
| maximal smooth-center bulk range inside the declared trace topology | `conditional` | section 12 |
