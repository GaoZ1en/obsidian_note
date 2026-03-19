# TODOs and Placeholder Checklist

This file tracks the missing mathematical substitutions, mock variables, and conceptual refinements left over before finalizing the Proca-Chern-Simons global AdS3 paper structure.

### 1. Section 4: Mode Expansion
- [x] **Operator Algebra verification (`4_quantization.md`):** Replace the `[TODO: Insert specific algebraic steps...]` block with my detailed calculation showing that $\nabla_\nu F^{\nu}_{~~\mu} = (\mathcal{D}^2 A)_\mu$ is precisely true, relying upon $\nabla_\mu A^\mu=0$ and the relationship $[\nabla_\nu, \nabla_\mu] A^\nu = R_{\mu\nu}A^\nu = -2g_{\mu\nu}A^{\nu} = -2A_\mu$.

### 2. Section 5: Appendices
<<<<<<< HEAD
- [ ] **Symplectic Integrals (`5_appendices.md`, Appendix B):** Substitute the hard mathematical step-by-step integrals showing exactly how to go from $\omega(f_+, f_+^*) \dots$ to the final exact normalization coefficient $C_+ = \sqrt{\frac{\mu_++1}{\pi\mu_+}}$. (You can copy-paste and adapt the analogous workflow from `article.md`'s Appendix E/F, just with the extra term).
- [x] **Exceptional cases logic (`5_appendices.md`, Appendix C):** Fill out the physical discussion discussing the resonance gap when $\mu_+ - \mu_- \in \mathbb{Z}$. It is currently stubbed. Explain what happens to the descending ladders and the implications for Hilbert space completeness (such as possible log terms or overlaps).
	- [x] this is not true.
=======
- [ ] **Symplectic Integrals (`appendix_b.md`, Appendix B):** Substitute the hard mathematical step-by-step integrals showing exactly how to go from $\omega(f_+, f_+^*) \dots$ to the final exact normalization coefficient $C_+ = \sqrt{\frac{\mu_++1}{\pi\mu_+}}$. (You can copy-paste and adapt the analogous workflow from `article.md`'s Appendix E/F, just with the extra term).

### 3. General Polish
- [ ] Introduce cooperative introductory paragraphs (Section 1 is mostly a placeholder for your collaborator).
- [ ] Double-check whether negative norms pop out in intermediate states if checking against purely pure-CS boundaries ($\mu \to 0$ limits).
- [ ] Combine all `.md` files together into a final TeX or main markdown draft when all the above [TODO] boxes are checked.i

