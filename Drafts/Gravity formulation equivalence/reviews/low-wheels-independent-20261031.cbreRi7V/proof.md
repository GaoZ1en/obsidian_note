# Independent investigation of the first three complete-AdS UV wheels

## Result

**For a smooth compactly supported physical insertion, all three low wheels have canonical symbol finite parts. There are no ultraviolet heat logarithms. The first two ordinary degree-block traces generally have a power divergence; the actual BV supertrace cancels these powers. This does not solve the linear spatial-integrability problem on the actual stationary graph.**

More precisely, on either fixed complete geometry in the question:

- For compactly supported smooth physical `j`, the degree-block heat finite parts of `A_j`, `A_j^2`, and `A_j^3` exist. In dimension three the actual operator is odd-class, including its coexact compression. The sharp low spectral projection changes finite smoothing contributions, not that ultraviolet symbol parity.
- The ordinary first and second wheels can contain `t^(-1/2)` terms, with the explicit coefficients in §3. There is no `t^(-1)` first-wheel term, and no logarithmic term in any of the three expansions. The cubic wheel has a finite heat limit, although it need not be trace class.
- With BV parities `(odd, even, odd)` on coexact form degrees `(0,1,2)`, the power terms cancel. All three compact-support BV heat supertraces therefore have finite limits.
- The quadratic and cubic prescriptions extend continuously to smooth all-Sobolev `L2` physical fields, including the actual small stationary graph. A separate linear spatial pairing is required for the first wheel; `L1` is sufficient but does not follow from smooth all-Sobolev regularity.
- There is an actual retained-band counterexample to inferring the first-wheel prescription from the Schatten-four result. On `H3`, with sharp `Lambda^2=6`, the linear BV tadpole for `j=(0,phi e0)` is a **nonzero positive constant times** `integral phi`. The positive retained radial field in the established trace obstruction has infinite integral. This obstruction survives at first order on `j=x+y(x)`, because `y=O(x^2)`.
- A parity-compatible canonical finite part is cyclic on its spatially integrable odd-class operator ideal. A finite heat-weighted trace is not cyclic. Neither statement supplies a determinant Ward identity, the stationary generator insertion, a continuum BV measure, or a QME.

This report began without a proposed result. The radial bounded-band/L1 question in §8 was supplied later, also without a proposed answer. No other new reviewer work was read. No parent note or file under Articles was edited.

## 1. Inputs, conventions, and exact scope

The authoritative inputs read were the full [complete contraction note](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md>) and the [one-loop trace note](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md>), especially its §§5–7. For the explicit homogeneous density in §7, the established helicity realization in [the common-Casimir operator note:314–377](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L314-L377>) and the actual vector heat normalization in [the elliptic operator note:235–243](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L235-L243>) were inspected. Their group harmonic-analysis input is retained explicitly; a finite matrix calculation is not a proof of Plancherel theory.

Let `M=H3`, or a fixed complete marked loxodromic cyclic quotient, with curvature radius one and fixed positive primitive length. Use the positive Hilbert metric of the two real internal copies. Complexification is bilinear for the algebraic traces below; squared components do not become Hermitian absolute squares under that continuation.

Write

\[
\Delta=D\delta+\delta D\ge1,\qquad
P=1_{[0,\Lambda^2]}(\Delta),\quad R=1-P,\quad
h=\delta\Delta^{-1}R,
\]

\[
C=\delta D\Delta^{-1},\quad Q=RC,\quad
\mathcal L_0=QE=R\ker\delta.
\]

`C` is the positive-Hilbert coexact projection, not the internal cyclic pairing operator. The gap and closed Hilbert complex give this formula on every degree. The original regular Hessian domain is `L0 cap H1`; the relative operator extends boundedly to `L0` whenever `j` is bounded.

A physical insertion is a Lie-algebra-valued one-form `j=(w,f)`, not the eighteen-component quadratic source also denoted `j(alpha)` in part of the tree note. Set

\[
J=\operatorname{ad}_{j}=\sum_a\epsilon_a\,\operatorname{ad}_{j_a},
\qquad A_j=h_T\operatorname{ad}_j|_{\mathcal L_0}.
\]

Here `epsilon_a` is exterior multiplication by the orthonormal one-form. For a degree-`p` BV coefficient, its ghost number is `1-p`. Moving this coefficient through the physical one-form in `ad_j` gives `(-1)^(1-p)`; the totalized `h_T` gives the same sign. They cancel. Thus the physical-body operator in coefficient coordinates is exactly `hJ` in each form degree, with BV parity `1-p mod 2`.

There are coexact principal form multiplicities

\[
m_p={2\choose p}=(1,2,1,0),\qquad p=0,1,2,3,
\]

and BV signs `(-,+,-,+)`. Both internal copies remain present.

Throughout §§2–5 start with `j in C_c^infinity`. This is an external-potential test domain for the Hessian, **not** a claim that a nonzero retained or stationary field has compact support. Extensions to noncompact `j` are separate statements in §6.

### Removing the projector only inside a legitimate trace

Extend `A` to the full Hilbert complex by `Atilde=hJQ`, and put `B=hJ`. Exactly `QB=B`, since the range of `h` is UV coexact. Hence

\[
\widetilde A^n=B^nQ,\qquad
\operatorname{Tr}_{\mathcal L_0}(A^n e^{-t\Delta})
=\operatorname{Tr}_{E}(B^n e^{-t\Delta}) .                 \tag{1}
\]

For compact support the heat products in (1) are trace class. The second equality uses ordinary trace cyclicity and `Qh=h`; it is not assumed before trace-classness. The same argument is graded for the supertrace. Section 6 proves the needed trace-classness for noncompact `L2` fields when `n>=2`.

Equation (1) simplifies trace calculations. It does **not** delete the coexact projection when determining the symbol of `A` on its actual domain.

## 2. Actual symbol parity, including both projections

Use geodesic normal coordinates and a Levi-Civita-parallel orthonormal frame at a point. Let `epsilon(xi)` and `iota(xi)` be exterior multiplication and contraction. The nonunitary connection has the local form

\[
D=\epsilon_a\nabla_a+\epsilon_a B_a,\qquad
\delta=-\iota_a\nabla_a+\iota_a B_a,
\]

\[
B_a=\operatorname{ad}_{P_a}
=\begin{pmatrix}0&-E_a\\ E_a&0\end{pmatrix},
\qquad E_a v=e_a\times v,
\qquad B_a^*=B_a.                                      \tag{2}
\]

The rotational connection is skew for the positive Hilbert metric; the algebraic coframe term `B_a` is symmetric. This is precisely where replacing the operator by a unitary scalar-Laplacian model would lose information.

The differential symbols at the point are

\[
d_1=i\epsilon(\xi),\quad d_0=\epsilon_aB_a,
\quad \delta_1=-i\iota(\xi),\quad\delta_0=\iota_aB_a.
\]

The first-order part of `Delta` vanishes in this normal frame: the cross terms from (2) cancel. Its complete lower-order curvature terms are the actual `R_s`, not a scalar replacement. In particular

\[
h_{-1}=-i\iota(\xi)/|\xi|^2,
\qquad h_{-2}=\iota_aB_a/|\xi|^2,
\]

\[
c_0=\iota(\xi)\epsilon(\xi)/|\xi|^2,
\qquad
c_{-1}=(\delta_1d_0+\delta_0d_1)/|\xi|^2.                \tag{3}
\]

`c_0` is the projection onto `ker iota(xi)`. In particular

\[
a_{-1}=h_{-1}Jc_0
=-\frac{i}{|\xi|^2}\operatorname{ad}_{j(\xi^\sharp)}c_0.
                                                               \tag{4}
\]

This recovers the actual ghost-block symbol and also identifies all other coexact blocks. The identity

\[
c_0h_{-2}+c_{-1}h_{-1}=h_{-2}                           \tag{5}
\]

is useful at the next order. It shows why simply keeping `c_0` and dropping the projection's subprincipal term would give the wrong linear trace coefficient.

An integer-order classical operator is called odd-class here if

\[
a_{m-r}(x,-\xi)=(-1)^{m-r}a_{m-r}(x,\xi).              \tag{6}
\]

Every differential operator has this parity. Elliptic inversion and composition preserve it, by the usual recursive symbol equations: each `xi` derivative reverses parity once, exactly as it lowers degree once. Thus the actual `Delta^{-1}`, `h`, `C`, multiplication `J`, and their products satisfy (6). This argument includes all lower symbols, connection terms, and symbol-product derivatives; it is not a principal-symbol-only argument.

### The sharp projector is not a pseudodifferential step symbol

The spectral theorem and the gap give

\[
P:H^{-s}\longrightarrow H^r\quad\hbox{bounded for every finite }r,s.
\]

Elliptic regularity therefore gives a smooth kernel with uniform local Sobolev estimates. A two-sided compact localization of `P` is smoothing. The **global** sharp projector is generally neither finite rank nor properly supported; no rapid off-diagonal Schwartz decay is asserted. One must not replace its complete symbol by a discontinuous phase-space Heaviside function and differentiate that function in the classical calculus.

For the ultraviolet local symbol, inserting `P` changes only smoothing remainders. With compact `j`, the induced differences in the traces are trace-class smoothing terms; with `n>=2` and all-Sobolev `L2` insertions they remain finite by §6. They can and do change finite wheel values. They cannot change the coefficients or parity of homogeneous negative-order symbols.

## 3. Heat asymptotics and explicit power coefficients

Define the ordinary degree-block wheel

\[
W_{n,p}(t)=\operatorname{Tr}_{\mathcal L_0^p}(A_j^n e^{-t\Delta_p}),
\qquad t>0.
\]

A heat-sandwiched version gives the same number on this compact-support domain. The full operator carries rank six in the internal factor.

The symbol of degree `-3` of any odd-class operator is odd in `xi`. Consequently its residue density is zero. More generally

\[
\operatorname{res}(A_j^n\Delta^k)=0\quad(k=0,1,2,\ldots),           \tag{7}
\]

because the product is still odd-class. The local heat logarithms are proportional to these residue densities. Thus **all logarithmic heat coefficients vanish**, not merely the logarithm at `t^0`.

The surviving negative-power coefficient for the first wheel can be found without calculating the full inverse symbol. The derivative-of-`j` contribution at order `-2` has zero internal trace by `tr(ad X)=0`. Using (5) to retain the coexact subprincipal term gives

\[
\operatorname{tr}a_{-2,p}
=\operatorname{tr}(h_{-2}J)_p
=\frac{4m_p}{|\xi|^2}\operatorname{tr}f.                \tag{8}
\]

Here `tr f=sum_a f_a^a`. In fact

\[
\operatorname{tr}_{\mathfrak g}(B_a\operatorname{ad}_{j_b})
=4f_b{}^a,
\qquad \operatorname{tr}_{\Lambda^p}(\iota_a\epsilon_b)
=m_p\delta_{ab}.
\]

The principal symbol (4) gives

\[
\operatorname{tr}(a_{-1,p}^2)
=-\frac{m_p}{|\xi|^4}
 \operatorname{tr}_{\mathfrak g}(\operatorname{ad}_{j(\xi)}^2),
\]

\[
\sum_a\operatorname{tr}_{\mathfrak g}(\operatorname{ad}_{j_a}^2)
=4\bigl(f\cdot f-w\cdot w\bigr).                       \tag{9}
\]

The trace of the cubic principal symbol vanishes even before angular integration: `ad_X` is skew-transpose for the invariant nondegenerate bilinear form, hence `tr(ad_X^3)=0`. This does not make the operator `A^3` trace class.

Since

\[
(2\pi)^{-3}\int_{\mathbb R^3}e^{-t|\xi|^2}|\xi|^{-2}d^3\xi
=\frac1{4\pi^{3/2}\sqrt t},
\]

angular averaging yields

\[
\begin{aligned}
W_{1,p}(t)&=
 \frac{m_p}{\pi^{3/2}\sqrt t}\int_M\operatorname{tr}f\,dV
 +\mathcal T_{1,p}(j)+O(t^{1/2}),\\
W_{2,p}(t)&=
 \frac{m_p}{3\pi^{3/2}\sqrt t}
 \int_M(w\cdot w-f\cdot f)\,dV
 +\mathcal T_{2,p}(j)+O(t^{1/2}),\\
W_{3,p}(t)&=\mathcal T_{3,p}(j)+O(t^{1/2}).              \tag{10}
\end{aligned}
\]

There is no first-wheel `t^(-1)` term: its principal symbol is odd, and its fiber trace is also zero. The finite values in (10) are generally nonlocal and depend on the actual geometry and on `Lambda`. The displayed local symbols do not calculate the entire quadratic or cubic functional.

For the BV supertrace,

\[
\sum_{p=0}^3(-1)^{1-p}m_p=-1+2-1=0.                  \tag{11}
\]

Therefore all three **compact-support** BV heat supertraces have ordinary finite `t downarrow 0` limits. The one-loop action convention adds an overall factor `1/2`; that factor is not included in `mathcal T`.

For generic semisimple insertions the relevant operators are still not in `S1`: the nonzero order-minus-one symbol excludes `S3`, and the quadratic/cubic principal symbols need not vanish as matrices. A canceled trace density is not absolute trace-classness.

## 4. Canonical symbol finite part and its actual regulator range

On an odd-dimensional manifold the integral finite part of the diagonal symbol of an odd-class operator defines the canonical trace density. Coordinate-change correction terms contain odd sphere integrals and vanish. For compactly localized operators, integrating that density defines the canonical trace; ordinary traces of trace-class smoothing remainders are then added. This is the canonical odd-class trace, not an arbitrary radial spatial finite part.

For the operators above this gives exactly

\[
\mathcal T_{n,p}=\operatorname{FP}_{t\downarrow0}W_{n,p}(t).
                                                               \tag{12}
\]

One way to check (12) is the Mellin representation of the heat kernel: the possible discrepancy is a residue, and (7) removes it. A positive elliptic even-order **odd-class** weight gives the same finite part, provided its products obey the same spatial trace conditions. This includes the actual `Delta_H`. More generally, suitable rapidly decreasing scalar heat profiles with normalized value one at zero give the same canonical value. These are qualifications on the weight, not an assertion about every regulator.

For two general positive elliptic weights, the familiar weighted-trace difference is the local term

\[
\operatorname{tr}^{Q_1}(B)-\operatorname{tr}^{Q_2}(B)
=-\operatorname{res}\left[B\left(\frac{\log Q_1}{q_1}
                                 -\frac{\log Q_2}{q_2}\right)\right].       \tag{13}
\]

For parity-compatible even-order weights its degree `-3` symbol is odd and this term vanishes. If that parity is broken, existence of a finite part does not imply regulator independence.

### An explicit parity-breaking comparison

Keep the same `A`, `P`, and UV space, but replace the heat weight by

\[
Q_a=(\sqrt\Delta+a)^2,\qquad a>0.
\]

It is positive and commutes with the free differential, but is not odd-class: its order-one term `2a|xi|` is even. From (13), or directly from the radial heat integral, the first two ordinary degree-block finite parts shift by

\[
\begin{aligned}
\mathcal T^{Q_a}_{1,p}-\mathcal T^{\Delta}_{1,p}
 &=-\frac{2a m_p}{\pi^2}\int\operatorname{tr}f,\\
\mathcal T^{Q_a}_{2,p}-\mathcal T^{\Delta}_{2,p}
 &=-\frac{2a m_p}{3\pi^2}\int(w\cdot w-f\cdot f).       \tag{14}
\end{aligned}
\]

For example the first formula is `-a res(A Delta^(-1/2))`. The cubic shift for this scalar comparison is zero. Equation (11) also cancels these particular shifts in the **complete BV supertrace**; it would be wrong to advertise (14) as a supertrace anomaly.

If instead different degree shifts are used, with `a_p=a_{3-p}` to preserve the cyclic pairing, the supertrace shift need not cancel: take `a_0=a_3=0`, `a_1=a_2=a`. Such a weight is paired and preserves the UV coexact space, but **does not intertwine the differential**. This gives a precise counterexample to saying that pairedness alone makes a regulator adequate. It is not a counterexample to a theorem that requires a common chain weight and parity compatibility.

Changing the sharp cutoff `Lambda` is a different matter: it changes the operator itself through a genuine smoothing term and usually changes the finite wheels. Finite local counterterms may also be prescribed, but they are additional normalization data, not forced by trace existence.

## 5. Cyclicity and determinant claims: what passes and what fails

### 5.1 The restricted cyclic statement

On the spatially integrable odd-class ideal used above, the canonical trace vanishes on graded commutators whenever both products lie in that ideal and the indicated differential domains or bounded extensions are legitimate. This can be proved by symbol integration by parts, or by the trace-defect formula

\[
\operatorname{tr}^Q([U,V])
=-\frac1q\operatorname{res}(U[V,\log Q]).               \tag{15}
\]

With a compatible even-order odd-class weight the residue is zero by parity. Compact support, or the integrability extension proved below, removes spatial boundary terms. This is not a cyclicity theorem for arbitrary noncompact finite-part traces, unbounded products on unspecified domains, or a moving nonlinear polarization.

### 5.2 Finite heat weights are not traces on the algebra

Let `S=e^(-t Delta)` on an actual gapped degree block and let `F=M_f` for a real nonconstant compactly supported smooth scalar `f`. The heat localization makes the required products trace class. Then

\[
\operatorname{Tr}\bigl(S[F,[S,F]]\bigr)
=-\|[S,F]\|_{\mathfrak S_2}^{\,2}<0.                  \tag{16}
\]

Strictness follows because the heat kernel is nonzero near the diagonal and `f` is not locally constant everywhere. The same construction can be compressed to the UV ghost space using a multiplier that mixes two UV spectral intervals. Thus a fixed positive heat weight is not cyclic. Its finite-part limit may be cyclic under §5.1, but this must be proved; it is not inherited from a finite-time trace axiom.

The exact two-dimensional matrix version `S=diag(s1,s2)`, `F={{0,b},{b,0}}` gives `-2 b^2 (s1-s2)^2`, included as a narrow sign control in the evidence.

### 5.3 A filled determinant requires the missing coefficients

For small `||A||<1` on the compact-support or `L1`-extended domain, one may define the chosen canonical logarithm

\[
\mathcal D_{\rm can}(A)
=\log\det_4(1+A)+\mathcal T_1(A)
 -\frac12\mathcal T_2(A)+\frac13\mathcal T_3(A).        \tag{17}
\]

Here the three `mathcal T_n` mean the trace of `A^n`; (17) is a choice of the small analytic logarithm relative to the specified reference. It is not a new assertion about the free contour phase. The super version is obtained with the actual parity signs.

Under differentiable variations preserving this symbol/spatial domain, canonical cyclicity gives the usual canonical-trace variation of (17). The fourth-modified determinant alone has instead

\[
d\log\det_4(1+A)
=-\operatorname{Tr}\bigl(A^3(1+A)^{-1}dA\bigr).        \tag{18}
\]

The product in (18) is ordinarily trace class when `A,dA in S4`. Already a rank-one `A=a Pi` gives derivative `-a^3/(1+a)`, not `1/(1+a)`. Thus using a modified determinant but silently applying the unmodified determinant variation is false even in finite rank.

A pure-conjugation invariance within the qualified canonical trace algebra does not show that the actual nonlinear BV transport is pure conjugation. The off-shell stationary generator insertion, the measure prescription, varying gauge/polarization data, and any regulated BV-Stokes defect are separate. Nothing in this report establishes a continuum Ward identity or QME.

## 6. Justified noncompact extensions

### 6.1 The operator itself

For `j in L2 cap Linfinity`, multiplication `J` is bounded and `A=hJ|L0` is the unique bounded extension of the regular-domain relative expression. The established heat/Schatten estimate gives `A in S4`. No product of arbitrary `L2` fields is asserted to define the nonlinear action.

### 6.2 Positive-time traces of every wheel with at least two insertions

Let `B0=delta Delta^(-1/2)R`, so `h=B0 Delta^(-1/2)` and `B0` is bounded and intertwines the degree Laplacians. Polar decomposition of the finite-dimensional multiplier `J` factors

\[
\Delta^{-1/2}J\Delta^{-1/2}
=(\Delta^{-1/2}U|J|^{1/2})(|J|^{1/2}\Delta^{-1/2}).
\]

Because `|J|^(1/2) in L4`, both factors lie in `S4` by the already established estimate, so this product is in `S2`. Hence

\[
hJh\in\mathfrak S_2,\qquad Je^{-t\Delta}\in\mathfrak S_2,
\]

\[
(hJ)^n e^{-t\Delta}
=(hJ)^{n-2}(hJh)(Je^{-t\Delta})\in\mathfrak S_1,
\quad n\ge2.                                        \tag{19}
\]

In particular

\[
\|(hJ)^n e^{-t\Delta}\|_1
\le C_t\|hJ\|^{n-2}\|j\|_2^2.
\]

This proof is global, does not assume compact support, and retains both the sharp spectral cutoff and the full `delta`. Equation (1) then applies. It is stronger than merely having a distributional diagonal kernel.

### 6.3 The quadratic and cubic finite parts on the actual smooth domain

Suppose

\[
j\in H^\infty:=\bigcap_{s\ge0}H^s(M),                 \tag{20}
\]

with the fixed background geometry. In particular all covariant derivatives are in `L2` and all finite-order derivatives are bounded by Sobolev embedding. The quadratic and cubic functionals in (10) extend continuously from compact support to (20), in the all-Sobolev topology. Their heat expansions and finite parts agree with that extension. The ordinary quadratic coefficient is the integrable quadratic expression in (10); its BV sum is zero. The cubic heat trace has a finite limit.

Here is the local/global estimate behind this extension, rather than an assumption that an arbitrary smooth tail is harmless.

1. Uniform elliptic parametrices on either fixed bounded-geometry background split `h` into a uniformly properly supported classical operator of order `-1` and a uniformly Sobolev-smoothing remainder. The true gapped inverse and the finite-band term have the required global Sobolev bounds. The latter remainder can be written `Delta^(-N) T_N Delta^(-N)` for every finite `N`, with `T_N` bounded.
2. Expand products through order `-3` on a uniformly locally finite normal-coordinate cover. Every coefficient in a wheel with `n>=2` contains at least two differentiated factors of `j`. Products of two such factors are `L1`; remaining factors and bounded background coefficients are bounded. The same bounds apply to finitely many symbol derivatives.
3. The remainder of order less than `-3` is trace class after this local subtraction. For completeness, the usual trace-class estimate follows by Fourier decomposition in each fixed-size chart: integrability in `xi` and finitely many integrable `x,xi` derivatives give a summable rank-one expansion. Uniformity lets one sum the charts. If `a_i` denotes a sufficiently high local Sobolev norm of `j`, then `sum_i a_i^2 <= C ||j||_{H^s}^2`, and for cubic terms `sum_i a_i^3 <= (sup_i a_i) sum_i a_i^2`. A finite sufficiently large Sobolev order controls any specified subtraction/remainder estimate; no minimal regularity threshold is claimed.
4. A term involving a uniformly smoothing remainder is finite after cyclic localization. Indeed `J S J` is trace class, by the displayed factorization of `S` and two Hilbert–Schmidt localized smoothing factors. The remaining `hJ` factors are bounded. Its heat-trace limit follows by the same Hilbert–Schmidt factorization and strong heat convergence. This also controls the finite changes from the sharp projector.
5. The homogeneous degree `-3` terms have odd sphere average. Their canonical distributional extensions are fixed by parity; subtraction of these terms introduces no logarithm. Uniform versions of the preceding estimates give a common bound on the subtracted heat remainders. Approximate `j` by smooth compact cutoffs in all the required Sobolev norms. Dominated estimates then identify the limit of the finite parts with the finite part of the positive-time traces (19).

This proves the stated extension without requiring the stationary field to be `L1`. It is not a claim for a merely bounded measurable `L2` coefficient: (19) remains valid there, but the smooth-symbol finite-part theorem does not follow without additional regularity.

### 6.4 The first wheel is different

For the first wheel, `L1 cap Linfinity` is a sufficient spatial condition for the **heat-sandwiched** trace, using two heat-localized factors of `|J|^(1/2) in L2`. With smooth coefficients its finite part is the pairing of `J` with a uniformly bounded renormalized diagonal of `h_R`. Thus the compact-support prescription extends continuously in `L1` on the fixed backgrounds. One-sided trace-classness for a general rough `L1` multiplier is not asserted; the sandwiched trace is the stated definition.

The mere `H^infinity` domain does not supply this linear pairing. In the supertrace, cancellation of the local negative powers need not cancel its nonzero finite linear density. Section 7 gives an explicit instance. One may declare a separate tadpole subtraction, for example a quadratic-starting normalization, and combine it with the quadratic/cubic functionals and `det4`. Such a declaration changes the linear functional and its variation; it is not an extension forced by the original compact-support trace.

## 7. An actual H3 first-wheel obstruction after BV cancellation

This section uses the actual homogeneous spin kernels, not a scalar surrogate. Let `j=(0,phi e0)` initially with smooth compactly supported scalar `phi`. Write `k_s(u)` for the diagonal per-component heat density of `R_s` on the spin-`s` bundle. The established helicity spectrum is

\[
r(\lambda,m)=\lambda^2+5-m^2,\qquad |m|\le s,
\]

with the `H3` identity Plancherel density `(lambda^2+m^2)/(2 pi^2)` for each signed helicity, and scalar normalization fixed by the ordinary scalar heat kernel. Therefore

\[
\begin{aligned}
k_0(u)&=(4\pi u)^{-3/2}e^{-5u},\\
k_1(u)&=\frac{(4\pi u)^{-3/2}}3
 [e^{-5u}+2(1+2u)e^{-4u}],\\
k_2(u)&=\frac{(4\pi u)^{-3/2}}5
 [e^{-5u}+2(1+2u)e^{-4u}+2(1+8u)e^{-u}].               \tag{21}
\end{aligned}
\]

The `k1` formula reproduces the established actual vector density and its curvature coefficient `-3` per component.

The covariant first derivative of each kernel vanishes at coincidence on `H3`. This follows from geodesic reflection and the natural `O(3)` extension of these Laplace-type blocks. Thus only the algebraic part `delta0` of (2) contributes to the coincident trace of `delta F(Delta) J`.

For invariant kernels with diagonal coefficients `c0,c1,c2,cM`, direct fiber algebra gives the three degree traces

\[
(12c_1,\quad 8c_0+6c_1+10c_2,\quad12c_M).             \tag{22}
\]

One explanation of the coefficients is `D_B D_B^*=2 Pi_1` in degree one for the endpoint map, whereas the middle map has squared eigenvalues `T^2=(4,1,1)` on spins `(0,1,2)`. The endpoint vector operator is the spin-one block, so `cM=c1`. The 48-component exterior/internal calculation in the evidence checks (22) exactly.

For the full homotopy without a low-band deletion, the limiting super coefficient is consequently

\[
\begin{aligned}
C_{\rm full}
 &=\int_0^\infty[8k_0(u)-18k_1(u)+10k_2(u)]\,du\\
 &=\frac{6-\sqrt5}{\pi}>0.                            \tag{23}
\end{aligned}
\]

The integrand is

\[
4(4\pi u)^{-3/2}
 [e^{-5u}-2(1+2u)e^{-4u}+(1+8u)e^{-u}].               \tag{24}
\]

It is `24(4 pi)^(-3/2) u^(-1/2)+O(u^(1/2))` near zero, not identically zero. Hence the cancellation of the divergent `u^(-3/2)` term in the primitive integral does not cancel the finite tadpole.

For the actual sharp cutoff set `L=Lambda^2` and

\[
a_m=\sqrt{\max(L-5+m^2,0)}.
\]

Deleting the low band gives exactly

\[
\boxed{C_\Lambda=\frac{6-\sqrt5}{\pi}
-\frac2{\pi^2}\left[
 a_0-\sqrt5\arctan\frac{a_0}{\sqrt5}
 -2\left(a_1-\frac32\arctan\frac{a_1}2\right)
 +a_2+3\arctan a_2\right].}                           \tag{25}
\]

In particular

\[
C_{\sqrt5}=\frac{3-\sqrt5}{\pi}>0,\qquad
C_{\sqrt6}=0.23260263651345558\ldots>0.                \tag{26}
\]

Positivity at `L=6` is not merely numerical. For `5<=L<=6`, differentiating the shell integrals gives

\[
C'(L)=-\frac1{\pi^2L}
\left[\sqrt{L-5}-\frac{2(L-3)}{\sqrt{L-4}}
                    +\frac{L+3}{\sqrt{L-1}}\right].
\]

The positive pieces in brackets are at most `1+9/2=11/2`, hence

\[
C(6)\ge\frac{3-\sqrt5}{\pi}-\frac{11}{10\pi^2}>0.     \tag{27}
\]

The positive-time coefficient `C_Lambda(t)` is continuous at zero and tends to (25). For compactly supported `phi`, exactly

\[
\operatorname{STr}_{\mathcal L_0}
(A_{(0,\phi e_0)}e^{-t\Delta})=C_\Lambda(t)\int\phi\,dV.          \tag{28}
\]

Now fix `Lambda^2=6` and `0<b^2<1`, and take the actual retained trace-mode field

\[
x=(0,\sigma\phi_b e_0),\quad
\phi_b(r)=\frac{1-\cos(br)}{r\sinh r},\quad \sigma>0.
\]

It is smooth, all-Sobolev, positive, and has spectral support in `[5,5+b^2]`. But `integral phi_b=+infinity`. Since `C_Lambda(t)>0` for all sufficiently small positive `t`, even the spatial integral of the **summed BV diagonal** in (28) diverges. One cannot take a heat finite part of this infinite spatial integral. The degree blocks themselves are not ordinary trace-class insertions on this tail either.

For the actual stationary family `j(sigma)=x(sigma)+y(x(sigma))`, its first Taylor coefficient is precisely `x`, since `y=O(sigma^2)`. Thus a formal or analytic low-wheel prescription on the whole stationary graph cannot obtain its linear coefficient from the claimed compact-support heat trace without an additional spatial/tadpole extension. Higher field degree cannot repair this missing linear coefficient.

This is a counterexample to the implication “Schatten four plus ultraviolet supertrace cancellation supplies all low wheels on the stationary graph.” It is not a proof that every possible renormalized one-loop prescription fails.

## 8. Later supplied question: radial bounded band versus L1

**Their radial intersection is zero.** Let `phi` be a smooth radial scalar field with bounded scalar spectral support on `H3`. Put

\[
u(r)=\sinh r\,\phi(r),\qquad r>0,
\]

and extend `u` oddly to the real line. The radial spectral transform is the sine/Fourier transform, with scalar spectral variable `1+lambda^2`. Bounded scalar spectral support means that the Fourier transform of the odd extension has compact real support.

If `phi in L1(H3)`, then

\[
\int_1^\infty|u(r)|e^r\,dr<\infty.
\]

The origin causes no problem because smooth radial `phi` gives smooth odd `u`. Consequently the Fourier transform of `u` is holomorphic in the strip `|Im lambda|<1` (or any slightly smaller closed strip). On an open real interval outside its bounded support it vanishes. The identity theorem forces it to vanish on the strip, and Fourier uniqueness gives `u=phi=0`.

The same argument excludes a nonzero compactly supported radial bounded-band field. It applies to the retained trace-coframe mode, whose operator is the scalar Laplacian plus four. It would therefore be incorrect to label the compact-support test domain in §§2–5 a nontrivial radial retained subdomain.

This argument alone does **not** prove that every nonlinear stationary graph point fails `L1`. Sharp projection and the homotopy need not preserve `L1`, and cancellation between retained and UV pieces would require separate analysis. The explicit first-order obstruction in §7 is sufficient for the claim actually made here.

## 9. Evidence and limitations

The analytic argument proves the symbol parity, trace-class factorizations, domain extensions, and counterexamples under the stated fixed-background hypotheses. A deliberately narrow exact computation checks the weak fiber-algebra point, not the infinite-dimensional conclusions.

- [Executed Wolfram source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-independent-20261031.cbreRi7V/checks.wl>): exterior algebra on all eight form components times both three-dimensional internal copies; one generic rational covector with all eighteen insertion coefficients symbolic.
- [Actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-independent-20261031.cbreRi7V/results.txt>): 15 exact labels pass. They check the projection/subprincipal identity, principal and first subprincipal traces, gravitational Killing trace, BV multiplicities, actual invariant spin contractions, elementary heat integrals, the sharp-cutoff endpoint and positivity bound, and the finite heat-cyclicity sign control.
- [Exact serialized output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-independent-20261031.cbreRi7V/results.wxf>) and [actual untruncated successful server return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-independent-20261031.cbreRi7V/actual-server-return.json>) are preserved. The successful kernel return contains no messages. No failed kernel call was used or suppressed.

**Verified:** actual odd-class symbol and coexact multiplicities; no UV heat logarithms; explicit ordinary power coefficients and their BV cancellation; compact-support canonical finite parts; positive-time quadratic-and-higher trace-classness for `L2 cap Linfinity`; quadratic/cubic all-Sobolev extension; explicit nonzero H3 sharp-cutoff super tadpole and retained-band spatial obstruction; radial bounded-band/L1 no-go; qualified cyclicity and explicit failures of unqualified heat/determinant rules.

**Assumptions:** the established complete gapped gravitational Hodge realization and fixed bounded geometry; the stated physical-body totalization; the standard local classical parametrix and heat/Mellin calculus; the established H3 helicity Plancherel normalization for the explicit numerical tadpole; fixed geometry and fixed sharp spectral cutoff. No estimate is claimed uniform through a degenerating cyclic quotient.

**Not computed or established:** closed nonlocal formulas for the quadratic and cubic finite functionals; a complete first-wheel extension to the actual stationary graph; matching geometric-CS determinants or generator insertions; a regulator-compatible interacting BV-Stokes identity; continuum QME; global contour/phase continuation; nonphysical infinite formal-graded convergence; arbitrary hyperbolic quotients or spatial finite-part schemes. The reviewer could not start another fresh reviewer at the allowed delegation depth; independence here is from the parent candidate, not an additional internal independent replication.
