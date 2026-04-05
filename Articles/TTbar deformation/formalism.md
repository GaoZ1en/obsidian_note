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

finnaly consider the algebra between Noether charges. suppose we have two symmetries generated by $\displaystyle{X_{\xi _{\lambda}}}$ and $\displaystyle{X_{\zeta _{\lambda}}}$, then the Poisson bracket between the corresponding Noether charges is

$$\begin{align}
\left\{H_{\xi _{\lambda}},X_{\zeta _{\lambda}}\right\} & \approx X_{\xi _{\lambda}}\cdot X_{\zeta _{\lambda}}\cdot \Omega _{\lambda} \\
 & =H_{[\xi _{\lambda},\zeta _{\lambda}]}+K(\xi _{\lambda},\zeta _{\lambda})
\end{align}$$

taking $\displaystyle{\partial _{\lambda}}$ on both sides, we have

$$\begin{align}
\left\{\partial _{\lambda}H_{\xi _{\lambda}},H_{\zeta _{\lambda}}\right\}+\left\{H_{\xi _{\lambda}},\partial _{\lambda}H_{\zeta _{\lambda}}\right\} \approx\partial _{\lambda}H_{[\xi _{\lambda},\zeta _{\lambda}]}+\partial _{\lambda}K(\xi _{\lambda},\zeta _{\lambda})
\end{align}$$

which means the algebra of Noether charges is also deformed along the flow of $\lambda$.

