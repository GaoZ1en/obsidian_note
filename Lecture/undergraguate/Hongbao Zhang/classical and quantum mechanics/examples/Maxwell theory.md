## 1-form symmetry

higher form symmetry act on extended objects... how to understand it?

### usual formalism



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
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau _{\mu}F^{\mu \nu}(\xi ^{\rho}\partial _{\rho}A_{\nu}-A_{\rho}\partial ^{\rho}\xi_{\nu})-\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu} \frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma} \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau _{\mu}F^{\mu \nu}(\xi ^{\rho}\partial _{\rho}A_{\nu}+A_{\rho}\partial _{\nu}\xi ^{\rho})-\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu} \frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma} \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}\left( F_{\mu \rho}F_{\nu}^{~\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma} \right)
\end{align}
$$

---

now we will prove that the action is invariant under conformal transformation

$$\begin{align}
X_{\xi} & =\int \mathrm{d}^{4}x\left(\mathcal{L}_{\xi}g_{\mu \nu}\frac{\delta}{\delta g_{\mu \nu}}+\mathcal{L}_{\xi}A_{\mu}\frac{\delta}{\delta A_{\mu}}\right) \\
\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu} & =\frac{2}{d}g_{\mu \nu}\nabla _{\rho}\xi ^{\rho}
\end{align}$$

$$\begin{align}
S & =-\frac{1}{4}\int \mathrm{d}^{d}x\sqrt{ -g }F_{\mu \nu}F^{\mu \nu} \\
 & =-\frac{1}{4}\int \mathrm{d}^{d}x\sqrt{ -g }g^{\mu \rho}g^{\nu \sigma}F_{\mu \nu}F_{\rho \sigma}
\end{align}$$

acting $\displaystyle{X_{\xi}}$ on the action

$$\begin{align}
X_{\xi}\cdot \delta S & =-\frac{1}{}
\end{align}$$