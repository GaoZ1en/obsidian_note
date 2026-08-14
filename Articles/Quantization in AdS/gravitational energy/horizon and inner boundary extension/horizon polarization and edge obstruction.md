# Horizon Polarization and the Fixed-Boost Edge Obstruction

## Status

This note begins the phase-space existence extension of the conditional
finite-action theorem. It constructs an explicit Brown--York Neumann
polarization at a compact BTZ brick wall, tests two independent chiral modes,
and isolates an obstruction that appears when the area family is required to
keep the horizon boost normalization fixed.

The result is not that Neumann boundary conditions fail. Rather, wall and
corner polarizations must be transformed together. A fixed-wall Legendre
transform by itself changes the limiting area-corner coefficient.

## 1. Brown--York canonical pair

On the inner wall, with the normal pointing out of the retained exterior,
define

$$
\Pi^{ij}:=\sqrt{-\gamma}\,\mathcal T^{ij},
\qquad
\mathcal B:=-\frac12\Pi^{ij}\delta\gamma_{ij}.
\tag{1.1}
$$

The trace Legendre density is

$$
w_{\rm N}:=\frac12\Pi^{ij}\gamma_{ij}.
\tag{1.2}
$$

Its variation gives the exact field-space identity

$$
\boxed{
\mathcal B+\delta w_{\rm N}
=\frac12\gamma_{ij}\delta\Pi^{ij}.
}
\tag{1.3}
$$

Thus fixing $\Pi^{ij}$ defines a Lagrangian Neumann polarization and makes the
finite-wall action differentiable. The associated symplectic flux is

$$
\mathcal F_{\mathcal H}
=-\frac12\delta\Pi^{ij}\wedge\delta\gamma_{ij},
\tag{1.4}
$$

which vanishes on $\delta\Pi^{ij}=0$.

## 2. Fixed-$t$ BTZ family

For

$$
\mathrm ds^2
=\mathrm d\rho^2-r_+^2\sinh^2\rho\,\mathrm dt^2
+r_+^2\cosh^2\rho\,\mathrm d\phi^2,
\tag{2.1}
$$

the exact momentum density is

$$
\boxed{
\Pi^{ij}
=\frac1{\kappa_{\rm p}^2}
\begin{pmatrix}-1&0\\0&1\end{pmatrix}_{(t,\phi)}.
}
\tag{2.2}
$$

It is independent of $r_+$ and $\rho$. Consequently

$$
\partial_{r_+}\Pi^{ij}=0,
\qquad
\partial_{r_+}A_\gamma=2\pi\neq0.
\tag{2.3}
$$

The Neumann density and source identity are

$$
w_{\rm N}
=\frac{r_+^2\cosh2\rho}{2\kappa_{\rm p}^2},
\qquad
\mathcal B[\partial_{r_+}]
+\partial_{r_+}w_{\rm N}=0.
\tag{2.4}
$$

This is an explicit area-changing Lagrangian tangent direction. Its
limitation is that the normalization of $\partial_t$ at the horizon changes
with $r_+$. It is therefore not the fixed-boost comparison family used in the
area-corner theorem.

## 3. Two chiral Brown--Henneaux modes

Let

$$
f_{m,\sigma}=\cos[m(t+\sigma\phi)],
\qquad \sigma=\pm1,
\tag{3.1}
$$

and use the exact radial-gauge Brown--Henneaux representative already employed
in the compact benchmark. Direct linearization of (1.1) gives

$$
\delta_{h_{1,+}}\Pi^{ij}=0,
\qquad
\delta_{h_{2,-}}\Pi^{ij}=0.
\tag{3.2}
$$

The mixed wall flux between $h_{1,+}$ and the fixed-$t$ area variation is
therefore zero. This verifies the Neumann canonical-pair condition on three
independent tangents: the zero-mode area direction, a left $m=1$ mode, and a
right $m=2$ mode.

The raw chiral representatives are not smooth at the bifurcation surface.
Their invariant norms obey

$$
\lim_{\rho\to0^+}\rho^2
h_{1,+\,\mu\nu}h_{1,+}^{\mu\nu}
=\frac{(1+r_+^2)^2}{2r_+^4}\sin^2(t+\phi),
\tag{3.3}
$$

$$
\lim_{\rho\to0^+}\rho^2
h_{2,-\,\mu\nu}h_{2,-}^{\mu\nu}
=\frac{2(4+r_+^2)^2}{r_+^4}\sin^2[2(t-\phi)].
\tag{3.4}
$$

Hence they have a genuine $\rho^{-2}$ invariant divergence. The existing
collar completion removes this divergence by making the perturbation vanish
near the wall, but then the mode probes only the trivial
$\delta\gamma=\delta\Pi=0$ corner of the Neumann phase space. Constructing a
nonzero smooth horizon representative is the Hollands--Wald boundary-value
problem, not a further algebraic polarization check.

## 4. Fixed-boost family

Use a unit flow coordinate $\lambda$ and keep the boost normalization $s$
fixed:

$$
\mathrm ds^2
=\mathrm d\rho^2-s^2\sinh^2\rho\,\mathrm d\lambda^2
+r_+^2\cosh^2\rho\,\mathrm d\phi^2.
\tag{4.1}
$$

Now

$$
\Pi^{ij}
=\frac1{\kappa_{\rm p}^2}
\begin{pmatrix}
-r_+/s&0\\[1mm]
0&s/r_+
\end{pmatrix}_{(\lambda,\phi)},
\tag{4.2}
$$

so the area variation is not Neumann:

$$
\partial_{r_+}\Pi^{ij}
=\frac1{\kappa_{\rm p}^2}
\begin{pmatrix}
-1/s&0\\[1mm]
0&-s/r_+^2
\end{pmatrix}.
\tag{4.3}
$$

Per unit $\lambda\,\mathrm d\phi$, the original source and Neumann density are

$$
\mathcal B[\partial_{r_+}]
=-\frac{s\cosh^2\rho}{\kappa_{\rm p}^2},
\qquad
w_{\rm N}
=\frac{s r_+\cosh2\rho}{2\kappa_{\rm p}^2},
\tag{4.4}
$$

and therefore

$$
\mathcal B[\partial_{r_+}]
+\partial_{r_+}w_{\rm N}
=-\frac{s}{2\kappa_{\rm p}^2}.
\tag{4.5}
$$

The fixed-$t$ and fixed-boost families must not be identified by the
field-dependent coordinate replacement $t=s\lambda/r_+$. They represent
different choices of fixed boundary data.

## 5. Trace-Legendre transgression obstruction

Consider the one-parameter family of wall actions

$$
w_\zeta:=\zeta w_{\rm N}.
\tag{5.1}
$$

The fixed-boost fused corner has

$$
I_{\rm fuse,\rho}
=\frac{sA_\rho}{\kappa_{\rm p}^2},
\qquad
A_\rho=2\pi r_+\cosh\rho.
\tag{5.2}
$$

The exact regulator-removal residual is

$$
\begin{aligned}
\mathfrak R_\zeta(\rho)
:={}&2\pi\left(
\mathcal B[\partial_{r_+}]
+\partial_{r_+}w_\zeta
\right)
+\partial_{r_+}I_{\rm fuse,\rho},\\
\lim_{\rho\to0^+}\mathfrak R_\zeta(\rho)
={}&\boxed{\frac{\pi s}{\kappa_{\rm p}^2}\,\zeta}.
\end{aligned}
\tag{5.3}
$$

The untransformed source-retaining action, $\zeta=0$, has the verified
wall-to-corner transgression. Every nonzero trace Legendre transform leaves a
finite area-order residual. In particular, the Neumann choice $\zeta=1$
leaves $\pi s/\kappa_{\rm p}^2$.

Equation (5.3) is an obstruction within the trace-Legendre family, not a
no-go theorem for every conceivable mixed polarization. It proves that a wall
Legendre transform cannot be made while leaving the fused corner
polarization untouched.

## 6. Edge interpretation and moving-action result

The fused term already displays the missing canonical pair:

$$
I_{\rm fuse}=\frac{sA_\gamma}{\kappa_{\rm p}^2},
\qquad
\delta I_{\rm fuse}
=\frac1{\kappa_{\rm p}^2}
(s\,\delta A_\gamma+A_\gamma\,\delta s).
\tag{6.1}
$$

The moving-action derivation in `moving embedding and edge phase space.md`
shows that the canonical pair is the area density and the finite relative
boost angle $\eta$. Its two-form is

$$
\Omega_{\rm edge}
=\frac{\sigma_J}{\kappa_{\rm p}^2}
\delta\eta\wedge\delta A_\gamma.
\tag{6.2}
$$

For the compact unit-flow fusion, $\eta=s$ and $\sigma_J=+1$. The integrated
trace wall generator has the limiting value

$$
W_\zeta=\frac\zeta2 I_{\rm fuse}.
\tag{6.3}
$$

Consequently the matched boundary-polarization representative is

$$
I_{{\rm corner},\zeta}
=\left(1-\frac\zeta2\right)I_{\rm fuse}.
\tag{6.4}
$$

With (6.4), the residual (5.3) vanishes exactly. This changes the
finite-action boundary-polarization representative, not the oppositely
oriented bulk Noether corner: the physical Noether/area normalization remains
$sA_\gamma/\kappa_{\rm p}^2$. If one instead requires the boundary comparison
functional itself to remain exactly $I_{\rm fuse}$, equation (5.3) is a
no-go result for every $\zeta\ne0$ in the trace-Legendre family.

## Verification status

**Verified:** equations (2.2)--(2.4), (3.2)--(3.4), (4.2)--(4.5), and
(5.3) are exact symbolic results. The standalone script
`btz_horizon_neumann_polarization_check.wl` passes $19/19$ tests.

**Assumptions:** three-dimensional Einstein gravity; unit AdS radius;
$r_+>0$, $s>0$, $\rho>0$; inner outward normal $-\partial_\rho$; no inner AdS
counterterm; fixed wall embedding; and the project definition
$\kappa_{\rm p}^2=8\pi G$.

**Not verified:** a nonzero Kruskal-smooth Brown--Henneaux representative at
the wall; a general mixed polarization beyond (5.1); and a global
field-dependent edge generator for the Hollands--Wald completion. The
moving-joint pair and compact matching are derived separately in
`moving embedding and edge phase space.md`.
