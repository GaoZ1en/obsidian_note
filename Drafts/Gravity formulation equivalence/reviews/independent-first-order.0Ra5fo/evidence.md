# Computational evidence index

The mathematical conclusions and conventions are in the [independent report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/report.md>). All computations below were actually run. No candidate research report was read. Only new private review artifacts were written; original research notes were not modified.

## Exact inputs, complete outputs, and native exports

Each **raw response** is an unmodified copy of the harness's source-containing JSON archive, preserving the exact tool arguments, actual server-returned result, warnings/messages, and any load or transport diagnostics. It is authoritative if a readable source adds a comment. No response was upstream-truncated. The xAct source files are replayed with the indicated package profile; package loading is supplied by that profile rather than embedded in the source.

| Run | Exact readable source | Full readable result | Raw response with actual diagnostics | Native result |
|---|---|---|---|---|
| 01: xTensor, core profile | [01 source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/01-xact-abstract.wl>) | [01 result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/01-xact-abstract-result.txt>) | [01 raw response](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/01-xact-abstract-tool-response.json>) | [01 WXF](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/01-xact-abstract-result.wxf>) |
| 02: xTensor general normal, core profile | [02 source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/02-xact-wall.wl>) | [02 result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/02-xact-wall-result.txt>) | [02 raw response](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/02-xact-wall-tool-response.json>) | [02 WXF](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/02-xact-wall-result.wxf>) |
| 03: Wolfram finite Hessian, Gaussian, Jacobians | [03 source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/03-wolfram-hessian-measure.wl>) | [03 result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/03-wolfram-hessian-measure-result.txt>) | [03 raw response](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/03-wolfram-hessian-measure-tool-response.json>) | [03 WXF](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/03-wolfram-hessian-measure-result.wxf>) |
| 04: independent Sage algebra | [04 source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/04-sage-independent.py>) | [04 result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/04-sage-independent-result.txt>) | [04 raw response](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/04-sage-independent-tool-response.json>) | [04 SOBJ](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/04-sage-independent-result.sobj>) |
| 05: xCoba hyperbolic geometry, components profile | [05 source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/05-xact-components-hyperbolic.wl>) | [05 result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/05-xact-components-hyperbolic-result.txt>) | [05 raw response](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/05-xact-components-hyperbolic-tool-response.json>) | [05 WXF](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/05-xact-components-hyperbolic-result.wxf>) |
| 06: Wolfram convention and Lorentz checks | [06 source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/06-wolfram-conventions.wl>) | [06 result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/06-wolfram-conventions-result.txt>) | [06 raw response](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/06-wolfram-conventions-tool-response.json>) | [06 WXF](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/06-wolfram-conventions-result.wxf>) |

Native files preserve result expressions, not a running kernel state. Replaying requires the definitions and conventions in the corresponding source. Only these self-generated native files should be deserialized. The [SHA-256 manifest](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/SHA256SUMS.txt>) covers all six runs, this index, and the report.

## Results and actual diagnostics, including the nonconvergent integral

### 01 — abstract curvature and derivative

- `QuadraticResidual = 0`.
- `DerivativeResidual = 0`.
- Tool `ok=true`; messages, package load errors/messages, and transport stderr are empty.
- **Metadata defect preserved:** the source used unqualified `$Version` inside an xAct context. Its value was `{"1.4.2", {2014, 10, 30}}`, a shadowed package-version value, not the Wolfram kernel version. This incorrect label was noticed immediately; no mathematical conclusion uses it. It was not silently rewritten in the original evidence. Runs 02 and 05 explicitly use ``System`$Version`` and identify Wolfram 14.3.0.

### 02 — arbitrary-normal wall identity

- `UnconstrainedIdentityResidual = 0` for the complete remainder before imposing `n.n=1`, `n.u=n.v=0`.
- `n`, two wall tangent images, and the two connection images are otherwise arbitrary tensors.
- Tool `ok=true`; messages and package/transport diagnostics are empty.
- Explicit versions: Wolfram 14.3.0; xTensor `{"1.3.0", {2025, 12, 29}}`.

### 03 — finite matrix and Gaussian

- Direct epsilon curvature residual: zero.
- Basis Gram matrix: identity; basis determinant: minus one relative to row-major ordering.
- Hessian eigenvalues: `4 z`, five copies of `-2 z`, three copies of `2 z`; determinant `-1024 z^9`.
- Rotated Gaussian: `I Pi^(9/2)/(Sqrt[2] z^(9/2))`.
- **Actual nonconvergence diagnostic:**

```text
Integrate::idiv: Integral of E^(u^2 z) does not converge on {-Infinity, Infinity}.
```

- The real negative-mode integral remained `Integrate[E^(u^2*z), {u, -Infinity, Infinity}, Assumptions -> z > 0]`. That is an intentionally preserved unevaluated, divergent test, not a successful finite integral.
- The exported message list is `{"HoldForm[Integrate::idiv]"}`. The raw response preserves the actual rendered message as well.
- The signed frame/metric/gauge Jacobian at the identity is `-1/8`; the positive measure density uses its absolute value.
- General triangular metric congruence determinant: `(d1 d2 d3)^4`; coframe and connection component transformations each give `(d1 d2 d3)^3`.

### 04 — independent exact implementation

- SageMath 10.9, release date 2026-05-04.
- Epsilon contractions use independent Python loops over a rational polynomial ring, not Wolfram or xAct.
- Orthonormal-basis computations use the exact algebraic real field `AA`. A trailing `?` in an `AA` display is its printed enclosure syntax; equality tests are exact, not floating-point tolerance tests.
- All eight checks are `True`: curvature polynomial identity; orthonormal basis; full diagonal Hessian; determinant; general-normal wall identity; negative symmetric example; positive trace example; positive antisymmetric example.
- **Actual warning:** `builtins.DeprecationWarning: Use sage.version.version instead. See https://github.com/sagemath/sage/issues/39015 for details.` This comes from the version accessor, not the algebra, and is retained in the raw response.
- No exception or failed algebraic check occurred.
- The native result and full text were first exported to the skill's persistent kernel-export directory and then copied into this private review directory without altering them.

### 05 — actual component geometry

- xCoba metric components: `diag(1, cosh(r)^2, sinh(r)^2)` in chart `(r,tau,phi)`.
- Actual `MetricCompute` gives scalar curvature `-6`.
- Actual covariant divergence of the outward normal gives `coth(r)+tanh(r)`.
- Curvature and extrinsic-curvature residuals: zero.
- Quadratic tail: `exp(-R)/4-exp(-5R)/20`.
- Boundary flux limit: `Infinity` for the stated antisymmetric `exp(-3r/2)` mode.
- Tool `ok=true`; messages and package/transport diagnostics are empty.
- xCoba version `{"0.8.6", {2021, 2, 28}}`.

### 06 — convention audit

- The actual Wolfram `CharacteristicPolynomial` output equals `Det[H-lambda IdentityMatrix[9]]`; explicit `Det[lambda IdentityMatrix[9]-H]` is its negative. Sage returns the monic latter convention. The spectra agree.
- Lorentz FP determinant for `chi=X-X^T` in the three independent entries: `8`.
- Canonical SO(3) tangent to Frobenius antisymmetric Jacobian: `2 Sqrt[2]`.
- Quotient factor: `1/(16 Sqrt[2]) = 2^(-9/2)`.
- Nonsymmetric coframe determinant: `7`; signed coordinate Jacobian: `-1/56`; absolute Jacobian residual: zero.
- Normalized Gaussian: `I/(32 z^(9/2))`.
- Message list empty.

## Interpretation boundary

The xAct runs are genuine abstract-tensor and component-geometry checks. Wolfram and xAct use the same underlying Wolfram engine and are not counted as independent implementations; Sage supplies a separate exact algebraic implementation. The analytic proofs in the report establish the unrestricted statements; the special hyperbolic example is used as a counterexample to a particular falloff implication, not as proof of a universal spectral claim. No continuum functional determinant, metric/ghost spectrum, or independent normalization principle was supplied by these computations.
