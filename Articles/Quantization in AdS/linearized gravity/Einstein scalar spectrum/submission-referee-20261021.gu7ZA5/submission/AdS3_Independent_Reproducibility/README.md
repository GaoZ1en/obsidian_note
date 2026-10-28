# AdS₃ independent investigation — reproducibility package

This package accompanies **AdS3_Independent_Investigation.md**, dated 21 October 2026.

Repository assessed: https://github.com/GaoZ1en/obsidian_note  
Fixed commit: **670abb1bb4b644a162278415ef94dde09cdeb016**

The scripts were written in this investigation. They do not import the repository's implementations, caches, matrices, or reported verification results. They construct the relevant operators from differential representations, finite radial Jacobi/Beta integrals, or explicitly stated constraint sources. The report distinguishes proofs, conditional gravity results, finite exact evidence, and floating-point conjectural evidence.

## Contents

- The complete report, with source register and proof appendices.
- **root_work/**: normalized Rankin–Cohen collision maps, all-\(N\) first-strip ranks and counting.
- **contact3_work/**: exact three-body rank calculations; finite and continuum small-eigenvalue evidence.
- **stable_work/**: independent radial/Fock/primary reconstruction, Galois certificate, resonance identities, and exact resonance-cluster enumeration.
- **gravity_work/**: independent ground constraint response, all-index cubic moments, exact infinite sum, and sharp contact comparison.
- **SOURCE_MANIFEST.json**: fixed source paths and SHA-256 hashes, including original manuscript provenance.
- **EVIDENCE_INDEX.json**: machine-readable counts and classifications of the supplied records.
- **requirements.txt**: dependencies.
- **SHA256SUMS.txt**: hashes of package files.

Original source documents and dependency installations are not bundled. The report's source register links to the exact repository commit. No repository files were modified.

## Environment

Exact calculations were run with Python 3.12.14, SymPy 1.14.0, and mpmath 1.3.0. The floating-point contact-gap record was generated with NumPy 2.3.5 and SciPy 1.17.0; those versions are recorded in its JSON. A second available runtime had NumPy 2.5.4 and SciPy 1.18.1. Exact proofs do not depend on those floating-point packages.

Use a normal Python environment with the dependencies in requirements.txt:

    python -m pip install -r requirements.txt

## Reproduction

**Run the following from this extracted package's root directory.** Several stable scripts intentionally use paths relative to the package root. Running a script replaces its corresponding JSON with the newly generated record. The supplied JSON files preserve the original executed evidence.

### Exact contact collision and three-body calculations

    python root_work/contact_jets.py
    python contact3_work/verify_rectangular_rank.py

The first verifies 133 symbolic descendant identities and 33 exact first-strip ranks. The second checks 273 rational three-body blocks, selected symbolic-mass determinants, and the Jacobi-matrix formulas. These calculations check the analytic proofs; finite scans do not prove all labels.

### Independent stable blocks and arithmetic certificate

Run these in order because the modular certificate reads the freshly reconstructed physical polynomial:

    python stable_work/independent_contact.py
    python stable_work/galois_certificate.py
    python stable_work/verify_new_theorems.py

The first builds the full symbolic \((2,2)\) shell and the \(N=8,\Delta=2,(P,Q)=(3,3)\) shell. It verifies primary intertwining before forming the physical parity block. The second proves the required finite-field statements. The third checks all-index rational identities and low-degree symbolic integrals used in the new resonance proofs.

Optional exact finite exploration:

    python stable_work/resonance_explore.py
    python stable_work/resonant_cluster_counts.py

The cluster enumeration covers every centered monomial through \((8,8)\). It proves a two-dimensional resonance cluster only in those seven blocks, not at all degrees.

### Gravity checks

    python gravity_work/verify_gravity_and_contact.py

This checks 42 exact identities. The theorem comparing contact to gravity explicitly assumes the stated Einstein pair multiplier; the independent ground and cubic source calculations have narrower dynamical inputs identified in the report.

### Numerical evidence for the bottom positive scale

    python contact3_work/contact_gap_evidence.py

This uses floating-point Jacobi diagonalization and Legendre Galerkin matrices. It is not a certificate of a lower bound, absence of spectral pollution, or convergence to the proposed continuum form. Small residual roundoff may move the exact null eigenvalue slightly above or below zero; the record reports it explicitly.

## Main new statements

- Complete \(N=3\) contact rank for all bidegrees and all \(\Delta>1\).
- Exact \(\ker W_{N;P,1}=\mathcal V_N^2\mathcal H_{N;P-N(N-1),1}\), with explicit basis and Hilbert series.
- Exact beta-binomial leading slopes and infinitely many genuine \(\sqrt N\) resonances.
- Strong continuum Racah-square limit with the complete even-Legendre spectrum.
- Conditional sharp form comparison \(0\le8\pi W_{\phi^4}\le A_E/r_*\), with exact contact-deformation interval.

Read the report for assumptions and proofs. “New” is relative to the inspected project materials; no exhaustive literature-priority search is claimed.

