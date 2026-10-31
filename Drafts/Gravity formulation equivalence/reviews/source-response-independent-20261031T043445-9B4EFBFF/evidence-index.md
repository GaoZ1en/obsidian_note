# Independent source-response evidence index

## Scope and provenance

This directory was newly created for the independent investigation on 2026-10-31, Asia/Shanghai. No previous project reports/reviews or parent candidate conclusions were read. The applicable [vault rules](</Users/koishi/Documents/Note/AGENTS.md>) and the math-computation skill were read. No existing project note was edited.

The central charge remains symbolic throughout. Numeric quadratures factor out the entire central-charge-dependent amplitude.

## Main deliverable and runnable checks

- [Self-contained English derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/source-response-independent-20261031T043445-9B4EFBFF/source-response-derivation.md>)
- [Sage source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/source-response-independent-20261031T043445-9B4EFBFF/checks.py>)
- [Raw structured Sage output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/source-response-independent-20261031T043445-9B4EFBFF/raw-checks.json>)
- [Run-01 console output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/source-response-independent-20261031T043445-9B4EFBFF/console-run-01.txt>)
- [Wolfram coordinate Ward source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/source-response-independent-20261031T043445-9B4EFBFF/ward-check.wl>)
- [Readable coordinate Ward output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/source-response-independent-20261031T043445-9B4EFBFF/ward-raw.txt>)
- [Native WXF coordinate Ward output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/source-response-independent-20261031T043445-9B4EFBFF/ward-raw.wxf>)

Reproduction commands (run from a NEW COPY of this directory if preserving the original raw evidence):

```bash
sage --python checks.py
wolframscript -file ward-check.wl
```

The actual first executions used the Sage and xAct MCP kernels, not those CLI commands. The Sage tool executed `runpy.run_path` on the authored script, with stdout/stderr captured to the run-01 console artifact. The xAct tool executed `Get` on the authored Wolfram file. Both scripts save their raw outputs next to themselves; therefore rerun only in a copied/fresh directory to avoid replacing this first-run evidence.

### Exact original tool calls

Sage MCP:

```python
from pathlib import Path
import contextlib, io, runpy, traceback
root = Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/source-response-independent-20261031T043445-9B4EFBFF')
stream = io.StringIO()
try:
    with contextlib.redirect_stdout(stream), contextlib.redirect_stderr(stream):
        runpy.run_path(str(root/'checks.py'), run_name='__main__')
except BaseException:
    traceback.print_exc(file=stream)
    (root/'console-run-01.txt').write_text(stream.getvalue(), encoding='utf-8')
    print(stream.getvalue())
    raise
else:
    (root/'console-run-01.txt').write_text(stream.getvalue(), encoding='utf-8')
    print(stream.getvalue())
```

xAct MCP, profile `core`:

```wolfram
Get["/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/source-response-independent-20261031T043445-9B4EFBFF/ward-check.wl"]
```

## Original server-level raw records

These were created automatically by the kernel host and have not been changed:

- Sage [server JSON](</Users/koishi/.dsh/research-results/session-0d8eb89c5db2/75ecb8cbc5e6-research-result.json>) and [readable server record](</Users/koishi/.dsh/research-results/session-0d8eb89c5db2/744f47c70b0d-research-result-readable.txt>).
- xAct/Wolfram [server JSON](</Users/koishi/.dsh/research-results/session-0d8eb89c5db2/e3b429f6f18f-research-result.json>) and [readable server record](</Users/koishi/.dsh/research-results/session-0d8eb89c5db2/24b9817afe51-research-result-readable.txt>).

## Results and failures preserved

1. SageMath 10.9: all 20 checks passed. Exact symbolic calculations check the Fourier denominator, cylinder/plane shift, local contact polynomial, nonstatic spatial zero mode, and constant Beltrami period-map Taylor coefficient.
2. Generic vacuum PBW calculation: levels 0 through 8; modes 1 through 4. All tested commutators hold exactly over `QQ[c]`; levelwise KMS trace-shift identities hold for modes 1, 2, 3. The level-two trace of `L1 L−1` is 4, so deleting the thermal `n=±1` insertions is demonstrably wrong.
3. Sixty direct time integrals at 70-decimal precision include both signs of the spatial frequency and a nonzero angular shear. Maximum error against the predicted denominator was `1.28760436902e-71`. This checks normalization and denominator, not the general theorem by sampling.
4. Wolfram in an xAct core kernel: four residuals (determinant, scalar curvature, trace anomaly, diffeo+Weyl Ward equation) are exactly zero. No kernel diagnostics were returned. The source uses explicit coordinate tensor algebra; loading xAct does not turn it into an independent abstract-index proof.
5. **Retained failed hypothesis:** naively truncating both KMS sums at level 8 does NOT give an exact identity. The raw residuals are `−262 q^9` for `n=1` and `−(7c/2+164)q^9−(15c/2+360)q^10` for `n=2`. These expected boundary terms are stored in the structured Sage output. They prohibit claiming a finite-cutoff proof and do not invalidate the exact all-level trace identity.
6. There were no failed tool executions or discarded computational runs. This was a first-run success for each kernel. No output was overwritten during this investigation.

## Verification limits

The proof is the exact algebra/KMS derivation and the covariant Ward derivation, not the cutoff or the quadrature. The finite PBW basis is generic and not asserted to equal an exceptional minimal-model quotient. The main formulas only use the actual quotient character through its derivatives.

The existence of a global nonanomalous metric/CFT completion of a single chiral vacuum character was not proved. A further independent agent was unavailable at the configured delegation depth; this investigation is the independently initialized child review for its parent.
