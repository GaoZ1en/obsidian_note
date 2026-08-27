# Verification Scripts

`maxwell_double_null_checks.wl` is a self-contained exact Wolfram Language check of the flat product model. It verifies the inverse metric, determinant, Hodge star, Maxwell/Bianchi components, null pullbacks of the presymplectic potential, gauge exactness at the component level, generator-dressing identities, the corner moment map and the Abelian composition law. It also contains two regression checks: a nonzero constant Coulomb field and a nonzero constant transverse magnetic field both solve Maxwell--Bianchi and both restrict to $r=p=0$.

Input: no external files; all tensors, fields and polynomial solutions are declared in the script.

Output: one Boolean per identity and `ALL CHECKS PASSED` on success.

Claim scope: A1--A7, A5c--A5d, B3, C2--C4 and the original formal Abelian frame associativity entries in `verification/CLAIM_LEDGER.md`. It does not test analytic existence, boundary regularity, novelty or quantum claims.

`s2_master_quantization_checks.wl` is the exact benchmark regression for $M=\mathbb R^{1,1}\times S^2_R$. It verifies representative scalar/exact/coexact spherical-harmonic identities, electric parent-action elimination including the retained divergence, electric and magnetic master maps, the Bessel Riemann kernel, null dispersion and null-frequency Jacobians, the massive null-trace weights, both full-cross principal-value cancellations, Dirac-delta normalization, the corrected oscillator-projection signs, the explicit $J_X$ kernel coefficients, the closed finite-Goursat overlap kernel, Hamiltonian diagonalization, the interior causal Bessel equation and a full-rank matched-profile Galerkin symplectic matrix.

Input: no external files; symbolic parameters obey the assumptions printed in the script. The vector-harmonic component check samples $(\ell,m)=(1,0),(1,1),(2,0),(2,1),(3,2)$, while the general identities used in the notes follow analytically from Hodge theory and the scalar eigenvalue equation.

Output: one Boolean per identity and `ALL S2 MASTER/QUANTIZATION CHECKS PASSED` on success.

Claim scope: Q1--Q8 and Q12 in the claim ledger, plus the algebraic weights used in the half-cross/profile-space lemmas. The finite Galerkin rank check is a regression, not by itself a proof of continuum weak nondegeneracy or null-infinity decay.

`three_cell_symplectic_checks.wl` is the nontrivial composition regression. It uses three adjacent finite Goursat cells and six real stationary profile directions. It constructs $G_{(12)3}$, $G_{1(23)}$ and direct width-three Bessel reconstruction as distinct evaluation matrices; constructs every horizontal and vertical edge symplectic matrix; removes the duplicated interface copies in the reduced cell sum; verifies $S^T\Omega_{\rm outer}S=S^T\Omega_{\rm cells}^{\rm red}S$; and checks the two internal edge cancellations with opposite orientations.

Input: $a=1$, cells $[j-1,j]\times[0,1]$, and three on-shell frequency pairs $(\alpha,\beta)=(1/2,2),(1,1),(2,1/2)$ with their real sine/cosine quadratures.

Output: exact Boolean matrix identities, internal-edge ranks, parenthesization errors, and `ALL THREE-CELL SYMPLECTIC CHECKS PASSED`. In the current Wolfram 14.3 run the two internal matrices both have rank six and the reconstruction residuals vanish to approximately 29 decimal digits.

Claim scope: the finite regression evidence for Q10 and the B1 Weyl-composition corollary. The continuum proof remains Goursat uniqueness plus conservation/orientation of the symplectic current in calculations 11 and 14. This script does not prove full charged-frame Maxwell composition, Fock implementability or a tensor-product factorization.

`master_mode_numeric_checks.wl` independently tests the analytic kernels numerically. It reconstructs the exact mode $e^{-i(2u+v/2)}$ from the two Bessel Goursat integrals at three interior points and compares a symmetric $|k|\leq100$ commutator integral with the Pauli--Jordan Bessel kernel at one timelike and one spacelike separation.

Input: fixed regression parameters $\lambda=2$, $(\alpha,\beta)=(2,1/2)$, three displayed reconstruction points, and the displayed causal samples.

Output: numerical errors plus `ALL MASTER MODE NUMERICAL CHECKS PASSED` on success. The current reconstruction errors are of order $10^{-15}$; the two finite-cutoff commutator errors are below $6\times10^{-4}$.

Claim scope: Q3 and Q9. The finite-$k$ comparison is only a numerical regression; the proof is the analytic Riemann/Fourier--Bessel identity in calculations 07 and 10.

Run from the project root:

    wolframscript -file scripts/maxwell_double_null_checks.wl
    wolframscript -file scripts/s2_master_quantization_checks.wl
    wolframscript -file scripts/master_mode_numeric_checks.wl
    wolframscript -file scripts/three_cell_symplectic_checks.wl
