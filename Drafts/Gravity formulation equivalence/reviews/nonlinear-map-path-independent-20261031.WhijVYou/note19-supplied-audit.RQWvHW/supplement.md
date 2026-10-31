# Supplement: newly added explicit vertices and integrity checks

After the main supplied-text report was frozen, the parent continued editing the source note. A second [supplied snapshot](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/note19-supplied-audit.RQWvHW/supplied-note19-snapshot-v2.md>) has SHA-256 `d3c280cabfb70cfab0f1a6d862839fc73bcbc8bb36b05e53f934d7eadfa257a0`.

**The added equation (17a) is correct.** Its two cubic vertices, including the sign of the geometric curvature term, agree term by term with equations (23)–(24) of the initial independent proof. In particular

\[
-R(iD_0\eta-\tfrac12[\eta,\eta]-\tfrac12[\zeta,\zeta])
\]

uses \(i^2R_0=-[\zeta,\zeta]\) and is not the CS ghost-antifield term. These are exactly the two actions used in the original 127-check run. No new calculation is needed to turn that already recorded check into a claimed rerun.

The added definition \(v_{3,t}=(1-t)v_0+tv_1\) makes the quartic stationary formula explicit. The re-read second-snapshot [§4:282–336](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/note19-supplied-audit.RQWvHW/supplied-note19-snapshot-v2.md#L282-L336>) retains the same correct normalization assessed in the [main audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/note19-supplied-audit.RQWvHW/audit.md>). The fixed-coupling intermediate quartic remains present in the re-read [§2.3:189–230](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/note19-supplied-audit.RQWvHW/supplied-note19-snapshot-v2.md#L189-L230>).

Integrity bookkeeping: the separate audit manifest verified all six audit files. The first attempt to verify the *initial* manifest was accidentally executed from the audit subdirectory; its relative paths therefore reported seven missing files and compared the audit's raw tool return against the initial return. Repeating that command from the initial directory verified **all eight initial files successfully**. This was a working-directory error, not an alteration of the frozen independent evidence. The initial source, proof, and results remain unchanged.
