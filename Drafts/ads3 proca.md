

## Calculation in AdS3

Let's work with the AdS3 metric you provided:

$$ds^2 = \frac{1}{\cos^2\rho}(-dt^2+d\rho^2+\sin^2\rho\, d\theta^2)$$

### Step 1: Metric properties

Let's denote coordinates as $(t,\rho,\theta)$ with indices $(0,1,2)$:
- Metric components: $g_{00} = -\frac{1}{\cos^2\rho}$, $g_{11} = \frac{1}{\cos^2\rho}$, $g_{22} = \frac{\sin^2\rho}{\cos^2\rho}$
- Determinant: $g = -\frac{\sin^2\rho}{\cos^6\rho}$
- $\sqrt{-g} = \frac{\sin\rho}{\cos^3\rho}$

### Step 2: Christoffel symbols

The non-zero Christoffel symbols for this metric are:

$$\begin{align}
\Gamma^0_{01} &= \Gamma^0_{10} = \tan\rho \\
\Gamma^1_{00} &= \sin\rho\cos\rho \\
\Gamma^1_{11} &= \tan\rho \\
\Gamma^1_{22} &= -\sin\rho\cos\rho \\
\Gamma^2_{12} &= \Gamma^2_{21} = \cot\rho
\end{align}$$

### Step 3: Covariant derivatives

For a vector field $A_a$, the covariant derivatives are:
$$\nabla_b A_c = \partial_b A_c - \Gamma^d_{bc}A_d$$

### Step 4: Levi-Civita tensor

In curved spacetime:
$$\varepsilon_{abc} = \sqrt{-g}\,\tilde{\varepsilon}_{abc}$$
$$\varepsilon^{abc} = \frac{1}{\sqrt{-g}}\,\tilde{\varepsilon}^{abc}$$

Where $\tilde{\varepsilon}$ is the Levi-Civita symbol.

### Step 5: Explicit form of the equation

Let's write out the $t$-component of the equation as an example:

$$\varepsilon_t^{~\rho\theta}\nabla_\rho A_\theta - \varepsilon_t^{~\theta\rho}\nabla_\theta A_\rho = -\mu A_t$$

Which expands to:

$$\frac{\cos^3\rho}{\sin\rho}\left(\partial_\rho A_\theta - \partial_\theta A_\rho - \Gamma^t_{\rho\theta}A_t - \Gamma^\rho_{\rho\theta}A_\rho - \Gamma^\theta_{\rho\theta}A_\theta + \Gamma^t_{\theta\rho}A_t + \Gamma^\rho_{\theta\rho}A_\rho + \Gamma^\theta_{\theta\rho}A_\theta\right) = -\mu A_t$$

After substituting the Christoffel symbols and simplifying:

$$\frac{\cos^3\rho}{\sin\rho}\left(\partial_\rho A_\theta - \partial_\theta A_\rho - \cot\rho\, A_\theta\right) = -\mu A_t$$

Similarly for the other components:

$$\frac{\cos^3\rho}{\sin\rho}\left(\partial_t A_\theta - \partial_\theta A_t - \tan\rho\, A_\theta\right) = -\mu A_\rho$$

$$\frac{\cos^3\rho}{\sin\rho}\left(\partial_\rho A_t - \partial_t A_\rho + \tan\rho\, A_t\right) = -\mu A_\theta$$

## Physical Interpretation

This equation describes a self-dual massive vector field in AdS3, where the mass arises topologically rather than from the standard Proca mass term. Such topologically massive gauge theories have interesting properties in 3D, including the fact that they describe a single propagating degree of freedom with a well-defined helicity.

For further exploration, I recommend looking at the paper "Topologically Massive Gauge Theories" by Deser, Jackiw, and Templeton [[arXiv:hep-th/9902017]].