# Hollands--Wald Gauge as a Boundary-Value Problem

## Status and main result

The gauge problem separates into a geometric Dirichlet datum on the extremal
curve and independent normal jets at the curve.  In AdS$_3$ the first datum is
controlled by the geodesic Jacobi operator

$$
J=-D_u^2+1.
\tag{1.1}
$$

For the compact BTZ bifurcation circle, $J$ is strictly invertible and two
explicit nonzero Kruskal-smooth Brown--Henneaux completions are constructed.
For the anchored AdS-Rindler curve, $J$ has a unique decaying Green inverse.
For the selected mode, its unique normal extremal-gauge vector has precisely
the proper Brown--Henneaux falloff at both anchors.

Thus there is no Jacobi zero-mode obstruction in either benchmark.  The
remaining AdS-Rindler issue is a uniform off-curve extension of the full
Gaussian-null jets through the anchor collar.  It is not an obstruction to
the extremal gauge that is sufficient for the canonical-energy identity.

## 1. Conditions and their logical strength

The first Hollands--Wald condition is extremal gauge:

$$
\delta_{h+\mathcal L_vG}K_a\big|_\gamma=0.
\tag{1.2}
$$

The second condition chooses Gaussian-null normal coordinates.  At the
bifurcation cut it can in particular be imposed as

$$
(h+\mathcal L_vG)_{kk}=0,
\qquad
(h+\mathcal L_vG)_{ll}=0.
\tag{1.3}
$$

The primary source checked in 2501 Appendix B.1 proves that smooth two-sided
extremal gauge already removes the canonical-energy boundary term.  Full
Gaussian-null gauge is a convenient stronger representative.  The two
conditions should therefore not be conflated when discussing global anchor
existence.

## 2. Extremal datum and normal jets

In a parallel normal frame along an AdS$_3$ geodesic,

$$
\delta_hK_a
=\frac12\nabla_a h_{uu}-D_uh_{ua}.
\tag{2.1}
$$

Under the project gauge convention $h\mapsto h+\mathcal L_vG$,

$$
\delta_{\mathcal L_vG}K_a=(Jv_\perp)_a.
\tag{2.2}
$$

Consequently the normal value of the required vector is fixed by

$$
\boxed{
Jv_{\perp a}=-\delta_hK_a.
}
\tag{2.3}
$$

Once (2.3) is solved, the two independent first normal jets may be chosen as

$$
\nabla_kv_k=-\frac12h_{kk},
\qquad
\nabla_lv_l=-\frac12h_{ll}.
\tag{2.4}
$$

These choices impose (1.3).  They do not alter (2.3): a vector that vanishes
on the entire cut changes neither the surface position nor its linearized
extrinsic curvature, irrespective of these independent normal jets.  The
tangential value $v_u|_\gamma$ remains a surface reparametrization and can be
selected to meet the outer boundary condition.

## 3. Compact BTZ: no zero modes

Let $u=r_+\phi$ with $\phi\sim\phi+2\pi$.  In a periodic parallel normal
frame,

$$
J e^{in\phi}
=\left(1+\frac{n^2}{r_+^2}\right)e^{in\phi}.
\tag{3.1}
$$

Every eigenvalue is strictly positive.  Hence (2.3) has a unique periodic
normal solution for every smooth source, and there is no compact Jacobi
zero-mode obstruction.  Equations (2.4) then give a smooth local full
Hollands--Wald representative.  A smooth bump supported in a tubular
neighborhood extends it to a global vector that vanishes before the AdS
boundary, so Brown--Henneaux data are unchanged.

### 3.1 Two nonzero smooth Brown--Henneaux completions

Use smooth Kruskal coordinates $(U,V,\phi)$,

$$
\mathrm ds^2
=-\frac{4\,\mathrm dU\mathrm dV}{(1+UV)^2}
+r_+^2\left(\frac{1-UV}{1+UV}\right)^2\mathrm d\phi^2.
\tag{3.2}
$$

For the left $m=1$ and right $m=2$ sectors choose the horizon generators

$$
w_{1,+}=\cos\phi\,\partial_\phi,
\qquad
w_{2,-}=\sin2\phi\,\partial_\phi.
\tag{3.3}
$$

Their metric perturbations are smooth and, at $U=V=0$,

$$
\begin{aligned}
(\mathcal L_{w_{1,+}}G)_{\phi\phi}
&=-2r_+^2\sin\phi,\\
(\mathcal L_{w_{2,-}}G)_{\phi\phi}
&=4r_+^2\cos2\phi,
\end{aligned}
\tag{3.4}
$$

while $h_{UU}=h_{VV}=h_{U\phi}=h_{V\phi}=0$.  Their invariant norms on the
cut are

$$
4\sin^2\phi,
\qquad
16\cos^22\phi,
\tag{3.5}
$$

and are finite and nonzero.  Since the first $U,V$ derivatives of
$h_{\phi\phi}$ vanish on the cut, (2.1) vanishes as well.  These are already
full local HW representatives.

Let $\chi(\rho)$ be zero for $\rho\leq\rho_0$ and one for
$\rho\geq2\rho_0$.  With the asymptotic generators used in the Neumann
benchmark, define

$$
\zeta_{m,\sigma}^{\rm smooth}
=\chi(\rho)\zeta_{m,\sigma}^{\rm BH}
+[1-\chi(\rho)]w_{m,\sigma}.
\tag{3.6}
$$

The metric $\mathcal L_{\zeta^{\rm smooth}}G$ is an exact linearized vacuum
solution, equals the chosen Brown--Henneaux mode near infinity, and equals the
nonzero smooth representative (3.4) near the horizon.  Since $\chi$ is
constant on a full horizon neighborhood, the fact that $\rho$ itself is not
a smooth Kruskal coordinate at the origin causes no loss of smoothness.

The smooth representatives (3.6) need not lie in the fixed-wall trace-Neumann
polarization.  Their nonzero horizon datum is a tangential surface
diffeomorphism and belongs naturally to the moving-edge branch.  Thus they
solve the regularity/HW problem, not the separate universal-polarization
problem.

## 4. Anchored AdS-Rindler: intrinsic inverse

For $u\in\mathbb R$, the Green kernel with decay at both anchors is

$$
G_J(u,u')=\frac12e^{-|u-u'|},
\qquad
J G_J=\delta(u-u').
\tag{4.1}
$$

Therefore

$$
\boxed{
v_{\perp a}(u)
=-\frac12\int_{-\infty}^{\infty}
e^{-|u-u'|}\delta_hK_a(u')\,\mathrm du'.
}
\tag{4.2}
$$

There is no $L^2$ Jacobi zero mode.  The homogeneous solutions $e^{\pm u}$
are non-normalizable resonances.  If one imposed the stronger condition
$v_\perp=o(e^{-|u|})$, two moment conditions on the source would appear.
Brown--Henneaux properness only requires the indicial $e^{-|u|}$ rate in the
present benchmark, so those extra conditions are not imposed.

## 5. Selected AdS-Rindler mode: a proper extremal vector

For the real $a=\pi/4$ mode already used by the project,
$h=\mathcal L_\zeta G$.  Hence

$$
\delta_hK_a=J\zeta_{\perp a},
\qquad
v_{\perp a}=-\zeta_{\perp a}
\tag{5.1}
$$

is the unique decaying solution.  In the parallel orthonormal frame
$(n_{(0)},n_{(1)})$ of `ads_rindler_area_endpoint_check.wl`, its upper normal
components simplify to

$$
v^{(0)}
=\frac{\cosh2u}{4\sqrt{6\pi}\cosh^3u},
\tag{5.2}
$$

$$
v^{(1)}
=\frac12\sqrt{\frac3{2\pi}}
\operatorname{sech}u
\left(1+2\operatorname{sech}2u\right)\tanh u.
\tag{5.3}
$$

Set the tangential component on the RT curve to zero and form
$v=v^{(a)}n_{(a)}$.  With $r_{\rm RT}^2=\cosh2u$, the exact anchor limits are

$$
\lim_{u\to+\infty}
\left(r^2v^t,rv^r,r^2v^\phi\right)
=\left(
\frac1{2\sqrt{3\pi}},
\sqrt{\frac3\pi},
-\sqrt{\frac3\pi}
\right),
\tag{5.4}
$$

$$
\lim_{u\to-\infty}
\left(r^2v^t,rv^r,r^2v^\phi\right)
=\left(
\frac1{2\sqrt{3\pi}},
\sqrt{\frac3\pi},
\sqrt{\frac3\pi}
\right).
\tag{5.5}
$$

Thus

$$
v^t=O(r^{-2}),
\qquad
v^r=O(r^{-1}),
\qquad
v^\phi=O(r^{-2}),
\tag{5.6}
$$

which is exactly the proper falloff used by the earlier regulated completion
$v_L$.  Unlike $v=-\zeta$ on the entire RT curve, the intrinsic solution
removes only the normal displacement.  The large radial component of
$-\zeta$ is tangential to the geodesic near an anchor and is not required by
extremal gauge.  This resolves the apparent conflict between fixing the
surface and preserving the Brown--Henneaux state.

The projected mode-space continuation is now given in
`field-dependent Hollands-Wald section.md`. The fixed-anchor projection
cancels the nonproper $e^{|u|}$ normal trace; the exact parity expansion has
no intermediate constant term. The projected trace leaves
$e^{-|u|}$ coefficients of degree two in frequency. Every finite spectral
block has a smooth global Fermi extension tapered off before infinity, and
the diagonal family has a continuous weighted normal-trace limit. A single
fixed-width Gaussian-null collar for the completed infinite sum remains a
stronger technical target, but is not required for the canonical-energy
boundary-term result.

## Verification status

**Verified:** the compact Kruskal perturbations, their invariant norms and
linear extremality; compact Jacobi eigenvalues and the $m=1,2$ solves; the two
normal-jet equations; the AdS-Rindler Green kernel; and every anchor limit in
(5.4)--(5.6).  `hollands_wald_boundary_value_check.wl` performs these checks
exactly.

**Assumptions:** unit AdS radius; $r_+>0$; the parallel normal frames used by
the existing area-displacement script; smooth two-sided perturbations when
using the extremal-gauge sufficiency statement; and proper diffeomorphisms
with the component falloffs (5.6).

**Not verified:** a global fixed-width Gaussian-null collar reaching both
AdS-Rindler anchors; a nonlinear field-dependent HW bracket; or compatibility
of the compact nonzero smooth representatives with one fixed-wall Neumann
polarization.
