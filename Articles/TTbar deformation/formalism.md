consider an action $\displaystyle{S_{\lambda}[\phi,g_{\mu \nu}]}$ that depends on a deformation parameter $\lambda$ and is a functional of the fields $\phi$ (for simplicity, we only consider a single scalar field $\displaystyle{\phi}$) and the background metric $g_{\mu \nu}$ (but there is no dynamics for the metric). The flow equation for the $T\bar{T}$ deformation is given by:

$$\begin{align}
\partial _{\lambda}S_{\lambda} &= \int \mathrm{d}^{2} x \sqrt{-g} \det(T_{\mu\nu}^{(\lambda)}) \\
 & =\frac{1}{2}\int \mathrm{d}^{2}x\sqrt{ -g }\varepsilon ^{\alpha \beta}\varepsilon ^{\gamma \delta}T^{(\lambda)}_{\alpha \gamma}T^{(\lambda)}_{\beta \delta}
\end{align}$$

where $\displaystyle{T_{\mu \nu}^{(\lambda)}=\frac{-2}{\sqrt{ -g }} \frac{\delta S_{\lambda}}{\delta g^{\mu \nu}}}$ is the energy-momentum tensor of the theory at deformation parameter $\lambda$.

take a variation of the action with respect to $\displaystyle{\phi}$ and $\displaystyle{g_{\mu \nu}}$, we have

$$\begin{align}
\delta S_{\lambda} & =\int _{M} \mathrm{d}^{2}x\sqrt{ -g }E_{\lambda}[\phi]\delta \phi +\int _{\Sigma _{f}-\Sigma _{i}} \mathrm{d}x\sqrt{ \sigma }\tau _{\mu}\theta _{\lambda} ^{\mu}[\phi,\delta \phi]
\end{align}$$

where $\displaystyle{E_{\lambda}[\phi]=0}$ gives the equations of motion, $\displaystyle{\Sigma_{i},\Sigma_{f}}$ are the initial and final Cauchy surfaces, $\displaystyle{\tau_{\mu}}$ is the unit normal vector to these surfaces, and $\displaystyle{\theta _{\lambda} ^{\mu}[\phi,\delta \phi]}$ is the symplectic potential current density. take a variation of the symplectic potential gives the symplectic form

$$\begin{align}
\Omega _{\lambda} & =\int _{\Sigma}\omega _{\lambda} \\
 & =\int _{\Sigma}\mathrm{d}x\sqrt{ \sigma }\tau _{\mu}\delta \theta _{\lambda}^{\mu}[\phi,\delta \phi]
\end{align}$$

# flow of the symplectic form

notice that the variation $\displaystyle{\delta}$ commutes with the flow $\displaystyle{\partial_\lambda}$, we can take a derivative of the variation of the action with respect to $\lambda$

$$\begin{align}
\delta \partial _{\lambda}S_{\lambda} & =\int _{M} \mathrm{d}^{2}x\sqrt{ -g }\partial _{\lambda}E_{\lambda}[\phi]\delta \phi +\int _{\Sigma _{f}-\Sigma _{i}} \mathrm{d}x\sqrt{ \sigma }\tau _{\mu}\partial _{\lambda}\theta _{\lambda} ^{\mu}[\phi,\delta \phi] \\
\implies \frac{1}{2}\delta \left( \int \mathrm{d}^{2}x\sqrt{ -g } \varepsilon ^{\alpha \beta}\varepsilon ^{\gamma \delta}T^{(\lambda)}_{\alpha \gamma}T^{(\lambda)}_{\beta \delta} \right) & \approx \int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}x\sqrt{ \sigma }\tau _{\mu}\partial _{\lambda}\theta _{\lambda}^{\mu}[\phi,\delta \phi] \\
\implies \partial _{\lambda}\Omega _{\lambda}|_{\Sigma _{f}} & \approx \partial _{\lambda}\Omega _{\lambda}|_{\Sigma _{i}} \\
\implies \mathrm{d}(\partial _{\lambda}\omega _{\lambda}) & \approx 0
\end{align}$$

here $\displaystyle{\approx}$ means the equality holds on-shell. then by Poincaré's lemma, we can write

$$\begin{align}
\partial _{\lambda}\omega _{\lambda}\approx \mathrm{d}\alpha _{\lambda}
\end{align}$$

then

$$\begin{align}
\partial _{\lambda}\Omega _{\lambda} & =\int _{\Sigma}\partial _{\lambda}\omega _{\lambda} \\
 & =\int _{\Sigma}\mathrm{d}\alpha _{\lambda} \\
 & =\int _{\partial \Sigma}\alpha _{\lambda}
\end{align}$$

by imposing appropriate boundary conditions or adding suitable boundary terms, we can make $\displaystyle{\int _{\partial \Sigma}\alpha _{\lambda}=0}$, which means the symplectic form is invariant along the flow of $\lambda$, i.e., $\partial_\lambda \Omega_\lambda = 0$. 

# flow of symmetries, conserved charges and their algebra

suppose we have a symmetry, which can be characterized by a vector of configuration space

$$\begin{align}
X_{\xi _{\lambda}} & = \int \mathrm{d}^{2}x\sqrt{ -g }\delta _{\xi _{\lambda}}\phi \frac{\delta}{\delta \phi} 
\end{align}$$

act on the action, 

$$\begin{align}
X_{\xi _{\lambda}}\cdot \delta S_{\lambda} & =\alpha _{\xi _{\lambda}}|_{\Sigma _{f}-\Sigma _{i}}
\end{align}$$

then the corresponding Nother charge can be defined as

$$\begin{align}
H_{\xi _{\lambda}} & =X_{\xi _{\lambda}}\cdot \theta _{\lambda}-\alpha _{\xi _{\lambda}}
\end{align}$$

which can be proved to satisfy

$$\begin{align}
H_{\xi _{\lambda}}|_{\Sigma _{f}} & \approx H_{\xi _{\lambda}}|_{\Sigma _{i}} \\
X_{\xi _{\lambda}}\cdot \Omega _{\lambda} & \approx -\delta H_{\xi _{\lambda}}
\end{align}$$

since the Noether charge is conserved along the time flow, we can perform the same analysis as symplectic form and show that $\displaystyle{\partial _{\lambda}H_{\xi _{\lambda}}|_{\Sigma _{f}}\approx \partial _{\lambda}H_{\xi _{\lambda}}|_{\Sigma _{i}}}$, which means the Noether charge is also invariant along the flow of $\lambda$.

now we consider the deformation of these quantities. taking $\displaystyle{\partial _{\lambda}}$ on both sides of $\displaystyle{X_{\xi _{\lambda}}\cdot \Omega _{\lambda}\approx -\delta H_{\lambda}}$, we have

$$\begin{align}
\partial _{\lambda}X_{\xi _{\lambda}}\cdot \Omega _{\lambda} & \approx-\delta \partial _{\lambda}H_{\lambda}
\end{align}$$

we take $\displaystyle{\partial _{\lambda}}$ on both sides of $\displaystyle{X_{\xi _{\lambda}}\cdot \delta S_{\lambda}=\alpha _{\xi _{\lambda}}|_{\Sigma _{f}-\Sigma _{i}}}$, we have

$$\begin{align}
\partial _{\lambda}X_{\xi _{\lambda}}\cdot \delta S_{\lambda}+X_{\xi _{\lambda}}\cdot \delta \partial _{\lambda}S_{\lambda} & =\partial _{\lambda}\alpha _{\xi _{\lambda}}|_{\Sigma _{f}-\Sigma _{i}} \\
\implies \partial _{\lambda}X_{\xi _{\lambda}}\cdot \left(\int \mathrm{d}^{2}x\sqrt{ -g }E_{\lambda}\delta \phi+\theta _{\lambda}|_{\Sigma _{f}-\Sigma _{i}}\right)+X_{\xi _{\lambda}}\cdot \delta\left(\frac{1}{2}\int \mathrm{d}^{2}x\sqrt{ -g }\varepsilon ^{\alpha \beta}\varepsilon ^{\gamma \delta}T^{(\lambda)}_{\alpha \gamma}T^{(\lambda)}_{\beta \delta}\right) & =\partial _{\lambda}\alpha _{\xi _{\lambda}}|_{\Sigma _{f}-\Sigma _{i}} \\
\implies X_{\xi _{\lambda}}\cdot \delta\left(\frac{1}{2}\int \mathrm{d}^{2}x\sqrt{ -g }\varepsilon ^{\alpha \beta}\varepsilon ^{\gamma \delta}T^{(\lambda)}_{\alpha \gamma}T^{(\lambda)}_{\beta \delta}\right) & \approx\partial _{\lambda}\alpha _{\xi _{\lambda}}|_{\Sigma _{f}-\Sigma _{i}}-\partial _{\lambda}X_{\xi _{\lambda}}\cdot \theta _{\lambda}|_{\Sigma _{f}-\Sigma _{i}} \\
\implies \frac{1}{2}\int _{\Sigma _{f}-\Sigma _{i}} \mathrm{d}x\sqrt{ \sigma }\tau _{\mu}\xi _{\lambda}^{\mu}\varepsilon ^{\alpha \beta}\varepsilon ^{\gamma \delta}T_{\alpha \gamma}^{(\lambda)}T^{(\lambda)}_{\beta \delta} & \approx \partial _{\lambda}\alpha _{\xi _{\lambda}}|_{\Sigma _{f}-\Sigma _{i}}-\partial _{\lambda}X_{\xi _{\lambda}}\cdot \theta _{\lambda}|_{\Sigma _{f}-\Sigma _{i}} \\
 & =-\partial _{\lambda}H_{\xi _{\lambda}}|_{\Sigma _{f}-\Sigma _{i}}+X_{\xi _{\lambda}}\cdot \partial _{\lambda}\theta _{\lambda}|_{\Sigma _{f}-\Sigma _{i}}
\end{align}$$

then we arrive at the flow of the Noether charge:

$$\begin{align}
\partial _{\lambda}H_{\xi _{\lambda}} \approx X_{\xi _{\lambda}}\cdot \partial _{\lambda}\theta _{\lambda}-\frac{1}{2}\int _{\Sigma}\mathrm{d}x\sqrt{ \sigma }\tau _{\mu}\xi _{\lambda}^{\mu}\varepsilon ^{\alpha \beta}\varepsilon ^{\gamma \delta}T_{\alpha \gamma}^{(\lambda)}T_{\beta \delta}^{(\lambda)}
\end{align}$$

for example, if $\displaystyle{H_{\xi _{\lambda}}}$ is the Noether charge corresponding to the diffeomorphism generated by vector $\displaystyle{\xi _{\lambda}}$, then we have

$$\begin{align}
\int _{\Sigma}\mathrm{d}x\sqrt{ \sigma }\tau ^{\mu}\partial _{\lambda}\xi _{\lambda}^{\nu}T_{\mu \nu}^{(\lambda)}+\int _{\Sigma}\mathrm{d}x\sqrt{ \sigma }\tau ^{\mu}\xi _{\lambda}^{\nu}\partial _{\lambda}T_{\mu \nu}^{(\lambda)} & \approx X_{\xi _{\lambda}}\cdot \partial _{\lambda}\theta _{\lambda}-\frac{1}{2}\int _{\Sigma}\mathrm{d}x\sqrt{ \sigma }\tau _{\mu}\xi _{\lambda}^{\mu}\varepsilon ^{\alpha \beta}\varepsilon ^{\gamma \delta}T_{\alpha \gamma}^{(\lambda)}T_{\beta \delta}^{(\lambda)}
\end{align}$$

This equation is highly nontrivial and encapsulates several core physical features of $T\bar{T}$ deformed symmetries. To physically interpret and further utilize this relation, we can proceed along the following directions:

### 1. State-Dependent Diffeomorphisms (Field-dependent $\xi_\lambda$)
The emergence of $\partial_\lambda \xi^\nu_\lambda$ on the left-hand side reflects a hallmark property of the $T\bar{T}$ deformation: the symmetry generators must acquire a dependence on the dynamical fields (specifically, the stress tensor) as the deformation parameter $\lambda$ flows. To maintain the conservation of charges or specific boundary conditions, the vector field $\xi_\lambda$ is forced to flow non-trivially to absorb the $\mathcal{O}(T^2)$ terms on the right-hand side. This naturally gives rise to state-dependent coordinate transformations (e.g., $dx^\mu \to dx^\mu - \lambda \epsilon^{\mu\alpha}\epsilon^{\nu\beta} T_{\alpha\beta} dx_\nu$).

### 2. Operator Flow and Symplectic Structure
The partial derivative $\partial_\lambda T_{\mu\nu}^{(\lambda)}$ dictates how the energy-momentum tensor operator itself evolves under the flow (which is closely related to the inviscid Burgers' equation in 2D). On the right-hand side, $X_{\xi_\lambda} \cdot \partial_\lambda \theta_\lambda$ captures how the flow of the symplectic potential couples to the symmetry. Evaluating this term explicitly often requires specifying the boundary conditions of the metric and how the boundary metric flows with $\lambda$.

### 3. Non-linear Deformation of the Poisson Algebra
Ultimately, the deformation of the individual charges $H_{\xi_\lambda}$ paves the way for understanding the deformed Poisson algebra:
$$ \{H_{\xi_\lambda}, H_{\zeta_\lambda}\} = - X_{\xi_\lambda} \cdot \delta H_{\zeta_\lambda} $$
Applying $\partial_\lambda$ to the algebra directly utilizes the charge flow equation. Because the flow of the charge explicitly contains quadratic terms in the stress tensor ($\det T$), the deformation of the symmetry algebra will generally be non-linear. The commutator of two symmetries will no longer simply yield a linear combination of charges, but rather non-linear polynomials of the charges, leading to modified structures like the deformed Virasoro or BMS algebras.

