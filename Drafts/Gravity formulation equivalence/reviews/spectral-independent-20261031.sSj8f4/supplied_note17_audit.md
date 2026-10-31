# Supplied-text follow-up: projected map, finite Gaussian, and Lorentz fiber

## Judgment

**The supplied §§3, 5–6 are correct under their explicitly stated finite prescription and zero-retained-ghost/antifield restriction.** The important extra check is that the Lorentz fiber keeps integrated θ* and χ nonzero. Its normalized integral is indeed constant: the full generator-first semidensity has no θ* or χ dependence on this fiber, and its action is exactly θ*χ. This can be proved without assuming a finite nonlinear BRST doublet or a CME.

This is a **supplied-text audit after the independent freeze**, not part of the blind derivation. The source is [the new spectral-compression note](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/17 Spectral BV compression and master-equation obstruction.md>), §§3, 5–6 and the relevant scope statements. The earlier [independent proof and hashes](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/FREEZE.md>) remain unchanged. No other agent's new review was read.

**Pre-freeze provenance clarification:** during the investigation, the parent explicitly warned that P(fU) in the original retained action is not fU and that P f³P must not be inserted without identifying an eliminate-first prescription. Thus the ordering issue was flagged during the investigation and should not be advertised as a wholly blind discovery. No candidate H_ω, H_U or density coefficient was supplied before the freeze; the exact A/A³ Hessians, determinant factors and density coefficients were independently derived here. The complete parent density formula was first supplied after the freeze. This clarification supplements, rather than rewrites, the frozen record.

## 1. Agreement with the frozen computation

The source uses whole-cube determinants, whereas the independent derivation uses one-chain determinants with an explicit transverse power m=(2N+1)². Under this mapping:

- Actual projected full Berezinian: (det B/det A)³, not (det A)⁻⁶.
- Noncanonical ghost pairing: AB−I=ε²Pb(1−P)bP+O(ε³).
- Original retained connection Hessian: 2aA⊗L; after the projected affine U chart it is 2aA³⊗L, not 2aF₃⊗L.
- Finite inverse polar-chart coefficient: (det B)⁶(det A)³, not the inverse coefficient of the separately projected forward polar map.
- Joint coefficient: J_N=(det B)⁶(det A)⁻⁹ᐟ².
- Dynamical target coefficient: (det B)³(det F₅)⁻³ᐟ².
- Their log-ratio for the cosine family is (2N+1)²(9ε²+45ε⁴/8+33ε⁶/8+O(ε⁸)).

All these coincide with the frozen derivation. The supplied note's restriction of J_N to the measure coefficient, rather than the affine-source exponential, is necessary. The additional action correction is proved separately in [the independent action addendum](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/connection_action_addendum.md>).

**Readback of the additions:** [§3 equation (11a)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/17 Spectral BV compression and master-equation obstruction.md#L192-L217>) reproduces the frozen exact Toeplitz gap −3n²log(1−q_s^{n+1}), with q_s=q here and n=ℓ. The chain determinant formulas agree using 1−q_s=s/α. [§5 equation (18a)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/17 Spectral BV compression and master-equation obstruction.md#L311-L338>) correctly reproduces +4aV s q_s^{N+1}/(1−q_s^{N+1}), beginning at ε^{2N+2}, not the ε² density order. The now-explicit normalization keeps the physical action integral d³x and V=(2π)³, while only Fourier averages are normalized. With the orthonormal basis V^{-1/2}e^{ikx}, the Hessian remains 2aA⊗L and every background-normalized density ratio is unchanged. No kernel was rerun for this readback.

## 2. The exact fiber, not merely its all-zero body

Use the finite inverse chart and its exact cotangent lift. Pairings in §§2–4 of this audit mean the integrated Darboux pairing, or its orthonormal Fourier coefficient sum, not the normalized scalar average used in the action addendum. Set external/retained variables

\[
g^*=\xi^*=\xi=0,
\]

and take the auxiliary and Lorentz fiber Lagrangian

\[
U^*=0,\qquad \theta=0,\qquad\chi^*=0.
\]

**Keep θ* and χ arbitrary throughout.** Also keep the integrated connection ω arbitrary. On the scalar family the finite cotangent lifts imply

\[
\omega^*=0,\qquad\lambda^*=0,\qquad\xi^*_{\mathrm{old}}=0,
\]

while e* is the generally nonzero antisymmetric dual induced by θ*. Terms from the derivative-dependent connection shift carry ω*, and terms from differentiating the ghost redefinition carry χ*, so they cannot produce additional old antifields on this fiber. At ξ=0 the ghost change is λ=χ, with unit coefficient after the agreed chart normalization.

Solving the retained type-II equations gives, exactly on this fiber,

\[
E^*=e^*,\quad W^*=\rho^*=\tau^*=0;
\qquad e_c=e,\quad\omega_c=\omega,\quad\tau=0,\quad\rho=\chi.
\tag{A.1}
\]

Here E*, W* are the new physical momenta e_c*, ω_c*. The τ* equation is invertible because A>0. No condition sets θ* to zero.

## 3. Full semidensity is independent of integrated θ*

The general finite type-II identity is Ber DΦ=(Ber M)², with M=∂_rQ/∂q at fixed new momenta. Apply it on the graph (A.1), not just at the zero-antifield body. Relative to 18 even physical positions and 6 odd ghost positions per mode, the mixed matrix has the exact form

\[
M=\begin{pmatrix}I&K(E^*)\\0&D\end{pmatrix},
\qquad
D=\begin{pmatrix}I&P\omega P\\0&A\otimes I_3\end{pmatrix}.
\tag{A.2}
\]

The sole possible E*-dependent block is the even-output/odd-input derivative of

\[
\omega_c=\omega+\kappa^{-1}\iota_\xi E^*+O(\xi^2),
\]

including the sign from right differentiation. The ghost-even block is zero because every physical-field derivative of the new ghosts contains ξ. The ξ-derivative of the quadratic-ξ ghost term also vanishes at ξ=0. Neither λ nor χ occurs nonlinearly in the generating functional, so neither changes this result.

Therefore

\[
\boxed{\operatorname{Ber}M=(\det A)^{-3},\qquad
\operatorname{Ber}D\widehat\Phi_P=(\det A)^{-6}}
\tag{A.3}
\]

**for arbitrary integrated θ* and χ on this fiber.** The result is also independent of the integrated ω because its block is triangular in D. This proves the source semidensity coefficient remains (det A)⁻³ throughout the fiber. It is not an extrapolation of the all-zero-body Jacobian. Cotangent lifts of the subsequent finite coordinate charts have their usual base-determinant square and introduce no momentum dependence.

The argument is valid for arbitrary retained θ*(x), including transverse modes. It uses only triangularity, not preservation of products by P. The machine check below illustrates the one-chain subset; the proof, rather than that subset, supplies the full cube statement.

## 4. The action is exactly θ*χ on this fiber

On (A.1), the retained CS action restricts to

\[
I_{P,N}(e,\omega)+\langle e^*,P[e,\chi]\rangle.
\]

All translation-ghost and ghost-antifield terms vanish; the connection-antifield term vanishes because W*=0. For e=fI,

\[
P[e,\chi]=A\chi
\]

in the three antisymmetric frame directions, with the agreed orientation of their generators. The derivative of the inverse frame chart is likewise δ_θe=Aδθ. By the **finite cotangent pairing**, not a continuum inverse-coframe substitution,

\[
\langle e^*,P[e,\chi]\rangle=\langle\theta^*,\chi\rangle.
\tag{A.4}
\]

Thus the fiber integrand factors into a physical Gaussian times

\[
\int d\theta^*d\chi\,\exp[-\langle\theta^*,\chi\rangle/\hbar],
\]

whose orientation and ℏ power are field-independent and cancel against the prescribed background normalization. No hidden θ*-dependent coefficient from Φ survives to modify this integral.

This proves the supplied Lorentz-fiber statement on the claimed slice. It **does not** prove Q_Nχ=0 away from that slice, or any finite interacting BV pushforward theorem. The failed truncated CME remains a decisive separate boundary.

## 5. Focused verification, diagnostics, and replay

A new [native Sage executable](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/lorentz_fiber_check.py>) checks the exact finite frame pairing, a genuinely nonzero θ*-dependent upper block K, the full mixed-matrix inverse, the unchanged ghost Schur block, and the complete fiber top Berezin coefficient. The final N=2 one-chain run has 15 θ* and 15 χ generators, a 90-even/30-odd mixed matrix, and eight exact passing labels. It is a check of the analytically derived slice matrix, not an independent reconstruction of the whole off-slice generator.

- [Final N=2 output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/lorentz-fiber-N2-result.json>) and [actual tool return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/lorentz-fiber-N2-tool-return.json>).
- Original kernel output: [N=2 kernel result](</Users/koishi/.dsh/research-results/kernel-exports/spectral-lorentz-fiber.dfhyi_pt/result.json>); original [MCP return](</Users/koishi/.dsh/research-results/session-31f8e1972139/825f534f02df-research-result.json>).
- [Additional N=1 subset output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/lorentz-fiber-result.json>) and [its tool return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/lorentz-fiber-tool-return.json>) remain preserved. N=2 is the relevant run for the retained g=f²I prescription; N=1 only checks the rotation/mixed-matrix subset.
- The first attempt encountered Sage's unsupported generic matrix multiplication over an ExteriorAlgebra. It was replaced by explicit ordered coefficient multiplication, preserving Grassmann signs. This was an API limitation, not a failed mathematical identity, and is excluded from the pass count. The details are recorded in [the diagnostic](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/lorentz-fiber-api-diagnostic.md>).

The separate connection-action calculation has 18 new exact passing labels in [its output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/connection-action-result.json>), with [actual tool return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/connection-action-tool-return.json>) and [executable](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/connection_action_check.py>). None of the settled 78-label Wolfram or 25-label Sage suites was rerun for this audit.

Safe replay uses a fresh Sage kernel and the full self-contained script, for example:

```python
from pathlib import Path
p = Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/lorentz_fiber_check.py')
exec(compile(p.read_text(), str(p), 'exec'))
```

The same form runs the connection-action executable. Each script creates a fresh private directory under the kernel-export store and prints its location; it does not overwrite frozen evidence, any source note, or the archived successful outputs. Read the newly returned JSON and inspect the exact boolean labels and diagnostics before counting a replay as successful.

## Scope recommendation

The source's final caveat is appropriate: this is a zero-retained-ghost/antifield density coefficient in one specified finite canonical-coordinate and Gaussian prescription. The extra argument (A.1)–(A.4) should accompany the sentence that the Lorentz integral is constant, because setting **integrated** θ* to zero before calculating would not justify it. The finite Gaussian action correction must remain separate from J_N. No change to the frozen independent derivation or the original source files was made by this reviewer.
