$$\tag{0.1}
\begin{align}
S & =-m\int \mathrm{d}\tau \sqrt{ -g_{\mu \nu} \frac{\mathrm{d} x^{\mu}}{\mathrm{d} \tau} \frac{\mathrm{d} x^{\nu}}{\mathrm{d} \tau} }-q\int \mathrm{d}\tau A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}
\end{align}
$$

---

make a variation of $\displaystyle{x^{\mu}}$

$$\tag{1.1}
\begin{align}
\delta S & =-m\int \mathrm{d}\tau \frac{-g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}\delta x^{\nu}}{\mathrm{d}\tau}-\frac{1}{2}\partial _{\rho}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\delta x^{\rho}}{\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }} -q\int \mathrm{d}\tau \left( \partial _{\nu}A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}\delta x^{\nu}+ A_{\mu} \frac{\mathrm{d}\delta x^{\mu}}{\mathrm{d}\tau}\right)
\end{align}
$$

by reparametrization invariance, we can choose $\displaystyle{\tau}$ such that $\displaystyle{\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }=1}$, so we have

$$\tag{1.2}
\begin{align}
\delta S & =\int _{\tau _{i}}^{\tau _{f}} \mathrm{d}\tau E_{\sigma}\delta x^{\sigma}+\theta|_{\tau _{f}-\tau _{i}} \\
E_{\sigma} & =-mg_{\lambda \sigma}\left(\frac{\mathrm{d}^{2}x^{\lambda}}{\mathrm{d}\tau ^{2}}+\Gamma ^{\lambda}_{~\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\right)+q \frac{\mathrm{d}x^{\lambda}}{\mathrm{d}\tau}F_{\lambda \sigma} \\
\theta & =\left(mg_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}-qA_{\nu}\right)\delta x^{\nu}
\end{align}
$$

consider a infinitesimal diffeomorphism transformation parameterized by $\displaystyle{\xi ^{\mu}}$:

$$\tag{1.3}
\begin{align}
g_{\mu \nu} & \to g_{\mu \nu}+\mathcal{L}_{\xi}g_{\mu \nu}=g_{\mu \nu}+\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu} \\
A_{\mu} & \to A_{\mu}+\mathcal{L}_{\xi}A_{\mu}=A_{\mu}+\xi ^{\nu}\nabla _{\nu}A_{\mu}-A^{\nu}\nabla _{\nu}\xi _{\mu} \\
x^{\mu} & \to x^{\mu}+\xi ^{\mu}
\end{align}
$$

which can be represented as a vector in the set of configuration

$$\tag{1.4}
\begin{align}
X_{\xi} & =\int \mathrm{d}\tau\left[ \left(\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}\right) \frac{\delta}{\delta g_{\mu \nu}}+(\xi ^{\nu}\nabla _{\nu}A_{\mu}-A^{\nu}\nabla _{\nu}\xi _{\mu}) \frac{\delta}{\delta A_{\mu}} +\xi ^{\mu} \frac{\delta}{\delta x^{\mu}} \right]
\end{align}
$$

act this symmetry on the action

$$\tag{1.5}
\begin{align}
X_{\xi}\cdot \delta S & =
\end{align}
$$

$$\tag{.}
\begin{align}
S & =-m\int \mathrm{d}\tau \sqrt{ -g_{\mu \nu} \frac{\mathrm{d} x^{\mu}}{\mathrm{d} \tau} \frac{\mathrm{d} x^{\nu}}{\mathrm{d} \tau} }-q\int \mathrm{d}\tau A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \\
\delta S & =-m\int \mathrm{d}\tau -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}\delta x^{\nu}}{\mathrm{d}\tau}-\frac{1}{2}\partial _{\rho}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\delta x^{\rho} -q\int \mathrm{d}\tau \left( \partial _{\nu}A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}\delta x^{\nu}+ A_{\mu} \frac{\mathrm{d}\delta x^{\mu}}{\mathrm{d}\tau}\right)
\end{align}
$$

$$\tag{1.1}
\begin{align}
\delta S & =-m\int \mathrm{d}\tau \frac{-g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}\delta x^{\nu}}{\mathrm{d}\tau}-\frac{1}{2}\partial _{\rho}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\delta x^{\rho}}{\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }} -q\int \mathrm{d}\tau \left( \partial _{\nu}A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}\delta x^{\nu}+ A_{\mu} \frac{\mathrm{d}\delta x^{\mu}}{\mathrm{d}\tau}\right)
\end{align}
$$
