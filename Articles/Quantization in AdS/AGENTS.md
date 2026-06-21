# AGENTS.md — Quantization in AdS3

## Scope

Research workspace for AdS3 quantization projects and linked subtopics.

## Rules

- Treat subfolders as separate topic tracks; do not flatten or merge them.
- Preserve established notation across related notes unless correcting a clear mistake.
- When adding or removing major notes, update the local `README.md`.
- Keep exploratory calculations in topic folders; manuscript-specific workflow rules belong to child folders with their own `AGENTS.md`.
- Do not rename established topic folders such as `Proca in AdS3/` or `electric field in AdS3/` without explicit instruction.

## Mathematica / xAct / Sage

- For xAct calculations in this workspace, load `xTras` when available and use `FullSimplification[]` to simplify tensor expressions, especially after xPert/xCPS variations, curvature identities, or index canonicalization steps.
- For representation-theory calculations in this workspace, use the Sage MCP before editing mathematical claims when the claim involves finite groups, Lie algebras, root systems, Weyl characters, Young diagrams, symmetric functions, tensor-product decompositions, compact-subalgebra branching, or combinatorial representation theory.
  - In the AdS$_d$ and AdS$_4$ module notes, use Sage for checks of $SO(d-1)$ / $\mathfrak{so}(d-1)$ characters, $B_r/D_r$ WeylCharacterRing computations, symmetric traceless representations, Young-diagram tensor products, symmetric-power decompositions, and finite-order character or partition-function expansions.
  - Keep Mathematica/xAct as the tool for differential-geometry, tensor, variational, covariant-phase-space, curvature, and component-field-equation checks.
  - Report which checks were Sage-backed, which were Mathematica/xAct-backed, and which remain representation-theoretic assumptions or literature-derived statements.
- ignore `xPerm` and other loading errors.
- Avoid Mathematica protected built-in symbols as temporary variable names in checks. In particular, do not assign to `C`, `Gamma` or `D`; use descriptive names such as `cotton`, `gammaConn`, or `christoffel` instead.
- For formula layout, use a two-stage workflow: draft and verify in an expanded working layout when it reduces formula errors, then compact the LaTeX source before leaving it in the note.
  - If a displayed formula visually fits on one line, keep the whole source on one line as `$$ ... $$`, or as a single-line `$$\begin{align} ... \end{align}$$` when alignment columns are useful. Short component lists such as `h_{zz},k_{zz}&=O(z^0),& h_{za},k_{za}&=O(z),& h_{ab},k_{ab}&=O(z^0)` should stay on one source line; do not expand them into separate `\\` rows merely because they contain several components.
  - If a displayed formula genuinely needs multiple visual lines, each source line in the final `align` block must correspond to an actual LaTeX line break: end every non-final displayed row with `\\`. Do not create source-only line breaks inside a single displayed row.
  - For long additive formulas, count only additive monomial terms on the right-hand side of the equality. One displayed row may contain at most six right-hand-side additive monomial terms. If the right-hand side has more than six such terms, split those terms as evenly as possible across multiple `\\` rows; do not count or constrain the left-hand side for this limit.
  - For multi-line environments, prefer `$$\begin{align}` and `\end{align}$$` on the delimiter lines. Do not leave `&`, `\\`, `=`, `+`, `\frac`, `\Gamma`, or single index factors on their own source lines. Group long formulas by mathematical structure rather than token-by-token. Do not use a global linebreak-deletion pass; compact only inside math blocks and rerun the relevant formula checks afterward.
- Avoid local shorthand symbols that merely rename a single simple expression, term, mode, or already-labelled object. A shorthand should reduce real repetition, name an object or family with independent semantic content, or make a multi-step derivation clearer; otherwise write the expression inline and keep its existing labels or arguments visible.
- Group displayed formulas by mathematical object or logical unit. Different perturbative orders, components, or cases of the same object should usually live in one `align` or display block, even if one entry is much longer; do not split them into separate formula blocks merely because some entries are short and others are long.
