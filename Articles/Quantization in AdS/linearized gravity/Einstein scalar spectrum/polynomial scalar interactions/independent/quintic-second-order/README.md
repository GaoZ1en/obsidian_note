# Independent quintic second-order extension

## Result

For the canonically normalized real scalar on fixed radius-one global AdS₃, with standard fast falloff, Δ>1, and interaction −λ₅ :φ⁵:/5! normal ordered in the free global vacuum:

- Order λ₅² requires bulk **vacuum, mass and quartic** counterterms. No derivative, sextic, or octic counterterm is UV-required at this order.
- The universal quartic divergence is
  \[
  \delta\lambda_{4,\mathrm{loop}}
  =-\frac{\lambda_5^2}{32\pi^2}\log(1/\epsilon),
  \qquad
  \delta\lambda_{4,\mathrm{ct}}
  =+\frac{\lambda_5^2}{32\pi^2}\log(1/\epsilon)+\text{finite}.
  \]
  Here the quartic action is −λ₄ :φ⁴:/4! and ε is a geodesic-distance cutoff.
- Fixing vacuum energy and the physical one-body gap **does not fix** the finite quartic matching datum and hence does not determine the multiparticle spectrum.
- Nevertheless, the highest connected ground-state coefficient is finite and independent of all required counterterms. For a generic nondegenerate mass, define
  \[
  B_4=[E_4-4E_3+6E_2-4E_1+E_0]_{\lambda_5^2},
  \]
  with the coefficient of λ₅² stripped off. An absolutely convergent single radial sum is derived below in the report. At the non-even, exactly computable value Δ=4/3,
  \[
  \boxed{B_4=-\frac{61947}{11648000\pi^3}}
  =-0.000171521789451700614397956\ldots.
  \]
  The full free degeneracy is included: the E=16/3, J=0 block consists of the four-ground-mode state and the one-particle (p,q)=(2,2) state; their order-λ₅² off-diagonal matrix element vanishes by field parity.
- This value is a prediction of the stated quintic theory with its required counterterms. An independently added finite order-λ₅² octic interaction changes it and is a **different physical deformation**, not a required counterterm.

## Files and checks

- [Derivation and matching prescription](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/report.md>) gives the analytic counterterm theorem, all five creation allocations in the four-body kernel, full-projection caveats, and an optional precisely subtracted two-body formula.
- [Wolfram checks](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/verify.wl>) check Wick combinatorics, UV expansions, direct Jacobi integrals and the exact exchange coefficient.
- [Sage checks](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/verify.sage.py>) independently use rational polynomial integration and occupation-number matrix elements, rather than the exchange-kernel formula, to obtain the same coefficient.
- [Recorded results](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/check-results.md>) records results and limits of validation.

The quintic results were derived and checked using only the first-stage conventions and cubic chapter, before any parent candidate was supplied. No parent round-three candidate file or other new branch was read. A subsequently requested [general-odd theorem audit](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/general-odd-audit.md>) separately reviews a parent-supplied formula, proves its strict sign at the selected masses, and adds an exact septic example. No original research note was modified.
