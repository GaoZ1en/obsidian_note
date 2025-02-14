in this file we will perform the same calculation on topological massive gravity.

## action

topological massive gravity is a 3-dimensional theory of gravity with negative cosmological constant and gravitational Chern-Simons term

$$\tag{1.1}
\begin{align}
S & =\frac{1}{16\pi G}\int_{M}(R-2\Lambda)\cdot \frac{1}{3!}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}}+\frac{1}{16\pi G\mu}S_{CS} \\
S_{CS} & =\int_{M}\mathrm{Tr}\left( \Gamma \wedge \mathrm{d}\Gamma+\frac{2}{3}\Gamma \wedge \Gamma \wedge \Gamma \right) \\
 & =\int_{M}\left(\Gamma^{\mu}_{ \nu}\wedge \mathrm{d}\Gamma^{\nu}_{ \mu}+\frac{2}{3}\Gamma^{\mu}_{ \nu}\wedge \Gamma^{\nu}_{ \rho}\wedge \Gamma^{\rho}_{ \mu}\right) \\
 & =\int_{M}\left(\Gamma^{\mu}_{ \nu \sigma}\partial_{\lambda}\Gamma^{\nu}_{ \mu \tau}+\frac{2}{3}\Gamma^{\mu}_{ \nu \sigma}\Gamma^{\nu}_{ \rho \lambda }\Gamma^{\rho}_{ \mu \tau}\right)\mathrm{d}x^{\sigma}\wedge \mathrm{d}x^{\lambda}\wedge \mathrm{d}x^{\tau} \\
\Gamma^{\mu}_{ \nu} & =\Gamma^{\mu}_{ \nu \rho}\mathrm{d}x^{\rho}
\end{align}
$$

where $\displaystyle{\Gamma^{a}_{ b}}$ is the connection 1-form, and $\displaystyle{e^{a}_{\mu}}$ is the vielbein. then we will perform the standard procedure of covariant phase space formalism

$$\tag{1.2}
\begin{align}
\delta S & =\int_{M} \frac{1}{16\pi G}\left( -R^{\mu \nu}+\frac{1}{2}Rg^{\mu \nu}-\Lambda g^{\mu \nu} \right)\delta g_{\mu \nu}\cdot \frac{1}{3!}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
 & +\int_{\partial M} \frac{1}{16\pi G}(g^{\rho \mu}\nabla^{\nu}\delta g_{\mu \nu}-g^{\mu \nu}\nabla^{\rho}\delta g_{\mu \nu})\cdot \frac{1}{2!}\varepsilon_{\rho \mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
 & +\frac{1}{16\pi G\mu}\delta S_{SC}
\end{align}
$$

$$\tag{1.3}
\begin{align}
\delta S_{SC} & =\int_{M}\mathrm{Tr}\left(\delta \Gamma \wedge \mathrm{d}\Gamma+\Gamma \wedge \mathrm{d}\delta \Gamma+2\Gamma \wedge \Gamma \wedge \delta\Gamma\right) \\
 & =\int_{M}\mathrm{Tr}\left(\mathrm{d}(\Gamma \wedge \delta \Gamma)-\mathrm{d}\Gamma\wedge \delta \Gamma+\delta \Gamma \wedge \mathrm{d}\Gamma+2\Gamma \wedge \Gamma \wedge \delta \Gamma\right) \\
 & =\int_{\partial M}\mathrm{Tr}(\Gamma \wedge \delta \Gamma)+2\int_{M}\mathrm{Tr}(\delta \Gamma \wedge(\mathrm{d}\Gamma+\Gamma \wedge \Gamma)) \\
 & =\int_{\partial M}\mathrm{Tr}(\Gamma \wedge \delta \Gamma)-2\int_{M}\mathrm{Tr}(\Omega \wedge \delta \Gamma)
\end{align}
$$

$$\tag{1.4}
\begin{align}
\int_{M}\mathrm{Tr}(\Omega \wedge \delta \Gamma) & =\int_{M}\Omega^{\mu}_{\nu}\wedge \delta \Gamma^{\nu}_{\mu} \\
 & =\int_{M} \frac{1}{2!}R^{\mu}_{~\nu \rho \sigma}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}\wedge \delta \Gamma^{\nu}_{\mu \lambda}\mathrm{d}x^{\lambda} \\
 & =\int_{M}R^{\mu}_{~\nu \rho \sigma}\delta \Gamma^{\nu}_{\mu \lambda}\cdot \frac{1}{2!}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}\wedge \mathrm{d}x^{\lambda}
\end{align}
$$

where $\displaystyle{\Omega=\mathrm{d}\Gamma+\Gamma \wedge \Gamma}$ is the curvature 2-form with matrix element $\displaystyle{\Omega^{\mu}_{~\nu}=\frac{1}{2!}R^{\mu}_{~\nu \rho \sigma}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}}$, which satisfies the following Bianchi identities

$$\tag{1.5}
\begin{align}
\mathrm{d}\Omega=\Omega \wedge \Gamma-\Gamma \wedge \Omega
\end{align}
$$
## vielbein and spin connection

in order to define action of fermions in curved spacetime, we need to introduce vielbein and spin connection

in quantum field theory the fermions lie in a four dimensional representation of the Lorentz group $\displaystyle{\mathrm{SO}(3,1)}$ give by the gamma matrices which span a Clifford algebra with the following anticommuting rules as

$$\tag{?.1}
\begin{align}
\left\{\gamma^{a},\gamma^{b}\right\}=2\eta^{ab}
\end{align}
$$

one defines the gamma matrices in the curved spacetime as

$$\tag{?.2}
\begin{align}
\gamma^{\mu}(x) & =\gamma^{a}e^{\mu}_{a}
\end{align}
$$

where $\displaystyle{\gamma^{\mu}}$ depend on the coordinates, $\displaystyle{\mu}$ is the index in the spacetime and $\displaystyle{a}$ is the index in the flat spacetime. $\displaystyle{e^{\mu}_{a}}$ are called vielbein/tetrad and satisfy the relation

$$\tag{?.3}
\begin{align}
g^{\mu \nu}=e^{\mu}_{a}e^{\nu}_{b}\eta^{ab}
\end{align}
$$

and then $\displaystyle{\gamma^{\mu}}$ satisfy a generalized Clifford algebra with anticommuting relation

$$\tag{?.4}
\begin{align}
\left\{\gamma^{\mu},\gamma^{\nu}\right\}=2g^{\mu \nu}
\end{align}
$$

one requires further that the operations of parallel transport and projection on flat and curved spacetime indices commute, one arrives (just like the Christoffel symbol in the ordinary approach of general relativity)

$$\tag{?.5}
\begin{align}
D_{\mu}e^{a}_{\nu}=\partial_{\mu}e^{a}_{\nu}-\Gamma^{\rho}_{\mu \nu}e^{a}_{\rho}-\omega^{a}_{\mu b}e^{b}_{\nu}=0
\end{align}
$$

where $\displaystyle{\omega^{a}_{~\mu b}}$ is the spin connection

$$\tag{?.6}
\begin{align}
\omega^{a~b}_{~\mu}=e^{a}_{\nu}\Gamma^{\nu}_{~\mu \sigma}e^{\sigma b}+e^{a}_{\nu}\partial_{\mu}e^{\nu b}
\end{align}
$$

then the covariant derivative of a Dirac fermion in the curved spacetime is written as

$$\tag{?.7}
\begin{align}
D_{\mu}\Psi=\partial_{\mu}\Psi-\frac{i}{4}\omega^{a~b}_{~\mu}\sigma_{ab}\Psi
\end{align}
$$

where $\displaystyle{\sigma^{ab}=\frac{i}{2}[\gamma^{a},\gamma^{b}]}$. 