# 08 - Uniform one-cell characteristic stability: first proved estimate and stop line

## 0. Direct verdict

**Proved here:** a conditional-on-existing-solutions, angular $H^k$ difference
estimate in the actual characteristic flux norm of the reduced Cabet system.
**Not proved:** $\mathbf P_{\rm cell}^k$, its uniform existence width from
project data, the outgoing finite-Sobolev restart trace, linearized Einstein
existence/surjectivity, or a $C^1$ Einstein development map. No finite-grid
argument is begun. $\mathbf P_{\rm rect}^{s,r}$ remains conditional.

The first PDE estimate still missing is $R_\perp^k$ in Section 6: control of
the transverse-to-evolution derivatives $\partial_\eta\phi$ and
$\partial_\xi\psi$ and their outgoing characteristic traces from the
source's incoming norm. The independent initial-data gap is $C_{\rm mix}$
in calculation 06.(8.11). Neither gap is hidden inside "standard estimates".

## 1. Source system and fixed gauge

Primary source: Cabet--Chruściel--Tagne Wafo,
[arXiv:1406.3009v2](https://arxiv.org/pdf/1406.3009v2), Section 2,
Sections 3.2--3.4, Section 5.1 and Appendix A.4. PDF pages 52--53 and
67--68 were rendered to check underlines, circles and matrix signs.
Equation references below are to this version.

Use source coordinates $(\xi,\eta)=(v,u)$ on the project's incoming cross,
so $N_+=\{\xi=0\}$, $N_-=\{\eta=0\}$. On the cell
$Q=[0,a]_\xi\times[0,b]_\eta\times S$, fix

$$
e_3=\partial_\xi,\quad e_4=c\partial_\eta+b^A\partial_A,\quad
e_a=E_a{}^A\partial_A,\quad g(e_3,e_4)=-2,
\tag{1.1}
$$
$$
\Gamma_3{}^3{}_a=\Gamma_a{}^3{}_3,\qquad
\Gamma_3{}^a{}_3=\Gamma_4{}^i{}_4=\Gamma_3{}^a{}_b=0.
\tag{1.2}
$$

The source connection convention is
$\nabla_{e_i}e_j=\Gamma_i{}^k{}_j e_k$ and
$\Gamma_{ijk}=g_{j\ell}\Gamma_i{}^\ell{}_k=-\Gamma_{ikj}$.
Use local dyads and fixed reference bundle connections; no global $S$ chart
or global dyad is assumed. The initial normalization is calculation
06.(4.6)--(4.7), not a silent identification of source and project $u,v$.

### 1.1 Curvature unknowns, including copies

The physical Weyl fields are
$\Psi=(\alpha,\underline\alpha,\beta,\underline\beta,\rho,\sigma)$
as in (A.10), with $\alpha_{ab}=d_{a4b4}$,
$\underline\alpha_{ab}=d_{a3b3}$,
$\beta_a=d_{a434}/2$, $\underline\beta_a=d_{a334}/2$,
$\rho=d_{3434}/4$, $\sigma=({}^\star d)_{3434}/4$.
The last $\sigma$ is a curvature scalar, not $\sigma^\pm_{AB}$.
Introduce the four copies
$\mathring\beta,\mathring{\underline\beta},\mathring\rho,\mathring\sigma$
of (A.35). Equality to their physical partners is an additional constraint.

To make the splitting unambiguous, **define slots by their differential
rows in (A.36)--(A.39)**:

$$
\begin{aligned}
\phi={}&(e_i{}^\mu,\Gamma_i{}^a{}_b,\Gamma_i{}^a{}_3;
\underline\beta,\mathring\rho,\mathring\sigma,\beta,\alpha),\\
\psi={}&(\Gamma_i{}^a{}_4,\Gamma_i{}^3{}_3;
\underline\alpha,\mathring{\underline\beta},\rho,\sigma,\mathring\beta).
\end{aligned}
\tag{1.3}
$$

Algebraically zero/dependent connection components are eliminated using
(1.2) and metric compatibility. These lists specify field types rather than
counting dependent components twice. The printed lists (5.12)--(5.13) place
the circles differently: exchanging every circled/uncircled copy pair in
(1.3) gives those lists, up to ordering. Here all subsequent formulas use
the Appendix A differential-row allocation (1.3). One cannot combine the
printed lists with the Appendix rows without this explicit relabelling.

In particular the four curvature pairs are

| Appendix block | $e_3$ row ($\phi$) | $e_4$ row ($\psi$) |
|---|---|---|
| A.36 | $\underline\beta$ | $\underline\alpha$ |
| A.37 | $(\mathring\rho,\mathring\sigma)$ | $\mathring{\underline\beta}$ |
| A.38 | $\beta$ | $(\rho,\sigma)$ |
| A.39 | $\alpha$ | $\mathring\beta$ |

### 1.2 Actual principal matrices and lower-order terms

In orders $(\underline\alpha_{11},\underline\alpha_{12},
\underline\beta_1,\underline\beta_2)$ and $(\rho,\sigma,\beta_1,\beta_2)$,
(A.41), (A.43) give

$$
\begin{pmatrix}e_4&0&e_1&-e_2\\0&e_4&e_2&e_1\\e_1&e_2&e_3&0\\-e_2&e_1&0&e_3\end{pmatrix},
\qquad
\begin{pmatrix}e_4&0&-e_1&-e_2\\0&e_4&-e_2&e_1\\-e_1&-e_2&e_3&0\\-e_2&e_1&0&e_3\end{pmatrix}.
\tag{1.4}
$$

A.37 and A.39 have the permuted/renamed companion blocks, as specified
there. The scalar product weights symmetric tracefree tensors by one half
their full tensor norm, (A.42). With that fixed component inner product,
all matrices are symmetric. The frame equations are

$$
\partial_\xi e_i{}^\mu=(\Gamma_3{}^l{}_i-\Gamma_i{}^l{}_3)e_l{}^\mu.
\tag{1.5}
$$

For a gauge-vanishing $\Gamma_p{}^i{}_j$, the connection equation is

$$
e_p\Gamma_q{}^i{}_j=d^i{}_{jpq}
+(\Gamma_p{}^l{}_q-\Gamma_q{}^l{}_p)\Gamma_l{}^i{}_j
-\Gamma_p{}^i{}_l\Gamma_q{}^l{}_j+\Gamma_q{}^i{}_l\Gamma_p{}^l{}_j.
\tag{1.6}
$$

Use $p=3$ for $(i,j)=(a,b),(a,3)$ and $p=4$ for $(a,4),(3,3)$.
The latter uses $\Gamma_4{}^3{}_3=-\Gamma_4{}^4{}_4=0$.
For nonvanishing gauge components the term $e_q\Gamma_p{}^i{}_j$ must be
restored, as in 06.(8.11). The curvature rows and their complete algebraic
right sides are exactly (A.36)--(A.39) with $J=0$ and allocation (1.3).
On duplicated data away from the Einstein constraint surface, fix their
displayed choice of every undifferentiated copy; do not silently change it.
These equations define $G$ precisely without asserting a new constraint
propagation theorem. Absorb fixed-reference connection terms into $G$.

Thus, for $F=(\phi,\psi)$,

$$
L_FF=A^\alpha(F,x)\partial_\alpha F=G(F,x),\qquad
A^\xi=P_\phi,\quad A^\eta=cP_\psi,\quad
A^A=b^AP_\psi+\sum_a E_a{}^A K_a,
\tag{1.7}
$$

where $K_a$ are the constant symmetric off-diagonal curvature blocks from
(1.4) and its companions, zero on the frame/connection transport slots.
In a reference bundle formulation $\partial_A$ means $D_A^0$, with fixed
commutators included. $G$ is smooth algebraic in $F$ on a regular frame
patch; (1.5)--(1.6) fix the other rows.

The hyperbolic margin is $c\ge\mu>0$, giving
$A^\xi+A^\eta\ge\min(1,\mu)I$. Geometric equivalence additionally needs
bounded invertible $E$, positive $q$, and injective coordinate/endpoint maps.
Bounds on $c$ and $E$ do not prove global injectivity.

## 2. Norms actually controlled by the energy identity

All $H^k(S)$ norms use calculation 06's fixed reference geometry. Let
$P_I$ range over products of its angular derivatives of length at most $k$.
Use the flux norm

$$
\|Z\|_{X^k(Q)}^2=
\sup_{0\le x\le a}\int_0^b\|Z_\phi(x,\eta)\|_{H^k}^2d\eta
+\sup_{0\le y\le b}\int_0^a\|Z_\psi(\xi,y)\|_{H^k}^2d\xi
+\int_Q|Z|_{H^k(S)}^2d\xi d\eta.
\tag{2.1}
$$

The last term is controlled by the first two, with a factor $a+b$.
This is (2.14)--(2.15), with equivalent positive flux weights. It is **not**
$\sup_{\xi,\eta}\|F\|_{H^k}$ and controls no generator derivative by definition.
The previous (07.4.2) norm was not justified as equivalent and is withdrawn.

For already completed reduced incoming free data $d=(\phi|_{\xi=0},
\psi|_{\eta=0})$, define

$$
\|d\|_{I^k}=
\sum_{j=0}^k\|\partial_\eta^j\phi(0,\cdot)\|_{C^0([0,b];H^{k-j})}
+\sum_{j=0}^k\|\partial_\xi^j\psi(\cdot,0)\|_{C^0([0,a];H^{k-j})}.
\tag{2.2}
$$

This is the finite-order shape (3.99). The source theorem also requires
the complementary sheet constraints to have solutions; (2.2) alone does
not supply them. Write $I^k_{\rm flux}$ for just the two incoming integrals
in (2.1); $I^k_{\rm flux}\le C(a,b)I^k$. Neither $I^k$ nor its index is
identified with the project $\mathcal D^s$ until $C_{\rm SH}$ is proved.

## 3. Exact difference equation and all angular principal commutators

Let $F_1,F_2$ be exact solutions of this **fixed reduced system** already
defined on $Q$. Assume their values and interpolation segment lie in a
fixed compact regular coefficient neighborhood $K$, $c_i\ge\mu$, and

$$
\sup_Q\big(\|F_1\|_{H^{k+1}}+\|F_2\|_{H^{k+1}}\big)
+\|F_1\|_{W^{1,\infty}(Q)}+\|F_2\|_{W^{1,\infty}(Q)}\le M,
\qquad k\ge3.
\tag{3.1}
$$

The $W^{1,\infty}$ norm includes **both null derivatives**. It is an
a priori assumption, not a consequence of (2.1).
Set $W=F_1-F_2$, $F_\tau=F_2+\tau W$. Subtraction gives exactly

$$
L_1W=\mathcal B_{12}W,\qquad
\mathcal B_{12}Z=\int_0^1
\{DG(F_\tau)Z-DA^\alpha(F_\tau)[Z]\partial_\alpha F_2\}\,d\tau.
\tag{3.2}
$$

There is no $DA^\xi$ term. $DA^\eta[Z]=Dc[Z]P_\psi$ multiplies only
$\partial_\eta(F_2)_\psi$, determined by its own evolution equation.
Hence the coefficients of $\mathcal B_{12}$ obey
$\|\mathcal B_{12}\|_{H^k}\le C(K,M,\mu)$: at most $k+1$ angular
derivatives of $F_2$ enter, and no unknown $\partial_\eta(F_2)_\phi$
appears in this particular bound.

For every angular multi-index $I$,

$$
L_1P_IW=P_I(\mathcal B_{12}W)
-[P_I,c_1]P_\psi\partial_\eta W
-[P_I,A_1^A]D_A^0W-A_1^A[P_I,D_A^0]W.
\tag{3.3}
$$

In a chart, the coefficient commutators have exactly the terms
$\sum_{0<J\le I}\binom I J(D^J A)D^{I-J}\partial W$;
there is no $[P_I,A^\xi]\partial_\xi W$ term. Fixed-reference curvature
and atlas commutators are the last term, of lower angular order, uniformly
bounded by $C\|W\|_{H^k}$. These are all principal commutators.

The apparently dangerous null derivative is removed **only in its projected
slot** using

$$
\partial_\eta W_\psi
=c_1^{-1}\{(\mathcal B_{12}W)_\psi-(A_1^AD_A^0W)_\psi\}.
\tag{3.4}
$$

By Moser and $H^k(S)\hookrightarrow W^{1,\infty}(S)$ for $k\ge3$,

$$
\|[P_I,c_1]\partial_\eta W_\psi\|_2
\le C\big(\|Dc_1\|_\infty\|\partial_\eta W_\psi\|_{H^{k-1}}
+\|c_1\|_{H^k}\|\partial_\eta W_\psi\|_\infty\big)
\le C(K,M,\mu)\|W\|_{H^k}.
\tag{3.5}
$$

The angular coefficient commutator has the same bound, and
$\|P_I(\mathcal B_{12}W)\|_2\le C\|W\|_{H^k}$.
No spare derivative of $W$ was assumed here; the one extra angular
derivative is on the bounded backgrounds in (3.1).

## 4. Proved angular-flux stability lemma and uniformity boundary

For $J^\alpha=\sum_I\langle P_IW,A_1^\alpha P_IW\rangle$, direct
differentiation with the fixed product density gives

$$
\partial_\alpha J^\alpha
=\sum_I\{2\langle P_IW,L_1P_IW\rangle
+\langle P_IW,(\operatorname{div}_0 A_1)P_IW\rangle\}.
\tag{4.1}
$$

The divergence includes $\partial_\eta c_1$. Its bound uses the full
$W^{1,\infty}$ assumption (3.1), exactly the issue highlighted by source
(3.7)--(3.9). Thus integration on every past subrectangle yields

$$
E_\phi(x;y)+E_\psi(y;x)
\le C I_{\rm flux}^k(d_1-d_2)^2
+C\int_0^x\int_0^y\|W\|_{H^k}^2d\eta d\xi.
\tag{4.2}
$$

Alternatively multiply the current by $e^{-\lambda(\xi+\eta)}$.
The weight adds
$-\lambda\sum_I\langle P_IW,(A^\xi+A^\eta)P_IW\rangle$.
For $\lambda>2C/\min(1,\mu)$ it absorbs the volume term. Using all
past subrectangles and then removing the weight proves

$$
\boxed{\|F_1-F_2\|_{X^k(Q)}
\le C(K,M,\mu,a,b)\|d_1-d_2\|_{I^k_{\rm flux}}
\le C'\|d_1-d_2\|_{I^k}.}
\tag{4.3}
$$

This has **zero loss in reduced incoming perturbations** at this flux level
and one extra angular derivative on the two bounded backgrounds. No loss
for project data is stated. Constants can be chosen uniformly on (3.1),
$c\ge\mu$ and $a\le a_0,b\le b_0$, using finitely many derivatives of
$A,G$ on $K$ and the fixed reference geometry. They do not depend on a
particular solution beyond those bounds.

This proves an a priori inequality, not a common existence width. Deriving
(3.1), the completed incoming constraints, and a width bounded below from
a neighborhood in (2.2) is still required. Source Theorem 3.9 supplies
reduced-system existence under its own stronger hypotheses; we have not
identified them with $\mathcal D^s$ or closed the restart estimates.

## 5. Linearized equation and exact quadratic remainder

At an existing background $F$, the differential equation is

$$
L_FW+DA^\alpha(F)[W]\partial_\alpha F-DG(F)W=0.
\tag{5.1}
$$

For any solution of (5.1) with incoming data $h$, the same proof gives
$\|W\|_{X^k}\le C\|h\|_{I^k_{\rm flux}}$ and uniqueness within this
class. Existence for every project tangent, propagation of linearized
Einstein/copy constraints and surjectivity onto all framed linearized
metrics are separate, unproved here. An energy inequality alone is not
an existence or surjectivity proof.

For exact solutions $F_t=F[d+th]$, **if they exist**, put
$\Delta=F_t-F$ and $\rho_t=\Delta-tW$. Define

$$
T_G=G(F+\Delta)-G(F)-DG(F)\Delta,\quad
T_A^\alpha=A^\alpha(F+\Delta)-A^\alpha(F)-DA^\alpha(F)[\Delta].
$$

With $\mathscr L_FW=L_FW+DA^\alpha(F)[W]\partial_\alpha F-DG(F)W$,
the exact remainder equation is

$$
\boxed{\mathscr L_F\rho_t=T_G-T_A^\alpha\partial_\alpha F
-\big(A^\alpha(F+\Delta)-A^\alpha(F)\big)\partial_\alpha\Delta.}
\tag{5.2}
$$

It follows by expanding the two exact equations and subtracting
$t\mathscr L_FW=0$. Taylor's integral remainder contains $D^2G,D^2A$;
the last term still contains a derivative of $\Delta$. Its projected
$\eta$ derivative can be replaced as in (3.4), but the angular derivative
requires higher perturbation regularity. Even after a tame product estimate,
a bound by $t^2\|h\|^2$ in the energy source norm needs a proved stronger
perturbation estimate; it does not follow from (4.3) at the same order.
No value of $\ell'$ or $C^1$ conclusion is asserted.

For reduced affine incoming paths the free incoming remainder is zero.
For project paths completed by a nonlinear $C_{\rm SH}$ it would instead
include $C_{\rm SH}(d+th)-C_{\rm SH}(d)-tDC_{\rm SH}h$; that map and its
bound are themselves open. Equation (5.2) is recorded as algebra, not as
completion of the later stages after the stop line below.

## 6. First missing outgoing trace estimate: $R_\perp^k$

The flux estimate does supply the outgoing free slots in
$L^2_\eta H^k$ at $\xi=a$ and $L^2_\xi H^k$ at $\eta=b$.
Restarting source (3.99) instead needs $C^j$ in those generator variables,
the corner compatibility jets, and the complementary constraint solutions.

Already the first step requires bounds for

$$
Z=\partial_\eta W_\phi,\qquad Y=\partial_\xi W_\psi.
\tag{6.1}
$$

These are precisely the derivatives not solved algebraically by (3.4).
Differentiating (3.2) gives, for $V=\partial_\eta W$,

$$
L_1V=\mathcal B_{12}V+(\partial_\eta\mathcal B_{12})W
-(\partial_\eta c_1)P_\psi\partial_\eta W
-(\partial_\eta A_1^A)D_A^0W,
\tag{6.2}
$$

and a mirrored equation for $\partial_\xi W$.
The first source term includes, after angular commutation to $k-1$,

$$
DA^A(F_\tau)[W]\,\partial_\eta D_A^0F_2,
\qquad
DA^\eta(F_\tau)[W]\,\partial_\eta^2(F_2)_\psi,
\tag{6.3}
$$

as well as products of first derivatives. Estimate (3.1) controls neither
$\partial_\eta F_2$ in $H^k$ nor the high mixed derivatives in (6.3).
The source treats such derivatives separately in (3.34) and following;
they cannot be absorbed by calling every commutator angular.

The next single PDE lemma to prove is a uniform bound, from **completed
incoming** $I^{k+\ell}$ data with a stated finite $\ell$, for

$$
\begin{aligned}
\mathcal T_{k-1}(W):={}&
\sup_\xi\|W_\phi(\xi,\cdot)\|_{C^0_\eta H^{k-1}}
+\sup_\eta\|W_\psi(\cdot,\eta)\|_{C^0_\xi H^{k-1}}\\
&+\sup_\xi\|\partial_\eta W_\phi(\xi,\cdot)\|_{L^2_\eta H^{k-1}}
+\sup_\eta\|\partial_\xi W_\psi(\cdot,\eta)\|_{L^2_\xi H^{k-1}},\\
\mathcal T_{k-1}(W)\le{}&C(K,M,\mu)\|d_1-d_2\|_{I^{k+\ell}}.
\end{aligned}
\tag{6.4}
$$

The one-dimensional $H^1\to C^0$ trace inequality would give the first
line after the second is proved. Higher generator derivatives and corner
jets must then be iterated with their actual losses to regain the full
restart class; (6.4) alone is not that full theorem. We have not established
(6.4) from incoming bounds, so $\ell$ is explicitly **unassigned**.

There is also a subsequent geometric reset to estimate: outgoing optical
coordinates are generally not affine parameters. Re-affinizing while
keeping the marked outer cuts produces angle-dependent affine lengths;
07.9.1 now records these instead of setting them to $U-u$ or $V-v$.
Preservation of a fixed project input class cannot be inferred from (4.3).

There is no direct embedding $X^k\hookrightarrow C^0_{\xi,\eta}H^{k-1}$:
even the transport solution $\phi_\epsilon(\xi,\eta,x)
=\epsilon\chi((\eta-\eta_0)/\epsilon)$, $\psi=0$, constant in $x$, has
uniform $W^{1,\infty}$ bound, flux size $O(\epsilon^{3/2})$ and cut supremum
$O(\epsilon)$. This refutes the attempted norm replacement, **not** (6.4),
whose stronger incoming norm also detects this pulse.

**Stop line:** F3 closes only at angular-flux level; F4 closes only for the
a priori constants under (3.1); F5 does not close in the source restart
class. F6 has an a priori estimate and uniqueness but not the required
Einstein existence/completion theorem; F7 has (5.2) but no estimated
remainder; F8 and the entire finite-grid Stage H are not entered.

## 7. Gauge and verification limits

The fixed-metric framing lemma in calculation 07 identifies compatible gauge
representatives smoothly before caustics. It gives no finite-Sobolev bound
for transporting differences between data-dependent gauges. The boost from
the symmetric comparison frame to (1.1) is retained explicitly; it is not
a proper bulk $\operatorname{Diff}_0$ transformation. Diagonal relabellings
and opposite boosts remain separate boundary operations. Gauge comparison
and $C_{\rm SH}$ must be estimated before (4.3) is a framed project-data
estimate.

**Verified:** principal symmetry/time positivity by direct matrix inspection
and V48; exact difference/remainder algebra by derivation and matrix example
V49. The reference-connection commutator is retained, with V51 checking only
its scalar special case. The angular commutator and weighted-energy proof
are analytic, with the explicit hypotheses (3.1).

**Not verified:** every Einstein/copy constraint, $C_{\rm SH}$,
$R_\perp^k$, a uniform data-dependent existence width, a complete restart
loss, linearized tangent surjectivity, $P_{\rm cell}^k$ or $P_{\rm rect}^{s,r}$.
Symbolic checks do not establish any of these statements.
