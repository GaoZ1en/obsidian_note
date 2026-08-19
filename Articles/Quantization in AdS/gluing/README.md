# Gluing

## Current Direction

The active programme treats an artificial cut through boundary data rather than through a large interface penalty. For the scalar prototype, the regional solutions form a family

$$
\pi_i:\mathcal S_i\longrightarrow\mathcal B_\Gamma,
\qquad
\mathcal B_\Gamma=\{q(t)\},
$$

whose fixed-source fiber $\mathcal S_i[q]$ carries the conserved regional covariant symplectic form. The interface data are organized formally as

$$
\mathcal P_\Gamma=T^*\mathcal B_\Gamma
=\{(q(t),p(t))\},
\qquad
\Omega_\Gamma=\int_\Gamma\mathrm dt\,\delta p\wedge\delta q,
$$

with $q=\phi|_\Gamma$ and $p$ the oriented normal response. Gluing identifies the two Dirichlet traces, while stationarity of the common trace gives the flux condition $p_1+p_2=0$. The intended classical formulation is therefore a fiber product or symplectic reduction over the interface data, not a penalty interpolation.

The quantum target is canonical rather than path-integral quantization. At finite cutoff, first construct the correctly reduced regional symplectic space without treating the interface port as an extra oscillator, then find its symplectic map to the corresponding global regulated phase space and quantize that map through the metaplectic/CCR construction. A continuum Fock-space statement requires a separate high-frequency or Shale--Stinespring analysis.

## Active Files

- `a natural method.md`: scalar boundary-driven prototype and recovery of the connected spectrum.
- `numerics/natural_method_feedback_spectrum.wl`: finite-cutoff Dirichlet-to-Neumann feedback and Galerkin checks.
- `numerics/README.md`: verification scope for the active numerical calculation.
- `TODO.md`: immediate classical and quantum tasks.

## Deprecated Work

The previous finite-coupling, penalty-interpolation, lattice, curved-space, Maxwell, Chern--Simons, AdS--Rindler, article, and associated numerical tracks are preserved under `deprecated/`. They remain historical calculations and comparison material, but they are no longer the active formulation of the gluing project.

## Claim Boundary

Verified so far: recovery of the connected scalar spectrum, exact finite-cutoff even tower in the feedback regulator, and fixed-window convergence of the affected tower.

Not yet verified: the full interface-data symplectic reduction, finite-cutoff metaplectic equivalence, the continuum Fock-space limit, or the stacky/gauge-theory extension.
