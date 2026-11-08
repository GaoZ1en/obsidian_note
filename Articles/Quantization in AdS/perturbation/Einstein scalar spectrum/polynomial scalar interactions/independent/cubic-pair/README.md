# Independent massless cubic pair calculation

All outputs in this directory concern normal-ordered real \(\phi^3\) on fixed global AdS3 at \(\Delta=2\), with vacuum energy removed and the one-particle gap fixed.

- [Derivation](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-pair/derivation.md>): all-index exchange/Legendre proof, mode-overlap finite-support proof, normalization, and explicit scalar/spinning mixing matrices.
- [Exact Wolfram implementation](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-pair/cubic_pair_exact.wl>): independent connected OFPT kernel and exact checks.
- [Exact check report](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-pair/exact-checks.txt>): 23 primary expectations, primary eigenvectors, 20 complete low-level block spectra, normalization/support tests, and proof-identity residuals. All recorded residuals vanish.

- [Supplemental checks](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-pair/supplemental-checks.txt>): exact block–Legendre identities and displayed eigenvectors, plus high-precision crossing of the complete reduced four-point function.

To reproduce, load the implementation with Wolfram Language `Get[absolutePath]` and evaluate `runIndependentChecks[]` and `runSupplementalChecks[]`. The code uses built-in exact arithmetic and special functions, with numerical quadrature only for the supplemental crossing check; it does not modify other files.

The finite calculations and the all-index analytic proof are separate evidence. No finite table is being promoted to a proof.
