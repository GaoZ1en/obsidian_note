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
- Use the Obsidian formatter plugin for mechanical Markdown and formula-source cleanup: display delimiters, `align` wrappers, blank lines, list markers, and source-only linebreak linting. Keep prompt attention on mathematical meaning, notation, and verification; only hand-tune source layout when it affects readability or the user asks.
- Formatter cleanup is not formula verification. Rerun the relevant Mathematica/xAct/Sage checks whenever a formula, derivation, or equation-heavy claim changes.
- Avoid local shorthand symbols that merely rename a single simple expression, term, mode, or already-labelled object. A shorthand should reduce real repetition, name an object or family with independent semantic content, or make a multi-step derivation clearer; otherwise write the expression inline and keep its existing labels or arguments visible.
- Group displayed formulas by mathematical object or logical unit. Different perturbative orders, components, or cases of the same object should usually live in one `align` or display block, even if one entry is much longer; do not split them into separate formula blocks merely because some entries are short and others are long.
