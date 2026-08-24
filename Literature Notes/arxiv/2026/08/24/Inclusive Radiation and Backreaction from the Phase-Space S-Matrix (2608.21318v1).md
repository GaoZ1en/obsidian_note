---
paper id: 2608.21318v1
title: Inclusive Radiation and Backreaction from the Phase-Space S-Matrix
authors:
  - Nathan Moynihan
publication date: 2026-08-22T01:27
abstract: |-
  The matter sector of the Dyson S-matrix is partially Weyl transformed while radiation remains operator-valued. Inclusive waveforms, phase-space displacement, and angular momentum become different projections of one symbol; connected radiation kernels yield nonlinear memory, and an inclusive coherent representative induces a Berry connection and a local hard-plus-radiative symplectic balance law.
comments: "104 pages"
url: https://arxiv.org/abs/2608.21318v1
summary: "A long phase-space scattering framework that cleanly separates exclusive radiation kernels from the inclusive classical field and exposes the precise regulator and endpoint boundaries of its symplectic claims."
tags: []
---

# Verdict and relevance

**Direct verdict.** Correct as a formal perturbative, projected on-shell phase-space construction under the stated sharp-packet, endpoint-reduction, classical-scaling, regulator, and phase-frame conditions. The exact symbol identities and finite algebraic checks pass. The paper does not prove that the hard scattering map alone is symplectic, nor that its local hard-plus-waveform area identity is a global CPS theorem for the exact noncoherent state.

Reason codes: `T1-symplectic`, `T1-charge`, `T1-symmetry`, `T1-boundary`, `T2-model`.

This is directly relevant to the vault's gluing program because it treats radiation reaction as phase-space reduction: the hard subsystem appears dissipative only after radiative variables are projected out. Its strongest transferable idea is the distinction between the connected full system and a reduced hard description, not the detailed amplitude technology.

# How to read this long paper

- **Essential:** Sections 2, 4, 6, 7, 8, 10, and the Discussion.
- **Technical reference:** Sections 3, 5, and 9; Appendices B, D, and E for time/star ordering and Bopp momentum routing.
- **Optional first pass:** the explicit scalar-QED and gravitational static-position-shift integrations in Section 9 and the longer diagrammatic derivations in Appendix F.
- **Do not skip:** the caveats at the end of Sections 2, 7, 8, and the Discussion concerning non-self-duality, soft regulators, BMS frame dependence, and the difference between an exact exclusive state and an inclusive coherent representative.

# Complete section tree

1. Introduction.
2. Phase-Space Symbols, Bopp Shifts and KMOC Observables.
   - Weyl symbols and projected on-shell pairing.
   - Relativistic on-shell phase space.
   - Operator-valued matter symbols.
   - Incoming sharp Wigner state.
   - Recovery of KMOC observables.
3. From the Dyson S-Matrix to the Phase-Space Eikonal.
   - Scalar current symbol.
   - Endpoint approximation.
   - Why straight lines do not radiate.
   - Zero-frequency dressings.
4. The Partial-Weyl Outgoing State.
   - Inclusive waveform.
   - Phase-space displacement: impulse and position shift.
5. Connected Radiation Kernels from On-Shell Amplitudes.
   - Fixed-multiplicity amplitudes.
   - Elastic and radiative iteration subtractions.
   - Eikonal--waveshape convolution.
6. Inclusive Waveforms and the Coherent Classical Representative.
   - Exact exclusive (N)-operator organization.
   - Inclusive coherent source.
   - Squeezed-exclusive versus coherent-inclusive example.
7. Gravity and Nonlinear Memory.
   - Connected five- and six-point kernels.
   - Inclusive soft cut and nonlinear memory.
8. Quantum Geometry and Radiation Reaction.
   - Coherent-state quantum geometric tensor.
   - Berry connection in phase-space displacement.
   - Hard/radiative symplectic-area balance.
   - Momentum balance.
9. Static Berry Connections and Position Shifts.
   - Scalar-QED static dressing and position shift.
   - Gravitational Berry connection and BMS-frame-dependent position shift.
10. Classical Angular Momentum.
    - Midpoint angular-momentum balance.
    - Static zero-frequency contribution.
11. Discussion.
12. Appendix A: off-shell extensions and projected pairing.
13. Appendix B: time ordering, partial Weyl transform, and Wick's theorem.
14. Appendix C: global endpoint approximation.
15. Appendix D: Bopp representation of the positive-energy matter product.
    - Momentum routing.
    - Time-ordered products.
16. Appendix E: resolved star ordering and nonlinear source insertions.
    - Nonlinear insertions beyond leading order.
    - Radiation from star ordering.

# Notation dictionary

- $z^A=(x_i^\mu,p_{i\mu})$: hard-particle phase-space coordinates.
- $\widetilde z$: midpoint/center phase-space data.
- $\Omega^{AB}$: canonical Poisson matrix; lowering gives $\Delta z_A=(-\Delta p_{i\mu},\Delta x_i^\mu)$.
- $\star_m$: matter-sector Moyal product after the partial Weyl transform.
- $S_W(\widetilde z)=\mathcal W_m[\mathbb S](\widetilde z)$: radiation-operator-valued matter symbol.
- $S_{n,W}$: fixed $n$-radiation coefficient of $S_W|0\rangle$.
- $E_W=S_{0,W}$: elastic coefficient.
- $C_r$: connected $r$-radiation kernel after elastic stripping and the radiation logarithm.
- $\alpha_{I,\lambda}(k)=\langle a_\lambda(k)\rangle$: inclusive waveshape, not the exclusive one-radiation coefficient.
- $\chi$: endpoint-reduced phase in midpoint variables; the discussion calls this the Marinovian and distinguishes it from Hamilton's principal function and the Magnusian.
- $\mathcal A_A$, $\mathcal F_{AB}$: Berry connection and curvature of the inclusive coherent representative.
- $\rho_{\rm conn}$: connected number-density part absent from the coherent representative but present in the exact noncoherent state.

# Partial Weyl transform and Bopp shifts

For canonical phase space,

$$
A\star B=A\exp\!\left[
\frac{i\hbar}{2}
\left(
\overleftarrow\partial_x\overrightarrow\partial_p
-\overleftarrow\partial_p\overrightarrow\partial_x
\right)
\right]B.
$$

For Fourier-resolved symbols

$$
F_q=e^{iq\cdot x/\hbar}f(p),
\qquad
G_\ell=e^{i\ell\cdot x/\hbar}g(p),
$$

the exact Bopp identity is

$$
F_q\star G_\ell
=e^{i(q+\ell)\cdot x/\hbar}
f\!\left(p+\frac\ell2\right)
g\!\left(p-\frac q2\right).
$$

The half-way momenta are therefore fixed by the Weyl product, rather than appended as an amplitude reparameterization. The apparent expansion parameter is transfer over hard momentum, $q/p$, because derivatives of the Fourier phase cancel the explicit $\hbar$.

The on-shell construction is not a strict single-kernel self-dual Stratonovich--Weyl transform. State and observable use mutually dual projected maps, and only their final projected pairing is physical. A fixed-$\widetilde z$ radiation ket $S_W(\widetilde z)|0\rangle$ is an auxiliary state-valued symbol until that pairing is performed.

# One symbol, two exact projections

Define

$$
\mathcal N(\widetilde z)
=\langle0|S_W^\dagger\star_m S_W|0\rangle.
$$

The inclusive one-point waveshape is

$$
\alpha_{I,\lambda}(k;\widetilde z)
=\frac1{\mathcal N}
\langle0|S_W^\dagger\star_m a_\lambda(k)\star_m S_W|0\rangle.
$$

The lowered hard displacement is

$$
\Delta z_A
=\frac{i\hbar}{2\mathcal N}
\langle0|S_W^\dagger\star_m
\overleftrightarrow\partial_A S_W|0\rangle.
$$

The first projection pairs adjacent radiation multiplicities because (a) removes one quantum. The derivative projection pairs equal multiplicities because it preserves radiation number:

$$
\alpha_I\sim\sum_{n\ge0}\frac1{n!}
\int S_{n,W}^\dagger\star_m S_{n+1,W},
$$

$$
\Delta z_A\sim\sum_{n\ge0}\frac1{n!}
\int S_{n,W}^\dagger\star_m
\overleftrightarrow\partial_A S_{n,W}.
$$

No coherence assumption is used in either identity. In the purely elastic endpoint limit $S_W=e^{i\chi/\hbar}$, the displacement reduces to

$$
\Delta z_A=-\partial_A\chi.
$$

# Connected kernels and ordering of reductions

The fixed-multiplicity amplitude symbols are first stripped of the full elastic factor,

$$
R_W=E_W^{-\star_m}\star_m S_W,
\qquad E_W^{-\star_m}\star_m E_W=1,
$$

then the radiation generator is defined by

$$
F[a^\dagger]=\left.\log_{\star_m}R_W[a^\dagger]\right|_{a^\dagger}.
$$

Thus

$$
S_W|0\rangle
=\exp_{\star_m}(\Gamma_{\rm el})
\star_m\exp_{\star_m}(F[a^\dagger])|0\rangle.
$$

Elastic stripping removes iterations of lower elastic exchange. The radiation logarithm separately removes factorized multi-radiation production. Endpoint reduction is allowed only after the star compositions needed for the observable have been performed; taking it too early discards the local Bopp history.

# Inclusive coherent representative

The exact outgoing state is generally noncoherent. Nevertheless, its deterministic one-point field is completely characterized by $\alpha_I=\langle a\rangle$. In the classical factorization limit,

$$
\alpha_{I,\lambda}(k)
=\left.
\frac{\delta F[a^\dagger]}{\delta a_\lambda^\dagger(k)}
\right|_{a^\dagger=\alpha_I^*},
$$

or

$$
\alpha_I
=C_1+C_2\alpha_I^*
+\frac12C_3(\alpha_I^*)^2+\cdots.
$$

Higher exclusive kernels are therefore not discarded: all but one leg can be cut against radiation already present in the state. The scaling

$$
C_r(\hbar\bar k_1,\ldots,\hbar\bar k_r)
\sim\hbar^{-1-r/2}
$$

makes a directly measured connected $r$-point function $O(\hbar^{r-1})$, but after $r-1$ cut phase-space measures and waveshapes its one-point contribution scales again as $\hbar^{-3/2}$.

The coherent representative

$$
|\Psi_{\rm inc}\rangle
=e^{i\operatorname{Re}\chi/\hbar}
e^{-N_I/2}e^{\Sigma[\alpha_I,a^\dagger]}|0\rangle
$$

reproduces fields linear in $a,a^\dagger$. It does not reproduce exclusive multiplicities, squeezing, noise, or higher connected correlators.

The one-mode squeezed example

$$
|\phi\rangle=\mathcal N
e^{\alpha a^\dagger+\beta a^{\dagger2}/2}|0\rangle
$$

has

$$
\langle a\rangle
=\frac{\alpha+\beta\alpha^*}{1-|\beta|^2},
$$

so the inclusive one-point function already mixes the exclusive one- and two-radiation coefficients.

# Nonlinear gravitational memory

The connected six-point kernel has a radiative soft pole

$$
\Delta C_{2,\lambda\tau}(q,k)
\xrightarrow{q\to0}
-\frac{\kappa_g}{2}
\frac{\epsilon_{\mu\nu}^{(\lambda)*}(q)k^\mu k^\nu}
{k\cdot q+i\epsilon}
C_{1,\tau}^{(0)}(k)+O(q^0),
$$

where $\kappa_g$ is the gravitational coupling. Sewing it against the conjugate five-point kernel gives

$$
\Delta\alpha_{I,\lambda}^{\rm NL}(q)
=-\frac{\kappa_g}{2}
\sum_\tau\int d\Phi(k)
\frac{\epsilon_{\mu\nu}^{(\lambda)*}(q)k^\mu k^\nu}
{k\cdot q+i\epsilon}
|C_{1,\tau}^{(0)}(k)|^2
+O(q^0).
$$

This is the $5{\rm pt}^*\times6{\rm pt}$ inclusive cut. It fixes the measured soft-pole residue and the associated principal-value/$\delta(\omega)$ distributions. It does **not** determine the regular $O(\omega^0)$ six-point term or the complete finite-frequency waveform.

# Berry connection and reduced displacement

For the normalized coherent family $|\alpha_I(z)\rangle$,

$$
\mathcal A_A
=-\frac{\hbar}{2i}
\sum_\lambda\int d\Phi(k)
\alpha_{I,\lambda}^*
\overleftrightarrow\partial_A
\alpha_{I,\lambda},
$$

$$
\mathcal F_{AB}
=i\hbar\sum_\lambda\int d\Phi(k)
\left(
\partial_A\alpha_I^*\partial_B\alpha_I
-\partial_B\alpha_I^*\partial_A\alpha_I
\right).
$$

The coherent-representative displacement is

$$
\Delta z_A^{\rm coh}
=-\partial_A\operatorname{Re}\chi+\mathcal A_A.
$$

The split depends on the phase convention, but the sum is invariant. Its curl is

$$
\partial_A\Delta z_B-\partial_B\Delta z_A
=\mathcal F_{AB}.
$$

In particular, the Berry connection contributes to both impulse and position shift when the waveshape depends on the transverse transfer. The gravitational static/soft split further depends on the chosen BMS frame.

# Local symplectic-area balance

For endpoint variations

$$
u_\pm^A=u^A\pm\frac12u^B\partial_B\Delta z^A,
$$

and similarly for $v_\pm$, the hard canonical areas obey

$$
\Omega_{AB}u_+^Av_+^B
-\Omega_{AB}u_-^Av_-^B
=-\mathcal F_{AB}u^Av^B.
$$

The curvature is the modewise area swept by the real and imaginary parts of the waveform,

$$
\mathcal F_{AB}u^Av^B
=2\hbar\sum_\lambda\int d\Phi(k)
\left(
\delta_v\operatorname{Re}\alpha_I\,
\delta_u\operatorname{Im}\alpha_I
-\delta_u\operatorname{Re}\alpha_I\,
\delta_v\operatorname{Im}\alpha_I
\right).
$$

Thus the paper obtains the local identity

$$
\Omega_{\rm hard}^+(u,v)-\Omega_{\rm hard}^-(u,v)
+\Omega_{\rm rad}(\delta_u\alpha_I,\delta_v\alpha_I)=0.
$$

This is strong evidence for an enlarged hard-plus-radiative Hamiltonian description. It is not yet a construction of the full radiative phase space, its Poisson brackets, global infrared sectors, or a global symplectomorphism.

# Angular momentum

With midpoint variables, the exact orbital change is

$$
\Delta L_i^{\mu\nu}
=\widetilde x_i^{[\mu}\Delta p_i^{\nu]}
+\Delta x_i^{[\mu}\widetilde p_i^{\nu]}.
$$

Lorentz invariance of $\operatorname{Re}\chi$ turns the matter sum into the negative field angular momentum,

$$
\sum_i\Delta L_i^{\mu\nu}=-J_{\rm field}^{\mu\nu}.
$$

The inclusive waveshape separates into strict zero-frequency and regular pieces. Their mixed term gives the static field angular momentum, while the regular--regular term gives radiated angular momentum. The zero-frequency/static split in gravity is frame dependent even though the completed balance law is the physical object.

# Independent checks

## Checked

- Direct differentiation of the stated Moyal product reproduces the signs of the Bopp shifts $f(p+\ell/2)g(p-q/2)$.
- The star product with a linear coordinate truncates at first order and reproduces the exact lowered-displacement formula and the elastic sign $\Delta z_A=-\partial_A\chi$.
- Fock combinatorics reproduces the $1/n!$ adjacent-multiplicity numerator and equal-multiplicity normalization/displacement sums.
- Mathematica differentiates the squeezed-state normalization exponent and gives exactly $(\alpha+\beta\alpha^*)/(1-|\beta|^2)$.
- The inclusive-kernel $\hbar$-counting simplifies exactly to $\hbar^{-3/2}$ for arbitrary $r$.
- A two-dimensional canonical-coordinate calculation gives zero residual for the hard-area difference versus the curl of the lowered displacement.
- The PDF pages containing the nonlinear-memory soft pole and the static Berry-connection formulas were rendered and visually match the TeX source.

## Source-derived

- The complete five- and six-point amplitude reductions, scalar-QED/gravity static shifts, and their matches to earlier classical calculations were reconstructed from the paper's source chain but not recomputed diagram by diagram.
- The connected-kernel factorization and iteration subtractions are formal perturbative star-logarithm identities about the identity, as the author explicitly states.
- The BMS-frame interpretation and infrared-sector statements use cited asymptotic-quantization results.

## Blocked

- No amplitude files, diagram-generation code, intermediate cut arrays, or Mathematica notebooks are supplied. The 104-page derivation is readable, but the long scalar-QED and gravity integrations cannot be replayed independently from submission artifacts.
- The regular $O(\omega^0)$ six-point contribution is absent by design, so the complete nonlinear finite-frequency waveform is not available.
- The strict zero-frequency coherent state is outside the ordinary Fock representation. Berry, position-shift, and angular-momentum expressions require the fixed-$i\epsilon$ regulator followed by the stated order of limits.

## Not independently verified

- A global hard-plus-radiative symplectic manifold, its complete Poisson structure, and a global canonical scattering map are not constructed.
- The exact noncoherent outgoing state has a different quantum geometry from the inclusive coherent representative; no equivalence is claimed or established.
- The static gravitational contributions are not separately BMS invariant; only the completed charge/balance statement is expected to be frame meaningful.

# Translation to the vault's gluing language

1. Keep the radiative degrees of freedom until after forming the full connected observable. Projecting them out early manufactures dissipation and can erase classical cut contributions.
2. “Coherent” is a representation of the inclusive one-point field, not a statement that the exact outgoing quantum state factorizes or has Poisson statistics.
3. The endpoint approximation is a reduction that forgets local recoil history. It should not be applied before composing the objects whose star products carry that history.
4. The local symplectic balance is the closest bridge to CPS gluing: the missing hard symplectic area becomes radiative flux. A true gluing theorem still needs the radiative phase space and its boundary/infrared data constructed intrinsically.
5. Soft limits and continuum/Fock statements must remain separate. The regulated state is in Fock space; the strict soft sector is not.
