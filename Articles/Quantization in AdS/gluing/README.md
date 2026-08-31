# Gluing

## Current Direction

The active formulation is `formalism.md`. It treats an artificial cut through prescribed regional boundary histories. The regional theories are first quantized with those histories held fixed; gluing then identifies the histories, varies their common value, and derives oriented flux matching from the summed action.

The quantum construction is canonical. At finite cutoff it uses one common conforming Galerkin regulator, retains every port and Ritz variable, reconstructs the glued field, and defines the glued canonical coordinates by projection onto its normalized modes. The finite port pair is part of this regulator, whereas in the continuum the boundary value is the trace of the connected field rather than an additional point oscillator.

The centered construction, its finite truncation, the feedback equation, and the canonical normal-mode map now belong to `formalism.md`; they are not split among separate active bridge or normal-form notes. The remaining active notes either prove a genuinely separate theorem or isolate a separate optional comparison.

The Rindler/null-characteristic branch is a different causal-type composition, not an extension of prescribed-history feedback. It uses characteristic profiles on intersecting null surfaces, corner compatibility at their shared cut, the direct null CPS flux, and Goursat evolution. The AdS$_2$ scalar benchmark and its B2 state-restriction layer are complete in the stated cyclic/fixed-label scopes; extracting the general null CPS is now the immediate active direction, followed by Maxwell characteristic composition with gauge reduction.

## Active Files

- `formalism.md`: authoritative scalar construction, from the regional actions and prescribed histories through gluing, spectrum recovery, finite port quantization, and continuum statement.
- `gluing formalism.md`: final general boundary-polarized manuscript, covering relation-level classical reconstruction, Proca/Dirac model validation, finite duplicate-port reduction, and its declared continuum free-scalar algebra, dynamics, and state limits. It complements rather than replaces the scalar-authoritative `formalism.md`.
- `lifting operator formalism.md`: companion rewriting of the nonhomogeneous-boundary construction using trace maps and lifting operators, including field-valued interface histories and its interval specialization.
- `DN boundary condition.md`: one-region Dirichlet-to-Neumann prototype illustrating the same prescribe-first, release-second logic.
- `functional analysis proof of well-definedness of finite truncation.md`: proof of form density, Mosco and resolvent convergence, energy-space wave and trace convergence, weak flux matching, and intrinsic spatially smeared Gaussian convergence.
- `reduced-state-open-system-scalar.md`: exact finite glued Gaussian state, distinct regional reductions, Williamson density matrices and entropy, region-2 memory/noise elimination, the precise KMS/FDR boundary, and the finite-partial-trace to continuum-state-restriction theorem.
- `rindler scalar.md`: flat $1+1$-dimensional causal-complement benchmark, with two-profile Goursat composition, null CPS, corner-completed matched-domain B1, and explicit separation of B1 from B2.
- `ads-rindler scalar.md`: $d\geq2$ AdS--Rindler characteristic composition on the canonical matched image; the stronger arbitrary-horizon onto theorem remains conditional and B2 remains extra state data.
- `ads2-rindler global reconstruction.md`: exact AdS$_2$ characteristic reconstruction from action/CPS through $\Omega_{\rm null}$, the null global-time Hamiltonian, $\mathfrak{sl}(2,\mathbb R)$ lowest-weight spectrum $\omega_n=\Delta+n$, Goursat modes, CCR/Pauli--Jordan, $RR/RL/RF$ correlators, and smeared right-wedge $\beta=2\pi$ KMS.
- `ads2-rindler regulated partial trace.md`: factorizing global-Cauchy regulator, exact finite wedge partial trace and modular data, and convergence on every fixed smooth/Weyl label family to the continuum algebraic right-wedge restriction. It is not a sharp continuum tensor factorization or a full modular-kernel convergence theorem.
- `non-central cut.md`: quantize-first construction for an arbitrary single cut, including the unequal-length finite port regulator and continuum cut-position independence.
- `associativity.md`: parenthesization independence for a fixed three-region partition, derived from independent endpoint histories and a common two-port regulator.
- `Fock failure.md`: optional comparison with a declared sharp tensor product of strict-Dirichlet regional Fock representations. It is not needed for intrinsic canonical gluing.
- `spatial gauge gluing audit.md`: repaired A--Q audit of the spatial-subregion gauge branch, including dual traces and passive versus active gauge roles, separating exact (1+1) reductions and higher-dimensional Maxwell mode checks from the missing gauge-slice, bulk-unfixing, extension-image, weak-patching, CPS, observable-algebra, and BRST/BV theorems.
- `spatial gauge gluing formalism.md`: first-draft gauge layer built on the full-trace/relation/reconstruction language of `gluing formalism.md`, with distinct original/enlarged traces, physical/optional-slice loci, passive/active transformations, matched-slice equivalence, and two-way restriction/assembly targets and model tables. Its general statements remain conditional.
- [[Articles/Quantization in AdS/gluing/gauge-covariant sewing and reduction|gauge-covariant sewing and reduction]]: conditional timelike sewing/reduction layer for compact internal connection theories, with separate fixed-\(h\) twisted-diagonal and variable-\(h\) product-frame presentations, full transmission versus Gauss moment map, and finite/continuum quantum claim tiers.
- `Maxwell 1+1.md`: exact compact-\(U(1)\) regional quantum mechanics, interface constraint, and connected integer spectrum on a cut interval.
- [[Articles/Quantization in AdS/gluing/Yang-Mills 1+1|Yang-Mills 1+1]]: exact compact-\(G\) non-Abelian benchmark, including regional \(T^*G\), prescribed boundary-history covariance, transition-function sewing, diagonal reduction, Peter--Weyl group averaging, the Casimir spectrum, and classical/quantum three-cell reduction by stages.
- `Maxwell 2+1 cylinder.md`: complete angular-momentum decomposition, prescribed-history regional oscillators, gluing equations, and connected vector modes on a flat cylinder.
- `Maxwell 3+1 slab.md`: complete transverse, longitudinal-normal, and zero-transverse-momentum modes on a flat slab times \(T^2\).
- `roadmap.md`: long-range scalar, algebraic, gauge-theory, and gravity programme, including the layered specification and kill criteria.
- `TODO.md`: ordered unfinished work following the roadmap phases.
- `numerics/README.md`: scope and status of the active regression scripts.

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

The separate Rindler/null-characteristic line is

$$\begin{align}
\text{action and allowed characteristic data}
&\longrightarrow \text{direct null symplectic flux and corner compatibility}\\
&\longrightarrow \text{Goursat composition across intersecting null surfaces}\\
&\longrightarrow \text{B1 dynamics/algebra reconstruction}\\
&\longrightarrow \text{separately supplied B2 state and cross covariance}.
\end{align}$$

Neither line is a coordinate rewriting of the other. Spacelike cuts instead use Cauchy-data compatibility and spatial reconstruction.

Three statements remain separate:

1. `non-central cut.md` proves independence of the position of one artificial cut.
2. `associativity.md` proves independence of the order of gluing a fixed finite partition.
3. `Fock failure.md` diagnoses a separately declared sharp product-Fock representation; it is not a condition for either of the first two statements.

The gauge branch uses the same action-first order but solves Gauss law and quotients only based regional proper gauge before quantization. The conditional gauge-covariant note keeps boundary-frame symmetry and glued proper gauge distinct and does not identify a variable transition function with a fixed-\(h\) diagonal quotient. Compact \(1+1\) Yang--Mills reduces each region to \(T^*G\), derives the prescribed-history Hamiltonian covariance, and proves exact classical/Haar quantum reduction in this model; \(U(1)\) is its Abelian zero-mode specialization. In \(2+1\) and \(3+1\), each Maxwell transverse Fourier momentum is decomposed into explicit divergence-free regional modes; gluing the prescribed tangential connection and varying its common value recovers the normalized connected modes. Their full timelike transmission relation is kept distinct from the Cauchy-cut Gauss moment map.

## Roadmap

The long-range plan is in roadmap.md. Its organizing decisions are: keep the scalar benchmark's physical outer Dirichlet condition fixed while parameterizing artificial-cut data only as needed; treat timelike, null, and spacelike composition by their own data and evolution problems; make general null-CPS extraction and Maxwell two-null-surface gauge composition the immediate branch; separate Euclidean elliptic gravity from Lorentzian hyperbolic timelike initial-boundary-value problems; distinguish algebra fusion from sector Connes fusion in a specified collar or defect model; and treat the identification of an operator-valued boundary history with a crossed product as a conditional theorem target.

The phases are a scalar and algebraic core, then gauge theory and corners, then gravity. TODO.md follows that phase structure and carries the immediate tasks and kill criteria.

## Archived Work

`archived/` contains calculations from the current boundary-history/canonical formalism whose conclusions have been absorbed elsewhere:

- `formalism_audit.md`: historical regulator audit;
- `feedback-port-canonical-bridge.md`: detailed feedback/port equivalence and finite CCR expansion now covered by `formalism.md`;
- `higher-dimensional-sharp-fock-comparison.md`: nonessential channelwise extension of the optional sharp-Fock diagnostic.

These files are supporting history rather than current claim authorities.

The top-level development snapshots are preserved outside the active subtree in `Attachments/gluing-formalism-mementos-20260823-232342/`. They are mementos, not current claim authorities.

## Deprecated Work

`deprecated/` preserves alternative formalisms, abandoned regulator or representation routes, and displaced standalone derivations. This includes the penalty, lattice, smearing, collar, smooth-interface, earlier Fock-diagnostic, gauge, earlier AdS--Rindler comparison, and stacky/CPS branches. The active Rindler/null-characteristic files listed above are not deprecated. The former standalone `port-canonical-normal-form.md` is also kept there; its active content has been absorbed into `formalism.md`.

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

Verified in the compact \(1+1\) Yang--Mills benchmark: regional reduction to \(T^*G\) from the action and symplectic potential; \(H_i[\alpha_i]=H_{i,0}+\langle\mu_i,\alpha_i\rangle\) and its quantum boundary-history covariance; the non-Abelian transition-function convention and interface moment map; the global symplectomorphism \((T^*G\times T^*G)//G_\Delta\simeq T^*G\) with fixed physical endpoint frames; normalized-Haar quantum reduction \((L^2(G)\otimes L^2(G))^{G_\Delta}\simeq L^2(G)\); the \(g_{\mathrm{YM}}^2L\,C_2(R)\) connected spectrum; and the full three-cell cotangent reduction-by-stages map \([(W_r,J_r)]\mapsto(W_3W_2W_1,J_1)\). Ordinary \(L^2(G)\) is the trivial character sector of the based gauge-group components. The accompanying general gauge-covariant note is a conditional relation-level architecture, not a universal gauge PDE, quantization-commutes-with-reduction, or continuum Hilbert-space theorem.

Verified in the Rindler/null-characteristic scalar line, within each note's declared domains:

- flat $1+1$ and $d\geq2$ AdS--Rindler matched-image characteristic composition, null symplectic reconstruction, smeared CCR, and abstract Weyl B1;
- AdS$_2$ direct action/CPS construction of $\Omega_{\rm null}$, the global-time Hamiltonian on null data, the $\mathfrak{sl}(2,\mathbb R)$ lowest-weight tower $\omega_n=\Delta+n$, Goursat-reconstructed modes, Pauli--Jordan/CCR, the global vacuum and $RR/RL/RF$ correlators, and the smeared right-wedge $\beta=2\pi$ KMS theorem;
- an exact finite Gaussian wedge partial trace and convergence, for every fixed finite family of smooth Cauchy/Weyl labels, to the global vacuum restricted to the right-wedge algebra. The $LR$ cross covariance is B2 data lost by the marginal.

Comparison only: the finite-$(Z,N)$ senior/collaborator construction is a `global-Noether-energy Galerkin approximation in a timelike-wall Rindler basis`. Here $Z$ is the near-horizon tortoise-wall position and $N$ is the retained wedge-mode count; the Neumann wall basis, projected known global-time Noether energy, and rank-one wall-value link reproduce a spectrally accurate fixed window. No exact-null canonical projection/intertwiner, state/correlator convergence, or Rindler-gluing theorem is proved.

Finite-dimensional canonical equivalence does not imply continuum product-Fock equivalence. Conversely, failure of the optional sharp product-Fock comparison does not obstruct the intrinsic connected quantization.

The continuum target is not a unitary limit of sharp regional product-Fock representations. It is the intrinsic connected physical operator and energy dynamics, the Weyl algebra, and the spatially smeared quasifree state; once the limiting positive-frequency structure is fixed, its GNS representation supplies the connected Fock construction. This is the target for the Maxwell regulators as well as the scalar regulator.

Not yet verified: a universal or cut-uniform scalar Galerkin convergence rate, lifting independence at finite cutoff, an unsmeared point-field covariance, an unrestricted horizon-completion onto theorem, common-domain exponentiation on an arbitrary completed horizon space, a sharp left/right Hilbert tensor factorization, Type III classification, full finite-modular-kernel or modular-group convergence, an entropy-coefficient theorem, Maxwell composition on two intersecting null surfaces after direct gauge reduction, cutoff-uniform closure of the separate timelike Maxwell regulators, a higher-dimensional non-Abelian Yang--Mills IBVP/reconstruction theorem, a smooth continuum \(\operatorname{Map}(S,G)\) quotient or normalized-Haar Hilbert reduction, gauge theory with charged matter or nontrivial bundles, the Chern--Simons/BF branch, the independent half-line continuous-spectrum exterior problem, or the proposed operator-algebraic/crossed-product interpretation.
