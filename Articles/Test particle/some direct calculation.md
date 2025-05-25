$$\tag{0.1}
\begin{align}
S & =-m\int \mathrm{d}\tau \sqrt{ -g_{\mu \nu} \frac{\mathrm{d} x^{\mu}}{\mathrm{d} \tau} \frac{\mathrm{d} x^{\nu}}{\mathrm{d} \tau} }+q\int \mathrm{d}\tau A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}
\end{align}
$$

---

make a variation

$$\tag{1.1}
\begin{align}
\delta S & =-m \int \mathrm{d}\tau  \frac{-2g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}\delta x^{\nu}}{\mathrm{d}\tau}-\partial _{\rho}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\delta x^{\rho}}{2\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }}+q\int \mathrm{d}\tau A_{\mu} \frac{\mathrm{d}\delta x^{\mu}}{\mathrm{d}\tau}+\partial _{\nu}A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}\delta x^{\nu} \\
 & -m \int \mathrm{d}\tau  \frac{-\delta g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}}{2\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }}+q\int \mathrm{d}\tau \delta A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \\
 & =\int \mathrm{d}\tau E_{x,\nu}\delta x^{\nu}+\int \mathrm{d}^{4}x\sqrt{ -g }\left(\frac{1}{2}T^{\mu \nu}\delta g_{\mu \nu}+j ^{\mu}\delta A_{\mu}\right)+\theta|_{\tau _{f}-\tau _{i}}
\end{align}
$$

here due to the reparametrization symmetry, we set $\displaystyle{\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }=1}$.

$$\tag{1.2}
\begin{align}
T^{\mu \nu} & =m\int \mathrm{d}\tau \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} \frac{\delta ^{4}(x-x(\tau))}{\sqrt{ -g }}\\
j ^{\mu} & =q \int \mathrm{d}\tau \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\delta ^{4}(x-x(\tau))}{\sqrt{ -g }} \\
E_{x,\sigma} & =-mg_{\lambda \sigma} \left(\frac{\mathrm{d}^{2}x^{\lambda}}{\mathrm{d}\tau ^{2}} +\Gamma ^{\lambda}_{~\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\right)+q F_{\sigma \rho} \frac{\mathrm{d}x^{\rho}}{\mathrm{d}\tau} \\
\theta & =\left( mg_{\mu \nu} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}+qA_{\mu} \right) \delta x^{\mu}
\end{align}
$$

now we consider the infinitesimal diffeomorphism

$$\tag{1.3}
\begin{align}
x^{\mu} & \to x^{\mu}-\xi ^{\mu} \\
g_{\mu \nu} & \to g_{\mu \nu}+\mathcal{L}_{\xi}g_{\mu \nu} \\
A_{\mu} & \to A_{\mu}+\mathcal{L}_{\xi}A_{\mu}
\end{align}
$$

which can be summarized as a configuration space vector

$$\tag{1.4}
\begin{align}
X_{\xi} & =\int \mathrm{d}\tau \left(\mathcal{L}_{\xi}g_{\mu \nu} \frac{\delta}{\delta g_{\mu \nu}}+\mathcal{L}_{\xi}A_{\mu} \frac{\delta}{\delta A_{\mu}}-\xi ^{\mu} \frac{\delta}{\delta x^{\mu}}\right)
\end{align}
$$

act on the action, we have

$$\tag{1.5}
\begin{align}
0=X_{\xi}\cdot \delta S & = \int _{N}\mathrm{d}^{4}x\sqrt{ -g }\left(\frac{1}{2}T^{\mu \nu}\mathcal{L}_{\xi}g_{\mu \nu}+j ^{\mu}\mathcal{L}_{\xi}A_{\mu}\right)-\int _{\tau _{1}}^{\tau_{2}} \mathrm{d}\tau E_{x,\nu}\xi ^{\nu}-\int _{\tau_{1}}^{\tau_{2}}\mathrm{d}\tau  \frac{\mathrm{d}}{\mathrm{d}\tau}\left[ \left( mg_{\mu \nu} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}+qA_{\mu} \right)\xi ^{\mu} \right] \\
 & =\int _{N}\mathrm{d}^{4}x\sqrt{ -g }\nabla _{\mu}(T^{\mu \nu}\xi _{\nu}+j ^{\mu}A^{\nu}\xi _{\nu})+\int _{N}\mathrm{d}^{4}x\sqrt{ -g }(-\nabla _{\mu}T^{\mu \nu}+F^{\nu \mu}j _{\mu})\xi _{\nu} \\
 & -\int _{\tau _{1}}^{\tau_{2}}\mathrm{d}\tau  \frac{\mathrm{d}}{\mathrm{d}\tau}\left[ \left( mg_{\mu \nu} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}+qA_{\mu} \right)\xi ^{\mu} \right]-\int _{\tau_{1}}^{\tau_{2}}\mathrm{d}\tau E_{x,\nu}\xi ^{\nu}
\end{align}
$$

where $\displaystyle{N}$ is spacetime region, and $\displaystyle{[\tau_{1},\tau_{2}]}$ is a world line segment that ends on $\displaystyle{N}$. (1.5) can be verified by direct calculation. then we have

$$\tag{1.6}
\begin{align}
(-\nabla _{\mu}T^{\mu \nu}+F^{\nu \mu}j_{\mu})\xi _{\nu} & =\int _{\tau_{1}}^{\tau_{2}}\mathrm{d}\tau E_{x,\nu} \frac{\delta ^{4}(x-x(\tau))}{\sqrt{ -g }} \\
\int _{N}\mathrm{d}^{4}x\sqrt{ -g }\nabla _{\mu}(T^{\mu \nu}\xi _{\nu}+j ^{\mu}A^{\nu}\xi _{\nu}) & =\int _{\tau_{1}}^{\tau_{2}}\mathrm{d}\tau  \frac{\mathrm{d}}{\mathrm{d}\tau}\left[ \left( mg_{\mu \nu} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}+qA_{\mu} \right)\xi ^{\mu} \right]
\end{align}
$$

---

the problem is that it seems that in the second line, we cannot derive the LHS from the RHS. I will show it.

$$\tag{1.7}
\begin{align}
\int _{\tau_{1}}^{\tau_{2}} \mathrm{d}\tau  \frac{\mathrm{d}}{\mathrm{d}\tau}(mU^{\mu}\xi _{\mu}) & =\int _{\tau_{1}}^{\tau_{2}} \mathrm{d}\tau  \frac{\mathrm{d}}{\mathrm{d}\tau}(mU^{\mu}\xi _{\mu}) \int _{N} \mathrm{d}^{4}x\sqrt{ -g } \frac{\delta^{4}(x-x(\tau))}{\sqrt{ -g }} \\
 & =\int _{N}\mathrm{d}^{4}x\sqrt{ -g } \int _{\tau_{1}}^{\tau_{2}} \mathrm{d}\tau  \frac{\mathrm{d}}{\mathrm{d}\tau}(mU^{\mu}\xi _{\mu}) \frac{\delta ^{4}(x-x(\tau))}{\sqrt{ -g }} \\
 & =\int _{N} \mathrm{d}^{4}x\sqrt{ -g }\left( mU^{\mu}\xi _{\mu} \frac{\delta^{4}(x-x(\tau))}{\sqrt{ -g } } \right)\Big|^{\tau_{2}}_{\tau_{1}}-\int _{N} \mathrm{d}^{4}x\sqrt{ -g }\int _{\tau_{1}}^{\tau_{2}} mU^{\mu}\xi _{\mu}  \frac{\mathrm{d}}{\sqrt{ -g }\mathrm{d}\tau} \delta ^{4}(x-x(\tau))
\end{align}
$$

---

back to the main point. for simplicity, we drop terms supporting on the space boundary $\displaystyle{\Gamma}$ (including $\displaystyle{\partial \Sigma}$). 

$$\tag{2.1}
\begin{align}
\delta \mathbf{L}[\phi] & =\mathbf{E}[\phi]\delta \phi+\mathrm{d}\Theta[\phi,\delta \phi]
\end{align}
$$

here $\displaystyle{\phi=\left(\psi,g_{\mu \nu}\right)}$. the symplectic form is

$$\tag{2.2}
\begin{align}
\omega & =\int _{\Sigma}\delta \Theta
\end{align}
$$

which satisfies

$$\tag{2.3}
\begin{align}
\mathrm{d}\omega=0
\end{align}
$$

consider the following symmetry vector

$$\tag{2.4}
\begin{align}
X_{\xi} & =\int \varepsilon\mathcal{L}_{\xi}\phi \frac{\delta}{\delta \phi}
\end{align}
$$

act on the Lagrangian

$$\tag{2.5}
\begin{align}
X_{\xi}\cdot \delta \mathbf{L}=\mathrm{d}(\xi \cdot \mathbf{L})
\end{align}
$$

(here we assume that the Lagrangian $\displaystyle{L}$ is covariant) then we have the Noether charge

$$\tag{2.6}
\begin{align}
H_{\xi} & =\int _{\Sigma}(X_{\xi}\cdot \Theta-\xi \cdot \mathbf{L})
\end{align}
$$

we have the Noether theorem

$$\tag{2.7}
\begin{align}
\delta H_{\xi} & =-X_{\xi}\cdot \omega
\end{align}
$$

on the other hand

$$\tag{2.8}
\begin{align}
\delta H_{\xi} & =\int _{\Sigma}\delta(X_{\xi}\cdot \Theta-\xi \cdot \mathbf{L}) \\
  & =\int _{\Sigma}(\delta (X_{\xi}\cdot \Theta)-\xi \cdot \delta \mathbf{L}) \\
 & =\int _{\Sigma}(\delta(X_{\xi}\cdot \Theta)-(\xi \cdot\mathbf{E})\delta \phi-\xi \cdot \mathrm{d}\Theta) \\
 & =\int _{\Sigma}\left(-(\xi \cdot \mathbf{E})\delta \phi+\mathcal{L}_{X_{\xi}}\Theta-X_{\xi}\cdot \delta\Theta-\xi \cdot \mathrm{d}\Theta\right) \\
 & =\int _{\Sigma}\left(-(\xi \cdot \mathbf{E})\delta \phi-X_{\xi}\cdot \delta \Theta+\mathcal{L}_{\xi}\Theta-\xi \cdot \mathrm{d}\Theta\right) \\
 & =\int _{\Sigma}\left(-(\xi \cdot \mathbf{E})\delta \phi-X_{\xi}\cdot \delta \Theta+\mathrm{d}(\xi \cdot \Theta)\right) \\
 & =-X_{\xi}\cdot \omega-\int _{\Sigma}(\xi \cdot \mathbf{E})\delta \phi
\end{align}
$$

here we use

$$\tag{2.9}
\begin{align}
\mathcal{L}_{X_{\xi}}\Theta = \mathcal{L}_{\xi}\Theta+X_{\delta \xi}\cdot \Theta
\end{align}
$$

and assume that $\displaystyle{\xi}$ does not depend on $\displaystyle{\phi}$. then pull back to the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$, we return to (1.7). we can veryfy that

$$\tag{2.10}
\begin{align}
H_{\xi} & =\int _{\Sigma}(X_{\xi}\cdot \Theta-\xi \cdot \mathbf{L}) \\
 & =\int _{\Sigma}(\mathrm{d}Q_{\xi}+\tilde{\mathbf{C}}_{\xi})
\end{align}
$$

where $\displaystyle{\tilde{\mathbf{C}}}$s are called the constraints of the theory (and at least for $\displaystyle{\mathrm{AdS}_{3}}$, $\displaystyle{\tilde{\mathbf{C}_{\xi}}}$ is proportional to $\displaystyle{\mathbf{E}}$). make a variation on (1.10) and then compare it to (1.8), we have

$$\tag{2.11}
\begin{align}
\int _{\Sigma}(\mathrm{d}\delta Q_{\xi}+\delta \tilde{\mathbf{C}}_{\xi}) & =\int _{\Sigma}(-X_{\xi}\cdot \delta\Theta-(\xi \cdot \mathbf{E})\delta \phi+\mathrm{d}(\xi \cdot \Theta)) \\
\implies \int _{\Sigma}\mathrm{d}(\delta Q_{\xi}-\xi \cdot \Theta) & =\int _{\Sigma}(-X_{\xi}\cdot \delta \Theta-\delta \tilde{\mathbf{C}}_{\xi}-(\xi \cdot \mathbf{E})\delta \phi)
\end{align}
$$

then pull back to the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$, we have

$$\tag{2.12}
\begin{align}
\delta H_{\xi}|_{\tilde{\mathcal{P}}} & =\int _{\partial \Sigma}(\delta Q_{\xi}-\xi \cdot \Theta)
\end{align}
$$

we will drop the subsription $\displaystyle{\tilde{\mathcal{P}}}$ in the following discussion. if we choose $\displaystyle{\xi ^{a}=t^{a}+\Omega _{H}\varphi ^{a}}$ as the horizon Killing vector, where $\displaystyle{t^{a}}$ is the timelike Killing field, $\displaystyle{\varphi ^{a}}$ is the axial Killing field, and $\displaystyle{\Omega _{H}}$ is the angular velocity of the horizon.

we have

$$\tag{2.13}
\begin{align}
\delta H_{\xi} & =\delta M-\Omega _{H}\delta J
\end{align}
$$

where $\displaystyle{M}$ is the ADM mass (in some former note we have verified this statement) and $\displaystyle{J}$ is the ADM angular momentum. since $\displaystyle{\xi ^{a}}$ vanishes on the horizon, we have

$$\tag{2.14}
\begin{align}
\int _{B}(\delta Q^{\mathrm{GR}}_{\xi}-\xi \cdot \Theta ^{\mathrm{GR}}) & =\int _{B}\delta Q^{\mathrm{GR}}_{\xi}=\frac{\kappa}{8\pi}\delta A_{B}
\end{align}
$$

where $\displaystyle{A}$ is the area of the horizon (**Black hole entropy is Noether charge** had argued this). and

$$\tag{2.15}
\begin{align}
\int _{B}\left(\delta Q^{\mathrm{EM}}_{\xi}-\xi \cdot \Theta ^{\mathrm{EM}}\right) & =\int _{B}\delta Q_{\xi}^{\mathrm{EM}}=\Phi _{H}\delta Q_{B}
\end{align}
$$

thus we have the the 1st law of black hole thermodynamics

$$\tag{2.16}
\begin{align}
\delta M-\Omega _{H}\delta J-\Phi _{H}\delta Q_{B} & =\frac{\kappa}{8\pi}\delta A_{B}
\end{align}
$$

applying the above discussion to the test particle, we have

$$\tag{2.17}
\begin{align}
\delta M-\Omega _{H}\delta J-\frac{\kappa}{8\pi}\delta A_{B}-\Phi _{H}\delta Q_{B} & =-\int _{\Sigma}(\delta T_{\mu}^{~\rho}+A_{\mu}\delta J^{\rho})\xi ^{\mu}\cdot \frac{1}{3!}\varepsilon _{\rho \mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}}
\end{align}
$$

here $\displaystyle{\delta T_{\mu}^{~\rho}}$ and $\displaystyle{\delta J^{\rho}}$ are the perturbations of the energy-momentum tensor and the current density by a test particle, which is defined in (1.2), respectively.

Cardoso(1008.5159?) had calculated the perturbation by a test **ring** using a very ugly method. our goal is to calculate the perturbation by a test **particle** in a very general setting via CPS formalism.

