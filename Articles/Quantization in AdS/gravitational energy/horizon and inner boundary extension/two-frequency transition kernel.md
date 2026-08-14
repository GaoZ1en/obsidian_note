# Two-Frequency Proper-Transition Kernel

## 1. Purpose

This note records the direct route to the **projected ordinary** H51
proper-transition kernel. It uses the finite-action CPS and Iyer--Wald
conventions inherited from `../article/`. No endpoint-jet ansatz is assumed.
The direct calculation below also falsifies the old claim that every
unprojected mode-pair integral exists before the outer anchor regulator is
included.

For closed unit-boundary Brown--Henneaux representatives
$z_m^{\sigma}$, with chirality sign $\sigma=\pm1$, define

$$
\begin{aligned}
\mathscr B_{mn}^{\sigma\tau}(L,\phi)
=\frac12\big(&
-k_{[\xi,v_m^\sigma]}[
\mathcal L_{(1-p_L)z_n^\tau}G]
-k_{[\xi,v_n^\tau]}[
\mathcal L_{(1-p_L)z_m^\sigma}G]\\
&+k_{v_m^\sigma}[\mathcal L_\xi\mathcal L_{z_n^\tau}G]
+k_{v_n^\tau}[\mathcal L_\xi\mathcal L_{z_m^\sigma}G]
\big)\big|_{\gamma_A},
\end{aligned}
\tag{1.1}
$$

where

$$
v_m^\sigma=-p_Lz_m^\sigma,
\qquad
p_L(r)=\frac{L^2}{L^2+r^2}.
\tag{1.2}
$$

The target is a direct decomposition

$$
\mathscr B_{mn}^{\sigma\tau}
=\mathscr B_{mn,\mathrm{local}}^{\sigma\tau}
+\mathscr K_{mn}^{\sigma\tau},
\tag{1.3}
$$

followed by an analysis of $\mathscr K$ in the two endpoint layers. This is
stronger than fitting its integrated limit to a finite jet ansatz.

## 2. Exact finite-profile reduction

The RT curve satisfies

$$
r^2=\frac1{\cos2\phi},
\qquad
p_L\big|_{\gamma_A}
=\frac{L^2\cos2\phi}{1+L^2\cos2\phi}.
\tag{2.1}
$$

The direct script first keeps an arbitrary radial function $p(r)$. Because
the Einstein Iyer--Wald potential is first order in the vector and the metric
variation, the contracted transition density depends on the profile only
through

$$
p,qquad \partial_rp,qquad \partial_r^2p.
\tag{2.2}
$$

Only after the tensor contraction are the exact values for (1.2) substituted.
This layered procedure avoids differentiating a large rational $L$-dependent
expression throughout the complete CPS calculation.

For one frequency symbolic and the other fixed to $n=2$, Mathematica
completed both exact finite-$L$ kernels:

$$
\operatorname{LeafCount}
\mathscr B_{m2}^{++}=5652,
\qquad
\operatorname{LeafCount}
\mathscr B_{m2}^{+-}=3102.
\tag{2.3}
$$

Thus the complete regulated integrand exists as a finite closed symbolic
expression before any endpoint ansatz or integration. The same calculation
with both $m,n$ symbolic did not complete in a useful time under a monolithic
`FullSimplify`; this is a computational obstruction, not evidence against a
two-frequency formula.

The reproducible kernel-only command is

```sh
TRANSITION_FIRST_FREQUENCY=3 TRANSITION_SECOND_FREQUENCY=2 \
  TRANSITION_KERNEL_ONLY=1 \
  wolframscript -file ads_rindler_transition_two_frequency_kernel_check.wl
```

It exits normally with $4/4$ tests: both kernels complete, no unresolved
$p(r)$ or profile derivative remains after the exact substitution, and their
$L\to\infty$ value at $\phi=0$ agrees with an independently assembled local
CPS density.

There is also a finite-profile cross-check which does not reuse the layered
profile reduction. For $(m,n,L,\phi)=(3,2,2,0)$ it first inserts the actual
real cosine gauge vectors and $p_L=L^2/(L^2+r^2)$ into the complete CPS
potential and only then contracts with the RT normals. The result is

$$
\mathscr B_{32}^{\cos\cos}(2,0)
=-\frac{2841}{2500\sqrt2},
$$

exactly equal to the real combination of the layered same- and
mixed-chirality kernels. The residual is zero and the dedicated regression
passes $4/4$ tests. Thus the finite-$L$ layered kernel is not the source of
the endpoint singularity discussed below.

## 3. Endpoint scaling and the matched-asymptotic warning

The next step is to save the exact one-symbolic-frequency kernels and set

$$
\varepsilon=L^{-2},
\qquad
\phi=\frac\pi4-\varepsilon y
\tag{3.1}
$$

at the right endpoint, with the reflected substitution at the left endpoint.
The first direct Laurent experiment shows that it is **not** legitimate to
identify the coefficient of $\varepsilon^{-1}$ before controlling all
sub-layers. For $(m,n)=(3,2)$ the complex same- and mixed-chirality kernels
contain nonzero pointwise terms through $\varepsilon^{-3}$ at fixed $y$.
These terms are real finite-$L$ CPS data by the independent check above, but
they are not separately integrable at both ends of the $y$ chart. They must
therefore be treated as a nonuniform matched expansion, not as ordinary
endpoint densities.

For the special unprojected pair $(\cos2\phi,\cos3\phi)$ the real density is
an ordinary integrable function at every finite $L$. Its exact endpoint
expansion in $x=1-d$ starts as

$$
B_L(1-d)
=-\frac{L^2(L^2-6)}{2\sqrt2}d+O(d^2),
\tag{3.2}
$$

and its scaled endpoint profiles are

$$
\lim_{L\to\infty}\frac1{L^2}
B_L\!\left(\pm1\mp\frac y{L^2}\right)
=-\frac{y(y+2)}{4\sqrt2(1+y)^4}.
\tag{3.3}
$$

Each profile integrates to $-1/(6\sqrt2)$. Mathematica also integrates the
complete finite-$L$ density before taking the limit and finds

$$
\begin{aligned}
I_L={}&-\frac{11\sqrt2}{21}
+\frac{1}{3\sqrt2L^2}\\
&+\frac{577-210\log2-420\log L}
{210\sqrt2L^4}
+O(L^{-5}).
\end{aligned}
\tag{3.4}
$$

Since the independently integrated local value is $-5/(7\sqrt2)$, the
transition anomaly is

$$
\lim_{L\to\infty}(I_L-I_{\rm local})
=-\frac1{3\sqrt2}.
\tag{3.5}
$$

The logarithm first occurs in the $L^{-4}$ remainder. This supplies an exact
selected-pair realization of the $L^{-2}$ leading error and logarithmic
subleading structure used in the conservative regulator estimate.

There is direct weak-support evidence as well. In the compact coordinate
$x=\tan\phi$, let $K_L$ be the finite-profile density minus the local density.
For the same cosine pair the exact moment limits through degree six are

$$
\lim_{L\to\infty}\int_{-1}^{1}x^kK_L(x)\,\mathrm dx
=-\frac1{3\sqrt2}(1,0,1,0,1,0,1)_k.
\tag{3.6}
$$

These are precisely the moments of equal delta weights at $x=\pm1$.
For the mixed-parity pair consisting of the unit cosine-$2$ and the declared
unit sine-$3$ representative, the corresponding sequence is

$$
\left(0,-\frac1{3\sqrt2},0,-\frac1{3\sqrt2},
0,-\frac1{3\sqrt2},0\right),
\tag{3.7}
$$

which detects opposite endpoint weights even though the total integral is
zero. The direct scaled profiles for this mixed-parity pair are the same
function as (3.3) with opposite signs at the two endpoints.

## 4. Unprojected counterexample and projected repair

The preceding ordinary delta sequence is not universal on the unprojected
space. For the independent real pair $(\cos3\phi,\cos4\phi)$, the exact
finite-$L$ endpoint Taylor series begins with

$$
\boxed{
B_{34}^{\cos\cos}(L,\pm(a-d))
=\frac{51L^4}{16\sqrt2}\frac1d+O(d^0).
}
\tag{4.1}
$$

Thus the inner RT integral without an outer anchor cutoff is logarithmically
divergent at every finite $L$. The symbolic `Integrate` values previously
used in the rank-21 reconstruction are analytic finite parts for such pairs,
not ordinary finite-action integrals. At the outer RT cutoff
$r=R$, one has $d_R\sim(2R^2)^{-1}$, so (4.1) also shows explicitly that the
unprojected inner contribution contains regulator-dependent logarithmic work
which must be combined with the outer strip, moving joint, and any
parametrized boundary-frame term. It cannot be assigned to an isolated inner
endpoint functional.

The fixed-anchor projection removes this obstruction in the two independent
direct tests performed so far. For the projected sine-$3$/sine-$4$ pair,

$$
B_L^{P_A}(a-d)
=-\frac{3L^4}{4\sqrt2}d^2+O(d^3),
\tag{4.2}
$$

and for the projected cosine-$2$/cosine-$3$ pair,

$$
B_L^{P_A}(a-d)
=\frac{3L^4}{8\sqrt2}d^2+O(d^3).
\tag{4.3}
$$

Both have zero pole, zero endpoint value, and zero $L^2$ scaled delta
profile. Their ordinary integrals converge to their local projected values.
The second pair has the exact leading integrated remainder

$$
I_L^{P_A}
=-\frac{2\sqrt2}{21L^4}+O(L^{-5}).
\tag{4.4}
$$

Equations (4.1)--(4.4) change the proof target. H51 must be derived directly
on the projected fixed-anchor domain, where ordinary finite-action
integrability is available. The unprojected finite-part functional may remain
useful algebraically, but it is not a regulated gravitational charge until
the complete outer-anchor system is included.

The fixed-pair evidence can now be replaced by a direct symbolic-frequency
calculation.  The resulting theorem is stated next; no interpolation in
$m,n$ and no endpoint-jet functional is used.

## 5. Exact projected point-jet factorization

On either half of the RT curve introduce

$$
q=\cos2\phi\in[0,1],
\qquad
s=r\sqrt q,
\qquad
\gamma_A:\ s=1.
\tag{5.1}
$$

The interval wedge is $s\geq1$, so its inner outward conormal points toward
decreasing $s$.  With $q$ oriented from an anchor toward the centre, the
contracted Iyer--Wald density is

$$
B_q=\frac{k^{ts}}{2q\sqrt{1-q^2}}.
\tag{5.2}
$$

This orientation was checked by transforming the complete projected
cosine-$2$/cosine-$3$ density back to $x=\tan\phi$.  The residual vanishes
identically, and its endpoint series is

$$
B_q
=\frac{3L^4}{8\sqrt2}q^2
-\frac{L^2(24+L^2+3L^4)}{2\sqrt2}q^3
+O(q^4),
\tag{5.3}
$$

which is the coordinate transform of (4.3).

Let $Z_m^c=P_A\cos m\phi$ and $Z_m^s=P_A\sin m\phi$ denote the real
projected bulk representatives, let $A,B\in\{c,s\}$, and put
$\lambda=L^2$.  A finite multi-index jet algebra takes every ambient
derivative needed by the non-Killing potential before imposing $t=0,s=1$.
For two symbolic integer frequencies it gives the exact rational structure

$$
B_{\lambda,mn}^{AB}(q)
=\frac{\displaystyle\sum_{a=1}^4
\lambda^aN_{a,mn}^{AB}(q)}
{64\sqrt{1-q}\,(1+q)^{\rho_{AB}}
(1+q)^{m/2}(1+q)^{n/2}
(q-1)(1+\lambda q)^4},
\tag{5.4}
$$

where

$$
\rho_{cc}=\frac{15}{2},
\qquad
\rho_{cs}=\frac{13}{2},
\qquad
\rho_{ss}=\frac{11}{2}.
\tag{5.5}
$$

The numerator has no $\lambda^0$ term and obeys

$$
N_{a,mn}^{AB}(q)
=q^{\nu_a}(1-q)\widehat N_{a,mn}^{AB}(q),
\qquad
(\nu_1,\nu_2,\nu_3,\nu_4)=(3,2,4,6).
\tag{5.6}
$$

Every frequency-dependent power of $1+q$ in $\widehat N_a$ has exponent
between zero and the corresponding exponent in the common denominator.
After these bounded ratios and the endpoint phases are stripped, every
coefficient has total frequency degree at most six.  Consequently there is
one constant independent of $m,n,\lambda$ such that

$$
\left|
\frac{\widehat N_{a,mn}^{AB}(q)}
{(1+q)^{\rho_{AB}+(m+n)/2}}
\right|
\leq C(1+m+n)^6,
\qquad 0\leq q\leq1.
\tag{5.7}
$$

The factor $1-q$ in (5.6) is important: it cancels one power coming from the
degenerate $q$ coordinate at the RT centre, leaving only the integrable
weight $(1-q)^{-1/2}$.  Thus (5.4) is an ordinary density on the complete
half-geodesic, not just an endpoint expansion.

For example, at the right anchor the exact $q^2$ coefficients are

$$
\begin{aligned}
[q^2]B_{\lambda,mn}^{cc}
={}&\frac{3\lambda^2}{16}\Big[
m(n^2-16)C_nS_m
+n(m^2-16)C_mS_n
-2mnS_mS_n\Big],\\
[q^2]B_{\lambda,mn}^{cs}
={}&\frac{3\lambda^2}{16}\Big[
n(m^2-16)C_mC_n
-mS_m\big(2nC_n+(n^2-4)S_n\big)\Big],\\
[q^2]B_{\lambda,mn}^{ss}
={}&-\frac{3\lambda^2}{16}\Big[
n(m^2-4)C_nS_m
+mC_m\big(2nC_n+(n^2-4)S_n\big)\Big],
\end{aligned}
\tag{5.8}
$$

where $C_m=\cos(m\pi/4)$ and $S_m=\sin(m\pi/4)$.  The cosine--cosine and
sine--sine coefficients agree at the left anchor, while the mixed one changes
sign.  In particular, (5.8) proves the $q^2$ divisibility for every integer
$m,n\geq2$, rather than for a fitted list of modes.

## 6. Uniform remainder and zero projected endpoint distribution

The $a=4$ term in (5.4) has the local limit

$$
B_{mn}^{AB,{\rm local}}(q)
=\lim_{\lambda\to\infty}B_{\lambda,mn}^{AB}(q).
\tag{6.1}
$$

Equations (5.4)--(5.7) give the pointwise majorant

$$
\begin{aligned}
|B_{\lambda,mn}^{AB}-B_{mn}^{AB,{\rm local}}|
\leq{}&C(1+m+n)^6(1-q)^{-1/2}
\frac{\lambda q^3+\lambda^2q^2+\lambda^3q^4}
{(1+\lambda q)^4}\\
&+C(1+m+n)^6(1-q)^{-1/2}q^2
\left[1-\left(\frac{\lambda q}{1+\lambda q}\right)^4\right].
\end{aligned}
\tag{6.2}
$$

To integrate it, split $[0,1]$ at $q=1/2$.  On the endpoint half,
$(1-q)^{-1/2}\leq\sqrt2$ and $z=\lambda q$ reduces the first three terms to

$$
O(\lambda^{-3}\log\lambda),
\qquad
\frac1\lambda\int_0^\infty\frac{z^2}{(1+z)^4}\,\mathrm dz
=\frac1{3\lambda},
\qquad
O(\lambda^{-1}).
\tag{6.3}
$$

For the last term use the exact inequality

$$
0\leq1-\left(\frac z{1+z}\right)^4
\leq\frac4{1+z}.
\tag{6.4}
$$

On the centre half, $q\geq1/2$ and
$\int_{1/2}^1(1-q)^{-1/2}\mathrm dq=\sqrt2$, so every term is directly
$O(\lambda^{-1})$.  Therefore

$$
\boxed{
\left\|B_{\lambda,mn}^{AB}
-B_{mn}^{AB,{\rm local}}\right\|_{L^1(0,1)}
\leq\frac{C(1+m+n)^6}{\lambda}
=\frac{C(1+m+n)^6}{L^2},
\qquad L\geq1.
}
\tag{6.5}
$$

The same estimate holds on the other half-geodesic and for the reversed
mixed ordering by bilinear symmetry.  It proves all three statements which
were previously assumptions on the projected sector:

1. the ordinary projected density is integrable at every finite $L$;
2. there is no nonzero endpoint-supported distribution;
3. there is no bulk remainder.

In other words, the correct projected transition distribution is the zero
distribution:

$$
B_{\lambda}^{P_A}-B_{\rm local}^{P_A}
\longrightarrow0
\quad\hbox{strongly in }L^1(\gamma_A).
\tag{6.6}
$$

The nonzero functional (3.4) belongs to analytic finite parts of the
unprojected problem.  Its algebraic vanishing after polarization by $P_A$ is
consistent with (6.6), but is not used to prove it.

For the complete metric tangent quotient one instead uses the
global-Killing section $P_{\rm PSL}$. It leaves $h$ unchanged while fixing
both endpoint values. The same point-jet engine, run at both endpoints and
for all three real sector pairings, passes $30/30$: the endpoint denominator
is nonzero and the numerator and its first derivative vanish.  Its independent
source-structure mode passes $42/42$ tests: for all six endpoint/sector runs
the required endpoint orders are $(\infty,3,2,4,6)$, every positive-$L$
coefficient has total frequency degree at most six, and the residual
$(1+q)^{-9/2}$, $(1+q)^{-7/2}$, and $(1+q)^{-5/2}$ factors are bounded
throughout $0\leq q\leq1$.
Thus (6.5) also applies to that representative. The old unprojected
pole is a generator-representative artifact, not an additional physical
transition term.

On the adapted block $V_M=Q_M\mathcal H_A^s$, (6.5) and
$\sum_m|b_m|\leq C_s\|f\|_{H^s}$ imply

$$
\boxed{
\|B_{M,L}-B_M^{\rm local}\|_{H^s\times H^s}
\leq C_s\frac{M^6}{L^2}.
}
\tag{6.7}
$$

Thus $M^6/L(M)^2\to0$ is a sufficient transition-sector schedule, while
$M/L(M)^2\to0$ from the high-frequency profile remains only the weaker
kinematic necessity.  The declared $L(M)=M^{10}$ gives the explicit error
$M^{-14}$.  Any schedule satisfying the left side of (6.7) has the same
transition limit. The raw far-wall and far-joint endpoint kernels are now
uniformly bounded separately, and the finite-cylinder outer Brown--York
source curvature vanishes exactly. H59b proves the complete finite-wall
compensated estimate on $\tanh(\epsilon/2)=1/(2L)$, H59a and H59c prove the
compensated outer corner and joint bounds, and H60 reduces the complete
pulled-back collar to the fixed section. Consequently the displayed explicit
schedule has vanishing total relative-action flux and the projected limit is
schedule independent within this proved regulator class.

## Verification status

**Verified:** the direct definition (1.1); dependence on the radial profile
through the finite derivative list (2.2); exact completion of the full
$L,\phi,m$-dependent same- and mixed-chirality kernels for $n=2$; the
finite-profile direct/layered equality at $(3,2,2,0)$; the exact integrated
formula and large-$L$ series (3.4); the exact endpoint profiles (3.3); the two
selected moment sequences (3.6)--(3.7); the unprojected pole (4.1); the two
projected endpoint expansions (4.2)--(4.3); the projected remainder (4.4);
the two-symbolic-frequency projected factorization (5.4)--(5.7) in all real
sector pairings; the exact general $q^2$ coefficients (5.8); the uniform
$L^1$ estimate (6.5); the zero projected endpoint distribution and bulk
remainder (6.6); the block estimate (6.7); and the project/2501 convention
benchmarks loaded by the scripts. The
compactified mode/profile regression passes $5/5$, the strengthened
radial-homotopy regression passes $10/10$, and each direct projected
bilinear regression passes $5/5$.  The point-jet coordinate calibration
passes $2/2$, each symbolic endpoint run passes $5/5$, each exact structure
run passes $7/7$, and the scalar majorant/schedule regression passes $8/8$.

**Assumptions:** vacuum Einstein AdS$_3$; the declared closed unit-boundary
Brown--Henneaux representatives; fixed $m,n$ before the endpoint scaling;
$L>0$; and the $t=0$, $a=\pi/4$ interval geometry.

**Not verified at the H51 transition stage:** optimality of frequency degree
six or of the $L^{-2}$ rate, the complete finite-wall/outer operator limit,
the representative-independent full metric quotient, or the sharp Sobolev
threshold of the final form.  H59a--H60 subsequently close the complete
linked-regulator and slice-covariance limit.  H61 shows that the apparent
finite-$R$ unprojected pole is removed by the metric-equivalent
$P_{\rm PSL}$ representative rather than by an asymptotic-frame
cancellation, and H62 gives the optimal ordinary $H^2$ threshold of the
combined form.  The rank-21 values remain finite-part data outside the raw
ordinary-integrable pairs and are not used in any of these theorems.
