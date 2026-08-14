# Massless Real-Scalar Quadrature Benchmark

## Result

For the real quadrature of the lowest massless scalar normal mode in global
AdS$_3$, the stress tensor and its metric response contain a static sector and
a frequency-$2\omega=4$ sector.  On the reflection-symmetric $t=0$ wedge cut,
the independently computed smooth-wedge quantities obey

$$
\boxed{
[\varepsilon^2]H_{\xi_A,T}^{\infty}
= [\varepsilon^2]H_{\xi_A}^{\mathrm m}
+[\varepsilon^2]\frac{L_{\gamma_A}}{4G}
}
$$

for every $0<a<\pi/2$.  The time-dependent metric satisfies the local
Noether--Stokes identity in all components and admits the same transparent
two-sided finite-wall polarization as the complex mode.  Wall removal again
leaves the fused corner equal to the RT response.  Unlike the stationary
mode, however, the finite-wall Brown--York/EH/descent coefficients do not
vanish separately, and a general modular-time cut has a nonzero endpoint
boost.  This completes the real-quadrature Level-5 benchmark while isolating
which Level-4 zeros were consequences of stationarity and reflection
symmetry.

## 1. Conventions and real quadrature

Keep the background, coupling, modular-vector, and Taylor-coefficient
conventions of `scalar single mode benchmark.md`.  For a canonically
normalized real scalar,

$$
S_{\mathrm m}
=-\frac12\int_M d^3x\sqrt{-g}\,
g^{\mu\nu}\partial_\mu\varphi\partial_\nu\varphi,
$$

take

$$
u(t,r)=\mathcal A\frac{e^{-2it}}{1+r^2},
\qquad
\varphi=\varepsilon(u+u^*)
=2\varepsilon\mathcal A\frac{\cos2t}{1+r^2}.
\tag{1.1}
$$

Thus $\mathcal A^2=1/(2\pi)$ refers to unit KG norm of the underlying
positive-frequency mode $u$, not to a KG norm for the real solution
$u+u^*$.  The real quadrature has time-independent global energy

$$
[\varepsilon^2]E_{\mathrm m}=4\pi\mathcal A^2,
$$

and zero angular momentum.

The nonzero stress-tensor components are

$$
T_{tt}^{(2)}
=\frac{4\mathcal A^2}{(1+r^2)^2}
\left[1+r^2+(r^2-1)\cos4t\right],
$$

$$
T_{tr}^{(2)}
=\frac{8\mathcal A^2r\sin4t}{(1+r^2)^3},
$$

$$
T_{rr}^{(2)}
=\frac{4\mathcal A^2}{(1+r^2)^4}
\left[1+r^2+(r^2-1)\cos4t\right],
$$

$$
T_{\phi\phi}^{(2)}
=-\frac{4\mathcal A^2r^2}{(1+r^2)^3}
\left[r^2-1+(1+r^2)\cos4t\right].
\tag{1.2}
$$

In particular, $T_{tr}^{(2)}\neq0$ away from the reflection-symmetric cuts.
A stationary ansatz would therefore violate the sourced $tr$ equation.

## 2. Time-dependent metric response

Use polar--areal gauge,

$$
ds^2=-e^{2\lambda\delta_2(t,r)}F(t,r)dt^2
+\frac{dr^2}{F(t,r)}+r^2d\phi^2,
\qquad
F=1+r^2+\lambda f_2(t,r),
$$

with $\lambda=\kappa_{\mathrm p}^2\varepsilon^2$.  The regular-centre and
fixed-boundary-time solution is

$$
f_2(t,r)
=-\frac{4\mathcal A^2r^2}{1+r^2}
+\frac{4\mathcal A^2r^2}{(1+r^2)^2}\cos4t,
\tag{2.1}
$$

$$
\delta_2(t,r)
=-\frac{2\mathcal A^2}{(1+r^2)^2}
+\mathcal A^2\left[
-\frac{2}{(1+r^2)^2}
+\frac{8}{3(1+r^2)^3}
\right]\cos4t.
\tag{2.2}
$$

The conditions

$$
f_2(t,0)=0,
\qquad
\delta_2(t,\infty)=0
$$

exclude a conical-centre homogeneous mode and a time-dependent boundary-time
renormalization.  No independent Brown--Henneaux graviton is added.

Equivalently,

$$
k^{(2)}_{tt}
=4\mathcal A^2
-\frac{4\mathcal A^2}{3(1+r^2)^2}\cos4t,
$$

$$
k^{(2)}_{rr}
=\frac{4\mathcal A^2r^2}{(1+r^2)^3}
-\frac{4\mathcal A^2r^2}{(1+r^2)^4}\cos4t,
\qquad
k^{(2)}_{\phi\phi}=0.
\tag{2.3}
$$

The oscillating response is normalizable and carries no additional
asymptotic charge.  xCoba verifies all components of

$$
\mathcal E^{(1)}_{\mu\nu}[k^{(2)}]
=T^{(2)}_{\mu\nu}
$$

and the background conservation of (1.2).

## 3. Smooth-wedge charges on $t=0$

The oscillating part of (2.3) is subleading at the outer boundary.  Hence

$$
[\varepsilon^2]H_{\xi_A,T}^{\infty}
=8\pi\mathcal A^2(1-a\cot a).
\tag{3.1}
$$

On $t=0$, the matter modular density has the manifestly nonnegative form

$$
\sqrt\sigma\,\tau^\mu\xi_A^\nu T^{(2)}_{\mu\nu}
=\frac{16\pi\mathcal A^2r^3}{(1+r^2)^3\sin a}
\left(
\frac{r\cos\phi}{\sqrt{1+r^2}}-\cos a
\right).
$$

Exact integration over the wedge gives

$$
[\varepsilon^2]H_{\xi_A}^{\mathrm m}
=\frac{8\pi\mathcal A^2}{15}
\left[
12+\cos^2a+2\cos^4a-15a\cot a
\right].
\tag{3.2}
$$

The direct metric variation of the background RT curve gives

$$
[\lambda]L_{\gamma_A}
=\frac{4\mathcal A^2}{15}\sin^2a
\left(3+2\cos^2a\right),
\tag{3.3}
$$

and therefore

$$
[\varepsilon^2]\frac{L_{\gamma_A}}{4G}
=\frac{8\pi\mathcal A^2}{15}\sin^2a
\left(3+2\cos^2a\right).
\tag{3.4}
$$

Equations (3.1)--(3.4) give the boxed identity.  For
$\mathcal A^2=1/(2\pi)$ and $a=\pi/4$ the three terms are

$$
\left\{
4-\pi,\frac{52}{15}-\pi,\frac{8}{15}
\right\}.
$$

## 4. Local Noether--Stokes check

Use the same project potential $C_\xi^{\mu\nu}[k]$ and orientations as in the
complex-mode benchmark.  The companion regression verifies all components
of

$$
\nabla_\nu C_\xi^{\mu\nu}[k^{(2)}]
=\xi_\nu\mathcal E^{(1),\mu\nu}[k^{(2)}]
=\xi_\nu T^{(2),\mu\nu}
\tag{4.1}
$$

without first setting $t=0$.  On the $t=0$ cuts, the outer density equals the
renormalized Brown--York density pointwise and the oriented RT density is
minus $2\pi$ times the direct length-response density.  Thus the integrated
identity agrees with the independent calculations in Section 3.

## 5. Finite wall and the surviving endpoint term

Pull (2.3) and (1.2) back to the wall
$\mathcal H_{\chi_0}=\{\chi=\chi_0\}$.  Matching the fields and induced
metric while taking opposite outward momenta gives the same Lagrangian
correspondence as in the complex-mode benchmark,

$$
\gamma^+_{ab}=\gamma^-_{ab},
\qquad
\Pi_+^{ab}+\Pi_-^{ab}=0,
\qquad
\varphi_+=\varphi_-,
\qquad
\pi_++\pi_-=0.
\tag{5.1}
$$

The matter and gravitational source pairs and their symplectic fluxes cancel
exactly at every finite $\chi_0$.  This cancellation does not use
stationarity.

### 5.1 Symmetric cut and wall removal

On $\tau=0$, define $\ell_{\chi_0}(u)$ as the first variation of the cut
length density.  Its fused limit is

$$
\ell_0(u)
=\mathcal A^2\sin^2a\,
\bigl(\cos2a+\cosh2u\bigr)
\operatorname{sech}^4u\tanh^2u,
\tag{5.2}
$$

with

$$
\int_{-\infty}^{\infty}du\,\ell_0(u)
=\frac{4\mathcal A^2}{15}\sin^2a
\bigl(3+2\cos^2a\bigr).
\tag{5.3}
$$

Consequently the wall-removal boost corner obeys

$$
[\varepsilon^2]I_{\mathrm{fuse},0}
=2\pi\int du\,\ell_0(u)
=[\varepsilon^2]\frac{L_{\gamma_A}}{4G}.
\tag{5.4}
$$

The stationary-mode finite-wall zero does not persist componentwise.  The
Brown--York wall-generator density is generically nonzero at fixed
$\chi_0$, although it is $O(\chi_0^2)$.  With the common
$1/\kappa_{\mathrm p}^2$ stripped, its Einstein--Hilbert and boundary-descent
pieces instead have the limits

$$
\mathcal H_{\mathrm{BY}}\longrightarrow0,
\qquad
\mathcal H_{\mathrm{EH}}\longrightarrow-2\pi\ell_0(u),
\qquad
\mathcal H_{\mathrm{descent}}\longrightarrow+2\pi\ell_0(u).
\tag{5.5}
$$

Thus the complete generator on the artificial wall still vanishes in the
fused limit, but by a nontrivial EH/descent cancellation.  The positive area
term in (5.4) is the separate wall-removal corner, not either uncancelled
piece of (5.5).

The GHY-source plus cut-length transgression has no constant or linear term
in $\chi_0$; its leading $O(\chi_0^2)$ density is integrable and falls as
$e^{-2|u|}$.  The omitted collar matter density is

$$
\mathcal D_{\mathrm m}(\chi,u)
=16\pi\mathcal A^2\sin^4a\,\chi
\left[
\operatorname{sech}^4u
-\sin^2a\operatorname{sech}^6u
\right]+O(\chi^2),
\tag{5.6}
$$

so its integral is $O(\chi_0^2)$.  The fixed-wall area and source densities
have matching $e^{-2|u|}$ tails.  Since the outer density and the background
wall--cutoff intersection are unchanged, the original $O(R^{-2})$ anchor
strip estimate applies.

### 5.2 General modular-time cut

At $\tau=0$, reflection symmetry gives
$k_{\tau\chi}=0$, so both the fully Dirichlet Hayward joint coefficient and
the Harlow--Wu endpoint contraction vanish.  At a general fixed
$\tau=\tau_s$, this is false.  For the ordered normals used in this project,
the fused Hayward density coefficient is

$$
\begin{aligned}
\mathfrak j_{\mathrm H,0}(\tau,u)
={}&4\mathcal A^2\sin^2a\,\sinh\tau\cosh\tau\,
\operatorname{sech}^6u\\
&\times\left[
\cosh^4u+\cos^2a\cosh^2u
-\cos^2a\sin^2a-\frac13\sin^4a
\right].
\end{aligned}
\tag{5.7}
$$

It is finite, falls as $e^{-2|u|}$, and has the nonzero integral

$$
\int_{-\infty}^{\infty}du\,\mathfrak j_{\mathrm H,0}
=\frac{4\mathcal A^2\sin^2a}{45}
\left(54+19\cos2a+2\cos4a\right)\sinh2\tau.
\tag{5.8}
$$

The corresponding Harlow--Wu cut-density coefficient is one half of (5.7)
in the same orientation convention.  These two expressions belong to
different variational problems: the former to the fully Dirichlet
piecewise-smooth action and the latter to the inherited time-evolution
endpoint one-form.  They are compared, not added.  Equation (5.8) proves
that the endpoint zero of the original benchmark was a property of the
reflection-symmetric cut, not a generic finite-wall theorem.

## Verified

- the real massless Klein--Gordon equation;
- the static plus frequency-four stress tensor and its conservation;
- time-independent global energy and zero angular momentum;
- the regular, Brown--Henneaux time-dependent metric response;
- all components of the sourced linearized Einstein equation;
- the exact matter modular density, primitives, and integral on $t=0$;
- the global and interval Brown--York outer charges;
- the direct RT-length density, primitive, and integral;
- the exact outer-equals-matter-plus-area identity;
- all components of the time-dependent local Noether--Stokes identity;
- the pointwise outer and oriented RT surface densities;
- the real scalar and metric transparent-interface source and flux
  cancellations;
- the finite-wall Brown--York/EH/descent split on $\tau=0$;
- the fused length density, source transgression, collar limit, and
  noncompact endpoint tails;
- the zero symmetric-cut endpoint coefficient and the nonzero general-cut
  Hayward and Harlow--Wu coefficients.

The two companion xAct/xCoba regressions pass all 62 exact checks: 30 in the
smooth-wedge script and 32 in the finite-wall script.

## Assumptions

- classical minimally coupled real scalar with the displayed action
  normalization;
- the real quadrature (1.1) and the unit-KG convention for its underlying
  positive-frequency mode;
- unit AdS radius and $\kappa_{\mathrm p}^2=8\pi G$;
- polar--areal gauge, regular global-AdS centre, fixed boundary time, and no
  added homogeneous vacuum graviton;
- fixed interval anchors, $0<a<\pi/2$, and the reflection-symmetric $t=0$
  charge cut for the outer--matter--RT equality;
- standard normalizable scalar falloff and no asymptotic matter
  superpotential charge;
- transparent two-sided finite-wall matching rather than a single-sided
  reflecting condition;
- the original global-cutoff-before-wall-removal order;
- the project ordered-normal convention for (5.7), with the overall Hayward
  orientation sign kept separate.

## Not verified

- a generic moving-cut or nonorthogonal-joint theorem;
- a complete moving-embedding phase space in which the wall shape and
  endpoint location vary simultaneously;
- a nonzero-angular-momentum scalar mode within this real-quadrature
  calculation; the separate $(n,m)=(0,1)$ benchmark now verifies that case;
- a single-sided reflecting wall, wedge factorization, matter loops, bulk
  entropy, or quantum JLMS.

## Reproduction

Run

```shell
wolframscript -file "Articles/Quantization in AdS/gravitational energy/matter mode backreaction modular wedge/scalar_real_quadrature_backreaction.wl"
```

The intended output has all 30 checks equal to `True` and ends with

```text
a=Pi/4 normalized values: {4 - Pi, 52/15 - Pi, 8/15}
```

Run the finite-wall regression with

```shell
wolframscript -file "Articles/Quantization in AdS/gravitational energy/matter mode backreaction modular wedge/scalar_real_quadrature_inner_wall.wl"
```

Its intended output has all 32 checks equal to `True` and ends with the
general-cut integral (5.8).
