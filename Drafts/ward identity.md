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