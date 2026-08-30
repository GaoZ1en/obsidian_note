# 10. Comparison with the scalar construction

The uploaded scalar manuscript is used as a structural template, not as a source of spinor formulae.

| Step | Scalar | Complex Dirac fermion | Verdict |
|---|---|---|---|
| Bulk equation | second order | first order | genuinely different canonical data |
| Asymptotic roots | slow/fast coefficients of one scalar | opposite radial-projector spinors $\alpha,\beta$ | fermion-specific |
| Independent off-shell data | field and radial response must be separated | $\alpha,\beta,\bar\alpha,\bar\beta$ independent before EOM | same methodological lesson |
| Boundary completion | counterterm cancels slow-falloff divergence and changes charge | $\pm\frac{i}{2}\int\bar\psi\psi$ chooses polarization; no extra counterterm for $0<m<1/2$ | not a mechanical replacement |
| Regulated variation | radial, initial/final, and corner terms | same bookkeeping, but first-order radial cross-pairing | true formalism generalization |
| CPS parity | ordinary even symplectic form on bosonic fields | even **graded** symplectic form, symmetric on odd directions | fermion-specific |
| Flux | scalar slow/fast Wronskian | graded $\alpha$--$\beta$ cross-pairing | analogous role, different signs |
| Quantization | inverse $\Omega$ gives CCR | inverse graded $\Omega$ gives CAR | fermion-specific |
| Symmetry action | ordinary Lie derivative of a scalar | Kosmann derivative plus compensating local Lorentz rotation | fermion-specific and essential |
| Noether charge | $Q_\xi=X_\xi\cdot\theta-\alpha_\xi$, often with a slow-falloff boundary subtraction | same definition, with the polarization action contributing a time-slice corner | genuine boundary-complete extension |
| Stress tensor | useful on-shell rewriting | Belinfante/Hilbert rewriting follows source variation; it is not the definition | same claim discipline |
| Global modes | scalar spherical harmonics and second-order radial equation | spinor harmonics, coupled first-order pair, then partner Pöschl--Teller equations | fermion-specific |
| One-particle module | $D(\Delta,0)$ | $D(\Delta,\tfrac12)$ | spin changes $K$-types and Casimir |
| Endpoint | scalar BF/upper-window endpoints | $m=0$ polarization degeneracy and $m=1/2$ Di endpoint | different exceptional structure |

## What truly generalizes

The transferable part of the scalar method is the logical order:

$$
\text{regulated action and field space}
\to
\text{complete variation}
\to
\text{pre-phase space}
\to
\Omega
\to
\text{zero flux}
\to
Q_\xi
\to
\iota_X\Omega=-\delta Q.
$$

In both theories, finiteness is an output of a specified off-shell field space and boundary completion, and conservation is a separate radial-flux statement.

## What must not be copied

The following scalar substitutions are invalid:

- replacing $\mathcal L_\xi\phi$ by a componentwise $\mathcal L_\xi\psi$ without the Kosmann spin term;
- treating the two spinor falloffs as two unconstrained copies of a scalar coefficient;
- using an ordinary antisymmetric wedge rule on two odd mode directions;
- deriving CCR and then changing brackets to braces by notation;
- guessing the fermionic charge from a scalar improved stress tensor;
- calling $m\to1/2$ a completed alternative quantization because $\Delta_-\to1$.

## Boundary-complete Noether comparison

The scalar manuscript makes the regulator and radial/corner cancellation visible. The fermion implementation preserves that feature in the formula

$$
\alpha_{\xi,R}^s
=\int_{\Sigma_R}\iota_\xi L_D
+\int_{S_R^2}\iota_\xi\ell_s,
$$

where the second term is the endpoint of the timelike polarization action. It vanishes for source-free pure data only after its role in the finite-cutoff Hamiltonian identity has been retained. This is the closest fermionic analogue of the scalar boundary subtraction, but its origin is polarization rather than a scalar improvement counterterm.
