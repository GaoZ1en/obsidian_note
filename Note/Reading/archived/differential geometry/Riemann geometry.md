## differential forms

### Hodge star

the Hodge star $\displaystyle{\star}$ is a map from $\displaystyle{k}$-forms to $\displaystyle{(n-k)}$-forms, where $\displaystyle{n}$ is the dimension of the manifold. It is defined by the equation

$$
\tag{2.1}
\begin{align}
\star & : \Lambda^{r}M\to \Lambda^{n-r}M\\
\star & : \alpha _{r}=\frac{1}{r!}f_{\mu_{1}\dots \mu _{r}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu _{r}}\mapsto \star \alpha _{r} & =\frac{1}{r!(n-r)!}f_{\mu_{1}\dots \mu _{r}}\varepsilon ^{\mu_{1}\dots \mu _{r}}_{~~~~~~~~~~~~\nu_{1}\dots \nu _{n-r}}\mathrm{d}x^{\nu_{1}}\wedge\dots \wedge \mathrm{d}x^{\nu _{n-r}}
\end{align}
$$

where $\displaystyle{\varepsilon _{\mu_{1}\dots \mu _{n}}}$ is the generalized Levi-Civita symbol.

using Hodge star, we can define inner product on $\displaystyle{\Lambda^{*}M}$, where $\displaystyle{M}$ is a compact manifold. $\displaystyle{\forall \alpha _{r},\beta _{r}\in \Lambda ^{r}M}$, then we define

$$
\tag{2.2}
\begin{align}
\braket{ \alpha,\beta }  & =\int _{M}\alpha \wedge \star \beta=\int _{M}\beta \wedge \star \alpha
\end{align}
$$

and we can proove that

$$
\tag{2.3}
\begin{align}
\braket{ \alpha,\beta } & = \braket{ \beta,\alpha } =\mathrm{sgn}( g )\braket{ \star \alpha,\star \beta }
\end{align}
$$

after performing two Hodge star, we have

$$
\tag{2.4}
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

$$
\tag{2.5}
\begin{align}
\delta & :\Lambda ^{r}M\to \Lambda ^{r-1}M \\
\delta & =\mathrm{sgn}( g )(-1)^{nr+n+1}\star \mathrm{d}\star
\end{align}
$$

codifferential $\displaystyle{\delta}$ is the adjoint operator of the exterior differential $\displaystyle{\mathrm{d}}$ in the sense of the inner product (2.2), i.e., we have

$$
\tag{2.6}
\begin{align}
\braket{ \alpha _{r},\mathrm{d}\beta _{r-1} }  & = \braket{ \delta \alpha _{r},\beta _{r-1} }
\end{align}
$$

we can proove that

$$
\tag{2.7}
\begin{align}
\delta ^{2}=0
\end{align}
$$

then we can define co-closed and co-exact forms just as closed and exact forms.

### Laplace operator

we can define

$$
\tag{2.8}
\begin{align}
\Delta & :\Lambda ^{r}M\to \Lambda ^{r}M\\
\Delta & =(\mathrm{d}+\delta)^{2}=\mathrm{d}\delta+\delta \mathrm{d}
\end{align}
$$

if $\displaystyle{r}$-form $\displaystyle{\alpha _{r}}$ satisfies

$$\begin{align}
\Delta \alpha _{r}=0
\end{align}$$

then we call $\displaystyle{\alpha _{r}}$ as harmonic $\displaystyle{r}$-form. we can proove that

1. commutes with Hodge star: $\displaystyle{\star \Delta=\Delta \star}$
1. self-adjoint: $\displaystyle{\braket{ \alpha,\Delta \beta }= \braket{ \Delta \alpha,\beta }}$
1. $\displaystyle{\Delta \alpha=0\Leftrightarrow\mathrm{d}\alpha=0,\delta \alpha=0}$

## decomposition of Riemann tensor

Riemann tensor $\displaystyle{R_{\mu \nu \rho \sigma}}$ has $\displaystyle{\frac{1}{12}n^{2}(n^{2}-1)}$ independent components, and can be decomposed in terms of the representations of holonomy group $\displaystyle{\mathrm{O}(n)}$ as

$$
\tag{2.9}
\begin{align}
R_{\mu \nu \rho \sigma} & =W_{\mu \nu \rho \sigma}+S_{\mu \nu \rho \sigma}+G_{\mu \nu \rho \sigma} \\
G_{\mu \nu \rho \sigma} & =\frac{R}{n(n-1)}(g_{\mu \rho}g_{\nu \sigma}-g_{\mu \sigma}g_{\nu \rho}) \\
S_{\mu \nu \rho \sigma} & =\frac{1}{n-2}(g_{\mu \rho}S_{\nu \sigma}+g_{\nu \sigma}S_{\mu \rho}-g_{\mu \sigma}S_{\nu \rho}-g_{\nu \rho}S_{\mu \sigma}) \\
S_{\mu \nu} & =R_{\mu \nu}-\frac{1}{n}g_{\mu \nu}R
\end{align}
$$

where $\displaystyle{W_{\mu \nu \rho \sigma},S_{\mu \nu \rho \sigma},G_{\mu \nu \rho \sigma}}$ has the same permutation symmetry as $\displaystyle{R_{\mu \nu \rho \sigma}}$. $\displaystyle{G_{\mu \nu \rho \sigma}}$, which describes the global curvature information of the manifold, has the same trace as $\displaystyle{R_{\mu \nu \rho \sigma}}$

$$\begin{align}
g^{\mu \rho}g^{\nu \sigma}G_{\mu \nu \rho \sigma}=g^{\mu \rho}g^{\nu \sigma}R_{\mu \nu \rho \sigma}=R
\end{align}$$

$\displaystyle{S_{\mu \nu}}$ is the traceless part of the Ricci tensor $\displaystyle{R_{\mu \nu}}$, and $\displaystyle{S_{\mu \nu \rho \sigma}}$, which describes some local curvature information of the manifold, its trace is exactly $\displaystyle{S_{\mu \nu}}$

$$\begin{align}
g^{\mu \rho}S_{\mu \nu \rho \sigma} & =S_{\nu \sigma}
\end{align}$$

and $\displaystyle{W_{\mu \nu \rho \sigma}}$, which is known as the Weyl tensor and has $\displaystyle{\frac{1}{12}n(n+1)(n+2)(n-3)}$ independent components, encodes the conformal structure of the manifold, and its any trace vanishes.

then we have some comments about Riemann tensor on low dimension manifolds

1. for 1-folds, $\displaystyle{R_{\mu \nu \rho \sigma}=0}$
1. for 2-folds, $\displaystyle{R_{\mu \nu \rho \sigma}=G_{\mu \nu \rho \sigma}=\frac{1}{2}R(g_{\mu \rho}g_{\nu \sigma}-g_{\mu \sigma}g_{\nu \rho})}$, and we have only one independent component $\displaystyle{R_{1212}=R}$
1. for 3-folds, $\displaystyle{R_{\mu \nu \rho \sigma}}$ has 6 independent components, which is exactly the number of independent components of symmetric order 2 tensor $\displaystyle{R_{\mu \nu}}$, then we have $\displaystyle{R_{\mu \nu \rho \sigma}=S_{\mu \nu \rho \sigma}+G_{\mu \nu \rho \sigma}=g_{\mu \rho}R_{\nu \sigma}+g_{\nu \sigma}R_{\mu \rho}-g_{\mu \sigma}R_{\nu \rho}-g_{\nu \rho}R_{\mu \sigma}-\frac{1}{2}R(g_{\mu \rho}g_{\nu \sigma}-g_{\mu \sigma}g_{\nu \rho})}$. and $\displaystyle{W_{\mu \nu \rho \sigma}}$ vanishes.

## sectional curvature

for two vector field $\displaystyle{\xi _{\mu},\zeta _{\mu}\in T_{p}M}$, we define the sectional curvature

$$
\tag{2.10}
\begin{align}
K(S_{p}) & =\frac{R_{\mu \nu \rho \sigma}\xi ^{\mu}\zeta ^{\nu}\xi ^{\rho}\zeta ^{\sigma}}{\xi _{\mu}\xi ^{\mu}\zeta _{\nu}\zeta ^{\nu}-\xi _{\mu}\zeta ^{\mu}\xi _{\nu}\zeta ^{\nu}}{\Huge|}_{p}
\end{align}
$$

where $\displaystyle{S_{p}}$ is the plain spanned by $\displaystyle{\xi _{\mu}}$ and $\displaystyle{\zeta _{\mu}}$. we can proove that $\displaystyle{K(S_{p})}$ depends only on the direction of $\displaystyle{S_{p}}$ and is independent from the choice of $\displaystyle{\xi _{\mu}}$ and $\displaystyle{\zeta _{\mu}}$.

all geodesics passed $\displaystyle{p}$ and tangent to $\displaystyle{S_{p}}$ span a 2-dimensional surface, and the Gauss curvature at $\displaystyle{p}$ is exactly the sectional curvature $\displaystyle{K(S_{p})}$.

if $\displaystyle{K(S_{p})}$ is independent from the direction of $\displaystyle{S_{p}}$, then we call $\displaystyle{M}$ is isotropic at $\displaystyle{p}$. in this case, we have

$$
\tag{2.11}
\begin{align}
R_{\mu \nu \rho \sigma}|_{p} & =K(p)(g_{\mu \rho}g_{\nu \sigma}-g_{\mu \sigma}g_{\nu \rho})|_{p} \\
\Omega _{\mu \nu}|_{p} & =\frac{1}{2!}R_{\mu \nu \rho \sigma}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}|_{p} \\
 & =K(p) \frac{\partial}{\partial x^{\mu}}\wedge \frac{\partial}{\partial x^{\nu}}{\Huge|}_{p}
\end{align}
$$

>[!Theorem]
> suppose $\displaystyle{M}$ is a $\displaystyle{d\geqslant 3}$ dimensional connected Riemann manifold. if $\displaystyle{\forall p \in M}$ is isotropic, then sectional curvature is constant on $\displaystyle{M}$

proof: since we have

$$\begin{align}
R_{\mu \nu \rho \sigma}\xi ^{\mu}\zeta ^{\nu}\phi ^{\rho}\psi ^{\sigma} & =K(p)(\xi _{\mu}\phi ^{\mu}\zeta _{\nu}\psi ^{\nu}-\xi _{\mu}\psi ^{\mu}\zeta _{\nu}\phi ^{\nu})
\end{align}$$

then perform a covariant derivative

$$\begin{align}
\xi ^{\mu}\nabla _{\mu}R_{\nu \rho \sigma \lambda}\zeta ^{\rho}\phi ^{\sigma}\psi ^{\lambda} & =\xi ^{\mu}\nabla _{\mu}K(p)(\phi _{\nu}\zeta _{\rho}\psi ^{\rho}-\psi _{\nu}\zeta _{\rho}\phi ^{\rho})
\end{align}$$

by Bianchi identity $\displaystyle{\nabla _{\mu}R_{\nu \rho \sigma \lambda}+\nabla _{\nu}R_{\rho \mu \sigma \lambda}+\nabla _{\rho}R_{\mu \nu \sigma \lambda}=0}$, and choose $\displaystyle{\zeta _{\rho},\phi _{\sigma},\psi _{\lambda}}$ to be vertical to each other, and choose $\displaystyle{\xi _{\mu}=\zeta _{\mu},\xi _{\mu}\xi ^{\mu}=1}$, we have

$$\begin{align}
\phi ^{\mu}\nabla _{\mu}K(p)\psi _{\nu}-\psi ^{\mu}\nabla _{\mu}K(p)\phi _{\nu}=0
\end{align}$$

since $\displaystyle{\phi _{\mu}}$ and $\displaystyle{\psi _{\mu}}$ are independent of each other, we have

$$\begin{align}
\phi ^{\mu}\nabla _{\mu}K(p)=\psi ^{\mu}\nabla _{\mu}K(p) & =0
\end{align}$$

for manifold with constant sectional curvature, it allows to have $\displaystyle{\frac{1}{2}n(n+1)}$ Killing vectors. and in contrast, if there exists $\displaystyle{\frac{1}{2}n(n+1)}$ Killing vectors, then the manifold is called maximal symmetric manifold, and the sectional curvature is constant.

for $\displaystyle{n}$-dimensional manifold with constant sectional curvature $\displaystyle{K}$ and signature $\displaystyle{0}$, the metric can be expressed as

$$
\tag{2.12}
\begin{align}
\mathrm{d}s^{2}=|\mathrm{d}x|^{2}+\frac{K(x\cdot \mathrm{d}x)^{2}}{1-K|x|^{2}}
\end{align}
$$

and for $\displaystyle{n}$-dimensional manifold with constant sectional curvature $\displaystyle{K}$ and signature $\displaystyle{n-2}$, the metric can be expressed as (de-Sitter metric)

$$
\tag{2.13}
\begin{align}
\mathrm{d}\tau ^{2} & =-(1-K|x|)\mathrm{d}t^{2}+|dx|^{2}+\frac{K(x\cdot \mathrm{d}x)^{2}}{1-K|x|^{2}}
\end{align}
$$

and if a manifold can be decomposed to a maximal symmetric subspace, the metric can be largely simplified. for example, the Robinson-Walker metric has a spherical homogeneous subspace and the metric can be expressed as

$$
\tag{2.14}
\begin{align}
\mathrm{d}\tau ^{2} & =-\mathrm{d}t^{2}+R^{2}(t)\left( \frac{\mathrm{d}r^{2}}{1-Kr^{2}}+r^{2}\mathrm{d}\theta ^{2}+r^{2}\sin ^{2}\theta \mathrm{d}\varphi ^{2} \right)
\end{align}
$$

### spin connection

the transformation matrix induced by a local coordinate transformation on $\displaystyle{n}$ dimensional manifold is an element of $\displaystyle{\mathrm{GL}(n,\mathbb{R})}$. however $\displaystyle{\mathrm{GL}(n,\mathbb{R})}$ has only tensor representation, and does not have spinor representation. so if we talk about spinor field, we have to turn to **vielbein**. here we adopt abstract index in Liang's book.

we can introduce tangent vielbein field $\displaystyle{e^{\mu}_{a}}$

$$
\tag{2.15}
\begin{align}
e_{a}(x)=e^{\nu}_{a}(x) \frac{\partial}{\partial x^{\nu}}, \mu=1,\dots,n
\end{align}
$$

with

$$
\tag{2.16}
\begin{align}
g_{\mu \nu}e^{\mu}_{a}e^{\nu}_{b}=\eta _{ab}, g^{\mu \nu}=\eta ^{ab}e^{\mu}_{a}e^{\nu}_{b}
\end{align}
$$

where $\displaystyle{\eta _{\mu \nu}}$ is flat metric. then we introduce the dual base vectors $\displaystyle{\vartheta ^{a}_{\mu}}$

$$
\tag{2.17}
\begin{align}
\vartheta ^{a}(x) & =\vartheta ^{a}_{\mu}(x)\mathrm{d}x^{\mu}
\end{align}
$$

with

$$
\tag{2.18}
\begin{align}
\braket{ \theta ^{a},e_{b} }  & =\delta ^{a}_{b} \\
g_{\mu \nu} & =\eta _{ab}\vartheta ^{a}_{\mu}\vartheta ^{b}_{\nu} \\
\eta ^{ab} & =g^{\mu \nu}\vartheta ^{a}_{\mu}\vartheta ^{b}_{\nu}
\end{align}
$$

then the metric can be decomposed as

$$
\tag{2.19}
\begin{align}
\mathrm{d}s^{2}=g_{\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu}=\eta _{ab}\vartheta ^{a}_{\mu}\vartheta ^{b}_{\nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu}=\eta _{ab}\vartheta ^{a}\vartheta ^{b}
\end{align}
$$

using vielbein formalism, it can naturally emerge two local transformation group

1. local coordinate transformation. correspond to general covariant principle. the corresponding connection is the usual Levi-Civita connection
1. local Lorentz transformation. if we require physical laws are invariant under local Lorentz transformation (just like Yang-Mills theory), we have to replace the usual derivative with covariant derivative with spinor connection

$$
\tag{2.20}
\begin{align}
D_{\mu}e_{a} & =\omega _{\mu ~a}^{~~b}e_{b}
\end{align}
$$

we write $\displaystyle{\omega ^{b}_{~a}=\omega ^{~b}_{\mu ~a}\mathrm{d}x^{\mu}}$ as (spin) connection 1-form. and the curvature 2-form $\displaystyle{\Omega ^{b}_{~a}=\mathrm{d}\omega ^{b}_{~a}+\omega ^{b}_{~c}\wedge \omega ^{c}_{~a}}$.

using spin connection, we can discuss the couple of spinor field $\displaystyle{\psi}$ and the gravity (metric or vielbein). let $\displaystyle{\Sigma ^{a}_{~b}}$ be the generator of spinor representation of Lorentz group, which satisfies

$$
\tag{2.21}
\begin{align}
[\Sigma _{ab},\Sigma _{cd}] & =\eta _{bc}\Sigma _{ad}+\eta _{ad}\Sigma _{bc}-\eta _{ac}\Sigma _{bd}-\eta _{bd}\Sigma _{ac}
\end{align}
$$

then the covariant derivatvie of spinor field can be expressed as

$$
\tag{2.22}
\begin{align}
D_{\mu}\psi & =\partial _{\mu}\psi+\frac{1}{2}\omega ^{a~b}_{~\mu}\Sigma _{ab}\psi
\end{align}
$$

we require the spin connection to have no torsion, then we have

1. $\displaystyle{\omega _{ab}=-\omega _{ba}}$
1. $\displaystyle{\nabla _{a}e_{b}-\nabla _{b}e_{a}=[e_{a},e_{b}]=f^{c}_{~ab}e_{c}}$

which implies

$$
\tag{2.23}
\begin{align}
\omega ^{a~b}_{~\mu}=\frac{1}{2}\vartheta^{a\nu}(\partial _{\mu}\vartheta^{b}_{\nu}-\partial _{\nu}\vartheta^{b}_{\mu})-\frac{1}{2}\vartheta^{b\nu}(\partial _{\mu}\vartheta ^{a}_{\nu}-\partial _{\nu}\vartheta_{\mu}^{a})-\frac{1}{2}\vartheta ^{a\nu}\vartheta ^{b\rho}(\partial _{\nu}e_{c\rho}-\partial _{\rho}e_{c\nu})\vartheta ^{c}_{\mu}
\end{align}
$$

and finally we consider the relation between Levi-Civita connection and spin connection. we have

$$
\tag{2.24}
\begin{align}
\Omega ^{a}_{~b}=\mathrm{d}\omega ^{a}_{~b}+\omega ^{a}_{~c}\wedge \omega ^{c}_{~b} & =\vartheta ^{a}_{\mu}(\mathrm{d}\Gamma ^{\mu}_{~\nu}+\Gamma ^{\mu}_{~\rho}\wedge \Gamma ^{\rho}_{~\nu})e^{\nu}_{b}=\vartheta ^{a}_{\mu}\Omega ^{\mu}_{~\nu}e^{\nu}_{b} \\
\omega ^{a}_{~b} & =\vartheta ^{a}_{\mu}(\delta ^{\mu}_{~\nu}\mathrm{d}+\Gamma ^{\mu}_{~\nu})e^{\nu}_{b} \\
\Gamma ^{\mu}_{~\nu} & =e^{\mu}_{a}(\mathrm{d}\theta ^{a}_{\nu}+\omega ^{a}_{~b}\vartheta ^{b}_{\nu})
\end{align}
$$

for simplicity, we write

$$
\tag{2.25}
\begin{align}
\nabla _{\mu}\xi ^{\nu} & = \partial _{\mu}\xi ^{\nu}+\Gamma ^{\nu}_{~\mu \rho}\xi ^{\rho}\\
\nabla _{\mu}\xi ^{a} & =\partial _{\mu}\xi ^{a}+\omega _{\mu~b}^{~a}\xi ^{b}
\end{align}
$$
