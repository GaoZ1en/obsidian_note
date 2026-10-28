# Analytic stable-N pencils and exact low-channel states

All files in this directory are new. The previous Einstein–scalar reports and backends are read-only dependencies. The physical convention is

\[
E=N\Delta+P+Q+Gg+o(G),\qquad
W_N=\binom N2g_{00}+NA+B.
\]

The large-N statements concern the already determined coefficient \(g\), at fixed finite excitation degrees. They do not assert a uniform weak-coupling expansion in \(GN\) or \(GN^2\).

## Reports

* ANALYTIC_PENCIL_RESEARCH.md: the quadratic derivation, normal coordinates and genuine resonance obstructions; the analytic Hermitian realization at \(t=N^{-1/2}\); the exact complete \((3,1)\) and \((4,1)\) spectral curves; recursive Taylor/Feshbach construction.
* ALL_P_PROTECTED_DOUBLETS.md: the universal nonchiral eigenfamily at every mass, the precise low-channel condition for protected doublets, the direct primary projector, sharp state-existence ranges, complete lowest-eigenspace multiplicities, finite Ward proof, and a counterexample to generic low-channel invariance.

The programs use SymPy and mpmath; the supplied environment was tested with SymPy 1.14. Install the package requirements into a Python 3 environment, then run these commands from the complete package root.

## Main reproducible verification commands

    python3 analytic_research/pencil/verify_pencil.py
    python3 analytic_research/pencil/edge_functional.py
    python3 analytic_research/pencil/verify_protected_family.py
    python3 analytic_research/pencil/verify_primary_projector.py
    python3 analytic_research/pencil/general_low_channel_quotient.py
    python3 analytic_research/pencil/low_channel_noninvariance.py
    python3 analytic_research/pencil/verify_family_metadata.py

The first script checks 34 exact identities and numerical asymptotic comparisons. The Ward script proves a symbolic-P,N identity, with no interpolation in either parameter. The state scripts compare with the complete previous pair-action Hamiltonian, including nonstable physical boundary states, and compare the direct projector with an independent Gram-dual construction. The generic-channel script treats the four low pair energies as independent symbols and derives the exact quotient condition.

The final command is a small interface gate for the proved mass-dependent multiplicities and finite-N endpoints; it does not repeat a spectral scan.

The corresponding JSON files contain the actual matrices, residual certificates, source hashes where applicable, and physical conventions. Large characteristic polynomial caches are convenience data; they are not assumed by the finite Ward or primary-projection proofs.

The original-Hamiltonian radial/constraint audit of the nonzero Jordan vertex is separate: see analytic_research/audit/raw_jordan_vertex.py and its JSON. The independent differential-Casimir audit of the protected quotient is analytic_research/audit/protected_doublet_independent.py.

## Actual state and energy generation

Universal nonchiral family at a rational mass:

    python3 analytic_research/pencil/protected_family.py --delta 2 --p 100000 --n 100001
    python3 analytic_research/pencil/protected_family.py --delta 2 --p 5 --n 6 --states

Critical-mass doublets:

    python3 analytic_research/pencil/protected_family.py --p 100000 --n 100001
    python3 analytic_research/pencil/protected_family.py --p 6 --covectors
    python3 analytic_research/pencil/protected_family.py --p 4 --n 5 --projector

Direct second state at the physical boundary \(N=P-1\):

    python3 analytic_research/pencil/primary_projector.py --delta '(sqrt(33)-1)/4' --p 3 --n 2 --which 2

The energy-only commands perform a fixed number of exact arithmetic operations, independently of the numerical size of \(P,N\). Integer bit complexity still grows with their digit length. The direct state generator applies a finite raising/lowering projector to sparse occupation polynomials; it never constructs a Hamiltonian or inverts a primary Gram matrix. Its vector size grows with excitation degree.

The default protected_family.py command uses the critical mass. Providing --delta selects the universal single family at that mass. The --projector output for the universal family is a rank-one factored projector, specified by its state and norm; for the critical family it is the exact rank-two primary matrix projector.

## Python APIs

Add analytic_research/pencil to the Python import path. The modules locate the previous package files relative to the package root.

### Exact families

* universal_energy(delta,p,n=None,pair_values=None): full \(g\) for the \(Q=1\) universal family, with \(P\ge1,N\ge P+1,\Delta>1\). Optional pair_values contains \(g_{00},g_{20},g_{11}\) for an arbitrary globally invariant Bose two-body kernel.
* universal_state(delta,p,n): a nonzero exact sparse physical state from direct primary projection; returns full_state, primary_state, energy, and norm_squared.
* universal_chiral_energy(delta,p,n=None,pair_values=None) and universal_chiral_state(delta,p,n): the chiral family, \(N\ge P\ge2\).
* protected_energy(p,n=None): the critical-mass level in the stable range.
* critical_q1_multiplicity(p,n): its exact all-finite-N multiplicity, the coefficient of \((x+x^3)(1-x^{N-1})/(1-x)\).
* universal_multiplicity_metadata(delta,p): exact physical energy multiplicity when proved, separately from the always one-dimensional universal low-channel family. At larger masses it leaves unknown multiplicities unset.
* protected_covectors(p): returns (labels,L), where L has the two closed integer functional rows in the complete centered basis.
* protected_states(p,n,projector=False): the independent Gram-dual construction in the stable range \(N\ge P+1,P\ge3\).
* protected_projected_states(p,n): both critical states by finite primary projection in the stable range.
* protected_second_state(p,n): the direct second critical state, including \(N=P-1,P\), for \(P\ge3\).

The low-level primary_projector.project_primary(state,p,q,delta,n) accepts a sparse averaged-occupation polynomial and returns its physical primary projection. It uses at most \(p+q\) lowering and \(p+q\) raising applications. The related low_channel_state has a which argument: 1 requires \(N\ge P+1\), whereas 2 is nonzero for \(P\ge3,N\ge P-1\). Away from the exact four-channel condition, the second seed's projection is a primary vector but is not asserted to be an energy eigenstate.

### Analytic pencil tools

* centered_pencil(delta,p,q): returns (labels,A,B,embedding,full_W), using the complete old pair-action lift.
* generator_splittings(delta,p,q) and splitting_A(delta,p,q): build the leading quadratic derivation independently from its one-generator vertices.
* eigengenerator(delta,p,q): constructs a finite polynomial normal coordinate or reports a resonance obstruction. A later obstruction after fixing free resonant coefficients to zero is not automatically gauge independent.
* hermitian_primary_series(delta,p,q,order=4): exact coefficients of the analytic Hermitian \(t=N^{-1/2}\) realization.
* simple_branch(series,index,order=None): nondegenerate Taylor recursion.
* cluster_series(series,indices,order=None): the complete leading-eigenspace Feshbach/Bloch recursion, including its induced metric.
* physical_gram(delta,p,q,n=None): the exact physical metric in centered coordinates.

These finite-block tools allow symbolic mass and exact algebraic mass specializations. Generic symbolic formulas may contain removable special-mass divisors from normal-form or eigenvector choices; physical Gram and pair-Casimir denominators stay regular for \(\Delta>1\). Reconstruct the finite equations at a resonance instead of blindly substituting into a nonresonant normal coordinate.

The stable pencil domain is \(N\ge\max(1,P+Q)\); direct primary projection operates in the physical tensor space and also handles the proved boundary states outside that domain. The general matrix and series work is independent of the numerical size of N but still grows with the complete fixed-degree primary dimension. These APIs supply a general exact finite-order construction, not a uniform closed radical spectrum at all degrees.

## Optional complete characteristic checks

    python3 analytic_research/pencil/protected_q1.py --p 5
    python3 analytic_research/pencil/protected_q1.py --p 6

These use exact \(\mathbb Q(\sqrt{33})[N]\) characteristic arithmetic. The named level was first conjectured from the smaller blocks, then proved independently at every degree. The characteristic calculations provide separate complete-block multiplicity checks.

## Scope

The universal \(Q=1\) family selects one exact level in each stated block. At \(1<\Delta<\Delta_*\) it is the unique lowest state; at the critical mass the entire stable lowest eigenspace has exactly two states for \(P\ge3\), and one for \(P=1,2\). The finite-N critical multiplicities, including the endpoint states, are the coefficients of \((x+x^3)(1-x^{N-1})/(1-x)\). The chiral family is also the unique lowest state throughout its stated range. These completeness statements follow from positive pair residuals and the independently audited power-ideal classification. Above the critical mass, no full energy multiplicity is asserted for the universal family in higher-dimensional blocks. The complementary energies in general \(Q=1\) and \(Q\ge2\) sectors are still governed by the complete earlier finite-block algorithms. Neither these eigenfamilies nor the normal-form construction imply a commuting integrable many-body family.
