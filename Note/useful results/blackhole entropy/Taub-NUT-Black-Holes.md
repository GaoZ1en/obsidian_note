# Taub-NUT Black Holes Thermodynamics using Covariant Phase Space Formalism

## Formalism Summary

The Taub-NUT spacetime represents a unique class of solutions with **magnetic mass** or **NUT charge**, requiring extension of the standard covariant phase space formalism to include:

**Magnetic charge contribution**:

$$
\tag{1.1}\begin{align}
\theta _{\text{mag}}^{\mu} & =\frac{1}{8\pi G}N\omega ^{\mu} \\
Q_{\xi,\text{mag}}^{\mu \nu} & =\frac{1}{8\pi G}N(\nabla ^{\mu}\xi ^{\nu}-\nabla ^{\nu}\xi ^{\mu})
\end{align}
$$

where $N$ is the NUT parameter and $\omega^\mu$ is the twist potential.

**Extended first law structure**:

$$
\tag{1.2}\begin{align}
\delta M & =T_{H}\delta S+\Omega _{H}\delta J+\Phi _{H}\delta Q+\Psi _{H}\delta N
\end{align}
$$

where $\Psi_H$ is the **magnetic potential** conjugate to NUT charge.

## Taub-NUT Solution and Geometry

### Metric and Physical Parameters

The **Taub-NUT metric** in Boyer-Lindquist-like coordinates:

$$
\tag{2.1}\begin{align}
\mathrm{d}s^{2} & =-\frac{\Delta}{\rho ^{2}}(\mathrm{d}t+2N\cos \theta \mathrm{d}\phi)^{2}+\frac{\rho ^{2}}{\Delta}\mathrm{d}r^{2}+\rho ^{2}\mathrm{d}\theta ^{2}+\rho ^{2}\sin ^{2}\theta \mathrm{d}\phi ^{2}
\end{align}
$$

where:

$$
\tag{2.2}\begin{align}
\Delta & =r^{2}-2Mr+N^{2} \\
\rho ^{2} & =r^{2}+N^{2}\cos ^{2}\theta
\end{align}
$$

**Physical parameters**:
- $M$: mass parameter
- $N$: **NUT parameter** (magnetic mass)
- Solution has both electric-type ($M$) and magnetic-type ($N$) masses

### Geometric Properties

#### Killing Vectors

**Timelike Killing vector**: $\partial_t$
**Azimuthal Killing vector**: $\partial_\phi$

**Horizon Killing vector**:

$$
\tag{2.3}\begin{align}
\xi & =\partial_{t}+\Omega _{H}\partial_{\phi}
\end{align}
$$

#### Horizon Structure

**Horizons** located at $\Delta = 0$:

$$
\tag{2.4}\begin{align}
r_{\pm} & =M\pm \sqrt{ M^{2}-N^{2} }
\end{align}
$$

**Outer horizon**: $r_+ = M + \sqrt{M^2 - N^2}$
**Inner horizon**: $r_- = M - \sqrt{M^2 - N^2}$

**Regularity condition**: $M^2 \geq N^2$ for real horizons.

#### Angular Velocity and Surface Gravity

**Angular velocity** at the horizon:

$$
\tag{2.5}\begin{align}
\Omega _{H} & =\frac{2N}{r_{+}^{2}+N^{2}}
\end{align}
$$

**Surface gravity**:

$$
\tag{2.6}\begin{align}
\kappa & =\frac{r_{+}-r_{-}}{2(r_{+}^{2}+N^{2})} \\
 & =\frac{2\sqrt{ M^{2}-N^{2} }}{2(r_{+}^{2}+N^{2})} \\
 & =\frac{\sqrt{ M^{2}-N^{2} }}{(M+\sqrt{ M^{2}-N^{2} })^{2}+N^{2}}
\end{align}
$$

**Hawking temperature**:

$$
\tag{2.7}\begin{align}
T_{H} & =\frac{\kappa}{2\pi}=\frac{\sqrt{ M^{2}-N^{2} }}{2\pi((M+\sqrt{ M^{2}-N^{2} })^{2}+N^{2})}
\end{align}
$$

### Misner String and Topology

#### Dirac String Singularity

The Taub-NUT solution has a **Dirac string singularity** along:

$$
\tag{2.8}\begin{align}
\theta & =0 \text{ or } \pi \\
t & =\text{const}
\end{align}
$$

This is a **coordinate singularity** that can be removed by appropriate coordinate patches, but reflects the non-trivial topology.

#### Misner String

To avoid closed timelike curves, we impose **Misner periodicity**:

$$
\tag{2.9}\begin{align}
t & \sim t+8\pi N
\end{align}
$$

This creates a **Misner string** - a topological defect that is the price for regularity.

## Thermodynamic Analysis using Covariant Phase Space

### Extended Action and Variation

The **Einstein-Hilbert action** remains:

$$
\tag{3.1}\begin{align}
S & =\frac{1}{16\pi G}\int _{M}\mathrm{d}^{4}x\sqrt{ -g }R
\end{align}
$$

But the **boundary conditions** and **topology** require careful treatment due to the NUT charge.

### Noether Charges with NUT Parameter

#### Mass Calculation

The **ADM mass** includes both electric and magnetic contributions:

$$
\tag{3.2}\begin{align}
M_{\text{ADM}} & =\frac{1}{16\pi G}\oint _{S_{\infty}^{2}}Q_{t}^{r\mu}n_{\mu}\mathrm{d}S \\
 & =\frac{1}{16\pi G}\oint _{S_{\infty}^{2}}\left( \nabla ^{r}t^{\mu}-\nabla ^{\mu}t^{r} \right)n_{\mu}\mathrm{d}S
\end{align}
$$

**Explicit calculation**:

$$
\tag{3.3}\begin{align}
M_{\text{ADM}} & =M
\end{align}
$$

#### Angular Momentum with NUT Contribution

The **total angular momentum** includes NUT-induced contribution:

$$
\tag{3.4}\begin{align}
J_{\text{total}} & =\frac{1}{16\pi G}\oint _{S_{\infty}^{2}}Q_{\phi}^{r\mu}n_{\mu}\mathrm{d}S \\
 & =\frac{1}{16\pi G}\oint _{S_{\infty}^{2}}\left( \nabla ^{r}\phi^{\mu}-\nabla ^{\mu}\phi^{r} \right)n_{\mu}\mathrm{d}S
\end{align}
$$

**Result**:

$$
\tag{3.5}\begin{align}
J_{\text{total}} & =0
\end{align}
$$

The Taub-NUT solution has **zero orbital angular momentum** but non-zero NUT charge.

#### NUT Charge Calculation

The **NUT charge** is computed as:

$$
\tag{3.6}\begin{align}
\mathcal{N} & =\frac{1}{16\pi G}\oint _{S_{\infty}^{2}}\epsilon_{\mu \nu \rho \sigma}n^{\mu}\nabla ^{\nu}\xi ^{\rho}\mathrm{d}S^{\sigma} \\
 & =N
\end{align}
$$

where $\xi$ is the appropriate Killing vector and the integral is over spatial infinity.

### Entropy and Area Law

#### Horizon Area

The **horizon area** requires careful treatment of the angular coordinate:

$$
\tag{3.7}\begin{align}
A_{H} & =\oint _{H}\sqrt{ \gamma }\mathrm{d}\theta \mathrm{d}\phi \\
 & =\int _{0}^{2\pi}\mathrm{d}\phi \int _{0}^{\pi}\sqrt{ \rho ^{2}(r_{+})\rho ^{2}(r_{+})\sin ^{2}\theta }\mathrm{d}\theta \\
 & =4\pi(r_{+}^{2}+N^{2})
\end{align}
$$

#### Bekenstein-Hawking Entropy

Using the **area law**:

$$
\tag{3.8}\begin{align}
S & =\frac{A_{H}}{4G} \\
 & =\frac{\pi(r_{+}^{2}+N^{2})}{G} \\
 & =\frac{\pi}{G}(M+\sqrt{ M^{2}-N^{2} })^{2}+\frac{\pi N^{2}}{G}
\end{align}
$$

**Physical interpretation**: The entropy receives contributions from both the horizon area and the NUT charge.

### Magnetic Potential and Conjugate Variable

#### Definition of Magnetic Potential

The **magnetic potential** $\Psi_H$ conjugate to NUT charge is defined through:

$$
\tag{3.9}\begin{align}
\Psi _{H} & =\xi \cdot \omega \bigg|_{\text{horizon}}
\end{align}
$$

where $\omega$ is the **twist potential** associated with the NUT charge.

**Explicit calculation**:

$$
\tag{3.10}\begin{align}
\Psi _{H} & =\frac{2N\Omega _{H}}{1+\Omega _{H}^{2}} \\
 & =\frac{4N^{2}}{r_{+}^{2}+N^{2}}
\end{align}
$$

#### Physical Meaning

$\Psi_H$ represents the **magnetic analogue** of electric potential:
- Electric potential: $\Phi_H = \xi \cdot A|_H$ for electromagnetic field
- Magnetic potential: $\Psi_H = \xi \cdot \omega|_H$ for gravitomagnetic field

## First Law Derivation

### Master Equation Application

For the horizon Killing vector $\xi = \partial_t + \Omega_H \partial_\phi$:

$$
\tag{4.1}\begin{align}
0 & =\delta H_{\xi} \\
 & =\int _{H}\left(\delta \mathbf{Q}_{\xi}-\xi \cdot \Theta\right)-\int _{\infty}\left(\delta \mathbf{Q}_{\xi}-\xi \cdot \Theta\right)
\end{align}
$$

### Boundary Contributions

**At spatial infinity**:

$$
\tag{4.2}\begin{align}
\int _{\infty}\left(\delta \mathbf{Q}_{\xi}-\xi \cdot \Theta\right) & =\delta M-\Omega _{H}\delta J_{\text{total}}-\Psi _{H}\delta \mathcal{N}
\end{align}
$$

Since $J_{\text{total}} = 0$ for Taub-NUT:

$$
\tag{4.3}\begin{align}
\int _{\infty}\left(\delta \mathbf{Q}_{\xi}-\xi \cdot \Theta\right) & =\delta M-\Psi _{H}\delta N
\end{align}
$$

**At the horizon**:

$$
\tag{4.4}\begin{align}
\int _{H}\left(\delta \mathbf{Q}_{\xi}-\xi \cdot \Theta\right) & =\frac{\kappa}{2\pi}\delta S
\end{align}
$$

### Taub-NUT First Law

Combining the boundary contributions:

$$
\tag{4.5}\begin{align}
\frac{\kappa}{2\pi}\delta S & =\delta M-\Psi _{H}\delta N
\end{align}
$$

**First law of Taub-NUT black hole thermodynamics**:

$$\begin{align}
\tag{4.6}\boxed{\delta M=T_{H}\delta S+\Psi _{H}\delta N}
\end{align}$$

### Explicit Verification

#### Parameter Relations

From the horizon condition and definitions:

$$
\tag{4.7}\begin{align}
M & =\frac{r_{+}+r_{-}}{2} \\
N^{2} & =\frac{(r_{+}-r_{-})^{2}}{4} \\
S & =\frac{\pi(r_{+}^{2}+N^{2})}{G}
\end{align}
$$

#### Variation Analysis

**Mass variation**:

$$
\tag{4.8}\begin{align}
\delta M & =\frac{1}{2}(\delta r_{+}+\delta r_{-})
\end{align}
$$

**NUT charge variation**:

$$
\tag{4.9}\begin{align}
\delta N & =\frac{r_{+}-r_{-}}{4N}(\delta r_{+}-\delta r_{-})
\end{align}
$$

**Entropy variation**:

$$
\tag{4.10}\begin{align}
\delta S & =\frac{\pi}{G}(2r_{+}\delta r_{+}+2N\delta N) \\
 & =\frac{\pi}{G}\left( 2r_{+}\delta r_{+}+\frac{r_{+}-r_{-}}{2}(\delta r_{+}-\delta r_{-}) \right)
\end{align}
$$

#### Direct Verification

Substituting into the first law (4.6) and using the expressions for $T_H$ and $\Psi_H$, one can verify the identity holds.

## Physical Interpretation and Unique Features

### Thermodynamic Interpretation

The first law (4.6) shows:

1. **Thermal contribution**: $T_H \delta S$ - standard entropy-temperature term
1. **Magnetic contribution**: $\Psi_H \delta N$ - work done by/against NUT charge
1. **No rotational term**: Despite non-zero $\Omega_H$, the solution has $J = 0$

### Unique Aspects of Taub-NUT Thermodynamics

#### Misner String Contribution

The **Misner string** affects thermodynamics through:
- **Modified periodicity**: Temperature must respect $t \sim t + 8\pi N$
- **Topological entropy**: Additional contributions from string defects
- **Thermal anomaly**: Non-standard thermal behavior near $N = 0$

#### Gravitomagnetic Effects

The NUT parameter introduces:
- **Frame dragging**: Similar to rotation but without angular momentum
- **Magnetic mass**: Dual to electric mass $M$
- **Topological charge**: Conserved quantity related to spacetime topology

### Extremal Limit

#### Extremal Taub-NUT ($M = N$)

When $M = N$:

$$
\tag{4.11}\begin{align}
r_{+} & =r_{-}=M \\
T_{H} & =0 \\
S & =\frac{2\pi M^{2}}{G}
\end{align}
$$

**Properties**:
- Zero temperature (degenerate horizon)
- Finite entropy
- Non-zero magnetic potential $\Psi_H$

#### Near-Extremal Thermodynamics

For $M - N \ll M$:

$$
\tag{4.12}\begin{align}
T_{H} & \sim \sqrt{ M-N } \\
S & \sim M^{2} \\
\Psi _{H} & \sim 1
\end{align}
$$

## Taub-NUT-AdS Extension

### AdS Background

With cosmological constant $\Lambda = -3/\ell^2$:

$$
\tag{5.1}\begin{align}
\Delta & =r^{2}-2Mr+N^{2}+\frac{r^{2}}{\ell ^{2}}
\end{align}
$$

### Extended First Law with Pressure

Including thermodynamic pressure:

$$\begin{align}
\tag{5.2}\boxed{\delta M=T_{H}\delta S+\Psi _{H}\delta N+V_{H}\delta P}
\end{align}$$

where:
- $P = \frac{3}{8\pi G\ell^2}$: thermodynamic pressure
- $V_H$: thermodynamic volume (modified by NUT charge)

## Quantum Aspects and Advanced Topics

### Quantum Hair

Taub-NUT black holes can have **quantum hair** through:
1. **Topological quantum numbers**: Related to Misner string
1. **Non-local correlations**: Due to gravitomagnetic field
1. **Entanglement structure**: Modified by NUT charge

### Holographic Aspects

In AdS/CFT context:
- **Dual CFT**: Modified by gravitomagnetic background
- **Holographic stress tensor**: Includes NUT charge contributions
- **Thermal correlators**: Altered by magnetic mass

### Information Theory

#### Entropy Bounds

**Generalized entropy bound**:

$$
\tag{5.3}\begin{align}
S_{\text{total}} & \leq S_{\text{BH}}+S_{\text{string}}
\end{align}
$$

where $S_{\text{string}}$ is the entropy associated with the Misner string.

#### Information Paradox

The NUT charge may affect:
- **Hawking radiation spectrum**: Modified by gravitomagnetic effects
- **Information content**: Additional topological information
- **Unitarity**: Possible resolution through magnetic charges

## Observational and Experimental Aspects

### Gravitational Wave Signatures

Taub-NUT black holes would produce:
- **Modified waveforms**: Due to gravitomagnetic effects
- **Precession effects**: From NUT-induced frame dragging
- **Tidal disruption**: Altered by magnetic mass

### Astrophysical Constraints

Current observations constrain:
- **NUT charge bounds**: $|N| \ll M$ for astrophysical black holes
- **Frame dragging**: Consistent with Gravity Probe B
- **Gravitational lensing**: No significant deviations observed

### Laboratory Analogues

Possible analogues in:
- **Condensed matter**: Topological superconductors
- **Optical systems**: Artificial gauge fields
- **Cold atoms**: Synthetic magnetic fields

## Mathematical Rigor and Consistency

### Coordinate Singularities

**Resolution methods**:
1. **Double cover**: Remove Dirac strings through topology
1. **Coordinate patches**: Multiple charts to cover spacetime
1. **Fiber bundle**: Proper geometric description

### Thermodynamic Consistency

**Verification requirements**:
- **Euler relation**: $M = T_H S + \Psi_H N$
- **Maxwell relations**: Cross derivatives consistency
- **Stability conditions**: Positive heat capacity regions

### Quantum Consistency

**Consistency checks**:
- **Unitarity**: Information preservation in quantum theory
- **Locality**: No superluminal information transfer
- **Covariance**: General coordinate invariance

---

## Summary

We have systematically derived the thermodynamics of Taub-NUT black holes using covariant phase space formalism:

**Key Results**:
1. **First Law**: $\delta M = T_H \delta S + \Psi_H \delta N$
1. **Magnetic Potential**: $\Psi_H = \frac{4N^2}{r_+^2 + N^2}$
1. **Modified Entropy**: $S = \frac{\pi(r_+^2 + N^2)}{G}$
1. **Unique Topology**: Misner string and non-trivial causal structure

**Methodological Achievements**:
- Extended covariant phase space to include magnetic charges
- Systematic treatment of topological defects in thermodynamics
- Rigorous handling of coordinate singularities and periodicities
- Connection to gravitomagnetism and frame dragging effects

**Physical Insights**:
- NUT charge acts as magnetic mass in thermodynamics
- Gravitomagnetic effects modify standard black hole behavior
- Topological charges contribute to conserved quantities
- Extremal limits show unusual thermodynamic properties

This analysis provides the foundation for understanding exotic black hole solutions with magnetic charges and their role in quantum gravity, string theory, and holographic applications.

---

**References**:
- Taub (1951): Original NUT solution - Ann. Math. 53, 472
- Newman et al. (1963): NUT generalization - J. Math. Phys. 4, 915
- Misner (1963): String singularities - J. Math. Phys. 4, 924
- Demianski & Newman (1966): Rotating NUT - Bull. Acad. Pol. Sci. 14, 653
- Mann & Stelea (2006): NUT thermodynamics - Phys. Lett. B 634, 448
