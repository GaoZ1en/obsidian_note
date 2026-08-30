# Complex Dirac field on global AdS4

## Scope

This project treats a free **complex** Dirac field on fixed global AdS4 with radius $L=1$, metric

$$
ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\Omega_2^2,
$$

and mostly-plus signature. The main proof interval is

$$
0<m<\frac12,
\qquad
\Delta_+=\frac32+m,
\qquad
\Delta_-=\frac32-m.
$$

The endpoints $m=0$ and $m=1/2$ are audited separately and are not silently included in the main statements.

The construction follows a boundary-complete order:

1. define the regulated time slab, off-shell configurations, sources, boundary conditions, and all boundary/corner terms;
2. vary the complete action and identify the pre-phase space;
3. derive the even graded symplectic structure and prove zero radial flux;
4. define spinorial isometries with the Kosmann derivative;
5. read the Noether charge directly from $Q_\xi=X_\xi\mathbin{\cdot}\theta-\alpha_\xi$, then check finiteness, conservation, and $\iota_{X_\xi}\Omega=-\delta Q_\xi$;
6. solve and normalize the global modes before passing to CAR and Fock space.

## Fixed terminology

The outward orthonormal radial gamma matrix is $\gamma^{\hat r}$, and

$$
P_\pm=\frac12(1\pm\gamma^{\hat r}).
$$

With this **outward-normal** convention, the slow and fast data are

$$
\psi=r^{-\Delta_-}\alpha+r^{-\Delta_+}\beta+\cdots,
\qquad P_+\alpha=\alpha,
\qquad P_-\beta=\beta.
$$

Thus:

| quantization | source fixed off shell | source-free boundary condition | one-particle module |
|---|---|---|---|
| standard | $\alpha,\bar\alpha$ | $\alpha=0$ | $D(\Delta_+,\tfrac12)$ |
| alternative | $\beta,\bar\beta$ | $\beta=0$ | $D(\Delta_-,\tfrac12)$ |

Amsel--Marolf use the inward normal associated with a defining function. Their labels on $P_\pm$ are therefore reversed relative to this table.

## File map

- [01-geometry-spinor-conventions.md](01-geometry-spinor-conventions.md): tetrad, gamma matrices, spin connection, Dirac operator, orientations.
- [02-asymptotic-dirac-data.md](02-asymptotic-dirac-data.md): direct Frobenius expansion, off-shell/on-shell distinction, normalizability window.
- [03-regulated-actions-and-polarizations.md](03-regulated-actions-and-polarizations.md): complete finite-cutoff variation and the two polarization actions.
- [04-graded-covariant-phase-space.md](04-graded-covariant-phase-space.md): even graded CPS, flux, and Cauchy-surface independence.
- [05-noether-and-so23-charges.md](05-noether-and-so23-charges.md): source-extended Kosmann symmetry and boundary-complete charges.
- [06-global-modes.md](06-global-modes.md): spinor harmonics, radial equations, regular solutions, and both spectra.
- [07-symplectic-normalization-and-CAR.md](07-symplectic-normalization-and-CAR.md): Jacobi normalization, graded brackets, CAR, particles and antiparticles.
- [08-so23-representation.md](08-so23-representation.md): lowest weights, level multiplicities, Casimir, level-one boost matrix element, and second quantization.
- [09-special-points.md](09-special-points.md): $m=0$ and the $m\to1/2$ Di endpoint.
- [10-comparison-with-scalar.md](10-comparison-with-scalar.md): precise comparison with the uploaded scalar manuscript.
- [verification/CLAIM_LEDGER.md](verification/CLAIM_LEDGER.md): claim-by-claim status and evidence.
- [verification/noether-time-translation.wl](verification/noether-time-translation.wl): time-Kosmann cancellation, one-mode Noether eigenvalues, particle/antiparticle ordering, and Hamiltonian/$U(1)$ generator signs.
- [literature/README.md](literature/README.md): provenance map and limits of each source.
- [TODO.md](TODO.md): remaining calculations, with explicit checks.

## Current verdict

The following main line is closed in the stated free, fixed-background, source-free, $0<m<1/2$ setting:

$$
S^{\rm std/alt}
\longrightarrow
\widetilde{\mathcal P}_{\rm std/alt}
\longrightarrow
\Omega_{\rm std/alt}
\longrightarrow
Q_\xi
\longrightarrow
\{U_I,V_I\}
\longrightarrow
{\rm CAR}
\longrightarrow
D(\Delta_\pm,\tfrac12).
$$

Here “closed” means that the action variation, explicit finite-cutoff Noether wall/corner identity, limiting Hamiltonian identity, direct first-order Dirac mode equations, spectra, analytic normalization formula, action-derived mode Hamiltonian, CAR inversion, lowest weight, $SO(3)$ content, level degeneracies, quadratic Casimir, and one level-one boost matrix element agree within one convention set. It does **not** mean that every functional-analytic domain theorem has been re-proved from first principles.

There is no remaining non-endpoint, non-functional-analysis blocker in this main line. The module names $D(\Delta_\pm,\tfrac12)$ use the standard unitary positive-energy classification theorem; the project directly supplies its lowest-weight, $K$-type, Casimir, and level-one boost inputs.

The principal limitations are:

- positivity and self-adjointness of the two pure extensions are literature-supported by the standard Dirac inner product and extension analysis, not independently reconstructed as a full operator-domain theorem here;
- the finite-cutoff Noether identity is derived for the fixed AdS vielbein and regulator embedding treated as sources and for exact Killing fields; fluctuating gravity and asymptotic, non-Killing transformations are outside scope;
- the $m=0$ mixed-polarization classification and the renormalized $m=1/2$ singleton limit remain open;
- no interacting CAR representation, backreaction, supersymmetry, or holographic correlator is claimed.

## Most valuable next step

The best next calculation is the $m\uparrow1/2$ endpoint audit: compute the logarithmic divergence of the alternative symplectic form mode by mode, search for a local boundary symplectic counterterm compatible with the source-extended Kosmann action, and test whether the resulting quotient has exactly the $D(1,\tfrac12)$ Di $K$-types. That calculation decides whether the alternative bulk family has a controlled singleton limit or merely approaches it at the level of formal representation labels.

## Verification summary

- **Verified:** explicit Clifford representation, spin connection contraction, Dirac operator, indicial roots, subleading denominators, finite-wall Noether and corner formulas, $\partial_t$ Kosmann cancellation, first-order Jacobi residuals for $n=0,1,2$ and both signs of $\kappa$ in the standard and $m\mapsto-m$ branches, squared-ODE regressions, analytic Jacobi normalization with independent exact sample integrals, action-derived Hamiltonian/$U(1)$ signs, level degeneracies, Casimir, level-one boost Gram matrix and matrix element, polarization signs, graded inverse, and particle/antiparticle CAR generators.
- **Assumptions:** smooth derivative-controlled power-law expansions; fixed spin structure and global AdS background; source-free pure standard or alternative boundary conditions; exact AdS Killing vectors; $0<m<1/2$.
- **Not verified:** an independent deficiency-index classification of all self-adjoint extensions; a renormalized endpoint symplectic form; mixed $m=0$ representation theory; interacting or gravitational completion.
