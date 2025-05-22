$$\tag{0.1}
\begin{align}
S & =-m\int \mathrm{d}\tau \sqrt{ -g_{\mu \nu} \frac{\mathrm{d} x^{\mu}}{\mathrm{d} \tau} \frac{\mathrm{d} x^{\nu}}{\mathrm{d} \tau} }+q\int \mathrm{d}\tau A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}
\end{align}
$$

---

make a variation of $\displaystyle{x^{\mu}}$

$$\tag{1.1}
\begin{align}
\delta S & =-m\int \mathrm{d}\tau \frac{-g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}\delta x^{\nu}}{\mathrm{d}\tau}-\frac{1}{2}\partial _{\rho}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\delta x^{\rho}}{\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }} +q\int \mathrm{d}\tau \left( \partial _{\nu}A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}\delta x^{\nu}+ A_{\mu} \frac{\mathrm{d}\delta x^{\mu}}{\mathrm{d}\tau}\right)
\end{align}
$$

by reparametrization invariance, we can choose $\displaystyle{\tau}$ such that $\displaystyle{\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }=1}$, so we have

$$\tag{1.2}
\begin{align}
\delta S & =\int _{\tau _{i}}^{\tau _{f}} \mathrm{d}\tau E_{\sigma}\delta x^{\sigma}+\theta|_{\tau _{f}-\tau _{i}} \\
E_{\sigma} & =-mg_{\lambda \sigma}\left(\frac{\mathrm{d}^{2}x^{\lambda}}{\mathrm{d}\tau ^{2}}+\Gamma ^{\lambda}_{~\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\right)-q \frac{\mathrm{d}x^{\lambda}}{\mathrm{d}\tau}F_{\lambda \sigma} \\
\theta & =\left(mg_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}+qA_{\nu}\right)\delta x^{\nu}
\end{align}
$$

consider a infinitesimal diffeomorphism transformation parameterized by $\displaystyle{\xi ^{\mu}}$:

$$\tag{.}
\begin{align}
g_{\mu \nu} & \to g_{\mu \nu}+\mathcal{L}_{\xi}g_{\mu \nu}=g_{\mu \nu}+\xi ^{\rho}\partial _{\rho}g_{\mu \nu}+g_{\rho \nu}\partial _{\mu}\xi ^{\rho}+g_{\mu \rho}\partial _{\nu}\xi ^{\rho} \\
A_{\mu} & \to A_{\mu}+\mathcal{L}_{\xi}A_{\mu}=A_{\mu}+\xi ^{\nu}\partial _{\nu}A_{\mu}+A_{\nu}\partial _{\mu}\xi ^{\nu} \\
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
X_{\xi}\cdot \delta S & =-m\int \mathrm{d}\tau \left( -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}(X_{\xi}\cdot\delta x^{\nu})}{\mathrm{d}\tau}-\frac{1}{2}\partial _{\rho}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}(X_{\xi}\cdot\delta x^{\rho}) \right) +q\int \mathrm{d}\tau \left( \partial _{\nu}A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}(X_{\xi}\cdot\delta x^{\nu})+ A_{\mu} \frac{\mathrm{d}(X_{\xi}\cdot\delta x^{\mu})}{\mathrm{d}\tau}\right) \\
 & -m\int \mathrm{d}\tau  \frac{-(X_{\xi}\cdot\delta g_{\mu \nu}) \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}}{2\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }}+q\int \mathrm{d}\tau (X_{\xi}\cdot\delta A_{\mu}) \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \\
 & =m\int \mathrm{d}\tau\left(g_{\mu \nu}\partial _{\rho}\xi ^{\nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\rho}}{\mathrm{d}\tau}+\frac{1}{2}\xi ^{\rho}\partial _{\rho}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\right) +q\int \mathrm{d}\tau\left( \xi ^{\nu}A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} +\partial _{\nu}\xi ^{\mu}A_{\mu} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\right) \\
 & +\frac{m}{2} \int \mathrm{d}\tau\left(\xi ^{\rho}\partial _{\rho}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}+g_{\rho \nu}\partial _{\mu}\xi ^{\rho} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}+g_{\mu \rho}\partial _{\nu}\xi ^{\rho} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\right) +q\int \mathrm{d}\tau(\xi ^{\nu}\partial _{\nu}A_{\mu}+A_{\nu}\partial _{\mu}\xi ^{\nu}) \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \\
 & =2m\int \mathrm{d}\tau \mathcal{L}_{\xi}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}+2q\int \mathrm{d}\tau \mathcal{L}_{\xi}A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \\
 & =\int \mathrm{d}^{4}x\sqrt{ -g }(\mathcal{L}_{\xi}g_{\mu \nu} T^{\mu \nu}+2\mathcal{L}_{\xi}A_{\mu}j ^{\mu}) \\
 & =2\int \mathrm{d}^{4}x\sqrt{ -g }(\nabla _{\mu}(T^{\mu \nu}\xi _{\nu}+j ^{\mu}A^{\nu}\xi _{\nu})+(-\nabla _{\mu}T^{\mu \nu}+F^{\nu \mu}j_{\mu})\xi _{\nu}) \\ \\
 & =\alpha _{\xi}|_{\tau_{f}-\tau _{i}}
\end{align}
$$

where $\displaystyle{T^{\mu \nu}}$ and $\displaystyle{j^{\mu}}$ are defined as

$$\tag{1.6}
\begin{align}
T^{\mu \nu} & =m\int \mathrm{d}\tau \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} \frac{\delta ^{4}(x-x(\tau))}{\sqrt{ -g }} \\
j ^{\mu} & =q\int \mathrm{d}\tau \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\delta^{4}(x-x(\tau))}{\sqrt{ -g }}
\end{align}
$$

and $\displaystyle{\alpha _{\xi}}$ is defined as

$$\tag{1.7}
\begin{align}
\alpha _{\xi} & =2\int _{\Sigma}\mathrm{d}^{3}x\tau _{\mu}(T^{\mu \nu}\xi _{\nu}+j ^{\mu}A^{\nu}\xi _{\nu})
\end{align}
$$

here we have to require $\displaystyle{-\nabla _{\mu}T^{\mu \nu}+F^{\nu \mu}j_{\mu}=0}$ to make the diffeomorphism to be a symmetry of the action (or this is just a direct corollary of the equation of motion?). we have the Noether charge


$$\tag{.}
\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\left(mg_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}+qA_{\nu}\right)\xi ^{\nu}-2\int _{\Sigma}\mathrm{d}^{3}x\tau _{\mu}\left(T^{\mu \nu}\xi _{\nu}+j ^{\mu}A^{\nu}\xi _{\nu}\right) \\
 & =-\left( mg_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}+qA_{\nu} \right)\xi ^{\nu}
\end{align}
$$
