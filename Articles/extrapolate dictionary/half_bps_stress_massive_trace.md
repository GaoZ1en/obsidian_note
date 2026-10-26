# Exact fixed-injection continuity at massive zero transfer

## Scope

This note proves a local statement for the canonical, regulator-removed,
all-insertion gravitational boundary mass kernel on a compact patch where
both outer momenta are future timelike and bounded away from zero mass.
The statement is continuity as a distribution in the remaining external
momenta for **each fixed injection momentum**, uniformly in its direction.
It is consequently stronger than a statement averaged against one
isotropic family of switch profiles.

The proof applies directly to the second radial mass derivative. It leaves
the free-cone indicators in their actual places, retains the threshold
finite parts, and uses no differentiation of a zero-extended scalar
spectral density. The all-null patch and removal of the original radial
cutoff require the interfaces stated at the end.

The exact change of variables follows from the full momentum routing. The
algebra, canonical threshold geometry, estimates and stationary norm below
have been independently checked here.

## 1. An exact rest-frame normal form

Use external momenta $(p,r,-q)$ with

\[
\Omega=p+r-q,\qquad M=p-\Omega=q-r.
\]

On a compact massive future patch and for sufficiently small $\Omega$,
$M$ remains future timelike. Put

\[
m=\sqrt{s(M)},\qquad x=s(p)=m^2+d.
\]

A smooth proper orthochronous boost puts $M=(m,\mathbf0)$. Write

\[
r=(r^0,\mathbf v),\qquad
t=(r^0)^2-|\mathbf v|^2,\qquad
y=s(q)=m^2+2mr^0+t.
\]

Here $m$ stays in a compact subinterval of $(0,\infty)$, and the soft
transfer patch has $|r|_E<\eta m$ for a fixed sufficiently small $\eta$.
The Källén polynomial is exactly

\[
\boxed{
\lambda=(x-y-t)^2-4yt
=4m^2|\mathbf v|^2-4d(mr^0+t)+d^2.
}
\tag{1}
\]

At fixed $(m,r)$, varying $d$ changes $x$ alone: $y,t$ and all free-cone
indicators remain fixed. Thus the actual radial operation is exactly
$\partial_d^2$, with no derivative of a cone indicator or of
$\widehat\chi(\Omega)$.

Let $a=\sqrt x$, $b=\sqrt y$ and $c=\sqrt t$ when $t>0$. With $p,q$ in their
strict future cones the complete scalar mass seed is

\[
S_d(r)=
\begin{cases}
-\lambda^{-1/2},&t<0,\\[2pt]
-2\,\mathbf1_{a>b+c}\lambda_+^{-1/2},&r\in V_+,\\[2pt]
-2\,\mathbf1_{b>a+c}\lambda_+^{-1/2},&-r\in V_+.
\end{cases}
\tag{2}
\]

The timelike expressions denote the canonical locally integrable
square-root boundary seed. Its second $d$ derivative is the corresponding
threshold distribution. Formula (2) is the sum of all insertions, including
the cancellation of their imaginary triangle contributions.

### Identification with the same radial-cutoff integral

This choice of seed can be connected to the actual radial regulator before
taking a fixed-$d$ restriction. Let $S_B$ be the complete scalar radial
seed with the same $\beta_B$ in all three insertions. On the present
strictly massive outer patch, the cone factors of $p,q$ and their energy
signs are constant. At fixed $(m,r)$ the radial mass derivative is therefore
exactly $\partial_d$, also at finite $B$. Thus the raised joint kernel is
$\partial_d^2S_B$, without differentiating the spacetime switch.

The full-output causal construction in half_bps_stress_causal_corner.md
applies to the unraised scalar seed as well. It proves strong joint
distributional convergence of $S_B$ before any fixed-injection
restriction. A smooth massive coordinate change and distributional
differentiation commute with that limit.

There is also a direct check of its critical local form. Write the two
hard free radial vectors as
$A=a n-b m$ in the transverse Fourier plane. Near their cancellation,
fix the common angle and put

\[
A=(a-b\cos\varphi,-b\sin\varphi).
\]

The map $(a,\varphi)\mapsto A$ has Jacobian $-b$ at $\varphi=0$,
uniformly bounded away from zero here. The middle radial seed is the
two-dimensional convolution, by $\widehat\beta_B$, of the actual
six-dimensional retarded denominator
$(s(r)-|A|^2+i0r^0)^{-1}$, followed by this smooth change of variables
and a compact angular integration. Convolution by
$\widehat\beta_B$ tends to the identity on Schwartz tests.
This realizes the critical $(w,r)$ boundary value through continuous
distribution operations. The part with relative angle away from zero
has a positive mass gap.

The other two insertions can instead be paired first in their
independent hard output mass. Bessel addition and the retarded
Cauchy boundary value then apply with the soft free-cone factor kept.
Summing the three results gives exactly (2), as a locally integrable
joint seed in $(r,d)$. Near its common vertex it has normal degree
$-1$ in five variables; the raised seed has degree $-3$.
No additional term supported only at $(r,d)=0$ is introduced by these
continuous operations.

Accordingly the joint canonical limit is the actual
$\partial_d^2S$. The estimates below give its continuous
fixed-$d$ family. The analogous core bounds for $S_d$ and
$\partial_dS_d$ are $O(\delta^3)$ and $O(\delta^2)$;
together with the second-derivative bound they show that these
are the actual two derivatives of a $C^2(\mathcal D'_r)$ seed,
rather than a joint derivative containing a separately assigned
$\delta(d)$ term.

## 2. Uniform confinement of the anomalous timelike chambers

There is a constant $C$, uniform in the massive patch, such that either
anomalous chamber in (2) satisfies

\[
|r|_E\le C|d|/m.
\tag{3}
\]

For future $r$, reverse triangle gives $b\ge m+c$, and

\[
b-m=\frac{2mr^0+t}{b+m}
\ge c_1r^0.
\]

The anomalous inequality $a>b+c$ therefore implies
$c_1r^0<a-m=d/(a+m)$. Since $|\mathbf v|\le r^0$, (3) follows.
For past $r$,

\[
m-b=\frac{2m|r^0|-t}{m+b}\ge c_2|r^0|,
\]

and $b>a+c$ gives the same conclusion with $m-a$.
The constants $c_1,c_2$ are positive throughout the fixed small patch.
This argument uses the energy of $r$, so it also controls nearly null
timelike transfers.

Outside (3), the complete mass kernel is therefore simply the spacelike
term in (2); its support $t<0$ is independent of $d$.

## 3. The stationary second derivative is locally integrable

For $d=0$, set $v=|\mathbf v|$ and $A=mr^0+t$. The actual second derivative
has the ordinary density

\[
\boxed{
G_0(r):=\left.\partial_d^2S_d(r)\right|_{d=0}
=\mathbf1_{|r^0|<v}
\frac{m^2v^2-3(mr^0+t)^2}{8m^5v^5}.
}
\tag{4}
\]

On its support $|r^0|<v$, the numerator is bounded by $C v^2$ in the
small patch. Hence $|G_0|\le C v^{-3}$. The four-dimensional measure is
$4\pi v^2\,dv\,dr^0$, and the time interval has length $2v$. Consequently

\[
\int_{v<L,\ |r^0|<v}|G_0|\,d^4r\le C L.
\tag{5}
\]

This integrability holds before multiplication by the TT numerator.
There is no pointwise assertion at $r=0$.

Two exact supplementary checks are

\[
\int_{v<L,\ |r^0|<v}G_0(r)\,d^4r
=-\frac{8\pi L^3}{15m^5},
\tag{6}
\]

and

\[
\lim_{L\downarrow0}\frac1L
\int_{v<L,\ |r^0|<v}|G_0(r)|\,d^4r
=\frac{4\pi}{3\sqrt3\,m^3}.
\tag{7}
\]

The signed leading moment cancels, while the absolute norm has the
positive linear bound used in the proof.

## 4. A uniform canonical estimate in the shrinking core

Put

\[
\delta=|d|/m,\qquad \sigma=\operatorname{sgn}d,\qquad r=\delta R.
\]

Then (1) becomes

\[
\frac{\lambda}{m^2\delta^2}
=4|\mathbf V|^2-4\sigma R^0+1
-4\sigma\frac{\delta}{m}
\big((R^0)^2-|\mathbf V|^2\big)
=:Q_{\sigma,\delta/m}(R).
\tag{8}
\]

For $R$ in a fixed compact core and $\delta/m$ sufficiently small,

\[
|\partial_{R^0}Q_{\sigma,\delta/m}|\ge2.
\tag{9}
\]

Thus every nonzero-mass triangle threshold is a uniform smooth
hypersurface in these scaled variables. A threshold finite part has a
uniform finite-order bound there.

The possible meeting with the transfer-null wall is also controlled.
At $t=0$ and $\lambda=0$ one has exactly

\[
R^0=\sigma/2,\qquad |\mathbf V|=1/2.
\tag{10}
\]

Let $w=(x-y-t)/(2\sqrt y)$. The map from $(R^0,|\mathbf V|)$ to
$(w/\delta,t/\delta^2)$ has nonzero Jacobian at (10), uniformly as
$\delta\to0$. Therefore the joint canonical $(w,t)$ boundary seed and its
two $w$ derivatives can be pulled back there with a uniform finite-order
bound. At $|\mathbf V|=0$, a possible threshold is covered directly by
(9).

It follows that, on a fixed scaled core,

\[
\partial_d^2S_d(\delta R)
=m^{-3}\delta^{-3}\mathcal H_{\sigma,\delta/m}(R),
\tag{11}
\]

where the family $\mathcal H$ has a common finite distribution order
(order two suffices in the canonical coordinate charts), uniformly in
$m$ in the chosen compact interval. The factors from differentiating the
smooth canonical-coordinate changes have uniform bounds.

If $\zeta(r/\delta)$ localizes to this core, then for each compact test
$\psi$,

\[
\left|
\left\langle \partial_d^2S_d,\zeta(r/\delta)\psi(r)\right\rangle
\right|
\le C\delta\,\|\psi\|_{C^k}.
\tag{12}
\]

Indeed the volume contributes $\delta^4$, the kernel contributes
$\delta^{-3}$, and the derivatives of
$\zeta(R)\psi(\delta R)$ are uniformly bounded. The derivatives in the
finite-order estimate are taken after scaling, so they do not introduce
inverse powers of $\delta$. Formula (5) gives the same $O(\delta)$
estimate for $G_0$ on this core.

## 5. The annular estimate and the continuity theorem

Choose the core constant sufficiently large. On its complement, every
term is supported in $|r^0|<v$ and

\[
\lambda(d',r)\asymp m^2v^2
\qquad (|d'|\le |d|,\quad v\ge C\delta).
\tag{13}
\]

Writing $\lambda_d=2d-4(mr^0+t)$, direct differentiation gives

\[
\partial_d^2(-\lambda^{-1/2})
=\lambda^{-3/2}-\frac34\lambda_d^2\lambda^{-5/2},
\tag{14}
\]

\[
\partial_d^3(-\lambda^{-1/2})
=-\frac92\lambda_d\lambda^{-5/2}
+\frac{15}{8}\lambda_d^3\lambda^{-7/2}.
\tag{15}
\]

Hence the third derivative is bounded by $C v^{-4}$. The mean-value
formula, followed by the same cone-volume integral, gives

\[
\int_{C\delta<v<L}
\left|\partial_d^2S_d-G_0\right|\,d^4r
\le C|d|\int_{C\delta}^L\frac{dv}{v}
\le C|d|(1+|\log|d||).
\tag{16}
\]

The transfer-null step does not move with $d$, and no differentiation
across that step is used.

Combining (12) and (16) proves:

**Theorem.** On the stated compact massive patch, the canonical complete
radial mass kernel has a fixed-parameter distributional restriction

\[
\partial_d^2S_d\longrightarrow G_0
\quad\text{in strong local }\mathcal D'_r,
\tag{17}
\]

with a bound

\[
\left|\langle\partial_d^2S_d-G_0,\psi\rangle\right|
\le C|d|(1+|\log|d||)\|\psi\|_{C^k}.
\tag{18}
\]

The estimate is uniform on bounded test sets and in $m$ on its compact
positive interval. Smooth spectator parameters, tensor components and
compact localizations can be included in the same finite seminorm.

Returning from the $M$ rest frame is a smooth parameter-dependent change
of variables on the massive patch. Since

\[
d=s(p)-s(p-\Omega)=O(|\Omega|_E),
\]

(18), together with the smooth change of the test function and polynomial
numerator, proves fixed-$\Omega$ continuity of the complete gravitational
coefficient at massive zero transfer with a conservative
$O(|\Omega|(1+|\log|\Omega||))$ modulus.

In particular a purely spatial injection, for which $d$ can be
quadratic in its spatial size in a special frame, creates no loss of
uniformity. The modulus is expressed in $d$ before being bounded by
$|\Omega|$.

## 6. Consequence for anisotropic switch profiles

Localize the injection to the neighborhood on which the fixed-parameter
family above is defined. Within that neighborhood, a family of normalized
Schwartz approximate identities may have arbitrary directional widths
tending to zero. The estimate is uniform in the direction of $\Omega$,
so pairing it with the absolute transform gives convergence controlled by
its expectation of $|\Omega|(1+|\log|\Omega||)$.

For a plateau switch transformed by a Lorentz boost and dilation, the
four widths may be very different. Only their maximum is relevant to
the local modulus above; no inverse minimum width is consumed by this
local estimate. A remote-injection tail requires its own bound:
if only a joint finite-order distribution is available there,
derivatives of the transformed profile can consume inverse minimum
widths. Polynomially controlled width ratios and sufficiently high
Schwartz decay suffice for many dyadic applications. Arbitrarily
degenerating ratios require an additional tail hypothesis. This local
theorem supplies no unconditional global anisotropic statement.

## 7. Interfaces that remain separate

The same common radial-regulator limit is identified by the joint
construction in Section 1. The fixed-injection restriction established
here is taken after that limit. Uniformity of an arbitrary joint
radial-cutoff/adiabatic path remains a separate claim.

An all-null proof must also carry the Lorentz/dilation transformation,
tensor weight, cone measure, test topology, one-soft endpoints and
origin through its dyadic decomposition. The fixed-$\Omega$ theorem
supplies the massive zero-transfer estimate on the transformed compact
annuli.

No boundary CFT distribution is inserted in this proof. Identification
with that distribution still requires the complete exceptional-set
construction and its normalization.

## 8. Actual independent checks

The companion massive_exact_checks.py verifies the polynomial identity
(1), scaled polynomial and nonzero derivative in (8)–(9), derivative
formulas (14)–(15), stationary density (4), its exact signed moment (6),
and the leading absolute constant (7). It also checks the hyperboloid
Hessian algebra that motivated an alternative reduction and the
four-dimensional harmonic-quadrupole differential identity.

Numerical integration of the stationary absolute norm at several radii
checks the limiting coefficient in (7). These integrations supplement
the analytic estimate and do not substitute for the canonical
finite-part proof in Section 4.

## Reproducible verification files

- [massive_exact_checks.py](checks/stress_completion/massive_exact_checks.py)
- [massive_trace_checks.py](checks/stress_completion/massive_trace_checks.py)
- [Execution record and complete program index](checks/stress_completion/README.md)
