# AGENTS.md — Quantization in AdS3

## Scope
Research workspace for AdS3 quantization projects and linked subtopics.

## Rules
- Treat subfolders as separate topic tracks; do not flatten or merge them.
- Preserve established notation across related notes unless correcting a clear mistake.
- When adding or removing major notes, update the local `README.md`.
- Keep exploratory calculations in topic folders; manuscript-specific workflow rules belong to child folders with their own `AGENTS.md`.
- Do not rename established topic folders such as `Proca in AdS3/` or `electric field in AdS3/` without explicit instruction.

## Mathematica / xAct
- For xAct calculations in this workspace, load `xTras` when available and use `FullSimplification[]` to simplify tensor expressions, especially after xPert/xCPS variations, curvature identities, or index canonicalization steps.
- ignore `xPerm` and other loading errors.
- Avoid Mathematica protected built-in symbols as temporary variable names in checks. In particular, do not assign to `C`, `Gamma` or `D`; use descriptive names such as `cotton`, `gammaConn`, or `christoffel` instead.
- For long formulas, use a two-stage workflow: draft and verify in an expanded working layout when it reduces formula errors, then compact the LaTeX source before leaving it in the note. Most importantly, if a display formula visually fits on one line, keep the source on one line as `$$ ... $$`; only introduce source line breaks when the displayed formula itself benefits from being multiline. In a multi-line environment, each equation or continuation that visually fits on one line should still occupy one source line. For multi-line environments, prefer `$$\begin{align}` and `\end{align}$$` on the delimiter lines. Do not leave `&`, `\\`, `=`, `+`, `\frac`, `\Gamma`, or single index factors on their own source lines. Group long formulas by mathematical structure rather than token-by-token. Do not use a global linebreak-deletion pass; compact only inside math blocks and rerun the relevant formula checks afterward.
- Avoid local shorthand symbols that merely rename a single simple expression, term, mode, or already-labelled object. A shorthand should reduce real repetition, name an object or family with independent semantic content, or make a multi-step derivation clearer; otherwise write the expression inline and keep its existing labels or arguments visible.
- Group displayed formulas by mathematical object or logical unit. Different perturbative orders, components, or cases of the same object should usually live in one `align` or display block, even if one entry is much longer; do not split them into separate formula blocks merely because some entries are short and others are long.
