# Incoming-Only Affine Range, Pole Kernel, and Angular Kill Test

## 1. Direct verdict

For the Fourier convention of `03`, the exact center multiplier has the
partial-fraction expansion

$$
\boxed{
S_j(\omega)=(-1)^{j+1}
+\sum_{n=1}^j\frac{A_{jn}}{n+i\omega},
\qquad
A_{jn}=(-1)^n n\binom jn\binom{j+n}{n}.}
\tag{1.1}
$$

It follows that the outgoing master profile is an incoming-only finite tail
filter,

$$
\boxed{
f_+(u)=(-1)^{j+1}f_-(u)
+\sum_{n=1}^j A_{jn}
\int_u^\infty e^{n(u-v)}f_-(v)\,dv.}
\tag{1.2}
$$

The formula gives an exact fixed-$j$ affine range theorem.  At the remote
incoming end $v\to-\infty$, an $e^{pv}$ tail with $1\leq p\leq j$ resonates
with the pole $\omega=ip$ and produces $u e^{pu}=U^p\log U$ on the outgoing
horizon.  Thus outgoing affine regularity forces the corresponding incoming
tail coefficients to vanish.  Once those resonances vanish, the outgoing
affine jets are the exponential moments of the incoming profile displayed in
section 4.  The common bifurcation value is the additional incoming-only
condition

$$
f_-(+\infty)=-f_-(-\infty).
\tag{1.3}
$$

The large-$j$ kill test has two different answers:

1. the unrestricted Goursat solution operator on a fixed Kruskal rectangle
   grows like $I_0(c\sqrt{\lambda_j})\sim e^{cj}$, so ordinary rapid angular
   decay is not enough for arbitrary pairs of characteristic traces;
2. the $S_j$-compatible range has only polynomial loss on every fixed
   Fourier--Laplace strip.  This removes the claimed evidence that the
   physical range must be analytic or Gevrey in angle, but it does not by
   itself prove a uniform full-tower interior Goursat estimate.

Accordingly `T1-aff(k,fixed-j)` is `proved`, while
`T1-aff(k,full tower)` is `conditional`.  The earlier statement that the
rapid-angular Fréchet intersection automatically closes the full Goursat
problem is `false` without an $S_j$-restricted uniform interior estimate.

## 2. Fourier convention and exact partial fractions

Extend the positive-frequency convention of `03` to the full real Fourier
transform by

$$
\widehat f(\omega)
=\frac1{\sqrt{2\pi}}\int_{\mathbb R}f(v)e^{i\omega v}\,dv,
\qquad
f(v)=\frac1{\sqrt{2\pi}}\int_{\mathbb R}
\widehat f(\omega)e^{-i\omega v}\,d\omega.
\tag{2.1}
$$

For real profiles,
$\widehat f(-\omega)=\overline{\widehat f(\omega)}$.  Equation (7.3) of
`03` is therefore

$$
\widehat f_+(\omega)=S_j(\omega)\widehat f_-(\omega)
\tag{2.2}
$$

on the full real line, with $S_j(-\omega)=\overline{S_j(\omega)}$.

Put $z=i\omega$.  Then

$$
S_j(z)=-\prod_{q=1}^j\frac{q-z}{q+z}.
\tag{2.3}
$$

Its polynomial part at infinity is $(-1)^{j+1}$.  At the pole $z=-n$,

$$
\begin{aligned}
A_{jn}
&=\lim_{z\to-n}(z+n)S_j(z)\\
&=-2n\prod_{\substack{q=1\\q\ne n}}^j\frac{q+n}{q-n}\\
&=(-1)^n\frac{(j+n)!}{n!(n-1)!(j-n)!}\\
&=(-1)^n n\binom jn\binom{j+n}{n}.
\end{aligned}
\tag{2.4}
$$

The difference between the two sides of (1.1) is entire on the Riemann
sphere and vanishes at infinity, proving (1.1).  Two useful exact identities
are

$$
(-1)^{j+1}+\sum_{n=1}^j\frac{A_{jn}}n=-1,
\tag{2.5}
$$

and, for every integer $p>j$,

$$
(-1)^{j+1}+\sum_{n=1}^j\frac{A_{jn}}{n-p}
=S_j(ip).
\tag{2.6}
$$

Here $S_j(ip)$ means evaluation of the original frequency multiplier at
$\omega=ip$; it is finite only for $p>j$.

Status of (1.1), (2.4)--(2.6): `proved` by residues and rational-function
uniqueness.  Exact finite-$j$ regressions are in
`scripts/incoming_affine_kernel_checks.py`.

## 3. Time-domain tail kernel

Define

$$
(T_nf)(u):=\int_u^\infty e^{n(u-v)}f(v)\,dv.
\tag{3.1}
$$

For bounded profiles with finite endpoint limits this integral converges.  It
obeys

$$
(\partial_u-n)T_nf=-f,
\qquad
T_n(e^{-i\omega u})=\frac{e^{-i\omega u}}{n+i\omega}.
\tag{3.2}
$$

Fourier inversion of (1.1) now gives (1.2), with no extra $2\pi$ factor.  The
formula first holds for Schwartz profiles and then for bounded two-ended
profiles by (3.1), or distributionally after differentiating away the
constant mode.

For a constant input $f=a$, equations (1.2) and (2.5) give $f_+=-a$.
Therefore, for every bounded two-ended incoming profile,

$$
\boxed{f_+(-\infty)=-f_-(-\infty)}
\tag{3.3}
$$

whenever the remaining tail tends to zero.  Matching the two master traces at
$B$ is precisely (1.3).  It is a relation between the two incoming endpoint
values; it is not an independently chosen outgoing datum.

## 4. Resonances, exponential moments, and future affine jets

Fix an integer $K\geq0$ and $0<\alpha<1$.  Suppose the incoming profile is
bounded at $+\infty$ and has the left affine expansion

$$
f_-(v)=a+\sum_{p=1}^K b_p e^{pv}+R_K(v),
\qquad
\partial_v^\ell R_K(v)=O(e^{(K+\alpha)v})
\quad(v\to-\infty)
\tag{4.1}
$$

for the derivatives used below.  Put $r=\min(j,K)$.

### 4.1 Pole resonance

For the truncated tail $e^{pv}$ at $v\to-\infty$,

$$
T_p(e^{pv})(u)=-u e^{pu}+O(e^{pu}),
\qquad u\to-\infty.
\tag{4.2}
$$

No other term in (1.2) produces $u e^{pu}$.  Hence the coefficient of the
outgoing logarithm is

$$
-A_{jp}b_p\,u e^{pu}
=-A_{jp}b_p\,U^p\log U.
\tag{4.3}
$$

Since $A_{jp}\ne0$, outgoing $C^K$ regularity requires

$$
\boxed{b_p=0\quad(1\leq p\leq\min(j,K)).}
\tag{4.4}
$$

Conversely, (4.4) removes every pole crossed through order $K$.

### 4.2 Moments and jets after the resonances vanish

Under (4.4), the moments

$$
\boxed{
M_n[f_-]:=\int_{-\infty}^{\infty}
e^{-nv}\big(f_-(v)-a\big)\,dv,
\qquad1\leq n\leq r,}
\tag{4.5}
$$

converge.  Splitting the integral in (3.1) at $-\infty$ gives

$$
\begin{aligned}
f_+(u)=&-a
+\sum_{n=1}^{r}A_{jn}M_n[f_-]e^{nu}\\
&+\mathbf1_{K>j}\sum_{p=j+1}^{K}S_j(ip)b_p e^{pu}
+O(e^{(K+\alpha)u}).
\end{aligned}
\tag{4.6}
$$

The identity (2.6) supplies the coefficient of every nonresonant
$e^{pu}$ term with $p>j$.  Therefore

$$
\boxed{
\partial_U^n f_+(0)=n!A_{jn}M_n[f_-]
\quad(1\leq n\leq\min(j,K)),}
\tag{4.7}
$$

and, when $j<n\leq K$,

$$
\boxed{
\partial_U^n f_+(0)=n!S_j(in)b_n.}
\tag{4.8}
$$

Equations (4.4)--(4.8) rewrite all outgoing affine jets through order $K$ as
incoming tail coefficients and exponential moments.

### Theorem 4.1 — fixed-$j$ incoming-only affine range

For fixed $j$ and $K$, assume (4.1), the analogous right-end affine
expansion of $f_-$ at $v\to+\infty$, and the regularity needed to
differentiate (1.2) through order $K$.  Then the scattered profile is
$C^K$ at $U=0$ if and only if the resonant coefficients (4.4) vanish.
Its future jets are (4.7)--(4.8).  The incoming and outgoing traces have a
common value at $B$ if and only if (1.3) holds.

#### Proof

Equation (4.3) proves necessity.  Under (4.4), all moments in (4.5) converge.
For $n\leq r$, write

$$
T_n f_-(u)=\frac an+e^{nu}M_n[f_-]
-e^{nu}\int_{-\infty}^u e^{-nv}(f_-(v)-a)\,dv.
\tag{4.9}
$$

Insert (4.1) in the last integral.  Terms $p>j$ combine by (2.6), while the
remainder is $O(e^{(K+\alpha)u})$.  Terms $n>K$ in (1.2) have the same
remainder order because $n\geq K+1>K+\alpha$.  This proves (4.6)--(4.8) and
sufficiency.  Equation (3.3) gives the corner condition. $\square$

For `T1-aff(k,fixed-j)` one applies Theorem 4.1 with $K=k+1$ to the master.  The
first-order Maxwell dictionary then gives a $C^k$ field strength.

## 5. Large-$j$ coefficients: what grows and what cancels

For fixed $n$ and $j\to\infty$,

$$
\boxed{
A_{jn}=(-1)^n\frac{j^{2n}}{n!(n-1)!}
\left(1+O(j^{-1})\right).}
\tag{5.1}
$$

By contrast, the highest pole coefficient is

$$
\boxed{
A_{jj}=(-1)^j j\binom{2j}{j}
=(-1)^j4^j\sqrt{\frac j\pi}
\left(1+O(j^{-1})\right).}
\tag{5.2}
$$

Thus the anticipated $4^j\sqrt{j/\pi}$ growth is real.  It is not a numerical
artifact and it is not canceled in the $j$-th outgoing affine jet
$j!A_{jj}M_j$.  It also does not obstruct any *fixed* $C^K$ angular
seminorm at large $j$: when $j>K$, only $A_{j1},\ldots,A_{jK}$ enter, and
these have the polynomial bounds (5.1).  The diagonal coefficient (5.2) is
seen only by derivative orders growing with $j$, which are not a fixed
seminorm of the ordinary $C^\infty$ Fréchet topology.

The same conclusion is visible without partial fractions.  For a fixed
noninteger strip height $\sigma>0$,

$$
|S_j(x+i\sigma)|
=\prod_{n=1}^j
\frac{\sqrt{(n+\sigma)^2+x^2}}
{\sqrt{(n-\sigma)^2+x^2}}.
\tag{5.3}
$$

Separating the finitely many $n\leq\sigma$ factors and using the value at
$x=0$ for the rest gives

$$
\boxed{
\sup_{x\in\mathbb R}|S_j(x+i\sigma)|
\leq C_\sigma(1+j)^{2\sigma}.}
\tag{5.4}
$$

Moreover,

$$
|S_j(i\sigma)|
=\left|\frac{\Gamma(j+1+\sigma)\Gamma(1-\sigma)}
{\Gamma(1+\sigma)\Gamma(j+1-\sigma)}\right|
\sim C_\sigma j^{2\sigma},
\tag{5.5}
$$

so the polynomial order is sharp.  On the real axis the stronger identity
$|S_j(x)|=1$ holds.  After the finitely many crossed poles have been
subtracted, (5.4) is the natural continuity estimate for a fixed-order
Mellin--Hardy remainder.  In angular Sobolev notation it costs at most
$2\sigma$ derivatives:

$$
\|S_j\widehat f_j\|_{H^s_{\rm ang};\,\operatorname{Im}\omega=\sigma}
\leq C_\sigma
\|\widehat f_j\|_{H^{s+2\sigma}_{\rm ang};\,
\operatorname{Im}\omega=\sigma}.
\tag{5.6}
$$

The rapid-angular intersection is stable under every fixed (5.6).  This is
the exact $S_j$ cancellation relevant to the full-tower question: the
individual residues are exponentially large along the diagonal, but the
all-pass rational multiplier has only fixed-strip polynomial growth.

## 6. The unrestricted Goursat operator really is exponentially bad

Put $W=-V\geq0$.  On a fixed rectangle

$$
0\leq U\leq a,\qquad0\leq W\leq b,\qquad ab<1,
\tag{6.1}
$$

the Kruskal master equation is

$$
\partial_U\partial_W\Psi
-\frac{\lambda_j}{(1-UW)^2}\Psi=0.
\tag{6.2}
$$

For arbitrary traces $A(W)=\Psi(0,W)$ and $B(U)=\Psi(U,0)$, Picard iteration
of the Volterra equation gives

$$
\boxed{
\|\Psi\|_{L^\infty(R_{a,b})}
\leq
\|A+B-A(0)\|_\infty
I_0\!\left(
2\sqrt{\frac{\lambda_jab}{(1-ab)^2}}
\right).}
\tag{6.3}
$$

This bound has the correct qualitative growth.  For positive constant traces
$A=B=1$, every Picard term is positive and the coefficient in (6.2) is at
least one, so at an interior point

$$
\Psi(U,W)\geq I_0(2\sqrt{\lambda_jUW}).
\tag{6.4}
$$

Since $\sqrt{\lambda_j}\sim j$, data with angular coefficients
$e^{-\sqrt j}$ are rapidly decreasing but (6.4) is not summable at any fixed
$UW>0$.  Therefore arbitrary rapid-angular Goursat data do require an
exponentially weighted, hence analytic-type, angular class on a fixed
rectangle.

Those constant trace pairs are not in general in the center-regular
$S_j$-scattering range.  Equations (5.4)--(5.6) show that it is incorrect to
transfer the unrestricted $I_0$ estimate directly to the physical range.
What remains missing is a uniform *interior* estimate showing that the
$S_j$-compatible boundary cancellations propagate from the Hardy strips to
a common Kruskal neighborhood for the whole tower.

## 7. Correct full-tower status and candidate topology

At the boundary level, the natural candidate is a rapid-angular rather than
analytic/Gevrey projective space: take the intersection over fixed $K$,
noninteger strip heights
$\sigma<K+1+\alpha$, angular orders $s$, and time Sobolev indices $m$ of:

1. the right-end incoming affine Taylor coefficients and subtracted
   Hardy--Sobolev remainders;
2. the left-tail coefficients subject to the pole cancellations (4.4);
3. the moments (4.5), with their fixed-order polynomial weights (5.1);
4. the corner relation (1.3).

The proved continuity estimate is (5.6), not an onto theorem for this
candidate space.  A proof of the full tower must still estimate the
center-regular Kruskal solution in a common interior neighborhood.  Until
that estimate is known, an additional interior analytic weight is neither
proved necessary nor proved avoidable.  Hence:

| statement | status | reason |
|---|---|---|
| exact partial fractions and kernel (1.1)--(1.2) | `proved` | residues and Fourier convention |
| fixed-$j$ incoming-only affine range | `proved` | Theorem 4.1 |
| unrestricted rapid-angular Goursat theorem on a fixed rectangle | `false` | (6.4) gives $e^{cj}$ growth |
| analytic/Gevrey angular regularity is forced by the $S_j$ boundary multiplier | `false` | fixed-strip multiplier loss is polynomial by (5.4) |
| `T1-aff(k,full tower)` in the candidate rapid-angular Hardy topology | `conditional` | missing uniform compatible interior estimate |
| maximal completed `T1-aff` / `T4-bulk` | `conditional` | additionally missing endpoint symplectic completion |

## 8. Kill-test significance

The pole calculation produces a real but finite fixed-$j$ compatibility
theorem: pole resonances must vanish, exponential moments determine the
future jets, and the two incoming endpoint constants obey (1.3).  It does not
produce a new analytic angular phase space.  The large coefficients cancel
to fixed-strip polynomial loss in the exact $S_j$ multiplier, leaving the
full interior estimate conditional.

This is not enough to support the static patch as the main paper project.
The exact kernel is valuable as a calibration and as an incoming-only form of
the finite-mode theorem, but the surviving content is a rational-filter
reformulation of center scattering rather than a completed new CPS range.

## 9. Regression boundary

`../scripts/incoming_affine_kernel_checks.py` verifies finite instances of:

- (1.1), (2.5), and (2.6) with exact rational arithmetic;
- the tail-kernel multiplier and fixed-$j$ moment polynomial;
- the pole-resonance logarithm;
- (5.2) and its central-binomial asymptotic;
- the unrestricted $I_0$ stress test and fixed-strip polynomial scaling.

The script does not prove Theorem 4.1, the strip estimate for all $j$, any
Hardy/Mellin converse, or the missing compatible interior Goursat estimate.
