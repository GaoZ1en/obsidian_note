## Review of $\displaystyle{p}$-form gauge theory

### action

$$\tag{1.1}
\begin{align}
S & =-\frac{1}{2}\int _{M}F\wedge \star F  \\
 & =-\frac{1}{2(p+1)!}\int _{M}\sqrt{ -g }\mathrm{d}^{D}xF_{\mu_{1}\dots \mu _{p+1}}F^{\mu_{1}\dots \mu _{p+1}}
\end{align}
$$

where $\displaystyle{F=\mathrm{d}A}$ is the field strength. take a variation

$$\tag{1.2}
\begin{align}
\delta S & =\int _{M}(-1)^{p}\delta A\wedge \mathrm{d}\star F -\int _{\partial M}\delta A\wedge \star F
\end{align}
$$

then we have the equation of motion and symplectic potential

$$\tag{1.3}
\begin{align}
E & =(-1)^{p}\mathrm{d}\star F \\
\theta & =\int _{\Sigma}-\delta A\wedge \star F
\end{align}
$$

for the action to be variationally well-defined, we need to impose boundary condition. there are two options

$$\tag{1.4}
\begin{align}
\begin{cases}
\text{ PEC }: & i_{\partial M}A =0 \\
\text{ PMC }: & i_{\partial M}\star F =0
\end{cases}
\end{align}
$$

which generalizes the perfectly electrically conducting (PEC) and perfectly magnetic conducting (PMC) boundary conditions in electromagnetism.

the symplectic form is defined as the variation of the symplectic potential

$$\tag{1.5}
\begin{align}
\omega & =\int _{\Sigma}\delta A\wedge \star \delta F
\end{align}
$$

a gauge transformation can be written as a vector field

$$\tag{1.6}
\begin{align}
X_{\lambda} & =\int _{M} \mathrm{d}\lambda  \frac{\delta}{\delta A}
\end{align}
$$

act on the action, we have

$$\tag{1.7}
\begin{align}
\delta S & =\int _{M}(-1)^{p}\mathrm{d}\lambda\wedge \mathrm{d}\star F -\int _{\partial M}\mathrm{d}\lambda\wedge \star F \\
 & =0
\end{align}
$$

then the corresponding Noether charge is

$$\tag{1.8}
\begin{align}
Q_{\lambda} & =X_{\lambda}\cdot \theta-\alpha _{\lambda} \\
 & =-\int _{\Sigma}\lambda \wedge \star F
\end{align}
$$

### euclidean partition function

then we consider the euclidean partition function on a closed, connected $\displaystyle{D}$-dimensional Euclidean manifold $\displaystyle{\mathcal{M}}$ (see 1611.05920). for $\displaystyle{p=1}$, the partition function is given by

$$\tag{1.9}
\begin{align}
\mathcal{Z}_{\text{ PI }}^{p=1}[\mathcal{M}] & =\sum _{\text{ bundles }}\int \frac{\mathcal{D}A}{|\mathcal{G}|} e^{-S[F]}
\end{align}
$$

where $\displaystyle{|ca;G|}$ is the volume of the gauge group, and the sum is over all magnetic bundles obeying the Dirac quantization condition, labeled by the $\displaystyle{H^{2}(M,\mathbb{Z})}$. the field strength in any bundle can be written globally as

$$\tag{1.10}
\begin{align}
F & =\mathcal{F}+\mathrm{d}A
\end{align}
$$

with $\displaystyle{\mathcal{F}\in \frac{2\pi}{q}\mathcal{H}^{2}(\mathcal{M},\mathbb{Z})}$, where $\displaystyle{\mathcal{H}^{2}(\mathcal{M},\mathbb{Z})}$ is the subset of harmonic 2-forms whose integral over any closed submanifold gives an integer. thus we can always treat $\displaystyle{A}$ as residing in the trivial bundle. then the partition function can be written as

$$\tag{1.11}
\begin{align}
\mathcal{Z}^{p=1}_{\text{ PI }}[M] & =\sum _{\mathcal{F}\in \frac{2\pi}{q}\mathcal{H}^{2}(\mathcal{M},\mathbb{Z})}e^{-S[\mathcal{F}]}\int \frac{\mathcal{D}A}{|\mathcal{G}|} e^{-S[\mathrm{d}A]}
\end{align}
$$

the gauge group $\displaystyle{\mathcal{G}}$ consists of all $\displaystyle{U(1)}$-valued functions on $\displaystyle{\mathcal{M}}$, acting by $\displaystyle{A\to A+\mathrm{d}\phi}$. the periodicity is $\displaystyle{\phi \sim \phi+\frac{2\pi}{q}}$. 
it helps to Hodge decompose $\displaystyle{A}$ into exact, coexact and harmonic parts

$$\tag{1.12}
\begin{align}
A & =A_{\text{ex}}+A_{\text{co}}+A_{\text{harm}} \\
\mathcal{D}A & =\mathcal{D}A_{\text{ex}}\mathcal{D}A_{\text{co}}\mathcal{D}A_{\text{harm}}
\end{align}
$$

we can do the similar decomposition for $\displaystyle{\phi}$

$$\tag{1.13}
\begin{align}
\phi & =\phi _{\text{topo}}+\phi _{\text{co}}+\phi _{\text{const}}
\end{align}
$$

with $\displaystyle{\mathrm{d}\phi _{\text{topo}}\in \frac{2\pi}{q}\mathcal{H}^{1}(\mathcal{M},\mathbb{Z})}$. we therefore have

$$\tag{1.14}
\begin{align}
|\mathcal{G}| & =|\mathcal{G}_{\text{topo}}|\int \mathcal{D}\phi _{\text{const}}\int\mathcal{D}\phi _{\text{co}}
\end{align}
$$

notice that only the coexact part contributes to the action, so $\displaystyle{A_{\text{ex}}}$ and $\displaystyle{A_{\text{harm}}}$ get integrated over freely, which leads to infinities if not for several cancellations. by definition, we have

$$\tag{1.15}
\begin{align}
A_{\text{ex}}=\mathrm{d}\chi
\end{align}
$$

for some $\displaystyle{\chi}$. we remove the zero mode ambiguity by requiring $\displaystyle{\chi}$ to integrate to zero. we get a Jacobian determinant $\displaystyle{\mathcal{D}A_{\text{ex}}=\mathcal{D}\chi=\det'(\Delta _{0})^{1/2}\mathcal{D'}\chi}$, where $\displaystyle{\Delta _{0}}$ is the Laplacian on zero-forms and the primes indicate the omission of the zero mode. we then have the cancellation

$$\tag{1.16}
\begin{align}
\frac{\int \mathcal{D}'\chi}{\int \mathcal{D}\phi _{\mathrm{co}}}=1
\end{align}
$$

the integration over harmonic 1-forms $\displaystyle{A_{\text{harm}}}$ gives the volume of $\displaystyle{H^{1}(\mathcal{M},\mathbb{R})}$. the quotient by $\displaystyle{\mathcal{G}_{\text{topo}}\simeq \frac{2\pi}{q}H^{1}(\mathcal{M},\mathbb{Z})}$ renders it finite. the integral $\displaystyle{|U(1)|\equiv \int \mathcal{D}\phi _{\text{const}}}$ over the constant gauge transformation gives the volume of $\displaystyle{U(1)}$ with a certain measure. overall we have

$$\tag{1.17}
\begin{align}
\mathcal{Z}_{\mathrm{PI}}^{p=1}[\mathcal{M}] & =\sum _{\mathcal{F}\in \frac{2\pi}{q}\mathcal{H}^{2}(\mathcal{M},\mathbb{Z})}e^{-S[\mathcal{F}]}\det'(\Delta _{0})^{1/2} \left|\frac{H^{1}(\mathcal{M},\mathbb{R})}{\frac{2\pi}{q}H^{1}(\mathcal{M},\mathbb{Z})}\right| \frac{1}{|U(1)|}\int \mathcal{D}A_{\text{co}} e^{-S[\mathrm{d}A_{\text{co}}]}
\end{align}
$$

note that $\displaystyle{\mathrm{d}\star A_{\text{co }}}$ by definition, then the action reduces to

$$\tag{1.18}
\begin{align}
S[\mathrm{d}A_{\text{co}}] & =\frac{1}{2}\int _{\mathcal{M}} \mathrm{d}A_{\text{co}}\wedge \star \mathrm{d}A_{\text{co}} \\
  & =\frac{1}{2}\int _{\mathcal{M}}A_{\text{co}}\wedge \star \Delta _{1}A_{\text{co}}
\end{align}
$$

where $\displaystyle{\Delta _{1}=-(-1)^{D}\star \mathrm{d}\star \mathrm{d}-\mathrm{d}\star \mathrm{d}\star}$ is the Hodge Laplacian on 1-forms. the integration over $\displaystyle{A_{\text{co}}}$ is Gaussian, which gives

$$\tag{1.18}
\begin{align}
\mathcal{Z}^{p=1}_{\text{ PI }}[\mathcal{M}] & =\frac{\det'(\Delta _{0})^{1/2}}{\det'(\Delta)}
\end{align}
$$