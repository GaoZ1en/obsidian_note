## conformally coupled scalar

the action is

$$\tag{1.1}
\begin{align}
S=-\frac{1}{2}\int \mathrm{d}^{d}x\sqrt{ -g }\left( \nabla _{\mu}\phi \nabla ^{\mu}\phi+\frac{d-3}{4(d-2)}R\phi ^{2} \right)
\end{align}
$$

the variation of the action is

$$\tag{1.2}
\begin{align}
\delta S & =-\int _{M}\mathrm{d}^{d}x\sqrt{ -g }\left( \nabla _{\mu}\phi \nabla ^{\mu}\delta \phi+\frac{d-3}{4(d-2)}R\phi \delta \phi \right) \\
 & =\int _{M}\mathrm{d}^{d}x\sqrt{ -g }\left( \nabla ^{2}\phi-\frac{d-3}{4(d-2)}R\phi \right)\delta \phi \\
 & +\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi \delta \phi
\end{align}
$$

act the conformal transformation

$$\tag{1.3}
\begin{align}
X_{\xi} & =\int \mathrm{d}^{d}x\left(\xi ^{\nu}\nabla _{\nu}\phi+\frac{d-2}{2d}\nabla _{\mu}\xi ^{\mu}\phi\right) \frac{\delta}{\delta \phi}
\end{align}
$$

on the action, we have

$$\tag{1.4}
\begin{align}
X_{\xi}\cdot \delta S & =\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu}\left( \frac{1}{2}\xi ^{\mu}\nabla _{\nu}\phi \nabla ^{\nu}\phi+\frac{d-2}{8(d-1)}R\xi ^{\mu}\phi ^{2}+\frac{d-2}{4d}\nabla ^{\mu}(\nabla _{\nu}\xi ^{\nu})\phi ^{2} \right)
\end{align}
$$

noted that we have

$$\tag{1.5}
\begin{align}
\frac{d-2}{d}\nabla _{\mu}(\nabla _{\nu}\xi ^{\nu})+\nabla ^{\nu}\nabla _{\nu}\xi _{\mu}+R_{\mu \nu}\xi ^{\nu}=0
\end{align}
$$

then

$$\tag{1.6}
\begin{align}
\alpha _{\xi} & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu}\left(\frac{1}{2}\xi ^{\mu}\nabla _{\nu}\phi \nabla ^{\nu}\phi+\frac{d-2}{8(d-1)}R\xi ^{\mu}\phi ^{2}+\frac{1}{4}\phi ^{2}(-\nabla ^{2}\xi ^{\mu}-R^{\mu \nu}\xi _{\nu})\right)
\end{align}
$$

$$\tag{.}
\begin{align}
H_{\xi} & =\int _{\Sigma}\mathrm{d}^{d}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}T'_{\mu \nu} \\
T'_{\mu \nu} & =
\end{align}
$$

$$\tag{.}
\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{d}x\sqrt{ -g }\left( \nabla _{\mu}\phi \nabla ^{\mu}\phi+\frac{d-3}{4(d-2)}R\phi ^{2} \right) \\
T^{\mu \nu}=\frac{-2}{\sqrt{ -g }} \frac{\delta S}{\delta g_{\mu \nu}} & =-2\left(-\frac{1}{2}\left( \nabla ^{\mu}\phi \nabla ^{\nu}\phi-\frac{d-3}{4(d-2)}R^{\mu \nu}\phi ^{2} \right)+\frac{1}{4}g^{\mu \nu}\left( \nabla _{\rho}\phi \nabla ^{\rho}\phi+\frac{d-3}{4(d-2)}R\phi ^{2} \right)\right) \\ \\
 & =\nabla ^{\mu}\phi \nabla ^{\nu}\phi-\frac{1}{2}g^{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}\phi-\frac{d-3}{4(d-2)}\phi ^{2}\left( R^{\mu \nu}+\frac{1}{2} Rg^{\mu \nu}\right)
\end{align}
$$
NO YOU!!!
### another consideration

in this subsection we will take $\displaystyle{g_{\mu \nu}}$ as a dynamical field, and the variation of the action is

$$
\begin{align}
S=-\frac{1}{2}\int \left( \nabla _{\mu}\phi \nabla ^{\mu}\phi+\frac{d-2}{4(d-1)}R\phi ^{2} \right)\varepsilon
\end{align}
$$

$$
\begin{align}
\delta S & =-\int _{M}\left( \nabla _{\mu}\phi \nabla ^{\mu}\delta \phi+\frac{d-2}{4(d-1)}R\phi \delta \phi \right)\varepsilon \\
 & -\frac{1}{2}\int _{M}\left( \nabla ^{\mu}\phi \nabla ^{\nu}\phi \delta g_{\mu \nu}+\frac{d-2}{4(d-1)}(-R^{\mu \nu}\delta g_{\mu \nu}+\nabla ^{\mu}\nabla ^{\nu}\delta g_{\mu \nu}-g^{\mu \nu}\nabla  ^{2}\delta g_{\mu \nu})\phi ^{2} \right)\varepsilon \\
 & -\frac{1}{2}\int _{M}\left( \nabla _{\rho}\phi \nabla ^{\rho}\phi+\frac{d-2}{4(d-1)}R\phi ^{2} \right) \frac{1}{2}g^{\mu \nu}\delta g_{\mu \nu}\varepsilon \\
 & =\int _{M}\left( \nabla ^{2}\phi-\frac{d-2}{4(d-1)}R\phi \right)\varepsilon \delta \phi+\int _{\Sigma _{f}-\Sigma _{i}}\varepsilon _{\Sigma}\tau ^{\mu}\nabla _{\mu}\phi \delta \phi \\
 & -\frac{1}{2}\int _{M}\left( \nabla ^{\mu}\phi \nabla ^{\nu}\phi-\frac{1}{2}g^{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}\phi-\frac{d-2}{4(d-1)}G^{\mu \nu}\phi ^{2} +\frac{d-2}{4(d-1)}(\nabla ^{\mu}\nabla ^{\nu}\phi ^{2}-g^{\mu \nu}\nabla ^{2}\phi ^{2})\right)\delta g_{\mu \nu}\varepsilon \\
 & =\int _{M}\left( E_{\phi}\delta \phi-\frac{1}{2}T^{\mu \nu}\delta g_{\mu \nu} \right)\varepsilon+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}}
\end{align}
$$

where

$$\tag{.}
\begin{align}
E_{\phi} & =\nabla ^{2}\phi-\frac{d-2}{4(d-1)}R\phi \\
T^{\mu \nu} & =\nabla ^{\mu}\phi \nabla ^{\nu}\phi-\frac{1}{2}g^{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}\phi-\frac{d-2}{4(d-1)}G^{\mu \nu}\phi ^{2} +\frac{d-2}{4(d-1)}(\nabla ^{\mu}\nabla ^{\nu}\phi ^{2}-g^{\mu \nu}\nabla ^{2}\phi ^{2}) \\
\theta|_{\Sigma} & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\nabla _{\mu}\phi \delta \phi
\end{align}
$$

and we noted that the stress tensor satisfies

$$\tag{.}
\begin{align}
g^{\mu \nu}T_{\mu \nu} & =0 \\
\nabla ^{\mu}T_{\mu \nu} & =0
\end{align}
$$

on-shell. then consider the following symmetry(?)

$$\tag{.}
\begin{align}
X_{\xi} & =\int \mathrm{d}^{d}x\left( \mathcal{L}_{\xi}g_{\mu \nu} \frac{\delta}{\delta g_{\mu \nu}}+\mathcal{L}_{\xi}\phi \frac{\delta}{\delta \phi} \right)
\end{align}
$$

where $\displaystyle{\xi _{\mu}}$ is a conformal Killing vector, i.e., satisfies

$$\tag{.}
\begin{align}
\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}-\frac{2}{d}g_{\mu \nu}\nabla _{\rho}\xi ^{\rho} & =0
\end{align}
$$

and then we have

$$\tag{.}
\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\int _{M}
\end{align}
$$

### a possible 

for a general theory consists of background metric $\displaystyle{g_{\mu \nu}}$ and dynamical fields $\displaystyle{\phi}$, we write down the action

$$\
\begin{align}
S & = \int _{M}L[g_{\mu \nu},\phi]
\end{align}
$$

the variation of the action is

$$
\begin{align}
\delta S & =\int _{M}\left( E_{\phi}\delta \phi-\frac{1}{2}T^{\mu \nu}\delta g_{\mu \nu} \right)\varepsilon+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}}
\end{align}
$$

where $\displaystyle{E_{\phi}}$ is the EoM for $\displaystyle{\phi}$, and $\displaystyle{T^{\mu \nu}=\frac{-2}{\sqrt{ -g }} \frac{\delta S}{\delta g_{\mu \nu}}}$ is the stress tensor for $\displaystyle{\phi}$, satisfying

$$
\begin{align}
\nabla _{\mu}T^{\mu \nu} & =0
\end{align}
$$

(assume there is no anomaly). consider the following symmetry

$$
\begin{align}
X_{\xi}=\int \mathrm{d}^{d}x\left( \mathcal{L}_{\xi}g_{\mu \nu} \frac{\delta}{\delta g_{\mu \nu}}+\mathcal{L}_{\xi}\phi  \frac{\delta}{\delta \phi} \right)
\end{align}
$$

(whatever the $\displaystyle{\xi _{\mu}}$ is Killing vector or conformal Killing vector), we have

$$\tag{.}
\begin{align}
X_{\xi}\cdot \delta S & =\int _{M}\left(E_{\phi}(X_{\xi}\cdot \delta \phi)-\frac{1}{2}T^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu})\right)\varepsilon+X_{\xi}\cdot \theta|_{\Sigma _{f}}-X_{\xi}\cdot \theta|_{\Sigma _{i}} \\
 & =\int _{M}E_{\phi}(X_{\xi}\cdot \delta \phi)\varepsilon+\left(X_{\xi}\cdot \theta-\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}T_{\mu \nu}\right){\Huge|}_{\Sigma _{f}-\Sigma _{i}}
\end{align}
$$

and finally we have

$$
\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi}=\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}T_{\mu \nu}
\end{align}
$$

then we need to argue that $\displaystyle{Y_{\xi}\cdot \delta S=X_{\xi}\cdot \delta S}$. for simplicity, we will only consider $\displaystyle{\phi}$ is a scalar. we have

$$\tag{.}
\begin{align}
Y_{\xi} & =\int \mathrm{d}^{d}x\left( \xi ^{\mu}\nabla _{\mu}\phi+\frac{d-2}{2d}\nabla _{\mu}\xi ^{\mu}\phi \right)\frac{\delta}{\delta \phi}
\end{align}
$$

## (conformal) Killing vector

consider a Killing vector $\displaystyle{\xi _{\mu}}$ which satisfies

$$\tag{2.1}
\begin{align}
\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu} & =0
\end{align}
$$

then we have

$$\tag{2.2}
\begin{align}
\nabla _{\mu}\nabla _{\nu}\xi _{\rho}=R_{\rho \nu \mu \sigma}\xi ^{\sigma}
\end{align}
$$

and if $\displaystyle{\xi _{\mu}}$ is a conformal Killing vector, which satisfies the conformal Killing equation

$$\tag{2.3}
\begin{align}
\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}-\frac{2}{d}g_{\mu \nu}\nabla _{\rho}\xi ^{\rho}=0
\end{align}
$$

then we have a similar equation

$$\tag{2.4}
\begin{align}
\nabla _{\mu}\nabla _{\nu}\xi _{\rho} & = R_{\rho \nu \mu \sigma}\xi ^{\sigma}+\frac{1}{d}[g_{\mu \rho}\nabla _{\nu}\nabla _{\sigma}\xi ^{\sigma}+g_{\nu \rho}\nabla _{\mu}\nabla _{\sigma}\xi ^{\sigma}-g_{\mu \nu}\nabla _{\rho}\nabla _{\sigma}\xi ^{\sigma}]
\end{align}
$$
