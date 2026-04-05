# Lecture 3: Scalar Field Dynamics and Cosmological Parameters

## 1. Scalar Field Cosmology

### 1.1 Action and Equation of Motion
Consider a scalar theory minimally coupled to gravity. The action is given by:
$$\begin{align}
S & =\int \mathrm{d}^{4}x\sqrt{ -g }\left(\frac{R}{16\pi G}-\frac{1}{2}\nabla _{\mu}\phi \nabla ^{\mu}\phi-V(\phi)\right)
\end{align}$$

Taking a variation with respect to the scalar field $\displaystyle{\phi}$, we obtain the equation of motion (EoM) for $\displaystyle{\phi}$:
$$\begin{align}
\frac{\delta S}{\delta \phi} & \equiv\nabla ^{2}\phi-V'(\phi)=0
\end{align}$$

By taking a variation with respect to the metric $\displaystyle{g_{\mu \nu}}$, we get the stress-energy tensor:
$$\begin{align}
T_{\mu \nu} & =-\frac{2}{\sqrt{ -g }} \frac{\delta S}{\delta g^{\mu \nu}} \\
 & =\nabla _{\mu}\phi \nabla _{\nu}\phi-g_{\mu \nu}\left(\frac{1}{2} \nabla _{\rho}\phi \nabla ^{\rho}\phi+V(\phi)\right)
\end{align}$$

### 1.2 Perfect Fluid Form and Cosmological Constant
Suppose the scalar field $\displaystyle{\phi}$ is spatially homogeneous, i.e., it depends only on time $\displaystyle{\phi=\phi(t)}$. We can identify its macroscopic behavior with that of a macroscopic perfect fluid $T_{\mu\nu} = (\rho + p)U_\mu U_\nu + p g_{\mu\nu}$ by setting the 4-velocity $U_\mu = (-1, 0, 0, 0)$ in the commoving frame. This yields the effective energy density and pressure:
$$\begin{align}
\rho & =\frac{1}{2}\dot{\phi}^{2}+V(\phi) \\
p & =\frac{1}{2}\dot{\phi}^{2}-V(\phi)
\end{align}$$

When the field varies very slowly ($\dot{\phi}^{2} \ll V(\phi)$, the **slow-roll condition**), the fluid has $p \simeq -\rho \simeq -V(\phi)$, which yields an equation of state parameter:
$$\begin{align}
w & = \frac{p}{\rho} \approx -1
\end{align}$$
This precisely mimics the behavior of a **cosmological constant** (vacuum energy), which can drive the accelerated expansion of the universe (e.g., during inflation or dark energy domination).

### 1.3 Scalar Field in FRW Universe
Choose the spatially flat FRW metric ($k=0$):
$$\begin{align}
\mathrm{d}s^{2} & =-\mathrm{d}t^{2}+a^{2}(t)\mathrm{d}\mathbf{x}^{2}
\end{align}$$
The d'Alembertian operator $\nabla^2\phi = \frac{1}{\sqrt{-g}} \partial_\mu (\sqrt{-g} \partial^\mu \phi)$ leads to the equation of motion for a homogeneous scalar field $\displaystyle{\phi(t)}$:
$$\begin{align}
\ddot{\phi}+3H\dot{\phi}+V'(\phi) & =0
\end{align}$$
where $\displaystyle{H=\frac{\dot{a}}{a}}$ is the Hubble parameter. The $3H\dot{\phi}$ term acts as a cosmological friction (Hubble friction).

In **conformal time** $\displaystyle{\eta}$, defined by $\displaystyle{\mathrm{d}t=a(\eta)\mathrm{d}\eta}$, the flat FRW metric is:
$$\begin{align}
\mathrm{d}s^{2} & =a^{2}(\eta)\left(-\mathrm{d}\eta^{2}+\mathrm{d}\mathbf{x}^{2}\right)
\end{align}$$
The scalar field equation of motion takes the form:
$$\begin{align}
\phi''+2\mathcal{H}\phi'+a^{2}V'(\phi) & =0
\end{align}$$
where $\displaystyle{\mathcal{H}=\frac{a'}{a}}$ is the conformal Hubble parameter, and the prime denotes the derivative with respect to conformal time $\displaystyle{\eta}$.

### 1.4 Friedmann Equations for a Scalar Field
Using the scalar field energy density and pressure, the Friedmann equations become:
$$\begin{align}
H^{2} & =\frac{8\pi G}{3}\rho = \frac{8\pi G}{3}\left(\frac{1}{2}\dot{\phi}^{2}+V(\phi)\right) 
\end{align}$$
Combining this with the acceleration equation $\frac{\ddot{a}}{a} = -\frac{4\pi G}{3}(\rho + 3p)$, or taking the time derivative of $H^2$ and using the EoM, we get:
$$\begin{align}
\dot{H} & =-4\pi G\dot{\phi}^{2}
\end{align}$$

And their conformal versions are equivalently:
$$\begin{align}
\mathcal{H}^{2} & =\frac{8\pi G}{3}\left(\frac{1}{2}\phi'^{2}+a^{2}V(\phi)\right) \\
\mathcal{H}'-\mathcal{H}^{2} & =-4\pi G\phi'^{2}
\end{align}$$

---

## 2. Advanced Scalar Field Dynamics

### 2.1 Reheating and Rapid Oscillations
During the **reheating** epoch after inflation, the scalar field oscillates rapidly around the minimum of its potential. Assume the potential takes the form $\displaystyle{V(\phi)=V_{0}\phi ^{n}}$. Because the oscillation frequency is much larger than the Hubble expansion rate ($\omega \gg H$), we can treat macroscopic quantities by taking a time average over an oscillation period $T$. 

Multiplying the EoM $\ddot{\phi}+3H\dot{\phi}+V'(\phi)=0$ by $\phi$ and taking the time average (essentially applying the virial theorem):
$$\begin{align}
\braket{ \ddot{\phi}\phi } & = \frac{1}{T}\int_{0}^{T} \mathrm{d}t \, \ddot{\phi}\phi \\
 & = \left. \frac{1}{T} \dot{\phi}\phi \right|_{0}^{T} - \frac{1}{T}\int_{0}^{T} \mathrm{d}t \, \dot{\phi}^{2} \\
 & \approx -\braket{ \dot{\phi}^{2} } = -\braket{\rho + p}
\end{align}$$

The Hubble friction term averages to zero due to the periodicity of rapid oscillations:
$$\begin{align}
\braket{ 3H\dot{\phi}\phi } & = \frac{3H}{2} \braket{ \frac{\mathrm{d}}{\mathrm{d}t}(\phi^2) } \approx 0
\end{align}$$

For the potential term, we have $\rho - p = 2V(\phi)$, thus:
$$\begin{align}
\braket{ V'(\phi)\phi } & = n \braket{ V(\phi) } = \frac{n}{2} \braket{\rho - p}
\end{align}$$

Substituting these back into the averaged equation of motion $\braket{ \ddot{\phi}\phi } + \braket{ 3H\dot{\phi}\phi } + \braket{ V'(\phi)\phi } = 0$:
$$\begin{align}
-\braket{\rho + p} + \frac{n}{2}\braket{\rho - p} & = 0 \\
\implies w = \frac{\braket{p}}{\braket{\rho}} & = \frac{n-2}{n+2}
\end{align}$$

**Discussion of the Results:**
- If **$n=2$** (e.g., $V = \frac{1}{2}m^2 \phi^2$, massive scalar field), we get **$w=0$**. The coherently oscillating scalar field behaves macroscopically exactly like **dust / cold dark matter**. This is the standard picture of early reheating: the inflaton field evolves effectively like matter before decaying into standard model particles.
- If **$n=4$** (e.g., $V = \frac{\lambda}{4}\phi^4$, self-interacting massless field), we get **$w=1/3$**. The field macroscopically behaves like a **radiation fluid**.

### 2.2 Hamilton-Jacobi Formalism and Attractor Behavior
By substituting $\displaystyle{\dot{\phi} = -\frac{1}{4\pi G}\partial_{\phi}H}$ (which comes directly from $\dot{H} = \dot{\phi} \partial_\phi H = -4\pi G \dot{\phi}^2$) into the Friedmann equation algebraically, we eliminate the time dependence and obtain the **Hamilton-Jacobi equation**:
$$\begin{align}
H^{2}-\frac{1}{12\pi G}(\partial _{\phi}H)^{2} & = \frac{8\pi G}{3}V(\phi) \\
\implies H=H(\phi) & \implies \phi(t),a(t)
\end{align}$$

This phase-space formulation beautifully reveals the **attractor behavior**. Adding a linear perturbation $\delta H(\phi)$ to a known background solution $\displaystyle{\bar{H}(\phi)}$, we can check its stability:
$$\begin{align}
2\bar{H}(\phi)\delta H-\frac{2}{12\pi G}\partial _{\phi}\bar{H}\partial _{\phi}\delta H & =0 \\
\implies \frac{\partial_{\phi}\delta H}{\delta H} & = 12\pi G\frac{\bar{H}}{\partial _{\phi}\bar{H}} \\
\implies \ln \left| \frac{\delta H(\phi)}{\delta H(\phi_{0})} \right| & = 12\pi G \int _{\phi _{0}}^{\phi} \mathrm{d}\phi\frac{\bar{H}}{\partial _{\phi}\bar{H}}< 0
\end{align}$$

**Scalar Field Domination (Cosmological No-Hair Theorem):**
During scalar field domination (such as inflation), the field rolls down the potential. If $\phi$ rolls from a larger to a smaller value ($\mathrm{d}\phi < 0$), it goes down a positive slope ($\partial_{\phi}\bar{H} > 0$), making the integral strictly negative. This mathematically ensures $\delta H \to 0$ as the field rolls. The universe exponentially quickly forgets its initial kinetic conditions (e.g., any transient kinetic energy domination) and converges to a single, unique trajectory determined entirely by the setup of the potential (the slow-roll attractor). 

### 2.3 Scaling Solutions (Tracker Fields)
A **scaling solution** refers to a cosmological regime where a scalar field's energy density $\rho_\phi$ elegantly "tracks" the energy density of the dominant background fluid $\rho_B$ (e.g., radiation or dust). In this state, their ratio becomes constant:
$$\begin{align}
\frac{\rho_\phi}{\rho_B} & = \text{const} \\
\implies \Omega_\phi & = \text{const} \quad \text{and} \quad w_\phi = w_B
\end{align}$$
This dynamical attractor naturally provides an elegant way to alleviate the **Cosmological Coincidence Problem** for dynamic dark energy (Quintessence), as it doesn't matter what the initial energy density was in the early universe; it will naturally lock onto the background fluid's dynamics and scale down until a later epoch.

#### The Exponential Potential
Such attractor scaling solutions typically arise when the scalar field possesses an **exponential potential**:
$$\begin{align}
V(\phi) & = V_0 \exp\left(-\lambda \sqrt{8\pi G}\phi\right)
\end{align}$$
By introducing dimensionless variables (a standard dynamical systems approach in cosmology):
$$\begin{align}
x = \frac{\sqrt{8\pi G}\dot{\phi}}{\sqrt{6} H} , \quad y = \frac{\sqrt{8\pi G}\sqrt{V(\phi)}}{\sqrt{3} H}
\end{align}$$
The scalar field's fractional energy density is $\Omega_\phi = x^2 + y^2$, and its effective equation of state is $w_\phi = \frac{x^2 - y^2}{x^2 + y^2}$.

Analyzing the autonomous differential equations for $x$ and $y$ (with respect to $N = \ln a$) reveals a stable **fixed point** for the tracking coherent state:
$$\begin{align}
\Omega_{\phi} & = \frac{3(1+w_B)}{\lambda^2}, \quad w_\phi = w_B
\end{align}$$
provided the condition $\lambda^2 > 3(1+w_B)$ holds. During the radiation and matter-dominated eras, the scalar field acts as a small, constant fraction of the total energy density ($\Omega_\phi \ll 1$ if $\lambda \gg 1$), effectively "hiding" in the background while perfectly mimicking its equation of state. 

---

## 3. Standard Cosmological Parameters

### 3.1 Densities and Density Parameters
To discuss standard universe dynamics, we start from the fundamental observer Friedmann equation incorporating Matter, Radiation, and Cosmological Constant:
$$\begin{align}
H^{2} & =\frac{8\pi G}{3} \sum _{i}\rho _{i}-\frac{k}{a^{2}} \\
 & =\frac{8\pi G}{3}(\rho _{m}+\rho _{r}+\rho _{\Lambda})-\frac{k}{a^{2}}
\end{align}$$

Based on scale factor dilution ($a$):
$$\begin{align}
\rho _{m} & =\rho _{m0} \left( \frac{a}{a_{0}} \right)^{-3} \\
\rho _{r} & =\rho _{r 0} \left( \frac{a}{a_{0}} \right)^{-4} 
\end{align}$$

We define the **critical density** and corresponding **density parameter**:
$$\begin{align}
\rho _{c} & =\frac{3H^{2}}{8\pi G} \quad \implies \quad \rho _{c0} = \frac{3H_{0}^{2}}{8\pi G} \\
\Omega _{i} & \equiv\frac{\rho _{i}}{\rho _{c}}, \quad \Omega _{k}\equiv -\frac{k}{a^{2}H^{2}}
\end{align}$$

At the present epoch ($a=a_0$, $H=H_0$):
$$\begin{align}
\Omega _{m,0}+\Omega _{r,0}+\Omega _{\Lambda,0}+\Omega _{k,0} = 1
\end{align}$$
where $\displaystyle{\Omega _{m,0}}$ contains cold dark matter and baryons. 
The Friedmann equation governing the general Hubble rate evolution becomes explicitly:
$$\begin{align}
H^{2}(a) & = H_{0}^{2}\left[\Omega _{m,0}\left( \frac{a}{a_{0}} \right)^{-3}+\Omega _{r, 0}\left( \frac{a}{a_{0}} \right)^{-4}+\Omega _{\Lambda,0}+\Omega _{k,0} \left( \frac{a}{a_{0}} \right)^{-2}\right]
\end{align}$$

### 3.2 Deceleration Parameter
The **deceleration parameter** $\displaystyle{q}$ defines the rate at which expansion alters speeds:
$$\begin{align}
q & = -\frac{\ddot{a}a}{\dot{a}^{2}} = -\frac{\ddot{a}}{a H^{2}}
\end{align}$$

Using the second Friedmann equation (acceleration equation) $\frac{\ddot{a}}{a} = -\frac{4\pi G}{3}(\rho + 3p)$, we can express the current value $q_0$ in terms of current density parameters:
$$\begin{align}
q_{0} & = \frac{1}{2} \sum_{i} \Omega_{i,0} (1 + 3w_i) \\
 & = \frac{1}{2} \Omega_{m,0} + \Omega_{r,0} - \Omega_{\Lambda,0}
\end{align}$$

**Observations and Physical Meaning:**
- If **$q_0 < 0$**, the expansion of the universe is **accelerating**. In our $\Lambda$-dominated universe ($\Omega_{\Lambda,0} \approx 0.7, \Omega_{m,0} \approx 0.3$), we have $q_0 \approx -0.55$, confirming accelerated expansion.
- If **$q_0 > 0$**, the expansion is **decelerating**. Historically, it was expected that gravity would slow down the expansion ($q_0 = 1/2$ for a flat, matter-only Einstein-de Sitter universe).

### 3.3 Cosmological Redshift
The **cosmological redshift** $z$ is caused by the expansion of space itself. Consider a light ray traveling along a radial null geodesic ($ds^2 = 0$) in a flat FRW metric:
$$\begin{align}
\mathrm{d}t = -a(t) \mathrm{d}r \implies \int_{t_e}^{t_0} \frac{\mathrm{d}t}{a(t)} = \int_{0}^{r_e} \mathrm{d}r
\end{align}$$
where $t_e$ is the emission time and $t_0$ is the observation time. Since the coordinate distance $r_e$ is fixed for a stationary source, the crest-to-crest interval $\Delta t$ satisfies:
$$\begin{align}
\frac{\Delta t_0}{a(t_0)} = \frac{\Delta t_e}{a(t_e)} \implies \frac{\lambda_0}{a(t_0)} = \frac{\lambda_e}{a(t_e)}
\end{align}$$

The redshift is defined as the fractional change in wavelength:
$$\begin{align}
1 + z \equiv \frac{\lambda_0}{\lambda_e} = \frac{a(t_0)}{a(t_e)}
\end{align}$$
Setting the current scale factor $a(t_0) = 1$, we have the fundamental relation $1+z = 1/a$.

**Physical Interpretations:**
- **Energy Loss:** $E_{obs} = E_{emit} / (1+z)$. Photons lose energy as they climb out of the expanding space.
- **Temperature Evolution:** For a blackbody radiation (like CMB), $T(z) = T_0 (1+z)$.
- **Hubble's Law (Linear Regime):** For small distances, $z \approx H_0 d$, which was the first observational evidence for an expanding universe.

### 3.4 Summary of Component Evolution

| Component                 | Equation of State ($w$) | Density Evolution ($\rho \propto$) | Scale Factor ($a \propto$) |
| :------------------------ | :---------------------- | :--------------------------------- | :------------------------- |
| **Radiation**             | $1/3$                   | $a^{-4}$                           | $t^{1/2}$                  |
| **Matter**                | $0$                     | $a^{-3}$                           | $t^{2/3}$                  |
| **Curvature**             | $-1/3$                  | $a^{-2}$                           | $t$                        |
| **Cosmological Constant** | $-1$                    | $a^0$                              | $e^{Ht}$                   |
