# Independent all-fixed-shell large-N contact spectrum

The [derivation and proof](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-fixed-shell/large-N-fixed-shell.md>) establishes the number-preserving phi^(2k) first-order limit for every fixed (P,Q), k>=2, Delta>1. It includes an exact finite-N excitation-space matrix, all-mode frequencies and multiplicities, primary/descendant organization, exact examples, and two sharp limitations:

- An irrational-Delta phi^4 primary collision has genuine N^(-1/2) spectral splitting.
- Operator-norm convergence is not uniform for growing shells P proportional to N^(1/3), even when the excited fraction tends to zero.

The collaborative §10 adds an all-grade contrast after the fixed-shell limits have been taken: k=2 has a uniform nonvacuum primary defect gap below zero; for every k>=3 and Delta>1 the primary defect eigenvalues are dense in the real line. This is dense point spectrum, not a continuous component of the physical AdS Hamiltonian. The formal total excitation operator still has compact resolvent at sufficiently small positive coupling.

## Reproduction

- [Sage implementation](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-fixed-shell/fixed_shell.py>): direct normalized condensate/spectator matrix, limiting matrix, half-order matrix, and exact checks against the allowed contact engine.
- [Recorded Sage results](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-fixed-shell/checks.json>): four exact full-matrix comparisons, 36 collaborative radial-family checks, twelve limiting spectral tables, convergence tests, and the algebraic-Delta doublet.
- [Wolfram symbolic checks](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-fixed-shell/symbolic_checks.wl>): symbolic frequencies, radial integration, collision polynomial, splitting coefficient, and growing-shell transition coefficient. All six Boolean checks, including the later irrational-zero example, returned True with no messages.

- [Gap/density checks](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-fixed-shell/gap_density_checks.py>) and [exact results](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-fixed-shell/gap-density-checks.json>): 120 independent projector-overlap checks, 390 finite-mode gap checks, and the rational small-positive/zero constructions.

From this directory:

```bash
/usr/local/bin/sage --nodotsage -python fixed_shell.py
/usr/local/bin/sage --nodotsage -python gap_density_checks.py
/opt/homebrew/bin/wolframscript -code 'Print[Get["symbolic_checks.wl"]]'
```

The Sage script uses exact rational/real-algebraic arithmetic for matrix identities, and double precision only for explicitly labeled convergence numbers. Its self-test imports the verified source engine for comparison; the main construction does not.

The initial derivation did not read the parent round-three candidate or other branches. The parent's subsequently communicated exact all-N (1,1) formula is labeled as a collaborative extension in the report and separately checked. No existing research source was edited.
