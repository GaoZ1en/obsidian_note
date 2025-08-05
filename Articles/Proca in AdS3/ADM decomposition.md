$$\tag{.}
\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}
$$

compare with the standard form $\displaystyle{\mathrm{d}s^{2}=-N^{2}\mathrm{d}t^{2}+h_{ij}(\mathrm{d}x^{i}+N^{i}\mathrm{d}t)(\mathrm{d}x^{j}+N^{j}\mathrm{d}t)}$, we have

$$\tag{.}
\begin{align}
N & =\sqrt{ 1+r^{2} } \\
N^{i} & =0 \\
h_{ij} & =\mathrm{diag}\left(  \frac{1}{1+r^{2}},r^{2} \right)
\end{align}
$$

then

$$\tag{.}
\begin{align}

\end{align}
$$



## ADM Decomposition of Gauge Field Action

### Field Decomposition
Decompose the gauge field into temporal and spatial components:
$$A_\mu = (A_0, A_i)$$

where $A_0$ is the **electric potential** and $A_i$ are the **spatial gauge fields**.

### Field Strength Decomposition
The electromagnetic field tensor splits as:
$$F_{0i} = \partial_0 A_i - \partial_i A_0 = -E_i$$ (electric field)
$$F_{ij} = \partial_i A_j - \partial_j A_i = B_{ij}$$ (magnetic field in 3D)

### Action Decomposition

The field strength invariant becomes:
$$F_{\mu\nu}F^{\mu\nu} = -2E_i E^i + B_{ij}B^{ij}$$

where:
- $$E^i = h^{ij}E_j = h^{ij}(\partial_j A_0 - \partial_0 A_j)$$
- $$B^{ij} = h^{ik}h^{jl}B_{kl}$$

The **ADM-decomposed action** becomes:
$$S = \int dt \int d^2x \sqrt{h} N \left[\frac{1}{2}E_i E^i - \frac{1}{4}B_{ij}B^{ij} - \frac{1}{2}\mu^2\left(-N^{-2}A_0^2 + h^{ij}A_i A_j\right)\right]$$

## ADM Form of Equations of Motion

### Gauss Constraint
From $\nabla_\mu F^{\mu 0} = \mu^2 A^0$:
$$\nabla_i E^i = \mu^2 N^{-1} A_0$$

In explicit form:
$$\frac{1}{\sqrt{h}}\partial_i(\sqrt{h}E^i) = \frac{\mu^2 A_0}{\sqrt{1+r^2}}$$

### Spatial Evolution Equations
From $\nabla_\mu F^{\mu i} = \mu^2 A^i$:
$$\partial_0 E^i - N^j \partial_j E^i - E^j \partial_j N^i + \frac{1}{\sqrt{h}}\partial_j(\sqrt{h}N B^{ji}) = \mu^2 h^{ij}A_j$$

### Temporal Evolution
The evolution of $A_i$ is governed by:
$$\partial_0 A_i = -N(\partial_i A_0 + E_i) + N^j F_{ji}$$

For our static case with $N^i = 0$:
$$\partial_0 A_i = -\sqrt{1+r^2}(\partial_i A_0 + E_i)$$

## Physical Interpretation

### Hamiltonian Structure
The ADM decomposition reveals the **canonical structure**:
- **Canonical coordinates**: $(A_i, E^i)$
- **Primary constraint**: Gauss law $\nabla_i E^i = \mu^2 A_0/N$
- **Hamiltonian density**: 
$$\mathcal{H} = \frac{1}{2}E_i E^i + \frac{1}{4}B_{ij}B^{ij} + \frac{1}{2}\mu^2 h^{ij}A_i A_j + A_0(\nabla_i E^i - \mu^2 A_0/N)$$

