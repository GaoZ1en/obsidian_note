in this file, we will apply the trick in deriving the Noether theorem to a general theory. the aim is to argue that the Noether charge must be related to the stress tensor.

## $\displaystyle{X_{\xi}\cdot \delta S}$

$$\tag{1.1}
\begin{align}
S & =\int _{M}\mathbf{L}[\phi,g_{\mu \nu}]
\end{align}
$$

make a variation

$$\tag{1.2}
\begin{align}
\delta S & =\int _{M}\left( \mathbf{E}_{\phi}\delta \phi-\frac{1}{2}\mathbf{E}^{\mu \nu}\delta g_{\mu \nu} \right)+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
\mathbf{E}^{\mu \nu} & =T^{\mu \nu}\varepsilon
\end{align}
$$

consider the following diffeomorphism symmetry

$$\tag{1.3}
\begin{align}
X_{\xi} & =\int _{M}\mathrm{d}^{d}x\left(\xi ^{\mu}\nabla _{\mu}\phi  \frac{\delta}{\delta \phi}+(\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}) \frac{\delta}{\delta g_{\mu \nu}}\right)
\end{align}
$$

then we have

$$\tag{1.4}
\begin{align}
X_{\xi}\cdot \delta S & =\int _{M}\mathbf{E}_{\phi}(X_{\xi}\cdot \delta \phi)-\frac{1}{2}\int _{M}\mathbf{E}^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu})+X_{\xi}\cdot \theta|_{\Sigma _{f}-\Sigma _{i}} \\
 & =\int _{M}\mathbf{E}_{\phi}(X_{\xi}\cdot \delta \phi)-\int _{M}\mathbf{E}^{\mu \nu}\nabla _{\mu}\xi _{\nu}+X_{\xi}\cdot \theta|_{\Sigma _{f}-\Sigma _{i}} \\
 & =\int _{M}E_{\phi}(X_{\xi}\cdot \delta \phi)-\int _{M}\varepsilon \nabla _{\mu}(T^{\mu \nu}\xi _{\nu})+\int _{M}\varepsilon \xi _{\nu}\nabla _{\mu}T^{\mu \nu}+X_{\xi}\cdot \theta|_{\Sigma _{f}-\Sigma _{i}} \\
 & \approx\left( X_{\xi}\cdot \theta+\int _{\Sigma} \varepsilon _{\Sigma}\tau _{\mu}\xi _{\nu}T^{\mu \nu}\right){\Big|}_{\Sigma _{f}-\Sigma _{i}}+\beta _{\xi}
\end{align}
$$