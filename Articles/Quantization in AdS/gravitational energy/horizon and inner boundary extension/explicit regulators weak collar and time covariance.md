# Explicit Regulators, Weak HW Collar, and Time Covariance

## 1. Claim

This note proves every fixed-section stratum of an explicit conservative
regulator schedule: projected transition, complete finite-wall compensated
kernel, raw wall/joint tails, raw and compensated outer source/corner terms,
and compensated outer joint. It also proves the sharp Sobolev obstruction for
point-anchor momentum, constructs the coefficient Sobolev HW collar, and
states the exact time-conjugation algebra. For the **complete pulled-back
action**, collar continuity and off-cut-extension independence reduce exactly
to the corresponding fixed-section CPS statements; they are not an additional
estimate involving products of weak second normal jets. The complete
relative-action stratum inventory then gives vanishing total flux and the
time-fibre symplectomorphism.

The results use the same finite-action CPS and Brown--Henneaux conventions as
`../article/`. They do not assert a smooth infinite-mode Gaussian-null vector
when the input has only Sobolev regularity.

## 2. Proved projected transition estimate

Put $q=\cos2\phi$, $s=r\sqrt q$, and $\lambda=L^2$. The exact ambient
point-jet calculation of H51 proves for all projected real-sector pairings

$$
B_{\lambda,mn}^{AB}(q)
=\frac{\sum_{a=1}^4\lambda^a
q^{\nu_a}(1-q)\widehat N_{a,mn}^{AB}(q)}
{64\sqrt{1-q}\,(1+q)^{\rho_{AB}+(m+n)/2}
(q-1)(1+\lambda q)^4},
\tag{2.1}
$$

where $(\nu_1,\nu_2,\nu_3,\nu_4)=(3,2,4,6)$ and the remaining frequency
degree is at most six. The centre factor $1-q$ leaves the integrable weight
$(1-q)^{-1/2}$. Splitting the half-geodesic at $q=1/2$ and using

$$
0\leq1-\left(\frac z{1+z}\right)^4\leq\frac4{1+z}
\tag{2.2}
$$

gives, with one constant independent of $m,n,L$,

$$
\boxed{
\|B^{(L)}_{mn}-B^{\rm local}_{mn}\|_{L^1(\gamma_A)}
\leq \frac{C(1+m+n)^6}{L^2}.
}
\tag{2.3}
$$

There is no endpoint finite-part subtraction in (2.3): the projected
transition distribution and bulk remainder are both zero. At the independent
ordinary outer cutoff, the elementary radial factor satisfies

$$
0\leq1-\left(1+R^{-2}\right)^{-m/2}
\leq\frac{m}{2R^2},
\tag{2.4}
$$

The direct finite-action calculation is stronger for the Brown--York source
curvature itself. On every finite cylinder, coefficientwise in two symbolic
frequencies,

$$
\delta_m\Pi_R^{ab}\,h_{n,ab}
-\delta_n\Pi_R^{ab}\,h_{m,ab}=0.
\tag{2.4a}
$$

Thus the ordinary outer Brown--York variational-flux entry has zero operator
error on this tower; the former degree-eight $R^{-2}$ entry was only a
conservative target. Direct variation of the separate article corner
subtraction gives

$$
|\delta C_{\Gamma_R}(h_m,h_n)|
\leq C(1+m+n)^6R^{-6}.
\tag{2.4b}
$$

This uniform bound also controls the shrinking anchor strips. The compensated
profile requires a separate comparison.  That comparison is now exact for
the outer source and article corner.  With

$$
z=R^{-2},
\qquad
w=L^2R^{-2},
$$

the compensated renormalized Brown--York source curvature still vanishes
coefficientwise, while the compensated-minus-raw Cauchy-corner kernel has
the two-scale form

$$
wA_{mn}(z,w)+\frac{w^2}{z}B_{mn}(z,w),
$$

where $A_{mn}$ and $B_{mn}$ are uniformly bounded on
$0\leq z,w\leq1$ and have frequency degree at most six.  Therefore

$$
\boxed{
|\mathcal F^{C,\mathrm{comp}}_{mn}
-\mathcal F^{C,\mathrm{raw}}_{mn}|
\leq C(1+m+n)^6
\left(\frac{L^2}{R^2}+\frac{L^4}{R^2}\right).
}
\tag{2.4c}
$$

The $L^4/R^2$ term corrects the former single-scale
$L^2/R^2$ target.  It comes from the two real frequency coefficients with
powers $(0,1)$; the complete compensated outer Brown--York source does not
produce such a term.  The moving Hayward joint is audited independently.

For $s>1/2$, Cauchy--Schwarz gives

$$
\sum_m|b_m|\leq C_s\|f\|_{H^s}.
\tag{2.5}
$$

Therefore a matrix-entry bound $C(1+m+n)^D\rho$ on the block $m,n\leq M$
gives the operator estimate

$$
\|K_{M,\rho}\|_{H^s\times H^s}
\leq C_s M^D\rho.
\tag{2.6}
$$

Applying (2.6) to the proved $L^1$ estimate (2.3) with $D=6$ gives

$$
\boxed{
\|B_{M,L}-B_M^{\rm local}\|_{H^s\times H^s}
\leq C_s\frac{M^6}{L^2}.
}
\tag{2.7}
$$

Sections 2.2--2.5 below prove the analogous mode-uniform estimates for every
other fixed-section boundary stratum.

The complete far-wall kernel supplies a second unconditional entry.  With
$y=\tanh(\epsilon/2)$, exact coefficientwise factorization gives

$$
|\mathcal F^{\rm wall}_{mn}(q,y)|
\leq C(1+m+n)^7(yq^5+q^6)
$$

on a fixed endpoint rectangle.  At the proper switching radius $r=L$, the
exact wall embedding gives $q_L\leq C/L$.  Since
$\mathrm du=-\mathrm dq/q$, both endpoint tails obey

$$
\boxed{
\left|\int_{r\geq L}\mathcal F^{\rm wall}_{mn}\,\mathrm du\right|
\leq C(1+m+n)^7
\left(\frac y{L^5}+\frac1{L^6}\right).
}
\tag{2.8}
$$

Consequently the adapted block is bounded by
$C_sM^7(yL^{-5}+L^{-6})$.  The $L^{-6}$ term is essential: the earlier
finite $q$-jet controlled the $yq^5$ coefficient but did not license a
uniform $yq^5$ bound for the complete tail.

The complete raw Hayward area--angle kernel is even simpler:

$$
|\mathcal F^J_{mn}(q,y)|
\leq C(1+m+n)^6yq^5.
\tag{2.9}
$$

At the outer cylinder $q_R\leq C/R$, hence its block contribution is
$C_sM^6yR^{-5}$.  The compensated proper-profile mismatch is now also
uniform.  Put $z=q_R/y$ and compactify the wall variable by
$v=y/(1-y)$.  All sixteen same/mixed representative coefficients satisfy

$$
\mathcal F^{J,\mathrm{comp}}_{mn}
-\mathcal F^{J,\mathrm{raw}}_{mn}
=z^2\mathcal R^J_{mn}(v,z),
$$

where $mathcal R^J_{mn}$ is bounded on $0\leq v,z\leq1$ and has
frequency degree at most six.  Since the outer intersection obeys
$q_R\leq C/R$, the regime $R/L\to\infty$ gives
$z\leq CL/R$ and therefore

$$
\boxed{
|\mathcal F^{J,\mathrm{comp}}_{mn}
-\mathcal F^{J,\mathrm{raw}}_{mn}|
\leq C(1+m+n)^6\frac{L^2}{R^2}.
}
\tag{2.9a}
$$

For the explicit schedule $R=L^3$ and $L\geq2$, the exact endpoint
inequality even gives $q_R/y\leq1$ directly.

The complete finite-wall compensated kernel is now uniform on the exact
diagonal $y=1/(2L)$.  Put $t=L^{-2}$ and $x=Lq$.  After the same/mixed
antisymmetries reduce the full coefficient table to twenty-five
representatives, every coefficient obeys

$$
K_{pq}(t,x)-W_{pq}(x)=tR_{pq}(t,x).
$$

Exactly twenty-one representatives are nonzero and their maximal frequency
degree is seven.  The four nonzero entries of $W$ form the endpoint
Wronskian.  The fixed-anchor projection removes it identically.  Every real
or imaginary $R_{pq}$ begins at least as $x^3$.  On
$1\leq x\leq t^{-1/2}$ the substitution
$t^ax^b\leq x^{b-2a}$ leaves at least two denominator powers; all normalized
denominator coefficients are nonnegative.  Hence $R_{pq}(t,x)/x$ has one
$t$-independent integrable majorant.

The exact finite-wall Brown--Henneaux phase is rational in $t$, has modulus
at most one, and its Wronskian-weighted difference from the endpoint phase
begins at least as $x^4$ with the same large-$x$ margin.  The inequality
$|z^m-1|\leq m|z-1|$ supplies the extra frequency factor already included
in degree seven.  Therefore

$$
\boxed{
\left|\int_{\mathcal H_\epsilon}
\mathcal F^{\rm comp}_{mn}\,\mathrm du\right|
\leq C(1+m+n)^7L^{-2},
\qquad
\tanh\frac\epsilon2=\frac1{2L}.
}
\tag{2.10}
$$

At $y=0$ the sharper frequency degree is six, and the selected
$P_A\cos3/P_A\cos2$ coefficient has integral $-59\sqrt2/3$ after
multiplication by $L^2$.  The finite-wall theorem replaces the former
$L^{-4}$ fixed-point guess and includes the complete wall geometry, finite
phase, and $r\sim L$ profile layer.  Consequently the old separately listed
``finite-wall anchor shift'' is not an independent sector; retaining it
would double count part of (2.10).

## 3. An explicit schedule

Choose

$$
\boxed{
L(M)=M^{10},
\qquad
\tanh\frac{\epsilon(M)}2=\frac1{2M^{10}},
\qquad
\epsilon(M)=2\operatorname{artanh}\frac1{2M^{10}},
\qquad
R(M)=M^{30}.
}
\tag{3.1}
$$

Thus $y=\tanh(\epsilon/2)=1/(2L)$ and
$\sinh\epsilon=4L/(4L^2-1)$ exactly. The conservative operator errors then
obey

$$
\begin{array}{c|c}
\text{sector}&\text{upper bound}\\
\hline
\text{proper transition}&M^6/L^2=M^{-14}\\
\text{far wall}&M^7(\tanh(\epsilon/2)L^{-5}+L^{-6})=O(M^{-53})\\
\text{raw far moving joint}&M^6\tanh(\epsilon/2)R^{-5}=O(M^{-154})\\
\text{finite-wall compensated wall}&M^7/L^2=M^{-13}\\
\text{outer Brown--York source curvature}&0\\
\text{outer Cauchy corner}&M^6/R^6=M^{-174}\\
\text{compensated outer Cauchy-corner mismatch}
&M^6(L^2/R^2+L^4/R^2)=M^{-34}+M^{-14}\\
\text{compensated outer Hayward mismatch}&M^6L^2/R^2=M^{-34}.
\end{array}
\tag{3.2}
$$

In particular,

$$
\frac{M}{L^2}=M^{-19},
\qquad
\frac LR=M^{-20}.
\tag{3.3}
$$

The fused-horizon calibration has the sharper $M^6/L^2=M^{-14}$ entry.
All fixed-section regulator entries in (3.2) are now proved with constants
independent of modes and cutoffs.  Thus (3.1) is an explicit admissible
schedule for the complete projected fixed-section CPS form.  The overall
rate is conservatively $O(M^{-13})$.  More generally, any schedule with
$y=1/(2L)$ for which the displayed operator errors vanish has the same
limit: the difference between two such regulated forms is bounded by the
sum of their error majorants.  This is schedule independence inside the
proved admissible class, not an assertion about arbitrary unrelated
$\epsilon(L)$ profiles.

The schedule does not yet define an unprojected theorem:
that sector first requires the complete finite-$R$
inner/outer/joint/asymptotic-frame kernel. The new majorant regression proves
the transition exponent, while the complete rational wall and joint kernels
prove the far-wall, finite-wall, raw joint, compensated joint, and outer
corner exponents.

## 4. Sharp point-anchor regularity obstruction

The endpoint momentum $p_\pm$ contains the trace $f''(\pm a)$. The squared
operator norm of this trace on the Fourier block $2\leq m\leq M$, relative
to $H^s$, is equivalent to

$$
N_s(M)^2
=\sum_{m=2}^M m^{4-2s}.
\tag{4.1}
$$

Hence

$$
\sup_MN_s(M)<\infty
\quad\Longleftrightarrow\quad
s>\frac52.
\tag{4.2}
$$

At the endpoint,

$$
N_{5/2}(M)^2=H_M-1\sim\log M,
\tag{4.3}
$$

while at the physical Brown--Henneaux boundary regularity $s=3/2$,

$$
N_{3/2}(M)^2
=\frac{M(M+1)}2-1.
\tag{4.4}
$$

Therefore the $s>5/2$ threshold is sharp for the separated point-anchor
cotangent chart (3.2)--(3.3) of H57.  H61 later shows that this chart is
representative dependent and is not a physical moving-anchor phase space;
H62 supplies the additional cancellation in the combined geometric form and
closes it to $H^2$, but not to $H^{3/2}$.  The present finite-dimensional
point-anchor chart itself cannot be used continuously at either lower
threshold.

This obstruction does not by itself prove that the combined bilinear form is
unbounded at $H^{3/2}$; H62 proves that separately by an interior high-
frequency packet.  Here it proves only that the separated point-anchor chart
is unbounded there.

## 5. Regulator-independent weak HW collar

Let $\mathcal J_Ah$ collect the extremal normal value (14.7) of
`expanded formulas.md`, the selected tangential convention, and the finite
normal jets required by the strong finite-block HW condition. Give these
data the graph norm

$$
\|\mathcal J_Ah\|_{\mathscr J^s}^2
=\|V_{A,\perp}[h]\|_{\mathcal V_A^{s-2}}^2
+\sum_{|I|\leq2}\|j_I[h]\|_{\mathcal V_A^{s-3-|I|}}^2.
\tag{5.1}
$$

For every finite spectral block, choose fixed Fermi normal coordinates
$(u,y^0,y^1)$ on a collar of width $\rho_0$, independent of $M$, and a
fixed bump $\chi(y)$ equal to one for $|y|<\rho_0/3$. The linear extension

$$
\operatorname{Ext}(j)(u,y)
=\chi(y)\left[j_0(u)+y^aj_a(u)
+\frac12y^ay^bj_{ab}(u)\right]
\tag{5.2}
$$

matches every jet included in (5.1). The polynomial is injective on its six
normal-jet coefficients. Define the independent coefficient collar

$$
\mathscr C_{\rho_0}^s
:=\operatorname{Ext}(\mathscr J^s),
\qquad
\|\operatorname{Ext}(j)\|_{\mathscr C_{\rho_0}^s}
:=\|j\|_{\mathscr J^s}.
\tag{5.3}
$$

It has the continuous realization

$$
\mathscr C_{\rho_0}^s\hookrightarrow
H^{s-5}\!\left(\mathbb R_u;
H^2(B_{\rho_0};N\gamma_A)\right).
\tag{5.4}
$$

For a normal jet of order $r\leq2$, the target/source Fourier-weight ratio is
$(1+m^2)^{r-2}\leq1$; for the distinguished extremal normal value it is
$(1+m^2)^{-3}$. Thus (5.2) is bounded, contains every second normal jet, and
imposes the strong HW conditions in the coefficient-trace topology. At finite
block it is smooth. The projected endpoint estimate (3.2) of
`field-dependent Hollands-Wald section.md` makes it proper at both anchors.

There is no independent ``weak-jet product'' to define. Let
$RV=\mathcal L_VG$. In the HW section the metric and embedding tangents are

$$
(P_{\rm HW}h,-V[h])=(h+RV[h],-V[h]),
$$

and therefore, before removing any regulator,

$$
\boxed{
\Delta_Xg(P_{\rm HW}h,-V[h])=h.
}
\tag{5.5}
$$

Every bulk, GHY, counterterm, Harlow--Wu, Hayward, anchor, and embedding term
of the complete pulled-back action is a functional of the pulled-back fields.
Consequently, sector by sector,

$$
\Theta_X^{(r)}[P_{\rm HW}h,-V[h]]=\Theta^{(r)}[h],
\qquad
\Omega_X^{(r)}((P_{\rm HW}h_1,-V[h_1]),
(P_{\rm HW}h_2,-V[h_2]))=\Omega^{(r)}(h_1,h_2).
\tag{5.6}
$$

If two off-cut extensions differ by $W$ while having the same prescribed cut
data, their representatives differ by $(RW,-W)$ and (5.5)--(5.6) are
unchanged. This proves off-cut-extension independence and regulator
compatibility for the HW **section change**: the cancellation occurs at every
finite $(M,L,\epsilon,R)$, before a Sobolev or regulator limit. It relies on
varying every shape, normal, endpoint, and joint term. It would be false for
the shortcut of inserting $\Delta_Xg$ into an incomplete fixed-domain
formula.

Thus continuity on the coefficient collar is inherited exactly from the
fixed-section sector forms. It adds no independent collar hypothesis; the
finite-wall, outer-corner, and outer-joint estimates are proved in
Sections 2.2--2.5.
This weak collar is deliberately not a $C^\infty$ infinite-mode embedding;
at finite $s$, demanding one would contradict the input regularity.

## 6. Time and slice covariance

For the chosen left-moving phase convention, let

$$
(U_tf)(\phi)=f(\phi-t).
\tag{6.1}
$$

The endpoint traces on the boundary-time-$t$ interval are

$$
q_{\pm,t}[f]=q_\pm[U_tf]=f(\pm a-t),
\qquad
p_{\pm,t}[f]=p_\pm[U_tf].
\tag{6.2}
$$

The fixed-anchor projection acting on initial data is

$$
\boxed{
P_{A,t}=U_{-t}P_AU_t.
}
\tag{6.3}
$$

It obeys

$$
P_{A,t}^2=P_{A,t},
\qquad
q_{\pm,t}[P_{A,t}f]=0,
\qquad
P_{A,t+\tau}=U_{-\tau}P_{A,t}U_\tau.
\tag{6.4}
$$

The anchor anomaly and work retain exactly the same form with
$(q_\pm,p_\pm)\mapsto(q_{\pm,t},p_{\pm,t})$. The HW solver and weak collar
are transported by the global AdS time isometry in the same way.

Thus a single fixed-$t=0$ projected subspace is not invariant under time
evolution. The correct statement is covariance of the family

$$
\{\mathcal P_{A_t},P_{A,t},V_{A,t},\Theta_{{\rm anch},t}\}_{t\in\mathbb R}.
\tag{6.5}
$$

For two Cauchy slices bounding a slab, the finite-action CPS identity gives

$$
\Omega_{\Sigma_2}-\Omega_{\Sigma_1}
=-\int_{\Gamma_\infty\cup\mathcal H_\epsilon}\omega_{\rm total}.
\tag{6.6}
$$

Here $\omega_{\rm total}$ is the relative current of the same action as
`../article/`: on each timelike face the bulk pullback plus GHY/counterterm
variation reduces to the Brown--York source curvature, the article
Harlow--Wu descent supplies the Cauchy-corner curvature, and a non-orthogonal
wall intersection supplies the Hayward area--angle curvature.  Pulling the
action back by the moving embedding adds the gauge-core/cross term of H54;
its only uncancelled proper-profile part is the H51 transition kernel.  This
list exhausts the codimension-one and codimension-two strata of the regulated
AdS--Rindler slab.

For adapted data in the $M$ block, the absolute total flux is therefore
bounded by

$$
\begin{aligned}
|\mathfrak F_{M,L,\epsilon,R}|
\leq C_s\bigg[&\frac{M^7}{L^2}
+\frac{M^6}{L^2}
+M^7\left(\frac{y}{L^5}+\frac1{L^6}\right)
+M^6yR^{-5}\\
&+M^6\frac{L^2}{R^2}
+M^6\left(\frac{L^2}{R^2}+\frac{L^4}{R^2}\right)
+M^6R^{-6}\bigg].
\end{aligned}
\tag{6.7}
$$

The first two terms are respectively the complete finite-wall source and
the action-derived proper-transition remainder.  The remaining terms are the
raw wall tail (redundant but retained as a cross-check), raw/compensated
Hayward pieces, compensated article corner, and raw article corner; the
outer Brown--York source is exactly zero.  Every term in (6.7) vanishes on
(3.1), and the same is true for any schedule in the proved admissible class.
The Brown--Henneaux time phases have unit modulus, so the bound is uniform
under finite global-time transport.  Consequently

$$
\boxed{
\Omega_{A_{t_2}}(U_{t_2-t_1}h_1,U_{t_2-t_1}h_2)
=\Omega_{A_{t_1}}(h_1,h_2).
}
\tag{6.8}
$$

Thus $U_t$ is a symplectomorphism between the time-dependent fixed-anchor
sections. Inside each section the fixed and HW representatives differ by the
proper extended degeneracy $(RV,-V)$. Applying the transported
$P_{\rm PSL}$ reducibility section gives the same statement on the complete
Brown--Henneaux metric quotient. Time translation itself remains a physical
isometry, not a gauge transformation.

## Verification status

**Verified:** the exact projected point-jet factorization; the uniform
$L^1$ estimate (2.3); the zero projected transition distribution and bulk
remainder; the block estimate (2.7); the transition schedule exponent; the
complete finite-wall compensated estimate (2.10); the complete far-wall and
raw far-joint bounds; the compensated outer-joint bound (2.9a); exact zero
raw and compensated finite-cylinder outer Brown--York source curvature; the
raw $R^{-6}$ and compensated two-scale outer Cauchy-corner estimates; every
schedule exponent in (3.2); schedule independence inside the proved
$y=1/(2L)$ admissible class; the no-omitted-stratum relative-flux bound
(6.7), slice independence, and the time-fibre symplectomorphism (6.8); the
sharp second-derivative trace
threshold; boundedness of the fixed polynomial/bump extension into the
independent coefficient space (5.3), exact finite-regulator equality (5.5),
sectorwise off-cut independence (5.6), the conjugation algebra of the
time-dependent endpoint traces and projections, and the PSL extension to the
full metric quotient. `ads_rindler_transition_point_jet_check.wl`,
`ads_rindler_transition_uniform_majorant_check.wl`,
`ads_rindler_explicit_schedule_check.wl`,
`ads_rindler_compensated_wall_finite_eta_check.wl`,
`ads_rindler_compensated_outer_source_mismatch_check.wl`,
`ads_rindler_compensated_joint_outer_mismatch_check.wl`,
`weak_hw_collar_pullback_check.wl`, and
`ads_rindler_time_covariant_anchor_check.wl` provide the exact regressions.

**Assumptions:** corrected compactified Brown--Henneaux lifts; the declared
$y=1/(2L)$ regulator class; vacuum dynamics; and one compatible fixed
finite-width Fermi chart.
The rank-21 finite-part reconstruction is not used as a subtraction theorem.

**Not verified:** optimal exponents; a point-anchor chart at $H^{3/2}$,
which is obstructed by (4.1); realization of the weak tangent collar by a
$C^\infty$ infinite-mode embedding; or nonlinear time evolution. The
combined canonical-energy form has the separate optimal $H^2$ closure of
H62. No action-derived asymptotic anchor momentum is required: H61 shows that
the apparent endpoint coefficient is a global-Killing representative choice.
