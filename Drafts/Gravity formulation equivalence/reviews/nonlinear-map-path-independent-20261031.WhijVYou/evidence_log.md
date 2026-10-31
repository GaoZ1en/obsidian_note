# Evidence log and safe replay

## Independent scope and chronology

The inputs read were the root/local instructions, the CPS convention anchor, [note16](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md>), and [note18](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md>). No other current review or parent candidate note19 was read. The project originals were not modified. All new work is confined to this uniquely created review directory.

The coordinate alignment, exact path, simplified source Hamiltonian, action formulas, intermediate quartic, and test implementation were derived before receiving the parent's matching formulas. The full [independent proof](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/derivation.md>) was written before that message. The parent then reported agreement, with its opposite right-action Hamiltonian convention; this is later correspondence, not an input to the initial derivation. No mathematical changes based on that correspondence are included in the initial freeze.

## Actual kernel calls

1. A short native-Sage API probe established the rational-function/exterior-algebra setup. It returned successfully. It did not exercise the later exterior multiplication with tuple-created keys, so it did not catch the subsequently exposed key-type error. It is not counted among the mathematical checks.
2. First full call: Python `SyntaxError`, an unclosed parenthesis in the construction of the translation-antifield correction. No mathematical result was produced.
3. Second full call: `TypeError: Cannot convert tuple to sage.data_structures.bitset.FrozenBitset`. This was an exterior-basis key construction error. No completed suite was produced.
4. Third full call: `ValueError: Bitsets must not be empty`. The empty-key constructor needed the explicit exterior capacity. No completed suite was produced.
5. Final full call: successful native SageMath 10.9 execution, **127/127 labels pass**, no residual failures. Runtime reported by the server: 525530 ms; source-internal elapsed time: 514.9160530567169 seconds. The only warning is a nonfatal version-function deprecation. These are the only successful full-suite results asserted here.

The final [source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/check_map_path.py>) retains the tested code, including its harmless deprecation warning. The actual [raw server return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/successful_tool_return.json>) and [readable return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/successful_tool_return_readable.txt>) are unmodified copies. The server wrapper hashes its `exec` invocation, not the contents of the source it reads; the separate freeze manifest therefore hashes the actual source.

The three setup errors above are disclosed as failures, not reclassified as negative-control mathematical checks. The four deliberate mutations in the final completed suite are separately labeled expected-nonzero residual tests.

## Exact outputs

- [Label-level results](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/results.json>).
- [Full nonzero diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/actual_diagnostics.txt>).
- [Selected exact expressions](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/exact_key_expressions.txt>).

These are exact sparse polynomial/rational-function expressions, not numerical approximations. The coefficient field keeps symbolic kappa. All original ghost-antifield and physical-antifield blocks are included. The exterior basis has only three dimensions, as required by the exact generator's cancellations.

## Safe replay

The tested script writes its output files beside itself. **Do not execute it in this frozen directory**, since that would overwrite the frozen result files. Instead create a new uniquely named directory, copy only the source into it, and run the copied source with SageMath 10.9:

```bash
sage --nodotsage /absolute/path/to/new-unique-directory/check_map_path.py
```

The successful run took approximately nine minutes. The MCP equivalent executes the copied source in a fresh kernel with `__file__` set to its copied absolute path, as recorded in the actual raw return. No package installation is required.

The initial snapshot is defined by the [SHA-256 manifest](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/SHA256SUMS.initial>). Later supplied-text discussion, if any, must be recorded in a separate follow-up and not written into the frozen proof or source.
