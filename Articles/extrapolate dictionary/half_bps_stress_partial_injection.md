# A transverse-parameter family for the genuine gravitational boundary kernel

## Result

On a finite-energy future-null patch, retain the transverse injection
$b=\Omega_\perp$ as a parameter and the minus injection
$\omega=\Omega^-$ as a distribution variable. The complete common-cutoff
kernel is a smooth $b$-valued family of distributions in the other
variables. Its local finite-order bounds are uniform in every radial
cutoff scale $B>0$, and the same family converges as $B\to\infty$.

The proof uses exact momentum coordinates and the original radial
integrals. It includes the simultaneous zero-mass point and fixes the
null contacts through that integral. No mass-map transversality at
$r=0$ is assumed.

The result gives a genuine seminorm estimate of order
$O(\epsilon^2)$ for the all-null adiabatic core, with
$\epsilon=R^{-1}$. Transverse switch directions are integrated as
parameters, so derivatives of their narrowing profiles are absent from
this estimate. The finite distribution order in the remaining variables
can be arbitrarily large but fixed.

The final sections distinguish this core statement, the completed
annular argument, and the separate order of radial and spacetime cutoff
removal.

## 1. Lightfront coordinates and the exact fixed-$b$ diffeomorphism

Use

\[
k^\pm=k^0\pm k^3,\qquad
s(k)=k^+k^--|k_\perp|^2,\qquad
d^4k=\tfrac12\,dk^+dk^-d^2k_\perp.
\]

First put $\Omega^+=0$ and write
$\Omega=(0,\omega,b)$. The ordered external momenta are
$(p,r,-q)$, with

\[
r=q-p+\Omega.
\]

Choose a compact patch on which $p^+,q^+\ge c_0>0$ and
$p^0,q^0\ge e_0>0$. It includes future-null $p,q$ and a neighborhood of
their cone boundaries. Define

\[
x=s(p),\quad y=s(q),\quad
B_+=q^+,\quad Q=q_\perp.
\]

The map

\[
(p,q,\omega)
\longleftrightarrow
(x,y,r^\mu,B_+,Q)
\tag{1}
\]

is a smooth diffeomorphism at fixed $b$. Its exact inverse is

\[
\begin{aligned}
A&=B_+-r^+,& P&=Q-r_\perp+b,\\
p^+&=A,& p_\perp&=P,&p^-&=(x+|P|^2)/A,\\
q^+&=B_+,&q_\perp&=Q,&q^-&=(y+|Q|^2)/B_+,\\
\omega&=r^--q^-+p^-.
\end{aligned}
\tag{2}
\]

Both denominators are bounded away from zero. The Cartesian lightfront
Jacobian is $1/(AB_+)$; including the two factors $1/2$ in the momentum
measures gives

\[
d^4p\,d^4q\,d\omega
=\frac{dx\,dy\,d^4r\,dB_+\,d^2Q}{2AB_+}.
\tag{3}
\]

Here $d^4r$ is the ordinary Cartesian measure; writing it as
$\tfrac12dr^+dr^-d^2r_\perp$ reproduces the factor $1/(4AB_+)$ in the
fully lightfront-coordinate measure.

The construction remains regular at
$x=y=0,r=0,b=0$. In particular it does not require the map to the three
squared masses $(x,y,s(r))$ to be a submersion.

The exact free supports in this chart are

\[
C_p=\theta(x),\qquad C_q=\theta(y),\qquad
C_r=\mathbf1_{r\in V_+},\qquad C_{-r}=\mathbf1_{-r\in V_+}.
\tag{4}
\]

The first two identities use the strictly positive energy patch.
The last two depend only on the independent coordinate $r$.

## 2. The three genuine radial kernels in these coordinates

Write $J_x(u)=J_0(u\sqrt x)$ on $x\ge0$, and let
$J_x^{[2]}=\partial_x^2J_x=u^4f_2(u\sqrt x)/32$.
The scalar retarded kernel with full four-momentum $r$ is denoted
$\mathscr R_r(0,u)$. For a fixed positive or negative output energy,
$R_\pm(x,u)$ denotes the corresponding independent-mass boundary value.

Apart from the common factor $-2\alpha\pi^6/5$ and the polynomial tensor
$\mathcal N$, the three mass factors are exactly

\[
\begin{aligned}
K_{2,B}
&=\theta(x)\theta(y)\int_0^\infty u\,du\,\beta_B(u)
\mathscr R_r(0,u)J_x^{[2]}(u)J_y(u),\\
K_{1,B}
&=\theta(y)C_{-r}\int_0^\infty u\,du\,\beta_B(u)
\partial_x^2R_+(x,u)J_y(u)J_{s(r)}(u),\\
K_{3,B}
&=\theta(x)C_r\int_0^\infty u\,du\,\beta_B(u)
R_-(y,u)J_x^{[2]}(u)J_{s(r)}(u).
\end{aligned}
\tag{5}
\]

Every Bessel factor with argument $s(r)$ is restricted to its actual
free cone. The retarded signs in the second and third lines are fixed
because $p^0,q^0$ have a positive lower bound. The first line retains
the genuine four-dimensional retarded distribution in $r$, including
its zero-energy behavior.

The transverse injection $b$ occurs nowhere in the three kernels (5).
It enters the full coefficient only through the smooth inverse map (2),
the polynomial tensor

\[
\mathcal N_{ij}=x^2\Pi_{ij,kl}(p)q^kr^l,
\tag{6}
\]

understood by its expanded polynomial formula, and the test function
and Jacobian. Thus keeping $r$ independent is essential. Varying the
output mass $y$ in the third line changes neither $C_r$ nor its
retarded sign.

## 3. The two radial transform estimates

### 3.1 A free input mass

For a compact smooth test in a nonnegative unraised mass,

\[
\int_0^\infty dy\,J_0(u\sqrt y)\phi(y)
\tag{7}
\]

is the radial Fourier transform of $\phi(|k|^2)$ on $\mathbb R^2$.
It is Schwartz in $u$, uniformly with every fixed number of derivatives
in spectator variables. Smoothness at $k=0$ follows from the squared
mass argument.

### 3.2 An unrestricted retarded output mass

For $\sigma=\pm1$ and $\phi\in C_c^\infty(\mathbb R)$, consider

\[
\mathcal J_\sigma(u)
=\int_{\mathbb R}dy\,R_\sigma(y,u)\phi(y).
\tag{8}
\]

The spectral representation gives the two-dimensional radial Fourier
transform of

\[
h_\sigma(k)=
\int_{\mathbb R}\frac{\phi(y)\,dy}
{y-|k|^2+i0\sigma}.
\tag{9}
\]

The Cauchy transform of a compact smooth function is smooth on the
real axis, with the specified principal-value and imaginary terms.
Consequently $h_\sigma$ is a smooth radial symbol of order $-2$ on
$\mathbb R^2$. Its derivatives satisfy

\[
|\partial_k^\gamma h_\sigma(k)|
\le C_\gamma(1+|k|)^{-2-|\gamma|}.
\tag{10}
\]

The symbol itself need not be integrable at infinity. For every
$N\ge1$, however, $\Delta_k^Nh_\sigma\in L^1$. Fourier integration by
parts therefore gives, for $u\ge1$,

\[
|\mathcal J_\sigma(u)|\le C_Nu^{-2N}.
\tag{11}
\]

The same statement holds with every fixed number of spectator
derivatives. Radial derivatives can be included by increasing $N$.
At $u\downarrow0$, the bound is of logarithmic type. This proves the
large-radius estimate needed by the right insertion, without
incorrectly treating (9) as an absolutely integrable Fourier symbol.

## 4. Uniform family and common-cutoff theorem

**Theorem 1.** On the patch specified above, the full coefficient
defined by (5)–(6) is a smooth family in $b$ with values in
$\mathcal D'_{\rm loc}(p,q,\omega)$. For every compact test class it has
a common finite-order bound for all $B>0$. The family converges as
$B\to\infty$, strongly on bounded test sets and smoothly with respect
to $b$ on compact parameter sets.

**Proof.**
In the middle term, integrate the unraised mass $y$ first and use (7).
The raised free mode is bounded by $u^4/32$. As a distribution in $r$,

\[
\mathscr R_r(0,u)=\mathscr R_{u r}(0,1),
\tag{12}
\]

so its dilation seminorms grow at most polynomially at large $u$.
This is the actual retarded distribution in four momenta; it includes
$r=0$. The Schwartz decay in (7) dominates that growth.

In the stress term, integrate the unraised free mass $y$ first.
Move the two output-$x$ derivatives to the test. The same polynomial
dilation bound applies to $R_+(x,u)$ as an independent-mass
distribution. The factor $J_{s(r)}$ is bounded on $C_{-r}$.

In the right term, integrate the unrestricted output mass $y$ first,
using (8)–(11). Its free cone $C_r$ is independent of $y$.
Both remaining free modes have polynomial bounds, one of order $u^4$.

Thus all three large-$u$ integrals converge in a finite test seminorm.
At small $u$, the middle and right integrands are bounded in seminorm
by $C u^5(1+|\log u|)$; the stress term is bounded by
$C u(1+|\log u|)$ after moving its output derivatives.
These estimates prove both convergence and uniform boundedness for
every cutoff with $|\beta_B|\le1$. In particular they include
$0<B<1$, where only a smaller endpoint integral remains.

Dominated convergence proves the cutoff limit. Differentiating the
smooth map (2), tensor and Jacobian with respect to $b$ only produces
finite test derivatives with bounded coefficients on the chart.
It changes neither the radial kernels nor their supports in (5).
This proves the asserted smooth parameter convergence. $\square$

The limiting family is the canonical radial definition. Its
external-null mass jets, including any term at a simultaneous mass
origin, are retained automatically. The explicit formulas in
half_bps_stress_canonical_mass.md provide an independent description of those
jets.

## 5. The outer-soft endpoint chart

Suppose $p$ is near zero, while $q$ is near a nonzero future-null
momentum. Shrink the neighborhood so that $q$ and
$r=q-p+\Omega$ have positive energies and positive plus components
bounded away from zero. The stress insertion then has empty free
support, since $C_{-r}=0$.

At fixed $\Omega^+=0$ and $b$, use the alternative coordinates

\[
(p^\mu,y=s(q),t=s(r),C_+=r^+,V=r_\perp).
\tag{13}
\]

Their inverse is

\[
\begin{aligned}
r^+&=C_+,&r_\perp&=V,&r^-&=(t+|V|^2)/C_+,\\
q^+&=p^++C_+,&q_\perp&=p_\perp+V-b,
&q^-&=(y+|q_\perp|^2)/(p^++C_+),\\
\omega&=p^-+r^--q^-.
\end{aligned}
\tag{14}
\]

Both denominators stay positive. No division by a component of the
soft momentum $p$ occurs.

The common raised mode is now
$C_pJ_{s(p)}^{[2]}(u)$, a locally bounded cone indicator times an
entire free radial mode. For the middle graph, first integrate the
unraised free mass $y$; its output mass $t$ is independent. For the
right graph, first integrate the unraised free mass $t$; its output
mass $y$ is independent. Estimate (7) and the same small-$u$ bounds
prove Theorem 1 in this chart as well, including $p=0$.

If $q$ is soft and $p$ remains hard, put $k=-r$, so $p$ and $k$ are
hard future momenta and the right insertion has empty support. Use
$(q^\mu,x=s(p),t=s(k),C_+=k^+,K=k_\perp)$, with inverse

\[
\begin{aligned}
k^-&=(t+|K|^2)/C_+,\qquad
p^+=q^++C_+,\qquad p_\perp=q_\perp+K+b,\\
p^-&=(x+|p_\perp|^2)/(q^++C_+),\qquad
\omega=p^--q^--k^-.
\end{aligned}
\tag{14a}
\]

The middle graph has the hard retarded output mass $t$ with negative
energy sign. Pair that output mass first using (8)–(11); the remaining
raised mode is $\theta(x)J_x^{[2]}$, and the soft line is
$C_qJ_{s(q)}$. The stress graph instead has the unraised hard free
mass $t$; pair it first using (7), and treat its two output-$x$
derivatives distributionally. No mass coordinate is extracted from
the soft $q$ cone. This proves the second endpoint chart without
assuming that exchanging the two outer labels leaves the placement
of an unraised free mass unchanged.

## 6. Removing the plus injection without changing the tensor weight

For a general small injection, first make the common null rotation
using the original hard momentum. This puts its transverse component
at zero. If the common-ray parameter is $u$, the injection transforms
as

\[
c=\Omega^+\mapsto c,\qquad
b\mapsto b-cu,\qquad
\omega\mapsto\omega-2u\cdot b+c|u|^2.
\tag{15}
\]

Only after this rotation absorb $c$ into the hard plus momentum while
preserving its mass. For a hard $p$,

\[
p'^+=p^+-c,\quad p'_\perp=0,\quad
p'^-=\frac{x}{p^+-c},\quad
\omega'=\omega-p^-+p'^-.
\tag{16}
\]

Then $r=q-p'+(0,\omega',b)$, and all radial masses and energy signs
are unchanged. The inverse is smooth for small $c$.
For a soft $p$ use the hard $q$ instead, with
$q'^+=q^++c$ and the analogous mass-preserving formula.

The order of these two transformations matters for the estimate:
with the original hard transverse momentum already zero, (16)
preserves its null ray. At fixed small $c$, the original tensor
continues to vanish to weighted order four at the all-null normal
origin. A transformation based on the shifted hard momentum first
would require extra transverse correction terms.

## 7. The all-null core: a seminorm estimate

Work in a fixed hard-plus chart with compact tangential parameters.
After removing the common null rotation, the external normal
coordinates are $(x,y,v_\perp)$ with weights

\[
(2,2,1,1).
\]

The minus injection has weight two and the transverse injection is a
parameter of weight one. Put $\lambda=\sqrt\epsilon$,
$\epsilon=R^{-1}$, and rescale

\[
x=\lambda^2X,\quad y=\lambda^2Y,\quad
v_\perp=\lambda V,\quad \omega'=\lambda^2 W.
\tag{17}
\]

The six external-normal powers and two minus-injection powers
contribute $\lambda^8$ to the distributional pairing.
The scalar mass kernel scales as $\lambda^{-6}$ and the expanded
tensor as at least $\lambda^4$. Hence the complete tensor contributes
at worst $\lambda^{-2}$, with a smooth bounded coefficient family.
The cutoff scale becomes $\lambda B$.

These statements apply to the actual distributions, not only to their
off-threshold densities: Theorem 1 supplies a uniform finite-order
bound on the fixed rescaled compact set for every $\lambda B>0$.

Now integrate the plus and transverse injection variables as
parameters:

\[
c=\epsilon C,\qquad b=\epsilon D.
\]

Their physical measure cancels three of the four powers in
$\widehat\chi_R=\epsilon^{-4}\widehat\chi(\Omega/\epsilon)$.
The remaining switch factor is $\epsilon^{-1}$.
In the kernel the rescaled transverse parameter is
$b/\lambda=\lambda D$.

For each fixed $C,D$, the switch is a Schwartz test in $W$ with
width of order one. Formula (15) makes only a uniformly invertible
linear change of the variables $(C,D,W)$ on compact common-ray
patches. Formula (16) adds a smooth shift of $W$ whose derivatives
in $(X,Y,V)$ remain bounded. Thus every fixed derivative used by the
distribution seminorm has a bound by a finite Schwartz seminorm of
$\widehat\chi$, with polynomial factors in $C,D$.

In particular no derivative with respect to the transverse parameter
$b$ is used. The distributional estimate may have high order in
$(X,Y,V,W)$ without creating an inverse narrowing transverse width.
Integrating the polynomial factors against the Schwartz profile gives
a finite constant. The resulting core bound is

\[
\boxed{
\left|\langle W_{\chi_R,B}^{\rm core},\Psi\rangle\right|
\le C\,\lambda^{8-2}\epsilon^{-1}\,\mathfrak p_k(\Psi)
=C\epsilon^2\mathfrak p_k(\Psi).
}
\tag{18}
\]

The bound is uniform in $B>0$ and on bounded test sets in the hard
two-leg chart $p^+,q^+\ge c_0$. Section 5 constructs the canonical
families at the outer-soft endpoints. Extending the weighted estimate
uniformly as one hard-plus lower bound tends to zero requires the
separate outer-soft two-scale estimate; the sum of the formal normal
weights alone does not establish that endpoint estimate.

For large rescaled transverse parameters, the proof of Theorem 1
uses translated compact tests in $r$ and the tempered dilation bound
(12). Its constants grow at most polynomially in those translations.
The Schwartz profile controls these tails. Injection outside the
original local chart is handled by a separate fixed localization and
the usual finite-order Schwartz tail estimate; (18) is a local
all-null statement.

## 8. Annuli and what the core closes

For this section retain the fixed positive lower bounds on both hard
plus components. On an external-normal annulus of size
$\rho>\epsilon$, cover the common-ray directions by angular cells of
diameter $\sqrt\rho$. Use a fixed central direction for the boost in
each cell. This avoids replacing a constant injection by a
momentum-dependent injection in a continuity theorem.

The fixed boost and common dilation place each cell on a fixed
compact set away from the all-null normal origin. There are
$O(\rho^{-1})$ cells on a compact two-dimensional angular patch.
Each cell has external volume $\rho^4$ and tensor weight
$\rho^{-1}$; summing cells gives the net factor $\rho^2$.
All cutoffs become fixed smooth cutoffs after rescaling, so their
derivatives consume no extra inverse powers.

The normalized compact set has a finite cover consisting of regular
nonzero-Gram patches, zero neighborhoods of positive-mass physical
collinearity, and massive zero-transfer patches.
The last class is covered by massive_exact_continuity.md.
The finite cover has fixed normalized massive lower bounds wherever
the massive lemma is used.

The fixed-injection modulus on such compact sets is
$O(|\Omega|(1+|\log|\Omega||))$. After the anisotropic rescaling,
the largest switch width is $O(\epsilon/\rho)$. The external
volume and tensor weight contribute $\rho^2$, so each annular
error is bounded in a finite test seminorm by

\[
C\epsilon\rho
\left(1+\left|\log\frac{\epsilon}{\rho}\right|\right).
\tag{19}
\]

Here the remote-injection tail is controlled separately. First
localize the original plus injection to $|c|<c_0/2$, so the
mass-preserving plus map remains uniformly invertible. Write
$\eta=\epsilon/\rho$. The normalized minus switch has the form
$\eta^{-1}\widehat f(W/\eta)$, while the plus and transverse
variables remain parameters. If the canonical kernel has local
distribution order $k$, a fixed derivative bound costs at most
$\eta^{-k-1}$. On the complement of a fixed normalized injection
neighborhood, at least one original Schwartz variable has size
$c/\eta$; the other transformed widths are no larger than $\eta$.
An arbitrarily high Schwartz tail supplies $\eta^N$.
Choose $N>k+M+1$ to obtain any desired $\eta^M$ remainder.
Polynomial parameter growth is absorbed by increasing the same
Schwartz seminorm. This tail argument uses a fixed finite order on
the normalized finite cover, with no assumption about arbitrary
uncontrolled ratios of widths.

On the complementary region $|c|\ge c_0/2$, use the full
twelve-dimensional tempered construction in
half_bps_stress_causal_corner.md rather than the plus-removal chart.
Its fixed finite distribution order consumes only a fixed power
of the smallest switch width $\epsilon$, and the angular cutoffs
consume another fixed power of $\rho^{-1}\le\epsilon^{-1}$.
The plus Schwartz variable satisfies $|c|/\epsilon\ge c_0/(2\epsilon)$.
Taking an arbitrarily high Schwartz seminorm therefore supplies
enough powers of $\epsilon$ to dominate all these finite losses
and the dyadic cell count. This separates the large-plus tail
from the chart in which $p^+-c$ is required to stay positive.

Summing the resulting dyadic bounds down to
$\rho\asymp\epsilon$ gives a conservative
$O(\epsilon(1+|\log\epsilon|))$ local rate on this hard two-leg
patch. The core contributes (18). Outer-soft endpoint constants
remain the responsibility of their separate two-scale estimate.

This supplies the finite-energy all-null extension/restriction
mechanism while retaining the actual canonical radial contacts.
The common total-soft origin uses an ordinary momentum scaling
argument and remains a distinct stratum.

Theorem 1 identifies the radial-cutoff limit as a distribution in the
nonstationary variables, and (18) is uniform in that cutoff.
For the complete adiabatic theorem, the justified order here is to
take the common radial cutoff to infinity first and then take
$R\to\infty$. Exchanging these limits in arbitrary joint paths
would additionally require a cutoff-uniform annular trace modulus;
joint distributional convergence alone does not establish that
modulus.

## 9. Verification and independent checks

The inverse coordinates, mass preservation, lightfront Jacobian,
plus-injection removal, weighted tensor order, and retarded
output-mass symbol argument were independently checked in this
branch and in the scalar branch. The companion
partial_injection_checks.py records the exact algebra.

The distributional arguments are analytic seminorm estimates. Their
strength is stronger than pointwise scaling, while the stated
radial/adiabatic order and the remaining total-soft stratum keep
their scope explicit.

## Reproducible verification files

- [partial_injection_checks.py](checks/stress_completion/partial_injection_checks.py)
- [Execution record and complete program index](checks/stress_completion/README.md)
