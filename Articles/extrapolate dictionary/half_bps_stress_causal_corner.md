# A global canonical boundary kernel and the common soft origin

## Result

The genuine first-order gravitational boundary coefficient has a
canonical definition as a tempered distribution in all twelve
nonstationary external momentum variables, including their common
origin. It is the strong limit of the same common radial-cutoff
integral, is uniformly bounded in that topology for all cutoff scales,
and is exactly homogeneous of degree zero.

The construction below pairs the full retarded output momentum first.
The six-dimensional causal support then supplies arbitrary large-radius
decay. It therefore needs neither a nonzero external mass nor a
submersion from physical momenta to independent squared masses.
The output-stress null contact is fixed by the same causal kernel.

A separate ordinary-scaling argument proves that the common-origin
part of the switched coefficient is $O(R^{-8})$. Once the
finite-energy trace theorem on the fixed external annulus is supplied,
this closes the common-origin part of the adiabatic limit. The
radial cutoff is removed before the spacetime switch in that theorem.

## 1. The exact six-dimensional causal kernels

Let $X=(t,\mathbf X)\in\mathbb R^{1,3}$,
$Y\in\mathbb R^2$, $u=|Y|$, and

\[
\Sigma_u=t^2-|\mathbf X|^2-u^2.
\]

Use $\square_6=-\partial_t^2+\Delta_5$ and Fourier phase
$e^{-ik^0t+i\mathbf k\cdot\mathbf X}$. The scalar radial retarded
inverse of the source reports is

\[
\mathscr R_k(0,u)
=\int_0^\infty
\frac{\mu\,d\mu\,J_0(\mu u)}
{s(k)-\mu^2+i0k^0}.
\tag{1}
\]

The transverse angular integral shows that it is $2\pi$ times the
four-dimensional Fourier transform of the six-dimensional retarded
Green function evaluated at transverse separation $u$.

The massless six-dimensional kernel is

\[
G_{6,\mathrm{ret}}(X,Y)
=-\frac{\theta(t)}{2\pi^2}\delta'(\Sigma_u).
\tag{2}
\]

The sign is fixed by $\square_6=-\partial_t^2+\Delta_5$.
For example the standard positive wave-equation kernel in four
spacetime dimensions is $\theta(t)\delta(\Sigma)/(2\pi)$;
the dimension-raising operation $\pi^{-1}\partial_\Sigma$
gives the six-dimensional positive-wave kernel, and the inverse of
$\square_6$ carries its negative.

Let $G_{6,\mathrm{ret},M}$ invert $\square_6-M$, where $M$ is the
six-dimensional squared mass. The expansion at $M=0$ is

\[
G_{6,\mathrm{ret},M}
=\theta(t)\left[
-\frac{\delta'(\Sigma_u)}{2\pi^2}
+\frac{M\delta(\Sigma_u)}{8\pi^2}
-\frac{M^2\theta(\Sigma_u)}{64\pi^2}
+O(M^3)\right].
\tag{3}
\]

The two displayed mass-derivative recurrences are
$\square_6G'_0=G_0$ and $\square_6G''_0=2G'_0$.
They also follow by differentiating the retarded resolvent.

Since differentiating $(s-\mu^2-M+i0k^0)^{-1}$ twice with respect
to $M$ is the same as differentiating twice with respect to $s$,
(2)–(3) give

\[
\boxed{
\mathcal F_4^{-1}[\mathscr R_k(0,u)]
=-\frac{\theta(t)}{\pi}\delta'(\Sigma_u),
}
\tag{4}
\]

\[
\boxed{
\mathcal F_4^{-1}[\partial_{s(k)}^2\mathscr R_k(0,u)]
=-\frac{\theta(t)\theta(\Sigma_u)}{16\pi}.
}
\tag{5}
\]

The second identity defines the actual retarded mass derivative at
$k=0$ as well as on the nonzero null cone. It is an identity of
causal distributions, obtained before assigning any on-shell
polarization projector. It fixes the contact convention used below.

An independent zero-radius spectral check is

\[
\int_0^\infty
\frac{2\mu\,d\mu}{(s-\mu^2+i0k^0)^3}
=-\frac1{2(s+i0k^0)^2},
\tag{6}
\]

consistent with (5) at $u=0$ and the four-dimensional retarded
inverse-square wave kernel.

## 2. Output-momentum seminorm estimates

Let $\varphi(k)$ be a Schwartz test and $F(X)$ its inverse Fourier
transform, with the corresponding pairing convention. Both kernels
(4) and (5) have support

\[
t\ge0,\qquad t^2\ge|\mathbf X|^2+u^2.
\tag{7}
\]

In particular $|X|_E\ge u$ throughout that support.

For the step kernel (5),

\[
\left|\langle \partial_s^2\mathscr R(\cdot,u),\varphi\rangle\right|
\le\frac1{16\pi}
\int_{t\ge\sqrt{|\mathbf X|^2+u^2}}|F(X)|\,d^4X.
\tag{8}
\]

Schwartz decay gives, for every $N$, a finite Schwartz seminorm
$\mathfrak q_N$ such that this is at most
$C_N(1+u)^{-N}\mathfrak q_N(\varphi)$.
The estimate is uniformly bounded as $u\downarrow0$.

For the delta-derivative kernel, put
$E_u(\mathbf X)=\sqrt{|\mathbf X|^2+u^2}$. Integrating the time
delta and differentiating its parameter yields

\[
\left\langle-\frac{\theta(t)}{\pi}\delta'(\Sigma_u),F\right\rangle
=-\frac1{4\pi}\int_{\mathbb R^3}
\left[
\frac{F(E_u,\mathbf X)}{E_u^3}
-\frac{\partial_tF(E_u,\mathbf X)}{E_u^2}
\right]d^3\mathbf X.
\tag{9}
\]

For $u\ge1$, rescaling $|\mathbf X|=u v$ and using Schwartz
decay gives arbitrary powers of $u^{-1}$. For $0<u\le1$, the first
integral has at most a logarithm from
$\int_0^1r^2(r^2+u^2)^{-3/2}dr$; the second is uniformly
integrable. Therefore

\[
\begin{aligned}
|\langle\mathscr R(\cdot,u),\varphi\rangle|
&\le C_Nu^{-N}\mathfrak q_N(\varphi),&&u\ge1,\\
|\langle\mathscr R(\cdot,u),\varphi\rangle|
&\le C(1+|\log u|)\mathfrak q(\varphi),&&0<u\le1.
\end{aligned}
\tag{10}
\]

All these bounds hold uniformly with derivatives and polynomial
weights in additional momentum parameters. Multiplication by a
polynomial output numerator corresponds to applying finitely many
derivatives to $F$ and changes only the chosen seminorm.
The output $-q$ in the right graph uses the reflected causal kernel;
the support estimate $|X|_E\ge u$ is identical.

## 3. Construction of the full twelve-dimensional distribution

Use independent momenta $(p,r,q)$; the linear change to
$(p,q,\Omega)$ with $\Omega=p+r-q$ has unit Jacobian.
Let $x=s(p)$, $y=s(q)$ and $t=s(r)$.
Up to the fixed common coefficient, the three boundary integrals are

\[
\begin{aligned}
\mathcal G_{2,B}
&=\mathcal N\,C_pC_q
\int_0^\infty u\,du\,\beta_B(u)
\mathscr R_r(0,u)J_x^{[2]}(u)J_y(u),\\
\mathcal G_{1,B}
&=\mathcal N\,C_{-r}C_q
\int_0^\infty u\,du\,\beta_B(u)
\partial_x^2\mathscr R_p(0,u)J_y(u)J_t(u),\\
\mathcal G_{3,B}
&=\mathcal N\,C_pC_r
\int_0^\infty u\,du\,\beta_B(u)
\mathscr R_{-q}(0,u)J_x^{[2]}(u)J_t(u).
\end{aligned}
\tag{11}
\]

Here

\[
J_x^{[2]}(u)=\frac{u^4}{32}f_2(\sqrt x\,u),
\qquad |f_2|\le1
\]

on the free cone, and
$\mathcal N=x^2\Pi(p)qr$ denotes its polynomial continuation.
The complete normalized coefficient is

\[
\mathcal G_B
=-\frac{2\alpha\pi^6}{5}
(\mathcal G_{1,B}+\mathcal G_{2,B}+\mathcal G_{3,B}).
\tag{12}
\]

To pair (11) with a Schwartz test in all twelve momenta, first pair
the full retarded output momentum: respectively $r,p,-q$.
The free-cone factors are independent of that output momentum in
these independent coordinates.
Estimates (8)–(10) give arbitrary large-$u$ decay uniformly with
Schwartz weights in the two remaining free momenta.

The unraised free modes are bounded by one, and a raised free mode
is bounded by $u^4/32$. The polynomial $\mathcal N$ consumes
finitely many test weights. Consequently the radial integrals
converge absolutely in a finite Schwartz seminorm at infinity.
At the lower endpoint, the middle and right graphs have the
integrable bound $u^5(1+|\log u|)$; the stress graph has the
integrable bound $u$ from (8).

**Theorem 1.** Equations (11)–(12) define a tempered distribution
$\mathcal G_B$ on the full twelve-dimensional momentum space,
uniformly for $B>0$, provided $|\beta_B|\le1$.
If $\beta_B(u)=\beta(u/B)$ tends to one, then

\[
\mathcal G_B\longrightarrow\mathcal G
\quad\text{strongly in }\mathcal S'(\mathbb R^{12}).
\tag{13}
\]

If the cutoff is a plateau, $\beta(v)=1$ for $v$ near zero,
then for every desired power the large-radius cutoff error has
that power in $B^{-1}$ in a sufficiently high, finite Schwartz
seminorm. For a general bounded profile with pointwise limit one,
the dominated-convergence statement (13) still applies; its rate
depends on that profile.
The proof includes all zero-momentum and null intersections.

This is a direct construction from the same radial action
integral. In particular it identifies the output-stress contact at
$p=0$ through (5), without appending an independently chosen
distribution at that point.

## 4. Exact homogeneity and uniqueness at the common origin

All three terms obey the finite-cutoff identity

\[
\mathcal G_B(\lambda p,\lambda q,\lambda\Omega)
=\mathcal G_{\lambda B}(p,q,\Omega),
\qquad\lambda>0.
\tag{14}
\]

The numerator has degree six. Changing $v=\lambda u$ gives
$\lambda^{-2}$ from the radial measure and $\lambda^{-4}$
from either raised mass mode. The unraised retarded kernel and
free modes depend only on their scaled arguments.
Passing to the limit in (13) proves

\[
\mathcal G(\lambda p,\lambda q,\lambda\Omega)
=\mathcal G(p,q,\Omega).
\tag{15}
\]

Thus degree zero is a derived property of the actual canonical
kernel. It is not an extension assumption.
A distribution supported only at the common twelve-dimensional
origin is a finite sum of delta derivatives, whose degrees are
$-12-n$. Such a distribution cannot be added while preserving
(15). The explicit construction and homogeneity give the same
unique result at that origin.

## 5. The switched common-origin core

Let $\chi_R(X)=\chi(X/R)$, put $\epsilon=R^{-1}$, and use
$\widehat\chi_R(\Omega)=\epsilon^{-4}
\widehat\chi(\Omega/\epsilon)$.
Localize the two independent external momenta to
$|p|_E+|q|_E\lesssim\epsilon$ with a smooth cutoff.

Scale all momenta by $\epsilon$:

\[
p=\epsilon P,\qquad q=\epsilon Q,\qquad
\Omega=\epsilon V.
\]

The full measure contributes $\epsilon^{12}$, the switch
contributes $\epsilon^{-4}$, and the canonical tensor has degree
zero. The remaining test is supported in a fixed compact
$(P,Q)$ set and is Schwartz in $V$ because it contains
$\widehat\chi(V)$.
Every derivative of the rescaled original test has a nonnegative
power of $\epsilon$. Thus the test family is bounded in the
Schwartz seminorm required by Theorem 1.

It follows that

\[
\boxed{
\left|\left\langle
\widehat\chi_R\mathcal G\,
\zeta\!\left(\frac{p,q}{\epsilon}\right),\Psi
\right\rangle\right|
\le C\epsilon^8\mathfrak p_k(\Psi).
}
\tag{16}
\]

The same bound holds for $\mathcal G_B$, uniformly in $B>0$,
because (14) replaces the cutoff by $\epsilon B$ and Theorem 1
is uniform at every positive cutoff scale. This is a distribution
seminorm estimate, not a pointwise estimate.

## 6. From a finite-energy annulus to the origin restriction

Assume the complete canonical family has its genuine adiabatic
restriction on a fixed external annulus

\[
\tfrac12\le |p|_E+|q|_E\le2,
\]

including the hard-null and outer-soft endpoint pieces.
Convergence there gives a uniform finite-seminorm bound for the
switch scales $R\ge1$; remote injection tails use the established
tempered bound.

On an external annulus of radius $\lambda\ge\epsilon$, common
scaling gives an overall factor $\lambda^8$ and replaces the
switch scale by $\lambda R\ge1$.
The sum of dyadic annuli in the ball of radius $\delta$ is
therefore bounded by

\[
C\sum_{\epsilon\lesssim2^{-j}\delta\le\delta}
(2^{-j}\delta)^8
\le C'\delta^8.
\tag{17}
\]

The remaining central core is (16).
Hence the contribution of the whole external ball tends to zero
uniformly as $\delta\downarrow0$.
The annular limit extends uniquely across $p=q=0$, and no
origin-supported contact can appear in the adiabatic limit.

This proves the common-origin completion once the stated
finite-energy annular theorem has been established. It does not
replace the distinct outer-soft endpoint estimates on that
annulus.

The construction (13) permits removal of the common radial
cutoff first for every fixed switch. Uniformity of the central
bound (16) does not, by itself, authorize arbitrary joint paths
of radial and adiabatic cutoff removal on the external annuli.

## 7. Actual verification

The companion origin_causal_checks.py verifies the six-dimensional
mass-derivative recurrences, the zero-radius spectral integral,
the spacelike Bessel mass derivative, and exact homogeneity
bookkeeping. It also evaluates the causal kernels against a
Gaussian output test, checking their small-$u$ behavior and their
rapid large-$u$ decrease.

The complete distribution construction and estimates use the
analytic causal-support proof above. The numerical integrations
serve only as independent normalization and asymptotic checks.

## Reproducible verification files

- [origin_causal_checks.py](checks/stress_completion/origin_causal_checks.py)
- [Execution record and complete program index](checks/stress_completion/README.md)
