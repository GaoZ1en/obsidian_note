# Exact arbitrary-particle scalar spectra: independent engine and constructions

This directory contains new work for the complete scalar Fock-space problem.
Original research files have not been changed. The physical input is the
audited, renormalized Einstein two-body operator. The files here independently
construct and test its many-body realization; the separate physics audit
establishes that this operator is the correct scalar-branch Hamiltonian after
constraints and virtual boundary gravitons are included.

The energy convention throughout is

\[
E=N\Delta+P+Q+Gg+o(G).
\]

Here \(P,Q\) label a **global primary** unless an output explicitly says
full level. The same correction occurs on every global left/right descendant
of that primary. No assertion about the next nonzero perturbative order, or a
uniform large-\(N\) weak-coupling expansion, is included.

## Programs

Only Python 3 and SymPy are required. The main report's unified command is
the recommended entry point for the compressed all-Fock algorithm. These
independent programs are also directly executable.

### Fixed finite \(N,P,Q\): exact orbit calculator

```bash
python fock_exact.py --delta 2 --n 4 --p 4 --q 2 --states --output spectrum.json
python fock_exact.py --delta 3/2 --n 4 --p 3 --q 1
python fock_exact.py --delta symbolic --n 4 --p 2 --q 2 --states
```

`fock_exact.py` enumerates bosonic occupation multisets, not labelled tensor
products. Pair projectors are computed directly by raising the polynomial
primaries \((z_1-z_2)^k\), taking their exact Bargmann norms, and forming
outer products. There is no Racah-recursion input or Gram compression in this
engine, making it an independent audit of that method.

The basis is the sum of **distinct** label permutations of each occupation
monomial. The single-mode norm is
\(p!q!/[(\Delta)_p(\Delta)_q]\). Global primary states are the joint kernel
of the two exact lowering maps. Every returned matrix is checked against
the physical positive Gram matrix. Its characteristic polynomial, rational
factorization, real-root isolating intervals, and state-basis columns are
exact for rational \(\Delta>1\). The symbolic path returns rational
functions of \(\Delta\); specialize before isolating roots.

For an isolated algebraic root \(g\), compute the nullspace of
`primary_matrix - g*I` over its algebraic number field, then multiply by
`primary_basis_columns`. This gives every eigenvector, including its exact
multiplicity, in the stated bosonic basis. The Hamiltonian's self-adjointness
guarantees diagonalizability even when eigenvalues coincide. The polynomial
and matrix representation remain exact when radicals do not exist.

Vacuum and one-particle edge cases are included. Large ground occupation is
handled without recursive descent through all ground particles. For truly
large \(N\) at fixed excitation, use the stronger stable-range construction
below, which does not instantiate those ground particles at all.

### One symbolic matrix for every sufficiently large \(N\)

```bash
python stable_n.py --delta symbolic --p 2 --q 2 --output all_N_symbolic.json
python stable_n.py --delta 2 --p 4 --q 3 --output all_N_nonchiral.json
```

For every integer \(N\ge\max(1,P+Q)\), the exact primary matrix has the
form

\[
H_{N;P,Q}=\binom N2g_{00}I+N A_{P,Q}+B_{P,Q}.
\]

The orbit basis is averaged rather than summed, so the primary columns are
independent of \(N\). The engine derives entries from symbolic occupation
counts; it never fits a polynomial in \(N\). The returned characteristic
polynomial determines all levels for every \(N\) in this range.

Important public functions are:

```python
stable_primary_hamiltonian(delta, p, q, n=None)  # H, primary columns, full W
stable_spectrum(delta, p, q, include_full=True)  # JSON-ready exact data
excited_basis(p, q)                            # no ground modes stored
centered_primary_basis(p, q)                   # direct basis; no nullspace
primary_slopes(delta, p, q)                    # exact leading-N slopes
```

If `n` is omitted, it is `Symbol('N', integer=True, positive=True)`. The
formal creation-centered basis is provided independently of the default
nullspace basis. Its sparse polynomial construction can be used with
`restrict_operator(full_W, centered_primary_basis(p,q))`.

The explicit all-\(N\) generic-\(\Delta\) \((2,2)\) block is in
`stable_symbolic_P2_Q2.json`. The complete 13-dimensional nonchiral
\((4,3)\) block for every \(N\ge7\), at \(\Delta=2\), is in
`stable_delta2_P4_Q3.json`. The proofs, simple arbitrary-\(N\) exact levels,
and the readable all-\(N\) cubic are in `STABLE_N_THEOREM.md`.

### Generate the entire exact Casimir-bound eigenspace

```bash
python logarithmic_states.py --delta 2 --n 4 --p 27 --q 3 --verify --output states.json
```

This algorithm does not construct a Fock Hamiltonian. It generates every
state in the exactly characterized bound eigenspace using invariant
logarithmic symbols and the labelled primary reproducing kernel. The output
is the quotient \(F\) in the factorized physical state
\(\Psi=V_N(z)^4F\). Coordinates are \(x_i=z_i-z_N\),
\(y_i=w_i-w_N\). The fourth-power Vandermonde is retained in factored form.

`--verify` applies every right pair projector to the quotient and checks the
required left collision derivatives exactly; it also checks diagonal Bose
symmetry. Separate translations are built into the coordinates. The result
therefore checks the actual pair-channel conditions, independently of the
logarithmic-symbol coefficient formulas.

```python
kernel_labels(n, p, q)                         # complete invariant labels
kernel_count(n, p, q)                          # exact integer multiplicity
generate_quotient(delta, n, p, q, label)        # exact polynomial F
verify_pair_flags(delta, n, q, F)              # pair residuals and Bose tests
```

The full proof and the relation to established logarithmic differential
operator theory are in `LOGARITHMIC_KERNEL_THEOREM.md`.

## Exact dimensions, rank, and the two different complexity advantages

The full finite-\(N\) primary Hilbert series is

\[
M_N(x,y)=(1-x)(1-y)\sum_{\lambda\vdash N}\frac1{z_\lambda}
\prod_{a\in\lambda}\frac1{(1-x^a)(1-y^a)},
\qquad z_\lambda=\prod_jj^{m_j}m_j!.
\]

The theorem gives the **complete** multiplicity of the lower-bound
eigenvalue \(b_N(Q)\), choosing \(P\ge Q\), as the coefficient of

\[
\frac{x^{2N(N-1)}}
{\prod_{r=2}^N(1-x^r)\prod_{a=1}^{N-1}(1-yx^a)}.
\]

Thus the exact positive rank is the difference of two known generating
functions. For fixed \(N,Q\), it grows as \(P^{N-3}\), one polynomial
degree below the full primary space. For \(N=3\), it is eventually an
explicit constant for every \(Q\). The precise leading coefficient,
root-of-unity cancellations, and sharp eventual bound for three particles
are proved in `ASYMPTOTIC_RANK.md`.

This improves the high-chiral-degree problem at fixed \(N\). The stable
matrix pencil instead solves infinitely many particle numbers at fixed
\(P,Q\). Neither is merely a faster dense-matrix routine: one removes an
exactly known physical eigenspace, and the other removes particle number
from the size of the problem entirely.

## Reproducible independent verification

```bash
python verify_general.py
python verify_stable_n.py
```

`verify_general.py` covers ten exact orbit spectra, including vacuum,
one-particle, four-particle and larger nonchiral cases; explicit logarithmic
states at \(N=3,4,5,6\); exact Bose and pair-projector residuals; a full
descendant characteristic-polynomial identity; a commutant calculation;
and an independent modular Galois certificate. Its output is
`general_verification_results.json`.

`verify_stable_n.py` checks the direct centered primary basis, eleven
fixed-\(N\) specializations of the symbolic pencil against the independent
orbit engine, four exact slope characteristic identities, and four
generic-\(N,\Delta\) closed-level identities. Its output is
`stable_n_checks.json`.

`logarithmic_kernel_checks.json` contains additional completed high-degree
orbit-rank calculations. Only completed tests are listed. In particular the
long direct \(N=3,P=18,Q=6\) orbit calculation was not completed; its
kernel count is supplied by the proved theorem and the separate compressed
construction, not represented here as an independent completed orbit test.

These checks are independent constructions of the many-body operator and
its eigenstates. Agreement between two such constructions is not, by
itself, a fresh derivation from the raw gravitational Hamiltonian. The main
research package supplies that separate dynamical audit.

## Limits on simpler closed forms

Already the \(N=4,\Delta=2,(P,Q)=(10,0)\) primary block has an irreducible
quintic with Galois group \(S_5\); its levels cannot all be written in
radicals. The exact polynomial, modular certificates, and the independently
recomputed Hamiltonian are included. Natural candidate charges also fail
explicit commutator tests. The precise statements and their limitations
are explained in `SPECTRAL_OBSTRUCTIONS.md`. Neither fact is a general
nonintegrability theorem.
