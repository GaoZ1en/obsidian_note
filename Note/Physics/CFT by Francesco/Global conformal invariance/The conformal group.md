consider a $\displaystyle{d}$ dimensional spacetime with metric $\displaystyle{g_{\mu \nu}}$. a conformal transformation is

$$\tag{3.1.1}
\begin{align}
g'_{\mu \nu}(x')=e^{2\Omega(x)}g_{\mu \nu}(x)
\end{align}
$$

in other words, a conformal transformation is locally equivalent to a rotation and a dilation. the set of conformal transformations manifestly forms a group, which has the Poincare group as a subgroup.

consider a infinitesimal diffeomorphism transformation $\displaystyle{x^{\mu}\to x'^{\mu}=x^{\mu}+\varepsilon^{\mu}(x)}$, we have

$$\tag{3.1.2}
\begin{align}
g_{\mu \nu}\to g_{\mu \nu}-(\nabla_{\mu}\varepsilon_{\nu}+\nabla_{\nu}\varepsilon_{\mu})
\end{align}
$$

in order this to be conformal, we have 

$$\tag{3.1.3}
\begin{align}
\nabla_{\mu}\varepsilon_{\nu}+\nabla_{\nu}\varepsilon_{\mu}=f(x)g_{\mu \nu}
\end{align}
$$

by taking a trace, we have

$$\tag{3.1.4}
\begin{align}
f(x)= \frac{2}{d}\nabla_{\rho}\varepsilon^{\rho}
\end{align}
$$

for simplicity, we assume that the conformal transformation acts on the standard Cartesian metric $\displaystyle{g_{\mu \nu}=\eta_{\mu \nu}=\mathrm{diag}(1,1,\dots,1)}$. taking derivative $\displaystyle{\partial_{\rho}}$, on (2.1.3), permuting the indices and taking a linear combination, we have

$$\tag{3.1.5}
\begin{align}
g_{\mu \rho}\nabla_{\nu}f+g_{\rho \nu}\nabla_{\mu}f-g_{\mu \nu}\nabla_{\rho}f & =-R^{\sigma}_{~\mu \nu \rho}\varepsilon_{\sigma}-R^{\sigma}_{~\nu \mu \rho}\varepsilon_{\sigma}+\left\{\nabla_{\mu},\nabla_{\nu}\right\}\varepsilon_{\rho} \\
2\partial_{\mu}\partial_{\nu}\varepsilon_{\rho} & =\eta_{\mu \rho}\partial_{\nu}f+\eta_{\nu \rho}\partial_{\mu}f-\eta_{\mu \nu}\partial_{\rho}f
\end{align}
$$

contracting with $\displaystyle{g^{\mu \nu}}$, this becomes

$$\tag{3.1.6}
\begin{align}
(2-d)\nabla_{\mu}f & =2R_{\mu \rho}\varepsilon^{\rho}+2g^{\rho \sigma}\nabla_{\rho}\nabla_{\sigma}\varepsilon_{\mu} \\
(2-d)\partial_{\mu}f & =2\partial_{\mu}\partial^{\mu}\varepsilon_{\rho}
\end{align}
$$

applying $\displaystyle{\nabla_{\nu}}$ on (2.1.6) and $\displaystyle{\nabla^{2}}$ on (2.1.3), we find

$$\tag{3.1.7}
\begin{align}
(2-d)\partial_{\mu}\partial_{\nu}f & =\eta_{\mu \nu}\partial^{\rho}\partial_{\rho}f
\end{align}
$$

finally contracting with $\displaystyle{\eta^{\mu \nu}}$, we have

$$\tag{3.1.8}
\begin{align}
(d-1)\partial^{\rho}\partial_{\rho}f=0
\end{align}
$$

we then can derive the explicit form of conformal transformation in dimension $\displaystyle{d}$. for $\displaystyle{d=1}$, (2.1.8) does not give any constraint on $\displaystyle{f(x)}$, and therefore any smooth function $\displaystyle{f(x)}$ is a conformal transformation. for $\displaystyle{d=2}$, we will study the detail in the following section. for $\displaystyle{d\geqslant 3}$, (2.1.7) and (2.1.8) gives that $\displaystyle{\partial_{\mu}\partial_{\nu}f=0}$ and $\displaystyle{\partial^{\rho}\partial_{\rho}f=0}$, which means that $\displaystyle{f(x)}$ is a linear function of $\displaystyle{x^{\mu}}$, in other words $\displaystyle{f(x)=A+B_{\mu}x^{\mu}}$. and therefore $\displaystyle{\varepsilon_{\mu}=a_{\mu}+b_{\mu \nu}x^{\nu}+c_{\mu \nu \rho}x^{\nu}x^{\rho}}$. (2.1.7-8) then gives
the constraints on $\displaystyle{a_{\mu},b_{\mu \nu},c_{\mu \nu \rho}}$

$$\tag{3.1.9}
\begin{align}
b_{\mu \nu}+b_{\nu \mu} & =\frac{2}{d}b^{\lambda}_{~\lambda}\eta_{\mu \nu} \\
\implies b_{\mu \nu} & =\alpha \eta_{\mu \nu}+m_{\mu \nu} & m_{\mu \nu}=-m_{\nu \mu} \\
c_{\mu \nu \rho} & =\eta_{\mu \rho}b_{\nu}+\eta_{\mu \nu}b_{\rho}-\eta_{\nu \rho}b_{\mu} & b_{\mu}\equiv\frac{1}{d} c^{\sigma}_{~\sigma \mu}
\end{align}
$$

then the corresponding infinitesimal transformation is

$$\tag{3.1.10}
\begin{align}
x'^{\mu} & =x^{\mu}+2(b\cdot x)x^{\mu}-b^{\mu}x^{2}
\end{align}
$$

which is a special conformal transformation (SCT). the SCT can also be expressed as a combination of translation and inversion as

$$\tag{3.1.11}
\begin{align}
\frac{x'^{\mu}}{x'^{2}} & =\frac{x^{\mu}}{x^{2}}-b^{\mu}
\end{align}
$$

the conformal group in $\displaystyle{d\geqslant 3}$ dimensions consists of the Poincare group, the dilatation and the special conformal transformations. the generators of the infinitesimal transformations are listed below

$$\tag{3.1.12}
\begin{align}
P_{\mu} & =-i\partial_{\mu} \\
D & =-ix^{\mu}\partial_{\mu} \\
L_{\mu \nu} & =i(x_{\mu}\partial_{\nu}-x_{\nu}\partial_{\mu}) \\
K_{\mu} & = -i(2x_{\mu}x^{\nu}\partial_{\nu}-x^{2}\partial_{\mu})
\end{align}
$$

which satisfy the commutation relations

$$\tag{3.1.13}
\begin{align}
[D,P_{\mu}] & =iP_{\mu} \\
[D,K_{\mu}] & =-iK_{\mu} \\
[K_{\mu},P_{\nu}] & =2i(\eta_{\mu \nu}D-L_{\mu \nu}) \\
[K_{\rho},L_{\mu \nu}] & =i(\eta_{\rho \mu}K_{\nu}-\eta_{\rho \nu}K_{\mu}) \\
[P_{\rho},L_{\mu \nu}] & =i(\eta_{\rho \mu}P_{\nu}-\eta_{\rho \nu}P_{\mu}) \\
[L_{\mu \nu},L_{\rho \sigma}] & =i(\eta_{\nu \rho}L_{\mu \sigma}+\eta_{\mu \sigma}L_{\nu \rho}-\eta_{\mu \rho}L_{\nu \sigma}-\eta_{\nu \sigma}L_{\mu \rho})
\end{align}
$$

in order to put the above commutation relations in a compact form, we define the following generators

$$\tag{3.1.14}
\begin{align}
J_{\mu \nu} & =L_{\mu \nu}, J_{-1,\mu}=\frac{1}{2}(P_{\mu}-K_{\mu}), \\
 J_{-1,0} & =D, J_{0,\mu}=\frac{1}{2}(P_{\mu}+K_{\mu}) \\
J_{ab} & =-J_{ba}
\end{align}
$$

then the commutation relations can be written as

$$\tag{3.1.15}
\begin{align}
[J_{ab},J_{cd}] & =i(\eta_{ad}J_{bc}+\eta_{bc}J_{ad}-\eta_{ac}J_{bd}-\eta_{bd}J_{ac})
\end{align}
$$

where $\displaystyle{\eta_{ab}=\mathrm{diag}(-1,1,\dots,1)}$ if the spacetime is Euclidean. $\displaystyle{J_{ab}}$ gives a isomorphism between the conformal group and $\displaystyle{\mathrm{SO}(d+1,1)}$ with $\displaystyle{\frac{1}{2}(d+1)(d+2)}$ parameters. 

finally we consider the construction of conformal invariants in terms of N-point functions $\displaystyle{\Gamma(x_{i})}$. translation and rotation invariance imply that $\displaystyle{\Gamma(x_{i})}$ can depend only on $\displaystyle{x_{ij}=|x_{i}-x_{j}|}$, scale invariance implies that $\displaystyle{\Gamma(x_{i})}$ can depend only on $\displaystyle{x_{ij}/x_{kl}}$. SCT invariance implies that $\displaystyle{\Gamma(x_{i})}$ can depend only on $\displaystyle{\frac{x_{ij}x_{kl}}{x_{ik}x_{jl}}}$ (which is called the cross-ratios). therefore it is impossible to construct a conformal invariant out of $\displaystyle{\Gamma(x_{i})}$ with $\displaystyle{N\leqslant 3}$ points. for $\displaystyle{N\geqslant 4}$. there are $\displaystyle{\frac{1}{2}N(N-3)}$ independent cross-ratios.

