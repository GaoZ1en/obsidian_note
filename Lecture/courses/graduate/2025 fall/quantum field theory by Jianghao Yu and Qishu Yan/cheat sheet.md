# Quantum Field Theory Cheat Sheet (Canonical Formalism)

*Conventions: Srednicki (- + + +)*

## 1. Conventions & Lorentz Algebra

-   **Metric**: $\eta_{\mu\nu} = \text{diag}(-1, +1, +1, +1)$.
-   **Four-vector**: $x^\mu = (t, \mathbf{x})$, $x_\mu = (-t, \mathbf{x})$.
-   **Derivatives**: $\partial_\mu = (\partial_t, \nabla)$, $\partial^\mu = (-\partial_t, \nabla)$.
    -   $\partial_\mu \phi \partial^\mu \phi = -(\partial_t \phi)^2 + (\nabla \phi)^2$.
-   **Units**: $\hbar = c = 1$.
-   **Integrals**: $\int d^4x \equiv \int dt d^3x$. $\int \frac{d^3k}{(2\pi)^3}$.
-   **Lorentz Generators**: $M^{\mu\nu} = i(x^\mu \partial^\nu - x^\nu \partial^\mu)$.
    -   $[M^{\mu\nu}, M^{\rho\sigma}] = i(\eta^{\nu\rho}M^{\mu\sigma} - \eta^{\mu\rho}M^{\nu\sigma} + \eta^{\mu\sigma}M^{\nu\rho} - \eta^{\nu\sigma}M^{\mu\rho})$.

## 2. Classical Scalar Field (Real)

-   **Lagrangian Density**:

$$\begin{align}
\mathcal{L} = -\frac{1}{2} \partial^\mu \phi \partial_\mu \phi - \frac{1}{2} m^2 \phi^2 - \Omega_0
\end{align}$$

$$\begin{align}
\mathcal{L} = \frac{1}{2} (\dot{\phi}^2 - (\nabla \phi)^2 - m^2 \phi^2)
\end{align}$$

-   **Equation of Motion (Klein-Gordon)**:

$$\begin{align}
(\partial^\mu \partial_\mu - m^2) \phi = 0 \implies (-\square + m^2)\phi = 0
\end{align}$$

    (Note: In Srednicki, $\square = \partial^\mu \partial_\mu = -\partial_t^2 + \nabla^2$).
-   **Conjugate Momentum**:

$$\begin{align}
\pi(x) = \frac{\partial \mathcal{L}}{\partial \dot{\phi}} = \dot{\phi}(x)
\end{align}$$

-   **Hamiltonian Density**:

$$\begin{align}
\mathcal{H} = \pi \dot{\phi} - \mathcal{L} = \frac{1}{2} \pi^2 + \frac{1}{2} (\nabla \phi)^2 + \frac{1}{2} m^2 \phi^2
\end{align}$$

## 3. Canonical Quantization

-   **Equal Time Commutation Relations (ETCR)**:

$$\begin{align}
[\phi(\mathbf{x}, t), \pi(\mathbf{y}, t)] = i \delta^3(\mathbf{x}-\mathbf{y})
\end{align}$$

$$\begin{align}
[\phi(\mathbf{x}, t), \phi(\mathbf{y}, t)] = [\pi(\mathbf{x}, t), \pi(\mathbf{y}, t)] = 0
\end{align}$$

-   **Mode Expansion**:

$$\begin{align}
\phi(x) = \int \frac{d^3k}{(2\pi)^3 2\omega_k} \left[ a(\mathbf{k}) e^{ikx} + a^\dagger(\mathbf{k}) e^{-ikx} \right]
\end{align}$$

    Where $kx = k_\mu x^\mu = -\omega_k t + \mathbf{k}\cdot\mathbf{x}$ and $\omega_k = \sqrt{|\mathbf{k}|^2+m^2}$.
-   **Creation/Annihilation Commutators**:

$$\begin{align}
[a(\mathbf{k}), a^\dagger(\mathbf{k}')] = (2\pi)^3 2\omega_k \delta^3(\mathbf{k}-\mathbf{k}')
\end{align}$$

$$\begin{align}
[a(\mathbf{k}), a(\mathbf{k}')] = 0
\end{align}$$

-   **Hamiltonian Operator**:

$$\begin{align}
H = \int \frac{d^3k}{(2\pi)^3 2\omega_k} \omega_k a^\dagger(\mathbf{k}) a(\mathbf{k}) + E_0
\end{align}$$

-   **States**:

$$\begin{align}
|k\rangle = a^\dagger(\mathbf{k}) |0\rangle
\end{align}$$

$$\begin{align}
\langle k | k' \rangle = (2\pi)^3 2\omega_k \delta^3(\mathbf{k}-\mathbf{k}')
\end{align}$$

## 4. Propagators & Causality

-   **Wightman Function** ($D(x-y) = \langle 0 | \phi(x) \phi(y) | 0 \rangle$):

$$\begin{align}
D(x-y) = \int \frac{d^3k}{(2\pi)^3 2\omega_k} e^{ik(x-y)}
\end{align}$$

-   **Feynman Propagator**:

$$\begin{align}
\Delta_F(x-y) = -i \langle 0 | T \phi(x) \phi(y) | 0 \rangle
\end{align}$$

$$\begin{align}
\Delta_F(x-y) = \int \frac{d^4k}{(2\pi)^4} \frac{-i}{k^2 + m^2 - i\epsilon} e^{ik(x-y)}
\end{align}$$

    (Alternatively: $\frac{1}{k^2 + m^2 - i\epsilon}$ with Srednicki's $-i$ factor conventions usually leading to $\frac{-i}{k^2+m^2}$ or $\frac{i}{-k^2-m^2}$. Srednicki defines $\tilde{\Delta}(k) = \frac{1}{k^2+m^2-i\epsilon}$ such that $\Delta_F = -i \Delta$).
    *Wait, Srednicki Eq (8.11):*

$$\begin{align}
\langle 0 | T \phi(x) \phi(y) | 0 \rangle = \frac{1}{i} \int \frac{d^4k}{(2\pi)^4} \frac{e^{ik(x-y)}}{k^2 + m^2 - i\epsilon}
\end{align}$$

## 5. Noether's Theorem

-   **Symmetry**: $\phi \to \phi + \delta \phi$.
-   **Current**: $j^\mu = \frac{\partial \mathcal{L}}{\partial(\partial_\mu \phi)} \delta \phi$.
-   **Energy-Momentum Tensor** (Spacetime translation $x^\mu \to x^\mu - a^\mu$):

$$\begin{align}
T^{\mu\nu} = \partial^\mu \phi \partial^\nu \phi + \eta^{\mu\nu} \mathcal{L}
\end{align}$$

$$\begin{align}
H = \int d^3x T^{00}
\end{align}$$

$$\begin{align}
P^i = \int d^3x T^{0i} = -\int d^3x \pi \nabla^i \phi
\end{align}$$

## 6. Complex Scalar Field ($U(1)$ Symmetry)

-   **Lagrangian**: $\mathcal{L} = -\partial^\mu \phi^\dagger \partial_\mu \phi - m^2 \phi^\dagger \phi$.
-   **Expansion**:

$$\begin{align}
\phi(x) = \int \frac{d^3k}{(2\pi)^3 2\omega_k} [ a(\mathbf{k}) e^{ikx} + b^\dagger(\mathbf{k}) e^{-ikx} ]
\end{align}$$

-   **Conserved Charge** ($U(1)$):

$$\begin{align}
Q = i \int d^3x (\phi^\dagger \dot{\phi} - \dot{\phi}^\dagger \phi) = \int \tilde{dk} ( N_a(\mathbf{k}) - N_b(\mathbf{k}) )
\end{align}$$

    ("Particles minus Antiparticles")

## 7. LSZ Reduction Formula (Scalar)

-   Relation between S-matrix and correlation functions:

$$\begin{align}
\langle f | i \rangle = i^{n+m} \int d^4x_1 \dots d^4y_m e^{i(\dots)} (-\square_x + m^2) \dots \langle 0 | T \phi(x_1) \dots | 0 \rangle
\end{align}$$

## 8. Dirac Field (Spin 1/2) - Srednicki Conventions

-   **Lagrangian**: $\mathcal{L} = i \bar{\Psi} \not{\partial} \Psi - m \bar{\Psi} \Psi$
    -   $\bar{\Psi} = \Psi^\dagger \gamma^0$.
    -   Note: Srednicki often uses Weyl spinors, but for Dirac fields conventions match standard forms mostly.
    -   Metric: $\{-1, 1, 1, 1\}$. $\gamma^\mu$ satisfy $\{ \gamma^\mu, \gamma^\nu \} = -2\eta^{\mu\nu}$.
    -   $\gamma^0 = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}, \gamma^i = \begin{pmatrix} 0 & \sigma^i \\ -\sigma^i & 0 \end{pmatrix}$ (Weyl Basis typically).
-   **Propagator**:

$$\begin{align}
S_F(p) = \frac{1}{i} \frac{-i\not{p} + m}{p^2 + m^2 - i\epsilon} = \frac{-\not{p} - im}{p^2 + m^2 - i\epsilon}
\end{align}$$

    *(Check Class Note: Srednicki Eq 41.13 defines expectation value $\langle T \Psi \bar{\Psi} \rangle \sim \frac{1}{i} \int \frac{-i\not{p}+m}{p^2+m^2}$. The rule for internal line is typically $\frac{-i\not{p}+m}{p^2+m^2}$ or $\frac{1}{i}\frac{1}{i\not{p}+m}$)*.
-   **Spin Sums** (Crucial for $|M|^2$):

$$\begin{align}
\sum_s u^s(p) \bar{u}^s(p) = -i\not{p} + m
\end{align}$$

$$\begin{align}
\sum_s v^s(p) \bar{v}^s(p) = -i\not{p} - m
\end{align}$$

    *(Warning: Peskin uses $\not{p}+m$. Srednicki has $-i$ due to $\not{p}^2 = -m^2$ convention differences often).*

## 9. QED Feynman Rules (Interaction)

-   **Vertices**: $-ie \gamma^\mu$.
-   **Photon Propagator** (Feynman Gauge $\xi=1$):

$$\begin{align}
\Delta_{\mu\nu}(k) = \frac{-i\eta_{\mu\nu}}{k^2 - i\epsilon}
\end{align}$$

-   **External Lines**:
    -   Incoming Fermion: $u^s(p)$
    -   Outgoing Fermion: $\bar{u}^s(p)$
    -   Incoming Antifermion: $\bar{v}^s(p)$
    -   Outgoing Antifermion: $v^s(p)$
    -   Incoming Photon: $\epsilon_\mu(k)$
    -   Outgoing Photon: $\epsilon^*_\mu(k)$

## 10. Trace Technology

-   $\text{Tr}(\mathbb{I}) = 4$
-   $\text{Tr}(\text{odd number of } \gamma) = 0$
-   $\text{Tr}(\gamma^\mu \gamma^\nu) = 4\eta^{\mu\nu}$
-   $\text{Tr}(\gamma^\mu \gamma^\nu \gamma^\rho \gamma^\sigma) = 4(\eta^{\mu\nu}\eta^{\rho\sigma} - \eta^{\mu\rho}\eta^{\nu\sigma} + \eta^{\mu\sigma}\eta^{\nu\rho})$
-   $\text{Tr}(\gamma^5 \gamma^\mu \gamma^\nu \gamma^\rho \gamma^\sigma) = -4i\epsilon^{\mu\nu\rho\sigma}$ (Check convention for $\epsilon^{0123}$).
-   **Contractions**:
    -   $\gamma^\mu \gamma_\mu = 4$
    -   $\gamma^\mu \gamma^\nu \gamma_\mu = -2\gamma^\nu$
    -   $\gamma^\mu \gamma^\nu \gamma^\rho \gamma_\mu = 4\eta^{\nu\rho}$
    -   $\gamma^\mu \gamma^\nu \gamma^\rho \gamma^\sigma \gamma_\mu = -2\gamma^\sigma \gamma^\rho \gamma^\nu$

## 11. Cross Section & Decay Rate

-   **Decay Rate** ($1 \to 2+\dots$):

$$\begin{align}
d\Gamma = \frac{1}{2M} |\mathcal{M}|^2 d\Pi_n
\end{align}$$

-   **Cross Section** ($2 \to n$, Lab frame/CM frame):

$$\begin{align}
d\sigma = \frac{1}{4\sqrt{(p_1 \cdot p_2)^2 - m_1^2 m_2^2}} |\mathcal{M}|^2 d\Pi_n
\end{align}$$

    For $2\to 2$ in CM frame ($m_1=m_2=0$ mostly, or general):

$$\begin{align}
\frac{d\sigma}{d\Omega} = \frac{1}{64\pi^2 s} \frac{|\mathbf{p}_f|}{|\mathbf{p}_i|} |\mathcal{M}|^2
\end{align}$$

-   **Mandelstam Variables**:
    -   $s = -(p_1 + p_2)^2$
    -   $t = -(p_1 - p_3)^2$
    -   $u = -(p_1 - p_4)^2$
    -   $s+t+u = \sum m_i^2$.

## 12. Derivation of Feynman Rules (Logic)

1.  **Dyson Series**: $U(t, t_0) = T \exp(-i \int_{t_0}^t H_I(t') dt')$.
1.  **S-Matrix**: $\langle f | T \exp( i \int d^4x \mathcal{L}_{int} ) | i \rangle$.
1.  **Wick's Theorem**: $T(\phi_1 \dots \phi_n) = : \phi_1 \dots \phi_n : + \text{all contractions}$.
1.  **Contraction**: $\langle 0 | T \phi_I(x) \phi_I(y) | 0 \rangle = \Delta_F(x-y)$.
    -   Draw diagrams.
    -   Assign factors ($1/n!$ from expansion cancels with permutations).
    -   Fourier transform to momentum space $\implies$ Vertex $\delta$ functions enforce momentum conservation.
