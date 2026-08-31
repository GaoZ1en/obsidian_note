# Stage 4.2 xAct result

## V63: additional independent curvature-variation check

A separate fresh xAct core kernel loaded xPert and evaluated the metric
variation for qdot=2H. The canonical_contract result was zero; no load,
setup or per-check messages, and no truncation. Script:
stage42_curvature_variation_xact.wl. This checks the geometric variation
used in 09.(5.1), not the entire Bianchi hierarchy.

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
      "label": "V63 Gaussian curvature variation for qdot=2H",
      "status": "zero",
      "canonicalResidual": "2*HH[a, -a]*kk[] - 2*HH[a, b]*kk[]*qq[-a, -b] - 2*DD[-b][DD[-a][HH[a, b]]] - qq[a, b]*DD[-b][DD[-a][HH[f$29235, -f$29235]]] + 2*DD[-b][DD[b][HH[a, -a]]] + 2*qq[a, b]*DD[-f$29235][DD[-b][HH[-a, f$29235]]] - qq[a, b]*DD[-f$29235][DD[f$29235][HH[-a, -b]]]",
      "canonicalResidualSha256": "d5a7538cfd59ecdf9271ea933743d3c5c0a0e0559fb2bdf9a51a16602e7f8de1",
      "canonicalResidualTruncated": false,
      "finalResidual": "0",
      "finalResidualSha256": "5feceb66ffc86f38d952786c6d696c79c2dbc239dd4e91b46729d73a27fb57e9",
      "finalResidualTruncated": false,
      "unknownHeads": [],
      "messages": []
    }
  ],
  "elapsedMs": 5582,
  "transportStderr": []
}
```


Executed with the dedicated xAct core tool in a fresh kernel.
Pipeline: ToCanonical, ContractMetric, ToCanonical.

| Check | Status | Residual |
|---|---|---|
| V60 Gauss contraction in source curvature convention | zero | 0 |
| V61 mixed Ricci antisymmetric cancellation | zero | 0 |
| V62 Codazzi beta contraction | zero | 0 |

No package-load, setup, or per-check messages. No truncated residuals.
These are tensor contractions of the displayed identities, not a proof of
C_Bianchi, PDE existence, constraint propagation, restart or C1.

Structured result:

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
      "label": "V60 Gauss contraction in source curvature convention",
      "status": "zero",
      "canonicalResidual": "-1/2*(HH[a, -a]*XX[b, -b]) + (HH[a, b]*qq[-a, -b]*qq[c, d]*XX[-c, -d])/2",
      "canonicalResidualSha256": "649b4c18fecd49d2e2e965dc78c099aa8080c6d525c2750541906814b5bd27c6",
      "canonicalResidualTruncated": false,
      "finalResidual": "0",
      "finalResidualSha256": "5feceb66ffc86f38d952786c6d696c79c2dbc239dd4e91b46729d73a27fb57e9",
      "finalResidualTruncated": false,
      "unknownHeads": [],
      "messages": []
    },
    {
      "label": "V61 mixed Ricci antisymmetric cancellation",
      "status": "zero",
      "canonicalResidual": "0",
      "canonicalResidualSha256": "5feceb66ffc86f38d952786c6d696c79c2dbc239dd4e91b46729d73a27fb57e9",
      "canonicalResidualTruncated": false,
      "finalResidual": "0",
      "finalResidualSha256": "5feceb66ffc86f38d952786c6d696c79c2dbc239dd4e91b46729d73a27fb57e9",
      "finalResidualTruncated": false,
      "unknownHeads": [],
      "messages": []
    },
    {
      "label": "V62 Codazzi beta contraction",
      "status": "zero",
      "canonicalResidual": "-(qq[a, d]*XX[-a, -d]*zz[-b]) + XX[a, -a]*zz[-b] - DD[-a][XX[-b, a]] - qq[a, d]*DD[-b][XX[-a, -d]] + DD[-b][XX[a, -a]] + qq[a, d]*DD[-d][XX[-b, -a]]",
      "canonicalResidualSha256": "d6da7293af379585beff60a2f8a7e918e8fc4d80898ab21fc2246ed2e507c1cf",
      "canonicalResidualTruncated": false,
      "finalResidual": "0",
      "finalResidualSha256": "5feceb66ffc86f38d952786c6d696c79c2dbc239dd4e91b46729d73a27fb57e9",
      "finalResidualTruncated": false,
      "unknownHeads": [],
      "messages": []
    }
  ],
  "elapsedMs": 5552,
  "transportStderr": []
}
```
