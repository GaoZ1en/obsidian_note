---
paper id: 2608.18847v1
title: Quantum State of the Asymptotic Gravity Field from BRST Quantization
authors:
  - Xavier Calmet
  - Stephen D. H. Hsu
publication date: 2026-08-19T12:13
abstract: |-
  The paper constructs a scalar-sector coherent representative of the sourced linearized-gravity BRST constraint for a static compact mass. It relates the null oscillator displacement to the Newton potential and proposes stronger holographic and black-hole-information consequences.
comments: "35 pages"
url: https://arxiv.org/abs/2608.18847v1
summary: "A useful formal BRST-closed representative of the Newton constraint sector, but not a derivation of a unique exact source state or of the claimed information encoding."
tags: []
---

# Direct verdict

Not proven by the current derivation; the evidence only shows: in linearized gravity with a prescribed static external source, the authors exhibit a **formal scalar-sector coherent representative** that is annihilated by an asserted sourced BRST operator and whose scalar-constraint expectation value reproduces the Newton Poisson equation after an adopted null-oscillator normalization.

The statement should be rewritten as:

> For a fixed static classical mass profile, a regulated BRST-closed coherent representative can be chosen in the non-radiative scalar constraint sector so that its Hamiltonian-constraint expectation value carries the Newton field.

This is weaker than the title and abstract. The paper does not derive a unique physical state from the full gauge-fixed Hamiltonian, does not establish time evolution or ground-state selection, and does not reconstruct the source's exact quantum state. Two formulas also fail direct checks: the displayed boundary Hamiltonian has the wrong sign for the paper's own Newton-potential convention, and the chosen null-polarization displacement does not itself yield the isotropic spatial-metric one-point function later assigned to the state.

See [[2026_08_20_overview]] for today's serial queue.

# How to read this paper

The technically sound core is Sections 3--9: linearized ADM constraints, scalar projection, null oscillator pair, and the matching of the displacement coefficient to the sourced Hamiltonian constraint. Sections 10--14 add interpretive claims that require separate evidential tiers.

Keep four levels distinct:

1. a classical linearized constraint with an external source;
2. a formal BRST-closed representative in an indefinite-metric Fock space;
3. a regulated physical state or algebraic state after quotienting null directions;
4. a claim that the entire quantum source or black-hole microstate is recoverable from gravity alone.

The paper substantially develops levels 1--2. It gestures at levels 3--4 without proving them.

# Complete source map

## Section 1 — target and claimed implications

The paper proposes the gravitational analogue of Barnich's QED construction. A static source shifts the Hamiltonian constraint, and the corresponding state is sought in the non-radiative scalar sector rather than the transverse-traceless graviton sector.

## Section 2 — Barnich's QED template

A prescribed charge density shifts Gauss's law and hence the BRST charge. A null oscillator pair permits a coherent state whose displacement implements the source term. This construction motivates, but does not automatically determine, the gravitational normalization.

## Section 3 — covariant linearized gravity

The metric is expanded as \(g_{\mu\nu}=\eta_{\mu\nu}+\kappa\psi_{\mu\nu}\), with \(\kappa^2=32\pi G\). The authors specify trace reversal, de Donder gauge fixing, ghosts, source coupling, and a BRST transformation. Source conservation is needed for BRST invariance.

## Section 4 — canonical constraints

The ADM split produces the linear Hamiltonian and momentum constraints. For a static source at rest only the Hamiltonian constraint is shifted. The isotropic classical ansatz is checked against the Newton equation.

## Section 5 — sourced BFV charge

Minimal and nonminimal variables are introduced and the Hamiltonian constraint is shifted by the source. The paper emphasizes that the change is a constraint displacement, not a naive shift of transverse-traceless graviton modes.

## Section 6 — scalar projection

The spatial perturbation is decomposed into transverse-scalar and longitudinal-scalar components. Their combination

\[
\chi=-\alpha+\frac{\beta}{3}
\]

is the scalar seen by the Hamiltonian constraint.

## Section 7 — null oscillator basis

Two scalar projections \(A\) and \(B\) are selected from the covariant graviton oscillators. Each is null under the DeWitt inner product, while \([A,B^\dagger]=1\). The positive-frequency Hamiltonian constraint is proportional to \(A\).

## Section 8 — formal coherent solution

The source coefficient \(q_M(\mathbf k)\) is chosen so that

\[
|M\rangle=\exp\!\left[\int d^3k\,q_M(\mathbf k)B^\dagger(\mathbf k)\right]|0\rangle
\]

is annihilated by the asserted sourced scalar BRST charge.

## Section 9 — Newton matching

Matching the Hamiltonian-constraint expectation value fixes

\[
q_M(\mathbf k)=\frac{2\sqrt{\pi G}\,M\widetilde f(\mathbf k)}{k^{3/2}}.
\]

The scalar constraint then yields

\[
\widetilde\Phi(\mathbf k)=-\frac{4\pi GM}{k^2}\widetilde f(\mathbf k).
\]

## Section 10 — distinction from a classical-background shift

The authors correctly stress that a BRST representative in the constraint sector is not the same operation as replacing the background metric by a classical Newton solution.

## Section 11 — point sources and generalized states

The point-source limit is discussed distributionally. The infrared and ultraviolet behavior of the coherent displacement requires regulators or a generalized representation.

## Section 12 — summary of the construction

The scalar constraint sector is identified as the carrier of the static Newton field.

## Section 13 — dressing norm and corpuscular scaling

The formal mode count behaves as

\[
N_{\rm dress}=\frac{2GM^2}{\pi}\log\frac{\Lambda}{\mu}.
\]

The coefficient follows from the stated Fourier convention, but interpreting a null-sector displacement norm as a physical graviton number requires care.

## Section 14 — holography and black-hole information

The conclusion proposes that asymptotic gravity encodes exact source amplitudes and that Hawking amplitudes depend on the interior state through the exterior gravitational state. No reconstruction theorem or Hawking-amplitude calculation is supplied.

## Appendices

The appendices fix Fourier conventions, coherent-state expectation rules, and the derivation of the conjugate null oscillator \(B^\dagger\).

# Conventions and notation dictionary

- Spacetime signature: mostly plus, \((-+++)\).
- Weak field: \(g_{\mu\nu}=\eta_{\mu\nu}+\kappa\psi_{\mu\nu}\), \(\kappa^2=32\pi G\).
- Spatial metric perturbation: \(h_{ij}=\kappa\gamma_{ij}\) in the canonical discussion.
- Static source: \(\rho(\mathbf x)=M f(\mathbf x)\), with \(\int d^3x\,f=1\).
- Fourier transform: \(\widetilde f(\mathbf k)\) is normalized so that \(\widetilde f(0)=1\).
- Transverse and longitudinal projectors:

\[
\theta_{ij}=\delta_{ij}-\hat k_i\hat k_j,
\qquad
\ell_{ij}=\hat k_i\hat k_j.
\]

- DeWitt bilinear form on spatial symmetric tensors:

\[
s:t=s_{ij}t_{ij}-\frac12 s_{ii}t_{jj}.
\]

- Scalar oscillators:

\[
A=\theta_{ij}a_{ij},
\qquad
B=-\left(\frac14\theta_{ij}+\ell_{ij}\right)a_{ij}.
\]

- Scalar Hamiltonian constraint:

\[
\mathcal H=\partial_i\partial_j\gamma_{ij}-\nabla^2\gamma,
\qquad
\mathcal H_M=\mathcal H-16\pi G\rho.
\]

- Classical Newton convention: \(\Phi(\mathbf x)=-GM/r\) outside a point source.

# Derivation ledger

## 1. Classical constraint

Writing the scalar spatial perturbation in momentum space as

\[
\gamma_{ij}=\alpha\,\theta_{ij}+\beta\left(\ell_{ij}-\frac13\theta_{ij}\right)
\]

gives

\[
\mathcal H(\mathbf k)=2k^2\alpha-\frac23k^2\beta=-2k^2\chi,
\qquad
\chi=-\alpha+\frac\beta3.
\]

For the isotropic Newton ansatz \(\gamma_{ij}=-2\Phi\delta_{ij}\), xAct gives the linearized spatial Ricci scalar

\[
{}^{(3)}R^{(1)}=4\nabla^2\Phi.
\]

Thus \(\mathcal H=16\pi G\rho\) reduces to \(\nabla^2\Phi=4\pi G\rho\).

## 2. Null pair

The projector contractions are

\[
\theta:\theta=0,
\qquad
\ell:\ell=\frac12,
\qquad
\theta:\ell=-1.
\]

For \(t_B=-(\theta/4+\ell)\), one finds

\[
\theta:t_B=1,
\qquad
t_B:t_B=0.
\]

These relations justify \([A,B^\dagger]=1\), \([A,A^\dagger]=[B,B^\dagger]=0\) in the adopted oscillator normalization.

## 3. Constraint displacement

The positive-frequency scalar constraint is written as

\[
\mathcal H^{(+)}(\mathbf k)
=\frac{\kappa k^{3/2}}{\sqrt2}A(\mathbf k).
\]

Using the null commutator, conjugation by the \(B^\dagger\) displacement shifts \(A\) by \(q_M\). Matching both frequency halves to \(16\pi GM\widetilde f\) gives the quoted \(q_M\). Direct simplification yields

\[
2\frac{\kappa k^{3/2}}{\sqrt2}
\frac{2\sqrt{\pi G}M\widetilde f}{k^{3/2}}
-16\pi GM\widetilde f=0.
\]

This verifies the coefficient **after** adopting the paper's positive-frequency split; it does not derive that split from the displayed BFV charge.

## 4. Infrared behavior

For every compact profile with nonzero total mass, \(\widetilde f(0)=1\), hence

\[
\int d^3k\,|q_M|^2
\sim 4\pi\int_0 dk\,k^2\frac{4\pi GM^2}{k^3}
\propto\int_0\frac{dk}{k}.
\]

With the paper's \((2\pi)^{-3}\) measure this becomes

\[
N_{\rm dress}=\frac{2GM^2}{\pi}\log\frac{\Lambda}{\mu}.
\]

Spatial smearing can remove the ultraviolet divergence, but it cannot remove this infrared logarithm. Therefore the claim that a smooth regulated source produces an ordinary Gaussian coherent state is correct only with an additional infrared regulator or in a generalized/algebraic representation.

# Independent audits and failure modes

## The chosen \(B^\dagger\) does not produce the assigned isotropic metric

Take \(\hat{\mathbf k}\) along the third axis. Then

\[
\theta=\operatorname{diag}(1,1,0),
\qquad
\ell=\operatorname{diag}(0,0,1),
\qquad
t_B=\operatorname{diag}\left(-\frac14,-\frac14,-1\right).
\]

The oscillator commutator applies the DeWitt metric,

\[
P(t_B)=t_B-\frac12\delta\,\operatorname{tr}t_B
=\operatorname{diag}\left(\frac12,\frac12,-\frac14\right).
\]

Its traceless anisotropic part is

\[
P(t_B)-\frac13\delta\operatorname{tr}P(t_B)
=\operatorname{diag}\left(\frac14,\frac14,-\frac12\right)\neq0.
\]

Thus the displayed coherent representative has the correct contraction with \(A\) but does not by itself give \(\langle\gamma_{ij}\rangle=-2\Phi\delta_{ij}\). The source obtains the latter by returning to the classical isotropic relation. This is a genuine missing bridge, not merely an omitted numerical check.

## The boundary Hamiltonian sign fails

The conclusion displays

\[
H_{\rm boundary}
=-\frac1{4\pi G}\lim_{r\to\infty}
\int d\Omega\,r^2\partial_r\Phi
\]

and states that it returns \(+E\). But with the paper's convention
\(\Phi=-GE/r\),

\[
-\frac1{4\pi G}(4\pi r^2)\partial_r\left(-\frac{GE}{r}\right)=-E.
\]

The prefactor must be \(+1/(4\pi G)\) to return \(+E\), unless the paper simultaneously reverses the radial orientation or the Newton-potential convention. No such reversal is stated.

## BRST closure does not select a unique state

The source term is written at the BFV-constraint level, but the paper does not explicitly decompose the ghost and constraint operators into the positive/negative-frequency modes used later. The coefficient \(q_M\) is fixed by demanding the classical constraint expectation, not derived directly from the complete gauge-fixed Hamiltonian.

Moreover, adding BRST-exact or constraint-null components can change a representative without changing its physical class. A full claim of “the state” would require at least:

- a specified gauge-fixed Hamiltonian and vacuum;
- the physical inner product or BRST cohomology quotient;
- regulator and limiting prescriptions;
- a demonstration of static time evolution;
- a uniqueness statement modulo BRST-exact vectors.

These ingredients are not supplied.

## The information-reconstruction argument fails as stated

For a joint source--gravity vector

\[
|\Psi\rangle=\sum_n c_n|E_n\rangle_{\rm src}\otimes|g_n\rangle,
\]

tracing over orthogonal source energy states gives

\[
\rho_{\rm grav}=\sum_n|c_n|^2|g_n\rangle\langle g_n|,
\]

not the pure gravity vector \(\sum_n c_n|g_n\rangle\). Relative phases are therefore not recoverable from the gravity subsystem by the proposed Gram-dual construction without an additional isometry, constraint identification, or non-factorization theorem. The paper establishes dependence on total energy and spatial profile at leading order; it does not establish injective encoding of all internal amplitudes.

# Verification record

## Checked

- **Verified:** the official 35-page PDF and complete 1,935-line TeX source were retrieved. Ten representative PDF pages were rendered and matched against the source equations and section structure.
- **Verified:** Mathematica reproduced the DeWitt norms \(\theta:\theta=0\), \(\ell:\ell=1/2\), \(\theta:\ell=-1\), the null-pair relations, the scalar-decomposition identity, the \(q_M\) normalization, and the coefficient \(2GM^2/\pi\) of the logarithmic mode integral.
- **Verified:** xAct/xCoba computed the linearized spatial Ricci scalar of \(g_{ij}=(1-2\epsilon\Phi)\delta_{ij}\) and returned a zero residual against \(4\nabla^2\Phi\).

## Failed

- **Failed:** the selected \(B^\dagger\) polarization does not yield an isotropic spatial-metric one-point function; its anisotropic residual is \(\operatorname{diag}(1/4,1/4,-1/2)\).
- **Failed:** the displayed minus-sign boundary Hamiltonian gives \(-E\), not \(+E\), for \(\Phi=-GE/r\).
- **Failed:** the reduced-state step used for exact information recovery discards source--gravity entanglement and relative phases; it does not follow from the displayed joint state.

## Source-derived

- **Source-derived:** the form of the sourced BFV charge, the asserted positive-frequency BRST operator, and the coherent-state closure relation are reconstructed from the authors' source.
- **Source-derived:** the separation between scalar constraint modes and transverse-traceless radiative modes is the paper's central conceptual result and is consistent with the classical constraint analysis.

## Not independently verified

- **Not verified:** nilpotency and Hermiticity of the full sourced BFV charge with all nonminimal terms under the paper's operator-domain conventions.
- **Not verified:** positivity or normalizability in the physical BRST inner product. The formal displacement is infrared divergent for nonzero total mass.
- **Not verified:** a unique static ground state, its time evolution, or equivalence between different null representatives.
- **Not verified:** any black-hole microstate reconstruction, quantum hair theorem, or Hawking-amplitude dependence. These are proposals rather than calculations in this paper.

# Assumptions and boundaries

- **Assumptions:** four-dimensional Minkowski background, linearized gravity, a conserved prescribed external source, mostly-plus signature, and \(\kappa^2=32\pi G\).
- **Assumptions:** the source is static and has zero momentum density, so only the scalar Hamiltonian constraint is shifted.
- **Assumptions:** finite infrared and ultraviolet regulators whenever the exponential displacement is treated as a Fock vector.
- **Assumptions:** the paper's oscillator normalization and positive-frequency split.
- The exponentiation is nonperturbative only in the coherent displacement inside the quadratic linearized theory. It is not a nonperturbative result in gravitational self-interactions.
- A finite regulated oscillator identity does not establish an infinite-volume Fock state or a complete physical Hilbert-space theorem.

# Relevance to current projects

- \`T1-symmetry\`: the paper sharply distinguishes constraint-sector dressings from transverse-traceless radiation, useful for the vault's gauge-reduction discipline.
- \`T1-boundary\`: its asymptotic Newton data and boundary-energy claim are directly relevant, although the displayed energy sign must be corrected.
- \`T3-math\`: the null-pair construction is a concrete indefinite-metric algebra benchmark.
- The most transferable lesson is negative but useful: satisfying a linearized constraint and reproducing a one-point function do not by themselves identify a unique physical state, a boundary Hamiltonian, or an information-complete encoding map.

# Blocked

- No official retrieval failed: abstract page, PDF, and full TeX source were available.
- The paper supplies no executable symbolic notebook, cohomology computation, regulator implementation, or Hawking-amplitude calculation.
- Independent verification of the full operator claim is blocked by the absence of an explicit gauge-fixed Hamiltonian spectral problem and a fully specified physical inner product/domain.

# Bottom line

The paper contains a worthwhile formal construction: a static Newton source can be represented by a coherent displacement of a null scalar constraint mode rather than by radiative gravitons. The checked algebra supports that limited statement. The stronger language—“the quantum state,” exact source-state encoding, and black-hole information transfer—is not established, and three concrete steps fail or remain missing: the coherent polarization does not reproduce the assigned isotropic metric, the boundary-energy sign is reversed, and the subsystem reconstruction discards entanglement.
