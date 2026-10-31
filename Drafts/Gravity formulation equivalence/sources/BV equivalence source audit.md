# Source audit: classical BV equivalence of triadic gravity and BF theory

## Version and inspection

A. S. Cattaneo, M. Schiavina and I. Selliah, *BV-equivalence between triadic gravity and BF theory in three dimensions*, [arXiv:1707.07764v1](https://arxiv.org/abs/1707.07764v1), 24 July 2017. The [versioned PDF](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/sources/Cattaneo-Schiavina-Selliah-1707.07764v1.pdf>) has nine pages; PDF and printed page numbers agree. SHA256: `202ac3c4e6a03e03e9b16bafe7c24b02b517c78aaf5c517237d3497a9ce17b0f`. The later journal DOI is [10.1007/s11005-018-1060-5](https://doi.org/10.1007/s11005-018-1060-5); that version was not separately inspected.

The [HTML rendering](https://ar5iv.labs.arxiv.org/html/1707.07764) was read for navigation. Selected-page [layout text](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/sources/bv-equivalence-pages.ZVW9yR/pages-5-8.txt>) is an extraction, not formula evidence by itself. The parent actually viewed the following page images:

- [Page 1](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/sources/bv-equivalence-pages.ZVW9yR/page-1.png>): three-author attribution, version stamp and abstract.
- [Page 2](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/sources/bv-equivalence-pages.ZVW9yR/page-2.png>): the paper explicitly does not address quantization; Definition 2 is for closed manifolds, and Remark 3 separates boundary BV–BFV data from the local bulk construction.
- [Page 5](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/sources/bv-equivalence-pages.ZVW9yR/page-5.png>): cosmological superfield action (16), ordinary-diffeomorphism Palatini–Piguet BRST rules (17), action (18) and Proposition 7.
- [Page 6](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/sources/bv-equivalence-pages.ZVW9yR/page-6.png>): generating-function differentiation convention (20), Theorem 8, generator (21), full antifield-corrected map (22)–(23), and the nondegenerate-coframe inverse condition.
- [Page 7](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/sources/bv-equivalence-pages.ZVW9yR/page-7.png>): contraction identities in Remark 9, composed covariant-map generator (26), and Theorem 10.
- [Page 8](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/sources/bv-equivalence-pages.ZVW9yR/page-8.png>): Lemma 11 and Proposition 12 show stability under the cosmological term by the contraction-exponential argument.

## What is imported, and what is not

The source supplies an actual classical local odd-symplectic map, not merely on-shell identification of gauge orbits. Its map mixes fields, ghosts and antifields; deleting those corrections loses the off-shell statement. Co-frame nondegeneracy is essential for solving the ghost-antifield relation.

The source does **not** supply a gravity measure, an integration cycle, a regularized BV Laplacian, a quantum master equation, or the matched thermal Dirichlet wall/corner prescription. Its closed/local theorem cannot by itself establish the complete Brown–Henneaux proper-gauge or boundary BFV comparison.

Do not copy its displayed graded signs directly into a component-first convention. Its generator uses total-degree differential forms and its own differentiation convention (20). The research calculation separately fixes left component Grassmann derivatives, the Euclidean dual connection, the coefficient 2a, and the action-transform direction. The cubic component bridge and Noether identities have their own exact calculation rather than relying on a visual match to the source.

A visible typo must also not be propagated: the last term of printed (18) on page 5 contains the bracket of chi-prime with itself contracted into xi-antifield, whereas the immediately preceding rule (17) has Qxi=[xi,xi]/2. The local component action uses the latter correct diffeomorphism-ghost rule, independently checked for nilpotency. No original source file or PDF was modified.

**Evidence level:** versioned source/PDF inspection of the specified pages; the versioned abstract page also confirms the journal DOI above. The convention-specific cubic construction and subsequent exact local generator/action identity have separate independent derivations and machine evidence in the [nonlinear synthesis](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md>). The theorem is not claimed new, and source inspection alone is not a proof of the continuum quantum or boundary extension.
