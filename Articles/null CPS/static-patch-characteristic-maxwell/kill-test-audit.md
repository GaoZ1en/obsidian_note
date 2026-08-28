# Final Kill-Test Audit

Date: 2026-08-28.

## Verdict

**Freeze the static-patch project as a calibrated logarithmic/fixed-mode
reference.**  The last repair produces a correct incoming-only affine theorem
for every fixed $j$, but it does not produce the uniform full angular range,
completed affine CPS, or novelty needed for a paper core.

The next live project should return to the action-first composition of
Maxwell data on two intersecting null hypersurfaces.  Do not continue
static-patch mode calculations, and do not start Schwarzschild--de Sitter or
Nariai from this lane.

## 1. Full angular affine range

For arbitrary two-trace Goursat data on a fixed rectangle, the Kruskal master
equation gives

$$
\|\Psi_j\|_\infty
\lesssim I_0(c\sqrt{\lambda_j})
\sim e^{cj},
\tag{1.1}
$$

and positive constant traces give the corresponding lower growth.  Ordinary
rapid-polynomial angular decay is therefore insufficient for the
*unrestricted* Goursat problem.  An exponentially weighted, analytic-type
angular class would be natural for that larger problem.

The physical center-regular range is not the unrestricted problem.  Its
traces obey the exact $S_j$ relation.  On every fixed noninteger
Fourier--Laplace strip,

$$
\sup_x|S_j(x+i\sigma)|
\leq C_\sigma(1+j)^{2\sigma},
\tag{1.2}
$$

and this polynomial order is sharp.  Thus the exact compatibility removes
the evidence that the physical range must use analytic/Gevrey angular
weights.  A rapid-angular projective Hardy--Sobolev class is the natural
candidate.  However, (1.2) is a boundary estimate; a uniform compatible
interior estimate on one common Kruskal neighborhood is not proved.

Therefore the precise answer is split: analytic-type weights are necessary
for unrestricted two-trace data, are not forced by the $S_j$-compatible
boundary map, and remain undecided for the completed compatible interior
range.

Verdict:

| claim | status |
|---|---|
| `T1-aff(k,fixed-j)` | `proved` |
| unrestricted rapid-angular full-tower Goursat theorem | `false` |
| `T1-aff(k,full tower)` on the $S_j$-compatible candidate range | `conditional` |
| maximal completed `T1-aff` | `conditional` |

## 2. Incoming-only poles, moments, and corner compatibility

The exact decomposition is

$$
S_j(\omega)=(-1)^{j+1}
+\sum_{n=1}^j\frac{A_{jn}}{n+i\omega},
\qquad
A_{jn}=(-1)^n n\binom jn\binom{j+n}{n},
\tag{2.1}
$$

so

$$
f_+(u)=(-1)^{j+1}f_-(u)
+\sum_{n=1}^jA_{jn}
\int_u^\infty e^{n(u-v)}f_-(v)\,dv.
\tag{2.2}
$$

This produces a genuine fixed-$j$ compatibility theorem:

1. an incoming left tail $b_pe^{pv}$ with $p\leq j$ produces
   $-A_{jp}b_pU^p\log U$, so the resonant coefficient must vanish;
2. after those cancellations, future affine jets are incoming exponential
   moments $M_n=\int e^{-nv}(f_-(v)-a)dv$;
3. corner matching is the incoming-only endpoint relation
   $f_-(+\infty)=-f_-(-\infty)$.

The largest residue really satisfies

$$
A_{jj}=(-1)^j j\binom{2j}{j}
\sim(-1)^j4^j\sqrt{j/\pi}.
\tag{2.3}
$$

It is not canceled in the $j$-th jet.  It also does not obstruct a fixed
$C^k$ angular seminorm at large $j$, because fixed $k$ sees only fixed
$n\leq k$, for which $A_{jn}=O(j^{2n})$.  The full rational multiplier then
packages the diagonal exponential coefficients into the polynomial strip
bound (1.2).

Answer to the pole kill test: the poles yield real resonance/moment/corner
conditions at fixed $j$, but their large-$j$ exponential coefficients do not
survive as a fixed-order analytic angular obstruction.

## 3. Mellin converse

The former exact Mellin/Hardy characterization is split:

| claim | status | exact conclusion |
|---|---|---|
| `Mellin-nec` | `proved` | affine Taylor data give the meromorphic continuation, poles, residues, and strict-substrip Hardy control |
| `Mellin-Sobolev-suff` | `proved` | a boundary $H^m$ norm gives $R=e^{-\beta v}h$, $h\in H^m$; $m>1/2$ gives $R=o(e^{-\beta v})$ |
| `Mellin-Ckalph-suff` | `conditional` | affine Hölder regularity needs compatible shifted derivative/Besov bounds not proved here |

Thus no exact $C^{k,\alpha}$ converse is claimed from an unspecified
``standard Hardy bound''.

## 4. Local Peierls exactness

`T3-local` remains `proved`, now without the earlier circular gauge step.
For a co-closed compact source $j$,

$$
\delta G_1^\pm j=G_0^\pm\delta j=0,
\qquad
P_\xi G_1^\pm j=j.
\tag{4.1}
$$

Causal uniqueness gives $G_\xi^\pm j=G_1^\pm j$ in the declared covariant
gauge class.  The compact reduced-source lift is Cartesian smooth because
the regular jet $s_{jm}=\rho^{j+1}\widetilde s(\rho^2)$ gives

$$
s_{jm}Y_{jm}\,d\rho
=\widetilde s(\rho^2)H_{jm}(x)x_i dx^i.
\tag{4.2}
$$

Therefore `T3-gauge-uniq`, the center-Cartesian lift, and `T3-local` are all
`proved` under the compact-source, trivial-bundle, globally hyperbolic local
Green hypotheses stated in `11`.

## 5. Publication decision

The surviving result is mathematically useful but too narrow:

- exact fixed-$j$ all-pass-filter/moment structure;
- no proved new analytic/Gevrey full angular phase space;
- no uniform compatible interior theorem;
- no maximal affine symplectic range;
- no endpoint-extended `T2-aff`, `T4-bulk`, or completed `E-limit`;
- no new KMS or scattering novelty.

Consequently the static patch does not retain paper potential on the present
evidence.  The directory should remain read-only except for future factual
corrections.  The next research move is the intrinsic, action-first
composition problem on two intersecting null hypersurfaces, where corner
compatibility is structural rather than a mode-filter afterthought.

## 6. Evidence boundary

`scripts/incoming_affine_kernel_checks.py` verifies exact finite partial
fractions and coefficient identities and samples the two large-$j$ regimes.
It does not prove (1.1) for all data, the strip estimate for every $j$, the
Hardy inverse theorem, or the missing compatible interior estimate.  Those
statuses come from the written estimates and their stated gaps.
