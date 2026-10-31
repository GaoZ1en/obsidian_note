# Excluded second execution: empty bitset capacity

The second execution also failed before completing any labelled check. The FrozenBitset constructor needs a positive capacity for the empty exterior monomial. The correction supplies capacity=24 explicitly. This is an implementation/API failure, not a negative mathematical result. Its source is preserved separately.

Actual tool diagnostics: mode=run; ok=false; result empty; truncated=false; exception builtins.ValueError, `Bitsets must not be empty`; stdout and stderr empty and untruncated; warnings and transportStderr empty. SageMath version 10.9, Release Date 2026-05-04; elapsedMs=3564. Failure during left odd differentiation in the first Darboux-pair label.

Execution-stub SHA256: `4d0bd02d9de6d4eb88e8c4870e151bae166570fcdd29c7518440afb6b646cb61`.
Exception message SHA256: `0fc27b7667381cdec11bb05d21f45ac297e68b8bcbc727a9bfffda5ac0baa698`.
Traceback SHA256: `737f8c60327119fd14ff67481df3ceef8d84ca991149af356eef3fd77c6b5669`.
