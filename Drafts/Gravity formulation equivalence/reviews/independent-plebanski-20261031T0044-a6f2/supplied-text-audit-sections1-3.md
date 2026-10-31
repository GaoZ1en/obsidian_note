# Supplied-text audit: local Plebanski classification and bulk equations

## Verdict and audit status

**Bounded acceptance: the supplied local classification, real square-root reconstruction, eight-component count, regular constrained-substitution argument, and non-Einstein product example are mathematically sound. No substantive correction to their conclusions is required.** Two short proof clarifications are recommended below, especially an explicit sign relabeling when the Lorentz dual is used in the reconstruction algorithm.

This is a **supplied-text audit**, not a claim of a second fresh independent derivation. The audited text is the bulk algebraic/EL content of [sections 1–3 of the synthesis](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/08 Real Plebanski branch comparison.md#L28-L218>), including its alternative four-line/coefficient reconstruction. The prior independent derivation is preserved in the separate [local report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-plebanski-20261031T0044-a6f2/report.md>). No previously passed CAS computation was rerun, and no synthesis file was edited.

This audit does **not** accept or reject the CPS potential conventions, wall/corner identities, global lifting/quotient claims, canonical discussion, or quantum claims. In particular, the potential/CPS statements at the end of section 1 are outside the present bulk algebraic/EL verdict.

## 1. Rulings and the four-line reconstruction

The claims in [section 2.2](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/08 Real Plebanski branch comparison.md#L100-L135>) are correct.

### 1.1 Exhaustiveness and incidence

The maximal wedge-null three-planes are precisely
\[
A_\ell=\ell\wedge W,\qquad B_H=\Lambda^2H.
\]
The short geometric argument is valid. One way to make its “maximality and pairwise incidence” step completely explicit is this: after selecting \(a\wedge b\) and \(a\wedge c\), a plane containing \(a\) but not lying in \(H=\operatorname{span}(a,b,c)\) cannot intersect a plane inside \(H\) that does not contain \(a\). Thus the two possibilities cannot be mixed inside a pairwise wedge-null three-plane. Their common part has dimension only two, so a maximal three-plane must choose one type.

For distinct elements of one ruling,
\[
\dim(A_\ell\cap A_{\ell'})=1,
\qquad
\dim(B_H\cap B_{H'})=1.
\]
For opposite rulings,
\[
A_\ell\cap B_H=
\begin{cases}
\ell\wedge H,&\ell\subset H,\\
0,&\ell\not\subset H,
\end{cases}
\]
so the dimensions are two or zero. An invertible wedge-conformal map preserves these dimensions. Fixing the image type of one alpha-plane therefore fixes the image type of every other alpha-plane, and then forces all beta-planes into the opposite type. It must preserve both rulings or exchange both; it cannot mix them on different lines.

The Lorentz star exchanges the rulings. An elementary check sufficient in conjunction with that dichotomy is
\[
\star\operatorname{span}(01,02,03)
=\operatorname{span}(23,31,12)
=\Lambda^2\operatorname{span}(1,2,3).
\]
Here the first space is alpha-type and the last beta-type. The fact that the Lorentz star is a wedge **anti**-isometry, rather than an isometry, does not affect this argument: wedge-conformality permits a negative conformal factor.

### 1.2 Why the four image lines give the stated coefficients

In the ruling-preserving case, the source alpha-planes associated with a basis have pairwise intersections
\[
A_i\cap A_j=\operatorname{span}(E_i\wedge E_j).
\]
Their images are \(A_{f_i}\), so invertibility gives
\[
B^{ij}=c_{ij}f_i\wedge f_j,\qquad c_{ij}\ne0.
\]
The four representatives \(f_i\) must be independent. Otherwise all six images would lie in \(\Lambda^2S\) for a space \(S\) of dimension at most three, contradicting their six-dimensional span.

The three complementary wedges, including the minus sign in the \((02),(13)\) wedge, give exactly
\[
c_{01}c_{23}=c_{02}c_{13}=c_{03}c_{12}.
\]
No minus sign is missing in this coefficient relation: the sign of \(f_0\wedge f_2\wedge f_1\wedge f_3\) is matched by the corresponding epsilon component.

### 1.3 Exact real sign and square-root check

Put
\[
q=\frac{c_{01}c_{02}}{c_{12}},\qquad
s=\operatorname{sign}q,\qquad a_0=\sqrt{|q|},\qquad
 a_i=\frac{c_{0i}}{s a_0}.
\]
Since every coefficient is nonzero, \(q\ne0\), every \(a_i\) is real and nonzero, and \(a_0^2=sq\). Immediately,
\[
s a_0a_i=c_{0i},\qquad
s a_i a_j=\frac{c_{0i}c_{0j}}q.
\]
The last expression equals \(c_{12}\), \(c_{13}\), and \(c_{23}\), respectively, using the complementary-product identities. Thus the displayed recipe is correct for both signs of \(q\), without imposing an unannounced positivity condition on the coefficients.

There is no extra ambiguity hidden in the choices of line representatives. Under \(f_i\mapsto\lambda_i f_i\), the coefficients change by \(c_{ij}\mapsto c_{ij}/(\lambda_i\lambda_j)\), hence \(q\mapsto q/\lambda_0^2\). The sign \(s\) is unchanged, and the reconstructed coframe changes only by the common sign \(\operatorname{sign}\lambda_0\). Smooth nonvanishing line representatives exist locally, the coefficient functions are smooth and nonzero, and the chosen positive square root is smooth. The stated smooth local reconstruction follows.

**Recommended clarification at the dual-reconstruction sentence:** if the preserving-case algorithm is applied to \(\widetilde B=\star B\) and produces \(\widetilde B=\widetilde s\Sigma(e)\), then
\[
B=-\widetilde s\star\Sigma(e),\qquad s=-\widetilde s.
\]
This is simply the relabeling already implicit in the free final sign \(s=\pm1\), so the supplied conclusion is correct. Writing the intermediate sign explicitly would prevent an implementation of the recipe from accidentally treating \(\star^{-1}\) as \(\star\) instead of \(-\star\).

## 2. Finite ambiguity, orientations, and components

The statements in [sections 2.2–2.3](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/08 Real Plebanski branch comparison.md#L133-L156>) are accepted.

- Equality within one label reduces to \(\Lambda^2A=1\), so \(A=\pm1\); equality between the two overall signs would require \(\Lambda^2A=-1\), which has no real solution.
- The ruling action distinguishes dualized and undualized labels.
- The volume identities are \(\nu_{s\Sigma}=\epsilon(e)\) and \(\nu_{s\star\Sigma}=-\epsilon(e)\), independent of \(s\).
- Each fixed label has two coframe-orientation components. The two determinant components of \(GL(4,\mathbb R)\) are connected, and quotienting by \(\{\pm1\}\), both elements of positive determinant in dimension four, does not identify them.
- The smooth local reconstruction makes the discrete branch/sign/orientation labels locally constant. Hence these eight connected images really are connected components, rather than merely eight disjoint parametrized subsets.
- Restricting to positively oriented coframes keeps four components, with positive \(\nu_B\) for the two undualized labels and negative \(\nu_B\) for the two dualized labels. The invisible replacement \(e\mapsto-e\) preserves orientation and reverses the coframe-induced time orientation.

A notation distinction is worth retaining across the two reports: the synthesis uses \(\chi=\epsilon(e)/\epsilon_g\) for **coframe orientation**. The determinant invariant called \(\chi_B\) in the independent report equals \(+1\) on nondual branches and \(-1\) on dual branches. They are different invariants and should not be identified. There is no internal inconsistency in the synthesis's definition.

## 3. Regular constrained substitution

The rank and equivalence argument in [sections 2.3–2.4](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/08 Real Plebanski branch comparison.md#L149-L162>) is valid for the stated nondegenerate bulk problem with all coframe variations and an independently varied connection.

For the wedge matrix \(J\), \(J^2=1\). At invertible \(M\), a prescribed symmetric matrix \(S\) is reached by
\[
\delta M=\frac12SM^{-T}J,
\qquad
\delta M J M^T+MJ\delta M^T=S.
\]
Projecting out the one allowed \(J\) direction therefore gives rank twenty. The faithful infinitesimal exterior-square representation gives a 16-dimensional coframe tangent image, which equals the constraint kernel by dimension and inclusion.

The actual Plebanski multiplier, rather than merely a formal multiplier for a different defining function, also has the required uniqueness. The map
\[
\phi\longmapsto \phi_{IJKL}B^{KL}
\]
from the 20-dimensional epsilon-tracefree, pair-symmetric multiplier space is injective because the six \(B\)'s form a basis. Differentiating simplicity shows its image annihilates every allowed tangent. The conormal space is also 20-dimensional, so the image is precisely the conormal. Thus the constrained coframe equation restores one and only one allowed \(\phi\).

With independent-pair matrices the factor check is
\[
N=2PM,\qquad P=\tfrac12 NM^{-1}.
\]
This agrees with the full-pair convention and with both multiplier formulas in section 3. The unchanged connection variation supplies \(DB=0\). This proves the bulk equivalence without assuming that arbitrary constraint substitution is harmless. No extension of this verdict to the degenerate locus or to a smaller gauge-fixed coframe ansatz is intended.

## 4. Bulk equations and product counterexample

The bulk equations and normalizations in [sections 1 and 3](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/08 Real Plebanski branch comparison.md#L54-L75>) and [the branch comparison](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/08 Real Plebanski branch comparison.md#L164-L218>) agree with the independent derivation:

- Simplicity is \(B^{IJ}\wedge B^{KL}=-\nu_B\epsilon^{IJKL}\).
- Nondegenerate \(DB=0\) gives \(T=0\) for both labels, with no residual torsion branch.
- The undualized multiplier is \(\phi=sR/2\); its epsilon trace is the algebraic Bianchi identity, not a scalar-curvature equation.
- The dualized multiplier is \(\phi=-sR\star/2\); pair symmetry removes the nine traceless-Ricci components, and \(\epsilon\phi=sR\) removes scalar curvature. This gives precisely Ricci flatness.
- The substituted bulk actions have the stated coefficients \(s/(4\kappa)\) and \(s/(2\kappa)\). Their torsion-free densities are \(s\chi R\epsilon_g/(2\kappa)\) and zero.

For the product example, take \(k\) to be a real nonzero constant. Then
\[
de^2=k e^1\wedge e^2,\qquad \omega^{12}=-k e^2
\]
gives zero torsion, and
\[
F^{12}=d(-k e^2)=-k^2e^1\wedge e^2
\]
is the only independent nonzero curvature component. Therefore
\[
R_{1212}=-k^2,\qquad
\operatorname{Ric}_{IJ}=\operatorname{diag}(0,-k^2,-k^2,0),\qquad R=-2k^2.
\]
The time-time component forces any Einstein proportionality factor to vanish, contradicting the nonzero spatial Ricci components. With \(B=s\Sigma\) and \(\phi_{1212}=-s k^2/2\), the full-pair curvature equation reads
\[
2\phi_{1212}B^{12}=-k^2e^1\wedge e^2=F_{12}.
\]
Its epsilon trace vanishes, and simplicity and \(DB=0\) hold. The example is correct and is genuinely non-Einstein, not merely a different value of the cosmological constant. The previous exact checks already cover it; none was rerun for this audit.

## 5. Precise suggested text changes and final boundary of acceptance

There are **no mandatory changes to the mathematical conclusions** in the audited material. The following optional local changes would make the constructive argument more explicit:

1. In [the incidence paragraph](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/08 Real Plebanski branch comparison.md#L110>), call the members of the rulings “maximal wedge-null three-planes” rather than just “planes,” distinguishing them from the two-dimensional planes of decomposable forms used earlier in the same paragraph. One sentence using the zero/two versus one intersection dimensions would expose the preservation/exchange argument completely.
2. In [the dual-reconstruction sentence](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/08 Real Plebanski branch comparison.md#L133>), add the explicit \(\widetilde s\mapsto-\widetilde s\) relabeling displayed above. This is a precision improvement, not a change of branch classification.
3. In [the product example](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/08 Real Plebanski branch comparison.md#L190>), say “real constant \(k\ne0\)” to make the parameter assumption explicit.

The accepted result is local, real, nondegenerate, four-dimensional, Lorentzian, and at the specified zero cosmological constant. This supplied-text audit adds no new CAS evidence and makes no claim about the excluded boundary, global, canonical, or quantum statements.
