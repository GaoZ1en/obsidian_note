## the scalar field system

consider $\displaystyle{n}$ real scalar fields $\displaystyle{\phi ^{i}(x)}$ with flat metric $\displaystyle{\eta _{\mu \nu}=\mathrm{diag}(-,+,\dots,+)}$ in $\displaystyle{D}$ dimension. the action is given by

$$\tag{1.1}
\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{D}x[\eta ^{\mu \nu}\partial _{\mu}\phi ^{i}\partial _{\nu}\phi ^{i}+m^{2}\phi ^{i}\phi ^{i}]
\end{align}
$$

make a variation (here we donot consider any space boundary effects) and we have

$$\tag{1.2}
\begin{align}
\delta S & =\int _{M}\mathrm{d}^{D}x(\partial ^{2}-m^{2})\phi ^{i}\delta \phi ^{i}+\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{D-1}x\tau ^{\mu}\partial _{\mu}\phi ^{i}\delta \phi ^{i} \\
 & =\int _{M}\mathrm{d}^{D}xE_{\phi ^{i}}\delta \phi ^{i}+\theta|_{\Sigma _{f}-\Sigma _{i}}
\end{align}
$$

where $\displaystyle{E_{\phi ^{i}}}$ is the equation of motions, $\displaystyle{\theta}$ is the symplectic potential. the eom has two plane wave solutions $\displaystyle{e^{\pm ip^{\mu}x_{\mu}}}$, then the general solution for the eom is the sum of a positive frequency part and a negative frequency part as

$$\tag{1.3}
\begin{align}
\phi ^{i}(x) & =\phi ^{i}_{+}(x)+\phi ^{i}_{-}(x) \\
\phi ^{i}_{+}(x) & =\int \frac{\mathrm{d}^{D-1}\vec{p}}{(2\pi)^{D-1}2E}e^{ip^{\mu}x_{\mu}}a_{i}(\vec{p}) \\
\phi ^{i}_{-}(x) & =\int \frac{d^{D-1}\vec{p}}{(2\pi)^{D-1}2E}e^{-ip^{\mu}x_{\mu}}a_{i}^{\dagger}(\vec{p})
\end{align}
$$

then we will consider the symmetry of the action (1.1). here symmetry is defined as a transformation $\displaystyle{\phi\to \phi'}$, the action remains unchanged up to terms supported on the Cauchy surface (or something like that)

$$\tag{1.4}
\begin{align}
S[\phi' ^{i}] & =S[\phi ^{i}]+\Lambda [\phi ^{i}]|_{\Sigma _{f}-\Sigma _{i}}
\end{align}
$$

### $\displaystyle{\mathrm{SO}(n)}$ internal symmetry

let $\displaystyle{R^{i}_{~j}}$ be a matrix of the $\displaystyle{\mathrm{SO}(n)}$ group. then we have

$$\tag{1.5}
\begin{align}
\phi ^{i}(x)\to \phi'^{i}(x)=R^{i}_{~j}\phi ^{j}(x)
\end{align}
$$

then it is easy to verify that the action (1.1) is invariant under this internal symmetry. we write the infinitesimal transformation as

$$\tag{1.6}
\begin{align}
R^{i}_{~j}=\delta ^{i}_{~j}-\varepsilon r^{i}_{~j}
\end{align}
$$

where $\displaystyle{r^{i}_{~j}=-r^{j}_{~i}}$. the Lie algebra is the linear space spanned by the $\displaystyle{\frac{1}{2}n(n-1)}$ independent generators $\displaystyle{r_{ij}}$ of $\displaystyle{\mathrm{SO(n)}}$. here we give a useful basis. we denote the $\displaystyle{(i,j)}$-th basis as $\displaystyle{r_{(i,j)}}$ and the Lie algebra is given by

$$\tag{1.7}
\begin{align}
[r_{(i.j)},r_{(k,l)}] & =\delta _{jk}r_{(i,l)}+\delta _{il}r_{(j,k)}-\delta _{ik}r_{(j,l)}-\delta _{jl}r_{(i,k)} \\
\end{align}
$$

and by expotential map we have

$$\tag{1.8}
\begin{align}
R=\exp\left(-\frac{1}{2}\theta ^{ij}r_{(i,j)}\right)
\end{align}
$$

### general internal symmetry

it will be useful to establish the notation for the general situation of linearly realized internal symmetry under an arbitrary connected Lie group $\displaystyle{G}$, usually a compact group, of dimension $\displaystyle{\dim G}$. will be interested in an $\displaystyle{n}$-dimensional representation of $\displaystyle{G}$ in which the generators of its Lie algebra are a set of $\displaystyle{n\times n}$ matrices $\displaystyle{(t_{A})^{i}_{~j}}$. the corresponding Lie algebra $\displaystyle{\mathfrak{g}}$ is given by

$$\tag{1.9}
\begin{align}
[t_{A},t_{B}]=f_{AB}^{~~~~C}t_{C}
\end{align}
$$

and $\displaystyle{f_{AB}^{~~~~C}}$ are called the structure constants of the Lie algebra. a general element of the Lie algebra $\displaystyle{\mathfrak{g}}$ is given by

$$\tag{1.10}
\begin{align}
\Theta & =\theta ^{A}t_{A}
\end{align}
$$

and the corresponding element of the Lie group $\displaystyle{G}$ is given by the expotential map

$$\tag{1.11}
\begin{align}
U(\Theta) & =\exp(-\Theta)=\exp(-\theta ^{A}t_{A})
\end{align}
$$

