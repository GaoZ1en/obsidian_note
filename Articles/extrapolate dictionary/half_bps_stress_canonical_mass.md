# Canonical radial mass raising, including the external-null jets

## Statement and scope

The independent-mass kernel of the genuine common radial integral has a
well-defined distributional limit through the simultaneous zero-mass
corner. This note constructs that limit and fixes the mass-raising contact
terms explicitly. It does not infer a critical pullback to physical
momenta solely from the existence of the independent-mass distribution.
That pullback is the separate geometric step in the all-null argument.

The radial measure and Bessel normalizations are those of the source
boundary calculation. Let $\sigma=\pm1$ be a fixed retarded energy sign,
and write

\[
R_\sigma(t,u)=
\int_0^\infty \frac{\mu\,d\mu\,J_0(\mu u)}
{t-\mu^2+i0\sigma}.
\]

For a common bounded radial cutoff $\beta_B(u)$ tending to one, set

\[
H_{\sigma,B}(t;x,y)
=\int_0^\infty u\,du\,\beta_B(u)
R_\sigma(t,u)J_0(\sqrt x\,u)J_0(\sqrt y\,u).
\tag{1}
\]

Both input masses are nonnegative. The middle gravitational mass factor is

\[
T_{\sigma,B}(x,y,t)
=\theta(x)\theta(y)\,\partial_x^2H_{\sigma,B}(t;x,y),
\tag{2}
\]

where the derivative acts on the radial Bessel mode. The outer stress
factor instead differentiates the retarded output mass; the right scalar
factor exchanges the other two mass labels. These are the actual
operations at finite cutoff.

## 1. A direct seminorm proof of the common-cutoff limit

Pair (2) with $\phi\in C_c^\infty(\mathbb R^3)$. Perform the unraised
input-mass integration first:

\[
F(x,t;u)=\int_0^\infty dy\,J_0(\sqrt y\,u)\phi(x,y,t).
\tag{3}
\]

The function $\phi(x,|k|^2,t)$ is a smooth compactly supported radial
function of $k\in\mathbb R^2$, including at $k=0$. Therefore (3) is its
two-dimensional radial Fourier transform, up to the fixed angular
constant. It is Schwartz in $u$, uniformly with every fixed number of
$x,t$ derivatives and uniformly on bounded test sets.

On $x\ge0$,

\[
\partial_x^2J_0(\sqrt x\,u)
=\frac{u^4}{32}f_2(\sqrt x\,u),
\qquad |f_2|\le1.
\tag{4}
\]

Also $R_\sigma(t,u)=R_\sigma(u^2t,1)$ as a distribution in $t$.
The dilation action on the fixed tempered distribution $R_\sigma(t,1)$
has at most polynomial growth in $u$ for $u\ge1$. The Schwartz seminorms
in (3) therefore dominate the entire large-$u$ integral in a finite test
seminorm. At small $u$,

\[
R_\sigma(t,u)
=\log u+\tfrac12\log(-t-i0\sigma)+O(1)
+O_{\mathcal D'_t}(u^2|\log u|),
\tag{5}
\]

on compact mass sets. With the measure $u\,du$ and (4), this endpoint is
integrable as $u^5(1+|\log u|)$.

Consequently dominated convergence in finite seminorms proves

\[
T_{\sigma,B}\longrightarrow T_\sigma
\quad\text{strongly in local }\mathcal D'(\mathbb R^3_{x,y,t}).
\tag{6}
\]

For the stress insertion, first perform one unraised free-mass Hankel
transform and move the two output-mass derivatives onto the test. The
same argument applies; its small-$u$ integral is of
$u(1+|\log u|)$ type. For the right insertion, use its unraised free
mass. Thus all three terms have the same common-cutoff limit.

This proof includes tests meeting $x=y=t=0$. The test-dependent Hankel
decay is the essential point: a pointwise estimate of the infinite
radial integral at zero masses would miss the distributional
cancellation.

The construction also proves exact homogeneity. Scaling all three mass
variables by $\lambda^2$ and changing $u$ to $u/\lambda$ shows that
$T_\sigma$ has momentum degree $-6$, equivalently mass degree $-3$.
Its critical degree in three mass variables does not leave an unspecified
extension, because (1)–(6) fix the extension.

## 2. The exact null jets

There is a useful independent expression for that canonical extension.
At finite cutoff,

\[
\theta(x)\partial_x^2H_B
=\partial_x^2[\theta(x)H_B]
-\delta(x)H_{B,x}(0;t,y)
-\delta'(x)H_B(0;t,y).
\tag{7}
\]

This identity is distributional in $x$, with all other variables kept.
The sign of both subtraction terms follows directly from two integrations
by parts on the half-line.

The two limiting jets can be calculated exactly. Define

\[
\mathcal R_\sigma(t-y)=\frac1{t-y+i0\sigma}.
\]

Hankel orthogonality yields

\[
H_B(0;t,y)\longrightarrow \mathcal R_\sigma(t-y).
\tag{8}
\]

The Bessel equation gives the finite-cutoff identity

\[
H_{B,x}(0;t,y)
=\partial_y\big[y\partial_y H_B(0;t,y)\big].
\tag{9}
\]

Indeed $\partial_xJ_0(\sqrt x\,u)|_{x=0}=-u^2/4$, while
$\partial_y(y\partial_y)J_0(\sqrt y\,u)=-(u^2/4)J_0(\sqrt y\,u)$.
Thus

\[
\boxed{
H_x(0;t,y)=
\mathcal R_\sigma(t-y)^2
+2y\,\mathcal R_\sigma(t-y)^3.
}
\tag{10}
\]

Powers in (10) mean the corresponding retarded boundary values
$(t-y+i0\sigma)^{-n}$.

Both jets remain well defined after multiplication by $\theta(y)$.
In coordinates $(t-y,y)$ they are tensor-product boundary distributions
and a half-line distribution. They include the point $t=y=0$.
There is no extra half-line edge term in (9), because

\[
\theta(y)\partial_y[y\partial_y H_B(0;t,y)]
=\partial_y\{y\partial_y[\theta(y)H_B(0;t,y)]\},
\tag{11}
\]

and $y\delta(y)=0$. Passing to the limit in this identity is legitimate
by continuity of distributional differentiation.

Combining (7)–(10) gives the canonical middle mass factor:

\[
\boxed{
\begin{aligned}
T_\sigma={}&
\partial_x^2[\theta(x)\theta(y)H_\sigma(t;x,y)]\\
&-\delta(x)\theta(y)
\left[\mathcal R_\sigma(t-y)^2
+2y\mathcal R_\sigma(t-y)^3\right]\\
&-\delta'(x)\theta(y)\mathcal R_\sigma(t-y).
\end{aligned}
}
\tag{12}
\]

The scalar kernel in the first line is itself the same common-cutoff
limit. Its angular form away from degenerate thresholds is

\[
H_\sigma(t;x,y)
=\frac1\pi\int_0^\pi
\frac{d\vartheta}
{t-x-y+2\sqrt{xy}\cos\vartheta+i0\sigma}.
\tag{13}
\]

Equation (12), or the defining integral (1)–(6), specifies its raised
extension at the simultaneous mass origin.

## 3. Consequences for the gravitational calculation

1. The physical radial operation is not the ordinary second derivative
   of the complete zero-extended scalar spectral density. The two
   explicit jets in (12) supply the difference.
2. These jets generally survive contraction with the polynomial
   unamputated TT numerator. Its factorized notation
   $x^2\Pi(p)$ cannot be used to discard them after a singular
   null-projector manipulation.
3. A potential distribution supported at $x=y=t=0$ is fixed by the
   common radial integral. Its coefficient can neither be assigned zero
   from the off-threshold formula nor changed independently among the
   three insertions.
4. At a noncritical physical momentum point, the appropriate canonical
   mass distribution can be pulled back by the usual submersion
   criterion. Critical simultaneous-null points require the additional
   lightfront geometry and weighted-extension estimates.

The retarded sign in this note is fixed. When an output energy crosses
zero, the complete all-insertion representation and its actual retarded
prescription must be used before applying this local mass chart.

## 4. Actual verification

The companion canonical_mass_raising_checks.py checks (4), (9), (10) and
the half-line integration-by-parts signs independently. Direct spacelike
radial quadratures reproduce both jets, including examples in which the
first jet derivative changes sign. These quadratures check the
normalization; the distributional statements at the null corner follow
from the seminorm proof and (12).

## Reproducible verification files

- [canonical_mass_raising_checks.py](checks/stress_completion/canonical_mass_raising_checks.py)
- [Execution record and complete program index](checks/stress_completion/README.md)
