# problem 1

calculate the vertex of process $\displaystyle{\ell _{2}(p_{2})\to \ell _{1}(p_{1})+\gamma(k)}$ with the intermediate states

1. neutral scalar $\displaystyle{S^{0}}$, charged fermion $\displaystyle{F^{-}}$
1. neutral fermion, charged scalar $\displaystyle{S^{-}}$

and check Ward identity for both cases. assume the Yukawa coupling constant is

$$\begin{align}
\mathcal{L}_{\text{Yukawa}} & =-g\bar{\ell}_{1}F^{-}S^{0}-g\bar{F}^{-}\ell _{2}S^{0}+\text{h.c.} \quad \text{for case 1} \\
 & =-g\bar{\ell}_{1}S^{-}F^{0}-g\bar{F}^{0}\ell _{2}S^{-}+\text{h.c.} \quad \text{for case 2}
\end{align}$$

*sol*.

## case 1

for case 1, the related Feynman diagram is shown below

![image](http://100.68.185.62:8080/i/9fc5ef09-54ab-4ee1-8bcd-76ab749ca76f.png)

the vertex $\displaystyle{\delta \Gamma ^{\mu}_{1}}$ is given by

$$\begin{align}
\delta \Gamma ^{\mu}_{1} & =\int \frac{\mathrm{d}^{4}\ell}{(2\pi)^{4}} (-ig) \Delta _{F}(\ell) (-ig) S_{F}(p_{1}-\ell)(-ie\gamma ^{\mu})S_{F}(p_{2}-\ell) \\
 & =eg^{2}\int \frac{\mathrm{d}^{4}\ell}{(2\pi)^{4}} \frac{((p\!\!\! /_{1}-\ell\!\!\! /)+m_{F})\gamma ^{\mu}((p\!\!\! /_{2}-\ell\!\!\! /)+m_{F})}{[\ell ^{2}+m_{S}^{2}][(p_{1}-\ell)^{2}+m_{F}^{2}][(p_{2}-\ell)^{2}+m_{F}^{2}]}
\end{align}$$

to process this integral, we introduce Feynman parameters $\displaystyle{x,y,z}$ associated with the denominators $\displaystyle{D_{S}=\ell ^{2}+m_{S}^{2},D_{F_{1}}=(p_{1}-\ell)^{2}+m_{F}^{2}}$ and $\displaystyle{D_{F_{2}}=(p_{2}-\ell)^{2}+m_{F}^{2}}$

$$\begin{align}
\frac{1}{D_{S}D_{F_{1}}F_{F_{2}}} & =\int ^{1}_{0} \mathrm{d}x\mathrm{d}y\mathrm{d}z \delta (x+y+z-1) \frac{2}{D^{3}}
\end{align}$$

where

$$\begin{align}
D^{3} & =x(\ell ^{2}+m_{S}^{2})+y(p_{1}-\ell)^{2}+z(p_{2}-\ell)^{2}+(y+z)m_{F}^{2} \\
 & =\ell ^{2}-2\ell \cdot(yp_{1}+zp_{2})+(yp_{1}+zp_{2})^{2}+yp_{1}^{2}+zp_{2}^{2}+m_{S}^{2}x+(y+z)m_{F}^{2}-(yp_{1}+zp_{2})^{2} \\
 & =(\ell -yp_{1}-zp_{2})^{2}+\Delta
\end{align}$$

change variable $\ell \to \ell +yp_{1}+zp_{2}$, the effective mass term $\Delta$ is given by

$$\begin{align}
\Delta & =yp_{1}^{2}-y^{2}p_{1}^{2}+zp_{2}^{2}-z^{2}p_{2}^{2}-2yzp_{1}\cdot p_{2}+m_{S}^{2}x+(y+z)m_{F}^{2} \\
 & =-ym_{\ell_{1}}^{2}+y^{2}m_{\ell_{1}}^{2}-zm_{\ell_{2}}^{2}+z^{2}m_{\ell_{2}}^{2}+yz(m_{\ell_{1}}^{2}+m_{\ell_{2}}^{2})+m_{S}^{2}x+(y+z)m_{F}^{2}
\end{align}$$

here external momenta satisfy momentum conservation $p_{2}=p_{1}+k$ and onshell conditions

$$\begin{align}
p_{1}^{2} & =-m_{\ell _{1}}^{2} \\
p_{2}^{2} & =-m_{\ell _{2}}^{2}
\end{align}$$

the numerator is given by

$$\begin{align}
N_{1} & =(((1-y)p\!\!\! /_{1}-zp\!\!\! /_{2}-\ell\!\!\! /)+m_{F})\gamma ^{\mu}(((1-z)p\!\!\! /_{2}-yp\!\!\! /_{1}-\ell\!\!\! /)+m_{F}) \\
 & =\ell\!\!\! /\gamma ^{\mu} \ell\!\!\! /+[((1-y)p\!\!\! /_{1}-zp\!\!\! /_{2}+m_{F})\gamma ^{\mu}((1-z)p\!\!\! /_{2}-yp\!\!\! /_{1}+m_{F})] \\
 & =-\frac{1}{2}\ell ^{2}\gamma ^{\mu}+[((1-y)p\!\!\! /_{1}-zp\!\!\! /_{2}+m_{F})\gamma ^{\mu}((1-z)p\!\!\! /_{2}-yp\!\!\! /_{1}+m_{F})]
\end{align}$$

here we shift the momenta, drop the odd terms in $\displaystyle{\ell}$, take the change $\displaystyle{\ell ^{\mu}\ell ^{\nu} \to \frac{1}{4}g^{\mu\nu}\ell ^{2}}$ in $\displaystyle{d=4}$ and use the identity $\displaystyle{\gamma ^{\alpha}\gamma ^{\mu}\gamma _{\alpha}=-2\gamma ^{\mu}}$.

as a summary, we have

$$\begin{align}
\delta \Gamma ^{\mu} & = 2eg^{2} \int ^{1}_{0} \mathrm{d}x\mathrm{d}y\mathrm{d}z \delta (x+y+z-1) \int \frac{\mathrm{d}^{4}\ell}{(2\pi)^{4}} \frac{-\frac{1}{2}\ell ^{2}\gamma ^{\mu}+[((1-y)p\!\!\! /_{1}-zp\!\!\! /_{2}+m_{F})\gamma ^{\mu}((1-z)p\!\!\! /_{2}-yp\!\!\! /_{1}+m_{F})]}{(\ell ^{2}+\Delta)^{3}}
\end{align}$$

now we will check the Ward identity. contracting with $\displaystyle{k _{\mu}}$

$$\begin{align}
k _{\mu}\delta \Gamma ^{\mu} & \propto \int \mathrm{d}^{4}\ell \Delta _{F}(\ell)S_{F}(p_{1}-\ell) k\!\!\! /S_{F}(p_{2}-\ell)
\end{align}$$

using the identity

$$\begin{align}
k\!\!\! / & = (p\!\!\! /_{2}-\ell\!\!\! /-m_{F}) -(p\!\!\! /_{1}-\ell\!\!\! /-m_{F})\\
 & =S_{F}^{-1}(p_{2}-\ell)-S_{F}^{-1}(p_{1}-\ell)
\end{align}$$

we have

$$\begin{align}
k _{\mu}\delta \Gamma ^{\mu}_{1} & \propto \int \mathrm{d}^{4}\ell \Delta _{F}(\ell)[ S_{F}(p_{1}-\ell)-S_{F}(p_{2}-\ell) ]
\end{align}$$

which corresponds to the difference of self-energies $\displaystyle{\Sigma (p_{1})-\Sigma (p_{2})}$. sandwiched between on-shell spinors $\displaystyle{\bar{u}(p_{1})}$ and $\displaystyle{u(p_{2})}$, this vanishes (consistent with the Ward-Takahashi identity).

## case 2

for case 2, the related Feynman diagram is shown below

![image](http://100.68.185.62:8080/i/eda076c1-4fd0-4bb2-b39b-811857833b43.png)

the vertex $\displaystyle{\delta \Gamma _{2} ^{\mu}}$ is given by

$$\begin{align}
\delta \Gamma ^{\mu}_{2} & = \int \frac{\mathrm{d}^{4}\ell}{(2\pi)^{4}} (-ig) S_{F}(\ell)(-ig) \Delta _{F}(p_{1}-\ell)(-ie)(p_{1}+p_{2}-2\ell)^{\mu}\Delta _{F}(p_{2}-\ell) \\
 & =eg^{2}\int \frac{\mathrm{d}^{4}\ell}{(2\pi)^{4}} \frac{(\ell\!\!\!/+m_{F})(p_{1}+p_{2}-2\ell)^{\mu}}{[\ell ^{2}+m_{F}^{2}][(p_{1}-\ell)^{2}+m_{S}^{2}][(p_{2}-\ell)^{2}+m_{S}^{2}]}
\end{align}$$

introduce Feynman parameters $\displaystyle{x,y,z}$ for denominators $\displaystyle{D_{F}=\ell ^{2}+m_{F}^{2}}$, $\displaystyle{D_{S_{1}}=(p_{1}-\ell)^{2}+m_{S}^{2}}$ and $\displaystyle{D_{S_{2}}=(p_{2}-\ell)^{2}+m_{S}^{2}}$

$$\begin{align}
\frac{1}{D_{F}D_{S_{1}}D_{S_{2}}} & =\int ^{1}_{0} \mathrm{d}x\mathrm{d}y\mathrm{d}z \delta (x+y+z-1) \frac{2}{D^{3}}
\end{align}$$

where

$$\begin{align}
D & =x(\ell ^{2}+m_{F}^{2})+y(p_{1}-\ell)^{2}+z(p_{2}-\ell)^{2}+(y+z)m_{S}^{2} \\
 & =\ell ^{2}-2\ell \cdot(yp_{1}+zp_{2})+(yp_{1}+zp_{2})^{2}+yp_{1}^{2}+zp_{2}^{2}+m_{F}^{2}x+(y+z)m_{S}^{2}-(yp_{1}+zp_{2})^{2} \\
 & =(\ell -yp_{1}-zp_{2})^{2}+\Delta \\
\Delta & =yp_{1}^{2}-y^{2}p_{1}^{2}+zp_{2}^{2}-z^{2}p_{2}^{2}-2yzp_{1}\cdot p_{2}+m_{F}^{2}x+(y+z)m_{S}^{2} \\
 & =-ym_{\ell _{1}}^{2}+y^{2}m_{\ell _{1}}^{2}-zm_{\ell _{2}}^{2}+z^{2}m_{\ell _{2}}^{2}+yz(m_{\ell _{1}}^{2}+m_{\ell _{2}}^{2})+m_{F}^{2}x+(y+z)m_{S}^{2}
\end{align}$$

take the change $\displaystyle{\ell \to \ell +yp_{1}+zp_{2}}$, the numerator is given by $\displaystyle{D=\ell ^{2}+\Delta}$. the numerator becomes

$$\begin{align}
N_{2} & =(\ell\!\!\! /+yp\!\!\! /_{1}+zp\!\!\! /_{2}+m_{F})((1-2y)p_{1}+(1-2z)p_{2}-2\ell)^{\mu} \\
 & =-2\ell\!\!\! /\ell ^{\mu}+(yp\!\!\! /_{1}+zp\!\!\! /_{2}+m_{F})((1-2y)p_{1}+(1-2z)p_{2})^{\mu} \\
 & =-\frac{1}{2}\ell ^{2}\gamma ^{\mu}+(yp\!\!\! /_{1}+zp\!\!\! /_{2}+m_{F})((1-2y)p_{1}+(1-2z)p_{2})^{\mu}
\end{align}$$

here we drop the odd terms in $\displaystyle{\ell}$ and take the change $\displaystyle{\ell ^{\mu}\ell ^{\nu} \to \frac{1}{4}g^{\mu\nu}\ell ^{2}}$ in $\displaystyle{d=4}$. as a summary, we have

$$\begin{align}
\delta \Gamma ^{\mu}_{2} & = 2eg^{2} \int ^{1}_{0} \mathrm{d}x\mathrm{d}y\mathrm{d}z \delta (x+y+z-1) \int \frac{\mathrm{d}^{4}\ell}{(2\pi)^{4}} \frac{-\frac{1}{2}\ell ^{2}\gamma ^{\mu}+((1-2y)p\!\!\! /_{1}+(1-2z)p\!\!\! /_{2}+m_{F})((1-2y)p_{1}+(1-2z)p_{2})^{\mu}}{(\ell ^{2}+\Delta)^{3}}
\end{align}$$

now we will check the Ward identity. contracting with $\displaystyle{k _{\mu}}$

$$\begin{align}
k _{\mu}\delta \Gamma ^{\mu} & \propto \int \mathrm{d}^{4}\ell S_{F}(\ell) k\cdot(p_{1}+p_{2}-2\ell) \Delta _{F}(p_{1}-\ell)\Delta _{F}(p_{2}-\ell)
\end{align}$$

where

$$\begin{align}
k\cdot(p_{1}+p_{2}-2\ell) & =(p_{2}-p_{1})\cdot(p_{1}+p_{2}-2\ell) \\
 & =p_{2}^{2}-p_{1}^{2}-2\ell \cdot(p_{2}-p_{1}) \\
 & =D_{S_{2}}-D_{S_{1}}
\end{align}$$

thus the integrand becomes

$$\begin{align}
k _{\mu}\delta \Gamma ^{\mu} & \propto \int \mathrm{d}^{4}\ell S_{F}(\ell) (D_{S_{2}}-D_{S_{1}})\Delta _{F}(p_{1}-\ell)\Delta _{F}(p_{2}-\ell) \\
 & =\int \mathrm{d}^{4}\ell S_{F}(\ell) [\Delta _{F}(p_{1}-\ell)-\Delta _{F}(p_{2}-\ell)]
\end{align}$$

which is again the difference of self-energies $\displaystyle{\Sigma (p_{1})-\Sigma (p_{2})}$. sandwiched between on-shell spinors $\displaystyle{\bar{u}(p_{1})}$ and $\displaystyle{u(p_{2})}$, this vanishes (consistent with the Ward-Takahashi identity).

# appendix: general procedure

to evaluate the loop integrals appearing in vertex corrections or self-energies, we generally follow these standard steps:

1. Feynman parameterization

we combine the product of denominators into a single denominator using Feynman parameters. the general formula is:

$$\begin{align}
\frac{1}{A_{1}A_{2}\dots A_{n}} & =\int ^{1}_{0} \prod ^{n}_{i=1}\mathrm{d}x_{i} \delta\left( \sum ^{n}_{i=1} x_{i}-1 \right) \frac{(n-1)!}{\left[ \sum ^{n}_{i=1}x_{i}A_{i} \right]^{n}}
\end{align}$$

1. momentum shift.

after parametrization, the denominator $\displaystyle{D}$ is quadratic in the loop momentum $\displaystyle{\ell}$. we can complete the square to remove the linear term:

$$\begin{align}
\sum ^{n}_{i=1} x_{i}A_{i} & =\ell ^{2}+2\ell \cdot Q+M^{2}=(\ell +Q)^{2}+\Delta
\end{align}$$

where $\displaystyle{Q}$ is a linear combination of external momenta weighted by Feynman parameters, and $\displaystyle{\Delta=M^{2}-Q^{2}}$ is the effective mass term. we then shift the integration variable $\displaystyle{\tilde{\ell}=\ell+Q}$. the denominator becomes $\displaystyle{(\tilde{\ell}^{2}+\Delta)^{n}}$.

1. numerator simplification

the numerator is a polynomial in the loop momentum. after the shift $\displaystyle{\ell \to \tilde{\ell}-Q}$, we expand the numerator in powers of $\displaystyle{\tilde{\ell}}$. due to the symmetric integration over the full $\displaystyle{d}$-momentum space:
- odd powers of $\displaystyle{\tilde{\ell}}$ vanish: $\displaystyle{\int \mathrm{d}^{d}\tilde{\ell} \frac{\tilde{\ell}^{\mu}}{(\tilde{\ell}^{2}+\Delta)^{n}}=0}$
- even powers can be replaced using Lorentz invariance: $\displaystyle{\tilde{\ell}^{\mu}\tilde{\ell}^{\nu} \to \frac{1}{d} g^{\mu\nu} \tilde{\ell}^{2}}$

1. Wick rotation

to perform the integral, we rotate the contour of the $\displaystyle{\ell^{0}}$ integration to the imaginary axis (Euclidean space):

$$\begin{align}
\ell^{0} & =i\ell ^{0}_{E}, \quad \vec{\ell}=\vec{\ell}_{E} \\
\mathrm{d}^{4}\ell & =i\mathrm{d}^{d}\ell _{E}, \quad \ell ^{2}=\ell _{E}^{2}
\end{align}$$

the denominator becomes $\displaystyle{(\ell^{2}+\Delta)^{n}=(\ell _{E}^{2}+\Delta)^{n}}$

1. dimensional regularization

we evaluate the Euclidean integrals in $\displaystyle{d=4-2\epsilon}$ dimensions. the master formulas are:

$$\begin{align}
\int \frac{\mathrm{d}^{d}\ell _{E}}{(2\pi)^{d}} \frac{1}{(\ell ^{2}_{E}+\Delta)^{n}} & =\frac{1}{(4\pi)^{d/2}} \frac{\Gamma\left( n-\frac{d}{2} \right)}{\Gamma(n)} \Delta ^{\frac{d}{2}-n}  \\
\int \frac{\mathrm{d}^{d}\ell _{E}}{(2\pi)^{d}} \frac{\ell _{E}^{2}}{(\ell ^{2}_{E}+\Delta)^{n}} & =\frac{1}{(4\pi)^{d/2}} \frac{d}{2} \frac{\Gamma\left( n-\frac{d}{2}-1 \right)}{\Gamma(n)} \Delta ^{\frac{d}{2}-n+1}
\end{align}$$

1. expansion and renormalization

finally, we expand the result around $\displaystyle{\epsilon \to 0}$.
- terms with $\displaystyle{\Gamma(0)}$ or $\displaystyle{\Gamma(-n)}$ manifest as poles $\displaystyle{1/\epsilon}$ (UV divergences).
- finite parts are extracted.
- divergences are absorbed into counterterms in the renormalization procedure.
