# Scalar Wick Sewing Verification

Target: [1+1 scalar Wick observable algebra gluing](<../../04-observable-algebra/models/non-gauge/1+1 scalar Wick observable algebra gluing.md>).

Executed on 2026-09-09 with the Mathematica and xAct tools. The Wolfram Language check file was executed with `Get`, and its JSON output was written by that execution:

- [Reproducible Mathematica checks](<scalar_wick_sewing_checks.wl>)
- [Observed Mathematica results](<scalar_wick_sewing_results.json>)

## Exact Symbolic Checks

| Check | Observed result | Scope |
| --- | --- | --- |
| Operator field equation at the cut | Zero residual | Differentiate a piecewise field with arbitrary value and first-derivative data; canonicalize the delta and delta-prime terms. Time and mass terms produce no spatial contact. |
| Smeared operator field equation | Zero residual | Independent values of the test function and its derivative give the two interface relations. |
| Kubo response sign | Zero residual | Oscillator commutator with the note's `E = G^A - G^R` convention gives the positive retarded source response. |
| Right inverse for the two mismatch histories | Zero matrix residual | Exact inverse of the endpoint matrix, before the causal limit. |
| `B R = 1`, `P^2 = P`, `B P = 0`, `P R = 0` | Zero matrix residuals | Exact interface algebra, retaining independent fixed-history fluxes. Compact-time histories give the actual retarded inputs in the note. |
| Bulk-source continuity and flux transmission | Four zero residuals | Direct endpoint values and derivatives of the explicit hyperbolic response, for sources in either region. |
| History-source flux contact | Zero residual after subtracting 1 | The same unit contact occurs in the retarded and advanced responses and cancels in their difference. |
| Null contraction slots for mismatch variables | Zero matrix residuals | Generic algebraic covariance projected onto matched directions; the actual response identity is supplied by the preceding endpoint checks and reciprocity. |
| Two-interface elimination orders | Three zero matrix residuals | Each order inverts the same generic symmetric two-by-two interface matrix; their difference vanishes away from the displayed inverse denominators. |
| Same-region, cross-region and history response against independent uncut response | Three zero residuals | Hyperbolic identities, initially at positive real auxiliary frequency parameter; continuation gives the frequency formulas away from their poles. |
| Wick square product | Zero residual | Complete contraction exponential on two quadratic polynomials. |
| Energy-density product | Zero residual | Three field components with weights `(m^2,1,1)`; all single and double contractions retained. |
| Square/energy-density mixed product | Zero residual | All single and double contractions retained. |
| Square commutator scalar term | Zero residual | `W = Re W + i E/2`, including the order-hbar-squared term. |
| Chiral contraction from differentiated logarithm | Zero residual | Massless interval, before the boundary-value limit. |
| Chiral Laurent coefficients and double-contraction coefficients | Two zero residuals | Pole coefficients and finite chiral subtraction determining the central terms. |
| Central spectral sum | Zero residual | Exact symbolic sum `Sum[n(N-n),{n,1,N-1}] = N(N^2-1)/6` for every integer `N >= 2`. |
| Local Wick-square subtraction | Zero residual | Interior coincidence limit, positive length and subtraction scale. |
| Scalar delta-prime cancellation after stress shift | Zero residual | Common flat local subtraction. |
| Energy-density image cancellation and local Casimir limit | Two zero residuals | Exact interior point-split derivative cancellation and the remaining chiral coincidence limit for positive length. |

The contraction exponential is differentiated directly; it is not implemented by entering the claimed Wick coefficients. The response comparison uses independently entered regional and uncut kernels.

## Polynomial Quotient Argument

The note defines the algebras of the independent regions first. Histories are central parameters in each fixed-history family. Sewing promotes the endpoint field histories, replaces the contraction by the assembled quantum response, and retains the two mismatch histories as prescribed sources. The no-cut-source operator equation identifies which sources must finally be set to zero; no action variation is used to derive their relations.

The exact kernel proof uses the explicit retarded map `R(c,p)` with `B R = 1` and `P = 1 - R B`. Substitution of `phi = P phi + R B phi` into a polynomial of arbitrary finite degree proves that `F - F(P phi)` is a finite sum of expressions containing mismatch slots. This argument includes slots inside local smearing integrals. The full contraction has zero pairing with every mismatch slot, so these expressions form a two-sided star ideal. Restriction to the independently defined global field has precisely this kernel, and splitting the global smearing integrals gives surjectivity.

An additional finite matrix diagnostic evaluates a degree-five polynomial and checks that `F - F(P phi)` vanishes when the linear matching relations are substituted; its residual was zero. That finite diagnostic does not prove the arbitrary-degree statement. The proof is the finite expansion just described and written in the note. Likewise, the matrix check of two elimination orders illustrates the general finite-cut argument by elimination in a single linear system.

## Numerical Diagnostics

The clarification of the star-product definition also has two finite algebra diagnostics: three independently weighted field slots with an arbitrary contraction matrix reproduce the smeared-square coefficients 4 and 2, and two independent variations give the displayed second derivative with no extra factorial. Both residuals are zero. A separate scalar identity checks the sign of the point-split change from subtraction by W to subtraction by C. The continuum formulas follow from the derivative definition and the finite Wick contraction count; these finite diagnostics only check their normalization. They do not construct an additional coincidence limit between composite insertions.

| Diagnostic | Observed result | Limitation |
| --- | --- | --- |
| Four-log crossing contraction versus displayed sine-ratio expression | Absolute error below `1e-40` | Positive regulator `1e-45`, 55-digit evaluation. |
| Global regulated mode sum versus four-log contraction | Absolute error below `1e-30` | 1000 modes at regulator `1/20`; this is a finite diagnostic, not a proof of an unregulated mode limit. |
| Stress double contraction from direct derivatives of the full four-log spacetime kernel | Absolute error below `1e-38` | Crossing pair in the note, `L=1`, regulator `1e-45`, 70-digit inputs. |
| Stress subtraction from direct spacetime point splitting | Error from `-Pi/24` below `1e-22` | `L=1`, `x=0.37`, equal times and spatial separation `1e-12`; one point-splitting diagnostic. |

The recorded crossing contraction is `0.1153660158264403 - 0.25 i`. The square's scalar commutator coefficient divided by `i hbar^2` is `-0.2307320316528806`. The stress double-contraction coefficient multiplied by `L^4/hbar^2` is `53.7128021342554`.

The full interior Casimir value in the note is also derived analytically: the energy-density point-split differential operator cancels both reflected logarithms, leaving the two chiral finite terms, each `-Pi/(48 L^2)`. The one-point numerical test above only checks this formula independently at one separation.

## Stress Conservation with xAct

The xAct run used a two-dimensional manifold, a Lorentzian metric, a scalar and a constant mass. Its setup was

```wolfram
DefManifold[M,2,{a,b,c,d,e}];
DefMetric[-1,met[-a,-b],CD];
DefTensor[phi[],M];
DefConstantSymbol[mu];
```

With `xTras` loaded, the following residual was passed through `ToCanonical`, `ContractMetric`, `ToCanonical` and `FullSimplification[]`:

```wolfram
CD[a][CD[-a][phi[]] CD[-b][phi[]]
  - met[-a,-b] (CD[c][phi[]] CD[-c][phi[]] + mu^2 phi[]^2)/2]
 - (CD[a][CD[-a][phi[]]] - mu^2 phi[]) CD[-b][phi[]]
```

The observed final residual was `0`; the tool returned `status: zero`, `allZero: true`, with no errors or messages. This checks the classical tensor identity. The Wick statement additionally uses that the interval contraction solves the free equation in both slots and that the chosen flat subtraction fixes a conserved interior stress tensor.

## Claim Boundary

Verified: the operator jump identity, explicit endpoint response and right-inverse identities, finite-polynomial contraction identities, regional/global response comparison, massless chiral central coefficient and local square subtraction; the separately labelled numerical diagnostics also passed. The full polynomial ideal, kernel, surjectivity and finite-cut order arguments are derived in the note, with computational checks of their algebraic ingredients.

Assumptions: static interval geometry, positive lengths, physical outer Dirichlet walls, `m >= 0`, transparent transmission with no operator source or interaction at the cut, one shared positive-frequency contraction prescription and one shared flat local subtraction. Before the matching quotient the two mismatch histories have compact time support, so the displayed retarded inverse is defined; individual histories and matched global solutions need not have compact time support. Normal symbols include the explicitly stated mismatch-response insertions. Smearing is smooth and compact in time and may be piecewise smooth in space; local insertions stay away from the physical walls and linear histories are time-smeared. The explicit logarithmic, crossing, central-term and Casimir evaluations use `m = 0`.

Not verified or claimed: transparent transmission from CCR alone without specifying the interface dynamics, a retarded inverse on arbitrary infinite-past mismatch histories, a quantization of every smooth classical Hamiltonian observable, arbitrary independently chosen regional subtraction schemes, physical-wall-supported composites, time-ordered coincident products, interactions, state sewing, or curved-space Wick sewing.
