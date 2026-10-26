# Genuine switching and the first gravitational reconstruction

## Result and precise scope

This report completes the boundary and global distribution construction of
the **first stress–scalar–scalar gravitational tree coefficient**, of order
$N^{-1}$, in the boundary-normal, logfree BF sector, with the causal TT
projection specified below. It starts from the common switched
bulk action and fixes the retarded extension before taking an adiabatic
limit. The complete boundary trace agrees with the independent CFT
Wightman distribution. The complete coefficient at two finite scalar radii
has a strong global Schwartz-distribution limit. An explicit boundary-anchored
cubic action supplies its conserved source and complete constrained response
on every finite radial interval. A dense free-CPS wave-packet domain has
vanishing infrared endpoint flux for the cross pairings required at this
order. Embedding the response into the complete global interacting Einstein
phase space remains conditional on further endpoint and domain control.

**Physical status.** The causal TT observable used here is explicitly defined
by its source adjoint. It differs from the bare retarded physical-mode
commutator by nonzero massless constraint kernels. The mathematical theorems
below apply to this specified observable; they do not establish equality of
the two prescriptions or an unconditional completion of every physical
reconstruction interface.

The order of limits proved here is

\[
\boxed{\text{source radial layers and their prescribed thin-layer limit}
\ ;\quad B\to\infty\text{ at fixed }R
\ ;\quad R\to\infty,}
\tag{1}
\]

where $\beta_B(u)=\beta(u/B)$ is the common radial vertex cutoff and
$\chi_R(X)=\chi(X/R)$ is a genuine spacetime switch. The external scalar
boundary limit can then be taken jointly with the adiabatic limit, with
independent radii. An arbitrary joint path $B=B(R)$ is not needed or asserted.

The theorem concerns a specified perturbative coefficient and observable.
It does not construct the complete interacting Hilbert-space algebra,
higher orders, or a fully nonlinear dressing. The finite-switch
curved-boundary-source response retains separate anchor and PBH data;
the radiative TT coefficient is distinguished from that source response.

## 1. Definition from the common switched action

All source normalizations, BF boundary terms and radial-layer conventions
are inherited from the original reference and the mixed Ward report.
Set $\ell=1$ in the following dimensionless radial formulas and use
$\eta=(-,+,+,+)$,

\[
s(k)=-k^2,\quad d\nu(k)=\frac{d^4k}{(2\pi)^4},\quad
\alpha=\frac{2\sqrt{10}}N,\quad C_k=\mathbf1_{V_+}(k).
\]

For the ordered product $(\widehat T_{ij},U_z,U_w)$, write the external
momenta as $(p,r,-q)$, with

\[
r=q-p+\Omega,\qquad x=s(p),\quad y=s(q),\quad t=s(r).
\]

The action has the reduced radiative vertex

\[
V_{\chi,\beta}^{TT}
=\frac1{2C_0}\int du\,d^4X\,
u\,\beta_B(u)\chi_R(X)\gamma^{ij}\partial_iU\partial_jU,
\qquad C_0=2\pi^2.
\tag{2}
\]

Its scalar variation is $\beta_B\partial_i(\chi_R\gamma^{ij}\partial_jU)$.
Its metric variation projects the complete source
$\Pi[\chi_R:\partial U\partial U:]$. In particular the gradient of the
switch is retained, and the TT projector carries the final output momentum.
For an unrestricted output this is $\Pi_{\mathrm{ret}}$: every inverse
boundary wave operator is the retarded inverse, defined by the same
upper-half-frequency boundary value as the radial response. This choice
is part of the finite-switch observable and fixes its constraint terms.

The common polynomial numerator is

\[
\mathcal N_{ij}(p;q,r)=x^2\Pi_{ij,kl}(p)q^kr^l.
\tag{3}
\]

Equation (3) always means its polynomial continuation. With
$c_A=-p\cdot A$ and $u_i(A)=xA_i-c_Ap_i$ it is

\[
\mathcal N_{ij}
=u_{(i}(q)u_{j)}(r)
-\frac{c_qc_r+xq\cdot r}{3}(x\eta_{ij}+p_ip_j).
\tag{4}
\]

It is exactly transverse and traceless, including at $s(p)=0$.
No unspecified product of a singular projector and a singular scalar
distribution is used.

Let $J_x(u)=J_0(u\sqrt x)$ on a free cone,
$J_x^{[2]}=\partial_x^2J_x=u^4f_2(u\sqrt x)/32$, and
$f_2(v)=8J_2(v)/v^2$. The complete uncut boundary kernel is

\[
\begin{aligned}
\mathcal G_{ij}=-\frac{2\alpha\pi^6}{5}\mathcal N_{ij}
\int_0^\infty u\,du\,\big[&
C_{-r}C_q\,\partial_x^2\mathscr R_p(0,u)J_y(u)J_t(u)\\
&+C_pC_q\,\mathscr R_r(0,u)J_x^{[2]}(u)J_y(u)\\
&+C_pC_r\,\mathscr R_{-q}(0,u)J_x^{[2]}(u)J_t(u)\big].
\end{aligned}
\tag{5}
\]

The three lines are the stress, middle scalar and right scalar insertions.
The physical finite-switch coefficient is
$\widehat\chi_R(\Omega)\mathcal G$. Equation (5) is first defined with the
same $\beta_B$ in all three lines; its removal is proved below. Radial mass
derivatives act on the indicated radial factor, with the other masses,
cone indicators, tensor and switch held fixed.

## 2. The canonical causal extension exists on all twelve momenta

The radial inverse is a six-dimensional causal Green kernel with two
auxiliary radial coordinates. For $X=(T,\mathbf X)$ and
$\Sigma_u=T^2-|\mathbf X|^2-u^2$, its exact inverse Fourier kernels are

\[
\mathcal F_4^{-1}\mathscr R_k(0,u)
=-\frac{\theta(T)}\pi\delta'(\Sigma_u),\qquad
\mathcal F_4^{-1}\partial_{s(k)}^2\mathscr R_k(0,u)
=-\frac{\theta(T)\theta(\Sigma_u)}{16\pi}.
\tag{6}
\]

The second identity follows by taking two squared-mass derivatives of
the six-dimensional retarded resolvent. It fixes the output-stress
extension even at zero momentum.

Pair each line of (5) with its full retarded output momentum first,
using independent $(p,r,q)$ variables. The support in (6) has $|X|_E\ge u$.
The Fourier transform of the test is Schwartz, so the output pairing
decays faster than every inverse power of $u$. The two remaining free
modes grow at most as $u^4$; polynomial momentum weights are absorbed by
a finite test seminorm. At $u\downarrow0$ the middle/right integrands are
$O(u^5[1+|\log u|])$ and the stress integrand is $O(u)$ in that seminorm.

It follows that

\[
\mathcal G_B\longrightarrow\mathcal G
\quad\text{strongly in }\mathcal S'(\mathbb R^{12}),
\qquad
\mathcal G(\lambda p,\lambda q,\lambda\Omega)=\mathcal G(p,q,\Omega).
\tag{7}
\]

The bounded family includes all $B>0$. The degree-zero identity is
inherited from $\mathcal G_B(\lambda k)=\mathcal G_{\lambda B}(k)$.
Thus the prescription, its common-origin contacts and its homogeneity
are derived from the original integral. See
[the causal corner proof](half_bps_stress_causal_corner.md).

## 3. The genuine all-null adiabatic trace

**Theorem 1.** For every real $\chi\in C_c^\infty(\mathbb R^4)$ equal to one
near zero, the canonical kernel (5) obeys

\[
\boxed{\widehat\chi_R(\Omega)\mathcal G(p,q,\Omega)
\longrightarrow (2\pi)^4\delta^4(\Omega)\,W^{\mathrm{CFT}}_{ij}(p,q)
\quad\text{strongly in }\mathcal S'(\mathbb R^{12}).}
\tag{8}
\]

The limit is independent of the plateau profile. The statement includes
outer-null and transfer-null strata, collinear intersections, either soft
outer momentum and the common origin.

### Proof structure and the role of each estimate

The proof starts with local momentum distributions; every bound uses a
fixed finite test seminorm. The following table lists the distinct
geometries rather than replacing them by a pointwise scaling argument.

| Region | Actual estimate or mechanism | Proof |
|---|---|---|
| $D>0$, including simple null faces | Analytic mass coefficients and moving-cone strip bounds | [Boundary restriction report](half_bps_stress_boundary_restriction_independent.md), §3 |
| Massive collinear transfer away from zero | Complete anomalous-chamber support is separated by a positive mass gap | [Boundary restriction report](half_bps_stress_boundary_restriction_independent.md), §§1, 3 |
| Massive zero transfer | Exact mismatch family is $C^2(\mathcal D'_r)$; its second derivative has modulus $O(\lvert d\rvert(1+\lvert\log\lvert d\rvert\rvert))$ | [Massive trace](half_bps_stress_massive_trace.md) and [independent review](half_bps_stress_massive_trace_independent.md) |
| Two nonzero collinear null legs | Fixed transverse injection is a parameter; the rescaled core is $O(R^{-2})$ in an actual distribution seminorm | [Partial-injection proof](half_bps_stress_partial_injection.md) |
| Soft stress leg, hard null scalar | Free-cone disintegration retains the $A=p^+$ measure factor; mass-band and Gram-gap bounds control the annuli | [Soft stress endpoint](half_bps_stress_soft_p_trace.md) |
| Soft right scalar, hard null stress | Separate retarded-output and free-input estimates preserve the soft cone and its $A=q^+$ factor | [Soft scalar endpoint](half_bps_stress_soft_q_trace.md) |
| $p=q=0$ | The canonical degree-zero kernel gives an $O(R^{-8})$ core and a summable $\lambda^8$ annular bound | Causal corner proof, §§5–6 |

For example, at massive zero transfer put $M=q-r$, $m^2=s(M)>0$,
$x=m^2+d$ and use its rest frame $r=(h,\mathbf v)$. Then exactly

\[
\lambda=4m^2|\mathbf v|^2-4d(mh+t)+d^2,
\qquad t=h^2-|\mathbf v|^2.
\tag{9}
\]

All anomalous timelike support has $|r|\lesssim |d|/m$. The threshold/null
intersection has a uniformly nonsingular chart in $(w,t)$, with
$w=(x-y-t)/(2\sqrt y)$. Its finite-part core has size $O(|d|)$ after the
second mass derivative. Outside it the third derivative is
$O(|r|^{-4})$, giving the logarithmic modulus. A pointwise divergence at
soft transfer is fully compatible with this distributional continuity.

At the hard all-null corner use weights $(2,2,1,1)$ for the external
normal variables $(x,y,v_\perp)$ and weight two for the minus injection.
The transverse injection is retained as a parameter. The exact map to
$(x,y,r^\mu,q^+,q_\perp)$ is regular even at $r=0$. It makes one unraised
free mass, or one unrestricted retarded output mass, available for a
rapid radial transform. The resulting parameter-valued distribution
bound is uniform in the radial cutoff. With $\epsilon=R^{-1}$ and
$\lambda=\sqrt\epsilon$, the core measure contributes $\lambda^8$,
the full tensor at worst $\lambda^{-2}$, and the remaining minus-switch
profile $\epsilon^{-1}$: the core is $O(\epsilon^2)$.
This volume factor is justified by disintegration in the transverse
parameter; a generic joint finite-order estimate alone would not supply it.

At a soft endpoint one must also retain the actual future-cone measure.
Writing the soft momentum as
$k^+=A$, $k^-=H$, $k_\perp=\sqrt{AH}\,v$, $|v|\le1$, gives
$d^4k=AH\,dA\,dH\,d^2v/2$.
The two-mass estimates differentiate no soft variable, so this positive
factor survives as a genuine bound, including $A=0$. The detailed endpoint
proofs keep the finite-cutoff estimates separate from cancellations that
hold only after its removal.

The mass-raising prescription contains explicit normal jets. If
$H_\sigma(t;x,y)$ is the scalar radial seed and
$R_\sigma=(t-y+i0\sigma)^{-1}$, then

\[
\begin{aligned}
\theta(x)\theta(y)\partial_x^2H_\sigma
={}&\partial_x^2[\theta(x)\theta(y)H_\sigma]\\
&-\delta(x)\theta(y)(R_\sigma^2+2yR_\sigma^3)
-\delta'(x)\theta(y)R_\sigma.
\end{aligned}
\tag{10}
\]

[The canonical mass proof](half_bps_stress_canonical_mass.md),
[the independent order estimate](half_bps_stress_mass_order_independent.md)
and [the mass-origin jet calculation](half_bps_stress_mass_jets_independent.md)
specify these contacts using the same radial cutoff. Their presence in
independent mass space is not a freely addable external-momentum edge term.

Finally, local convergence and exact degree zero upgrade to strong
Schwartz convergence. On an external-momentum shell of size $\lambda$,
$\widehat\chi_R\mathcal G$ scales as $\lambda^{-4}$ with switch scale
$\lambda R$. A sufficiently high Schwartz weight sums the large shells.
The common-origin construction controls the small shells. This proves the
existence and profile independence used in (8).

## 4. Identification with the independent CFT distribution

The CFT tensor is defined by a proper convolution of three positive null
shell measures with a quadratic tensor numerator. Its normalization is
fixed by $\widehat A=-\alpha/15$, independently of the bulk radial solution.
The convolution is a tempered signed measure. Its critical preimages are
pairwise collinear shell configurations of measure zero, so it contains no
separate outer-null delta terms.

On spacelike transfer the common bulk limit is

\[
\frac{2\alpha\pi^6}{5}\mathcal N_{ij}\partial_x^2D^{-1}
=\frac{4\alpha\pi^6}{5}\mathcal N_{ij}
\frac{D^2+6yt}{D^5},
\tag{11}
\]

with the actual future-cone supports. This is the independent three-shell
CFT cut; the open timelike boundary value is zero. The local trace proofs
identify the simple-null, massive-diagonal and massive-companion endpoints.
The remaining possible difference is supported on the common collinear-null
set. Profile independence gives Lorentz covariance of the actual limit,
and (7) gives its degree zero. The rank-two normal-jet weights
$-6-w$ cannot match a tensor boost weight between $-2$ and $2$, including
the one-zero-momentum endpoints. Thus that difference vanishes.

[The complete CFT identification proof](half_bps_stress_cft_identification.md)
spells out the measure, normalization, coarea and uniqueness arguments.
Uniqueness is applied after constructing the genuine limit; it is not used
as a substitute for the all-null estimates.

## 5. Full finite-radius reconstruction and global cancellation

Let $h_z(s)=J_0(z\sqrt s)$. The actual three-insertion coefficient satisfies

\[
W_\chi(z,w)
=h_z(t)h_w(y)B_\chi+V_{2,\chi}(z,w)+h_z(t)V_{3,\chi}(w),
\tag{12}
\]

where $B_\chi$ is the complete corner, and the $V$ terms are the compact
Volterra sources derived from (2). An unrestricted isolated $h_z$ can grow
exponentially at spacelike momentum, so (12) alone is not a Schwartz
argument.

Two new exact formulas provide the needed global control. The Volterra
kernel has the compact representation

\[
K_s(z,u)=u\int_0^{\log(z/u)}
J_0\!\left(\sqrt{s[z^2+u^2-2zu\cosh v]}\right)dv,
\tag{13}
\]

and, for spacelike output $s(r)=-\kappa^2$, the complete surviving graph
uses $G_\kappa(z,u)=I_0(\kappa z_<)K_0(\kappa z_>)$, with

\[
\int_0^\infty u^5G_\kappa(z,u)du
=\frac{z^4}{\kappa^2}+\frac{16z^2}{\kappa^4}+\frac{64}{\kappa^6}.
\tag{14}
\]

Both outer graphs vanish on this spacelike output support at finite
switch. Thus the cancellation into $G_\kappa$ occurs before regulator
removal. For $\kappa z\ge1$, (14) is bounded by $81z^6$; all fixed
output derivatives have analogous bounds. At low spacelike mass and at
all timelike masses, (13) supplies uniformly polynomial multiplier bounds.

A smooth low/high partition in $-z^2t$ and $-w^2y$ uses (12) only in its
Schwartz-multiplier region and uses the positive resolvent in each high
region. It proves the following result.

**Theorem 2.** In the order (1), the complete finite-radius coefficient
converges strongly in $\mathcal S'(\mathbb R^{12})$, uniformly for
$0\le z\le Z$ and $0\le w\le W$. Its limit is exactly the boundary-fixed
combined tensor of the timelike/global report, now identified with the
actual switched coefficient on all strata. Its independent-radius boundary
limit has the previously proved $O(\max(z,w)^2)$ Schwartz bound.

The proof, derivative estimates and explicit numerical checks are in
[the global transfer report](half_bps_stress_global_transfer.md).
The theorem concerns the complete sum. Separate invariant Gram finite
parts retain their own definitions; the argument does not identify every
individual Abel or Gram finite part with every other regulator.

After the adiabatic limit the coefficient has support in
$\overline V_+\times\overline V_+$ in the independent outer momenta.
Its tempered Fourier–Laplace transform consequently defines the ordered
tube function; external imaginary-coordinate shifts damp it by
$e^{-d_1p^0-d_2q^0}$. The limit of these shifts recovers this same
distribution. This operation is applied to the completed spectral limit.
A finite compact switch need not have that spectral support, so this
statement does not replace finite-switch calculations by imaginary
coordinate shifts.

## 6. Gauge-consistent anchored interpretation

Let $H$ be the relative metric perturbation and $\xi[H]$ the boundary-anchored
normal-coordinate vector. Set

\[
H^{\mathrm r}=H+\mathcal R\xi[H],\qquad
\Phi=\phi+\xi[H]\cdot\partial\phi.
\]

For gauge vectors vanishing at the fixed boundary anchor,
$\delta\xi=-\zeta$, so these are invariant to the required order.
The completed action is

\[
S_w^{\mathrm{anc}}=S_{\mathrm{EH}}[g]+S_0[\Phi]
+V_w[H^{\mathrm r},\Phi]+O(H^2\phi^2).
\tag{15}
\]

Here $S_0$ includes the BF boundary completion. Expanding (15) includes both
the off-shell field-redefinition term and the force carried by derivatives
of $w$. Its adjoint radial source $Q=\mathcal P^\dagger(wT)$ obeys the
linearized momentum and Hamiltonian constraints exactly. In normal FG gauge
the relational scalar is the coordinate scalar, and the physical radiative
TT pairing is precisely (2). The three insertions, not just the middle
equation, are compared in the same causal prescription.

This comparison needs a real constraint completion. Define the radiative
stress insertion as the causal TT projection of the **complete anchored
Einstein response**, with its source functional projected by the adjoint
operator. For a spatial tensor component write
$\Pi(s)=A+B/s+C/s^2$ and
$H(s,u)=\lim_{v\to0}v^{-4}G_{2,s}(v,u)=(s^2/2)\partial_s^2R_s(u)$.
Then $H_0=-1/4$ and $H'_0=-u^2/16$. The causal projected response differs
from a bare time-step-times-physical-mode-commutator response by

\[
\frac{B H_0}{s_{\mathrm{ret}}}
+\frac{C(H_0+sH'_0)}{s_{\mathrm{ret}}^2}.
\tag{16}
\]

These are nonzero massless constraint terms, also nonzero away from the
momentum-null cone. The projected full response
retains them, and the analytic identity
$\Pi(s)H(s,u)=\tfrac12[s^2\Pi(s)]\partial_s^2R_s(u)$ fixes its complete
null extension. On-shell polarization agreement alone would not establish
this off-shell statement. [The causal source bridge](half_bps_stress_causal_source_bridge.md)
derives the projected source, the full constrained Einstein solution and
the distinction in (16). [An independent projector review](half_bps_stress_retarded_projector_independent.md)
recalculates explicit spacelike and timelike counterexamples to bare-mode
equivalence.

[The gauge completion report](half_bps_stress_gauge_completion.md) gives the
action variation, conserved radial source, boundary flux, allowed gauge
domain, endpoint prescription and actual component checks. The constrained
solution generally has a pure-gauge FG tail proportional to $u^2$ even when
the vertex source has compact radial support. It is inconsistent to require
all its FG components to vanish in the infrared. The finite-interval weak
Einstein solution and its causal projection are established; a full global
Einstein CPS realization requires the additional endpoint/phase-space
identification stated in the bridge report. For the present order the bridge
proves a stronger concrete statement: smooth compact spectral wave packets
with a positive radial-mass gap decay faster than every radial power on
finite time intervals. Their cross currents with the polynomial constraint
tail have zero infrared flux. This establishes the weak first-order response
on that dense free-CPS domain. The complete causal radial construction and
(16), rather than density alone, fix its extension through zero mass. Its
definition retains the anchor and the specified zero added-edge sector.
It is not an assertion that a compact switch multiplying the bare
Einstein stress tensor is conserved: that construction has an explicit
nonzero Bianchi defect.

## 7. Verification, dependencies and remaining work

The new Python/SymPy/SciPy/mpmath programs and their actual outputs are
listed in [the verification record](checks/stress_completion/README.md).
They check the exact tensor identities, causal kernels, mass derivatives,
null jets, lightfront Jacobians, threshold normal forms, Ward normalization,
positive resolvent and action/constraint variations. Quadratures and
parameter samples support the formulas; the distributional claims depend
on the explicit analytic seminorm proofs.

The original Mathematica/xAct files are preserved as earlier evidence.
They were not rerun in this environment. No new claim is marked verified
solely because an earlier saved CAS output reported success.

**Verified:** the canonical common-radial prescription; the all-null local
adiabatic trace in the stated order; its independent CFT identification;
the global complete finite-radius limit; the conserved cubic anchored source;
and the complete finite-radial-interval Einstein response with its explicitly
specified causal TT projection; the first-order weak response on the stated
dense wave-packet domain, including its vanishing infrared cross flux.

**Conditionally established:** identification of that affine causal-history
response with an observable in the complete global interacting Einstein CPS,
including sourced--sourced pairings and a common operator domain, subject to
the infrared symplectic/action endpoint domain. The source bridge records
the nonzero constraint tail and does not infer the global claim from
zero-past data or the free-mode polarization space.

**Assumptions:** first gravitational tree order; the original positive-energy
free CPS representation and normal ordering; logfree BF boundary data;
the fixed source subtraction; anchored normal-coordinate domain; the same
retarded extension and zero additional endpoint sectors.

**Further tasks:** the global Einstein endpoint/phase-space identification;
a cutoff-uniform annular theorem for arbitrary joint
$B(R)$ removal; a full finite-switch curved-boundary-source/anchor Ward
functional and its IR limit; comparison with separately specified
complex-frequency Abel prescriptions; higher-order and generic-polarization
reconstruction; and an interacting operator algebra with positivity.
These are distinct extensions of the coefficient proved here.

## 8. Subsequent scoped extensions

The [dictionary extension report](half_bps_dictionary_extensions.md), starting
from this report's commit `aa128cb903e0f3750a16a69487d64013d38667b1`, supplies
new proofs for several tasks listed above. The [joint-cutoff theorem](half_bps_stress_joint_limit.md)
removes the radial-first restriction for the specified complete causal TT
coefficient. The [sourced endpoint theorem](half_bps_stress_sourced_endpoint.md)
closes sourced–sourced pairings in the linearized, fixed compact-source
class. The [finite-switch Ward functional](half_bps_stress_finite_switch_ward.md)
fixes the curved-source/reference prescription at $hj^2$ and proves its
Euclidean infrared limit; the [full-stress theorem](half_bps_stress_full_ward_limit.md)
adds the Lorentzian Brown–York Ward response in the stated iterated order.

The same extension indexes the generic Euclidean $20'$ four-point tree,
leading string correction and protected finite-$N$ domain. It retains the
distinction between these results and a full nonlinear Einstein CPS or
interacting IIB Hilbert-space theorem. The original claims above keep their
original scopes; the follow-up proofs, rather than a changed reading of
this report, establish the stronger statements.
