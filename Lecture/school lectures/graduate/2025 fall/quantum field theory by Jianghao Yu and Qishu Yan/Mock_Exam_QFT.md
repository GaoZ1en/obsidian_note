# Quantum Field Theory Mock Exam
*Standard: Canonical Formalism & Srednicki Conventions*
*Time Idea: 2-3 Hours*

## Part 1: Canonical Quantization & Symmetries (Fundamental)

1.  **[Real Scalar Field]**
    Consider a real scalar field $\phi$ with Lagrangian:
    $$ \mathcal{L} = -\frac{1}{2} \partial^\mu \phi \partial_\mu \phi - \frac{1}{2} m^2 \phi^2 - \frac{\lambda}{24} \phi^4 $$
    a) Derive the **Conjugate Momentum** $\pi(x)$ and the **Hamiltonian Density** $\mathcal{H}$.
    b) Using the mode expansion:
       $$ \phi(x) = \int \widetilde{dk} [a(\mathbf{k}) e^{ikx} + a^\dagger(\mathbf{k}) e^{-ikx}] $$
       (where $\widetilde{dk} \equiv \frac{d^3k}{(2\pi)^3 2\omega_k}$ and $kx = -\omega t + \mathbf{k}\cdot\mathbf{x}$),
       show that the Hamiltonian $H_0 = \int d^3x \mathcal{H}_{free}$ can be written as:
       $$ H_0 = \int \widetilde{dk} \, \omega_k a^\dagger(\mathbf{k}) a(\mathbf{k}) + E_{vac} $$
       Explicitly show where the $\delta^3(0)$ terms (vacuum energy) come from.

*sol*.
a) the conjugate momentum and the Hamiltonian density is given by
$$\begin{align}
\pi(x) & =\frac{\partial \mathcal{L}}{\partial \dot{\phi}(x)} \\
 & =\dot{\phi}(x) \\
\mathcal{H}(x) & =\pi(x)\dot{\phi}(x)-\mathcal{L}(x) \\
 & =\frac{1}{2}\pi ^{2}+\frac{1}{2}(\vec{\nabla} \phi)^{2}+\frac{1}{2}m^{2}\phi ^{2}+\frac{\lambda}{4!}\phi ^{4}
\end{align}$$
b)


2.  **[Noether's Theorem - Proca Field]**
    Consider a complex vector field $V_\mu$ (Complex Proca) with:
    $$ \mathcal{L} = -\frac{1}{2} (\partial_\mu V_\nu - \partial_\nu V_\mu)^\dagger (\partial^\mu V^\nu - \partial^\nu V^\mu) - m^2 V_\mu^\dagger V^\mu $$
    a) This Lagrangian is invariant under the global $U(1)$ symmetry $V_\mu \to e^{-i\alpha} V_\mu$. Derive the **Noether Current** $J^\mu$.
    b) Verify if this current is conserved ($\partial_\mu J^\mu = 0$) on-shell.

## Part 2: Feynman Rules & Propagators

3.  **[Derivation of Propagator]**
    Prove that the Feynman propagator for a scalar field, defined as $\Delta_F(x-y) = -i \langle 0 | T \phi(x) \phi(y) | 0 \rangle$, satisfies the Green's function equation:
    $$ (-\partial^2 + m^2) \Delta_F(x-y) = \delta^4(x-y) \quad (\text{or } -i\delta^4, \text{check sign}) $$
    *Hint*: Use the derivative of the Heaviside step function $\partial_t \theta(t) = \delta(t)$. Watch the definition of $T$-ordering and the ETCRs $[ \phi, \dot{\phi} ]$.

4.  **[Yukawa Interaction Rules]**
    Consider the interaction $\mathcal{L}_{int} = g \bar{\Psi} \Psi \phi$.
    a) Use **Wick's Theorem** to expand the $S$-matrix term $T \exp(i \int \mathcal{L}_{int})$ to second order in $g$.
    b) Draw the diagram for fermion-fermion scattering $\Psi + \Psi \to \Psi + \Psi$.
    c) Write down the invariant amplitude $i\mathcal{M}$ for this process, being careful with spinor indices and momentum conservation.

## Part 3: Trace Technology & Cross Section

5.  **[Trace Calculation]**
    Evaluate the following trace, which appears in calculations of Moller scattering ($e^- e^- \to e^- e^-$):
    $$ L^{\mu\nu} = \text{Tr}[ (\not{p}' + m) \gamma^\mu (\not{p} + m) \gamma^\nu ] $$
    Express your answer in terms of $p, p', m$ and the metric $\eta^{\mu\nu}$.

6.  **[Cross Section Formula]**
    For a $2 \to 2$ scattering process in the Center of Mass (CM) frame ($A+B \to C+D$), start from the general formula:
    $$ d\sigma = \frac{1}{4E_{cm}|\mathbf{p}_i|} |\mathcal{M}|^2 (2\pi)^4 \delta^4(P_i - P_f) \frac{d^3k_1}{(2\pi)^3 2E_1} \frac{d^3k_2}{(2\pi)^3 2E_2} $$
    Derive the standard differential cross-section form:
    $$ \frac{d\sigma}{d\Omega} = \frac{1}{64\pi^2 s} \frac{|\mathbf{p}_f|}{|\mathbf{p}_i|} |\mathcal{M}|^2 $$

## Part 4: The Bonus Challenge

7.  **[Majorana Fermions]**
    A Majorana spinor satisfy the reality condition $\Psi = \Psi^c = C \bar{\Psi}^T$.
    a) If we write the mode expansion as:
       $$ \Psi(x) = \sum_s \int \widetilde{dk} [ u^s(k) a^s(k) e^{ikx} + v^s(k) a^{s\dagger}(k) e^{-ikx} ] $$
       (Note that particle and antiparticle operators are identified: $b=a, d=a$).
    b) Show that the Lagrangian $\mathcal{L} = \frac{i}{2} \bar{\Psi} \not{\partial} \Psi - \frac{m}{2} \bar{\Psi} \Psi$ is sufficient to derive the Dirac equation, and explain why the factor of $1/2$ is necessary compared to the Dirac Lagrangian.
