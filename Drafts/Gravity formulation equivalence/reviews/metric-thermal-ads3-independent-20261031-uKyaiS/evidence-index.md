# Evidence index: independent metric thermal-AdS3 audit

Primary result: [metric one-loop report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/metric-thermal-ads3-report.md>).

This directory was freshly created by `mktemp -d` with a unique suffix. No parent report or other reviewer was read. All manually authored/downloaded artifacts are in this directory. Kernel tools additionally maintain their own automatic transport archives; those are not used as report deliverables.

## Original sources and actual visual evidence

- [GMY original PDF, arXiv:0804.1773v1](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/gmy-0804.1773v1.pdf>): downloaded from [versioned arXiv URL](https://arxiv.org/pdf/0804.1773v1), 29 PDF pages. SHA-256 `719121289fa679eab2822141584c5ab319696ddc570ae7170f54d54d6578a1b7`.
- [DGG original PDF, arXiv:0911.5085v2](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/dgg-0911.5085v2.pdf>): downloaded from [versioned arXiv URL](https://arxiv.org/pdf/0911.5085v2), 47 PDF pages. SHA-256 `f8b2cc0f4f88643e4e520e508b3997649ed21d0814f7b63ad4e3549eefaf67ab`.

The following pages were rendered with `pdftoppm -singlefile -r 150 -png` and each was opened with the image reader. Text extraction was used only for navigation, not as the sole equation audit.

| Actual viewed page | Printed page | Decisive content |
|---|---:|---|
| [GMY PDF 11](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/gmy-page-11.png>) | 10 | Gauge-fixed Hessian, trace contour, ghost operator, eqs. 2.22–2.28. |
| [GMY PDF 16](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/gmy-page-16.png>) | 15 | Identity-image density −13 Vol/(6π), eq. 3.8. |
| [GMY PDF 18](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/gmy-page-18.png>) | 17 | Direct image and local counterterm discussion following eq. 4.5. |
| [GMY PDF 21](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/gmy-page-21.png>) | 20 | Explicit omission of the volume term after eq. 4.22; spin thermal terms. |
| [GMY PDF 22](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/gmy-page-22.png>) | 21 | Product and tree factor, eqs. 4.27–4.29. |
| [DGG PDF 29](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/dgg-page-29.png>) | 28 | Coincident kernel, eq. 5.33. |
| [DGG PDF 31](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/dgg-page-31.png>) | 30 | Character and nonidentity kernel, eqs. 6.4–6.9. |
| [DGG PDF 33](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/dgg-page-33.png>) | 32 | Lichnerowicz conversion and determinant ratio, eqs. 7.3–7.8. |
| [DGG PDF 34](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/dgg-page-34.png>) | 33 | Proper-time integration and product, eqs. 7.9–7.11. |

Source-audit cautions retained in the report: (i) DGG's literal unpaired half-line cosine needs helicity pairing before Gaussian evaluation; (ii) a local coincident density independent of the loxodromic angle does not imply a renormalized integrated volume term independent of β; (iii) no all-loop claim is adopted from the discussion following GMY eq. 4.29.

## Passing calculation evidence

### Proper-time integrals, identity finite part, volume, oscillator regulators, products

- [Self-contained Wolfram input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/metric-thermal-checks.wl>)
- [Full actual readable diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/metric-thermal-diagnostics.txt>)
- [Exact WXF report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/metric-thermal-diagnostics.wxf>)

Actual return: `AllTestsPassed -> True`, `FailedOrAborted -> False`, `UnevaluatedComputations -> {}`, `Messages -> {}`. Eleven named tests, five high-precision product comparisons, eight high-precision direct quadratures, and three identity cutoff tests are present in full, not just a success label. Wolfram Engine 14.3.0 ARM64.

### Corrected local FP/York component verification

- [Self-contained corrected v2 input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/metric-york-component-checks-v2.wl>)
- [Full actual v2 readable diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/metric-york-component-diagnostics-v2.txt>)
- [Exact v2 WXF report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/metric-york-component-diagnostics-v2.wxf>)

Actual xAct tool return: `ok=true`, profile `core`; loaded `xAct\`xTensor\``, `xAct\`xPert\``, `xAct\`xTras\``; elapsed 3647 ms. Export summary: all six tests true, no failed/aborted values, no messages. The implementation transparently computes Christoffel symbols and covariant derivatives in Poincaré coordinates inside the xAct-loaded kernel; it is a local differential-identity check, not a proof of a global spectral domain. xAct and the main calculation share the Wolfram engine and are not independent implementations.

### Independent numerical implementation

- [Python/NumPy input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/independent-numpy-checks.py>)
- [Full actual JSON diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/independent-numpy-diagnostics.json>)

No Wolfram results are read by this implementation. Python 3.12.14, NumPy 2.3.5. Composite Simpson quadrature in log proper time was checked at 12,000 and 24,000 panels. Actual exit code 0, all tests true, no warnings. Maximum series/product discrepancy `3.552713678800501e-15`; maximum proper-time quadrature discrepancy `2.220446049250313e-16`. Exponentially suppressed tail underflows are explicitly counted in each test and their suppression policy is disclosed.

## Failures and corrections: preserved, not overwritten

1. **Source version guess:** the first attempted URL `https://arxiv.org/pdf/0804.1773v3` returned HTTP 404; `curl` exit code 56. The arXiv abstract was then read and showed that only v1 exists. The versioned v1 download succeeded, both PDFs passed `pdfinfo`, and their hashes are recorded above. No nonexistent v3 is cited.
2. **First local component verifier:** [original input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/metric-york-component-checks.wl>), [full failure diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/metric-york-component-diagnostics.txt>), [failure WXF](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/metric-york-component-diagnostics.wxf>). The tool returned `ok=false`, `result=$Failed`, no outer messages; packages loaded without reported errors, elapsed 4846 ms. The saved inner diagnostics expose the actual problem: three `Extract::partw` messages followed by `General::stop`, false ghost/scalar tests, and malformed residual ranks. `ArrayDepth` had treated the arguments of a non-List scalar function as array components. The separately named v2 explicitly sets scalar rank to zero and differentiates it directly; all corrected residuals vanish. The original report also picked up a package-context `$Version`; v2 explicitly records `System\`$Version`.

The failed run is not cited as evidence for any mathematical conclusion. Its retained output documents why the corrected run was necessary.

## Safe-export and scope notes

Every computational export checks that its target files do not already exist before writing. The Python result uses exclusive file creation (`open('x')`). Source downloads and page renders were guarded by nonexistence checks. Re-running a script unchanged after its outputs exist is intentionally refused: a new private directory and newly named output targets are required. No file was deleted, moved, or overwritten.

The derivation is independent of parent/reviewer conclusions. Further subagent delegation was unavailable at the configured depth limit; no additional fresh-agent sign-off is claimed. What is established is a named-prescription one-loop calculation plus the stated validations—not a metric/orbit measure-equivalence theorem.
