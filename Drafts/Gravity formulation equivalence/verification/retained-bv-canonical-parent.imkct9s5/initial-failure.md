# Excluded first execution: native Sage basis-index API

The initial execution failed before completing any labelled check. The native ExteriorAlgebra basis requires FrozenBitset indices, not tuple indices. This is an implementation/API failure, not a mathematical negative result. The original source is preserved beside this record.

Actual tool diagnostics: mode=run; ok=false; result empty; truncated=false; exception builtins.TypeError, `Cannot convert tuple to sage.data_structures.bitset.FrozenBitset`; stdout and stderr empty and untruncated; warnings and transportStderr empty. SageMath version 10.9, Release Date 2026-05-04; elapsedMs=3621. The failure occurred while evaluating the first label, `all 24 Darboux position-momentum pairs`, in multiplication of the derivative basis terms.

Code/execution-stub SHA256: `4d0bd02d9de6d4eb88e8c4870e151bae166570fcdd29c7518440afb6b646cb61`.
Exception message SHA256: `be9eb5553bdfc4a2bf591f5177390fddaddcd10782698fb0ef1f2c23f59dc8f7`.
Traceback SHA256: `27edf5d6ff2b456080ddcc7fb1e2a61c67162b9c1399abf44709a5361dc17572`.

The execution stub is unchanged in the corrected run, so its hash is not the mathematical source hash; the preserved source hashes distinguish the two executions. Only the subsequent clean run is positive evidence.
