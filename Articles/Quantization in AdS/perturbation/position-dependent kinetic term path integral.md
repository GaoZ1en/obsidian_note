---
references: https://arxiv.org/pdf/hep-th/9801105, https://arxiv.org/pdf/hep-th/9810119, https://arxiv.org/pdf/hep-th/0008045
---

First, after latticization the correlation functions are ordinary finite-dimensional integrals, so they can be computed directly with the transfer matrix, numerical integration, or Monte Carlo. Second, the continuum limit exists, but the Hamiltonian ordering, the time-slicing prescription, the position-dependent measure, and the corresponding finite local counterterms must be treated as one single definition; absorbing only the measure factor into a divergent "effective Lagrangian term" and dropping the remaining contact terms gives the wrong answer. Third, the target space of this model is one-dimensional. As long as $G(x)>0$, an exact coordinate transformation flattens the kinetic term completely, so there is no unavoidable quantum anomaly here; the non-covariant terms appearing in different regulators must cancel in the final result. Fourth, the difficulty in going from low to high excitations is not a new physical cutoff, but the fixed-order $\lambda$ expansion does not converge uniformly in the excitation number $n$. The time step, the numerical basis cutoff, and the physical excitation number are three different quantities.

Consider the action

$$\begin{align}
L & =\dfrac{1}{2}G(x)\dot{x}^{2}-V(x) \\
G(x) & =m+\dfrac{\lambda}{2}x^{2} \\
V(x) & =\dfrac{1}{2}m\omega ^{2}x^{2}
\end{align}$$

## Quantization

First, fix a canonical quantization. The classical momentum and Hamiltonian are

$$\begin{align}
p=G(x)\dot{x}, \qquad H_{\mathrm{cl}}=\frac{p^{2}}{2G(x)}+V(x).
\end{align}$$

To fix the ordering completely, take the Laplace--Beltrami quantization on the configuration space with metric $G(x)\mathrm{d}x^{2}$:

$$\begin{align}
\mathcal{H}=L^{2}\!\left(\mathbb{R},\sqrt{G(x)}\,\mathrm{d}x\right), \qquad \widehat{H}_{\mathrm{LB}} =-\frac{\hbar ^{2}}{2\sqrt{G}} \partial _x\frac{1}{\sqrt{G}}\partial _x+V(x).
\end{align}$$

perform the unitary transformation $\psi(x)=G(x)^{1/4}\phi(x)$, which makes the inner product flat, $\int\mathrm{d}x\,|\psi|^{2}$. In this representation

$$\begin{align}
\widehat{H}_{x} =\frac{1}{2}G^{-1/4}\widehat{p}\,G^{-1/2} \widehat{p}\,G^{-1/4}+V(x), \qquad \widehat{p}=-i\hbar\partial _x.
\end{align}$$

Its Weyl symbol is

$$\begin{align}
H_{\mathrm{W}}(x,p) =\frac{p^{2}}{2G(x)}+V(x)+V_{\mathrm{TS}}(x),
\end{align}$$

where the finite local term required by the time-slicing prescription is

$$\begin{aligned}
V_{\mathrm{TS}}(x) &=\frac{\hbar ^2}{8}G^{xx} \left(\Gamma ^x{}_{xx}\right)^{2} \\
&=\frac{\hbar ^2[G'(x)]^{2}}{32G(x)^{3}} =\frac{\hbar ^2\lambda ^2x^{2}} {4(2m+\lambda x^{2})^{3}}.
\end{aligned}$$

The Ricci scalar of the one-dimensional target vanishes identically. $V_{\mathrm{TS}}$ is nevertheless nonzero, because time slicing itself is not target-space coordinate covariant; it first contributes at $O(\lambda ^2)$. Changing the ordering changes this $O(\hbar ^2)$ local potential, so that is a different quantum theory, not just a different computational notation.

## Lattice Path Integral

Go to Euclidean time, take $\beta=N\epsilon$, and consider periodic paths $x_N=x_0$. Define

$$\begin{align}
\bar{x}_{n}=\frac{x_{n+1}+x_n}{2}, \qquad \Delta x_n=x_{n+1}-x_n.
\end{align}$$

The midpoint short-time kernel is

$$\begin{aligned}
T_{\epsilon}(x_{n+1},x_n) &= \sqrt{\frac{G(\bar{x}_{n})}{2\pi\hbar\epsilon}} \\
&\quad\times \exp\left[ -\frac{G(\bar{x}_{n})(\Delta x_n)^{2}}{2\hbar\epsilon} -\frac{\epsilon}{\hbar} \left(V(\bar{x}_{n})+V_{\mathrm{TS}}(\bar{x}_{n})\right) \right].
\end{aligned}$$

Therefore

$$\begin{align}
Z_N(\beta)=\int\prod_{n=0}^{N-1}\mathrm{d}x_n
\prod_{n=0}^{N-1}T_{\epsilon}(x_{n+1},x_n).
\end{align}$$

The lattice correlation functions have no extra formal difficulty. For example

$$\begin{align}
\left\langle \mathcal{T}_{\tau}x_{n_1}\cdots x_{n_r} \right\rangle _N =\frac{1}{Z_N}
\int\prod_{n=0}^{N-1}\mathrm{d}x_n\, x_{n_1}\cdots x_{n_r}
\prod_{n=0}^{N-1}T_{\epsilon}(x_{n+1},x_n).
\end{align}$$

Equivalently, after discretizing $T_\epsilon(x',x)$ into a matrix, one can compute

$$\begin{align}
\frac{\operatorname{Tr} \left(T_\epsilon^{N-n}X\,T_\epsilon^nX\right)}
{\operatorname{Tr}T_\epsilon^N}.
\end{align}$$

So the answer to "can we compute directly?" Is yes. For $\lambda\geq 0$ the Euclidean model has positive weight, and the numerics have no real-time sign problem. Note that the short-time kernel above approximates Hamiltonian evolution at finite $\epsilon$, and only converges to the chosen $\widehat H_{\mathrm{LB}}$ as $\epsilon\to0$.

## Position-Dependent Measure and Cutoff Cancellation

Integrating out the momentum on each time slice produces

$$\begin{align}
\prod_n\sqrt{G(\bar{x}_n)}.
\end{align}$$

If we absorb the part relative to the free measure into the Euclidean action,

$$\begin{align}
\prod_n\sqrt{\frac{G(\bar{x}_n)}{m}} =\exp\left[ \frac{1}{2}\sum_n\log\frac{G(\bar{x}_n)}{m} \right],
\end{align}$$

we get

$$\begin{align}
S_{\mathrm{measure},E} =-\frac{\hbar}{2}\delta_\epsilon(0) \int\mathrm{d}\tau\, \log\frac{G(x)}{m}, \qquad \delta_\epsilon(0)\sim\frac{1}{\epsilon}.
\end{align}$$

Expanded to the first two orders,

$$\begin{align}
S_{\mathrm{measure},E} =\int\mathrm{d}\tau\left[ -\frac{\hbar\lambda}{4m}\delta_\epsilon(0)x^{2} +\frac{\hbar\lambda ^2}{16m^{2}}\delta_\epsilon(0)x^{4} +O(\lambda ^3) \right].
\end{align}$$

In the Lorentzian path integral the same measure reads

$$\begin{align}
S_{\mathrm{measure},M} =-\frac{i\hbar}{2}\delta_\epsilon(0) \int\mathrm{d}t\,\log\frac{G(x)}{m}.
\end{align}$$

So it indeed looks like an imaginary, cutoff-dependent Lagrangian term. But this term cannot be interpreted by itself as a new physical potential.

For example, with a symmetric frequency cutoff $\Lambda$, the free propagator gives, at first order,

$$\begin{aligned}
\left\langle\dot{x}^{2}\right\rangle _{0,\Lambda} &=\frac{\hbar}{m} \int_{-\Lambda}^{\Lambda}\frac{\mathrm{d}k}{2\pi} \frac{k^{2}}{k^{2}+\omega ^2} \\
&=\frac{\hbar}{m} \left[ \frac{\Lambda}{\pi} -\frac{\omega}{\pi}\arctan\frac{\Lambda}{\omega} \right].
\end{aligned}$$

Denote $\delta_\Lambda(0)=\Lambda/\pi$. In the Euclidean perturbative weight, the derivative vertex

$$\begin{align}
\frac{\lambda}{4}\int\mathrm{d}\tau\,x^{2}\dot{x}^{2}
\end{align}$$

contracts the two $\dot{x}$'s and produces the divergent part

$$\begin{align}
-\frac{\lambda}{4\hbar} \left\langle\dot{x}^{2}\right\rangle _{0,\Lambda} \int\mathrm{d}\tau\,x^{2} \supset -\frac{\lambda}{4m}\delta_\Lambda(0) \int\mathrm{d}\tau\,x^{2}.
\end{align}$$

The vertex produced by the measure in the exponent is exactly

$$\begin{align}
+\frac{\lambda}{4m}\delta_\Lambda(0)
\int\mathrm{d}\tau\,x^{2},
\end{align}$$

and the two cancel. At higher order one must also keep the higher-order measure vertices, $V_{\mathrm{TS}}$, and the equal-time contact rules prescribed by the same regulator.

So the correct statement is: individual diagrams and single contact terms may depend on the regulator; for a fixed Hamiltonian, after summing all diagrams, measure factors, and counterterms of the same scheme, the continuum limit of the separated-point correlation functions should not depend on the regulator; and the finite $O(\hbar ^2)$ difference left by changing the ordering is not regulator dependence, but a difference in the definition of the quantum theory.

In practice, it is safer to keep the discrete measure, or to localize it with Lee--Yang measure ghosts, than to write $\delta(0)$ bare into the Lagrangian.

## First-Order Two-Point Function

Take zero temperature and separated Euclidean times. The free $y$ propagator is

$$\begin{align}
\Delta(\tau) =\left\langle\mathcal{T}_{\tau}y(\tau)y(0)\right\rangle _0 =\frac{\hbar}{2m\omega}e^{-\omega|\tau|}.
\end{align}$$

The first-order action interaction and observable expansion give

$$\begin{aligned}
\delta G_{\mathrm{action}}(\tau) &=\frac{\lambda\omega ^2}{\hbar}\Delta(0) \int_{-\infty}^{\infty}\mathrm{d}s\, \Delta(\tau-s)\Delta(s), \\
\delta G_{\mathrm{observable}}(\tau) &=-\frac{\lambda}{2m}\Delta(0)\Delta(\tau).
\end{aligned}$$

The second term comes from

$$\begin{align}
x(y)=y-\frac{\lambda}{12m}y^{3}+O(\lambda ^2).
\end{align}$$

Using

$$\begin{align}
\int_{-\infty}^{\infty}\mathrm{d}s\, \Delta(\tau-s)\Delta(s) =\left(\frac{\hbar}{2m\omega}\right)^{2} e^{-\omega|\tau|} \left(|\tau|+\frac{1}{\omega}\right),
\end{align}$$

the two constant terms cancel, and we get

$$\begin{align}
\boxed{ \left\langle\mathcal{T}_{\tau}x(\tau)x(0)\right\rangle =\frac{\hbar}{2m\omega}e^{-\omega|\tau|} \left[ 1+\frac{\lambda\hbar}{4m^{2}}|\tau| \right] +O(\lambda ^2)
}.
\end{align}$$

The same result can be checked from the spectrum. Ordinary time-independent perturbation theory gives

$$\begin{align}
E_n =\hbar\omega\left(n+\frac{1}{2}\right) -\frac{\lambda\hbar ^2}{16m^{2}} \left(2n^{2}+2n+1\right) +O(\lambda ^2),
\end{align}$$

therefore

$$\begin{align}
E_1-E_0 =\hbar\omega-\frac{\lambda\hbar ^2}{4m^{2}} +O(\lambda ^2),
\end{align}$$

which exactly explains the first-order correction to the exponential decay rate of the two-point function.

## Excitations and the Classical Limit

First, this model has only one quantum-mechanical degree of freedom. The $\lvert n\rangle$ states of the free theory can be interpreted as oscillator occupation-number states, but they are not genuine multi-particle states with relative positions and scattering data. The interaction also does not preserve the free occupation number.

The path integral already contains the full spectrum. For example

$$\begin{align}
\left\langle x(\tau)x(0)\right\rangle =\sum_n \left|\langle 0|x|n\rangle\right|^{2} e^{-(E_n-E_0)|\tau|/\hbar}.
\end{align}$$

But the two-point function of $x$ alone only sees the states with nonzero overlap with $x|0\rangle$. To reconstruct more high-excitation states, one needs the correlation matrix of $x^{2},x^{3},\ldots$, or one diagonalizes the transfer matrix/Hamiltonian directly. This is an observable-basis problem, not a new UV cutoff.

What really needs extra care is that the perturbation parameter grows at high excitation. The typical amplitude of the $n$-th state satisfies

$$\begin{align}
\langle x^{2}\rangle _n \sim\frac{\hbar n}{m\omega},
\end{align}$$

so the effective expansion parameter is

$$\begin{align}
g_n\sim \frac{\lambda\hbar n}{m^{2}\omega}.
\end{align}$$

Even if $g_1\ll1$, fixed-order perturbation fails when $n\gtrsim g_1^{-1}$. One should then use the exact $y$-coordinate Hamiltonian, WKB, numerical diagonalization, or a resummation suitable for large amplitudes, instead of introducing a physical cutoff.

The lattice calculation also has a simple but important ordering issue. To resolve the $n$-th level, one needs

$$\begin{align}
\epsilon\frac{E_n-E_0}{\hbar}\ll1.
\end{align}$$

Therefore one cannot take $n\to\infty$ at fixed $\epsilon$. One should extrapolate $\epsilon\to0$ at a fixed physical state, or shrink $\epsilon$ with the target energy. Numerically, if the oscillator basis is truncated at $n_{\max}$, one must also extrapolate $n_{\max}\to\infty$ independently; it is not the same quantity as the time-slicing cutoff.

The classical limit should be understood as

$$\begin{align}
\hbar\to0, \qquad n\to\infty, \qquad I=\hbar n\ \text{fixed}.
\end{align}$$

Ordering and $V_{\mathrm{TS}}$ are $O(\hbar ^2)$ and disappear from the classical equations in this limit, but the classical nonlinear parameter

$$\begin{align}
\frac{\lambda I}{m^{2}\omega}
\end{align}$$

can remain finite. Therefore "the classical limit does not see the regulator" is correct, but it does not mean that one can omit the measure, contact rules, and counterterms required by the regulator in a quantum computation.
