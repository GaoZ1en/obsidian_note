# TODOs and Placeholder Checklist

This file tracks the remaining cleanup items and optional follow-up tasks for the Proca-Chern-Simons global AdS$_3$ paper.

### 1. Completed core items
- [x] **Operator algebra verification (`4_quantization.md`):** Fill in the derivation showing that $\nabla_\nu F^{\nu}_{~~\mu} = (\mathcal{D}^2 A)_\mu$ once the transversality condition and the AdS$_3$ curvature identity are used.
- [x] **Language and notation pass (`1_covariant_phase_space.md` to `6_application_2.md`, `appendix_a.md`, `appendix_b.md`):** Unify the prose style, the pre-phase-space notation $\widetilde{\mathcal{P}}$, and the boundary-condition statements across the paper.
- [x] **Section structure cleanup:** Separate the thermal partition-function discussion into `6_application_2.md` and keep `4_quantization.md` focused on the canonical quantization analysis.

### 2. Remaining technical follow-ups
- [ ] **Appendix B primary-mode normalization:** If a more explicit derivation is desired, expand the primary-mode symplectic integral step by step instead of jumping directly to the final result

	$$
	C_{+} = \sqrt{\frac{\mu_{+}+1}{\pi \bar{\mu}}}, \qquad
	C_{-} = \sqrt{\frac{\mu_{-}+1}{\pi \bar{\mu}}}.
	$$

- [ ] **Section 5 explicit correlator vs. Green's function:** Clarify that the current discussion in `5_application_1.md` derives the Green's function equation rather than a closed-form expression for the Euclidean correlator itself.

- [ ] **Bitensor appendix for the Euclidean correlator:** If an explicit expression for the two-point function is needed, add an appendix reviewing the relevant bitensor formalism in Euclidean AdS$_3$ and use it to construct the correlator explicitly.

- [ ] **Contact-term analysis:** Add a general path-integral argument explaining the origin of the contact terms in the correlator/Green's-function relation, including the non-covariant contact terms that were ignored in the current presentation.

- [ ] **Special limits check:** Decide whether to add a short discussion of special regimes such as the pure Proca limit $k \to 0$, the small-mass limit $\mu \to 0$, or other parameter-space corners of interest.

### 3. Optional presentation follow-ups
- [ ] **Section 5 interpretation:** Consider adding a short paragraph on the boundary limit or holographic interpretation of the Euclidean two-point function.
- [ ] **Section 6 interpretation:** Consider adding a short note clarifying the normal-ordering choice, vacuum-energy subtraction, and the character-like structure of the partition function.
- [ ] **Final assembly:** Merge the chapter markdown files into a single draft or TeX source once the content is frozen.

