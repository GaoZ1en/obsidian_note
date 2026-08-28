# Peierls Bracket and Causal Propagator

## 1. Direct verdict

On compactly supported gauge-invariant Maxwell field-strength observables,
modulo the annihilator of the smooth source-free static-patch phase space, the
bulk advanced-minus-retarded propagator equals the inverse of the complete
past-horizon characteristic form. In symbols,

$$
\boxed{
\{\mathcal O_{\eta_1},\mathcal O_{\eta_2}\}_{\rm Peierls}
=\{\mathcal O_{\eta_1},\mathcal O_{\eta_2}\}_{\mathcal H^-}
=\sum_{P,j,m}\int s_{\eta_1}^{P,jm}
E_j s_{\eta_2}^{P,jm}.}
\tag{1.1}
$$

Here $E_j=G_j^{\rm A}-G_j^{\rm R}$, the advanced-minus-retarded convention
declared in `T3-local`, and $s_\eta=D^\dagger\eta$ is the explicit
action-derived master source defined in section 4.  The argument in the first
version of this note moved too quickly from that adjoint formula to test-space
exactness.  Calculation `11` now supplies the missing compact-source lift,
causal exact sequence, compact-support cohomology audit, commuting Lorenz
diagram, and gauge-independence lemma.  With `11` included, `T3-local` is
`proved` on the stated observable class.

This theorem does not assign a Peierls inverse to arbitrary endpoint-memory
functionals outside the CPS topology. Calculation `08` classifies those
functionals on a raw trace space, but the sharp-memory Peierls equality
`T3-sharp` remains `conditional` because they are not continuous observables of
the compact local test algebra used here.

## 2. Master retarded, advanced, and causal kernels

For $j\geq1$, let

$$
P_j:=\partial_\tau^2+H_j,
\qquad
H_j=-\partial_\rho^2+\frac{j(j+1)}{\sinh^2\rho},
\tag{2.1}
$$

with the Friedrichs domain proved in `03`. Use the real delta-normalized
regular modes $\phi_{\omega j}$,

$$
H_j\phi_{\omega j}=\omega^2\phi_{\omega j},
\qquad
\int_0^\infty d\rho\,
\phi_{\omega j}(\rho)\phi_{\omega'j}(\rho)
=\delta(\omega-\omega').
\tag{2.2}
$$

Put $\Delta\tau=\tau-\tau'$. The retarded and advanced kernels are

$$
\boxed{
G_j^{\rm R}(x,x')
=\theta(\Delta\tau)\int_0^\infty d\omega\,
\frac{\sin(\omega\Delta\tau)}{\omega}
\phi_{\omega j}(\rho)\phi_{\omega j}(\rho'),}
\tag{2.3}
$$

$$
\boxed{
G_j^{\rm A}(x,x')
=-\theta(-\Delta\tau)\int_0^\infty d\omega\,
\frac{\sin(\omega\Delta\tau)}{\omega}
\phi_{\omega j}(\rho)\phi_{\omega j}(\rho').}
\tag{2.4}
$$

They satisfy $P_jG_j^{\rm R/A}=\delta(\tau-\tau')\delta(\rho-\rho')$
distributionally with the displayed support. Therefore

$$
\boxed{
E_j(x,x'):=G_j^{\rm A}(x,x')-G_j^{\rm R}(x,x')
=-\int_0^\infty d\omega\,
\frac{\sin(\omega\Delta\tau)}{\omega}
\phi_{\omega j}(\rho)\phi_{\omega j}(\rho').}
\tag{2.5}
$$

The normalization is fixed by

$$
P_jE_j=E_jP_j=0,
\qquad
E_j(\tau',\rho;\tau',\rho')=0,
\qquad
\partial_\tau E_j\big|_{\tau=\tau'}
=-\delta(\rho-\rho').
\tag{2.6}
$$

The last minus sign is essential. With the convention
$d\mathcal O(\delta\Psi)=\Omega(X_{\mathcal O},\delta\Psi)$ of `05`, it makes
$X_{\mathcal O_s}=E_js$.

The potential in (2.1) is local and nonnegative. The standard finite-speed
energy estimate on a half-line, with the Friedrichs/regular center condition,
gives

$$
\operatorname{supp}(G_j^{\rm R/A}s)
\subset J^{\pm}(\operatorname{supp}s).
\tag{2.7}
$$

Equivalently, the kernel vanishes for
$|\tau-\tau'|<|\rho-\rho'|$. The spectral representation (2.5) is not being
used as a pointwise convergence argument for this support theorem; finite
propagation proves the distributional statement.

## 3. Reduced test-source space and infrared behavior

Let $\mathscr D_{\rm red}$ consist of real families

$$
s=\{s_{jm}^P(\tau,\rho)\}_{P=E,B;j\geq1,m}
\tag{3.1}
$$

that are smooth, compactly supported in the static patch, smooth at the
center in their tensor-harmonic reconstruction, and rapidly decreasing in
angular momentum. Finite angular sums form a dense core.

For the unit-incoming delta-normalized mode $g_{\omega j}$ of `03`, define

$$
\widehat s_{jm}^P(\omega)
:=\int_{\mathbb R}d\tau\int_0^\infty d\rho\,
e^{i\omega\tau}\overline{g_{\omega j}(\rho)}
s_{jm}^P(\tau,\rho).
\tag{3.2}
$$

Equation (2.5) gives the positive-frequency coefficient of $E_js$ as

$$
\boxed{
c_{s,jm}^P(\omega)=\frac{\widehat s_{jm}^P(\omega)}{2i\omega}.}
\tag{3.3}
$$

The Darboux formula of `03` implies, uniformly for $\rho$ in compact sets,

$$
g_{\omega j}(\rho)=O(\omega)
\qquad(\omega\to0).
\tag{3.4}
$$

Thus $\widehat s(\omega)=O(\omega)$ and $c_s(\omega)=O(1)$ at zero. Repeated
integration by parts in $\tau$ and application of powers of the regular
half-line operator give rapid high-frequency decrease. Consequently

$$
\sum_{P,j,m}\int_0^\infty
(\omega+\omega^2)|c_{s,jm}^P(\omega)|^2d\omega<\infty,
\tag{3.5}
$$

so $E_js$ lies in the `T1-log/T2-log` CPS space. This is the function-space reason that
the local-observable Peierls vector has a valid complete horizon restriction;
division by $\omega$ in (3.3) is not performed on an arbitrary finite-energy
endpoint datum.

## 4. Gauge-invariant Maxwell smearings and the adjoint dictionary

Let $\eta\in\Omega_c^2(M)$ be a real smooth compactly supported two-form and
define

$$
\boxed{
\mathcal O_\eta(F):=\int_M F\wedge *\eta.}
\tag{4.1}
$$

This is gauge invariant because it depends only on $F$. For an explicit
component dictionary, use the conformal metric
$d\widehat s^2=-d\tau^2+d\rho^2+a^2d\Omega_2^2$, $a=\sinh\rho$, and write

$$
\mathcal O_\eta(F)
=\frac12\int d\tau\,d\rho\,d\Omega\,
J^{\mu\nu}F_{\mu\nu},
\qquad
J^{\mu\nu}:=a^2\eta_{\widehat g}^{\mu\nu}.
\tag{4.2}
$$

Maxwell conformal invariance makes (4.2) equal to the physical-metric pairing.
In a real harmonic basis define

$$
J_{\tau\rho}^{jm}:=\int d\Omega\,Y_{jm}J^{\tau\rho},
\tag{4.3}
$$

$$
J_{a,E}^{jm}:=\int d\Omega\,J^{aA}\mathbb E_A^{jm},
\qquad
J_{a,B}^{jm}:=\int d\Omega\,J^{aA}\mathbb B_A^{jm},
\qquad a=\tau,\rho,
\tag{4.4}
$$

and

$$
J_{(2),B}^{jm}:=\frac12\int d\Omega\,
J^{AB}Y_{jm}\epsilon_{AB}^\gamma.
\tag{4.5}
$$

Substituting the action-derived field-strength dictionary (8.2)--(8.3) of
`02` into (4.2) and integrating by parts only against the compact test field
gives

$$
\mathcal O_\eta(F)
=\sum_{P,j,m}\int d\tau\,d\rho\,
s_\eta^{P,jm}\Psi_{jm}^P,
\tag{4.6}
$$

where

$$
\boxed{
s_\eta^{E,jm}
=-\frac{\sqrt{\lambda_j}}{a^2}J_{\tau\rho}^{jm}
+\partial_\rho J_{\tau,E}^{jm}
+\partial_\tau J_{\rho,E}^{jm},}
\tag{4.7}
$$

$$
\boxed{
s_\eta^{B,jm}
=-\partial_\tau J_{\tau,B}^{jm}
-\partial_\rho J_{\rho,B}^{jm}
-\sqrt{\lambda_j}J_{(2),B}^{jm}.}
\tag{4.8}
$$

Equations (4.7)--(4.8) define the formal adjoint $D^\dagger$ of the Maxwell
master-to-field-strength map $D$:

$$
D^\dagger\eta:=\{s_\eta^{E,jm},s_\eta^{B,jm}\}.
\tag{4.9}
$$

Every compact smooth reduced $j\geq1$ source can be represented by such a
field-strength smearing, but this requires the center jets and angular
estimates stated in `11`, Lemma 3.1.  A convenient electric representative
uses $J_{\tau\rho}$; the magnetic representative is its Hodge-dual lift.  The
$1/\sqrt{\lambda_j}$ lift preserves the rapid-angular core but does not give a
fixed-$s$ same-order theorem.

The on-shell annihilator is larger than the pointwise kernel of $D^\dagger$.
If $D^\dagger\eta=P h$ for compact $h$, then (4.6) also vanishes on every
homogeneous solution. Define

$$
\mathcal N_F
:=\{\eta:\mathcal O_\eta(F)=0
\text{ for every allowed source-free }F\}
=\ker\!\left[\left(\bigoplus E_j\right)D^\dagger\right].
\tag{4.10}
$$

The equality is the Green-hyperbolic exactness statement for the master
operators.  It is proved, rather than assumed, in `11`, equations
(4.2)--(4.5).  That calculation also verifies that the relevant
$H_c^1,H_c^2,H_c^3$ groups vanish on $M\simeq\mathbb R^4$ and explains why
the absent $j=0$ sector is a fixed-sector annihilator rather than a hidden
topological kernel. Therefore the quotient

$$
\boxed{
\mathscr T_F:=\Omega_c^2(M)_{\mathbb R}/\mathcal N_F}
\tag{4.11}
$$

is exactly the local gauge-invariant observable test space for the radiative
smooth-ball phase space. The $j=0$ part belongs to the annihilator because the
corresponding homogeneous smooth source-free flux sector is absent; it is not
reintroduced as a hidden Coulomb oscillator.

## 5. Maxwell field-strength causal propagator

Let $D^P_{jm}$ denote the differential maps in (8.2)--(8.3) of `02`. Define
the gauge-invariant field-strength causal propagator by

$$
\boxed{
\mathbb E_F
:=D\left(\bigoplus_{P,j,m}E_j\right)D^\dagger.}
\tag{5.1}
$$

For $[\eta]\in\mathscr T_F$, $\mathbb E_F\eta$ is a smooth spacelike-compact
source-free Maxwell field strength. It is independent of the representative
of $[\eta]$ and has causal support because $D$ is local and does not enlarge
support.

This lift agrees with the covariant Maxwell construction. Indeed, varying
(4.1) with respect to the potential gives

$$
\delta\mathcal O_\eta
=\int_M\delta A\wedge d*\eta,
\tag{5.2}
$$

so the source three-form is closed. In Lorenz gauge the Hodge wave operator on
one-forms is normally hyperbolic on the globally hyperbolic static patch and
has unique retarded/advanced Green operators. Taking $d$ of their
advanced-minus-retarded response gives a gauge-invariant Maxwell field
strength. Its electric and magnetic master projections solve (2.1) with
sources (4.7)--(4.8), have the same causal support, and obey the same regular
center condition. Uniqueness of the retarded/advanced master problems gives
exactly (5.1).

The full commuting diagram is proved in `11`, section 6.  A change of
covariant gauge changes the potential response by an exact one-form on
$\mathbb R\times B^3$; applying $d$ removes it. Hence (5.1) is the covariant
Maxwell advanced-minus-retarded propagator on $\mathscr T_F$, not a
gauge-fixed potential bracket presented as an observable.

The Peierls convention used here is

$$
\{\mathcal O_1,\mathcal O_2\}_{\rm P}
:=\delta_1^{\rm R}\mathcal O_2-
\delta_1^{\rm A}\mathcal O_2.
\tag{5.3}
$$

Antisymmetry of $E_j=G_j^{\rm A}-G_j^{\rm R}$ then yields

$$
\boxed{
\{\mathcal O_{\eta_1},\mathcal O_{\eta_2}\}_{\rm P}
=\sum_{P,j,m}\int d\tau\,d\rho\,
s_{\eta_1}^{P,jm}\,E_j s_{\eta_2}^{P,jm}.}
\tag{5.4}
$$

## 6. Explicit inverse of the characteristic form

For one profile the past-horizon form is

$$
\Omega_-(f_1,f_2)
=\int_{\mathbb R}dv\,
(f_1\partial_vf_2-f_2\partial_vf_1).
\tag{6.1}
$$

For a compact profile smearing
$\ell_\kappa(f)=\int\kappa f\,dv$, integration by parts gives

$$
\Omega_-(X_\kappa,\delta f)
=-2\int dv\,(\partial_vX_\kappa)\delta f.
\tag{6.2}
$$

On the zero-endpoint phase space the admissible compact smearings obey
$\int\kappa\,dv=0$. The inverse kernel is then

$$
\boxed{
E_{\mathcal H}(v,v')=-\frac14\operatorname{sgn}(v-v'),
\qquad
-2\partial_vE_{\mathcal H}(v,v')=\delta(v-v').}
\tag{6.3}
$$

If $\int\kappa\neq0$, (6.3) produces nonzero endpoint constants and leaves the
declared CPS space. This is the characteristic manifestation of the
$\omega=0$/memory boundary, not a reason to ignore the missing endpoint datum.

For a bulk source $s$, let

$$
x_s:=R_-Es.
\tag{6.4}
$$

Its positive-frequency horizon coefficient is precisely (3.3). `T2-log` gives, for
every homogeneous variation $\delta\Psi$,

$$
d\mathcal O_s(\delta\Psi)
=\Omega_{\rm bulk}(Es,\delta\Psi)
=\Omega_-(x_s,R_-\delta\Psi).
\tag{6.5}
$$

Thus $x_s$ is the Hamiltonian vector obtained by inverting the complete
characteristic form. In particular,

$$
\begin{aligned}
\{\mathcal O_{s_1},\mathcal O_{s_2}\}_{\mathcal H^-}
&=\Omega_-(x_{s_1},x_{s_2})\\
&=4\sum_{P,j,m}\int_0^\infty d\omega\,\omega\,
\operatorname{Im}(\overline{c_{s_1}}c_{s_2})\\
&=\sum_{P,j,m}\int_0^\infty\frac{d\omega}{\omega}\,
\operatorname{Im}
(\overline{\widehat s_1(\omega)}\widehat s_2(\omega)).
\end{aligned}
\tag{6.6}
$$

Direct insertion of (2.5) into the right-hand side of (5.4) gives the last
line of (6.6), with the same sign. Hence

$$
\boxed{
\Omega_-^\sharp\,d(\mathcal O_\eta\circ R_-^{-1})
=R_-\mathbb E_F\eta
\quad\text{for }[\eta]\in\mathscr T_F,}
\tag{6.7}
$$

where $\Omega_-^\sharp\ell$ is defined by
$\Omega_-(\Omega_-^\sharp\ell,\delta f)=\ell(\delta f)$. Equation (6.7)
denotes equality of the induced observable brackets, not a pointwise inverse
on forbidden zero modes.

## 7. Causality and spacelike vanishing

If $\eta_1$ and $\eta_2$ have causally disjoint compact supports, (2.7) and
locality of $D,D^\dagger$ imply

$$
\boxed{
\{\mathcal O_{\eta_1},\mathcal O_{\eta_2}\}_{\rm P}=0.}
\tag{7.1}
$$

In optical coordinates, the sufficient radial condition

$$
|\tau-\tau'|<|\rho-\rho'|
\tag{7.2}
$$

for every pair of points in the two supports already ensures (7.1); angular
separation can only enlarge the spacelike region. This is a distributional
finite-propagation theorem. The numerical samples in section 9 are regression
checks, not its proof.

## 8. Theorem `T3-local`

**Theorem 8.1 (`T3-local`).** On the real compact field-strength test quotient
$\mathscr T_F$ of (4.11), the Maxwell Peierls bracket defined by the covariant
advanced-minus-retarded response is equal to the inverse of the
constraint/corner-complete past-horizon symplectic form. The common bracket is
(5.4), equivalently (6.6). It is gauge independent and vanishes for causally
disjoint supports.

**Proof.** Sections 2--3 construct the unique master causal propagators and
show that source-induced solutions lie in the `T1-log/T2-log` space. Section
4 derives the Maxwell/master adjoint map from the field-strength observable.
Calculation `11` proves surjectivity onto compact reduced sources, causal
exactness, absence of the relevant topological kernel, equality with the
covariant Maxwell response, and gauge independence. `T2-log` then gives
(6.5); the explicit spectral normalization in (6.6) proves equality of both
inverses as distributions on the same test quotient. Finite propagation
proves (7.1). $\square$

## 9. Regression

`../scripts/peierls_kernel_checks.py` records fixed numerical thresholds for
$j=1,2,3$ and checks:

1. the master eigenfunction residual used in (2.5);
2. the smeared equal-time jump in (2.6);
3. the Peierls spectral integral against (6.6);
4. the characteristic sign-kernel inverse (6.3) on zero-integral smearings;
5. vanishing brackets for separated spacelike source packets, with a timelike
   nonzero control.

The passing run gives:

| check | observed error | threshold |
|---|---:|---:|
| master eigenfunction residual | $1.79\times10^{-13}$ | $2\times10^{-11}$ |
| smeared equal-time jump | $1.53\times10^{-8}$ | $3\times10^{-4}$ |
| Peierls/characteristic spectral equality | $0$ at printed precision | $2\times10^{-12}$ |
| horizon inverse differential residual | $1.46\times10^{-5}$ | $2\times10^{-4}$ |
| horizon inverse bracket | $1.59\times10^{-4}$ | $3\times10^{-4}$ |
| zero-mean horizon smearing | $6.91\times10^{-17}$ | $2\times10^{-12}$ |
| spacelike bracket | $3.95\times10^{-9}$ | $5\times10^{-5}$ |
| high-frequency cutoff tail | $5.82\times10^{-13}$ | $2\times10^{-6}$ |

The timelike control has minimum magnitude $1.78\times10^{-1}$ against the
required $10^{-4}$.

The Maxwell/Bianchi differential lift is independently exact-checked for an
arbitrary on-shell master in `maxwell_master_reduction.wl`. The numerical
threshold statements are recorded only as finite-run evidence; Theorem 8.1
rests on the analytic support and uniqueness arguments above.

## 10. Boundary of the result

`T3-local` does not cover:

- noncompact or sharp endpoint observables;
- a nonzero-integral profile smearing that creates memory/frame data outside
  the CPS completion;
- singular electric charges, magnetic bundles, or a center puncture;
- a potential algebra before the proper-gauge quotient;
- the Bunch--Davies state or its KMS property.

The first three boundaries are audited in `08`; state selection may now begin
in `07` because the B1 chain is closed.
