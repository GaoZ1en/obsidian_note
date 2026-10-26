# Independent order estimate for the canonical mass kernel

## Scope and relation to the geometric argument

This note checks the canonical null jets independently and proves a uniform
order-three bound for the common radial-cutoff family in the **three
independent squared masses**. It supplies an ingredient for a geometric
pullback argument. The existence of this mass distribution alone does not
assert its restriction to a critical physical momentum submanifold.

The newer fixed-transverse-injection construction in
`half_bps_stress_partial_injection.md` has a stronger practical feature:
it keeps the transverse injection as a parameter. Its core estimate can
use any fixed distribution order, without applying an order-three estimate
to a shrinking transverse profile. The present estimate remains a useful
independent check of the null contact prescription.

All formulas are for a fixed retarded energy sign on a local energy chart.
Sign-changing zero-energy points are handled by the actual retarded
distribution in the full output momentum in the companion construction.

## 1. An integrable undifferentiated mass seed

Put

\[
H_\sigma(t;x,y)=\frac1\pi\int_0^\pi
\frac{d\vartheta}{t-x-y+2\sqrt{xy}\cos\vartheta+i0\sigma},
\qquad x,y\ge0.
\]

For positive inputs its boundary value is the ordinary locally integrable
function

\[
H_\sigma=
\begin{cases}
\operatorname{sgn}(t-x-y)/\sqrt\lambda,&\lambda>0,\\
-i\sigma/\sqrt{-\lambda},&\lambda<0,
\end{cases}
\quad
\lambda=(t-x-y)^2-4xy.
\]

The zero extension
\(C_\sigma=\theta(x)\theta(y)H_\sigma\) is locally integrable
in all three mass variables, including their common origin. One elementary
proof integrates the output mass first. On a fixed compact interval, with
\(B=2\sqrt{xy}>0\),

\[
\int_{|t|\le M}|H_\sigma(t;x,y)|\,dt
\le C_M\bigl(1+|\log x|+|\log y|\bigr)
\]

for \(0<x,y\le M\). The square-root endpoints contribute finite constants;
the interval away from them contributes the displayed logarithm. These
logarithms are integrable in \(dx\,dy\). The same estimate and the exact
mass homogeneity \(-1\) give a weighted global order-zero bound.

## 2. The two jets and the order-three conclusion

Define the retarded one-variable distribution

\[
R_\sigma(d)=(d+i0\sigma)^{-1},\qquad d=t-y.
\]

Hankel orthogonality and the Bessel equation give

\[
H_\sigma(t;0,y)=R_\sigma(t-y),
\]

\[
\partial_xH_\sigma(t;0,y)
=\partial_y\bigl[y\partial_y R_\sigma(t-y)\bigr]
=R_\sigma(t-y)^2+2yR_\sigma(t-y)^3.
\tag{1}
\]

The traces in (1) are one-sided mass traces of the common radial integral.
They can also be defined by first pairing its unraised free input with a
test and then using rapid Hankel decay. They therefore include the
simultaneous endpoint \(t=y=0\).

At finite radial cutoff, two integrations by parts in \(x\ge0\) give
the exact identity

\[
\boxed{
\begin{aligned}
T_\sigma={}&\partial_x^2 C_\sigma\\
&-\delta(x)\theta(y)
\bigl[R_\sigma(t-y)^2+2yR_\sigma(t-y)^3\bigr]\\
&-\delta'(x)\theta(y)R_\sigma(t-y).
\end{aligned}}
\tag{2}
\]

Here \(T_\sigma\) is the actual radial derivative
\(\theta(x)\theta(y)\partial_x^2H_\sigma\). Equation (2) fixes its
critical extension by the common radial integral; an origin-supported
term cannot be changed independently after this prescription has been
chosen.

For clarity, the product \(\theta(y)R_\sigma(t-y)^n\) is a tensor
product in the independent coordinates \((y,d=t-y)\), followed by a
linear change of coordinates. It has order at most \(n\). Consequently:

* the first term of (2) has order at most two;
* the \(\delta'(x)\) term has order at most two;
* the \(\delta(x)\) term has order at most three.

Thus \(T_\sigma\) has a weighted order-three bound on the complete mass
space. The nonlinear-stress insertion differentiates a retarded output
mass and has order at most two before smooth tensor multiplication. The
right insertion exchanges its unraised input and output labels and obeys
the same order-three bound as (2). Their sum has order at most three.

Each term of (2) is homogeneous of mass degree \(-3\). The canonical
construction fixes any contact supported at the mass origin and has no
arbitrary renormalization scale.

An equivalent combined-jet notation can be useful. On a future outer-energy
chart and for transfer energy sign \(\sigma=-\), the free-stress-leg
part has

\[
A_0^- =\theta(y)R_-(t-y),\qquad
A_1^-=\theta(y)\bigl[R_-^2+2yR_-^3\bigr].
\]

For \(\sigma=+\), the middle and right jets combine to

\[
A_0^+=(\theta(y)-\theta(t))R_+(t-y),
\]

\[
A_1^+=\theta(y)\bigl[R_+^2+2yR_+^3\bigr]
+\theta(t)\bigl[R_+^2-2tR_+^3\bigr].
\tag{3}
\]

The separate products displayed in (3), or their common radial limit,
define the extension at \(y=t=0\). Away from that origin they simplify
to \((\theta(y)-\theta(t))(t+y)(t-y+i0)^{-3}\). Keeping the separate
products is preferable when checking possible origin contacts.

## 3. A radial multiplier preserves the number of mass derivatives

Let \(\beta\) be smooth, radial, compactly supported, and equal to one
near the origin. The same argument applies to a Schwartz radial profile.
Let \(P_B^{(d)}\) be the Fourier multiplier on \(\mathbb R^d\) with symbol
\(\beta(|\xi|/B)\), \(B\ge1\). Apply it to a radial function
\(v\mapsto f(|v|^2)\), and denote its output as a function of \(y=|v|^2\)
by the same notation. The exact dimension-walk identity is

\[
\boxed{\partial_y^k P_B^{(d)}f
=P_B^{(d+2k)}\partial_y^k f.}
\tag{4}
\]

It follows directly from the radial Bessel Fourier formula and
\(\partial_r[r^{-\nu}J_\nu(ur)]=-u r^{-\nu}J_{\nu+1}(ur)\),
with an integration by parts on the radial input. Equivalently,
\((r^{-1}\partial_r)\Delta_d=\Delta_{d+2}(r^{-1}\partial_r)\)
intertwines every radial Fourier multiplier. All angular Fourier constants
cancel in (4).

The multiplier kernel is \(B^dK_d(Bv)\), where \(K_d\) is Schwartz.
Its weighted \(L^1\) norms are bounded uniformly for \(B\ge1\).
Consequently, for every fixed weight and derivative order,

\[
\sup_{y\ge0}(1+y)^M|\partial_y^kP_B^{(2)}f(y)|
\le C_{M,k}\max_{0\le j\le k}
\sup_{y\ge0}(1+y)^M|\partial_y^j f(y)|.
\tag{5}
\]

Increasing the harmless polynomial weight on the right also gives (5)
for joint weighted seminorms involving the remaining mass variables.
The key feature is that no additional mass derivatives are required.
For Schwartz tests, \(P_B^{(2)}f\to f\) in every such seminorm.

As an exact normalization check, for the heat multiplier
\(\beta(u)=e^{-\tau u^2}\) and \(f(y)=e^{-ay}\),

\[
P^{(d)}f(y)
=(1+4a\tau)^{-d/2}
\exp\!\left[-\frac{ay}{1+4a\tau}\right],
\]

whose \(k\)-th mass derivative is precisely
\(P^{(d+2k)}f^{(k)}\).

## 4. Uniformity for the actual cutoff family

In each insertion choose an unraised free mass. Pairing that mass first
is a two-dimensional radial Fourier transform. Multiplication of its
transform by the actual vertex profile \(\beta(u/B)\) is therefore exactly
the operation \(P_B^{(2)}\) on the test in that mass. The other radial
factors, including the raised factor, remain untouched.

For example, for the middle insertion one has the exact dual relation

\[
\langle T_{\sigma,B},\phi\rangle
=\langle T_\sigma,P_{B,y}^{(2)}\phi\rangle.
\tag{6}
\]

The unraised mass is \(y\) for the middle and stress insertions and the
free transfer mass for the right insertion. Equations (2), (5), and (6)
prove a common weighted order-three bound, independent of \(B\ge1\),
and strong convergence on bounded test sets. These statements retain all
the null jets in (2).

Only the nonnegative half-line of the chosen free mass is used. The
radial multiplier output is smooth up to zero. A fixed extension of its
one-sided jets can be used when evaluating a distribution on the full
mass line; the result is independent of that extension because the
canonical kernel has support in the closed positive half-line.

## 5. A restriction on the use of this bound

A joint distribution estimate of order three, by itself, bounds a test
by its supremum of derivatives. It does not multiply that bound by the
volume of a shrinking support in a selected transverse variable. Thus a
proof that rescales a switch profile to width \(\sqrt\epsilon\) in two
transverse variables must either keep those variables as parameters,
prove a corresponding disintegration estimate, or explicitly count the
actual derivative losses using the joint distribution bound. The
fixed-transverse-injection construction supplies the first option.

## 6. Independent execution record

`canonical_mass_order_checks.py` checks the rational null-jet identity,
the combined right/middle expression away from the joint endpoint, the
radial Laplacian intertwiner, and the heat-multiplier dimension-walk
identity for dimensions 2, 4, 6 and derivative orders 0 through 3. The
script records exact residuals. These algebraic checks support the
normalizations; the distribution-order and uniform-cutoff conclusions
follow from the estimates above.

## Reproducible verification files

- [canonical_mass_order_checks.py](checks/stress_completion/canonical_mass_order_checks.py)
- [Execution record and complete program index](checks/stress_completion/README.md)
