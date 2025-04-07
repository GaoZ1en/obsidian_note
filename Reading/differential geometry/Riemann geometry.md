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

