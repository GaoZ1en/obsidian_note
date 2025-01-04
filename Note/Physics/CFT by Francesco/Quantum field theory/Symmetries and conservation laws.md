the former two subsections can be perfectly replaced by covariant phase formalism, but we still present the contents

## continuous symmetry transformations

## infinitesimal transformations and Noether's theorem

the generator of transition is simply

$$\tag{1.4.1}
\begin{align}
P_{\mu} & =-i\partial_{\mu}
\end{align}
$$

and the generators of Lorentz transformations are

$$\tag{1.4.2}
\begin{align}
L^{\mu\nu} & =i(x^{\mu}\partial^{\nu}-x^{\nu}\partial^{\mu})+S^{\mu \nu}
\end{align}
$$
## transformation of the correlation functions

consider the general correlation function

$$\tag{1.4.3}
\begin{align}
\langle \Phi(x_{1})\dots \Phi(x_{n})\rangle & =\frac{1}{Z}\int \mathcal{D}\Phi \Phi(x_{1})\dots \Phi(x_{n})e^{-S[\Phi]}
\end{align}
$$

where $\displaystyle{Z}$ is the vacuum functional. the consequence of the symmetry of the action and of the invariance of the functional integration measure (non-invariance causes quantum anomaly) under the transformation $\displaystyle{\Phi(x)\to \Phi'(x')=\mathcal{F}(\Phi(x))}$ is the following identity

$$\tag{1.4.4}
\begin{align}
\langle\Phi(x')\dots \Phi(x_{n}')\rangle & =\frac{1}{Z}\int \mathcal{D}\Phi \Phi(x_{1}')\dots \Phi(x_{n}')e^{-S[\Phi]} \\
 & =\frac{1}{Z}\int \mathcal{D}\Phi'\Phi'(x_{1}')\dots \Phi(x_{n}')e^{-S[\Phi']} \\
 & =\frac{1}{Z}\int \mathcal{D}\Phi'\mathcal{F}(\Phi(x_{1}))\dots \mathcal{F}(\Phi(x_{n}))e^{-S[\Phi]} \\
 & =\frac{1}{Z}\int \mathcal{D}\Phi\mathcal{F}(\Phi(x_{1}))\dots \mathcal{F}(\Phi(x_{n}))e^{-S[\Phi]} \\
 & =\langle\mathcal{F}(\Phi(x_{1}))\dots \mathcal{F}(\Phi(x_{n}))
\end{align}
$$

for instance
1. under translation $\displaystyle{x'=x+a}$, (1.4.4) has the following consequence on correlation functions

$$\tag{1.4.5}
\begin{align}
\langle\Phi(x_{1}+a)\dots \Phi(x_{n}+a)\rangle & =\langle\Phi(x_{1})\dots \Phi(x_{n})\rangle
\end{align}
$$

2. under Lorentz transformation $\displaystyle{x'^{\mu}=\Lambda^{\mu}_{~\nu}x^{\nu}}$

$$\tag{1.4.6}
\begin{align}
\langle\Phi(\Lambda^{\mu}_{\nu}x_{1}^{\nu})\dots \Phi(\Lambda^{\mu}_{\nu}x_{n}^{\nu})\rangle & =\langle\Phi(x_{1}^{\mu})\dots \Phi(x_{n}^{\mu})\rangle
\end{align}
$$

3. under scale $\displaystyle{x'=\lambda x}$, suppose the field $\displaystyle{\phi_{i}}$ has the scaling dimension $\displaystyle{\Delta_{i}}$

$$\tag{1.4.7}
\begin{align}
\langle \phi_{1}(\lambda x_{1})\dots \phi_{n}(\lambda x_{n})\rangle & =\lambda^{-\Delta_{1}}\dots \lambda^{-\Delta_{n}}\langle \phi_{1}(x_{1})\dots \phi_{n}(x_{n})\rangle
\end{align}
$$

## Ward identities

