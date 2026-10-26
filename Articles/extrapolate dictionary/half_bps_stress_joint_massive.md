# A cutoff-uniform massive zero-transfer trace

## Result

The massive zero-transfer obstruction in the joint radial/spacetime
limit can be removed directly at the original radial integral.
The key is to pair a **hard unraised radial mass** before estimating
the soft retarded factor. This keeps every cone and every insertion
in its original place. No second derivative of a scalar continuity
bound is taken.

On a compact patch with the two outer momenta strictly future
timelike, the complete finite-cutoff coefficient is uniformly
Lipschitz in the injection, as a distribution in the remaining
external momenta. Its radial cutoff can consequently be removed
jointly with any spacetime-switch path on that patch.

This note concerns the canonical causal TT coefficient. The
outer-null/outer-soft gluing is completed in the companion
all-strata joint-limit theorem, using this local estimate and
half_bps_stress_joint_soft.md.

## 1. Exact coordinates and tensor estimate

Write
\[
M=p-\Omega=q-r,\qquad s(M)=m^2,
\]
and use a smooth proper Lorentz frame in which \(M=(m,\mathbf0)\).
The mass \(m\) belongs to a fixed compact subinterval of \((0,\infty)\).
The injection is small enough that \(p=M+\Omega\) stays strictly
future timelike. Set
\[
r=\rho(H,\mathbf V),\quad T=H^2-|\mathbf V|^2,\qquad
a^2=s(M+\Omega),\quad
b^2=m^2+2m\rho H+\rho^2T,\quad c^2=\rho^2T.
\tag{1}
\]
Take a smooth annular partition in \(r\), so
\[
\tfrac12\le |(H,\mathbf V)|_E\le2,\qquad
0<\rho<\rho_0\ll m.
\tag{2}
\]
All cutoffs and external tests have bounded seminorms after this
rescaling. The two outer free-cone indicators are constant on the
patch; the transfer indicators depend only on \(H,T\), independently
of \(\Omega\).

The source tensor is exactly
\[
\mathcal N(p;q,r)
=a^4\Pi(p)\,(r-\Omega)\,r,
\tag{3}
\]
because \(q=p+r-\Omega\) and \(\Pi(p)p=0\).
The projector is smooth on this strictly massive patch. Hence
\[
|\partial_{H,\mathbf V}^\alpha\mathcal N|
\le C_\alpha\rho(\rho+|\Omega|),
\qquad
|\partial_\Omega\partial_{H,\mathbf V}^\alpha\mathcal N|
\le C_\alpha\rho.
\tag{4}
\]
The fixed laboratory-frame bounds have the same form because
the \(M\)-frame boosts are uniformly bounded.

## 2. Statement of the annular estimates

Let \(A_{\rho,B}(\Omega;\psi)\) denote the pairing of the complete
radial-cutoff kernel with a test localized as in (2), including
the \(d^4r=\rho^4dH\,d^3V\) measure and the tensor (3).
The other hard external variables are spectator parameters on
fixed compact sets.

For a fixed plateau cutoff and every \(M_*>0\), there are fixed
finite test seminorms, independent of \(\rho,B,\Omega\), such that
\[
|A_{\rho,B}(\Omega;\psi)|
\le C\rho^2(\rho+|\Omega|)P(\psi),
\tag{5}
\]
\[
|\partial_\Omega A_{\rho,B}(\Omega;\psi)|
\le C(\rho^2+|\Omega|\rho)P_1(\psi),
\tag{6}
\]
and
\[
|A_{\rho,B}-A_{\rho,\infty}|
\le C_{M_*}\rho^2(\rho+|\Omega|)(1+B\rho)^{-M_*}
P_{M_*}(\psi).
\tag{7}
\]

The estimates hold for all \(B>0\) and all sufficiently small
fixed \(\Omega\), without requiring \(|\Omega|\lesssim\rho\).
The proof below constructs the limiting distribution and its
injection trace simultaneously.

## 3. Away from the spatial axis: pair the hard mass first

Cover the annulus by a region \(|\mathbf V|\ge c_0>0\) and a
region near its spatial axis. In the first region use
\[
(H,\mathbf V)\longleftrightarrow(H,T,\mathbf n),\qquad
|\mathbf V|=\sqrt{H^2-T}.
\]
Its measure is
\[
dH\,d^3V=\tfrac12\sqrt{H^2-T}\,dH\,dT\,d\Omega_2,
\tag{8}
\]
with uniformly smooth Jacobian on this chart.

At fixed \(T\),
\[
\partial_H b=\frac{m\rho}{b}\asymp\rho.
\tag{9}
\]
The soft output \(R_r(0,u)=R_{\operatorname{sgn}H}(T,\rho u)\)
is independent of \(H\), except for its retarded sign.
Choose a fixed finite partition into \(H>c_1\), \(H<-c_1\)
and \(T<-c_2\). On the first two pieces the sign is fixed.
On the last piece the retarded kernel is the real \(K_0\)
kernel and is independent of that sign. This partition covers
the chart, including the transfer-null surface.
The free transfer factor is \(\theta(T)J_0(\rho u\sqrt T)\)
with the appropriate fixed energy sign.

For \(u\) above a fixed constant, the hard Bessel and Hankel
functions have the exact symbol form
\[
J_\nu(bu)=
\sum_{\pm}e^{\pm ibu}a_{\nu,\pm}(bu),\qquad
H_\nu^{(\pm)}(bu)=e^{\pm ibu}h_{\nu,\pm}(bu),
\tag{10}
\]
where the amplitudes are symbols of order \(-1/2\).
Repeated integration by parts in \(H\), using (9), supplies
arbitrarily many powers of \((1+\rho u)^{-1}\).
No \(H\)-derivative lands on the soft retarded kernel or the
transfer-cone factor.

This applies to every genuine insertion:

- the middle graph has the unraised hard input \(J_0(bu)\);
- the stress graph has the same hard input \(J_0(bu)\);
- the right graph has the hard, fixed-sign output
  \(R_-(b^2,u)\), a Hankel function of \(bu\).

The other hard mode, with mass \(a\), is independent of \(H\).
Its second radial mass derivative costs \(u^2\).
The two hard amplitudes together cost \(u^{-1}\), and the
vertex measure supplies \(u\). The resulting large-\(u\)
factor is thus at most \(u^2\).

The soft retarded factor has the elementary local mass bound
\[
\int_{T\in K}|R_\sigma(T,v)|\,dT
\le
\begin{cases}
C_K(1+|\log v|),&0<v\le1,\\
C_Kv^{-1/2},&v\ge1,
\end{cases}
\tag{11}
\]
for any fixed compact \(K\).
For \(T>0\) this follows by splitting at \(T=v^{-2}\)
and using the \(J_0,Y_0\) bounds; for \(T<0\) use \(K_0\).
The logarithm at \(T=0\) is integrable. The free soft Bessel
factor is bounded by one.

Consequently, after the \(H,T,\mathbf n\) pairing, an integrable
majorant is
\[
C\,\rho^4\,\rho(\rho+|\Omega|)\,
u^2(1+\rho u)^{-N}
\tag{12}
\]
for \(u\ge1\), with a harmless logarithm for \(\rho u<1\).
Choosing \(N>3\) and putting \(v=\rho u\) gives (5).
The \(u<1\) contribution is bounded by
\(C\rho^5(\rho+|\Omega|)(1+|\log\rho|)\), which is smaller.

One injection derivative either differentiates the smooth tensor/test,
or the hard mass \(a\). The latter adds at most one factor \(u\).
Using \(N>4\) then gives (6).
Finally, restrict the same majorant to \(u\ge b_0B\)
for the cutoff difference. Increasing \(N\) proves (7)
on this chart.

## 4. Near the spatial axis: retain the exact all-insertion pair

The complementary annular region has
\[
|H|\ge c_0,\qquad |\mathbf V|\le\tfrac12|H|,
\qquad C=\sqrt{H^2-|\mathbf V|^2}\ge c_1,\quad c=\rho C.
\tag{13}
\]
Its two timelike sectors require the exact complete Hankel
combinations. They cannot be estimated as unrelated terms.

For \(H>0\), the complete middle-plus-right factor has phases
\[
\pm(b+c)\pm a,
\]
and, at fixed \(\mathbf V\),
\[
\partial_H(b+c)
=\rho\frac{m+\rho H}{b}
+\rho\frac{H}{C}\ge c_2\rho.
\tag{14}
\]
Pairing in \(H\) therefore gives the same rapid
\((1+\rho u)^{-N}\) gain.

For \(H<0\), the middle-plus-stress factor has phases
\[
\pm(a+c)\pm b.
\]
The potentially small phase satisfies
\[
\partial_H(a+c-b)
=\rho\frac{H}{C}
-\rho\frac{m+\rho H}{b}\le-c_2\rho.
\tag{15}
\]
The other phase satisfies \(a+c+b\ge c_3>0\).
For it, integrate by parts in \(u\) instead.

For \(u\rho\le2\), absolute small-argument Bessel bounds give
the same \(O(\rho^{-3})\) radial majorant, including the
integrable \(\log(\rho u)\).
For \(u\rho\ge1\), all three Hankel amplitudes are symbols.
Before the tensor and \(r\)-measure, their size is
\[
C\,\rho^{-1/2}u^{3/2}.
\tag{16}
\]
A smooth partition at \(u\rho\asymp1\) has derivatives
of order \(k\) bounded by \(C_k\rho^k\).
When the radial cutoff reaches this region, \(B^{-1}\lesssim\rho\).
Three integrations in \(u\) already make (16) integrable
with a bound no worse than \(C\rho^{-3}\).
Further integrations give the arbitrary
\((1+B\rho)^{-M_*}\) cutoff-tail gain.
For an injection derivative, increase the number of
integrations by one.

The phase derivatives in (14)–(15) are independent of the
possible small mismatch \(a-m\). They remain valid even when
an anomalous finite-injection threshold crosses the annulus.
No support cancellation after \(B\to\infty\) has been used.
This completes (5)–(7) on the whole annulus.

## 5. Summing to zero transfer and the joint consequence

Sum the annuli \(\rho=2^{-j}\rho_0\).
Their contributions are absolutely summable in a fixed
finite test seminorm:
\[
\sum_\rho \rho^2(\rho+|\Omega|)<\infty,\qquad
\sum_\rho(\rho^2+|\Omega|\rho)<\infty.
\tag{17}
\]
The ball \(|r|<\delta\) has the uniform bound
\[
C(\delta^3+|\Omega|\delta^2),
\tag{18}
\]
so there is no missing distribution supported only at \(r=0\)
in this actual common-cutoff construction.

For \(M_*>3\), splitting (7) at \(\rho=B^{-1}\) gives
\[
\left|\langle G_B(\Omega)-G(\Omega),\psi\rangle\right|
\le C(B^{-3}+|\Omega|B^{-2})P(\psi)
\tag{19}
\]
on the massive zero-transfer patch. The corresponding
first-injection-derivative bound is
\[
C(B^{-2}+|\Omega|B^{-1})P_1(\psi).
\tag{20}
\]
The canonical \(G\) here is the same joint radial limit
already constructed in all twelve momenta; the operations
above provide its stronger parameter-valued restriction.

Combining (6), (17) and (19), for \(R\ge1\),
\[
\widehat\chi_R G_B
\longrightarrow (2\pi)^4\delta(\Omega)W
\tag{21}
\]
locally strongly on this massive patch along **every**
joint path \(B(R)\to\infty\).
The cutoff error is controlled by
\(B^{-3}+R^{-1}B^{-2}\) after profile contraction.
The injection error is \(O(R^{-1})\) here.
Remote injection tails are handled by the existing global
uniform finite-order bound before using the local chart.

This proves the finite-\(B\) massive-zero-transfer interface.
It does not by itself give constants uniform as the outer
mass \(m\downarrow0\); those constants must be rescaled and
summed with the separate all-null and outer-soft geometries.

## 6. Verification and limits of evidence

The companion massive_uniform_checks.py verifies the exact
coordinate derivatives, phase derivatives, tensor transversality
reduction, radial-power integrals and dyadic exponents.
It also tests (11) numerically and samples the two phase
derivative inequalities across the compact axis chart.

The cutoff-uniform distribution estimates are the analytic
integration-by-parts argument above; they are not inferred
from those samples.

## Executable verification links

- [massive_uniform_checks.py](checks/dictionary_extensions/massive_uniform_checks.py) and [actual output](checks/dictionary_extensions/massive_uniform_results.json).

The [execution manifest and evidence guide](checks/dictionary_extensions/README.md) distinguish exact identities, numerical samples, and the analytic proofs above.
