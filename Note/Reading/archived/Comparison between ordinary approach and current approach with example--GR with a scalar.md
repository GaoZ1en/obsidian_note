### A General Definition of "Conserved Quantities" in General Relativity and Other Theories of Gravity

ordinary approach:

$$
\tag{1.1}
\begin{align}
\omega(\phi,\delta_{1}\phi,\delta_{2},\phi)=\delta_{1}\theta(\phi,\delta_{2} \phi)-\delta_{2}\theta(\phi,\delta_{1}\phi)
\end{align}
$$

while the current approach is

$$
\tag{1.2}
\begin{align}
\omega=\delta \theta
\end{align}
$$

for example, consider a massless scalar
:z:::::

$$
\tag{1.3}
\begin{align}
S & =-\frac{1}{2}\int_{M} \mathrm{d}^{d+1}x \sqrt{ -g }(g^{\mu \nu}\nabla_{\mu}\phi \nabla_{\nu}\phi+m^{2}\phi^{2})\\
\end{align}
$$

make a variation

$$
\tag{1.4}
\begin{align}
\delta S & =\int_{M}\mathrm{d}^{d+1}x\sqrt{ -g }(\nabla^{2}\phi-m^{2}\phi)-\int_{\partial M}\mathrm{d}^{d}x\sqrt{ \sigma }\tau^{\mu}\nabla_{\mu}\phi \delta \phi
\end{align}
$$

we have

$$
\tag{1.5}
\begin{align}
E & =\nabla^{2}\phi -m^{2}\phi \approx 0\\
\theta & = -\int_{\partial M}\mathrm{d}^{d}x\sqrt{ \sigma }\tau^{\mu}\nabla_{\mu}\phi \delta \phi
\end{align}
$$

as ordinary approach, the symplectic form becomes

$$
\tag{1.6}
\begin{align}
\omega(\phi,\delta_{1}\phi,\delta_{2}\phi) & =\delta_{1}\theta(\phi,\delta_{2} \phi)-\delta_{2}\theta(\phi,\delta_{1}\phi) \\
 & =-\int_{\partial M}\mathrm{d}^{d}x\sqrt{ \sigma }\tau^{\mu}\nabla_{\mu}\delta_{1}\phi \odot\delta_{2}\phi+\int_{\partial M}\mathrm{d}^{d}x\sqrt{ \sigma }\tau^{\mu}\nabla_{\mu}\delta_{2}\phi \odot\delta_{1}\phi \\
 & =-\int_{\partial M}\mathrm{d}^{d}x\sqrt{ \sigma }\tau^{\mu}\nabla_{\mu}\delta \phi \wedge \delta \phi
\end{align}
$$

which is equivalent to our current approach.

ordinary approach points out that the Hamiltonian conjugate to $\displaystyle{\xi^{a}}$ is defined as

$$
\tag{1.6}
\begin{align}
\delta H_{\xi} & =\int_{\Sigma}\omega(\phi,\delta \phi,\mathcal{L}_{\xi}\phi)
\end{align}
$$

while in our current approach, we have the Noether theorem

$$
\tag{1.7}
\begin{align}
\delta Q_{\xi}|_{\tilde{\mathcal{P}}} & =-X_{\xi}\cdot \omega|_{\tilde{\mathcal{P}}}
\end{align}
$$

they are clearly equivalent.

chapter 3. existence of a Hamiltonian

introduce the Noether current

$$
\tag{2.1}
\begin{align}
j_{\xi}=X_{\xi}\cdot \theta-\xi \cdot L
\end{align}
$$

it is closed

$$
\tag{2.2}
\begin{align}
\mathrm{d}j_{\xi} & =\mathrm{d}(X_{\xi}\cdot \theta)-\mathrm{d}(\xi \cdot L) \\
 & =-EX_{\xi}\cdot \delta \phi \approx 0
\end{align}
$$

then we can expand $\displaystyle{j_{\xi}}$ into exact and non-exact term

$$
\tag{2.3}
\begin{align}
j_{\xi}=\mathrm{d}Q_{\xi}+\xi^{a}C_{a}
\end{align}
$$

here is a proposition that

$$
\tag{2.4}
\begin{align}
Q=X^{ab}(\phi)\nabla_{[a}\xi_{b]}+U_{a}(\phi)\xi^{a}+V(\phi,\mathcal{L}_{\xi})+\mathrm{d}Z_{\xi}(\phi)
\end{align}
$$

for example, we consider the general relativity with a massive scalar coupled to gravity

$$
\tag{2.5}
\begin{align}
S & =S_{\text{GR}}+S_{\text{scalar}} \\
S_{\text{GR}} & = -\frac{1}{16\pi G}\int_{M}(R-2\Lambda)\cdot \frac{1}{d!}\varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{d-1}}\\
S_{\text{scalar}} & =-\frac{1}{2}\int_{M}(g^{\mu \nu}\nabla_{\mu}\phi \nabla_{\nu}\phi+m^{2}\phi^{2})\cdot \frac{1}{d!}\varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{d-1}}\\
\end{align}
$$

the variation of this action is

$$
\tag{2.6}
\begin{align}
\delta S_{\mathrm{GR}} & =\int_{M}E^{\mu \nu}\delta g_{\mu \nu}+\int_{\partial M}\Theta_{\mathrm{GR}} \\
E^{\mu \nu}_{\mathrm{GR}} & =\frac{1}{16\pi G}\left( -R^{\mu \nu}+\frac{1}{2}Rg^{\mu \nu}-\Lambda g^{\mu \nu} \right)\cdot \frac{1}{d!}\varepsilon_{\mu_{0}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{0}}\wedge \dots \wedge\mathrm{d}x^{\mu_{d-1}} \\
\Theta_{\mathrm{GR}} & =\frac{1}{16\pi G}(g^{\rho \mu}\nabla^{\nu}\delta g_{\mu \nu}-g^{\mu \nu}\nabla^{\rho}\delta g_{\mu \nu})\cdot \frac{1}{(d-1)!}\varepsilon_{\rho \mu_{1}\dots\mu_{d-1}}\mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{d-1}} \\
\delta S_{\mathrm{scalar}} & =\int_{M}E^{\mu \nu}_{\phi}\delta g_{\mu \nu}+E_{\phi}\delta \phi+\int_{\partial M}\Theta_{\phi} \\
E^{\mu \nu}_{\phi} & = \left(-\frac{1}{2}\nabla^{\mu}\phi \nabla^{\nu}\phi+\frac{1}{4}g^{\mu \nu}\nabla_{\rho}\phi \nabla^{\rho}\phi+\frac{1}{4}g^{\mu \nu}m^{2}\phi^{2}\right)\cdot \frac{1}{d!}\varepsilon_{\mu_{0}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{0}}\wedge\dots \wedge \mathrm{d}x^{\mu_{d-1}}\\
E_{\phi} & =(\nabla^{2}\phi-m^{2}\phi)\cdot \frac{1}{d!}\varepsilon_{\mu_{0}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{0}}\wedge\dots \wedge\mathrm{d}x^{\mu_{d-1}} \\
\Theta_{\phi} & =-\nabla^{\rho}\phi \delta \phi \cdot \frac{1}{(d-1)!}\varepsilon_{\rho \mu_{1}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{d-1}}
\end{align}
$$

and then

$$
\tag{2.7}
\begin{align}
\theta & =\int_{\partial M}\Theta_{\mathrm{GR}}+\Theta_{\phi} \\
 & =\int_{\partial M}\left(\frac{1}{16\pi G}(g^{\rho \mu}\nabla^{\nu}\delta g_{\mu \nu}-g^{\mu \nu}\nabla^{\rho}\delta g_{\mu \nu})-\nabla^{\rho}\phi \delta \phi\right)\cdot \frac{1}{(d-1)!}\varepsilon_{\rho \mu_{1}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{1}}\wedge \dots\wedge\mathrm{d}x^{\mu_{d-1}}
\end{align}
$$

consider a diffeomorphism generated by the vector $\displaystyle{\xi^{\mu}}$, which acts on the set of configuration as

$$
\tag{2.8}
\begin{align} \\
X_{\xi} & =\int_{M}\mathrm{d}^{d}x\left(\mathcal{L}_{\xi}\phi \frac{\delta}{\delta \phi}+\mathcal{L}_{\xi}g_{\mu \nu} \frac{\delta}{\delta g_{\mu \nu}}\right) \\
X_{\xi}\cdot \delta g_{\mu \nu} & =\mathcal{L}_{\xi}g_{\mu \nu}=\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu} \\
X_{\xi}\cdot \delta \phi & =\mathcal{L}_{\xi}\phi=\xi^{\rho}\nabla_{\rho}\phi
\end{align}
$$

then we have

$$
\tag{2.9}
\begin{align}
j_{\xi} & =X_{\xi}\cdot\int_{\partial M}(\Theta_{\mathrm{GR}}+\Theta_{\phi})-\int_{\partial M}\xi \cdot L\\
 & =\frac{1}{16\pi G}\int_{\partial M}(g^{\rho \mu}\nabla^{\nu}\mathcal{L}_{\xi}g_{\mu \nu}-g^{\mu \nu}\nabla^{\rho}\mathcal{L}_{\xi}g_{\mu \nu})\cdot \frac{1}{(d-1)!}\varepsilon_{\rho \mu_{1}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{d-1}} \\
 & -\int_{\partial M}\xi^{\sigma}\nabla_{\sigma}\phi\nabla^{\rho}\phi \cdot \frac{1}{(d-1)!}\varepsilon_{\rho \mu_{1}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{d-1}} \\
 & +\frac{1}{16\pi G}\int_{\partial M}(R-2\Lambda)\xi^{\rho}\cdot \frac{1}{(d-1)!}\varepsilon_{\rho \mu_{1}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{d-1}} \\
 & +\frac{1}{2}\int_{\partial M}(\nabla^{\mu}\phi \nabla_{\mu}\phi+m^{2}\phi^{2})\xi^{\rho}\cdot \frac{1}{(d-1)!}\varepsilon_{\rho \mu_{1}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{d-1}}
\end{align}
$$

$$
\tag{2.10}
\begin{align}
X_{\xi}\cdot \delta L & =\mathrm{d}(\xi \cdot L) \\
 & =
\end{align}
$$

$$
\tag{2.4}
\begin{align} \\
j_{\xi} & =\mathrm{d}Q_{\xi}+\xi^{a}C_{a} \\
Q_{\xi} & =X^{ab}(\phi)\nabla_{[a}\xi_{b]}+U_{a}(\phi)\xi^{a}+V(\phi,\mathcal{L}_{\xi})+\mathrm{d}Z_{\xi}(\phi)
\end{align}
$$
