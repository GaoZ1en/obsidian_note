# Separate supplied-text audit: field, ghost, gauge, and Casimir statements

## Verdict

**The supplied sections 3–4 and the Casimir/bounded-transform part of section 5 agree with the independent results. No substantive Lorenz-sign or mixed-domain/L2-scope error was found.** The few precision requests below do not overturn those conclusions.

This is a later supplied-text audit, performed only after the independent [report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/report.md>) and [check archive](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/checks.md>) were finalized and delivered. The initial blind investigation and the subsequently supplied Casimir/finite-fiber follow-ups remain distinguished there. No original source was edited and no settled CAS calculation was rerun.

## Audited snapshot

- Source: [14 Geometric CS Gaussian map and regulator, sections 3–5](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L128-L284>).
- Exact captured excerpt: [supplied-sections-3-5.snapshot.md](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/supplied-sections-3-5.snapshot.md>).
- Machine-readable provenance: [supplied-audit-snapshot.json](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/supplied-audit-snapshot.json>).
- Full source SHA256 at capture: `43da890c03b57a494e70c62f4c92b53c4b08a67668399ef9ee2273622fb3ffc8`.
- Excerpt SHA256: `b7f325315f30468da511ec2f3b840eaf7c990d31f279ba671d5fe3aa0c2cbd66`.

The source was being edited concurrently: the captured version already contains the expanded Hessian-core paragraph and uses U in the coordinate auxiliary measure. The verdict is tied to this saved snapshot, not an unspecified later revision.

## Confirmed statements

1. **Field and ghost signs.** Equations (3.1)–(3.3) have the correct signs for omega^{ab}=-epsilon^{ab}_c omega^c, A=omega+i e, and delta A=D_A alpha. In particular B(h)=epsilon nabla h/2, delta r=rho-curl(xi)/2, delta k=0, and the de Donder block is -O1. Replacing F by -F gives the stated positive finite-dimensional gauge orientation.

2. **Mixed section versus the whole L2 quotient.** Equation (3.4), the ghost regularities xi in H^{s+2}, rho in H^{s+1}, and both obstructions are correct. The L2-not-H1 pure frame field is a genuine orbit-level counterexample, not just a statement that one convenient coordinate map is unbounded. There is no conflict with the controlled mixed-Sobolev section. The independent proof solves xi=O1^{-1}F(h), rho=-r+curl(xi)/2.

3. **Finite-fiber Jacobian qualification.** The derivative ghost shear and triangular connection shift have determinant one on compatible finite-dimensional fibers. The supplied text correctly refuses to infer whole-L2 boundedness or an unregulated continuum determinant from this fact. The two stated pointwise coframe/Lorentz quotient constants follow from the displayed norm: the six h directions contribute 2^{-6}, and three r directions contribute 2^{3/2}; changing the rotation measure to its Frobenius norm divides by the latter factor. This verifies those pointwise constants, not the separately specified trace measure or auxiliary-action normalization.

4. **Lorenz distinction and exact sign.** With the original positive Hermitian real-cycle norm, G0^dagger G0=O1 direct-sum O1. The complex-bilinear operator is instead -D_A^mu D_A_mu=Delta_H-2i curl, as written in (4.2); its conjugate has +2i curl. The escaping-family argument proves lack of a bounded inverse. Its zero kernel is compatible with that statement, as established independently by the harmonic-one-form stress argument.

5. **Finite-dimensional FP identity.** Equation (4.3) is correct with the stated common volumes, gauge-fiber-invariant action, orientation choice, and common quotient-cycle lift. The stated replacement by a normalized gauge average is valid under precisely the same normalization convention. This is not an L2 section equivalence, and the supplied text does not claim one.

6. **Casimir formula and intertwiners.** The full two-tensor R_K, including all spins 0+1+2, is correct. The three identities (5.3), together with curl/trace/projection relations, match the earlier arbitrary-function checks. B R_sym^{-1/2} is bounded on L2, and resolvent/spectral intertwining applies to that bounded transform. Finite common spectral bands are indeed not finite rank on this quotient. Nothing in this paragraph implies that B itself is L2 bounded.

## Precision requests, not sign corrections

- At the current field-dependence sentence, it would be useful to display the exact formulas

      D_A(lambda+i_xi A)=L_xi A+D_A lambda-i_xi F_A,
      delta alpha=delta lambda+i_delta_xi A+i_xi delta A.

  The minus curvature sign is fixed by delta A=D_A alpha. The parameter-variation term is relevant already when differentiating the identity at the background on arbitrary off-shell fluctuations, not only in a later nonlinear BV theorem. The existing fixed-background FP statements remain correct.

- Specify a safe Sobolev range, for example integer s>=0 with geometric covariant Sobolev norms, and state Dom(O1)=H2, form domain H1. Real orders can be included if their functional-calculus/interpolation definition is declared. This prevents the notation 'proper domain' from silently conflating H1 CS ghosts on L2 fields with the stronger H^{s+1}/H^{s+2} ghosts used for the mixed section.

- In the escaping example, state explicitly that x denotes the meridional angular coordinate with metric coefficient sinh(r)^2 and orientation dr wedge dx wedge dt positive. Then curl(f dx)=f' coth(r)dt is exactly correct. It is not the formula for an arbitrary coordinate x; for the longitudinal dt component the coefficient/sign differ. Within the audited excerpt this cylindrical meaning of x is not explicitly stated.

- Define the symbol L in (5.3) as (L xi)_mu nu=2 nabla_(mu xi_nu) if it is not already fixed earlier. This removes a purely notational ambiguity.

## Explicitly not recertified

The formal Hessian, the self-adjoint inverse construction, the exact closure/core proof, the domain assertion involving z=Q(w-Bu), and the Wick covariance claims in (5.4)–(5.5) are **not recertified by this audit**; the parent assigned them to another analyst. Nor does this audit validate section 6's actual relative trace, phase/constant evaluation, or the auxiliary normalization imported from (2.6). Agreement of the field/gauge/Casimir statements is not being used as a substitute for those independent checks.
