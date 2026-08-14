# AdS-Rindler Finite Mode Space and the Fixed-Anchor Constraint

## Result and claim tier

The standard Brown--Henneaux/Virasoro frequency basis is not adapted to the
fixed-anchor condition for the interval $A=[-\pi/4,\pi/4]$: every individual
odd-frequency real quadrature moves at least one anchor by an order-one
amount.  This is a **per-frequency obstruction**, not a no-go theorem for the
full mode sum.  Correlated frequencies can cancel at the two endpoints.

For any Sobolev coefficient topology $H^s(S^1)$ with $s>1/2$, the two endpoint
evaluations are bounded linear maps.  The $t=0$ fixed-anchor space is therefore
the closed codimension-two subspace

$$
\mathcal H^s_A
=\ker E_+\cap\ker E_-,
\qquad
E_\pm f=f(\pm\pi/4).
\tag{0.1}
$$

An explicit bounded projection onto this space is constructed below.  This
repairs the false inference from the individual-frequency determinant to the
absence of a full fixed-anchor phase space.

At the H42 benchmark stage, assigning endpoint data to an auxiliary
moving-anchor chart made the first two normalized complex modes into a finite
Hermitian Jacobi/edge block.  It is positive definite and its densities have
controlled $e^{-2|u|}$ tails.  H61 later shows that this endpoint chart does
not descend to the metric tangent quotient: its coordinates change under
exact global AdS Killing vectors.  The block remains a correct auxiliary
Jacobi calculation, but it is neither a physical anchor phase space nor the
complete finite-action $\Upsilon_{mn}$.

The result established at this stage was therefore a **two-mode auxiliary
benchmark plus an explicit constrained fixed-anchor mode space**.  The later
H51 and H59--H62 continuation constructs the infinite-mode finite-action form,
extends it by the PSL reducibility section to the full metric quotient, and
proves positivity of the combined Bañados form.  Those later results do not
retroactively turn the auxiliary block into an action-derived edge pair.

## 1. Normalized Brown--Henneaux tower

Start with the normalized right-moving $(2,0)$ primary generator $\zeta_0$
used in the modular-wedge benchmark.  The physical tower is

$$
\zeta_n
=\sqrt{\frac{6}{n!(n+3)!}}
\operatorname{ad}_{\xi_{-1}}^n\zeta_0,
\qquad n=0,1,2,\ldots,
\tag{1.1}
$$

where $\xi_{-1}$ is the global AdS$_3$ Killing lowering operator.  The
physical boundary frequency is

$$
m=n+2.
\tag{1.2}
$$

The mixed-root descendants generated in the opposite chiral copy are proper
gauge and have zero symplectic norm.  They are not included in (1.1).

## 2. Extremal-gauge edge block

Let $z_n^a(u)$ be the two normal-frame components of $\zeta_n$ on the RT
geodesic.  For a pure diffeomorphism the extremal-gauge normal value is

$$
v_n^a=-z_n^a.
\tag{2.1}
$$

The Jacobi/area part of the edge section change is the Hermitian form

$$
\mathcal J_{mn}
=\int_{-\infty}^{\infty}\mathrm du
\left[
(D_uv_m^a)^*\eta_{ab}D_uv_n^b
+(v_m^a)^*\eta_{ab}v_n^b
\right].
\tag{2.2}
$$

For $n=0,1$, setting $G=1$ only for displaying the numerical matrix gives

$$
\mathcal J^{(2)}
\simeq
\begin{pmatrix}
2.66666666666667&-1.99336768791636\,i\\
1.99336768791636\,i&2.97142857142857
\end{pmatrix}.
\tag{2.3}
$$

The diagonal entries agree numerically with $8/3$ and $104/35$.  The
eigenvalues are

$$
\lambda(\mathcal J^{(2)})
\simeq\{4.81823112585172,0.819864112243516\}.
\tag{2.4}
$$

Thus this finite edge block is Hermitian and positive definite.  Every tested
entry has an $e^{-2|u|}$ integrable density tail.  Positivity of (2.3) is not
a proof of positivity of the complete canonical-energy matrix: H62 obtains
the latter only after combining the bulk finite-action and corner terms into
the Bañados square.

In particular, the known project value

$$
\int_\gamma\Upsilon_{\rm p}[h_R,v]
=\frac{32}{105}
\tag{2.5}
$$

must not be inferred from (2.2) by attaching an unverified overall constant.
Equation (2.2) is the area/embedding block singled out by the Jacobi
decomposition, while (2.5) is the corrected local/proper section-change
cocycle. The old value $3424/15-74\pi$ is withdrawn: the old real generator
had the wrong radial sign and was not a real phase of the complex primary.
The complete inner finite-action wall realization of (2.5) is still open.

## 3. Fixed-anchor condition

At $t=0$, a real quadrature of physical frequency $m$ has boundary phase

$$
f_m(\phi)=A_m\cos m\phi+B_m\sin m\phi.
\tag{3.1}
$$

Requiring both interval anchors to remain fixed gives

$$
\begin{pmatrix}
\cos(ma)&\sin(ma)\\
\cos(ma)&-\sin(ma)
\end{pmatrix}
\begin{pmatrix}A_m\\B_m\end{pmatrix}=0,
\qquad a=\frac\pi4.
\tag{3.2}
$$

The determinant is

$$
\boxed{
\det M_m=-\sin(2ma)=-\sin\frac{m\pi}{2}.
}
\tag{3.3}
$$

Therefore:

- even $m$ admits exactly one real fixed-anchor quadrature;
- the orthogonal even-$m$ quadrature moves the anchors;
- odd $m$ admits no nonzero fixed-anchor quadrature.

The selected $m=2$ phase in the original benchmark is precisely the first
allowed case.  The first descendant has $m=3$ and already lies outside the
fixed-anchor phase space.

## 4. Per-frequency obstruction and its failure as a full-space no-go

For every odd $m$, $\cos^2(ma)=\sin^2(ma)=1/2$.  Hence

$$
|f_m(a)|^2+|f_m(-a)|^2
=A_m^2+B_m^2.
\tag{4.1}
$$

For a unit real phase, $A_m^2+B_m^2=1$, equation (4.1) implies

$$
\boxed{
\max\{|f_m(a)|,|f_m(-a)|\}
\geq\frac1{\sqrt2}
\qquad(m\ \text{odd}).
}
\tag{4.2}
$$

The lower bound is independent of $m$.  Thus the standard normalized odd
basis vectors are not individually tangent to the fixed-anchor domain.  It
does **not** follow that their coefficients must vanish in a mode sum, because
the endpoint condition acts on the sum.  For example,

$$
f(\phi)=\cos3\phi-\cos5\phi
\tag{4.3}
$$

satisfies

$$
f(\pi/4)=f(-\pi/4)=0.
\tag{4.4}
$$

Hence cross-frequency cancellation invalidates the former full-tower no-go.
The correct conclusion is only that the frequency basis must be projected or
recombined before it is used as a basis of the fixed-anchor phase space.

## 5. A weighted fixed-anchor phase space and adapted basis

Let a real boundary phase be

$$
f(\phi)=\sum_{m\geq2}
\left(A_m\cos m\phi+B_m\sin m\phi\right)
\tag{5.1}
$$

with norm

$$
\|f\|_{H^s}^2
=\sum_{m\geq2}(1+m^2)^s
\left(|A_m|^2+|B_m|^2\right),
\qquad s>\frac12.
\tag{5.2}
$$

Cauchy--Schwarz gives

$$
|E_\pm f|
\leq
\left[\sum_{m\geq2}(1+m^2)^{-s}\right]^{1/2}
\|f\|_{H^s},
\tag{5.3}
$$

so $E_\pm$ are continuous.  Their joint map
$E=(E_+,E_-):H^s\to\mathbb R^2$ is surjective because

$$
E(\cos4\phi)=(-1,-1),
\qquad
E(\sin2\phi)=(1,-1).
\tag{5.4}
$$

Therefore $\mathcal H_A^s=\ker E$ is closed and has codimension exactly two.
Define

$$
\boxed{
(P_Af)(\phi)
=f(\phi)
+\frac{f(a)+f(-a)}2\cos4\phi
-\frac{f(a)-f(-a)}2\sin2\phi,
\qquad a=\frac\pi4.
}
\tag{5.5}
$$

Then $P_A^2=P_A$, $E_\pm P_Af=0$, and $P_A$ is bounded on $H^s$.
After $H^s$ normalization and removal of the two complement vectors
$\cos4\phi$ and $\sin2\phi$, their projected Fourier vectors form an adapted
Riesz basis of $\mathcal H_A^s$. In particular, odd frequencies survive
through correlated combinations rather than as individual basis vectors.

This construction fixes only the two codimension-two anchor points on the
$t=0$ Cauchy cut.  Requiring a chiral boundary vector to vanish on an entire
anchor worldline for every global time is a different, much stronger
condition: already $f(t-a)=0$ for all $t$ forces a periodic chiral $f$ to
vanish identically.  The two phase-space definitions must not be conflated.

### 5.1 Physical normalization of the projected basis

The boundary tangential amplitude of the symplectically normalized
descendant is not independent of frequency. For $m=n+2$ it is

$$
\boxed{
c_n=(-i)^{n+1}
\sqrt{\frac{2G}{m(m^2-1)}}.
}
\tag{5.6}
$$

At the boundary, one lowering commutator raises $m$ by one and multiplies the
raw tangential coefficient by $-i(m-1)$. Combining this recurrence with
$\sqrt{6/[n!(n+3)!]}$ proves (5.6). The standalone normalization regression
checks it exactly through $n=12$.

If $a_m$ denotes the coefficient of the symplectically normalized mode and
$b_m=c_{m-2}a_m$ the unit-boundary Fourier coefficient, then

$$
\|f\|_{H^s}^2
=\sum_{m\geq2}(1+m^2)^s|c_{m-2}|^2|a_m|^2,
\tag{5.7}
$$

with

$$
(1+m^2)^s|c_{m-2}|^2
\sim2Gm^{2s-3}.
\tag{5.8}
$$

Thus ordinary $\ell^2$ coefficients of the physical normalized tower
correspond asymptotically to boundary $H^{3/2}$ regularity. The endpoint
condition itself only needs $s>1/2$, so these are distinct topology choices.

Projection must be performed on unit-boundary modes and then lifted back to
the physical tower. For example,

$$
P_A\cos3\phi
=\cos3\phi-\frac1{\sqrt2}\cos4\phi,
\qquad
P_A\sin3\phi
=\sin3\phi-\frac1{\sqrt2}\sin2\phi.
\tag{5.9}
$$

In symplectically normalized coefficients, the corresponding complement
ratios are $-\sqrt5/2$ for the cosine $m=3\to4$ lift and
$-1/(2\sqrt2)$ for the sine $m=3\to2$ lift. Using the raw $P_A$ coefficients
directly on the physical tower would therefore be incorrect.

The unit-boundary bulk representative itself has the closed form

$$
\begin{aligned}
\zeta_m^t
&=-e^{-im(t-\phi)}
\frac{r^m\left[r^2-\frac12(m-2)(m+1)\right]}
{(1+r^2)^{(m+2)/2}},\\
\zeta_m^r
&=-\frac{im}{2}e^{-im(t-\phi)}
\frac{r^{m-1}(2r^2+m+1)}{(1+r^2)^{m/2}},\\
\zeta_m^\phi
&=e^{-im(t-\phi)}
\frac{r^{m-2}\left[r^2+\frac12m(m+1)\right]}
{(1+r^2)^{m/2}}.
\end{aligned}
\tag{5.10}
$$

The normalization regression checks (5.10) exactly at $m=2,3,6$. On the RT
curve this form shows why a fixed-interior large-$m$ expansion is
insufficient: the radial ratios suppress the mode in the interior but leave a
shrinking endpoint layer. The high-frequency estimate must therefore be
uniform in an anchor-scaled coordinate.

## 6. Consequences for $\Upsilon_{mn}$ and JLMS

The corrected local Iyer--Wald block can already be evaluated on a small
physical projected set. In project orientation, with each seed carrying its
own symplectic normalization, the diagonal values are

$$
\begin{array}{c|cccccc}
&P_A\cos2\phi&P_A\cos3\phi&P_A\sin3\phi
&P_A\sin4\phi&P_A\cos5\phi&P_A\sin5\phi\\ \hline
\Upsilon_{\rm p}^{\rm local}
&\dfrac{32}{105}&\dfrac{38}{1155}&\dfrac3{70}
&\dfrac{32}{165}&\dfrac{3826}{45045}
&\dfrac{173629}{450450}
\end{array}.
\tag{6.1}
$$

These exact values are a low-mode diagonal benchmark, not yet the complete
matrix. In particular, (6.1) does not determine off-diagonal polarization,
high-frequency order, continuity, positivity, or uniform interchange of the
proper-completion limit with a mode sum.

Polarization on the first four displayed vectors gives

$$
\boxed{
\Upsilon_{\rm p}^{\rm local,(4)}=
\begin{pmatrix}
\dfrac{32}{105}&0&0&0\\
0&\dfrac{38}{1155}&0&0\\
0&0&\dfrac3{70}&\dfrac4{21\sqrt5}\\
0&0&\dfrac4{21\sqrt5}&\dfrac{32}{165}
\end{pmatrix}.
}
\tag{6.2}
$$

The sine block has determinant $128/121275$ and eigenvalues

$$
\frac{547\pm\sqrt{276681}}{4620}>0.
\tag{6.3}
$$

Thus this corrected local four-mode block is positive definite but not
frequency diagonal. This finite result is not a proof of positivity of the
complete finite-action form or of canonical energy; H62 later proves that
stronger statement from the full Bañados square, independently of this
finite matrix.

### 6.1 Exact local two-frequency kernels and an anchor-layer limit

The low-mode matrix was recomputed using the direct symmetric bilinearization
of the local Iyer--Wald potential, rather than the three-evaluation
polarization identity. It gives exactly the same matrix (6.2), including the
mixed entry $4/(21\sqrt5)$ and all four diagonal entries.

Let $z_m$ be the unit-boundary complex bulk vector (5.10), and let
$B_{2501}$ denote the local 2501-oriented symmetric bilinear density on the
RT curve. Direct tensor variation gives the exact same-chirality kernel

$$
\begin{aligned}
B_{2501}(z_m,z_n)
={}&-2^{-3-(m+n)/2}e^{i(m+n-2)\phi}
\cos^{-m-n-2}\!\phi\\
&\times\Big[
A_m+A_n+mn(m^2+n^2-2)\cos2\phi
-i(A_m+A_n)\sin2\phi
\Big],
\end{aligned}
\tag{6.4}
$$

where $A_m=m(m^2-1)$. The mixed-chirality kernel is also obtained exactly:

$$
B_{2501}(z_m,\bar z_n)
=-2^{-7-(m+n)/2}e^{i(m-n)\phi}
\cos^{-m-n-4}\!\phi\,
\mathcal P_{mn}(\sin2\phi,\cos2\phi),
\tag{6.5}
$$

where the verification script retains the complete polynomial
$\mathcal P_{mn}$, of degree at most three in each frequency and with
harmonics through $6\phi$. In the diagonal sector it reduces to

$$
\begin{aligned}
B_{2501}(z_m,\bar z_m)
={}&-2^{-6-m}(m-1)m(m+1)\cos^{-4-2m}\!\phi\\
&\times\Big[
-2m-2m^2+(6-8m-3m^2+3m^3)\cos2\phi\\
&\qquad +(8-2m-2m^2)\cos4\phi
+(2-m^2+m^3)\cos6\phi
\Big].
\end{aligned}
\tag{6.6}
$$

The physical real-quadrature scale at $G=1$ is
$s_m^2=4/[m(m^2-1)]$. In the right-anchor coordinate

$$
\phi=\frac\pi4-\frac ym,
\qquad y>0,
\tag{6.7}
$$

the exact diagonal mixed-chirality density obeys

$$
\boxed{
\lim_{m\to\infty}s_m^2 B_{2501}(z_m,\bar z_m)
=e^{-2y}\left(2+4y+4y^2-8y^3\right).
}
\tag{6.8}
$$

The limits after division by $m$ and $m^2$ vanish. Thus the physical density
is $O(1)$ in an $O(m^{-1})$ endpoint layer, and its single-anchor integral is
$O(m^{-1})$. Furthermore,

$$
\int_0^\infty e^{-2y}
\left(2+4y+4y^2-8y^3\right)\,\mathrm dy=0,
\tag{6.9}
$$

so the leading diagonal mixed-chirality layer has an additional integrated
cancellation. This explains why moderate-frequency diagonal values can look
order one without establishing order-one asymptotics.

Combining the exact $++$, $+-$, high--complement, and
complement--complement kernels before integration gives the first complete
local projected diagonal asymptotics. In project orientation,

$$
\boxed{
\lim_{\substack{m\to\infty\\m\equiv r\ ({\rm mod}\ 8)}}
m\,\Upsilon_{{\rm p},cc}^{\rm local}(P_A\cos m\phi)
=C_r,
\qquad
(C_0,\ldots,C_7)
=\left(\frac52,2,\frac32,2,\frac52,2,\frac32,2\right),
}
\tag{6.10}
$$

and

$$
\boxed{
\lim_{\substack{m\to\infty\\m\equiv r\ ({\rm mod}\ 8)}}
m\,\Upsilon_{{\rm p},ss}^{\rm local}(P_A\sin m\phi)
=S_r,
\qquad
(S_0,\ldots,S_7)
=\left(\frac32,2,\frac52,2,\frac32,2,\frac52,2\right).
}
\tag{6.11}
$$

For example, in the $r=0$ cosine class the two anchors together contribute
$-3/2$ from the high--high sector and $4$ from the high--complement sector,
giving $C_0=5/2$. Direct high-precision integration of the exact finite-$m$
kernels independently approaches these constants: the $r=0$ cosine sequence
$m=8,16,24,32$ gives respectively
$3.42565,2.95586,2.69290,2.62130$, while the separated high--high and
high--complement contributions approach $-3/2$ and $4$.

Thus every physical projected local diagonal entry is $O(m^{-1})$. This is a
genuine high-frequency result, but diagonal decay alone is insufficient for
continuity of an infinite matrix on $\ell^2$ or $H^s$.

### 6.2 A nonoptimal but uniform local $H^s$ theorem

The exact mixed-chirality polynomial in (6.5) has total frequency degree six.
Writing $c=\cos2\phi$ and $s_2=\sin2\phi$, its three highest homogeneous
pieces factor exactly as

$$
\begin{aligned}
\mathcal P^{(6)}_{mn}
&=8m^3n^3c^3,\\
\mathcal P^{(5)}_{mn}
&=-4m^2n^2c^2
\big[(m+n)(1+c)+i(n-m)s_2\big],\\
\mathcal P^{(4)}_{mn}
&=-4mnc\Big[
(m^2+n^2)(2+c+c^2)
+i(m^2-n^2)s_2c
\Big].
\end{aligned}
\tag{6.13}
$$

The symbolic regression verifies all three identities exactly. The remaining
homogeneous pieces have degree at most three and hence need no additional
endpoint zero for the following estimate. If
$d(\phi)=\pi/4-|\phi|$, then on the RT interval

$$
\big[2\cos^2\phi\big]^{-(m+n)/2}
\leq C e^{-c_0(m+n)d(\phi)},
\qquad
|\cos2\phi|\leq2d(\phi),
\tag{6.14}
$$

for constants independent of $m,n\geq2$. Equations (6.13)--(6.14) imply

$$
\begin{aligned}
|B_{2501}(z_m,\bar z_n)|
\leq C e^{-c_0Nd}\big(
N^6d^3+N^5d^2+N^4d+N^3\big),
\qquad N=m+n.
\end{aligned}
\tag{6.15}
$$

The same-chirality kernel (6.4) satisfies the same integrated order. Since
$\int_0^\infty e^{-c_0Nd}d^k\,\mathrm dd=O(N^{-k-1})$,

$$
\boxed{
\left|\int_{\gamma_A}B_{2501}(z_m,z_n)\right|
+\left|\int_{\gamma_A}B_{2501}(z_m,\bar z_n)\right|
\leq C(m+n)^2.
}
\tag{6.16}
$$

The coefficients of $P_A$ are bounded by one and its complement frequencies
are fixed at $2$ and $4$, so the real projected unit-boundary matrix obeys the
same bound. For
$f=\sum b_mP_Ae_m$ and $g=\sum c_nP_Ae_n$,

$$
\begin{aligned}
|\Upsilon_{\rm p}^{\rm local}(f,g)|
&\leq C
\sum_{m,n\geq2}|b_m||c_n|(m+n)^2\\
&\leq C_s\|f\|_{H^s}\|g\|_{H^s},
\qquad s>\frac52,
\end{aligned}
\tag{6.17}
$$

because $\sum m^2|b_m|<\infty$ follows from Cauchy--Schwarz precisely for
$s>5/2$. Thus the local fixed-anchor form has an absolutely convergent mode
sum and a unique continuous extension to $\mathcal H_A^s$ for every
$s>5/2$.

This threshold is sufficient, not optimal. In particular, (6.17) does not
settle the physically normalized $\ell^2$ tower, which corresponds to
boundary $H^{3/2}$ by (5.8). Reaching $s=3/2$ requires sharper cancellation
or an operator estimate for the projected off-diagonal kernel.

At this stage (6.17) is only a boundedness theorem for the local Iyer--Wald
representative, not yet for the complete real projected space. The subsequent
H51 and H59a--H60 estimates close the wall, joint, anchor-strip, proper
completion, collar, and total-flux terms on the declared linked regulator
class. Taking endpoint limits term by term before applying $P_A$ remains
invalid because the finite-rank complement can supply leading endpoint
cancellations.

### 6.3 Proper completion and the noncommuting mode limit

For the radial proper completion used in the selected-mode benchmark,

$$
p_L(r)=\frac{L^2}{L^2+r^2}.
\tag{6.18}
$$

On the RT curve $r^2=1/\cos2\phi$, hence

$$
\boxed{
p_L\big|_{\gamma_A}
=\frac{L^2\cos2\phi}{1+L^2\cos2\phi}.
}
\tag{6.19}
$$

Its switching layer has width $d\sim L^{-2}$. More precisely, for
$\phi=\pi/4-z/L^2$,

$$
p_L\longrightarrow\frac{2z}{1+2z},
\qquad
L^{-2}\partial_\phi p_L\longrightarrow
-\frac2{(1+2z)^2},
\qquad
L^{-4}\partial_\phi^2p_L\longrightarrow
-\frac8{(1+2z)^3}.
\tag{6.20}
$$

A frequency-$N$ Brown--Henneaux anchor layer instead has width $d\sim N^{-1}$.
Setting

$$
\lambda=\frac{N}{L^2},
\qquad
\phi=\frac\pi4-\frac yN,
\tag{6.21}
$$

gives the exact mixed scaling limit

$$
\boxed{
p_L\longrightarrow\frac{2y}{2y+\lambda}.
}
\tag{6.22}
$$

Consequently the local-completion regime requires
$N/L^2\to0$. A finite nonzero ratio gives a regulator-schedule-dependent
profile, while $N/L^2\to\infty$ switches the completion off inside the mode
layer. Thus the proper-completion limit and the infinite mode limit do not
commute without a correlated prescription.

For a truncated tower $N\leq M$, an admissible diagonal schedule must at
least satisfy

$$
\boxed{
\frac{M}{L(M)^2}\longrightarrow0.
}
\tag{6.23}
$$

Equations (6.19)--(6.23) are exact kinematic statements. They do not yet prove
that the complete cocycle error is dominated by a summable function; that
requires inserting the first two profile jets into the full non-Killing
potential and deriving an $M/L^2$-dependent operator bound.

At a finite brick wall the anchor distance has the sharper expansion

$$
\frac\pi4-\phi_c(R,\epsilon)
=\frac{\sinh\epsilon}{R}
+\frac{\cosh^2\epsilon}{2R^2}
+O_\epsilon(R^{-3}).
\tag{6.24}
$$

Thus a simultaneous mode/wall/proper/outer diagonal must also control
$M\sinh\epsilon/L$ in the proper switching region $R\sim L$. A convenient
sequential sufficient route is to fuse the wall first; a simultaneous route
must impose all of

$$
\boxed{
\frac{M}{L^2}\to0,
\qquad
\frac{M\sinh\epsilon}{L}\to0,
\qquad
\frac{L}{R}\to0.
}
\tag{6.25}
$$

The compensated moving-inner-embedding lift takes
$\chi=-p_L\zeta$ for $h=\mathcal L_\zeta G$, so its pulled-back tangent is

$$
\Delta_XG=\mathcal L_{(1-p_L)\zeta}G.
\tag{6.26}
$$

On every fixed compact wall core this is $O(L^{-2})$ with its required jets,
and the Brown--York flux is therefore $O(L^{-4})$ for a fixed finite set of
modes. The direct four-mode benchmark gives maxima

$$
2.17963,quad0.204356,quad0.0142930
\qquad(L=4,8,16),
\tag{6.27}
$$

while along the actual anchor points with $R=L^2$ it gives

$$
6.79298\times10^{-2},quad
1.15186\times10^{-3},quad
1.83487\times10^{-5}.
\tag{6.28}
$$

The maximum step-halving residual is $5.17\times10^{-11}$. This verifies the
finite-mode compensation mechanism but is not an infinite-mode estimate.

The corrected complex unit-boundary wall perturbation has an exact symbolic
endpoint jet. With $q=e^{-u}$, all six independent metric components have
zero $q^0$ and $q^1$ coefficients and begin as

$$
h_m=q^2e^{im\pi/4}m(m^2-1)H_2(\epsilon)
+q^3e^{im\pi/4}P_{4,m}(\epsilon)+O(q^4),
\tag{6.29}
$$

where $P_{4,m}$ has degree at most four in $m$. Independently applying the
linear Gaussian-normal Brown--York formula gives

$$
\delta\Pi_m=q^2e^{im\pi/4}m(m^2-1)P_2(\epsilon)
+q^3e^{im\pi/4}\widetilde P_{4,m}(\epsilon)+O(q^4).
\tag{6.30}
$$

The leading tangential matrices are proportional to

$$
H_2\propto
\begin{pmatrix}1&-1\\-1&1\end{pmatrix},
\qquad
P_2\propto
\begin{pmatrix}1&1\\1&1\end{pmatrix},
\qquad
P_2:H_2=0.
\tag{6.31}
$$

Therefore the antisymmetric Brown--York flux has no $q^4$ term for any pair
of frequencies, and its first possible endpoint **coefficient** obeys

$$
\boxed{
\mathcal F^{\rm wall}_{mn}(q,\epsilon)=O(q^5),
\qquad
|[q^5]\mathcal F^{\rm wall}_{mn}|
\leq C\epsilon(m+n)^7
}
\tag{6.32}
$$

for unit-boundary modes and sufficiently small positive $\epsilon$. Physical
normalization improves this by $m^{-3/2}n^{-3/2}$. Although the isolated
$q^3$ momentum coefficient contains $\operatorname{csch}\epsilon$, the four
coefficient matrices scale as

$$
h^{(2)}=O(\epsilon^2),
\quad h^{(3)}=O(\epsilon),
\quad \delta\Pi^{(2)}=O(1),
\quad \delta\Pi^{(3)}=O(\epsilon^{-1}),
$$

so every possible $q^5$ coefficient is $O(\epsilon)$. The complete rational
kernel determines the missing remainder. With $y=\tanh(\epsilon/2)$,

$$
|\mathcal F^{\rm wall}_{mn}(q,\epsilon)|
\leq C(1+m+n)^7(yq^5+q^6).
\tag{6.32a}
$$

At the proper switching radius $q_L\leq C/L$, this integrates to
$C(1+m+n)^7(yL^{-5}+L^{-6})$. Hence the wall tail is absolutely summable
for the sufficient, deliberately nonoptimal threshold $s>15/2$; the local
cut still needs only $s>5/2$.

The far moving joint can be treated by the same endpoint algebra. For the
Hayward canonical pair, exact finite-jet variation of the normalized
inner/outer angle and joint line density gives

$$
\Delta_X\eta_m
=q^2e^{im\pi/4}m(m^2-1)A_2(\epsilon)
+q^3e^{im\pi/4}A_{4,m}(\epsilon)+O(q^4),
\tag{6.33}
$$

$$
\Delta_X\sqrt q_m
=-q^2e^{im\pi/4}m(m^2-1)D_2(\epsilon)
+q^3e^{im\pi/4}D_{4,m}(\epsilon)+O(q^4),
\tag{6.34}
$$

where the $q^2$ and $q^3$ frequency degrees are three and four. Their
antisymmetric $q^4$ product vanishes exactly.  The old prose estimate
$O(\epsilon^2q^5)$ does not follow: the finite jets contain
$\eta^{(3)}=O(1)$ and $(\sqrt q)^{(2)}=O(\epsilon)$.  The complete rational
kernel instead gives

$$
\boxed{
|\mathcal F^{J}_{mn}(q,\epsilon)|
\leq C(1+m+n)^6\tanh\frac\epsilon2\,q^5
}
\tag{6.35}
$$

for the complete raw far-anchor joint. At $r=R$, $q_R\leq C/R$, so this is
$C(1+m+n)^6\tanh(\epsilon/2)R^{-5}$. The compensated profile
differs from the raw mode there by $O(L^2/R^2)$ at the same finite-jet tier.
No raw wall or joint analytic remainder remains. The compensated mismatch is
still an independent outer-joint estimate. The extended transition region $r\sim L$, where derivatives of $p_L$
enter the non-Killing descent, is instead solved by H51 on the projected
domain.

The original frequency matrix

$$
\Upsilon_{mn}^{\rm fixed\ anchor}
\tag{6.36}
$$

cannot be interpreted entry by entry on the unprojected tower, because the
individual frequency generators are not all in the chosen endpoint-zero
section. There are two distinct constructions:

1. use the projected space $\mathcal H_A^s$ and evaluate the finite-action
   form on its adapted basis;
2. pass to the complete metric tangent quotient using $P_{\rm PSL}$, which
   fixes both endpoint values by adding only exact global AdS Killing fields.

The second route leaves $h$ unchanged and requires no physical anchor
canonical pair. The old $P_A$ and the new $P_{\rm PSL}$ must not be
identified: $P_A$ adds charged modes and selects a physical subspace, while
$P_{\rm PSL}$ fixes only the global-Killing representative. Nothing here
promotes the classical result to a crossed-product or quantum JLMS theorem.

## Verification status

**Verified:** generation and normalization of the $n=0,1$ descendants from
the local linearized-gravity conventions; Hermiticity and positive
eigenvalues of (2.3); controlled asymptotic density coefficients; the exact
determinants for $m=2,3$; the per-frequency endpoint identity (4.1); the
counterexample (4.3); the projection identities (5.4)--(5.5); direct
bilinear reproduction of (6.2); the exact complex kernels (6.4)--(6.6); the
diagonal anchor-layer limit (6.8)--(6.9); and the projected physical diagonal
asymptotics (6.10)--(6.11); and the homogeneous endpoint factorization
(6.13), which yields the local continuity theorem (6.16)--(6.17) for
$s>5/2$; and the proper-completion scale identities (6.19)--(6.23).
`ads_rindler_mode_space_check.wl` passes $12/12$ tests, including exact
$e^{-2|u|}$ tail coefficients and a positive minimum eigenvalue for the
displayed finite block. `ads_rindler_projected_high_frequency_check.wl`
passes its nine structural tests and records both exact two-frequency
kernels, their endpoint jets, the diagonal scaled limit, and all eight
residue-class coefficients in (6.10)--(6.11), together with the degree-six
through degree-four factorization in (6.13). Its optional
eight-residue projected scan is not counted as verified because the first
direct implementation was stopped for symbolic inefficiency before producing
a result.
`ads_rindler_proper_completion_scaling_check.wl` passes $7/7$ exact tests for
the RT profile, its first two switching-layer jets, and the mixed
mode--regulator limit (6.22).

**Assumptions:** the normalized $(2,0)$ tower and global lowering convention
of `../linearized gravity/article/`; $a=\pi/4$; fixed anchors mean vanishing
boundary tangential phase at both endpoints; and the normal-frame/Jacobi
conventions already verified in the area-displacement benchmark.

**Subsequent closure:** H51 constructs the adapted spectral domain and proves
the projected transition limit with rate $C_sM^6/L^2$; H59a--H60 close the
complete regulator sum and prove time-evolution symplecticity. H61 uses the
global-Killing $P_{\rm PSL}$ section to extend this result to the complete
Brown--Henneaux metric quotient. H62 identifies the combined form with the
positive Bañados Hessian, proves its exact
$\mathfrak{sl}(2,\mathbb R)$ kernel, and gives the optimal ordinary $H^2$
continuity threshold together with noncoercivity. The separated local
$E+\int\Upsilon$ chart still requires the sharper $s>5/2$ trace domain.

**Not verified:** a nonlinear full-Virasoro quotient, finite-amplitude charts
over arbitrary coadjoint orbits, or a strong smooth infinite-mode HW collar.
