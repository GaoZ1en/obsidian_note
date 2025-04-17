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

#### general internal symmetry

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

---

back to the action (1.1). consider a infinitesimal transformation

$$\tag{1.12}
\begin{align}
X_{ab}=\int \mathrm{d}^{D}x r_{(a,b)~j}^{~~~~~~~~i}\phi ^{j} \frac{\delta}{\delta \phi ^{i}}
\end{align}
$$
then act this symmetry on the action (1.1), we have

$$\tag{1.13}
\begin{align}
X_{ab}\cdot \delta S & =-\int \mathrm{d}^{D}x(\eta ^{\mu \nu}\partial _{\mu}\phi ^{i}\partial _{\nu}(X_{ab}\cdot\delta \phi ^{i})+m^{2}\phi ^{i}(X_{ab}\cdot\delta \phi ^{i})) \\
	 & = -\int \mathrm{d}^{D}x(\eta ^{\mu \nu}\partial _{\mu}\phi ^{i}\partial _{\nu}(r_{(a,b)~j}^{~~~~~~~~i}\phi ^{j})+m^{2}\phi ^{i}(r_{(a,b)~j}^{~~~~~~~~i}\phi ^{j})) \\
	 & = 0
\end{align}
$$

then the corresponding Noether charge is

$$\tag{1.14}
\begin{align}
H_{ab} & =X_{ab}\cdot \theta-\alpha _{ab} \\
 & =\int _{\Sigma}\mathrm{d}^{D-1}x\tau ^{\mu}\partial _{\mu}\phi ^{i}r_{(a,b)~j}^{~~~~~~~~i}\phi ^{j} \\
 & =r_{(a,b)~j}^{~~~~~~~~i}\int _{\Sigma}\mathrm{d}^{D-1}x\tau ^{\mu}\partial _{\mu}\phi ^{i}\phi ^{j}
\end{align}
$$

### spacetime symmetries - the Lorentz and Poincaré groups

the Lorentz group is defined as the group of homeogeneous linear transformations of coordinates in $\displaystyle{D}$-dimensional Minkowski spacetime that preserve the Minkowski norm of any vector. we write

$$\tag{1.15}
\begin{align}
x^{\mu}=\Lambda ^{\mu}_{~\nu}x'^{\nu},\, x'^{\mu}=\Lambda ^{-1\mu}_{~~~~~~\nu}x^{\nu}
\end{align}
$$

where 

$$\tag{1.16}
\begin{align}
\Lambda ^{\mu}_{~\rho}\eta _{\mu \nu}\Lambda ^{\nu}_{~\sigma}=\eta _{\rho \sigma}
\end{align}
$$

the Poincaré group is the semi-direct product of the Lorentz group and the translation group,

$$\tag{1.17}
\begin{align}
x^{\mu}=\Lambda ^{\mu}_{~\nu}x'^{\nu}+a^{\mu}
\end{align}
$$

consider a infinitesimal transformation

$$\tag{1.18}
\begin{align}
\Lambda ^{\mu}_{~\nu}=\delta ^{\mu}_{\nu}+\varepsilon m^{\mu}_{~\nu}
\end{align}
$$

we have $\displaystyle{m_{\mu \nu}=-m_{\nu \mu}}$. we introduce a basis for the generators of the Lorentz group $\displaystyle{m_{\mu \nu}}$ as $\displaystyle{m_{(\rho,\sigma)}}$, and the Lie algebra is given by

$$\tag{1.19}
\begin{align}
[m_{(\mu,\nu)},m_{(\rho,\sigma)}] & =\eta _{\mu \sigma}m_{(\nu,\rho)}+\eta _{\nu \rho}m_{(\mu,\sigma)}-\eta _{\mu \rho}m_{(\nu,\sigma)}-\eta _{\nu \sigma}m_{(\mu,\rho)}
\end{align}
$$

a general Lorentz transformation is generated by the expotential map

$$\tag{1.20}
\begin{align}
\Lambda & =\exp\left(\frac{1}{2}\lambda ^{\mu \nu}m_{(\mu,\nu)}\right)
\end{align}
$$

