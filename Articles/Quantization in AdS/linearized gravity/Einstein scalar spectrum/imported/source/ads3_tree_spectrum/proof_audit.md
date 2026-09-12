# Proof audit and claim boundaries

## What the analytic derivation establishes

The object is the connected, minimal, tree-level scalar-primary binding
coefficient with the physical scalar mass held fixed. Within that object:

1. The annihilation channel is evaluated for every radial level using normalized
   local primary form factors. Its spin support is 0 and ±2 for identical real
   bosons. The arbitrary-index Clebsch–Gordan ratios are elementary identities.
2. The crossed Einstein propagator is collapsed with its tensor Casimir into
   a definite local contraction `T.T - tr(T) tr(T)`. This fixes the low-spin
   contact source instead of leaving a freely chosen contact completion.
3. The crossed chiral Casimir has a three-term block action. Its proof compares
   a generic hypergeometric-series coefficient, not finitely many coefficients.
4. The proposed crossed coefficients solve the resulting recurrence at generic
   symbolic radial level and mass. The endpoint at level zero is included.
5. Once the known high-spin tail is fixed, a possible difference is supported
   in three diagonals. Its coefficients are determined by two initial numbers.
   Two remaining equations have an explicitly positive determinant for Delta>1.
   Therefore the completion is unique at all radial levels.
6. Adding the two channels gives the spin-0/spin-2 formulas and the universal
   answer for every allowed even |ell|>=4.

The temporary distinguishable equal-mass problem supplies auxiliary odd-spin
crossed data for the uniqueness argument. It does not introduce odd-spin
states for the identical real scalar.

## Inputs, not newly proved general theorems

- The regular, reflecting, AdS-invariant connected tree exchange prescription
  for the specified action, with no independently added external graviton.
- The canonical interpretation of the corresponding scalar-primary
  logarithmic data as leading binding shifts, with the physical mass fixed.
- The above-spin-two stress-tensor inversion result of arXiv:1810.01439 and the
  relevant Lorentzian inversion framework. The paper cites rather than claims
  to originate this high-spin result.
- The usual integration-by-parts identities on the stated finite primary
  form factors; these do not assert a distributional inverse on every eternal
  source or convergence on infinite sums of modes.

## Executed checks

`symbolic_report.json`: 21 exact symbolic identities, including an arbitrary
series index, arbitrary radial level, contact normalizations, the uniqueness
determinant, and the total low-spin expressions.

`tensor_report.json`: all covariant components of the spin-1 and spin-2 primary
wavefunctions satisfy the rough-Laplacian identity; divergences, the spin-2
trace, both global lowering conditions, and the tensor contraction are checked.

`radial_report.json`: 588 exact rational comparisons, separately for the full,
crossed, and annihilation interactions, through N=12 at four masses. These are
independent computations from the circular Hamiltonian, not a numerical
implementation of the crossed recurrence.

An additional brute-force test of the tensor Casimir on six completely arbitrary
radial tensor functions was attempted but did not finish within the execution
limits. It is not counted as a passed test or included among the runnable checks.
The identity used in Section 5.1 is justified analytically by the homogeneous
bundle Casimir and its trace/traceless decomposition; the explicit primary
eigenfunctions are independently checked by the tensor script.

## Not established by this draft

- The full interacting change of basis and mixing matrix including every
  independent Brown–Henneaux excitation and every accidentally degenerate
  physical sector. The paper does not identify a circular compression with
  that full Hilbert space.
- A direct all-index evaluation of the original multiple Hahn finite sum.
  The all-level route is the covariant form-factor/Casimir proof instead;
  the radial algorithm is an independent finite check.
- A regulator-specific bare one-scalar self-energy, additional scalar contact
  interactions, higher loops, alternative quantization, uniform high-energy
  control, or infinite-mode convergence.
- An exhaustive determination of publication novelty or an external independent
  proof audit of the assembled manuscript.

For an adversarial physics review, Sections 5.1–5.2 (exchange collapse and source
normalization) and the interpretation of scalar-primary data in the complete
boundary-graviton module structure deserve priority. The remaining arbitrary-
index rational algebra has explicit reproducible certificates.
