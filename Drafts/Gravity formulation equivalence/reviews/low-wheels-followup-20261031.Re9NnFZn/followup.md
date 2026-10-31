# Later supplied follow-up: global heat limits and tadpole continuity

## Status and result

This is a separately saved response to the parent's later requests for expanded noncompact trace estimates and for the translated-bump test. The [initial independent report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-independent-20261031.cbreRi7V/proof.md>) and its evidence remain frozen and unchanged. No other new reviewer work was read. The parent subsequently supplied a compatible Hilbert–Schmidt placement for the smoothing terms; that placement is included transparently below, not represented as an additional independent discovery.

**The quadratic and cubic heat limits on the all-Sobolev physical domain are justified by global trace-class factorizations, uniform localized heat-subtraction bounds, and density. The first-wheel prescription is not continuous in the all-Sobolev topology: the proposed translated bumps give a direct counterexample on H3.**

The distinction is important: a smoothing term can have a finite cyclically represented heat-trace limit without its original unheated, unsandwiched ordering being trace class. No implication `AB in S1 implies BA in S1` is used.

## 1. Exact projections and positive-time trace identities

Retain the initial report's notation

\[
C=\delta D\Delta^{-1},\quad Q=RC,\quad
h=\delta\Delta^{-1}R,\quad J=\operatorname{ad}_j,
\quad B=hJ.
\]

All operators are on the full degree direct sum until compressed. `Q` is an orthogonal projection commuting with `Delta` and with BV parity; it is not assumed properly supported. Since `Qh=h`, the two-sided compressed operator is exactly

\[
Q B Q=BQ,\qquad (QBQ)^n=B^nQ.
\]

For `j in L2 cap Linfinity` and `n>=2`, the initial report's factorization gives

\[
hJh\in\mathfrak S_2,\qquad Je^{-t\Delta}\in\mathfrak S_2,
\qquad B^n e^{-t\Delta}\in\mathfrak S_1.
\]

Consequently, at **each** positive time,

\[
\begin{aligned}
\operatorname{Tr}_{QE}(A^n e^{-t\Delta_Q})
 &=\operatorname{Tr}_E(B^nQe^{-t\Delta})\\
 &=\operatorname{Tr}_E(QB^ne^{-t\Delta})
 =\operatorname{Tr}_E(B^ne^{-t\Delta}).                 \tag{F1}
\end{aligned}
\]

The second equality uses only multiplication of a trace-class operator by the bounded `Q`. It is not a formal kernel manipulation. It holds in every degree; multiplication by the bounded parity operator gives the supertrace identity. Thus both graded projections are accounted for before taking any limit. Equation (F1) permits the global proof below to work with `B`, but the coexact symbol and its subprincipal term are still needed to derive the actual coefficients, as in the initial report.

## 2. Why the sharp projector's nonproper tail is controlled

Let `H` be a uniformly properly supported odd-class parametrix for `delta Delta^(-1)` of order `-1`. On either fixed bounded-geometry background one obtains it by a uniform classical inverse parametrix for `Delta`, followed by `delta`, with a kernel cutoff equal to one near the diagonal. The cutoff changes no homogeneous symbol.

The gapped true inverse differs from that parametrix by a globally Sobolev-smoothing operator. Indeed if `Delta E=1-T` is the parametrix identity with uniformly properly supported smoothing `T`, then

\[
\Delta^{-1}-E=\Delta^{-1}T,
\]

and the uniform elliptic Sobolev estimates plus the gap make the right side bounded from every `H^{-s}` to every `H^r`. Applying `delta` preserves this statement with shifted exponents.

The sharp cutoff contribution is also globally Sobolev-smoothing:

\[
\delta\Delta^{-1}P:H^{-s}\longrightarrow H^r
\quad\hbox{for every finite }r,s,
\]

because the spectral support of `P` is bounded and `delta Delta^(-1/2)` is bounded and intertwines the degree Laplacians. This does **not** require the sharp projector kernel to have rapid off-diagonal decay or to be properly supported.

Therefore

\[
h=H+S,\qquad
S=\Delta^{-N}T_N\Delta^{-N},\quad \|T_N\|<\infty
\quad\hbox{for every finite }N.                       \tag{F2}
\]

Products containing `S` are controlled by (F2), not by pretending that its kernel is a local symbol.

### 2.1 A useful Hilbert–Schmidt estimate

For `q>3/4`, the heat representation and the bounded heat diagonal give

\[
\|M_j\Delta^{-q}\|_2+
\|\Delta^{-q}M_j\|_2\le C_q\|j\|_2.                 \tag{F3}
\]

The proof integrates `s^{q-1} s^{-3/4}` at zero; the gap controls large time. Matrix multipliers are treated with their finite-dimensional norms. In particular

\[
\|J S J\|_1
\le C_N\|j\|_2^2\|T_N\|,
\qquad N>3/4.                                        \tag{F4}
\]

This is an actual trace-norm estimate for the cyclically sandwiched ordering `JSJ`.

### 2.2 The ordering that need not be unheated trace class

Consider a term with the smoothing factor first,

\[
F_n(t)=\operatorname{Tr}\left(SJ(KJ)^{n-1}e^{-t\Delta}\right),
\quad n\ge2,
\]

where `K` is any of the bounded operators `H` or `h`, or a product word with the same bounded-factor estimates. At positive time the original product is trace class: `SJ(KJ)^{n-2}K` and `Je^{-t Delta}` are Hilbert–Schmidt. Cyclicity for two Hilbert–Schmidt factors is therefore legitimate. With (F2), it gives exactly

\[
F_n(t)=\operatorname{Tr}\left[
 (Je^{-t\Delta}\Delta^{-N})T_N
 (\Delta^{-N}J(KJ)^{n-2}K)\right].                    \tag{F5}
\]

Both displayed outer factors are Hilbert–Schmidt. If `0<alpha<=1` and `N-alpha>3/4`, spectral calculus gives

\[
\|J(e^{-t\Delta}-1)\Delta^{-N}\|_2
\le C_N t^\alpha\|j\|_2.                             \tag{F6}
\]

Thus (F5) converges in the trace norm of that **displayed product** to its `t=0` value, with

\[
|F_n(t)-F_n(0)|
\le C_N t^\alpha\|j\|_2^2
 \|KJ\|^{n-2}\|K\|\|T_N\|.                          \tag{F7}
\]

The symbol `F_n(0)` here denotes the trace of the product in (F5) at zero, equivalently a cyclic expression involving `JSJ`. It does not assert that `SJ(KJ)^{n-1}` itself is in `S1`. This distinction addresses the ordering issue explicitly.

For the other placements, use the telescoping identity

\[
(hJ)^n-(HJ)^n
=\sum_{k=0}^{n-1}(hJ)^k(SJ)(HJ)^{n-1-k}.             \tag{F8}
\]

The `k=0` term is exactly (F5). For every `k>=1`, the unheated expression is already trace class, since it factors as

\[
(hJ)^{k-1}h\,(JSJ)\,(HJ)^{n-1-k}.
\]

Its norm is bounded by (F4) times the displayed bounded factors, and multiplying on the right by the strongly convergent heat semigroup converges in trace norm. Equation (F8) handles all smooth-factor placements, including repeated smoothing factors, without an extra assumption on their tails.

These estimates prove that the difference between the true operator and the proper local model contributes a finite, continuous heat-trace limit for `n>=2`. They also prove finite sharp-cutoff dependence at this degree. They do not claim trace-classness of every unheated ordering.

## 3. Uniform local heat subtraction, not only coefficient integrability

It remains to analyze the proper local model `(HJ)^n`, for `n=2,3`. A local coefficient being integrable would not suffice by itself; here are the uniform estimates that complete the argument.

Fix a uniformly locally finite normal-coordinate cover, with a partition `sum_i chi_i^2=1`. Choose enlarged cutoff functions `psi_i` equal to one on the finite propagation-radius neighborhood relevant to a product of three copies of the properly supported `H`. The geometry, frames, cutoffs, and their derivatives have uniform bounds; their enlarged supports have uniformly finite overlap. Set

\[
a_i(j)=\|\psi_i j\|_{H^{s_0}},
\qquad \sum_i a_i(j)^2\le C\|j\|_{H^{s_0}}^2,         \tag{F9}
\]

where a sufficiently large finite integer `s0` is fixed once for the finite symbol/trace-class estimates. No minimal regularity threshold is claimed or needed; the actual domain is all-Sobolev.

Because `H` is properly supported, every localized word `chi_i^2(HJ)^n` involves only `psi_i j`; an additional right cutoff `psi_i` is exactly one on its possible input support. The trace partition is `Tr(chi_i^2 (HJ)^n e^{-t Delta})=Tr(chi_i (HJ)^n e^{-t Delta} chi_i)`. No cutoff is commuted through the heat operator. This localized word may be completed on a fixed-size compact coordinate model. The actual heat kernel in the trace can be replaced, on this neighborhood, by the compact-model heat kernel with a remainder of arbitrarily high small-time order. A local heat parametrix or the standard off-diagonal Gaussian estimate proves this uniformly; the gap is not needed for that short-time comparison. All matrix-valued lower heat coefficients are retained.

On each such compact model, split the localized operator into

\[
\chi_i^2(HJ)^n\psi_i=U_{n,i}(j)+K_{n,i}(j),             \tag{F10}
\]

where `U` contains the finite classical symbol terms of degrees `-n` through `-3`, with a fixed large-covector cutoff, and `K` has order `-4`. Every coefficient and remainder is multilinear of degree `n` in `j`; finite symbol seminorms are bounded by `C a_i(j)^n`.

Two kinds of estimates now enter, and they should not be conflated.

1. **Trace-class remainder.** The compact-model nuclear estimate for an order-minus-four operator in dimension three gives
   
   \[
   \|K_{n,i}(j)\|_1\le C a_i(j)^n.                    \tag{F11}
   \]
   
   It follows, for example, by expanding the fixed-size local kernel in Fourier series: finitely many integrable symbol derivatives and order less than minus three give a summable rank-one expansion. With `0<alpha<1/2`, the same estimate applies to `K Delta_i^alpha`, and hence
   
   \[
   \|K_{n,i}(j)(e^{-t\Delta_i}-1)\|_1
   \le C_\alpha t^\alpha a_i(j)^n.                  \tag{F12}
   \]
   
   The compact-model comparison remainder has the same summable bound with a higher positive power of `t`.

2. **Finite symbol part.** The trace of `U e^{-t Delta_i}` is a finite collection of parameter-dependent homogeneous-symbol integrals. Their coefficients are bounded by the same finite seminorms. Odd-class parity eliminates every degree-minus-three sphere integral, hence every heat logarithm. For `n=2`, the only negative power is `c_{2,i}(j)t^{-1/2}`; for `n=3`, there is none. After this stated subtraction the radial integrals and the lower heat-symbol integrals are uniformly bounded for `0<t<=1`, and converge to their canonical finite parts. Concretely,
   
   \[
   |\operatorname{Tr}(U_{n,i}e^{-t\Delta_i})
       -\mathbf1_{n=2}c_{2,i}(j)t^{-1/2}|
   \le C a_i(j)^n.                                  \tag{F13}
   \]
   
   This bound is obtained by performing the finitely many radial integrals before summing the chart: the order-minus-two integral has one `t^{-1/2}` term and a bounded remainder, while the order-minus-three odd integral has zero logarithmic coefficient. The remaining parameter-symbol terms have positive heat degree and obey the same bound. It is a bound on the renormalized trace, not on the trace norm of `U` itself; that operator can still fail to be trace class.

Equations (F11)–(F13), together with the finite proper-support radius, are the needed uniform remainder control. They use the full local symbol of `H` and the actual matrix heat kernel, rather than replacing either by a scalar Laplacian. The scalar principal radial integral only determines the leading coefficient already derived in the initial report.

For `n=2`, `sum_i a_i^2` is controlled by (F9). For `n=3`,

\[
\sum_i a_i^3\le(\sup_i a_i)\sum_i a_i^2
\le C\|j\|_{H^{s_0}}^3.                              \tag{F14}
\]

Thus the local remainders, including their trace-norm parts, are summable independently of `t`. Adding the global smoothing bounds from §2 yields, for some finite Sobolev order `s` and all `0<t<=1`,

\[
\boxed{
\left|W_{n,p}(t;j)-\mathbf1_{n=2}c_{2,p}(j)t^{-1/2}\right|
\le C\|j\|_{H^s}^{\,n},\qquad n=2,3.}                \tag{F15}
\]

Here

\[
c_{2,p}(j)=\frac{m_p}{3\pi^{3/2}}
\int(w\cdot w-f\cdot f)\,dV.
\]

The constants depend on the fixed geometry, cutoff, operators, and chosen finite Sobolev order, but **not** on the spatial support of `j`. The same estimates hold for the polarized multilinear forms; equivalently one can use the polarization identity applied to the homogeneous degree-`n` expressions. Consequently their differences satisfy the usual uniform Lipschitz estimate on bounded `H^s` sets.

### 3.1 Density gives the actual heat limit

Let

\[
r_{n,t}(j)=W_{n,p}(t;j)
 -\mathbf1_{n=2}c_{2,p}(j)t^{-1/2}.
\]

Take compact smooth cutoffs `j_k -> j` in `H^s`, possible for every all-Sobolev `j` on the fixed complete bounded-geometry background. Uniform polarization of (F15) gives

\[
\sup_{0<t\le1}|r_{n,t}(j)-r_{n,t}(j_k)|
\le C\|j-j_k\|_{H^s}
 (\|j\|_{H^s}+\|j_k\|_{H^s})^{n-1}.                 \tag{F16}
\]

For fixed `k`, the compact-support heat calculation proves that `r_{n,t}(j_k)` has a limit. First choose `k` so that (F16) is small, and then send `t` to zero. This proves that `r_{n,t}(j)` has an actual limit and that the limit is the continuous extension of the compact-support finite part. It is not merely a formal subtraction of locally integrable coefficients.

In the BV sum `sum_p (-1)^(1-p)m_p=0`, so the quadratic `t^{-1/2}` subtraction is identically zero. The cubic subtraction was already zero. Therefore **the actual positive-time BV traces for both the quadratic and cubic wheels converge on the all-Sobolev physical stationary domain**. The ordinary quadratic wheel still requires its explicit power subtraction. The ordinary cubic wheel converges as well. No unheated trace-class claim is inferred from these limits.

## 4. Later supplied translated-bump test

The proposed test works, and it is distinct from the retained-band example.

Work on `H3`, where the first-wheel coefficient in the initial report is homogeneous. Fix a nonnegative nonzero `phi in C_c^infinity(H3)` and choose isometries `g_i` whose image supports are pairwise disjoint. Let

\[
\phi_i=\phi\circ g_i^{-1},\qquad
\phi_N=N^{-3/4}\sum_{i=1}^N\phi_i,
\qquad j_N=(0,\phi_N e_0).
\]

For every nonnegative integer `m`, the geometric derivative Sobolev norm has disjoint-support orthogonality, giving

\[
\|j_N\|_{H^m,\mathrm{geom}}^2
=N^{-3/2}N\|j_1\|_{H^m,\mathrm{geom}}^2
=N^{-1/2}\|j_1\|_{H^m,\mathrm{geom}}^2.
\]

The fixed spectral and geometric Sobolev norms are equivalent. Hence for every finite real `s>=0`,

\[
\|j_N\|_{H^s}=O_s(N^{-1/4})\longrightarrow0,
\qquad \|j_N\|_\infty=N^{-3/4}\|j_1\|_\infty\longrightarrow0.     \tag{F17}
\]

Thus `j_N -> 0` in the Fréchet all-Sobolev topology, not merely in one norm. Meanwhile

\[
\int\phi_N\,dV=N^{1/4}\int\phi\,dV\longrightarrow+\infty.       \tag{F18}
\]

At `Lambda^2=6`, the initial report proved `C_Lambda>0`. The compact-support canonical BV first wheel therefore satisfies

\[
\mathcal T_{1,\mathrm{BV}}(j_N)
=C_\Lambda\int\phi_N\,dV\longrightarrow+\infty.       \tag{F19}
\]

Equivalently, if `F_N=e0^{-1}f_N=phi_N 1`, then `integral tr F_N=3 integral phi_N` and the coefficient is `C_Lambda/3`. All coframes can be chosen uniformly nondegenerate; positivity already makes this immediate.

This proves that the nonzero compact-support tadpole admits **no continuous extension to the all-Sobolev physical coefficient space that agrees with the compact-support prescription**. It also excludes a continuous extension at zero in any fixed Sobolev norm of that sequence. A new tadpole normalization can of course define a different functional.

Each `j_N` is compactly supported, but its support expands with `N`. It is **not** claimed to be retained or stationary. The separate radial analytic-continuation argument proves that the bounded radial scalar band and `L1` intersect trivially; the separate positive radial example proves an actual retained first-order spatial divergence. These are different counterexamples with different domains, not interchangeable versions of the same argument.

## 5. Scope of the follow-up

The result uses the standard uniform classical pseudodifferential/heat calculus on the two specified fixed bounded-geometry complete backgrounds, the established positive gap, and physical `j in intersection_s H^s`. It supplies the global smoothing estimate, the correct cyclic placements, the uniform renormalized heat bound, and the density limit argument omitted from the compressed account in the frozen initial report.

No new CAS run was needed: the issue was trace ideals and uniform analytic estimates, not finite fiber algebra. The actual symbol/normalization evidence remains the 15 exact checks in the initial frozen directory. No continuum Ward or QME statement, no arbitrary quotient theorem, and no uniform degeneration limit is claimed.
