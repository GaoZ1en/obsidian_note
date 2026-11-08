# Independent stable-spectrum audit

Read STABLE_EFFECTIVE_ALGEBRA_AUDIT.md first.

Requirements: Python 3 and SymPy. No imports from the research packages.

- python independent_stable.py: six fresh exact rational-mass blocks, full low operator, reduced resolvent and energy-diagonal tests.
- python independent_jordan.py: complete symbolic mass (3,1) and (4,1) matrix identities, including actual Jordan resonance and invariant plane.
- python symbolic_jets_fast.py: symbolic-mass determining blocks P=6,8,9, proving all four C2 coefficient formulas by the finite-jet/order theorem.

Each runnable writes its result JSON only in this directory. The analytic derivation and actual physical scope are detailed in the report. The retained pair eigenvalues are inputs, not claimed to be a fresh all-mass radial-gravity computation.

check_symbolic_low.py is an earlier slower version; symbolic_jets_fast.py is the recommended all-mass test. repair_math.py is one-time editorial maintenance and should not be rerun on the already repaired report.
