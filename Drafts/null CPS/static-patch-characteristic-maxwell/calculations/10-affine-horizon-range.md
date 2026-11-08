# Affine-Horizon Range and Bifurcation Regularity

## 1. Direct verdict

The logarithmic/static radiation theorem of `03` is not an affine-horizon
trace theorem.  The exact distinction is

$$
V=-e^{-v},\qquad x:=-V=e^{-v},\qquad
r_A^{\rm aff}(V,x^B):=F_{VA},\qquad
\mathfrak r_A(v,x^B):=F_{vA}=xF_{VA}.
\tag{1.1}
$$

A profile may be smooth for every finite $v$, Schwartz in $v$, of finite
static energy, and in the CPS completion while $r_A^{\rm aff}$ fails even to
be bounded at $V=0$.  Thus none of those properties implies smooth extension
across the bifurcation sphere $B$.

This calculation proves two limited but nontrivial results:

1. for every finite order $k$, affine $C^k$ regularity has the exact weighted
   derivative characterization in Theorem 3.1 and the Mellin corollary in
   section 5;
2. mode by mode, extension of a center-regular master through $B$ is
   equivalent to a **two-ended**
   condition: the incoming trace must be affine regular at $v\to+\infty$,
   the scattered trace $S_jc$ must be affine regular at $u\to-\infty$, and
   the two master corner values must agree.

The second condition is a genuine scattering/Mellin condition; it is not a
restatement of smoothness on the incoming half-horizon.  It gives the proved
modewise theorem `T1-aff(k,fixed-j)`.  The former automatic extension to the
rapid-angular Fréchet intersection was too strong.  Calculation `12` proves
that the unrestricted Goursat operator has $I_0(cj)$ growth, while the exact
$S_j$-compatible boundary multiplier has only fixed-strip polynomial loss.
The missing uniform *interior* estimate leaves
`T1-aff(k,full tower)` `conditional`.  The maximal completed affine Maxwell
range and endpoint phase-space topology remain `conditional` as `T1-aff`.

## 2. Affine and logarithmic radiative variables

On $\mathcal H^-$ use (1.1).  For the two master polarizations,

$$
\mathfrak r_A^{E,jm}
=-\partial_v f_{-,jm}^E\,\mathbb E_A^{jm},
\qquad
\mathfrak r_A^{B,jm}
=+\partial_v f_{-,jm}^B\,\mathbb B_A^{jm}.
\tag{2.1}
$$

Consequently

$$
r_A^{\rm aff,E,jm}=-\partial_Vf_{-,jm}^E\,\mathbb E_A^{jm},
\qquad
r_A^{\rm aff,B,jm}=+\partial_Vf_{-,jm}^B\,\mathbb B_A^{jm},
\tag{2.2}
$$

where $f_-(V)$ means $f_-(-\log(-V))$.  On $\mathcal H^+$ put

$$
\mathfrak p_A(u,x):=F_{uA},\qquad
p_A^{\rm aff}(U,x):=F_{UA}=U^{-1}\mathfrak p_A,
\qquad U=e^u.
\tag{2.3}
$$

The bifurcation limit is $v\to+\infty$ on $\mathcal H^-$ but
$u\to-\infty$ on $\mathcal H^+$.  These two different ends are essential.

## 3. Exact finite-order affine criterion

For a scalar coefficient $\mathfrak r(v)$ define

$$
\mathcal A_n^-\mathfrak r(v)
:=e^{(n+1)v}\prod_{q=1}^{n}(\partial_v+q)\mathfrak r(v),
\qquad n\geq0,
\tag{3.1}
$$

with the empty product equal to one.  For a future-horizon coefficient
$\mathfrak p(u)$ define

$$
\mathcal A_n^+\mathfrak p(u)
:=e^{-(n+1)u}\prod_{q=1}^{n}(\partial_u-q)\mathfrak p(u).
\tag{3.2}
$$

### Theorem 3.1 — finite-order affine radiative criterion

Let $\mathfrak r\in C^k(\mathbb R)$ and set
$r^{\rm aff}(V)=e^v\mathfrak r(v)$ for $V=-e^{-v}<0$.  Then
$r^{\rm aff}$ extends to a one-sided $C^k$ function at $V=0$ if and only if

$$
\lim_{v\to+\infty}\mathcal A_n^-\mathfrak r(v)
\quad\text{exists and is finite for }0\leq n\leq k.
\tag{3.3}
$$

When the limits exist they are exactly

$$
\partial_V^nr^{\rm aff}(0)
=\lim_{v\to+\infty}\mathcal A_n^-\mathfrak r(v).
\tag{3.4}
$$

Likewise, $p^{\rm aff}(U)=e^{-u}\mathfrak p(u)$ extends $C^k$ to $U=0$
if and only if all limits of (3.2) exist for $0\leq n\leq k$ as
$u\to-\infty$.

#### Proof

The coordinate identities are

$$
\partial_V=e^v\partial_v,
\qquad
\partial_U=e^{-u}\partial_u.
\tag{3.5}
$$

Induction gives

$$
\partial_V^n(e^v\mathfrak r)
=e^{(n+1)v}\prod_{q=1}^{n}(\partial_v+q)\mathfrak r,
\tag{3.6}
$$

and the future analogue (3.2).  A $C^k$ function on an open half-interval
extends $C^k$ to its endpoint exactly when its derivatives through order $k$
have finite endpoint limits.  Equations (3.3)--(3.6) therefore give both
necessity and sufficiency. $\square$

For the master trace itself define

$$
\mathcal B_n^-f(v)
:=e^{nv}\prod_{q=0}^{n-1}(\partial_v+q)f(v),
\qquad
\mathcal B_n^+g(u)
:=e^{-nu}\prod_{q=0}^{n-1}(\partial_u-q)g(u).
\tag{3.7}
$$

Then $f(-\log(-V))\in C^{k+1}$ at $V=0$ if and only if the limits of
$\mathcal B_n^-f$ exist for $0\leq n\leq k+1$; the analogous statement with
$\mathcal B_n^+$ holds at $U=0$.  Equation (2.2) then gives affine $C^k$
Maxwell radiation.

## 4. Schwartz is not affine smooth

Consider

$$
f(v)=\exp\!\left[-(1+v^2)^{1/4}\right].
\tag{4.1}
$$

Every derivative is a finite sum of polynomially bounded factors times
$e^{-(1+v^2)^{1/4}}$, so $f\in\mathscr S(\mathbb R)$.  But

$$
f'(v)
=-\frac{v}{2(1+v^2)^{3/4}}f(v),
\tag{4.2}
$$

and hence

$$
e^v|f'(v)|
\sim\frac1{2\sqrt v}\,e^{v-\sqrt v}
\longrightarrow\infty.
\tag{4.3}
$$

For either polarization, (2.1)--(2.2) therefore gives a logarithmic
radiative profile $\mathfrak r_A\in\mathscr S$ whose affine component
$r_A^{\rm aff}$ is unbounded at $B$.  Its Fourier coefficient is also
Schwartz, so the example has finite static energy and finite CPS norm.

The precise separations are:

| property | what it controls | implication for the next row |
|---|---|---|
| open-patch smoothness | finite $v$ or $V<0$ | none |
| $v$-Schwartz | faster than every power of $|v|$ | does not imply $e^{-v}$ decay |
| finite static energy | $\partial_vf\in L^2(dv)$ | no point trace |
| CPS infrared condition | $\int\omega|c|^2<\infty$ | no affine trace |
| point trace | a finite limit of $f$ | no derivative trace |
| affine $C^k$ | all limits (3.3) through order $k$ | genuine $V$-regularity |

Thus the zero-endpoint logarithmic spectral chain and the affine-smooth chain
are transverse regularity choices, not nested versions of one theorem.

## 5. Mellin/Hardy form of the condition

Let $\chi_B(v)$ vanish below a finite $v_0$ and equal one for large $v$.
For one radiative coefficient define the one-sided Fourier--Laplace transform

$$
\mathcal H_B(z)
:=\int_{v_0}^{\infty}e^{izv}\chi_B(v)\mathfrak r(v)\,dv.
\tag{5.1}
$$

If $r^{\rm aff}\in C^{k,\alpha}$ at $V=0$, $0<\alpha<1$, then

$$
\mathfrak r(v)
=\sum_{n=0}^{k}\frac{(-1)^n}{n!}
\partial_V^nr^{\rm aff}(0)e^{-(n+1)v}
+O(e^{-(k+1+\alpha)v}).
\tag{5.2}
$$

After subtraction of the displayed Taylor terms, (5.1) is analytic in the
half-plane

$$
\operatorname{Im}z>-(k+1+\alpha).
\tag{5.3}
$$

Before subtraction it is meromorphic there, with the only possible poles

$$
z=-i(n+1),\qquad0\leq n\leq k,
\tag{5.4}
$$

and residues fixed by the affine Taylor coefficients in (5.2).  On every
strictly smaller half-plane the subtracted remainder has the corresponding
$H^2$ boundary control.  This forward implication is `Mellin-nec`, status
`proved`.

Equivalently, with $x=e^{-v}$,

$$
\int_0^{e^{-v_0}}x^{s-1}\mathfrak r(-\log x)\,dx
\tag{5.5}
$$

is the Mellin transform.  The affine Taylor monomial $x^{n+1}$ gives the pole
$1/(s+n+1)$.  Real-axis Sobolev weights in $c(\omega)$ cannot by themselves
characterize affine regularity: the missing information is one-sided
analytic continuation and its pole data.

### 5.1 Precise Hardy--Sobolev inverse theorem

Let

$$
R(v):=\chi_B(v)\left[
\mathfrak r(v)-\sum_{n=0}^k a_ne^{-(n+1)v}
\right],
\qquad
H_R(z):=\int_{\mathbb R}e^{izv}R(v)\,dv.
\tag{5.6}
$$

Translate $v$ once so that the support of $R$ begins at $v=0$; this only
multiplies its transform by an entire exponential factor.  Fix $\beta>0$ and
put

$$
F_\beta(w):=H_R(w-i\beta),\qquad \operatorname{Im}w>0.
\tag{5.7}
$$

Assume precisely that $F_\beta\in H^2(\mathbb C_+)$, i.e.

$$
\sup_{y>0}\int_{\mathbb R}|F_\beta(\xi+iy)|^2d\xi<\infty,
\tag{5.8}
$$

and that its non-tangential boundary value satisfies

$$
\int_{\mathbb R}(1+\xi^2)^m
|H_R(\xi-i\beta)|^2d\xi<\infty
\tag{5.9}
$$

for some $m\geq0$.

The $H^2$ Paley--Wiener theorem gives a unique
$h\in L^2(0,\infty)$ whose Fourier--Laplace transform is $F_\beta$.  Thus,
for $\operatorname{Im}w>0$,

$$
F_\beta(w)=\int_0^\infty e^{iwv}h(v)\,dv.
\tag{5.10}
$$

Taking $w=\xi+i\beta$ and using
$H_R(\xi)=F_\beta(\xi+i\beta)$ gives

$$
H_R(\xi)=\int_0^\infty
e^{i\xi v}e^{-\beta v}h(v)\,dv.
\tag{5.11}
$$

Since $H_R(\xi)$ is also the real-line Fourier transform of $R$, injectivity
of the $L^2$ Fourier transform gives

$$
\boxed{
R(v)=e^{-\beta v}h(v),
\qquad
h(v)=\frac1{2\pi}\int_{\mathbb R}
e^{-i\xi v}H_R(\xi-i\beta)\,d\xi,}
\tag{5.12}
$$

where the last integral is understood in $L^2$ when it is not absolutely
convergent.  The weighted boundary norm (5.9) is exactly the $H^m$ norm of
$h$ by Plancherel.  This is the rigorous $L^2$ horizontal-contour shift: the
Hardy theorem supplies both the non-tangential boundary limit and the
one-sided support, so no pointwise Jordan-arc estimate is assumed.

Conversely, if $h=e^{\beta v}R\in H^m(\mathbb R)$ is supported in
$[0,\infty)$, its Fourier--Laplace transform is in $H^2(\mathbb C_+)$ and
recovers (5.8)--(5.12).  If $m>1/2$, Sobolev embedding yields
$h\in C^0_0$, hence

$$
R(v)=o(e^{-\beta v}).
\tag{5.13}
$$

This equivalence is the proved statement `Mellin-Sobolev-suff`.  It gives a
weighted logarithmic Sobolev remainder, not affine Hölder regularity.

One boundary norm (5.9) does **not** imply
$r^{\rm aff}\in C^{k,\alpha}$ in the affine coordinate.  Affine derivatives
are $e^{qv}$ times shifted $v$-derivatives, and Hölder control at
$x=e^{-v}=0$ requires a compatible family of shifted
Hardy--Sobolev/Besov bounds for those derivatives.  No maximal such family is
proved here.  Therefore `Mellin-Ckalph-suff` is `conditional`; the former
appeal to unspecified ``standard Hardy boundary bounds'' is withdrawn.

## 6. The two-ended scattering range

Let $f_-$ be an incoming master profile and define the outgoing profile by
the exact center scattering multiplier

$$
\widehat f_+(\omega)=S_j(\omega)\widehat f_-(\omega),
\qquad
S_j(\omega)=-\prod_{n=1}^{j}\frac{n-i\omega}{n+i\omega},
\tag{6.1}
$$

first on tempered profiles for which the multiplication is defined.  The
incoming bifurcation end is $v\to+\infty$; the outgoing bifurcation end is
$u\to-\infty$.  Define $\mathfrak R_{j}^{k+1}$ by the explicit conditions

$$
\begin{aligned}
&\lim_{v\to+\infty}\mathcal B_n^-f_-(v)
\text{ exists},\\
&\lim_{u\to-\infty}\mathcal B_n^+f_+(u)
\text{ exists},
\qquad0\leq n\leq k+1,\\
&\lim_{v\to+\infty}f_-(v)
=\lim_{u\to-\infty}f_+(u).
\end{aligned}
\tag{6.2}
$$

These are independent of any target norm manufactured from the restriction
map.  In particular, the second line tests $S_jc$ at the opposite logarithmic
end and is not implied by affine regularity of the first line.

### Theorem 6.1 — `T1-aff(k,fixed-j)` for the master range

For fixed $j\geq1$, a center-regular master solution reconstructed by the
half-line spectral transform has a $C^{k+1}$ extension to the closure of a
static-quadrant Kruskal collar at $B$ if and only if its incoming coefficient
belongs to $\mathfrak R_j^{k+1}$.  The solution on that closed static
quadrant is unique, and the resulting Maxwell tensor is $C^k$ at $B$.

After the two traces are extended smoothly beyond their half-axes, a local
$C^{k+1}$ solution exists in adjacent Kruskal quadrants.  That exterior
extension is not unique unless the additional characteristic data on those
quadrants are specified.  Thus the theorem proves uniqueness in the closed
static quadrant and existence, not uniqueness, of a two-sided extension.
The statement also holds for finite angular sums.  It does not assert the
full rapid-angular tower.

#### Proof

Using $u=\log U$, $v=-\log(-V)$ and
$\sinh^2\rho=(1+UV)^2/(-4UV)$, the master equation becomes, away from the
coordinate axes and then by regular extension,

$$
\boxed{
\partial_U\partial_V\Psi
+\frac{\lambda_j}{(1+UV)^2}\Psi=0.}
\tag{6.3}
$$

Its coefficient is smooth near $U=V=0$.  If $\Psi$ is $C^{k+1}$ through
$B$, its restrictions

$$
A(V)=\Psi(0,V),\qquad B(U)=\Psi(U,0)
\tag{6.4}
$$

are $C^{k+1}$ and obey $A(0)=B(0)$.  Equations (3.7) and (6.1) identify these
conditions with (6.2), proving necessity.

Conversely, (6.2) gives $C^{k+1}$ functions $A,B$ with a common corner
value.  For fixed $j$, on a sufficiently small characteristic rectangle,
(6.3) is
equivalent to the Volterra equation

$$
\Psi(U,V)=A(V)+B(U)-A(0)
-\lambda_j\int_0^U\!dU'\int_0^V\!dV'
\frac{\Psi(U',V')}{(1+U'V')^2}.
\tag{6.5}
$$

Picard iteration and differentiation through order $k+1$ give a unique
$C^{k+1}$ solution on the closed static quadrant.  There it has the same two
characteristic traces as the center-regular spectral solution, so Goursat
uniqueness identifies them.  Applying the first-order Maxwell dictionary of
`02` loses one spacetime derivative and gives a $C^k$ Maxwell tensor.
Smoothly extending the two half-axis traces and applying the same fixed-$j$
Goursat argument quadrant by quadrant proves exterior existence; changing
the extra traces changes that exterior solution without changing the closed
static-quadrant solution. $\square$

Theorem 6.1 is a fixed-mode local-through-$B$ range theorem tied nonlocally
to the exact center scattering map.  Calculation `12` rewrites its outgoing
condition entirely in terms of incoming pole cancellations and exponential
moments.  It also proves that the unrestricted full-tower Goursat norm grows
like $I_0(c\sqrt{\lambda_j})$, while the $S_j$-compatible boundary multiplier
has only fixed-strip polynomial loss.  A uniform compatible *interior*
estimate is still missing, so `T1-aff(k,full tower)` is `conditional`.

## 7. Consequence for the trace/memory core

The kinematic space of `08`,

$$
f=a+mh+x,\qquad x\in\mathscr S(\mathbb R),
\tag{7.1}
$$

has well-defined endpoint constants and memory, but an arbitrary Schwartz
remainder need not satisfy (3.7), as (4.1) shows.  Its bulk-compatible
finite-order subspace must at least satisfy

$$
f\in\mathfrak R_j^{k+1},
\tag{7.2}
$$

equivalently: $f$ has the incoming hierarchy and $S_jf$ has the future
hierarchy and matching condition in (6.2).

For finite harmonics, Theorem 6.1 makes (7.2) sufficient as well as
necessary.  For the full angular tower, even the finite-order interior
estimate remains conditional, and a maximal completed topology plus
continuity of all corner pairings are further open.  This is the precise
boundary between the proved kinematic theorem `T4-kin` and the conditional
bulk-range theorem `T4-bulk`.

## 8. Fixed angular Sobolev bookkeeping

Let the master tower carry the standard weight

$$
\|f\|_{H^s_{\rm ang}}^2
=\sum_{j,m}(1+\lambda_j)^s|f_{jm}|^2.
\tag{8.1}
$$

Because $\mathbb E_A^{jm},\mathbb B_A^{jm}$ are normalized vector harmonics,
the logarithmic radiative one-form coefficients $\partial_vf_{jm}$ have the
same angular order $H^s$.  The normal electric/magnetic scalars and the
angular two-form contain $\sqrt{\lambda_j}f_{jm}$, so

$$
\begin{aligned}
\|\mathcal E\|_{H^{s-1}}^2
&=L^{-4}\sum_{j,m}(1+\lambda_j)^{s-1}
\lambda_j|f^E_{jm}|^2
\leq L^{-4}\|f^E\|_{H^s}^2,\\
\|\mathcal B\|_{H^{s-1}}^2
&\leq L^{-4}\|f^B\|_{H^s}^2.
\end{aligned}
\tag{8.2}
$$

Since $\lambda_j\geq2$, the reverse estimate holds up to a fixed constant.
Thus at fixed $s$ the correct Maxwell target has the schematic order

$$
\boxed{
f\in H^s_{\rm ang}
\longleftrightarrow
(\mathfrak r_A\in H^s_{\rm ang}(T^*S^2),
\ \mathcal E,\mathcal B\in H^{s-1}_{\rm ang}).}
\tag{8.3}
$$

If every displayed field-strength component is required in $H^s$, the master
domain must be raised to $H^{s+1}$.  Polynomial $j$ factors can be absorbed
only after taking the Fréchet intersection over all $s$; they cannot be used
to claim a fixed-$s$ same-order isomorphism.

## 9. Status and continuation gate

| statement | status | reason |
|---|---|---|
| weighted derivative criterion (3.3) | `proved` | exact coordinate differentiation |
| `Mellin-nec` | `proved` | affine Taylor expansion gives the meromorphic continuation and residues |
| `Mellin-Sobolev-suff` | `proved` | shifted $H^2$ Paley--Wiener inversion plus Plancherel gives (5.12) |
| `Mellin-Ckalph-suff` | `conditional` | one Hardy boundary norm does not control affine Hölder derivatives |
| Schwartz implies affine smooth | `false` | explicit example (4.1)--(4.3) |
| `T1-aff(k,fixed-j)` | `proved` | Theorem 6.1 and `12`, Theorem 4.1 |
| `T1-aff(k,unrestricted-full)` on rapid-angular Goursat data | `false` | `12`, equations (6.3)--(6.4) |
| `T1-aff(k,full tower)` on the $S_j$-compatible candidate range | `conditional` | boundary loss is polynomial, but the uniform compatible interior estimate is missing |
| maximal fixed-Sobolev affine Maxwell range `T1-aff` | `conditional` | no completed two-ended Hardy topology or uniform angular Goursat estimate |
| arbitrary trace-core data are smooth-bulk realizable | `false` | section 7 and (4.1) |
| maximal `T4-bulk` range inside the endpoint trace completion | `conditional` | only the finite-order smooth core is characterized |

The exact incoming-only pole/moment condition is more than a relabeling of
`T1-log`, but `12` shows that its large-$j$ content reduces to fixed-order
polynomial losses after $S_j$ compatibility.  It does not produce the
analytic/Gevrey angular theorem that could have supplied a new paper core.
The static-patch calculation lane is therefore frozen after this audit; the
recommended next problem is the action-first composition of Maxwell data on
two intersecting null hypersurfaces, not further static-patch mode work and
not a Schwarzschild--de Sitter expansion.

## 10. Regression boundary

`../scripts/affine_horizon_checks.py` checks finite instances of:

- the identities (3.6)--(3.7);
- the growth of the Schwartz counterexample (4.1);
- the Mellin poles of a finite affine Taylor polynomial;
- the fixed-$s$ angular derivative loss (8.2);
- the canonical switch-function shear used in `08`.

`../scripts/incoming_affine_kernel_checks.py` additionally checks the exact
partial fractions, kernel coefficients, moments, pole resonances, highest
residue asymptotic, and finite large-$j$ stress tests of `12`.

These checks are finite algebra/numerics.  They do not prove Theorem 6.1,
the Hardy--Sobolev inverse theorem, a uniform compatible full-tower estimate,
a maximal range theorem, or a completed symplectic topology.
