# Regulated Horizon Phase Space and Conditional Finite-Action Implication

## Status

This note states the general implication that is supported by the project
formalism. It is conditional on a declared compatible family of regulated
phase spaces: H0--H6 are hypotheses, not consequences of Kruskal smoothness.
The fixed-embedding proposition below does not construct such a phase space
for arbitrary data. A separate compact moving branch now realizes the moving
analogues H0$_X$--H6$_X$ on a finite-dimensional nonzero Kruskal-smooth BTZ
family. Neither result proves that every Kruskal-smooth perturbation belongs
to an allowed phase space. The note also does not construct a crossed-product
algebra.

## 1. Finite-cutoff boundary data

Let $M_\epsilon$ have asymptotic timelike boundary $\Gamma_\infty$, inner
timelike wall $\mathcal H_\epsilon$, and spacelike endpoints
$\Sigma_i,\Sigma_f$. Every non-orthogonal intersection is included as a joint.
Normals always point out of the retained region. On a timelike component
$\Gamma_a$, define

$$
\Pi_a^{ij}:=\sqrt{-\gamma_a}\,\mathcal T_a^{ij},
\qquad
\mathcal B_a:=-\frac12\Pi_a^{ij}\delta\gamma^{(a)}_{ij}.
\tag{1.1}
$$

The inherited Einstein--GHY/Harlow--Wu identity gives

$$
\omega_a^{\rm pullback}
=\mathrm d(\delta C_a)
-\frac12\delta\Pi_a^{ij}\wedge\delta\gamma^{(a)}_{ij}.
\tag{1.2}
$$

Thus radial gauge and zero flux are different statements. Radial decay can
make $C_a$ vanish; zero flux additionally requires the Brown--York canonical
pair in (1.2) to restrict to a Lagrangian subspace.

## 2. Regulated phase-space hypotheses

For each finite $\epsilon$, let $\mathcal P_\epsilon$ be a pre-phase space of
solutions and allowed tangent variations satisfying the following conditions.

### H0. Common topology and differentiable regulator family

There is a limiting solution space $\mathcal P_0$, a common locally convex
topology on the fields and boundary data used below, and comparison maps

$$
\iota_\epsilon:\mathcal P_0\supset\mathcal U
\longrightarrow\mathcal P_\epsilon
\tag{2.0}
$$

on a common neighborhood $\mathcal U$. The renormalized outer Hamiltonian,
area functional, regulated symplectic form, and every bulk or surface
functional in the descent are twice differentiable along the selected
one-parameter families. Their first and second variations converge under
$\iota_\epsilon$ in the same topology. This includes a dominating bound that
licenses all uses of Stokes' theorem, differentiation under the integral, and
interchange of the $\epsilon\to0$ and anchor limits. Pointwise mode
convergence alone is insufficient.

### H1. Differentiable boundary polarization

There is a boundary density $w_\epsilon$ and a Lagrangian submanifold
$\mathscr L_\epsilon$ of the Brown--York boundary phase space such that

$$
\left.(\mathcal B_\epsilon+\delta w_\epsilon)\right|_{\mathscr L_\epsilon}
=\mathrm d c_\epsilon,
\qquad
\left.\delta\Pi_\epsilon^{ij}\wedge
\delta\gamma^{(\epsilon)}_{ij}\right|_{\mathscr L_\epsilon}=0.
\tag{2.1}
$$

Dirichlet, Neumann, and integrable mixed conditions are special cases. Unlike
strict Dirichlet data, a mixed polarization can allow the horizon length to
vary. Equation (2.1), rather than radial gauge alone, is the zero-flux input.

The scalar $w_\epsilon$ cannot turn a non-Lagrangian tangent block into a
Lagrangian one: $\delta(\mathcal B_\epsilon+\delta w_\epsilon)
=\delta\mathcal B_\epsilon$ identically. The finite-wall projected
Brown--Henneaux benchmark H47 has nonzero canonical-pair flux away from the
reflection-symmetric point. Therefore the full projected fixed-wall block
does **not** satisfy H1. Any application to that block must either impose a
smaller Lagrangian polarization or use an extended edge phase space whose
additional symplectic form cancels the wall pullback.

For the pure-diffeomorphism Brown--Henneaux sector, the latter repair has a
distinguished moving-embedding section. If $h=\mathcal L_\zeta G$, take
$\chi=-\zeta$ on the core of the inner wall and taper $\chi$ to zero in an
anchor neighborhood before the outer boundary. Covariance gives on that core

$$
\Delta_XG=0,
\qquad
\Delta_X\gamma=\Delta_X\Pi=
\Delta_Xq=\Delta_X\eta=0
\tag{2.1a}
$$

away from the anchor transition. Wall source and flux vanish exactly there,
while the outer Brown--Henneaux charge is unchanged. At a finite anchored
regulator the inner wall and outer cutoff share a joint, so $\chi=-\zeta$ and
$\chi=0$ cannot both hold at that joint unless $\zeta$ already vanishes.
The transition strip and moving-joint terms must therefore be retained. For a
mode cutoff $m\leq M$, the high-frequency profile gives the kinematic
necessary conditions

$$
M/L(M)^2\longrightarrow0,
\qquad
L(M)/R(M)\longrightarrow0.
\tag{2.1b}
$$

This statement is an extended-space replacement for H1 on the wall core, not
a completed proof of H1 on the anchored regulated region and not a repair of
H1 on the original fixed-wall block.

For the corrected Brown--Henneaux tower, the complete far-wall kernel is
controlled by $q=e^{-|u|}$ and $y=\tanh(\epsilon/2)$:

$$
\boxed{
|\mathcal F_{mn}^{\rm wall}(q,\epsilon)|
\leq C(1+m+n)^7(yq^5+q^6).
}
\tag{2.1c}
$$

At the proper switching radius $q_L\leq C/L$, so integration gives
$C(1+m+n)^7(yL^{-5}+L^{-6})$.  This is a uniform full-tail theorem and is
absolutely summable on $\mathcal H_A^s$ for the conservative range
$s>15/2$. The $q^6$ remainder corrects the earlier attempt to promote the
finite $O(\epsilon q^5)$ coefficient to a full-tail bound. The complete raw
far moving Hayward-joint kernel obeys

$$
|\mathcal F^J_{mn}(q,\epsilon)|
\leq C(1+m+n)^6\tanh\frac\epsilon2\,q^5,
$$

correcting the earlier untested $O(\epsilon^2)$ prose estimate. At $r=R$ it
is $O((1+m+n)^6\tanh(\epsilon/2)R^{-5})$; the compensated $L^2/R^2$
mismatch remains separate. In the $r\sim L$ proper-profile transition, the symbolic finite
parts belong to a finite reflected endpoint-jet form. A derivative audit
shows that the Brown--Henneaux lift permits jets through order five. Seven
additional cross finite parts complete the 21-coefficient reconstruction;
its unique solution sets all fourth- and fifth-jet terms to zero and passes
three unused projected checks. This proves the coefficient reconstruction
within the fifth-jet finite-part ansatz. This is not an unprojected ordinary
integral statement: the direct $(\cos3\phi,\cos4\phi)$ density contains
$51L^4/(16\sqrt2d)$. The projected problem is now solved independently by a
direct two-symbolic-frequency point-jet calculation:

$$
\|B_{L,mn}^{P_A}-B_{mn}^{P_A,{\rm local}}\|_{L^1(\gamma_A)}
\leq \frac{C(1+m+n)^6}{L^2}.
\tag{2.1d}
$$

Thus the projected transition distribution and bulk remainder are zero, and
$M^6/L(M)^2\to0$ is sufficient for the adapted-block transition limit. The
auxiliary finite-rank cotangent cancellation exists algebraically, but it is
not assumed here as a gravitational boundary sector. The complete pulled-back
action cancels the fully compensated gauge-core curvature and leaves the
proper-transition form, which vanishes by (2.1d). H1$_X$ for the **complete**
anchored region and the full diagonal $H^s$, $s>5/2$, H59a--H59c prove the
remaining fixed-section entries on $\tanh(\epsilon/2)=1/(2L)$: the complete
finite-wall compensated kernel is $O((1+m+n)^7L^{-2})$; both outer
Brown--York source curvatures vanish; the compensated outer-corner and
outer-joint mismatches are bounded by
$C(1+m+n)^6(L^2/R^2+L^4/R^2)$ and
$C(1+m+n)^6L^2/R^2$. The former separate finite-wall anchor-shift is removed
as a double count. H60 proves that the HW coefficient collar adds no separate
CPS estimate because $\Delta_Xg(P_{\rm HW}h,-V[h])=h$ sector by sector.

### H2. Two-sided regularity and radial descent

The limiting perturbation is smooth in a two-sided Kruskal chart. In a
Rindler-radial representative its normal components have uniform decay

$$
|\delta g_{\mu\rho}|\leq C\rho^\alpha,
\qquad \alpha>0,
\tag{2.2}
$$

strong enough that, uniformly on every compact horizon cut,

$$
\int_{\gamma_\epsilon}C_\epsilon[\delta g]=o(1),
\qquad
\int_{\gamma_\epsilon}\delta C_\epsilon=o(1).
\tag{2.3}
$$

Exact radial gauge is a sufficient special case. The uniformity in (2.2) is
essential: pointwise mode falloff does not by itself justify interchanging a
mode sum with $\epsilon\to0$. For a noncompact anchored cut, (2.2)--(2.3)
mean a weighted integrable bound uniform in the anchor regulator, with the
declared $R\to\infty$ limit taken before $\epsilon\to0$; compact-uniform
control alone is not sufficient there.

### H3. Joints and embeddings

In the restricted branch, wall and endpoint embeddings and their boost data
are fixed. The appropriate Hayward functional is included for a fully
Dirichlet piecewise-smooth action. Its fixed-embedding variation is
field-space exact and does not change $\Omega$.

For every descent pair used in a gauge completion, require

$$
\int_{\gamma_\epsilon}
\left(
\mathbb k_{u,\mathrm p}^{\rm wall}[\delta g]
+\mathbb k_{u,\mathrm p}^{\rm joint}[\delta g]
\right)=o(1).
\tag{2.4}
$$

The required pairs are

$$
(u,\delta g)
=([\xi,v],p+\mathcal L_vG),
\qquad
(u,\delta g)=(v,\mathcal L_\xi p).
$$

Neither $v$ nor $[\xi,v]$ is assumed Killing.

### H4. Wall-to-corner transgression

For an area-changing source-retaining family, the wall source and fused boost
corner obey

$$
\int_{\mathcal H_\epsilon}
(\mathcal B_\epsilon+\delta w_\epsilon)
+\delta I_{\rm fuse,\epsilon}=o(1).
\tag{2.5}
$$

For a fluctuation family with fixed inner boundary data, both terms may vanish
separately. The artificial Brown--York wall generator is not identified with
the limiting horizon Noether corner.

### H5. Vacuum dynamics and asymptotics

The first-order perturbation satisfies
$\mathcal E^{(1)}[h]=0$. The second-order coefficient is kept separate and
satisfies

$$
\mathcal E^{(1)}[k]+\mathcal E^{(2)}[h,h]=0.
\tag{2.6}
$$

The background modular vector $\xi$ is an exact Killing field, preserves the
regulated boundary data, and has fixed boost normalization $s$. Gauge vectors
used below decay sufficiently fast at $\Gamma_\infty$.

### H6. Extremal representative

Every gauge orbit under consideration admits a representative

$$
h^{\rm ext}=h+\mathcal L_vG
\tag{2.7}
$$

that fixes the background extremal surface and satisfies the Hollands--Wald
normal-plane conditions. In particular,

$$
h^{\rm ext}_{kk}|_\gamma
=h^{\rm ext}_{ll}|_\gamma=0.
\tag{2.8}
$$

This is a phase-space hypothesis, not a claim that such a representative
exists globally for arbitrary topology or boundary data.

## 3. Fixed versus moving embeddings

For a moving wall or extremal surface, introduce an embedding field $X$. Its
field-space displacement is

$$
\chi^\mu:=\delta X^\mu\circ X^{-1},
$$

and the pulled-back metric varies as

$$
\delta(X^*g)=X^*(\delta g+\mathcal L_\chi g).
\tag{3.1}
$$

Under an infinitesimal spacetime diffeomorphism $w$,

$$
\delta_wg=\mathcal L_wg,
\qquad
\delta_wX=-w\circ X,
\tag{3.2}
$$

so (3.1) is invariant. A diffeomorphism nonzero at the inner boundary becomes
a degeneracy after the complete pulled-back project action is varied.
Schematically,

$$
\Theta_{{\rm p},X}[g,X;\delta]
:=\Theta_{\rm p}[X^*g;\delta(X^*g)].
\tag{3.3}
$$

Thus $(\mathcal L_wg,-w\circ X)$ is a degeneracy, while a metric-only or
embedding-only transformation carries the compensating surface charge. The
moving wall work and joint pair are

$$
\mathcal B_X=-\frac12\Pi^{ij}\Delta_X\gamma_{ij},
\qquad
\Omega_J=\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\Delta_X\eta\wedge\Delta_X\sqrt q.
\tag{3.4}
$$

The formulas in (3.4) are respectively the Brown--York wall contribution and
the joint pair. The direct moving first variation completes the former by the
tangential and normal Einstein constraints and combines its endpoint total
derivative with the Harlow--Wu and Hayward terms; the exact formulas are in
`moving embedding and edge phase space.md`. The implication below still
applies only to the fixed-embedding restricted branch. A moving-branch
analogue requires an integrable normal surface-translation polarization.

### 3.1 Moving hypotheses and explicit compact realization

The moving branch replaces H1, H3, and H4 by

$$
\left.(\mathcal B_X+\delta_Xw_{\epsilon,X})
\right|_{\mathscr L_{\epsilon,X}}=\mathrm dc_{\epsilon,X},
\qquad
\left.\delta_X\Pi^{ij}\wedge\delta_X\gamma_{ij}
\right|_{\mathscr L_{\epsilon,X}}=0,
\tag{3.5}
$$

$$
\Theta_{\Sigma,X}
=\int_\Sigma\sqrt\sigma\,\tau_\mu\vartheta^\mu[\Delta_Xg]
-\sum_JC_{\Gamma,J}[\Delta_Xg]
+\sum_J\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\eta\,\Delta_X\sqrt q,
\tag{3.6}
$$

and

$$
W_{\epsilon,X}+I_{{\rm corner},\epsilon,X}
=I_{{\rm fuse},\epsilon},
\qquad
I_{{\rm corner},\epsilon,X}=o(1),
\qquad
\delta_XI_{{\rm corner},\epsilon,X}=o(1).
\tag{3.7}
$$

Hamiltonian normal translation additionally requires

$$
I_{(0,w)}\Omega_{{\rm p},X}=\delta H_w^{\rm edge}.
\tag{3.8}
$$

Call these H1$_X$, H3$_X$, and H4$_X$; the remaining moving hypotheses are
the pullback versions of H0, H2, H5, and H6.

`smooth BTZ moving polarization family.md` realizes all of them on a compact
finite-dimensional neighborhood. In a horizon collar,

$$
\mathrm ds^2
=\mathrm d\rho^2-s^2\sinh^2\rho\,\mathrm d\lambda^2
+R(\phi)^2\cosh^2\rho\,\mathrm d\phi^2,
\qquad R=r_+F',
\tag{3.9}
$$

with $F'>0$. The mixed functional is

$$
w_{{\rm sm},\epsilon}
=\frac12\Pi^{ij}\gamma_{ij}
+\frac{sR}{2\kappa_{\rm p}^2}
=\frac{sR\cosh^2\epsilon}{\kappa_{\rm p}^2}.
\tag{3.10}
$$

It gives zero source and zero wall flux. Uniform normal translation has
$H_\perp^{\rm edge}=0$, and

$$
I_{{\rm corner},{\rm sm},\epsilon}
=\frac{sR}{\kappa_{\rm p}^2}
\left(\cosh\epsilon-\cosh^2\epsilon\right)=O(\epsilon^2).
\tag{3.11}
$$

This is a controlled-family construction, not a universal polarization.
The $I_{{\rm corner},{\rm sm},\epsilon}$ in (3.11) is a comparison
representative for regulator removal, not an additional finite-wall joint
beside $w_{{\rm sm},\epsilon}$; the orthogonal Hayward joint itself vanishes.

## 4. Conditional finite-action horizon implication

**Proposition.** Assume H0--H6 on the restricted fixed-embedding vacuum phase
space. Then:

1. the regulated action is differentiable and the pulled-back wall flux
   vanishes;
2. the finite-action Hamiltonian satisfies, before imposing the field
   equations,

   $$
   \delta H_{\xi,\epsilon}
   =\Omega_{\Sigma,\epsilon}
   (\delta g,\mathcal L_\xi g);
   \tag{4.1}
   $$

3. after imposing (2.6), Stokes reduction gives

   $$
   \Omega_{\Sigma,\epsilon}
   (\delta g,\mathcal L_\xi g)
   =\delta H_\xi^\infty
   -\delta H_\xi^{\gamma_\epsilon}
   +\mathcal C_{\xi,\epsilon},
   \tag{4.2}
   $$

   where $\mathcal C_{\xi,\epsilon}$ is the displayed equation-of-motion or
   matter constraint term and the minus sign is the conversion to a common
   outer-reference orientation;
4. equations (2.3)--(2.5) make the regulator limit of every additional
   wall/joint/flux term vanish, while the fused bulk Noether corner remains;
5. in the extremal representative, the second-order fixed-cut horizon charge
   equals the fixed-cut area variation; transforming back with (3.1) and the
   Jacobi decomposition recovers the full geometric area variation on the
   moving extremal surface.

Consequently the on-shell second-order identity is

$$
\boxed{
\delta^2H_\xi^\infty
=\frac{s}{2\pi}
\delta^2\!\left(\frac{A[g,\gamma]}{4G}\right)
+E_{\rm can,p}[h^{\rm ext}].
}
\tag{4.3}
$$

Here $\delta^2$ is the second derivative of the one-parameter family, not its
quadratic Taylor coefficient. A matter extension is not included: it requires
a specified matter action, symplectic current, wall polarization, constraint
normalization, and a separately defined matter modular term.

**Proof.** H0 licenses the differentiations, integrations, and regulator
limits. H1 and (1.2) give differentiability and zero boundary flux. The
componentwise finite-action diffeomorphism descent gives (4.1) off shell.
Stokes' theorem with the two induced cut orientations gives (4.2). H2--H4
remove the regulated wall, joint, and source terms without identifying the
artificial wall generator with the horizon corner. In Hollands--Wald gauge,
the verified fixed-surface obstruction

$$
[\lambda^2]
\left(\kappa_{\rm p}^2H_\xi^\gamma-sA_\gamma\right)
=\frac{s}{2}\int_\gamma\sqrt q\,h_{kk}h_{ll}
\tag{4.4}
$$

vanishes by (2.8). In that representative the first-order displacement is
zero. Transforming back to an arbitrary representative, the verified Jacobi
decomposition supplies the metric--displacement cross term and the quadratic
embedding term; the second-order embedding displacement drops out because
the background cut is extremal. Combining these statements with the vacuum
equation (2.6) yields (4.3).

## 5. Arbitrary-gauge completion and cocycle

For a first-order perturbation $p$ and a field-independent vector $v$, define

$$
\begin{aligned}
\mathfrak D_p[v]
:={}&\Omega_{\rm p}
[p+\mathcal L_vG,\mathcal L_{[\xi,v]}G]
-\Omega_{\rm p}
[\mathcal L_\xi p,\mathcal L_vG].
\end{aligned}
\tag{5.1}
$$

Antisymmetry and bilinearity of $\Omega_{\rm p}$ give the exact identity

$$
\boxed{
\mathfrak D_p[v]
=E_{\rm can,p}[p+\mathcal L_vG]-E_{\rm can,p}[p].
}
\tag{5.2}
$$

No Killing condition on $v$ is used. Under H0--H5, finite-action descent gives

$$
\mathfrak D_p[v]
=\lim_{\epsilon\to0}
\int_{\gamma_\epsilon}^{\rm ind}
\Upsilon_{\mathrm p}^{\rm FA}[p,v]
=\int_\gamma\Upsilon_{\mathrm p}[p,v],
\tag{5.3}
$$

where H2--H3 remove the wall and joint pieces. For two gauge perturbations
$\mathcal L_vG$ and $\mathcal L_wG$, (5.2) implies the cocycle relation

$$
\mathfrak D_p[v]
+\mathfrak D_{p+\mathcal L_vG}[w]
=\mathfrak D_p[v+w].
\tag{5.4}
$$

Choose $v$ so that $h^{\rm ext}=h+\mathcal L_vG$. Then

$$
\boxed{
E_{\rm can,p}^{\rm GI}[h]
:=E_{\rm can,p}[h]
+\int_\gamma\Upsilon_{\mathrm p}[h,v]
=E_{\rm can,p}[h^{\rm ext}].
}
\tag{5.5}
$$

If $h\mapsto h+\mathcal L_wG$, then $v\mapsto v-w$; equation (5.4) proves
that (5.5) is unchanged. In the selected extremal representative one may take
$v=0$, so the completion vanishes. The standalone abstract regression
`finite_action_gauge_cocycle_check.wl` verifies (5.2), (5.4), the invariance of
(5.5), and its extremal-representative zero in a generic finite-dimensional
antisymmetric bilinear model; it passes $4/4$ exact tests.

The project/2501 convention map remains

$$
\omega_{\mathrm p}=-\omega_{2501},
\qquad
\Upsilon_{\mathrm p}=-\Upsilon_{2501}
\tag{5.6}
$$

for the same ordered variations and spacetime orientation.

## 6. Dressed identity in an arbitrary gauge

The geometric area is evaluated on the moving extremal surface. Its
first-order displacement transforms as

$$
V^a\mapsto V^a-w_\perp^a.
\tag{6.1}
$$

The verified AdS$_3$ Jacobi formulas make
$\delta^2A[g,\gamma]$ invariant under the simultaneous transformations of the
metric and embedding. Combining (4.3) and (5.5) therefore gives

$$
\boxed{
\delta^2H_\xi^\infty
=\frac{s}{2\pi}
\delta^2\!\left(\frac{A[g,\gamma]}{4G}\right)
+E_{\rm can,p}[h]
+\int_\gamma\Upsilon_{\mathrm p}[h,v]
}
\tag{6.2}
$$

Equation (6.2) is the project's conditional classical JLMS-type identity in
vacuum. It
is a finite-action statement for the declared Einstein AdS$_3$ phase space;
it does not construct a boundary or bulk von Neumann algebra.

### 6.1 Verified projected-section and full-quotient identity

For the projected Brown--Henneaux sector, write the Sobolev index as
$\sigma>5/2$ so that $s$ continues to denote surface gravity. The hypotheses
entering (6.2) are intended to be realized by a moving-completed diagonal family rather
than by the obstructed fixed-wall Brown--York block. The established and
conditional ingredients are:

1. H44--H45: the local projected form is continuous on
   $\mathcal H_A^\sigma$, $\sigma>5/2$;
2. H46--H50 and H59a--H59c: the complete finite-wall compensated kernel is
   bounded by $C(1+m+n)^7L^{-2}$ on $y=1/(2L)$, the complete far-wall tail is
   bounded by
   $C(1+m+n)^7(yL^{-5}+L^{-6})$, and the complete raw far-joint kernel is
   bounded by $C(1+m+n)^6yR^{-5}$; the finite-cylinder outer Brown--York
   source curvatures vanish exactly, the raw Cauchy-corner curvature is
   $O((1+m+n)^6R^{-6})$, and the compensated outer-corner and joint
   mismatches obey $C(1+m+n)^6(L^2/R^2+L^4/R^2)$ and
   $C(1+m+n)^6L^2/R^2$;
3. H51: the direct two-symbolic-frequency projected density is ordinary
   integrable, has zero endpoint distribution and bulk remainder, and obeys
   the uniform block estimate $C_\sigma M^6/L^2$; the distinct rank-21
   finite-part reconstruction is not used, and the auxiliary edge one-form is
   not assumed in the action-derived theorem;
4. H52: the field-dependent HW boundary-value map is a continuous projector
   on the diagonal family.

The fixed-anchor tangent and the HW moving tangent obey

$$
(h,0)\sim(P_{\rm HW}h,-V[h])
\tag{6.3}
$$

because their difference $(RV[h],-V[h])$ is the exact gauge degeneracy of the
complete pulled-back action. Thus the equality includes bulk, GHY,
counterterm, Harlow--Wu, Hayward, and embedding terms; it is not merely a bare
bulk symplectic identity.

The complete relative-action stratum inventory and these bounds make the
total action-derived boundary flux vanish on the explicit diagonal schedule.
Therefore, for every admissible one-parameter vacuum family tangent to
$h\in\mathcal H_A^\sigma$,

$$
\boxed{
\delta^2H_\xi^\infty
=\frac{s}{2\pi}\delta^2\!\left(\frac{A[g,\gamma]}{4G}\right)
+E_{\rm can,p}(P_{\rm HW}h)
}
\tag{6.4}
$$

and equivalently

$$
\boxed{
\delta^2H_\xi^\infty
=\frac{s}{2\pi}\delta^2\!\left(\frac{A[g,\gamma]}{4G}\right)
+E_{\rm can,p}[h]
+\int_{\gamma_A}\Upsilon_{\rm p}[h,V[h]].
}
\tag{6.5}
$$

All three quadratic objects in (6.4)--(6.5) use second-derivative
normalization. If a script reports an $a^2$ Taylor coefficient, it must be
multiplied by two before insertion here.

This selected-section theorem extends to the complete Brown--Henneaux metric
tangent quotient. For any generator $f$, define

$$
P_{\rm PSL}f
=f-\frac{f(a)+f(-a)}{2\cos a}\cos\phi
-\frac{f(a)-f(-a)}{2\sin a}\sin\phi.
\tag{6.6}
$$

The subtracted vectors are exact global AdS Killing fields, so
$h[P_{\rm PSL}f]=h[f]$, while $(P_{\rm PSL}f)(\pm a)=0$. The residual
endpoint-fixing global direction is the modular generator $w_A$. Hence

$$
H^\sigma(S^1)/\mathfrak{sl}(2,\mathbb R)
\simeq
\ker(q_+,q_-)/\operatorname{span}\{w_A\},
\tag{6.7}
$$

and (6.4)--(6.5) hold on this full quotient for $\sigma>5/2$. The old
$P_A$ remains a genuine physical subspace projector and is not the PSL
reducibility section.

The combined energy has the positive classical Bañados form

$$
E_{\rm can,p}[h[f]]
=\frac1{8G}\int_{\mathbb R}
\left[(F_f')^2+(F_f'')^2\right]\,\mathrm ds,
\qquad
F_f=\frac{P_{\rm PSL}f}{w_A},
\tag{6.8}
$$

after mapping the interval to the modular coordinate $s=\log U$. Its kernel
is exactly $\mathfrak{sl}(2,\mathbb R)$. The combined closed form extends to
the endpoint-fixed ordinary $H^2$ section, but the separated terms in (6.5)
need not exist there; their action/CPS decomposition remains on
$H^\sigma$, $\sigma>5/2$.

For an exact diffeomorphism family with the extremal surface moved
covariantly, the geometric area is unchanged. In that special benchmark,
(6.5) reduces to the equality of the outer second-order modular charge and
the completed canonical energy. This does not set the fixed-coordinate area
pieces separately to zero; their metric, cross, and embedding parts cancel
only in the geometric sum.

## 7. What Appendix B.3 of 2501 establishes

Appendix B.3 introduces a brick wall, GHY, and the condition
$h_{\rho\mu}|_{\rho=\epsilon}=0$. It explicitly shows that its symplectic
boundary term

$$
c^\nu=h_{\mu\alpha}n^\alpha q^{\mu\nu}|_\gamma
\tag{7.1}
$$

vanishes. It also derives mode falloffs in Rindler radial gauge and argues that
their mode sum retains sufficient near-horizon behavior in the example. Its
extension to a general stationary black hole and to a different boundary term
is stated as an expectation, with uniform decay such as (2.2) proposed as the
proper condition. It does not prove that the Brown--York canonical-pair term
in (1.2) vanishes for arbitrary boundary data. Hypothesis H1 is therefore an
independent finite-action input, not a consequence of Appendix B.3.

Text extraction and rendered PDF pages 76--77 of arXiv:2501.08308v2 were both
checked for this distinction.

## 8. Claim tier and constructive extension

**Exact conditional implication:** the regulated finite-action proposition
(4.1)--(4.3),
the arbitrary-gauge cocycle (5.2)--(5.5), and the dressed identity (6.2) on the
fixed-embedding zero-flux phase space H0--H6.

**Verified examples and theorem:** the compact BTZ fixed-boost and collar sectors; the
fixed-embedding AdS-Rindler mode with complete outer/inner/joint/strip
accounting; the complete moving first variation and the controlled nonzero
smooth BTZ mixed polarization with uniform normal-translation integrability;
compact Jacobi invertibility and two nonzero smooth HW
representatives; and the proper selected-mode AdS-Rindler extremal vector.
The projected two-frequency transition theorem, zero transition distribution,
and $C_sM^6/L^2$ adapted-block rate are verified. The PSL reducibility
section extends the result to the complete Brown--Henneaux metric quotient,
and the Bañados Hessian proves positivity and the optimal ordinary $H^2$
continuity threshold of the combined form.

**Constraint:** the trace-Legendre wall family can redistribute its comparison
functional against a matched half-generator, but this is not a finite-wall
Neumann construction. Individual odd-frequency real quadratures have an
order-one anchor displacement, while correlated frequencies can belong to a
closed codimension-two fixed-anchor subspace.

**Not constructed:** a universal mixed polarization $w_\epsilon$ for every
smooth horizon perturbation; a combined time-dependent nonuniform wall and
non-orthogonal joint polarization; a proof of H0--H6 for a general
fixed-embedding horizon phase space; realization of the weak HW tangent by a
fixed-width smooth Gaussian-null embedding for the completed infinite sum; or
nonlinear finite-amplitude charts on arbitrary Virasoro coadjoint orbits.
Matter and operator-algebraic/quantum JLMS extensions lie outside the
declared scope. Equations (6.4)--(6.5) are the constructed action-derived,
slice-covariant classical theorem on the complete metric tangent quotient on
the declared linked regulator class. Equation (6.8) is positive but not
coercive in the ordinary $H^2$ norm. None of these is a quantum theorem.
