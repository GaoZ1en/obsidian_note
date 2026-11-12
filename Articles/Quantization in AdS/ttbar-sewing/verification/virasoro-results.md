# Finite conformal-level checks

Executed NumPy 2.3.5. Double precision. L=v=hbar=1, c=1/2.
Code SHA256: `2de9efad3c275ac051f63cb29806e426011f9225b0c83508cce027867b5fc8a1`.

Chiral even modules only (vacuum block); not the complete bosonic Ising Hilbert space.
All assertions passed. No spatial entanglement claim is made.

| K | chiral dimension | vacuum Virasoro norm error | chi (matrix) | chi (formula) | E2 from V1 (matrix) | E2 (formula) | d<L2 barL2>/dlambda | centered ED derivative | vacuum ED slope | exact first-order slope |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 2 | 2 | 0 | 2.46740110027 | 2.46740110027 | -62.0125533606 | -62.0125533606 | 0.392699081699 | 0.392699081708 | -0.0685389195398 | -0.068538919452 |
| 3 | 3 | 0 | 20.01336448 | 20.01336448 | -723.479789207 | -723.479789207 | 0.392699081699 | 0.392699081779 | -0.0685389209276 | -0.068538919452 |
| 4 | 5 | 0 | 81.6983919868 | 81.6983919868 | -3824.10745724 | -3824.10745724 | 0.392699081699 | 0.392699082547 | -0.0685389317523 | -0.068538919452 |
| 5 | 7 | 0 | 239.612062404 | 239.612062404 | -13746.1159949 | -13746.1159949 | 0.392699081699 | 0.392699090947 | -0.068538986292 | -0.068538919452 |
| 6 | 10 | 0 | 575.452767719 | 575.452767719 | -39067.9086172 | -39067.9086172 | 0.392699081699 | 0.392699144491 | -0.068539186826 | -0.068538919452 |

The large negative E2 is the bare second-order OFPT term from V1 alone.
It is NOT the exact TTbar spectral coefficient; V2 and a renormalization prescription are missing.
The finite cutoff is removed neither in the ED nor in the finite-difference test.
