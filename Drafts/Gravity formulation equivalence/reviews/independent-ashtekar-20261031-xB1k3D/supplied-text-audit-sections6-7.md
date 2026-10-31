# Supplied-text audit of the Ashtekar real-slice and constraint sections

**Verdict: §§6–7 are correct under their stated nondegenerate, time-gauge, closed/interior and boundary qualifications. No substantive sign or normalization correction is required.** The added general identity (7.8) closes the distinction between a flat test and a general local reality-tangency argument. One small lapse-polynomiality clarification is recommended below.

This is a separate supplied-text audit, performed only after the [fresh independent report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/report.fresh-phase.md>) and its executed algebra/output were preserved. It is not presented as another blind review. The parent source was not edited, and passed calculations were not rerun.

## Inspected scope

The requested text is [§§6–7 of the parent manuscript](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L244-L360>), including the subsequently added (7.8). Relevant convention definitions in §§1–3 and the inverse/ADM bridge in §5 were read as needed. The audited revision had 431 lines. The Samuel computation and the separate real-Barbero boundary counterexample were not rederived or audited.

## Findings

### 1. Reality conditions and the boundary defect: correct

The conditions in [§6:246–260](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L246-L260>) correctly require both real positive nondegenerate triad data and real reconstructed extrinsic curvature. They do not mistakenly require a real chiral connection.

With the manuscript's definition
\[
\mathcal B_\gamma(e)=\frac1{2\kappa\gamma}\oint e_i\wedge\delta e^i,
\]
the asserted raw defect in [§6:265–273](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L265-L273>) is exactly
\[
\rho^*\Omega^{\rm raw}_\gamma-\overline{\Omega^{\rm raw}_\gamma}
=2\delta\mathcal B_\gamma(\overline e).
\]
There is no missing factor of two or reversed sign. In the fresh report I used the unnormalized symbol \(B=\oint e\wedge\delta e\), so the same result there is \((\kappa\gamma)^{-1}\delta B[\overline e]\). The two notations agree.

The completed-potential conjugation statement is also correct when the common geometric EC variables are conjugated with it. Its scope is appropriately local in complex field space. This audit confirms the relative chiral correction and the use of the stated common EC corner; it is not a new derivation of that wall action's entire variational principle.

### 2. Finite complex gauge arrows: correct

The endpoint argument in [§6:275](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L275>) is decisive: an invertible real triad at both endpoints forces the pure internal matrix relating them to be real. The claim is correctly restricted to pure internal transformations in the chosen time-gauge real section. It is not confused with compensated refoliation or a Lorentz boost that changes the internal normal.

### 3. Exceptional complex Holst values: convention-consistent

The parent manuscript uses the **positive** Holst term and therefore \(\gamma=-\beta_{\rm parent}\). The fresh report chose the negative Holst term and therefore \(\gamma=\beta_{\rm fresh}\). The conversion is
\[
\beta_{\rm fresh}=-\beta_{\rm parent},\qquad
\star+\beta_{\rm parent}^{-1}
=\star-\beta_{\rm fresh}^{-1}.
\]
Thus [§6:277](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L277>) correctly refers to \(\beta_{\rm parent}=\mp i\) when \(\gamma=\pm i\). Its rank-three/null-chirality statement is correct, and it explicitly avoids the invalid generic real-Holst inversion. No sign should be changed merely to match the fresh report's different action convention.

### 4. Polynomial constraints and ADM normalization: correct

The curvature convention and the full-sum normalization give precisely [§7:289–308](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L289-L308>):
\[
V_a=\gamma\sqrt h(\nabla_aK-\nabla_bK^b{}_a),\qquad
\mathcal S=-hR+\gamma^2h(K^2-K_{ab}K^{ab}).
\]
Consequently \(V_a/(\kappa\gamma)\) and \(\mathcal S/(2\kappa\sqrt h)\) have the stated ADM normalization at \(\gamma^2=-1\). The spatial-diffeomorphism subtraction \(-A_a^iG_i\) is also correct.

The non-Lorentzian datum in [§7:310–319](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L310-L319>) is an exact nondegenerate constraint-data counterexample. Its description does not overclaim a complete spacetime development. The finite-gauge obstruction follows from item 2.

### 5. Flat-lapse test: all signs and its physical interpretation are correct

With the stated Hamiltonian convention, at flat \(E=I,A=K=0\),
\[
\dot E_k^b=\gamma\epsilon^{abk}\partial_aN,\qquad
\dot A_a^i\big|_{H_{\mathcal S}}=0.
\]
The Gauss generator produces \(\dot E=\lambda\times E\), so the correct compensator is **minus**
\(\lambda^i=-\gamma e^{ai}\partial_aN\). At the flat datum this gives
\[
\dot E=0,\qquad\dot A_a^i=+\gamma\partial_a\partial_iN,
\qquad\dot K_{ab}=+\partial_a\partial_bN.
\]
These agree with the positive geometric sign of \(K\) in the manuscript.

The explicit clarification in [§7:339–346](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L339-L346>) is important and correct: the uncorrected flat test has zero induced metric variation and loses only the strong real-frame section at that instant. It is not misrepresented as a physical metric-reality counterexample. The complex Gauss piece is correctly treated as one part of a combined real-tangent evolution, not as an additional unrestricted gauge equivalence of the real theory.

### 6. Added nonsymmetric-K identity (7.8): correct and sufficient for the claimed local tangency

The new paragraph [§7:348–358](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L348-L358>) agrees with the independently proved off-shell identity. With
\[
J_i=G_i/\gamma,\qquad
Q^a=\epsilon^{abc}e_{ck}K_b^k=-e^{ai}J_i,
\]
compatibility gives the derivative contribution
\(\mathcal S_{\rm linear}=2\gamma\sqrt h\,\partial_aQ^a\). Integration by parts therefore gives the positive boundary remainder
\[
H_{\mathcal S}[N]+G[-\gamma e^{ai}\partial_aN]
=H_{\rm real}[N]+\frac\gamma\kappa\oint NQ^a\,dS_a.
\]
The manuscript correctly distinguishes \(\operatorname{tr}(K^2)\) from a positive Frobenius norm for nonsymmetric \(K\). It also correctly records the field-dependent-multiplier terms proportional to Gauss.

On a closed slice or for interior-supported functionals, the identity supplies the general manifestly real Hamiltonian extension, not merely a finite example. On a bounded region, the surface value vanishing on Gauss does **not** by itself prove off-shell differentiability. The text now states this gap explicitly. Its final scope statement in [§7:360](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L360>) is appropriately limited.

## One recommended wording clarification

At [§7:323–339](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L323-L339>), the normalized generator uses an ordinary lapse \(N\). The *constraint density* \(\mathcal S\) is polynomial, but \(H[N]=\int N\mathcal S/(2\kappa\sqrt h)\) is not polynomial as a functional of \(E\) when \(N\) is fixed.

One sentence would remove possible ambiguity:

> The independent polynomial smearing is the densitized lapse \(\widetilde N=N/\sqrt h\), of weight minus one; here we fix the real ordinary lapse \(N\), and the difference between varying at fixed \(N\) and fixed \(\widetilde N\) is proportional to the scalar constraint on its zero surface.

This is a precision improvement, not a correction to (7.5), the flat test, or (7.8).

## Evidence and preservation

No new mathematics kernel was run for this supplied-text audit. The independent exact evidence already covers the starred contractions, both chiral signs, the torus datum, the flat compensator, and the general nonsymmetric-K identity on a curved triad.

- [Evidence-preservation manifest](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/provenance-and-replay.md>).
- [Independent report with updated evidence links only](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/report.md>).
- [Frozen pre-audit report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/report.fresh-phase.md>).

The executable CAS files now have no-overwrite replay plumbing. Their original executed contents were first frozen byte-for-byte, and the original text/WXF results were left unchanged. Raw server diagnostics were preserved. The replay-only plumbing was not executed, and no fresh result is being attributed to it.
