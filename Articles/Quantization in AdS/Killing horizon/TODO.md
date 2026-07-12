# Killing-horizon benchmark TODO

Date: 2026-07-12

## Completed in the first implementation

- [x] Fix the non-rotating BTZ geometry, Killing field, Kruskal extension, and Hawking period.
- [x] Fix the minimally coupled $\Delta=2$ scalar and standard AdS boundary condition.
- [x] Derive the scalar variational problem and conserved CPS current.
- [x] Derive and machine-check the exact standard-boundary real-frequency modes.
- [x] Fix their generalized KG normalization and continuous spectral measure.
- [x] Separate the canonical real-frequency basis from quasinormal response poles.
- [x] Construct the matter Killing Hamiltonian and horizon flux balance.
- [x] Construct the HHI exterior two-point function and check its CCR and KMS identities.
- [x] Write the Euclidean quotient Green function and its local Hadamard decomposition.
- [x] Compute $\langle\phi^2(r)\rangle_{\rm ren}$, its horizon value, and its boundary limit.
- [x] Derive the first $\lambda\phi^4$ tadpole insertion and show why it is radial rather than constant.
- [x] Extract a corrected Killing-horizon quantization protocol.

## Completed in the second validation pass

- [x] Numerically truncate

$$\begin{align}
\sum_m\int_0^\infty d\omega\, (u_{\omega m}\bar u_{\omega m}-{\rm c.c.})
\end{align}$$

  and test the equal-time radial delta distribution against smooth compact test functions.

- [x] Evaluate the $\Delta=2$ Euclidean and regulated Lorentzian mode integrals and compare them directly with the quotient image sum.
- [x] Compute the radial Born correction

$$\begin{align}
G^{(1)}=-G_0\left(\frac{\lambda}{2}\mathcal I_\Delta\right)G_0
\end{align}$$

  in fixed Euclidean $(k,m)$ sectors and record its Lorentzian continuation.

- [x] Point-split the primary $\Delta=2$ HHI stress tensor and verify conservation and regularity in Kruskal components.

## Next decisive check

- [ ] Compare the scalar one-loop determinant computed from the Euclidean quotient heat kernel with the thermal real-frequency spectral density.

## Deferred extensions

- [ ] Add a nonminimal coupling $\xi R\phi^2$ and track its direct Wald-functional contribution.
- [ ] Repeat the benchmark for rotating BTZ and diagnose superradiance and the existence of a regular HHI state.
- [ ] Study an Unruh-state problem in a collapse geometry rather than imposing an ad hoc horizon condition on eternal BTZ.
- [ ] Extend the CPS analysis to gauge fields and decide when horizon edge modes are required.
- [ ] Couple the matter effective action to dynamical gravity and distinguish $H_\chi$, matter entanglement entropy, and generalized entropy.
