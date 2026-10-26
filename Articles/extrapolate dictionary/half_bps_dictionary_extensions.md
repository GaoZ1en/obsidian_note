# From first reconstruction to generic tree amplitudes and protected domains

## Executive result

This extension starts from
`aa128cb903e0f3750a16a69487d64013d38667b1`, the head of the preceding
first-order reconstruction PR. Its original audit baseline remains
`ba8a9a5161a538c0d1addf7215c20cf64f4ddb79`.

The new work supplies several previously missing **physical and
mathematical interfaces**, with explicit observable definitions:

1. arbitrary joint radial/spacetime cutoff removal for the specified
   causal TT stress–scalar–scalar coefficient;
2. the full Brown–York stress coefficient and its genuine adiabatic
   agreement with that TT coefficient in the stated iterated limit;
3. a complete finite-switch curved-source/reference-anchor functional at
   one metric source and two scalar sources, including its finite-layer
   anomaly and a Euclidean infrared theorem;
4. the sourced–sourced Einstein endpoint pairing for the linearized,
   fixed-support response class;
5. the complete generic $20'$ Euclidean four-scalar tree coefficient,
   its independent-radius source limit and six-tensor SYM matching;
6. the leading genus-zero $R^4$ correction, including its full tensor and
   normalization;
7. a positive finite-$N$ protected holomorphic algebra with a common
   invariant domain and exact trace mixing.

These results do **not** constitute the complete all-orders IIB/SYM
extrapolate dictionary. A full nonlinear Einstein phase space, the full
interacting Lorentzian operator algebra, all string/loop corrections and
all Kaluza–Klein sectors have not been constructed. In particular, none of
the new coefficient theorems is silently promoted to an operator theorem.

## 1. Claim and evidence index

Here **A** means a statement independently derived and checked in its
declared class; **B** means its physical interpretation additionally uses
the listed external theorem/input; **C** marks a specific unclosed
interface. The finite checks support formulas; the written analytic
estimates supply distributional and domain conclusions.

| Claim | Status and exact scope | Source of proof |
|---|---|---|
| Joint $B,R\to\infty$ stress corner | **A** for a common smooth radial cutoff and the prescribed causal TT observable, all null/soft strata | [Joint theorem](half_bps_stress_joint_limit.md), [massive estimate](half_bps_stress_joint_massive.md), [soft estimate](half_bps_stress_joint_soft.md) |
| Full stress $T\mathcal U_z\mathcal U_w$ | **A** for the displayed ordering, leading tree order, bounded radii, radial cutoff first | [Full-stress Ward limit](half_bps_stress_full_ward_limit.md) |
| Finite-switch full source response | **A** at $h j^2$, in the explicit reference-metric and local-counterterm prescription | [Finite-switch Ward functional](half_bps_stress_finite_switch_ward.md) |
| Sourced–sourced infrared pairing | **A** for smooth fixed compact sources and bounded time intervals in the linearized response class | [Sourced endpoint](half_bps_stress_sourced_endpoint.md) |
| Genuine past Abel, tube and Gram sum | **A** for the precisely defined constructions and complete coefficient; local versus global topologies are distinguished | [Regulator identification](half_bps_stress_regulator_identification.md) |
| Generic $20'$ tree tensor | **A/B**: complete two-derivative $N^{-2}$ coefficient, using the independently supplied consistent IIB action | [Generic tree](half_bps_generic_tree.md) |
| Generic Euclidean source boundary limit | **A** for the specified gravitational/internal-gauge relational insertion and BF scheme; four independent radii | [Generic radial limits](half_bps_generic_radial_limits.md) |
| Leading $R^4$ boundary correction | **A/B**: exact tensor/algebra and normalization from the stated IIB string amplitude input; large $N$, leading $\lambda^{-3/2}$ | [$R^4$ correction](half_bps_r4_correction.md) |
| Finite-$N$ protected positive domain | **A** as a Gaussian invariant-polynomial Hilbert construction; **B** as interacting protected SYM via non-renormalization and basis transport | [Protected domain](half_bps_finite_n_protected_domain.md) |
| Full Brown–York arbitrary joint cutoff limit | **C**: the finite-$B$ forces require uniform retarded-lift control | §5 below |
| Full nonlinear/quantum IIB dictionary | **C**, beyond the constructed coefficient and protected-domain statements | §6 below |

The exact programs, newly produced outputs and execution manifest are
indexed in [the verification record](checks/dictionary_extensions/README.md).

## 2. Lorentzian gravitational reconstruction

### 2.1 Arbitrary joint cutoffs for the causal TT coefficient

The preceding theorem removed the radial vertex cutoff $B$ before the
spacetime scale $R$. The new result is

\[
\widehat\chi_R(\Omega)\mathcal G_B
\longrightarrow(2\pi)^4\delta^4(\Omega)W^{\rm CFT}
\quad\hbox{strongly in }\mathcal S',
\qquad B,R\to\infty,
\tag{X1}
\]

with no condition on $B/R$. The proof controls the genuine finite-$B$
kernel on its exceptional strata. It adds exact all-insertion Hankel
cancellation, a massive zero-transfer trace uniform in $B$, and a new
bound for the soft mass-band leakage that the earlier uncut support
argument could not remove. Summable annuli then give arbitrary paths.
The complete finite-radius transfer theorem supplies the same conclusion
uniformly for bounded independent scalar radii.

This is not inferred from joint-momentum distribution convergence alone.
In particular, separate singular diagrams can grow at the physical
collinear threshold; their common-regulator sum cancels before integration.

### 2.2 Full stress and the actual Ward forces

The physical boundary stress at this order includes the BF variation:

\[
T^\chi_{ij}
=\frac2{\kappa^2}
 (h^\chi_{(4)ij}-\eta_{ij}\operatorname{tr}h^\chi_{(4)})
-\chi\eta_{ij}:v^2: .
\tag{X2}
\]

After removing the radial cutoff, its divergence and trace are

\[
f_j=(\partial^i\chi)\overline M_{ij},\qquad
\tau=(\partial^i\chi)\partial^jN_{ij}
             +\tfrac12(\partial^i\partial^j\chi)N_{ij}.
\tag{X3}
\]

The moments are constructed from the actual Hankel radial integrals.
For $m=(x+y)/2$, $d=x-y$, a necessary endpoint identity is

\[
\int_0^\infty u^3J_0(u\sqrt x)J_0(u\sqrt y)\,du
=-8m_+\delta''(d)+2\delta(m)\delta(d).
\tag{X4}
\]

The corner term is essential. With stress on the left of the Wightman
product, the two free scalar legs have future total momentum $K$. Their
exact fiber calculation gives, for $Y=s(K)$,

\[
\overline M=Y\theta(Y)\mathsf M(Y),\quad
N=\theta(Y)\mathsf N(Y),\quad
K^iN_{ij}=Y\theta(Y)\mathsf B_j(Y),
\tag{X5}
\]

with smooth distribution-valued coefficients, uniformly through both
soft-leg endpoints. These margins reduce the retarded inverse's null
singularity to integrable logarithms. The full non-TT correction tends
to zero under genuine switching; hence the full Brown–York coefficient
has the independently known CFT limit in the stated ordering and
iterated regulator prescription.

The Euclidean/source Ward contacts are handled separately. The finite
switch needs both the physical metric and the reference/anchor metric
that defines the unswitched Gaussian action. In the minimal prescription,
their variations sum to the original source response. The finite-layer
PBH anomaly is

\[
\mathcal A_j
=\pi^2\left(\int da\,j_a\right)^2
+\frac12\partial_i\int da\,db\,
 c_{ab}a^2j_a\partial_i j_b,
\quad c_{ab}=2\pi^2\log\frac{\max(a,b)}\ell.
\tag{X6}
\]

The second term disappears in the boundary limit but belongs to the
finite-radius functional. It is not added to a source-free Lorentzian
Wightman conservation equation. For fixed positive insertion layers,
the Euclidean full source functional has an actual absolute bound
$C(B^{-2}+R^{-2})$, allowing joint removal of those two infrared cutoffs.

### 2.3 Sourced–sourced endpoint control

For the sourced FG exterior tail

\[
H_{ij}=\partial_iv_j+\partial_jv_i-2\sigma\eta_{ij}
                                  -u^2\partial_i\partial_j\sigma,
\tag{X7}
\]

the direct Einstein potential variation gives the exact spatially
integrated pairing

\[
\int d^3x\,\omega^0=u^{-3}\mathcal C(t),\qquad
\int d^3x\,\omega^u=\frac{\dot{\mathcal C}(t)}{2u^2}.
\tag{X8}
\]

The apparent $u$ and $u^{-1}$ time-current coefficients cancel after
spatial pairing. Thus the radial pairing is integrable and the flux
through $u=U$ tends to zero as $U^{-2}$ on bounded time intervals.
The result applies to the full causal linearized response for smooth
compact source supports, by finite propagation of the radiative part.
It does not make a growing FG component itself an infrared-decaying field.

### 2.4 Regulator comparisons that are now established

A genuine common-action past exponential switch is realized locally by
an explicitly constructed Schwartz spacetime profile equal to
$e^{t/R}$ on all relevant retarded vertex domains. It retains the
switch-derivative vertices, output-time factors and the analytic causal
projector. Its local distributional limit agrees with the completed
coefficient; the specified tempered completion converges globally.

The external ordered-tube boundary value and the **sum** of common-Gram
homogeneous/particular finite parts also give that coefficient. These
statements identify carefully defined limiting constructions. They do
not identify individual finite-part diagrams, nor a family that changes
only a selected denominator's frequency.

## 3. Complete generic $20'$ Euclidean four-point tree

The same IIB reduction fixes the scalar cubic, vector coupling and both
quartic terms. With the six polarization tensors of the generic report,
define $S_a$ and $J_a$ for scalar and vector exchange, and $D_a$ for
graviton exchange. The action-derived result is

\[
\begin{split}
N^2M={}&\sum_{a=s,t,u}\left[
-\frac{16S_a}{a-2}+\frac{2J_av_a}{a-2}
+\frac{D_a}{2}\left(a-6-\frac{v_a^2+4/3}{a-2}\right)\right]\\
&+4\sum_aD_a-\frac{40}{3}\sum_bC_b
+\frac23\left[J_s(t-u)+J_t(s-u)+J_u(t-s)\right],
\end{split}
\tag{X9}
\]

where $s+t+u=8$ and $v_s=t-u$, $v_t=s-u$, $v_u=t-s$.
The six tensor coefficients agree separately with the full
superconformal Ward–Mellin expression. A separate position-space
calculation fixes the rational terms and contour-residue information.
The old neutral polarization has $S_a=J_a=0$; that special simplification
does not apply to generic polarizations.

The finite-radius definition now has matching proofs for every tree
sector in (X9):

- Scalar exchange uses the six-dimensional Newton kernel, circle-average
  continuity in $L^3$, and $I_2:L^{3/2}\to L^3$.
- Vector exchange uses the boundary-anchored Wilson insertion and the
  full constrained Maxwell inverse. Its transverse kernel satisfies
  $0\le uvI_1(pu_<)K_1(pu_>)\le u_<^2/2$, and the longitudinal kernel
  is exactly $u_<^2/2$.
- Derivative quartic uses the commutator cancellation of the derivative
  of $u^2$ and the uniform bound $|u\partial_uD_k(u,z)|\le1$.
- The potential and graviton sectors use their existing source/dressing
  theorems with the corresponding finite-dimensional species tensors.

These give strong $\mathcal S'(\mathbb R^{16})$ convergence for arbitrary
independent four radii, including overlapping sources. They establish
the generic **Euclidean tree** dictionary in this observable and contact
prescription. A full Lorentzian four-point operator construction is an
additional assertion.

## 4. Beyond the two-derivative and infinite-$N$ approximations

### 4.1 The first string correction

The new higher-derivative boundary coefficient is

\[
\delta\widetilde M_{R^4}
=\frac{480\zeta(3)}{N^2\lambda_{\rm tH}^{3/2}},\qquad
\delta M_{R^4}=\delta\widetilde M_{R^4}\,
                         \widehat{\mathcal R}\,1.
\tag{X10}
\]

The six ordinary Mellin polynomial coefficients are explicitly calculated.
The number $480$ is independently reconstructed from the
Virasoro–Shapiro expansion and the flat-space inverse-Laplace factor
$\Gamma(3)/(8\Gamma(6))=1/480$. This uses a new physical input from IIB
string scattering; it is not determined by the two-derivative action or
protected three-point residues alone.

For the unique lowest-twist long singlet, with the stated strong-coupling
mixing assumptions, the independent Barnes calculation yields

\[
\gamma_{[O_2O_2]_{\mathbf1}}
=-\frac{16}{N^2}
-\frac{17280\zeta(3)}{7N^2\lambda_{\rm tH}^{3/2}}+\cdots.
\tag{X11}
\]

The corresponding finite-radius eight-derivative action and its quantum
completion have not been derived here.

### 4.2 Finite-$N$ positivity and exact mixing

For a traceless Gaussian complex matrix with covariance
$\delta^i_\ell\delta^k_j-\delta^i_j\delta^k_\ell/N$, complete the invariant
polynomials after quotienting trace identities. The resulting positive
Hilbert space has the common polynomial domain
$\mathcal D_N=\mathbb C[p_2,\ldots,p_N]$, and the larger smooth-energy
domain $\bigcap_r\operatorname{Dom}(1+E)^r$. Multiplication by invariant
polynomials and their Gaussian adjoint differential operators preserve
both domains; the polynomial operators are closable.

For example,

\[
\mathcal O_4^\perp=p_4-
\frac{2N^2-3}{N(N^2+1)}p_2^2,
\qquad
\|\mathcal O_4^\perp\|^2
=\frac{4(N^2-1)(N^2-4)(N^2-9)}{N^2+1}.
\tag{X12}
\]

At $N=2,3$ this state vanishes by Cayley–Hamilton. It is a concrete
reason an unchanged large-$N$ independent-oscillator dictionary cannot
be an injective isometry at every finite $N$. The construction supplies
the correct quotient, not a negative-norm interpretation.

The interacting interpretation is the protected holomorphic chiral
algebra transported using the half-BPS non-renormalization theorem.
Neither arbitrary local products nor the full bulk algebra are covered
by that protection theorem.

## 5. Exact interfaces still requiring proof

| Remaining statement | What must be supplied |
|---|---|
| Full stress along arbitrary joint $B(R)$ | Uniform control of the finite-$B$ residual forces $r_{B,i},r_{B,C}$ after the same retarded trace/divergence lift; canonical-moment limits at fixed switch do not give it |
| Simultaneous Euclidean source-layer and infrared removal | Bounds for the curved-source functional uniform as its positive radial lower bound tends to zero, in the same finite-contact scheme |
| Global nonlinear Einstein CPS | A specified nonlinear solution/domain class, the full coupled covariant current, all endpoint/corner contributions, and uniform pairings after regulator removal |
| General interacting operator domain and positivity | Actual all-order Wightman functions or an equivalent operator construction, compatible renormalized products, and a common dense invariant domain; finite coefficient convergence is insufficient |
| Generic Lorentzian four-point reconstruction | The scalar/vector/contact all-null causal limits and their relation to the Euclidean source theorem in the same anchored observables |
| Separated Abel/Gram equivalence | Exact finite-regulator definitions for each individual term and a proof preserving routing, projector and boundary data; the complete-sum result is not this theorem |
| Full IIB/SYM at higher orders | The missing string/loop vertices, additional KK and supermultiplet sectors, mixing and finite-$N$ corrections, and their source/renormalization prescriptions |

These are not counterexamples to the limited theorems proved above.
They are the precise additional statements required to use the phrase
“complete IIB/SYM extrapolate dictionary.”

## 6. Why an all-orders conclusion would exceed the evidence

There are two explicit, different limitations rather than a generic
appeal to difficulty. First, a crossing- and supersymmetry-compatible
contact $c\,\widehat{\mathcal R}1$ leaves the existing protected
two-/three-point data and single-trace tree residues unchanged. Its
coefficient required the independent string input in (X10). More bulk
orders require their own physical data and calculations.

Second, the exact finite-$N$ null relation (X12) changes the state space.
A construction using independent large-$N$ modes at all degrees cannot
become a finite-$N$ positive dictionary merely by reusing its tree
coefficients. The protected quotient/domain is now constructed, but its
unprotected and gravitational analogues are not consequences of it.

The next focused physical calculation is the **full-stress joint-limit
problem**, because its remaining objects are explicitly known finite-$B$
Hankel moments and Ward-force kernels. The next amplitude calculation is
the generic Lorentzian four-point source limit, using the newly completed
Euclidean scalar/vector definitions. These are concrete further steps;
neither is relabeled as an already completed all-IIB theorem.
