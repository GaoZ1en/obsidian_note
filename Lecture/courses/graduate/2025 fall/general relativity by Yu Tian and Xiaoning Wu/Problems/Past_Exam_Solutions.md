# Comprehensive Solutions to Past Exams

## Exam 1

### 1. Neutron Star Redshift

**Problem**: Calculate observed frequency $\nu_\infty$ for light emitted from surface radius $R$ of Neutron star mass $M$.
**Solution**:
The gravitational redshift formula relates the proper time interval at the source $d\tau_e$ to the proper time interval at infinity $d\tau_\infty$. For a stationary observer: $d\tau = \sqrt{-g_{tt}} dt$.

$$\begin{align}
\frac{\nu_\infty}{\nu_e} = \frac{d\tau_e}{d\tau_\infty} = \frac{\sqrt{-g_{tt}(R)}}{\sqrt{-g_{tt}(\infty)}}
\end{align}$$

In Schwarzschild metric, $g_{tt}(r) = -(1-2GM/r)$ and $g_{tt}(\infty) = -1$.

$$\begin{align}
\nu_\infty = \nu_e \sqrt{1 - \frac{2GM}{R}}
\end{align}$$

Substitute $M \approx M_\odot, R \approx 10\text{km}$ values if asked.

### 2. General Relativity Foundations

**2.1 Three Classical Tests**:
1.  **Perihelion Precession of Mercury**: The orbit of Mercury precesses by 43 arcseconds/century more than Newtonian prediction.
1.  **Deflection of Light**: Light rays bend near massive bodies (Sun) by angle $\delta = 4GM/bc^2$ (twice Newtonian value). Confirmed by Eddington (1919).
1.  **Gravitational Redshift**: Verified by Pound-Rebka experiment.

**2.2 Conserved Current Proof**:
Given Killing vector $\xi_\mu$ ($\nabla_{(\mu}\xi_{\nu)} = 0$) and conserved energy-momentum $\nabla_\mu T^{\mu\nu} = 0$.
Proof that $J^\mu = T^{\mu\nu}\xi_\nu$ is conserved:

$$\begin{align}
\nabla_\mu J^\mu = \nabla_\mu (T^{\mu\nu}\xi_\nu) = (\nabla_\mu T^{\mu\nu})\xi_\nu + T^{\mu\nu}(\nabla_\mu \xi_\nu)
\end{align}$$

The first term vanishes ($\nabla_\mu T^{\mu\nu} = 0$).
For the second term, decompose $\nabla_\mu \xi_\nu$ into symmetric and antisymmetric parts: $\nabla_\mu \xi_\nu = \nabla_{(\mu}\xi_{\nu)} + \nabla_{[\mu}\xi_{\nu]}$.
Since $T^{\mu\nu}$ is symmetric ($T^{\mu\nu}=T^{\nu\mu}$) and $\xi$ is Killing ($\nabla_{(\mu}\xi_{\nu)}=0$), the contraction vanishes:

$$\begin{align}
T^{\mu\nu}\nabla_\mu \xi_\nu = T^{\mu\nu}\nabla_{[\mu}\xi_{\nu]} = 0
\end{align}$$

Thus $\nabla_\mu J^\mu = 0$.

### 3. Cosmology

**3.1 Cosmological Principle**:
The universe is spatially **homogeneous** (same at every point) and **isotropic** (same in every direction) on large scales.

**3.2 FRW Metric**:

$$\begin{align}
ds^2 = -dt^2 + a^2(t) \left[ \frac{dr^2}{1-kr^2} + r^2(d\theta^2 + \sin^2\theta d\phi^2) \right]
\end{align}$$

**3.3 Hubble's Law**:
Physical distance is $d(t) = a(t) \chi$ (for comoving coordinate distance $\chi$).
Differentiating with respect to time:

$$\begin{align}
v = \dot{d} = \dot{a}\chi + a\dot{\chi}
\end{align}$$

For comoving objects (galaxies), $\dot{\chi}=0$.

$$\begin{align}
v = \dot{a}\chi = \frac{\dot{a}}{a} (a\chi) = H(t) d
\end{align}$$

where $H(t) = \dot{a}/a$.

### 4. Reissner-Nordström (RN) Black Hole

**4.1 Parameters**:
$M$: Mass of the black hole. $Q$: Electric charge.
Metric: $ds^2 = -f(r)dt^2 + f(r)^{-1}dr^2 + r^2 d\Omega^2$, with $f(r) = 1 - \frac{2M}{r} + \frac{Q^2}{r^2}$.

**4.2 Killing Vectors & Motion**:
Killing vectors: $\xi_{(t)} = \partial_t$, $\xi_{(\phi)} = \partial_\phi$.
Conserved quantities: Energy $E = -u \cdot \xi_{(t)} = f(r) \dot{t}$, Angular Momentum $L = u \cdot \xi_{(\phi)} = r^2 \sin^2\theta \dot{\phi}$.
Radial Equation (from $u^\mu u_\mu = -1$):

$$\begin{align}
-f(r) \dot{t}^2 + \frac{\dot{r}^2}{f(r)} + \frac{L^2}{r^2} = -1 \implies \dot{r}^2 + V_{eff}(r) = E^2
\end{align}$$

where $V_{eff}(r) = f(r)(1 + \frac{L^2}{r^2})$.

**4.3 Horizon**:
Horizons are roots of $f(r) = 0 \implies r^2 - 2Mr + Q^2 = 0$.

$$\begin{align}
r_\pm = M \pm \sqrt{M^2-Q^2}
\end{align}$$

Why? At $r_+$, $g_{tt}=0$ and $g_{rr} \to \infty$. It is a null surface (normal vector is null) and acts as a one-way membrane for causal signals.

**4.4 First Law**:

$$\begin{align}
dM = \frac{\kappa}{8\pi G} dA + \Phi_H dQ
\end{align}$$

where $\Phi_H = Q/r_+$ is the electric potential at the horizon.

### 5. Negative Mass Schwarzschild

**5.1 Metric**:
Same as Schwarzschild but $M \to -|M|$.

$$\begin{align}
f(r) = 1 + \frac{2|M|}{r}
\end{align}$$

**5.2 Horizon**:
$f(r) > 1$ for all $r > 0$. **No horizon**.
The singularity at $r=0$ is "naked" (visible to outside observers).

**5.3 Null Geodesics & Tortoise Coordinate**:
Radial null geodesics ($ds^2=0$): $dt = \pm \frac{dr}{f(r)}$.

$$\begin{align}
t = \pm r^* + \text{const} \implies r^* = \int \frac{dr}{1+\frac{2|M|}{r}} = r - 2|M| \ln(r + 2|M|)
\end{align}$$

**5.4 Penrose Diagram**:
Since $r^*$ is finite at $r=0$, the singularity is a timelike line (vertical) on the Penrose diagram.
The diagram looks like the right half of the Minkowski diamond, but the left boundary ($r=0$) is a timelike singularity instead of a coordinate origin.
- $i^0, i^\pm, \mathscr{I}^\pm$ are standard.
- $r=0$ is a vertical line connecting $i^-$ to $i^+$.

### 6. Binary Black Hole Merger

**6.1 Mass Bounds**:
-   Maximum Mass: $M_{final} < M_1 + M_2$ (Conservation of energy, binding energy is negative, gravitational waves carry positive energy).
-   Minimum Mass: From Hawking's Area Theorem $A_{final} \ge A_1 + A_2$.
    $A = 16\pi M^2$.
    $M_{final}^2 \ge M_1^2 + M_2^2 \implies M_{final} \ge \sqrt{M_1^2 + M_2^2}$.

**6.2 Radiation Upper Bound**:
Max radiated energy $E_{rad} = M_{initial} - M_{final}$.
Max possible radiation occurs when $M_{final}$ is minimal.

$$\begin{align}
E_{rad, max} = (M_1 + M_2) - \sqrt{M_1^2 + M_2^2}
\end{align}$$

For equal mass $M_1=M_2=M$: $E_{rad} \le 2M - \sqrt{2}M = (2-\sqrt{2})M \approx 0.29 (2M)$. ~29% efficiency.

## Exam 2

### 1. Electromagnetism in GR

**1.1 Equations**:
Maxwell's Eqs: $\nabla_\mu F^{\mu\nu} = J^\nu$ and $\nabla_{[\mu} F_{\nu\rho]} = 0$.
Relation: $E_i = F_{0i}$ (Electric), $B^k = \frac{1}{2}\epsilon^{ijk}F_{ij}$ (Magnetic) (in locally inertial frame).

**1.2 Energy Momentum Tensor**:

$$\begin{align}
T_{\mu\nu} = \frac{1}{4\pi} \left( F_{\mu\alpha}F_\nu^{~\alpha} - \frac{1}{4}g_{\mu\nu}F_{\alpha\beta}F^{\alpha\beta} \right)
\end{align}$$

**1.3 Divergence Free Proof**:
Calculate $\nabla_\mu T^{\mu\nu}$.

$$\begin{align}
4\pi \nabla_\mu T^{\mu\nu} = (\nabla_\mu F^{\mu\alpha})F_\nu^{~\alpha} + F^{\mu\alpha}(\nabla_\mu F_{\nu\alpha}) - \frac{1}{2} F^{\alpha\beta} \nabla_\nu F_{\alpha\beta}
\end{align}$$

Use Maxwell eq $\nabla_\mu F^{\mu\alpha} = 0$ (source free).
Term 2 & 3 combined: Using Bianchi identity $\nabla_\mu F_{\nu\alpha} = - \nabla_\nu F_{\alpha\mu} - \nabla_\alpha F_{\mu\nu}$.
Result is zero algebraically.

### 2. Rindler Metric

$ds^2 = -(\alpha x)^2 dt^2 + dx^2$.
**2.1 Christoffel**:
$\Gamma^x_{tt} = \alpha^2 x$. $\Gamma^t_{xt} = \Gamma^t_{tx} = 1/x$. Others 0.
**2.2 Riemann**:
$R^x_{~txt} = \partial_x \Gamma^x_{tt} - \Gamma^x_{tt}\Gamma^t_{xt} = \alpha^2 - (\alpha^2 x)(1/x) = 0$. Flat spacetime.
**2.3 Null Geodesics**:
$ds^2 = 0 \implies (\alpha x)^2 dt^2 = dx^2 \implies \frac{dx}{dt} = \pm \alpha x$.
$\frac{dx}{x} = \pm \alpha dt \implies \ln x = \pm \alpha t + C \implies x(t) = x_0 e^{\pm \alpha t}$.
Light rays asymptotically approach horizon $x=0$.

### 3. Black Holes

**3.1 Schwarzschild Penrose**:
Region I: Exterior ($r>2M$), static.
Region II: Black Hole Interior ($r<2M$), singularity at future.
Region III: Parallel Exterior (connected by wormhole).
Region IV: White Hole ($r<2M$), singularity at past.
Diagram is a square tilted at 45 degrees, bounded by singularities (horizontal zigzag) and null infinities.

**3.2 Kerr Penrose Process**:
1.  **Energy Extraction**: Particle enters ergosphere ($g_{tt}>0$). Splits $A \to B+C$. $B$ falls into BH with negative energy $E_B < 0$. $E_C = E_A - E_B > E_A$.
1.  **Angular Momentum**: To have $E_B < 0$, we need $L_B$ to be sufficiently negative (counter-rotating). The absorption reduces BH angular momentum $J$.
1.  **Irreducible Mass**: $M^2 = M_{irr}^2 + J^2/(4M_{irr}^2)$. $M_{irr} \propto \sqrt{A}$. Since $\delta A \ge 0$, $M_{irr}$ increases. Energy extraction ($\delta M < 0$) is possible only if $\delta J$ is large negative.

### 4. Gravitational Waves (GW)

**4.1 Transverse Speed of Light**:
Linearized eq $\Box \bar{h}_{\mu\nu} = 0 \implies$ wave equation (speed $c$).
Gauge condition $\partial^\mu \bar{h}_{\mu\nu} = 0$ removes non-transverse components.
**4.2 Polarizations**:
In TT gauge for wave in $z$-direction, only $h_{xx} = -h_{yy}$ and $h_{xy} = h_{yx}$ nonzero. This gives $+$ and $\times$ modes.

### 5. Thermodynamics

**5.1 Splitting Black Holes**:
Why can't a BH split $M \to m_1 + m_2$?
Conservation of Energy: $M = m_1 + m_2$.
Area Law: Total Area must increase.
$A \propto M^2$.
Initial Area $\propto (m_1+m_2)^2 = m_1^2 + m_2^2 + 2m_1m_2$.
Final Area $\propto m_1^2 + m_2^2$.
Final Area < Initial Area. **Violates Second Law**. Splitting is forbidden.

**5.2 Hawking Evaporation**:
Rate $dM/dt \propto -1/M^2$.
Lifetime $\tau \sim M^3$.
Ratio: $\tau_{BH} / \tau_{primordial} = (10 M_\odot / 10^{-9} M_\odot)^3 = (10^{10})^3 = 10^{30}$.

## Exam 3

### 1. Basics

**1.1 Compatibility**: $\nabla g = 0$ ensures angles and lengths are preserved under parallel transport, and $\Gamma$ is the Levi-Civita connection.
**1.2 Rindler**:
-   $\Gamma$: See Exam 2.
-   **Trajectory of Accelerated Observer**: $x = \text{const}$ (or $X^2 - T^2 = 1/\alpha^2$ in Minkowski coords). This represents hyperbolic motion with constant proper acceleration $\alpha$, not a geodesic.
-   **Geodesics**: Free particles follow straight lines in Minkowski space ($X = vT + X_0$), which map to curved paths in Rindler coordinates falling toward the horizon.
-   Singularity: $x=0$ is a coordinate singularity (Horizon), observable for accelerated observer but regular in Minkowski coords.

### 2. Particle & Observer

**2.1 Observer Energy**: $E_{obs} = -p_\mu Z^\mu$ where $Z^\mu$ is observer's 4-velocity.
**2.2 Fields**: $E^\mu = F^{\mu\nu}Z_\nu$, $B^\mu = \frac{1}{2}\epsilon^{\mu\nu\sigma\rho}Z_\nu F_{\sigma\rho}$.
**2.3 Dominant Energy Condition (DEC)**:
For any timelike vector $V^\mu$, $T_{\mu\nu}V^\mu V^\nu \ge 0$ AND $T^{\mu\nu}V_\nu$ is non-spacelike ($J^2 \le 0$).
**2.4 EM Proof**:
Energy density $\rho = (E^2+B^2)/8\pi \ge 0$.
Poynting vector magnitude $|S| \le \rho$. Thus flux lies within lightcone.

### 3. Kerr

**3.1 Frame Dragging**:
Metric term $g_{t\phi} \neq 0$. Zero Angular Momentum Observer (ZAMO) must rotate with angular velocity $\Omega = -g_{t\phi}/g_{\phi\phi}$ to stay stationary w.r.t local geometry.
**3.2 Penrose Process**: See Exam 2.
**3.3 Schwarzschild**: No Penrose process because Schwarzschild has no ergosphere outside the horizon.

### 4. Killing

**4.1 Identity**:
Killing eq $\nabla_\mu \xi_\nu + \nabla_\nu \xi_\mu = 0$.
Cyclic permutation derivation leads to $\nabla_\rho \nabla_\mu \xi_\nu = R^\sigma_{~\nu\rho\mu}\xi_\sigma$.
Contracting indices gives $\Box \xi_\mu = -R_{\mu\nu}\xi^\nu$.
**4.2 Komar Mass**:
$M_K = -\frac{1}{8\pi G} \int_{\partial \Sigma} \nabla^\alpha \xi^\beta_{(t)} dS_{\alpha\beta}$.
**4.3 Stationary Vacuum Flatness**:
If $R_{\mu\nu}=0$ (vacuum) and stationary asymptotically flat, the only solution is Minkowski space (Lichnerowicz theorem / Positive Energy theorem conditions).

### 5. Cosmology

**5.1 Principle**: Homogeneity and Isotropy.
**5.2 Metric**: FRW.
**5.3 Problems**:
-   **Horizon Problem**: Explain causal disconnect of CMB patches.
-   **Flatness Problem**: Explain why $\Omega \approx 1$ today despite instability.
-   **Solution**: Inflationary epoch.
