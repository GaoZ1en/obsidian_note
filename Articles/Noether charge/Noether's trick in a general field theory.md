in this file, we will apply the trick in deriving the Noether theorem to a general theory. the aim is to argue that the Noether charge must be related to the stress tensor.

## $\displaystyle{X_{\xi}\cdot \delta S}$

$$
\tag{1.1}
\begin{align}
S & =\int _{M}\mathbf{L}[\phi,g_{\mu \nu}]
\end{align}
$$

make a variation

$$
\tag{1.2}
\begin{align}
\delta S & =\int _{M}\left( \mathbf{E}_{\phi}\delta \phi-\frac{1}{2}\mathbf{E}^{\mu \nu}\delta g_{\mu \nu} \right)+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
\mathbf{E}^{\mu \nu} & =T^{\mu \nu}\varepsilon
\end{align}
$$

consider the following diffeomorphism symmetry

$$
\tag{1.3}
\begin{align}
X_{\xi} & =\int _{M}\mathrm{d}^{d}x\left(\xi ^{\mu}\nabla _{\mu}\phi  \frac{\delta}{\delta \phi}+(\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}) \frac{\delta}{\delta g_{\mu \nu}}\right)
\end{align}
$$

then we have

$$
\tag{1.4}
\begin{align}
X_{\xi}\cdot \delta S & =\int _{M}\mathbf{E}_{\phi}(X_{\xi}\cdot \delta \phi)-\frac{1}{2}\int _{M}\mathbf{E}^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu})+X_{\xi}\cdot \theta|_{\Sigma _{f}-\Sigma _{i}} \\
 & =\int _{M}\mathbf{E}_{\phi}(X_{\xi}\cdot \delta \phi)-\int _{M}\mathbf{E}^{\mu \nu}\nabla _{\mu}\xi _{\nu}+X_{\xi}\cdot \theta|_{\Sigma _{f}-\Sigma _{i}} \\
 & =\int _{M}E_{\phi}(X_{\xi}\cdot \delta \phi)-\int _{M}\varepsilon \nabla _{\mu}(T^{\mu \nu}\xi _{\nu})+\int _{M}\varepsilon \xi _{\nu}\nabla _{\mu}T^{\mu \nu}+X_{\xi}\cdot \theta|_{\Sigma _{f}-\Sigma _{i}} \\
 & \approx\left( X_{\xi}\cdot \theta-\int _{\Sigma} \varepsilon _{\Sigma}\tau _{\mu}\xi _{\nu}T^{\mu \nu}\right){\Big|}_{\Sigma _{f}-\Sigma _{i}}+\beta _{\xi}
\end{align}
$$

then we have

$$
\tag{1.5}
\begin{align} \\

(X_{\xi}\cdot \theta-\alpha _{\xi})|_{\Sigma,\tilde{\mathcal{P}}}=\int _{\Sigma}\varepsilon _{\Sigma}\tau _{\mu}\xi _{\nu}T^{\mu \nu}
\end{align}
$$

for conformal transformation, let us consider another more general transformation

$$
\tag{1.6}
\begin{align}
X_{\xi} & =\int _{M}\varepsilon\left( \left( \xi ^{\mu}\nabla _{\mu}\phi-\frac{d-2}{2}\sigma _{\xi}\phi  \right) \frac{\delta}{\delta \phi}+(\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}-2\sigma _{\xi}g_{\mu \nu}) \frac{\delta}{\delta g_{\mu \nu}}\right)
\end{align}
$$

then we have

$$
\tag{1.7}
\begin{align}
X_{\xi}\cdot \delta S & =\int _{M}\mathbf{E}_{\phi}(X_{\xi}\cdot \delta \phi)-\frac{1}{2}\int _{M}\mathbf{E}^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu})+X_{\xi}\cdot \theta|_{\Sigma _{f}-\Sigma _{i}} \\
 & =\int _{M}\mathbf{E}_{\phi}(X_{\xi}\cdot \delta \phi)-\int _{M}\varepsilon T^{\mu \nu}(\nabla _{\mu}\xi _{\nu}-\sigma _{\xi}g_{\mu \nu}) \frac{\delta}{\delta g_{\mu \nu}}+X_{\xi}\cdot \theta|_{\Sigma _{f}-\Sigma _{i}} \\
 & =\int _{M}\mathbf{E}_{\phi}(X_{\xi}\cdot \delta \phi)+\left( X_{\xi}\cdot \theta+\int _{\Sigma}\varepsilon _{\Sigma}\tau _{\mu}\xi _{\nu}T^{\mu \nu} \right){\Big|}_{\Sigma _{f}-\Sigma _{i}}+\int _{M}\varepsilon \xi _{\nu}\nabla _{\mu}T^{\mu \nu}+\int _{M}\varepsilon \sigma _{\xi}g_{\mu \nu}T^{\mu \nu}
\end{align}
$$

then we have

$$
\tag{.}
\begin{align}
(X_{\xi}\cdot \theta-\alpha _{\xi})|_{} & =\int _{\Sigma}\varepsilon _{\Sigma}\tau _{\mu}\xi _{\nu}T^{\mu \nu} \\
\beta _{\xi} & =\int _{M}\varepsilon \xi _{\nu}\nabla _{\mu}T^{\mu \nu}
\end{align}
$$

we have another argument. consider $\displaystyle{\mathcal{L}_{X_{\xi}}\delta S}$. on the one hand, we have

$$
\tag{1.8}
\begin{align}
\mathcal{L}_{X_{\xi}}\delta S & =\delta(X_{\xi}\cdot \delta S) \\
 & =\delta \alpha _{\xi}|_{\Sigma _{f}-\Sigma _{i}}+\delta \beta _{\xi}
\end{align}
$$

on the other hand

$$
\tag{1.9}
\begin{align}
\mathcal{L}_{X_{\xi}}\delta S & =\delta(X_{\xi}\cdot \delta S)+X_{\xi}\cdot \delta ^{2}S
\end{align}
$$

the first term

$$
\tag{1.10}
\begin{align}
\delta(X_{\xi}\cdot \delta S) & =\delta\left( \int _{M}\mathbf{E}_{\phi}(X_{\xi}\cdot \delta \phi)-\frac{1}{2}\int _{M}\varepsilon T^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu})+X_{\xi}\cdot \theta|_{\Sigma _{f}-\Sigma _{i}} \right) \\
 & =\int _{M}\delta \mathbf{E}_{\phi}(X_{\xi}\cdot \delta \phi)+\int _{M}\mathbf{E}_{\phi}\delta(X_{\xi}\cdot \delta \phi)-\frac{1}{2}\int _{M}\delta \mathbf{E}_{g}^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu})-\frac{1}{2}\int _{M}\mathbf{E}_{g}^{\mu \nu}\delta(X_{\xi}\cdot \delta g_{\mu \nu}) \\
 & +\delta(X_{\xi}\cdot \theta)|_{\Sigma _{f}-\Sigma _{i}}
\end{align}
$$

the second term

$$
\tag{1.11}
\begin{align}
X_{\xi}\cdot \delta ^{2}S & =X_{\xi}\cdot \delta\left( \int _{M}\mathbf{E}_{\phi}\delta \phi-\frac{1}{2}\int _{M}\mathbf{E}_{g}^{\mu \nu}\delta g_{\mu \nu}+\theta|_{\Sigma _{f}-\Sigma _{i}} \right) \\
 & =X_{\xi}\cdot\left( \int _{M}\delta \mathbf{E}_{\phi}\wedge \delta \phi -\frac{1}{2}\int _{M}\delta \mathbf{E}_{g}^{\mu \nu}\wedge\delta g_{\mu \nu}+\delta \theta|_{\Sigma _{f}-\Sigma _{i}}\right) \\
 & =\int _{M}(X_{\xi}\cdot \delta \mathbf{E}_{\phi})\delta \phi-\int _{M}\delta \mathbf{E}_{\phi}(X_{\xi}\cdot \delta \phi)-\frac{1}{2}\int _{M}(X_{\xi}\cdot \delta \mathbf{E}_{g}^{\mu \nu})\delta g_{\mu \nu}-\frac{1}{2}\int _{M}\delta \mathbf{E}_{g}^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu}) \\
 & +X_{\xi}\cdot \delta \theta|_{\Sigma _{f}-\Sigma _{i}}
\end{align}
$$

add (1.10) and (1.11), we have

$$
\tag{1.12}
\begin{align}
\mathcal{L}_{X_{\xi}}\delta S & =\int _{M}(X_{\xi}\cdot \delta \mathbf{E}_{\phi})\delta \phi-\frac{1}{2}\int _{M}(X_{\xi}\cdot \delta \mathbf{E}_{g}^{\mu \nu})\delta g_{\mu \nu} \\
 & +\int _{M}\mathbf{E}_{\phi}(X_{\xi}\cdot \delta \phi)-\frac{1}{2}\int _{M}\mathbf{E}^{\mu \nu}_{g}(X_{\xi}\cdot \delta g_{\mu \nu})+(X_{\xi}\cdot \delta \theta+\delta(X_{\xi}\cdot \theta))|_{\Sigma _{f}-\Sigma _{i}}
\end{align}
$$

compare with (1.8), we have

$$
\tag{1.13}
\begin{align}
\int _{M}(X_{\xi}\cdot \delta \mathbf{E}_{\phi})\delta \phi-\frac{1}{2}\int _{M}(X_{\xi}\cdot \delta \mathbf{E}_{g}^{\mu \nu})\delta g_{\mu \nu}+\int _{M}\mathbf{E}_{\phi}(X_{\xi}\cdot \delta \phi)-\frac{1}{2}\int _{M}\mathbf{E}_{g}^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu})+X_{\xi}\cdot \omega|_{\Sigma _{f}-\Sigma _{i}}+\delta(X_{\xi}\cdot \theta-\alpha _{\xi})|_{\Sigma _{f}-\Sigma _{i}}-\delta \beta _{\xi}
\end{align}
$$

then apply the Noether theorem and pull back to the prephase space, we have

$$
\tag{1.14}
\begin{align}
-\frac{1}{2}\int _{M}\mathbf{E}_{g}^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu})-\frac{1}{2}\int _{M}(X_{\xi}\cdot \delta \mathbf{E}_{g}^{\mu \nu})\delta g_{\mu \nu}-\delta \beta _{\xi}=0
\end{align}
$$

$$
\tag{.}
\begin{align}
\int _{M}\varepsilon T^{\mu \nu}\delta(X_{\xi}\cdot \delta g_{\mu \nu})+\frac{1}{2}\int _{M}(X_{\xi}\cdot \delta \varepsilon)T^{\mu \nu}\delta g_{\mu \nu}+\frac{1}{2}\int _{M}\varepsilon(X_{\xi}\cdot \delta T^{\mu \nu})\delta g_{\mu \nu}+\delta \beta _{\xi}=0 \\

\end{align}
$$

what can be derived?

$$
\tag{.}
\begin{align}
X_{\xi}\cdot \delta\varepsilon & =\frac{1}{2}\varepsilon g^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu})T^{\mu \nu}\delta g_{\mu \nu}
\end{align}
$$

### for diffeomorphism transformation

$$
\tag{.}
\begin{align}
\delta(X_{\xi}\cdot \delta g_{\mu \nu}) & =\delta(\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}) \\
 & =-2\delta \Gamma ^{\rho}_{\mu \nu}\xi _{\rho}+\nabla _{\mu}(\delta g_{\nu \rho}\xi ^{\rho})+\nabla _{\nu}(\delta g_{\mu \rho}\xi ^{\rho}) \\
 & =-(\nabla _{\mu}\delta g_{\rho \nu}+\nabla _{\nu}\delta g_{\mu \rho}-\nabla _{\rho}\delta g_{\mu \nu})\xi ^{\rho}+\nabla _{\mu}\delta g_{\nu \rho}\xi ^{\rho}+\delta g_{\nu \rho}\nabla _{\mu}\xi ^{\rho}+\nabla _{\nu}\delta g_{\mu \rho}\xi ^{\rho}+\delta g_{\mu \rho}\nabla _{\nu}\xi ^{\rho}  \\
 & =\delta g_{\nu \rho}\nabla _{\mu}\xi ^{\rho}+\delta g_{\mu \rho}\nabla _{\nu}\xi ^{\rho}+\nabla _{\rho}\delta g_{\mu \nu}\xi ^{\rho}
\end{align}
$$

$$
\tag{.}
\begin{align}
\frac{1}{2}\int _{M}\varepsilon T^{\mu \nu}(\delta g_{\nu \rho}\nabla _{\mu}\xi ^{\rho}+\delta g_{\mu \rho}\nabla _{\nu}\xi ^{\rho}+\nabla _{\rho}\delta g_{\mu \nu}\xi ^{\rho})+\frac{1}{4}\int _{M}\varepsilon g^{\rho \sigma}(\nabla _{\rho}\xi _{\sigma}+\nabla _{\sigma}\xi _{\rho})T^{\mu \nu}\delta g_{\mu \nu}+\frac{1}{2}\int _{M}\varepsilon(X_{\xi}\cdot \delta T^{\mu \nu})\delta g_{\mu \nu}+\delta \beta _{\xi} & =0 \\
\int _{M}\varepsilon(T^{\rho \nu}\nabla _{\rho}\xi ^{\mu}+T^{\mu \rho}\nabla _{\rho}\xi ^{\nu})\delta g_{\mu \nu}
\end{align}
$$
