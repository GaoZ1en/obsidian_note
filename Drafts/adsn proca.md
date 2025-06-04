# The Laplacian of Vector Fields on Riemannian Manifolds

## Scalar Laplacian Review

Before discussing vector Laplacians, let's review the scalar case. For a scalar field $f$ on a Riemannian manifold $(M,g)$, the Laplacian (Laplace-Beltrami operator) is defined as:

$$\Delta f = \nabla^i \nabla_i f = g^{ij} \nabla_i \nabla_j f$$

In local coordinates, this takes the form:

$$\Delta f = \frac{1}{\sqrt{|g|}} \partial_i \left( \sqrt{|g|} g^{ij} \partial_j f \right)$$

where $|g|$ is the determinant of the metric tensor.

## Vector Laplacians

For vector fields, there are actually two standard definitions of the "Laplacian":

### 1. Bochner Laplacian (Rough Laplacian)

The Bochner Laplacian of a vector field $V^a$ is defined as:

$$(\Delta_B V)^a = g^{ij} \nabla_i \nabla_j V^a$$

This is the component-wise application of the scalar Laplacian. In coordinates:

$$(\Delta_B V)^a = g^{ij} \left( \partial_i \partial_j V^a + \Gamma^a_{ik} \partial_j V^k + \Gamma^k_{ij} \partial_k V^a + \partial_i \Gamma^a_{jk} V^k + \Gamma^a_{ik} \Gamma^k_{jl} V^l - \Gamma^k_{ij} \Gamma^a_{kl} V^l \right)$$

where $\Gamma^a_{bc}$ are the Christoffel symbols of the Levi-Civita connection.

### 2. Hodge Laplacian (Vector Laplacian)

The Hodge Laplacian is defined using exterior calculus:

$$\Delta_H = (d + d^*)^2 = d d^* + d^* d$$

For a vector field (identified with a 1-form via the metric), this becomes:

$$(\Delta_H V)_a = (\Delta_B V)_a + R_{ab} V^b$$

where $R_{ab}$ is the Ricci tensor. This follows from the Weitzenböck identity ^cite{Weitzenböck1923}.

## Key Differences Between Scalar and Vector Laplacians

1. **Curvature Coupling**: The most fundamental difference is that the Hodge Laplacian of a vector field couples to curvature through the Ricci tensor:

   $$\Delta_H = \Delta_B + \text{Ric}$$

   Scalar fields don't exhibit this coupling in their Laplacian.

2. **Coordinate Complexity**: The vector Laplacian expressions involve Christoffel symbols and their derivatives, making them significantly more complex than the scalar case.

3. **Differential Form Perspective**: In terms of differential forms, if we identify $V$ with its dual 1-form, the Hodge Laplacian can be written as:

   $$\Delta_H V = (d\delta + \delta d)V = d(\delta V) + \delta(dV)$$

   where $d$ is the exterior derivative and $\delta$ is the codifferential. This connects to generalized notions of divergence and curl.

4. **Physical Interpretation**: The scalar Laplacian represents the flux density of the gradient field of a function, while vector Laplacians have more complex interpretations related to both divergence and curl aspects of the field.

5. **Harmonic Fields**: A vector field $V$ is harmonic (satisfying $\Delta_H V = 0$) if and only if it is both divergence-free ($\nabla \cdot V = 0$) and curl-free ($\nabla \times V = 0$) in flat space. On a curved manifold, the Ricci curvature term adds another constraint.

## Applications

The distinction between these Laplacians becomes crucial in:

- [[Hodge Theory]] and the study of harmonic forms
- Analysis of the [[Einstein Field Equations]] in linearized gravity
- [[Yang-Mills Theory]] and gauge field dynamics
- [[Geometric Analysis]] of vector-valued heat flows

This curvature coupling in the vector Laplacian is one of the fundamental ways that geometry influences physics in theories like general relativity and gauge theories.

# Proca Field Equation in Global AdS_n Using Bochner Laplacian

## Background

For a massive vector field (Proca field) $A_\mu$ with mass $m$, the equation of motion using the Bochner Laplacian in a general curved spacetime is:

$$\nabla_\nu F^{\mu\nu} + m^2 A^\mu = 0$$

where $F_{\mu\nu} = \nabla_\mu A_\nu - \nabla_\nu A_\mu$ is the field strength tensor.

In terms of the Bochner Laplacian, we can rewrite this as:

$$-(\Delta_B A)^\mu + \nabla^\mu(\nabla_\nu A^\nu) + m^2 A^\mu = 0$$

where $(\Delta_B A)^\mu = g^{\alpha\beta}\nabla_\alpha\nabla_\beta A^\mu$ is the Bochner Laplacian.

## Global AdS_n Metric

The AdS_n spacetime in global coordinates has the metric:

$$ds^2 = -\cosh^2\rho \, dt^2 + d\rho^2 + \sinh^2\rho \, d\Omega_{n-2}^2$$

where $d\Omega_{n-2}^2$ is the metric on the unit $(n-2)$-sphere. Here $\rho \in [0,\infty)$ is the radial coordinate, and $t \in (-\infty,\infty)$ is the time coordinate.

The non-zero metric components are:
- $g_{tt} = -\cosh^2\rho$
- $g_{\rho\rho} = 1$
- $g_{ij} = \sinh^2\rho \, \omega_{ij}$ for the angular components, where $\omega_{ij}$ is the metric on the unit sphere

## Explicit Proca Equation in Global AdS_n

Expanding the Bochner Laplacian in these coordinates, the Proca equation becomes:

$$-g^{\alpha\beta}\nabla_\alpha\nabla_\beta A^\mu + \nabla^\mu(\nabla_\nu A^\nu) + m^2 A^\mu = 0$$

Explicitly calculating the components:

### Time Component ($\mu = t$)

$$\begin{align}
&-\frac{1}{\cosh^2\rho}\partial_t^2 A^t - \partial_\rho^2 A^t - \frac{n-1}{\sinh\rho\cosh\rho}\partial_\rho A^t - \frac{1}{\sinh^2\rho}\nabla_{\Omega}^2 A^t \\
&+ \frac{2\tanh\rho}{\cosh^2\rho}\partial_t A^\rho + \partial^t(\nabla_\nu A^\nu) + m^2 A^t = 0
\end{align}$$

### Radial Component ($\mu = \rho$)

$$\begin{align}
&-\frac{1}{\cosh^2\rho}\partial_t^2 A^\rho - \partial_\rho^2 A^\rho - \frac{n-1}{\tanh\rho}\partial_\rho A^\rho + \frac{n-2}{\sinh^2\rho}A^\rho - \frac{1}{\sinh^2\rho}\nabla_{\Omega}^2 A^\rho \\
&+ \frac{2\tanh\rho}{\cosh^2\rho}\partial_t A^t + \partial^\rho(\nabla_\nu A^\nu) + m^2 A^\rho = 0
\end{align}$$

### Angular Components ($\mu = i$, representing sphere coordinates)

$$\begin{align}
&-\frac{1}{\cosh^2\rho}\partial_t^2 A^i - \partial_\rho^2 A^i - \frac{n-1}{\tanh\rho}\partial_\rho A^i + \frac{(n-2)(1-\cosh^2\rho)}{\sinh^2\rho}A^i - \frac{1}{\sinh^2\rho}\nabla_{\Omega}^2 A^i \\
&+ \frac{2}{\sinh^2\rho}\sum_j \omega^{ij}\partial_j\partial_\rho A^\rho + \partial^i(\nabla_\nu A^\nu) + m^2 A^i = 0
\end{align}$$

Where $\nabla_{\Omega}^2$ is the Laplacian on the unit $(n-2)$-sphere, and the divergence term $\nabla_\nu A^\nu$ expands to:

$$\nabla_\nu A^\nu = \frac{1}{\cosh\rho\sinh^{n-2}\rho}\partial_t(\cosh\rho A^t) + \frac{1}{\sinh^{n-2}\rho}\partial_\rho(\sinh^{n-2}\rho A^\rho) + \frac{1}{\sinh^2\rho}\nabla_{\Omega,i}A^i$$

## Key Features

1. The equations couple different components of the vector field
2. The radial component exhibits terms proportional to $1/\tanh\rho$ reflecting the AdS geometry
3. The coupling between time and radial components through terms like $\partial_t A^\rho$ is characteristic of curved spacetime
4. The mass term $m^2$ appears uniformly across all components

This system of coupled PDEs doesn't generally separate variables in global AdS coordinates, though special solutions can be constructed using tensor harmonics on the sphere combined with appropriate radial functions.

For certain applications (like holography), it's often easier to work in Poincaré coordinates rather than global coordinates, but the global coordinate system gives a more complete picture of the AdS causal structure.

# Proca Field Equation in Conformal Global AdS_n Coordinates

## The Metric

I'll work with the conformal form of the AdS_n metric you provided:

$$ds^2 = \frac{1}{\cos^2\rho}\left(-dt^2 + d\rho^2 + \sin^2\rho\, d\Omega_{n-2}^2\right)$$

where $\rho \in [0,\frac{\pi}{2})$ is the radial coordinate bounded by the conformal boundary at $\rho = \frac{\pi}{2}$.

## Metric Components and Determinant

The non-zero metric components are:
- $g_{tt} = -\frac{1}{\cos^2\rho}$
- $g_{\rho\rho} = \frac{1}{\cos^2\rho}$
- $g_{ij} = \frac{\sin^2\rho}{\cos^2\rho}\omega_{ij}$ for the angular components

The inverse metric:
- $g^{tt} = -\cos^2\rho$
- $g^{\rho\rho} = \cos^2\rho$
- $g^{ij} = \frac{\cos^2\rho}{\sin^2\rho}\omega^{ij}$

The metric determinant:
$$\sqrt{|g|} = \frac{\sin^{n-2}\rho}{\cos^n\rho}\sqrt{\omega}$$
where $\sqrt{\omega}$ is the determinant of the unit sphere metric.

## Key Christoffel Symbols

For this metric, the important Christoffel symbols include:
- $\Gamma^t_{t\rho} = \Gamma^t_{\rho t} = \tan\rho$
- $\Gamma^\rho_{tt} = \tan\rho$ 
- $\Gamma^\rho_{\rho\rho} = \tan\rho$
- $\Gamma^i_{\rho j} = \Gamma^i_{j\rho} = \cot\rho\delta^i_j$
- $\Gamma^\rho_{ij} = -\sin\rho\cos\rho\omega_{ij}$
- $\Gamma^i_{jk}$ = standard Christoffel symbols on the $(n-2)$-sphere

## Proca Equation in Component Form

Starting from the Proca equation with the Bochner Laplacian:

$$-(\Delta_B A)^\mu + \nabla^\mu(\nabla_\nu A^\nu) + m^2 A^\mu = 0$$

Let me expand this for each component:

### Time Component ($\mu = t$)

$$\begin{align}
&-\cos^2\rho\partial_t^2 A^t - \cos^2\rho\partial_\rho^2 A^t - \cos^2\rho\frac{(n-2)\cot\rho + n\tan\rho}{\partial_\rho A^t} \\
&- \frac{\cos^2\rho}{\sin^2\rho}\nabla_{\Omega}^2 A^t + 2\cos^2\rho\tan\rho\partial_t A^\rho - \cos^2\rho\partial_t(\nabla_\nu A^\nu) + m^2 A^t = 0
\end{align}$$

### Radial Component ($\mu = \rho$)

$$\begin{align}
&-\cos^2\rho\partial_t^2 A^\rho - \cos^2\rho\partial_\rho^2 A^\rho - \cos^2\rho\frac{(n-2)\cot\rho + n\tan\rho}{\partial_\rho A^\rho} \\
&+ (n-2)\cos^2\rho\frac{\cot^2\rho - 1}{\sin^2\rho}A^\rho - \frac{\cos^2\rho}{\sin^2\rho}\nabla_{\Omega}^2 A^\rho \\
&+ 2\cos^2\rho\tan\rho\partial_t A^t - \cos^2\rho\partial_\rho(\nabla_\nu A^\nu) + m^2 A^\rho = 0
\end{align}$$

### Angular Components ($\mu = i$)

$$\begin{align}
&-\cos^2\rho\partial_t^2 A^i - \cos^2\rho\partial_\rho^2 A^i - \cos^2\rho\frac{(n-2)\cot\rho + n\tan\rho}{\partial_\rho A^i} \\
&+ (n-2)\cos^2\rho\frac{\cot^2\rho}{\sin^2\rho}A^i - \frac{\cos^2\rho}{\sin^2\rho}\nabla_{\Omega}^2 A^i \\
&+ 2\frac{\cos^2\rho}{\sin^2\rho}\omega^{ij}\partial_j\partial_\rho A^\rho - \frac{\cos^2\rho}{\sin^2\rho}\omega^{ij}\partial_j(\nabla_\nu A^\nu) + m^2 A^i = 0
\end{align}$$

Where the covariant divergence $\nabla_\nu A^\nu$ is given by:

$$\nabla_\nu A^\nu = \frac{\cos^{n}\rho}{\sin^{n-2}\rho}\partial_t\left(\frac{A^t}{\cos^{n}\rho}\right) + \frac{\cos^{n}\rho}{\sin^{n-2}\rho}\partial_\rho\left(\frac{\sin^{n-2}\rho}{\cos^{n}\rho}A^\rho\right) + \frac{1}{\sin^2\rho}\nabla_{\Omega,i}A^i$$

Which simplifies to:

$$\nabla_\nu A^\nu = \partial_t A^t + \partial_\rho A^\rho + ((n-2)\cot\rho - n\tan\rho)A^\rho + \frac{1}{\sin^2\rho}\nabla_{\Omega,i}A^i$$

## Gauge Condition

For completeness, note that the Proca field also satisfies:

$$\nabla_\mu A^\mu = 0$$

This condition arises from taking the divergence of the equation of motion and using the property that $\nabla_\mu \nabla_\nu F^{\mu\nu} = 0$.

## Special Cases

1. **Temporal Gauge**: Setting $A^t = 0$ simplifies the equations but doesn't fully decouple them

2. **S-Wave Sector**: For spherically symmetric solutions where $A^i = 0$ and $A^t, A^\rho$ depend only on $t$ and $\rho$, the equations reduce to a coupled system of PDEs:

$$\begin{align}
&-\cos^2\rho\partial_t^2 A^t - \cos^2\rho\partial_\rho^2 A^t - \cos^2\rho((n-2)\cot\rho + n\tan\rho)\partial_\rho A^t \\
&+ 2\cos^2\rho\tan\rho\partial_t A^\rho - \cos^2\rho\partial_t(\partial_t A^t + \partial_\rho A^\rho + ((n-2)\cot\rho - n\tan\rho)A^\rho) + m^2 A^t = 0
\end{align}$$

$$\begin{align}
&-\cos^2\rho\partial_t^2 A^\rho - \cos^2\rho\partial_\rho^2 A^\rho - \cos^2\rho((n-2)\cot\rho + n\tan\rho)\partial_\rho A^\rho \\
&+ (n-2)\cos^2\rho\frac{\cot^2\rho - 1}{\sin^2\rho}A^\rho + 2\cos^2\rho\tan\rho\partial_t A^t \\
&- \cos^2\rho\partial_\rho(\partial_t A^t + \partial_\rho A^\rho + ((n-2)\cot\rho - n\tan\rho)A^\rho) + m^2 A^\rho = 0
\end{align}$$

This system of equations is appropriate for studying massive vector fields in AdS spacetime, particularly in applications like AdS/CFT correspondence where the conformal form of the metric is often preferred.

# The Hodge Laplacian for Vector Fields

## Definition and Relation to Bochner Laplacian

The Hodge Laplacian for a vector field (or equivalently, a 1-form) on a Riemannian manifold is defined as:

$$\Delta_H = dd^* + d^*d$$

where $d$ is the exterior derivative and $d^*$ is its adjoint. For a vector field $V$, the Hodge Laplacian is related to the Bochner Laplacian through the Weitzenböck identity:

$$(\Delta_H V)^a = (\Delta_B V)^a + R^a_b V^b$$

where $R^a_b$ is the Ricci tensor with one index raised.

## Explicit Formula in Terms of Metric and Christoffel Symbols

Starting with a vector field $V^a$, the Hodge Laplacian can be written explicitly as:

$$(\Delta_H V)^a = g^{ij}\nabla_i\nabla_j V^a + R^a_b V^b$$

Expanding the covariant derivatives and Ricci tensor in terms of Christoffel symbols:

$$\begin{align}
(\Delta_H V)^a &= g^{ij}\left(\partial_i\partial_j V^a + \partial_i\Gamma^a_{jk}V^k + \Gamma^a_{jk}\partial_i V^k + \Gamma^a_{ik}\partial_j V^k + \Gamma^a_{ik}\Gamma^k_{jl}V^l - \Gamma^k_{ij}\partial_k V^a - \Gamma^k_{ij}\Gamma^a_{kl}V^l\right) \\
&+ \left(g^{ac}\partial_b\Gamma^b_{cd} - g^{ac}\partial_d\Gamma^b_{cb} + g^{ac}\Gamma^b_{cd}\Gamma^d_{be} - g^{ac}\Gamma^b_{ce}\Gamma^d_{bd}\right)V^d
\end{align}$$

## Alternative Form Using Divergence and Curl

Another insightful representation comes from expanding $dd^*$ and $d^*d$ explicitly:

$$(\Delta_H V)_a = -\nabla^b(\nabla_a V_b - \nabla_b V_a) + \nabla_a(\nabla^b V_b)$$

This can be further expanded as:

$$(\Delta_H V)_a = (\Delta_B V)_a + R_{ab}V^b = g^{bc}\nabla_b\nabla_c V_a + R_{ab}V^b$$

The first term represents a generalized "curl of the curl" and the second term represents a generalized "gradient of the divergence."

## In Local Coordinates

In local coordinates, the Hodge Laplacian applied to a vector field $V^a$ yields:

$$\begin{align}
(\Delta_H V)^a &= \frac{1}{\sqrt{|g|}}\partial_i\left(\sqrt{|g|}g^{ij}\partial_j V^a\right) + g^{ij}\Gamma^a_{jk}\partial_i V^k - g^{ij}\Gamma^k_{ij}\partial_k V^a \\
&+ g^{ij}(\partial_i\Gamma^a_{jk})V^k + g^{ij}\Gamma^a_{ik}\Gamma^k_{jl}V^l - g^{ij}\Gamma^k_{ij}\Gamma^a_{kl}V^l \\
&+ R^a_b V^b
\end{align}$$

## Key Properties and Differences from Scalar Laplacian

1. **Curvature Coupling**: Unlike the scalar Laplacian, the Hodge Laplacian of a vector field explicitly involves the Ricci curvature tensor.

2. **Coordinate Expression**: The expression is significantly more complex than the scalar Laplacian due to the tensor nature of vector fields.

3. **Physical Interpretation**: While the scalar Laplacian measures the local average deviation from the field value at a point, the vector Hodge Laplacian combines aspects of both divergence and curl operations.

4. **Harmonic Fields**: A vector field $V$ is harmonic (satisfying $\Delta_H V = 0$) if and only if it is both divergence-free and curl-free in flat space. In curved space, the Ricci curvature introduces additional constraints.

5. **Geometric Content**: The additional Ricci curvature term in the Hodge Laplacian reveals how curvature affects the propagation of vector fields.

## Connection to Vector Calculus in Flat Space

In flat Euclidean space with Cartesian coordinates, the Hodge Laplacian reduces to:

$$(\Delta_H V)^i = \partial_j\partial^j V^i = \nabla^2 V^i$$

which is the familiar componentwise application of the scalar Laplacian to each component of the vector field.

This generalized Laplacian is essential in geometric analysis, electromagnetic theory, and various field theories on curved manifolds.