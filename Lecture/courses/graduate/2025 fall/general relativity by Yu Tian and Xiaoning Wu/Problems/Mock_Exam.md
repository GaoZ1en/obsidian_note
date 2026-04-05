# Mock Exam 1

1. **Equivalence Principle & Geometry**
    1. Explain the difference between the Weak Equivalence Principle (WEP) and the Einstein Equivalence Principle (EEP).
    2. Prove that the metric compatibility condition $\nabla_\rho g_{\mu\nu} = 0$, combined with torsion-free condition $\Gamma^\lambda_{~\mu\nu} = \Gamma^\lambda_{~\nu\mu}$, uniquely determines the Christoffel symbols.
    3. Show that for a scalar field $\phi$, $\nabla_\mu \nabla_\nu \phi = \nabla_\nu \nabla_\mu \phi$.
*sol*.
- WEP states that the trajectory of a freely falling test particle is independent of its composition and structure, while EEP extends this by asserting that the laws of physics in a local inertial frame are those of special relativity.
- we have
$$\begin{align}
\nabla _{\rho}g_{\mu \nu} & =\partial _{\rho}g_{\mu \nu}-\Gamma ^{\lambda}_{~\rho \mu}g_{\lambda \nu}-\Gamma ^{\lambda}_{~\rho \nu}g_{\lambda \mu}=0 \\
\implies g^{\sigma \rho}\partial _{\rho}g_{\mu \nu} & =g^{\sigma \rho}\left(\Gamma ^{\lambda}_{~\rho \mu}g_{\lambda \nu}+\Gamma ^{\lambda}_{~\rho \nu}g_{\lambda \mu}\right) \\
g^{\lambda \rho}\partial _{\mu}g_{\rho \nu} & =g^{\lambda \rho}\left(\Gamma ^{\sigma}_{~\mu \rho}g_{\sigma \nu}+\Gamma ^{\sigma}_{~\mu \nu}g_{\sigma \rho}\right) \\
g^{\lambda \rho}\partial _{\nu}g_{\rho \mu} & =g^{\lambda \rho}\left(\Gamma ^{\sigma}_{~\nu \rho}g_{\sigma \mu}+\Gamma ^{\sigma}_{~\nu \mu}g_{\sigma \rho}\right) \\
\implies g^{\lambda \rho}\left(\partial _{\mu}g_{\rho \nu}+\partial _{\nu}g_{\rho \mu}-\partial _{\rho}g_{\mu \nu}\right) & =2\Gamma ^{\lambda}_{~\mu \nu} \\
\implies \Gamma ^{\lambda}_{~\mu \nu} & =\frac{1}{2}g^{\lambda \rho}\left(\partial _{\mu}g_{\rho \nu}+\partial _{\nu}g_{\rho \mu}-\partial _{\rho}g_{\mu \nu}\right)
\end{align}$$
- Since $\phi$ is a scalar, we have $\nabla_\mu \phi = \partial_\mu \phi$. therefore
$$\begin{align}
\nabla _{\mu}\nabla _{\nu}\phi & =\nabla _{\mu}(\partial _{\nu}\phi) \\
 & =\partial _{\mu}\partial _{\nu}\phi -\Gamma ^{\lambda}_{~\mu \nu}\partial _{\lambda}\phi \\
 & =\partial _{\nu}\partial _{\mu}\phi -\Gamma ^{\lambda}_{~\nu \mu}\partial _{\lambda}\phi \\
 & =\nabla _{\nu}\nabla _{\mu}\phi
\end{align}$$

1. **Schwarzschild Geodesics**
    Consider a particle of mass $m$ orbiting a Schwarzschild black hole of mass $M$.
    1. By using the Killing vectors $\partial_t$ and $\partial_\phi$, find the conserved energy $E$ and angular momentum $L$.
    2. Reduce the geodesic equation to an effective potential problem: $\frac{1}{2}\dot{r}^2 + V_{eff}(r) = \frac{E^2-m^2}{2m}$. Explicitly write out $V_{eff}(r)$.
    3. Determine the radius of the Innermost Stable Circular Orbit (ISCO).
    4. Calculate the radius of the photon sphere (unstable circular orbit for massless particles).
*sol*.
- we have
$$\begin{align}
E & =-\xi _{\mu}p^{\mu} \\
 & =-(g_{tt}p^{t}+g_{t\phi}p^{\phi}) \\
 & =m\left( 1-\frac{2M}{r} \right)\frac{\mathrm{d}t}{\mathrm{d}\tau} \\
L & =\eta _{\mu}p^{\mu} \\
 & =g_{\phi t}p^{t}+g_{\phi \phi}p^{\phi} \\
 & =mr^2\sin ^2\theta \frac{\mathrm{d}\phi}{\mathrm{d}\tau}
\end{align}$$
- we have
$$\begin{align}
g_{\mu \nu}u^{\mu}u^{\nu} & =-1 \\
\implies g_{tt}u^{t}u^{t}+g_{rr}u^{r}u^{r}+g_{\phi \phi}u^{\phi}u^{\phi} & =-1 \\
\implies -\left( 1-\frac{2M}{r} \right)\left( \frac{\mathrm{d}t}{\mathrm{d}\tau} \right)^2+\left( 1-\frac{2M}{r} \right)^{-1}\left( \frac{\mathrm{d}r}{\mathrm{d}\tau} \right)^2+r^2\left( \frac{\mathrm{d}\phi}{\mathrm{d}\tau} \right)^2 & =-1 \\
\implies -\frac{E^2}{m^2\left( 1-\frac{2M}{r} \right)}+\left( 1-\frac{2M}{r} \right)^{-1}\left( \frac{\mathrm{d}r}{\mathrm{d}\tau} \right)^2+\frac{L^2}{m^2r^2} & =-1 \\
\implies \frac{1}{2} \dot{r}^{2} & =\frac{E^2-m^2}{2m^2}-\frac{1}{2}\left( 1-\frac{2M}{r} \right)\left( 1+\frac{L^2}{m^2r^2} \right) \\
\implies V_{\mathrm{eff}} & =\frac{1}{2}\left( 1-\frac{2M}{r} \right)\left( 1+\frac{L^2}{m^2r^2} \right)
\end{align}$$
- for massless particles, we have
$$\begin{align}
g_{\mu \nu}k^{\mu}k^{\nu} & =0 \\
\implies -\left( 1-\frac{2M}{r} \right)\left( \frac{\mathrm{d}t}{\mathrm{d}\lambda} \right)^2+\left( 1-\frac{2M}{r} \right)^{-1}\left( \frac{\mathrm{d}r}{\mathrm{d}\lambda} \right)^2+r^2\left( \frac{\mathrm{d}\phi}{\mathrm{d}\lambda} \right)^2 & =0 \\
\implies -\frac{E^2}{\left( 1-\frac{2M}{r} \right)}+\left( 1-\frac{2M}{r} \right)^{-1}\left( \frac{\mathrm{d}r}{\mathrm{d}\lambda} \right)^2+\frac{L^2}{r^2} & =0
\end{align}$$

for circular orbits, $\displaystyle{\frac{\mathrm{d}r}{\mathrm{d}\lambda}=0}$, we have

$$\begin{align}
\implies V_{\mathrm{eff}} & =\frac{L^2}{r^2}\left( 1-\frac{2M}{r} \right) \\
\end{align}$$


1. **Cosmology**
    1. For a flat FLRW universe dominated by a single fluid with equation of state $p = w\rho$ (where $w$ is constant), derive the scale factor evolution $a(t)$.
    2. Discuss the cases $w=0$ (dust), $w=1/3$ (radiation), and $w=-1$ (vacuum energy).
    3. Calculate the particle horizon distance $d_{H}(t) = a(t) \int_0^t \frac{dt'}{a(t')}$ for the case $w > -1/3$. Does the horizon exist?
*sol*.
- we have
$$\begin{align}
T_{\mu \nu} & =(\rho +p)u_{\mu}u_{\nu}+pg_{\mu \nu} \\
 & =\mathrm{diag}(-\rho, p, p, p) \\
 & =\mathrm{diag}(-\rho, w\rho, w\rho, w\rho)
\end{align}$$
then the Friedmann equations read
$$\begin{align}
\left( \frac{\dot{a}}{a} \right)^2 & =\frac{8\pi G}{3}\rho \\
 & = \frac{8\pi G}{3}\rho_0 \left( \frac{a_0}{a} \right)^{3(1+w)}
\end{align}$$
solving this differential equation, we have
$$\begin{align}
a(t) & =a_0\left( \frac{t}{t_0} \right)^{\frac{2}{3(1+w)}}
\end{align}$$
- 
    - for $w=0$, we have $a(t) \propto t^{2/3}$, which describes a matter-dominated universe (dust).
    - for $w=1/3$, we have $a(t) \propto t^{1/2}$, which describes a radiation-dominated universe.
    - for $w=-1$, we have $a(t) \propto e^{Ht}$, which describes a universe dominated by vacuum energy (cosmological constant).
- we have
$$\begin{align}
d_{H}(t) & =a(t) \int_0^t \frac{dt'}{a(t')} \\
 & =a_0\left( \frac{t}{t_0} \right)^{\frac{2}{3(1+w)}} \int_0^t \frac{dt'}{a_0\left( \frac{t'}{t_0} \right)^{\frac{2}{3(1+w)}}} \\
 & =t^{\frac{2}{3(1+w)}} t_0^{-\frac{2}{3(1+w)}} \int_0^t t'^{-\frac{2}{3(1+w)}} dt' \\
 & =t^{\frac{2}{3(1+w)}} t_0^{-\frac{2}{3(1+w)}} \left[ \frac{3(1+w)}{1+3w} t'^{\frac{1+3w}{3(1+w)}} \right]_0^t \\
 & =\frac{3(1+w)}{1+3w} t
\end{align}$$


2. **Black Hole Thermodynamics**
    Consider a Schwarzschild-de Sitter black hole with metric factor $f(r) = 1 - \frac{2M}{r} - \frac{\Lambda}{3}r^2$.
    1. Show that for small $\Lambda M^2$, there are two horizons (event horizon $r_h$ and cosmological horizon $r_c$).
    2. Calculate the surface gravity $\kappa$ at the event horizon.
    3. Discuss why this system is generally not in thermodynamic equilibrium (compare temperatures at $r_h$ and $r_c$).
*sol*.
- let $\displaystyle{f(r)=0}$, we have
$$\begin{align}
1 - \frac{2M}{r} - \frac{\Lambda}{3}r^2 & =0
\end{align}$$
for small $\displaystyle{\Lambda M^{2}}$, the third term is small, and we can approximate the roots as
$$\begin{align}
r_h & \approx 2M
\end{align}$$
and
$$\begin{align}
r_c & \approx \sqrt{\frac{3}{\Lambda}}
\end{align}$$
- we have
$$\begin{align}
\kappa & =\frac{1}{2}f'(r_{h}) \\
 & =\frac{1}{2}\left( \frac{2M}{r_{h}^{2}} - \frac{2\Lambda}{3}r_{h} \right) \\
 & \approx \frac{1}{4M} - \frac{\Lambda M}{3}
\end{align}$$
- the temperatures at the horizons are given by
$$\begin{align}
T_h & =\frac{\kappa_h}{2\pi} \\
 & \approx \frac{1}{8\pi M} - \frac{\Lambda M}{6\pi} \\
T_c & =\frac{\kappa_c}{2\pi} \\
 & =\frac{1}{2\pi}\left( -\frac{M}{r_c^2} + \frac{\Lambda}{3}r_c \right)
\end{align}$$

since they are generally not equal, the system is not in thermodynamic equilibrium.

# Mock Exam 2

1. **Linearized Gravity & Gravitational Waves**
    1. Starting from the linearized Einstein equation in the Lorenz gauge ($\partial^\mu \bar{h}_{\mu\nu}=0$), $\Box \bar{h}_{\mu\nu} = -16\pi G T_{\mu\nu}$, write down the retarded Green's function solution.
    2. For a binary system with mass distribution $T_{00} \approx \rho(t, \mathbf{x})$, derive the quadrupole approximation for the spatial perturbation $\bar{h}_{ij}$.
    3. Using the quadrupole formula for radiated power $P = \frac{G}{5} \langle \dddot{Q}_{ij} \dddot{Q}^{ij} \rangle$, estimate the decay rate of the orbital period $\dot{P}$ for a circular binary.
*sol*.
- the retarded Green's function satisfies
$$\begin{align}
\Box G_{\mathrm{ret}}(x - x') & =\delta^{(4)}(x - x') \\
\implies G_{\mathrm{ret}}(x - x') & =\frac{\delta(t - t' - |\mathbf{x} - \mathbf{x}'|)}{4\pi |\mathbf{x} - \mathbf{x}'|}
\end{align}$$
- we have
$$\begin{align}
\bar{h}_{\mu \nu}(t, \mathbf{x}) & =4G \int \frac{T_{\mu \nu}(t - |\mathbf{x} - \mathbf{x}'|, \mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} d^3x'
\end{align}$$
- in the quadrupole approximation, we have
$$\begin{align}
\bar{h}_{ij}(t, \mathbf{x}) & =\frac{2G}{r} \frac{d^2}{dt^2} Q_{ij}(t - r) \\
\implies Q_{ij} & =\int \rho(t, \mathbf{x}') x'_i x'_j d^3x' \\
\implies \bar{h}_{ij}(t, \mathbf{x}) & =\frac{2G}{r} \frac{d^2}{dt^2} \int \rho(t - r, \mathbf{x}') x'_i x'_j d^3x' \\
\implies \bar{h}_{ij}(t, \mathbf{x}) & =\frac{2G}{r} \ddot{Q}_{ij}(t - r) \\
\implies P & =\frac{G}{5} \langle \dddot{Q}_{ij} \dddot{Q}^{ij} \rangle \\
 & =\frac{32G^4}{5c^5} \frac{(m_1 m_2)^2 (m_1 + m_2)}{a^5}
\end{align}$$

where $\displaystyle{m_{1},m_{2}}$

1. **Kerr Black Hole Geometry**
    1. Write down the condition for the event horizon given $\Delta = r^2 - 2Mr + a^2$.
    2. Define the Ergosphere limits. Explain physically what happens to a timelike observer inside the Ergosphere.
    3. Calculate the angular velocity of the "zero angular momentum observer" (ZAMO), $\omega = -g_{t\phi}/g_{\phi\phi}$.
    4. Verify that at the horizon, this matches the horizon angular velocity $\Omega_H$.
    5. **Penrose Process**: Show that energy extraction is possible if a particle decays into two particles inside the Ergosphere, where one particle has negative energy $E < 0$. What is the condition on the Killing vector $\xi^\mu_{(t)}$ for this to happen?
*sol*.
- at even horizon, we have
$$\begin{align}
\Delta & =0\implies r^2 - 2Mr + a^2 =0 \\
\implies r_{\pm} & =M \pm \sqrt{M^2 - a^2}
\end{align}$$
- the ergosphere is defined by the surface where $g_{tt} = 0$, which gives
$$\begin{align}
r_{e}(\theta) & =M + \sqrt{M^2 - a^2 \cos^2\theta}
\end{align}$$
inside the ergosphere, a timelike observer cannot remain stationary with respect to distant observers; they are forced to co-rotate with the black hole due to frame-dragging effects.
- we have
$$\begin{align}
\omega & =-\frac{g_{t\phi}}{g_{\phi \phi}} \\
 & =\frac{2Mar}{(r^2 + a^2)^2 - a^2 \Delta \sin^2\theta}
\end{align}$$
- at the horizon, we have $\displaystyle{r_{+}^{2}+a^{2}=2Mr_{+}}$, and thus
$$\begin{align}
\Omega _{H} & =\frac{2Mar_{+}}{(2Mar_{+})^{2}} \\
 & =\frac{a}{2Mr_{+}}
\end{align}$$
- **Penrose Process Detailed**:
    - Energy is defined by the timelike Killing vector $\xi^\mu_{(t)} = \partial_t$ as $E = -p_\mu \xi^\mu_{(t)}$.
    - Normally $\xi^\mu_{(t)}$ is timelike ($\xi \cdot \xi = g_{tt} < 0$), and for a timelike particle $p^\mu$ (future-directed), $E > 0$.
    - Inside the **Ergosphere** ($r_+ < r < r_{stat}$), $g_{tt} > 0$, so $\xi^\mu_{(t)}$ becomes **spacelike**.
    - If $\xi^\mu_{(t)}$ is spacelike, the scalar product $E = -p \cdot \xi_{(t)}$ can be negative for certain directions of $p^\mu$ (specifically counter-rotating orbits with large negative angular momentum).
    - Process: A particle 0 falling in splits into 1 and 2: $p^\mu_0 = p^\mu_1 + p^\mu_2$.
    - Conserved Energy: $E_0 = E_1 + E_2$.
    - If particle 2 is shot against the rotation such that $E_2 < 0$ (which is only possible in the ergosphere), then $E_1 = E_0 - E_2 > E_0$.
    - Particle 2 must fall into the hole (negative energy orbits are trapped), while Particle 1 can escape to infinity with more energy than the original particle.
    - Thus, energy is extracted from the rotational energy of the black hole.

2. **ADM Formalism**
    1. Define the lapse function $N$ and shift vector $N^i$ in the metric decomposition $ds^2 = -N^2 dt^2 + \gamma_{ij}(dx^i + N^i dt)(dx^j + N^j dt)$.
    2. Write the definition of Extrinsic Curvature $K_{ij}$ in terms of the Lie derivative of the spatial metric.
    3. State the Hamiltonian constraint ($G_{00}$ component) and Momentum constraint ($G_{0i}$ component) in terms of $^{(3)}R$ and $K_{ij}$.
*sol*.
- lapse function $N$ measures the proper time between hypersurfaces of constant $t$, while the shift vector $N^i$ describes how the spatial coordinates shift from one hypersurface to the next. we have
$$\begin{align}
n_{\mu} & =-N\partial _{\mu}t \\
t^{\mu} & =Nn^{\mu}+N^{\mu}
\end{align}$$
- we have
$$\begin{align}
K_{ij} & =\frac{1}{2}\mathcal{L}_{n}\gamma_{ij}
\end{align}$$
- we have
$$\begin{align}
^{(3)}R + K^2 - K_{ij}K^{ij} & =16\pi G \rho \\
D_{j}(K^{ij} - \gamma^{ij}K) & =8\pi G S^{i}
\end{align}$$

4. **Penrose Diagrams & Causal Structure**
    1. Draw the Penrose diagram for an Extremal Reissner-Nordström black hole ($|Q|=M$).
    2. Label the horizon, singularity, and conformal infinity.
    3. Is the singularity spacelike, timelike, or null? Can an observer avoid the singularity after crossing the horizon?
*sol*.
- for extremal RN blackhole, the metric reads
$$\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{f(r)}+r^{2}\mathrm{d}\Omega _{2}^{2} \\
f(r) & =\left( 1-\frac{M}{r} \right)^{2}\geqslant 0
\end{align}$$
- **Correction**: Unlike negative mass Schwarzschild, here $\displaystyle{r=M}$ is a horizon (a coordinate singularity where $f(r)=0$). The causal structure is an infinite chain of diamond-shaped regions.
    - Regions: External ($r>M$) and Internal ($0<r<M$).
    - Horizon: The surface $r=M$ is a null surface.
    - Singularity: $r=0$ is a **timelike** singularity.
    - Diagram: It looks like an infinite vertical strip of diamonds. An observer crossing the horizon can avoid the singularity and exit into another "universe" (though this region is unstable).
- The singularity is timelike. Yes, it is possible to avoid the singularity.

# Mock Exam 3

1. **Raychaudhuri Equation**
    1. Write down the Raychaudhuri equation for a null geodesic congruence with tangent vector $k^\mu$:
       $\frac{d\theta}{d\lambda} = -\frac{1}{2}\theta^2 - \sigma_{\mu\nu}\sigma^{\mu\nu} + \omega_{\mu\nu}\omega^{\mu\nu} - R_{\mu\nu}k^\mu k^\nu$.
    2. Assuming the Null Energy Condition (NEC) holds, and the congruence is hypersurface orthogonal ($\omega=0$), prove the Focusing Theorem: if $\theta_0 < 0$, $\theta \to -\infty$ in finite affine parameter.
    3. Briefly define a "Trapped Surface" using the expansions of ingoing and outgoing null geodesics.
*sol*.
- you have written the Raychaudhuri equation correctly.
- we have
$$\begin{align}
\frac{\mathrm{d}\theta}{\mathrm{d}\lambda} & =-\frac{1}{2}\theta ^{2}-\sigma _{\mu \nu}\sigma ^{\mu \nu}+\omega _{\mu \nu}\omega ^{\mu \nu}-R_{\mu \nu}k^{\mu}k^{\nu} \\
 & \leqslant -\frac{1}{2}\theta ^{2} \\
\implies \theta(\lambda) & =\frac{\theta_0}{1+\frac{1}{2}\theta_0 \lambda}\to -\infty \quad \text{as} \quad \lambda \to -\frac{2}{\theta_0}
\end{align}$$
- trapped surface is a two-dimensional spacelike surface such that both the ingoing and outgoing null geodesic congruences orthogonal to the surface have negative expansion ($\theta < 0$).


1. **Vaidya Metric (Dynamic Black Hole)**
    Consider the limit of geometrical optics used in the Vaidya metric for strictly ingoing null dust:
    $ds^2 = -(1-\frac{2M(v)}{r})dv^2 + 2dvdr + r^2 d\Omega^2$.
    1. Calculate the inverse metric $g^{\mu\nu}$.
    2. Show that $l_\mu = \partial_\mu v$ is a null vector field. Is it geodesic?
    3. Calculate the Einstein tensor component $G_{vv}$ (or argue its form) to relate it to the energy flux of the null dust.
*sol*.
- **Inverse Metric**:
    Matrix form: $\displaystyle{g_{\mu \nu}=\begin{pmatrix} -(1-2M(v)/r) & 1 \\ 1 & 0 \end{pmatrix}}$.
    Inverse: $\displaystyle{g^{\mu \nu}=\begin{pmatrix} 0 & 1 \\ 1 & 1-2M(v)/r \end{pmatrix}}$.
    Non-zero components: $\displaystyle{g^{vr}=1, g^{rr}=1-\frac{2M(v)}{r}}$.
- **Null Vector**:
    $\displaystyle{l_{\mu}=\partial _{\mu}v = (1, 0, 0, 0)}$.
    Norm: $\displaystyle{l^{2}=g^{vv}(1)^{2}=0}$. It is null.
    Geodesic? $\displaystyle{l^{\mu}=g^{\mu \nu}l_{\nu}=\delta ^{\mu}_{r}}$.
    $\displaystyle{l^{\nu}\nabla _{\nu}l^{\mu}=\partial _{r}(\delta ^{\mu}_{r})+\Gamma ^{\mu}_{rr}l^{r}\dots}$ Actually simpler: $\displaystyle{l_{\mu}=\nabla _{\mu}v}$. $\displaystyle{l^{\nu}\nabla _{\nu}l_{\mu} = l^{\nu}\nabla _{\mu}l_{\nu} = \frac{1}{2}\nabla _{\mu}(l^{2})=0}$.
    Yes, it is a geodesic.
- **Einstein Tensor**:
    Computing $\displaystyle{G_{\mu \nu}}$ for $\displaystyle{M(v)}$. The only new term compared to Schwarzschild comes from $\displaystyle{\partial _{v}M}$.
    Result: $\displaystyle{G_{vv} = \frac{2}{r^{2}}\frac{\mathrm{d}M}{\mathrm{d}v}}$.
    Energy-momentum tensor for null dust: $\displaystyle{T_{\mu \nu}=\rho l_{\mu}l_{\nu}}$. $\displaystyle{T_{vv}=\rho}$.
    Einstein Eq: $\displaystyle{\frac{2}{r^{2}}\dot{M} = 8\pi \rho \implies \dot{M}=4\pi r^{2}\rho}$.
    This means the mass changes due to the influx of null energy density $\rho$.

2. **Field Theory in Curved Spacetime**
    1. Write the action for a massless scalar field $\phi$ non-minimally coupled to gravity (coupling $\xi R \phi^2$).
    2. Derive the equation of motion for $\phi$.
    3. Derive the stress-energy tensor $T_{\mu\nu} = \frac{-2}{\sqrt{-g}}\frac{\delta S_\phi}{\delta g^{\mu\nu}}$.
*sol*.
- we have
$$\begin{align}
S & =\int \mathrm{d}^{d}x\sqrt{ -g }\left(-\frac{1}{2}\nabla _{\mu}\phi \nabla ^{\mu}\phi+\xi R\phi ^{2}\right)
\end{align}$$
- The equation of motion is derived by varying the action with respect to $\phi$:
$$\begin{align}
\nabla ^{2}\phi-2\xi R\phi & =0 \\
\end{align}$$
- The stress-energy tensor is obtained by varying with respect to the metric $g^{\mu\nu}$. The term $\xi R \phi^2$ contributes non-trivial terms involving second derivatives of the metric (which become second derivatives of $\phi$ after integration by parts):
$$\begin{align}
T_{\mu \nu} & =\nabla _{\mu}\phi \nabla _{\nu}\phi -\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}\phi +\xi \left( G_{\mu \nu}\phi ^{2}-\nabla _{\mu}\nabla _{\nu}\phi ^{2}+g_{\mu \nu}\nabla ^{2}\phi ^{2} \right)
\end{align}$$



3. **Killing Tensors & Hidden Symmetries**
    1. Define a Rank-2 Killing Tensor $K_{\mu\nu}$.
    2. Prove that if $K_{\mu\nu}$ is a Killing tensor and $u^\mu$ is a geodesic tangent vector, then $Q = K_{\mu\nu}u^\mu u^\nu$ is conserved along the geodesic.
    3. Discuss the significance of the Carter Constant in the separability of the Hamilton-Jacobi equation for the Kerr metric.
*sol*.
- a Rank-2 Killing Tensor $K_{\mu\nu}$ satisfies the equation
$$\begin{align}
\nabla_{(\alpha} K_{\beta\gamma)} & = 0
\end{align}$$
- we have
$$\begin{align}
\frac{\mathrm{d}Q}{\mathrm{d}\tau} & =u^{\mu}\nabla _{\mu}\left(K_{\rho \sigma}u^{\rho}u^{\sigma}\right) \\
 & =u^{\mu}u^{\rho \sigma}\nabla _{\mu}K_{\rho \sigma}+2K_{\rho \sigma}u^{\rho}\nabla _{\mu}u^{\sigma} \\
 & =0
\end{align}$$
the first term vanishes due to the definition of Killing tensor, and the second term vanishes because $\displaystyle{u^{\mu}}$ is geodesic.
- **Significance of Carter Constant**:
    In the Kerr metric, besides the energy $E = -p_t$ and angular momentum $L_z = p_\phi$ (from Killing vectors $\partial_t, \partial_\phi$), there is a fourth constant of motion required to fully integrate the geodesic equations (the third is the rest mass $m^2 = -p^\mu p_\mu$).
    This constant is the Carter Constant $Q$, associated with a second-rank Killing tensor $K_{\mu\nu}$.
    Its existence allows the **Hamilton-Jacobi equation** for geodesics:
    $$ \frac{\partial S}{\partial \lambda} + \frac{1}{2}g^{\mu\nu}\partial_\mu S \partial_\nu S = 0 $$
    to be separable by ansatz $S = \frac{1}{2}\mu^2 \lambda - Et + L_z \phi + S_r(r) + S_\theta(\theta)$.
    This reduces the 4D coupled system into 4 independent 1st-order ODEs, making the motion solvable by quadratures. Physically, it relates to the discrete symmetry of the source and non-planar motion (latitude stability).

# Mock Exam 4

1.  **Spherically Symmetric Static Spacetime**
    Consider the general static spherically symmetric metric:
    $ds^2 = -e^{2\nu(r)}dt^2 + e^{2\lambda(r)}dr^2 + r^2(d\theta^2 + \sin^2\theta d\phi^2)$.
    1.  Calculate the non-vanishing Christoffel symbols $\Gamma^t_{tr}$, $\Gamma^r_{tt}$, and $\Gamma^\theta_{\phi\phi}$.
    2.  Using the vacuum Einstein equations $R_{\mu\nu} = 0$, show that one implies $\nu'(r) + \lambda'(r) = 0$. (Hint: Consider $R_{tt}$ and $R_{rr}$ linear combination).
    3.  If we set $\nu(r) = -\lambda(r)$, derive the form of $e^{2\nu(r)}$ (Schwarzschild solution) by solving the remaining field equation.
*sol*.
- non vanishing Christoffel symbols
$$\begin{align}
\Gamma ^{t}_{~tr} & =\nu' \\
\Gamma ^{r}_{~tt} & =e^{2(\nu-\lambda)}\nu' \\
\Gamma ^{r}_{~rr} & =\lambda' \\
\Gamma ^{r}_{~\theta \theta} & =-re^{-2\lambda} \\
\Gamma ^{t}_{~\phi \phi} & = -r\sin ^{2}\theta e^{-2\lambda} \\
\Gamma ^{\theta}_{~\phi \phi} & =-\sin \theta \cos \theta \\
\Gamma ^{\phi}_{~\theta \phi} & =\cot \theta
\end{align}$$
- $\displaystyle{R_{\mu \nu}=0}$ gives
$$\begin{align}
R_{tt} & =e^{2(\nu -\lambda)}\left( \nu''+\nu'^{2}-\nu'\lambda'+\frac{2}{r}\nu' \right) =0 \\
R_{rr} & =-\nu''-\nu'^{2}+\nu'\lambda'+\frac{2}{r}\lambda' =0 \\
\implies R_{tt}+R_{rr}e^{2(\nu-\lambda)} & =\frac{2}{r}(\nu' + \lambda')e^{2(\nu-\lambda)} = 0\implies \nu'+\lambda'=0
\end{align}$$
- the $\displaystyle{\theta \theta}$ component
$$\begin{align}
R_{\theta \theta} & =e^{-2\lambda}[r(\lambda'-\nu')-1]+1=0 \\
\implies 2r\lambda' & =1 - e^{2\lambda}\implies e^{-2\lambda} = 1 - \frac{2M}{r}
\end{align}$$

2.  **Photon Sphere & Gravitational Capture**
    Consider a particle with mass $m$ (or photon $m=0$) moving in the equatorial plane of Schwarzschild spacetime.
    1.  Derive the effective potential $V_{eff}(r)$ from the radial geodesic equation $\dot{r}^2 + V_{eff}(r) = E^2$.
    2.  For a photon ($m=0$), find the radius of the circular orbit (Photon Sphere) where $V'_{eff}(r) = 0$. Is it stable?
    3.  Calculate the impact parameter $b = |L/E|$ for a photon to be barely captured by the black hole.
*sol*.
- the     
    *sol*.
    - **Effective Potential**:
      From $g_{\mu\nu}\dot{x}^\mu\dot{x}^\nu = -\epsilon$ ($\epsilon=0$ for photon, $1$ for massive).
      $-(1-\frac{2M}{r})\dot{t}^2 + (1-\frac{2M}{r})^{-1}\dot{r}^2 + r^2\dot{\phi}^2 = -\epsilon$.
      Use conserved $E = (1-2M/r)\dot{t}$ and $L = r^2\dot{\phi}$.
      $\dot{r}^2 + (1-\frac{2M}{r})(\epsilon + \frac{L^2}{r^2}) = E^2$.
      $V_{eff}(r) = (1-\frac{2M}{r})(\frac{L^2}{r^2})$ for photons.
    - **Photon Sphere**:
      $V'(r) = 0 \implies \frac{2M}{r^2}\frac{L^2}{r^2} + (1-\frac{2M}{r})(-2\frac{L^2}{r^3}) = 0$.
      $M - (r-2M) = 0 \implies r - 3M = 0 \implies r_{ph} = 3M$.
      $V''(3M) < 0$, so it is **unstable**.
    - **Capture Cross Section**:
      $V_{max} = V(3M) = (1-2/3)\frac{L^2}{9M^2} = \frac{L^2}{27M^2}$.
      For capture, $E^2 > V_{max} \implies E^2 > \frac{L^2}{27M^2} \implies b = \frac{L}{E} < \sqrt{27}M \approx 5.2M$.

3.  **Lie Derivatives & Symmetries**
    Given a vector field $\xi^\mu$ and metric $g_{\mu\nu}$.
    1.  Write the definition of the Lie derivative $\mathcal{L}_\xi g_{\mu\nu}$ in terms of covariant derivatives.
    2.  For Minkowski space in polar coordinates ($ds^2 = -dt^2 + dr^2 + r^2 d\phi^2$), check if $\xi = \partial_\phi$ is a Killing vector by explicit calculation.
    3.  Is $\zeta = r \partial_r$ a conformal Killing vector? (i.e., $\mathcal{L}_\zeta g_{\mu\nu} = \lambda(x) g_{\mu\nu}$).
    *sol*.
    - **Definition**: $\mathcal{L}_\xi g_{\mu\nu} = \nabla_\mu \xi_\nu + \nabla_\nu \xi_\mu$.
    - **Killing Check**:
      $\xi^\mu = (0, 0, 1)$. $\xi_\mu = g_{\mu\nu}\xi^\nu = (0, 0, r^2)$.
      Non-zero components of $\nabla$: $\Gamma^\phi_{r\phi} = 1/r$.
      $\nabla_\phi \xi_\phi = \partial_\phi \xi_\phi - \Gamma^\lambda_{\phi\phi}\xi_\lambda = 0 - (-r)(0) - 0 = 0$. (Wait, $\Gamma^r_{\phi\phi} = -r$).
      Actually easier: $\partial_\phi g_{\mu \nu} = 0$ implies $\partial_\phi$ is Killing.
    - **Conformal Check**:
      $\zeta = r\partial_r \implies \zeta^r = r$.
      $\mathcal{L}_\zeta g_{rr} = \zeta^r \partial_r g_{rr} + 2 g_{rr} \partial_r \zeta^r = r(0) + 2(1)(1) = 2$.
      $\mathcal{L}_\zeta g_{\phi\phi} = \zeta^r \partial_r g_{\phi\phi} + 0 = r(2r) = 2r^2 = 2g_{\phi\phi}$.
      $\mathcal{L}_\zeta g_{tt} = 0 = 2g_{tt}$ (since $g_{tt}=-1$). Fails for $g_{tt}$. Not a conformal Killing vector for the full spacetime (only for spatial part).

# Mock Exam 5

1.  **Thermodynamics & Surface Gravity**
    1.  Define the surface gravity $\kappa$ for a static horizon with Killing vector $\chi^\mu$.
    2.  For a generic static metric $ds^2 = -f(r)dt^2 + \frac{dr^2}{f(r)} + r^2 d\Omega^2$, derive the formula $\kappa = \frac{1}{2}f'(r_h)$.
    3.  Calculate the Hawking temperature $T_H$ for a Schwarzschild black hole ($f=1-2M/r$).
    *sol*.
    - **Definition**: $\chi^\mu \nabla_\mu \chi^\nu = \kappa \chi^\nu$ evaluated at the horizon. Or $\kappa^2 = -\frac{1}{2}(\nabla^\mu \chi^\nu)(\nabla_\mu \chi_\nu)$.
    - **Derivation**:
      $\chi = \partial_t$. Covariant derivative $\nabla_\mu \chi_\nu$:
      Non-zero is $\nabla_r \chi_t = \partial_r \chi_t - \Gamma^\lambda_{rt}\chi_\lambda \dots$
      Simpler: $\kappa = \lim_{r \to r_h} \frac{1}{2} \frac{\partial_{r} g_{tt}}{\sqrt{-g_{tt}g_{rr}}} = \frac{1}{2}f'(r_h)$.
    - **Calculation**:
      $f'(r) = \frac{2M}{r^2}$.
      At $r_h = 2M$: $\kappa = \frac{1}{2} \frac{2M}{(2M)^2} = \frac{1}{4M}$.
      $T_H = \frac{\kappa}{2\pi} = \frac{1}{8\pi M}$.

2.  **Cosmology: Energy Conservation**
    In an FRW universe, the energy-momentum tensor is $T^{\mu\nu} = (\rho+p)u^\mu u^\nu + p g^{\mu\nu}$.
    1.  Using $\nabla_\mu T^{\mu\nu} = 0$, derive the continuity equation $\dot{\rho} + 3H(\rho+p) = 0$.
    2.  For radiation ($p = \rho/3$), how does $\rho$ scale with scale factor $a(t)$?
    3.  For a cosmological constant ($p = -\rho$), solve for $\rho(a)$.
    *sol*.
    - **Continuity Eq**:
      consider $\nu=0$ component. $\nabla_\mu T^{\mu 0} = \partial_\mu T^{\mu 0} + \Gamma^\mu_{\mu \lambda} T^{\lambda 0} + \Gamma^0_{\mu \lambda} T^{\mu \lambda}$.
      Using $\Gamma^\mu_{\mu 0} = 3\frac{\dot{a}}{a} = 3H$.
      $\dot{\rho} + 3H(\rho + p) = 0$.
    - **Radiation**:
      $\dot{\rho} + 3\frac{\dot{a}}{a}(\frac{4}{3}\rho) = 0 \implies \frac{\dot{\rho}}{\rho} = -4\frac{\dot{a}}{a} \implies \rho \propto a^{-4}$.
    - **Vacuum**:
      $\dot{\rho} + 3H(0) = 0 \implies \rho = \text{const}$.

3.  **Linearized Gravity & Gauges**
    Metric $g_{\mu\nu} = \eta_{\mu\nu} + h_{\mu\nu}$ with $|h| \ll 1$.
    1.  How does $h_{\mu\nu}$ transform under a coordinate transformation $x^\mu \to x^\mu + \xi^\mu$?
    2.  Define the Transverse Traceless (TT) gauge.
    3.  Given a wave propagating in $z$-direction, write the general form of $h_{ij}^{TT}$.
    *sol*.
    - **Transformation**: $h'_{\mu\nu} = h_{\mu\nu} - \partial_\mu \xi_\nu - \partial_\nu \xi_\mu$.
    - **TT Gauge**:
      1. $h_{0\mu} = 0$ (Spatial).
      2. $\partial^j h_{ij} = 0$ (Transverse).
      3. $\eta^{ij} h_{ij} = 0$ (Traceless).
    - **Form**:
      $$ h_{ij}^{TT} = \begin{pmatrix} h_+ & h_\times & 0 \\ h_\times & -h_+ & 0 \\ 0 & 0 & 0 \end{pmatrix} \cos(\omega(t-z)) $$

# Mock Exam 6 (Cosmology Special)

1.  **Friedmann Equations & Background Dynamics**
    The FRW metric is $ds^2 = -dt^2 + a^2(t)[\frac{dr^2}{1-kr^2} + r^2d\Omega^2]$.
    1.  Given the Friedmann equation $H^2 \equiv (\frac{\dot{a}}{a})^2 = \frac{8\pi G}{3}\rho - \frac{k}{a^2}$ and the continuity equation $\dot{\rho} + 3H(\rho+p) = 0$, derive the "Acceleration Equation" for $\frac{\ddot{a}}{a}$.
    2.  Define the Critical Density $\rho_c$ and the Density Parameter $\Omega$. Write the Friedmann equation in terms of $\Omega$ and curvature density $\Omega_k$.
    3.  Show that for a static universe ($\dot{a}=\ddot{a}=0$), one requires $\rho + 3p < 0$ (if $\Lambda=0$) or a Cosmological Constant (if $\rho>0, p\approx 0$), motivating Einstein's introduction of $\Lambda$.
    *sol*
    - **Acceleration Equation**:
      Differentiate $H^2 a^2 = \frac{8\pi G}{3} \rho a^2 - k$:
      $2\dot{a}\ddot{a} = \frac{8\pi G}{3}(\dot{\rho}a^2 + 2\rho a \dot{a})$.
      Substitute $\dot{\rho} = -3\frac{\dot{a}}{a}(\rho+p) = -3H(\rho+p)$.
      $2\dot{a}\ddot{a} = \frac{8\pi G}{3} [ -3\frac{\dot{a}}{a}(\rho+p)a^2 + 2\rho a \dot{a} ]$.
      Divide by $2a\dot{a}$:
      $\frac{\ddot{a}}{a} = \frac{4\pi G}{3} [-3(\rho+p) + 2\rho] = \frac{4\pi G}{3}(-\rho - 3p) = -\frac{4\pi G}{3}(\rho + 3p)$.
    - **Parameters**:
      $\rho_c = \frac{3H^2}{8\pi G}$. $\Omega = \rho/\rho_c$.
      $H^2 = H^2 \Omega - \frac{k}{a^2} \implies \Omega - 1 = \frac{k}{a^2 H^2} \equiv \Omega_k$.
      So $\Omega + \Omega_k = 1$?? Actually usually defined as $\Omega - 1 = \frac{k}{a^2 H^2}$ is wrong sign convention depending on source. Let's use $1 = \Omega - \frac{k}{a^2 H^2}$ so $\Omega_k = -k/(aH)^2$. Then $\sum \Omega_i + \Omega_k = 1$.
    - **Static Universe**:
      $\dot{a}=0 \implies \rho = \frac{3k}{8\pi G a^2}$.
      $\ddot{a}=0 \implies \rho + 3p = 0$.
      For matter $p=0$, $\rho=0$, which is empty.
      If we add $\Lambda$ (treated as fluid $\rho_\Lambda = -p_\Lambda$), we can have $\rho_m + \rho_\Lambda = \dots$ allowing static solution (Einstein Static Universe). Specifically, $\ddot{a} \propto -(\rho_m + \rho_\Lambda + 3p_\Lambda) \approx -(\rho_m - 2\rho_\Lambda) = 0 \implies \rho_\Lambda = \rho_m/2$.
*sol*.
- the Friedman equation is given by
$$\begin{align}
H^{2} & =\frac{8\pi}{3}\rho-\frac{k}{a^{2}}
\end{align}$$
and the continuity equation is
$$\begin{align}
T_{\mu \nu} & =(\rho+p)u_{\mu}u_{\nu}+pg_{\mu \nu} \\
\implies \nabla _{\mu}T^{\mu0} & \implies \dot{\rho}+3H(\rho+p)=0 \\
\implies \frac{\ddot{a}}{a} & =-\frac{4\pi}{3}(\rho+3p)
\end{align}$$

2.  **Distance Measures & Redshift**
    1.  Define the redshift $z$ in terms of the scale factor $a(t)$ (assuming $a(t_0)=1$).
    2.  Define **Luminosity Distance** $d_L$ and **Angular Diameter Distance** $d_A$.
    3.  Prove the reciprocity relation $d_L = (1+z)^2 d_A$. (Or just argue using surface brightness conservation/Liouville theorem).
    4.  In a flat universe dominated by a single component with equation of state $w$ ($p=w\rho$), how does the Particle Horizon $d_H(t) \propto \int_0^t dt'/a(t')$ scale with time? Condition on $w$ for the horizon to exist (be finite)?
    *sol*.
    - **Redshift**: $1+z = \frac{a(t_0)}{a(t_{emit})} = \frac{1}{a}$.
    - **Definitions**:
      $d_L = \sqrt{\frac{L}{4\pi F}}$ where $F$ is flux and $L$ is absolute luminosity.
      $d_A = \frac{D}{\theta}$ where $D$ is proper size and $\theta$ is angular size.
    - **Relation**:
      Flux is reduced by two factors of $(1+z)$: one for energy reduction ($h\nu$), one for time dilation (arrival rate). So $F \propto L / [(1+z)^2 (\text{comoving dist})^2]$.
      Angular size $\theta = D / a(t_e) \chi$.
      This leads to $d_L = (1+z) \chi$ and $d_A = \chi / (1+z)$.
      Thus $d_L = (1+z)^2 d_A$.
    - **Horizon**:
      $\rho \propto a^{-3(1+w)}$. $H^2 \propto a^{-3(1+w)}$. $\dot{a}/a \propto a^{-3(1+w)/2}$.
      $\dot{a} \propto a^{1 - 3(1+w)/2} = a^{-(1+3w)/2}$.
      $a^{(1+3w)/2} da \propto dt \implies a \propto t^{\frac{2}{3(1+w)}}$.
      Let $a \propto t^n$ with $n = \frac{2}{3(1+w)}$.
      $d_H(t) = a(t) \int_0^t \frac{dt'}{a(t')} = t^n \int_0^t (t')^{-n} dt'$.
      Integral converges if $-n > -1 \implies n < 1$.
      $\int t^{-n} = \frac{t^{1-n}}{1-n}$.
      $d_H(t) \sim t^n \cdot t^{1-n} \sim t$.
      Wait, typical condition: $n < 1$ means deceleration. Actually for horizon to exist (finite past), we need singularity $a=0$ at $t=0$. $\int dt/a$ converges near $0$ if $a \sim t^n$ with $n<1$.
      Actually standard result: Horizon exists if $w > -1/3$ (Decelerating). If $w < -1/3$ (Inflation), horizon integral diverges at past (or is very large), solving horizon problem.

3.  **Cosmological Problems & Inflation**
    1.  Briefly explain the **Flatness Problem**. Why is $\Omega=1$ an unstable fixed point in standard cosmology?
    2.  Briefly explain the **Horizon Problem**. Why is the CMB isotropic?
    3.  How does Inflation (a period of $\ddot{a} > 0$) solve these problems? Use the behavior of the comoving Hubble radius $(aH)^{-1}$.
    *sol*.
    - **Flatness Problem**:
      $\Omega(t) - 1 = \frac{k}{a^2 H^2} = \frac{k}{\dot{a}^2}$.
      In standard expansion (matter/radiation), $\dot{a}$ decreases with time. So $|\Omega - 1|$ grows.
      To be $\Omega \sim 1$ today, it must have been extremely close to 1 early on (fine tuning).
    - **Horizon Problem**:
      CMB patches separated by $>1^\circ$ were never in causal contact in standard history ($d_H(t_{LSS}) \ll$ physical distance between patches). Yet they have same Temperature.
    - **Inflation Solution**:
      During inflation, $\ddot{a} > 0 \implies \dot{a}$ increases.
      $|\Omega - 1| \propto 1/\dot{a}^2$ decreases rapidly. Drives $\Omega \to 1$.
      Comoving Hubble radius $(aH)^{-1} = 1/\dot{a}$ decreases.
      Physical scales $\lambda \propto a$ grow faster than Hubble radius $1/H$.
      Regions that are currently observable were inside the horizon before inflation, established equilibrium, exited horizon during inflation, and re-entered later.
