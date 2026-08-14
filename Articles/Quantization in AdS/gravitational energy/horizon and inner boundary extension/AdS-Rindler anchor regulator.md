# AdS-Rindler Double Cutoff and Anchor Regulator

## Status

This file fixes the geometry and limit prescription for the anchored benchmark at interval size $a=\pi/4$. It does not yet claim that the perturbative finite-action joint and strip terms cancel the raw project tensor. Instead, it identifies the exact quantity such a calculation must cancel and separates the verified proper-completion limit from the still-missing finite-action anchor sum.

## 1. Rindler collar and global embedding

Set the AdS-Rindler radial coordinate to $\rho=\cosh\chi$. For AdS$_3$,

$$
\mathrm ds^2
=-\sinh^2\chi\,\mathrm d\tau^2
+\mathrm d\chi^2
+\cosh^2\chi\,\mathrm du^2.
\tag{1.1}
$$

Thus the local horizon collar is the noncompact $r_+=1$ version of the compact BTZ regulator. The difference is that the bifurcation curve $\chi=0$ has $u\in\mathbb R$ and reaches the two interval anchors at $u\to\pm\infty$.

For $a=\pi/4$, Appendix G.1 of 2501.08308v2 is equivalently represented by the AdS$_3$ embedding coordinates

$$
\begin{aligned}
X_{-1}&=\sqrt2\cosh\chi\cosh u+\sinh\chi\cosh\tau,\\
X_0&=\sinh\chi\sinh\tau,\\
X_1&=\sqrt2\sinh\chi\cosh\tau+\cosh\chi\cosh u,\\
X_2&=\cosh\chi\sinh u.
\end{aligned}
\tag{1.2}
$$

They obey $-X_{-1}^2-X_0^2+X_1^2+X_2^2=-1$ and induce (1.1). Global coordinates satisfy

$$
r^2=X_1^2+X_2^2,
\qquad
\tan\phi=\frac{X_2}{X_1}.
\tag{1.3}
$$

The PDF formula and the embedding pullback have both been checked directly; the latter is machine-verified by `ads_rindler_regulator_geometry_check.wl`.

## 2. Regulated region and anchor joints

At finite cutoff use

$$
\chi\geq\epsilon,
\qquad
r\leq R.
\tag{2.1}
$$

The timelike brick wall $\mathcal H_\epsilon=\{\chi=\epsilon\}$ and the outer cylinder $\Gamma_R=\{r=R\}$ meet along two codimension-two anchor worldlines $J_\pm(R,\epsilon)$. These are distinct from the wall--Cauchy endpoint joins analyzed in compact BTZ.

At the time-symmetric slice $\tau=t=0$, let $u_c>0$ denote the right intersection. Equation (1.2) gives

$$
r^2
=2\cosh^2\chi\cosh^2u
+2\sqrt2\sinh\chi\cosh\chi\cosh u
+\sinh^2\chi-1,
\tag{2.2}
$$

and hence

$$
\boxed{
\cosh u_c(R,\epsilon)
=\frac{\sqrt{R^2+1}-\sinh\epsilon}
{\sqrt2\cosh\epsilon}.
}
\tag{2.3}
$$

For large $R$,

$$
u_c(R,\epsilon)
=\log\frac{\sqrt2R}{\cosh\epsilon}+o(1).
\tag{2.4}
$$

On the true RT curve $\epsilon=0$, $x:=\tan\phi=\tanh u$ and

$$
x_c(R,0)
=\sqrt{\frac{R^2-1}{R^2+1}},
\tag{2.5}
$$

which reproduces the cutoff used in the existing modular-wedge benchmark.

## 3. Anchor strip width

At the brick-wall intersection,

$$
x_c(R,\epsilon)
=\tan\phi_c
=\frac{\cosh\epsilon\sqrt{\cosh^2u_c-1}}
{\sqrt2\sinh\epsilon+\cosh\epsilon\cosh u_c}.
\tag{3.1}
$$

The strip on the outer cylinder between $\phi_c$ and the physical endpoint $a=\pi/4$ obeys

$$
\boxed{
\lim_{R\to\infty}
R\left(\frac\pi4-\phi_c(R,\epsilon)\right)
=\sinh\epsilon.
}
\tag{3.2}
$$

The $\epsilon=0$ and correlated limits retain different subleading data:

$$
\lim_{R\to\infty}
R^2\left(\frac\pi4-\phi_c(R,0)\right)
=\frac12,
\tag{3.3}
$$

$$
\lim_{R\to\infty}
R^2\left(\frac\pi4-\phi_c(R,\lambda/R)\right)
=\lambda+\frac12.
\tag{3.4}
$$

Thus an anchor prescription must state the order or correlation of $R$ and $\epsilon$ even when the leading renormalized charge is insensitive to the strip.

## 4. Background anchor angle

Let $n_\epsilon=-\partial_\chi$ point out of the retained region and let $n_R$ be the normalized outward gradient of the global radial cutoff. At $J_+$,

$$
n_\epsilon\mathbin{\cdot}n_R\big|_{\epsilon=0}
=-\frac1R,
\tag{4.1}
$$

while at fixed $\epsilon>0$,

$$
\lim_{R\to\infty}
n_\epsilon\mathbin{\cdot}n_R
=-\tanh\epsilon.
\tag{4.2}
$$

The anchor worldline density per unit $\tau$ at $\tau=0$ is $\sqrt{|q_J|}=\sinh\epsilon$. Therefore any convention for the bounded background angle $\Theta_J$ gives

$$
\lim_{\epsilon\to0^+}\lim_{R\to\infty}
\sqrt{|q_J|}\,\Theta_J=0.
\tag{4.3}
$$

This is only a background statement. It does not prove that the first or second field variation of the anchor joint vanishes for the Brown--Henneaux perturbation; the mode can have nonuniform large-$R$ behavior near the anchors.

## 5. Corrected raw and proper endpoint behavior

After correcting the radial sign of the real Brown--Henneaux phase, the raw
project tensor is

$$
\frac{\mathrm dH_{\gamma,{\rm raw}}^{[0]}}{\mathrm dx}
=-\frac18(1-x^2)^2(1+x^2).
\tag{5.1}
$$

Since $x=\tanh u$ on the RT curve,

$$
\frac{\mathrm dx}{\mathrm du}=1-x^2,
$$

so both endpoint densities vanish:

$$
\boxed{
\lim_{u\to\pm\infty}
\frac{\mathrm dH_{\gamma,{\rm raw}}^{[0]}}{\mathrm du}
=0.
}
\tag{5.2}
$$

The old constant tail and logarithmic divergence are withdrawn; they arose
from a generator that was not a real phase of the declared complex primary.

By contrast, the verified proper-completion density $\mathcal u(x)$ is smooth at $x=\pm1$. Multiplication by $\mathrm dx/\mathrm du=\operatorname{sech}^2u$ gives

$$
\lim_{u\to\pm\infty}
\frac{\mathrm d}{\mathrm du}
\int^x\mathcal u(x')\,\mathrm dx'=0.
\tag{5.3}
$$

Both objects are finite, but remain distinct: the raw full second-order
Noether representative integrates to $-16/105$, whereas the project
gauge-completion cocycle is $32/105$.

## 6. Three-cutoff order

For the proper completion

$$
v_L=-\frac{L^2}{L^2+r^2}\zeta_R,
\tag{6.1}
$$

the outer boundary condition is controlled only if the global cutoff is removed at fixed $L$:

$$
\left.\frac{L^2}{L^2+r^2}\right|_{r=R}
\xrightarrow{R\to\infty}0.
\tag{6.2}
$$

The default sequential prescription is therefore

$$
\boxed{
\lim_{L\to\infty}
\lim_{\epsilon\to0^+}
\lim_{R\to\infty}
\mathcal Q(R,\epsilon,L).
}
\tag{6.3}
$$

Equivalently, a correlated limit must at least impose $R/L\to\infty$ before the large-$L$ extremal-gauge limit. At fixed $L$, the completion is proper at the asymptotic boundary; then the wall is fused to the RT surface; only afterwards is $L$ taken to infinity so that $v_L\to-\zeta_R$ at every fixed interior point.

## 7. Explicit fixed-embedding perturbative joint

Use the project-normalized exact-diffeomorphism path

$$
g(\alpha)=G+\alpha h+\alpha^2k+O(\alpha^3),
\qquad
h=\mathcal L_\zeta G,
\qquad
k=\frac12\mathcal L_\zeta h,
\tag{7.1}
$$

where $\zeta$ is the real Brown--Henneaux quadrature used in the modular-wedge benchmark after conversion to the article perturbative normalization. Keep the two level-set embeddings $\chi=\epsilon$ and $r=R$ fixed. At the right anchor define

$$
j_J(\alpha;R,\epsilon)
=\sqrt{|q_J(\alpha)|}\,
\arccos\!\left(
\frac{g(\alpha)^{-1}(-\mathrm d\chi,\mathrm dr)}
{\sqrt{g(\alpha)^{-1}(\mathrm d\chi,\mathrm d\chi)
g(\alpha)^{-1}(\mathrm dr,\mathrm dr)}}
\right).
\tag{7.2}
$$

An overall orientation sign multiplying the Dirichlet Hayward action is not fixed by (7.2). It is immaterial for the following vanishing statement. Writing

$$
j_J=j_J^{(0)}+\alpha j_J^{(1)}+\alpha^2j_J^{(2)}+O(\alpha^3),
$$

the fixed-$\epsilon$ large-$R$ coefficients are

$$
\begin{aligned}
\lim_{R\to\infty}j_J^{(1)}
={}&-\frac{2}{\sqrt{3\pi}}
\left[
\bigl(\pi-\arccos(\tanh\epsilon)\bigr)\sinh\epsilon
+\tanh^2\epsilon
\right],\\
\lim_{R\to\infty}j_J^{(2)}
={}&\frac{1}{6\pi}
\left[
4\bigl(\pi-\arccos(\tanh\epsilon)\bigr)\sinh\epsilon
+\operatorname{sech}^3\epsilon\,
\sinh(3\epsilon)\tanh\epsilon
+9\operatorname{sech}^2\epsilon\tanh^2\epsilon
\right].
\end{aligned}
\tag{7.3}
$$

Therefore

$$
\boxed{
\lim_{\epsilon\to0^+}\lim_{R\to\infty}j_J^{(1)}
=
\lim_{\epsilon\to0^+}\lim_{R\to\infty}j_J^{(2)}
=0.
}
\tag{7.4}
$$

The calculation also finds the scaled inverse-metric data

$$
\begin{aligned}
g^{-1}(-\mathrm d\chi,-\mathrm d\chi)
&=1+O(\alpha^3),\\
R^{-2}g^{-1}(\mathrm dr,\mathrm dr)&=1+O(\alpha^3),\\
R^{-1}g^{-1}(-\mathrm d\chi,\mathrm dr)&=-\tanh\epsilon+O(\alpha^3),\\
R^{-2}g_{tt}
&=-1+O(\alpha^3),
\end{aligned}
\tag{7.5}
$$

after $R\to\infty$. These are useful independent diagnostics of (7.3).

The asymptotic non-Killing completion density is a continuous trigonometric
function of $\phi$. Since $\phi_c\to\pi/4$, its integral over
$[\phi_c,\pi/4]$ vanishes at fixed $\epsilon$ as $R\to\infty$. The corrected
raw density is also regular, so there is no logarithmic inner divergence to
cancel. Equation (7.4) does not apply to a moving joint, because then
$\mathrm d\chi$, the intersection tangent, and the evaluation point vary.

The standalone Mathematica/xAct-runtime regression in `ads_rindler_anchor_perturbation_check.wl` passes $12/12$ tests. It checks the four scaled metric contractions in (7.5), the tangent normalization, both finite-$\epsilon$ joint coefficients, both sequential zeros, the background line density, the strip-width limit, and the bounded completion-strip limit.

## 8. Explicit area-displacement endpoint

The entire quadratic area decomposition can be evaluated without solving a new Jacobi problem. Since $h=\mathcal L_\zeta G$, the same geometric extremal curve has

$$
V^a=-\zeta_\perp^a.
\tag{8.1}
$$

Choose a parallel orthonormal normal frame along the unit-speed RT geodesic and form the area endpoint density

$$
b_{\mathrm{area}}(u)
=h_{ua}V^a+\frac12V_aD_uV^a.
\tag{8.2}
$$

For the explicit real mode,

$$
\begin{aligned}
b_{\mathrm{area}}(u)
={}&\frac{\tanh u\,\operatorname{sech}^6u\,
\operatorname{sech}^3(2u)}{768\pi}
\bigl[
-696-719\cosh(2u)+304\cosh(4u)\\
&\hspace{39mm}
+449\cosh(6u)+136\cosh(8u)+10\cosh(10u)
\bigr].
\end{aligned}
\tag{8.3}
$$

It has the endpoint behavior

$$
b_{\mathrm{area}}(u)
=\frac{10}{3\pi}e^{-2u}+o(e^{-2u})
\quad(u\to+\infty),
\qquad
b_{\mathrm{area}}(u)
=-\frac{10}{3\pi}e^{2u}+o(e^{2u})
\quad(u\to-\infty).
\tag{8.4}
$$

Consequently

$$
\boxed{
\left[b_{\mathrm{area}}(u)\right]_{-\infty}^{+\infty}=0.
}
\tag{8.5}
$$

The fixed-surface, metric-displacement cross, embedding, and total quadratic area densities also vanish at both ends. Their right and left leading coefficients are respectively

$$
\begin{array}{c|cccc}
&\mathcal A_{\rm fixed}^{(2)}
&\mathcal A_{\rm cross}^{(2)}
&\mathcal A_{\rm embed}^{(2)}
&\mathcal A_{\rm total}^{(2)}\\ \hline
\displaystyle\lim_{u\to+\infty}e^{2u}(\cdot)
&\dfrac{8}{3\pi}&-\dfrac8\pi&\dfrac{4}{3\pi}&-\dfrac4\pi\\
\displaystyle\lim_{u\to-\infty}e^{-2u}(\cdot)
&\dfrac{8}{3\pi}&-\dfrac8\pi&\dfrac{4}{3\pi}&-\dfrac4\pi
\end{array}.
\tag{8.6}
$$

The script `ads_rindler_area_endpoint_check.wl` passes $25/25$ tests: it verifies the unit tangent, orthonormality and parallel transport of the normal frame, all four area-density tails and leading coefficients, both endpoint limits, their oriented difference, and both endpoint leading coefficients in (8.4).

Thus both the corrected raw representative and every term in the explicit
quadratic area decomposition have vanishing endpoint density. There is no raw
constant tail requiring an anchor-local or area-density cancellation for this
mode. The remaining issue is the finite integrated constraint/current
rearrangement relating $S_{\xi,h}^{[0]}+S_\xi[k]$ to the proper non-Killing
canonical-energy difference, not an endpoint divergence. A generic
moving-joint theorem remains useful for other phase spaces but is not needed
to cancel a nonexistent constant tail here.

## 9. Finite-action inner-wall current and noncommuting limit

The article formalism does not identify the bulk Einstein--Hilbert surface
representative with the complete charge. On every timelike boundary component
its exact finite-action identity has the form

$$
q_{\mathrm{BY}}=q_{\mathrm{EH}}+q_{\Gamma},
\tag{9.1}
$$

where $q_{\Gamma}$ is fixed by the GHY/Harlow--Wu boundary descent. On the
inner brick wall use the outward normal $n=-\mathrm d\chi$, no asymptotic AdS
counterterm, and the tangent modular Killing field
$\xi_{\mathrm{mod}}=2\pi\partial_\tau$. After stripping the common
$1/\kappa_{\mathrm p}^2$ factor, define the quadratic densities per unit $u$
by

$$
\begin{aligned}
q_{\mathrm{BY}}^{(2)}
&=[\alpha^2]\left[-\sqrt q\,\tau^a\xi^b
\left(K_{ab}-K\gamma_{ab}\right)\right],\\
q_{\mathrm{EH}}^{(2)}
&=[\alpha^2]\left[\frac12\sqrt q\,\tau_\mu n_\nu
\left(\nabla^\mu\xi^\nu-\nabla^\nu\xi^\mu\right)\right].
\end{aligned}
\tag{9.2}
$$

For the corrected exact-diffeomorphism path (7.1), set $z=e^{-|u|}$. Exact
global-to-Rindler pullback gives, component by component in the
$(\tau,\chi,u)$ basis,

$$
\boxed{
h_\infty=0,
\qquad
k_\infty=0.
}
\tag{9.3}
$$

Substitution into the exact finite-wall algebra therefore gives

$$
\boxed{
\lim_{u\to\pm\infty}
\left(q_{\mathrm{BY}}^{(2)},q_{\mathrm{EH}}^{(2)},
q_{\Gamma}^{(2)}\right)
=(0,0,0)
\quad\text{at every fixed }\chi>0.
}
\tag{9.4}
$$

The endpoint extraction uses $z>0$, $\chi>0$ and the regular $z\to0^+$
branch. The unsimplified full-current calculation independently checks the
zero tails at 60-digit precision: a three-point Richardson extrapolation at
$\chi\in\{1/2,1/4,1/8,1/16\}$ and both ends has maximum residual
$1.03\times10^{-11}$ in the declared run. Correlated probes
$\chi=\lambda e^{-|u|}$ for $\lambda\in\{1/2,1,2\}$ also approach zero.
The corrected raw fused-surface density is regular and has zero endpoint
tail.

The formerly displayed nonzero tensor and
$(16/3,-16/3,32/3)\sinh^2\chi$ split were generated by the withdrawn
wrong-radial-sign real vector. They are not current finite-action data.
`ads_rindler_inner_wall_endpoint_algebra_check.wl` is retained only as an
explicitly labelled historical regression for that dependency repair.

The full renormalized outer Brown--York coefficient can be evaluated from the
same metric path before taking $R\to\infty$. On the $t=0$ outer cut, with
$n_R$ pointing toward increasing $r$ and with the article counterterm retained,
its limiting density is

$$
\boxed{
q_{\infty}^{(2)}(\phi)
=-(-1+\sqrt2\cos\phi)(-1+3\cos4\phi).
}
\tag{9.7}
$$

It vanishes at both physical interval endpoints. Writing
$\Delta\phi=\pi/4-\phi_c(R,\chi)$, equations (3.2) and (9.7) give

$$
q_{\infty}^{(2)}\!\left(\frac\pi4-\Delta\phi\right)
=4\Delta\phi-2\Delta\phi^2+O(\Delta\phi^3),
\tag{9.8}
$$

and hence

$$
\boxed{
\int_{\phi_c}^{\pi/4}q_{\infty}^{(2)}(\phi)\,\mathrm d\phi
=2\frac{\sinh^2\chi}{R^2}+o(R^{-2}).
}
\tag{9.9}
$$

Thus the exact outer strip vanishes already at fixed nonzero $\chi$ as
$R\to\infty$, and its $R^2$ coefficient vanishes when the wall is fused.

The corrected raw, joint, strip, area-displacement, and finite-wall endpoint
densities all have zero endpoint tails. The induced inner-wall orientation may
acquire one overall minus sign when converted to the common outer-reference
orientation; it cannot change these zeros.

The standalone regression
`ads_rindler_inner_wall_endpoint_pullback_check.wl` passes $12/12$ exact tests
for (9.3). The independent
`ads_rindler_inner_wall_current_check.wl` constructs the unsimplified global
mode, inverse metric, connection, extrinsic curvature, Brown--York density,
and Komar density through $\alpha^2$, and passes $10/10$ high-precision tests.
The corrected multi-mode extension
`ads_rindler_projected_wall_endpoint_check.wl` additionally passes $2/2$
exact tests: all six independent linear endpoint components vanish for the
complex unit-boundary modes $m=2,3,4,5$ and hence for four projected real
low modes. This is linear wall data only; quadratic cross-mode charges and
uniform frequency estimates are not inferred.
Finally, `ads_rindler_outer_wall_charge_check.wl` derives (9.7)--(9.9) and
passes $11/11$ exact tests.
This resolves the origin of the raw tail analytically for the selected mode.
H36 of `formula verification ledger.md` supplies the general fixed-embedding
implication under its declared phase-space hypotheses. Universal polarization
existence and moving-cutoff edge data remain open.

## 10. Achieved claim and remaining obstruction

Verified:

- the exact global/Rindler map and induced metric;
- the double-cutoff intersection and all limits (2.3)--(4.3);
- the vanishing corrected raw anchor tails (5.2) and vanishing
  proper-completion tails (5.3);
- the necessity of $R/L\to\infty$ in the proper-completion prescription;
- the explicit fixed-embedding joint coefficients (7.3), their sequential zeros (7.4), and the bounded completion-strip limit;
- the explicit quadratic area decomposition, its $e^{-2|u|}$ tails (8.6), and the vanishing oriented endpoint (8.5);
- the exact endpoint pullback and vanishing finite-wall EH/GHY/Brown--York
  endpoint tails for the selected mode;
- the full renormalized outer Brown--York coefficient, its zero endpoint
  values, and the $R^{-2}$ exact-strip scaling.

Not constructed:

- the moving-embedding/edge-mode variation of the anchor joint;
- a broad Brown--York boundary polarization proving that the selected
  non-collar family lies in one compatible H0--H6 regulator family.

The old $16/[3(1-x)]$ observation and its dependent fused-horizon narrative
are withdrawn. The corrected ordinary joint, bounded completion strip,
quadratic area terms, and inner-wall endpoint currents all vanish, while the
proper non-Killing Iyer--Wald completion gives
$\int\Upsilon_{\rm p}=32/105$. H36--H37 identify this with the finite-action
dressed energy only when the declared H0--H6 hypotheses hold. The missing
result is a compatible broad noncompact regulator family and the complete
projected-mode continuity theorem.
