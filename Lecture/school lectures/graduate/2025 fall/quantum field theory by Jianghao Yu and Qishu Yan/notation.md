# scalar

$$\begin{align}
\mathcal{L} & =-\frac{1}{2}\partial _{\mu}\phi \partial ^{\mu}\phi-\frac{1}{2}m^{2}\phi ^{2}
\end{align}$$

take a variation

$$\begin{align}
\delta S & =\int \mathrm{d}^{4}x(\partial ^{2}\phi-m^{2}\phi)\delta \phi+\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{3}x\tau ^{\mu}\partial _{\mu}\phi \delta \phi
\end{align}$$

the solution to the eom is given by

$$\begin{align}
\phi _{k}(x) & =\frac{e^{ik\cdot x}}{\sqrt{ (2\pi)^{3}2\omega _{k} }}
\end{align}$$

the normalization constant is chosen such that

$$\begin{align}
i\omega[\phi _{k},\phi _{k'}] & =\delta ^{3}(k-k')
\end{align}$$

the commutation relations are given by

$$\begin{align}
[a(k),a^{\dagger}(k')] & =\delta ^{3}(k-k') \\
[a(k),a(k')] & =0 \\
[a^{\dagger}(k),a^{\dagger}(k')] & =0
\end{align}$$

and the commutators of fields

$$\begin{align}
[\phi(x),\phi(x')] & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}(e^{ik\cdot (x-x')}-e^{-ik\cdot(x-x')}) \\
 & =\int _{C} \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}}e^{ik\cdot (x-x')}
\end{align}$$

the contour $\displaystyle{\mathcal{C}}$ is chosen such that the poles are arounded conterclockwise. the Feynman propagator is defined as

$$\begin{align}
\braket{ \phi(x)\phi(x') } & = \braket{ 0|\mathcal{T}\phi(x)\phi(x')| }  \\
 & = \int _{C_{F}} \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{1}{k^{2}+m^{2}-i\varepsilon}e^{ik\cdot (x-x')}
\end{align}$$

where the contour $\displaystyle{\mathcal{C}_{F}}$ is chosen such that the poles are arounded clockwise. at momentum space, the propagator is given by

$$\begin{align}
\Delta _{F}(k) & =\frac{1}{k^{2}+m^{2}-i\epsilon}
\end{align}
$$
# Discrete Symmetries (Scalar)

| Transformation | Operator Action $\mathcal{O} \phi(t, \vec{x}) \mathcal{O}^{-1}$ | Note |
| :--- | :--- | :--- |
| **Parity ($P$)** | $\eta_P \phi(t, -\vec{x})$ | $\eta_P = +1$ (Scalar), $-1$ (Pseudo) |
| **Time Reversal ($T$)** | $\phi(-t, \vec{x})$ | Anti-unitary ($i \to -i$) |
| **Charge Conjugation ($C$)** | $\eta_C \phi^\dagger(t, \vec{x})$ | For real scalar, $\phi = \phi^\dagger, \eta_C=1$ |

# Feynman Rules (Self-Check)

For $\mathcal{L}_{int} = -\frac{\lambda}{4!} \phi^4$:
*   **Vertex**: $-i\lambda$
*   **External Lines**: $1$
*   **Symmetry Factors**: Vital for vacuum bubbles or Tadpoles (e.g., factor of 1/2, 1/8).

# Dimensional Analysis (Natural Units $\hbar=c=1$)

*   **Action**: $[S] = 0$ (Dimensionless).
*   **Volume**: $[d^4x] = -4$ (Length $\sim$ Inverse Mass).
*   **Lagrangian**: $[\mathcal{L}] = 4$.

| Field / Quantity | Mass Dimension ($[M]$) | Note |
| :--- | :--- | :--- |
| **Scalar Field** $\phi$ | $1$ | From $(\partial\phi)^2 \sim M^4$ |
| **Fermion Field** $\psi$ | $3/2$ | From $\bar{\psi}\not{\partial}\psi \sim M^4$ |
| **Vector Field** $A_\mu$ | $1$ | From $(\partial A)^2 \sim M^4$ |
| **Derivative** $\partial_\mu$ | $1$ | Momentum operator |
| **Coupling** $\lambda$ ($\phi^4$) | $0$ | Renormalizable ($d=4$) |
| **Coupling** $g$ (Yukawa) | $0$ | Renormalizable ($d=4$) |
| **Coupling** $e$ (QED) | $0$ | Renormalizable ($d=4$) |
| **Mass** $m$ | $1$ | |

*   **Renormalizability Rule**: If coupling constant has dimension $[c] < 0$, theory is non-renormalizable (irrelevant operator). If $[c] \ge 0$, it is renormalizable (marginal/relevant).

# Loop Diagram Techniques

## 1. Feynman Parametrization
To combine denominator factors:
$$ \frac{1}{AB} = \int_0^1 dx \frac{1}{[xA + (1-x)B]^2} $$
General form:
$$ \frac{1}{A_1 \dots A_n} = \int_0^1 dx_1 \dots dx_n \delta(\sum x_i - 1) \frac{(n-1)!}{[\sum x_i A_i]^n} $$

## 2. Wick Rotation
Transform Minkowski integral to Euclidean space to calculate:
*   $k^0 \to i k_E^0$
*   $d^4k \to i d^4k_E$
*   $k^2 \to -k_E^2$
*   Denominator $(k^2+m^2) \to -(k_E^2-m^2)$? Usually formulated as $\frac{1}{k^2+m^2} \to \frac{-1}{k_E^2+m^2}$ assuming metric $(-+++)$?
    *   *Check*: $k^2 = -(k^0)^2 + \mathbf{k}^2 = -(-k_E^2) + \mathbf{k}^2 = k_E^2 + \mathbf{k}^2$? No, $k^0_{M} = i k^0_{E}$.
    *   $k^2_{M} = -(k^0_M)^2 + k^2 = -(-k_E^0)^2 + k^2 = (k_E^0)^2 + k^2 = +k_E^2$ (Wait, if metric is $-+++$).
    *   If metric $-+++$: $k^2 = -(k^0)^2 + \mathbf{k}^2$. Wick rotate $k^0 = i k^0_E$.
    *   $k^2 = -(i k^0_E)^2 + \mathbf{k}^2 = (k^0_E)^2 + \mathbf{k}^2 = k_E^2$ (Euclidean length squared).
    *   So $k^2 + m^2 \to k_E^2 + m^2$.
    *   $d^4k = d k^0 d^3k = i d k^0_E d^3k = i d^4 k_E$.
    *   Integral changes from $\int d^4k$ to $i \int d^4 k_E$.

## 3. Standard Euclidean Integral (Dimensional Regularization)
$$ I_n(\Delta) = \int \frac{d^d k_E}{(2\pi)^d} \frac{1}{(k_E^2 + \Delta)^n} = \frac{1}{(4\pi)^{d/2}} \frac{\Gamma(n - \frac{d}{2})}{\Gamma(n)} \Delta^{\frac{d}{2} - n} $$
*   **Gamma Function Poles**: $\Gamma(z)$ has poles at $z = 0, -1, -2, \dots$. (Divergences appear here).
*   **Logarithmic Divergence**: $n=2, d=4 \implies \Gamma(0)$ pole.

## 4. Superficial Degree of Divergence ($D$)
(Detailed Derivation)

**Step 1: Momentum Counting**
Consider an integral with $L$ loops, $I_B$ internal boson lines (propagator $\sim k^{-2}$), and $I_F$ internal fermion lines (propagator $\sim k^{-1}$).
$$ \text{Internal Integral} \sim \int (d^dk)^L \frac{1}{(k^2)^{I_B}} \frac{1}{(k)^{I_F}} \sim \Lambda^{dL - 2I_B - I_F} $$
$$ D = dL - 2I_B - I_F $$
(Add +1 for each derivative vertex $\partial_\mu$).

**Step 2: Topological Relations**
For a connected graph:
*   **Euler Characteristic**: $L = I - V + 1$ ($I$: Total internal lines, $V$: vertices).
*   **Counting Legs**: Total number of line ends attached to vertices must equal valence of vertices.
    *   Let $E$ be external lines.
    *   $2I + E = \sum_v n_v$ (where $n_v$ is number of lines meeting at vertex $v$).

**Step 3: Derivation for $\phi^4$ Theory ($d=4$)**
*   Vertex: 4 scalar lines ($n_v = 4$).
*   Relation: $2I + E = 4V \implies I = 2V - E/2$.
*   Loops: $L = I - V + 1$.
*   Divergence: $D = 4L - 2I$.
    Substitute $L$: $D = 4(I - V + 1) - 2I = 2I - 4V + 4$.
    Substitute $I$: $D = 2(2V - E/2) - 4V + 4 = 4 - E$.
    *   Result: $D = 4 - E$. Only depends on external legs!
    *   $E=2$: $D=2$ (Quadratic Divergence - Mass renorm).
    *   $E=4$: $D=0$ (Logarithmic Divergence - Coupling renorm).
    *   $E>4$: $D<0$ (Convergent).

**Step 4: Derivation for QED ($d=4$)**
*   Vertex: $\bar{\psi} \gamma^\mu \psi A_\mu$ (2 fermions, 1 boson).
*   Variables: $E_\gamma, E_e$ (External), $I_\gamma, I_e$ (Internal).
*   Relations:
    1.  Photon ends: $2I_\gamma + E_\gamma = 1 \cdot V$.
    2.  Electron ends: $2I_e + E_e = 2 \cdot V$.
    3.  Loops: $L = (I_\gamma + I_e) - V + 1$.
*   Divergence: $D = 4L - 2I_\gamma - 1I_e$.
    Substitute $L$:
    $$ D = 4(I_\gamma + I_e - V + 1) - 2I_\gamma - I_e = 2I_\gamma + 3I_e - 4V + 4 $$
    Use leg relations to eliminate $I$:
    $$ 2D = 4I_\gamma + 6I_e - 8V + 8 = 2(V-E_\gamma) + 3(2V-E_e) - 8V + 8 $$
    $$ 2D = 2V - 2E_\gamma + 6V - 3E_e - 8V + 8 = 8 - 2E_\gamma - 3E_e $$
    $$ D = 4 - E_\gamma - \frac{3}{2} E_e $$
    *   Result: Fermion mass $[M]=3/2$, Photon $[M]=1$. Divergence linked to mass dimension.
    *   $E_\gamma=2, E_e=0 \implies D=2$ (Photon Mass? Ward identity protects this to $D=0$ or vanishes).
    *   $E_\gamma=0, E_e=2 \implies D=1$ (Electron Self-Energy).

# Spinor (Dirac Field)

## 1. Lagrangian and Equation of Motion
$$ \mathcal{L} = \bar{\psi}(i \gamma^\mu \partial_\mu - m) \psi $$
*   **Dirac Equation**: $(i \gamma^\mu \partial_\mu - m) \psi = 0$.
*   **Adjoint Equation**: $\bar{\psi}(i \gamma^\mu \overleftarrow{\partial}_\mu + m) = 0$.

## 2. Clifford Algebra (Metric $-+++$)
$$ \{ \gamma^\mu, \gamma^\nu \} = -2\eta^{\mu\nu} $$
*   $(\gamma^0)^2 = 1$, $(\gamma^i)^2 = -1$.
*   $\gamma^\mu$ are $4 \times 4$ matrices.
*   $\gamma^5 \equiv i \gamma^0 \gamma^1 \gamma^2 \gamma^3$. $\{ \gamma^5, \gamma^\mu \} = 0$.

## 3. Mode Expansion
$$ \psi(x) = \int \frac{d^3p}{(2\pi)^3 \sqrt{2E_p}} \sum_{s=1,2} \left[ a^s_p u^s(p) e^{ip \cdot x} + b^{s\dagger}_p v^s(p) e^{-ip \cdot x} \right] $$
$$ \bar{\psi}(x) = \int \frac{d^3p}{(2\pi)^3 \sqrt{2E_p}} \sum_{s=1,2} \left[ b^s_p \bar{v}^s(p) e^{ip \cdot x} + a^{s\dagger}_p \bar{u}^s(p) e^{-ip \cdot x} \right] $$
*   **Anti-commutation relations**:
    $$ \{ a^r_p, a^{s\dagger}_q \} = \{ b^r_p, b^{s\dagger}_q \} = (2\pi)^3 \delta^{(3)}(\mathbf{p}-\mathbf{q}) \delta^{rs} $$
    All others zero.

## 4. Spinors and Spin Sums
*   **Equations**:
    $$ (\not{p} - m) u^s(p) = 0  \quad , \quad \bar{u}^s(p) (\not{p} - m) = 0 $$
    $$ (\not{p} + m) v^s(p) = 0  \quad , \quad \bar{v}^s(p) (\not{p} + m) = 0 $$
*   **Normalization**:
    $$ \bar{u}^r(p) u^s(p) = 2m \delta^{rs} \quad , \quad \bar{v}^r(p) v^s(p) = -2m \delta^{rs} $$
    $$ u^{r\dagger}(p) u^s(p) = 2E_p \delta^{rs} \quad , \quad v^{r\dagger}(p) v^s(p) = 2E_p \delta^{rs} $$
*   **Completeness Relations (Spin Sums)**:
    $$ \sum_s u^s(p) \bar{u}^s(p) = \not{p} + m $$
    $$ \sum_s v^s(p) \bar{v}^s(p) = \not{p} - m $$

## 5. Feynman Propagator
$$ S_F(x-y) = \int \frac{d^4p}{(2\pi)^4} \frac{i(\not{p} + m)}{p^2 + m^2 - i\epsilon} e^{ip \cdot (x-y)} $$
*   Note: The numerator is often written as $\frac{i}{\not{p}-m}$.

## 6. Gamma Matrix Identities & Trace Technology (Metric $-+++$)

**Basic Traces**:
*   $\text{tr}(\mathbf{1}) = 4$
*   $\text{tr}(\text{odd } \not{a}) = 0$
*   $\text{tr}(\not{a} \not{b}) = -4 (a \cdot b)$
*   $\text{tr}(\not{a} \not{b} \not{c} \not{d}) = 4 [(a \cdot b)(c \cdot d) - (a \cdot c)(b \cdot d) + (a \cdot d)(b \cdot c)]$
*   $\text{tr}(\gamma^5 \not{a} \not{b} \not{c} \not{d}) = -4i \epsilon_{\mu\nu\rho\sigma} a^\mu b^\nu c^\rho d^\sigma$

**Contraction Identities ($d$-Dimensions)**:
*   $\gamma^\mu \gamma_\mu = d$
*   $\gamma^\mu \not{p} \gamma_\mu = (2-d) \not{p}$
*   $\gamma^\mu \not{p} \not{q} \gamma_\mu = 4 (p \cdot q) + (d-4) \not{p} \not{q}$ (Check sign convention carefully!)
*   $\gamma^\mu \not{p} \not{q} \not{k} \gamma_\mu = -2 \not{k} \not{q} \not{p} + (4-d) \not{p} \not{q} \not{k}$

**Master Trace Formula (QED)**:
For process like $e^-\mu^- \to e^-\mu^-$:
$$ \text{tr}[(\not{p}' + m)\gamma^\mu (\not{p} + m)\gamma^\nu] = 4 [ p'^\mu p^\nu + p^\mu p'^\nu - \eta^{\mu\nu}(p \cdot p' + m^2) ] $$

## 7. Lorentz Transformation & Lie Derivative
Under an infinitesimal Lorentz transformation $x'^\mu = x^\mu + \omega^\mu_{\ \nu} x^\nu$:
*   **Spinor Transformation**: $\psi'(x') = (1 - \frac{i}{2} \omega_{\mu\nu} S^{\mu\nu}) \psi(x)$
*   **Generators**: $S^{\mu\nu} = \frac{i}{4} [\gamma^\mu, \gamma^\nu] = \frac{1}{2} \sigma^{\mu\nu}$.
*   **Lie Derivative** (along vector field $\xi$):
    $$ \mathcal{L}_\xi \psi = \xi^\mu \partial_\mu \psi + \frac{1}{8} (\partial_\mu \xi_\nu - \partial_\nu \xi_\mu) [\gamma^\mu, \gamma^\nu] \psi $$
    (Represents the variation of the field along the flow, including the local frame rotation).

## 8. Discrete Symmetries & Bilinears

**Spinor Field Transformations**:
*   **Parity ($P$)**: $\psi(t, \vec{x}) \to \eta_P \gamma^0 \psi(t, -\vec{x})$
    *   Phase $|\eta_P|=1$. For **Majorana** fermions, $\eta_P = \pm i$. For Dirac, usually $\eta_P = \pm 1$.
    *   $P^2 = -1$ on spinors (rotation by $2\pi$).
*   **Time Reversal ($T$)**: $\psi(t, \vec{x}) \to \eta_T \gamma^1 \gamma^3 \psi(-t, \vec{x})$ (Anti-unitary)
    *   Typically choose $\eta_T$ such that $T^2 = -1$ (fermion).
*   **Charge Conjugation ($C$)**: $\psi(x) \to \eta_C C \bar{\psi}^T(x)$

    *   $C = i \gamma^2 \gamma^0$ (in Dirac/Weyl Basis). $C^{-1}\gamma^\mu C = -\gamma^{\mu T}$.
    *   Note: $\psi \to -i \gamma^2 \psi^*$ is a common shorthand in specific bases.

**Bilinear Covariants**:
Constructed from $\bar{\psi} \Gamma \psi$. There are 16 independent components ($\Gamma$ matrices):

| Type | Form | Components | Mass Dim | $P$ Transf |
| :--- | :--- | :--- | :--- | :--- |
| **Scalar** ($S$) | $\bar{\psi} \psi$ | 1 | 3 | $+$ |
| **Pseudoscalar** ($P$) | $\bar{\psi} \gamma^5 \psi$ | 1 | 3 | $-$ |
| **Vector** ($V^\mu$) | $\bar{\psi} \gamma^\mu \psi$ | 4 | 3 | $(-1, +1, +1, +1)^*$ |
| **Axial Vector** ($A^\mu$) | $\bar{\psi} \gamma^\mu \gamma^5 \psi$ | 4 | 3 | $(+1, -1, -1, -1)^*$ |
| **Tensor** ($T^{\mu\nu}$) | $\bar{\psi} \sigma^{\mu\nu} \psi$ | 6 | 3 | - |

*(Note on Vector P: $\bar{\psi}\gamma^0\psi \to \bar{\psi}\gamma^0\psi$ (even), $\bar{\psi}\gamma^i\psi \to -\bar{\psi}\gamma^i\psi$ (odd). Transforms like $dx^\mu$.)*

## 9. CPT Properties of Bilinears

| Bilinear | $C$ (Charge Conj.) | $P$ (Parity) | $T$ (Time Rev.) | $CPT$ Total |
| :--- | :--- | :--- | :--- | :--- |
| $\bar{\psi} \psi$ | $+1$ | $+1$ | $+1$ | $+1$ |
| $\bar{\psi} \gamma^5 \psi$ | $+1$ | $-1$ | $-1$ | $+1$ |
| $\bar{\psi} \gamma^\mu \psi$ | $-1$ | $(-1)^\mu$ | $(-1)^\mu$ | $-1$ (vector) |
| $\bar{\psi} \gamma^\mu \gamma^5 \psi$ | $+1$ | $-(-1)^\mu$ | $-(-1)^\mu$ | $-1$ (pseudo-vec) |
| $\bar{\psi} \sigma^{\mu\nu} \psi$ | $-1$ | $(-1)^{\mu+\nu}$ | $-(-1)^{\mu+\nu}$ | $+1$ (tensor) |
*   **Note**: $(-1)^\mu$ denotes $+1$ for $\mu=0$ and $-1$ for $\mu=i$.
    *   $V^\mu$ behaves like $J^\mu$ (Current): odd under C, standard vector under P.
    *   $A^\mu$ behaves like Spin: even under C, pseudo-vector under P.
    *   CPT Theorem: Any Lorentz invariant local Lagrangian must be CPT invariant. $\mathcal{L} \sim \bar{\psi}\psi$ works ($+1$). $J_\mu A^\mu$ works ($(-1)(-1)=+1$).

## 10. Yukawa Theory (Scalar-Spinor)

**Full Lagrangian**:
$$ \mathcal{L}_{Yukawa} = \bar{\psi}(i \not{\partial} - m) \psi - \frac{1}{2} \partial_\mu \phi \partial^\mu \phi - \frac{1}{2} m_\phi^2 \phi^2 - g \bar{\psi} \psi \phi $$

**Interaction Types**:
*   **Scalar Coupling** (Parity Preserving if $\phi$ is scalar):
    $$ \mathcal{L}_{int} = -g \bar{\psi} \psi \phi $$
*   **Pseudoscalar Coupling** (Parity Preserving if $\phi$ is pseudoscalar):
    $$ \mathcal{L}_{int} = -i g \bar{\psi} \gamma^5 \psi \phi $$
    (The $i$ is often required for Hermiticity of the Lagrangian depending on $\phi$ reality).
*   **Renormalizability**: $[g] = 0$ in $d=4$ (Dimensionless coupling).

## 11. Quantum Electrodynamics (QED)

**Full Lagrangian**:
$$ \mathcal{L}_{QED} = \bar{\psi}(i \not{D} - m) \psi - \frac{1}{4} F_{\mu\nu} F^{\mu\nu} - \frac{1}{2\xi} (\partial_\mu A^\mu)^2 $$
*   **Covariant Derivative**: $D_\mu = \partial_\mu + ieQ A_\mu$ (where $Q=-1$ for electron, so $D_\mu = \partial_\mu - ieA_\mu$).
*   **Field Strength**: $F_{\mu\nu} = \partial_\mu A_\nu - \partial_\nu A_\mu$.
*   **Interaction Term**:
    $$ \mathcal{L}_{int} = -e \bar{\psi} \gamma^\mu \psi A_\mu $$
    (Note: $e > 0$ is the coupling constant, electron charge is $-e$).
*   **Gauge Fixing**: $\xi = 1$ (Feynman Gauge) gives propagator $\sim \frac{-i\eta_{\mu\nu}}{k^2}$. $\xi \to 0$ (Landau Gauge).

## 12. Feynman Rules (Spinor & QED)

**External Lines**:
*   **Incoming Fermion**: $u^s(p)$
*   **Outgoing Fermion**: $\bar{u}^s(p)$
*   **Incoming Antifermion**: $\bar{v}^s(p)$
*   **Outgoing Antifermion**: $v^s(p)$
*   **Incoming Photon**: $\epsilon^\mu_\lambda(k)$
*   **Outgoing Photon**: $\epsilon^{\mu*}_\lambda(k)$

**Propagators**:
*   **Fermion**: $\displaystyle \frac{i(\not{p} + m)}{p^2 + m^2 - i\epsilon}$
*   **Photon**: $\displaystyle \frac{-i \eta_{\mu\nu}}{k^2 - i\epsilon}$ (Feynman Gauge)

**Vertices**:
*   **QED**: $-i e \gamma^\mu$ (Charge $Q=-e$)
*   **Yukawa**: $-i g \mathbf{1}$ (Scalar), $g \gamma^5$ (Pseudo)

**Composition Rules**:
1.  **Direction**: Write spinor factors **against the arrows** (from adjoint $\bar{u}$ to $u$).
2.  **Order**: $\text{adjoint} \cdot \text{propagators/vertices} \cdot \text{spinor}$.
3.  **Loops**: Multiply by $(-1)$ for each closed fermion loop. Take trace of the Dirac indices in the loop.
4.  **Sign**: Relative minus sign between diagrams that differ by an exchange of identical external fermions.

## 13. Spin Summed Squared Matrix Elements (Fast Calculation)

**1. General Formula (Scattering $e^- \to e^-$)**:
$$ \sum_{spins} |\bar{u}(p') \Gamma u(p)|^2 = \text{tr}[\bar{\Gamma} (\not{p}' + m) \Gamma (\not{p} + m)] $$
where $\bar{\Gamma} = \gamma^0 \Gamma^\dagger \gamma^0$.

**2. General Formula (Annihilation $e^- e^+ \to \dots$)**:
For a current involving $\bar{v}(p') \Gamma u(p)$ (incoming particle $p$, incoming antiparticle $p'$):
$$ \sum_{spins} |\bar{v}(p') \Gamma u(p)|^2 = \text{tr}[\bar{\Gamma} (\not{p}' - m) \Gamma (\not{p} + m)] $$
*   **Key Difference**: $\sum v(p')\bar{v}(p') = \not{p}' - m$, so the trace has $(\not{p}' - m)$.

**3. General Formula (Pair Creation $\dots \to e^- e^+$)**:
For a current involving $\bar{u}(p) \Gamma v(p')$ (outgoing particle $p$, outgoing antiparticle $p'$):
$$ \sum_{spins} |\bar{u}(p) \Gamma v(p')|^2 = \text{tr}[\bar{\Gamma} (\not{p} + m) \Gamma (\not{p}' - m)] $$

**4. Trace Expansion by Mass Powers**:
To calculate $\text{tr}[\bar{\Gamma} (\not{p} + m) \Gamma (\not{p}' + \sigma m')]$ (where $\sigma=\pm 1$):
$$ \text{Trace} = \underbrace{\text{tr}[\bar{\Gamma} \not{p} \Gamma \not{p}']}_{T_{kin}} + \sigma m m' \underbrace{\text{tr}[\bar{\Gamma} \Gamma]}_{T_{mass}} $$
*(Cross terms linear in $m$ vanish for $\Gamma \in \{1, \gamma^5, \gamma^\mu, \gamma^\mu\gamma^5\}$)*.

**Specific Coefficients ($T_{kin}, T_{mass}$)**:
*   **Scalar** ($1$):
    *   $T_{kin} = -4(p \cdot p')$
    *   $T_{mass} = 4$
    *   Total: $4(\sigma m m' - p \cdot p')$
*   **Pseudoscalar** ($\gamma^5$):
    *   $T_{kin} = +4(p \cdot p')$
    *   $T_{mass} = -4$
    *   Total: $-4(\sigma m m' - p \cdot p')$
*   **Vector** ($\gamma^\mu$): (Contracted with another current usually)
    *   $T^{\mu\nu}_{kin} = 4(p^\mu p'^\nu + p^\nu p'^\mu - \eta^{\mu\nu} p \cdot p')$
    *   $T^{\mu\nu}_{mass} = -4\eta^{\mu\nu}$
    *   Total: $4(p^\mu p'^\nu + p^\nu p'^\mu - \eta^{\mu\nu}(p \cdot p' + \sigma m m'))$
*   **Axial** ($\gamma^\mu\gamma^5$):
    *   $T^{\mu\nu}_{kin} = 4(p^\mu p'^\nu + p^\nu p'^\mu + \eta^{\mu\nu} p \cdot p')$ (Note sign flip on metric term)
    *   $T^{\mu\nu}_{mass} = -4\eta^{\mu\nu}$
    *   Total: $4(p^\mu p'^\nu + p^\nu p'^\mu - \eta^{\mu\nu}(-p \cdot p' + \sigma m m'))$

**5. Example: Scalar / Pseudoscalar Interaction**:
Let $\Gamma = g + i h \gamma^5$.
$$ \sum_{s, s'} |\bar{u}^{s'}(p') (g + h\gamma^5) u^s(p)|^2 = 4(g^2 + h^2)(m^2 - p \cdot p') + 8gh m^2 (\text{Check signs}) $$
*   In metric $-+++$: $\text{tr}(\not{p}'\not{p}) = -4 p \cdot p'$.
*   If $h=0$ (Pure Scalar): $4g^2(m^2 - p \cdot p')$.
*   If $g=0$ (Pure Pseudo): $4h^2(m^2 - p \cdot p')$. Note: often $(p \cdot p' + m^2)$ in $+---$.

## 14. Advanced Identities

**1. Gordon Decomposition Identity**:
Splits the vector current into a convection term and a magnetic moment term on shell.
$$ \bar{u}(p') \gamma^\mu u(p) = \bar{u}(p') \left[ \frac{(p' + p)^\mu}{2m} + \frac{i \sigma^{\mu\nu} q_\nu}{2m} \right] u(p) $$
*   Where $q^\mu = (p' - p)^\mu$.
*   Crucial for calculating magnetic moments ($g-2$) and form factors.

**2. Chirality & Helicity**:
*   **Projectors**: $P_L = \frac{1-\gamma^5}{2}, \quad P_R = \frac{1+\gamma^5}{2}$.
    *   Properties: $P_L^2 = P_L, P_L P_R = 0, P_L + P_R = 1$.
    *   Algebra: $\gamma^\mu P_L = P_R \gamma^\mu$.
*   **Helicity Operator**: $h = \hat{p} \cdot \vec{S} = \frac{1}{2} \hat{p}_i \begin{pmatrix} \sigma^i & 0 \\ 0 & \sigma^i \end{pmatrix}$.
*   **Massless Limit**: Chirality = Helicity (for particles), Chirality = -Helicity (antiparticles).
    *   $u_L(p)$ corresponds to $h=-1/2$ (Left-handed) as $m \to 0$.

**3. Spin Projection Operator**:
To sum over specific spin state $s$ (vector $n^\mu$) instead of all spins:
$$ u(p, s) \bar{u}(p, s) = (\not{p} + m) \frac{1 + \gamma^5 \not{n}}{2} $$
*   $n^\mu$: Spin vector in rest frame $(0, \hat{s})$, boosted to frame with $p$. $n^2 = 1, n \cdot p = 0$.

# Vector Field

## 1. Massive Vector Field (Proca)
**Lagrangian**:
$$ \mathcal{L} = -\frac{1}{4} F_{\mu\nu} F^{\mu\nu} - \frac{1}{2} m^2 A_\mu A^\mu $$
*   **EOM**: $\partial_\mu F^{\mu\nu} - m^2 A^\nu = 0$.
    *   Taking divergence $\partial_\nu$: $0 - m^2 \partial_\nu A^\nu = 0 \implies \partial_\mu A^\mu = 0$ (Intrinsic constraint, no gauge freedom).
    *   Reduced EOM: $(\partial^2 - m^2) A^\mu = 0$.

**Mode Expansion**:
$$ A_\mu(x) = \int \frac{d^3k}{(2\pi)^3 \sqrt{2\omega_k}} \sum_{\lambda=1}^3 \left[ \epsilon_\mu^\lambda(k) a_k^\lambda e^{ikx} + \epsilon_\mu^{\lambda*}(k) a_k^{\lambda\dagger} e^{-ikx} \right] $$
*   **Physical Polarizations**: 3 degrees of freedom (2 Transverse, 1 Longitudinal).
*   **Spin Sum**:
    $$ \sum_{\lambda=1}^3 \epsilon_\mu^\lambda(k) \epsilon_\nu^{\lambda*}(k) = \eta_{\mu\nu} + \frac{k_\mu k_\nu}{m^2} $$
    *   Note: At high energy $E \gg m$, the longitudinal term dominates $k_\mu k_\nu / m^2 \to \infty$ (Unitary bound violation in massive Yang-Mills without Higgs).

**Propagator**:
$$ D_{\mu\nu}(k) = \frac{-i}{k^2 + m^2 - i\epsilon} \left( \eta_{\mu\nu} + \frac{k_\mu k_\nu}{m^2} \right) $$

## 2. Massless Vector Field (Maxwell / QED)
**Lagrangian**:
$$ \mathcal{L} = -\frac{1}{4} F_{\mu\nu} F^{\mu\nu} - \frac{1}{2\xi} (\partial_\mu A^\mu)^2 $$
(Gauge fixing is mandatory since propagator is undefined otherwise).

**Polarizations**:
*   2 Physical helicities ($\lambda = \pm 1$).
*   But in covariant quantization (like Feynman gauge), we sum over 4 polarizations (2 physical + 1 scalar + 1 longitudinal). The unphysical ones cancel via Ward Identity.

**Spin Sum (Cut-Propagator)**:
In Feynman graph calculations involving external photons:
$$ \sum_{\lambda=\pm} \epsilon_\mu^\lambda(k) \epsilon_\nu^{\lambda*}(k) \to \eta_{\mu\nu} $$
*   **Justification**: In metric $-+++$, $\mathcal{M} \cdot \mathcal{M}^* = \mathcal{M}^\mu \mathcal{M}_\mu^*$ is already positive (Ward identity cancels $\mathcal{M}^0$ against $\mathcal{M}^3$).
    *   $\sum |\epsilon \cdot \mathcal{M}|^2 = \mathcal{M} \cdot \mathcal{M}^*$.
    *   (Note: In Peskin $+---$ metric, this replaces with $-\eta_{\mu\nu}$ to fix the overall sign).
*   **Strict Physical Sum**: $\sum_{phys} \epsilon_i \epsilon_j^* = \delta_{ij} - \frac{k_i k_j}{\mathbf{k}^2}$ (Coulomb gauge like).

**Propagator ($R_\xi$ Gauge)**:
$$ D_{\mu\nu}(k) = \frac{-i}{k^2 - i\epsilon} \left( \eta_{\mu\nu} - (1-\xi) \frac{k_\mu k_\nu}{k^2} \right) $$
*   $\xi=1$: Feynman Gauge ($\frac{-i\eta_{\mu\nu}}{k^2}$).
*   $\xi=0$: Landau Gauge ($\frac{-i}{k^2}(\eta_{\mu\nu} - \frac{k_\mu k_\nu}{k^2})$). Projection operator onto transverse modes.

## 15. Scalar & Vector QED Feynman Rules

### 1. Scalar QED (Charged Scalar $\Phi$)
**Lagrangian**:
$$ \mathcal{L} = -(D_\mu \Phi)^* (D^\mu \Phi) - m^2 \Phi^* \Phi - \frac{1}{4}F^2 $$
*   $D_\mu = \partial_\mu - ie A_\mu$.
*   **Propagator**: $\frac{i}{p^2 + m^2}$ (Matches user's scalar sign? Check $\pm i$).

**Vertices**:
*   **Photon-Scalar-Scalar** ($A_\mu(k) \Phi(p) \Phi^*(p')$):
    $$ -ie (p + p')_\mu $$
    *(Momentum flow: $p$ incoming Scalar, $p'$ outgoing Scalar).*
*   **Seagull** ($A_\mu A_\nu \Phi \Phi^*$):
    $$ 2i e^2 \eta_{\mu\nu} $$

### 2. Vector QED (Charged Vector $W^\pm_\mu$)
**Lagrangian**:
$$ \mathcal{L} = -\frac{1}{2} (D_\mu W_\nu - D_\nu W_\mu)^\dagger (D^\mu W^\nu - D^\nu W^\mu) - m^2 W_\mu^\dagger W^\mu $$
*   $D_\mu W_\nu = \partial_\mu W_\nu - ie A_\mu W_\nu$.

**Vertices**:
*   **Photon-W-W** ($\gamma_\mu(k) W_\alpha^-(p) W_\beta^+(p')$):
    $$ -ie [ (p-p')_\mu \eta_{\alpha\beta} + (p'-k)_\alpha \eta_{\beta\mu} + (k-p)_\beta \eta_{\mu\alpha} ] $$
    *(Standard Yang-Mills 3-boson vertex structure. All momenta incoming)*.
*   **Quartic** ($\gamma_\mu \gamma_\nu W_\alpha^+ W_\beta^-$):
    $$ -ie^2 [ 2\eta_{\mu\nu}\eta_{\alpha\beta} - \eta_{\mu\alpha}\eta_{\nu\beta} - \eta_{\mu\beta}\eta_{\nu\alpha} ] $$

### 3. Physical Properties (Exam Points)
*   **Why Massive?**:
    *   Massless charged vector fields (like gluons) must self-interact (Non-Abelian) to be consistent.
    *   If you just take Abelian $U(1)$ and separate a "charged" vector, it's usually an effective description of a $W^\pm$ boson.
    *   **The $m \to 0$ Limit**: The Proca propagator $\frac{\eta + kk/m^2}{k^2+m^2}$ **does not** smoothy limit to the massless propagator $\frac{\eta}{k^2}$. The longitudinal mode $\epsilon_L \sim k/m$ blows up. This is the **vDVZ discontinuity** (in gravity context) or simply the Goldstone Equivalence Theorem physics.
*   **Gyromagnetic Ratio**:
    *   The coupling structure dictated by gauge invariance (minimal coupling $\partial \to D$) predicts $g_W = 2$.
    *   Vertex: $\Gamma^{\alpha\beta\mu} \propto (p-p')^\mu \eta^{\alpha\beta} + \dots$
    *   Magnetic property comes from the specific coefficient of spin operators. An arbitrary non-gauge vector could have any $g$.
*   **Unitarity Violation**:
    *   For $e^+ e^- \to W^+ W^-$, the cross section with only $\gamma$ exchange grows as $\sigma \sim s/m^2$ due to Longitudinal $W$.
    *   In the full Standard Model, the $Z$-boson and Higgs diagrams cancel this bad high-energy behavior, restoring unitarity.

## 16. Ward Isanity Check
When calculating amplitudes with external photons $\epsilon_\mu(k)$:
1.  Compute $\mathcal{M}^\mu$.
2.  **Check**: $k_\mu \mathcal{M}^\mu = 0$.
3.  If not zero:
    *   Algebra error?
    *   Missing diagram? (e.g., photon from external leg vs internal line).
    *   Regularization issue? (Axial anomaly?).

## 17. Kinematics Master Sheet (Metric $-+++$)

**1. Mandelstam Variables ($1+2 \to 3+4$)**:
*   $s = -(p_1 + p_2)^2$ (Center of Mass Energy squared).
*   $t = -(p_1 - p_3)^2$ (Momentum transfer squared).
*   $u = -(p_1 - p_4)^2$.
*   **Sum Rule**: $s + t + u = \sum_{i=1}^4 m_i^2$.

**2. Decay Rate ($\Gamma$)**:
For $A \to 1 + 2 + \dots + n$ (Rest frame of A):
$$ d\Gamma = \frac{1}{2m_A} |\mathcal{M}|^2 d\Pi_n $$
*   **Two Body Decay ($A \to 1+2$)**:
    $$ \Gamma = \frac{|\mathbf{p}|}{8\pi m_A^2} |\mathcal{M}|^2 $$
    (Where $|\mathbf{p}|$ is the momentum of outgoing particles).

**3. Scattering Cross Section ($\sigma$)**:
For $A + B \to 1 + 2 + \dots + n$:
$$ d\sigma = \frac{1}{4\sqrt{(p_A \cdot p_B)^2 - m_A^2 m_B^2}} |\mathcal{M}|^2 d\Pi_n $$
*   **Flux Factor**: In Lab frame ($B$ at rest), $F = 4m_B |\mathbf{p}_A|$. In CM frame, $F = 4|\mathbf{p}| \sqrt{s}$.
*   **Two Body Scattering in CM Frame**:
    $$ \frac{d\sigma}{d\Omega} = \frac{1}{64\pi^2 s} \frac{|\mathbf{p}_f|}{|\mathbf{p}_i|} |\mathcal{M}|^2 $$
    (Note: If particles are identical, integrate $\theta$ over $0 \to \pi/2$ or divide total result by 2).

## 18. S-Matrix Expansion (Interaction Picture)
*Alternative to LSZ: Direct Perturbation Theory*

Instead of reducing from Green's functions, one can evaluate the transition amplitude directly using the Dyson Series in the Interaction Picture.

**1. The Master Formula**:
$$ S = T \exp\left( -i \int_{-\infty}^{\infty} d^4x \mathcal{H}_I(x) \right) $$
The scattering amplitude is the matrix element between **free** asymptotic states:
$$ \langle f | S | i \rangle = \langle \mathbf{p}_1', \dots | T e^{-i\int \mathcal{H}_I} | \mathbf{p}_1, \dots \rangle $$

**2. Wick's Theorem for External States**:
We contract fields in the Hamiltonian $\mathcal{H}_I$ with the creation/annihilation operators in the external states $|i\rangle, |f\rangle$.
*   **Contraction Rules (Wavefunctions)**:
    *   **Incoming Scalar** ($\phi$ contracts with $|p\rangle$):
        $$ \contraction{}{\phi}{(x)}{|p\rangle} \phi(x) |p\rangle = e^{ipx} $$
    *   **Outgoing Scalar** ($\langle p|$ contracts with $\phi$):
        $$ \backcontraction{}{\langle p|}{(x)}{\phi} \langle p| \phi(x) = e^{-ipx} $$
    *   **Incoming Fermion** ($\psi$ contracts with $|p,s\rangle$):
        $$ \contraction{}{\psi}{(x)}{|p,s\rangle} \psi(x) |p,s\rangle = u^s(p) e^{ipx} $$
    *   **Outgoing Fermion** ($\langle p,s|$ contracts with $\bar{\psi}$):
        $$ \backcontraction{}{\langle p,s|}{(x)}{\bar{\psi}} \langle p,s| \bar{\psi}(x) = \bar{u}^s(p) e^{-ipx} $$
    *   **Incoming Photon** ($A_\mu$ contracts with $|k,\epsilon\rangle$):
        $$ \contraction{}{A}{_\mu(x)}{|k\rangle} A_\mu(x) |k,\epsilon\rangle = \epsilon_\mu(k) e^{ikx} $$

**3. Comparison with LSZ**:
*   **LSZ**: Starts with $\langle T \phi \dots \phi \rangle$ (which includes external leg propagators), then "amputates" them by multiplying by $(k^2+m^2)$.
*   **Interaction Picture**: Directly computes the coefficient of the wavepackets. No "amputation" needed because we never attached the full propagator to the external line in the first place—we just attached the wavefunction $e^{ipx}$.
*   **Result**: Both lead to the same Feynman rules for **Amputated Diagrams**.

**2. Generic Vector Interaction ($V - A$)**:
Let $\Gamma^\mu = \gamma^\mu (C_V + C_A \gamma^5)$.
$$ \sum |\mathcal{M}|^2 \propto L^{\mu\nu} L_{\mu\nu} $$
$$ L^{\mu\nu} = \text{tr}[\bar{\Gamma}^\mu (\not{p}' + m') \Gamma^\nu (\not{p} + m)] $$
*   **Case QED** ($C_V=1, C_A=0$):
    $$ L^{\mu\nu}_{QED} = 4 [ p'^\mu p^\nu + p'^\nu p^\mu - \eta^{\mu\nu}(p \cdot p' + m^2) ] $$
*   **Case Weak (Left-Handed)** ($C_V=1, C_A=-1$, i.e., $\gamma^\mu(1-\gamma^5)$):
    $$ L^{\mu\nu}_{V-A} = 8 [ p'^\mu p^\nu + p'^\nu p^\mu - \eta^{\mu\nu}(p \cdot p') - i \epsilon^{\mu\nu\alpha\beta} p_\alpha p'_\beta ] $$
    (Mass terms $m, m'$ drop out for V-A currents coupled to massless fermions or if chirality is conserved).

