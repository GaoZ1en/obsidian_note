---
paper id: 2608.16762v1
title: On the (Non)Unitarity with respect to the Clock of a Dynamical Local Observer and the Einstein Equivalence Principle
authors:
  - Kengo Shimada
publication date: 2026-08-17T16:09
abstract: |-
  We investigate the unitarity of quantum evolution relative to an internal time defined by a local observer's clock. The observer is modeled as a relativistic particle carrying both a clock and a matter-field detector, analyzed first on a fixed curved background and subsequently within a fully diffeomorphism-invariant theory of dynamical gravity. In the former case, we find that evolution with respect to the internal clock time is generally nonunitary, implying a violation of the Einstein equivalence principle at the quantum level. In contrast, in the latter case, diffeomorphism invariance allows us to adopt observer-centric coordinates without loss of generality. On the resulting partially-reduced phase space, one of the diffeomorphism generators becomes linear in the clock Hamiltonian, generating a relational evolution that is consistent with the remaining diffeomorphism constraints. Assuming that an effective quantum field theory exists to be consistent with the diffeomorphism invariance, these features ensure unitary evolution relative to the internal clock, thereby preserving the equivalence principle even in the quantum regime. Our results highlight the fundamental role of diffeomorphism invariance in shaping relational unitary evolution from the perspective of a local observer.
comments: 32 pages, 3 figures
url: https://arxiv.org/abs/2608.16762v1
summary: "A relativistic clock-detector model is generally nonunitary in its internal time only after a small-internal-energy and adiabatic reduction in an external-perspective quantization; the dynamical-gravity unitarity claim is conditional on an anomaly-free quantum constraint algebra and a Hermitian reduced Hamiltonian."
tags: []
---

# Direct verdict

**Correct under the following precise conditions:** on a fixed curved background, choose the positive-energy external constraint as the definition of the physical Hilbert space, assume the internal energy is small compared with the rest mass, and truncate the spacetime-derivative/adiabatic expansion. The resulting first-order equation in the observer's clock reading has a generally anti-Hermitian correction. Its observable effect requires internal--external entanglement and disappears in the ultrastatic decoupled case and at leading nonrelativistic order.

The statement should be rewritten as: **the paper exhibits model-, state-, perspective-, and approximation-dependent failures of internal-clock unitarity and of its operational EEP criterion on fixed backgrounds.** It does not establish a universal quantum violation of the Einstein equivalence principle.

For dynamical gravity, the classical partially reduced construction is coherent: the observer-centric gauge sets the particle momentum to zero and singles out a constraint linear in the clock Hamiltonian. The quantum conclusion is **not proven by the construction**. It assumes an effective quantum gravity in which the residual diffeomorphism constraints close without anomaly and the reduced Hamiltonian is Hermitian. Point-particle backreaction, factor ordering, and simultaneous quantum reference-frame changes remain open.

Relevance: **high** (`T1-symmetry`, `T1-symplectic`, `T2-model`).

# Paper map

1. A relativistic particle carries a semibounded clock and a matter detector on a prescribed curved background.
2. Quantization from the external-time constraint gives ordinary unitary evolution in the external time.
3. Projection onto clock states gives an approximate internal-time equation whose generator is generally non-Hermitian.
4. The paper defines EEP failure operationally as dependence of the reduced local experiment on the external quantum state.
5. With dynamical gravity, an observer-centric partial gauge fixing produces a Dirac-reduced phase space and a constraint linear in the clock Hamiltonian.
6. The claimed quantum unitarity then follows only after assuming an anomaly-free quantization with a Hermitian generator.

# Fixed-background model

The observer has position $X^\mu$, momentum $P_\mu$, clock pair $(\alpha,H_{\mathrm C})$, and detector variables with Hamiltonian $H_{\mathrm D}$. Its effective mass is

$$
M_{\mathrm{eff}}=M+H_{\mathrm C}+H_{\mathrm D},
\qquad
\zeta:=\frac{H_{\mathrm C}+H_{\mathrm D}}{M}\ll1.
$$

The quadratic mass-shell constraint is

$$
C^{\mathrm{KG}}=P^2+M_{\mathrm{eff}}^2.
$$

Classically it can be factorized from either perspective. With

$$
\omega=\sqrt{|\mathbf P|_h^2+M_{\mathrm{eff}}^2},
\qquad
C^{\mathrm{ex}}_\pm=\mp\theta+\omega,
$$

the positive-energy external theory takes $C^{\mathrm{ex}}_+=0$. An internal factorization instead uses

$$
C^{\mathrm{in}}_\pm
=M_{\mathrm{eff}}\mp\sqrt{-P^2},
$$

which is linear in $H_{\mathrm C}$.

At the quantum level the relevant factors do not generally commute. Defining

$$
\widehat\Delta_1=[\hat\theta,\hat\omega],
\qquad
\widehat\Delta_2=[\sqrt{-\hat P^2},\hat M_{\mathrm{eff}}],
$$

one has the ordered identities

$$
\hat C^{\mathrm{KG}}
=\hat C^{\mathrm{ex}}_-\hat C^{\mathrm{ex}}_+-\widehat\Delta_1
=\hat C^{\mathrm{in}}_-\hat C^{\mathrm{in}}_+-\widehat\Delta_2.
$$

Thus the two linearized constraint choices no longer define obviously equivalent quantum theories. The paper keeps the external choice because it has a direct positive-energy interpretation and a self-adjoint external-time Hamiltonian.

# External time versus internal time

The physical condition

$$
\hat C^{\mathrm{ex}}_+\lVert\psi^{\mathrm{ex}}_{\mathrm{ph}}\rangle=0
$$

becomes, in the external-time representation,

$$
\left(i\partial_T-\hat\omega(T)\right)
|\psi^{\mathrm{ex}}_{\mathrm{ph}}(T)\rangle=0.
$$

This is unitary provided the assumed external Hamiltonian is self-adjoint. The physical Hilbert space does not factor into independent internal and external sectors, but its group-averaged inner product is independent of $T$.

The clock Hamiltonian has spectrum $\mathbb R_+$. Consequently the clock states

$$
|\alpha\rangle
=\int_{\mathbb R_+}\frac{d\Omega}{2\pi}
e^{-i\alpha\Omega}|\Omega\rangle
$$

are nonorthogonal and resolve the identity as a POVM; the formal clock operator is symmetric rather than self-adjoint. Projecting the external physical state onto these clock states does not give an exact first-order equation because $\hat C^{\mathrm{ex}}_+$ is nonlinear in $H_{\mathrm C}$.

After using $\zeta\ll1$ and a spacetime-derivative expansion, the paper obtains

$$
\left(i\partial_\alpha-\hat K\right)
|\psi^{\mathrm{ex}}_{\mathrm{ph}}(\alpha)\rangle\simeq0,
$$

with

$$
2[\hat K]_{\mathrm{AH}}
\simeq
\frac{[\hat\theta,\hat\omega_{\mathrm{rp}}]}{M}
+\frac{[\hat\theta,\hat H_{\mathrm D,i}]}{\hat\omega_{\mathrm{rp}}}
+\frac{[\hat P^2,\hat H_{\mathrm D,i}]}{2M^2}.
$$

Here $[A]_{\mathrm{AH}}=(A-A^\dagger)/2$. This formula is the paper's main fixed-background mechanism: operator dependence on the observer's spacetime position couples the clock/detector sector indirectly to its external motion.

The conclusion has three important boundaries:

- it is an approximate equation, not an exact spectral statement about the full constraint;
- it is formulated in the physical Hilbert space selected by the external constraint;
- the anti-Hermitian term is absent in special decoupled limits, including an ultrastatic background with the detector interaction off.

# Operational EEP criterion

With the detector reinterpreted as a local experiment, the paper asks whether its reduced state as a function of the clock reading depends on the observer's external quantum state. The correction to the reduced evolution is built from conditional expectations of $[K_o]_{\mathrm{AH}}$ on the external sector.

For a product state between the experiment and the external degrees of freedom, the two normalization terms cancel. Nontrivial evolution therefore requires internal--external entanglement. This is a precise model criterion, but it is narrower than a universal theorem about the EEP: it depends on the chosen quantization, clock POVM, truncation, and state.

There is also a local factor-of-two inconsistency. Equation (83) implies, after setting $H_{\mathrm D,i}=0$,

$$
[\hat K_o]_{\mathrm{AH}}
\simeq\frac{[\hat\theta,\hat\omega_{\mathrm{rp}}]}{2M},
$$

whereas equation (86) prints the same quantity with denominator $M$. The later EEP formulas that cite equation (86) therefore inherit an ambiguous overall coefficient, although the existence and state-dependence of the correction are unchanged.

# Dynamical gravity and partial reduction

For a closed ADM slice, the full constraints are

$$
\mathsf C^{\mathrm{diff}}[v,\mathbf v]
=\mathsf C_\perp[v]+\mathsf C_\parallel[\mathbf v].
$$

The observer contributions are

$$
\mathsf H_{\mathrm{obs}}
=\sqrt{|\mathbf P|_{\mathsf h}^2+\mathsf M_{\mathrm{eff}}^2},
\qquad
\mathsf M_{\mathrm{eff}}
=M+H_{\mathrm C}+H_{\mathrm D}.
$$

The observer-centric gauge imposes

$$
\mathbf X=\mathbf x_{\mathrm{obs}},
\qquad
\mathbf P=0.
$$

The second equality is the consistency condition for the first. A finite set of gauge functions and matching combinations of diffeomorphism constraints forms a second-class set $\mathsf Z$. Its constraint matrix $\Upsilon$ defines the Dirac bracket on the partially reduced phase space.

The remaining first-class constraints split as

$$
\mathsf C^{\mathrm{res}}
=\{\mathsf C\}\oplus\mathsf C^\diamond,
$$

where

$$
\mathsf C
=M+H_{\mathrm C}+H_{\mathrm D}
+\mathsf H_{\mathrm{g+m}}[n]
$$

is linear in $H_{\mathrm C}$ and is compatible, under the Dirac bracket, with the residual set $\mathsf C^\diamond$. Relational observables are obtained by group averaging along the flow of $\mathsf C$, with the additional requirement that their bare seeds commute weakly with $\mathsf C^\diamond$.

This classical step is the strongest result in the gravity half of the paper. It makes clear why the square-root indirect interaction is removed after using the observer as a spatial reference point.

# Conditional quantum-gravity step

Quantization replaces the reduced constraints by operators satisfying an assumed closed algebra. The physical equations are

$$
\hat{\mathsf C}|\Psi_{\mathrm{ph}}\rangle=0,
\qquad
\hat{\mathsf C}^\diamond_r|\Psi_{\mathrm{ph}}\rangle=0.
$$

Projection onto a clock state then gives

$$
\left(i\partial_\alpha-\hat{\mathsf H}\right)
|\Psi_{\mathrm{ph}}(\alpha)\rangle=0,
\qquad
\hat{\mathsf H}
=M+\hat H_{\mathrm D}+\hat{\mathsf H}_{\mathrm{g+m}}[n].
$$

Unitarity follows if $\hat{\mathsf H}$ is Hermitian on a physical domain and the residual constraints remain compatible with this evolution. The paper explicitly assumes the needed diffeomorphism-preserving effective quantum theory. It also explicitly leaves open:

- nonclosure of the quantum diffeomorphism algebra from factor ordering;
- the singular backreaction and ultraviolet sensitivity of a point observer;
- a covariant smearing or extended-observer replacement;
- construction of transformations between different observer-centric quantum frames.

The resulting implication is therefore conditional:

$$
\text{anomaly-free reduced quantization + self-adjoint }\hat{\mathsf H}
\Longrightarrow
\text{internal-clock unitarity}.
$$

It is not an independent construction of the premise.

# Relation to current vault projects

## What transfers directly

- The observer-centric gauge is a concrete example of a partial reduction that turns a nonlinear clock dependence into a linear constraint.
- The residual constraint $\mathsf C^\diamond$ is an important reminder that choosing a relational clock does not complete the spatial gauge reduction.
- The group-averaged relational operators display a crossed-product-like structure while retaining an extra residual-constraint condition.
- The paper gives a useful contrast between apparent internal-time nonunitarity on a fixed background and conditional unitarity after including gravitational gauge symmetry.

## What does not transfer without new work

- No covariant phase-space boundary term, corner symplectic form, or gluing Hamiltonian is constructed.
- The ADM analysis assumes a spatially closed slice, so it does not directly address timelike AdS boundaries or Brown--Henneaux charges.
- The quantum algebra is assumed rather than derived; it cannot establish the quantum completion of the vault's classical gluing theorems.
- The point-observer gauge does not solve the moving-embedding or multi-observer compatibility problem.

# Verification log

## Source-derived

- Read the complete 32-page PDF and the complete 2,513-line TeX source, including the appendices on group averaging, dynamical matter, and the inverse constraint matrix.
- Visually inspected the title/abstract, the fixed-background nonunitarity and EEP formulas, the partial reduction, the quantum-gravity construction, and the open-problem discussion on rendered PDF pages.
- Traced the external and internal factorizations, the clock POVM, the small-$\zeta$ expansion, the second-class constraint matrix, the residual constraint split, and the relational observable construction to the source.

## Checked

Verified: direct noncommutative expansion gives

$$
(\theta+\omega)(-\theta+\omega)
=C^{\mathrm{KG}}+[\theta,\omega],
$$

and

$$
(M_{\mathrm{eff}}+S)(M_{\mathrm{eff}}-S)
=C^{\mathrm{KG}}+[S,M_{\mathrm{eff}}],
\qquad S=\sqrt{-P^2},
$$

so the two ordered factorization identities have the signs printed in the paper.

Verified: Mathematica evaluated the proposed block formula for $\Upsilon^{-1}$ on an exact rational, invertible antisymmetric test case. Both $\Upsilon\Upsilon^{-1}-I$ and the symmetric part of the candidate inverse vanished identically.

Verified: equation (83), together with the paper's definition $[A]_{\mathrm{AH}}=(A-A^\dagger)/2$, reduces to $[K_o]_{\mathrm{AH}}=[\theta,\omega_{\mathrm{rp}}]/(2M)$ when the detector interaction is switched off.

Assumptions: $M>0$, $H_{\mathrm C}\geq0$, $H_{\mathrm D}\geq0$, $\zeta\ll1$, the prescribed operator orderings and domains are meaningful, and the external Hamiltonian is self-adjoint. The dynamical-gravity conclusion further assumes an anomaly-free constraint algebra and a Hermitian reduced Hamiltonian.

## Failed

Failed: equation (86) prints

$$
[K_o]_{\mathrm{AH}}\simeq[\theta,\omega_{\mathrm{rp}}]/M,
$$

which differs by a factor of two from equation (83) under the stated specialization $H_{\mathrm D,i}=0$.

Failed: appendix equation (A12) labels an operator evolution equation as a Heisenberg equation but retains a Poisson bracket between hatted operators. The quantum version should use a commutator with the corresponding factor of $i$; the displayed formula is a notation-level classical/quantum mismatch.

Failed: the abstract-level implication that fixed-background nonunitarity establishes quantum EEP violation is too broad. The demonstrated correction is conditional on an external-perspective physical Hilbert space, a perturbative/adiabatic truncation, and an entangled state, with explicit decoupled countercases.

## Blocked

Blocked: no anomaly-free quantization or regulator for the reduced ADM constraint algebra is supplied. The claimed dynamical-gravity unitarity cannot be independently verified without the missing quantum operator domains, factor ordering, and closure calculation.

Blocked: no self-consistent solution including the observer's gravitational backreaction is constructed. The point-particle singularity and any covariant smearing remain open.

## Not independently verified

Not verified: the full field-theoretic Dirac-bracket algebra for arbitrary residual smearings. Only the paper's finite block inverse formula was tested on an exact representative matrix.

Not verified: the functional-analytic self-adjointness of $\hat\omega$, $\hat{\mathsf H}$, or the group-averaged observables.

Not verified: empirical observability or universality of the proposed EEP correction.

# Bottom line

The paper provides a useful classical partial-reduction mechanism and a carefully exposed fixed-background source of relational nonunitarity. Its strongest safe claim is conditional: a chosen external quantization produces approximate, entanglement-sensitive internal-time nonunitarity, while an anomaly-free diffeomorphism-preserving reduced quantization would restore unitary clock evolution. The source contains a factor-of-two error in the central fixed-background specialization, and it does not construct the quantum-gravity framework required by its positive conclusion.
