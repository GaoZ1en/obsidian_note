# Gluing

## Current Direction

The active programme treats an artificial cut through boundary values rather than through a large interface penalty. For each prescribed regional boundary history $q_i(t)$, the allowed variations obey $\delta\phi_i|_\Gamma=0$, and the regional symplectic form is conserved. Gluing first identifies $q_1=q_2=q$ and then allows the common $q(t)$ to vary. Stationarity of the summed action gives the oriented flux condition $\phi_1'+\phi_2'=0$.

The quantum target is canonical rather than path-integral quantization. The interface equation determines the common boundary history from the regional operator data, while the $q=0$ relative modes must be retained separately. At finite cutoff, reconstruct the glued field, extract reduced canonical coordinates, and verify their symplectic map to the same global regulator before applying the metaplectic/CCR construction. The boundary value $q$ is not to be quantized as an additional independent oscillator. A continuum Fock-space statement requires a separate high-frequency or Shale--Stinespring analysis.

## Active Files

- `formalism.md`: scalar boundary-driven prototype, connected spectrum, and canonical quantum-gluing ansatz.
- `numerics/natural_method_feedback_spectrum.wl`: finite-cutoff Dirichlet-to-Neumann feedback and Galerkin checks.
- `numerics/README.md`: verification scope for the active numerical calculation.
- `TODO.md`: immediate classical and quantum tasks.

## Roadmap

- Near term: close the interval-scalar construction by deriving the reduced canonical variables at finite cutoff, quantizing the resulting symplectic map, and testing its continuum limit.
- Next solvable scalar model: place the scalar on $[-L,L]\times S^1_R$ and cut at $x=0$. The interface value becomes $q(t,\theta)$, while Fourier decomposition along $S^1_R$ keeps each channel analytically controllable.
- Medium term: study Maxwell theory first in $1+1$ dimensions as a pure Gauss-law and electric-flux test, and then on the cut cylinder where local photon modes and interface gauge data coexist.
- Long term: revisit AdS--Rindler wedge quantization and global reconstruction. The left and right Lorentzian exteriors do not by themselves cover the future and past regions, so the construction must use matched global Cauchy data, a suitable timelike cut, or a regulated horizon prescription rather than assuming direct pointwise horizon gluing.

## Deprecated Work

The previous finite-coupling, penalty-interpolation, lattice, curved-space, Maxwell, Chern--Simons, AdS--Rindler, article, and associated numerical tracks are preserved under `deprecated/`. They remain historical calculations and comparison material, but they are no longer the active formulation of the gluing project. The future Maxwell and AdS--Rindler tasks may reuse verified calculations from this directory without reinstating the deprecated conceptual framework.

## Claim Boundary

Verified so far: recovery of the connected scalar spectrum, exact finite-cutoff even tower in the feedback regulator, and fixed-window convergence of the affected tower.

Not yet verified: the reduced canonical commutators after solving for the common boundary history, finite-cutoff metaplectic equivalence, the continuum Fock-space limit, the higher-dimensional scalar extension, Maxwell gluing, or AdS--Rindler global reconstruction.
