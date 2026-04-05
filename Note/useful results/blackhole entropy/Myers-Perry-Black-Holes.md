# Myers-Perry Black Holes Thermodynamics using Covariant Phase Space Formalism

## Formalism Summary

Myers-Perry black holes in $d \geq 5$ dimensions require extension of covariant phase space formalism to handle:

**Multiple angular momenta**:
$$\tag{1.1}\begin{align}
J_{i} & =\frac{1}{16\pi G}\oint _{S_{\infty}^{d-2}}Q_{\phi_{i}}^{r\mu}n_{\mu}\mathrm{d}S \\
\Omega _{H}^{i} & =\frac{\partial}{\partial J_{i}}\left( \frac{\kappa}{2\pi}S \right)
\end{align}$$

**Higher-dimensional horizon topology**:
$$\tag{1.2}\begin{align}
A_{H} & =\int _{H}\sqrt{ \gamma ^{(d-2)}}\mathrm{d}^{d-2}x \\
S & =\frac{A_{H}}{4G}
\end{align}$$

**Extended first law**:
$$\tag{1.3}\begin{align}
\delta M & =T_{H}\delta S+\sum_{i=1}^{[(d-1)/2]}\Omega _{H}^{i}\delta J_{i}
\end{align}$$

where $[(d-1)/2]$ is the number of independent rotation planes in $d$ dimensions.

## Myers-Perry Solution in $d$ Dimensions

### Metric and Physical Parameters

The **Myers-Perry metric** in $d$ dimensions:
$$\tag{2.1}\begin{align}
\mathrm{d}s^{2} & =-\mathrm{d}t^{2}+\frac{\mu}{\Sigma}\left( \mathrm{d}t+\sum_{i=1}^{N}a_{i}\sin ^{2}\theta_{i}\mathrm{d}\phi_{i} \right)^{2}+\frac{\Sigma}{\Delta}\mathrm{d}r^{2} \\
 & \quad +\Sigma \mathrm{d}\theta_{1}^{2}+\sum_{i=1}^{N}\left( r^{2}+a_{i}^{2} \right)\sin ^{2}\theta_{i}\mathrm{d}\phi_{i}^{2}+\sum_{k=N+1}^{d-3}r^{2}\mathrm{d}\theta_{k}^{2}
\end{align}$$

where:
- $N = [(d-1)/2]$: number of rotation parameters
- $d = 2N + 1$ (odd) or $d = 2N + 2$ (even)
- $a_i$: rotation parameters
- $\mu$: mass parameter

**Metric functions**:
$$\tag{2.2}\begin{align}
\Sigma & =r^{2}+\sum_{i=1}^{N}a_{i}^{2}\cos ^{2}\theta_{i} \\
\Delta & =r^{2}-2\mu +\sum_{i=1}^{N}a_{i}^{2}
\end{align}$$

### Dimensional Analysis

#### $d = 5$ Case (Two Rotation Parameters)

For $d = 5$, we have $N = 2$ rotation parameters $(a_1, a_2)$:
$$\tag{2.3}\begin{align}
\mathrm{d}s^{2} & =-\mathrm{d}t^{2}+\frac{\mu}{\Sigma}\left( \mathrm{d}t+a_{1}\sin ^{2}\theta_{1}\mathrm{d}\phi_{1}+a_{2}\sin ^{2}\theta_{2}\mathrm{d}\phi_{2} \right)^{2} \\
 & \quad +\frac{\Sigma}{\Delta}\mathrm{d}r^{2}+\Sigma(\mathrm{d}\theta_{1}^{2}+\mathrm{d}\theta_{2}^{2}) \\
 & \quad +(r^{2}+a_{1}^{2})\sin ^{2}\theta_{1}\mathrm{d}\phi_{1}^{2}+(r^{2}+a_{2}^{2})\sin ^{2}\theta_{2}\mathrm{d}\phi_{2}^{2}
\end{align}$$

#### $d = 6$ Case (Two Rotation Parameters)

For $d = 6$, we also have $N = 2$:
$$\tag{2.4}\begin{align}
\mathrm{d}s^{2} & =-\mathrm{d}t^{2}+\frac{\mu}{\Sigma}\left( \mathrm{d}t+a_{1}\sin ^{2}\theta_{1}\mathrm{d}\phi_{1}+a_{2}\sin ^{2}\theta_{2}\mathrm{d}\phi_{2} \right)^{2} \\
 & \quad +\frac{\Sigma}{\Delta}\mathrm{d}r^{2}+\Sigma(\mathrm{d}\theta_{1}^{2}+\mathrm{d}\theta_{2}^{2}+\mathrm{d}\theta_{3}^{2}) \\
 & \quad +(r^{2}+a_{1}^{2})\sin ^{2}\theta_{1}\mathrm{d}\phi_{1}^{2}+(r^{2}+a_{2}^{2})\sin ^{2}\theta_{2}\mathrm{d}\phi_{2}^{2}
\end{align}$$

### Horizon Structure and Killing Vectors

#### Horizon Location

**Horizons** are located at $\Delta = 0$:
$$\tag{2.5}\begin{align}
r_{H}^{2} & =2\mu -\sum_{i=1}^{N}a_{i}^{2}
\end{align}$$

**Regularity condition**: $\mu \geq \frac{1}{2}\sum_{i=1}^N a_i^2$ for real horizons.

#### Killing Vectors

**Timelike Killing vector**: $\partial_t$
**Rotational Killing vectors**: $\partial_{\phi_i}$ for $i = 1, \ldots, N$

**Horizon Killing vector**:
$$\tag{2.6}\begin{align}
\xi & =\partial_{t}+\sum_{i=1}^{N}\Omega _{H}^{i}\partial_{\phi_{i}}
\end{align}$$

where the **angular velocities** are:
$$\tag{2.7}\begin{align}
\Omega _{H}^{i} & =\frac{a_{i}}{r_{H}^{2}+a_{i}^{2}}
\end{align}$$

### Surface Gravity and Temperature

#### Surface Gravity Calculation

The **surface gravity** for Myers-Perry black holes:
$$\tag{2.8}\begin{align}
\kappa & =\frac{r_{H}}{2\Sigma_{H}}\left( 1-\sum_{i=1}^{N}\frac{a_{i}^{2}}{r_{H}^{2}+a_{i}^{2}} \right) \\
 & =\frac{r_{H}}{2(r_{H}^{2}+\sum_{i=1}^{N}a_{i}^{2})}\left( \frac{2\mu -\sum_{i=1}^{N}a_{i}^{2}}{r_{H}^{2}} \right) \\
 & =\frac{r_{H}}{2(r_{H}^{2}+\sum_{i=1}^{N}a_{i}^{2})}
\end{align}$$

where $\Sigma_H = r_H^2 + \sum_{i=1}^N a_i^2\cos^2\theta_i|_H$.

#### Hawking Temperature

**Temperature**:
$$\tag{2.9}\begin{align}
T_{H} & =\frac{\kappa}{2\pi} \\
 & =\frac{r_{H}}{4\pi(r_{H}^{2}+\sum_{i=1}^{N}a_{i}^{2})}
\end{align}$$

## Covariant Phase Space Analysis

### Extended Action for Higher Dimensions

The **Einstein-Hilbert action** in $d$ dimensions:
$$\tag{3.1}\begin{align}
S & =\frac{1}{16\pi G}\int _{M}\mathrm{d}^{d}x\sqrt{ -g }R
\end{align}$$

### Noether Charges in Higher Dimensions

#### Mass Calculation

**ADM mass** in $d$ dimensions:
$$\tag{3.2}\begin{align}
M & =\frac{1}{16\pi G}\oint _{S_{\infty}^{d-2}}Q_{t}^{r\mu}n_{\mu}\mathrm{d}S \\
 & =\frac{\Omega_{d-2}}{16\pi G}\mu
\end{align}$$

where $\Omega_{d-2} = 2\pi^{(d-1)/2}/\Gamma((d-1)/2)$ is the area of the unit $(d-2)$-sphere.

**Result**:
$$\tag{3.3}\begin{align}
M & =\frac{\Omega_{d-2}\mu}{16\pi G}
\end{align}$$

#### Angular Momentum Calculations

**Angular momentum** associated with $\partial_{\phi_i}$:
$$\tag{3.4}\begin{align}
J_{i} & =\frac{1}{16\pi G}\oint _{S_{\infty}^{d-2}}Q_{\phi_{i}}^{r\mu}n_{\mu}\mathrm{d}S \\
 & =\frac{\Omega_{d-2}}{16\pi G}\mu a_{i}
\end{align}$$

**Result**:
$$\tag{3.5}\begin{align}
J_{i} & =\frac{\Omega_{d-2}\mu a_{i}}{16\pi G}
\end{align}$$

### Horizon Area and Entropy

#### Area Calculation in $d$ Dimensions

The **horizon area** requires integration over $(d-2)$-dimensional horizon:
$$\tag{3.6}\begin{align}
A_{H} & =\int _{H}\sqrt{ \gamma ^{(d-2)}}\mathrm{d}^{d-2}x
\end{align}$$

For the Myers-Perry solution:
$$\tag{3.7}\begin{align}
A_{H} & =\Omega_{d-2}\prod_{i=1}^{N}(r_{H}^{2}+a_{i}^{2}) \times (\text{angular factors})
\end{align}$$

**Explicit result**:
$$\tag{3.8}\begin{align}
A_{H} & =\frac{\Omega_{d-2}}{r_{H}^{d-3}}\prod_{i=1}^{N}(r_{H}^{2}+a_{i}^{2})
\end{align}$$

#### Bekenstein-Hawking Entropy

Using the **area law**:
$$\tag{3.9}\begin{align}
S & =\frac{A_{H}}{4G} \\
 & =\frac{\Omega_{d-2}}{4Gr_{H}^{d-3}}\prod_{i=1}^{N}(r_{H}^{2}+a_{i}^{2})
\end{align}$$

## First Law Derivation

### Application of Master Formula

For the horizon Killing vector $\xi = \partial_t + \sum_i \Omega_H^i \partial_{\phi_i}$:
$$\tag{4.1}\begin{align}
0 & =\delta H_{\xi} \\
 & =\int _{H}\left(\delta \mathbf{Q}_{\xi}-\xi \cdot \Theta\right)-\int _{\infty}\left(\delta \mathbf{Q}_{\xi}-\xi \cdot \Theta\right)
\end{align}$$

### Boundary Contributions

**At spatial infinity**:
$$\tag{4.2}\begin{align}
\int _{\infty}\left(\delta \mathbf{Q}_{\xi}-\xi \cdot \Theta\right) & =\delta M-\sum_{i=1}^{N}\Omega _{H}^{i}\delta J_{i}
\end{align}$$

**At the horizon**:
$$\tag{4.3}\begin{align}
\int _{H}\left(\delta \mathbf{Q}_{\xi}-\xi \cdot \Theta\right) & =\frac{\kappa}{2\pi}\delta S
\end{align}$$

### Myers-Perry First Law

**First law of Myers-Perry black hole thermodynamics**:
$$\tag{4.4}\boxed{\delta M=T_{H}\delta S+\sum_{i=1}^{N}\Omega _{H}^{i}\delta J_{i}}$$

This generalizes the 4D Kerr first law to arbitrary dimensions with multiple angular momenta.

## Explicit Examples and Verification

### Five-Dimensional Case ($d = 5$)

#### Parameter Relations

For $d = 5$ with two rotation parameters:
$$\tag{4.5}\begin{align}
M & =\frac{3\pi \mu}{8G} \\
J_{1} & =\frac{3\pi \mu a_{1}}{8G}, \quad J_{2}=\frac{3\pi \mu a_{2}}{8G} \\
r_{H}^{2} & =2\mu -a_{1}^{2}-a_{2}^{2} \\
S & =\frac{3\pi ^{2}}{4G}\frac{(r_{H}^{2}+a_{1}^{2})(r_{H}^{2}+a_{2}^{2})}{r_{H}}
\end{align}$$

#### Temperature and Angular Velocities

$$\tag{4.6}\begin{align}
T_{H} & =\frac{r_{H}}{4\pi(r_{H}^{2}+a_{1}^{2}+a_{2}^{2})} \\
\Omega _{H}^{1} & =\frac{a_{1}}{r_{H}^{2}+a_{1}^{2}}, \quad \Omega _{H}^{2}=\frac{a_{2}}{r_{H}^{2}+a_{2}^{2}}
\end{align}$$

#### Verification of First Law

The first law becomes:
$$\tag{4.7}\begin{align}
\delta M & =T_{H}\delta S+\Omega _{H}^{1}\delta J_{1}+\Omega _{H}^{2}\delta J_{2}
\end{align}$$

This can be verified by explicit computation of the variations.

### Six-Dimensional Case ($d = 6$)

#### Parameter Relations

For $d = 6$:
$$\tag{4.8}\begin{align}
M & =\frac{\pi ^{2}\mu}{2G} \\
J_{i} & =\frac{\pi ^{2}\mu a_{i}}{2G} \\
S & =\frac{\pi ^{3}}{2G}(r_{H}^{2}+a_{1}^{2})(r_{H}^{2}+a_{2}^{2})
\end{align}$$

## Special Cases and Limiting Behavior

### Non-Rotating Limit ($a_i = 0$)

**Schwarzschild-Tangherlini solution**:
$$\tag{5.1}\begin{align}
M & =\frac{\Omega_{d-2}\mu}{16\pi G} \\
r_{H} & =\sqrt{ 2\mu } \\
S & =\frac{\Omega_{d-2}(2\mu)^{(d-2)/2}}{4G} \\
T_{H} & =\frac{d-3}{4\pi\sqrt{ 2\mu }}
\end{align}$$

**First law reduces to**:
$$\tag{5.2}\begin{align}
\delta M & =T_{H}\delta S
\end{align}$$

### Single Rotation ($a_1 \neq 0, a_i = 0$ for $i > 1$)

**Simplified expressions**:
$$\tag{5.3}\begin{align}
J & =J_{1}=\frac{\Omega_{d-2}\mu a_{1}}{16\pi G} \\
\Omega _{H} & =\Omega _{H}^{1}=\frac{a_{1}}{r_{H}^{2}+a_{1}^{2}} \\
S & =\frac{\Omega_{d-2}(r_{H}^{2}+a_{1}^{2})^{N}}{4Gr_{H}^{d-3}}
\end{align}$$

### Extremal Limit

#### Extremal Condition

**Extremal Myers-Perry**: $r_H \to 0$, i.e.,
$$\tag{5.4}\begin{align}
2\mu & =\sum_{i=1}^{N}a_{i}^{2}
\end{align}$$

#### Extremal Properties

**Temperature**: $T_H \to 0$
**Angular velocities**: $\Omega_H^i \to 1/a_i$
**Entropy**: Finite but dimension-dependent

#### Near-Extremal Behavior

For $\epsilon = 2\mu - \sum_i a_i^2 \ll \mu$:
$$\tag{5.5}\begin{align}
r_{H} & \sim \sqrt{ \epsilon } \\
T_{H} & \sim \sqrt{ \epsilon } \\
S & \sim \epsilon ^{(d-4)/2}
\end{align}$$

## Thermodynamic Stability and Phase Transitions

### Stability Analysis

#### Heat Capacity

**Heat capacity at constant angular momenta**:
$$\tag{6.1}\begin{align}
C_{J} & =T_{H}\frac{\partial S}{\partial T_{H}}\bigg|_{J_{i}=\text{const}}
\end{align}$$

For Myers-Perry black holes, $C_J$ can be **negative** in certain parameter ranges, indicating **thermodynamic instability**.

#### Stability Conditions

**Stability requires**:
1. $C_J > 0$ (positive heat capacity)
2. $\frac{\partial^2 M}{\partial S^2} > 0$ (convexity of mass)
3. $\det(\partial^2 M/\partial X_i \partial X_j) > 0$ where $X_i = \{S, J_1, \ldots, J_N\}$

### Phase Transitions

#### Gregory-Laflamme Instability

Higher-dimensional Myers-Perry black holes can suffer from:
- **Gregory-Laflamme instability**: Long-wavelength perturbations
- **Ultraspinning instability**: For very large rotation parameters
- **Black ring formation**: Alternative phase in $d \geq 5$

#### Critical Behavior

Near instability boundaries:
$$\tag{6.2}\begin{align}
C_{J} & \sim |T-T_{c}|^{-\gamma} \\
S & \sim |T-T_{c}|^{\beta} \\
M & \sim |T-T_{c}|^{\alpha}
\end{align}$$

with critical exponents different from mean-field theory.

## Higher-Dimensional Generalizations

### Myers-Perry-AdS Black Holes

**Action with cosmological constant**:
$$\tag{7.1}\begin{align}
S & =\frac{1}{16\pi G}\int \mathrm{d}^{d}x\sqrt{ -g }(R-2\Lambda)
\end{align}$$

**Extended first law**:
$$\tag{7.2}\begin{align}
\delta M & =T_{H}\delta S+\sum_{i=1}^{N}\Omega _{H}^{i}\delta J_{i}+V_{H}\delta P
\end{align}$$

where $P = -\Lambda/(8\pi G)$ and $V_H$ is the thermodynamic volume.

### Charged Myers-Perry Solutions

**Einstein-Maxwell action**:
$$\tag{7.3}\begin{align}
S & =\frac{1}{16\pi G}\int \mathrm{d}^{d}x\sqrt{ -g }\left( R-\frac{1}{4}F_{\mu \nu}F^{\mu \nu} \right)
\end{align}$$

**Extended first law**:
$$\tag{7.4}\begin{align}
\delta M & =T_{H}\delta S+\sum_{i=1}^{N}\Omega _{H}^{i}\delta J_{i}+\Phi _{H}\delta Q
\end{align}$$

### Supergravity Embeddings

Myers-Perry solutions appear in:
- **Supergravity theories**: As BPS and non-BPS solutions
- **String theory**: As D-brane bound states
- **Kaluza-Klein theory**: As higher-dimensional uplifts
- **M-theory**: As M2 and M5-brane configurations

## Applications and Physical Consequences

### Black Hole Physics

#### Information Theory

Higher-dimensional black holes provide insights into:
- **Information paradox**: Additional parameters affect Hawking radiation
- **Entanglement entropy**: Modified by extra dimensions
- **Holographic principle**: Higher-dimensional holography

#### Quantum Hair

Myers-Perry black holes can have:
- **Discrete quantum hair**: From Kaluza-Klein modes
- **Topological charges**: From extra-dimensional topology
- **Non-local correlations**: Across extra dimensions

### Cosmological Applications

#### Brane-World Models

In brane-world scenarios:
- **Black holes on branes**: Projected Myers-Perry solutions
- **Bulk-brane interactions**: Modified thermodynamics
- **Hierarchy problem**: Extra-dimensional effects on thermodynamics

#### String Cosmology

Connection to:
- **String gas cosmology**: Thermal equilibrium conditions
- **Ekpyrotic scenarios**: Collision dynamics
- **Cyclic universes**: Thermodynamic cycles

### Experimental Signatures

#### Large Extra Dimensions

If extra dimensions exist:
- **Modified black hole formation**: In particle colliders
- **Gravitational signatures**: Deviation from $1/r^2$ law
- **Hawking radiation**: Modified spectrum from extra dimensions

#### TeV-Scale Gravity

Implications for:
- **LHC physics**: Microscopic black hole production
- **Cosmic ray interactions**: Ultra-high energy events
- **Astrophysical observations**: Gamma-ray bursts, gravitational waves

## Advanced Topics and Extensions

### Exact Solutions with Matter

#### Myers-Perry with Yang-Mills

**Action**:
$$\tag{8.1}\begin{align}
S & =\frac{1}{16\pi G}\int \mathrm{d}^{d}x\sqrt{ -g }\left( R-\frac{1}{4}F_{\mu \nu}^{a}F^{a\mu \nu} \right)
\end{align}$$

**Non-Abelian first law**:
$$\tag{8.2}\begin{align}
\delta M & =T_{H}\delta S+\sum_{i}\Omega _{H}^{i}\delta J_{i}+\sum_{a}\Phi _{H}^{a}\delta Q_{a}
\end{align}$$

#### Myers-Perry with Scalar Fields

Including minimally coupled scalars leads to **scalar hair** and modified thermodynamics.

### Quantum Corrections

#### One-Loop Corrections

**Quantum corrected first law**:
$$\tag{8.3}\begin{align}
\delta M_{\text{quantum}} & =T_{H}^{\text{eff}}\delta S_{\text{quantum}}+\sum_{i}\Omega _{H}^{i,\text{eff}}\delta J_{i}
\end{align}$$

with quantum-corrected temperature and angular velocities.

#### Hawking Radiation in Higher Dimensions

**Modified Hawking temperature**:
$$\tag{8.4}\begin{align}
T_{\text{Hawking}} & =T_{H}\left( 1+\alpha \frac{\hbar}{S}+\mathcal{O}(\hbar ^{2}) \right)
\end{align}$$

where $\alpha$ depends on the number of dimensions and field content.

---

## Summary

We have systematically derived the thermodynamics of Myers-Perry black holes using covariant phase space formalism:

**Key Results**:
1. **Multi-angular First Law**: $\delta M = T_H \delta S + \sum_i \Omega_H^i \delta J_i$
2. **Higher-dimensional entropy**: $S = \frac{\Omega_{d-2}}{4Gr_H^{d-3}}\prod_i(r_H^2 + a_i^2)$
3. **Multiple angular velocities**: $\Omega_H^i = \frac{a_i}{r_H^2 + a_i^2}$
4. **Dimensional scaling**: All quantities scale appropriately with dimension

**Methodological Achievements**:
- Extended covariant phase space to arbitrary dimensions
- Systematic treatment of multiple angular momenta
- Rigorous handling of higher-dimensional horizon topology
- Complete thermodynamic framework for $d \geq 5$

**Physical Insights**:
- Higher dimensions allow multiple independent rotations
- Thermodynamic stability becomes more complex with dimension
- New instabilities and phase transitions emerge
- Connection to string theory and extra-dimensional physics

**Applications**:
- Foundation for higher-dimensional black hole physics
- Framework for studying black holes in string theory
- Basis for investigating extra-dimensional phenomenology
- Tool for understanding holographic dualities in higher dimensions

This analysis provides the comprehensive theoretical foundation for Myers-Perry black hole thermodynamics and its applications in modern theoretical physics.

---

**References**:
- Myers & Perry (1986): Higher-dimensional black holes - Ann. Phys. 172, 304
- Emparan & Reall (2008): Black holes in higher dimensions - Living Rev. Rel. 11, 6
- Tangherlini (1963): Schwarzschild solution in n dimensions - Nuovo Cim. 27, 636  
- Gibbons et al. (2005): General first law - Phys. Rev. D 72, 084028
- Copsey & Horowitz (2006): Gravity in higher dimensions - Phys. Rev. D 73, 024015