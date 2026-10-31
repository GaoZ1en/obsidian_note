# Follow-up audit of the supplied Plebanski synthesis

## Verdict and independence boundary

**Correct under the declared regional boundary domain.** I found no correction needed in the requested section 4, section 6, or signed-form summary (0.2) of [08 Real Plebanski branch comparison](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/08 Real Plebanski branch comparison.md>). The boundary-domain and ambient-background qualifications now make the claims appropriately precise.

This is a **later audit of supplied text**, requested after the [independent derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/plebanski-independent-covariant-20261031T004402-9b7c.md>) was completed. It is not evidence that the synthesis was read before that derivation. No synthesis text was edited, and none of the passed mathematical checks was rerun. The follow-up does not independently certify the classification/global-reconstruction arguments outside the requested sections.

## 1. Signed regional forms

The summary [equation (0.2)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/08 Real Plebanski branch comparison.md#L13-L22>) correctly states

\[
\iota_{G,s}^{*}\Omega_{\rm Pl}=s\chi\,p^{*}\Omega_g,
\qquad \iota_{T,s}^{*}\Omega_{\rm Pl}=0.
\]

The same signs follow from the independently obtained potential identity, not merely the on-shell Lagrangian. The orientation factor \(\chi=\epsilon(e)/\epsilon_g\) must be retained. For \(s\chi=-1\), the natural metric reconstruction is antisymplectic wherever the metric form is nonzero; the supplied text correctly does not claim that every conceivable different dictionary is thereby excluded.

These are statements for the specified branch-dependent wall/corner completions. In particular, the topological result is not obtained by importing an unrestricted BF-shift quotient.

## 2. Full-simple wall values versus unrestricted interior histories

The distinction at [section 4, opening boundary-domain paragraph](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/08 Real Plebanski branch comparison.md#L222-L224>) is correct and necessary:

- Reconstruction requires the **full spacetime two-form value** of \(B\) along the wall to lie on the selected regular simple branch. Simplicity of only a pulled-back two-form on a three-dimensional wall would not reconstruct the required four-dimensional metric/coframe data.
- The boundary values of \(e(B)\), \(g(B)\), and \(N(B)\) are then well-defined up to the harmless local sign lift.
- Their tangential derivatives entering the wall action are determined on the wall; no arbitrary normal extension of a tetrad into nonsimple bulk histories is needed.
- Interior \(B\) variations, including those normal to the simplicity locus, can remain unrestricted. Compactly supported interior variations still give the full multiplier and \(B\) equations. Smooth solutions then satisfy their limiting boundary values.

Thus this boundary contract is compatible with the full first-order Plebanski variational problem. It is not a claim that a canonical reconstructed wall functional exists for every nonsimple boundary \(B\).

## 3. Why the DB remainder holds for all allowed Dirichlet variations

The identity [equation (4.2)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/08 Real Plebanski branch comparison.md#L237-L247>) is not limited to testing one special pure-gauge variation. Here is the reduction for an arbitrary allowed boundary variation.

Let \(\bar e_i^I\) denote the tangential coframe, of rank three and non-null induced metric. If \(\delta q_{ij}=0\), there is a unique infinitesimal Lorentz transformation \(\lambda^I{}_J\) such that

\[
\delta\bar e_i^I=\lambda^I{}_J\bar e_i^J.
\]

The internal unit normal is algebraically determined by the tangential coframe and its chosen outward sign, so

\[
\delta N^I=\lambda^I{}_JN^J.
\]

The remaining four variations of the full coframe's normal components do not change \(\bar e\) or \(N\); hence they do not contribute to the pulled-back wall terms. This qualification prevents reading the preceding equation as a claim that the entire four-dimensional coframe variation must be Lorentz.

Decompose the independent connection variation as

\[
\delta\omega=-D\lambda+a.
\]

On the gravitational branch, pulled-back \(B_{IJ}\) has only internal normal–tangential components. Therefore the contribution of arbitrary \(a\) cancels between \(\theta\) and \(\delta l\). Its corner contribution is zero. For the remaining Lorentz variation, invariance of \(l\), the natural BF potential, and the action-derived corner give

\[
\theta(\delta_\lambda)=-\frac1{2\kappa}d(B_{IJ}\lambda^{IJ})
+\frac1{2\kappa}(DB_{IJ})\lambda^{IJ},
\qquad C(\delta_\lambda)=-\frac1{2\kappa}B_{IJ}\lambda^{IJ}.
\]

Hence for every allowed metric-Dirichlet variation,

\[
(\theta+\delta l-dC)|_\Gamma
=\frac1{2\kappa}\lambda^{IJ}(DB_{IJ})|_\Gamma.
\]

The sign and full-pair normalization in the supplied text are correct. Merely fixing the metric does not make this remainder zero off shell.

## 4. Sufficiency of the pullback-torsion domain

The [stated gravitational boundary conditions](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/08 Real Plebanski branch comparison.md#L237-L247>) have exactly the asserted strength:

\[
T^I|_\Gamma=0\quad\Longrightarrow\quad
(DB^{IJ})|_\Gamma=0,
\]

since \(DB=s\star D(e\wedge e)\) and \(D(e\wedge e)\) is linear in \(T\wedge e\). These are pullback equations; no normal component of torsion is being imposed by this statement. Together with metric Dirichlet and variations preserving the boundary domain, either the displayed pullback-torsion condition or the weaker pulled-back \(DB=0\) condition suffices for the free-frame gravitational HW identity.

The weaker condition is genuinely weaker. For instance, at an adapted wall with \(\bar e^3=0\), tangential torsion \(\bar T^0=\bar e^1\wedge\bar e^2\), all other \(\bar T^I=0\), has \(D(\bar e^I\wedge\bar e^J)=0\) for every pair while \(\bar T\ne0\). This example is only an algebraic boundary-domain illustration, not a bulk solution.

For the topological wall completion, the supplied [equation (4.6)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/08 Real Plebanski branch comparison.md#L280-L305>) directly gives

\[
(\theta+\delta l)|_\Gamma
=\frac{s}{\kappa}\delta e_I\wedge T^I+dC.
\]

Thus pullback \(T=0\) suffices even without restricting \(\delta q\). On the full solution/tangent space, \(T=\delta T=0\) yields \(\theta=dC\), and the regional cancellation is valid. The supplied text correctly does not turn this nullness into an unproved finite gauge equivalence between arbitrary metrics.

## 5. Ambient canonical diagnostic

[Section 6](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/08 Real Plebanski branch comparison.md#L368-L429>) now explicitly says that time gauge is a **background choice**, with transverse off-constraint variations retained in the ambient canonical space. This resolves the principal conceptual ambiguity identified in the earlier analytic review.

The displayed conventions are consistent:

1. Full antisymmetric-pair sums give \(\Theta_\Sigma=(p\,\delta K+q\,\delta\Gamma)/\kappa\), hence \(\{q_A,\Gamma_B\}=-\kappa\delta_{AB}\) with \(\Omega=\delta\Theta\).
2. With the declared spatial-row/internal-column convention for \(\Gamma_a^i\), the torsion component \((\operatorname{tr}\Gamma)\delta^{ic}-\Gamma_i{}^c\) has the stated index placement. Its symmetric part is independent of the superficial transpose ambiguity that can arise when matrix indices are exchanged.
3. Differentiating \(L_\Gamma=[\operatorname{tr}\Gamma^2-(\operatorname{tr}\Gamma)^2]/(2\kappa)\), using \(H_\Gamma=-L_\Gamma\), gives the sign and transpose in (6.4).
4. The symmetric preservation operator has eigenvalues \(1\) on the five traceless directions and \(-2\) on the trace direction. Replacing it by equivalent normalized \(S_A\) therefore gives the displayed \(-\kappa\delta_{AB}\) primary–secondary block and determinant \(\kappa^{12}\).

These are analytic checks of the supplied formulas. No parent CAS suite was rerun or independently audited at source level in this follow-up. The text correctly limits the diagnostic to the homogeneous linearized block, without claiming the derivative-dependent nonlinear Dirac algebra or a global degree-of-freedom theorem.

## 6. Preserved actual server evidence

The final successful Sage server return has now been preserved **byte for byte**, including all diagnostics and its untruncated stdout:

- [Actual Sage tool return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/plebanski-independent-covariant-20261031T004402-9b7c-sage-tool-return.json>) — SHA-256 `46533a84d9416e4353dc6f4d3d7715a6fa08803f0def3ead5ec5da0b25382c31`.
- [Exact stdout extracted from that return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/plebanski-independent-covariant-20261031T004402-9b7c-sage-stdout.txt>) — SHA-256 `b1b8f005e6ecfcd948c16bebf26515ae5b1a9975d76431500fd0b876c311ade5`.
- [Exact originally executed source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/plebanski-independent-covariant-20261031T004402-9b7c-executed.py>) — SHA-256 `381fed93b347f2a40c4b075a9b6d9c373b61e5410455dca1afa0c51d2ec86bc5`.

The original archived host return is [the upstream record](</Users/koishi/.dsh/research-results/session-1a45476f3145/f659bdddead9-research-result.json>). Its structured fields are `ok=true`, `error=null`, `warnings=[]`, empty stderr/transport stderr, and **all truncation flags false**. Elapsed kernel time was 3721 ms. Parsing the actual stdout reproduces the [original 28-check output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/plebanski-independent-covariant-20261031T004402-9b7c-output.json>) exactly; the latter remains unchanged.

## 7. Export-only modification and its limited test

Only export plumbing in the [current standalone script](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/plebanski-independent-covariant-20261031T004402-9b7c.py>) was modified after preserving the executed source:

- create the default output using exclusive mode, never overwrite;
- if that path already exists, create a fresh private directory under the kernel-export store, mode 0700, and write an exclusive output there;
- print the actual output path.

The mathematical source block, from its pair-basis definition through construction of the result dictionary, is **byte-for-byte unchanged**. Its SHA-256 is `bd03e8e37117903c2ac17f79b1ebcd0cb853998f425a3c0c4309069e103b379f`.

The follow-up executed only the extracted export function with a small plumbing-test payload. Both first-write and existing-target fallback were checked, including preservation of the original target and private-directory permissions. No Sage computation was repeated. The [export/provenance audit record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/plebanski-independent-covariant-20261031T004402-9b7c-export-audit.json>) records all hashes, server diagnostics, and plumbing-probe paths. These probes are not mathematical evidence and are labelled accordingly.
