consider a $\displaystyle{d}$ dimensional spacetime with metric $\displaystyle{g_{\mu \nu}}$. a conformal transformation is

$$\tag{2.1.1}
\begin{align}
g'_{\mu \nu}(x')=e^{2\Omega(x)}g_{\mu \nu}(x)
\end{align}
$$

in other words, a conformal transformation is locally equivalent to a rotation and a dilation. the set of conformal transformations manifestly forms a group, which has the Poincare group as a subgroup.

consider a infinitesimal diffeomorphism transformation $\displaystyle{x^{\mu}\to x'^{\mu}=x^{\mu}+\varepsilon^{\mu}(x)}$, we have

$$\tag{2.1.2}
\begin{align}
g_{\mu \nu}\to g_{\mu \nu}-(\nabla_{\mu}\varepsilon_{\nu}+\nabla_{\nu}\varepsilon_{\mu})
\end{align}
$$

in order this to be conformal, we have 

$$\tag{2.1.3}
\begin{align}
\nabla_{\mu}\varepsilon_{\nu}+\nabla_{\nu}\varepsilon_{\mu}=f(x)g_{\mu \nu}
\end{align}
$$

by taking a trace, we have

$$\tag{2.1.4}
\begin{align}
f(x)= \frac{2}{d}\nabla_{\rho}\varepsilon^{\rho}
\end{align}
$$

for simplicity, we assume that the conformal transformation acts on the standard Cartesian metric $\displaystyle{g_{\mu \nu}=\eta_{\mu \nu}=\mathrm{diag}(1,1,\dots,1)}$. taking derivative $\displaystyle{\partial_{\rho}}$, on (2.1.3), permuting the indices and taking a linear combination, we have

$$\tag{2.1.5}
\begin{align}
g_{\mu \rho}\nabla_{\nu}f+g_{\rho \nu}\nabla_{\mu}f-g_{\mu \nu}\nabla_{\rho}f & =-R^{\sigma}_{~\mu \nu \rho}\varepsilon_{\sigma}-R^{\sigma}_{~\nu \mu \rho}\varepsilon_{\sigma}+\left\{\nabla_{\mu},\nabla_{\nu}\right\}\varepsilon_{\rho} \\
2\partial_{\mu}\partial_{\nu}\varepsilon_{\rho} & =\eta_{\mu \rho}\partial_{\nu}f+\eta_{\nu \rho}\partial_{\mu}f-\eta_{\mu \nu}\partial_{\rho}f
\end{align}
$$

contracting with $\displaystyle{g^{\mu \nu}}$, this becomes

$$\tag{2.1.6}
\begin{align}
(2-d)\nabla_{\mu}f & =2R_{\mu \rho}\varepsilon^{\rho}+2g^{\rho \sigma}\nabla_{\rho}\nabla_{\sigma}\varepsilon_{\mu} \\
(2-d)\partial_{\mu}f & =2\partial_{\mu}\partial^{\mu}\varepsilon_{\rho}
\end{align}
$$

applying $\displaystyle{\nabla_{\nu}}$ on (2.1.6) and $\displaystyle{\nabla^{2}}$ on (2.1.3), we find

$$\tag{2.1.7}
\begin{align}
(2-d)\partial_{\mu}\partial_{\nu}f & =\eta_{\mu \nu}\partial^{\rho}\partial_{\rho}f
\end{align}
$$

finally contracting with $\displaystyle{\eta^{\mu \nu}}$, we have

$$\tag{2.1.8}
\begin{align}
(d-1)\partial^{\rho}\partial_{\rho}f=0
\end{align}
$$

we then can derive the explicit form of conformal transformation in dimension $\displaystyle{d}$

