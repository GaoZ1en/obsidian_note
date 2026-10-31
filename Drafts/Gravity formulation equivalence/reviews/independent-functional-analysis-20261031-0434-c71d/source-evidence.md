# External source and diagnostic provenance

Two mathematical papers were used directly. The first is David, Gaberdiel, and Gopakumar, *The Heat Kernel on AdS3 and its Applications*, arXiv:0911.5085 **v2**, fetched as [versioned HTML](<https://ar5iv.labs.arxiv.org/html/0911.5085v2>). The second is Mueller and Pfaff, *The asymptotics of the Ray-Singer analytic torsion for compact hyperbolic manifolds*, arXiv:1108.2454, fetched from its [HTML page](<https://ar5iv.labs.arxiv.org/html/1108.2454>) for the homogeneous-bundle character-transform argument. The second URL did not explicitly select an arXiv revision; the exact fetched snapshot is preserved below rather than assigning it an invented version number. Inspection was of HTML/text mathematics, not rendered PDFs. All equation locators refer to displayed HTML numbering, not asserted published-PDF numbering. No parent candidate notes or previous project reports/reviews were read.

## Exact locations and the conventions taken from them

- Section 2.1, equations (2.15)-(2.18): homogeneous-bundle sections as K-equivariant functions on G; projected representation matrix coefficients.
- Equation (2.20): connection-Laplacian Casimir is the group Casimir minus the fiber-spin Casimir.
- Section 5.2, equation (5.107): principal-series labels 2 j_L = s - 1 + i lambda and 2 j_R = -s - 1 + i lambda. In the full-bundle derivation in the report, the paper's minimal K-type label s is renamed m (allowing both signs), while s continues to denote the bundle's fixed K-type.
- The paragraph following (5.107): the principal series has K-types of spin |m|, |m|+1, ... ; only the principal series occurs in L2(G), not the complementary series. The report combines this fact with Frobenius reciprocity instead of retaining only |m|=s.
- Equation (5.109): transverse spin-s rough spectrum lambda^2+s+1, consistent with the extremal branches of the report's full formula lambda^2+1+s(s+1)-m^2.
- Equation (5.110): extremal-branch bundle density (2-delta_(s,0))(lambda^2+s^2)/(2 pi^2(2s+1)) d lambda. It includes both extremal signs for positive s. The full-bundle formula uses one such group-Plancherel branch for each m=-s,...,s, with the same normalization convention for the fixed bundle dimension.
- Equations (5.111) and (5.130): projected matrix-coefficient heat kernel; coincident fiber trace cancels the 2s+1 normalization.
- Equation (5.115): scalar H3 heat kernel exp(-t)(4 pi t)^(-3/2)(d/sinh d) exp[-d^2/(4t)].
- Equations (5.121)-(5.123): a transverse vector heat kernel has a nonlocal transverse projector as its initial condition. This is why scalar semigroup domination was applied only to the complete local vector/tensor operator, never to an isolated TT or transverse branch.

The underlying ordinary SL(2,C) Plancherel theorem is a standard analytic input, not proved by CAS. The paper cites Knapp, *Representation Theory of Semisimple Groups* (1986), section II.4, for its principal-series conventions. The report explicitly derives the additional full-bundle branches and the compact-picture Xi estimate needed for the common-cutoff bound.

## Additional finite orbital-trace interface

Mueller-Pfaff, section 4, displayed HTML equations (4.17)-(4.20), computes the Fourier/character transform of a homogeneous-bundle heat test function by its Casimir multiplier times the dimension of the K-invariant multiplicity space. This is the rigorous general construction used in report section 6.4, with the bundle representation replaced by V_s. Section 5, Remark 3 gives the three-dimensional group Plancherel polynomial (lambda^2+m^2)/(4 pi^2) on the full real lambda line. DGG's displayed HTML section 6, equations (6.134)-(6.138), gives the regular semisimple character in matching conventions. These inputs identify the full local nonidentity orbital trace with the conventional T/TT character-image combination; they do not assert arbitrary finite-part trace cyclicity under a nonlocal York unitary.

The [Mueller-Pfaff fetched snapshot](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-functional-analysis-20261031-0434-c71d/mueller-pfaff-1108.2454-fetched.txt>) has SHA256 `65c512d793a96b91a94f259e2d5e48796b29a9f036a631f59183386317836798`. The [DGG versioned fetched snapshot](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-functional-analysis-20261031-0434-c71d/dgg-0911.5085v2-fetched.txt>) has SHA256 `e8587a07bf7968b498a57ee950f1fdffb59ab5aedf708041b64e4b751c8267ae`.

## Actual computational diagnostics

The first xAct-profile run had a protected-symbol collision with `delta`. Its output and source were preserved, and its curvature-array result was not accepted. The successful second run changed only that matrix symbol, returned all-zero local residuals and no messages, and recorded the actual ``System`$Version`` (Wolfram 14.3). The computation used explicit coordinate tensors under the xAct-loaded kernel; it did not pretend that a CAS established essential self-adjointness or trace convergence.

- [Original source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-functional-analysis-20261031-0434-c71d/checks-v1.wl>)
- [Failed-run diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-functional-analysis-20261031-0434-c71d/checks-v1-output.txt>)
- [Corrected source wrapper](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-functional-analysis-20261031-0434-c71d/checks-v2.wl>)
- [Successful diagnostics with source hashes](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-functional-analysis-20261031-0434-c71d/checks-v2-output.txt>)

The [versioned fetched source snapshot](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-functional-analysis-20261031-0434-c71d/dgg-0911.5085v2-fetched.txt>) is preserved, as are the exact tool-transport records for [failed v1](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-functional-analysis-20261031-0434-c71d/checks-v1-transport.json>) and [successful v2](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-functional-analysis-20261031-0434-c71d/checks-v2-transport.json>).

No background computation remains running.
