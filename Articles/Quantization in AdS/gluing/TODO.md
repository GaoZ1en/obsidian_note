# TODO

The active route is regional/global observable algebra and its composition. State and representation questions remain downstream.

## General Formalism

- [ ] Consolidate the root formalism notes into one compatible chain of definitions: regional action/CPS, admissible interface data, regional observable algebra, sewing relation, and global reconstruction.
- [ ] Define the regional and global observable algebras independently; remove any circular definition obtained by restricting or transporting the global algebra.
- [ ] State exactly which boundary response, history transport, Peierls, charge, or transition data must accompany a regional algebra for sewing.
- [ ] Construct the sewing map using regional data only and determine its domain, kernel, image, injectivity, and surjectivity.
- [ ] Prove Poisson or commutator closure on the declared domains, including the regularity needed for history release and boundary derivatives.
- [ ] Prove two- and three-region composition and associativity without defining the associator through the global algebra.
- [ ] Separate the timelike, null, and spacelike versions by their boundary-history, characteristic, and Cauchy-data problems.

## Scalar Benchmark

- [ ] Reconcile `classical regional observable algebra gluing.md`, `classical_gluing_formalism.md`, and `smooth regional observable algebras and symmetries.md` into a single explicit benchmark hierarchy.
- [ ] Record for each scalar observable class whether closure, regional construction, release, exact sewing, and completion are proved, conditional, or false.
- [ ] Use the interacting scalar notes in `models/` to test which parts of the free construction survive nonlinear history dependence.

## Gauge Benchmark

- [ ] Define the framed or cut-charged regional observable algebra after quotienting based proper gauge while retaining the active cut action and charge sectors.
- [ ] Specify electric, magnetic, or mixed center choices and their effect on regional observables and superselection sectors.
- [ ] Upgrade compact $1+1$ Yang--Mills to an operator-algebra sewing theorem on a declared algebraic core.
- [ ] Construct crossing Wilson-line sewing, including endpoint-index pairing, transition data, and holonomy--electric-flux commutators.
- [ ] Determine whether diagonal invariants suffice or whether an additional dynamical sewing ideal or response structure is required.
- [ ] Prove the global-algebra map and three-region reduction by stages in the compact benchmark before attempting higher-dimensional completion.

## Project Organization

- [ ] Add concise directory notes to `models/` and `state and representation/` if navigation becomes ambiguous.
- [ ] Update paths in active notes and `numerics/README.md` after the present file moves settle.
- [ ] Keep mode expansion, Fock comparison, partial trace, KMS, entropy, and other state questions in `state and representation/`; reopen them only when an observable-algebra result requires them.
- [ ] Keep completed or superseded approaches in `archived/` and abandoned alternatives in `deprecated/`; do not synchronize them with active terminology.
