# Spectral BV compression: parent exact archive

This is a frozen copy of one successful Sage 10.9 run of the [parent source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/spectral_bv_compression_checks.py>). No mathematical kernel was rerun during copying.

- [Executed source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/spectral-bv-parent.w1iz7yst/executed-source.py>), SHA256 `5cbbffe20bd5812ad5b0955c9ad88d0e68572fe6a74e2c50c23a602e99c69a76`.
- [Actual result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/spectral-bv-parent.w1iz7yst/result.json>): all forty exact labelled checks pass.
- [Native exact ghost data](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/spectral-bv-parent.w1iz7yst/ghost_exact.sobj>): unprojected square, all twelve nonzero projected ghost-square components, leakage identity and selected witness.
- [Complete actual server return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/spectral-bv-parent.w1iz7yst/actual-server-return.json>): `ok=true`, no error, warnings, stderr, transport stderr or truncation. The parent read its complete diagnostic fields and the complete exported result.
- [Byte-copy manifest](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/spectral-bv-parent.w1iz7yst/copy-manifest.json>): five copies verified byte-identical to the original kernel exports and actual server return.

The computation uses all eighteen Fourier ghost generators of the six-dimensional real gravitational algebra in the transverse-constant N=1 sector, exact rational exterior algebra, and rational Fourier matrices. That ghost sector is stable and embeds in the full cubical cutoff. The unprojected Jacobi identity and the projected leakage formula are checked before restricting to the displayed three-generator witness. Matrix checks cover N=1,2,3,4 through fourth order, but the conformal metric family is a retained coordinate configuration in the main interpretation only for N>=2. Twelve additional finite counts test the exact three-dimensional cubical leakage formula. The forty labels are grouped assertions, not a count of all monomial coefficients.

An earlier three-generator API probe used the deprecated `version()` accessor and produced a version-access warning. It was not the verification suite and is not counted as evidence: [actual probe return](</Users/koishi/.dsh/research-results/session-3605db0fcd2b/1369d77724ba-research-result.json>). The preserved suite imports the version string from `sage.version` and is warning-free.

## Replay

Run the source as ordinary Python in Sage without preparsing:

```python
import runpy
runpy.run_path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/spectral_bv_compression_checks.py', run_name='__main__')
```

The script creates a fresh private directory under the configured DSH kernel-export store, writes its actual outputs there, and never overwrites this archive. Its nonzero ghost-square witness is an intentional checked counterexample, not a failed verification. No finite calculation here proves a complete-AdS QME, an infinite-dimensional determinant identity or a quantum-BV pushforward.
