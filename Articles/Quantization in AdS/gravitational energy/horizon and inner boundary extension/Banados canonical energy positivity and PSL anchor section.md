# Bañados Canonical Energy, Positivity, and the PSL Anchor Section

## 1. Verdict

The complete classical quadratic form in the Brown--Henneaux sector is
nonnegative. Its kernel consists exactly of background
$\operatorname{PSL}(2,\mathbb R)$ reducibility parameters; after quotienting
the global AdS isometries, it is strictly positive. On the fixed interval
$A=(-a,a)$ it has the manifest form

$$
\boxed{
E_{\rm can,p}[h[f]]
=\frac{1}{8G}
\int_{-\infty}^{\infty}
\left[
\left(\partial_sF_f\right)^2
+\left(\partial_s^2F_f\right)^2
\right]\,\mathrm ds ,
}
\tag{1.1}
$$

where the factor is $c/12=1/(8G)$ for the Brown--Henneaux central charge
$c=3/(2G)$ and every quadratic object uses second-derivative normalization.
The function $F_f$ is defined below after choosing the unique endpoint-fixing
representative modulo global conformal transformations.

Equation (1.1) also corrects the interpretation of the earlier unprojected
anchor obstruction. The numbers

$$
q_\pm[f]=f(\pm a)
\tag{1.2}
$$

are not functions on the metric tangent space: adding an exact AdS Killing
field changes $q_\pm$ while leaving
$h[f]=\mathcal L_{\zeta[f]}G$ unchanged. Therefore $q_\pm$ cannot by
themselves be physical anchor coordinates or moment maps. The correct
linear classical space is

$$
\boxed{
\mathfrak P_{\rm BH}^\sigma
=H^\sigma(S^1)/\mathfrak{sl}(2,\mathbb R)
\simeq
\ker(q_+,q_-)/\operatorname{span}\{w_A\},
}
\qquad \sigma>\frac12,
\tag{1.3}
$$

not a quotient of charged $m\geq2$ Brown--Henneaux modes by an added negative
Virasoro frame. A separate boundary frame is needed only if one chooses to
gauge the full asymptotic Virasoro action; it is neither implied by nor
required for the present classical metric theorem.

Equation (1.3) displays one chirality.  The real two-chiral Brown--Henneaux
tangent is

$$
\mathfrak P_{\rm BH,full}^\sigma
=\left(H^\sigma/\mathfrak{sl}(2,\mathbb R)\right)_+
\oplus
\left(H^\sigma/\mathfrak{sl}(2,\mathbb R)\right)_-,
\qquad
E_{\rm can,p}=E_++E_- ,
\tag{1.4}
$$

because the two chiral CPS blocks are orthogonal.  All formulas below are
written for one summand.

The ordinary Sobolev upper-bound threshold of the **combined** form (1.1) is
exactly $H^2$. It is continuous on the endpoint-fixed $H^2$ section and
cannot be continuous on any $H^\sigma$, $\sigma<2$. It is not coercive in the standard
$H^2$ norm because modular energy can concentrate arbitrarily close to an
anchor. The older condition $\sigma>5/2$ remains the sharp threshold for the
separated point-anchor momentum and local
$E_{\rm can,p}[h]+\int\Upsilon_{\rm p}$ chart; the cancellation in their sum
extends the gauge-invariant quadratic form to $H^2$.

## 2. Endpoint-fixing by background reducibility

Use the nonsingular symmetric-interval chart $0<a<\pi/2$; the project
benchmark has $a=\pi/4$.  At $a=\pi/2$ the same quotient is obtained with a
different pair of global-conformal complements rather than by dividing by
$\cos a$ in (2.3).

Map the interval to the positive half-line by

$$
U(\phi)
=\frac{\sin\frac{\phi+a}{2}}
       {\sin\frac{a-\phi}{2}},
\qquad
s=\log U.
\tag{2.1}
$$

The modular weight is

$$
w_A(\phi)
:=\frac{U}{U'}
=\frac{\cos\phi-\cos a}{\sin a}>0,
\qquad -a<\phi<a.
\tag{2.2}
$$

For $\sigma>1/2$, endpoint evaluation is continuous. Define the bounded
$\operatorname{PSL}(2,\mathbb R)$ section

$$
\boxed{
P_{\rm PSL}f
=f
-\frac{q_+[f]+q_-[f]}{2\cos a}\cos\phi
-\frac{q_+[f]-q_-[f]}{2\sin a}\sin\phi .
}
\tag{2.3}
$$

Then

$$
(P_{\rm PSL}f)(\pm a)=0,
\qquad
P_{\rm PSL}^2=P_{\rm PSL}.
\tag{2.4}
$$

The subtracted frequency-zero/one Brown--Henneaux vectors are exact global
AdS Killing fields. Hence

$$
\mathcal L_{\zeta[P_{\rm PSL}f]}G
=\mathcal L_{\zeta[f]}G.
\tag{2.5}
$$

The residual global conformal vector that already fixes both endpoints is
the interval modular generator $w_A$. Indeed,

$$
P_{\rm PSL}(1)=-\tan a\,w_A,
\qquad
P_{\rm PSL}(\cos\phi)=P_{\rm PSL}(\sin\phi)=0.
\tag{2.6}
$$

Thus (2.3) fixes two of the three global-conformal directions, while the
remaining $w_A$ is precisely the reducibility kernel of the quadratic form.
Unlike the earlier spectral projector $P_A$, equation (2.3) does not add a
charged $m\geq2$ boundary graviton and therefore does not change the metric
tangent.

## 3. Classical Bañados charge--area Hessian

Let

$$
f_0=P_{\rm PSL}f,
\qquad
F_f(s)=\frac{f_0(\phi(s))}{w_A(\phi(s))}.
\tag{3.1}
$$

Equivalently, the pushed-forward half-line vector is

$$
v_f(U)=U'(\phi)f_0(\phi)=U F_f(\log U).
\tag{3.2}
$$

For a finite chiral reparametrization, write

$$
\varphi(s)=\log\rho(e^s).
\tag{3.3}
$$

First work on the dense core $F_f\in C_c^\infty(\mathbb R)$. The associated
large diffeomorphism is the identity near both interval anchors. It maps the
AdS metric and the RT geodesic together, so the geometric geodesic length is
unchanged. H53 therefore identifies the canonical energy with the Hessian of
the outer Brown--York modular charge on this core.

In the active convention used here, the vacuum Brown--Henneaux stress and
half-line modular generator are

$$
\langle T_{UU}\rangle_\rho
=-\frac{c}{24\pi}\{\rho,U\},
\qquad
K_A=2\pi\int_0^\infty U T_{UU}\,\mathrm dU.
\tag{3.3a}
$$

For $U=e^s$ and $\rho(U)=e^{\varphi(s)}$, the two exact chain identities are

$$
U^2\{\rho,U\}
=\{\varphi,s\}-\frac12\varphi'^2+\frac12,
\qquad
\{\varphi,s\}
=\partial_s\!\left(\frac{\varphi''}{\varphi'}\right)
-\frac12\left(\frac{\varphi''}{\varphi'}\right)^2.
\tag{3.3b}
$$

The total derivative vanishes on the core. Consequently the Brown--York
modular charge, equivalently the charge-minus-geodesic functional there, is
the Schwarzian action

$$
\mathcal R_A[\rho]
=\frac{c}{24}\int_{\mathbb R}
\left[
\varphi'(s)^2
+\left(\frac{\varphi''(s)}{\varphi'(s)}\right)^2
-1
\right]\mathrm ds .
\tag{3.4}
$$

This is a classical coadjoint/stress-tensor calculation; positivity does not
assume a quantum JLMS theorem. The exact coefficient and finite functional
independently agree with [Hollands' chiral relative-entropy
formula](https://arxiv.org/abs/1903.07508). The recent
[Bañados/RT comparison](https://arxiv.org/abs/2606.27915) confirms the same
Fefferman--Graham stress and Brown--Henneaux normalization at linear order,
but that linear result is not used as a second-order positivity proof.

The compact-core quadratic form is closable. Its closure is precisely the
modular domain (5.1), so (3.4) and its Hessian extend to the endpoint behavior
allowed below. This closure step, rather than an unproved finite-amplitude
RT formula for arbitrary endpoint derivatives, is what is used in H62.

For

$$
\varphi_\lambda(s)
=s+\lambda F_f(s)+O(\lambda^2),
\tag{3.5}
$$

direct differentiation gives

$$
\left.\frac{\mathrm d^2\mathcal R_A}
{\mathrm d\lambda^2}\right|_{\lambda=0}
=\frac{c}{12}\int_{\mathbb R}
\left[(F_f')^2+(F_f'')^2\right]\mathrm ds.
\tag{3.6}
$$

This is (1.1). In half-line variables,

$$
\int_0^\infty
U\left(\frac{\mathrm d^2v_f}{\mathrm dU^2}\right)^2\mathrm dU
=\int_{\mathbb R}(F_f'+F_f'')^2\mathrm ds.
\tag{3.7}
$$

The difference between (3.7) and the integral in (3.6) is
$\int\partial_s(F_f'^2)\,\mathrm ds$ and vanishes on the finite-action
domain. In interval coordinates, the positive density is

$$
\boxed{
\mathcal Q_A[f]
=\int_{-a}^{a}w_A
\left[
\left(\partial_\phi\frac{f_0}{w_A}\right)^2
+\left(
\partial_\phi\left[
w_A\partial_\phi\frac{f_0}{w_A}
\right]\right)^2
\right]\mathrm d\phi .
}
\tag{3.8}
$$

## 4. Kernel and positivity

Every term in (3.6) is a square. Therefore

$$
E_{\rm can,p}[h]\geq0.
\tag{4.1}
$$

Equality implies

$$
\partial_sF_f=0,
\qquad
F_f=\text{constant},
\tag{4.2}
$$

and hence

$$
f_0=Cw_A.
\tag{4.3}
$$

Together with (2.3), this says that the complete kernel before quotienting is
exactly

$$
\ker E_{\rm can,p}
=\operatorname{span}\{1,\cos\phi,\sin\phi\}
=\mathfrak{sl}(2,\mathbb R).
\tag{4.4}
$$

These are background isometries and create no linearized metric. Consequently
the form is strictly positive on the Brown--Henneaux metric tangent quotient.
No additional gauge degeneracy occurs in the $m\geq2$ sector.

At $a=\pi/4$, four exact normalized checks are

$$
\begin{array}{c|c}
\text{PSL-section profile} & \mathcal Q_A/[2m(m^2-1)]\\ \hline
P_{\rm PSL}\cos2\phi & \frac45-\frac\pi4\\
P_{\rm PSL}\cos3\phi & \frac{89}{70}-\frac{3\pi}{8}\\
P_{\rm PSL}\sin3\phi & \frac{293}{210}-\frac{3\pi}{8}\\
P_{\rm PSL}\sin4\phi & \frac{40}{21}-\frac\pi2
\end{array}
\tag{4.5}
$$

and every entry is positive. These values are checks of (3.8), not the basis
of the general positivity proof.

This proves positivity of the **complete** canonical energy, not merely of
the previously displayed two- or four-mode Jacobi/corner matrices. It also
shows why positivity could not be inferred from the local
$\Upsilon_{\rm p}$ matrix alone: that local matrix is only one section-change
piece of (3.6).

## 5. Optimal regularity and failure of coercivity

The intrinsic form domain is the modular Sobolev space

$$
\mathscr D_A
=\left\{
[f]\in H^{1/2+}(S^1)/\mathfrak{sl}(2,\mathbb R):
\partial_sF_f,\ \partial_s^2F_f\in L^2(\mathbb R,\mathrm ds)
\right\}.
\tag{5.1}
$$

The core used in Section 3 is form-dense. Indeed, with $g=F_f'\in
H^1(\mathbb R)$, first approximate $g$ in $H^1$ by compactly supported smooth
functions. Adjust each approximant to have zero integral by a compensating
bump spread over a successively longer interval; its $H^1$ norm can be made
arbitrarily small. Integrating then gives $F_n\in C_c^\infty$ modulo an
irrelevant constant and

$$
\|F_n'-F_f'\|_{L^2}
+\|F_n''-F_f''\|_{L^2}\longrightarrow0.
\tag{5.1a}
$$

Thus (3.6) is the unique closure of the action/CPS quadratic form proved on
the compact-anchor core.

For the ordinary circle Sobolev scale,

$$
H^2(S^1)\cap\ker(q_+,q_-)
\hookrightarrow\mathscr D_A
\tag{5.2}
$$

continuously. The endpoint proof is a second-order Hardy estimate. Since
$w_A\asymp d$ and $\mathrm ds\asymp\mathrm dd/d$, it must retain the
allowed endpoint-linear term of $f_0$ rather than assuming it vanishes.

More explicitly, use $y=w_A$ as a smooth boundary coordinate and write
$f_0=yg$. Up to bounded smooth Jacobian and lower-order coefficients, the
endpoint part of (3.8) is

$$
\int_0^{y_0}y\left[g_y^2+(g_y+yg_{yy})^2\right]\mathrm dy.
\tag{5.2a}
$$

For $h=g_y$, integration by parts gives

$$
\int_0^{y_0}|2h+yh_y|^2\mathrm dy
=2\int_0^{y_0}|h|^2\mathrm dy
+\int_0^{y_0}y^2|h_y|^2\mathrm dy
+2y_0|h(y_0)|^2.
\tag{5.2b}
$$

The left side is the principal part of
$\|\partial_y^2(yg)\|_{L^2}^2$. Equation (5.2b), a partition of unity, and
the ordinary interior estimate bound (5.2a) by $C\|f_0\|_{H^2}^2$. This is
the promised continuous embedding (5.2); it does not assume a point value of
$f_0''$.

The index $2$ is optimal. If $\chi$ is supported in a compact subinterval
where $w_A$ is bounded away from zero and

$$
f_N(\phi)=N^{-\sigma}\chi(\phi)e^{iN\phi},
\tag{5.3}
$$

then $\|f_N\|_{H^\sigma}=O(1)$ but

$$
\mathcal Q_A[f_N]\asymp N^{4-2\sigma}.
\tag{5.4}
$$

Thus no $H^\sigma$-continuous extension exists for $\sigma<2$.

There is no $H^2$ coercive lower bound. Let
$\psi(x)=x^3(1-x)^3$ and place

$$
f_\delta(\phi)
=\delta^{3/2}
\psi\left(\frac{\phi+a}{\delta}\right)
\tag{5.5}
$$

in a left-anchor layer, extended by zero. Then

$$
\|f_\delta''\|_{L^2}^2\longrightarrow
\int_0^1|\psi''(x)|^2\mathrm dx>0,
\qquad
\mathcal Q_A[f_\delta]
=\delta C_\psi+o(\delta),
\quad C_\psi>0.
\tag{5.6}
$$

Hence normalized $H^2$ data can have arbitrarily small modular canonical
energy by approaching the entangling surface. Positivity is strict modulo
isometries, but the form has no spectral gap in the standard $H^2$ topology.

For the physically normalized descendant coefficients
$f_m\sim2\sqrt G\,a_m/m^{3/2}$, the high-frequency form domain is

$$
\sum_{m\geq2}m|a_m|^2<\infty.
\tag{5.7}
$$

The ordinary $\ell^2$ one-particle space is therefore the Hilbert space on
which modular energy is an unbounded positive quadratic form, not its form
domain.

## 6. Consequence for the unprojected regulator problem

The raw unprojected transition pole found for the
$(\cos3\phi,\cos4\phi)$ representative is not invariant under the
background-Killing ambiguity. It was computed before adding the
Jacobi-homogeneous/global-Killing endpoint completion. Replacing every
profile by $P_{\rm PSL}f$:

1. leaves the metric perturbation unchanged by (2.5);
2. fixes both endpoint traces;
3. removes the endpoint Wronskian which generated the ordinary logarithmic
   transition divergence;
4. places the tangent in the same endpoint-zero class used by the H51 and
   H59a--H60 finite-action estimates.

For the raw bulk, wall, joint, and outer terms this is immediate from
$h[P_{\rm PSL}f]=h[f]$. The proper-profile terms also contain derivatives of
the taper multiplying the generator, so they require a separate observation:
their only order-one endpoint layer is the universal Wronskian
$Q_fDg-DfQ_g$, which depends only on the endpoint values $Q_f,Q_g$ and hence
vanishes in the PSL section. Every remaining coefficient has the same
frequency-polynomial bounds as H51/H59; inserting the fixed frequency-one
Killing complement cannot increase those degrees. The PSL point-jet
structure audit checks this statement directly for the transition kernel.
Thus the existing wall/joint/outer schedule majorant applies without a new
finite-$R$ frame term.

The previously constructed homogeneous unprojected HW trace is exactly the
normal-bundle restriction of this global-Killing subtraction. Thus the
finite-rank functional

$$
-(q_+p_++q_-p_-)
\tag{6.1}
$$

remains a correct analytic finite part of one non-reducibility-fixed
representative, but it is not a physical anchor Hamiltonian and does not
require a new boundary canonical pair.

The spectral projector $P_A$ remains useful: it selects a concrete physical
subspace by adding correlated charged modes so that its profiles vanish at
the anchors. It must not be confused with $P_{\rm PSL}$, which changes only
the reducibility representative and covers the full Brown--Henneaux metric
tangent quotient.

## 7. Verification status

**Verified:** the interval/half-line map and modular weight; bounded
$P_{\rm PSL}$ endpoint section and idempotence; exact Killing equations for
the frequency-zero/one complements; the Schwarzian stress-transform chain
rule, modular-charge total derivative, Brown--Henneaux
$c/12=1/(8G)$ normalization, and exact Hessian; equivalence of the
half-line and logarithmic positive densities up to a total derivative;
the $\mathfrak{sl}(2,\mathbb R)$ kernel; selected positive mode integrals; and
the Hardy identity, high-frequency obstruction, and boundary-layer
noncoercivity scaling.
`ads_rindler_banados_positivity_check.wl` passes $17/17$ exact tests. The
source-derived PSL transition audit covers both endpoints and the
cosine/cosine, cosine/sine, and sine/sine pairings in six symbolic runs,
passing $30/30$ tests. In every run the endpoint denominator is nonzero and
the numerator and its first derivative vanish.  The independent structure
mode passes $42/42$ tests, returning endpoint orders
$(\infty,3,2,4,6)$ and positive-$L$ frequency degrees $(6,6,6,6)$ in every
sector/endpoint run.

**Assumptions:** vacuum Einstein AdS$_3$ with Brown--Henneaux boundary
conditions; $G>0$; one chiral sector at a time, with the two sectors added
orthogonally; exact background interval modular Killing field; and the
project second-variation convention.  Formula (2.3) uses
$0<a<\pi/2$ (in particular $a=\pi/4$); other interval charts require a
nonsingular choice of PSL complements. The $H^2$ extension concerns the
combined gauge-invariant canonical energy. The separated HW corner chart
still requires its sharper point-trace domain.

**Not verified here:** a nonlinear quotient by the full Virasoro group,
finite-amplitude global charts across nontrivial coadjoint orbits, matter, or
quantum/operator-algebraic JLMS. None of these is needed for the linear
classical positivity and full Brown--Henneaux tangent result above.
