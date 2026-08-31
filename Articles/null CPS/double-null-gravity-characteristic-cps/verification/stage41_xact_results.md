# Stage-4.1 executed xAct results

Fresh `core` kernel, `canonical_contract` pipeline; scalar commutators
include explicit `SortCovDs`. These are tensor identities only, not PDE
existence, completion, restart or differentiability evidence.

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
      "label": "V51 connection variation trace",
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
      "label": "V51 scalar Hessian after explicit sorting",
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
      "label": "V52 gradient acceleration equals half gradient norm",
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
  "elapsedMs": 5346,
  "transportStderr": []
}
```
