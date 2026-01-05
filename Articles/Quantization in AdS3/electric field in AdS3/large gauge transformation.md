we first write down the action

$$\begin{align}
S & =-\frac{1}{4}\int \mathrm{d}^{3}x\sqrt{ -g }F_{\mu \nu}F^{\mu \nu}
\end{align}$$

take a variation

$$\begin{align}
\delta S & =\int \mathrm{d}^{3}x\sqrt{ -g }E^{\nu}\delta A_{\nu}+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}} \\
E^{\nu} & =\nabla _{\mu}F^{\mu \nu} \\
\theta & =\int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\delta A_{\nu}
\end{align}$$

the symplectic form is

$$\begin{align}
\omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\delta F^{\mu \nu}\wedge \delta A_{\nu}
\end{align}$$

consider the gauge transformation

$$\begin{align}
X_{\Lambda} & =\int _{M}\mathrm{d}^{3}x\nabla _{\mu}\Lambda \frac{\delta}{\delta A_{\mu}}
\end{align}$$

acting on the variation of the action, we have

$$\begin{align}
X_{\Lambda}\cdot \delta S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }F^{\mu \nu}\nabla _{\mu}\nabla _{\nu}\Lambda \\
 & =0
\end{align}$$

thus the corresponding Noether charge gives

$$\begin{align}
Q_{\Lambda} & =X_{\Lambda}\cdot \theta \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\nabla _{\nu}\Lambda
\end{align}$$

the Poisson brackets between two gauge transformations is

$$\begin{align}
\left\{Q_{\Lambda_{1}},Q_{\Lambda _{2}}\right\} & =X_{\Lambda _{1}}\cdot X_{\Lambda _{2}}\cdot \omega \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}(X_{\Lambda _{2}}\cdot \delta F^{\mu \nu})\nabla _{\nu}\Lambda _{1} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}(\nabla ^{\mu}\nabla ^{\nu}\Lambda _{2}-\nabla ^{\nu}\nabla ^{\mu}\Lambda _{2})\nabla _{\nu}\Lambda _{1} \\
 & =0
\end{align}$$

thus there is no central extension in the algebra of gauge transformations.

---

impose boundary action

$$\begin{align}
S & =-\frac{1}{4}\int \mathrm{d}^{3}x\sqrt{ -g }F_{\mu \nu}F^{\mu \nu}-\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma }n_{\mu}F^{\mu \nu}A_{\nu}
\end{align}$$

here $\displaystyle{\Gamma}$ is the spatial boundary of $\displaystyle{M}$, and $\displaystyle{n_{\mu}}$ is the outward pointing normal vector on $\displaystyle{\Gamma}$.

$$\begin{align}
g_{\mu \nu}n^{\mu}n^{\nu}=1\implies n^{\mu} & =\left(0,\sqrt{1+r^{2}},0\right)
\end{align}$$

$\displaystyle{\gamma}$ is the induced metric on $\displaystyle{\Gamma}$

$$\begin{align}
\mathrm{d}s_{\Gamma}^{2} & =-\left(1+r^{2}\right)\mathrm{d}t^{2}+r^{2}\mathrm{d}\phi^{2}, &  r\to \infty \\
\sqrt{ -\gamma } & =r\sqrt{ 1+r^{2} }
\end{align}$$

the corner $\displaystyle{\partial \Sigma}$ is the intersection of $\displaystyle{\Sigma}$ and $\displaystyle{\Gamma}$, which is exactly the spatial boundary of $\displaystyle{\Sigma}$.

$$\begin{align}
\mathrm{d}s^{2}_{\partial \Sigma} & =r^{2}\mathrm{d}\phi ^{2},r\to \infty
\end{align}$$

the variation of the action gives

$$\begin{align}
\delta S & =\int \mathrm{d}^{3}x\sqrt{ -g }\nabla _{\mu}F^{\mu \nu}\delta A_{\nu}+\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\delta A_{\nu} \\
 & +\dots
\end{align}$$

we focus on the boundary term on $\displaystyle{\Gamma}$

$$\begin{align}
\theta|_{\Gamma}+\delta S_{\Gamma} & =\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma }n_{\mu}F^{\mu \nu}\delta A_{\nu}-\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma }n_{\mu}(F^{\mu \nu}\delta A_{\nu}+A_{\nu}\nabla ^{\nu}\delta A^{\mu})
\end{align}$$

$$\begin{align}
I_{\Gamma} & =-\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma }n_{\mu}(\nabla ^{\mu}\delta A^{\nu}-\nabla ^{\nu}\delta A^{\mu})A_{\nu} \\
 & =-\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma } (n_{\mu}A_{\nu}\nabla ^{\mu}\delta A^{\nu}-n_{\mu}A_{\nu}\nabla ^{\nu}\delta A^{\mu})
\end{align}$$

$$\begin{align}
-n_{\mu}A_{\nu}\nabla ^{\nu}\delta A^{\mu} & =-n_{\mu}\nabla _{\nu}(A^{\nu}\delta A^{\mu})
\end{align}$$

We can decompose the covariant derivative into normal and tangential parts. The second term contains a tangential derivative which can be integrated by parts.

$$\begin{align}
-n_{\mu}A_{\nu}\nabla ^{\nu}\delta A^{\mu} & =-A_{\nu}\nabla ^{\nu}(n_{\mu}\delta A^{\mu})+A_{\nu}\delta A^{\mu}\nabla ^{\nu}n_{\mu}
\end{align}$$

The first term is a total divergence on $\displaystyle{\Gamma}$ (since $\displaystyle{\nabla ^{\nu}}$ contracted with $\displaystyle{A_{\nu}}$ is a tangential derivative operator). Using Stokes' theorem:

$$\begin{align}
-\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma } A_{\nu}\nabla ^{\nu}(n_{\mu}\delta A^{\mu}) & =\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma } (\nabla ^{\nu}A_{\nu})(n_{\mu}\delta A^{\mu})-\left[ \oint _{\partial \Sigma}\mathrm{d}\phi \sqrt{ \sigma _{\partial \Sigma} } u_{\nu}A^{\nu}(n_{\mu}\delta A^{\mu}) \right]^{t_{f}}_{t_{i}}
\end{align}$$

where $\displaystyle{u^{\mu}}$ is the unit normal to $\displaystyle{\Sigma}$ within $\displaystyle{\Gamma}$. This gives a corner contribution to the symplectic potential:

$$\begin{align}
\theta _{\partial \Sigma} & =-\oint _{\partial \Sigma}\mathrm{d}\phi \sqrt{ \sigma _{\partial \Sigma} } (u\cdot A)(n\cdot \delta A)
\end{align}$$

For the first term $\displaystyle{n_{\mu}A_{\nu}\nabla ^{\mu}\delta A^{\nu}}$, it involves the normal derivative $\displaystyle{\nabla _{n}\delta A}$.

### Physical Interpretation of $\nabla_n \delta A \approx 0$

In the radial gauge ($A_r = 0$), the normal derivative corresponds to the radial electric field:
$$ n_\mu F^{\mu\nu} \approx \partial_r A^\nu $$
The boundary term we added, $\int n_\mu F^{\mu\nu} A_\nu$, implies a variational principle where the "momentum" $n_\mu F^{\mu\nu}$ is fixed at the boundary (Neumann boundary condition). Fixing the boundary electric field means its variation vanishes:
$$ \delta (n_\mu F^{\mu\nu}) = 0 \implies \delta (\partial_r A^\nu) = 0 \implies \nabla_n \delta A^\nu = 0 $$
Thus, the first term vanishes due to the boundary condition that defines the theory. The non-trivial contribution comes entirely from the corner term derived above, which captures the topological winding number.

