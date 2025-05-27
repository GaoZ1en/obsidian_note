# Quantum Noether's Theorem

Noether's theorem, fundamental in classical mechanics, extends elegantly but non-trivially to quantum theory, acquiring additional features in the quantum realm.

## Classical Review
Classically, Noether's theorem states that continuous symmetries of the action imply conserved currents:
$$\partial_\mu j^\mu = 0$$

Where for a symmetry transformation $\phi \to \phi + \epsilon\delta\phi$ with invariant action, the conserved current is:
$$j^\mu = \frac{\partial \mathcal{L}}{\partial(\partial_\mu\phi)}\delta\phi - K^\mu$$
(with $K^\mu$ the potential boundary term)

## Quantum Formulation

In quantum field theory, Noether's theorem manifests primarily in three ways:

### 1. Operator Formalism
The conserved charges become operators that generate the symmetry transformations:
$$\hat{Q} = \int d^{d-1}x\, \hat{j}^0(x)$$

These charge operators act on field operators via commutation relations:
$$\delta\hat{\phi}(x) = i\epsilon[\hat{Q},\hat{\phi}(x)]$$

Conservation implies these operators are time-independent:
$$\frac{d\hat{Q}}{dt} = i[\hat{H},\hat{Q}] = 0$$

### 2. Ward-Takahashi Identities
The most profound quantum manifestation appears in correlation functions. For a symmetry transformation, the corresponding Ward identity reads:
$$\sum_i \langle\phi_1(x_1)...\delta\phi_i(x_i)...\phi_n(x_n)\rangle = -i\int d^dy\, \partial_\mu^y\langle j^\mu(y)\phi_1(x_1)...\phi_n(x_n)\rangle$$

These identities constrain the structure of quantum amplitudes and represent the quantum version of conservation laws.

### 3. Functional Approach
In the path integral formulation:
$$\int \mathcal{D}\phi\, e^{iS[\phi]} \delta S[\phi] \mathcal{O}[\phi] = \int \mathcal{D}\phi\, e^{iS[\phi]} \delta\mathcal{O}[\phi]$$

## Quantum Distinctions

Several features distinguish the quantum version:

1. **Anomalies**: Quantum fluctuations can break classical symmetries, producing anomalous terms:
   $$\partial_\mu \hat{j}^\mu = \mathcal{A} \neq 0$$
   Famous examples include the chiral anomaly in QED and conformal anomalies.

2. **Operator Ordering**: Defining charge operators requires careful attention to operator ordering and renormalization.

3. **Spontaneous Symmetry Breaking**: Systems may have symmetric Lagrangians but asymmetric ground states, leading to Goldstone bosons.

## Applications

The quantum Noether theorem underpins fundamental aspects of QFT:

- **Gauge Theories**: Ward-Takahashi identities ensure gauge invariance of physical observables
- **Renormalization**: Symmetry constraints guide counterterm structure
- **Non-perturbative Relations**: Current algebra relations derived from symmetries

## Historical Context
Ward (1950) ^cite{Ward1950} and Takahashi (1957) ^cite{Takahashi1957} first derived the identities for QED, with Adler, Bell, and Jackiw expanding to anomalies in the 1960s [[arXiv:1703.09993]].

## Open Problems
- [[Reconciling anomalies in quantum gravity theories]]
- [[Generalized symmetries (higher-form, non-invertible) and their quantum conservation laws]]
- [[Symmetry constraints on non-perturbative dualities]]

The quantum version of Noether's theorem remains central to understanding fundamental interactions and has profound connections to the structure of quantum field theory.

# Classical Anomalies and Quantization of Anomalous Noether Charges

## Classical Anomalies: Definition

A classical anomaly refers to the breakdown of a symmetry at the classical level of a field theory, in contrast to quantum anomalies which emerge through quantum effects. Classical anomalies occur when:

- A symmetry of the action doesn't fully translate to a symmetry of the equations of motion
- Boundary conditions or constraints explicitly break a symmetry 
- Singular field configurations obstruct the realization of symmetry transformations

Mathematically, if a classical current $j^{\mu}$ associated with a symmetry satisfies:

$$\partial_{\mu}j^{\mu} = A_{\text{class}} \neq 0$$

where $A_{\text{class}}$ is non-vanishing, we have a classical anomaly.

## Quantization of Anomalous Noether Charges

When we promote classically anomalous Noether charges to quantum operators, several important consequences follow:

1. **Inheritance of non-conservation**: The quantum operator $\hat{J}$ corresponding to the classically anomalous charge inherits the non-conservation property:

   $$\partial_{\mu}\hat{j}^{\mu} = \hat{A}_{\text{class}} + \hat{A}_{\text{quant}}$$

   where $\hat{A}_{\text{quant}}$ represents any additional quantum anomalies that may arise.

2. **Modified Ward identities**: The quantum correlation functions satisfy modified Ward identities that incorporate the classical anomaly term.

3. **Potential inconsistencies**: If the anomalous symmetry is a gauge symmetry, the theory may become inconsistent unless the total anomaly cancels through some mechanism.

## Examples of Classical Anomalies

### Conformal Symmetry Breaking

A simple example occurs in a classically conformal field theory with an explicit mass term:

$$\mathcal{L} = -\frac{1}{2}(\partial_{\mu}\phi)^2 - \frac{1}{2}m^2\phi^2$$

The mass term creates a classical anomaly in the trace of the energy-momentum tensor:
$$T^{\mu}_{\mu} = m^2\phi^2 \neq 0$$

### Improper Gauge Fixing

In gauge theories, certain gauge-fixing conditions can introduce classical "anomalies" that disappear when physical quantities are computed correctly.

## Distinction from Quantum Anomalies

Unlike quantum anomalies (such as the chiral anomaly in QFT), which represent fundamental obstructions arising from regularization and renormalization procedures, classical anomalies are generally considered "fake" anomalies that can be resolved through proper formulation of the theory.

[[Quantum Anomalies]] | [[Noether's Theorem]] | [[Ward Identities]]