# Minimally Coupled Scalar with $\displaystyle{\dfrac{1}{2}<\Delta<1}$

We consider the following regulated action

$$\begin{align}
S_{R} & = \dfrac{1}{16\pi G}\int _{M_{R}}\mathrm{d}^{3}x\sqrt{ -g }(R+2)+\dfrac{1}{8\pi G}\int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }\left( K^{\Gamma}-1-\dfrac{1}{2}\log R \tilde{R} \right) \\
 & -\dfrac{1}{8\pi G}\int _{\Sigma _{f,R}-\Sigma _{i,R}} \mathrm{d}^{2}x\sqrt{ \sigma }K^{\Sigma}+\dfrac{1}{8\pi G}\int _{\partial \Sigma _{f,R}-\partial \Sigma _{i,R}}\mathrm{d}x\sqrt{ h }(\eta+\log RK^{H}) \\
 & +\int _{M_{R}}\mathrm{d}^{3}x\sqrt{ -g }\left( -\dfrac{1}{2}\nabla _{\mu}\phi \nabla ^{\mu}\phi-\dfrac{1}{2}\Delta(\Delta-2)\phi ^{2} \right)-\dfrac{\Delta}{2}\int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }\phi ^{2}
\end{align}$$

we restrict the conformal dimension to the range $\displaystyle{\dfrac{1}{2}<\Delta<1}$.

In global coordinates $\displaystyle{(t,r,\varphi)}$, we impose the off-shell boundary conditions

$$\begin{align}
g_{rr} & =\dfrac{1}{r^{2}}+o(r^{-3}), & g_{ra} & =o(r^{-1/2}), & g_{ab} & =r^{2}g^{(0)}_{ab}+o(r^{1}), \\
\phi & =r^{-\Delta}\psi(t,\varphi)+o(r^{-1})
\end{align}$$

taking a variation of the action, we obtain

$$\begin{align}
\delta S_{R} & =\int _{M_{R}}\mathrm{d}^{3}x\sqrt{ -g }(E^{\mu \nu}_{g}\delta g_{\mu \nu}+E_{\phi}\delta \phi) \\
 & +\int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }(F_{g}^{ab}\delta \gamma _{ab}+F_{\phi}\delta \phi)+\theta|_{\Sigma _{f,R}}-\theta|_{\Sigma _{i,R}}
\end{align}$$

where

$$\begin{align}
E^{\mu \nu}_{g} & =-\dfrac{1}{16\pi G}(G^{\mu \nu}-g^{\mu \nu}-8\pi GT^{\mu \nu}) \\
T_{\mu \nu} & =\nabla _{\mu}\phi \nabla _{\nu}\phi-\dfrac{1}{2}g_{\mu \nu}(\nabla _{\rho}\phi \nabla ^{\rho}\phi+\Delta(\Delta-2)\phi ^{2}) \\
E_{\phi} & =\nabla ^{2}\phi-\Delta(\Delta-2)\phi \\
F^{ab}_{g} & =\dfrac{1}{16\pi G}(K^{\Gamma}\gamma ^{ab}-K^{\Gamma ab}-\gamma ^{ab})-\dfrac{\Delta}{4}\gamma ^{ab}\phi ^{2} \\
F_{\phi} & =-n^{\mu}\nabla _{\mu}\phi-\Delta \phi \\
\theta|_{\Sigma _{R}} & =\dfrac{1}{16\pi G}\int _{\Sigma _{R}}\mathrm{d}^{2}x\sqrt{ \sigma }(K^{\Sigma ij}-K^{\Sigma}\sigma ^{ij})\delta \sigma _{ij} \\
 & +\dfrac{1}{8\pi G}\int _{\partial \Sigma _{R}}\mathrm{d}x\eta \delta \sqrt{ h }+\int _{\Sigma _{R}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi \delta \phi
\end{align}$$

from the bulk terms, we read off the bulk eoms

$$\begin{align}
G^{\mu \nu}-g^{\mu \nu} & =8\pi G T^{\mu \nu} \\
\nabla ^{2}\phi-\Delta(\Delta-2)\phi& =0
\end{align}$$

solutions of the scalar equation have the asymptotic form

$$\begin{align}
\phi & =r^{-\Delta}\psi+r^{-(2-\Delta)}\beta+o(r^{-(2-\Delta)})
\end{align}$$

uponing imposing the bulk eoms and taking the asymptotic limit, the boundary variation becines

$$\begin{align}
\delta S|_{\Gamma,\text{bulk eom}} & =(2-2\Delta)\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -g^{(0)} }\beta \delta \psi
\end{align}$$

since $\displaystyle{\psi}$ is allowed to vary freely, the boundary variation vanishes when $\displaystyle{\beta=0}$. The pre-phase space $\displaystyle{\mathcal{\tilde{P}}}$ is defined as the set of smooth field configurations $\displaystyle{(g_{\mu \nu},\phi)}$ satisfying the asymptotic conditions above, the bulk eoms, and the boundary equation $\displaystyle{\beta=0}$. In particular, when restricting to representatives

$$\begin{align}
g_{rr} & =\dfrac{1}{r^{2}}+o(r^{-3}), & g_{ra} & =\mathcal{O}(r^{-1}), & g_{ab} & =r^{2}g^{(0)}_{ab}+\mathcal{O}(r^{0})
\end{align}$$

the radial Einstein constraint fixes the leading correction to $\displaystyle{g_{rr}}$, as

$$\begin{align}
g_{rr} & =\dfrac{1}{r^{2}}-8\pi G\Delta \psi ^{2}r^{-2-2\Delta}+\mathcal{O}(r^{-4})
\end{align}$$

The presymplectic form is obtained by taking another variation of the presymplectic potential $\displaystyle{\theta}$, and restricting to the pre-phase space $\displaystyle{\mathcal{\tilde{P}}}$:

$$\begin{align}
\Omega|_{\Sigma _{\varepsilon}} & =\delta \theta|_{\Sigma _{\varepsilon},\tilde{\mathcal{P}}}
\end{align}$$

$$\begin{align}
\xi ^{r} & =-\dfrac{1}{2}D^{(0)}_{a}\xi ^{(0)a}+o(r^{0}), & \xi ^{a} & =\xi ^{(0)a}+o(r^{-3/2})
\end{align}$$

acting with $\displaystyle{X_{\xi}}$ on the action gives

$$\begin{align}
\delta _{\xi}S_{R} & =\alpha _{\xi}|_{\Sigma _{f,R}}-\alpha _{\xi}|_{\Sigma _{i,R}}+\beta _{\xi}|_{\Gamma _{R}}
\end{align}$$

where

$$\begin{align}
\alpha _{\xi}|_{\Sigma _{R}} & =-\int _{\Sigma _{R}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu}\mathcal{L}-\int _{\partial \Sigma _{R}}\mathrm{d}x\sqrt{ h }\tau ^{(1)}_{a}\mu _{\xi}^{a}+X_{\xi}\cdot \delta B_{\Sigma,R}, \\
\beta _{\xi}|_{\Gamma _{R}} & =\int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }n_{\mu}\xi ^{\mu}(\mathcal{V}_{g}+\mathcal{V}_{\phi})
\end{align}$$

here $\displaystyle{\mathcal{L}}$ is the minimally coupled bulk Lagrangian, and

$$\begin{align}
\mu _{\xi}^{a} & =\dfrac{1}{8\pi G}[(K^{\Gamma}-1)\xi _{\parallel}^{a}-D^{a}(n_{\mu}\xi ^{\mu})]-\dfrac{\Delta}{2}\phi ^{2}\xi _{\parallel}^{a} \\
B_{\Sigma,R} & =-\dfrac{1}{8\pi G}\int _{\Sigma _{R}}\mathrm{d}^{2}x\sqrt{ \sigma }K^{\Sigma}+\dfrac{1}{8\pi G}\int _{\partial \Sigma _{R}}\mathrm{d}x\sqrt{ h }\eta \\
\mathcal{V}_{g} & =\dfrac{1}{16\pi G}[\tilde{R}+(K^{\Gamma}-2)^{2}-(K^{\Gamma}_{ab}-\gamma _{ab})(K^{\Gamma ab}-\gamma ^{ab})] \\
\mathcal{V}_{\phi} & =-\dfrac{1}{2}(n^{\mu}\nabla _{\mu}\phi+\Delta \phi)^{2}-\dfrac{1}{2}D_{a}\phi D^{a}\phi-\dfrac{\Delta}{2}(K^{\Gamma}-2)\phi ^{2}
\end{align}$$

since

$$\begin{align}
\lim_{ R \to \infty }\beta _{\xi}|_{\Gamma _{R}} & =-\dfrac{1}{32\pi G}\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -g^{(0)} }D^{(0)}_{a}\xi ^{(0)a} R^{(0)}
\end{align}$$

does not depend on configurations, $\displaystyle{X_{\xi}}$ is indeed a symmetry when the regulator is removed, and the corresponding Noether charge is defined as

$$\begin{align}
H_{\xi}|_{\Sigma,\tilde{\mathcal{P}}} & =\lim_{ R \to \infty }(X_{\xi}\cdot \theta-\alpha _{\xi})|_{\Sigma _{R},\tilde{\mathcal{P}}} \\
 & =\lim_{ R \to \infty }\int _{\partial \Sigma _{R}}\mathrm{d}x\sqrt{ h }\tau ^{(1)a}\xi _{\parallel}^{b}\mathcal{T}_{ab} \\
\mathcal{T}_{ab} & =\dfrac{1}{8\pi G}(K^{\Gamma}\gamma _{ab}-K^{\Gamma}_{ab}-\gamma _{ab})-\dfrac{\Delta}{2}\phi ^{2}\gamma _{ab}
\end{align}$$

the Poisson bracket between $\displaystyle{H_{\xi}}$ and $\displaystyle{H_{\zeta}}$ is defined as

$$\begin{align}
\left\{H_{\xi},H_{\zeta}\right\}|_{\Sigma,\tilde{\mathcal{P}}} & =X_{\zeta}\cdot \delta H_{\xi}|_{\Sigma,\tilde{\mathcal{P}}} \\
& =H_{[\xi,\zeta]}+K(\xi,\zeta) \\
K(\xi,\zeta) & =\dfrac{1}{32\pi G}\lim_{ \varepsilon \to 0 } \int _{\partial \Sigma _{\varepsilon}}\mathrm{d}x\sqrt{ h }\tau ^{(1)a}\left(D^{(0)}_{b}\xi ^{(0)b}(D^{(0)}_{a}D^{(0)}_{c}\zeta ^{(0)c}+R^{(0)}\zeta ^{(0)}_{a})\right. \\
 & \qquad\qquad\qquad\qquad\qquad\qquad \left.-D^{(0)}_{b}\zeta ^{(0)b}(D^{(0)}_{a}D^{(0)}_{c}\xi ^{(0)c}+R^{(0)}\xi ^{(0)}_{a})\right)
\end{align}$$

## Finiteness

### Action

We first specify the boundary conditions

$$\begin{align}
g_{rr} & =\dfrac{1}{r^{2}}+o(r^{-3}), & g_{ra} & =o(r^{-1/2}), & g_{ab} & =r^{2}g^{(0)}_{ab}+o(r^{1}), \\
\phi & =r^{-\Delta}\psi(t,\varphi)+o(r^{-1})
\end{align}$$

and write

$$\begin{align}
S_{R} & =S_{R,1}+S_{R,2}+S_{R,3}+S_{R,4}+S_{R,5} \\
S_{R,1} & =\dfrac{1}{16\pi G}\int _{M_{R}}\mathrm{d}^{3}x\sqrt{ -g }(R+2)-\dfrac{1}{2}\int _{M_{R}}\mathrm{d}^{3}x\sqrt{ -g }\left(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\Delta(\Delta-2)\phi ^{2}\right) \\
S_{R,2} & =\dfrac{1}{8\pi G}\int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }\left( K^{\Gamma}-1-\dfrac{1}{2}\log R \tilde{R} \right)-\dfrac{\Delta}{2}\int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }\phi ^{2} \\
S_{R,3} & =-\dfrac{1}{8\pi G}\int _{\Sigma _{f,R}-\Sigma _{i,R}}\mathrm{d}^{2}x\sqrt{ \sigma }K^{\Sigma} \\
S_{R,4} & =\dfrac{1}{8\pi G}\int _{\partial \Sigma _{f,R}-\partial \Sigma _{i,R}}\mathrm{d}x\sqrt{ h }\log R K^{H} \\
S_{R,5} & =\dfrac{1}{8\pi G}\int _{\partial \Sigma _{f,R}-\partial \Sigma _{i,R}}\mathrm{d}x\sqrt{ h }\eta
\end{align}$$

where

$$\begin{align}
S_{R,1} & =\dfrac{1}{16\pi G}\int _{M_{r_{0}}}\mathrm{d}^{3}x\sqrt{ -g }(R+2)-\dfrac{1}{2}\int _{M_{r_{0}}}\mathrm{d}^{3}x\sqrt{ -g }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\Delta(\Delta-2)\phi ^{2}) \\
 & -\dfrac{1}{8\pi G}\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -g^{(0)} }\left( r^{2}-r^{4}(g_{rr}-r^{-2})-\dfrac{1}{2}g^{(0)ab}(g_{ab}-r^{2}g^{(0)}_{ab})\right. \\
 & \left.\left.+\dfrac{r}{2}g^{(0)ab}\partial _{r}(g_{ab}-r^{2}g^{(0)}_{ab})-rg^{(0)ab}D^{(0)}_{a}g_{rb}+r^{2}g^{(0)ab}g_{ra}g_{rb} \right)\right|_{r=r_{0}}^{r=R} \\
 & +\dfrac{1}{8\pi G}\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -g^{(0)} }\int _{r_{0}}^{R}\mathrm{d}rg^{(0)ab}D^{(0)}_{a}g_{rb}+\int _{\Gamma}\mathrm{d}^{2}x \int ^{R}_{r_{0}}\mathrm{d}r(o(r^{-2})+o(r^{-1})) \\
 & +\left.\dfrac{\Delta}{2}\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -g^{(0)} }(r^{2-2\Delta}\psi ^{2}+2r^{2-\Delta}\psi(\phi-r^{-\Delta}\psi))\right|^{r=R}_{r=r_{0}} \\
 & +\int _{\Gamma}\mathrm{d}^{2}x \int ^{R}_{r_{0}}\mathrm{d}r(o(r^{-1})+\mathcal{O}(r^{-1-2\Delta})+\mathcal{O}(r^{-2\Delta}))
\end{align}$$

$$\begin{align}
S_{R,2} & =\dfrac{1}{8\pi G}\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -g^{(0)} }\left( r^{2}-r^{4}(g_{rr}-r^{-2})-\dfrac{1}{2}g^{(0)ab}(g_{ab}-r^{2}g^{(0)}_{ab}) \right. \\
 & \left.\left.+\dfrac{r}{2}g^{(0)ab}\partial _{r}(g_{ab}-r^{2}g^{(0)}_{ab})-rg^{(0)ab}D^{(0)}_{a}g_{rb}+r^{2}g^{(0)ab}g_{ra}g_{rb}\right)\right|_{r=R}+o(R^{0}) \\
 & \left.-\dfrac{\Delta}{2}\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -g^{(0)} }(r^{2-2\Delta}\psi ^{2}+2r^{2-\Delta}\psi(\phi-r^{-\Delta}\psi))\right|_{r=R}+o(R^{0})+o(R^{1-2\Delta}) \\
 & -\dfrac{\log R}{16\pi G}\int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }\tilde{R}
\end{align}$$

$$\begin{align}
S_{R,3} & =-\dfrac{1}{8\pi G}\int _{\Sigma _{f,r_{0}}-\Sigma _{i,r_{0}}}\mathrm{d}^{2}x\sqrt{ \sigma }K^{\Sigma} \\
 & +\dfrac{1}{8\pi G}\int _{\partial \Sigma _{f,R}-\partial \Sigma _{i,R}}\mathrm{d}x\sqrt{ h^{(0)} }\int ^{R}_{r_{0}}\mathrm{d}ru^{(0)a}(2g_{ra}+r\partial _{r}g_{ra}) \\
 & +\int _{\partial \Sigma _{f,R}-\partial \Sigma _{i,R}}\mathrm{d}x \int ^{R}_{r_{0}}\mathrm{d}r(o(r^{-3/2})+o(r^{-2}))
\end{align}$$

$$\begin{align}
S_{R,4} & =\dfrac{\log R}{16\pi G}\int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }\tilde{R}
\end{align}$$

by Gauss-Bonnet

$$\begin{align}
S_{R,5} & =\dfrac{1}{8\pi G}\int _{\partial \Sigma _{f,R}-\partial \Sigma _{i,R}}\mathrm{d}\varphi ru^{(0)a}g_{ra}|_{r=R}+o(R^{-1/2})
\end{align}$$

then we can combine these terms to obtain the total renormalized action

$$\begin{align}
S_{\mathrm{ren}} & =\lim_{R\to\infty}\left(S_{R,1}+S_{R,2}+S_{R,3}+S_{R,4}+S_{R,5}\right), \\
 & =(\text{terms supporting on }M_{r_{0}}\text{ and }\Gamma _{r_{0}}) \\
 & +\lim_{ R \to \infty } \int _{\Gamma}\mathrm{d}^{2}x \int _{r_{0}}^{R}\mathrm{d}r(o(r^{-2})+o(r^{-1}))+\int _{\partial \Sigma _{f,R}-\partial \Sigma _{i,R}}\mathrm{d}\varphi \int _{r_{0}}^{R}\mathrm{d}r(o(r^{-3/2})+o(r^{-2}))+o(R^{0})+o(R^{-1}\log R) \\
 & +\int _{\Gamma}\mathrm{d}^{2}x \int _{r_{0}}^{R}(o(r^{-1})+o(r^{-1-2\Delta})+o(r^{-2\Delta}))+o(R^{0})+o(R^{1-2\Delta}) \\
 & =\text{finite}
\end{align}$$

### Variation of the Action

We take

$$\begin{align}
\delta g_{rr} & =o(r^{-3}), & \delta g_{ra} & =o(r^{-1/2}), & \delta g_{ab} & =o(r^{1}), \\
\delta \phi & =r^{-\Delta}\delta \psi+o(r^{-1})
\end{align}$$

then in the bulk

$$\begin{align}
\sqrt{ -g }E^{\mu \nu}_{g}\delta g_{\mu \nu} & =-\dfrac{\sqrt{ -g }}{16\pi G}(G^{\mu \nu}-g^{\mu \nu})\delta g_{\mu \nu}+\dfrac{\sqrt{ -g }}{2}T^{\mu \nu}\delta g_{\mu \nu} \\
 & =-\dfrac{1}{16\pi G}(o(r^{-1})+o(r^{-3/2})+o(r^{-1}))+o(r^{-2\Delta}) \\
\implies \lim_{ R \to \infty } \int _{M_{R}}\mathrm{d}^{3}x\sqrt{ -g }E^{\mu \nu}_{g}\delta g_{\mu \nu} & =(\text{finite}) \\
\sqrt{ -g }E_{\phi}\delta \phi & =\sqrt{ -g^{(0)} }\delta \psi \partial _{r}(r^{3-\Delta}\partial _{r}(\phi-r^{-\Delta}\psi)+\Delta r^{2-\Delta}(\phi-r^{-\Delta}\psi)) \\
 & +o(r^{-1})+\mathcal{O}(r^{-1-2\Delta})+o(r^{-2\Delta}) \\
\implies \int _{M_{R}}\mathrm{d}^{3}x\sqrt{ -g }E_{\phi}\delta \phi & =\int _{M_{r_{0}}}\mathrm{d}^{3}x\sqrt{ -g }E_{\phi}\delta \phi+\left.\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -g^{(0)} }\delta \psi(r^{3-\Delta}\partial _{r}\phi+\Delta r^{2-\Delta}\phi)\right|_{r_{0}}^{R} \\
 & +\int _{\Gamma}\mathrm{d}^{2}x \int ^{R}_{r_{0}}\mathrm{d}r(o(r^{-1})+\mathcal{O}(r^{-1-2\Delta})+o(r^{-2\Delta}))
\end{align}$$

only the upper endpoint can obstruct the limit. This term cancels against the scalar variation on $\displaystyle{\Gamma _{R}}$, as shown below

On $\displaystyle{\Gamma _{R}}$, we have

$$\begin{align}
\sqrt{ -\gamma }F^{ab}_{g}\delta \gamma _{ab} & =o(R^{0}) \\
\implies \lim_{ R \to \infty } \int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }F^{ab}_{g}\delta \gamma _{ab} & =0 \\
\sqrt{ -\gamma }F_{\phi}\delta \phi & =-\sqrt{ -g^{(0)} }\delta \psi\left.(r^{3-\Delta}\partial _{r}\phi+\Delta r^{2-\Delta}\phi)\right|_{r=R}+o(r^{1-2\Delta})
\end{align}$$

thus the boundary term on $\Gamma_R$ exactly cancels the upper-endpoint contribution from the bulk integral, leaving a finite bulk and timelike-boundary variation.

On $\displaystyle{\Sigma}$ and $\displaystyle{\partial \Sigma}$, we have

$$\begin{align}
\theta|_{\Sigma _{R}} & =\dfrac{1}{16\pi G}\int _{\Sigma _{r_{0}}}\mathrm{d}^{2}x\sqrt{ \sigma }(K^{\Sigma ij}-K^{\Sigma}\sigma ^{ij})\delta \sigma _{ij}+\int _{\Sigma _{r_{0}}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi \delta \phi \\
 & +\int _{\partial \Sigma}\mathrm{d}\varphi\left(\dfrac{1}{8\pi G}\eta \delta \sqrt{ h }+\dfrac{1}{16\pi G}\int _{r_{0}}^{R}\mathrm{d}r\sqrt{ \sigma }(K^{\Sigma ij}-K^{\Sigma}\sigma ^{ij})\delta \sigma _{ij}+\int _{r_{0}}^{R}\mathrm{d}r\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi \delta \phi\right) \\
 & =(\text{finite})+\int _{\partial \Sigma}\mathrm{d}\varphi\left(o(R^{-1/2})+\int _{r_{0}}^{R}\mathrm{d}r o(r^{-1})+\int _{r_{0}}^{R}\mathrm{d}r(o(r^{-1/2-2\Delta})+\mathcal{O}(r^{-1-2\Delta}))\right) \\
\implies \lim_{ R \to \infty } \theta|_{\Sigma _{R}} & =(\text{finite})
\end{align}$$

as for the symplectic form

$$\begin{align}
\omega|_{\Sigma _{R}} & =\delta \theta|_{\Sigma _{R}} \\
 & =\dfrac{1}{16\pi G}\int _{\Sigma _{r_{0}}}\mathrm{d}^{2}x\delta[\sqrt{ \sigma }(K^{\Sigma ij}-K^{\Sigma}\sigma ^{ij})]\wedge \delta \sigma _{ij}+\int _{\Sigma _{R_{0}}}\mathrm{d}^{2}x\delta(\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi)\wedge \delta \phi \\
 & +\int _{\partial \Sigma}\mathrm{d}\varphi\left(\dfrac{1}{8\pi G}\delta \eta \wedge \delta \sqrt{ h }+\dfrac{1}{16\pi G}\int _{r_{0}}^{R}\mathrm{d}r \delta[\sqrt{ \sigma }(K^{\Sigma ij}-K^{\Sigma}\sigma ^{ij})]\wedge \delta \sigma _{ij}+\int _{r_{0}}^{R}\mathrm{d}r \delta(\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi)\wedge \delta \phi \right) \\
 & =(\text{finite})+\int _{\partial \Sigma}\mathrm{d}\varphi\left(o(R^{-1/2})+\int _{r_{0}}^{R}\mathrm{d}ro(r^{-1})+\int _{r_{0}}^{R}\mathrm{d}r(o(r^{-1/2-2\Delta})+\mathcal{O}(r^{-1-2\Delta})) \right) \\
\implies \lim_{ R \to \infty } \omega|_{\Sigma _{R}} & =(\text{finite})
\end{align}$$

### Noether Charges

Consider

$$\begin{align}
\alpha _{\xi}|_{\Sigma _{R}} & =-\int _{\Sigma _{R}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu}\mathcal{L}-\int _{\partial \Sigma _{R}}\mathrm{d}x\sqrt{ h }\tau ^{(1)}_{a}\mu _{\xi}^{a}+X_{\xi}\cdot \delta B_{\Sigma,R}, \\
\mathcal{L} & =\dfrac{1}{16\pi G}(R+2)-\dfrac{1}{2}(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\Delta(\Delta-2)\phi ^{2}) \\
\mu _{\xi}^{a} & =\dfrac{1}{8\pi G}[(K^{\Gamma}-1)\xi _{\parallel}^{a}-D^{a}(n_{\mu}\xi ^{\mu})]-\dfrac{\Delta}{2}\phi ^{2}\xi _{\parallel}^{a} \\
B_{\Sigma,R} & =-\dfrac{1}{8\pi G}\int _{\Sigma _{R}}\mathrm{d}^{2}x\sqrt{ \sigma }K^{\Sigma}+\dfrac{1}{8\pi G}\int _{\partial \Sigma _{R}}\mathrm{d}x\sqrt{ h }\eta
\end{align}$$

which implies

$$\begin{align}
\alpha _{\xi}|_{\Sigma _{R}} & =-\int _{\Sigma _{r_{0}}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu}\mathcal{L}-\dfrac{1}{8\pi G}\int _{\Sigma _{r_{0}}}\mathrm{d}^{2}x\delta _{\xi}(\sqrt{ \sigma }K^{\Sigma}) \\
 & +\left.\int _{\partial \Sigma}\mathrm{d}\varphi\left(-\dfrac{1}{8\pi G}\sqrt{ h }\tau ^{(1)}_{a}[(K^{\Gamma}-1)\xi _{\parallel}^{a}-D^{a}(n_{\mu}\xi ^{\mu})]+\dfrac{\Delta}{2}\sqrt{ h }\phi ^{2}\tau ^{(1)}_{a}\xi _{\parallel}^{a}+\dfrac{1}{8\pi G}\delta _{\xi}(\sqrt{ h }\eta)\right)\right|_{r=R} \\
 & +\int _{\partial \Sigma}\mathrm{d}\varphi \int _{r}^{R}\mathrm{d}r\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu}\left(-\dfrac{1}{16\pi G}(R+2)+\dfrac{1}{2}(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\Delta(\Delta-2)\phi ^{2}) \right) \\
 & +\int _{\partial \Sigma}\mathrm{d}\varphi \int _{r}^{R}\mathrm{d}r \delta _{\xi}\left( -\dfrac{1}{8\pi G}\sqrt{ \sigma }K^{\Sigma} \right)
\end{align}$$

where

$$\begin{align}
-\dfrac{\sqrt{ h }}{8\pi G}\tau ^{(1)}_{a}(K^{\Gamma}-1)\xi _{\parallel}^{a} & =-\dfrac{\sqrt{ h }}{8\pi G}\tau ^{(1)}_{a}(K^{\Gamma}-1)\xi ^{(0)a}+\dfrac{R\sqrt{ h^{(0)} }}{16\pi G}D^{(0)}_{b}\xi ^{(0)b}u^{(0)a}g_{ra}+o(R^{-1/2}) \\
\dfrac{\sqrt{ h }}{8\pi G}\tau ^{(1)}_{a}D^{a}(n_{\mu}\xi ^{\mu}) & =-\dfrac{\sqrt{ h^{(0)} }}{16\pi G}u^{(0)a}D^{(0)}_{a}D^{(0)}_{b}\xi ^{(0)b}+o(R^{-1}) \\
\dfrac{\Delta}{2}\sqrt{ h }\phi ^{2}\tau ^{(1)}_{a}\xi _{\parallel}^{a} & =\dfrac{\Delta}{2} \sqrt{ h^{(0)} }u_{a}^{(0)}\xi ^{(0)a}R^{2}\phi ^{2}+o(R^{1-2\Delta}) \\
\dfrac{1}{8\pi G}\delta _{\xi}(\sqrt{ h }\eta) & =-\dfrac{R\sqrt{ h^{(0)} }}{8\pi G}u^{(0)a}\delta _{\xi}g_{ra}+o(R^{-1/2}) \\
\delta _{\xi}g_{ra} & =\xi ^{(0)b}D^{(0)}_{b}g_{ra}+g_{rb}D^{(0)}_{a}\xi ^{(0)b}-\dfrac{1}{2}D^{(0)}_{b}\xi ^{(0)b}\partial _{r}(rg_{ra})-\dfrac{1}{2r}D^{(0)}_{a}D^{(0)}_{b}\xi ^{(0)b}+o(r^{-2}) \\
-\dfrac{\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu}}{16\pi G}(R+2) & =\dfrac{1}{8\pi G}\partial _{r}(\sqrt{ h }\tau ^{(1)}_{a}(K^{\Gamma}-1)\xi ^{(0)a})-\dfrac{\sqrt{ h^{(0)} }u^{(0)}_{a}\xi ^{(0)a}}{8\pi G}D_{b}^{(0)}(g^{(0)bc}g_{rc}) \\
 & -\dfrac{\sqrt{ h^{(0)} }u^{(0)}_{a}\xi ^{(0)a}}{16\pi Gr}R+o(r^{-1})+o(r^{-2}) \\
\dfrac{\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu}}{2}(\nabla _{\nu}\phi \nabla ^{\nu}\phi+\Delta(\Delta-2)\phi ^{2}) & =-\dfrac{\Delta}{2}\sqrt{ h^{(0)} }u^{(0)}_{a}\xi ^{(0)a}\partial _{r}(r^{2}\phi ^{2})+o(r^{-1})+\mathcal{O}(r^{-1-2\Delta})+o(r^{-2\Delta}) \\
-\dfrac{1}{8\pi G}\delta _{\xi}(\sqrt{ \sigma }K^{\Sigma}) & =\dfrac{\sqrt{ h^{(0)} }u^{(0)a}}{8\pi G}(\partial _{r}(r \delta _{\xi}g_{ra})+\delta _{\xi}g_{ra})+o(r^{-3/2})+o(r^{-2})
\end{align}$$

then

$$\begin{align}
\alpha _{\xi}|_{\Sigma _{R}} & -\left(-\int _{\Sigma _{r_{0}}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu}\mathcal{L}-\dfrac{1}{8\pi G}\int _{\Sigma _{r_{0}}}\mathrm{d}^{2}x\delta _{\xi}(\sqrt{ \sigma }K^{\Sigma})\right) \\
 & =\left.\int _{\partial \Sigma}\mathrm{d}\varphi\left(-\dfrac{\sqrt{ h }}{8\pi G}\tau ^{(1)}_{a}(K^{\Gamma}-1)\xi ^{(0)a}+\dfrac{\Delta}{2}\sqrt{ h^{(0)} }u_{a}^{(0)}\xi ^{(0)a}r^{2}\phi ^{2}-\dfrac{r\sqrt{ h^{(0)} }}{8\pi G}u^{(0)a}\delta _{\xi}g_{ra}+\dfrac{r\sqrt{ h^{(0)} }}{16\pi G}D^{(0)}_{b}\xi ^{(0)b}u^{(0)a}g_{ra}  \right)\right|_{r=r_{0}} \\
 & -\dfrac{1}{16\pi G}\int _{\partial \Sigma}\mathrm{d}\varphi \sqrt{ h^{(0)} }u^{(0)a}D^{(0)}_{a}D^{(0)}_{b}\xi ^{(0)b}+\int _{\partial \Sigma}\mathrm{d}\varphi \int _{r_{0}}^{R}\mathrm{d}r\left(o(r^{-1})+\mathcal{O}(r^{-1-2\Delta})+o(r^{-2\Delta}) \right) \\
 & +o(R^{-1/2})+o(R^{-1})+o(R^{1-2\Delta}) \\
\implies \lim_{ R \to \infty } \alpha _{\xi}|_{\Sigma _{R}} & =(\text{finite})
\end{align}$$

consider

$$\begin{align}
\beta _{\xi}|_{\Gamma _{R}} & =\int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }n_{\mu}\xi ^{\mu}(\mathcal{V}_{g}+\mathcal{V}_{\phi}) \\
\mathcal{V}_{g} & =\dfrac{1}{16\pi G}[\tilde{R}+(K^{\Gamma}-2)^{2}-(K^{\Gamma}_{ab}-\gamma _{ab})(K^{\Gamma ab}-\gamma ^{ab})] \\
\mathcal{V}_{\phi} & =-\dfrac{1}{2}(n^{\mu}\nabla _{\mu}\phi+\Delta \phi)^{2}-\dfrac{1}{2}D_{a}\phi D^{a}\phi-\dfrac{\Delta}{2}(K^{\Gamma}-2)\phi ^{2}
\end{align}$$

where

$$\begin{align}
n_{\mu}\xi ^{\mu} & =-\dfrac{1}{2}D^{(0)}_{a}\xi ^{(0)a}+o(R^{-1}) \\
\sqrt{ -\gamma }\tilde{R} & =\sqrt{ -g^{(0)} }R^{(0)}+o(R^{-1}) \\
\sqrt{ -\gamma }[(K^{\Gamma}-2)^{2}-(K^{\Gamma}_{ab}-\gamma _{ab})(K^{\Gamma ab}-\gamma ^{ab})] & =o(R^{0}) \\
\sqrt{ -\gamma }(n^{\mu}\nabla _{\mu}\phi+\Delta \phi)^{2} & =o(R^{0}) \\
\sqrt{ -\gamma }D_{a}\phi D^{a}\phi & =\mathcal{O}(R^{-2\Delta}) \\
\sqrt{ -\gamma }(K^{\Gamma}-2)\phi ^{2} & =o(R^{1-2\Delta})
\end{align}$$

then

$$\begin{align}
\beta _{\xi}|_{\Gamma _{R}} & =-\dfrac{1}{32\pi G}\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -g^{(0)} }R^{(0)}D^{(0)}_{a}\xi ^{(0)a} \\
 & +\dfrac{1}{16\pi G}(o(R^{-1})+o(R^{0})+o(R^{0})+\mathcal{O}(R^{-2\Delta})+o(R^{1-2\Delta})) \\
\implies \lim_{ R \to \infty } \beta _{\xi}|_{\Gamma _{R}} & =-\dfrac{1}{32\pi G}\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -g^{(0)} }R^{(0)}D^{(0)}_{a}\xi ^{(0)a}
\end{align}$$

the Noether charge

$$\begin{align}
H_{\xi}|_{\Sigma,\tilde{\mathcal{P}}} & =\lim_{ R \to \infty } (X_{\xi}\cdot \theta-\alpha _{\xi})|_{\Sigma _{R},\tilde{\mathcal{P}}}
\end{align}$$

since $\displaystyle{X_{\xi}}$ preserves the asymptotic conditions, the same esitimates show that $\displaystyle{X_{\xi}\cdot \theta}$ has a finite limit, so $\displaystyle{H_{\xi}|_{\Sigma,\tilde{\mathcal{P}}}}$ is finite.

---

# Minimally Coupled Scalar with $\displaystyle{0<\Delta< \dfrac{1}{2}}$

suppose $\displaystyle{\Delta\neq \dfrac{1}{n},n\in \mathbb{N}}$. we take the following asymptotic boundary conditions

$$\begin{align}
g_{rr} & =\dfrac{1}{r^{2}}+\sum _{k\geqslant 1,k\Delta<1} A_{k}(\Delta)\kappa ^{2k}\psi ^{2k}r^{-2-2k\Delta}+\mathcal{O}(r^{-4}) \\
g_{ra} & =\mathcal{O}(r^{-1}),\quad g_{ab}=r^{2}g^{(0)}_{ab}+\mathcal{O}(r^{0}) \\
\phi & =\sum _{k\geqslant0,(k+1)\Delta<1}c_{k}(\Delta)\kappa ^{2k}\psi ^{2k+1}r^{-(2k+1)\Delta}+r^{-(2-\Delta)}\chi+o(r^{-(2-\Delta)}), & c_{0}=1
\end{align}$$

with $\displaystyle{\kappa ^{2}=8\pi G}$. here $\displaystyle{A_{k}(\Delta)}$ and $\displaystyle{c_{k}(\Delta)}$ are constants that depend only on $\displaystyle{\Delta}$, which will be determined later. for future convenience, we denote $\displaystyle{N=\lfloor 1/\Delta \rfloor}$.

the regulated action is chosen to be

$$\begin{align}
S_{R} & =\dfrac{1}{2\kappa ^{2}}\int _{M_{R}}\mathrm{d}^{3}x\sqrt{ -g }(R+2)+\dfrac{1}{\kappa ^{2}}\int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }(K^{\Gamma}-1) \\
 & -\dfrac{1}{\kappa ^{2}}\int _{\Sigma _{f,R}-\Sigma _{i,R}}\mathrm{d}^{2}x\sqrt{ \sigma }K^{\Sigma}+\dfrac{1}{8\pi G}\int _{\partial \Sigma _{f,R}-\partial \Sigma _{i,R}}\mathrm{d}x\sqrt{ h }\eta \\
 & +\int _{M_{R}}\mathrm{d}^{3}x\sqrt{ -g }\left(-\dfrac{1}{2} \nabla _{\mu}\phi \nabla ^{\mu}\phi-\dfrac{1}{2}\Delta(\Delta-2)\phi ^{2}\right) \\
 & -\dfrac{1}{\kappa ^{2}}\int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }U_{N}(\kappa \phi) \\
U_{N}(x) & =\sum ^{N}_{k=1}a_{k}(\Delta)x^{2k}
\end{align}$$

---

# Non-Minimally Coupled Scalar

## Setup

Consider the following regulated action

$$\begin{align}
S_{\varepsilon} & =\dfrac{1}{16\pi G}\int _{M_{\varepsilon}}\mathrm{d}^{3}x\sqrt{ -g }\left(R+2\right)+\dfrac{1}{8\pi G}\int _{\Gamma _{\varepsilon}}\mathrm{d}^{2}x\sqrt{ -\gamma }\left( K^{\Gamma}-1+\dfrac{1}{2}\log \varepsilon \tilde{R} \right) \\
 & -\dfrac{1}{8\pi G}\int _{\Sigma _{f,\varepsilon}-\Sigma _{i,\varepsilon}}\mathrm{d}^{2}x\sqrt{ \sigma }K^{\Sigma}+\dfrac{1}{8\pi G}\int _{\partial \Sigma _{f,\varepsilon}-\partial \Sigma _{i,\varepsilon}}\mathrm{d}x\sqrt{ h }(\eta-\log \varepsilon K^{H}) \\
 & +\int _{M_{\varepsilon}}\mathrm{d}^{3}x\sqrt{ -g }\left(-\dfrac{1}{2}\nabla _{\mu}\phi \nabla ^{\mu}\phi-\dfrac{1}{2}\Delta(\Delta-2)\phi ^{2}+\lambda(R+6)\phi ^{2}\right) \\
 & +\int _{\Gamma _{\varepsilon}}\mathrm{d}^{2}x\sqrt{ -\gamma }\left(-\dfrac{\Delta}{2}\phi ^{2}+2\lambda(K^{\Gamma}-2)\phi ^{2}\right)-2\lambda\int _{\Sigma _{f,\varepsilon}-\Sigma _{i,\varepsilon}}\mathrm{d}^{2}x\sqrt{ \sigma }\phi ^{2}K^{\Sigma}+2\lambda\int _{\partial \Sigma _{f,\varepsilon}-\partial \Sigma _{i,\varepsilon}}\mathrm{d}x\sqrt{ h }\phi ^{2}\eta
\end{align}$$

with $\displaystyle{0<\Delta<1,\lambda=-\dfrac{\Delta}{4(2\Delta+1)}}$. Here $\displaystyle{M_{\varepsilon}}$ is the bulk region, whose boundary $\displaystyle{\partial M_{\varepsilon}}$ consists of three pieces: the timelike boundary $\displaystyle{\Gamma _{\varepsilon}}$, the final spacelike surface $\displaystyle{\Sigma _{f,\varepsilon}}$ and the initial spacelike surface $\displaystyle{\Sigma _{i,\varepsilon}}$. The outward-pointing unit normal to $\displaystyle{\Gamma _{\varepsilon}}$ is denoted by $\displaystyle{n}$, and its induced metric on $\displaystyle{\Gamma _{\varepsilon}}$ is $\displaystyle{\gamma _{\mu \nu}=g_{\mu \nu}-n_{\mu}n_{\nu}}$. Similarly for $\displaystyle{\Sigma _{\varepsilon}}$, the future-pointing unit normal is denoted by $\displaystyle{\tau}$, with induced metric $\displaystyle{\sigma _{\mu \nu}=g_{\mu \nu}+\tau _{\mu}\tau _{\nu}}$.

The intersection $\displaystyle{\partial \Sigma _{\varepsilon}=\Gamma _{\varepsilon}\cap \Sigma _{\varepsilon}}$ has the angle $\displaystyle{\eta=\mathrm{arsinh}(\tau \cdot n)}$. Viewed as a curve inside $\displaystyle{\Gamma _{\varepsilon}}$, it has a future-pointing unit normal $\displaystyle{\tau ^{(1)}}$ and induced metric $\displaystyle{h_{\mu \nu}=\gamma _{\mu \nu}+\tau ^{(1)}_{\mu}\tau ^{(1)}_{\nu}}$. Viewed instead as a curve inside $\displaystyle{\Sigma _{\varepsilon}}$, it has an outward-pointing unit normal $\displaystyle{n^{(1)}}$. These normals are related by

$$\begin{align}
\tau ^{(1)} & =\dfrac{\tau-\sinh \eta n}{\cosh \eta}, & n^{(1)} & =\dfrac{n+\sinh \eta \tau}{\cosh \eta}
\end{align}$$

the induced metrics obtained from the two descriptions agree:

$$\begin{align}
h & =\gamma+\tau ^{(1)}\tau ^{(1)}=\sigma-n^{(1)}n^{(1)}
\end{align}$$

taking the global coordinates $\displaystyle{(t,r,\varphi)}$, the asymptotic boundary conditions are chosen to be

$$\begin{align}
g_{rr} & =\dfrac{1}{r^{2}}+\mathcal{O}(r^{-4}), & g_{ra} & =\mathcal{O}(r^{-1}), & g_{ab} & =r^{2}g^{(0)}_{ab}+\mathcal{O}(r^{0}), & a\in(t,\varphi) \\
\phi & =r^{\Delta}\psi(t,\varphi)+o(r^{-1})
\end{align}$$

here the $\displaystyle{\mathcal{O}}$ and $\displaystyle{o}$ symbols mean that if functions $\displaystyle{f(r)=\mathcal{O}(r^{p})}$ and $\displaystyle{g(r)=o(r^{q})}$, we have

$$\begin{align}
\lim_{ r \to \infty }r^{-p}f(r) & <\infty, \\
\lim_{ r \to \infty }r^{-q}g(r) & =0
\end{align}$$

and their derivatives satisfy

$$\begin{align}
\partial _{r}^{m}f(r) & =\begin{cases}
\mathcal{O}(r^{p-m}), & p\leqslant m \\
o(r^{p-m}), & p\geqslant m
\end{cases} \\
\partial _{r}^{m}g(r) & =o(r^{q-m})
\end{align}$$

allowed variations satisfy

$$\begin{align}
\delta g_{rr} & =\mathcal{O}(r^{-4}), & \delta g_{ra} & =\mathcal{O}(r^{-1}), & \delta g_{ab} & =\mathcal{O}(r^{0}), & \delta g^{(0)}_{ab} & =0 \\
\delta \phi & =r^{-\Delta}\delta \psi+o(r^{-1})
\end{align}$$

with the asymptotic boundary conditions specified above, the off-shell action is finite and the variational principle is well defined.

## CPS Analysis

Take a variation of the action, we obtain

$$\begin{align}
\delta S_{\varepsilon} & =\int _{M_{\varepsilon}}\mathrm{d}^{3}x\sqrt{ -g }\left(E_{g}^{\mu \nu}\delta g_{\mu \nu}+E_{\phi}\delta \phi\right)+\int _{\Gamma _{\varepsilon}}\mathrm{d}^{2}x\sqrt{ -\gamma }(F_{g}^{ab}\delta \gamma _{ab}+F_{\phi}\delta \phi)+\theta|_{\Sigma _{f,\varepsilon}}-\theta|_{\Sigma _{i,\varepsilon}}
\end{align}$$

where

$$\begin{align}
E_{g}^{\mu \nu} & =-\dfrac{1}{16\pi G}\left( G^{\mu \nu}-g^{\mu \nu}-8\pi GT^{\mu \nu} \right), \\
T_{\mu \nu} & =\nabla _{\mu}\phi \nabla _{\nu}\phi-\dfrac{1}{2}g_{\mu \nu}(\nabla _{\rho}\phi \nabla ^{\rho}\phi+\Delta(\Delta-2)\phi ^{2})+2\lambda(\nabla _{\mu}\nabla _{\nu}(\phi ^{2})-g_{\mu \nu}\nabla _{\rho}\nabla ^{\rho}(\phi ^{2})-G_{\mu \nu}\phi ^{2}+3g_{\mu \nu}\phi ^{2}) \\
E_{\phi} & =\nabla ^{2}\phi-\Delta(\Delta-2)\phi+2\lambda(R+6)\phi, \\
F^{ab}_{g} & =\dfrac{1}{16\pi G}(K^{\Gamma}\gamma ^{ab}-K^{\Gamma ab}-\gamma ^{ab})-\dfrac{\Delta}{4}\phi ^{2}\gamma ^{ab}+\lambda(\phi ^{2}(K^{\Gamma}\gamma ^{ab}-K^{\Gamma ab})+\gamma ^{ab}n^{\mu}\nabla _{\mu}(\phi ^{2})-2\phi ^{2}\gamma ^{ab}), \\
F_{\phi} & =-n^{\mu}\nabla _{\mu}\phi-\Delta \phi+4\lambda(K^{\Gamma}-2)\phi, \\
\theta|_{\Sigma _{\varepsilon}} & =\dfrac{1}{16\pi G}\int _{\Sigma _{\varepsilon}}\mathrm{d}^{2}x\sqrt{ \sigma }(K^{\Sigma ij}-K^{\Sigma}\sigma ^{ij})\delta \sigma _{ij}+\dfrac{1}{8\pi G}\int _{\partial \Sigma _{\varepsilon}}\mathrm{d}x\eta \delta \sqrt{ h } \\
 & +\int _{\Sigma _{\varepsilon}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi \delta \phi \\
 & +\lambda \int _{\Sigma _{\varepsilon}}\mathrm{d}^{2}x\sqrt{ \sigma }((\phi ^{2}(K^{\Sigma ij}-K^{\Sigma}\sigma ^{ij})-\sigma ^{ij}\tau ^{\mu}\nabla _{\mu}(\phi ^{2}))\delta \sigma _{ij}-4K^{\Sigma}\phi \delta \phi) \\
 & +2\lambda \int _{\partial \Sigma _{\varepsilon}}\mathrm{d}x\eta \delta(\sqrt{ h }\phi ^{2})
\end{align}$$

from the bulk terms, we read off the bulk eoms

$$\begin{align}
G^{\mu \nu}-g^{\mu \nu} & =8\pi T^{\mu \nu} \\
\nabla ^{2}\phi-\Delta(\Delta-2)\phi+2\lambda(R+6)\phi & =0
\end{align}$$

solutions of the scalar equation have the asymptotic form

$$\begin{align}
\phi & =r^{-\Delta}\psi+r^{-(2-\Delta)}\beta+\dots
\end{align}$$

uponing imposing the bulk eoms and taking the asymptotic limit, the boundary variation becines

$$\begin{align}
\delta S|_{\Gamma,\text{bulk eom}} & =(2-2\Delta)\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -g^{(0)} }\beta \delta \psi
\end{align}$$

since $\displaystyle{\psi}$ is allowed to vary freely, the boundary variation vanishes when $\displaystyle{\beta=0}$. The pre-phase space $\displaystyle{\mathcal{\tilde{P}}}$ is defined as the set of smooth field configurations $\displaystyle{(g_{\mu \nu},\phi)}$ satisfying the asymptotic conditions above, the bulk eoms, and the boundary equation $\displaystyle{\beta=0}$. The presymplectic form is obtained by taking another variation of the presymplectic potential $\displaystyle{\theta}$, and restricting to the pre-phase space $\displaystyle{\mathcal{\tilde{P}}}$:

$$\begin{align}
\Omega|_{\Sigma _{\varepsilon}} & =\delta \theta|_{\Sigma _{\varepsilon},\tilde{\mathcal{P}}}
\end{align}$$

## Asymptotic Symmetries

Asymptotic Killing vectors $\displaystyle{\xi}$ generate diffeomorphisms that preserve the asymptotic conditions. Write

$$\begin{align}
\xi ^{r} & =-r\sigma+\mathcal{O}(r^{-1}), & \xi ^{a} & =\xi ^{(0)a}+\mathcal{O}(r^{-2})
\end{align}$$

and package the transformations induced by asymptotic Killing vectors into a vector on the configuration space

$$\begin{align}
X_{\xi} & =\int \mathrm{d}^{3}x\left(\mathcal{L}_{\xi}g_{\mu \nu} \dfrac{\delta}{\delta g_{\mu \nu}}+\mathcal{L}_{\xi}\phi \dfrac{\delta}{\delta \phi}\right).
\end{align}$$

For simplicity, we write $\displaystyle{\delta _{\xi}(\cdot)=X_{\xi}\cdot \delta(\cdot)}$. For fixed $\displaystyle{g^{(0)}_{ab}}$, we require

$$\begin{align}
0=\delta _{\xi} g^{(0)}_{ab} & =\mathcal{L}_{\xi ^{(0)}}g^{(0)}_{ab}-2\sigma g^{(0)}_{ab} \\
\implies D^{(0)}_{a}\xi ^{(0)}_{b}+D^{(0)}_{b}\xi ^{(0)}_{a} & =2\sigma g^{(0)}_{ab},\quad \sigma=\dfrac{1}{2}D^{(0)}_{a}\xi ^{(0)a}
\end{align}$$

which means $\displaystyle{\xi ^{(0)}}$ is the conformal Killing vector for $\displaystyle{g^{(0)}}$. In addition,

$$\begin{align}
\delta _{\xi}\phi\implies & \delta _{\xi}\psi =\xi ^{(0)a}\partial _{a}\psi+\Delta \sigma \psi \\
 & \delta _{\xi}\beta=\xi ^{(0)a}\partial _{a}\beta+(2-\Delta)\sigma \beta \approx 0
\end{align}$$

act with $\displaystyle{X_{\xi}}$ on the action, we obtain

$$\begin{align}
\delta _{\xi}S_{\varepsilon} & =\alpha _{\xi}|_{\Sigma _{f,\varepsilon}}-\alpha _{\xi}|_{\Sigma _{i,\varepsilon}}+\beta _{\xi}|_{\Gamma _{\varepsilon}}
\end{align}$$

where

$$\begin{align}
\alpha _{\xi}|_{\Sigma _{\varepsilon}} & =-\int _{\Sigma _{\varepsilon}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu}\mathcal{L}-\int _{\partial \Sigma _{\varepsilon}}\mathrm{d}x\sqrt{ h }\tau ^{(1)}_{a}\mu ^{a} _{\xi}+X_{\xi}\cdot \delta B_{\Sigma,\varepsilon} \\
\beta _{\xi}|_{\Gamma _{\varepsilon}} & =\int _{\Gamma _{\varepsilon}}\mathrm{d}^{2}x\sqrt{ -\gamma }n_{\mu}\xi ^{\mu}(\mathcal{V}_{g}+\mathcal{V}_{\phi}) \\
\mathcal{L} & =\dfrac{1}{16\pi G}(R+2)-\dfrac{1}{2}(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\Delta(\Delta-2)\phi ^{2})
\end{align}$$

$\displaystyle{\mathcal{L}}$ is the bulk Lagrangian density and

$$\begin{align}
\mu ^{a} _{\xi} & =\dfrac{1}{8\pi G}((K^{\Gamma}-1)\xi _{\parallel}^{a}-D^{a}(n_{\mu}\xi ^{\mu}))-\dfrac{\Delta}{2}\phi ^{2}\xi _{\parallel}^{a}+2\lambda((K^{\Gamma}-2)\phi ^{2}\xi _{\parallel}^{a}-\phi ^{2}D^{a}(n_{\mu}\xi ^{\mu})+n_{\mu}\xi ^{\mu}D^{a}(\phi ^{2})) \\
B_{\Sigma,\varepsilon} & =-\int _{\Sigma _{\varepsilon}}\mathrm{d}^{2}x\sqrt{ \sigma }\left(\dfrac{1}{8\pi G}+2\lambda \phi ^{2}\right)K^{\Sigma}+\int _{\partial \Sigma _{\varepsilon}}\mathrm{d}x\sqrt{ h }\left( \dfrac{1}{8\pi G}+2\lambda \phi ^{2} \right)\eta \\
\mathcal{V}_{g} & =\dfrac{1}{16\pi G}(\tilde{R}^{\Gamma}+(K^{\Gamma}-2)^{2}-(K^{\Gamma}_{ab}-\gamma _{ab})(K^{\Gamma ab}-\gamma ^{ab})) \\
\mathcal{V}_{\phi} & =-\dfrac{1}{2}(n^{\mu}\nabla _{\mu}\phi+\Delta \phi)^{2}-\dfrac{1}{2}D_{a}\phi D^{a}\phi-\dfrac{\Delta}{2}(K^{\Gamma}-2)\phi ^{2} \\
 & +\lambda((K^{\Gamma})^{2}-K^{\Gamma}_{ab}K^{\Gamma ab}+\tilde{R}^{\Gamma}+6-4K^{\Gamma})\phi ^{2}+2\lambda(K^{\Gamma}-2)n^{\mu}\nabla _{\mu}(\phi ^{2})-2\lambda D_{a}D^{a}(\phi ^{2})
\end{align}$$

when the regulator is removed, the boundary term $\displaystyle{\beta _{\xi}|_{\Gamma}}$ is then indepent from configurations

$$\begin{align}
\lim_{ \varepsilon \to 0 } \beta _{\xi}|_{\Gamma _{\varepsilon}} & =-\dfrac{1}{16\pi G}\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -g^{(0)} }\sigma R^{(0)}
\end{align}$$

and therefore $\displaystyle{X_{\xi}}$ is indeed a symmetry of the action. The corresponding Noether charge is then defined as

$$\begin{align}
H_{\xi}|_{\Sigma _{\varepsilon},\tilde{\mathcal{P}}} & =(X_{\xi}\cdot \theta-\alpha _{\xi})|_{\Sigma _{\varepsilon},\tilde{\mathcal{P}}} \\
 & =\int _{\partial \Sigma _{\varepsilon}}\mathrm{d}x\sqrt{ h }\tau _{a}^{(1)}\xi _{\parallel b}\left(\dfrac{1}{8\pi G}(K^{\Gamma}\gamma ^{ab}-K^{\Gamma ab}-\gamma ^{ab})-\dfrac{\Delta}{2}\phi ^{2}\gamma ^{ab}\right. \\
 & \left.\left.+2\lambda(\phi ^{2}(K^{\Gamma}\gamma ^{ab}-K^{\Gamma ab})+(n^{\mu}\nabla _{\mu}(\phi ^{2})-2\phi ^{2})\gamma ^{ab})\right)\right|_{\tilde{\mathcal{P}}} \\
\implies H_{\xi}|_{\Sigma,\tilde{\mathcal{P}}} & =\lim_{ \varepsilon \to 0 } H_{\xi}|_{\Sigma _{\varepsilon},\tilde{\mathcal{P}}} \\
 & =\lim_{ \varepsilon \to 0 } \int _{\partial \Sigma _{\varepsilon}}\mathrm{d}x\sqrt{ h }\tau ^{(1)a}\xi _{\parallel}^{b}\mathcal{T}_{ab} \\
\mathcal{T}_{ab} & =\dfrac{1}{8\pi G}\left(K^{\Gamma}\gamma_{ab}-K^{\Gamma}_{ab}-\gamma_{ab}\right)
\end{align}$$

the Poisson bracket between two Noether charges corresponding to asymptotic Killing vectors $\displaystyle{\xi}$ and $\displaystyle{\zeta}$ is defined as

$$\begin{align}
\left\{H_{\xi},H_{\zeta}\right\}|_{\Sigma,\tilde{\mathcal{P}}} & =X_{\zeta}\cdot \delta H_{\xi}|_{\Sigma,\tilde{\mathcal{P}}} \\
 & =H_{[\xi,\zeta]}+K(\xi,\zeta) \\
K(\xi,\zeta) & =\dfrac{1}{32\pi G}\lim_{ \varepsilon \to 0 } \int _{\partial \Sigma _{\varepsilon}}\mathrm{d}x\sqrt{ h }\tau ^{(1)a}\left(D^{(0)}_{b}\xi ^{(0)b}(D^{(0)}_{a}D^{(0)}_{c}\zeta ^{(0)c}+R^{(0)}\zeta ^{(0)}_{a})\right. \\
 & \qquad\qquad\qquad\qquad\qquad\qquad \left.-D^{(0)}_{b}\zeta ^{(0)b}(D^{(0)}_{a}D^{(0)}_{c}\xi ^{(0)c}+R^{(0)}\xi ^{(0)}_{a})\right)
\end{align}$$

## Finiteness

In this subsection we will explicitly check that every quantities appearing in the CPS formalism is well-defined and finite when the regulator is removed.
