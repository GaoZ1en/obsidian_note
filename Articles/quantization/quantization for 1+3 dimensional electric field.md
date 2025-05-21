$$\tag{0.1}
\begin{align}
S & =-\frac{1}{4}\int _{M}\mathrm{d}^{4}xF_{\mu \nu}F^{\mu \nu}
\end{align}
$$

---
we first do canonical quantization. impose temporal gauge $\displaystyle{A^{0}}$ and Column gauge $\displaystyle{\vec{\nabla}\cdot \vec{A}=0}$. then the action becomes

$$\tag{1.1}
\begin{align}
S & =\int \mathrm{d}^{4}x\left(\frac{1}{2}(\dot{A}^{i})^{2}-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}\right)
\end{align}
$$


### Step 2: Identify Canonical Momenta

The canonical momenta conjugate to $A_i$ are:

$$\Pi_i(\mathbf{x},t) = \frac{\partial \mathcal{L}}{\partial(\partial_t A_i)} = \partial_t A_i = -E_i$$

This physically identifies the electric field as the momentum conjugate to the vector potential.

### Step 3: The Hamiltonian

The Hamiltonian density becomes:

$$\mathcal{H} = \frac{1}{2}\mathbf{\Pi}^2 + \frac{1}{2}(\nabla \times \mathbf{A})^2 = \frac{1}{2}\mathbf{E}^2 + \frac{1}{2}\mathbf{B}^2$$

### Step 4: Impose Transversality Constraint

The Coulomb gauge condition $\nabla \cdot \mathbf{A} = 0$ restricts us to the transverse components of $\mathbf{A}$. We can decompose:

$$\mathbf{A}(\mathbf{x},t) = \sum_{\lambda=1,2} \int \frac{d^3k}{(2\pi)^3} \frac{1}{\sqrt{2\omega_k}} \left[ a_{\lambda}(\mathbf{k},t) \mathbf{\epsilon}_{\lambda}(\mathbf{k}) e^{i\mathbf{k}\cdot\mathbf{x}} + a_{\lambda}^*(\mathbf{k},t) \mathbf{\epsilon}_{\lambda}^*(\mathbf{k}) e^{-i\mathbf{k}\cdot\mathbf{x}} \right]$$

where:
- $\mathbf{\epsilon}_{\lambda}(\mathbf{k})$ are polarization vectors with $\mathbf{k} \cdot \mathbf{\epsilon}_{\lambda}(\mathbf{k}) = 0$
- $\lambda = 1,2$ indexes the two physical polarization states
- $\omega_k = |\mathbf{k}|$ for massless photons

### Step 5: Canonical Quantization

To quantize, we promote $\mathbf{A}$ and $\mathbf{\Pi}$ to operators and impose commutation relations. However, because of the Coulomb gauge constraint, we must use the transverse delta function:

$$[A_i(\mathbf{x},t), \Pi_j(\mathbf{y},t)] = i\hbar\left(\delta_{ij} - \frac{\partial_i \partial_j}{\nabla^2}\right)\delta^{(3)}(\mathbf{x}-\mathbf{y})$$

In terms of mode operators, this is equivalent to:

$$[a_{\lambda}(\mathbf{k}), a_{\lambda'}^{\dagger}(\mathbf{k}')] = (2\pi)^3 \delta_{\lambda\lambda'} \delta^{(3)}(\mathbf{k}-\mathbf{k}')$$
$$[a_{\lambda}(\mathbf{k}), a_{\lambda'}(\mathbf{k}')] = [a_{\lambda}^{\dagger}(\mathbf{k}), a_{\lambda'}^{\dagger}(\mathbf{k}')] = 0$$

### Step 6: Field Evolution

The equations of motion in the Heisenberg picture give:

$$\frac{d a_{\lambda}(\mathbf{k},t)}{dt} = -i\omega_k a_{\lambda}(\mathbf{k},t)$$

with solution:

$$a_{\lambda}(\mathbf{k},t) = a_{\lambda}(\mathbf{k},0)e^{-i\omega_k t}$$

### Step 7: Hamiltonian in Terms of Creation/Annihilation Operators

The Hamiltonian becomes:

$$H = \int d^3k \sum_{\lambda=1,2} \omega_k \left(a_{\lambda}^{\dagger}(\mathbf{k})a_{\lambda}(\mathbf{k}) + \frac{1}{2}[a_{\lambda}(\mathbf{k}),a_{\lambda}^{\dagger}(\mathbf{k})]\right)$$

After normal ordering:

$$H = \int d^3k \sum_{\lambda=1,2} \omega_k a_{\lambda}^{\dagger}(\mathbf{k})a_{\lambda}(\mathbf{k}) + E_0$$

where $E_0$ is the (formally infinite) zero-point energy.

## Physical Interpretation

This formalism describes photons as quanta of the electromagnetic field with:
- Two transverse polarization states (corresponding to $\lambda=1,2$)
- Momentum $\hbar\mathbf{k}$ and energy $\hbar\omega_k = \hbar|\mathbf{k}|c$ (restoring $\hbar$ and $c$)
- Creation/annihilation operators that add/remove photons from the quantum state

The gauge fixing procedure has eliminated unphysical degrees of freedom, leaving only the two physical polarization states of the photon.