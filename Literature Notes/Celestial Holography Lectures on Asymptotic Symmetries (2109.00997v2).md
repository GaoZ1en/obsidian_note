---
paper id: 2109.00997v2
title: "Celestial Holography: Lectures on Asymptotic Symmetries"
authors: P. B. Aneesh, Geoffrey Compère, Leonardo Pipolo de Gioia, Igor Mol, Bianca Swidler
publication date: 2021-09-02T14:50:50Z
abstract: "The aim of these Lectures is to provide a brief overview of the subject of asymptotic symmetries of gauge and gravity theories in asymptotically flat spacetimes as background material for celestial holography."
comments: "27 pages, typos corrected, to be published in SciPost"
pdf: "[[Attachments/Assets/Celestial Holography Lectures on Asymptotic Symmetries (2109.00997v2).pdf]]"
url: https://arxiv.org/abs/2109.00997v2
tags: []
---

asymptotic symmetry group is defined as the quotient of the group of residual gauge transformations modulo the group of trivial gauge transformations. here trivial means that the gauge transformatio is associated to a vanishing canonical charge. the aymptotic symmetry group is equivalently defined as the group of global symmetries of the class of theories given the set of boundary conditions.

notations:
1. $\displaystyle{\Phi^{i}=\left\{\phi,A_{\mu},g_{\mu \nu},\dots\right\}}$ for dynamical and background fields
1. $\displaystyle{\mathbf{L}[\Phi ^{i}]}$ for Lagrangian
1. $\displaystyle{\delta _{\lambda}\Phi ^{i}}$ for gauge transformation with parameter $\displaystyle{\lambda=\lambda ^{\alpha}(\Phi ^{i}(x^{\mu}),x^{\mu})}$, which form an algebra given by $\displaystyle{[\delta _{\lambda_{1}},\delta _{\lambda_{2}}]\Phi ^{i}=\delta _{[\lambda_{1},\lambda_{2}]}\Phi ^{i},[\lambda_{1},\lambda_{2}]^{\alpha}=C^{\alpha}_{\beta \gamma}(\lambda _{1}^{\beta},\lambda_{2})^{\gamma}+\delta _{\lambda_{1}}\lambda_{2}^{\alpha}-\delta _{\lambda_{2}}\lambda _{1}^{\alpha}}$.

take a variation of the Lagrangian

$$\begin{align}
\delta \mathbf{L} & =\mathbf{E}_{\Phi ^{i}}\delta \Phi ^{i}+\mathrm{d}\Theta
\end{align}$$

then the symplectic form is given by

$$\begin{align}
\Omega & =\delta \Theta
\end{align}$$

we have

$$\begin{align}
\mathrm{d}\Omega & =\mathrm{d}\delta \Theta \\
 & =\delta (\delta\mathbf{L}-\mathbf{E}_{\Phi ^{i}}\delta \Phi ^{i}) \\
 & =-\delta E_{\Phi ^{i}}\wedge \delta \Phi ^{i}\approx 0
\end{align}$$

now we have a gauge transformation

$$\begin{align}
X_{\lambda} & =\int \mathrm{d}^{d}x\delta _{\lambda}\Phi ^{i} \frac{\delta}{\delta \Phi ^{i}}
\end{align}$$

act on the Lagrangian

$$\begin{align}
X_{\lambda}\cdot \delta\mathbf{L} & =\mathrm{d}\alpha _{\lambda}(+\beta _{\lambda})
\end{align}$$

here $\displaystyle{\beta _{\lambda}}$ is the possible anomaly term that $\displaystyle{\delta \beta _{\lambda}=0}$. then the Noether current is given by

$$\begin{align}
J_{\lambda} & =X_{\lambda}\cdot \Theta-\alpha _{\lambda}
\end{align}$$

notice that

$$\begin{align}
\mathrm{d}J_{\lambda} & =\mathrm{d}(X_{\lambda}\cdot \Theta-\alpha _{\lambda}) \\
 & =X_{\lambda}\cdot \mathrm{d}\Theta-\mathrm{d}\alpha _{\lambda} \\
 & =X_{\lambda}\cdot (\delta \mathbf{L}-\mathbf{E}_{\Phi ^{i}}\delta \Phi ^{i})-X_{\lambda}\cdot \delta \mathbf{L} \\
 & =-\mathbf{E}_{\Phi ^{i}}\delta _{\lambda} \Phi^{i} \\
 & \approx 0
\end{align}$$

then we can write

$$\begin{align}
J_{\lambda} & =\mathrm{d}Q_{\lambda}+(\text{EOM})
\end{align}$$

the Noether charge can be written as

$$\begin{align}
H_{\lambda} & =\int _{\Sigma}J_{\lambda} \\
 & =\int _{\partial \Sigma}Q_{\lambda}
\end{align}$$

the Poisson bracket between $\displaystyle{H_{\lambda}}$ form an algebra

$$\begin{align}
\left\{H_{\lambda_{1}},H_{\lambda_{2}}\right\} & =\int _{\Sigma}X_{\lambda_{1}}\cdot X_{\lambda_{2}}\cdot \Omega \\
 & =H_{[\lambda_{1},\lambda_{2}]}+K_{\lambda_{1},\lambda_{2}}
\end{align}$$

where $\displaystyle{K_{\lambda_{1},\lambda_{2}}}$ is the central extension that only depend on the background fields.

# celestial asymptotic symmetry groups

the asymptotic boundary of Minkowski spacetime in $\displaystyle{n}$ dimensions consists of future and past null infinities $\displaystyle{\mathcal{I}^{\pm}}$, future and path timelike infinities $\displaystyle{i^{\pm}}$ (which are Euclidean $\displaystyle{\mathrm{AdS}_{n-1}}$). and spacelike infinity $\displaystyle{i^{0}}$. near $\displaystyle{\mathcal{I}^{\pm}}$ we use retarded/advanced coordinates

$$\begin{align}
\mathrm{d}s^{2} & =-\mathrm{d}u^{2}-2\mathrm{d}u\mathrm{d}r+r^{2}\gamma _{AB}\mathrm{d}x^{A}\mathrm{d}x^{B} \\
\mathrm{d}s^{2} & =-\mathrm{d}v^{2}+2\mathrm{d}v\mathrm{d}r+r^{2}\gamma _{AB}\mathrm{d}x^{A}\mathrm{d}x^{B} \\
u & =t-r,v=t+r
\end{align}$$

where $\displaystyle{\gamma _{AB}}$ is the $\displaystyle{S^{n-2}}$ round metric. we define the boundaries of $\displaystyle{\mathcal{I}^{+}}$ to be the spheres $\displaystyle{\mathcal{I}^{+}_{\pm}}$ defined as the limit $\displaystyle{u\to \pm \infty}$ taken after $\displaystyle{r\to \infty}$ and similarly the boundaries of $\displaystyle{\mathcal{I}^{-}}$.

retarded and advanced coordinates are not appropriate to describe $\displaystyle{i^{0,\pm}}$. near $\displaystyle{i_{0}}$ we introduce $\displaystyle{(\tau,\rho,x^{A})}$ where $\displaystyle{t=\rho \sinh \tau,r=R+\rho \cosh \tau}$ for large $\displaystyle{R}$, with $\displaystyle{i^{0}}$ being defined as the $\displaystyle{\rho\to \infty}$ limit. near $\displaystyle{i^{\pm}}$ we introduce coordinate $\displaystyle{\hat{\tau},\hat{\rho},x^{A}}$ where $\displaystyle{t=\pm T+\hat{\tau}\cosh \hat{\rho}, r=\hat{\tau}\sinh \rho}$ for large $\displaystyle{T}$, and then $\displaystyle{i^{\pm}}$ are defined as the surface $\displaystyle{\hat{\tau}\to \infty}$. the metric reads

$$\begin{align}
\mathrm{d}s^{2} & =\mathrm{d}\rho ^{2}+\rho ^{2}(-\mathrm{d}\tau ^{2}+\cosh ^{2}\tau \gamma _{AB}\mathrm{d}x^{A}\mathrm{d}x^{B})+\mathcal{O}(\rho) \\
\mathrm{d}s^{2} & =-\mathrm{d}\hat{\tau}^{2}+\hat{\tau}^{2}(\mathrm{d}\hat{\rho}^{2}+\sinh ^{2}\hat{\rho}\gamma _{AB}\mathrm{d}x^{A}\mathrm{d}x^{B})+\mathcal{O}(\hat{\tau})
\end{align}$$

in Minskowski spacetime with $\displaystyle{d\geqslant 4}$, the infrared strcture of any propagating field at each asymptotic boundary can be decomposed in terms of multipole moments which appear at higher and higher subleading orders in the expansion from each boundary. in that sense, there is an infinite amount of holographic fields deal to a propagating field in Minskowsi spacetime. for comparison, in $\displaystyle{\mathrm{AdS}}$ there is only two holographiv fields (source and vacuum expectation).

## 3d flat gravity

we first consider $\displaystyle{(u,r,\phi)}$. we impose the Newman-Unti gauge

$$\begin{align}
g_{rr}=g_{r\phi} & =0,  & g_{ru}=-1
\end{align}$$

this gauge fixing is equivalent to the Bondi gauge. and we impose the following boundary conditions

$$\begin{align}
g_{uu} & =\mathcal{O}(r^{0}), & g_{uA} & =\mathcal{O}(r_{0}), & g_{\phi \phi} & =\mathcal{O}(r)
\end{align}$$

given this gauge choice and boundary conditions, the most general form of a metric solving Einstein's equation can be written as

$$\begin{align}
\mathrm{d}s^{2} & =\Theta(\phi)\mathrm{d}u^{2}-2\mathrm{d}u\mathrm{d}r+2\left[ \Xi(\phi)+\frac{u}{2}\partial _{\phi}\Theta(\phi) \right]\mathrm{d}u\mathrm{d}\phi+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

the phase space of the theory is the set of all such metrics parameterized by $\displaystyle{\Theta(\phi)}$ and $\displaystyle{\Xi(\phi)}$. the residual symmetries preserving the gauge choice and boundary conditions can be deduced from the condition

$$\begin{align}
\mathcal{L}_{\xi}g_{\mu \nu}(\Theta,\Xi) & =g_{\mu \nu}(\Theta+\delta \Theta,\Xi+\delta \Xi)-g_{\mu \nu}
\end{align}$$

and the general solution is then

$$\begin{align}
\xi ^{\mu}\partial _{\mu} & :\begin{cases}
\xi ^{\mu}=T(\phi)+u \partial _{\phi}R(\phi) \\
\xi ^{r}=-r\partial _{\phi}R(\phi)+\partial _{\phi}^{2}T+u \partial _{\phi}^{3}R(\phi)-\frac{1}{2}(\partial _{\phi} T+u \partial _{\phi}^{2}R)\left( \Xi+\frac{u}{2}\partial _{\phi}\Theta \right) \\
\xi ^{\phi}=R(\phi)-\frac{1}{r}\partial _{\phi}T-\frac{u}{r}\partial _{\phi}^{2}R
\end{cases}
\end{align}$$

if we define

$$\begin{align}
P_{n} & =\xi(T=e^{im\phi},R=0), & J_{m}=\xi(T=0,R=e^{im\phi})
\end{align}$$

then we have

$$\begin{align}
i[P_{m},P_{n}] & =0 \\
i[J_{m},J_{n}] & =(m-n)J_{m+n} \\
i[J_{m},P_{n}] & =(m-n)P_{m+n}
\end{align}$$

the action of the vector field can be understood as transformations directly on the solution space

$$\begin{align}
\delta _{T,R} \Theta & =R\partial _{\phi}\Theta+2\Theta \partial _{\phi}R-2\partial _{\phi}^{3}R \\
\delta _{T,R}\Xi & =R\partial _{\phi}\Xi+2\Xi\partial _{\phi}R+\frac{1}{2}T\partial _{\phi}\Theta+\Theta \partial _{\phi}T-\partial _{\phi}^{3}T
\end{align}$$

then by $\displaystyle{\delta _{T,R}\Theta}$, $\displaystyle{\Theta}$ belongs to the coadjoint representation of $\displaystyle{\mathrm{Diff}(S^{1})}$. these can be rewritten into a simpler form. define the superrotation field $\displaystyle{\Psi(\phi)}$ as $\displaystyle{\Theta=(\partial _{\phi}\Psi)^{2}-2\partial _{\phi}^{2}\Psi+8GMe^{2\Psi}}$, we have

$$\begin{align}
\delta _{T,R}\Psi & =R\partial _{\phi}\Psi+\partial _{\phi}R
\end{align}$$

which gives it the form of a Liouville stress tensor... the parameter $\displaystyle{M}$ is exactly the charge conjugate to $\displaystyle{P_{0}=\partial _{t}}$, the zero mode $\displaystyle{\Theta_{0}=8GM}$. similarly, we can introduce a supertranslation field $\displaystyle{C}$ as

$$\begin{align}
\Xi & =-\Theta \partial _{\phi}C-\partial _{\phi}^{3}C+4GJe^{2\Psi}+\frac{1}{2}\partial _{\phi}\Theta C
\end{align}$$

gives the transformation of $\displaystyle{C}$ as

$$\begin{align}
\delta _{T,R}C & =T+R\partial _{\phi}C-C\partial _{\phi}R
\end{align}$$

the zero mode $\displaystyle{\Xi_{0}=4GJ}$ and the $\displaystyle{J}$ is the angular moemntum conjugate to $\displaystyle{-\partial _{\phi}}$. as a summart, the field space is parameterized by the supertranslation field $\displaystyle{C(\phi)}$, the superrotation field $\displaystyle{\Psi(\phi)}$ and the zero modes $\displaystyle{J}$ and $\displaystyle{M}$. the generalized Noether charges are given by

$$\begin{align}
\mathcal{P}_{n} & =\frac{1}{16\pi G}\int _{0}^{2\pi}\mathrm{d}\phi(\Theta(\phi)+1)e^{in\phi} \\
\mathcal{J}_{n} & =\frac{1}{8\pi G}\int _{0}^{2\pi}\mathrm{d}\phi \Xi(\phi)e^{in\phi}
\end{align}$$

and we have the following algebra

$$\begin{align}
i[\mathcal{P}_{m},\mathcal{P}_{n}] & =0 \\
i[\mathcal{J}_{m},\mathcal{J}_{n}] & =(m-n)\mathcal{J}_{m+n} \\
i[\mathcal{J}_{m},\mathcal{P}_{n}] & =(m-n)\mathcal{P}_{m+n}+\frac{1}{4G}m(m^{2}-1)\delta _{m+n,0}
\end{align}$$

at spacelike infinity $\displaystyle{i^{0}}$
