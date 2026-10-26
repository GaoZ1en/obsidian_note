# The soft-right-scalar endpoint with a hard future-null stress momentum

## Result and scope

This note closes the local endpoint in which the right scalar momentum
\(q\) tends to zero and the stress momentum \(p\) remains near a fixed
nonzero future-null vector. The argument retains the complete middle and
stress insertions, their actual retarded signs, the common radial cutoff,
and the tensor numerator. It treats transverse injection as a parameter.

The core contribution has a uniform \(O(R^{-2})\) bound. The complementary
soft annuli have an \(O(R^{-1})\) bound after the radial cutoff has been
removed. Both estimates include \(q^+=0\) through the measure of the
future cone; no division by a component of \(q\) occurs.

The statement is for the prescribed first-order reduced-TT coefficient.
Its radial and spacetime cutoff order is the one used in
`half_bps_stress_partial_injection.md`: first remove the common radial
cutoff, then remove the spacetime switch. The core estimate itself is
uniform in every radial cutoff scale.

## 1. Coordinates, supports and the exact mass relation

Use \(s(k)=k^+k^--|k_\perp|^2\). A common null rotation puts the hard
momentum into the form

\[
p^+=B,\qquad p_\perp=0,\qquad p^-=x/B,
\qquad 0<B_0\le B\le B_1.
\]

Keep the common rotation as a smooth tangential parameter. A small plus
injection can then be removed by the mass-preserving hard-leg change of
variables described in Section 6 of `half_bps_stress_partial_injection.md`. It
preserves the tensor's weighted order. Thus write the remaining injection
as \(\Omega=(0,\omega,b)\), where \(b\) is a transverse parameter.

The free scalar momentum can be written

\[
q^+=A,\quad q^-=H,\quad q_\perp=w,
\quad y=AH-|w|^2,
\]

with future support \(A,H\ge0\), \(|w|^2\le AH\). Shrink the soft patch so
that \(0\le A\le\eta B\), with a fixed sufficiently small \(\eta\), for
example \(\eta<1/8\). The momentum

\[
k=-r=p-q-\Omega
\]

has hard positive energy and \(k^+=B-A\ge(1-\eta)B\). Consequently the
right insertion has empty free support, since it requires future \(r\).
The middle and stress terms both contain the original free support
\(C_q\). Their other free supports are respectively \(\theta(x)\) and
\(\theta(t)\), where

\[
\boxed{
t=s(k)=(1-A/B)x-(B-A)(H+\omega)-|w+b|^2.
}
\tag{1}
\]

In particular, \(\partial_\omega t=-(B-A)\) stays bounded away from zero.
At fixed \((A,H,w,B,b)\), the variables \((x,\omega)\) can therefore be
replaced smoothly by the **two independent masses** \((x,t)\). This
replacement remains regular at \(A=H=w=x=t=0\).

For comparison with a cone-volume estimate, set
\(w=\sqrt{AH}\,v\), \(|v|\le1\), on the interior of the future cone.
Then

\[
d^4q=\frac12 AH\,dA\,dH\,d^2v.
\tag{2}
\]

The degenerate boundary of this parametrization has zero measure. The
proof below uses the original \((A,H,w)\) coordinates and their closed
cone, so (2) serves only to display the positive endpoint margin.

## 2. A uniform transverse-parameter distribution family

Up to the overall constant and the polynomial numerator \(\mathcal N\),
the two surviving genuine radial kernels are

\[
\begin{aligned}
K_{2,L}
&=C_q\theta(x)\int_0^\infty u\,du\,\beta(u/L)
R_-(t,u)\,\partial_x^2J_0(u\sqrt x)\,J_0(u\sqrt y),\\
K_{1,L}
&=C_q\theta(t)\int_0^\infty u\,du\,\beta(u/L)
\partial_x^2R_+(x,u)\,J_0(u\sqrt t)\,J_0(u\sqrt y).
\end{aligned}
\tag{3}
\]

The retarded signs are fixed by the hard past output \(r=-k\) in the
first line and the hard future output \(p\) in the second. The free
factor \(C_qJ_0(u\sqrt y)\) is held intact.

In the middle term, pair the independent retarded output mass \(t\)
first. For a compact smooth test \(f(t)\), its Cauchy transform

\[
h(v)=\int_{\mathbb R}\frac{f(t)\,dt}{t-|v|^2-i0}
\]

is a smooth radial symbol of order \(-2\) on \(\mathbb R^2\).
For every \(N\ge1\), \(\Delta_v^Nh\in L^1\). Its radial Fourier
transform is therefore \(O(u^{-2N})\) for \(u\ge1\), with the same
estimate for every fixed number of spectator derivatives. The logarithmic
small-\(u\) behavior is integrable against the raised free mode and
\(u\,du\).

In the stress term, pair the independent unraised free mass \(t\)
first. The two-dimensional Hankel transform of
\(f(|v|^2)\) is Schwartz. Move the two output-\(x\) derivatives to the
test; the remaining retarded distribution has polynomial large-\(u\)
seminorms and logarithmic small-\(u\) seminorms. The radial integral again
converges in a finite test seminorm.

No derivative of \(C_q\), and no derivative in \((A,H,w)\), is required
in these bounds. The mode \(|J_0(u\sqrt y)|\le1\) holds throughout its
actual free cone. As a result, for \(A\) in a compact interval beginning
at zero, (3) defines a uniformly bounded family of distributions in the
other variables, smoothly depending on \(b\). Its radial-cutoff limit
exists on bounded test sets. The estimates are uniform for every \(L>0\)
with \(|\beta|\le1\).

There is a useful extra quantitative bound. On a fixed compact interval
\(0\le H\le H_0\), the transverse area of the free cone at fixed \((A,H)\)
is \(\pi AH\). Since the mass estimates just described take no
\((H,w)\) derivatives, their integration gives a bound proportional to
\(A\). Thus this family has an additional positive margin at \(A=0\).
The conclusion is a disintegration estimate obtained from (3), rather
than an assumed volume factor in an arbitrary joint distribution bound.

## 3. The stationary soft annulus has a uniform Gram gap

At \(\Omega=0\), equation (1) is

\[
t=(1-A/B)x-BH+y.
\tag{4}
\]

On the nonzero stationary support, \(x\ge0\) and \(t<0\). Indeed,
for \(t\ge0\) the complete middle-plus-stress scalar seed vanishes in
this soft patch: its anomalous chamber would require
\(\sqrt y>\sqrt x+\sqrt t\), whereas \(t\ge0\) implies
\(x\ge B H>y\).

Consequently

\[
0\le x<\frac{BH-y}{1-A/B}\le\frac{BH}{1-\eta}.
\tag{5}
\]

The exact Källén polynomial becomes

\[
\boxed{
\lambda=(BH-Ax/B)^2+4x|w|^2.
}
\tag{6}
\]

Using (5), one obtains

\[
\lambda\ge
B^2H^2\left(\frac{1-2\eta}{1-\eta}\right)^2.
\tag{7}
\]

Thus every annulus \(H>0\) has a Gram gap proportional to \(H^2\),
uniformly at \(A=0\), \(w=0\), the outer-null face \(x=0\), and the
transfer-null face \(t=0\). The only vanishing scale left is the endpoint
\(H=0\), addressed by the core estimate below.

The scalar radial derivative on this annulus is the ordinary function

\[
\partial_x^2[-\lambda^{-1/2}]
=\frac{\lambda-3(x-y-t)^2}{\lambda^{5/2}},
\tag{8}
\]

where the derivative is taken at independent \((y,t)\) before using
(4). Its size is \(O(H^{-3})\). The unamputated tensor obeys
\(|\mathcal N_{ij}|\le C H^2\) in fixed laboratory components on the
support (5). Hence the full kernel is \(O(H^{-1})\).

The measures make this integrable. The mass interval has length
\(O(H)\), while the free scalar cone contributes
\(O(AH\,dA\,dH)\). Thus a test pairing over \(0<H<h\) is
\(O(h^2\int A\,dA)\). In particular, the stationary endpoint is an
ordinary locally integrable tensor in this chart.

## 4. The genuine switched core

Let \(\epsilon=R^{-1}\). First localize the rescaled injection to a
bounded set; Schwartz tails are treated afterwards. After the radial
cutoff has been removed, if \(H\le C\epsilon\), the complete kernel is
supported in \(|x|\le C'\epsilon\) within the chosen local patch. To see
this, for \(x\gg\epsilon\), equation (1)
gives \(t>0\) and \(x>y\), so the complete scalar seed and its radial
derivatives vanish. For \(x\ll-\epsilon\), both \(\theta(x)\) and
\(\theta(t)\) vanish. At finite radial cutoff define the core with both
\(H\le C\epsilon\) and \(|x|\le C'\epsilon\) cutoffs. The following
uniform estimate applies to that localized family directly. The exact
support cancellation outside it is used after the radial limit, in the
stated iterated order.

Rescale

\[
x=\epsilon X,\quad H=\epsilon Z,\quad
w=\sqrt\epsilon\,W,\quad \omega=\epsilon U.
\tag{9}
\]

Keep \(A,B\) and the common null-rotation parameter as tangent variables.
The free cone becomes \(|W|^2\le AZ\), independently of \(\epsilon\).
The joint measure \(dx\,dH\,d^2w\,d\omega\) contributes \(\epsilon^4\).
Each raised scalar radial kernel contributes \(\epsilon^{-3}\), and
the polynomial tensor contributes at least \(\epsilon^2\). These are
exact distributional scalings: changing \(u\) to \(u/\sqrt\epsilon\)
changes only the radial cutoff scale to \(\sqrt\epsilon L\), for which
Section 2 has a uniform estimate.

The plus and two transverse injection components are integrated as
parameters. Their measure cancels three of the four powers in
\(\widehat\chi_R=\epsilon^{-4}\widehat\chi(\Omega/\epsilon)\).
The remaining minus-injection profile contributes \(\epsilon^{-1}\).
Its width in \(U\) is of order one. The transverse parameter in the
rescaled kernel is \(b/\sqrt\epsilon=\sqrt\epsilon\,(b/\epsilon)\);
no test derivative is taken in this parameter.

The resulting genuine distribution estimate is

\[
\boxed{
|\langle W_{\chi_R,L}^{\mathrm{core}},\Psi\rangle|
\le C\epsilon^{4-3+2-1}\,\mathfrak p_k(\Psi)
=C\epsilon^2\,\mathfrak p_k(\Psi).
}
\tag{10}
\]

The constant can retain the extra \(\int A\,dA\) margin from Section 2.
All derivatives in its finite seminorm are taken after scaling. Thus
the distribution order contributes no negative power of \(\epsilon\).
The common null rotation and plus-injection removal are smooth maps with
bounded coefficients here; their profile shifts preserve this conclusion.

The explicit tail budget in Section 6 extends this estimate to the full
Schwartz switch profile. Formula (10) is uniform in the radial cutoff.

## 5. Switched annuli and the adiabatic margin

For \(H\ge C\epsilon\), with \(C\) sufficiently large compared with a
fixed bounded rescaled-injection set, equation (1) and \(A\le\eta B\)
imply the following facts uniformly:

1. If \(t\ge0\), then \(x\ge B(H+\omega)>y\); the complete
   middle-plus-stress contribution vanishes.
2. If \(t<0\) contributes, then \(0\le x\le C_1 H\).
3. The exact mass expression satisfies \(\lambda\ge c_1H^2\).

For the third statement, use

\[
x-y-t=(A/B)x+(B-2A)H+(B-A)\omega
 +2|w|^2+2w\cdot b+|b|^2.
\]

The positive term \((B-2A)H\) dominates the small injection terms;
\(\lambda=(x-y-t)^2+4y|t|\) on \(t<0\). This also establishes the
bound on the moving transfer-null boundary.

The resulting coefficient is an ordinary smooth density on each side
of that boundary, with

\[
|F_\Omega|\le C H^{-1},\qquad
|\partial_\Omega F_\Omega|\le C H^{-2}.
\tag{11}
\]

The upper \(x\) boundary moves by \(O(|\Omega|)\). Its strip contributes
the same order as integrating the bulk derivative in (11): at fixed
\((A,H,w)\), the pairing difference is \(O(|\Omega|/H)\).
Multiplication by the free-cone measure gives

\[
\int_{C\epsilon<H<h_0}
C A H\,dA\,dH\;\frac{\epsilon}{H}
\le C'\epsilon\int A\,dA.
\tag{12}
\]

Equivalently, the annular error at \(H\asymp\rho\) is
\(O(\epsilon\rho)\), whose dyadic sum is finite. This soft endpoint
therefore has a positive \(O(\epsilon)\) adiabatic margin, in addition
to the \(O(\epsilon^2)\) core margin. The comparison uses the canonical
radial-cutoff limit in the annuli; an arbitrary joint removal of radial
and spacetime cutoffs is a separate assertion.

## 6. Far-injection shells and the normalization tail

First split off a fixed remote-injection region \(|\Omega|\ge\delta_0\),
where \(\delta_0\) is smaller than the hard-energy patch size. Use the
global twelve-dimensional tempered distribution for this region before
introducing any \(H\) annuli. Its test has fixed external support, and
\(\widehat\chi(\Omega/\epsilon)\) supplies every desired power of
\(\epsilon\), absorbing its normalization and its fixed finite number of
derivatives. This region is \(O(\epsilon^M)\) for any chosen \(M\).
It requires no continuation of the two-surviving-insertion support
statement beyond the small-injection patch.
For a doubly localized finite-cutoff core, derivatives of its smooth
shrinking cutoffs cost a fixed additional power of \(\epsilon^{-1}\).
Increasing the Schwartz tail order absorbs this power as well, using
the global bound uniform in the radial cutoff. No free-cone indicator
is inserted into that remote-region test.

In the remaining region, decompose

\[
H\asymp\rho,\qquad |\Omega|\asymp\tau,
\qquad c\rho\le\tau\le\delta_0.
\]

These are the far-injection shells relative to the soft annulus. The
hard outputs retain their signs, and the exact canonical support argument
implies

\[
|x|+|t|\le C(\rho+\tau)\le C'\tau.
\tag{13}
\]

Indeed for \(x\) much larger than \(\rho+\tau\), equation (1) gives
\(t>0\) and \(x>y\), so the complete radial-cutoff-removed seed vanishes;
for \(x\) sufficiently negative both free supports vanish. This is used
after the radial limit. In the finite-cutoff central core, the imposed
\(|x|\lesssim\epsilon\) cutoff gives the corresponding bound directly
on shells \(\tau\ge\epsilon\).

At fixed \(A,B\), the scalar free cone has measure
\(O(A\rho^2\,dA)\) on an \(H\)-annulus. Also
\(0\le y/\tau\le A\rho/\tau\). Rescale the two independent masses by
\(\tau\), and scale the three other injection parameters \((c,b)\) by
\(\tau\). The direct two-mass transform estimate of Section 2 has a
fixed finite order \(k\), uniform for these values of the spectator
mass \(y/\tau\), including zero. Its derivative cost on the switch is
at most \((\tau/\epsilon)^k\).

The tensor obeys the useful uniform bound

\[
|\mathcal N_{ij}|\le C\tau^2
\tag{14}
\]

on this normalized support. To check it, the two contractions obey
\(c_q=O(\rho+A\tau)\) and \(c_{q+\Omega}=O(\tau)\), while
\(x=O(\tau)\), \(|w|\le\sqrt{A\rho}\), and the hard plus component
stays in a compact positive interval. Every component of the expanded
polynomial then has at least two powers of \(\tau\), with bounded
coefficients for \(A\le\eta B\). The same statement holds after the
mass-preserving plus change; its denominators remain hard. There is no
negative power of \(A\).

The measures and homogeneity give the following shell budget:

| Factor | Bound or scaling |
|---|---:|
| soft cone in \((H,w)\) | \(A\rho^2\) |
| two mass variables \((x,t)\) | \(\tau^2\) |
| other injection parameters \((c,b)\) | \(\tau^3\) |
| raised radial mass kernel | \(\tau^{-3}\) |
| tensor numerator | \(\tau^2\) |
| switch normalization | \(\epsilon^{-4}\) |

The switch is evaluated on a shell with
\(|\Omega|/\epsilon\asymp\tau/\epsilon\), so an arbitrary Schwartz
tail contributes \((\tau/\epsilon)^{-N}\). Including the finite order,
the shell pairing is bounded by

\[
C A\rho^2\left(\frac{\tau}{\epsilon}\right)^{4+k-N}
\mathfrak p(\Psi).
\tag{15}
\]

All original derivative effects are included in \(k\). For example, in
the two-mass coordinates the minus injection is a smooth affine function
of \((x,t)\), and its normalized derivatives cost exactly
\(\tau/\epsilon\). Derivatives of a near/far partition are supported
where \(\tau\asymp\rho\), so they have bounded normalized cost.
No soft-variable derivative is needed in the two-mass estimate.

Choose \(M=N-4-k>2\). The dyadic sums are explicit:

\[
\sum_{\rho\ge\epsilon}\sum_{\tau\ge c\rho}
A\rho^2\left(\frac\epsilon\tau\right)^M
\le C_M A\sum_{\rho\ge\epsilon}
\epsilon^M\rho^{2-M}
\le C'_M A\epsilon^2.
\tag{16}
\]

For the central region \(H\le C\epsilon\), use its full cone volume
\(O(A\epsilon^2)\). On shells \(\tau\ge C'\epsilon\), the identical
two-mass argument gives
\(C A\epsilon^2(\tau/\epsilon)^{-M}\), whose sum is
\(O(A\epsilon^2)\). The bounded-injection part is (10). This proves
the claimed complete-profile core estimate and retains uniformity in
the radial cutoff for the doubly localized core.

Finally the stationary comparison requires the missing normalization
tail as well as the genuine-kernel tail. On \(H\asymp\rho\), the
stationary full tensor has a pairing bound \(C A\rho^2\), from
(5)–(8). Therefore

\[
C A\rho^2\int_{|\Omega|\ge c\rho}
\epsilon^{-4}|\widehat\chi(\Omega/\epsilon)|\,d^4\Omega
\le C_N A\rho^2\left(\frac\epsilon\rho\right)^N.
\tag{17}
\]

For \(N>2\), its sum over \(\rho\ge\epsilon\) is
\(O(A\epsilon^2)\). The exact full-profile normalization is
\(\int d^4\Omega\,\widehat\chi_R(\Omega)/(2\pi)^4=\chi(0)=1\).
The smooth change of the external test between \(\Omega\) and zero is
bounded by the same near and far estimates. After integrating \(A\),
the positive margin \(\int A\,dA\) remains in every local soft-cone term.
The fixed remote-injection remainder was estimated separately before
this decomposition and is smaller than any prescribed power of
\(\epsilon\).

## 7. Independent verification record

`soft_q_endpoint_checks.py` independently checks the exact mass relation,
the Gram identity (6), the derivative (8), and the minimum weighted power
of every component of the polynomial TT numerator under (9). It also
samples the stationary gap (7) on the complete soft-cone variables.
These are actual symbolic and numerical executions. The distributional
and adiabatic bounds follow from the transform and support arguments
above.

## Reproducible verification files

- [soft_q_endpoint_checks.py](checks/stress_completion/soft_q_endpoint_checks.py)
- [Execution record and complete program index](checks/stress_completion/README.md)
