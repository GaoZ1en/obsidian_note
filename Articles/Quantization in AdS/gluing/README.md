# Gluing

## Current Direction

The active formulation is `formalism.md`. It treats an artificial cut through prescribed regional boundary histories. The regional theories are first quantized with those histories held fixed; gluing then identifies the histories, varies their common value, and derives oriented flux matching from the summed action.

The quantum construction is canonical. At finite cutoff it uses one common conforming Galerkin regulator, retains every port and Ritz variable, reconstructs the glued field, and defines the glued canonical coordinates by projection onto its normalized modes. The finite port pair is part of this regulator, whereas in the continuum the boundary value is the trace of the connected field rather than an additional point oscillator.

The centered construction, its finite truncation, the feedback equation, and the canonical normal-mode map now belong to `formalism.md`; they are not split among separate active bridge or normal-form notes. The remaining active notes either prove a genuinely separate theorem or isolate a separate optional comparison.

## Active Files

- `formalism.md`: authoritative scalar construction, from the regional actions and prescribed histories through gluing, spectrum recovery, finite port quantization, and continuum statement.
- `gluing formalism.md`: final general boundary-polarized manuscript, covering relation-level classical reconstruction, Proca/Dirac model validation, finite duplicate-port reduction, and its declared continuum free-scalar algebra, dynamics, and state limits. It complements rather than replaces the scalar-authoritative `formalism.md`.
- `lifting operator formalism.md`: companion rewriting of the nonhomogeneous-boundary construction using trace maps and lifting operators, including field-valued interface histories and its interval specialization.
- `DN boundary condition.md`: one-region Dirichlet-to-Neumann prototype illustrating the same prescribe-first, release-second logic.
- `functional analysis proof of well-definedness of finite truncation.md`: proof of form density, Mosco and resolvent convergence, energy-space wave and trace convergence, weak flux matching, and intrinsic spatially smeared Gaussian convergence.
- `reduced-state-open-system-scalar.md`: exact finite glued Gaussian state, distinct regional reductions, Williamson density matrices and entropy, region-2 memory/noise elimination, the precise KMS/FDR boundary, and the finite-partial-trace to continuum-state-restriction theorem.
- `non-central cut.md`: quantize-first construction for an arbitrary single cut, including the unequal-length finite port regulator and continuum cut-position independence.
- `associativity.md`: parenthesization independence for a fixed three-region partition, derived from independent endpoint histories and a common two-port regulator.
- `Fock failure.md`: optional comparison with a declared sharp tensor product of strict-Dirichlet regional Fock representations. It is not needed for intrinsic canonical gluing.
- `Maxwell 1+1.md`: exact compact-\(U(1)\) regional quantum mechanics, interface constraint, and connected integer spectrum on a cut interval.
- `Maxwell 2+1 cylinder.md`: complete angular-momentum decomposition, prescribed-history regional oscillators, gluing equations, and connected vector modes on a flat cylinder.
- `Maxwell 3+1 slab.md`: complete transverse, longitudinal-normal, and zero-transverse-momentum modes on a flat slab times \(T^2\).
- `roadmap.md`: long-range scalar, algebraic, gauge-theory, and gravity programme, including the layered specification and kill criteria.
- `TODO.md`: ordered unfinished work following the roadmap phases.
- `numerics/README.md`: scope and status of the active regression scripts.

- ads2-rindler regulated partial trace.md: factorizing global-Cauchy regulator for the null-derived AdS$_2$ vacuum, exact finite left-wedge partial trace and modular data, fixed-smeared/Weyl convergence to the right-wedge restriction, boost-charge normalization, KMS connection, and explicit loss of the $LR$ B2 covariance.

## Logical Structure

The active scalar line is

$$\begin{align}
\text{regional actions with prescribed histories}
&\longrightarrow \text{regional quantization}\\
&\longrightarrow \text{identify histories and vary the common trace}\\
&\longrightarrow \text{finite conforming port system}\\
&\longrightarrow \text{reconstructed glued canonical variables}\\
&\longrightarrow \text{continuum energy-space limit}.
\end{align}$$

Three statements remain separate:

1. `non-central cut.md` proves independence of the position of one artificial cut.
2. `associativity.md` proves independence of the order of gluing a fixed finite partition.
3. `Fock failure.md` diagnoses a separately declared sharp product-Fock representation; it is not a condition for either of the first two statements.

The three Maxwell notes use the same order but solve Gauss law before quantization. The \(1+1\) model reduces to one periodic coordinate and integer momentum. In \(2+1\) and \(3+1\), each transverse Fourier momentum is decomposed into explicit divergence-free regional modes; gluing the prescribed tangential potentials and varying their common values recovers the normalized connected modes.

## Roadmap

The long-range plan is in roadmap.md. Its organizing decisions are: keep the scalar benchmark's physical outer Dirichlet condition fixed while parameterizing artificial-cut data only as needed; separate Euclidean elliptic gravity from Lorentzian hyperbolic timelike initial-boundary-value problems; distinguish algebra fusion from sector Connes fusion in a specified collar or defect model; and treat the identification of an operator-valued boundary history with a crossed product as a conditional theorem target.

The phases are a scalar and algebraic core, then gauge theory and corners, then gravity. TODO.md follows that phase structure and carries the immediate tasks and kill criteria.

## Archived Work

`archived/` contains calculations from the current boundary-history/canonical formalism whose conclusions have been absorbed elsewhere:

- `formalism_audit.md`: historical regulator audit;
- `feedback-port-canonical-bridge.md`: detailed feedback/port equivalence and finite CCR expansion now covered by `formalism.md`;
- `higher-dimensional-sharp-fock-comparison.md`: nonessential channelwise extension of the optional sharp-Fock diagnostic.

These files are supporting history rather than current claim authorities.

The top-level development snapshots are preserved outside the active subtree in `Attachments/gluing-formalism-mementos-20260823-232342/`. They are mementos, not current claim authorities.

## Deprecated Work

`deprecated/` preserves alternative formalisms, abandoned regulator or representation routes, and displaced standalone derivations. This includes the penalty, lattice, smearing, collar, smooth-interface, earlier Fock-diagnostic, gauge, AdS--Rindler, and stacky/CPS branches. The former standalone `port-canonical-normal-form.md` is also kept there; its active content has been absorbed into `formalism.md`.

Verified calculations in deprecated files may still be used as historical checks, but they do not define the present gluing construction.

## Claim Boundary

Verified in the active centered scalar line:

- recovery of the complete connected spectrum, including the exceptional zero-interface sector;
- the variational finite port equation and nondegenerate finite canonical system;
- the reconstructed finite-$N$ canonical normal-mode algebra;
- the finite glued Gaussian covariance, the interior and port-complete regional partial traces, their Williamson spectra, and the exact operator-level region-2 memory/noise equation;
- the isolated-region KMS fluctuation--dissipation relation together with the proof that the correlated glued vacuum does not by itself define a product-environment channel;
- form, resolvent, energy-space wave, interface-trace, symplectic, and spatially smeared Gaussian convergence;
- convergence of finite regional state restrictions on fixed bulk-smeared observables to the connected vacuum restricted to the region-1 algebra, without a trace-class continuum density-matrix claim;
- arbitrary-cut spectrum recovery and continuum cut-position independence;
- action-level, finite-regulator canonical, and continuum associativity for every fixed finite partition;
- for the optional declared sharp regional product reference, a fixed-row proof that the continuum creation block is not Hilbert--Schmidt.

Numerical regressions additionally reproduce the centered spectrum, Galerkin ordering and conditioning, residual port inertia, canonical identities, continuum mode restrictions, arbitrary-cut formulas, associativity identities, and the optional fixed-row ultraviolet diagnostic. Numerical rates and covariance asymptotics remain observations unless separately proved.

Verified in the flat free-Maxwell line: the full \(1+1\) constraint reduction and connected integer spectrum; the regional driven oscillators in \(2+1\) and \(3+1\); the transverse and longitudinal-normal interface determinants; and the complete normalized connected vector-mode bases under the stated physical-wall conditions.

Finite-dimensional canonical equivalence does not imply continuum product-Fock equivalence. Conversely, failure of the optional sharp product-Fock comparison does not obstruct the intrinsic connected quantization.

The continuum target is not a unitary limit of sharp regional product-Fock representations. It is the intrinsic connected physical operator and energy dynamics, the Weyl algebra, and the spatially smeared quasifree state; once the limiting positive-frequency structure is fixed, its GNS representation supplies the connected Fock construction. This is the target for the Maxwell regulators as well as the scalar regulator.

Not yet verified: a universal or cut-uniform scalar Galerkin convergence rate, lifting independence at finite cutoff, an unsmeared point-field covariance, cutoff-uniform form, energy-dynamics, and spatially smeared quasifree-state convergence of the Maxwell physical regulators after gauge reduction, Maxwell theory with charged matter or nontrivial bundles, the continuous-spectrum exterior problem, the proposed operator-algebraic or crossed-product interpretation, or AdS--Rindler global reconstruction.
