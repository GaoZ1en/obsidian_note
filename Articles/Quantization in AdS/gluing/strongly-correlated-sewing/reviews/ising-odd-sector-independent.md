# Independent proof: four same-direction quarter jumps at half filling

## Result and scope

Under precisely the endpoint and filling assumptions below, there is a constant
\(C\), independent of \(N\), such that
\[
\boxed{\quad
\frac{|\det A_N|}{B_N}
\le C N^{-\delta},\qquad
\delta=\frac14-\frac{4\log 2-2}{\pi^2}
=0.171720396193944\ldots>0.
\quad}
\]
In particular the ratio tends to zero. This is a proved, nonoptimal power bound,
not a Fisher–Hartwig asymptotic. No finite-density Fisher–Hartwig theorem is used.

The independent derivation below was completed without reading a project main
text or another agent's derivation. A subsequently suggested simplification is
identified separately at the end. Numerical checks are recorded separately from
the proof. No nonvanishing hypothesis on \(\det A_N\) is needed.

## 1. Definitions, endpoint convention, and hypotheses

Let \(M=2N\), and let
\[
z_k=e^{2\pi i k/M},\qquad k\in\mathbb Z/M\mathbb Z.
\]
Use the normalized discrete scalar product
\[
\langle u,v\rangle_M=\frac1M\sum_{k=0}^{M-1}\overline{u(z_k)}v(z_k).
\]
Let \(P=P_N\) project onto the orthonormal modes
\(1,z,\ldots,z^{N-1}\), and write \(Q=I-P\).

The four endpoints are
\[
t_j=e^{i\theta_j},\qquad
\theta_j=\frac{2\pi(k_j+1/2)}M.
\]
They are bond midpoints, never sampling nodes. Their cyclic order is fixed and
their limiting angles are distinct. Consequently all four arc lengths, measured
in numbers of nodes, are at least \(\varepsilon M\) for some fixed
\(\varepsilon>0\) and all sufficiently large \(M\). All constants in the proof
can be chosen uniformly when this separation parameter is fixed.

In positive orientation, \(g\) takes the values \(1,i,-1,-i\) on the successive
arcs, up to a harmless global phase. Every jump is multiplication by \(i\),
including the last-to-first jump. Define
\[
A_N=(P\,\operatorname{diag}(g)\,P)|_{\operatorname{ran}P}.
\]
Let \(A\) be either union of two alternating arcs and let
\(K_A=(\chi_A P\chi_A)|_{\ell^2(A)}\). Set
\[
B_N=\left|\det\bigl[I+(i-1)K_A\bigr]\right|.
\]
The assumption that \(N\) is even is allowed but is not needed by the proof.
The exact half-filling relation \(M=2N\) is used essentially in the
finite-dimensional orthogonality argument below.

## 2. Hardy factorization and an exact discrete orthogonality

Define the analytic function in the open unit disk
\[
h(z)=\prod_{j=1}^4(1-z/t_j)^{-1/4},\qquad h(0)=1,
\]
using the analytic branches with value one at the origin. Boundary values are
always radial boundary values, evaluated away from the endpoints.

For \(\phi\in(0,2\pi)\),
\[
\arg(1-e^{i\phi})=\frac\phi2-\frac\pi2.
\]
It follows that \(z h(z)/\overline{h(z)}\) is constant on every arc, and
multiplies by \(i\) at every positively oriented endpoint crossing. Thus there
is a constant \(c\), with \(|c|=1\), such that
\[
g(z)=c z\frac{h(z)}{\overline{h(z)}},\qquad
\overline{g(z)}h(z)=\overline c z^{-1}\overline{h(z)}.
\tag{2.1}
\]
These identities hold exactly at every sampling node.

Let
\[
h(z)=\sum_{n\ge0}h_nz^n,\qquad
q_N(z)=\sum_{n=0}^{N-1}h_nz^n.
\]
Since \(h_0=1\) and discrete Fourier orthogonality is exact through degree
\(N-1\),
\[
q_N\in\operatorname{ran}P,
\qquad \|q_N\|_M^2=\sum_{n=0}^{N-1}|h_n|^2\ge1.
\tag{2.2}
\]
Also
\[
P\bigl(z^{-1}\overline{q_N}\bigr)=0.
\tag{2.3}
\]
Indeed its frequencies are \(-1,-2,\ldots,-N\), which modulo \(M=2N\)
are \(2N-1,\ldots,N\), all unoccupied. This is the step that explicitly handles
finite-density sampling; no continuous Hardy projection is substituted for the
discrete projection.

Combining (2.1)–(2.3),
\[
\begin{split}
\|A_N^*q_N\|_M
&=\|P(\overline g q_N-\overline c z^{-1}\overline{q_N})\|_M\\
&\le 2\|h-q_N\|_M.
\end{split}
\tag{2.4}
\]
Therefore it suffices to control this one sampled approximation error.

## 3. Independent sampled approximation estimate

### 3.1 Uniform coefficient estimate

Put
\[
a_n=\frac{(1/4)_n}{n!},\qquad
c_j=\prod_{\ell\ne j}(1-t_j/t_\ell)^{-1/4}.
\]
The same radial branch convention is used in \(c_j\). Uniform endpoint
separation implies
\[
h_n=a_n\sum_{j=1}^4c_jt_j^{-n}+r_n,
\qquad |r_n|\le C(n+1)^{-7/4}.
\tag{3.1}
\]
Here is an elementary justification, including the remainder regularity.
Subtract the four leading singularities:
\[
R(z)=h(z)-\sum_{j=1}^4c_j(1-z/t_j)^{-1/4}.
\]
Near \(t_j\), the remaining singular part has the form
\((1-z/t_j)^{3/4}d_j(z)\), with \(d_j\) analytic near \(t_j\); the other
terms are analytic there. Thus the boundary function \(R\) is continuous and
absolutely continuous, and, in a local angular coordinate \(x\), its first and
second derivatives have bounds
\[
|R'(x)|\le C(1+|x|^{-1/4}),\qquad
|R''(x)|\le C(1+|x|^{-5/4}).
\]
Use a smooth partition into the four endpoint neighborhoods and their
complement. For the Fourier transform of \(R'\), the part \(|x|<1/n\) is
\(O(n^{-3/4})\). Integration by parts once on \(|x|\ge1/n\) gives the same
bound, since
\(n^{-1}\int_{1/n}^{O(1)}x^{-5/4}\,dx=O(n^{-3/4})\).
A further integration by parts, justified by absolute continuity of \(R\),
gives \(R_n=O(n^{-7/4})\). This proves (3.1). The neighborhoods and constants
are uniform under fixed endpoint separation.

### 3.2 Pointwise Taylor tail

The coefficients \(a_n\) are positive, decreasing, and
\(a_n=O((n+1)^{-3/4})\). Abel summation yields, for \(w\) on the unit circle
with \(w\ne1\),
\[
\left|\sum_{n=N}^{\infty}a_nw^n\right|
\le\frac{2a_N}{|1-w|}.
\]
The remainder in (3.1) is absolutely summable and its tail is
\(O(N^{-3/4})\). Consequently
\[
|h(z)-q_N(z)|
\le C N^{-3/4}\left(1+\sum_{j=1}^4|z-t_j|^{-1}\right),
\qquad |z|=1,\quad z\ne t_j.
\tag{3.2}
\]
The boundary identity is legitimate: the binomial series converge at all
nonsingular boundary points by Abel summation, and the remainder series
converges absolutely.

### 3.3 Exact midpoint sampling sum

For every bond midpoint \(t_j\),
\[
\sum_{k=0}^{M-1}|z_k-t_j|^{-2}=\frac{M^2}{4}.
\tag{3.3}
\]
For example this follows from
\(\sum_{k=0}^{M-1}\csc^2(x+k\pi/M)=M^2\csc^2(Mx)\),
with \(x=\pi/(2M)\), and \(|1-e^{i\phi}|^2=4\sin^2(\phi/2)\).
Squaring (3.2), using Cauchy–Schwarz on the finite sum over four endpoints,
and applying (3.3), gives
\[
\|h-q_N\|_M^2
\le C N^{-3/2}(1+M)
\le C N^{-1/2}.
\tag{3.4}
\]
Equations (2.2), (2.4), and (3.4) prove
\[
\boxed{\ \sigma_{\min}(A_N)\le C N^{-1/4}.\ }
\tag{3.5}
\]
No aliasing terms have been discarded. They are controlled by the sampled
error in (3.4), followed by the exact orthogonality (2.3).

## 4. Exact determinant inequalities

Let
\[
V_N=\operatorname{Tr}K_A(1-K_A),\qquad
D_N=\operatorname{Tr}_{\operatorname{ran}P}(I-A_N^*A_N).
\]
The projection identities imply
\[
V_N=\sum_{x\in A,\ y\notin A}|P_{xy}|^2
=\frac12\sum_{x,y}|\chi_A(x)-\chi_A(y)|^2|P_{xy}|^2,
\tag{4.1}
\]
\[
D_N=\frac12\sum_{x,y}|g(x)-g(y)|^2|P_{xy}|^2.
\tag{4.2}
\]
Across \(A\) and its complement the values of \(g\) differ by a factor
\(\pm i\), so their squared difference is exactly two. For all pairs,
\[
|g(x)-g(y)|^2\ge2|\chi_A(x)-\chi_A(y)|^2.
\]
Hence the following inequality is exact:
\[
D_N\ge2V_N.
\tag{4.3}
\]

All singular values \(s_1\le\cdots\le s_N\) of \(A_N\) lie in \([0,1]\).
Using \(\log s\le-(1-s^2)/2\) on all but the smallest gives
\[
|\det A_N|
\le e^{1/2}s_1e^{-D_N/2}
\le e^{1/2}s_1e^{-V_N}.
\tag{4.4}
\]
If any singular value is zero, this bound holds directly without taking its
logarithm.

If \(\lambda\in[0,1]\) is an eigenvalue of \(K_A\), then
\[
|1+(i-1)\lambda|^2=1-2\lambda(1-\lambda).
\]
For \(0\le x\le1/4\), concavity of the logarithm gives the chord bound
\[
\log(1-2x)\ge-4(\log2)x.
\]
Thus
\[
\log B_N\ge-2(\log2)V_N.
\tag{4.5}
\]
In particular \(B_N>0\). Combining (3.5), (4.4), and (4.5),
\[
\frac{|\det A_N|}{B_N}
\le C N^{-1/4}\exp\bigl[(2\log2-1)V_N\bigr].
\tag{4.6}
\]

## 5. The elementary variance asymptotic and leakage constant

For \(r\not\equiv0\pmod M\), the half-filled projection kernel satisfies
\[
|P_r|^2
=\frac{\sin^2(\pi r/2)}{M^2\sin^2(\pi r/M)}
=\begin{cases}
0,&r\text{ even},\\
[M^2\sin^2(\pi r/M)]^{-1},&r\text{ odd}.
\end{cases}
\tag{5.1}
\]
Choose \(R=\lfloor\eta M\rfloor\), with fixed \(\eta>0\) smaller than the
fractional length of every arc and smaller than \(1/2\). For
\(1\le r\le R\), a shift by \(r\) crosses each endpoint in exactly \(r\)
positions, without crossing a second endpoint. Therefore
\[
\sum_x|\chi_A(x+r)-\chi_A(x)|^2=4r,
\qquad
\sum_x|g(x+r)-g(x)|^2=8r.
\tag{5.2}
\]
The shifts \(r\) and \(M-r\) make identical contributions. All remaining
shifts have \(\sin(\pi r/M)\) bounded away from zero; their total contribution
to either trace is \(O(1)\). Consequently
\[
V_N=4\sum_{r=1}^{R}r|P_r|^2+O(1)
=\frac4{\pi^2}\sum_{\substack{1\le r\le R\\r\text{ odd}}}\frac1r+O(1)
=\frac2{\pi^2}\log N+O(1).
\tag{5.3}
\]
The replacement of \(\sin(\pi r/M)\) by \(\pi r/M\) costs only \(O(1)\):
its summand error is \(O(r/M^2)\), summable through \(R\).

For completeness, the same computation gives the independent leakage
asymptotic
\[
D_N=8\sum_{r=1}^{R}r|P_r|^2+O(1)
=\frac4{\pi^2}\log N+O(1).
\tag{5.4}
\]
Equation (5.4) is not necessary once (4.3) is used.

Finally, inserting (5.3) in (4.6) proves the claimed exponent
\[
-\frac14+\frac{4\log2-2}{\pi^2}=-\delta<0.
\]
Equivalently the two separate bounds are
\[
|\det A_N|\le C N^{-1/4-2/\pi^2},\qquad
B_N\ge c N^{-4\log2/\pi^2}.
\]

## 6. Numerical checks performed independently

These checks support the conventions and power counting, but are not needed
for the proof. They used NumPy directly, without creating any data files.
Endpoints were
\(k_j=\lfloor M(0.07,0.26,0.55,0.81)_j\rfloor\), always interpreted as bond
midpoints. The following are actual computed values:

| N | determinant ratio | smallest singular value | D_N | V_N |
|---:|---:|---:|---:|---:|
| 32 | 0.012752537884990214 | 0.007736268467722952 | 2.1396675914107184 | 0.924766963294868 |
| 64 | 0.00018233958063290385 | 0.00010921441061547187 | 2.4201785539488583 | 1.0673510917731255 |
| 128 | 0.002240537350712284 | 0.001347806016376505 | 2.7006302021485658 | 1.20726261967248 |
| 256 | 0.03923992664250331 | 0.023625152244803434 | 2.981726465743183 | 1.3476264666475486 |

The determinant ratio need not be monotone; parity-dependent cancellations
are compatible with the uniform upper bound. The logarithmic trace increments
match (5.3) and (5.4).

The Taylor coefficients were independently constructed from
\[
n h_n=\frac14\sum_{r=1}^{n}\left(\sum_{j=1}^4t_j^{-r}\right)h_{n-r}.
\]
A direct sampled-error check gave:

| N | N^(1/4) norm(h-q_N) | N^(1/4) norm(A_N* q_N) | norm(q_N) |
|---:|---:|---:|---:|
| 32 | 0.2429617239255735 | 0.23866957906175448 | 1.0673386698757192 |
| 64 | 0.24291174924731732 | 0.24362231687164168 | 1.0735993427025163 |
| 128 | 0.2437914817892764 | 0.2495364482314613 | 1.079563061741413 |
| 256 | 0.24447676447815117 | 0.2618054116319329 | 1.0831120241236933 |
| 512 | 0.24449958504611904 | 0.26000786696564726 | 1.0859374515735638 |
| 1024 | 0.24453590414376486 | 0.25973464025328524 | 1.0878535767430697 |

The variation of \(g/(zh/\bar h)\) over the sampling nodes was at most
\(8.3\times10^{-14}\); the relative error in (3.3) was at most
\(3.1\times10^{-13}\) in this check. Every norm in the table uses the normalized
discrete scalar product.

A special-case consistency check is also available analytically. For four
exactly equally spaced midpoints, \(g(k+M/4)=ig(k)\), so the discrete Fourier
transform of \(g\) is supported on frequencies congruent to one modulo four.
For \(N=4m+2\), the occupied residue-class dimensions are \(m+1,m+1,m,m\).
The compressed multiplication map cyclically shifts these classes and is
rank deficient. Thus \(\det A_N=0\) exactly in this case, consistent with a
one-sided bound and showing why no positive numerator lower bound should be
assumed without further hypotheses.

## 7. Subsequent collaborative simplification, checked separately

After the independent derivation above, the parent agent proposed replacing
the Taylor/Darboux argument by truncating the four binomial factors separately.
The following verifies that replacement, including a bound needed in its
product estimate. This section is a collaboration check, not an independently
originated second proof.

Set
\[
m=\lfloor(N-1)/4\rfloor,\qquad
b_{j,m}(z)=\sum_{n=0}^{m}a_n(z/t_j)^n,\qquad
p_N(z)=\prod_{j=1}^4b_{j,m}(z).
\]
Then \(\deg p_N\le N-1\) and \(p_N(0)=1\), so both (2.2) and (2.3) hold
with \(p_N\) in place of \(q_N\).

Write \(d_j=|z-t_j|\) and \(f_j(z)=(1-z/t_j)^{-1/4}\). Abel summation gives
\[
|f_j(z)-b_{j,m}(z)|\le C(m+1)^{-3/4}d_j^{-1}.
\tag{7.1}
\]
One also needs, uniformly in \(m\) and \(z\ne t_j\),
\[
|b_{j,m}(z)|\le C d_j^{-1/4}.
\tag{7.2}
\]
If \((m+1)d_j\le1\), use
\(\sum_{n=0}^m a_n\le C(m+1)^{1/4}\le C d_j^{-1/4}\).
If \((m+1)d_j\ge1\), combine the full-factor bound
\(|f_j|=d_j^{-1/4}\) with (7.1); its remainder is at most a constant times
\(d_j^{-1/4}\).

By fixed endpoint separation, at most one of the four \(d_j\) can be small.
In the telescoping identity for \(\prod f_j-\prod b_{j,m}\), the term whose
tail belongs to that near endpoint is bounded by
\(C(m+1)^{-3/4}d_j^{-1}\), because every other factor is bounded. Any other
term can acquire at most one factor \(d_j^{-1/4}\), by (7.2), which is absorbed
into \(C(1+d_j^{-1})\). Away from all endpoints every factor is bounded.
Thus
\[
|h(z)-p_N(z)|
\le C(m+1)^{-3/4}\left(1+\sum_jd_j^{-1}\right).
\tag{7.3}
\]
The exact midpoint sum (3.3) now gives
\(\|h-p_N\|_M=O(N^{-1/4})\), and (2.4) yields (3.5) without any coefficient
asymptotic for the product \(h\). This is a shorter fully valid replacement for
Section 3.

The proposed exact trace decomposition is also correct. Label the successive
arcs \(A_1,B,A_2,C\), and take \(A=A_1\cup A_2\). With \(P_{X,Y}\) the spatial
block of \(P\) from \(Y\) to \(X\),
\[
D_N=2V_N+4\|P_{A_1,A_2}\|_{\mathrm{HS}}^2
            +4\|P_{B,C}\|_{\mathrm{HS}}^2.
\tag{7.4}
\]
Across alternating sets the squared \(g\)-difference is two; within either
alternating pair it is four. Counting each unordered pair of arcs once in
(4.2) gives exactly (7.4), with no factor-of-two ambiguity. The two extra
Hilbert–Schmidt norms are \(O(1)\) because their arcs are separated by a
positive macroscopic gap. Positivity alone already proves (4.3).

## 8. What is and is not established

- The stated ratio limit and the explicit nonoptimal power bound are proved
  under the original bond-midpoint, separated-endpoint, same-direction-jump,
  and half-filling assumptions; no extra hypothesis was introduced.
- The proof permits arbitrary endpoint rounding sequences satisfying those
  assumptions, and either choice of alternating arcs.
- It does not prove the optimal power, an asymptotic coefficient, or a
  nonzero numerator asymptotic. Exact zeros and oscillatory cancellations
  are allowed.
- Midpoint placement is used quantitatively in (3.3). A uniformly bounded
  fractional offset from every lattice node would still give an
  \(O(M^2)\) inverse-square sum, but unrestricted approaches to a node are
  not covered by this particular estimate.
- The continuous Hardy factorization alone is not the proof: the discrete
  tail norm and the exact frequency exclusion at \(M=2N\) are indispensable.
