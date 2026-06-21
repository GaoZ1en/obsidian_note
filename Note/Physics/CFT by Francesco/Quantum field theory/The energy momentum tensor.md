## the Belinfante tensor

in general, the canonical energy-momentum tensor $\displaystyle{T^{\mu \nu}_{c}}$ is not symmetric. however, we have the freedom to modify it by

$$
\tag{1.5.1}
\begin{align}
T^{\mu \nu}_{B} & =T^{\mu \nu}_{c}+\partial_{\rho}B^{\rho \mu \nu} \\
B^{\rho \mu \nu} & =-B^{\mu \rho \nu}
\end{align}
$$

this addition does not affect the classical conservation law nor the Ward identity. if we succeed in finding $\displaystyle{B^{\rho \mu \nu}}$ such that the new $\displaystyle{T^{\mu \nu}_{B}}$ is a symmetric, then the latter is called ***Belinfante energy-momentum tensor***. in order to accomplish the argument, consider the conserved currents associated with Lorentz transformation, the associated canonical conserved current is

$$
\tag{1.5.2}
\begin{align}
j^{\mu \nu \rho} & =T^{\mu \nu}_{c}x^{\rho}-T^{\mu \rho}_{c}x^{\nu}+\frac{1}{2}i \frac{\partial \mathcal{L}}{\partial(\partial_{\mu}\Phi)}S^{\nu \rho}\Phi
\end{align}
$$

we look for $\displaystyle{B^{\rho \mu \nu}}$ such that this current may be expressed as

$$
\tag{1.5.3}
\begin{align}
j^{\mu \nu \rho} & =T^{\mu \nu}_{B}x^{\rho}-T^{\mu \rho}_{B}x^{\nu}
\end{align}
$$

which ensures that $\displaystyle{T^{\mu \nu}_{B}=T^{\nu \mu}_{B}}$. an explicit expression for $\displaystyle{B^{\rho \mu \nu}}$ is

$$
\tag{1.5.4}
\begin{align}
B^{\mu \rho \nu} & =\frac{i}{4}\left\{\frac{\partial \mathcal{L}}{\partial(\partial_{\mu}\Phi)}S^{\nu \rho}\Phi+\frac{\partial \mathcal{L}}{\partial(\partial_{\rho}\Phi)}S^{\mu \nu}\Phi+\frac{\partial \mathcal{L}}{\partial(\partial_{\nu}\Phi)}S^{\mu \rho}\Phi\right\}
\end{align}
$$

## alternative definition of the energy-momentum tensor

in classical theory, we have the well-known one

$$
\tag{1.5.5}
\begin{align}
\delta S & =-\frac{1}{2}\int\mathrm{d}^{d}x\sqrt{ -g }T^{\mu \nu}\delta g_{\mu \nu} \\
T^{\mu \nu} & =-\frac{2}{\sqrt{ -g }} \frac{\delta S}{\delta g_{\mu \nu}}
\end{align}
$$

in quantum theory (1.5.5) takes the following meaning. consider the vacuum functional $\displaystyle{Z[g]}$ with respect to the metric

$$
\tag{1.5.6}
\begin{align}
Z[g] & =\int \mathcal{D}\Phi_{g}e^{-S[\Phi,g]} \\
 & =e^{-W[g]}
\end{align}
$$

where we have defined the connected vacuum functional $\displaystyle{W[g]}$. under an infinitesimal variation $\displaystyle{\delta g}$ of the metric, we have

$$
\tag{1.5.7}
\begin{align}
Z[g+\delta g] & =\int \mathcal{D}\Phi_{g+\delta g}\exp(-S[\Phi,g+\delta g]) \\
 & =\int \mathcal{D}\Phi_{g}\left(1+\frac{1}{2}\mathrm{d}^{d}x\sqrt{ -g }\delta g_{\mu \nu}T^{\mu \nu}\right)\exp(-S[\Phi,g]) \\
 & =Z[g] +\frac{1}{2}Z[g]\int \mathrm{d}^{d}x\sqrt{ -g }\delta g_{\mu \nu}\braket{ T^{\mu \nu} }
\end{align}
$$

we have assumed that the energy-momentum tensor takes care of the variation of the action and of the integration measure. and this is the essential difference between the classical and quantum definitions of the energy-momentum tensor(?). the variation of the connected functional $\displaystyle{W[g]}$ is then

$$
\tag{1.5.8}
\begin{align}
\delta W[g] & =-\frac{\delta Z[g]}{Z[g]}=-\frac{1}{2}\int \mathrm{d}^{d}x\sqrt{ -g }\delta g_{\mu \nu}\braket{ T^{\mu \nu} } \\
\braket{ T^{\mu \nu}(x) }  & =-\frac{2}{\sqrt{ -g }} \frac{\delta W[g]}{\delta g_{\mu \nu}(x)}
\end{align}
$$
