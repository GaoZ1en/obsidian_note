---
paper id: 2607.27337v1
title: "Holography in the linearized quantum gravity regime and modular crossed product"
authors:
  - Avinandan Mondal
publication date: 2026-07-29T18:00
abstract: |-
  Within the semi-classical regime of AdS/CFT correspondence, we consider the limit where the bulk dynamical field is linearized metric perturbations satisfying linearized Einstein equations over background pure AdS spacetime. AdS/CFT correspondence gives us a holographic map, which is an isometric embedding map of the GNS Hilbert space of linearized gravity in the bulk (w.r.t. the AdS-invariant vacuum) to the GNS Hilbert space of CFT in the boundary (w.r.t. the Minkowski-invariant vacuum). We assume that the map takes AdS-vacuum in the bulk to CFT-vacuum in the boundary and that it allows AdS-Rindler wedge reconstruction. Then using this map, we show that for a given ball-shaped region in the boundary A, the relative entropy of a bulk state w.r.t. the AdS vacuum in the algebra of causal wedge associated to A matches with the relative entropy of the dual CFT state w.r.t. the CFT vacuum in the algebra of CFT observables in A in the code subspace, which is known as Jafferis-Lewkowycz-Maldacena-Suh (JLMS) condition. Furthermore, for localized semi-classical coherent excitations in the causal wedge associated to A which corresponds to perturbed bulk geometry, we show rigorously using modular crossed product construction that the state-dependent part of entropy of the dual CFT state in the dressed Type-II algebra associated to A satisfies vacuum subtracted Hubeney-Rangamani-Takayanagi (HRT) formula.
comments: "31+epsilon pages. 3 figures. Comments are welcome"
pdf: "[[Attachments/Assets/Holography in the linearized quantum gravity regime and modular crossed product (2607.27337v1).pdf]]"
url: https://arxiv.org/abs/2607.27337v1
summary: "A Type-II crossed-product proof that (i) the JLMS relative-entropy equality holds for linearized AdS gravity given a holographic map with wedge reconstruction, and (ii) the state-dependent entropy of a dressed coherent-state algebra equals the vacuum-subtracted HRT area at O(λ²)."
tags: []
---

Back to [[2026_07_31_overview]].

# Paper

Source read: arXiv v1 / local PDF, `https://arxiv.org/abs/2607.27337v1`.

Mondal works in the linearized quantum gravity regime of AdS/CFT: the bulk dynamical field is a quantized linearized metric perturbation over pure AdS (free gravitons). The goal is to give a rigorous, UV-finite meaning to the vacuum-subtracted HRT entropy in this regime using the modular crossed product: the state-dependent part of the entropy of the dressed (Type-II) algebra state of the dual CFT equals a quarter of the vacuum-subtracted area of the HRT surface at leading order in perturbation theory.

# Core Problem

In the semiclassical limit the holographic entropy of a CFT state in a boundary ball $A$ is proposed to be $S(\psi, A) = \operatorname{Ar}[\Gamma, g_{ab}]/4G_N$ (HRT). With renormalized $G_N = 1$ the area of the surface $\Gamma$ extending to the conformal boundary diverges, because the CFT subregion algebra is a Type-III factor with no finite density matrices. The literature handles this with a radial cutoff; Sorce showed the *difference* of areas of two extremal surfaces homologous to the same region is cutoff-independent. So the vacuum-subtracted entropy

$$\begin{align}
\Delta S(\omega, A) = \frac14 \left( \operatorname{Ar}[\Gamma_\lambda, g_{ab}(\lambda)] - \operatorname{Ar}[\Gamma_0, g^{(0)}_{ab}] \right)
\end{align}$$

is finite, but the left side is the difference of two individually ill-defined von Neumann entropies. The paper asks: what is the precise object whose entropy *is* this finite vacuum-subtracted quantity?

# Main Claim

Two claims, both in the linearized regime:

1. **(JLMS, Sec. 5.1)** For any bulk state $\omega$ with dual code-subspace CFT state $\tilde\omega = T\omega$, the bulk relative entropy in the causal-wedge algebra equals the boundary relative entropy in the CFT subregion algebra:

$$\begin{align}
   \tilde S(\tilde\omega|\tilde\omega_0) = S(\omega|\omega_0).
\end{align}$$

   The proof needs only the holographic map properties (vacuum matching and AdS-Rindler wedge reconstruction) — neither geometric modular flow nor crossed products.

2. **(HRT, Sec. 6)** For a coherent state $\omega_h$ of linearized gravity supported in the causal wedge $W(A)$, with classical-quantum extension $|\omega_h\rangle = \int dX\, f(X)|\omega_h\rangle\otimes|X\rangle$, the entropy of the corresponding dressed state in the boundary crossed-product algebra satisfies, at $O(\lambda^2)$,

$$\begin{align}
   S(\rho_{\tilde\omega_h}) = \frac14\, \delta^2 \operatorname{Ar}[\Gamma_0] + \text{state-independent terms} = \frac14\left(\operatorname{Ar}[\Gamma_\lambda, g(\lambda)] - \operatorname{Ar}[\Gamma_0, g^{(0)}]\right).
\end{align}$$

# Section Map

- Section 1 sets the problem: HRT area formula, its UV divergence, Sorce cutoff covariance, and the strategy of reinterpreting the vacuum-subtracted entropy as a Type-II crossed-product entropy.
- Section 2 constructs the AdS-Rindler wedge geometry: causal wedge $W(A)=J^-(D(A))\cap J^+(D(A))$, the standard wedge $W(A_0)$ ($A_0$ = half of $\partial\Sigma$) and the isometry $\psi$ mapping it to any $W(A)$; the bifurcate Killing horizon structure of the boost $\xi^a$; Gaussian null gauge, $\delta\vartheta^\pm|_{\Gamma_0}=0$, and the area-variation result $\operatorname{Ar}[\Gamma_\lambda,g(\lambda)]-\operatorname{Ar}[\Gamma_0,g^{(0)}]=\delta^2\operatorname{Ar}[\Gamma_0]+O(\lambda^3)$.
- Section 3 quantizes linearized gravity on the horizon: the flux operator $F_\xi$ (boost Hamiltonian), its decomposition into boundary charge $X$ and constraint charge $C$ with $F_\xi = X - C$; GNS construction of the Weyl algebra $A(H_A^+,\omega_0)$ — a Type-III factor; KMS property of the AdS vacuum w.r.t. the boost at $\beta=2\pi$.
- Section 4 proves the modular flow is geometric, $H_{\omega_0} = 2\pi F_\xi$, and builds the bulk crossed product $A_{\mathrm{ext}}(H_A^+,\omega_0) = A(H_A^+,\omega_0) \rtimes \mathbb R_{\omega_0}$, which is Type-II by Takesaki with the explicit trace.
- Section 5 introduces the holographic map $T:H_{\mathrm{AdS}}\to H_{\mathrm{CFT}}$ (isometry, vacuum matching, wedge reconstruction), the code subspace, the induced boundary modular flow, and the boundary crossed product; Sec. 5.1 proves JLMS via relative Tomita operators.
- Section 6 constructs coherent states, their natural-cone purification, and the classical-quantum state with the boundary-charge wavefunction; computes the Type-II entropy and reduces the state-dependent part to the Noether-charge integral $\delta^2 Q_\xi|_\Gamma = \delta^2\operatorname{Ar}[\Gamma_0]/8\pi$, giving the HRT formula.
- Section 7 lists limitations (coherent states only, connected ball $A$, pure-AdS background, memory-less data) and future directions (black holes, soft modes).
- Appendix A reproduces Buchholz–Florig–Summers: AdS vacuum is KMS in the Rindler wedge via passivity + weak clustering + the Pusz–Woronowicz theorem.
- Appendix B shows crossed-product von Neumann entropy is purification independent (natural-cone vs. $U|\omega_0\rangle$ give equal entropy).
- Appendix C reviews amenable groups, weak clustering, and the mean ergodic theorem.

# Key Objects and Notation

- **Causal wedge**: $W(A) = J^-(D(A)) \cap J^+(D(A))$ with $D(A)=D^+(A)\cup D^-(A)$ the boundary domain of dependence of the ball $A\subset\partial\Sigma$; boundary $\partial W(A) = H_A^+\cup H_A^-$ (past/future AdS-Rindler horizons).
- **Standard wedge and isometry**: $W(A_0)$ with $A_0$ = half of $\partial\Sigma$; in Rindler coordinates $ds^2 = -(\sigma^2-1)d\tau^2 + d\sigma^2/(\sigma^2-1) + \sigma^2 dH_{d-1}^2$; any ball $A$ maps to $A_0$ by an isometry $\psi$ (conformal symmetry of $\partial\Sigma$), and $\xi^a = \psi_*(\partial_\tau)$.
- **Bifurcate horizon**: the null surfaces $H_A^\pm$ geodesically complete to $H^\pm = H_A^\pm \cup H_{A^c}^\pm$; $\xi^a$ extended to $H^\pm - H_A^\pm$ via the boost of $W(A^c)$; surface gravity $\kappa=1$, affine/Killing parameters $V = e^v$ (on $H_A^+$), $V = -e^{v'}$ (on $H_{A^c}^+$); bifurcation surface $\Gamma_0 = H_A^+\cap H_A^-$ is the HRT surface for $A$.
- **Flux operator**: $F_\xi = \frac{1}{4\pi}\int_{H^+} dV d\Omega\, \delta\sigma_{AB}\delta\sigma^{AB}$, the boost Hamiltonian; boundary decomposition $F_\xi = X - C$ with $X=\int_{\zeta_R^+}(\delta^2 Q_\xi - \xi\cdot\delta\theta)$ and $C=\int_{\zeta_L^-}(\delta^2 Q_\xi - \xi\cdot\delta\theta)$; $C$ is the constraint charge.
- **Geometric modular flow**: $H_{\omega_0} = 2\pi F_\xi$ — KMS at $\beta=2\pi$ for the boost plus Tomita–Takesaki uniqueness of modular flow implies the modular Hamiltonian equals the boost.
- **Crossed product**: $A_{\mathrm{ext}}(H_A^+,\omega_0) = A(H_A^+,\omega_0)\rtimes \mathbb R_{\omega_0}$ — the invariant subalgebra w.r.t. total Hamiltonian $F_\xi - X = -C$ on $H_{\mathrm{AdS}}\otimes L^2(\mathbb R)$; Type-II by Takesaki, trace ${\rm Tr}(a) = \int_{-\infty}^{\infty} dX\, e^X \langle\omega_0,X|a|\omega_0,X\rangle$.
- **Holographic map**: $T: H_{\mathrm{AdS}}\to H_{\mathrm{CFT}}$ isometric; (1) $T|\omega_0\rangle = |\tilde\omega_0\rangle$; (2) wedge reconstruction $T^*\tilde A(A,\tilde\omega_0) T = A(H_A^+,\omega_0)$, equivalently $\tilde A_{\mathrm{rest}}(A,\tilde\omega_0) = P_{\rm code}\tilde A(A,\tilde\omega_0)P_{\rm code}$; code subspace $H_{\rm code} = T(H_{\mathrm{AdS}})$, $P_{\rm code}=TT^*$.
- **JLMS mechanism**: $T^*\tilde S_{\tilde\omega|\tilde\omega_0} T = S_{\omega|\omega_0}$, hence by polar decomposition $\tilde\Delta_{\tilde\omega|\tilde\omega_0} = T\Delta_{\omega|\omega_0}T^*$, so $\tilde S = S$.
- **Coherent state**: $U = \exp(-i\delta\sigma(h)/16\pi^2)$; $\omega_h(a) = \omega_0(U^*aU)$; natural-cone vector $|\omega_h\rangle = U j_{\omega_0}(U)|\omega_0\rangle$; classical-quantum state $|\omega_h\rangle = \int dX\, f(X)|\omega_h\rangle\otimes|X\rangle$ ($f$ = slowly varying wavefunction of the boundary charge at $\zeta_R^+$).
- **Key entropy relations**: $S(\rho_{\omega_h}) = -S(\omega_h|\omega_0) + 2\pi\langle X\rangle_{\omega_h} + S(f)$; $S(\omega_h|\omega_0) = 2\pi F_\xi[H_A^+] = \frac12\int_{H_A^+} dV d\Omega\, V(\delta\sigma_h)^2$; Iyer–Wald at the bifurcation surface $\int_\Gamma \delta^2 Q_\xi = \frac{1}{8\pi}\delta^2\operatorname{Ar}[\Gamma_0]$.

# Relation to Prior Work

- **JLMS [12]** proposed bulk = boundary relative entropy in the entanglement wedge; this paper proves it for the causal wedge in the linearized regime from the two holographic-map assumptions, without needing the crossed product.
- **HRT via replicas [13]** (Lewkowycz–Maldacena) and **AdS3/CFT2 relative-entropy derivation [14]** (Much–Dorau–Sangaletti–Verch, Banados geometries): this paper's proof is Type-II-entropy based, avoids UV cutoffs, and works for any $d\ge 2$.
- **Mondal–Prabhu [15]** established the modular-crossed-product entropy method for dynamical black holes; this paper ports it to pure-AdS wedge holography.
- **Hollands–Wald–Zhang [16]** and **Iyer–Wald [39]** supply the Noether-charge identity $\delta^2 Q_\xi = \delta^2\operatorname{Ar}/8\pi$ at the bifurcation surface.
- **KMS proof** follows Buchholz–Florig–Summers [24] (passivity + weak clustering + Pusz–Woronowicz [45]).
- **Crossed products in gravity**: Witten [31], Chandrasekaran–Longo–Penington–Witten [26] (dS), Fewster et al. [27], De Vuyst et al. [28,29] — the Type-II/Type-III crossing mechanism is standard; the novelty is its use to prove HRT.
- **Sorce [10]** cutoff covariance makes the vacuum-subtracted area the right finite object.
- **Kudler-Flam–Leutheusser–Satishchandran [20]** generalized BH entropy = von Neumann entropy; **Klinger–Kudler-Flam–Satishchandran [21]** edge modes.

# What Is Genuinely New

- A proof of HRT at leading order in the linearized regime whose "entropy" is the well-defined von Neumann entropy of a Type-II crossed-product state — no radial cutoff needed, valid for $AdS_{d+1}/CFT_d$ with any $d\ge2$.
- A minimal-assumption proof of JLMS: only vacuum matching + wedge reconstruction of an isometric holographic map; geometric modularity and the crossed product are shown to be unnecessary (Remark 5.2).
- The identification of the modular Hamiltonian with $2\pi$ times the horizon flux (geometric modular flow) and the interpretation of the constraint equation $F_\xi = X-C$ as the generator of the crossed product.
- Purification independence of the crossed-product entropy (Appendix B) justifying the natural-cone choice.

# Potential Weak Points

- **Coherent states only**: the HRT proof fails for non-coherent states (e.g. single-graviton states); JLMS itself is general.
- **Connected ball $A$ only**: excludes disjoint unions where the HRT surface need not be the sum of individual surfaces; uniqueness of the extremal surface is implicitly assumed.
- **Pure-AdS background only**: eternal AdS-Schwarzschild/TFD states are out of scope; extension is conjectural.
- **Memory-less assumption**: initial data vanishes at $\zeta_R^+$ ($h_{AB}(\zeta_R^+)=0$), so soft modes / memory are excluded — precisely the sector where horizon algebras are known to be most subtle; the author flags Danielson–Satishchandran [38] as the fix.
- **Slowly-varying wavefunction $f(X)$**: the entropy formula (6.7) is derived in that approximation (with bounds from [36]).
- **Perturbativity**: $\Gamma_\lambda$ must be a smooth one-parameter family of extremal surfaces (small $\lambda$); the proof is at $O(\lambda^2)$.
- **Assumed holographic map**: properties (1)–(2) — in particular exact code-subspace wedge reconstruction — are assumed rather than derived.
- **KMS input is assumed**: Appendix A reduces KMS to passivity of the vacuum, itself an assumption.

# Follow-Up Questions

- Can the construction extend to AdS black holes (TFD states), where the crossed product has a two-sided structure?
- Can soft modes / memory be included via the Danielson–Satishchandran formalism, and does the entropy then pick up memory-dependent terms?
- What happens for disconnected $A$ where multiple extremal surfaces compete (maximin vs. HRT selection)?
- Does the Type-II entropy differ from the conventional cutoff-regulated answer for non-coherent (e.g. 1-graviton) states?
- Is the second-order-in-$\lambda$ correction to $\delta^2\operatorname{Ar}$ controlled, and does a "first law of entanglement" follow from the crossed-product entropy (Faulkner et al. [40] direction)?
- How does the boundary-charge wavefunction $f(X)$ relate to an explicit observer/clock construction in the boundary CFT?

# Ten-Sentence Compression

1. The paper works with quantized linearized metric perturbations over pure AdS in the semiclassical AdS/CFT regime.
2. The HRT entropy for a boundary ball is an area, but the area and the entropy are each UV divergent.
3. Sorce's cutoff-covariance makes the vacuum-subtracted area the natural finite object.
4. The paper reinterprets the vacuum-subtracted entropy as the von Neumann entropy of a Type-II crossed-product state.
5. The AdS-Rindler boost has a bifurcate Killing horizon whose bifurcation surface is the HRT surface $\Gamma_0$.
6. The vacuum is KMS w.r.t. the boost, so the modular Hamiltonian equals $2\pi F_\xi$, and the flux splits as $F_\xi = X - C$.
7. Crossing with the boundary charge $X$ converts the Type-III horizon algebra into a Type-II factor with a trace.
8. An isometric holographic map with wedge reconstruction proves JLMS: bulk and boundary relative entropies match.
9. For a coherent graviton state with a classical-quantum extension, the Type-II entropy's state-dependent part reduces via the Noether charge to $\frac14\delta^2\operatorname{Ar}[\Gamma_0]$.
10. Hence the dual CFT's dressed-algebra entropy satisfies the vacuum-subtracted HRT formula at $O(\lambda^2)$.
