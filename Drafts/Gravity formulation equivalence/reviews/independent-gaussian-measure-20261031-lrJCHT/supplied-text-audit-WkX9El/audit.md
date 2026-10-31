# Scoped supplied-text audit: regulator, counts, phases, and independent cutoffs

## Verdict

**The requested claims in §§6.1, 6.3 and 7 are correct under the stated common-Casimir prescription and zero-free complete-geometry hypotheses. No formula correction is required in the audited claims.** In particular the auxiliary phase sign, the absence of an extra spin-2 multiplicity factor in (6.8), and the normalization shift delta c = -6 pi nu in the parent's F = log Z convention are consistent.

This is a supplied-text audit, not an independent discovery of the supplied result. It does not independently certify the full Harish-Chandra/orbital closure in §6.2, the earlier metric central coefficient, or the completed action identity. Thus the final continuum-equality assertion in the last paragraph of §6.3 remains conditional on those separate inputs for purposes of this audit.

## Source and provenance

Audited source: [Geometric CS Gaussian map and regulator](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md>). The requested ranges are [§6.1:287–323](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L287-L323>), [§6.3:361–392](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L361-L392>), and [§7:394–411](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L394-L411>).

The exact reviewed version was copied to the [frozen source snapshot](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gaussian-measure-20261031-lrJCHT/supplied-text-audit-WkX9El/source-snapshot.md>). SHA256 of both the source and snapshot, measured immediately after copying, was

```
3811969d9fcc449b410cc93665f15825363c7ea6621a0dba596b3e7bb520d35b
```

The snapshot was then read at the scoped locations. The original source was not edited. No kernels were rerun. The [earlier independent derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gaussian-measure-20261031-lrJCHT/report.md>) and its existing evidence remain separate. The present note accepts the auxiliary eigenvalues stated in the supplied §2 for the purpose of checking their use in §6.3; it is not another independent derivation of that Hessian.

## 1. §6.1: regulator and logarithm branch

### Branch and contour

The definition

\[
 \operatorname{Log}_{-}H=\log|H|-i\pi\Pi_-(H)
\]

in [snapshot:289–306](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gaussian-measure-20261031-lrJCHT/supplied-text-audit-WkX9El/source-snapshot.md#L289-L306>) is consistent with rotating a negative real Gaussian coordinate through +i. For c<0,

\[
 \int_{i\mathbb R}\frac{dz}{\sqrt{2\pi}}e^{-cz^2/2}
 =i|c|^{-1/2}
 =\exp[-\tfrac12(\log|c|-i\pi)].
\]

The orientation is essential. The indicated cut along the positive imaginary axis permits arguments in (-3pi/2,pi/2), so the positive real axis has argument zero and the negative real axis has argument -pi. Hence the holomorphic-branch description is consistent with the displayed spectral formula, not its opposite phase.

### Finite-fiber Schur identity

For H = T^dagger diag(H0,Q) T with det T=1 and Hermitian invertible finite matrices, the determinant modulus and Sylvester inertia identities imply

\[
 \operatorname{tr}\operatorname{Log}_{-}H
 =\operatorname{tr}\operatorname{Log}_{-}H_0
  +\operatorname{tr}\operatorname{Log}_{-}Q
\]

as an exact equality, not merely modulo 2pi i. Thus [snapshot:314–323](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gaussian-measure-20261031-lrJCHT/supplied-text-audit-WkX9El/source-snapshot.md#L314-L323>) correctly includes the phase information omitted by a bare determinant identity.

The common regulator is scalar on each multiplicity fiber, so weighting does not spoil that finite trace identity. The text correctly distinguishes finite multiplicity from a finite-dimensional thermal Hilbert space. The actual passage to the complete quotient trace is §6.2 and is outside this scoped certification.

The definition with geodesic spatial finite part first, the same regulator for ghosts and normalization factors, and the explicit statement that it is not an H-alone spectral zeta determinant are necessary distinctions and are all present.

## 2. §6.3: constant counting, phase, and real spectral determinants

### Zero constant count

The argument in [snapshot:363–371](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gaussian-measure-20261031-lrJCHT/supplied-text-audit-WkX9El/source-snapshot.md#L363-L371>) is valid for the specified smooth complete hyperbolic quotient. Identity heat terms have powers epsilon^(-3/2+j), j a nonnegative integer, and therefore no epsilon^0 coefficient. Thermal nonidentity heat images are exponentially suppressed at short time on a nondegenerate beta>=beta_* neighborhood. A source-dependent Vren multiplying these terms does not create an epsilon^0 power. There is no finite wall supplying additional boundary heat coefficients, and no zero-mode deletion supplying a finite negative count.

Thus N0=N1=N2=0 in the precise minimal Laplace finite-part prescription. This does not assert that covariance alone forces that prescription, nor that every order-zero multiplication operator has an intrinsic unweighted spectral zeta function.

### Auxiliary contribution and the factor of five

Accepting the supplied Q eigenvalues, with a>0, its spin-0, spin-1 and spin-2 restrictions are 4a, 2a and -2a. The auxiliary contribution to F=log Z is consequently

\[
 F_K=-\frac12\left[\log(4a)N_0+\log(2a)N_1+
                 (\log(2a)-i\pi)N_2\right]
\]

or

\[
 F_K=-\frac12\log(2a)(N_0+N_1+N_2)
     -\frac12\log2\,N_0+\frac{i\pi}{2}N_2.
\]

This is exactly (6.8) in [snapshot:373–381](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gaussian-measure-20261031-lrJCHT/supplied-text-audit-WkX9El/source-snapshot.md#L373-L381>). There is no missing factor of five: N2 is already the trace/count on the full spin-2 bundle. In a single finite fiber cell it counts five real negative directions and gives i^5=i; replacing it by 5N2 would count them twice. All logarithms presuppose the chosen field-measure units; a constant change of those units is another zero-count normalization factor in this prescription.

The same reasoning applies to the fixed algebraic coframe, trace, ghost, and CS-coordinate constants. The statement that no relative local source-dependent contour phase remains is appropriately limited to this geometric branch and common regulator. It is not a determination of an ordinary-CS eta invariant or a global framing phase.

### Weighted kinetic logarithm

Equation (6.9) in [snapshot:383–392](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gaussian-measure-20261031-lrJCHT/supplied-text-audit-WkX9El/source-snapshot.md#L383-L392>) has the correct sign. The Mellin integrand for Tr(e^(-epsilon R) log R) is

\[
 -\Gamma(z)\epsilon^{-z}\zeta_R'(z),
\]

so the z=0 residue is -zeta_R'(0). The zero-count result zeta_R(0)=0 removes constant normalizations but not this derivative. For example the scalar identity contribution is log det R = -Vren a^3/(6pi), while zeta_R(0)=0. The supplied distinction between a constant determinant and a real kinetic spectral determinant is therefore substantive and correct.

Once the separate finite-fiber-to-trace step and the stated metric identification are established, the local and image parts both agree; this is stronger than merely reproducing a thermal oscillator character. This scoped audit does not reprove those separate inputs or the final numerical coefficient in (0.1).

## 3. §7: independent cutoffs and unequal weights

For independent projectors P and J and [J,Q]=0, the retained y block has Schur complement

\[
 H_P+PD^\dagger QDP
 -PD^\dagger QJ(JQJ)^{-1}JQDP
 =H_P+PD^\dagger Q(1-J)DP.
\]

Here the inverse is restricted to im J and Q is nondegenerate there, as in the supplied constant auxiliary setting. Thus (7.1) in [snapshot:396–403](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gaussian-measure-20261031-lrJCHT/supplied-text-audit-WkX9El/source-snapshot.md#L396-L403>) is correct. Its Fourier example gives

\[
 \frac{2N^2+1}{N^2+1}\longrightarrow2,
\]

and the corresponding normalized Gaussian ratio is its inverse square root. The existence of dense limiting mode spaces does not remove this counterexample. Exact finite determinant checks for this example were already preserved in the [independent kernel output:14–23](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gaussian-measure-20261031-lrJCHT/actual-result.txt#L14-L23>); they were not rerun for this audit.

The unequal-weight example in [snapshot:405](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gaussian-measure-20261031-lrJCHT/supplied-text-audit-WkX9El/source-snapshot.md#L405>) is also correct. For

\[
 T=\begin{pmatrix}1&0\\-s&1\end{pmatrix},\qquad
 H=T^TT=I+\begin{pmatrix}s^2&-s\\-s&0\end{pmatrix},
\]

expanding log H = (H-I)-(H-I)^2/2+... gives diagonal entries +s^2/2 and -s^2/2 to quadratic order. Therefore

\[
 \operatorname{tr}(\operatorname{diag}(w_1,w_2)\log H)
 =\frac{w_1-w_2}{2}s^2+O(s^4),
\]

although det H=1. Equal scalar weighting on a common fiber is precisely what avoids this obstruction.

## 4. §7: H-alone zeta/eta and finite local normalization

The warnings in [snapshot:407–411](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gaussian-measure-20261031-lrJCHT/supplied-text-audit-WkX9El/source-snapshot.md#L407-L411>) are valid. An infinite-dimensional constant auxiliary branch has no ordinary positive-order spectral-zeta starting half-plane. A nonzero derivative shear can retain an asymptotically constant branch. Therefore a weighted logarithm with a separate positive reference R is not merely notation for an H-alone zeta or eta prescription. The text does not incorrectly exclude the possibility of another independently gauge-fixed elliptic CS operator; it correctly requires a separate comparison for it.

### Explicit conversion to the parent's F convention

The parent uses

\[
 F=\log Z,\qquad
 \delta_\sigma F=\frac{c}{24\pi}\int\sqrt\gamma\,\sigma R_\gamma,
 \qquad
 \delta_\sigma V_{\rm ren}=-\frac14\int\sqrt\gamma\,\sigma R_\gamma.
\]

Adding exp(nu Vren) to Z adds +nu Vren to F and gives

\[
 \delta_\sigma F_{\rm add}=-\frac\nu4\int\sqrt\gamma\,\sigma R_\gamma,
 \qquad \boxed{\delta c=-6\pi\nu.}
\]

The earlier independent report instead used W=-log Z and W_add=lambda Vren, hence delta c=+6pi lambda. The conversion is lambda=-nu. There is no sign disagreement.

The text correctly treats this as a bulk-local normalization/coupling freedom, not as a harmless finite boundary-local change of the same fixed CFT anomaly. The minimal prescription has no such extra term from the evaluated constant counts. More precisely, that conclusion uses both (6.7) and the commitment not to append a new finite Vren normalization; covariance or (6.7) alone would not forbid somebody from defining a different prescription afterward. The supplied wording already restricts the claim to the stated prescription, so this is a clarification, not a required correction.

## Audit boundary

**Checked analytically:** branch/contour sign; exact finite trace-log/inertia logic; spin-count multiplicities in the auxiliary contribution; zero heat-count reasoning under the specified hypotheses; Mellin determinant sign; cutoff Schur residual; unequal-weight Taylor coefficient; F versus W anomaly-normalization conversion; the scope of the H-alone zeta/eta warning.

**Reused evidence:** the earlier independent finite cutoff calculations. No new CAS claims are made and no kernel was rerun.

**Not certified by this scoped audit:** the full §6.2 HC/orbital proof, the actual auxiliary Hessian derivation, the exact prior metric coefficient, nonlinear/global sectors, independent CS framing/eta matching, or a physical coupling calibration. The original source and the initial independent report were not modified.
