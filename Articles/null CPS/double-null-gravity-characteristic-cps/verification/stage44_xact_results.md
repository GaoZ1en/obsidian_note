# Stage 4.4 xAct structured regression results

Executed 2026-09-01 through the dedicated xAct tool in a fresh core kernel.
Setup: `scripts/stage44_subsidiary_identities_xact.wl`.
Pipeline: `canonical_contract = ToCanonical, ContractMetric, ToCanonical`.

The final verification has no load/setup/check messages, unknown heads or
truncation.  It checks the algebraic Riemann Bianchi identity, a contracted
differential Bianchi identity and the contracted Einstein Bianchi identity
for a torsion-free metric connection.  It does **not** check the torsionful
zero-quantity formulas, the complete doubled-copy residual principal matrix,
a symmetrizer, PDE uniqueness or a derivative loss.

```json
{
  "ok": true,
  "allZero": true,
  "profile": "core",
  "pipeline": "canonical_contract",
  "pipelineSteps": [
    "ToCanonical",
    "ContractMetric",
    "ToCanonical"
  ],
  "assumptions": "",
  "loadedPackages": [
    "xAct`xTensor`",
    "xAct`xPert`",
    "xAct`xTras`"
  ],
  "loadErrors": [],
  "loadMessages": [],
  "setupMessages": [],
  "checks": [
    {
      "label": "V79 algebraic Riemann Bianchi",
      "status": "zero",
      "canonicalResidual": "0",
      "canonicalResidualTruncated": false,
      "finalResidual": "0",
      "finalResidualTruncated": false,
      "unknownHeads": [],
      "messages": []
    },
    {
      "label": "V79 contracted differential Bianchi",
      "status": "zero",
      "canonicalResidual": "0",
      "canonicalResidualTruncated": false,
      "finalResidual": "0",
      "finalResidualTruncated": false,
      "unknownHeads": [],
      "messages": []
    },
    {
      "label": "V79 contracted Einstein Bianchi",
      "status": "zero",
      "canonicalResidual": "0",
      "canonicalResidualTruncated": false,
      "finalResidual": "0",
      "finalResidualTruncated": false,
      "unknownHeads": [],
      "messages": []
    }
  ],
  "transportStderr": []
}
```
