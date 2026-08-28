# Maxwell Test Complex and the Local Peierls Lemma

## 1. Direct verdict

The missing test-complex step in `06` can be closed for compact local
field-strength observables in the fixed theory used by this project:

$$
M=\mathbb R_\tau\times B^3,
\qquad Q_E=Q_B=0,
\qquad \text{trivial }U(1)\text{ bundle}.
\tag{1.1}
$$

For this scope, compact reduced master sources have compact Maxwell
two-form representatives, the master causal exact sequence identifies the
on-shell annihilator, the relevant compact-support cohomology has no kernel,
and the Lorenz-gauge field-strength response commutes with the two master
Green operators.  Gauge changes alter the potential response only by an exact
one-form and therefore do not change the field strength.

Accordingly `T3-local` is `proved` after this lemma is included.  The result
does not cover sharp endpoint/memory functionals, a potential algebra before
proper-gauge reduction, nontrivial bundles, charged centers, or the affine
endpoint completion; `T3-sharp` remains `conditional`.

## 2. Geometry and test spaces

The open static patch is globally hyperbolic.  Constant-$\tau$ slices are
Cauchy surfaces diffeomorphic to the open ball; the horizon lies at
$\rho=\infty$ and is not a timelike boundary of the local Green problem.
The center $\rho=0$ is a regular interior point in Cartesian coordinates.

Let $\mathscr D_{\rm red}$ be the real finite-angular-sum core of compact
master sources, completed only afterward by rapid angular decay.  In a fixed
$j,m$ sector its center jets are those of a smooth Cartesian tensor-harmonic
source; equivalently the regular radial branch is selected and no
$\rho^{-j}$ jet is admitted.  This condition is preserved by $P_j$ and by its
retarded/advanced Green operators.  It is stronger and more precise than
merely saying that a radial coefficient is smooth on the closed half-line.

Let

$$
\mathscr D_F:=\Omega_c^2(M)_{\mathbb R}
\tag{2.1}
$$

with the usual LF topology.  Angular Sobolev estimates below are first made
on finite sums and then extended to the rapid-angular core; no same-order
fixed-$s$ assertion is hidden in that passage.

## 3. Compact Maxwell representatives of reduced sources

The master-to-curvature map $D$ is (8.2)--(8.3) of `02`, and its formal
adjoint $D^\dagger$ is (4.7)--(4.8) of `06`.

### Lemma 3.1 — surjectivity onto compact reduced sources

For every $s=(s^E,s^B)\in\mathscr D_{\rm red}$ there is an
$\eta\in\mathscr D_F$ such that

$$
D^\dagger\eta=s.
\tag{3.1}
$$

The lift is continuous on the finite-angular core and on the
rapid-angular Fréchet topology.

#### Proof

For one electric harmonic choose the density coefficient used in `06` by

$$
J^{\tau\rho}_{jm}=-\frac{a^2}{\sqrt{\lambda_j}}s^E_{jm},
\qquad
J^{aA}=J^{AB}=0.
\tag{3.2}
$$

Equation (4.7) of `06` gives $D_E^\dagger\eta=s^E$.  Written as a two-form,
the factor $a^2$ in (3.2) converts the contravariant coefficient to the polar
density used in `06`.  Smoothness at the center is the separate Cartesian
statement proved in Lemma 3.2 below.  The support is the support of $s^E$.

For the magnetic source use electromagnetic duality: apply the electric lift
to $s^B$ and take its four-dimensional Hodge dual, with the sign fixed by
$*F_E[\Psi]=F_B[-\Psi]$ in (13.1) of `02`.  This gives
$D_B^\dagger\eta=s^B$ with the same support and center regularity.  Adding the
two representatives proves (3.1).

The lift contains $1/\sqrt{\lambda_j}$, while $D^\dagger$ contains at most
one angular derivative.  Hence rapid angular decay is preserved.  At fixed
Sobolev order the maps shift one angular derivative; the precise bookkeeping
is the same as section 8 of `10`, not a same-order isomorphism. $\square$

### Lemma 3.2 — center-Cartesian smoothness of the lift

Let one regular reduced source have the center jet

$$
s_{jm}(\tau,\rho)
=\rho^{j+1}\widetilde s_{jm}(\tau,\rho^2)
\tag{3.3}
$$

near $\rho=0$, with $\widetilde s_{jm}$ smooth.  Then the electric lift (3.2)
defines a smooth compact Maxwell two-form at the Cartesian center.

#### Proof

The density convention in `06` is

$$
J^{\mu\nu}=a^2\eta_{\widehat g}^{\mu\nu},
\qquad a=\sinh\rho.
\tag{3.4}
$$

Thus (3.2) gives

$$
\eta^{\tau\rho}
=-\frac{s_{jm}}{\sqrt{\lambda_j}}Y_{jm},
\qquad
\eta_{\tau\rho}
=\frac{s_{jm}}{\sqrt{\lambda_j}}Y_{jm}.
\tag{3.5}
$$

No singular $a^{-2}$ remains.  The remaining issue is that $d\rho$ is polar,
not Cartesian.  Let

$$
H_{jm}(x):=\rho^jY_{jm}(x/\rho)
\tag{3.6}
$$

be the solid harmonic polynomial and use
$d\rho=\rho^{-1}x_i dx^i$.  Equations (3.3) and (3.6) give

$$
s_{jm}Y_{jm}\,d\rho
=\widetilde s_{jm}(\tau,|x|^2)
H_{jm}(x)x_i dx^i.
\tag{3.7}
$$

The right-hand side is a smooth Cartesian one-form.  Hence
$\eta=(s_{jm}Y_{jm}/\sqrt{\lambda_j})d\tau\wedge d\rho$ is smooth.  The
finite angular sum is smooth term by term, and the rapid-angular completion
follows from its declared tensor-harmonic seminorms.  Compact support is
unchanged by (3.2).  The magnetic lift is the smooth four-dimensional Hodge
dual of the electric lift. $\square$

The power and parity in (3.3), rather than the statement ``$s$ is smooth on
the closed half-line'', are the center hypothesis used by Lemma 3.1.

## 4. Master causal exactness and the annihilator

For each $j\geq1$ let

$$
P_j=\partial_\tau^2+H_j,
\qquad E_j=G_j^{\rm A}-G_j^{\rm R}.
\tag{4.1}
$$

The regular-center retarded and advanced problems are unique.  Their causal
sequence on the test core is exact:

$$
\boxed{
\ker(E_j:\mathscr D_{\rm red}\to\mathrm{Sol}_{\rm sc})
=P_j\mathscr D_{\rm red}.}
\tag{4.2}
$$

Indeed, $P_jh$ is killed by $E_j$.  Conversely, if $E_js=0$, then
$G_j^{\rm R}s=G_j^{\rm A}s=:h$.  The common solution is supported in

$$
J^+(\operatorname{supp}s)\cap J^-(\operatorname{supp}s),
\tag{4.3}
$$

which is compact by global hyperbolicity, and $P_jh=s$.  Regular-center and
rapid-angular properties follow from the Green operators.  This proves
(4.2) without appealing to a formal mode quotient.

Define

$$
\mathcal N_F
:=\{\eta\in\mathscr D_F:
\langle D^\dagger\eta,\Psi\rangle=0
\text{ for every smooth source-free master }\Psi\}.
\tag{4.4}
$$

Green's identity and (4.2) give the exact characterization

$$
\boxed{
\mathcal N_F
=\ker\!\left[\left(\bigoplus_{P,j,m}E_j\right)D^\dagger\right].}
\tag{4.5}
$$

Equivalently, in every $j\geq1$ channel,
$D^\dagger\eta=P h$ for a compact regular $h$.  The pointwise kernel of
$D^\dagger$ is included by taking $h=0$.  Equation (4.5), not the pointwise
kernel alone, is the correct on-shell annihilator.

## 5. Compact-support cohomology and the excluded zero sector

The manifold in (1.1) is diffeomorphic to $\mathbb R^4$.  Therefore

$$
H_c^q(M)=0\quad(0<q<4),
\qquad H_c^4(M)\cong\mathbb R.
\tag{5.1}
$$

The Maxwell test complex uses compact degrees one, two, and three, so (5.1)
leaves no compact-support cohomological kernel.  Likewise
$H^1(B^3)=H^2(B^3)=0$ removes flat holonomy and magnetic bundle tangents in
the smooth bulk theory.

The $j=0$ electric and magnetic smearings lie in $\mathcal N_F$ because the
allowed homogeneous phase space has $Q_E=Q_B=0$.  This is a fixed-sector
annihilator, not an unrecognized compact-support cohomology class.  A puncture,
charge, or change of Chern sector defines a different test complex and is not
covered by this lemma.

## 6. Lorenz Green operator and the commuting diagram

For $\eta\in\mathscr D_F$, integration by parts gives the compact potential
source

$$
j_\eta:=\delta\eta,
\qquad \delta j_\eta=0,
\tag{6.1}
$$

or equivalently the closed three-form $*j_\eta=d*\eta$.  Let

$$
\Box_1=d\delta+\delta d
\tag{6.2}
$$

be the normally hyperbolic Hodge wave operator on one-forms, with causal
propagator $E_1$.  Green operators commute with $d$ and $\delta$ on compact
tests.  Thus

$$
\delta E_1j_\eta=E_0\delta j_\eta=0,
\qquad
F_\eta^{\rm cov}:=dE_1j_\eta
\tag{6.3}
$$

is a gauge-invariant spacelike-compact source-free Maxwell field.

The following diagram commutes:

$$
\begin{array}{ccc}
\Omega_c^2(M) & \xrightarrow{\quad D^\dagger\quad} &
\displaystyle\bigoplus_{P,j,m}\mathscr D_{\rm red}\\[2mm]
\Big\downarrow{\delta} &&
\Big\downarrow{\oplus E_j}\\[2mm]
\Omega_c^1(M) & \xrightarrow{\quad E_1\quad} &
\Omega_{\rm sc}^1(M)\\[2mm]
&&\Big\downarrow{d}\\[-1mm]
&&\Omega_{\rm sc}^2(M),
\end{array}
\qquad
dE_1\delta\eta
=D\left(\bigoplus E_j\right)D^\dagger\eta.
\tag{6.4}
$$

To prove the last equality, project both sides onto the electric and magnetic
masters.  The adjoint calculation of `06` supplies the same compact sources;
both sides have the same causal support and regular-center condition.
Uniqueness of each retarded/advanced master problem then identifies them.
This verifies the static-patch and center hypotheses that a general
CPS/Peierls theorem would otherwise leave implicit.

## 7. Gauge-response uniqueness

The Lorenz representative in (6.3) is a proof device.  The following lemma
proves gauge independence without assuming curvature equality in advance.

### Lemma 7.1 — `T3-gauge-uniq`

Let $j\in\Omega_c^1(M)$ obey $\delta j=0$.  Let $G_1^\pm$ be the unique
retarded/advanced Green operators of
$\Box_1=d\delta+\delta d$, and put

$$
A_1^\pm:=G_1^\pm j.
\tag{7.1}
$$

For every constant $\xi>0$ for which

$$
P_\xi:=\delta d+\xi^{-1}d\delta
\tag{7.2}
$$

has unique retarded/advanced Green operators $G_\xi^\pm$ on compact smooth
one-form sources with the standard causal support, one has

$$
\boxed{G_\xi^\pm j=G_1^\pm j.}
\tag{7.3}
$$

Consequently all these gauge-fixed causal responses have the same curvature.

#### Proof

The Hodge Green operators commute with $\delta$ on compact tests, so

$$
\delta A_1^\pm
=\delta G_1^\pm j
=G_0^\pm\delta j=0.
\tag{7.4}
$$

Since $\Box_1A_1^\pm=j$, equation (7.4) gives

$$
P_\xi A_1^\pm
=\delta dA_1^\pm+\xi^{-1}d\delta A_1^\pm
=j.
\tag{7.5}
$$

The support of $A_1^\pm$ is retarded/advanced.  Thus $A_1^\pm$ is a causal
solution of the $P_\xi$ problem with source $j$.  Uniqueness in the stated
Green class gives (7.3). $\square$

The hypotheses used here are: the globally hyperbolic open static patch with
no physical timelike boundary; compact smooth co-closed source; constant
$\xi>0$ in the standard covariant-gauge Green-hyperbolic class; identical
causal support convention; and no extra boundary condition at the horizon.
The last condition matters because the horizon is not part of the local
Green problem.  More generally, if a formulation has uniqueness only modulo
residual gauge, the same proof gives
$G_\xi^\pm j-G_1^\pm j=d\chi^\pm$, which is already enough after applying
$d$.  In the present unique causal class the stronger equality (7.3) holds.

Applying the lemma to $j_\eta=\delta\eta$ proves that
$F_\eta^{\rm cov}=dE_1j_\eta$ and its Peierls pairing are independent of
$\xi$ and of the potential representative.

## 8. Local Peierls theorem

Let

$$
\mathscr T_F:=\Omega_c^2(M)_{\mathbb R}/\mathcal N_F.
\tag{8.1}
$$

### Theorem 8.1 — `T3-local`

On $\mathscr T_F$, the covariant Maxwell field-strength causal propagator is

$$
\mathbb E_F
=D\left(\bigoplus_{P,j,m}E_j\right)D^\dagger,
\tag{8.2}
$$

and its Peierls bracket equals the inverse of the logarithmic characteristic
form `T2-log` on the source-induced horizon vectors.

#### Proof

Lemma 3.1 gives all compact reduced sources a Maxwell representative.
Equations (4.2)--(4.5) identify exactly the quotient on which (8.2) is
nondegenerate.  Section 5 removes topological kernels, and (6.4) together
with Lemma 7.1 identifies the lift with the covariant, gauge-independent
Maxwell response.
Finally, compact sources produce CPS vectors by section 3 of `06`, so
`T2-log` transports the bulk Green identity to the characteristic inverse.
The spectral normalization and sign are equations (5.4)--(6.7) of `06`.
$\square$

The hypotheses match the structural requirements emphasized by
[Khavkine (2014)](https://arxiv.org/abs/1402.1282)
(hyperbolizability plus cohomological exactness) and the boundary discipline
of [Harlow--Wu (2019)](https://arxiv.org/abs/1906.08616).  Here they are
verified directly: the local Green problem has
no physical timelike boundary, while the asymptotic horizon comparison uses
the already-fixed Lee--Wald representative and endpoint policy of `04`.

## 9. Exact boundary of the lemma

| statement | status | boundary |
|---|---|---|
| compact reduced sources have compact Maxwell two-form representatives | `proved` | Lemma 3.1; regular center and rapid angular core |
| center-Cartesian smoothness of the compact lift | `proved` | Lemma 3.2 and the solid-harmonic identity (3.7) |
| master on-shell annihilator is (4.5) | `proved` | causal exactness (4.2) |
| compact-support/topological kernel is absent | `proved` | trivial bundle on $M\simeq\mathbb R^4$ |
| Lorenz/master diagram commutes | `proved` | compact tests, unique causal solutions |
| `T3-gauge-uniq` | `proved` | Lemma 7.1; co-closed compact sources and unique causal Green problems |
| field-strength response is gauge independent | `proved` | apply $d$ after Lemma 7.1 |
| `T3-local` | `proved` | compact field-strength quotient (8.1) |
| `T3-sharp` for endpoint/memory observables | `conditional` | not compact, not continuous in the log CPS topology |

No script can prove the exact sequence or cohomology statement.  The existing
`peierls_kernel_checks.py` and `maxwell_master_reduction.wl` remain only finite
regressions for the kernel normalization and differential lift.
