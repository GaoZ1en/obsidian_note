## differential forms

### Hodge star

the Hodge star $\displaystyle{\star}$ is a map from $\displaystyle{k}$-forms to $\displaystyle{(n-k)}$-forms, where $\displaystyle{n}$ is the dimension of the manifold. It is defined by the equation

$$\tag{2.1}
\begin{align}
\star & : \Lambda^{r}M\to \Lambda^{n-r}M\\
\star & : \alpha _{r}=\frac{1}{r!}f_{\mu_{1}\dots \mu _{r}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu _{r}}\mapsto \star \alpha _{r} & =\frac{1}{r!(n-r)!}f_{\mu_{1}\dots \mu _{r}}\varepsilon ^{\mu_{1}\dots \mu _{r}}_{~~~~~~~~~~~~\nu_{1}\dots \nu _{n-r}}\mathrm{d}x^{\nu_{1}}\wedge\dots \wedge \mathrm{d}x^{\nu _{n-r}}
\end{align}
$$

where $\displaystyle{\varepsilon _{\mu_{1}\dots \mu _{n}}}$ is the generalized Levi-Civita symbol.

using Hodge star, we can define inner product on $\displaystyle{\Lambda^{*}M}$, where $\displaystyle{M}$ is a compact manifold. $\displaystyle{\forall \alpha _{r},\beta _{r}\in \Lambda ^{r}M}$, then we define

$$\tag{2.2}
\begin{align}
\braket{ \alpha,\beta }  & =\int _{M}\alpha \wedge \star \beta=\int _{M}\beta \wedge \star \alpha
\end{align}
$$

and we can proove that

$$\tag{2.3}
\begin{align}
\braket{ \alpha,\beta } & = \braket{ \beta,\alpha } =\mathrm{sgn}( g )\braket{ \star \alpha,\star \beta } 
\end{align}
$$

after performing two Hodge star, we have

$$\tag{2.4}
\begin{align}
\star ^{2}\alpha _{r} & =\frac{1}{(r!)^{2}(n-r)!}f_{\mu_{1}\dots \mu _{r}}\varepsilon ^{\mu_{1}\dots \mu _{r}}_{~~~~~~~~~~~\nu _{1}\dots \nu _{n-r}}\varepsilon ^{\nu_{1}\dots \nu _{n-r}}_{~~~~~~~~~~~~~~~~\rho _{1}\dots \rho _{r}}\mathrm{d}x^{\rho_{1}}\wedge\dots \wedge \mathrm{d}x^{\rho _{r}} \\
 & =\mathrm{sgn}( g )(-1)^{r(n-r)}\alpha _{r} \\
 & =\mathrm{sgn}( g )\begin{cases}
\alpha _{r} & r\in 2\mathbb{Z}\\
(-1)^{r}\alpha _{r} & r\in 2\mathbb{Z}+1
\end{cases}
\end{align}
$$

### codifferential operator

we define

$$\tag{2.5}
\begin{align}
\delta & :\Lambda ^{r}M\to \Lambda ^{r-1}M \\
\delta & =\mathrm{sgn}( g )(-1)^{nr+n+1}\star \mathrm{d}\star
\end{align}
$$

codifferential $\displaystyle{\delta}$ is the adjoint operator of the exterior differential $\displaystyle{\mathrm{d}}$ in the sense of the inner product (2.2), i.e., we have

$$\tag{2.6}
\begin{align}
\braket{ \alpha _{r},\mathrm{d}\beta _{r-1} }  & = \braket{ \delta \alpha _{r},\beta _{r-1} } 
\end{align}
$$

we can proove that

$$\tag{2.7}
\begin{align}
\delta ^{2}=0
\end{align}
$$

then we can define co-closed and co-exact forms just as closed and exact forms.

### Laplace operator

we can define

$$\tag{2.8}
\begin{align}
\Delta & :\Lambda ^{r}M\to \Lambda ^{r}M\\
\Delta & =(\mathrm{d}+\delta)^{2}=\mathrm{d}\delta+\delta \mathrm{d}
\end{align}
$$

if $\displaystyle{r}$-form $\displaystyle{\alpha _{r}}$ satisfies

$$
\begin{align}
\Delta \alpha _{r}=0
\end{align}
$$

then we call $\displaystyle{\alpha _{r}}$ as harmonic $\displaystyle{r}$-form. we can proove that

1. commutes with Hodge star: $\displaystyle{\star \Delta=\Delta \star}$
2. self-adjoint: $\displaystyle{\braket{ \alpha,\Delta \beta }= \braket{ \Delta \alpha,\beta }}$
3. $\displaystyle{\Delta \alpha=0\Leftrightarrow\mathrm{d}\alpha=0,\delta \alpha=0}$

## decomposition of Riemann tensor

Riemann tensor $\displaystyle{R_{\mu \nu \rho \sigma}}$ has $\displaystyle{\frac{1}{12}n^{2}(n^{2}-1)}$ independent components, and can be decomposed in terms of the representations of holonomy group $\displaystyle{\mathrm{O}(n)}$ as

$$\tag{2.9}
\begin{align}
R_{\mu \nu \rho \sigma} & =W_{\mu \nu \rho \sigma}+S_{\mu \nu \rho \sigma}+G_{\mu \nu \rho \sigma} \\
G_{\mu \nu \rho \sigma} & =\frac{R}{n(n-1)}(g_{\mu \rho}g_{\nu \sigma}-g_{\mu \sigma}g_{\nu \rho}) \\
S_{\mu \nu \rho \sigma} & =\frac{1}{n-2}(g_{\mu \rho}S_{\nu \sigma}+g_{\nu \sigma}S_{\mu \rho}-g_{\mu \sigma}S_{\nu \rho}-g_{\nu \rho}S_{\mu \sigma}) \\
S_{\mu \nu} & =R_{\mu \nu}-\frac{1}{n}g_{\mu \nu}R
\end{align}
$$

where $\displaystyle{W_{\mu \nu \rho \sigma},S_{\mu \nu \rho \sigma},G_{\mu \nu \rho \sigma}}$ has the same permutation symmetry as $\displaystyle{R_{\mu \nu \rho \sigma}}$. $\displaystyle{G_{\mu \nu \rho \sigma}}$, which describes the global curvature information of the manifold, has the same trace as $\displaystyle{R_{\mu \nu \rho \sigma}}$

$$
\begin{align}
g^{\mu \rho}g^{\nu \sigma}G_{\mu \nu \rho \sigma}=g^{\mu \rho}g^{\nu \sigma}R_{\mu \nu \rho \sigma}=R
\end{align}
$$

$\displaystyle{S_{\mu \nu}}$ is the traceless part of the Ricci tensor $\displaystyle{R_{\mu \nu}}$, and $\displaystyle{S_{\mu \nu \rho \sigma}}$, which describes some local curvature information of the manifold, its trace is exactly $\displaystyle{S_{\mu \nu}}$

$$
\begin{align}
g^{\mu \rho}S_{\mu \nu \rho \sigma} & =S_{\nu \sigma}
\end{align}
$$

and $\displaystyle{W_{\mu \nu \rho \sigma}}$, which is known as the Weyl tensor and has $\displaystyle{\frac{1}{12}n(n+1)(n+2)(n-3)}$ independent components, encodes the conformal structure of the manifold, and its any trace vanishes.

then we have some comments about Riemann tensor on low dimension manifolds

1. for 1-folds, $\displaystyle{R_{\mu \nu \rho \sigma}=0}$
2. for 2-folds, $\displaystyle{R_{\mu \nu \rho \sigma}=G_{\mu \nu \rho \sigma}=\frac{1}{2}R(g_{\mu \rho}g_{\nu \sigma}-g_{\mu \sigma}g_{\nu \rho})}$, and we have only one independent component $\displaystyle{R_{1212}=R}$
3. for 3-folds, $\displaystyle{R_{\mu \nu \rho \sigma}}$ has 6 independent components, which is exactly the number of independent components of symmetric order 2 tensor $\displaystyle{R_{\mu \nu}}$, then we have $\displaystyle{R_{\mu \nu \rho \sigma}=S_{\mu \nu \rho \sigma}+G_{\mu \nu \rho \sigma}=g_{\mu \rho}R_{\nu \sigma}+g_{\nu \sigma}R_{\mu \rho}-g_{\mu \sigma}R_{\nu \rho}-g_{\nu \rho}R_{\mu \sigma}-\frac{1}{2}R(g_{\mu \rho}g_{\nu \sigma}-g_{\mu \sigma}g_{\nu \rho})}$. and $\displaystyle{W_{\mu \nu \rho \sigma}}$ vanishes.

## sectional curvature

for two vector field $\displaystyle{\xi _{\mu},\zeta _{\mu}\in T_{p}M}$, we define the sectional curvature 

$$\tag{2.10}
\begin{align}
K(S_{p}) & =\frac{R_{\mu \nu \rho \sigma}\xi ^{\mu}\zeta ^{\nu}\xi ^{\rho}\zeta ^{\sigma}}{\xi _{\mu}\xi ^{\mu}\zeta _{\nu}\zeta ^{\nu}-\xi _{\mu}\zeta ^{\mu}\xi _{\nu}\zeta ^{\nu}}{\Huge|}_{p}
\end{align}
$$

where $\displaystyle{S_{p}}$ is the plain spanned by $\displaystyle{\xi _{\mu}}$ and $\displaystyle{\zeta _{\mu}}$. we can proove that $\displaystyle{K(S_{p})}$ depends only on the direction of $\displaystyle{S_{p}}$ and is independent from the choice of $\displaystyle{\xi _{\mu}}$ and $\displaystyle{\zeta _{\mu}}$. 

all geodesics passed $\displaystyle{p}$ and tangent to $\displaystyle{S_{p}}$ span a 2-dimensional surface, and the Gauss curvature at $\displaystyle{p}$ is exactly the sectional curvature $\displaystyle{K(S_{p})}$. 

if $\displaystyle{K(S_{p})}$ is independent from the direction of $\displaystyle{S_{p}}$, then we call $\displaystyle{M}$ is isotropic at $\displaystyle{p}$. in this case, we have

$$\tag{2.11}
\begin{align}
R_{\mu \nu \rho \sigma}|_{p} & =K(p)(g_{\mu \rho}g_{\nu \sigma}-g_{\mu \sigma}g_{\nu \rho})|_{p} \\
\Omega _{\mu \nu}|_{p} & =\frac{1}{2!}R_{\mu \nu \rho \sigma}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}|_{p} \\
 & =K(p) \frac{\partial}{\partial x^{\mu}}\wedge \frac{\partial}{\partial x^{\nu}}{\Huge|}_{p}
\end{align}
$$

>[!Theorem]
> suppose $\displaystyle{M}$ is a $\displaystyle{d\geqslant 3}$ dimensional connected Riemann manifold. if $\displaystyle{\forall p \in M}$ is isotropic, then sectional curvature is constant on $\displaystyle{M}$

proof: since we have

$$
\begin{align}
R_{\mu \nu \rho \sigma}\xi ^{\mu}\zeta ^{\nu}\phi ^{\rho}\psi ^{\sigma} & =K(p)(\xi _{\mu}\phi ^{\mu}\zeta _{\nu}\psi ^{\nu}-\xi _{\mu}\psi ^{\mu}\zeta _{\nu}\phi ^{\nu})
\end{align}
$$

then perform a covariant derivative

$$
\begin{align}

\end{align}
$$
