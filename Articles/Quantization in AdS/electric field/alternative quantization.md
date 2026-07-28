We adopt the following asymptotic boundary conditions

$$\begin{align}
\Phi & =r^{-\Delta}\Psi(t,\phi)+o(r^{\Delta-2}),\quad 0<\Delta<1
\end{align}$$

and we represent the action as

$$\begin{align}
S & =\lim_{ r_{\infty} \to \infty } \left[\int _{M_{r_{\infty}}}\mathrm{d}^{3}x\sqrt{ -g }\left(-\dfrac{1}{2}g^{\mu \nu}\partial _{\mu}\Phi \partial _{\nu}\Phi-\dfrac{1}{2}\Delta(\Delta-2)\Phi ^{2}\right)+\int _{\Gamma _{r_{\infty}}} \mathrm{d}^{2}x\sqrt{ -\gamma }\left(-\dfrac{\Delta}{2}\Phi ^{2}\right)\right]
\end{align}$$

here $\displaystyle{M_{r_{\infty}}}$ is the spacetime region sandwiched by initial and final Cauchy surface $\displaystyle{\Sigma _{i}}$ and $\displaystyle{\Sigma _{f}}$, surrounded by the spatial boundary $\displaystyle{\Gamma _{r_{\infty}}}$ located $\displaystyle{r=r_{\infty}}$, $\displaystyle{\gamma}$ is the induced metric on $\displaystyle{\Gamma _{r}}$

$$\begin{align}
\mathrm{d}s^{2}_{\Gamma _{r}} & =\gamma _{ab}\mathrm{d}x^{a}\mathrm{d}x^{b} \\
 & =-(1+r^{2})\mathrm{d}t^{2}+r^{2}\mathrm{d}\phi ^{2},\quad r\to \infty
\end{align}$$

we need to do the following calculations to check whether this theory is well-defined.
- check whether the action is finite or not.
- act the Killing symmetry on the action, verify whether the action has the Killing symmetry. Calculate the corresponding Noether charge
- use the conserved charge corresponds to $\displaystyle{\xi _{0}}$ and $\displaystyle{\bar{\xi}_{0}}$ to find expressions to constrain angular momentum.

## Finiteness of the action

Take a IbP of the action

$$\begin{align}
S & =\lim_{ r_{\infty} \to \infty } \left[\int _{M_{r_{\infty}}}\mathrm{d}^{3}x\sqrt{ -g } \dfrac{1}{2}\Phi(\nabla ^{2}-\Delta(\Delta-2))\Phi\right. \\
 & \left.+\dfrac{1}{2}\int _{\Sigma _{f,r_{\infty}}-\Sigma _{i,r_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\nabla ^{\mu}\Phi \Phi-\dfrac{1}{2}\int _{\Gamma _{r_{\infty}}}\mathrm{d}^{2}x\sqrt{ -\gamma }\left(n^{\mu}\nabla _{\mu}\Phi+\Delta\Phi\right)\Phi\right]
\end{align}$$

the bulk term

$$\begin{align}
S_{\text{bulk}} & =\lim_{ r_{\infty} \to \infty } \int _{M_{r_{\infty}}} \mathrm{d}^{3}x\sqrt{ -g } \dfrac{1}{2}\Phi(\nabla ^{2}-\Delta(\Delta-2))\Phi \\
 & =\int _{M_{r_{*}}} \mathrm{d}^{3}x\sqrt{ -g } \dfrac{1}{2}\Phi(\nabla ^{2}-\Delta(\Delta-2))\Phi \\
 & +\lim_{ r_{\infty} \to \infty } \int _{r_{*}}^{r_{\infty}} \mathrm{d}^{3}x\sqrt{ -g } \dfrac{1}{2}\Phi(\nabla ^{2}-\Delta(\Delta-2))\Phi
\end{align}$$

the first term is finite, and expand the second term with the asymp. B. c. of $\displaystyle{\Phi}$

$$\begin{align}
\lim_{ r_{\infty} \to \infty } \int _{r_{*}}^{r_{\infty}} \mathrm{d}r \mathrm{d}t\mathrm{d}\phi \left[ \dfrac{1}{2} r^{-1-2\Delta}\Psi\left(-\partial _{t}^{2}+\partial _{\Phi}^{2}\right)\Psi+\mathcal{O}(r^{-3-2\Delta}) \right]=(\text{finite})
\end{align}$$

so the bulk term is finite in general. Terms supports on the Cauchy surface

$$\begin{align}
S_{\Sigma}& =\dfrac{1}{2}\int _{\Sigma _{r_{*}}} \mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\Phi \Phi+\lim_{ r_{\infty} \to \infty }\dfrac{1}{2}\int _{r_{*}}^{r_{\infty}} \mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\Phi \Phi
\end{align}$$

the first term is finite and the second term

$$\begin{align}
\lim_{ r_{\infty} \to \infty }  \dfrac{1}{2}\int _{r_{*}}^{r_{\infty}} \mathrm{d}^{2}xr^{-1-2\Delta}\partial _{t}\Psi\Psi & =(\text{finite})
\end{align}$$

so the term $\displaystyle{S_{\Sigma}}$ is finite in general. Terms on the cutoff boundary

$$\begin{align}
S_{\Gamma} & =\lim_{ r_{\infty} \to \infty } -\dfrac{1}{2}\int _{\Gamma _{r_{\infty}}} \mathrm{d}^{2}x\sqrt{ -\gamma }\left(n^{\mu}\nabla _{\mu}\Phi+\Delta \Phi\right)\Phi \\
 & =\lim_{ r_{\infty} \to \infty } -\dfrac{1}{2}\int _{\Gamma _{r_{\infty}}}\mathrm{d}^{2}x r^{2-2\Delta}\left(r^{\Delta+1}\partial _{r}(r^{-\Delta}+o(r^{\Delta-2}))+\Delta\right)\Psi^{2} \\
 & =\lim_{ r_{\infty} \to \infty } -\dfrac{1}{2}\int _{\Gamma _{r_{\infty}}} \mathrm{d}^{2}x o(r^{0})\Psi^{2}=0
\end{align}$$

so the whole action is finite. The theory is well-defined at least on the level of finite action. Therefore we drop the limit $\displaystyle{r_{\infty}\to \infty}$ in the following discussions, but we implicitly assume $\displaystyle{r_{\infty}\to \infty}$ for all the following integrals. We write

$$\begin{align}
S & =\int _{M} \mathrm{d}^{3}x\sqrt{ -g }\left(-\dfrac{1}{2}g^{\mu \nu}\partial _{\mu}\Phi \partial _{\nu}\Phi-\dfrac{1}{2}\Delta(\Delta-2)\Phi ^{2}\right)+\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma } \left(-\dfrac{\Delta}{2}\Phi ^{2}\right)
\end{align}$$

## CPS formalism

Take a variation of the action

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }(\nabla ^{2}-\Delta(\Delta-2))\Phi \delta \Phi+ \\
 & +\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\nabla ^{\mu}\Phi \delta \Phi-\int _{\Gamma} \mathrm{d}^{2}x\sqrt{ -\gamma }(n_{\mu}\nabla ^{\mu}\Phi+\Delta \Phi) \delta \Phi
\end{align}$$

by the same argument as previous sections, terms support on $\displaystyle{\Gamma}$ vanishes. So the eom is given by

$$\begin{align}
(\nabla ^{2}-\Delta(\Delta-2))\Phi=0
\end{align}$$

the symplectic potential

$$\begin{align}
\theta & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\nabla ^{\mu}\Phi \delta \Phi
\end{align}$$

and the symplectic form

$$\begin{align}
\omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\nabla ^{\mu}\delta \Phi \wedge \delta \Phi
\end{align}$$

## Symmetry

Consider a symmetry transformation generated by a Killing vector $\displaystyle{\xi}$. Write

$$\begin{align}
X_{\xi} & =\int \mathrm{d}^{3}x\mathcal{L}_{\xi}\Phi \dfrac{\delta}{\delta \Phi}
\end{align}$$

act on the action

$$\begin{align}
X_{\xi}\cdot \delta S & =\int \mathrm{d}^{3}x\sqrt{ -g }\nabla _{\mu}\left(\xi ^{\mu}\left(-\dfrac{1}{2}\nabla _{\nu}\Phi \nabla ^{\nu}\Phi-\dfrac{1}{2}\Delta(\Delta-2)\Phi ^{2}\right)\right)+\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma } (-\Delta \Phi \mathcal{L}_{\xi}\Phi) \\
 & =\int _{\Sigma _{i}-\Sigma _{f}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu}\left(\dfrac{1}{2}\nabla _{\nu}\Phi \nabla ^{\nu}\Phi+\dfrac{1}{2}\Delta(\Delta-2)\Phi ^{2}\right) \\
 & -\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma }\left[ \dfrac{1}{2}n_{\mu}\xi ^{\mu}(\nabla _{\nu}\Phi \nabla ^{\nu}\Phi+\Delta(\Delta-2)\Phi ^{2})+\Delta \Phi \mathcal{L}_{\xi}\Phi \right]
\end{align}$$

consider terms support on $\displaystyle{\Gamma}$:

$$\begin{align}
\beta _{\xi}  & =-\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma }\left[ \dfrac{1}{2}n_{\mu}\xi ^{\mu}(\nabla _{\nu}\Phi \nabla ^{\nu}\Phi+\Delta(\Delta-2)\Phi ^{2})+\Delta \Phi \mathcal{L}_{\xi}\Phi \right]
\end{align}$$

the asymptotic behavior of Killing vectors are

$$\begin{align}
\xi ^{a} & =\xi^{a}(t,\phi)+\mathcal{O}(r^{-2}), \\
\xi ^{r} & =-\dfrac{1}{2}D_{a}\zeta ^{a}r+\mathcal{O}(r^{-1})
\end{align}$$

then

$$\begin{align}
\beta _{\xi} & =-\lim_{ r \to \infty } \int _{\Gamma _{r}}\mathrm{d}^{2}x\sqrt{ -\gamma }\left[-\dfrac{1}{2}D_{a}\xi^{a} \Delta(\Delta-1)r^{-2\Delta}\Psi^{2}+\Delta r^{-2\Delta}\left( \zeta ^{a}D_{a}\Psi+\dfrac{\Delta}{2}D_{a}\zeta ^{a}\Psi \right)\Psi+\mathcal{O}(r^{-2\Delta})\right] \\
 & =-\lim_{ r \to \infty } \dfrac{\Delta}{2}r^{-2\Delta}\int _{\Gamma}\mathrm{d}^{2}x \sqrt{ -\gamma }D_{a}(\xi ^{a}\Psi^{2}) \\
  & =\lim_{ r \to \infty } \dfrac{\Delta}{2}r^{2-2\Delta}\int _{\partial \Sigma _{f}-\partial \Sigma _{i}}\mathrm{d}\phi\xi ^{t}\Psi^{2}
\end{align}$$

together with terms support on $\displaystyle{\Sigma}$

$$\begin{align}
\alpha _{\xi} & =\lim_{ r \to \infty } \int _{\Sigma _{r}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu}\left(\dfrac{1}{2}\nabla _{\nu}\Phi \nabla ^{\nu}\Phi+\dfrac{1}{2}\Delta(\Delta-2)\Phi ^{2}\right) \\
 & =\int _{\Sigma _{r_{*}}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu}\left(\dfrac{1}{2}\nabla _{\nu}\Phi \nabla ^{\nu}\Phi+\dfrac{1}{2}\Delta(\Delta-2)\Phi ^{2}\right) \\
 & +\lim_{ r \to \infty } \int _{r_{*}}^{r}\mathrm{d}r\mathrm{d}\phi\xi ^{t}\Delta(\Delta-1)r^{1-2\Delta}\Psi^{2} \\
 & =(\text{finite})-\dfrac{\Delta}{2}r^{2-2\Delta}\int _{\partial \Sigma} \mathrm{d}\phi \xi ^{t}\Psi^{2}
\end{align}$$

thus $\displaystyle{X_{\xi}\cdot \delta S}$ is finite and has no term support on $\displaystyle{\Gamma}$, therefore $\displaystyle{X_{\xi}}$ is indeed a symmetry.

The corresponding Noether charge

$$\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\left( \alpha _{\xi}+\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h }\tau _{\mu}\xi ^{\mu} \dfrac{\Delta}{2}\Phi ^{2}\right) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}T_{\mu \nu}-\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h }\tau _{\mu}\xi ^{\mu} \dfrac{\Delta}{2}\Phi ^{2} \\
T_{\mu \nu} & =\nabla _{\mu}\Phi \nabla _{\nu}\Phi-\dfrac{1}{2}g_{\mu \nu}\left(\nabla _{\rho}\Phi \nabla ^{\rho}\Phi+\Delta(\Delta-2)\Phi ^{2}\right)
\end{align}$$

here $\displaystyle{h}$ is the induced metric on $\displaystyle{\partial \Sigma}$:

$$\begin{align}
\mathrm{d}s^{2}_{\partial \Sigma} & =h_{ij}\mathrm{d}x^{i}\mathrm{d}x^{j} \\
 & =r^{2}\mathrm{d}\phi ^{2},\quad r\to \infty
\end{align}$$

denote

$$\begin{align}
I_{\mu \nu}[\Phi] & =(\nabla _{\mu}\nabla _{\nu}-g_{\mu \nu}\nabla ^{2}+2g_{\mu \nu})\Phi ^{2}
\end{align}$$

then

$$\begin{align}
\nabla ^{\mu}I_{\mu \nu}[\Phi] & =0 \\
\xi ^{\nu}I_{\mu \nu}[\Phi] & =\nabla _{\rho}\left(\xi ^{\rho}\nabla _{\mu}\Phi ^{2}-\xi _{\mu}\nabla ^{\rho}\Phi ^{2}+\Phi ^{2}\nabla ^{\rho}\xi _{\mu}\right) \\
\implies \int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}I_{\mu \nu}[\Phi] & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\nabla _{\rho}\left(\xi ^{\rho}\nabla ^{\mu}\Phi ^{2}-\xi ^{\mu}\nabla ^{\rho}\Phi ^{2}+\Phi ^{2}\nabla ^{\rho}\xi ^{\mu}\right) \\
 & =\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h }\tau _{\mu}n_{\rho}\left(\xi ^{\rho}\nabla ^{\mu}\Phi ^{2}-\xi ^{\mu}\nabla ^{\rho}\Phi ^{2}+\Phi ^{2}\nabla ^{\rho}\xi ^{\mu}\right) \\
 & =(2\Delta+1)\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h }\tau _{\mu}\xi ^{\mu} \Phi ^{2}+o(r^{0})
\end{align}$$

thus we have

$$\begin{align}
H_{\xi} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\widehat{T}_{\mu \nu} \\
\widehat{T}_{\mu \nu} & =T_{\mu \nu}-\dfrac{\Delta}{2(2\Delta+1)}(\nabla _{\mu}\nabla _{\nu}-g_{\mu \nu}\nabla ^{2}+2g_{\mu \nu})\Phi ^{2}
\end{align}$$

## Constrain the angular momentum

Act $\displaystyle{X_{\xi}}$ on the symplectic form

$$\begin{align}
X_{\xi}\cdot \omega\big|_{\tilde{\mathcal{P}}} & =-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\left[\tau ^{\mu}\xi ^{\nu}\left(\nabla _{\mu}\delta \Phi \nabla _{\nu}\Phi+\nabla ^{\mu}\Phi \nabla ^{\nu}\delta \Phi-g_{\mu \nu}\nabla _{\rho}\Phi \nabla ^{\rho}\delta \Phi-\Delta(\Delta-2)\Phi \delta \Phi\right)\right. \\
 & -\tau _{\mu}\nabla _{\nu}\left(\xi ^{\nu}\nabla ^{\mu}\Phi \delta \Phi-\xi ^{\mu}\nabla ^{\nu}\Phi \delta \Phi\right)+\tau _{\mu}\nabla _{\nu}\xi ^{\nu}\nabla ^{\mu}\Phi \delta \Phi-\tau _{\mu}(\nabla ^{\mu}\xi ^{\nu}+\nabla ^{\nu}\xi ^{\mu})\nabla _{\nu}\Phi \delta \Phi \\
 & \left.-\tau _{\mu}\xi ^{\mu}(\nabla ^{2}\Phi -\Delta(\Delta-2)\Phi)\delta \Phi\right] \\
 & = \left[ -\delta \int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}T_{\mu \nu}+\int _{\partial\Sigma}\mathrm{d}x\sqrt{ h }n_{\mu}\tau _{\nu}(\xi ^{\mu}\nabla ^{\nu}\Phi \delta \Phi-\xi ^{\nu}\nabla ^{\mu}\Phi \delta \Phi) \right]{\Huge|}_{\tilde{\mathcal{P}}} \\
 & =\left[ -\delta \int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}T_{\mu \nu}-\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h }\tau _{\nu}\xi ^{\nu}n_{\mu}\nabla ^{\mu}\Phi \delta \Phi \right]{\Huge|}_{\tilde{\mathcal{P}}} \\
 & =-\delta\left[\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}T_{\mu \nu}-\int _{\partial \Sigma} \mathrm{d}x \sqrt{ h }\tau _{\mu}\xi ^{\mu} \dfrac{\Delta}{2}\Phi ^{2}\right]{\Huge|}_{\tilde{\mathcal{P}}} \\
 & =-\delta H_{\xi}|_{\tilde{\mathcal{P}}}
\end{align}$$

then

$$\begin{align}
\omega[\Phi_{1};\Phi_{2}] & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left(\nabla _{\mu}\Phi _{1}\Phi_{2}-\Phi_{1}\nabla _{\mu}\Phi_{2}\right)
\end{align}$$

$$\begin{align}
\omega[\mathcal{L}_{\xi}\Phi_{1},\Phi_{2}] & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left(\nabla _{\mu}(\xi ^{\nu}\nabla _{\nu}\Phi_{1})\Phi_{2}-\xi ^{\nu}\nabla _{\nu}\Phi_{1}\nabla _{\mu}\Phi_{2}\right) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left(\nabla _{\mu}\xi ^{\nu}\nabla _{\nu}\Phi_{1}\Phi_{2}+\xi ^{\nu}\nabla _{\mu}\nabla _{\nu}\Phi_{1}\Phi_{2}-\xi ^{\nu}\nabla _{\nu}\Phi_{1}\nabla _{\mu}\Phi_{2}\right) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\left(-\nabla _{\mu}\Phi_{1}\nabla _{\nu}\Phi_{2}-\nabla _{\nu}\Phi_{1}\nabla _{\mu}\Phi_{2}+g_{\mu \nu}\nabla ^{\rho}\Phi_{1}\nabla _{\rho}\Phi_{2}+\Delta(\Delta-2)g_{\mu \nu}\Phi_{1}\Phi_{2}\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left((\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu})\nabla ^{\nu}\Phi_{1}\Phi_{2}+\nabla ^{\nu}(\xi _{\nu}\nabla _{\mu}\Phi_{1}\Phi_{2}-\xi _{\mu}\nabla _{\nu}\Phi_{1}\Phi_{2})-\nabla _{\nu}\xi ^{\nu}\nabla _{\mu}\Phi_{1}\Phi_{2}+\xi _{\mu}(\nabla ^{2}\Phi_{1}-\Delta(\Delta-2)\Phi_{1})\Phi_{2}\right) \\
 & =-Q_{\xi}[\Phi_{1};\Phi_{2}] \\
Q_{\xi}[\Phi_{1};\Phi_{2}] & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\left(\nabla _{\mu}\Phi_{1}\nabla _{\nu}\Phi_{2}+\nabla _{\nu}\Phi_{1}\nabla _{\mu}\Phi_{2}-g_{\mu \nu}\nabla _{\rho}\Phi_{1}\nabla ^{\rho}\Phi_{2}-\Delta(\Delta-2)g_{\mu \nu}\Phi_{1}\Phi_{2}\right) \\
 & -\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h }\tau _{\nu}\xi ^{\nu}\Delta\Phi_{1}\Phi_{2}
\end{align}$$

then

$$\begin{align}
i(\omega+m)\omega[\varphi;\varphi ^{*}] & =\lim_{ r \to \infty } \left\{\int _{0}^{r}\mathrm{d}r\int _{0}^{2\pi}\mathrm{d}\phi\left[\dfrac{r}{1+r^{2}}|\partial _{t}\varphi-\partial _{\phi}\varphi|^{2}+\dfrac{1}{r(1+r^{2})}|\partial _{\phi}\varphi|^{2}+r|\partial _{r}\varphi|^{2}\right.\right. \\
  &\left.\left. +(\Delta-1)^{2}r|\varphi|^{2}+r^{3}|\partial _{r}\varphi+\dfrac{1}{r}\varphi|^{2} \right]-(1-\Delta)\int _{0}^{2\pi} \mathrm{d}\phi r^{2}|\varphi|^{2}\right\} \\
i(\omega-m)\omega[\varphi;\varphi ^{*}] & =\lim_{ r \to \infty } \left\{\int _{0}^{r}\mathrm{d}r\int _{0}^{2\pi}\mathrm{d}\phi\left[\dfrac{r}{1+r^{2}}|\partial _{t}\varphi+\partial _{\phi}\varphi|^{2}+\dfrac{1}{r(1+r^{2})}|\partial _{\phi}\varphi|^{2}+r|\partial _{r}\varphi|^{2}\right.\right. \\
  &\left.\left. +(\Delta-1)^{2}r|\varphi|^{2}+r^{3}|\partial _{r}\varphi+\dfrac{1}{r}\varphi|^{2} \right]-(1-\Delta)\int _{0}^{2\pi} \mathrm{d}\phi r^{2}|\varphi|^{2}\right\} \\
\end{align}$$

## Noether's trick

Take a variation of the action with respect to $\displaystyle{\Phi,g_{\mu \nu},\gamma _{ab}}$

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{2}x\sqrt{ -g }\left(E_{\Phi}\delta \Phi +\dfrac{1}{2}T^{\mu \nu}\delta g_{\mu \nu}\right)+\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\nabla ^{\mu}\Phi \delta \Phi \\
 & -\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma } \left[ (n_{\mu}\nabla ^{\mu}\Phi+\Delta\Phi) \delta \Phi+\dfrac{\Delta}{4}\Phi ^{2}\gamma ^{ab}\delta \gamma _{ab} \right] \\
 & =\int _{M}\mathrm{d}^{2}x\sqrt{ -g }\left(E_{\Phi}\delta \Phi+\dfrac{1}{2}T^{\mu \nu}\delta g_{\mu \nu}\right)+\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\nabla ^{\mu}\Phi \delta \Phi \\
 & -\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma } \dfrac{\Delta}{4}\Phi ^{2}\gamma ^{ab}\delta \gamma _{ab} \\
E_{\Phi} & =\nabla ^{2}\Phi-\Delta(\Delta-2)\Phi \\
T^{\mu \nu} & =\nabla ^{\mu}\Phi \nabla ^{\nu}\Phi-\dfrac{1}{2}g^{\mu \nu}(\nabla _{\rho}\Phi \nabla ^{\rho}\Phi+\Delta(\Delta-2)\Phi ^{2})
\end{align}$$

consider a diffeomorphism generated by $\displaystyle{\xi}$

$$\begin{align}
X_{\xi} & =\int \mathrm{d}^{3}x\left( \mathcal{L}_{\xi}\Phi \dfrac{\delta}{\delta \Phi}+\mathcal{L}_{\xi}g_{\mu \nu}  \dfrac{\delta}{\delta g_{\mu \nu}} \right)
\end{align}$$

act on the action

$$\begin{align}
X_{\xi}\cdot \delta S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(E_{\Phi}\mathcal{L}_{\xi}\Phi-\nabla _{\mu}T^{\mu \nu}\xi _{\nu}\right) \\
 & +\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(\nabla ^{\mu}\Phi \mathcal{L}_{\xi}\Phi-\xi _{\nu}T^{\mu \nu}\right) \\
 & -\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma } \left[-n_{\mu}\xi _{\nu}T^{\mu \nu}+ \dfrac{\Delta}{2}\Phi ^{2}(D_{a}(\gamma ^{a}_{~b}\xi ^{b})+Kn_{a}\xi ^{a}) \right] \\
 & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(E_{\Phi}\mathcal{L}_{\xi}\Phi-\nabla _{\mu}T^{\mu \nu}\xi _{\nu}\right) \\
 & +\int _{\Sigma _{f}-\Sigma _{i}} \mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}(\nabla ^{\mu}\Phi \mathcal{L}_{\xi}\Phi-\xi _{\nu}T^{\mu \nu})+\int _{\partial \Sigma _{f}-\partial \Sigma _{i}}\mathrm{d}x\sqrt{ h } \dfrac{\Delta}{2}\tilde{\tau}_{a}\gamma ^{a}_{~b}\xi ^{b}\Phi ^{2} \\
 & \approx \alpha _{\xi}|_{\Sigma _{f}}-\alpha _{\xi}|_{\Sigma _{i}} \\
\alpha _{\xi} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}(\nabla ^{\mu}\Phi \mathcal{L}_{\xi}\Phi-\xi _{\nu}T^{\mu \nu})+\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h } \dfrac{\Delta}{2}\tilde{\tau}_{a}\gamma ^{a}_{~b}\xi ^{b}\Phi ^{2}
\end{align}$$

then the corresponding Noether charge is given by

$$\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}T^{\mu \nu}-\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h } \dfrac{\Delta}{2}\tilde{\tau}_{a}\gamma ^{a}_{~b}\xi ^{b}\Phi ^{2}
\end{align}$$

---

Consider the extended action

$$\begin{align}
S & =-\dfrac{1}{2}\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(\nabla _{\mu}\Phi \nabla ^{\mu}\Phi+\Delta(\Delta-2)\Phi ^{2}\right)-\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma } \dfrac{\Delta}{2}\Phi ^{2} \\
 & +\lambda \int _{M}\mathrm{d}^{3}x\sqrt{ -g }(R+6)\Phi ^{2}+2\lambda \int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma }(K-2)\Phi ^{2}
\end{align}$$

with $\displaystyle{\lambda=-\dfrac{\Delta}{4(2\Delta+1)}}$. We will use the following asymptotic behavior of $\displaystyle{\Phi}$

$$\begin{align}
\Phi & =r^{-\Delta}\Psi(t,\phi)+o(r^{-1}) \\
\Phi & =r^{-\Delta}\Psi(t,\phi)+o(r^{\Delta-2}) \quad(\text{if not enough})
\end{align}$$

considering

$$\begin{align}
\delta \sqrt{ -g } & =\dfrac{1}{2}g^{\mu \nu}\delta g_{\mu \nu}\sqrt{ -g } \\
\delta \sqrt{ -\gamma } & =\dfrac{1}{2}\gamma ^{\mu \nu}\delta g_{\mu \nu}\sqrt{ -\gamma } \\
\delta R & =-R^{\mu \nu}\delta g_{\mu \nu}+\nabla ^{\mu}\nabla ^{\nu}\delta g_{\mu \nu}-\nabla _{\rho}\nabla ^{\rho}(g^{\mu \nu}\delta g_{\mu \nu}) \\
\delta K & =-\dfrac{1}{2}K^{\mu \nu}\delta g_{\mu \nu}+\dfrac{1}{2}g^{\mu \nu}n^{\lambda}\nabla _{\lambda}\delta g_{\mu \nu}-\dfrac{1}{2}n^{\alpha}\nabla ^{\beta}\delta g_{\alpha \beta}-\dfrac{1}{2}D_{\mu}(\gamma ^{\mu \nu}n^{\alpha}\delta g_{\nu \alpha})
\end{align}$$

take a variation of the action, we have

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(E_{\Phi}\Delta \Phi+\dfrac{1}{2}T^{\mu \nu}\delta g_{\mu \nu}\right)+\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma }\left(F_{\Phi}\delta \Phi+\dfrac{1}{2}F^{\mu \nu}\delta g_{\mu \nu}\right) \\
 & +\int _{\Sigma _{i}}^{\Sigma _{f}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\theta _{\mu}-\int _{\partial \Sigma _{i}}^{\partial \Sigma _{f}}\mathrm{d}x\sqrt{ h }\tau ^{\mu}n^{\nu}C_{\mu \nu} \\
E_{\Phi} & =\nabla ^{2}\Phi-\Delta(\Delta-2)\Phi+2\lambda(R+6)\Phi \\
T^{\mu \nu} & =\nabla ^{\mu}\Phi \nabla ^{\nu}\Phi-\dfrac{1}{2}g^{\mu \nu}(\nabla _{\rho}\Phi \nabla ^{\rho}\Phi+\Delta(\Delta-2)\Phi ^{2}) \\
 & +2\lambda\left( \left( -R^{\mu \nu}+\dfrac{1}{2}Rg^{\mu \nu}+3g^{\mu \nu} \right)\Phi ^{2}+\nabla ^{\mu}\nabla ^{\nu}\Phi ^{2}-g^{\mu \nu}\nabla ^{2}\Phi ^{2} \right) \\
F_{\Phi} & =-(n^{\mu}\nabla _{\mu}\Phi+\Delta \Phi)+4\lambda(K-2)\Phi \\
F^{\mu \nu} & =-\dfrac{\Delta}{2}\gamma ^{\mu \nu}\Phi ^{2}+2\lambda((-K^{\mu \nu}+K\gamma ^{\mu \nu}-2\gamma ^{\mu \nu})\Phi ^{2}+\gamma ^{\mu \nu}n^{\rho}\nabla _{\rho}\Phi ^{2}) \\
\theta _{\mu} & =\nabla _{\mu}\Phi \delta \Phi-\lambda(\Phi ^{2}\nabla ^{\nu}\delta g_{\mu \nu}-\Phi ^{2}g^{\rho \sigma}\nabla _{\mu}\delta g_{\rho \sigma}-\nabla ^{\nu}\Phi ^{2}\delta g_{\mu \nu}+\nabla _{\mu}\Phi ^{2}g^{\rho \sigma}\delta g_{\rho \sigma}) \\
C_{\mu \nu} & =-\lambda \Phi ^{2}\delta g_{\mu \nu}
\end{align}$$

to set $\displaystyle{F_{\Phi}}$ term vanish, we have to impose $\displaystyle{\Phi=r^{-\Delta}\Psi+o(r^{\Delta-2})}$ instead of $\displaystyle{o(r^{-1})}$. Other boundary terms vanish under $\displaystyle{\Phi=r^{-\Delta}\Psi+o(r^{-1})}$.

We record leading falloffs of $\displaystyle{T^{\mu \nu}}$ and $\displaystyle{F^{\mu \nu}}$ as follows

$$\begin{align}
T^{\mu \nu} & \sim \begin{pmatrix}
\mathcal{O}(r^{-2\Delta-4}) & \mathcal{O}(r^{-2\Delta-3}) & \mathcal{O}(r^{-2\Delta-4}) \\
 & \mathcal{O}(r^{-2\Delta}) & 0 \\
 &  & \mathcal{O}(r^{-2\Delta-4})
\end{pmatrix} \\
F^{\mu \nu} & \sim \begin{pmatrix}
\mathcal{O}(r^{-2\Delta-4}) & 0 \\
 & \mathcal{O}(r^{-2\Delta-4})
\end{pmatrix}
\end{align}$$

consider a diffeomorphism generated by a Killing vector $\displaystyle{\xi}$

$$\begin{align}
X_{\xi} & =\int \mathrm{d}^{3}x\left(\mathcal{L}_{\xi}\Phi \dfrac{\delta}{\delta \Phi}+\mathcal{L}_{\xi}g_{\mu \nu} \dfrac{\delta}{\delta g_{\mu \nu}}\right)
\end{align}$$

act on the $\displaystyle{\delta S}$, we have

$$\begin{align}
X_{\xi}\cdot \delta S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\xi ^{\mu}\left(E_{\Phi}\nabla _{\mu}\Phi-\nabla ^{\nu}T_{(\mu \nu)}\right)+\int _{\Sigma _{i}}^{\Sigma _{f}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(X_{\xi}\cdot \theta _{\mu}-\xi ^{\nu}T_{\mu \nu}) \\
 & -\int _{\partial \Sigma _{i}}^{\partial \Sigma _{f}}\mathrm{d}x\sqrt{ h }\tau ^{\mu}(n^{\nu}X_{\xi}\cdot C_{\mu \nu}+F_{\mu \nu}\gamma ^{\nu}_{~\rho}\xi ^{\rho}) \\
 & +\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma }\nu _{\xi} \\
\nu _{\xi} & =\gamma ^{\mu}_{~\nu}\xi ^{\nu}(\gamma _{\mu}^{~\sigma}n_{\rho}T^{\rho}_{~\sigma}+F_{\Phi}D_{\mu}\Phi-D^{\rho}F_{\rho \mu})+n_{\rho}\xi ^{\rho}(n_{\mu}n_{\nu}T^{\mu \nu}+F_{\Phi}n^{\mu}\nabla _{\mu}\Phi+F^{\mu \nu}K_{\mu \nu}) \\
 & =-n_{\rho}\xi ^{\rho}\left( \dfrac{1}{2}g^{\mu \nu}\nabla _{\mu}\Phi \nabla _{\nu}\Phi+\dfrac{1}{2}\Delta(\Delta-2)\Phi ^{2}+\dfrac{\Delta}{2}(n^{\mu}\nabla _{\mu}\Phi ^{2}+K\Phi ^{2}) \right) \\
 & +\lambda n_{\rho}\xi ^{\rho}(\Phi ^{2}(\tilde{R}-K_{\mu \nu}K^{\mu \nu}+K^{2}-4K+6)+2(K-2)n^{\mu}\nabla _{\mu}\Phi ^{2}-2D_{\mu}D^{\mu}\Phi ^{2})
\end{align}$$

again, terms supports on $\displaystyle{\Gamma}$ vanish only $\displaystyle{\Phi=r^{-\Delta}\Psi+o(r^{\Delta-2})}$. Therefore the corresponding Noether charge is given by

$$\begin{align}
H_{\xi} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}X_{\xi}\cdot \theta _{\mu}-\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h }\tau ^{\mu}n^{\nu}X_{\xi}\cdot C_{\mu \nu}-\alpha _{\xi} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}T_{\mu \nu}+\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h }\tau ^{\mu}\gamma ^{\nu}_{~\rho}\xi ^{\rho}F_{\mu \nu} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}T_{\mu \nu}
\end{align}$$

the last term vanishes due to its falloff.
