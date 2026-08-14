# Moving Anchors and the Unprojected Brown--Henneaux Space

## 1. Verdict and claim tier

**Correction after the PSL reducibility audit.** The earlier interpretation
of $q_\pm=f(\pm a)$ as physical endpoint coordinates was incorrect.
Frequency-zero/one Brown--Henneaux vectors are exact global AdS Killing
fields. Adding them changes $q_\pm$ but leaves
$h=\mathcal L_\zeta G$ unchanged. Hence $q_\pm$ do not descend to the metric
tangent quotient and cannot label physical affine fibres without first
choosing a reducibility representative.

The correct endpoint-fixing section is

$$
P_{\rm PSL}f
=f-\frac{q_++q_-}{2\cos a}\cos\phi
-\frac{q_+-q_-}{2\sin a}\sin\phi .
\tag{1.1}
$$

It fixes both endpoints and changes only exact AdS Killing data. The residual
global conformal direction is the interval modular vector $w_A$, which is
also a reducibility parameter. Therefore

$$
H^s(S^1)/\mathfrak{sl}(2,\mathbb R)
\simeq
\ker(q_+,q_-)/\operatorname{span}\{w_A\}.
\tag{1.2}
$$

Charged $m\geq2$ Brown--Henneaux transformations remain physical and are not
quotiented. A negative-Virasoro boundary frame would be required only to
gauge the **full** asymptotic symmetry group; it is not needed for the
linearized classical metric quotient or H53.

This note retains the earlier endpoint finite-part algebra as a historical
representative calculation, but its physical interpretation is superseded by
the PSL section above and the positive Bañados form. It uses the finite-action
CPS conventions of `../article/` throughout.

## 2. Endpoint coefficient splitting (physical fibration withdrawn)

Let $a=\pi/4$, let $s>1/2$, and define

$$
q_+[f]=f(a),
\qquad
q_-[f]=f(-a).
\tag{2.1}
$$

The trace theorem makes

$$
E=(q_+,q_-):H^s(S^1)\longrightarrow\mathbb R^2
\tag{2.2}
$$

a bounded surjection. Its zero fibre is the fixed-anchor space

$$
\mathcal H_A^s=\ker E.
\tag{2.3}
$$

The existing bounded projection is

$$
(P_Af)(\phi)
=f(\phi)
+\frac{q_+[f]+q_-[f]}2\cos4\phi
-\frac{q_+[f]-q_-[f]}2\sin2\phi.
\tag{2.4}
$$

Hence every unprojected profile has the unique continuous splitting

$$
\boxed{
f=P_Af
-\frac{q_+[f]+q_-[f]}2\cos4\phi
+\frac{q_+[f]-q_-[f]}2\sin2\phi .
}
\tag{2.5}
$$

Therefore

$$
H^s(S^1)
\simeq
\mathcal H_A^s\oplus\mathbb R^2,
\tag{2.6}
$$

and the affine fibre with prescribed endpoint displacement
$Q=(Q_+,Q_-)$ is

$$
\mathcal H_{A,Q}^s
=\{f\in H^s:q_\pm[f]=Q_\pm\}.
\tag{2.7}
$$

At the conformal boundary the unit-boundary Brown--Henneaux vector obeys, on
the $t=0$ cut,

$$
\zeta^t\longrightarrow-f(\phi),
\qquad
\zeta^\phi\longrightarrow f(\phi).
\tag{2.8}
$$

Thus $q_\pm$ are the two null endpoint-displacement amplitudes of the
**chosen generating vector**,
$(\delta t_\pm,\delta\phi_\pm)=(-q_\pm,q_\pm)$. Equation (2.6) is a valid
coefficient-space splitting, but not a physical phase-space fibration:
global Killing reducibility changes $q_\pm$ without changing the metric
tangent. The invariant statement is the quotient/section isomorphism (1.2).

## 3. Exact factorization of the finite-part functional

The analytic finite-part values reconstructed from the proper-completion
calculation give

$$
\begin{aligned}
\mathcal A[f]
=-\frac16\Big[&
\sum_{\sigma=\pm}f(\sigma a)
\big(-f''(\sigma a)-f(\sigma a)\big)\\
&+f(a)f'(a)-f(-a)f'(-a)
\Big].
\end{aligned}
\tag{3.1}
$$

Define the oriented endpoint differential traces

$$
p_+[f]
=\frac16\big[-f''(a)-f(a)+f'(a)\big],
\tag{3.2}
$$

$$
p_-[f]
=\frac16\big[-f''(-a)-f(-a)-f'(-a)\big].
\tag{3.3}
$$

Then this functional has the exact factorization

$$
\boxed{
\mathcal A[f]
=-q_+[f]p_+[f]-q_-[f]p_-[f].
}
\tag{3.4}
$$

Its symmetric polarization is

$$
\boxed{
\mathcal A[f,g]
=-\frac12\sum_{\alpha=\pm}
\left(q_\alpha[f]p_\alpha[g]
+q_\alpha[g]p_\alpha[f]\right).
}
\tag{3.5}
$$

The traces $p_\pm$ are continuous on $H^s(S^1)$ precisely in the standard
trace range $s>5/2$. Thus (3.4)--(3.5), first reconstructed on finite
trigonometric polynomials, extend continuously to the same sufficient
Sobolev range as H51--H53. The map

$$
T_{\rm anch}=(q_+,q_-,p_+,p_-):H^s(S^1)\to\mathbb R^4
\tag{3.6}
$$

is surjective: its restriction to
$\{\cos2\phi,\sin2\phi,\cos3\phi,\sin3\phi\}$ already has rank four.
This proves that the two $p$-traces are not functions of $q_\pm$ alone.

For the unprojected mode,

$$
\mathcal A[\cos3\phi]=-\frac{11}{6},
\tag{3.7}
$$

reproducing the analytic finite-part mismatch. On the projected fibre
$q_\pm=0$, equations (3.4)--(3.5) vanish algebraically.

This finite-part algebra is representative-dependent. A direct
two-frequency calculation in the unfixed representative gives, for example,

$$
B_{34}^{\cos\cos}(L,\pm(a-d))
=\frac{51L^4}{16\sqrt2}\frac1d+O(d^0).
\tag{3.8}
$$

Hence the inner RT integral of that representative is logarithmically
divergent at every finite $L$ when the anchor is sent to infinity. The old
exact symbolic integrals for such pairs are analytic finite parts. This pole
does **not** define an invariant obstruction: applying $P_{\rm PSL}$ removes
it by adding an exact background Killing vector, without changing
$h=\mathcal L_\zeta G$. The endpoint-zero representative then belongs to the
same transition class as H51 and H59a--H60. Equations (3.1)--(3.5) therefore
record the finite part of one non-reducibility-fixed generator; they are not
a Hamiltonian on the metric tangent quotient.

## 4. Auxiliary cotangent realization (physical interpretation withdrawn)

Introduce an abstract endpoint cotangent chart

$$
\mathcal E_{\rm anch}=T^*\mathbb R^2,
\qquad
(Q_+,Q_-;P_+,P_-),
\tag{4.1}
$$

with the transition-oriented potential and curvature

$$
\Theta_{\rm anch}
=\sum_{\alpha=\pm}P_\alpha\,\delta Q_\alpha,
\qquad
\Omega_{\rm anch}
=\sum_{\alpha=\pm}\delta P_\alpha\wedge\delta Q_\alpha.
\tag{4.2}
$$

On the section

$$
Q_\alpha=q_\alpha[f],
\qquad
P_\alpha=p_\alpha[f],
\tag{4.3}
$$

its contraction with the radial coefficient-space vector $D:f\mapsto f$
is

$$
\iota_D\Theta_{\rm anch}
=\sum_{\alpha=\pm}q_\alpha[f]p_\alpha[f]
=-\mathcal A[f].
\tag{4.4}
$$

Algebraically, if one assigned the representative-dependent finite part to
an auxiliary endpoint chart and assumed

$$
\Delta_{\rm tr}^{\rm total}[f,g]
:=\lim_{R,L\to\infty}
\left(B_{L,R}^{\rm inner}+B_{L,R}^{\rm outer+joint+frame}
-B_{\rm local}\right)
=\mathcal A[f,g],
\tag{4.5}
$$

then the symmetrized anchor work

$$
W_{\rm anch}[f,g]
=\frac12\sum_{\alpha=\pm}
\left(q_\alpha[f]p_\alpha[g]
+q_\alpha[g]p_\alpha[f]\right)
\tag{4.6}
$$

obeys

$$
\boxed{
\lim_{R,L\to\infty}
\left(B_{L,R}^{\rm inner}+B_{L,R}^{\rm outer+joint+frame}\right)
+W_{\rm anch}[f,g]
=B_{\rm local}(f,g).
}
\tag{4.7}
$$

Equation (4.7) would follow. This is only a realization of the coefficient
algebra. It is no longer a target physical theorem, because $q_\pm$ and
$p_\pm$ do not descend through the global-Killing reducibility relation.

It does not yet prove that (4.2) is the pullback of the complete asymptotic
anchor action. The symmetric work (4.6) fixes only the radial contraction of
a potential. A scalar generating function can change that work without
changing a symplectic curvature, while the antisymmetric pullback

$$
\sum_{\alpha=\pm}\delta p_\alpha\wedge\delta q_\alpha
\tag{4.8}
$$

would have to be obtained from the Harlow--Wu, Hayward, outer Brown--York,
and moving-intersection terms before such a chart could be physical. The PSL
audit shows that no such chart is required for the linear classical metric
theorem: the correct operation is the background-reducibility section
(1.1), not the addition of a compensating physical canonical pair.

## 5. Physical charged modes versus the PSL reducibility section

The source Brown--Henneaux theory keeps the charged $m\geq2$ transformations
as boundary-graviton data. They must not be quotiented, and merely moving an
entangling-surface endpoint does not make them null. The frequency-zero/one
sector is different: its bulk vectors are exact global AdS Killing fields,
so it is already a reducibility kernel of the map from generators to metric
perturbations.

Consequently the endpoint-zero PSL section is a legitimate section of the
**generator-to-metric reducibility quotient**:

$$
H^s(S^1)/\mathfrak{sl}(2,\mathbb R)
\simeq
\ker(q_+,q_-)/\operatorname{span}\{w_A\}.
\tag{5.1}
$$

This statement must be distinguished from the spectral projector $P_A$.
The latter adds $\cos4\phi$ and $\sin2\phi$, which are charged
Brown--Henneaux modes and change $h$. Thus $P_AH^s$ is a genuine selected
physical subspace, whereas $P_{\rm PSL}$ is a representative choice that
covers the complete metric tangent quotient.

A negative-Virasoro boundary frame would be needed only in a different
theory that gauges the full asymptotic Virasoro group. The present classical
linearized theorem neither makes that quotient nor needs that extra frame.

## 6. Full Brown--Henneaux quotient extension of H53

For any Brown--Henneaux generator $f$, choose
$f_0=P_{\rm PSL}f$. Then $h[f_0]=h[f]$ and $f_0(\pm a)=0$. The H51 transition
factorization, the action-derived H59a regulator estimate, the weak H52
collar, and the slice-covariant H53 identity therefore apply to this
representative. On the classical metric quotient,

$$
\boxed{
\delta^2H_\xi^\infty
=\frac{s_\xi}{2\pi}\delta^2\!\left(\frac{A}{4G}\right)
+E_{\rm can,p}(P_{\rm HW}h)
}
\tag{6.1}
$$

holds for the action/CPS domain $H^\sigma/\mathfrak{sl}(2,\mathbb R)$,
$\sigma>5/2$. Here $s_\xi$ denotes the horizon boost normalization and is
unrelated to a Sobolev exponent. Equivalently, in the separated raw chart,

$$
E_{\rm can,p}(P_{\rm HW}h)
=E_{\rm can,p}[h]+\int_{\gamma_A}\Upsilon_{\rm p}[h,V[h]].
\tag{6.2}
$$

The Bañados/Schwarzian formula then gives a unique positive closure of the
**combined** quadratic form to the endpoint-fixed ordinary $H^2$ section,
or intrinsically to its modular form domain. The two terms on the right of
(6.2) need not exist separately at $H^2$. The raw pole (3.8) is a
representative artifact before the global-Killing/HW homogeneous completion;
there is no missing physical endpoint oscillator or boundary frame.

## 7. Unprojected fixed-region extremal/HW normal solver

There is no obstruction at the level of the extremal normal value. Let
$u\to+\infty$ and $u\to-\infty$ denote the right and left anchors. The
unprojected pure-diffeomorphism normal trace has the leading form

$$
\begin{aligned}
\zeta_\perp^{(0)}
&\sim-\frac{q_+}{\sqrt2}e^u,
&
\zeta_\perp^{(1)}
&\sim-\frac{q_+}{\sqrt2}e^u,
&&u\to+\infty,\\
\zeta_\perp^{(0)}
&\sim-\frac{q_-}{\sqrt2}e^{-u},
&
\zeta_\perp^{(1)}
&\sim+\frac{q_-}{\sqrt2}e^{-u},
&&u\to-\infty.
\end{aligned}
\tag{7.1}
$$

These growing pieces lie exactly in the two-sided kernel of
$J=-D_u^2+1$. Define

$$
H^{(0)}[q]
=-\frac1{\sqrt2}\left(q_+e^u+q_-e^{-u}\right),
\tag{7.2}
$$

$$
H^{(1)}[q]
=\frac1{\sqrt2}\left(-q_+e^u+q_-e^{-u}\right).
\tag{7.3}
$$

Then $JH[q]=0$, and

$$
\boxed{
V_{A,\perp}[f]
=-\zeta_\perp[f]+H[q[f]]
}
\tag{7.4}
$$

obeys

$$
S[h[f]]+JV_{A,\perp}[f]=0
\tag{7.5}
$$

while its growing coefficients cancel at both anchors. The completed trace
starts at $O(e^{-|u|})$, with coefficients of degree at most two in the
Fourier frequency. Consequently it has the same conservative two-derivative
continuity estimate as the projected solver,

$$
\mathsf T_{A,\perp}:H^s(S^1)\longrightarrow\mathcal V_A^{s-2}.
\tag{7.6}
$$

The functions (7.2)--(7.3) are exactly the normal-bundle restriction of the
global Killing vector subtracted by $P_{\rm PSL}$. Thus (7.4) is not an
additional physical moving-anchor mode: it is the unprojected-coordinate
expression of the same reducibility section. The combined vector, rather
than either term separately, is proper at the RT anchors, and a smooth
finite-block Fermi extension is constructed as in H52.

The PSL point-jet factorization verifies that the endpoint Wronskian and its
first derivative vanish in this section. Because the complement has fixed
frequency one, the same mode-polynomial bound as H51 applies. Together with
the H59a wall/joint/outer estimates this closes the finite-action regulator
problem on the full metric quotient; no independent anchor finite part is
left to renormalize.

## Verification status

**Verified:** the coefficient splitting; the representative-dependent
factorization (3.4)--(3.5), rank-four trace algebra, and $m=3$ finite part;
the exact global-Killing character of the PSL complement; the quotient
section (5.1); the proper extremal normal solver (7.4); the PSL endpoint
point-jet factorization; the positive Bañados Hessian and its exact
$\mathfrak{sl}(2,\mathbb R)$ kernel; $H^2$ continuity, failure below $H^2$,
and noncoercivity at $H^2$. The checks are implemented in
`ads_rindler_moving_anchor_edge_check.wl`,
`ads_rindler_unprojected_hw_trace_check.wl`,
`ads_rindler_transition_point_jet_check.wl`, and
`ads_rindler_banados_positivity_check.wl`. The last script passes $17/17$;
the PSL point-jet option passes $30/30$ across both endpoints and all three
real sector pairings, while its independent source-structure mode passes
$42/42$ and confirms the uniform degree-six frequency bound.

**Assumptions:** vacuum Einstein AdS$_3$; the corrected unit-boundary
Brown--Henneaux representatives; the transition-anomaly convention of H51;
the source Dirichlet AdS boundary frame; and one chiral sector at a time,
with the second sector added orthogonally.

**Not verified and not required for the claim above:** a nonlinear quotient
by the full Virasoro group, a parametrized negative-Virasoro boundary-frame
action, finite-amplitude charts across arbitrary Bañados coadjoint orbits,
matter, or quantum JLMS. At $H^2$ only the closed combined form is asserted;
the separated finite-action corner chart remains on $H^\sigma$,
$\sigma>5/2$.
