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

$$\tag{.}
\begin{align}
S_{\mathrm{CS}} & =\int _{M}\left( \Gamma \wedge \mathrm{d}\Gamma+\frac{2}{3}\Gamma \wedge \Gamma \wedge \Gamma \right) \\
 & =\int _{M}\left( \Gamma \wedge \Omega-\frac{1}{3}\Gamma \wedge \Gamma \wedge \Gamma \right) \\
\delta S_{\mathrm{CS}} & =\int _{M}(\delta \Gamma \wedge \Omega+\Gamma \wedge \delta \Omega-\delta \Gamma \wedge \Gamma \wedge \Gamma) \\
 & =\int _{M}(-\mathrm{d}(\Gamma \wedge \delta \Gamma)+2\delta \Gamma \wedge \Omega) 
\end{align}
$$

where

$$\tag{.}
\begin{align}
2\delta \Gamma \wedge \Omega & = \delta \Gamma ^{\mu}_{\nu \rho}R^{\nu}_{\mu \sigma \lambda}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}\wedge \mathrm{d}x^{\lambda} \\
 & =\frac{1}{2}(\nabla _{\nu}\delta g_{\mu \rho}+\nabla _{\rho}\delta g_{\mu \nu}-\nabla _{\mu}\delta g_{\nu \rho})R^{\nu \mu}_{~~~~\sigma \lambda}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}\wedge \mathrm{d}x^{\lambda} \\ \\
 & =\frac{1}{2}(\nabla _{\nu}(R^{\nu \mu}_{~~~~\sigma \lambda}\delta g_{\mu \rho})+\nabla _{\rho}(R^{\nu \mu}_{~~~~\sigma \lambda}\delta g_{\mu \nu})-\nabla _{\mu}(R^{\nu \mu}_{~~~~\sigma \lambda}\delta g_{\nu \rho}))\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}\wedge \mathrm{d}x^{\lambda} \\
 & -\frac{1}{2}(\delta g_{\mu \rho}\nabla _{\nu}R^{\nu \mu}_{~~~~\sigma \lambda}+\delta g_{\mu \nu}\nabla _{\rho}R^{\nu \mu}_{~~~~\sigma \lambda}-\delta g_{\nu \rho}\nabla _{\mu}R^{\nu \mu}_{~~~~\sigma \lambda})\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}\wedge \mathrm{d}x^{\lambda} \\ \\
 & =\nabla _{\nu}(R^{\nu \mu}_{~~~~\sigma \lambda}\delta g_{\mu \rho})\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}\wedge \mathrm{d}x^{\lambda}+\delta g_{\nu \rho}\nabla _{\mu}R^{\nu \mu}_{~~~~\sigma \lambda}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}\wedge \mathrm{d}x^{la}\ \\
 & =\nabla _{\nu}(R^{\nu \mu}_{~~~~\sigma \lambda}\delta g_{\mu \rho}\varepsilon ^{\rho \sigma \lambda})\cdot \frac{1}{3!}\varepsilon _{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
 & +C^{\mu \nu}\delta g_{\mu \nu}\cdot \frac{1}{3!}\varepsilon _{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}}
\end{align}
$$

where

$$\tag{.}
\begin{align}
C^{\mu \nu}  & = \varepsilon ^{\mu\sigma \lambda}\nabla _{\rho}R^{\nu \rho}_{~~~~\sigma \lambda} \\
 & =\varepsilon ^{\mu \sigma \lambda}\nabla _{\sigma}\left( R^{\mu}_{\lambda}-\frac{1}{4}\delta ^{\mu}_{\lambda}R \right)
\end{align}
$$

is the Cotton tensor. we have used that

$$\tag{.}
\begin{align}
\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}\wedge \mathrm{d}x^{\lambda}=\frac{1}{3!}\varepsilon ^{\rho \sigma \lambda}\varepsilon _{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}}
\end{align}
$$

where $\displaystyle{\Omega=\mathrm{d}\Gamma+\Gamma \wedge \Gamma}$ is the curvature 2-form with matrix element $\displaystyle{\Omega^{\mu}_{~\nu}=\frac{1}{2!}R^{\mu}_{~\nu \rho \sigma}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}}$, which satisfies the following Bianchi identities

$$\tag{1.5}
\begin{align}
\mathrm{d}\Omega=\Omega \wedge \Gamma-\Gamma \wedge \Omega
\end{align}
$$

the symplectic potential is

$$\tag{.}
\begin{align}
\Theta _{\mathrm{gCS}} & =-\mathrm{Tr}(\Gamma \wedge \delta \Gamma)+\delta g_{\mu \rho}R^{\nu \mu}_{~~~~\sigma \lambda}\varepsilon ^{\rho \sigma \lambda}\cdot \frac{1}{2!}\varepsilon _{\nu \mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
 & =-\mathrm{Tr}(\Gamma \wedge \delta \Gamma)+2\varepsilon ^{\rho \sigma \nu}S^{\mu}_{\sigma}\delta g_{\mu \nu}\cdot \frac{1}{2!}\varepsilon _{\rho \mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
 & =\Gamma ^{\mu}_{\nu \lambda}\delta \Gamma ^{\lambda}_{\mu \sigma}\varepsilon ^{\rho \sigma \nu}\cdot \frac{1}{2!}\varepsilon _{\rho \mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}+2\varepsilon ^{\rho \sigma \nu}S^{\mu}_{\sigma}\delta g_{\mu \nu}\cdot \frac{1}{2!}\varepsilon _{\rho \mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
 & =2\varepsilon ^{\rho \sigma \nu}\left( S^{\mu}_{\sigma}\delta g_{\mu \nu}+\frac{1}{2}\Gamma ^{\mu}_{\nu \lambda}\delta \Gamma ^{\lambda}_{\mu \sigma} \right)\cdot \frac{1}{2!}\varepsilon _{\rho \mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}
\end{align}
$$

$$\tag{.}
\begin{align}
R^{\nu \mu}_{~~~~\sigma \lambda} & =(\delta ^{\nu}_{\sigma}R^{\mu}_{\lambda}+\delta ^{\mu}_{\lambda}R^{\nu}_{\sigma}-\delta ^{\nu}_{\lambda}R^{\mu}_{\sigma}-\delta ^{\mu}_{\sigma}R^{\nu}_{\rho})-\frac{1}{2}R(\delta ^{\nu}_{\sigma}\delta ^{\mu}_{\lambda}-\delta ^{\mu}_{\sigma}\delta ^{\nu}_{\lambda})C \\
\delta g_{\mu \rho}R^{\nu \mu}_{~~~~\sigma \lambda}\varepsilon ^{\rho \sigma \lambda} & =\delta g_{\mu \rho}\left((\delta ^{\nu}_{\sigma}R^{\mu}_{\lambda}+\delta ^{\mu}_{\lambda}R^{\nu}_{\sigma}-\delta ^{\nu}_{\lambda}R^{\mu}_{\sigma}-\delta ^{\mu}_{\sigma}R^{\nu}_{\rho})-\frac{1}{2}R(\delta ^{\nu}_{\sigma}\delta ^{\mu}_{\lambda}-\delta ^{\mu}_{\sigma}\delta ^{\nu}_{\lambda}) \right)\varepsilon ^{\rho \sigma \lambda} \\
 & =2\varepsilon ^{\rho \nu \lambda}S^{\mu}_{\lambda}\delta g_{\mu \rho}\\
\end{align}
$$

where $\displaystyle{S^{\mu}_{\lambda}=R^{\mu}_{\lambda}-\frac{1}{4}R\delta ^{\mu}_{\lambda}}$ is the Schouten tensor.

## diffeomorphism of the action

$$\tag{.}
\begin{align}
\xi \cdot \Omega \wedge \Omega=0 \\
\xi ^{\rho}R^{\mu}_{\nu\rho \sigma}\mathrm{d}x^{\sigma}\wedge \frac{1}{2!}R^{\nu}_{\lambda \alpha \beta}\mathrm{d}x^{\alpha}\wedge \mathrm{d}x^{\beta} & =\xi ^{\rho}R^{\mu}_{\nu \rho \sigma}R^{\nu}_{\lambda \alpha \beta}\varepsilon ^{\sigma \alpha \beta} \frac{1}{3!}\varepsilon _{\mu_{0}\mu_{1}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
 & =\varepsilon ^{\sigma \alpha \beta}\xi ^{\rho}R^{\mu}_{\nu \rho \sigma}R^{\nu}_{\lambda \alpha \beta}\cdot \frac{1}{3!}\varepsilon _{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
 & =\varepsilon ^{\sigma \alpha \beta}\xi ^{\rho}\left( \delta ^{\mu}_{\rho}R_{\nu \sigma}+g_{\nu \sigma}R^{\mu}_{\rho}-\delta ^{\mu}_{\sigma}R_{\nu \rho}-g_{\nu \rho}R^{\mu}_{\sigma}-\frac{R}{2}(\delta ^{\mu}_{\rho}g_{\nu \sigma}-\delta ^{\mu}_{\sigma}g_{\nu \rho}) \right)\left( \delta ^{\nu}_{\alpha}R_{\lambda \beta}+g_{\lambda \beta}R^{\nu}_{\alpha}-\delta ^{\nu}_{\beta}R_{\lambda \alpha}-g_{\lambda \alpha}R^{\nu}_{\beta}-\frac{R}{2}(\delta ^{\nu}_{\alpha}g_{\lambda \beta}-\delta ^{\nu}_{\beta}g_{\lambda \alpha}) \right)\cdot \frac{1}{3!}\varepsilon _{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
 & =
\end{align}
$$

some characteristics class theory?

$$\tag{.}
\begin{align}
R^{\mu \nu}_{~~~~\rho \sigma} & =(\delta ^{\mu}_{\rho}R^{\nu}_{\sigma}+\delta ^{\nu}_{\sigma}R^{\mu}_{\rho}-\delta ^{\mu}_{\sigma}R^{\nu}_{\rho}-\delta ^{\nu}_{\rho}R^{\mu}_{\sigma})-\frac{R}{2}(\delta ^{\mu}_{\rho}\delta ^{\nu}_{\sigma}-\delta ^{\mu}_{\sigma}\delta ^{\nu}_{\rho}) \\
R^{\mu}_{~\nu \rho \sigma} & =(\delta ^{\mu}_{\rho}R_{\nu \sigma}+g_{\nu \sigma}R^{\mu}_{\rho}-\delta ^{\mu}_{\sigma}R_{\nu \rho}-g_{\nu \rho}R^{\mu}_{\sigma})-\frac{R}{2}(\delta ^{\mu}_{\rho}g_{\nu \sigma}-\delta ^{\mu}_{\sigma}g_{\nu \rho}) \\
R^{\nu}_{\lambda \alpha \beta} & =(\delta ^{\nu}_{\alpha}R_{\lambda \beta}+g_{\lambda \beta}R^{\nu}_{\alpha}-\delta ^{\nu}_{\beta}R_{\lambda \alpha}-g_{\lambda \alpha}R^{\nu}_{\beta})-\frac{R}{2}(\delta ^{\nu}_{\alpha}g_{\lambda \beta}-\delta ^{\nu}_{\beta}g_{\lambda \alpha})
\end{align}
$$

$$\tag{.}
\begin{align}
S & =\int _{M}\left( \Gamma \wedge \Omega-\frac{1}{3}\Gamma \wedge \Gamma \wedge \Gamma \right)
\end{align}
$$

$$\tag{.}
\begin{align}
X_{\xi}\cdot \delta S & =\int _{M}\varepsilon ^{\rho \sigma \lambda}\left( (X_{\xi}\cdot \delta \Gamma ^{\mu}_{\nu \rho})\partial _{\sigma}\Gamma ^{\nu}_{\mu \lambda}+\frac{1}{2}\Gamma ^{\mu}_{\nu \rho}(X_{\xi}\cdot \delta R^{\nu}_{\mu \sigma \lambda}) \right)\cdot \frac{1}{3!}\varepsilon _{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}}
\end{align}
$$

$$\tag{.}
\begin{align}
 & \varepsilon ^{\rho \sigma \lambda}\left( (X_{\xi}\cdot \delta \Gamma ^{\mu}_{\nu \rho})\partial _{\sigma}\Gamma ^{\nu}_{\mu \lambda}+\frac{1}{2}\Gamma ^{\mu}_{\nu \rho}(X_{\xi}\cdot \delta R^{\nu}_{\mu \sigma \lambda}) \right) \\
= & \Gamma ^{\beta \gamma \eta}\Gamma _{\gamma}^{~\kappa \lambda}\varepsilon _{\eta \kappa}^{~~~~\mu}(R_{\alpha \beta \lambda u}-R_{\alpha \mu \beta \lambda})\xi ^{\alpha}-\frac{1}{2}\Gamma ^{\beta \gamma \eta}\varepsilon _{\gamma}^{~\kappa \lambda}\xi ^{\alpha}\nabla _{\alpha}R_{\beta \eta \kappa \lambda}+\frac{1}{2}\Gamma ^{\gamma~\eta}_{~\beta}\varepsilon _{\eta}^{~\kappa \lambda}R_{\alpha \gamma \kappa \lambda}\nabla^{\beta}\xi ^{\alpha} \\
 & -\frac{1}{2}\Gamma _{\beta}^{~\gamma \eta}\varepsilon _{\gamma}^{~\kappa \lambda}R_{\alpha \eta \kappa \lambda}\nabla ^{\beta}\xi ^{\alpha}+\Gamma ^{\gamma \eta \kappa}\varepsilon _{\beta \eta}^{~~~\lambda}R_{\alpha \lambda \gamma \kappa}\nabla^{\beta}\xi ^{\alpha}-\Gamma _{\gamma}^{~\eta \kappa}\Gamma _{\eta \alpha}^{~~~\lambda}\varepsilon _{\beta \kappa \lambda}\nabla ^{\gamma}\nabla ^{\beta}\xi ^{\alpha} \\
 & -\Gamma _{\beta}^{~\eta \kappa}\Gamma _{\eta \alpha}^{~~~\lambda}\varepsilon _{\gamma \kappa \lambda}\nabla ^{\gamma}\nabla ^{\beta}\xi ^{\alpha}-\frac{1}{2}\varepsilon _{\gamma \eta \kappa}\nabla ^{\kappa}\Gamma _{\beta \alpha}^{~~~\eta}\nabla ^{\gamma}\nabla ^{\beta}\xi ^{\alpha}+\frac{1}{2}\varepsilon _{\gamma \kappa}^{~~~\lambda}R_{\alpha \beta \eta \lambda}\xi ^{\alpha}\nabla ^{\kappa}\Gamma ^{\beta \gamma \eta} \\
 & -\frac{1}{2}\varepsilon _{\gamma \kappa}^{~~~\lambda}R_{\alpha \lambda \beta \eta}\xi ^{\alpha}\nabla ^{\kappa}\Gamma ^{\beta \gamma \eta}-\frac{1}{2}\varepsilon _{\beta \eta \kappa}\nabla ^{\kappa}\Gamma _{\gamma \alpha}^{~~~\eta}\nabla ^{\gamma}\nabla ^{\beta}\xi ^{\alpha}
\end{align}
$$
## asymptotic behavior

in this section we will compute the asymptotic behavior of $\displaystyle{\mathbf{E}^{\mu \nu}\delta g_{\mu \nu}}$ and $\displaystyle{\Theta}$

$$\tag{.}
\begin{align}
\mathbf{E}^{\mu \nu}\delta g_{\mu \nu} & =\frac{1}{16\pi G\mu}C^{\mu \nu}\delta g_{\mu \nu}\cdot \frac{1}{3!}\varepsilon _{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge\mathrm{d}x^{\mu_{2}} \\
32\pi G\mu \Theta & =-\Gamma ^{\mu}_{\nu \rho}\delta \Gamma ^{\nu}_{\mu \sigma}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}+\delta g_{\mu \rho}R^{\nu \mu}_{~~~~\sigma \lambda}\varepsilon ^{\rho \sigma \lambda}\cdot \frac{1}{2!}\varepsilon _{\nu \mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} 
\end{align}
$$

$$\tag{.}
\begin{align}
C^{\mu \nu} & =\varepsilon ^{\mu \rho \sigma}\nabla _{\rho}S^{\nu}_{\sigma} \\
S^{\mu}_{\nu} & =R^{\mu}_{\nu}-\frac{1}{4}\delta ^{\mu}_{\nu}R
\end{align}
$$

$$\tag{.}
\begin{align}
-\Gamma ^{\mu}_{z\nu}\delta \Gamma ^{\nu}_{a\mu}\mathrm{d}z\wedge \mathrm{d}x^{a} & =-\Gamma ^{z}_{zz}\delta \Gamma ^{z}_{za}\mathrm{d}z\wedge \mathrm{d}x^{a}-\Gamma ^{z}_{zb}\delta \Gamma ^{b}_{za}\mathrm{d}z\wedge \mathrm{d}x^{a}-\Gamma ^{b}_{zz}\delta \Gamma ^{z}_{za}\mathrm{d}z\wedge \mathrm{d}x^{a}-\Gamma ^{b}_{zc}\delta \Gamma ^{c}_{ab}\mathrm{d}z\wedge \mathrm{d}x^{a} \\
 & =g^{(0)bc}g_{zb}\delta g^{(0)}_{ac}+\frac{1}{2z}g^{(0)bc}D_{a}^{(0)}\delta g_{bc}^{(0)}+\mathcal{O}(z) \\
-\Gamma ^{\mu}_{a\nu}\delta \Gamma ^{\nu}_{b\mu}\mathrm{d}x^{a}\wedge \mathrm{d}x^{b} & =-\Gamma ^{z}_{za}\delta \Gamma ^{z}_{zb}\mathrm{d}x^{a}\wedge \mathrm{d}x^{b}-\Gamma ^{z}_{ac}\delta \Gamma ^{c}_{zb}\mathrm{d}x^{a}\wedge \mathrm{d}x^{b}-\Gamma ^{c}_{za}\delta \Gamma ^{z}_{bc}\mathrm{d}x^{a}\wedge \mathrm{d}x^{b}-\Gamma ^{c}_{ad}\delta \Gamma ^{d}_{bc}\mathrm{d}x^{a}\wedge \mathrm{d}x^{b} \\
 & =\mathcal{O}(z^0)
\end{align}
$$

possible boundary term

