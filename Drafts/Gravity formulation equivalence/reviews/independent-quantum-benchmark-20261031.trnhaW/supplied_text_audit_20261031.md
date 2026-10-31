# Supplied-text audit after the independent derivation

## Verdict

**The audited oscillator formulas, nonlinear disk/Darboux claim, cutoff limitations, half-form qualification, and central-cocycle distinction are correct under the stated positive-$C$ convention. No substantive mathematical correction is needed in the requested range.** One terminology correction and two small wording/assumption clarifications would make the scope sharper.

This is a **supplied-text cross-check**, not a fresh independent derivation or a second independent verification. It was performed only after the independent report and its accepted outputs had been completed and delivered.

## Material inspected

The supplied text inspected was [benchmark §§1–3:17–198](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L17-L198>), including all of §2.2. A whole-file heading search was used only to locate the requested range; no text of §§4 onward was read. No classical suite or settled kernel check was rerun. No supplied source file was edited.

The comparison authority is the already completed [independent report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-quantum-benchmark-20261031.trnhaW/independent_quantum_benchmark.md>) and its previously accepted evidence, not a new kernel result.

## Findings

1. **Oscillator normalization and measure — correct.** Equations (2.1)–(2.3) have the correct factor of two and orientation. For $u=\sum u_ne^{inx}$, the positive-energy annihilator is $a_n=\sqrt{d_n}u_{-n}$. Consequently $\Omega_0=i\,d\bar a_n\wedge da_n$ and $H_1^{(2)}=\sum n\bar a_na_n$. The measure is a positive density, so conjugating $u_n$ does not introduce a negative measure. The stated $d_n/\pi$ in $d\Re u_n\,d\Im u_n$ is correct.

2. **Gaussian trace and ordering — correct.** For $|q|<1$, $\Re(1-q^n)>0$, so the complex Gaussian identity in (2.4) is convergent. Equation (2.5) correctly separates the normal and Weyl lifts, with $E_N=(N^2+N-2)/4$. The local finite half-form contribution and the missing global equivariant-lift information are explicitly distinguished.

3. **Regulated limit — correct.** The heat constant $-13/24$, sharp-cutoff constant $-1/2$, and extra finite subtraction $1/24$ needed for matching have the correct signs. The finite identity counterterm is not confused with the descendant product or with the cubic Virasoro anomaly.

4. **Nonlinear disk and global Darboux map — correct.** The pulled-back Hamiltonian and form in (2.10)–(2.11) have the correct sign. Positivity of $H_n'$ for $r>0$, its unbounded range, and the nonzero quadratic coefficient at the origin make the radial map smooth, bijective, and smoothly invertible on the open disk/plane. The quotient-injectivity argument is valid for every integer $n\ge2$: both representatives commute with the same nontrivial finite-order target rotation; any PSL postcomposition relating them must centralize that elliptic element. Its unique hyperbolic-disk fixed point forces the centralizer to be rigid rotations, and zero mean fixes that remaining freedom. The text correctly limits the quantization claim to the pulled-back oscillator polarization/ordering, not the original full-orbit polarization.

5. **Cutoff and half-form scope — correct.** The finite metaplectic rotation sign and the projected-Witt Jacobi defect $(N-1)(N+2)L_N$ are both correctly stated. They obstruct automatic full-symmetry claims; neither is presented as a failure of the finite rotation benchmark itself.

6. **Constant shift versus central charge — correct.** With only $L_0\mapsto L_0+aI$, the cocycle changes by $-2am$, leaving its cubic coefficient unchanged. The same projective vacuum normalization forces $a=0$ if the other generators are left unchanged. The cylinder change $\ell_m=L_m-(c/24)\delta_{m0}$ gives $cm^3/12$, with the sign used in §3.

## Minimal text recommendations

- At [line 84](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L84>), replace **“$C n(n^2-1)$ Hessian normalization”** by **“$C n(n^2-1)$ symplectic normalization.”** The Hamiltonian Hessian has one additional factor of $n$; the quantity being absorbed in $a_n$ is the symplectic normalization $d_n$. The displayed formulas themselves are already correct.
- At [line 135](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L135>), **“exact renormalized Gaussian answer in the stated subtraction scheme”** is more precise than “exact regulated Gaussian answer,” since (2.8) is after the regulator is removed. This is a scope clarification, not a mathematical correction.
- Near [line 26](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L26>), explicitly write **$C>0$**. It is already implicit in $d_n>0$ and the usual positive-$G$ convention, but the disk monotonicity and positive-energy polarization depend on it.

## Frozen evidence and replay

The parent correctly noted that the archived [benchmark source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-quantum-benchmark-20261031.trnhaW/benchmark_checks.wl>) and [symmetry/cutoff source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-quantum-benchmark-20261031.trnhaW/symmetry_and_cutoff_checks.wl>) contain fixed export destinations. They must **not** be replayed unchanged over the frozen outputs. Any future replay should use copies in a newly created private directory, redirect every output destination there before execution, and leave the archived inputs and results untouched. This audit performed no replay and made no change to those frozen files.
