# AdS4 Linearized Gravity

Working notes for adapting the AdS3 linearized-gravity setup to global AdS4 in coordinates $(t,r,\theta,\phi)$. The current focus is the positive-energy $\mathfrak{so}(2,3)$ module structure of scalar, vector, Maxwell, transverse-traceless spin-two, and massless graviton modes, together with their symplectic normalization and thermal partition functions.

## Core notes

| File | Description |
|---|---|
| `linearize.md` | Global AdS4 background conventions, perturbative Einstein equation, de Donder and TT reductions, and radial cutoff geometry. |
| `Killing algebra.md` | Explicit global AdS4 Killing generators, Cartan basis, quadratic Casimir, primary modes, mass-$\Delta$ relations, and descendant construction for scalar, vector, Maxwell, TT tensor, and graviton branches. |
| `symplectic norm.md` | Covariant symplectic forms, normalizability conditions, primary normalization constants, descendant $SO(3)$ decompositions, and physical gauge quotients. |
| `partition function.md` | Refined thermal traces $\mathrm{Tr}\,e^{-\beta H+i\alpha J_3}$, one-particle characters, bosonic Fock-space partition functions, summary table, and general integer-spin $s$ formulas. |
| `so(2,d-1) algebra.md` | General AdS$_d$ abstraction of the compact-subalgebra decomposition, massive long modules, massless short modules, and their one-particle characters. |
| `ads4_heat_kernel_partition_functions.md` | Heat-kernel cross-check of the same AdS4 one-particle traces and one-loop thermal partition functions. |

## Current result

The normalizable positive-energy modes organize into $\mathfrak{so}(2,3)$ highest-weight modules. Massive fields give long modules $\mathcal{V}(\Delta,S)$, while gauge fields give short modules after quotienting the gauge submodule:

| theory | module |
|---|---|
| massive scalar | $\mathcal{V}(\Delta,0)$ |
| massive vector / Proca | $\mathcal{V}(\Delta,1)$ |
| Maxwell | $\mathcal{V}(2,1)/\mathcal{V}(3,0)$ |
| massive TT tensor | $\mathcal{V}(\Delta,2)$ |
| massless graviton | $\mathcal{V}(3,2)/\mathcal{V}(4,1)$ |
| massive spin-$s$ | $\mathcal{V}(\Delta,s)$ |
| massless spin-$s$ | $\mathcal{V}(s+1,s)/\mathcal{V}(s+2,s-1)$ |

The massless quotients remove level-shifted gauge submodules, not pieces of the primary multiplets. The Maxwell primary remains the full $V_1$, and the graviton primary remains the full $V_2$.

## Verification status

- The scalar, vector, TT, Maxwell, and graviton character sums in `partition function.md` were checked algebraically with Mathematica against their closed forms.
- The general massive and massless spin-$s$ character formulas were checked by finite-order Mathematica expansions for several integer spins.
- The symplectic-normalization formulas in `symplectic norm.md` are recorded as the mode-normalization input; they were not rechecked during the partition-function update.
