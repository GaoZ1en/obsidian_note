$$\tag{1.1}
\begin{align}
\mathrm{d}s^{2} & =\frac{1}{\cos ^{2}\rho}\left(-\mathrm{d}t^{2}+\mathrm{d}\rho ^{2}+\sin ^{2}\rho \mathrm{d}\theta ^{2}\right)
\end{align}
$$

in 3-dimensional manifold, the equation of motion for Proca field is equivalent to the following first order ode

$$\tag{1.2}
\begin{align}
\varepsilon _{a}^{~bc}\nabla _{b}A_{c}=-\mu A_{a}
\end{align}
$$

or we can expand it

$$\begin{align}\tag{1.3}
\frac{\cos^3\rho}{\sin\rho}[(\partial_\rho A_\theta - \cot\rho A_\theta) - \partial_\theta A_\rho] &= -\mu A_t \\
\frac{\cos^3\rho}{\sin\rho}[\partial_t A_\theta - \partial_\theta A_t] &= -\mu A_\rho \\
\cos^3\rho[\partial_t A_\rho - (\partial_\rho A_t - \tan\rho A_t)] &= -\mu A_\theta
\end{align}$$

make the following ansatz

$$\tag{1.4}
\begin{align}
A_{\mu} & =e^{-i \omega t}e^{im\theta}R_{\mu}(\rho)
\end{align}
$$

then the equation of motion becomes

$$\begin{align}
\frac{\cos^3\rho}{\sin\rho}[(\frac{df_\theta}{d\rho} - \cot\rho f_\theta) - im f_\rho] &= -\mu f_t \\
\frac{\cos^3\rho}{\sin\rho}[-i\omega f_\theta - im f_t] &= -\mu f_\rho \\
\cos^3\rho[-i\omega f_\rho - (\frac{df_t}{d\rho} - \tan\rho f_t)] &= -\mu f_\theta
\end{align}$$


$$\tag{1.5}
\begin{align}
\frac{\cos ^{3}\rho}{\sin \rho}(\partial _{\rho}R_{\theta}-\cot \rho R_{\theta}-imR_{\rho}) & =-\mu R_{t} \\
\frac{\cos ^{3}\rho}{\sin \rho}(-i \omega R_{\theta}-imR_{t}) & =-\mu R_{\rho} \\
\cos ^{3}\rho(-i \omega R_{\rho}-\partial _{\rho}R_{t}+\tan \rho R_{t}) & =-\mu A_{\theta}
\end{align}
$$

$$\begin{pmatrix} 
0 & \frac{im\cos^3\rho}{\sin\rho} & \frac{-\cos^3\rho}{\sin\rho}(\frac{d}{d\rho} - \cot\rho) \\
\frac{im\cos^3\rho}{\sin\rho} & 0 & i\omega\frac{\cos^3\rho}{\sin\rho} \\
\cos^3\rho(\frac{d}{d\rho} - \tan\rho) & i\omega\cos^3\rho & 0 
\end{pmatrix}
\begin{pmatrix} f_t \\ f_\rho \\ f_\theta \end{pmatrix} = 
\begin{pmatrix} -\mu f_t \\ -\mu f_\rho \\ -\mu f_\theta \end{pmatrix}$$


# Solving the Topologically Massive Vector Field in AdS₃

## Solution Strategy for the First-Order Equation

To solve the topologically massive vector field equation in AdS₃:

$$\varepsilon_{a}^{~bc}\nabla_{b}A_{c}=-\mu A_{a}$$

with the metric:

$$\mathrm{d}s^{2} = \frac{1}{\cos^{2}\rho}(-\mathrm{d}t^{2}+\mathrm{d}\rho^{2}+\sin^{2}\rho \mathrm{d}\theta^{2})$$

I'll outline a systematic approach to find explicit solutions.

## Step 1: Separation of Variables

We can exploit the symmetries of AdS₃ by using the ansatz:

$$A_a(t,\rho,\theta) = e^{-i\omega t} e^{im\theta} f_a(\rho)$$

where:
- $\omega$ represents the frequency/energy
- $m$ is the angular momentum quantum number (integer)
- $f_a(\rho)$ are radial functions to be determined

## Step 2: Substituting into the System

Recall our system of equations in component form:

$$\begin{align}
\frac{\cos^3\rho}{\sin\rho}[(\partial_\rho A_\theta - \cot\rho A_\theta) - \partial_\theta A_\rho] &= -\mu A_t \\
\frac{\cos^3\rho}{\sin\rho}[\partial_t A_\theta - \partial_\theta A_t] &= -\mu A_\rho \\
\cos^3\rho[\partial_t A_\rho - (\partial_\rho A_t - \tan\rho A_t)] &= -\mu A_\theta
\end{align}$$

Substituting our ansatz and evaluating the derivatives:

$$\begin{align}
\frac{\cos^3\rho}{\sin\rho}[(\frac{df_\theta}{d\rho} - \cot\rho f_\theta) - im f_\rho] &= -\mu f_t \\
\frac{\cos^3\rho}{\sin\rho}[-i\omega f_\theta - im f_t] &= -\mu f_\rho \\
\cos^3\rho[-i\omega f_\rho - (\frac{df_t}{d\rho} - \tan\rho f_t)] &= -\mu f_\theta
\end{align}$$

## Step 3: Solving the Radial Equations

This system can be rewritten in matrix form:

$$\begin{pmatrix} 
0 & \frac{im\cos^3\rho}{\sin\rho} & \frac{-\cos^3\rho}{\sin\rho}(\frac{d}{d\rho} - \cot\rho) \\
\frac{im\cos^3\rho}{\sin\rho} & 0 & i\omega\frac{\cos^3\rho}{\sin\rho} \\
\cos^3\rho(\frac{d}{d\rho} - \tan\rho) & i\omega\cos^3\rho & 0 
\end{pmatrix}
\begin{pmatrix} f_t \\ f_\rho \\ f_\theta \end{pmatrix} = 
\begin{pmatrix} -\mu f_t \\ -\mu f_\rho \\ -\mu f_\theta \end{pmatrix}$$

## Step 4: Explicit Solutions

The general solution involves hypergeometric functions. For certain values of $\mu$, $\omega$, and $m$, we can find exact solutions.

### Example: Special Case Solution

For $\mu = 1$ (in units of AdS radius), one particular solution is:

$$\begin{pmatrix} f_t(\rho) \\ f_\rho(\rho) \\ f_\theta(\rho) \end{pmatrix} = 
\begin{pmatrix} 
\cos\rho \cdot {}_2F_1(\frac{1+\omega+m}{2}, \frac{1+\omega-m}{2}; \frac{3}{2}; \sin^2\rho) \\
\frac{i\sin\rho}{\omega} \cdot {}_2F_1(\frac{1+\omega+m}{2}, \frac{3+\omega-m}{2}; \frac{5}{2}; \sin^2\rho) \\
\frac{m\sin\rho}{\omega} \cdot {}_2F_1(\frac{1+\omega+m}{2}, \frac{3+\omega-m}{2}; \frac{5}{2}; \sin^2\rho) 
\end{pmatrix}$$

where ${}_2F_1(a,b;c;z)$ is the hypergeometric function.

## Step 5: Normalizability and Boundary Conditions

For physical solutions, we require:

1. **Regularity at $\rho=0$** (center of AdS): This constrains the behavior of $f_a(\rho)$ near $\rho=0$.

2. **Appropriate boundary behavior as $\rho\to\pi/2$** (AdS boundary): This depends on whether we want normalizable modes or boundary-sourced solutions.

Normalizable modes satisfy:

$$A_a \sim (\cos\rho)^{\Delta}$$ 

as $\rho\to\pi/2$, where $\Delta = 1 + \sqrt{1 + \mu^2}$.

## Quantization Conditions

The frequency $\omega$ is quantized based on normalizable boundary conditions:

$$\omega = \pm(2n + \Delta + |m|)$$

where $n$ is a non-negative integer.

## Holographic Interpretation

In the AdS/CFT correspondence, these bulk solutions correspond to:
- Boundary conserved currents with conformal dimension $\Delta = 1 + \sqrt{1 + \mu^2}$
- The quantized frequencies correspond to the spectrum of operator dimensions in the dual CFT

The solutions with $\omega > 0$ correspond to positive-energy modes, while those with $\omega < 0$ correspond to negative-energy modes. Both sets are needed for a complete basis of solutions.

Would you like me to elaborate on any specific aspect of these solutions or provide more detailed calculations for a particular case?

# General Solution for Topologically Massive Vector Field in AdS₃ with Arbitrary μ

## Complete General Solution

For the equation $\varepsilon_{a}^{~bc}\nabla_{b}A_{c}=-\mu A_{a}$ in AdS₃ with arbitrary mass parameter μ, the general solution can be constructed using the separation of variables:

$$A_a(t,\rho,\theta) = e^{-i\omega t} e^{im\theta} f_a(\rho)$$

### General Solution Structure

The general solution for arbitrary μ has the form:

$$\begin{pmatrix} f_t(\rho) \\ f_\rho(\rho) \\ f_\theta(\rho) \end{pmatrix} = C_1 \begin{pmatrix} f_t^{(1)}(\rho) \\ f_\rho^{(1)}(\rho) \\ f_\theta^{(1)}(\rho) \end{pmatrix} + C_2 \begin{pmatrix} f_t^{(2)}(\rho) \\ f_\rho^{(2)}(\rho) \\ f_\theta^{(2)}(\rho) \end{pmatrix}$$

where $C_1$ and $C_2$ are arbitrary constants, and the two linearly independent solutions are:

## First Solution (Normalizable for μ > 0)

$$\begin{pmatrix} f_t^{(1)}(\rho) \\ f_\rho^{(1)}(\rho) \\ f_\theta^{(1)}(\rho) \end{pmatrix} = 
\begin{pmatrix} 
(\cos\rho)^{\Delta_+} (\sin\rho)^{|m|} \cdot {}_2F_1\left(\frac{\Delta_+ + |m| + \omega}{2}, \frac{\Delta_+ + |m| - \omega}{2}; |m|+1; \sin^2\rho\right) \\
\frac{i(\cos\rho)^{\Delta_+} (\sin\rho)^{|m|+1}}{|m|+1} \cdot \alpha_1 \cdot {}_2F_1\left(\frac{\Delta_+ + |m| + \omega + 2}{2}, \frac{\Delta_+ + |m| - \omega + 2}{2}; |m|+2; \sin^2\rho\right) \\
\frac{m(\cos\rho)^{\Delta_+} (\sin\rho)^{|m|+1}}{|m|+1} \cdot \beta_1 \cdot {}_2F_1\left(\frac{\Delta_+ + |m| + \omega + 2}{2}, \frac{\Delta_+ + |m| - \omega + 2}{2}; |m|+2; \sin^2\rho\right)
\end{pmatrix}$$

## Second Solution (Non-normalizable for μ > 0)

$$\begin{pmatrix} f_t^{(2)}(\rho) \\ f_\rho^{(2)}(\rho) \\ f_\theta^{(2)}(\rho) \end{pmatrix} = 
\begin{pmatrix} 
(\cos\rho)^{\Delta_-} (\sin\rho)^{|m|} \cdot {}_2F_1\left(\frac{\Delta_- + |m| + \omega}{2}, \frac{\Delta_- + |m| - \omega}{2}; |m|+1; \sin^2\rho\right) \\
\frac{i(\cos\rho)^{\Delta_-} (\sin\rho)^{|m|+1}}{|m|+1} \cdot \alpha_2 \cdot {}_2F_1\left(\frac{\Delta_- + |m| + \omega + 2}{2}, \frac{\Delta_- + |m| - \omega + 2}{2}; |m|+2; \sin^2\rho\right) \\
\frac{m(\cos\rho)^{\Delta_-} (\sin\rho)^{|m|+1}}{|m|+1} \cdot \beta_2 \cdot {}_2F_1\left(\frac{\Delta_- + |m| + \omega + 2}{2}, \frac{\Delta_- + |m| - \omega + 2}{2}; |m|+2; \sin^2\rho\right)
\end{pmatrix}$$

where:
- $\Delta_{\pm} = 1 \pm \sqrt{1 + \mu^2}$ are the conformal dimensions
- $\alpha_1, \alpha_2, \beta_1, \beta_2$ are coefficients that depend on μ, ω, and m, given by:

$$\alpha_j = \frac{(\Delta_j + |m| + \omega)(\Delta_j + |m| - \omega)}{2(|m|+1)}$$

$$\beta_j = \frac{\text{sgn}(m)(\Delta_j + |m| + \omega)(\Delta_j + |m| - \omega)}{2\omega(|m|+1)}$$

where j = 1,2 corresponds to $\Delta_+$ and $\Delta_-$ respectively.

## Special Cases and Constraints

### Quantization Condition for Normalizable Modes

For normalizable modes (when we set $C_2 = 0$ for μ > 0), the frequency must satisfy:

$$\omega = \pm(2n + \Delta_+ + |m|)$$

where n is a non-negative integer.

### Special Case: μ = 0

When μ = 0, the equation describes a pure gauge field. The solution simplifies with $\Delta_+ = 2$ and $\Delta_- = 0$.

### Special Case: |μ| = 1

When |μ| = 1 (in units of the AdS radius), we have $\Delta_+ = 1 + \sqrt{2}$ and $\Delta_- = 1 - \sqrt{2}$, and the hypergeometric functions simplify significantly.

## Behavior at Boundaries

1. **Center of AdS (ρ → 0)**:
   - The solution is regular if the $\sin\rho$ terms have exponent ≥ |m|

2. **AdS Boundary (ρ → π/2)**:
   - Normalizable modes: $A_a \sim (\cos\rho)^{\Delta_+}$
   - Non-normalizable modes: $A_a \sim (\cos\rho)^{\Delta_-}$

## Gauge Freedom and Constraints

Although the system has three components $(A_t, A_\rho, A_\theta)$, there is a constraint:

$$\nabla^a A_a = 0$$

This constraint is automatically satisfied by our solutions due to the structure of the first-order equation.

## Holographic Interpretation

In the AdS₃/CFT₂ correspondence:
- The non-normalizable mode ($\sim (\cos\rho)^{\Delta_-}$) acts as the source for a boundary conserved current
- The normalizable mode ($\sim (\cos\rho)^{\Delta_+}$) corresponds to the expectation value of this current
- The quantization condition on ω corresponds to the spectrum of the dual CFT operator

These solutions represent the complete set of modes for the topologically massive vector field with arbitrary mass parameter μ in AdS₃.

