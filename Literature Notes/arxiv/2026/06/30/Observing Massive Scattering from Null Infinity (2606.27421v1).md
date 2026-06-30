---
paper id: 2606.27421v1
title: Observing Massive Scattering from Null Infinity
authors:
  - Walker Melton
  - Kyrill Michaelsen
  - Romain Ruzziconi
publication date: 2026-06-25T18:00:00
abstract: |-
  The paper explains how massive external states, which reach timelike rather than null infinity, can still be probed at late null infinity through the soft gravitational field. Continuity between the boundary of timelike infinity and the future boundary of null infinity makes the late Bondi mass aspect a detector of massive scattering data. The same observable is interpreted in the Carrollian stress-tensor language, where Ward identities constrain the correlators visible at null infinity.
comments: "33 pages, 2 figures"
url: https://arxiv.org/abs/2606.27421v1
summary: "Massive scattering data are encoded in the late Bondi mass aspect through matching from timelike infinity to null infinity."
tags: []
---

Back to [[2026_06_30_overview]].

# Timelike data matched to late null infinity

The technical problem is that massive particles do not arrive at $\mathscr I^+$, while the soft gravitational field they produce does. The paper uses Beig-Schmidt coordinates near timelike infinity,

$$
X^\mu=\tau \hat x^\mu ,
$$

and expands the massive scalar stress tensor in inverse powers of $\tau$. The leading gravitational datum is the hyperbolic scalar $\sigma$ on the unit timelike hyperboloid. In the vacuum region it obeys

$$
(\hat\nabla^2-3)\sigma=0.
$$

The matching condition identifies the large-radius boundary of this timelike datum with the late retarded-time limit of the Bondi mass aspect. In the notation used in the paper, the boundary behavior has the form

$$
\sigma=-2m_B^{(0)} e^{-3\rho}+\cdots ,
$$

so the coefficient of the exponentially decaying hyperbolic mode is the same information as the leading late-time Bondi mass aspect.

# Massive scalar stress tensor as the source of sigma

For a massive scalar, the stress tensor has a leading timelike-infinity piece

$$
T_{\tau\tau}=\tau^{-3}T_{\tau\tau}^{(3)}+\cdots .
$$

The hyperbolic scalar equation becomes a sourced equation,

$$
(\hat\nabla^2-3)\sigma=4\pi G_N T_{\tau\tau}^{(3)}.
$$

The solution is written with a bulk-to-bulk Green function on the hyperboloid, and the boundary limit gives a bulk-to-boundary kernel $G_{Bb}$. This turns the late Bondi mass aspect into an operator built from the massive creation and annihilation operators.

The detector operator emphasized by the paper is

$$
M(n)=\frac{1}{4\pi G_N}m_B^{(0)}(n)
     =-\frac12\int d^3\hat x\,\sqrt h\,G_{Bb}(n;\hat x)T_{\tau\tau}^{(3)}(\hat x).
$$

For the free massive field this becomes schematically

$$
M(n)=-\frac{m^3}{32\pi^3}\int d^3\hat x\,\sqrt h\,G_{Bb}(n;\hat x)\,
b^\dagger(\hat x)b(\hat x),
$$

up to the paper's normalization conventions for hyperbolic modes.

# Bondi mass aspect as the detector operator

The important structural point is that $M(n)$ is diagonal in the massive out-state basis but lives at null infinity. Thus null infinity does not need to receive the massive particles themselves; it receives the gravitational memory of their energy distribution.

For scattering, the late null-infinity correlators of $M(n)$ become weighted sums over massive final states. In the in-in language, an $n$-point correlator has the form of a sum over products of scattering amplitudes weighted by the corresponding detector kernels. The two-point function contains the expected disconnected term and the commutator/contact contribution that follows from the operator nature of the detector.

This makes $M(n)$ closer to an inclusive detector observable than to a hard particle observable. The construction is useful because it extracts massive scattering information with an asymptotic operator that belongs to the same null-boundary algebra as ordinary soft radiation data.

# Carrollian stress tensor constraints

The paper then rewrites the relevant null-infinity data as components of a Carrollian stress tensor. The matrix of boundary data includes the Bondi mass aspect $M$, angular-momentum aspect $N_A$, and a traceless tensor $A^A{}_B$ built from radiative data.

The Ward identities strongly constrain two-point functions. In the vacuum sector many correlators involving $M$ and $N_A$ vanish, while the radiative tensor component can have a nonzero two-point function. This is why the massive-detector interpretation is not just a free choice of language: the Carrollian Ward identities separate the late massive-sector signal from ordinary radiative correlations.

For the vault's null-boundary work, the useful lesson is that the same late Bondi coefficient can be read in two ways:

$$
\text{timelike massive stress tensor source}
\quad\longleftrightarrow\quad
\text{Carrollian boundary stress-tensor component}.
$$

# In-in correlators as weighted cross sections

The in-in formulas organize the detector correlators as inclusive cross-section data. The source-derived chain is:

1. Write $M(n)$ as a hyperbolic integral of $T_{\tau\tau}^{(3)}$.
2. Insert complete massive out-states.
3. Use scattering amplitudes to express the resulting expectation values.
4. Interpret the kernels $G_{Bb}$ as angular weights measured at late null infinity.

This is a concrete mechanism for recovering information about massive scattering from null infinity. It is not a new charge algebra, but it is a useful bridge between massive scattering, null boundary observables, and Carrollian Ward identities.

# Use in null-boundary notes

This paper is most useful as a model for detector observables at null infinity. It can be cited when a note needs an explicit example where data from timelike infinity are represented by null-boundary fields.

The transfer is technical but not immediate for CPS work. The construction gives operators and correlators, not a symplectic form or Hamiltonian generator. Its best use is therefore as a boundary-observable example in notes about null infinity, Carrollian stress tensors, or massive scattering.

# Verification boundary

The decomposition above is source-derived from the official arXiv TeX source. I did not independently rederive the hyperbolic Green function normalization or the scattering-amplitude completeness formulas. The formulas most likely to need future checking before reuse are the precise coefficient in the free-field expression for $M(n)$ and the contact term in the two-point in-in correlator.
