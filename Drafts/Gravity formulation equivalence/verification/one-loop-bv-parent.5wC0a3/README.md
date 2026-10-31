# Parent finite one-loop BV checks: frozen evidence

## Result and scope

**All 27 exact groups pass.** The [frozen source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/one-loop-bv-parent.5wC0a3/source.py>) and [result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/one-loop-bv-parent.5wC0a3/result.json>) check the even-UV Gaussian model, full and retained quantum master/transport identities, the normalized insertion and its nonzero omission control, and elementary radial identities for the actual retained-band construction. The finite graded computation uses native Sage ExteriorAlgebra; the ordinary radial computation uses SymPy. Versions: Sage 10.9, SymPy 1.14.0.

These checks do not prove a continuum BV measure, BV-Stokes theorem, trace-classness, or quantum equivalence. Those distinctions and the analytic proofs are in [the synthesis](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md>).

The executed mathematical source has SHA-256 `e6e6633018c48c054798321b328dd58de39545cbff5ea5932a8638886cb18d3e`; it is byte-identical to the [replay source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/one_loop_bv_transport_checks.py>). The [actual successful return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/one-loop-bv-parent.5wC0a3/actual-server-return.json>) is server-returned and untruncated, with `ok=true`, no error, empty stderr/warnings/transport stderr, and 27 passing groups in stdout. The [readable returned view](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/one-loop-bv-parent.5wC0a3/readable-server-return.txt>) is retained separately. The kernel's original export directory is recorded in the actual return; these files are frozen copies, not reconstructed outputs.

## Excluded first attempt

The [first source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/one-loop-bv-parent.5wC0a3/excluded-first-source.py>) reached an unsupported generic SymPy oscillatory infinity limit and aborted before export. Its [diagnostic record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/one-loop-bv-parent.5wC0a3/excluded-first-diagnostic.md>) explicitly contains selected actual fields, not a complete raw envelope. It contributes no successful group count. The successful source replaces that one limit request by the analytic bounded-tail squeeze and the exact sine-integral limit; it does not alter the model or assume numerical convergence.

## Replay without overwriting evidence

Load the math-computation skill and Sage reference, then run the replay source in a fresh Sage process with its absolute `__file__` set. The script creates a fresh private directory under the configured kernel-export root on every successful run. Do not redirect it into this frozen directory. The earlier failed source is retained for diagnosis, not the recommended replay. No successful mathematical kernel was rerun merely to create this guide.
