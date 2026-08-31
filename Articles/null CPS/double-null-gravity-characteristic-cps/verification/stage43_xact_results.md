# Stage 4.3 xAct structured regression results

Executed 2026-08-31 through the dedicated xAct tool, fresh core kernel.
Setup: scripts/stage43_commutators_xact.wl.
Pipeline: canonical_contract = ToCanonical, ContractMetric, ToCanonical.

The first exploratory combined xAct call ended without a structured payload;
it supplied no evidence. A corrected saved-script exploratory run exposed
a swapped upper/lower slot in the vector test expression. That test was
repaired from the coordinate connection formula before the final verification.
The final labelled verification below has no errors, unknown heads or messages.

These are tensor/connection algebra regressions. The analytic compatibility,
ODE and Sobolev arguments are in calculation 10; these zeros do not prove
bulk Einstein propagation, the reset map, or the one-cell theorem.

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
      "label": "connection torsion symmetry",
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
      "label": "differentiated metric compatibility",
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
      "label": "covector frame cancellation",
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
      "label": "vector frame cancellation",
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
      "label": "symmetric tensor two index terms",
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
      "label": "lapse correction",
      "status": "zero",
      "canonicalResidual": "0",
      "canonicalResidualSha256": "5feceb66ffc86f38d952786c6d696c79c2dbc239dd4e91b46729d73a27fb57e9",
      "canonicalResidualTruncated": false,
      "finalResidual": "0",
      "finalResidualSha256": "5feceb66ffc86f38d952786c6d696c79c2dbc239dd4e91b46729d73a27fb57e9",
      "finalResidualTruncated": false,
      "unknownHeads": [],
      "messages": []
    }
  ],
  "elapsedMs": 5039,
  "transportStderr": []
}
```
