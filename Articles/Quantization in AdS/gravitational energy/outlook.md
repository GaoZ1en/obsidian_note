---
title: Outlook on gravitational energy and modular Hamiltonians
date: 2026-06-02
summary: "Outlines a tentative route from local representatives of gravitational energy in global AdS3 to boundary-graviton quantization and JLMS-type modular Hamiltonian formulas."
---

# Outlook on gravitational energy and modular Hamiltonians

The perturbative setup in `Articles/Quantization in AdS3/gravitational energy/perturbation.md` and the naive bulk-boundary identification in `Articles/Quantization in AdS3/gravitational energy/naive generalization.md` suggest a working interpretation of second-order gravity in global AdS$_3$.

The basic point is not that pure three-dimensional Einstein gravity has local propagating gravitons. It does not. Rather, the first-order Brown-Henneaux boundary gravitons can be represented by bulk metric perturbations $h^{(1)}_{\mu\nu}$, and their quadratic backreaction is encoded in the second-order equation

$$
\mathcal{E}^{(1)}_{\mu\nu}[h^{(2)}]
=
T_{\mu\nu}
-\mathcal{E}^{(2)}_{\mu\nu}[h^{(1)},h^{(1)}].
$$

This motivates the local representative

$$
T^{\mathrm{grav}}_{\mu\nu}[h^{(1)}]
:=
-\mathcal{E}^{(2)}_{\mu\nu}[h^{(1)},h^{(1)}].
$$

This object should not be treated as a gauge-invariant local stress tensor. It is a convenient representative of the quadratic gravitational energy density in a chosen perturbative description. The physical quantities are the integrated charges and canonical energies obtained from it.

## Local representative and charge

For a global AdS$_3$ Killing field or an allowed Brown-Henneaux asymptotic Killing field $\xi^\mu$, define the quadratic gravitational charge by

$$
H^{\mathrm{grav}}_\xi[h^{(1)}]
=
\int_\Sigma \mathrm{d}^2x\sqrt{\sigma^{(0)}}\,
\tau^{(0)\mu}\xi^\nu
T^{\mathrm{grav}}_{\mu\nu}[h^{(1)}].
$$

Equivalently,

$$
H^{\mathrm{grav}}_\xi[h^{(1)}]
=
-\int_\Sigma \mathrm{d}^2x\sqrt{\sigma^{(0)}}\,
\tau^{(0)\mu}\xi^\nu
\mathcal{E}^{(2)}_{\mu\nu}[h^{(1)},h^{(1)}].
$$

The source for $h^{(2)}_{\mu\nu}$ is then

$$
\mathcal{T}^{(2)}_{\mu\nu}
=T_{\mu\nu}+T^{\mathrm{grav}}_{\mu\nu}[h^{(1)}],
$$

so the second-order boundary charge of $h^{(2)}_{\mu\nu}$ can be interpreted as the sum of matter energy and quadratic gravitational energy.

## Quantization of boundary gravitons

The first-order perturbation can be expanded in the same basis of linearized AdS$_3$ gravity modes used in the existing `linearized gravity` notes:

$$
h^{(1)}_{\mu\nu}
=
\sum_n
\left(
a_{L,n}h_{L,n,\mu\nu}
+a_{R,n}h_{R,n,\mu\nu}
+a^\dagger_{L,n}h^*_{L,n,\mu\nu}
+a^\dagger_{R,n}h^*_{R,n,\mu\nu}
\right).
$$

After quantization, $H^{\mathrm{grav}}_\xi$ becomes a quadratic operator in the oscillator modes,

$$
H^{\mathrm{grav}}_\xi
\sim
\sum_{m,n}
a^\dagger_m\mathcal{K}^{(\xi)}_{mn}a_n,
$$

with the kernel determined by the Killing field or asymptotic symmetry generator $\xi^\mu$. For $\xi=\partial_t$ and $\xi=\partial_\phi$, this should reproduce the energy and angular momentum operators of the boundary graviton sector. For asymptotic conformal generators, the same construction should connect to the Virasoro charges.

This gives a practical meaning to the local representative $T^{\mathrm{grav}}_{\mu\nu}$: it is a bulk density whose integrated charge reproduces the quadratic Hamiltonian of the quantized boundary-graviton degrees of freedom.

## Modular Hamiltonian

For a boundary interval $A$, the vacuum modular flow is generated in the bulk by an AdS-Rindler Killing field $\xi_A^\mu$ preserving the corresponding entanglement wedge. The gravitational contribution to the modular Hamiltonian should then be represented semiclassically by

$$
K^{\mathrm{grav}}_A
\sim
H^{\mathrm{grav}}_{\xi_A}[h^{(1)}].
$$

In covariant phase-space language, the more invariant object is the canonical energy

$$
\mathcal{W}_{\Sigma_A}[h^{(1)};\xi_A]
=
\int_{\Sigma_A}
\omega\left(
g^{(0)};
h^{(1)},\mathcal{L}_{\xi_A}h^{(1)}
\right).
$$

Thus the local expression

$$
\int_{\Sigma_A}
\sqrt{\sigma^{(0)}}\,\tau^{(0)\mu}\xi_A^\nu
T^{\mathrm{grav}}_{\mu\nu}[h^{(1)}]
$$

should be viewed as a representative of the same quadratic canonical energy, modulo boundary terms and gauge choices.

This is the point at which the construction should connect to a JLMS-type formula,

$$
K^{\mathrm{CFT}}_A
=
\frac{\hat A_{\gamma_A}}{4G_N}
+K^{\mathrm{bulk}}_a
+\cdots .
$$

For pure AdS$_3$ gravity, the bulk modular Hamiltonian contains no local propagating graviton sector in the usual higher-dimensional sense. Instead, the gravitational contribution is carried by boundary gravitons and edge-mode data. The quadratic charge $H^{\mathrm{grav}}_{\xi_A}$ is the natural candidate for the semiclassical gravitational part of this modular Hamiltonian.

## Working picture

The proposed interpretation is:

- $h^{(1)}_{\mu\nu}$ is the linear boundary-graviton representative in the bulk.
- $T^{\mathrm{grav}}_{\mu\nu}=-\mathcal{E}^{(2)}_{\mu\nu}[h^{(1)},h^{(1)}]$ is a local representative of its quadratic gravitational energy.
- $h^{(2)}_{\mu\nu}$ is the second-order backreaction sourced by matter plus this quadratic gravitational energy.
- Integrated charges of $T^{\mathrm{grav}}_{\mu\nu}$ reproduce the quadratic Hamiltonians of the quantized boundary-graviton sector.
- For modular flow, the same charge should match the canonical-energy contribution entering a JLMS-type modular Hamiltonian relation.

The useful slogan is:

$$
\text{local representative}
\quad\longrightarrow\quad
\text{canonical energy}
\quad\longrightarrow\quad
\text{modular Hamiltonian}.
$$

This keeps the local description as a calculational device while preserving the gauge-invariant meaning of the final charges.
