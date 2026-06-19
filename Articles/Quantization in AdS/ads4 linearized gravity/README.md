# AdS4 Linearized Gravity

Working notes for adapting the AdS3 linearized-gravity setup to global AdS4 and for organizing the resulting positive-energy modules and thermal partition functions.  The folder has two connected layers:

- explicit AdS4 calculations in global coordinates $(t,r,\theta,\phi)$;
- representation-theoretic and heat-kernel formulas for totally symmetric spin-$s$ modules in AdS$_d$.

## Core notes

| File | Description |
|---|---|
| `linearize.md` | Global AdS4 background conventions, perturbative Einstein equation, de Donder and TT reductions, quadratic Einstein-Hilbert density, symplectic current, and radial cutoff geometry. |
| `Killing algebra.md` | Explicit $\mathfrak{so}(2,3)$ Killing generators, Cartan basis, quadratic Casimir, primary modes, mass-$\Delta$ relations, descendant construction, and gauge branches for scalar, vector, Maxwell, TT tensor, and graviton modes. |
| `symplectic norm.md` | Covariant symplectic forms, normalizability conditions, primary normalization constants, descendant $SO(3)$ decompositions, and physical gauge quotients for Maxwell and gravity. |
| `gauge representatives.md` | Direct Maxwell and graviton gauge representatives for the massless short modules, with quotient data used only to label the physical $SO(3)$ multiplets. |
| `partition function.md` | AdS4 refined traces $\mathrm{Tr}\,e^{-\beta H+i\alpha J_3}$, one-particle characters, bosonic Fock-space partition functions, and the general integer-spin $s$ AdS4 formula. |
| `so(2,d-1) algebra.md` | General AdS$_d$ compact decomposition, positive-energy highest-weight modules, $SO(d-1)$ symmetric-traceless characters, long-module characters, and massless short-module quotients. |
| `heat kernel.md` | General AdS$_d$ thermal heat-kernel derivation of the spin-$s$ long and massless one-loop partition functions, matched to the $SO(2,d-1)$ module characters. |

## Organization

The AdS4-specific notes build from local field data to Hilbert-space data:

1. `linearize.md` fixes the background, perturbative Einstein equation, TT reduction, and symplectic current.
2. `Killing algebra.md` constructs explicit highest-weight primaries and descendants for scalar, vector, Maxwell, TT tensor, and graviton branches.
3. `symplectic norm.md` determines the normalizable physical modules and explains how gauge quotients remove longitudinal submodules.
4. `gauge representatives.md` chooses direct representatives for the Maxwell and graviton short modules.
5. `partition function.md` converts those physical one-particle modules into refined AdS4 Fock-space partition functions.

The general notes then abstract the same structure:

1. `so(2,d-1) algebra.md` gives the representation-theoretic character formulas for AdS$_d$.
2. `heat kernel.md` derives the same long and short spin-$s$ partition functions from the non-zero-image thermal AdS$_d$ heat kernel.

## Current result

The normalizable positive-energy modes organize into highest-weight modules.  Massive fields give long modules, while gauge fields give short modules after quotienting the gauge submodule:

| setting | module / character structure |
|---|---|
| AdS4 massive scalar | $\mathcal V(\Delta,0)$ |
| AdS4 Proca vector | $\mathcal V(\Delta,1)$ |
| AdS4 Maxwell | $\mathcal V(2,1)/\mathcal V(3,0)$ |
| AdS4 massive TT tensor | $\mathcal V(\Delta,2)$ |
| AdS4 massless graviton | $\mathcal V(3,2)/\mathcal V(4,1)$ |
| AdS$_d$ massive spin-$s$ | $\mathcal V(\Delta,s)$ with $Z_1=q^\Delta\chi_s^{(d-1)}(\mathbf y)/D_d(q,\mathbf y)$ |
| AdS$_d$ massless spin-$s$ | $\mathcal V(s+d-3,s)/\mathcal V(s+d-2,s-1)$ |

For the gauge theories, the quotient removes a level-shifted gauge submodule.  It does not remove part of the physical primary multiplet: the Maxwell primary remains the full $V_1$, and the graviton primary remains the full $V_2$.

## Verification status

- The AdS4 background curvature data, raw Einstein-Hilbert quadratic density, and symplectic-current formulas in `linearize.md` were checked in the previous xPert/xCPS verification pass.
- The scalar, vector, TT, Maxwell, and graviton character sums in `partition function.md` were checked algebraically against their closed forms.
- The general massive and massless spin-$s$ character formulas were checked by finite-order expansions for representative integer spins.
- The heat-kernel derivation in `heat kernel.md` has been checked downstream from the standard Harish-Chandra image formula: the denominator relation, proper-time integral, mass shift, AdS4 specializations, and general AdS$_d$ long/short formulas match the module-character result.
- The explicit symplectic-normalization formulas in `symplectic norm.md` are used as mode-normalization inputs; they should be rechecked separately before being used as final numerical normalization data.
