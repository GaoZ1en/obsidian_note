# Frozen independent result and evidence index

This independent result was frozen before reading any parent synthesis or other project review. Later synthesis comparison, if requested, must be a separately labelled audit and must not be represented as independent evidence for this frozen result.

## Principal result

- [derivation.md](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/derivation.md>): exact type-II anticanonical generator (13), explicit finite map (15)–(17), complete analytic action identity and kinetic density primitive (27a), and cubic expansion (30)–(31).
- The argument establishes local classical BV equivalence on oriented nondegenerate coframes, on closed M or with compact support away from the boundary. It establishes neither all complete-L2/Brown–Henneaux domains nor quantum equivalence.

## Reproduction and actual output

- [run_all.py](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/run_all.py>): runs all four preserved inputs in fresh namespaces.
- [all_checks_final_output.json](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/all_checks_final_output.json>): actual unabridged Sage returned JSON; all 134 labelled checks pass.
- [all_checks_final_output.txt](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/all_checks_final_output.txt>): readable view of the actual returned output.
- [kinetic_density_check.py](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/kinetic_density_check.py>): complete transformed kinetic density, arbitrary algebraically independent base fields and first jets, exact primitive rather than an unstated integration-by-parts assumption.
- [failures.md](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/failures.md>): separately recorded API/search failures and exploratory warning.
- [failed_homomorphism_output.json](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/failed_homomorphism_output.json>): actual initial Sage error response, retained separately from success records.
- [failed_homomorphism_input.py](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/failed_homomorphism_input.py>): runnable source for that API limitation.

## SHA256 freeze identifiers

| Artifact | SHA256 |
|---|---|
| [Derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/derivation.md>) | `e8a55d1ed71004cba97de5a4b0ffa3eb6a7a57f78d8120f3e10ff2e70aabe059` |
| [Run driver](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/run_all.py>) | `ee7e49e87962e618b545b0924b9757843f5a30c3752290bb5302fda089f1ba71` |
| [Final raw output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/all_checks_final_output.json>) | `a4e5b0bde37790d560a79fe9578a01d733daa4ab7d0be4e655700425d4b8e672` |
| [Canonical-map input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/canonical_map_checks.py>) | `1ece5e31ea07cb78a09c644b272d219f0ea464c469e00ea568407e3029acddaa` |
| [Superfield input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/superfield_checks.py>) | `87a5db214bde502ed2915d752d3d151fc629f6bc7b094588dd1bd35e1670a742` |
| [Cartan/ghost input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/cartan_and_ghost_checks.py>) | `7b423ef450a7029c17a9d4e397287d77f22cca5756b86f2e93b083b8622d6bdf` |
| [Full kinetic input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/kinetic_density_check.py>) | `699d3e71aba6e92a430ef3e0e8bd2a7d5e4c69f5a169cdda2249f39ac8a5631d` |

The proof uses literature for the contraction-exponential idea but independently derives its convention-specific generator and action identity. The Sage implementation uses native exterior algebra; it is distinct from the parent's separately reported sparse Grassmann/jet implementation.
