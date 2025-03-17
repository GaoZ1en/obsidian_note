## 1-form symmetry



## CPS formalism

$$\tag{2.1}
\begin{align}
S & =-\frac{1}{4}\int _{M}F_{\mu \nu}F^{\mu \nu}\varepsilon
\end{align}
$$

where $\displaystyle{\varepsilon=\frac{1}{d!}\varepsilon _{\mu_{0}\dots \mu _{d-1}}\mathrm{d}x^{\mu_{0}}\wedge\dots \wedge \mathrm{d}x^{\mu _{d-1}}}$. perform a variation

$$\tag{2.2}
\begin{align}
S & =-\frac{1}{2}\int _{M} F^{\mu \nu}\delta F_{\mu \nu}\varepsilon \\
 & =-\int _{M} F^{\mu \nu}\partial _{\mu}\delta A_{\nu}\varepsilon \\
 & =\int _{M} \delta A_{\mu}\partial _{\nu}F^{\nu \mu}\varepsilon-\int _{M}\partial _{\mu}(F^{\mu \nu}\delta A_{\nu})\varepsilon \\
 & =\int _{M}\delta A_{\nu}\partial _{\mu}F^{\mu \nu}\varepsilon+\int _{\Sigma _{f}-\Sigma _{i}}\varepsilon _{\Sigma}\tau _{\mu}\delta A_{\nu}F^{\mu \nu}
\end{align}
$$

consider the following diffeomorphism

$$\tag{2.3}
\begin{align}
X_{\xi} & =\int \mathrm{d}^{d}x\mathcal{L}_{\xi}A_{\mu} \frac{\delta}{\delta A_{\mu}}
\end{align}
$$

where $\displaystyle{\xi _{\mu}}$ satisfies $\displaystyle{\partial _{\mu}\xi ^{\mu}=0}$ (Killing vector)

then act this symmetry on the action

$$\tag{2.4}
\begin{align}
X_{\xi}\cdot \delta S & = \int _{M} \mathcal{L}_{\xi}\mathbf{L}=\int _{M}\mathrm{d}(\xi \cdot \mathbf{L}) \\
 & =\int _{\Sigma _{f}-\Sigma _{i}}\frac{1}{4}F_{\rho \sigma}F^{\rho \sigma}\tau ^{\mu}\xi _{\mu}\varepsilon _{\Sigma}
\end{align}
$$

so we have the Noether charge

$$\tag{2.5}
\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}(X_{\xi}\cdot \delta A^{\nu})F_{\mu \nu}-\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu} \frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma} \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau _{\mu}F^{\mu \nu}(\xi ^{\rho}\partial _{\rho}A_{\nu}+A_{\rho}\partial ^{\rho}\xi_{\nu})-\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu} \frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma} \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}\left( F_{\mu \rho}\partial _{\nu}A^{\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma} \right)+\int _{\Sigma}\varepsilon _{\Sigma}\tau _{\mu}F^{\mu \nu}A_{\rho}\partial ^{\rho}\xi _{\nu} \\
 & 
\end{align}
$$

$$\tag{.}
\begin{align}
\int _{\Sigma}\varepsilon _{\Sigma}\tau _{\mu}F^{\mu \nu}A_{\rho}\partial ^{\rho}\xi _{\nu} & =
\end{align}
$$
