# Research on de Donder Gauge in Linearized Gravity

## 1. Definition and Gauge Transformation
In linearized gravity, we consider perturbations $h_{\mu\nu}$ around a background metric $g_{\mu\nu}$. The linearized Einstein equations are invariant under the gauge transformation:
$$ h_{\mu\nu} \to h'_{\mu\nu} = h_{\mu\nu} + \nabla_\mu \xi_\nu + \nabla_\nu \xi_\mu $$
where $\xi^\mu$ is an arbitrary vector field.

The **de Donder gauge** (also known as harmonic gauge or Lorenz gauge) is defined by the condition:
$$ \nabla^\mu \bar{h}'_{\mu\nu} = 0 $$
where $\bar{h}_{\mu\nu} = h_{\mu\nu} - \frac{1}{2}g_{\mu\nu}h$ is the trace-reversed perturbation. In terms of $h_{\mu\nu}$, this is:
$$ \nabla^\mu h'_{\mu\nu} - \frac{1}{2}\nabla_\nu h' = 0 $$

## 2. Validity in General Curved Backgrounds
To see if this gauge can be imposed, we substitute the gauge transformation into the condition:
$$ \nabla^\mu (h_{\mu\nu} + \nabla_\mu \xi_\nu + \nabla_\nu \xi_\mu - \frac{1}{2}g_{\mu\nu}(h + 2\nabla_\rho \xi^\rho)) - \frac{1}{2}\nabla_\nu (h + 2\nabla_\rho \xi^\rho) = 0 $$
This simplifies to a wave equation for the gauge parameter $\xi_\mu$:
$$ \square \xi_\nu + R_{\nu\rho}\xi^\rho = -(\nabla^\mu h_{\mu\nu} - \frac{1}{2}\nabla_\nu h) $$
where $\square = \nabla^\mu \nabla_\mu$.

### Findings:
*   **Local Existence:** Since the operator acting on $\xi_\nu$ is essentially the d'Alembertian (hyperbolic operator), solutions to this inhomogeneous wave equation are guaranteed to exist **locally** on any globally hyperbolic spacetime or within a causal diamond. Therefore, the de Donder gauge can always be imposed locally.
*   **Global Validity:** Globally, obstructions can arise from the topology of the manifold or the causal structure. However, for topologically trivial backgrounds like AdS3 (which is diffeomorphic to $\mathbb{R}^3$), there are generally no topological obstructions to the existence of $\xi^\mu$.

## 3. Specific Context of AdS3
In Anti-de Sitter space (AdS3), additional care must be taken regarding **boundary conditions**.

*   **Boundary Behavior:** Gauge transformations are usually required to vanish (or fall off sufficiently fast) at the asymptotic boundary to be considered "proper" gauge transformations. If $\xi^\mu$ does not decay fast enough, it generates a "large" gauge transformation which changes the physical state (acting as an asymptotic symmetry).
*   **Imposing the Gauge:** To impose the de Donder gauge, we need to solve the wave equation for $\xi^\mu$. We must ensure that a solution $\xi^\mu$ exists that respects the required boundary conditions for the metric perturbation $h_{\mu\nu}$. In AdS, one can typically find such a $\xi^\mu$ that falls off appropriately, preserving the standard Brown-Henneaux or other boundary conditions.

## 4. Relation to Trace $h=0$
Your notes derive $h=0$ as a consequence. Let's verify this.
In vacuum ($R_{\mu\nu} = \Lambda g_{\mu\nu}$), taking the trace of the linearized Einstein equation in de Donder gauge yields a wave equation for the trace $h$:
$$ (\square + \frac{2}{D-2} \Lambda) h = 0 $$
(Check specific coefficients for D=3).
For $h=0$ to be true, one usually needs to impose it as an initial condition or boundary condition. It is not an automatic consequence of the de Donder gauge alone, but it is a consistent truncation (often called the transverse-traceless gauge, which combines de Donder with $h=0$). In 3D gravity, there are no local propagating degrees of freedom (gravitons), so the analysis of "modes" is subtle and often reduces to boundary degrees of freedom.

## Summary
*   **Yes**, the de Donder gauge can generally be imposed in linearized gravity on curved backgrounds, including AdS3.
*   It requires solving a linear wave equation for the gauge vector $\xi^\mu$, which is always locally solvable.
*   In AdS3, one must ensure the gauge parameter $\xi^\mu$ respects the asymptotic boundary conditions.
