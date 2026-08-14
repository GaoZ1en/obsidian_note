# Intrinsic Moving Boundary and Edge Realization

## Status and correction

This note begins the geometric completion beyond H53.  It uses the complete
finite-action covariant phase space of `../article/` and does not modify that
convention source.  The result proved here has two parts:

1. pulling back the **complete** action to a fixed reference region gives an
   intrinsic ambient extended pre-symplectic form for arbitrary nonuniform
   embedding variations and makes

   $$
   (\mathcal L_wg,-w)
   \tag{0.1}
   $$

   an exact gauge degeneracy;
2. a nonzero artificial-boundary two-form on a chosen tangent block has a
   canonical cotangent realization, but the action-derived embedding sector
   cancels only its fully compensated gauge part. A proper radial taper leaves
   a transition form which cannot be erased by that geometric identity.

The second point corrects an overly strong possible reading of the finite-rank
term

$$
\Theta_{\rm edge}
=-\frac12F_{IJ}a^I\delta a^J.
\tag{0.2}
$$

Equation (0.2) is not an arbitrary scalar transgression, and it has a precise
cotangent-bundle realization. It is nevertheless an additional polarization
unless it represents the fully compensated gauge curvature isolated below.
No uniqueness is assumed.

## 1. Complete pulled-back action

Let $M_0$ be a fixed reference region, including fixed reference copies of
every Cauchy face, timelike wall, asymptotic cylinder, and joint.  Let $X$ be
an embedding of this stratified reference region and set

$$
\chi^\mu=\delta X^\mu\circ X^{-1},
\qquad
\Delta_Xg=\delta g+\mathcal L_\chi g.
\tag{1.1}
$$

The field-space Maurer--Cartan equation is

$$
\delta\chi=-\frac12[\chi,\chi].
\tag{1.2}
$$

The extended action is defined before any boundary decomposition by

$$
S_{{\rm p},X}[g,X]
:=S_{\rm p}[X^*g;M_0],
\tag{1.3}
$$

where $S_{\rm p}$ contains the Einstein--Hilbert term, outer and inner GHY
terms, the outer AdS counterterm, the Harlow--Wu endpoint descent, and every
Hayward joint selected by the variational problem.  Its integrated potential
and two-form are therefore

$$
\boxed{
\Theta_{{\rm p},X}
=\Theta_{\rm p}[X^*g;\delta(X^*g)],
\qquad
\Omega_{{\rm p},X}=\delta\Theta_{{\rm p},X}.
}
\tag{1.4}
$$

The definition (1.4), rather than a termwise substitution into an already
integrated fixed-wall expression, covariantizes the domains, unit normals,
induced metrics, counterterms, and joints together.  On the bare-bulk shell it
reduces to the standard extended-CPS expression

$$
\Theta_X^{\rm bulk}
=\int_\Sigma(\boldsymbol\theta+i_\chi\boldsymbol L)
+\int_{\partial\Sigma}\boldsymbol Q_\chi.
\tag{1.5}
$$

Because the cosmological Einstein Lagrangian does not vanish on shell,
$i_\chi\boldsymbol L$ in (1.5) cannot be discarded.  In the project theory
the boundary improvements must be pulled back in addition to (1.5).

## 2. Arbitrary nonuniform wall displacement

On a timelike wall with outward spacelike unit normal $n$, decompose

$$
\chi^\mu=\chi^ie_i{}^\mu+\chi_\perp n^\mu.
\tag{2.1}
$$

No constancy assumption is made on $\chi^i$ or $\chi_\perp$.  With
$K_{ij}=\gamma_i{}^\mu\gamma_j{}^\nu\nabla_\mu n_\nu$,

$$
\Delta_X\gamma_{ij}
=\delta\gamma_{ij}+2D_{(i}\chi_{j)}+2\chi_\perp K_{ij}.
\tag{2.2}
$$

Writing $\Pi^{ij}=\sqrt{-\gamma}\,\mathcal T^{ij}$, the complete local wall
source is

$$
\begin{aligned}
\mathcal B_X
={}&-\frac12\Pi^{ij}\delta\gamma_{ij}
-D_i(\Pi^{ij}\chi_j)
+(D_i\Pi^{ij})\chi_j
-\Pi^{ij}K_{ij}\chi_\perp.
\end{aligned}
\tag{2.3}
$$

The first term is the metric source, the second belongs to the endpoint
descent, and the last two are the Brown--York parts of the tangential and
normal embedding momenta.  Including the off-shell Einstein term gives

$$
\boxed{
\begin{aligned}
P_j^{\rm tot}
&=D_i\Pi^i{}_j
-\frac{\sqrt{-\gamma}}{\kappa_{\rm p}^2}
n_\mu\mathcal E^{\mu\nu}e_{j\nu},\\
P_\perp^{\rm tot}
&=-\Pi^{ij}K_{ij}
-\frac{\sqrt{-\gamma}}{\kappa_{\rm p}^2}
n_\mu n_\nu\mathcal E^{\mu\nu}.
\end{aligned}}
\tag{2.4}
$$

Thus the first-variation formula already applies to arbitrary nonuniform
$\chi_\perp(\phi)$ and $\chi_\parallel(\phi)$.  What has not yet been proved
is closure and Hamiltonian integrability of a sufficiently large nonuniform
boundary polarization.  A pointwise formula for $P^{\rm tot}$ is not such a
proof.

## 3. Non-orthogonal joint pair

For a joint $J$ with induced area density $\sqrt q$ and relative Lorentzian
boost angle $\eta$, the fully Dirichlet Hayward term leaves either of the
Legendre-related one-forms

$$
\Theta_J^{(A)}
=\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\eta\,\Delta_X\sqrt q,
\qquad
\Theta_J^{(\eta)}
=-\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\sqrt q\,\Delta_X\eta.
\tag{3.1}
$$

They differ by the variation of the pulled-back Hayward functional and give

$$
\boxed{
\Omega_J
=\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\Delta_X\eta\wedge\Delta_X\sqrt q.
}
\tag{3.2}
$$

Equation (3.2) is the geometric area--boost edge pair.  The endpoint term
$-D_i(\Pi^{ij}\chi_j)$ in (2.3), the Harlow--Wu form, and (3.1) must be
combined before a joint or anchor generator is assigned.  This combination
has not yet been evaluated for a general non-orthogonal, nonuniform BTZ or
AdS--Rindler wall.

## 4. Exact extended gauge degeneracy

For a spacetime vector $w$, define

$$
I_{\widehat w}\delta g=\mathcal L_wg,
\qquad
I_{\widehat w}\chi=-w.
\tag{4.1}
$$

Then

$$
I_{\widehat w}\delta(X^*g)=0.
\tag{4.2}
$$

Since every stratum of the complete action is a functional of the pulled-back
fields, equations (1.3)--(1.4) imply

$$
\boxed{
I_{\widehat w}\Theta_{{\rm p},X}=0,
\qquad
I_{\widehat w}\Omega_{{\rm p},X}=0.
}
\tag{4.3}
$$

This proves the degeneracy of $(\mathcal L_wg,-w)$ without using the field
equations or requiring $w$ to vanish at the inner boundary.  Embedding-only
surface transformations $(0,w)$ are different directions and can carry edge
charges.  Normal surface translations are Hamiltonian only after the
remaining boundary work is integrable on a declared polarization.

## 5. Closed obstruction and cotangent edge realization

Let $\mathcal C_{M,\lambda}$ be a finite spectral coefficient space with
coordinates $a^I$, and let $\iota_{M,\lambda}$ be a regulated moving-wall
section of the ambient extended configuration space.  Pull back the complete
artificial-boundary two-form:

$$
F_{M,\lambda}
:=\iota_{M,\lambda}^*\Omega_{\rm artificial}
=\frac12F_{IJ}(a)\,\delta a^I\wedge\delta a^J.
\tag{5.1}
$$

Because it is a pullback of a symplectic form,

$$
\delta F_{M,\lambda}=0.
\tag{5.2}
$$

The graph is Lagrangian only when (5.1) vanishes or when an additional edge
polarization supplies its negative.  On a star-shaped coefficient chart the
radial homotopy primitive is

$$
\alpha_F(a)
=\int_0^1t\,a^I F_{IJ}(ta)\,\mathrm dt\,\delta a^J,
\qquad
\delta\alpha_F=F.
\tag{5.3}
$$

Introduce a cotangent edge chart with

$$
\Theta_{\rm can}=P_I\delta Q^I,
\qquad
\Omega_{\rm can}=\delta P_I\wedge\delta Q^I,
\tag{5.4}
$$

and choose the graph

$$
Q^I=a^I,
\qquad
P_J=-\int_0^1t\,a^I F_{IJ}(ta)\,\mathrm dt.
\tag{5.5}
$$

Then

$$
\boxed{
s_F^*\Theta_{\rm can}=-\alpha_F,
\qquad
s_F^*\Omega_{\rm can}=-F_{M,\lambda}.
}
\tag{5.6}
$$

For the linearized finite-rank family $F_{IJ}$ is constant, so (5.6) becomes

$$
s_F^*\Theta_{\rm can}
=-\frac12F_{IJ}a^I\delta a^J,
\tag{5.7}
$$

which is exactly the edge one-form used in H51.  This proves that H51 has a
canonical finite-dimensional symplectic realization and is not equivalent to
adding a scalar $\delta w$.

The realization is not unique.  One may replace
$\alpha_F\mapsto\alpha_F+\delta f$, perform edge symplectomorphisms, or add
spectator canonical pairs without changing the curvature cancellation in the
second relation of (5.6).  Therefore geometry fixes
the closed obstruction $F$; a boundary polarization or edge chart fixes its
realization.  A claim that the embedding field uniquely determines (5.7)
would be false without additional polarization data.

### 5.1 Gauge-core cancellation versus the proper transition

There is an exact action-derived statement, but it is narrower than the
cancellation of an arbitrary $F_{M,\lambda}$. Let $\Phi_a$ be a finite family
of diffeomorphisms and set

$$
g_a=\Phi_a^*G,
\qquad
X_a=\Phi_a^{-1}\circ X_0.
\tag{5.8}
$$

Then

$$
X_a^*g_a=X_0^*G
\tag{5.9}
$$

identically. Every pulled-back bulk, wall, counterterm, Harlow--Wu, and
Hayward field is constant on this graph. The total curvature therefore
vanishes stratum by stratum. If $F_{\rm gauge}$ denotes the fixed-embedding
metric curvature on the same pure-gauge coefficient block, the geometric
embedding-plus-cross contribution obeys

$$
\boxed{
\Omega_{\rm emb/cross}=-F_{\rm gauge}.
}
\tag{5.10}
$$

On a star-shaped chart its potential and the radial primitive (5.3) differ
at most by an exact one-form. This is the precise action-derived content of
the auxiliary Darboux construction.

The proper AdS--Rindler completion is not the graph (5.8) globally. It uses

$$
v_L=-p_L\zeta,
\qquad
p_L=\frac{L^2}{L^2+r^2},
\tag{5.11}
$$

and hence

$$
\Delta_Xg
=\mathcal L_\zeta G+\mathcal L_{v_L}G
=\mathcal L_{(1-p_L)\zeta}G.
\tag{5.12}
$$

The graph is fully compensated on the inner core but not in the $r\sim L$
transition region. Decompose the fixed-section artificial curvature as

$$
F_{M,\lambda}=F_{{\rm gauge},M,\lambda}
+F_{{\rm transition},M,\lambda}.
\tag{5.13}
$$

The action-derived result is

$$
\boxed{
F_{M,\lambda}+\Omega_{\rm emb/cross}
=F_{{\rm transition},M,\lambda},
}
\tag{5.14}
$$

not zero at finite regulator in general. Equation (5.7) cancels the entire
$F_{M,\lambda}$ only after selecting an additional cotangent graph. That graph
is mathematically consistent, but it changes the boundary phase space and is
not forced by the original gravitational action.

For the projected classical theorem one must instead prove that the right
side of (5.14) converges to zero on the fixed-anchor domain.  At the H51
stage, applying the same raw generator formula to a profile with nonzero
endpoint values produced an apparent endpoint ``anchor work'' term.  H61
corrects that interpretation.  The frequency-zero/one complement required
to set those endpoint values to zero is an exact global AdS Killing vector,
so the representative

$$
P_{\rm PSL}f
=f-\frac{f(a)+f(-a)}{2\cos a}\cos\phi
-\frac{f(a)-f(-a)}{2\sin a}\sin\phi
\tag{5.15}
$$

has the same metric perturbation as $f$.  Thus the raw unprojected endpoint
term is not an invariant physical anchor momentum.  Charged modes with
frequency at least two remain physical; only the global
$\mathfrak{sl}(2,\mathbb R)$ reducibility directions are quotiented.  No
opposite-moment-map asymptotic frame is needed for this metric quotient.

## 6. Exact stationary nonuniform BTZ polarization

The abstract nonuniform formula has an exact infinite-dimensional compact
realization.  In the smooth BTZ collar use

$$
\mathrm ds^2
=\mathrm d\rho^2-s^2\sinh^2\rho\,\mathrm d\lambda^2
+R(\phi)^2\cosh^2\rho\,\mathrm d\phi^2,
\tag{6.1}
$$

where $R(\phi)=r_+F'(\phi)>0$, and take a stationary wavy inner wall

$$
\rho=E(\phi),
\qquad E(\phi)>0.
\tag{6.2}
$$

Both $R$ and $E$ may be arbitrary smooth periodic functions.  Define

$$
D=E'^2+R^2\cosh^2E,
\qquad
\vartheta=\arctan\!\left(\frac{E'}{R\cosh E}\right).
\tag{6.3}
$$

The induced metric and inner outward unit conormal are

$$
\gamma_{ij}
=\begin{pmatrix}
-s^2\sinh^2E&0\\
0&D
\end{pmatrix},
\qquad
n_\mu
=\frac{R\cosh E}{\sqrt D}(0,-1,E').
\tag{6.4}
$$

The exact Brown--York momentum is

$$
\begin{aligned}
\Pi^{\lambda\lambda}
&=-\frac{R}{\kappa_{\rm p}^2sD}
\left(
2E'^2+R^2\cosh^2E-E''\coth E
+\frac{E'R'}R\coth E
\right),\\
\Pi^{\phi\phi}
&=\frac{Rs\cosh^2E}{\kappa_{\rm p}^2D},
\qquad
\Pi^{\lambda\phi}=0.
\end{aligned}
\tag{6.5}
$$

For arbitrary independent variations of $R(\phi)$ and $E(\phi)$, direct
substitution gives the local identity

$$
\boxed{
\mathcal B_X
=-\delta w_{\rm wave}
+\partial_\phi\!\left(p_E\,\delta E\right),
}
\tag{6.6}
$$

where

$$
\boxed{
\begin{aligned}
w_{\rm wave}
&=\frac{s}{\kappa_{\rm p}^2}
\left[
R\cosh^2E+E'\cosh E\,
\arctan\!\left(\frac{E'}{R\cosh E}\right)
\right],\\
p_E
&=\frac{s\cosh E}{\kappa_{\rm p}^2}
\arctan\!\left(\frac{E'}{R\cosh E}\right).
\end{aligned}}
\tag{6.7}
$$

Since the wall section is a circle,

$$
\int_{S^1}\mathcal B_X\,\mathrm d\phi
=-\delta\int_{S^1}w_{\rm wave}\,\mathrm d\phi,
\tag{6.8}
$$

and hence

$$
\boxed{
\int_{S^1}\delta\mathcal B_X=0.
}
\tag{6.9}
$$

Thus the complete stationary smooth $(R,E)$ family is an
infinite-dimensional Lagrangian moving-wall polarization.  It includes
nonuniform normal translations and the tangential component induced by the
tilted graph.  In the uniform limit $E'=0$,

$$
w_{\rm wave}
\longrightarrow
\frac{sR\cosh^2E}{\kappa_{\rm p}^2},
\qquad p_E\longrightarrow0,
\tag{6.10}
$$

recovering the previous compact mixed functional exactly.

The stationary wall remains orthogonal to the $\lambda={\rm const}$ Cauchy
slices.  The independent tilted-slice benchmark below tests the
non-orthogonal Hayward pair.

## 7. Non-orthogonal BTZ joint benchmark

Keep a uniform inner wall $\rho=\epsilon$ and take the spacelike endpoint
slice

$$
\lambda-q(\rho-\epsilon)=\lambda_0,
\qquad
|q s\sinh\epsilon|<1.
\tag{7.1}
$$

Its future unit normal and the inner outward wall normal have relative boost
angle

$$
\boxed{
\eta=-\operatorname{arctanh}(q s\sinh\epsilon),
\qquad
n\cdot\tau=\sinh\eta.
}
\tag{7.2}
$$

The joint density is

$$
\sqrt q=R\cosh\epsilon.
\tag{7.3}
$$

Consequently the geometric joint chart

$$
Q_J=\sqrt q,
\qquad
P_J=\frac{\sigma_J}{\kappa_{\rm p}^2}\eta
\tag{7.4}
$$

has canonical potential and curvature

$$
P_J\delta Q_J=\Theta_J^{(A)},
\qquad
\delta P_J\wedge\delta Q_J
=\frac{\sigma_J}{\kappa_{\rm p}^2}
\delta\eta\wedge\delta\sqrt q.
\tag{7.5}
$$

For example, the $q$--$R$ component is

$$
\boxed{
\Omega_J(\partial_q,\partial_R)
=-\frac{\sigma_Js\sinh\epsilon\cosh\epsilon}
{\kappa_{\rm p}^2(1-q^2s^2\sinh^2\epsilon)},
}
\tag{7.6}
$$

which is nonzero and has a regular $q\to0$ limit.  The boost angle itself
vanishes at $q=0$, but the curvature involving a variation away from the
orthogonal slice does not; this is the ordinary behavior of a canonical pair
at the origin of one coordinate.  Thus the area--boost part of the abstract
edge chart is now identified directly with geometric moving-slice data.  This
benchmark does not prove that the full H51 AdS--Rindler obstruction is
exhausted by area and boost; at that stage wall-transition or endpoint terms
could still be required.  H59 later controls the transition terms, while H61
shows that the apparent endpoint pair is removed by global-Killing
reducibility rather than by a new physical anchor canonical pair.

## 8. Consequence for H51--H53

The finite-dimensional numerical and algebraic values in H51--H54 are
retained. Their correct interpretation is:

1. the complete moving action provides the ambient gauge-invariant extended
   form;
2. on a selected projected finite block, denote the pulled-back closed
   obstruction by $F_{M,\lambda}$;
3. the geometric embedding/cross form cancels only the fully compensated
   gauge-core curvature, leaving (5.14);
4. equation (5.7) cancels the remainder only by adding an auxiliary cotangent
   boundary system; it is not part of the action-derived projected theorem;
5. H51 proves that the transition part of the right side of (5.14) vanishes
   on the projected diagonal domain when $M^6/L^2\to0$. H49 and H50 control
   the complete far-wall and raw far-joint endpoint kernels. H59b proves the
   **complete finite-wall** compensated estimate on
   $\tanh(\epsilon/2)=1/(2L)$, including the exact finite phase and the
   $r\sim L$ layer; the former separate finite-wall anchor shift is therefore
   withdrawn as a double count. H59a proves that both the raw and compensated
   outer Brown--York source curvatures vanish and bounds the compensated
   Cauchy-corner mismatch by
   $C(1+m+n)^6(L^2/R^2+L^4/R^2)$. H59c bounds the compensated outer-joint
   mismatch by $C(1+m+n)^6L^2/R^2$. H60 proves that the HW coefficient collar
   adds no separate CPS estimate because its complete pulled-back sectors
   reduce exactly to the fixed section. The resulting total relative-action
   flux vanishes on the explicit diagonal schedule, so H53 follows without
   the auxiliary cotangent system and is slice covariant.

The finite-rank total cancellation remains an abstract optional auxiliary
boundary polarization, not an action-derived gravitational edge phase space.
The action-derived projected theorem instead uses (5.10)--(5.14) together
with H51 and H59a--H60; it does not require that auxiliary system.

H61 subsequently applies the same action-derived theorem to the endpoint-zero
representative (5.15) and obtains the full linear Brown--Henneaux metric
quotient

$$
H^\sigma(S^1)/\mathfrak{sl}(2,\mathbb R),
\qquad \sigma>\frac52.
\tag{8.1}
$$

H62 identifies its combined canonical-energy form with the positive Bañados
square and closes that form to the endpoint-fixed ordinary $H^2$ topology.
These later conclusions use neither the auxiliary cotangent system nor a
physical moving-anchor canonical pair.

## 9. Remaining nonlinear classification problems

- Extend the linear PSL representative (5.15) to finite-amplitude charts on
  general Bañados coadjoint orbits.  This is distinct from gauging charged
  Virasoro transformations.
- Classify the local mixed polarizations for which general normal surface
  translations are integrable beyond the stationary compact family (6.1)--
  (6.2).
- Combine the non-orthogonal joint pair with a time-dependent nonuniform wall
  and its Harlow--Wu endpoint term in one complete component family.
These are existence and classification problems.  They do not alter the
off-shell identities (1.4), (2.4), (3.2), or (4.3), nor the linear classical
full-quotient theorem H61--H62.

## Verification status

**Verified:** the nonuniform wall decomposition (2.2)--(2.4); the Hayward
Legendre pair (3.1)--(3.2); the exact pulled-back gauge degeneracy (4.3); the
radial-homotopy/cotangent realization (5.3)--(5.7); and the exact distinction
between action-derived gauge-core cancellation and the proper-transition
remainder in (5.8)--(5.14). Equations
(6.4)--(6.10) are exact for arbitrary smooth positive periodic $R$ and $E$.
`moving_edge_radial_homotopy_check.wl` checks a nonconstant closed two-form,
the constant linearized specialization, the canonical graph pullback, scalar
transgression invariance, and primitive nonuniqueness.
`btz_nonuniform_moving_polarization_check.wl` independently computes the
wavy-wall normal, induced metric, extrinsic curvature, Brown--York momentum,
and the source primitive (6.6).  A fresh xCoba calculation independently
returns $R_{\mu\nu}+2g_{\mu\nu}=0$ for arbitrary
$R(\phi)$.
`btz_nonorthogonal_joint_check.wl` verifies (7.2)--(7.6), including the
normalizations, Hayward Legendre transform, nonzero curvature, and geometric
cotangent chart.

**Assumptions:** the project outward-normal and induced-orientation
conventions; a stratified embedding compatible at every wall--slice joint;
a fully Dirichlet piecewise-smooth action for the Hayward pair; a star-shaped
finite coefficient chart for (5.3); and a declared polarization when surface
translations are treated as Hamiltonian.

**Subsequently verified in H51 and H59--H62:** convergence of (5.14) on the
projected infinite-mode space; the complete linked-regulator limit and time-
fibre symplectomorphism; the PSL reducibility section covering the full linear
metric quotient; and positivity with the optimal ordinary $H^2$ upper-bound
threshold for the combined form.

**Not verified:** a universal polarization outside the stationary compact
family; the combined time-dependent nonuniform wall, non-orthogonal joint,
and Harlow--Wu endpoint family; finite-amplitude Bañados orbit charts; or a
nonlinear Virasoro quotient.

## Primary sources

- A. J. Speranza, extended pullback potential, boundary symplectic form, and
  the boundary-condition requirement for surface translations,
  [arXiv:1706.05061v2](https://arxiv.org/abs/1706.05061).
- W. Donnelly and L. Freidel, gravitational edge modes and extended local
  phase space, [arXiv:1601.04744](https://arxiv.org/abs/1601.04744).
