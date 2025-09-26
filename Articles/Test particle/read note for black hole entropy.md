reference: Gedanken experiments to destroy a black hole. II. Kerr-Newman black holes cannot be overcharged or overspun

---

for simplicity, we drop terms supporting on the space boundary $\displaystyle{\Gamma}$ (including $\displaystyle{\partial \Sigma}$). 

$$\tag{1.1}
\begin{align}
\delta \mathbf{L}[\phi] & =\mathbf{E}[\phi]\delta \phi+\mathrm{d}\Theta[\phi,\delta \phi]
\end{align}
$$

here $\displaystyle{\phi=\left(\psi,g_{\mu \nu}\right)}$. the symplectic form is

$$\tag{1.2}
\begin{align}
\omega & =\int _{\Sigma}\delta \Theta
\end{align}
$$

which satisfies

$$\tag{1.3}
\begin{align}
\mathrm{d}\omega=0
\end{align}
$$

consider the following symmetry vector

$$\tag{1.4}
\begin{align}
X_{\xi} & =\int \varepsilon\mathcal{L}_{\xi}\phi \frac{\delta}{\delta \phi}
\end{align}
$$

act on the Lagrangian

$$\tag{1.5}
\begin{align}
X_{\xi}\cdot \delta \mathbf{L}=\mathrm{d}(\xi \cdot \mathbf{L})
\end{align}
$$

(here we assume that the Lagrangian $\displaystyle{L}$ is covariant) then we have the Noether charge

$$\tag{1.6}
\begin{align}
H_{\xi} & =\int _{\Sigma}(X_{\xi}\cdot \Theta-\xi \cdot \mathbf{L})
\end{align}
$$

we have the Noether theorem

$$\tag{1.7}
\begin{align}
\delta H_{\xi} & =-X_{\xi}\cdot \omega
\end{align}
$$

on the other hand

$$\tag{1.8}
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

$$\tag{1.9}
\begin{align}
\mathcal{L}_{X_{\xi}}\Theta = \mathcal{L}_{\xi}\Theta+X_{\delta \xi}\cdot \Theta
\end{align}
$$

and assume that $\displaystyle{\xi}$ does not depend on $\displaystyle{\phi}$. then pull back to the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$, we return to (1.7). we can veryfy that

$$\tag{1.10}
\begin{align}
H_{\xi} & =\int _{\Sigma}(X_{\xi}\cdot \Theta-\xi \cdot \mathbf{L}) \\
 & =\int _{\Sigma}(\mathrm{d}Q_{\xi}+\tilde{\mathbf{C}}_{\xi})
\end{align}
$$

where $\displaystyle{\tilde{\mathbf{C}}}$s are the constraints of the theory (and at least for $\displaystyle{\mathrm{AdS}_{3}}$, $\displaystyle{\tilde{\mathbf{C}_{\xi}}}$ is proportional to $\displaystyle{\mathbf{E}}$). make a variation on (1.10) and then compare it to (1.8), we have

$$\tag{1.11}
\begin{align}
\int _{\Sigma}(\mathrm{d}\delta Q_{\xi}+\delta \tilde{\mathbf{C}}_{\xi}) & =\int _{\Sigma}(-X_{\xi}\cdot \delta\Theta-(\xi \cdot \mathbf{E})\delta \phi+\mathrm{d}(\xi \cdot \Theta)) \\
\implies \int _{\Sigma}\mathrm{d}(\delta Q_{\xi}-\xi \cdot \Theta) & =\int _{\Sigma}(-X_{\xi}\cdot \delta \Theta-\delta \tilde{\mathbf{C}}_{\xi}-(\xi \cdot \mathbf{E})\delta \phi)
\end{align}
$$

then pull back to the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$, we have

$$\tag{1.12}
\begin{align}
\delta H_{\xi}|_{\tilde{\mathcal{P}}} & =\int _{\partial \Sigma}(\delta Q_{\xi}-\xi \cdot \Theta)
\end{align}
$$

we will drop the subsription $\displaystyle{\tilde{\mathcal{P}}}$ in the following discussion. if we choose $\displaystyle{\xi ^{a}=t^{a}+\Omega _{H}\varphi ^{a}}$ as the horizon Killing vector, where $\displaystyle{t^{a}}$ is the timelike Killing field, $\displaystyle{\varphi ^{a}}$ is the axial Killing field, and $\displaystyle{\Omega _{H}}$ is the angular velocity of the horizon.

---

A horizon Killing field is a special Killing vector field in the context of black hole spacetimes that:
1. Becomes null exactly at the event horizon
2. Is tangent to the null generators of the horizon
3. Represents the symmetry associated with the horizon geometry

---

we have

$$\tag{1.13}
\begin{align}
\delta H_{\xi} & =\delta M-\Omega _{H}\delta J
\end{align}
$$

where $\displaystyle{M}$ is the ADM mass (in some former note we have verified this statement) and $\displaystyle{J}$ is the ADM angular momentum. since $\displaystyle{\xi ^{a}}$ vanishes on the horizon, we have

$$\tag{1.14}
\begin{align}
\int _{\infty}(\delta Q^{\mathrm{GR}}_{\xi}-\xi \cdot \Theta ^{\mathrm{GR}}) & =\int _{\infty}\delta Q^{\mathrm{GR}}_{\xi}=\frac{\kappa}{8\pi}\delta A_{B}
\end{align}
$$

where $\displaystyle{A}$ is the area of the horizon (Black hole entropy is Noether charge). and

$$\tag{1.15}
\begin{align}
\int _{\infty}\left(\delta Q^{\mathrm{EM}}_{\xi}-\xi \cdot \Theta ^{\mathrm{EM}}\right) & =\int _{\infty}\delta Q_{\xi}^{\mathrm{EM}}=\Phi _{H}\delta Q_{B}
\end{align}
$$

thus we have the the 1st law of black hole thermodynamics

$$\tag{1.16}
\begin{align}
\delta M-\Omega _{H}\delta J-\Phi _{H}\delta Q_{B} & =\frac{\kappa}{8\pi}\delta A_{B}
\end{align}
$$

---

now we will study the Einstein-Maxwell theory with action

$$\tag{2.0}
\begin{align}
S & =\frac{1}{16\pi G}\int _{M}\varepsilon R-\frac{1}{4}\int _{M}\varepsilon F_{\mu \nu}F^{\mu \nu}
\end{align}
$$

make a variation

$$\tag{2.1}
\begin{align}
\delta \mathbf{L} & =\frac{1}{16\pi G}\int _{M}\varepsilon _{M}\left(-R^{\mu \nu}+\frac{1}{2}g^{\mu \nu}R\right)\delta g_{\mu \nu}+\frac{1}{16\pi G}\int _{\partial M}\varepsilon _{\partial M} n_{\rho}(g^{\rho \mu}\nabla ^{\nu}\delta g_{\mu \nu}-g^{\mu \nu}\nabla ^{\rho}\delta g_{\mu \nu}) \\
 & -\frac{1}{4} \int _{M}\varepsilon _{M}\left(-F^{\mu}_{~\rho}F^{\rho \nu}+\frac{1}{2}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma} \right)\delta g_{\mu \nu} \\
 & -\int _{M} \varepsilon _{M} F^{\mu \nu}\nabla _{\mu}\delta A_{\nu} +\int _{M}\varepsilon \nabla _{\mu}F^{\mu \nu}\delta A_{\nu}-\int _{\partial M}\varepsilon _{\partial M}\tau _{\mu}F^{\mu \nu}\delta A_{\nu} \\
 & =\mathbf{E}^{\mu \nu}_{\mathrm{GR}}\delta g_{\mu \nu}+\mathbf{E}^{\nu}_{\mathrm{EM}}\delta A_{\nu}+\mathrm{d}\theta _{\mathrm{GR}}+\mathrm{d}\theta _{\mathrm{EM}} \\
\mathbf{E}^{\mu \nu}_{\mathrm{GR}} & =\frac{1}{16\pi G}\varepsilon _{M}\left( -R^{\mu \nu}+\frac{1}{2}g^{\mu \nu}R \right)+\frac{1}{4}\varepsilon _{M}\left(F^{\mu}_{~\rho}F^{\rho \nu}-\frac{1}{2}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}\right) \\
\mathbf{E}^{\nu}_{\mathrm{EM}} & =\nabla _{\mu}F^{\mu \nu} \\
\theta _{\mathrm{GR}} & =\frac{1}{16\pi G}\varepsilon _{\partial \Sigma}n_{\rho}\left(g^{\rho \mu}\nabla ^{\nu}\delta g_{\mu \nu}-g^{\mu \nu}\nabla ^{\rho}\delta g_{\mu \nu}\right) \\
\theta _{\mathrm{EM}} & =-\varepsilon _{\partial M}n _{\mu}F^{\mu \nu}\delta A_{\nu}
\end{align}
$$

consider a infinitesimal diffeomorphism transformation parameterized by $\displaystyle{\xi ^{\mu}}$:

$$\tag{2.2}
\begin{align}
X_{\xi} & =\int \varepsilon \left( \mathcal{L}_{\xi}g_{\mu \nu} \frac{\delta}{\delta g_{\mu \nu}} +\mathcal{L}_{\xi}A_{\mu} \frac{\delta}{\delta A_{\mu}}\right)
\end{align}
$$

act this on the Lagrangian

$$\tag{2.3}
\begin{align}
X_{\xi}\cdot \delta \mathbf{L} & =\mathcal{L}_{\xi}\mathbf{L} \\
 & =\mathrm{d}(\xi \cdot \mathbf{L})
\end{align}
$$

then we have the Noether charge

$$\tag{2.4}
\begin{align}
H_{\xi} & =\int _{\Sigma}(X_{\xi}\cdot \Theta-\xi \cdot \mathbf{L})
\end{align}
$$

we have

$$\tag{2.5}
\begin{align}
X_{\xi}\cdot \Theta _{\mathrm{GR}}-\xi \cdot \mathbf{L}_{\mathrm{GR}} & =\mathrm{d}\mathbf{Q}_{\xi,\mathrm{GR}}+\tilde{\mathbf{C}}_{\xi,\mathrm{GR}} \\
\mathbf{Q}_{\xi,\mathrm{GR}} & = -\frac{1}{16\pi G}\nabla ^{\mu}\xi ^{\nu} \cdot \frac{1}{2!}\varepsilon _{\mu \nu \mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
\tilde{\mathbf{C}}_{\xi,\mathrm{GR}} & =-\varepsilon _{M}\left(\frac{1}{16\pi G}G^{\mu \nu}-T^{\mu \nu}_{\mathrm{EM}}\right)\delta g_{\mu \nu}\\
X_{\xi}\cdot \Theta _{\mathrm{EM}}-\xi \cdot \mathbf{L}_{\mathrm{EM}} & = \mathrm{d}\mathbf{Q}_{\xi,\mathrm{EM}}+\tilde{\mathbf{C}}_{\xi,EM} \\
\mathbf{Q}_{\xi,\mathrm{EM}} & =-\frac{1}{2}F^{\mu \nu}A_{\rho}\xi ^{\rho}\cdot \frac{1}{2!}\varepsilon _{\mu \nu \mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge dx^{\mu_{1}} \\
\tilde{\mathbf{C}}_{\xi,\mathrm{EM}} & =\varepsilon _{M}\nabla _{\mu}F^{\mu \nu}A_{\nu}
\end{align}
$$

so $\displaystyle{\tilde{\mathbf{C}}_{\xi,\mathrm{GR}}}$ and $\displaystyle{\tilde{\mathbf{C}}_{\xi,\mathrm{EM}}}$ can be interpreted as external sources. (for example, test particle). we choose the gause $\displaystyle{\mathcal{L}_{\xi}A_{\mu}=0}$, where $\displaystyle{\xi ^{a}}$ is the horizon Killing vector. for a nonextremal blackhole, the horizon will be of bifurcate type (past and future event horizon), and $\displaystyle{\Sigma}$ will terminate at the bifucation surface $\displaystyle{B}$ ($\displaystyle{\partial \Sigma=B}$). we have

$$\tag{2.6}
\begin{align}
\int _{\infty}\left(\delta \mathbf{Q}_{\xi,\mathrm{GR}}-\xi \cdot \Theta _{\mathrm{GR}}\right) & =\int _{\infty}\delta \mathbf{Q}_{\xi,\mathrm{GR}}=\frac{\kappa}{8\pi}\delta A_{B} \\
\int _{\infty}(\delta \mathbf{Q}_{\xi,\mathrm{EM}}-\xi \cdot \Theta _{\mathrm{EM}}) & = \Phi _{H}\delta Q_{B}
\end{align}
$$

and finally we have

$$\tag{2.7}
\begin{align}
\delta M-\Omega _{H}\delta J-\frac{\kappa}{8\pi}\delta A_{B}-\Phi _{H}\delta Q_{B} & =-\int _{\Sigma}(\delta T_{\mu}^{~\rho}+A_{\mu}\delta J^{\rho})\xi ^{\mu}\cdot \frac{1}{3!}\varepsilon _{\rho \mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}}
\end{align}
$$

---

gedanken experiment. consider a extremal KN black hole with

$$\tag{3.1}
\begin{align}
M^{2} & =\frac{J^{2}}{M^{2}}+Q^{2}
\end{align}
$$

make a perturbation of this black hole which violate the WGC.

$$\tag{3.2}
\begin{align}
2M\delta M & <2 \frac{J}{M}(M\delta J-J\delta M)+2Q\delta Q \\
\implies \delta M & < \frac{a}{M^{2}+a^{2}}\delta J+ \frac{QM}{M^{2}+a^{2}}\delta Q
\end{align}
$$

and one can verify that any physical perturbation will satisfy

$$\tag{3.3}
\begin{align}
\delta M & \geqslant \frac{a}{M^{2}+a^{2}} \delta J+\frac{QM}{M^{2}+a^{2}}\delta Q
\end{align}
$$

for a slightly non-extremal blackhole, we need to consider second order variation.

---
now we consider Einstein-Yang-Mills theory with action

$$\tag{4.1}
\begin{align}
S & =\frac{1}{16\pi G}\int \varepsilon R-\frac{1}{4\pi}\int \varepsilon F_{\mu \nu}^{\Lambda}F^{\mu \nu}_{\Lambda}
\end{align}
$$

where

$$\tag{4.2}
\begin{align}
F_{\mu \nu}^{\Lambda} & =\nabla _{\mu}A^{\Lambda}_{\nu}-\nabla _{\nu}A^{\Lambda}_{\mu}+c^{\Lambda}_{\Gamma \Delta}A^{\Gamma}_{\mu}A^{\Delta}_{\nu}
\end{align}
$$

and $\displaystyle{c^{\Lambda}_{\Gamma \Delta}}$ is the structure tensor for $\displaystyle{\mathrm{SU}(2)}$ group, and Lie algebra indices are raised and lowered by the Killing metric $\displaystyle{g_{\Gamma\Sigma}=-\frac{1}{2}c^{\Lambda}_{~\Gamma \Delta}c^{\Delta}_{~\Sigma \Lambda}}$. similar to the previous case, we have

$$\tag{4.3}
\begin{align}
\theta _{\mathrm{YM}} & =-\varepsilon _{\partial M}n _{\mu}F^{\mu \nu}_{\Lambda}\delta A_{\nu}^{\Lambda} \\
\mathbf{Q}_{\xi,\mathrm{YM}} & =-\frac{1}{2}F_{\Lambda}^{\mu \nu}A^{\Lambda}_{\rho}\xi ^{\rho}\cdot \frac{1}{2!}\varepsilon _{\mu \nu \mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
\tilde{\mathbf{C}}_{\xi,\mathrm{YM}} & =\varepsilon _{M}E^{\nu}_{\Lambda,\mathrm{YM}}A_{\nu}^{\Lambda}
\end{align}
$$

and

$$\tag{.}
\begin{align}
\int _{B}(\delta \mathbf{Q}_{\xi,\mathrm{YM}}-\xi \cdot \Theta _{\mathrm{YM}}) & = 
\end{align}
$$


