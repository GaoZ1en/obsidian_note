# Literature provenance

Only the claims listed here are imported from the literature. Project derivations and regression checks are identified separately in each chapter.

## Core sources

### Marc Henneaux, hep-th/9902137

[Boundary terms in the AdS/CFT correspondence for spinor fields](https://arxiv.org/abs/hep-th/9902137)

Used for:

- the requirement that projected boundary data be independent off shell;
- the distinction between the off-shell variational problem and the on-shell regularity relation;
- the radial canonical-pair interpretation;
- the coefficient of the local derivative-free polarization term.

Not used as proof of:

- Lorentzian Cauchy CPS, CAR, global AdS4 modes, alternative quantization, or $SO(2,3)$ representation theory.

See [Henneaux-9902137-notes.md](Henneaux-9902137-notes.md).

### Aaron Amsel and Donald Marolf, arXiv:0808.2184

[Supersymmetric Multi-trace Boundary Conditions in AdS](https://arxiv.org/abs/0808.2184)

Used for:

- the $0\leq|m|<1/2$ standard-inner-product window;
- the asymptotic expansion and graded boundary flux;
- the global radial first-order system and its Pöschl--Teller reduction;
- literature support for positive self-adjoint extensions and pure boundary conditions.

Their defining-function normal is inward; projector labels are translated before use.

Not used as proof of:

- the boundary-complete Noether charge of this project or the full $D(\Delta,1/2)$ module identification.

See [Amsel-Marolf-0808.2184-notes.md](Amsel-Marolf-0808.2184-notes.md).

### Ion I. Cotăescu, gr-qc/0306127

[Discrete quantum modes of the Dirac field in AdS backgrounds](https://arxiv.org/abs/gr-qc/0306127)

Used for:

- regular Jacobi radial modes;
- standard frequency quantization and the principal level;
- the radial normalization constant;
- particle/antiparticle mode organization.

Cotăescu's $d$ counts spatial dimensions in $AdS_{d+1}$; here $d=3$. His paper writes the regular/standard modes explicitly. The alternative formulas in this project are re-derived using $m\mapsto-m$ and the four-dimensional $\gamma_5$ map.

See [Cotaescu-0306127-notes.md](Cotaescu-0306127-notes.md).

## Geometry and representation sources

- [Godina and Matteucci, The Lie derivative of spinor fields](https://arxiv.org/abs/math/0504366): geometric status of the Kosmann lift.
- [Buchbinder, Hutchings, Kuzenko, and Ponds, AdS superprojectors](https://arxiv.org/abs/2101.05524): modern summary of $SO(3,2)$ positive-energy labels, the spinor unitarity bound, and $D(1,\tfrac12)=\mathrm{Di}$.

See [Kosmann-and-representation-notes.md](Kosmann-and-representation-notes.md).

## Structural template

The user-supplied 34-page `AdSScalar4.pdf` was inspected both by text extraction and rendered pages. Its Section 4/5 order is used as the methodological template: define the configuration space and boundary completion before the variational principle; retain radial and corner terms; define the charge directly; then check conservation and the Hamiltonian equation independently. No scalar formula was treated as evidence for a spinor identity.
