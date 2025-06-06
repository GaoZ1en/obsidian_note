

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

here $\displaystyle{\varepsilon _{abc}}$ satisfies 

# Components of the Proca Field Equation in a 3D Curved Spacetime

## Understanding the Problem

We need to find the component form of the first-order ODE for a Proca field:

$$\varepsilon_{a}^{~bc}\nabla_{b}A_{c}=-\mu A_{a}$$

in the following 3-dimensional spacetime metric:

$$ds^{2} = \frac{1}{\cos^{2}\rho}\left(-dt^{2}+d\rho^{2}+\sin^{2}\rho\, d\theta^{2}\right)$$

The tensor $\varepsilon_{abc}$ satisfies the identity $\varepsilon^{abc}\varepsilon_{a}^{~de}=g^{be}g^{cd}-g^{bd}g^{ce}$.

## Preliminary Analysis

This metric is a form of the 3D Anti-de Sitter (AdS₃) spacetime in global coordinates. Let's use the index convention:
- $x^0 = t$
- $x^1 = \rho$
- $x^2 = \theta$

The metric components are:
$$g_{00} = -\frac{1}{\cos^{2}\rho}, \quad g_{11} = \frac{1}{\cos^{2}\rho}, \quad g_{22} = \frac{\sin^{2}\rho}{\cos^{2}\rho}$$

And the inverse metric:
$$g^{00} = -\cos^{2}\rho, \quad g^{11} = \cos^{2}\rho, \quad g^{22} = \frac{\cos^{2}\rho}{\sin^{2}\rho}$$

The determinant is $g = \det(g_{ab}) = -\frac{\sin^{2}\rho}{\cos^{6}\rho}$, giving $\sqrt{|g|} = \frac{\sin\rho}{\cos^{3}\rho}$.

## Computing the Christoffel Symbols

For our covariant derivatives, we need the Christoffel symbols:
$$\Gamma^a_{bc} = \frac{1}{2}g^{ad}(\partial_b g_{dc} + \partial_c g_{db} - \partial_d g_{bc})$$

The non-zero Christoffel symbols are:

$$\Gamma^0_{01} = \Gamma^0_{10} = \tan\rho$$
$$\Gamma^1_{00} = \sin\rho\cos\rho$$
$$\Gamma^1_{11} = \tan\rho$$
$$\Gamma^1_{22} = -\sin\rho\cos\rho$$
$$\Gamma^2_{12} = \Gamma^2_{21} = \cot\rho$$

## Levi-Civita Tensor Components

The Levi-Civita tensor is related to the symbol by $\varepsilon_{abc} = \sqrt{|g|}\epsilon_{abc}$, where $\epsilon_{012} = 1$.

For the mixed components $\varepsilon_a^{~bc}$, we raise indices using the metric:
$$\varepsilon_a^{~bc} = g^{bd}g^{ce}\varepsilon_{ade}$$

Computing the relevant components:
$$\varepsilon_0^{~12} = \frac{\cos\rho}{\sin\rho}, \quad \varepsilon_1^{~02} = \frac{\cos\rho}{\sin\rho}, \quad \varepsilon_2^{~01} = \frac{\cos\rho}{\sin\rho}$$
$$\varepsilon_0^{~21} = -\frac{\cos\rho}{\sin\rho}, \quad \varepsilon_1^{~20} = -\frac{\cos\rho}{\sin\rho}, \quad \varepsilon_2^{~10} = -\frac{\cos\rho}{\sin\rho}$$

$$\tag{.}
\begin{align}

\varepsilon _{t}^{~\rho \theta} & =g^{\rho \rho}g^{\theta \theta}\varepsilon _{t\rho \theta} \\
 & =\frac{\cos \rho}{\sin \rho} \\
\varepsilon _{\rho}^{~\theta t} & =g^{tt}g^{\theta \theta}\sqrt{ -g } \\
 & =-\frac{\cos \rho}{\sin \rho} \\
\varepsilon _{\theta}^{~t\rho} & =-\frac{\cos \rho}{\sin \rho}
\end{align}
$$

$$\tag{.}
\begin{align}

\end{align}
$$


## Component Form of the Equation

Now we can express the equation $\varepsilon_{a}^{~bc}\nabla_{b}A_{c}=-\mu A_{a}$ for each component:

### For $a=0$ (time component):

$$\varepsilon_{0}^{~bc}\nabla_{b}A_{c} = -\mu A_0$$

Expanding:
$$\frac{\cos\rho}{\sin\rho}(\partial_\rho A_\theta - \partial_\theta A_\rho - \Gamma^\lambda_{\rho\theta}A_\lambda + \Gamma^\lambda_{\theta\rho}A_\lambda) = -\mu A_0$$

Substituting the Christoffel symbols:
$$\frac{\cos\rho}{\sin\rho}(\partial_\rho A_\theta - \partial_\theta A_\rho - \cot\rho A_\theta) = -\mu A_0$$

### For $a=1$ (ρ component):

$$\varepsilon_{1}^{~bc}\nabla_{b}A_{c} = -\mu A_1$$

Expanding:
$$\frac{\cos\rho}{\sin\rho}(\partial_t A_\theta - \partial_\theta A_t - \Gamma^\lambda_{t\theta}A_\lambda + \Gamma^\lambda_{\theta t}A_\lambda) = -\mu A_1$$

Simplifying:
$$\frac{\cos\rho}{\sin\rho}(\partial_t A_\theta - \partial_\theta A_t) = -\mu A_1$$

### For $a=2$ (θ component):

$$\varepsilon_{2}^{~bc}\nabla_{b}A_{c} = -\mu A_2$$

Expanding:
$$\frac{\cos\rho}{\sin\rho}(\partial_\rho A_t - \partial_t A_\rho - \Gamma^\lambda_{\rho t}A_\lambda + \Gamma^\lambda_{t\rho}A_\lambda) = -\mu A_2$$

Substituting the Christoffel symbols:
$$\frac{\cos\rho}{\sin\rho}(\partial_\rho A_t - \partial_t A_\rho - \tan\rho A_t - \tan\rho A_t) = -\mu A_2$$

$$\frac{\cos\rho}{\sin\rho}(\partial_\rho A_t - \partial_t A_\rho - 2\tan\rho A_t) = -\mu A_2$$

## Final Component Form

Simplifying all equations:

$$\partial_\rho A_\theta - \partial_\theta A_\rho - \cot\rho A_\theta = -\mu \frac{\sin\rho}{\cos\rho} A_0$$

$$\partial_t A_\theta - \partial_\theta A_t = -\mu \frac{\sin\rho}{\cos\rho} A_1$$

$$\partial_\rho A_t - \partial_t A_\rho - 2\tan\rho A_t = -\mu \frac{\sin\rho}{\cos\rho} A_2$$

These are the component forms of the first-order ODE for the Proca field in the given metric.

# Components of Proca Field Equation in AdS₃ Spacetime

## Metric Analysis

The given metric is:
$$\mathrm{d}s^{2} =\frac{1}{\cos^{2}\rho}\left(-\mathrm{d}t^{2}+\mathrm{d}\rho^{2}+\sin^{2}\rho \mathrm{d}\theta^{2}\right)$$

This represents a 3-dimensional Anti-de Sitter (AdS₃) spacetime in global coordinates. The metric components are:
$$g_{tt} = -\frac{1}{\cos^2\rho}, \quad g_{\rho\rho} = \frac{1}{\cos^2\rho}, \quad g_{\theta\theta} = \frac{\sin^2\rho}{\cos^2\rho}$$

With corresponding inverse metric:
$$g^{tt} = -\cos^2\rho, \quad g^{\rho\rho} = \cos^2\rho, \quad g^{\theta\theta} = \frac{\cos^2\rho}{\sin^2\rho}$$

## Computing Christoffel Symbols

To determine the components of the Proca field equation, we first need to calculate the Christoffel symbols:

$$\Gamma^{\lambda}_{\mu\nu} = \frac{1}{2}g^{\lambda\sigma}(\partial_{\mu}g_{\nu\sigma} + \partial_{\nu}g_{\mu\sigma} - \partial_{\sigma}g_{\mu\nu})$$

The non-zero Christoffel symbols are:
$$\begin{align}
\Gamma^{t}_{t\rho} &= \Gamma^{t}_{\rho t} = \frac{\sin\rho}{\cos\rho} \\
\Gamma^{\rho}_{tt} &= \sin\rho\cos\rho \\
\Gamma^{\rho}_{\rho\rho} &= \frac{\sin\rho}{\cos\rho} \\
\Gamma^{\rho}_{\theta\theta} &= -\sin\rho\cos\rho \\
\Gamma^{\theta}_{\rho\theta} &= \Gamma^{\theta}_{\theta\rho} = \cot\rho
\end{align}$$

## Levi-Civita Tensor Properties

For the Levi-Civita tensor, we have the relation:
$$\varepsilon^{abc}\varepsilon_{a}^{~de} = g^{be}g^{cd} - g^{bd}g^{ce}$$

In a 3D manifold, the completely antisymmetric Levi-Civita tensor with one index lowered and two raised can be expressed as:
$$\varepsilon_{a}^{~bc} = \frac{1}{\sqrt{|g|}}g^{bd}g^{ce}\varepsilon_{ade}$$

Where $|g| = \frac{\sin^2\rho}{\cos^6\rho}$ for our metric.

## Components of the Equation of Motion

The Proca field equation is:
$$\varepsilon_{a}^{~bc}\nabla_{b}A_{c} = -\mu A_{a}$$

Where the covariant derivative is:
$$\nabla_{b}A_{c} = \partial_{b}A_{c} - \Gamma^{d}_{bc}A_{d}$$

Let's compute the components:

### For $a = t$:
$$\varepsilon_{t}^{~bc}\nabla_{b}A_{c} = -\mu A_{t}$$

$$\varepsilon_{t}^{~\rho\theta}(\nabla_{\rho}A_{\theta} - \nabla_{\theta}A_{\rho}) = -\mu A_{t}$$

Expanding:
$$\varepsilon_{t}^{~\rho\theta}[\partial_{\rho}A_{\theta} - \Gamma^{\lambda}_{\rho\theta}A_{\lambda} - \partial_{\theta}A_{\rho} + \Gamma^{\lambda}_{\theta\rho}A_{\lambda}] = -\mu A_{t}$$

Since $\Gamma^{\lambda}_{\rho\theta} = \Gamma^{\lambda}_{\theta\rho}$ for the non-zero components in this metric:
$$\varepsilon_{t}^{~\rho\theta}[\partial_{\rho}A_{\theta} - \partial_{\theta}A_{\rho}] = -\mu A_{t}$$

### For $a = \rho$:
$$\varepsilon_{\rho}^{~bc}\nabla_{b}A_{c} = -\mu A_{\rho}$$

$$\varepsilon_{\rho}^{~t\theta}(\nabla_{t}A_{\theta} - \nabla_{\theta}A_{t}) = -\mu A_{\rho}$$

Expanding:
$$\varepsilon_{\rho}^{~t\theta}[\partial_{t}A_{\theta} - \Gamma^{\lambda}_{t\theta}A_{\lambda} - \partial_{\theta}A_{t} + \Gamma^{\lambda}_{\theta t}A_{\lambda}] = -\mu A_{\rho}$$

### For $a = \theta$:
$$\varepsilon_{\theta}^{~bc}\nabla_{b}A_{c} = -\mu A_{\theta}$$

$$\varepsilon_{\theta}^{~t\rho}(\nabla_{t}A_{\rho} - \nabla_{\rho}A_{t}) = -\mu A_{\theta}$$

Expanding:
$$\varepsilon_{\theta}^{~t\rho}[\partial_{t}A_{\rho} - \Gamma^{\lambda}_{t\rho}A_{\lambda} - \partial_{\rho}A_{t} + \Gamma^{\lambda}_{\rho t}A_{\lambda}] = -\mu A_{\theta}$$

## Final Component Equations

Computing the specific values of $\varepsilon_{a}^{~bc}$ and substituting the Christoffel symbols:

1. **t-component:**
$$\cos\rho\sin\rho[\partial_{\rho}A_{\theta} - \partial_{\theta}A_{\rho} - \cot\rho A_{\theta}] = -\mu A_{t}$$

2. **ρ-component:**
$$\cos\rho[\partial_{t}A_{\theta} - \partial_{\theta}A_{t} - \frac{\sin\rho}{\cos\rho}A_{\theta}] = -\mu A_{\rho}$$

3. **θ-component:**
$$\frac{\cos^2\rho}{\sin\rho}[\partial_{t}A_{\rho} - \partial_{\rho}A_{t} - \frac{\sin\rho}{\cos\rho}A_{t} + \frac{\sin\rho}{\cos\rho}A_{t}] = -\mu A_{\theta}$$

Which simplifies to:
$$\frac{\cos^2\rho}{\sin\rho}[\partial_{t}A_{\rho} - \partial_{\rho}A_{t}] = -\mu A_{\theta}$$

These three component equations represent the Proca field equation (1.2) in the given AdS₃ metric (1.1).