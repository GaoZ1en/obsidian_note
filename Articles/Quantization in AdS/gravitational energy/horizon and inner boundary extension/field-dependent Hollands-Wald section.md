# Field-Dependent Hollands--Wald Section on the Projected Sector

## 1. Claim and domain

This note constructs the Hollands--Wald choice as a field-dependent linear
section on the projected Brown--Henneaux sector. It uses the finite-action CPS
and sign conventions of `../article/`. The domain is

$$
\mathcal H_A^\sigma=P_AH^\sigma(S^1),
\qquad \sigma>\frac52,
\tag{1.1}
$$

with fixed anchors on the $t=0$ interval cut. The threshold is sufficient for
the endpoint traces and the local projected form. The independent coefficient
collar including all second normal jets is constructed in H60. For the
complete pulled-back action its sector forms satisfy
$\Delta_Xg(P_{\rm HW}h,-V[h])=h$, so collar continuity and off-cut-extension
independence reduce exactly to the fixed-section regulator problem rather than
constituting an additional weak-product assumption.

For every finite spectral block $V_M\subset\mathcal H_A^\sigma$, the construction
gives a smooth proper bulk vector $v_M[h]$ and the representative

$$
P_{{\rm HW},M}h
=h+\mathcal L_{v_M[h]}G.
\tag{1.2}
$$

The normal-trace map is continuous on (1.1). H49--H51 now prove the raw
far-wall, raw far-joint, and projected transition parts of the diagonal
regulator limit, while H59a closes both outer Brown--York source curvatures and
the compensated Cauchy-corner mismatch, H59b closes the complete finite-wall
compensated kernel on $\tanh(\epsilon/2)=1/(2L)$, and H59c closes the
compensated outer-joint mismatch. The former separate finite-wall anchor-shift
entry is absorbed by H59b and removed as a double count. These fixed-section
bounds and the exact H60 pullback give the complete canonical-energy limit and
time-fibre symplectomorphism on the declared diagonal regulator class. A
fixed-width $C^\infty$ Gaussian-null collar extending all the way to both
conformal anchors is not asserted.

## 2. Boundary-value solver

Let

$$
R:w\longmapsto\mathcal L_wG
\tag{2.1}
$$

be the vertical gauge map on the selected proper complement. Along the RT
geodesic define the extremality source

$$
S_a[h]=\delta_hK_a
=\frac12\nabla_ah_{uu}-D_uh_{ua}
\tag{2.2}
$$

and the Jacobi inverse

$$
J=-D_u^2+1,
\qquad
(J^{-1}F)(u)=\frac12\int_{\mathbb R}e^{-|u-u'|}F(u')\,\mathrm du'.
\tag{2.3}
$$

The normal value of the field-dependent solution is

$$
V_\perp[h]=-J^{-1}S[h].
\tag{2.4}
$$

The normal jets

$$
\nabla_kV_k[h]=-\frac12h_{kk},
\qquad
\nabla_lV_l[h]=-\frac12h_{ll}
\tag{2.5}
$$

impose the stronger Gaussian-null conditions when desired. A tangential cut
value is fixed once and for all as part of the section; changing it is a
surface reparametrization, not another solution of (2.4).

For a pure gauge perturbation $Rw=\mathcal L_wG$, covariance gives

$$
S[Rw]=Jw_\perp.
\tag{2.6}
$$

On the selected vertical complement, the extension convention for the
tangential value and normal jets is chosen compatibly with $w$. Therefore

$$
\boxed{V\circ R=-1.}
\tag{2.7}
$$

Consequently

$$
P_{\rm HW}=1+RV
\tag{2.8}
$$

obeys

$$
P_{\rm HW}^2=P_{\rm HW},
\qquad
P_{\rm HW}R=0,
\qquad
VP_{\rm HW}=0.
\tag{2.9}
$$

Thus the HW construction is a projector onto a gauge slice, not merely a
mode-by-mode choice of convenient coordinates.

## 3. Anchors and continuity

For the Brown--Henneaux sector, $h=R\zeta[h]$, equation (2.6) makes

$$
V_\perp[h]=-\zeta_\perp[h]
\tag{3.1}
$$

an identity. The nontrivial issue is properness at the anchors. The
unprojected unit-boundary normal trace contains an $e^{|u|}$ term. The
fixed-anchor projection $P_A$ cancels this growing term in both normal
components and at both endpoints. The exact parity expansion has no
intermediate $e^0$ term; the projected trace therefore has the form

$$
V_\perp[P_Ae_m]
=e^{-|u|}\left(C_m^\pm+O(e^{-2|u|})\right),
\qquad
|C_m^\pm|\leq C(1+m)^2.
\tag{3.2}
$$

The full unprojected normal-value problem is solved separately in
`moving anchors and unprojected mode space.md`. Its growing trace is a
Jacobi-homogeneous endpoint mode and is cancelled by a homogeneous correction
fixed by $q_\pm=f(\pm a)$. Thus projection is sufficient but not necessary
for existence of a proper extremal normal solver.

The later PSL audit identifies this homogeneous correction more sharply: it
is the normal-bundle restriction of the exact global AdS Killing vector
subtracted by $P_{\rm PSL}$. Hence the same HW section covers the complete
metric tangent quotient, while $P_A$ remains a genuine selected physical
subspace.

The exact coefficients are eight-periodic polynomials of degree two. Since
the physical Brown--Henneaux normalization is

$$
|c_m|=\sqrt{\frac{2G}{m(m^2-1)}}=O(m^{-3/2}),
\tag{3.3}
$$

the physical trace grows only as $m^{1/2}e^{-|u|}$. In unit-boundary
coefficients the precise conservative statement is the two-derivative map

$$
\mathsf T_\perp:\mathcal H_A^\sigma\longrightarrow
\mathcal V_A^{\sigma-2},
\qquad
\|v\|_{\mathcal V_A^{\sigma-2}}^2
:=\sum_m(1+m^2)^{\sigma-2}|v_m|^2.
\tag{3.4}
$$

Indeed $|v_m|\leq C(1+m)^2|b_m|$, so

$$
\|\mathsf T_\perp f\|_{\mathcal V_A^{\sigma-2}}
\leq C\|f\|_{H^\sigma}.
\tag{3.5}
$$

The physical-coefficient version is equivalent because
$b_m=c_ma_m$ and $|c_m|=O(m^{-3/2})$. The remaining prescribed normal jets
are finite-order trace data and are imposed on each smooth finite spectral
block. Their infinite-sum extension is the coefficient Sobolev collar of H60.
Its complete pulled-back sector forms equal the fixed-section forms at every
finite regulator. A stronger smooth infinite-mode collar is not inferred from
(3.5).

There is no Jacobi zero mode: $J$ has no $L^2(\mathbb R)$ kernel. The
homogeneous $e^{\pm u}$ solutions are excluded by the proper endpoint class.
Thus (2.4) is unique. For compact BTZ, the corresponding periodic eigenvalues
$1+n^2/r_+^2$ are also strictly positive.

## 4. Global finite-block extension

For every finite $V_M$, prescribe the cut value (2.4), the normal jets (2.5),
and the chosen tangential convention in a Fermi tubular neighborhood. A
finite Whitney/Fermi extension gives a smooth vector there. Multiply it by a
radial taper which equals one on the inner core and zero before the outer AdS
boundary. The endpoint coefficients (3.2) make this vector proper at both
anchors, while the taper preserves the outer Brown--Henneaux state.

This produces a genuine global $v_M[h]$ for every finite block. Along the
diagonal regulators of `projected spectral edge completion.md`, its cut data
converge in the weighted norm (3.4). If two off-cut Fermi extensions differ by
$W$, the corresponding extended tangents differ by $(RW,-W)$. Therefore
$\Delta_Xg$ and every complete pulled-back action sector are exactly unchanged
before the diagonal limit. Off-cut independence is proved; the remaining
question is convergence of the fixed-section finite-wall anchor and
outer-joint sectors, not a separate collar-continuity assumption.

## 5. Field-dependent cocycle

Let $E(x,y)$ be the symmetric polarization of project canonical energy and
$E(x)=E(x,x)$. Define

$$
\widehat E[h]:=E(P_{\rm HW}h),
\tag{5.1}
$$

and

$$
\mathfrak D[h]
:=E(P_{\rm HW}h)-E(h).
\tag{5.2}
$$

Equation (5.2) is the field-dependent version of the fixed-vector descent:

$$
\mathfrak D[h]
=\int_{\gamma_A}\Upsilon_{\rm p}[h,V[h]].
\tag{5.3}
$$

The value formula is unchanged by field dependence, but its variation is not.
Because $V$ is linear,

$$
\delta V[h]=V[\delta h].
\tag{5.4}
$$

Therefore

$$
\boxed{
\delta\widehat E[h]
=2E\!\left(P_{\rm HW}h,
\delta h+R V[\delta h]\right).
}
\tag{5.5}
$$

Freezing $V[h]$ would retain only $2E(P_{\rm HW}h,\delta h)$ and miss

$$
2E(P_{\rm HW}h,RV[\delta h]).
\tag{5.6}
$$

The polarized completion is

$$
\begin{aligned}
\mathfrak D[h_1,h_2]
={}&E(h_1,RV[h_2])+E(RV[h_1],h_2)\\
&+E(RV[h_1],RV[h_2]).
\end{aligned}
\tag{5.7}
$$

Under $h\mapsto h+Rw$, equation (2.7) gives
$V[h+Rw]=V[h]-w$ and

$$
P_{\rm HW}(h+Rw)=P_{\rm HW}h.
\tag{5.8}
$$

Thus $\widehat E$ is gauge invariant on the selected orbit. This is the
field-dependent section cocycle; no modified Lie bracket is needed for this
linear quadratic statement. A nonlinear extension would require the
field-dependent bracket and the radial homotopy potential of the edge
two-form.

## 6. Relation to the moving embedding

The fixed-anchor tangent $(h,0)$ and the HW tangent

$$
(P_{\rm HW}h,-V[h])
\tag{6.1}
$$

differ by the exact extended-space gauge degeneracy

$$
(RV[h],-V[h]).
\tag{6.2}
$$

Hence the fixed-anchor projected phase space is a section of the
moving-embedding extended phase space. The metric-sector change between the
two sections is (5.3), while the embedding/edge work is its negative. This is
the precise classical sense in which the finite-action $\Upsilon_{\rm p}$ is
the generating cocycle for changing from the fixed section to the HW section.

## Verification status

**Verified:** Jacobi invertibility; selected-mode proper solution; projected
symbolic-frequency cancellation of the $e^{|u|}$ normal trace and the exact
absence of an intermediate constant term;
degree-two leading endpoint coefficients; fixed-frequency checks of the
closed endpoint jet at $m=2,3,6$; projector identities (2.9); the complete
field-dependent variation (5.5)--(5.7); and gauge invariance (5.8).
`ads_rindler_symbolic_hw_trace_check.wl` passes $6/6$ exact tests and
`field_dependent_hw_cocycle_check.wl` passes $6/6$ exact algebraic tests.
`weak_hw_collar_pullback_check.wl` passes $7/7$ tests for the two-jet
extension, coefficient-space bound, sectorwise pullback equality, and off-cut
independence.

**Assumptions:** vacuum linearized Brown--Henneaux sector; the selected proper
vertical complement and fixed tangential cut convention; fixed $t=0$
anchors; corrected bulk representatives; finite-block smooth Fermi
extensions; and, for continuum use, the linked regulator class of H59.

**Not verified:** realization of the weak tangent collar by a smooth
infinite-mode embedding; a nonlinear HW section and field-dependent bracket;
or invariance of the single $t=0$ fixed-anchor section under time translation.
H59a--H60 instead prove a symplectomorphism between the transported
fixed-anchor sections; H61 transports the $P_{\rm PSL}$ representative and
extends this to the full Brown--Henneaux metric quotient. Matter and quantum
edge/crossed-product constructions lie outside the declared scope.
