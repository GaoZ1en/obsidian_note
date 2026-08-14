# Response to the Independent Theory and Calculation Audit

## 0. Direct verdict

The audit identifies one false inference, two genuine claim-tier
overstatements, two transcription errors, and one genuine regression-
reproducibility defect. The correct response is not to discard the compact
BTZ or selected-mode AdS-Rindler calculations. It is to withdraw the former
full-tower no-go, strengthen the hypotheses of the general fixed-embedding
implication, downgrade the moving-edge construction to its proved kinematic
tier, and repair the blocked symbolic regression.

The project tier immediately after that audit was:

> verified finite-cutoff identities, compact BTZ benchmarks, a selected-mode
> AdS-Rindler sequential-limit benchmark, an explicit constrained
> fixed-anchor mode space, and a vacuum conditional dressed identity under
> H0--H6; not a constructed general horizon phase space, not a complete
> moving-action edge theory, and not a crossed-product or quantum JLMS
> theorem.

**Subsequent closure (2026-08-14):** H49--H60 now supply the missing
action-derived wall/joint/outer bounds, weak HW pullback, total-flux limit,
and slice covariance. H61 corrects the later moving-anchor interpretation:
frequency-zero/one endpoint complements are exact global AdS Killing fields,
so the bounded $P_{\rm PSL}$ section extends H53 to the complete
$H^\sigma(S^1)/\mathfrak{sl}(2,\mathbb R)$ metric tangent quotient for
$\sigma>5/2$ without a negative-Virasoro frame. H62 proves positivity and
the optimal ordinary $H^2$ continuity threshold of the combined Bañados
canonical-energy form. The remaining exclusions are nonlinear generic
horizon polarizations, matter, and quantum/operator-algebraic JLMS—not the
linear classical quotient theorem.

The independent audit file is retained unchanged. The original `../article/`
is also unchanged.

## 1. Adjudication of the four decisive audit points

### 1.1 H42 full-tower no-go

**Verdict: correct objection. The old full-tower conclusion is withdrawn.**

For one frequency,

$$
f_m(\phi)=A_m\cos m\phi+B_m\sin m\phi,
$$

the determinant

$$
\det M_m=-\sin\frac{m\pi}{2}
$$

correctly proves that an individual odd-frequency real quadrature cannot
vanish at both $t=0$ anchors. It does not diagonalize the endpoint condition
on a sum. The audit counterexample

$$
f(\phi)=\cos3\phi-\cos5\phi
$$

satisfies $f(\pm\pi/4)=0$ and disproves the no-go.

The corrected $t=0$ phase space is described in Section 2 below. All former
claims that the full fixed-anchor tower is absent or that every odd
coefficient must be deleted have been removed.

### 1.2 Fresh regression status

**Verdict: the audit correctly found a reproducibility defect, not a
counterexample to the endpoint relation.**

The audit obtained `$Failed` from a 120-second direct symbolic limit in the
quadratic $(\chi,u)$ component. That result means the evaluator did not return
an exact value within the time bound; it does not mean the residual is
nonzero. An independent rerun of the old script returned zero in all six
quadratic components and passed $12/12$, showing that the direct limit was
timing-sensitive.

The script has now been repaired as follows:

1. try the direct exact limit with a shorter bounded time;
2. if it blocks, form the regular $z=e^{-|u|}$ endpoint series through order
   $z^0$, retaining every negative power as well as the constant term;
3. take the exact limit of that series, so a genuine pole cannot be mistaken
   for a zero constant coefficient;
4. if both routes block, print a separate `blocked tests` list and exit with
   status 2 rather than counting the result as an ordinary Boolean failure.

The repaired endpoint script passes $12/12$. A fresh sequential run of all
twenty scripts passes $244/244$: the former $240$ tests plus four substantive
mode-space tests. This count records regression behavior only; it does not
promote algebraic or sampled tests to a gravitational existence proof.

### 1.3 H36 general theorem

**Verdict: correct objection. H36 is a conditional implication, not a phase-
space existence theorem.**

The result has been renamed a conditional finite-action proposition. A new
H0 makes the previously implicit analytic inputs explicit:

- a limiting phase space $\mathcal P_0$ and comparison maps
  $\iota_\epsilon:\mathcal P_0\to\mathcal P_\epsilon$;
- one common topology for bulk fields and boundary data;
- twice differentiable renormalized outer Hamiltonian, area, symplectic form,
  and surface descent;
- convergence of their first and second variations;
- dominating bounds that license differentiation under the integral and the
  interchange of brick-wall, anchor, and mode-sum limits.

Together with the old polarization, regularity, joint, transgression,
dynamics, and HW-representative inputs, the hypotheses are now H0--H6. The
conclusion is stated for vacuum Einstein gravity:

$$
\boxed{
\delta^2H_\xi^\infty
=\frac{s}{2\pi}
\delta^2\!\left(\frac{A[g,\gamma]}{4G}\right)
+E_{\mathrm{can,p}}[h^{\rm ext}].
}
$$

Equivalently, in an arbitrary representative and for the field-independent
linearized cocycle for which the surface descent is controlled,

$$
\boxed{
\delta^2H_\xi^\infty
=\frac{s}{2\pi}
\delta^2\!\left(\frac{A[g,\gamma]}{4G}\right)
+E_{\mathrm{can,p}}[h]
+\int_\gamma\Upsilon_{\mathrm p}[h,v].
}
$$

The undefined placeholder $\mathcal M_\xi^{(2)}$ has been removed. A matter
extension requires a specified matter action, symplectic current, wall
polarization, constraint normalization, and modular term.

### 1.4 H40 moving edge phase space

**Verdict: correct objection. The previous verification tier was too high.**

The safe definition starts from the complete pulled-back action on a fixed
reference region $M_0$,

$$
S_{{\rm p},X}[g,X]:=S_{\rm p}[X^*g;M_0],
$$

and defines

$$
\Theta_{{\rm p},X}[g,X;\delta]
:=\Theta_{\rm p}[X^*g;\delta(X^*g)].
$$

This retains the exact combined-gauge kinematics. It is not equivalent to
substituting $\delta g+\mathcal L_\chi g$ into an already integrated fixed-
domain formula while omitting the shape variation of domains, normals,
counterterms, endpoints, and joints.

The displayed quantities

$$
P_j^{\rm wall}=D_i\Pi^i{}_j,
\qquad
P_\perp^{\rm wall}=-\Pi^{ij}K_{ij}
$$

are therefore called the Brown--York wall contribution to embedding
momentum, not the total momentum. Bulk shape, constraint, counterterm,
endpoint, and joint contributions remain to be assembled.

Likewise,

$$
W_\zeta+I_{{\rm corner},\zeta}=I_{\rm fuse}
$$

is a correct redistribution identity for the fused comparison functional.
It is not an independent finite-$\epsilon$ Neumann construction. The
algebraic moving-edge script remains useful as a regression for the template,
but no longer serves as evidence for an integrable moving gravitational phase
space.

## 2. Correct fixed-anchor mode space

Let

$$
f(\phi)=\sum_{m\geq2}
\left(A_m\cos m\phi+B_m\sin m\phi\right)
$$

with

$$
\|f\|_{H^s}^2
=\sum_{m\geq2}(1+m^2)^s
\left(|A_m|^2+|B_m|^2\right),
\qquad s>\frac12.
$$

Cauchy--Schwarz gives

$$
|f(\pm a)|
\leq
\left[\sum_{m\geq2}(1+m^2)^{-s}\right]^{1/2}
\|f\|_{H^s},
\qquad a=\frac\pi4,
$$

so the endpoint maps $E_\pm f=f(\pm a)$ are continuous. The joint map
$E=(E_+,E_-)$ is onto because

$$
E(\cos4\phi)=(-1,-1),
\qquad
E(\sin2\phi)=(1,-1).
$$

Hence

$$
\boxed{
\mathcal H_A^s=\ker E_+\cap\ker E_-
}
$$

is closed of codimension exactly two. A bounded projection onto it is

$$
\boxed{
(P_Af)(\phi)
=f(\phi)
+\frac{f(a)+f(-a)}2\cos4\phi
-\frac{f(a)-f(-a)}2\sin2\phi.
}
$$

Direct substitution gives $E_\pm P_Af=0$ and $P_A^2=P_A$. Since the endpoint
map restricted to
$\operatorname{span}\{\cos4\phi,\sin2\phi\}$ is invertible, projecting all
remaining $H^s$-normalized Fourier basis vectors gives a Riesz basis of
$\mathcal H_A^s$. Odd frequencies survive through correlated combinations.

This is a Cauchy-cut condition. Requiring a purely chiral boundary vector to
fix an entire anchor worldline for every time is much stronger: periodicity
and $f(t-a)=0$ for all $t$ force that chiral function to vanish. The two
definitions are now kept separate.

## 3. Dependency repair

The following conclusions survive unchanged at their stated local or
selected-mode tiers:

- H01--H35 compact/fixed-embedding identities, with H34 now supported by the
  repaired exact endpoint regression;
- H39 trace-Neumann identities and its obstruction within the declared trace
  family;
- H41 compact Jacobi invertibility, smooth compact representatives, and the
  selected AdS-Rindler proper normal solution;
- the field-independent bilinear/cocycle algebra in H37.

The following conclusions are replaced:

- H36: “general phase-space theorem” becomes a vacuum proposition conditional
  on H0--H6;
- H40: “complete moving construction” becomes pulled-back kinematics,
  Brown--York wall contribution, Hayward pair, and compact comparison
  identity;
- H42: “full-tower no-go” becomes a per-frequency obstruction plus the
  projected fixed-anchor space $\mathcal H_A^s$.

A later finite-wall calculation adds a further correction. The projected
four-mode Brown--Henneaux block has nonzero pointwise Brown--York canonical-
pair flux at generic wall points (H47). Since
$\delta(\mathcal B+\delta w)=\delta\mathcal B$, no scalar transgression can
make that same unrestricted block Lagrangian. Hence H1 fails on the
fixed-wall projected block, and the proposed route through a universal
projected Brown--York polarization is closed. The correct replacement is a
moving-inner-embedding lift: for $h=\mathcal L_\zeta G$, take
$\chi=-\zeta$ on the inner-wall core and taper it to zero before the outer
boundary. The pulled-back core data and flux then vanish, while the outer
Brown--Henneaux charge is unchanged. At a finite anchor joint the two sections
cannot be matched exactly; the transition and moving-joint terms remain. The
projected transition term is now controlled by the exact theorem in Section
9. The raw far-joint kernel and finite-cylinder outer Brown--York source
curvature are also closed. More strongly, on the exact regulator class
$\tanh(\epsilon/2)=1/(2L)$ the integrated **complete finite-wall**
compensated kernel, including its finite phase and $r\sim L$ layer, is
$O((1+m+n)^7L^{-2})$. Thus the former separate finite-wall anchor-shift
entry was a double count and has been removed. The compensated outer
Brown--York source curvature also vanishes exactly; the compensated
Cauchy-corner and outer-joint mismatches obey respectively
$C(1+m+n)^6(L^2/R^2+L^4/R^2)$ and
$C(1+m+n)^6L^2/R^2$. Their relative-action sum has the required vanishing
total-flux limit and gives the local $\Upsilon$ form.

The far-wall endpoint calculation has since been upgraded from a finite jet
to a complete rational kernel. Exact metric and Brown--York momentum
coefficients give

$$
|\mathcal F_{mn}^{\rm wall}|
\leq C(1+m+n)^7
\left(\tanh\frac\epsilon2\,q^5+q^6\right),
$$

and therefore an integrated proper-tail bound
$C(1+m+n)^7(\tanh(\epsilon/2)L^{-5}+L^{-6})$. The $q^6$ term is the
remainder missed by the old finite-jet statement. The far moving anchor joint
has also been upgraded to the complete raw bound

$$
|\mathcal F^J_{mn}(q,\epsilon)|
\leq C(1+m+n)^6\tanh\frac\epsilon2\,q^5.
$$

This corrects the former untested $O(\epsilon^2)$ claim. The compensated
outer-joint correction remains an $O(L^2/R^2)$ sector. The $r\sim L$ proper-profile transition is now controlled on
the finite trigonometric domain. Locality and derivative counting reduce it
to a ten-parameter reflected third-jet endpoint functional. Ten exact
diagonal anomalies have rank eight; two newly integrated independent cross
anomalies complete the rank and yield the unique formula in H51 within the
third-jet ansatz. A proof audit then identified a missing derivative count:
the Brown--Henneaux bulk lift already contains two boundary derivatives, so
the conservative endpoint space extends through fifth jets and has 21
coefficients. Seven additional independently integrated cross anomalies
complete that larger rank. The unique solution sets all fourth- and
fifth-jet coefficients to zero and passes three unused projected direct
integrals. This restores the exact finite-rank edge cancellation algebra. It
does not by itself prove a projected ordinary transition theorem; that
logically separate theorem is supplied by Section 9.

Consequently, no dependent JLMS conclusion has to be recomputed to a
different numerical value: the project never established an unconditional
quantum JLMS theorem. What changes is the logical status of the classical
identity and the domain on which a future infinite-dimensional
$\Upsilon$ form must be computed.

## 4. Verification record after repair

**Verified:** the two-mode matrix punctuation and eigenvalues; the
cross-frequency counterexample; continuity and codimension of the $H^s$
endpoint kernel; the explicit projection; repaired endpoint pullback
$12/12$; mode-space regression $12/12$; all twenty scripts $244/244$ with
zero nonzero exit codes.

**Assumptions:** $s>1/2$; the displayed Fourier coefficient norm; fixed
anchors refer to the two points on the $t=0$ cut; vacuum Einstein gravity in
the H36 identity; field-independent $v,w$ in the H37 algebra; and every H0--H6
condition when taking the general regulator limit.

**Not verified:** an explicit optimal regulator rate or continuity at the
physical $H^{3/2}$ threshold; infinite-dimensional positivity; preservation
of the $t=0$ kernel by a chosen evolution; nonlinear field-dependent HW
brackets; matter completion;
or quantum edge, von Neumann-algebra, crossed-product, and nonperturbative
JLMS statements.

## 5. Superseded closure claim

This section records the claim made before the incremental H43--H60 audit.
That audit found that the claimed continuum closure was too strong. The
finite-mode calculations remain useful, but the following list is now read
with the corrections in Section 7:

1. H47 proves that the fixed-wall projected block is not Lagrangian and that
   no scalar transgression can repair it. H46--H51 construct the compensated
   moving lift, wall/joint estimates, full-rank fifth-jet transition
   functional, finite-rank edge one-form, and the diagonal $s>5/2$ theorem.
2. H40 directly varies the complete pulled-back moving action and derives the
   constraint-completed total embedding momentum; the finite-wall BTZ action
   benchmark passes exactly.
3. H43 constructs a non-collar smooth moving BTZ family satisfying
   H0$_X$--H6$_X$. For the projected AdS-Rindler family, H47 identifies the
   fixed-wall H1 failure and H51 gives a selected auxiliary moving/edge
   replacement, not an action-derived continuum theorem.
4. H52 constructs the finite-block linear field-dependent HW projector and
   cocycle algebra; H53 states the resulting classical projected subregion
   identity conditionally.

No operator algebra has been constructed. The audit's prohibition against
promoting these classical results to crossed-product or quantum JLMS claims
therefore remains in force.

## 6. Source boundary used in the repair

- [Speranza, Local phase space and edge modes for diffeomorphism-invariant theories](https://arxiv.org/abs/1706.05061), equations (4.6)--(4.9), supports the exact pulled-back bare-bulk potential and its on-shell $i_\chi L+Q_\chi$ rewrite; it does not derive the project-specific moving boundary improvements.
- [Harlow--Wu, Covariant phase space with boundaries](https://arxiv.org/abs/1906.08616) supports deriving the symplectic structure and Hamiltonian from a differentiable action with retained boundary terms; it does not supply the missing moving-wall polarization automatically.
- [Colin-Ellerin--Lin--Penington, Generalized entropy of gravitational fluctuations](https://arxiv.org/abs/2501.08308), Appendices B.1 and B.3, supports extremal-gauge sufficiency and the stated radial-gauge boundary-form result within its setup.
- [Takayanagi--Tamaoka, Gravity Edges Modes and Hayward Term](https://arxiv.org/abs/1912.01636) supports the local area--boost canonical pair, not the complete project moving action.
## Post-audit correction: the selected AdS-Rindler real phase

The audit was correct to separate a reproducible number from a derivation by
the new finite action, but a later physical-basis calculation found a more
basic error in the old benchmark. The displayed real generator was not the
declared real phase of the verified complex Brown--Henneaux primary: its radial
component had the opposite sign. Since either vector still generates a pure
diffeomorphism, the old linear and second-order Einstein tests did not detect
the mismatch.

The corrected benchmark now verifies at vector level

$$
\zeta_R=\frac{i\zeta_{-,0}-i\zeta_{-,0}^*}{\sqrt2}.
$$

Its results are

$$
\int_{\gamma_A}\Upsilon_{2501}=-\frac{32}{105},
\qquad
\int_{\gamma_A}\Upsilon_{\rm p}=\frac{32}{105},
$$

and

$$
\frac{\mathrm dH_{\gamma,\rm raw}^{[0]}}{\mathrm dx}
=-\frac18(1-x^2)^2(1+x^2).
$$

Thus the old $3424/15-74\pi$ project value, the $32/3$ raw endpoint tail, the
fused-horizon discontinuity, and the
$(16/3,-16/3,32/3)\sinh^2\epsilon$ wall split are withdrawn. The proper
completion converges numerically to $-32/105$ in 2501 orientation, with the
same symbolic pointwise limit and zero leading $L^{-2}$ anchor layer.

The main formal conclusion survives in a sharper form: the raw second-order
Noether representative still differs from the canonical-energy section
cocycle, but the difference is finite and cannot be diagnosed as cancellation
of an anchor divergence. A complete inner finite-action derivation and the
infinite projected-mode continuity theorem remain open.

## 7. Response to the incremental H43--H60 audit

This section records the repair state reached at H60. Section 10 gives the
subsequent PSL reducibility and positivity closure and supersedes its old
``projected only'' endpoint interpretation.

The incremental audit is accepted on its four central objections. One
definite algebraic error has been repaired; the other three objections expose
missing proofs and therefore require claim downgrades rather than invented
derivations.

| Audit item | Verdict | Repair |
|---|---|---|
| H51 ordinary Fourier truncation | **Correct objection; repaired.** | Replace it by the adapted nested projections $Q_M=TR_MT^{-1}=P_AR_M|_{\mathcal H_A^s}$. |
| Universal fifth-jet transition lemma | **The audit objection remains correct; repaired by a different proof.** | Retain the rank-21 reconstruction only as unprojected finite-part algebra. Section 9 proves the projected ordinary theorem directly by a two-symbolic-frequency point-jet factorization. |
| H53--H54 gravitational edge sector | **The audit objection was correct for the auxiliary matrix realization; the action-derived theorem has been repaired without identifying that auxiliary pair as gravity.** | The one-form $-F_{IJ}a^I\delta a^J/2$ remains only an optional selected auxiliary cotangent completion. H54 instead derives the moving-embedding/cross and Hayward pairs from the complete pulled-back action. Their gauge-core cancellation leaves the proper transition form, whose projected limit is zero by H51. H53 uses this action-derived route only. |
| H59 uniform schedule estimate | **Repaired and proved on the declared regulator class.** | Besides the transition, raw wall/joint, and raw outer results, the complete finite-wall compensated kernel is $O((1+m+n)^7L^{-2})$ for $\tanh(\epsilon/2)=1/(2L)$; the compensated outer source is exactly zero; the compensated corner and joint mismatches are $O((1+m+n)^6(L^2/R^2+L^4/R^2))$ and $O((1+m+n)^6L^2/R^2)$. For $(L,R)=(M^{10},M^{30})$ the conservative total error is $O(M^{-13})$. |
| H60 weak collar and time evolution | **The audit objection is accepted and repaired at the linear pulled-back-action tier.** | Every jet through $j_{ab}$ is included in an independent coefficient Sobolev collar. The fixed polynomial extension is bounded by explicit Fourier-weight inequalities. More importantly, $\Delta_Xg(P_{\rm HW}h,-V[h])=h$ at finite regulator, so each complete pulled-back action sector equals its fixed-section value and changes of off-cut extension are exact $(RW,-W)$ degeneracies. `weak_hw_collar_pullback_check.wl` passes $7/7$. Combining this with the proved fixed-section estimates gives vanishing total relative-action flux and hence the time-fibre symplectomorphism. |

### 7.1 Exact spectral-domain repair

Let

$$
C=\operatorname{span}\{\sin2\phi,\cos4\phi\},
\qquad
W=(1-\Pi_C)H^s,
$$

and let $T=P_A|_W:W\to\mathcal H_A^s$. Since
$T^{-1}f=(1-\Pi_C)f$, $T$ is a bounded isomorphism. If $R_M$ is the ordinary
nested coordinate projection on the complement-free Fourier basis, define

$$
\boxed{Q_M=TR_MT^{-1}=P_AR_M|_{\mathcal H_A^s}.}
$$

Then

$$
Q_MQ_N=Q_{\min(M,N)},
\qquad
\sup_M\|Q_M\|\leq\|T\|\,\|T^{-1}\|,
\qquad
Q_Mf\to f\quad\text{in }H^s,
$$

and every $Q_Mf$ obeys both endpoint conditions. This repairs the spectral
domain without changing the fixed-anchor space. The exact script
`ads_rindler_adapted_spectral_projection_check.wl` passes $8/8$ tests. It also
reproduces the audit counterexample: ordinary frequency-four truncation of
$P_A\cos5\phi$ has endpoint values $(1/\sqrt2,1/\sqrt2)$.

### 7.2 Corrected H60 collar tier

The previous graph norm omitted the second normal jet used by its own
extension. The repaired data norm is

$$
\|\mathcal J_Ah\|_{\mathscr J^s}^2
=\|V_{A,\perp}[h]\|_{\mathcal V_A^{s-2}}^2
+\sum_{|I|\leq2}\|j_I[h]\|_{\mathcal V_A^{s-3-|I|}}^2.
$$

The fixed Fermi polynomial/bump extension is bounded into the independently
defined candidate space

$$
\mathscr C_{\rho_0}^s
=H^{s-5}(\mathbb R_u;H^2(B_{\rho_0};N\gamma_A)).
$$

This is no longer an isometry obtained by defining the target norm through
`Ext^{-1}`. At this stage it was only a candidate weak collar. The later
finite-regulator identity $\Delta_Xg(P_{\rm HW}h,-V[h])=h$ proves sectorwise
boundary admissibility and continuity by reduction to the fixed section.
Likewise,
$P_{A,t}=U_{-t}P_AU_t$ is exact. H59a--H60 subsequently supply the completed
CPS form and vanishing total flux, so time translation is a proved linear
symplectomorphism.

### 7.3 Maximum claim at the H60 stage

The correct present result is:

> On the adapted fixed-anchor Brown--Henneaux spectral domain, the local
> projected form is continuous for $s>5/2$; the projected transition density
> converges strongly in $L^1$ with uniform rate
> $C(1+m+n)^6/L^2$ and has zero endpoint distribution and bulk remainder;
> the complete far-wall and raw far-joint kernels have uniform endpoint
> bounds; the integrated complete finite-wall compensated kernel has a uniform
> $O((1+m+n)^7L^{-2})$ bound on
> $\tanh(\epsilon/2)=1/(2L)$; both raw and compensated outer Brown--York
> source curvatures vanish; and the outer corner/joint mismatches have uniform
> two-scale bounds;
> the distinct rank-21 data reconstruct only an unprojected analytic finite
> part; the finite-rank obstruction admits an exact but nonunique auxiliary
> cotangent cancellation; and the HW projector and time-conjugation algebra
> are exact at finite rank. The exact weak-collar pullback reduces all sectors
> to the fixed section, whose displayed bounds make the total action-derived
> flux vanish on the explicit schedule. These ingredients prove the
> slice-covariant classical projected subregion identity H53 for
> $s>5/2$. This statement is not extended to arbitrary independent
> $\epsilon(L)$ schedules, the complete metric quotient, or positivity.

Section 10 supersedes the last two exclusions. It does not change the
arbitrary-schedule limitation.

No claim about matter, crossed products, von Neumann algebras, or quantum JLMS
is needed for this corrected classical project tier.

## 8. Stronger transition-kernel correction after the audit

The audit's objection to the universal fifth-jet lemma was correct, but the
direct two-frequency calculation yields a stronger verdict:

> **Incorrect as an ordinary unprojected finite-action statement.** Some of
> the symbolic values used by the rank-21 reconstruction are analytic finite
> parts of endpoint-divergent expressions, not ordinary RT integrals.

For the unprojected real cosine-$3$/cosine-$4$ pair, direct substitution into
the complete layered non-Killing Iyer--Wald density gives, with
$d=a-|\phi|$,

$$
B_{34}^{(L)}\big(\pm(a-d)\big)
=\frac{51L^4}{16\sqrt2}\frac1d+O(d^0).
\tag{8.1}
$$

Thus the inner contribution is logarithmically divergent at every finite
$L$ if the outer anchor cutoff is removed first. The earlier exact rank-21
linear algebra remains valid only as a reconstruction of a chosen analytic
finite-part functional. Its endpoint-coordinate/momentum factorization is
likewise a statement about that finite part; it is not yet a gravitational
moving-anchor cancellation.

This does not falsify the projected ordinary target. The two fixed-anchor
pairs first gave the following direct evidence:

$$
B_{34}^{P_A}(a-d)
=-\frac{3L^4}{4\sqrt2}d^2+O(d^3),
\qquad
B_{23}^{P_A}(a-d)
=\frac{3L^4}{8\sqrt2}d^2+O(d^3).
\tag{8.2}
$$

Their $L^2$ endpoint-layer profiles vanish, and the second pair has exact
integrated remainder $-2\sqrt2/(21L^4)+O(L^{-5})$. These are direct ordinary
integrals, independent of the finite-part fit.

The repaired dependency graph was therefore:

1. the projected theorem must be proved from a general projected
   two-frequency divisibility and a mode-uniform integrable bound; Section 9
   now supplies that proof;
2. the rank-21 finite-part functional is supplementary algebra and is not an
   input to that proof;
3. before the global-reducibility audit, an unprojected theorem appeared to
   require a combined finite-$R$ asymptotic-frame calculation; H61 corrects
   this premise by replacing the generator with the metric-equivalent
   endpoint-zero $P_{\rm PSL}$ representative;
4. the complete pulled-back action cancels the fully compensated gauge-core
   curvature, while an auxiliary cotangent pair cancelling the remaining
   transition form changes the phase space and is not forced by the original
   action.

**Verified:** the direct real-cosine CPS/layered-kernel agreement at one
two-frequency point; the pole (8.1); the projected expansions (8.2); the
exact projected cosine-$2$/cosine-$3$ integral; and the exact
gauge-core/transition decomposition.

**Assumptions:** vacuum Einstein AdS$_3$, the project finite-action
orientation, the corrected compactified Brown--Henneaux modes, fixed
$t=0$ anchors for (8.2), and the declared proper profile
$p_L=L^2/(L^2+r^2)$.

**Not verified at this stage of the audit:** the general projected
divisibility theorem and uniform majorant; the complete finite-$R$
unprojected cancellation; or any continuum H53 consequence depending on
those results. The first item is closed by Section 9. Section 10 explains why
the second is not an invariant missing cancellation and closes the full
metric-quotient consequence.

## 9. Closure of the projected transition objections

**Verdict: the audit's logical objection was correct, and the missing
projected theorem has now been proved by an independent calculation.** The
rank-21 finite-part fit is neither repaired nor promoted; it is bypassed.

On either half-geodesic use

$$
q=\cos2\phi\in[0,1],
\qquad
s=r\sqrt q,
\qquad
\gamma_A:\ s=1.
\tag{9.1}
$$

The retained wedge is $s\geq1$, so the inner outward conormal is
$-\mathrm ds$. A finite multi-index jet algebra takes every ambient
derivative in the complete non-Killing Iyer--Wald bilinear before setting
$t=0,s=1$. With $\lambda=L^2$, all projected real pairings have

$$
B_{\lambda,mn}^{AB}(q)
=\frac{\sum_{a=1}^4\lambda^a
q^{\nu_a}(1-q)\widehat N_{a,mn}^{AB}(q)}
{64\sqrt{1-q}\,(1+q)^{\rho_{AB}+(m+n)/2}
(q-1)(1+\lambda q)^4},
\tag{9.2}
$$

where

$$
(\nu_1,\nu_2,\nu_3,\nu_4)=(3,2,4,6),
\qquad
(\rho_{cc},\rho_{cs},\rho_{ss})
=\left(\frac{15}{2},\frac{13}{2},\frac{11}{2}\right).
\tag{9.3}
$$

After bounded $(1+q)$ ratios and endpoint phases are removed, every
coefficient has total frequency degree at most six. The factor $1-q$
cancels one degenerate-centre power and leaves the integrable weight
$(1-q)^{-1/2}$. Splitting $[0,1]$ at $1/2$ and using

$$
0\leq1-\left(\frac z{1+z}\right)^4\leq\frac4{1+z}
$$

gives

$$
\boxed{
\|B_{\lambda,mn}^{AB}-B_{mn}^{AB,{\rm local}}\|_{L^1(0,1)}
\leq\frac{C(1+m+n)^6}{\lambda}
=\frac{C(1+m+n)^6}{L^2}.
}
\tag{9.4}
$$

Therefore the projected endpoint distribution is exactly zero, there is no
bulk remainder, and

$$
\|B_{M,L}-B_M^{\rm local}\|_{H^s\times H^s}
\leq C_sM^6/L^2.
\tag{9.5}
$$

For $L=M^{10}$ the transition error is $M^{-14}$. This closes the audit's
universal projected-kernel and H59 transition-rate objections. The subsequent
complete rational kernels also close the raw far-wall and raw far-joint
remainders, with the corrected bounds
$C(1+m+n)^7(yq^5+q^6)$ and $C(1+m+n)^6yq^5$. They do **not**
close the finite-$R$ unprojected problem. Subsequent H59a--H59c calculations
close both outer Brown--York source curvatures, the raw and compensated
Cauchy-corner terms, the complete finite-wall compensated kernel, and the
compensated outer-joint mismatch. The former separate finite-wall anchor
shift is removed as a double count. With H60 these results prove total-flux
vanishing, slice symplecticity, and H53 as a complete action-derived
**projected** theorem. H61 subsequently extends it to the complete metric
quotient by a background-Killing representative change; charged $m\ge2$
modes are not quotiented.

**Verified:** exact coordinate-density calibration against the original
projected cosine-$2$/cosine-$3$ density; two-symbolic-frequency endpoint
divisibility at both anchors; the full real-sector factorization, frequency
degree, and centre cancellation; the scalar majorant and schedule arithmetic.
`ads_rindler_transition_point_jet_check.wl` and
`ads_rindler_transition_uniform_majorant_check.wl` are the reproducible
regressions.

**Assumptions:** vacuum Einstein AdS$_3$; the project finite-action
orientation and non-Killing potential; corrected compactified
Brown--Henneaux lifts; integer frequencies $m,n\geq2$; fixed $t=0$ anchors;
and $p_L=L^2/(L^2+r^2)$.

**Not verified at the Section 9 stage:** the full-quotient representative
choice, the HW-collar CPS theorem, slice independence, or positivity. H60
closes the middle two, and Section 10 closes the first and last.

## 10. PSL reducibility and positivity closure

### 10.1 Correction of the moving-anchor interpretation

**Verdict: the audit correctly rejected the unsupported physical anchor
momentum, but the later fibration/negative-frame repair was itself too
strong.** The endpoint values $q_\pm=f(\pm a)$ are coordinates on a chosen
Brown--Henneaux generator, not on the metric tangent. Frequency-zero/one
complements are exact global AdS Killing vectors. Therefore

$$
P_{\rm PSL}f
=f-\frac{q_++q_-}{2\cos a}\cos\phi
-\frac{q_+-q_-}{2\sin a}\sin\phi
$$

has zero endpoint values and satisfies
$h[P_{\rm PSL}f]=h[f]$. The residual endpoint-fixing global direction is
$w_A=(\cos\phi-\cos a)/\sin a$, so

$$
H^\sigma(S^1)/\mathfrak{sl}(2,\mathbb R)
\simeq
\ker(q_+,q_-)/\operatorname{span}\{w_A\}.
$$

This displays one chirality; the full real Brown--Henneaux tangent and energy
are the orthogonal direct sums of the right- and left-moving copies.

The old $P_A$ is not a gauge section: it adds charged modes and remains a
genuine selected physical subspace. The new $P_{\rm PSL}$ changes only the
global-Killing representative and covers the complete metric quotient.
Consequently the raw $L^4/d$ pole is representative-dependent; after the PSL
section, the endpoint Wronskian and its first derivative vanish and the H51,
H59, and H60 bounds apply without a new boundary oscillator. A negative-
Virasoro frame would be required only to gauge charged asymptotic symmetries,
which this theorem does not do.

This gives the corrected maximum action/CPS identity, for
$\sigma>5/2$,

$$
\boxed{
\delta^2H_\xi^\infty
=\frac{s_\xi}{2\pi}\delta^2\!\left(\frac{A}{4G}\right)
+E_{\rm can,p}(P_{\rm HW}h)
}
$$

on $H^\sigma(S^1)/\mathfrak{sl}(2,\mathbb R)$. It is linear, classical,
vacuum, action derived, regulator convergent, and slice covariant.

### 10.2 Complete positivity and regularity

Map $A=(-a,a)$ to the half-line with
$U=\sin((\phi+a)/2)/\sin((a-\phi)/2)$, put $s=\log U$,
$w_A=U/U'$, $f_0=P_{\rm PSL}f$, and $F_f=f_0/w_A$. The classical
Bañados modular-charge minus RT-length Hessian is

$$
\boxed{
E_{\rm can,p}[h[f]]
=\frac1{8G}\int_{\mathbb R}
\left[(F_f')^2+(F_f'')^2\right],\mathrm ds .
}
$$

It is manifestly nonnegative. Its kernel is exactly
$\mathfrak{sl}(2,\mathbb R)$, hence it is strictly positive on the metric
quotient. The combined form is continuous on the endpoint-fixed ordinary
$H^2$ section and on no $H^r$, $r<2$. It is not coercive in the ordinary
$H^2$ norm because an endpoint-layer sequence has nonzero limiting $H^2$
seminorm and energy $O(\delta)$. The separated point-anchor chart remains on
$H^\sigma$, $\sigma>5/2$; at $H^2$ only the combined closed form is claimed.

**Verified:** `ads_rindler_banados_positivity_check.wl` passes $17/17$ exact
checks. The PSL mode of `ads_rindler_transition_point_jet_check.wl` checks
both endpoints and all real sector pairings in six symbolic runs, passing
$30/30$ endpoint tests and $42/42$ independent source-structure tests.
H59a--H60 supply the unchanged
wall, joint, outer, collar, and total-flux estimates.

**Assumptions:** vacuum Einstein AdS$_3$, Brown--Henneaux boundary
conditions, $G>0$, one chiral sector at a time with orthogonal addition, and
the linked regulator class used in H59.

**Not verified and outside the goal:** nonlinear quotienting by the full
Virasoro group, matter, quantum modular operators, crossed products, or
quantum JLMS. The user-supplied independent audit file is retained unchanged;
this response records the later repair explicitly.
