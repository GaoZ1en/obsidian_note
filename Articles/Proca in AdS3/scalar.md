here we take global coordinates

$$\tag{1.1}
\begin{align}
\mathrm{d}s^{2} & =\frac{1}{\cos ^{2}\rho}\left(-\mathrm{d}t^{2}+\mathrm{d}\rho ^{2}+\sin ^{2}\rho \mathrm{d}\theta ^{2}\right)
\end{align}
$$

where $\displaystyle{\rho=\left[0, \frac{\pi}{2}\right)}$, $\displaystyle{\theta \in[0,2\pi)}$, and $\displaystyle{t\in(-\infty,\infty)}$. the Laplacian operator is given by

$$\tag{.}
\begin{align}
\sqrt{ -g } & =\frac{\sin \rho}{\cos ^{3}\rho} \\
g^{tt} & =-\cos ^{2}\rho \\
g^{\rho \rho} & =\cos ^{2}\rho \\
g^{\theta \theta} & =\frac{\cos ^{2}\rho}{\sin ^{2}\rho}
\end{align}
$$

$$\tag{1.2}
\begin{align}
\nabla ^{2}\phi & =\frac{1}{\sqrt{ -g }}\partial _{\mu}(\sqrt{ -g }g^{\mu \nu}\partial _{\nu}\phi) \\
  & = -\cos ^{2}\rho \partial _{t}^{2}\phi+\cot ^{2}\rho \partial _{\theta}^{2}\phi+
\end{align}
$$

to get a complete set of solutions, we can use the ansatz

$$\tag{1.3}
\begin{align}
\phi(t,\rho,\theta)=e^{-i \omega t}e^{im\theta}R(\rho)
\end{align}
$$

the 

# Finding a Complete Basis for Klein-Gordon Equation in AdS₃

I see you're working with the Klein-Gordon equation in a specific curved spacetime. This metric represents AdS₃ (3-dimensional anti-de Sitter space) in global coordinates.

## Identifying the Problem Structure

The Klein-Gordon equation in curved spacetime is:
$$(\nabla^2 + m^2)\phi = 0$$

Where in general form:
$$\nabla^2\phi = \frac{1}{\sqrt{-g}}\partial_\mu(\sqrt{-g}g^{\mu\nu}\partial_\nu \phi)$$

For your metric:
$$ds^2 = \frac{1}{\cos^2\rho}(-dt^2 + d\rho^2 + \sin^2\rho\,d\theta^2)$$

## Solution Approach

### Step 1: Use separation of variables
Due to the symmetries of AdS₃, we can separate variables as:
$$\phi(t,\rho,\theta) = e^{-i\omega t}e^{im\theta}R(\rho)$$
where $\omega$ is the frequency and $m$ is the angular momentum quantum number (integer).

### Step 2: Derive the radial equation
For this metric:
- Determinant: $\sqrt{-g} = \frac{\sin\rho}{\cos^3\rho}$
- Inverse metric components: $g^{tt} = -\cos^2\rho$, $g^{\rho\rho} = \cos^2\rho$, $g^{\theta\theta} = \frac{\cos^2\rho}{\sin^2\rho}$

Substituting into the Klein-Gordon equation yields:
$$\frac{1}{\sin\rho}\frac{d}{d\rho}\left(\sin\rho\cos^2\rho\frac{dR}{d\rho}\right) + \left(\omega^2\cos^2\rho - \frac{m^2\cos^2\rho}{\sin^2\rho} - m^2\cos^2\rho\right)R = 0$$

### Step 3: Transform to hypergeometric form
Let $x = \sin^2\rho$ and $R(\rho) = (\sin\rho)^{|m|}(\cos\rho)^{\Delta}F(x)$ where $\Delta = 1 \pm \sqrt{1+m^2}$

This transforms the equation into a standard hypergeometric form:
$$x(1-x)F''(x) + [c - (a+b+1)x]F'(x) - abF(x) = 0$$

Where:
- $a = \frac{\Delta+|m|+\omega}{2}$
- $b = \frac{\Delta+|m|-\omega}{2}$
- $c = |m| + \frac{1}{2}$

### Step 4: Apply boundary conditions
- At $\rho = 0$ (center): Solutions must be regular
- At $\rho = \pi/2$ (boundary): Solutions must have appropriate falloff

### Step 5: Write the complete basis

The normalized basis functions are:
$$\phi_{n\ell m}(t,\rho,\theta) = C_{n\ell m}e^{-i\omega_{n\ell} t}e^{im\theta}(\sin\rho)^{|m|}(\cos\rho)^{\Delta}{}_2F_1\left(a, b; c; \sin^2\rho\right)$$

Where:
- $\omega_{n\ell} = \Delta + |m| + 2n$ (quantized frequency)
- $n = 0,1,2,...$ (radial quantum number)
- $m = 0,\pm 1,\pm 2,...$ (angular momentum)
- $C_{n\ell m}$ is a normalization constant

## Practical Implementation

To actually compute these solutions:
1. Choose the appropriate $\Delta$ based on boundary conditions (typically $\Delta = 1 + \sqrt{1+m^2}$ for normalizable modes)
2. Calculate the frequencies $\omega_{n\ell}$ for given quantum numbers
3. Compute the hypergeometric functions using numerical libraries

Would you like me to elaborate on any specific part of this solution approach or the normalization conditions?

# Klein-Gordon Equation Solutions in AdS_n

## The General Problem

Let's extend our analysis to the Klein-Gordon equation in $n$-dimensional anti-de Sitter space (AdS_n). The metric in global coordinates is:

$$ds^2 = \frac{1}{\cos^2\rho}(-dt^2 + d\rho^2 + \sin^2\rho\,d\Omega_{n-2}^2)$$

where $d\Omega_{n-2}^2$ is the metric on the unit $(n-2)$-sphere.

## Solution Strategy

### Step 1: Separate variables
For AdS_n, we use:
$$\phi(t,\rho,\Omega_{n-2}) = e^{-i\omega t}R(\rho)Y_{l,\{m_i\}}(\Omega_{n-2})$$

Where:
- $Y_{l,\{m_i\}}(\Omega_{n-2})$ are the hyperspherical harmonics on $S^{n-2}$
- These harmonics satisfy: $\nabla^2_{S^{n-2}}Y_{l,\{m_i\}} = -l(l+n-3)Y_{l,\{m_i\}}$
- $l$ is the principal angular momentum quantum number
- $\{m_i\}$ represents the set of $(n-3)$ magnetic quantum numbers

### Step 2: Derive the radial equation
The radial equation becomes:

$$\frac{1}{\sin^{n-2}\rho}\frac{d}{d\rho}\left(\sin^{n-2}\rho\cos^2\rho\frac{dR}{d\rho}\right) + \left(\omega^2\cos^2\rho - \frac{l(l+n-3)\cos^2\rho}{\sin^2\rho} - m^2\cos^2\rho\right)R = 0$$

### Step 3: Transform to hypergeometric form
Use the substitution:
$$x = \sin^2\rho$$
$$R(\rho) = (\sin\rho)^l(\cos\rho)^{\Delta}F(x)$$

Where $\Delta$ satisfies the indicial equation:
$$\Delta(\Delta-n+1) = m^2$$

giving:
$$\Delta = \frac{n-1}{2} \pm \sqrt{\left(\frac{n-1}{2}\right)^2 + m^2}$$

For normalizable modes, we typically choose:
$$\Delta = \frac{n-1}{2} + \sqrt{\left(\frac{n-1}{2}\right)^2 + m^2}$$

This transforms the equation into the hypergeometric form:
$$x(1-x)F''(x) + [c - (a+b+1)x]F'(x) - abF(x) = 0$$

with parameters:
- $a = \frac{\Delta+l+\omega}{2}$
- $b = \frac{\Delta+l-\omega}{2}$
- $c = l + \frac{n-1}{2}$

### Step 4: Apply boundary conditions
Requiring regularity at $\rho = 0$ and appropriate behavior at the boundary $\rho = \pi/2$ leads to the quantization condition:
$$\omega_{nl} = \Delta + l + 2n$$

where $n = 0,1,2,...$ is the radial quantum number.

## Complete Basis Functions

The normalized basis functions are:

$$\phi_{n,l,\{m_i\}}(t,\rho,\Omega_{n-2}) = C_{n,l,\{m_i\}}e^{-i\omega_{nl} t}(\sin\rho)^l(\cos\rho)^{\Delta}{}_2F_1\left(a, b; c; \sin^2\rho\right)Y_{l,\{m_i\}}(\Omega_{n-2})$$

Where:
- $\omega_{nl} = \Delta + l + 2n$
- The hypergeometric parameters are now:
  - $a = \frac{\Delta+l+\omega_{nl}}{2} = \Delta + l + n$
  - $b = \frac{\Delta+l-\omega_{nl}}{2} = -n$
  - $c = l + \frac{n-1}{2}$

Note that with $b = -n$, the hypergeometric function ${}_2F_1$ reduces to a polynomial of degree $n$, specifically a Jacobi polynomial:

$$_2F_1(-n, \Delta+l+n; l+\frac{n-1}{2}; \sin^2\rho) \propto P_n^{(l+\frac{n-3}{2}, \Delta-\frac{n-1}{2})}(1-2\sin^2\rho)$$

## Normalization

The normalization constant $C_{n,l,\{m_i\}}$ is determined by requiring:

$$\int \phi_{n,l,\{m_i\}}^* \phi_{n',l',\{m_i'\}} \sqrt{-g}\,dt\,d\rho\,d\Omega_{n-2} = \delta_{nn'}\delta_{ll'}\delta_{\{m_i\}\{m_i'\}}$$

This normalization involves Gamma functions and depends on the specific values of $n$, $l$, and $\Delta$.

Would you like me to provide more details on any particular aspect of this solution, such as the explicit form of the hyperspherical harmonics or the normalization constants?

# Detailed Calculation of the Laplacian in AdS_n

The Klein-Gordon equation in curved spacetime requires a precise calculation of the Laplacian operator. Let's derive this systematically for the AdS_n metric.

## Starting Point: The Metric

The AdS_n metric in global coordinates is:

$$ds^2 = \frac{1}{\cos^2\rho}(-dt^2 + d\rho^2 + \sin^2\rho\,d\Omega_{n-2}^2)$$

where $d\Omega_{n-2}^2$ is the metric on the unit $(n-2)$-sphere.

## Laplacian Formula in Curved Spacetime

The Laplacian (scalar wave operator) in curved spacetime is:

$$\nabla^2\phi = \frac{1}{\sqrt{-g}}\partial_\mu(\sqrt{-g}g^{\mu\nu}\partial_\nu \phi)$$

## Step 1: Compute the Metric Components

First, let's identify the relevant metric information:

- Metric components: $g_{tt} = -\frac{1}{\cos^2\rho}$, $g_{\rho\rho} = \frac{1}{\cos^2\rho}$, etc.
- Inverse metric: $g^{tt} = -\cos^2\rho$, $g^{\rho\rho} = \cos^2\rho$, etc.
- Determinant: $\sqrt{-g} = \frac{\sin^{n-2}\rho}{\cos^n\rho}\sqrt{\gamma}$ 
  (where $\sqrt{\gamma}$ is the determinant of the unit $(n-2)$-sphere metric)

## Step 2: Calculate Each Component of the Laplacian

### Time Component:
$$\frac{1}{\sqrt{-g}}\partial_t(\sqrt{-g}g^{tt}\partial_t \phi) = -\cos^2\rho \partial_t^2 \phi$$

### Radial Component:
$$\frac{1}{\sqrt{-g}}\partial_\rho(\sqrt{-g}g^{\rho\rho}\partial_\rho \phi) = \frac{\cos^n\rho}{\sin^{n-2}\rho}\partial_\rho\left(\frac{\sin^{n-2}\rho}{\cos^{n-2}\rho}\partial_\rho \phi\right)$$

Expanding this expression:
$$= \cos^2\rho \partial_\rho^2 \phi + (n-2)\partial_\rho \phi \cdot \cos\rho \cdot \frac{\cos^2\rho - \sin^2\rho}{\sin\rho\cos\rho}$$

$$= \cos^2\rho \partial_\rho^2 \phi + (n-2)\partial_\rho \phi \cdot \frac{\cos^2\rho - \sin^2\rho}{\sin\rho}$$

### Angular Component:
$$\frac{1}{\sqrt{-g}}\partial_{\theta_i}(\sqrt{-g}g^{\theta_i\theta_j}\partial_{\theta_j} \phi) = \frac{\cos^2\rho}{\sin^2\rho}\nabla^2_{S^{n-2}}\phi$$

where $\nabla^2_{S^{n-2}}$ is the Laplacian on the unit $(n-2)$-sphere.

## Step 3: Combine All Terms

The complete Laplacian is:

$$\nabla^2 \phi = -\cos^2\rho \partial_t^2 \phi + \cos^2\rho \partial_\rho^2 \phi + (n-2)\partial_\rho \phi \cdot \frac{\cos^2\rho - \sin^2\rho}{\sin\rho} + \frac{\cos^2\rho}{\sin^2\rho}\nabla^2_{S^{n-2}}\phi$$

Factoring out $\cos^2\rho$:

$$\nabla^2 \phi = \cos^2\rho \left[ -\partial_t^2 \phi + \partial_\rho^2 \phi + (n-2)\partial_\rho \phi \cdot \frac{\cos^2\rho - \sin^2\rho}{\sin\rho\cos^2\rho} + \frac{1}{\sin^2\rho}\nabla^2_{S^{n-2}}\phi \right]$$

Using the identity $\cos^2\rho - \sin^2\rho = \cos(2\rho)$:

$$\nabla^2 \phi = \cos^2\rho \left[ -\partial_t^2 \phi + \partial_\rho^2 \phi + (n-2)\partial_\rho \phi \cdot \frac{\cos(2\rho)}{\sin\rho\cos^2\rho} + \frac{1}{\sin^2\rho}\nabla^2_{S^{n-2}}\phi \right]$$

## Step 4: Variable Separation and Radial Equation

When we substitute $\phi(t,\rho,\Omega_{n-2}) = e^{-i\omega t}R(\rho)Y_{l,\{m_i\}}(\Omega_{n-2})$ and use:

$$\nabla^2_{S^{n-2}} Y_{l,\{m_i\}} = -l(l+n-3) Y_{l,\{m_i\}}$$

We obtain the radial equation:

$$\partial_\rho^2 R + (n-2)\partial_\rho R \cdot \frac{\cos(2\rho)}{\sin\rho\cos^2\rho} + \left[ \omega^2 - \frac{l(l+n-3)}{\sin^2\rho} - \frac{m^2}{\cos^2\rho} \right] R = 0$$

This can be simplified to:

$$\partial_\rho^2 R + (n-2)\frac{\cos\rho}{\sin\rho}\left(1-\frac{\sin^2\rho}{\cos^2\rho}\right) \partial_\rho R + \left[ \omega^2 - \frac{l(l+n-3)}{\sin^2\rho} - \frac{m^2}{\cos^2\rho} \right] R = 0$$

## Step 5: Transformation to Hypergeometric Form

To solve this equation, we use the substitution $x = \sin^2\rho$ and $R(\rho) = (\sin\rho)^l(\cos\rho)^{\Delta}F(x)$, where $\Delta$ satisfies:

$$\Delta(\Delta-n+1) = m^2$$

This transforms the equation into the standard hypergeometric form:

$$x(1-x)F''(x) + [c - (a+b+1)x]F'(x) - abF(x) = 0$$

with parameters:
- $a = \frac{\Delta+l+\omega}{2}$
- $b = \frac{\Delta+l-\omega}{2}$
- $c = l + \frac{n-1}{2}$

## Mathematical Verification

This approach can be verified through an alternative method using the conformal transformation properties of the Laplacian. For a conformally flat metric $ds^2 = \Omega^2(x)g^{\text{flat}}_{\mu\nu}dx^\mu dx^\nu$, the Laplacian transforms as:

$$\nabla^2_g \phi = \Omega^{-2}(x)[\nabla^2_{\text{flat}} \phi - (n-2)\Omega^{-1}(x)g^{\mu\nu}_{\text{flat}}\partial_\mu \Omega(x) \partial_\nu \phi]$$

This provides a consistency check for our direct calculation.

Would you like me to elaborate on any specific part of this derivation, such as the handling of the angular terms or the transformation to hypergeometric form?