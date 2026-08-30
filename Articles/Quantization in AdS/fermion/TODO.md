# TODO

## Immediate open calculations

- [ ] **Action:** derive the $m\uparrow1/2$ logarithmic coefficient of the alternative Hermitian norm and even symplectic form for every $\kappa$ sector.
  **Context:** the slow radial density becomes $r^{-1}$; the unrenormalized alternative phase space fails at the endpoint.
  **Check:** isolate the coefficient analytically from the Jacobi modes and reproduce it by a finite-cutoff numerical fit.

- [ ] **Action:** classify $m=0$ local linear Lagrangian subspaces compatible with $SO(2,3)$, charge conjugation, parity, and optional chirality.
  **Context:** both powers are $r^{-3/2}$, but the outward radial projectors still distinguish the two data sets.
  **Check:** insert each candidate relation into the boundary flux and the source-extended Kosmann transformation.

- [ ] **Action:** reconstruct the domains of the pure standard and alternative radial Hamiltonians directly from the first-order operator.
  **Context:** this project uses the Amsel--Marolf/Ishibashi--Wald extension result as literature support.
  **Check:** compute the boundary form, deficiency spaces, and positivity for each $\kappa$, then prove completeness of the Jacobi basis.

## Completed closure audit

- [x] **Action:** make the finite-cutoff Noether wall term and Hamiltonian remainder explicit.
  **Check:** Section 05 now displays $\beta_{\xi,R}^s$, $\mathcal R_{\xi,R}^{\rm emb}$, the full radial form $\mathfrak b_R^s$, and their pure-BC limits.

- [x] **Action:** substitute the Jacobi modes into the first-order Dirac system.
  **Check:** exact residuals vanish for $n=0,1,2$, $\kappa>0$, $\kappa<0$, and both $m$ and $-m$ samples; the $n=0$ missing component is checked separately.

- [x] **Action:** connect the action-derived time charge to the classical and quantum mode Hamiltonians.
  **Check:** the Kosmann cancellation, $\pm E$ one-mode action, Grassmann ordering, CAR commutators, normal-ordering constant, and $U(1)$ charge signs pass in the Noether time-translation verification script.

- [x] **Action:** evaluate a nontrivial lowest-level boost matrix element.
  **Check:** the level-one Gram matrix gives $g_{3/2}=2\Delta+1$, $g_{1/2}=2(\Delta-1)$ and $\langle1;\frac12,\frac12|M_0^+|0;\frac12,\frac12\rangle=\sqrt{2(\Delta-1)/3}$ with the matching adjoint.
