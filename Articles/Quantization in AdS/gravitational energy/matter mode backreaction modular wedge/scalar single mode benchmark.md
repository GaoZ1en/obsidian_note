# Massless Complex-Scalar Single-Mode Benchmark

## Result

For one stationary axisymmetric massless complex-scalar mode in global
AdS$_3$, with no independent first-order graviton and no added homogeneous
vacuum metric mode, the direct classical quantities obey

$$
\boxed{
[\varepsilon^2]H_{\xi_A,T}^{\infty}
= [\varepsilon^2]H_{\xi_A}^{\mathrm m}
+[\varepsilon^2]\frac{L_{\gamma_A}}{4G}
}
$$

for every $0<a<\pi/2$.  Here the three terms are computed independently as a
renormalized Brown--York outer charge, a fixed-background matter stress-tensor
integral over the wedge, and a direct first variation of the RT geodesic
length in the matter-sourced metric.

The equality now also follows from two linked charge statements.  First, the
project $k$-sector potential obeys a local Noether--Stokes identity whose
outer and RT cuts reproduce the Brown--York and area densities pointwise.
Second, a finite AdS--Rindler wall admits a scalar-compatible transparent
matter-plus-gravity matching polarization.  Its wall-removal source
transgression tends to the fused boost corner, whose coefficient is the same
RT response.  This completes the regulated classical statement for the
selected mode and polarization.  It is not a single-sided reflecting-wall
factorization theorem or a quantum JLMS result.

## 1. Conventions and perturbative order

Use unit-radius global AdS$_3$,

$$
ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\phi^2,
\qquad
\kappa_{\mathrm p}^2=8\pi G,
$$

and the minimally coupled massless complex-scalar action

$$
S_{\mathrm m}
=-\int_M d^3x\sqrt{-g}\,
g^{\mu\nu}\partial_\mu\Phi^*\partial_\nu\Phi.
$$

The Hilbert stress tensor is

$$
T_{\mu\nu}
=\partial_\mu\Phi^*\partial_\nu\Phi
+\partial_\nu\Phi^*\partial_\mu\Phi
-g_{\mu\nu}\partial_\rho\Phi^*\partial^\rho\Phi.
$$

Keep the scalar amplitude separate from the gravitational coupling:

$$
\Phi=\varepsilon\phi,
\qquad
g_{\mu\nu}=G_{\mu\nu}
+\lambda k^{(2)}_{\mu\nu}+O(\lambda^2),
\qquad
\lambda:=\kappa_{\mathrm p}^2\varepsilon^2.
$$

There is no independent $O(\kappa_{\mathrm p})$ metric perturbation:
$h_{\mu\nu}=0$.  The coefficient equation is therefore

$$
\mathcal E^{(1)}_{\mu\nu}[k^{(2)}]
=T^{(2)}_{\mu\nu}[\phi],
$$

with no $\mathcal E^{(2)}[h,h]$ term.

## 2. Scalar mode and stress tensor

Take

$$
\phi(t,r)
=\mathcal A\frac{e^{-2it}}{1+r^2},
\qquad \mathcal A>0.
$$

The Klein--Gordon norm, global energy, and angular momentum are

$$
(\phi,\phi)_{\mathrm{KG}}=2\pi\mathcal A^2,
\qquad
E_{\mathrm m}=4\pi\mathcal A^2,
\qquad
J_{\mathrm m}=0.
$$

Thus the unit-KG-norm choice is

$$
\mathcal A^2=\frac1{2\pi},
$$

and it has global energy $E_{\mathrm m}=2$, equal to its global frequency.
The nonzero stress-tensor components at order $\varepsilon^2$ are

$$
T_{tt}^{(2)}=\frac{4\mathcal A^2}{1+r^2},
\qquad
T_{rr}^{(2)}=\frac{4\mathcal A^2}{(1+r^2)^3},
$$

$$
T_{\phi\phi}^{(2)}
=\frac{4\mathcal A^2r^2(1-r^2)}{(1+r^2)^3}.
$$

The companion script verifies the massless Klein--Gordon equation and
$\nabla_\mu T^{(2)\mu\nu}=0$ exactly.

## 3. Matter-sourced metric

Use the stationary axisymmetric areal-radius ansatz

$$
ds^2=-e^{2\lambda\delta_2(r)}F(r)dt^2
+\frac{dr^2}{F(r)}+r^2d\phi^2,
$$

$$
F(r)=1+r^2+\lambda f_2(r).
$$

The regular-centre and fixed-boundary-time solution is

$$
f_2(r)=-\frac{4\mathcal A^2r^2}{1+r^2},
\qquad
\delta_2(r)=-\frac{2\mathcal A^2}{(1+r^2)^2}.
$$

Equivalently,

$$
k^{(2)}_{tt}=4\mathcal A^2,
\qquad
k^{(2)}_{rr}
=\frac{4\mathcal A^2r^2}{(1+r^2)^3},
\qquad
k^{(2)}_{\phi\phi}=0.
$$

The integration constant in $f_2$ is fixed by $F(0)=1$, which removes a
homogeneous conical defect at the global-AdS centre.  The additive constant
in $\delta_2$ is fixed by $\delta_2(\infty)=0$, which keeps the boundary time
normalization unchanged.  No rotational solution is added.

The response is regular at $r=0$ and obeys Brown--Henneaux falloffs:
$k^{(2)}_{tt}=O(1)$ and $k^{(2)}_{rr}=O(r^{-4})$.  xCoba verifies every
component of

$$
\mathcal E^{(1)}[k^{(2)}]-T^{(2)}=0.
$$

## 4. Brown--York outer charges

Using the global-AdS-subtracted project tensor

$$
\mathcal T_{ab}
=\frac1{\kappa_{\mathrm p}^2}
(K_{ab}-K\gamma_{ab}+\gamma_{ab}),
$$

the coefficient of the global Brown--York energy is

$$
[\varepsilon^2]H_{\partial_t,T}^{\infty}
=4\pi\mathcal A^2
=E_{\mathrm m}.
$$

For

$$
A=\{t=0,-a\leq\phi\leq a\},
\qquad 0<a<\frac\pi2,
$$

the boundary modular weight gives

$$
[\varepsilon^2]H_{\xi_A,T}^{\infty}
=8\pi\mathcal A^2
\left(1-a\cot a\right).
\tag{4.1}
$$

## 5. Matter modular energy

On $t=0$, the wedge is

$$
\frac{r\cos\phi}{\sqrt{1+r^2}}\geq\cos a,
$$

and the RT curve is

$$
r_{\mathrm{RT}}(\phi)
=\frac{\cos a}{\sqrt{\cos^2\phi-\cos^2a}}.
$$

The matter modular density factors as

$$
\sqrt\sigma\,\tau^\mu\xi_A^\nu T^{(2)}_{\mu\nu}
=\frac{8\pi\mathcal A^2r}
{(1+r^2)^2\sin a}
\left(
\frac{r\cos\phi}{\sqrt{1+r^2}}-\cos a
\right).
$$

Every factor is nonnegative in the wedge.  Exact radial and angular
integration gives

$$
[\varepsilon^2]H_{\xi_A}^{\mathrm m}
=8\pi\mathcal A^2
\left[
\frac{2+\cos^2a}{3}-a\cot a
\right].
\tag{5.1}
$$

This establishes positivity for the selected mode without importing a
general canonical-energy positivity theorem.

## 6. Direct RT-length response

Because the background geodesic is extremal and the anchors are fixed, the
interior embedding variation does not contribute at first order.  The metric
variation gives

$$
[\lambda]L_{\gamma_A}
=\frac12\int_{-a}^{a}d\phi\,
\frac{k^{(2)}_{ij}\dot X^i\dot X^j}
{\sqrt{G_{ij}\dot X^i\dot X^j}}
=\frac{4\mathcal A^2}{3}\sin^2a.
\tag{6.1}
$$

Since $\lambda=\kappa_{\mathrm p}^2\varepsilon^2$ and
$\kappa_{\mathrm p}^2/(4G)=2\pi$,

$$
[\varepsilon^2]\frac{L_{\gamma_A}}{4G}
=\frac{8\pi\mathcal A^2}{3}\sin^2a.
\tag{6.2}
$$

Combining (4.1), (5.1), and (6.2) gives the boxed result.

For the unit-normalized mode and $a=\pi/4$,

$$
\left{
[\varepsilon^2]H_{\xi_A,T}^{\infty},
[\varepsilon^2]H_{\xi_A}^{\mathrm m},
[\varepsilon^2]\frac{L_{\gamma_A}}{4G}
\right}
=\left\{
4-\pi,\frac{10}{3}-\pi,\frac23
\right\}.
$$

## 7. Local Noether--Stokes derivation

Use the project potentials

$$
\begin{aligned}
S_\xi^{\mu\nu}[k]
&=\xi_\rho\nabla^{[\mu}k^{\nu]\rho}
+\frac12k\nabla^{[\mu}\xi^{\nu]}
-k^{\rho[\mu}\nabla_\rho\xi^{\nu]},\\
S_{\xi,k}^{[0],\mu\nu}[k]
&=\xi^{[\mu}\left(
\nabla_\rho k^{\nu]\rho}-\nabla^{\nu]}k
\right),\\
C_\xi^{\mu\nu}[k]
&:=S_\xi^{\mu\nu}[k]-S_{\xi,k}^{[0],\mu\nu}[k].
\end{aligned}
\tag{7.1}
$$

With weight-one-half antisymmetrization, xCoba verifies all three components
of

$$
\nabla_\nu C_\xi^{\mu\nu}[k^{(2)}]
=\xi_\nu\mathcal E^{(1),\mu\nu}[k^{(2)}]
=\xi_\nu T^{(2),\mu\nu}.
\tag{7.2}
$$

On $t=0$ take

$$
\tau_\mu dx^\mu=-\sqrt{1+r^2}\,dt,
\qquad
n_{\infty,\mu}dx^\mu=\frac{dr}{\sqrt{1+r^2}}.
$$

The inner normal pointing out of the retained wedge, toward decreasing
$r\cos\phi/\sqrt{1+r^2}-\cos a$, is

$$
n_{\gamma,\mu}^{\rm out}dx^\mu
=-\frac{\cos\phi\,dr}
{\sqrt{1+r^2}\sqrt{1+r^2\sin^2\phi}}
+\frac{r\sqrt{1+r^2}\sin\phi\,d\phi}
{\sqrt{1+r^2\sin^2\phi}}.
\tag{7.3}
$$

For these orientations, Stokes gives

$$
H_{\xi_A}^{\mathrm m}
=Q_\infty^{\rm out}[C_\xi]
+Q_{\gamma_A}^{\rm out}[C_\xi].
\tag{7.4}
$$

The outer density agrees pointwise with the renormalized Brown--York density,

$$
\lim_{r\to\infty}
\sqrt q\,\tau_\mu n_\nu C_\xi^{\mu\nu}
=\frac{4\pi\mathcal A^2}{\sin a}
(\cos\phi-\cos a).
\tag{7.5}
$$

On the RT cut, $\xi_A=0$, so
$S_{\xi,k}^{[0]}[k]=0$ while the Killing-jet terms in $S_\xi[k]$ remain.  The
oriented density obeys the stronger pointwise equality

$$
\left.
\sqrt q\,\tau_\mu n_{\gamma,\nu}^{\rm out}
C_\xi^{\mu\nu}
\right|_{\gamma_A}
=-2\pi\frac{d\bigl([\lambda]L_{\gamma_A}\bigr)}{d\phi}.
\tag{7.6}
$$

Therefore

$$
Q_\infty^{\rm out}[C_\xi]
=H_{\xi_A,T}^{\infty},
\qquad
Q_{\gamma_A}^{\rm out}[C_\xi]
=-[\varepsilon^2]\frac{L_{\gamma_A}}{4G},
$$

and (7.4) proves the boxed result with its orientation fixed.

## 8. Finite inner wall and regulator removal

Introduce AdS--Rindler coordinates by

$$
\begin{aligned}
X_0&=\sinh\chi\sinh\tau,
&\frac{X_1-\cos a\,X_{-1}}{\sin a}
&=\sinh\chi\cosh\tau,\\
X_2&=\cosh\chi\sinh u,
&\frac{X_{-1}-\cos a\,X_1}{\sin a}
&=\cosh\chi\cosh u.
\end{aligned}
$$

Then

$$
ds^2=-\sinh^2\chi\,d\tau^2+d\chi^2
+\cosh^2\chi\,du^2,
\qquad
\xi_A=2\pi\partial_\tau.
\tag{8.1}
$$

Put the wall at $\mathcal H_{\chi_0}=\{\chi=\chi_0\}$ and retain
$\chi\geq\chi_0$, with inner outward normal $n=-d\chi$.  Fixed Dirichlet
data would exclude the scalar-amplitude variation, and no single-sided
reflecting condition is assumed.  Instead use the transparent two-sided
matching polarization

$$
\gamma^+_{ab}=\gamma^-_{ab},
\qquad
\Pi_+^{ab}+\Pi_-^{ab}=0,
\qquad
\Phi_+=\Phi_-,
\qquad
\pi_++\pi_-=0.
\tag{8.2}
$$

Here the signs label the retained wedge and the excised smooth collar, and
the momenta use their respective outward normals.  Equation (8.2) is a
Lagrangian correspondence.  The two matter source terms, the two
Einstein--GHY source terms, and both symplectic fluxes cancel exactly at every
finite $\chi_0$.  It preserves the global $U(1)$ and diffeomorphisms tangent
to the interface, and the selected global scalar and metric response satisfy
it by smooth continuation.  When the collar is removed, its cancellation is
reorganized into the exterior wall source and the fused-corner
transgression below.

On the symmetric cut $\tau=0$, define

$$
D_{\chi_0}(u)
:=\cosh\chi_0\cosh u+\cos a\sinh\chi_0.
$$

The required induced response components are

$$
k_{\tau\tau}
=\frac{4\mathcal A^2\sin^2a\sinh^2\chi_0}
{D_{\chi_0}(u)^2},
\qquad
k_{uu}
=\frac{4\mathcal A^2\sin^2a\cosh^2\chi_0\sinh^2u}
{D_{\chi_0}(u)^4}.
\tag{8.3}
$$

After stripping the common $1/\kappa_{\mathrm p}^2$, the background inner
momentum is $\Pi_0^{ab}=\operatorname{diag}(-1,1)$.  The gravitational wall
source and cut-length response densities are therefore

$$
b_{\chi_0}
=-\frac12\Pi_0^{ab}k_{ab}
=\frac12(k_{\tau\tau}-k_{uu}),
\qquad
\ell_{\chi_0}=\frac{k_{uu}}{2\cosh\chi_0}.
\tag{8.4}
$$

The wall-removal functional is the boost corner

$$
I_{\mathrm{fuse},\chi_0}
=\frac{2\pi}{\kappa_{\mathrm p}^2}L_{\chi_0}.
\tag{8.5}
$$

It is not an additional joint on the finite wall.  The exact source--corner
transgression has the small-wall expansion

$$
2\pi(b_{\chi_0}+\ell_{\chi_0})
=\chi_0^2\pi\mathcal A^2\sin^2a\,
\bigl(3+\cosh2u\bigr)\operatorname{sech}^4u
+O(\chi_0^3).
\tag{8.6}
$$

The leading function is integrable, so the integrated transgression tends to
zero.  At the fused cut,

$$
\ell_0(u)
=2\mathcal A^2\sin^2a\,
\tanh^2u\operatorname{sech}^2u,
\qquad
\int_{-\infty}^{\infty}du\,\ell_0(u)
=\frac{4\mathcal A^2}{3}\sin^2a.
\tag{8.7}
$$

Consequently

$$
[\varepsilon^2]I_{\mathrm{fuse},0}
=2\pi\int du\,\ell_0(u)
=\frac{8\pi\mathcal A^2}{3}\sin^2a
=[\varepsilon^2]\frac{L_{\gamma_A}}{4G}.
\tag{8.8}
$$

The complete Brown--York wall generator, the bulk Einstein--Hilbert Komar
term, and their GHY/Harlow--Wu descent all have zero
$[\varepsilon^2]$ density at every fixed $\chi_0>0$.  On $\tau=0$ the
wall--slice joint is orthogonal and its linear coefficient vanishes; the
Harlow--Wu endpoint vector has no contraction with the cut normal.  Thus
(8.8) is a regulator-removal corner, not a relabelled timelike-wall charge.

Finally, the matter modular density in the removed collar is

$$
\mathcal D_{\mathrm m}(\chi,u)
=\frac{8\pi\mathcal A^2\sin^4a\,
\sinh\chi\cosh\chi}{D_\chi(u)^4}
=8\pi\mathcal A^2\sin^4a\,
\chi\operatorname{sech}^4u+O(\chi^2).
\tag{8.9}
$$

Hence its integral is $O(\chi_0^2)$.  The wall densities fall as
$e^{-2|u|}$, while at a global cutoff $R$ the wall endpoint satisfies
$R(a-\phi_c)\to\sinh\chi_0$ and the outer Brown--York density vanishes
linearly at $\phi=\pm a$.  The anchor strips are therefore $O(R^{-2})$.
Taking $R\to\infty$ first and then $\chi_0\to0^+$ gives the boxed identity
from the differentiable transparent-interface action and the fused corner.

## 9. Factor-of-two convention

All displayed quantities are Taylor coefficients $[\varepsilon^2]$.  If
canonical energy is instead defined by the full second derivative along the
family, then

$$
\left.\frac{d^2}{d\varepsilon^2}\right|_{0}
=2[\varepsilon^2]
$$

on every quadratic quantity in this benchmark.

## Verified

- the massless Klein--Gordon equation and KG norm;
- the explicit Hilbert stress tensor and its background conservation;
- global matter energy and zero angular momentum;
- regular-centre and Brown--Henneaux behavior of the selected response;
- the complete background and sourced cosmological Einstein residuals;
- the exact matter modular-energy density, primitives, and integral;
- the global and interval Brown--York outer charges;
- the direct RT-length density, primitive, and integral;
- the exact equality of the three independently calculated finite numbers;
- all components of the local $k$-sector Noether--Stokes identity;
- the pointwise outer Brown--York and oriented RT area densities;
- the global-to-AdS--Rindler pullback and an independent xCoba background
  connection cross-check;
- the transparent matter-plus-gravity interface source and symplectic-flux
  cancellations;
- the finite-wall Brown--York/EH/GHY--Harlow--Wu split, orthogonal joint, and
  endpoint contraction on $\tau=0$;
- the source--fused-corner transgression, noncompact endpoint decay, collar
  matter limit, and global-cutoff anchor scaling.

The two companion xAct/xCoba scripts pass all 67 exact checks: 35 in the
smooth-wedge/local-current benchmark and 32 in the finite-wall benchmark.

## Assumptions

- classical minimally coupled massless complex scalar with the displayed
  action normalization;
- standard normalizable $r^{-2}$ falloff and no asymptotic matter
  superpotential charge;
- unit AdS radius and $\kappa_{\mathrm p}^2=8\pi G$;
- the stationary axisymmetric positive-frequency mode shown above;
- areal radial gauge, regular global-AdS centre, fixed boundary time, and no
  added homogeneous vacuum graviton;
- fixed interval anchors and $0<a<\pi/2$;
- transparent two-sided matching at the finite wall rather than a
  single-sided reflecting boundary condition;
- the global-cutoff limit is taken before the wall is fused;
- the modular charge is evaluated on the reflection-symmetric $\tau=0$ cut;
- the boost-corner normalization
  $I_{\mathrm{fuse}}=2\pi L/\kappa_{\mathrm p}^2$.

## Not verified

- a single-sided local reflecting wall polarization containing the modular
  orbit of the global mode, or sharp-wedge Hilbert-space factorization;
- a generic nontransparent gravitational wall polarization beyond the
  matching correspondence (8.2);
- nonorthogonal or moving endpoint joints away from the selected
  reflection-symmetric charge cut;
- real or non-axisymmetric modes within this original benchmark; the
  companion real-quadrature and $(n,m)=(0,1)$ notes now verify one of each;
- higher scalar modes, alternative boundary conditions, or another matter
  theory;
- nonlinear continuation to a boson star;
- matter loops, bulk entanglement entropy, quantum JLMS, or any graviton
  sector.

## Reproduction

Run the smooth-wedge/local-current regression with

```shell
wolframscript -file "Articles/Quantization in AdS/gravitational energy/matter mode backreaction modular wedge/scalar_single_mode_backreaction.wl"
```

Run the finite-wall regression with

```shell
wolframscript -file "Articles/Quantization in AdS/gravitational energy/matter mode backreaction modular wedge/scalar_inner_wall_finite_action.wl"
```

The intended outputs have all 35 and all 32 checks equal to `True`.  The
first ends with

```text
a=Pi/4 normalized values: {4 - Pi, 10/3 - Pi, 2/3}
```
