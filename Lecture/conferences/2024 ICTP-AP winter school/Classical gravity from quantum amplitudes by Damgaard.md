two body problem in general relativity is not solved

an effective approximation is the post-Minkowskian expansion

we can treat black holes as point particles, then use quantum field theory to consider it. This is not QG

$$
\tag{1.1}
\begin{align}
S & =\int \mathrm{d}^{4}x\sqrt{ -g }\left[\frac{R}{16\pi G}+\frac{1}{2}g^{\mu \nu}(\nabla_{\mu }\phi_{1}\nabla_{\nu}\phi_{1}+\nabla_{\mu}\phi_{2}\nabla_{\nu}\phi_{2})-\frac{1}{2}(m_{1}^{2}\phi_{1}^{2}+m_{2}^{2}\phi_{2}^{2})\right]
\end{align}
$$

then expand $\displaystyle{g_{\mu \nu}=\eta_{\mu \nu}+h_{\mu \nu}}$. we must include loop diagrams to meet general relativity.

virial theorem implies that in bound black hole systems

$$
\tag{1.2}
\begin{align}
\braket{  \frac{GM}{r}  } =\braket{ v^{2} }
\end{align}
$$

the post-Newtonian expansion is in both $\displaystyle{G}$ and $\displaystyle{v^{2}}$.

post-Minkowskian expansion is a relativistic generalization of Born expansion(?)

three pictures...

some iteration of Lippmann-Schwinger equation

at one-loop order we have

$$
\tag{1.3}
\begin{align}
\braket{ p | \hat{\mathcal{V}}_{2PM} | p' } =\mathcal{M}_{1-loop}(p,p')-\int \frac{\mathrm{d}^{3}k}{(2\pi)^{3}} \frac{\mathcal{M}_{tree}(p,k)\mathcal{M}_{tree}(k,p')}{E_{p}-E_{k}+i\varepsilon}
\end{align}
$$

and the result is:

one picture...

we want a more systematic way...

$$
\tag{2.1}
\begin{align}
\hat{S}=1+\frac{i}{\hbar}\hat{T}
\end{align}
$$

scattering amplitude

$$
\tag{2.2}
\begin{align}
\braket{ p_{1}',p_{2}' | \hat{T} | p_{1},p_{2} }  & =(2\pi \hbar)^{D}\delta^{D}(p)M(p_{1}',p_{2}';p_{1},p_{2})
\end{align}
$$

consider

$$
\tag{2.3}
\begin{align}
\hat{S}=\exp\left( i \frac{\hat{N}}{\hbar} \right)
\end{align}
$$

where $\displaystyle{\hat{N}}$ is hermitian. the expansion of $\displaystyle{\hat{N}}$ starts with classical terms followed by quantum corrections. then we will relate $\displaystyle{\hat{N}}$ with $\displaystyle{\hat{T}}$

$$
\tag{2.4}
\begin{align}
\hat{T}=G_{N}\hat{T}_{0}+G_{N}^{3/2}\hat{T}_{0}^{\mathrm{rad}}+\dots \\
\hat{N}=G_{N}\hat{N}_{0}+G_{N}^{3/2}\hat{N}_{0}^{\mathrm{rad}}+\dots
\end{align}
$$

solve this iteratively...

one picture...

(a general solution?)

then plug in the completion relation.

KMOC formalism?

change in observable of operator $\displaystyle{\hat{O}}$ from $\displaystyle{t=-\infty}$ to $\displaystyle{t=+\infty}$

$$
\tag{2.5}
\begin{align}
<\hat{O}>  & = \braket{ \mathrm{in} | \hat{S}^{\dagger}\hat{O}\hat{S} | \mathrm{in} } -\braket{ \mathrm{in} |\hat{O} | \mathrm{in} } \\
 & =e^{-i \hat{N}}\hat{O}e^{+i \hat{N}}
\end{align}
$$

$$
\tag{2.6}
\begin{align}
<\hat{O}> & =\braket{ \mathrm{in} | \hat{S}[\hat{O},\hat{S}] | \mathrm{in} }  \\
 & =\sum_{\mathrm{out}}\braket{ \mathrm{in} | \hat{S} | \mathrm{out} }^\ast(\hat{O}_{\mathrm{out}}-\hat{O}_{\mathrm{in}})\braket{ \mathrm{in} | \hat{S} | \mathrm{out} }
\end{align}
$$
