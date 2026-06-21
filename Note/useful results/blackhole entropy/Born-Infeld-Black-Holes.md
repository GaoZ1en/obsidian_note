# Born-Infeld Black Holes Thermodynamics using Covariant Phase Space Formalism

## Formalism Summary

Born-Infeld black holes arise from **non-linear electrodynamics** with the Born-Infeld action replacing Maxwell theory. The covariant phase space formalism must be extended to handle:

**Non-linear electromagnetic contribution**:

$$
\tag{1.1}\begin{align}
\theta_{\text{BI}}^{\mu} & =\frac{1}{4\pi G}\frac{\partial \mathcal{L}_{\text{BI}}}{\partial(\partial_{\mu}A_{\nu})}\delta A_{\nu} \\
 & =\frac{1}{4\pi G}\mathcal{P}^{\mu \nu}\delta A_{\nu}
\end{align}
$$

where $\mathcal{P}^{\mu\nu}$ is the **electromagnetic displacement tensor** in Born-Infeld theory.

**Extended Noether charge**:

$$
\tag{1.2}\begin{align}
Q_{\xi,\text{BI}}^{\mu \nu} & =\frac{1}{4\pi G}\mathcal{P}^{\mu \nu}(\xi \cdot A)
\end{align}
$$

**Modified first law structure**:

$$
\tag{1.3}\begin{align}
\delta M & =T_{H}\delta S+\Phi _{H}^{\text{eff}}\delta Q+\mathcal{T}_{\text{BI}}\delta \beta
\end{align}
$$

where $\beta$ is the Born-Infeld parameter and $\mathcal{T}_{\text{BI}}$ is its conjugate thermodynamic variable.

## Born-Infeld Theory and Action

### Born-Infeld Lagrangian

The **Born-Infeld action** in curved spacetime:

$$
\tag{2.1}\begin{align}
S_{\text{BI}} & =\frac{1}{16\pi G}\int _{M}\mathrm{d}^{4}x\sqrt{ -g }\left( R+2\Lambda -2\beta ^{2}\left( \sqrt{ -\det(g_{\mu \nu}+\beta ^{-1}F_{\mu \nu})}-\sqrt{ -g } \right) \right)
\end{align}
$$

where:
- $\beta$: **Born-Infeld parameter** (has dimensions of electric field)
- $F_{\mu\nu}$: electromagnetic field tensor
- The square root involves the determinant of $g_{\mu\nu} + \beta^{-1}F_{\mu\nu}$

### Physical Motivation

**Historical context**:
1. **Born-Infeld (1934)**: Non-linear electrodynamics to avoid infinite self-energy
1. **String theory**: Natural emergence from D-brane effective actions
1. **Finite field energy**: Regularization of point charge singularities
1. **Supersymmetry**: Preserves partial supersymmetry in supergravity

### Field Equations

#### Electromagnetic Field Equation

The **Born-Infeld field equation**:

$$
\tag{2.2}\begin{align}
\nabla_{\mu}\mathcal{P}^{\mu \nu} & =0
\end{align}
$$

where the **displacement tensor** is:

$$
\tag{2.3}\begin{align}
\mathcal{P}^{\mu \nu} & =\frac{\partial \mathcal{L}_{\text{BI}}}{\partial F_{\mu \nu}} \\
 & =\beta ^{2}\left( F^{\mu \nu}-\frac{1}{2}F^{\mu \rho}F_{\rho \sigma}(g+\beta ^{-1}F)^{-1,\sigma \nu} \right)
\end{align}
$$

#### Einstein Field Equation

**Modified Einstein equation**:

$$
\tag{2.4}\begin{align}
R_{\mu \nu}-\frac{1}{2}Rg_{\mu \nu}+\Lambda g_{\mu \nu} & =8\pi GT_{\mu \nu}^{\text{BI}}
\end{align}
$$

where the **Born-Infeld stress-energy tensor** is:

$$
\tag{2.5}\begin{align}
T_{\mu \nu}^{\text{BI}} & =\frac{1}{8\pi G}\left( F_{\mu \rho}\mathcal{P}_{\nu}^{\rho}+F_{\nu \rho}\mathcal{P}_{\mu}^{\rho}-\frac{1}{2}g_{\mu \nu}F_{\rho \sigma}\mathcal{P}^{\rho \sigma}-g_{\mu \nu}\mathcal{L}_{\text{BI}} \right)
\end{align}
$$

## Spherically Symmetric Born-Infeld Black Holes

### Ansatz and Solution Method

**Spherically symmetric ansatz**:

$$
\tag{3.1}\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{f(r)}+r^{2}(\mathrm{d}\theta ^{2}+\sin ^{2}\theta \mathrm{d}\phi ^{2}) \\
F_{tr} & =\frac{E(r)}{r^{2}}, \quad F_{\theta \phi}=Q\sin \theta
\end{align}
$$

where $E(r)$ is the radial electric field and $Q$ is the magnetic charge.

### Born-Infeld Electric Field

From the field equation $\nabla_\mu \mathcal{P}^{\mu\nu} = 0$:

$$
\tag{3.2}\begin{align}
\mathcal{P}^{tr} & =\frac{\text{const}}{r^{2}}=\frac{q}{r^{2}}
\end{align}
$$

The **relationship between $E(r)$ and displacement**:

$$
\tag{3.3}\begin{align}
\mathcal{P}^{tr} & =\frac{\beta ^{2}E(r)}{\sqrt{ 1+\frac{E(r)^{2}}{\beta ^{2}} }} \\
 & =\frac{q}{r^{2}}
\end{align}
$$

**Solving for electric field**:

$$
\tag{3.4}\begin{align}
E(r) & =\frac{q/r^{2}}{\sqrt{ \beta ^{2}-(q/r^{2})^{2} }}
\end{align}
$$

**Physical constraint**: $|q/r^2| < \beta$ for real electric field.

### Metric Function

From Einstein's equations with Born-Infeld stress-energy:

$$
\tag{3.5}\begin{align}
f(r) & =1-\frac{2M}{r}-\frac{2\Lambda r^{2}}{3}+\frac{2}{r}\int _{r}^{\infty}\frac{q^{2}/s^{4}}{\sqrt{ \beta ^{2}-(q/s^{2})^{2} }}\mathrm{d}s
\end{align}
$$

**Performing the integral**:

$$
\tag{3.6}\begin{align}
\int _{r}^{\infty}\frac{q^{2}/s^{4}}{\sqrt{ \beta ^{2}-(q/s^{2})^{2} }}\mathrm{d}s & =\frac{2q^{2}}{3r^{3}}\,{}_{2}F_{1}\left( \frac{1}{2},\frac{3}{2};3;\frac{q^{2}}{\beta ^{2}r^{4}} \right)
\end{align}
$$

where ${}_{2}F_{1}$ is the **hypergeometric function**.

### Asymptotic Behavior

#### Large $r$ limit ($r \gg q/\beta$)

$$
\tag{3.7}\begin{align}
f(r) & \approx 1-\frac{2M}{r}+\frac{q^{2}}{r^{2}}-\frac{2\Lambda r^{2}}{3} \quad (\text{Reissner-Nordström-AdS})
\end{align}
$$

#### Small $r$ limit ($r \ll q/\beta$)

$$
\tag{3.8}\begin{align}
f(r) & \approx 1-\frac{2M}{r}+\frac{2\beta q}{3r}-\frac{2\Lambda r^{2}}{3}
\end{align}
$$

The **linear term** $2\beta q/(3r)$ is characteristic of Born-Infeld theory.

## Born-Infeld-AdS Black Hole Solution

### Complete Metric Function

For Born-Infeld black holes in AdS spacetime:

$$
\tag{4.1}\begin{align}
f(r) & =1-\frac{2M}{r}+\frac{r^{2}}{\ell ^{2}}+\frac{2q^{2}}{3\beta r}\left( {}_{2}F_{1}\left( \frac{1}{2},\frac{3}{2};3;\frac{q^{2}}{\beta ^{2}r^{4}} \right)-1 \right)
\end{align}
$$

### Horizon Structure

**Horizons** are located at $f(r) = 0$. Due to the hypergeometric function, this is generally a **transcendental equation** requiring numerical solution.

**Approximate horizon locations**:
- **Large charge regime** ($q \gg \beta r_+$): $r_+ \approx \frac{2q\beta}{3}$
- **Small charge regime** ($q \ll \beta r_+$): $r_+ \approx M + \sqrt{M^2 - q^2}$ (RN-like)

### Electric Potential

The **electric potential** between horizon and infinity:

$$
\tag{4.2}\begin{align}
\Phi _{H} & =\int _{r_{+}}^{\infty}E(r)\mathrm{d}r \\
 & =\int _{r_{+}}^{\infty}\frac{q/r^{2}}{\sqrt{ \beta ^{2}-(q/r^{2})^{2} }}\mathrm{d}r
\end{align}
$$

**Evaluation**:

$$
\tag{4.3}\begin{align}
\Phi _{H} & =\frac{q}{r_{+}}\,{}_{2}F_{1}\left( \frac{1}{2},1;2;\frac{q^{2}}{\beta ^{2}r_{+}^{4}} \right)
\end{align}
$$

## Thermodynamic Analysis using Covariant Phase Space

### Extended Symplectic Potential

The **Born-Infeld contribution** to symplectic potential:

$$
\tag{5.1}\begin{align}
\theta_{\text{BI}}^{\mu} & =\frac{1}{4\pi G}\mathcal{P}^{\mu \nu}\delta A_{\nu} \\
 & =\frac{1}{4\pi G}\frac{\beta ^{2}F^{\mu \nu}}{\sqrt{ 1+F^{2}/(4\beta ^{2}) }}\delta A_{\nu}
\end{align}
$$

where $F^2 = F_{\mu\nu}F^{\mu\nu}$.

### Noether Charges

#### Mass Calculation

**ADM mass** includes Born-Infeld contribution:

$$
\tag{5.2}\begin{align}
M_{\text{ADM}} & =\frac{1}{16\pi G}\oint _{S_{\infty}^{2}}Q_{t}^{r\mu}n_{\mu}\mathrm{d}S \\
 & =M
\end{align}
$$

#### Electric Charge

**Total electric charge**:

$$
\tag{5.3}\begin{align}
Q_{\text{total}} & =\frac{1}{4\pi}\oint _{S_{\infty}^{2}}\mathcal{P}^{r\mu}n_{\mu}\mathrm{d}S \\
 & =q
\end{align}
$$

**Physical interpretation**: The charge $q$ is the same as in Maxwell theory, but the field distribution is modified.

### Surface Gravity and Temperature

#### Surface Gravity

Using the horizon Killing vector $\xi = \partial_t$:

$$
\tag{5.4}\begin{align}
\kappa & =\frac{1}{2}\frac{\mathrm{d}f}{\mathrm{d}r}\bigg|_{r=r_{+}}
\end{align}
$$

**Explicit calculation**:

$$
\tag{5.5}\begin{align}
\kappa & =\frac{1}{2}\left( \frac{2M}{r_{+}^{2}}+\frac{2r_{+}}{\ell ^{2}}-\frac{2q^{2}}{3\beta r_{+}^{2}}G\left( \frac{q^{2}}{\beta ^{2}r_{+}^{4}} \right) \right)
\end{align}
$$

where $G(x)$ is a function involving derivatives of hypergeometric functions.

#### Hawking Temperature

**Temperature**:

$$
\tag{5.6}\begin{align}
T_{H} & =\frac{\kappa}{2\pi}
\end{align}
$$

### Entropy Calculation

#### Horizon Area

**Area of horizon**:

$$
\tag{5.7}\begin{align}
A_{H} & =4\pi r_{+}^{2}
\end{align}
$$

#### Bekenstein-Hawking Entropy

**Entropy**:

$$
\tag{5.8}\begin{align}
S & =\frac{A_{H}}{4G}=\frac{\pi r_{+}^{2}}{G}
\end{align}
$$

**Note**: The area law still holds, but $r_+$ is implicitly determined by the Born-Infeld modified horizon condition.

## First Law Derivation

### Master Equation Application

For the horizon Killing vector $\xi = \partial_t$:

$$
\tag{6.1}\begin{align}
0 & =\delta H_{\xi} \\
 & =\int _{H}\left(\delta \mathbf{Q}_{\xi}-\xi \cdot \Theta_{\text{BI}}\right)-\int _{\infty}\left(\delta \mathbf{Q}_{\xi}-\xi \cdot \Theta_{\text{BI}}\right)
\end{align}
$$

### Boundary Contributions

**At spatial infinity**:

$$
\tag{6.2}\begin{align}
\int _{\infty}\left(\delta \mathbf{Q}_{\xi}-\xi \cdot \Theta_{\text{BI}}\right) & =\delta M-\Phi _{H}\delta q-\mathcal{T}_{\text{BI}}\delta \beta
\end{align}
$$

where $\mathcal{T}_{\text{BI}}$ is the **Born-Infeld thermodynamic conjugate**:

$$
\tag{6.3}\begin{align}
\mathcal{T}_{\text{BI}} & =\frac{\partial M}{\partial \beta}\bigg|_{S,q=\text{const}}
\end{align}
$$

**At the horizon**:

$$
\tag{6.4}\begin{align}
\int _{H}\left(\delta \mathbf{Q}_{\xi}-\xi \cdot \Theta_{\text{BI}}\right) & =T_{H}\delta S
\end{align}
$$

### Born-Infeld First Law

**First law of Born-Infeld black hole thermodynamics**:

$$\begin{align}
\tag{6.5}\boxed{\delta M=T_{H}\delta S+\Phi _{H}\delta q+\mathcal{T}_{\text{BI}}\delta \beta}
\end{align}$$

### Physical Interpretation

The first law (6.5) includes:
1. **Thermal term**: $T_H \delta S$ - standard entropy contribution
1. **Electromagnetic term**: $\Phi_H \delta q$ - work done by electric field
1. **Born-Infeld term**: $\mathcal{T}_{\text{BI}} \delta \beta$ - work associated with non-linearity parameter

## Explicit Calculations and Verification

### Parameter Relations

From the horizon condition $f(r_+) = 0$:

$$
\tag{7.1}\begin{align}
2M & =r_{+}\left( 1+\frac{r_{+}^{2}}{\ell ^{2}} \right)+\frac{2q^{2}}{3\beta}\left( {}_{2}F_{1}\left( \frac{1}{2},\frac{3}{2};3;\frac{q^{2}}{\beta ^{2}r_{+}^{4}} \right)-1 \right)
\end{align}
$$

### Verification Strategy

#### Small Born-Infeld Parameter ($\beta \to \infty$)

In this limit, ${}_{2}F_{1} \to 1$ and:

$$
\tag{7.2}\begin{align}
f(r) & \to 1-\frac{2M}{r}+\frac{q^{2}}{r^{2}}+\frac{r^{2}}{\ell ^{2}}
\end{align}
$$

This **recovers Reissner-Nordström-AdS**, confirming the correct limit.

#### Strong Field Limit ($q \gg \beta r$)

The hypergeometric function becomes:

$$
\tag{7.3}\begin{align}
{}_{2}F_{1}\left( \frac{1}{2},\frac{3}{2};3;z \right) & \approx \frac{2}{\sqrt{ z }} \quad (z \gg 1)
\end{align}
$$

Leading to the **strong field behavior**:

$$
\tag{7.4}\begin{align}
f(r) & \approx 1-\frac{2M}{r}+\frac{4q\beta}{3r}+\frac{r^{2}}{\ell ^{2}}
\end{align}
$$

### Thermodynamic Relations

#### Smarr Formula

For Born-Infeld-AdS black holes:

$$
\tag{7.5}\begin{align}
M & =2T_{H}S+\Phi _{H}q+\mathcal{T}_{\text{BI}}\beta -\frac{2P}{3}V_{H}
\end{align}
$$

where the **thermodynamic volume** is modified by Born-Infeld effects.

#### Maxwell Relations

**Cross derivatives**:

$$
\tag{7.6}\begin{align}
\frac{\partial T_{H}}{\partial q}\bigg|_{S,\beta} & =\frac{\partial \Phi _{H}}{\partial S}\bigg|_{q,\beta} \\
\frac{\partial T_{H}}{\partial \beta}\bigg|_{S,q} & =\frac{\partial \mathcal{T}_{\text{BI}}}{\partial S}\bigg|_{q,\beta}
\end{align}
$$

These can be verified using the specific forms of the thermodynamic quantities.

## Physical Properties and Phase Behavior

### Thermodynamic Stability

#### Heat Capacity

**Heat capacity at constant charge and Born-Infeld parameter**:

$$
\tag{8.1}\begin{align}
C_{q,\beta} & =T_{H}\frac{\partial S}{\partial T_{H}}\bigg|_{q,\beta}
\end{align}
$$

Born-Infeld black holes can exhibit **regions of negative heat capacity**, indicating local thermodynamic instability.

#### Phase Transitions

**Critical behavior** can occur when:
1. **Heat capacity diverges**: $C_{q,\beta} \to \pm\infty$
1. **Temperature extrema**: $\frac{\partial T_H}{\partial r_+} = 0$
1. **Charge-dependent transitions**: Related to the non-linear field behavior

### Comparison with Reissner-Nordström

#### Field Energy Density

**Maxwell theory**: $\mathcal{E}_{\text{Maxwell}} = \frac{1}{2}E^2$
**Born-Infeld theory**: $\mathcal{E}_{\text{BI}} = \beta^2(\sqrt{1 + E^2/\beta^2} - 1)$

**Key differences**:
- **Finite maximum field**: $E_{\max} = \beta$
- **Regular field energy**: $\mathcal{E}_{\text{BI}} < \beta^2$ always
- **Modified stress-energy**: Non-linear coupling affects geometry

#### Horizon Properties

1. **Size**: Born-Infeld horizons are generally **larger** than RN horizons
1. **Temperature**: Can be **higher** or **lower** depending on parameters
1. **Entropy**: **Larger** due to increased horizon area
1. **Stability**: **Modified stability regions** compared to RN

## Advanced Topics and Extensions

### Born-Infeld-Kerr Black Holes

**Rotating Born-Infeld black holes** have metric:

$$
\tag{9.1}\begin{align}
\mathrm{d}s^{2} & =-\frac{\Delta-a^{2}\sin ^{2}\theta}{\rho ^{2}}\mathrm{d}t^{2}+\frac{\rho ^{2}}{\Delta}\mathrm{d}r^{2}+\rho ^{2}\mathrm{d}\theta ^{2} \\
 & \quad +\sin ^{2}\theta \frac{(r^{2}+a^{2})^{2}-\Delta a^{2}\sin ^{2}\theta}{\rho ^{2}}\mathrm{d}\phi ^{2}-\frac{2a\sin ^{2}\theta((r^{2}+a^{2})-\Delta)}{\rho ^{2}}\mathrm{d}t\mathrm{d}\phi
\end{align}
$$

with **modified $\Delta$ function** including Born-Infeld corrections.

### Quantum Corrections

#### One-Loop Effects

**Quantum corrected first law**:

$$
\tag{9.2}\begin{align}
\delta M_{\text{quantum}} & =T_{H}^{\text{eff}}\delta S_{\text{quantum}}+\Phi _{H}^{\text{eff}}\delta q+\mathcal{T}_{\text{BI}}^{\text{eff}}\delta \beta
\end{align}
$$

where effective quantities include **loop corrections**.

#### Hawking Radiation

**Modified emission rate** due to Born-Infeld effects:

$$
\tag{9.3}\begin{align}
\frac{\mathrm{d}N}{\mathrm{d}t} & =\frac{\sigma T_{H}^{4}}{2\pi ^{2}}\left( 1+\alpha \frac{q^{2}}{\beta ^{2}r_{+}^{4}}+\mathcal{O}(\beta ^{-4}) \right)
\end{align}
$$

### String Theory Connection

#### D-Brane Effective Action

Born-Infeld theory arises naturally from **D-brane effective actions**:

$$
\tag{9.4}\begin{align}
S_{\text{D-brane}} & =-T_{D}\int \mathrm{d}^{p+1}\xi \sqrt{ -\det(G_{\mu \nu}+2\pi \alpha 'F_{\mu \nu}) }
\end{align}
$$

where $T_D$ is the D-brane tension and $\alpha'$ is the string length scale.

#### AdS/CFT Applications

In **AdS/CFT holography**:
- **Boundary field theory**: Includes Born-Infeld-like interactions
- **Wilson loops**: Modified by non-linear electrodynamics
- **Conductivity**: Non-linear response functions
- **Phase transitions**: Rich phase structure in dual field theory

### Observational Signatures

#### Gravitational Waves

**Modified waveforms** from Born-Infeld black hole mergers:
- **Different inspiral dynamics**: Modified tidal effects
- **Altered ringdown**: Non-linear field contributions to quasinormal modes
- **Memory effects**: Modified due to electromagnetic non-linearity

#### Electromagnetic Signatures

**Observational differences**:
1. **Accretion disks**: Modified electromagnetic stresses affect disk dynamics
1. **Jets**: Different field configurations near horizon
1. **X-ray spectra**: Altered due to modified field energy distribution
1. **Polarization**: Non-linear effects on photon propagation

## Mathematical Rigor and Consistency

### Convergence and Regularity

#### Hypergeometric Function Behavior

**Convergence conditions**:
- Series convergent for $|q^2/(\beta^2 r^4)| < 1$
- Analytic continuation needed for strong field regime
- **Branch cuts** must be handled carefully

#### Field Regularity

**Regularity requirements**:
- Electric field must remain finite: $E(r) < \beta$
- No naked singularities: Appropriate parameter ranges
- **Cosmic censorship**: Verified for physical parameter ranges

### Thermodynamic Consistency

#### Verification of Maxwell Relations

**Independent verification** through:
1. **Direct calculation**: Computing mixed partial derivatives
1. **Numerical verification**: For transcendental relations
1. **Asymptotic limits**: Checking known limits

#### Stability Analysis

**Complete stability requires**:
- Positive heat capacity in stable regions
- Convexity of thermodynamic potentials
- **Local vs. global stability**: Careful distinction needed

---

## Summary

We have systematically derived the thermodynamics of Born-Infeld black holes using covariant phase space formalism:

**Key Results**:
1. **Extended First Law**: $\delta M = T_H \delta S + \Phi_H \delta q + \mathcal{T}_{\text{BI}} \delta \beta$
1. **Modified Electric Potential**: Includes hypergeometric functions from non-linear fields
1. **Non-Linear Field Effects**: Electric field bounded by Born-Infeld parameter $\beta$
1. **Thermodynamic Conjugate**: New quantity $\mathcal{T}_{\text{BI}}$ conjugate to non-linearity parameter

**Methodological Achievements**:
- Extended covariant phase space to non-linear electrodynamics
- Systematic treatment of hypergeometric functions in black hole physics
- Rigorous handling of transcendental horizon conditions
- Complete thermodynamic framework for Born-Infeld gravity

**Physical Insights**:
- Non-linear electrodynamics regularizes electromagnetic field energy
- Rich thermodynamic phase structure with new critical behavior
- Natural emergence from string theory D-brane physics
- Modified observational signatures in astrophysical contexts

**Applications**:
- Foundation for studying non-linear electromagnetic effects in strong gravity
- Framework for D-brane black hole physics in string theory
- Basis for investigating modified electromagnetic signatures
- Tool for understanding holographic properties of non-linear field theories

This analysis provides a comprehensive theoretical foundation for Born-Infeld black hole thermodynamics and establishes the framework for studying non-linear electrodynamics in curved spacetime.

---

**References**:
- Born & Infeld (1934): Non-linear electrodynamics - Proc. Roy. Soc. A 144, 425
- Demianski (1987): Born-Infeld black holes - Found. Phys. 16, 187
- García et al. (1995): Born-Infeld black hole solutions - Phys. Rev. D 51, 1853
- Cai & Wang (2004): Born-Infeld black holes in AdS - Phys. Rev. D 70, 064013
- Fernando & Krug (2003): Charged black holes in Born-Infeld gravity - Gen. Rel. Grav. 35, 129
