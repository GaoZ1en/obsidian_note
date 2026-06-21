---
paper id: 2510.04499v1
title: Black hole thermodynamics is around the corner
authors: Gerui Chen, Wei Guo, Xin Lan, Hongbao Zhang, Wei Zhang
publication date: 2025-10-06T05:25:13Z
abstract: We propose to work on the Euclidean black hole solution with a corner rather than with the prevalent conical singularity. As a result, we find that the Wald formula for black hole entropy can be readily obtained for generic F(Rabcd) gravity by using both the action without the corner term and the action with the corner term due to their equivalence to the first order variation, which implies that it is the corner rather than the corner term that encodes the entropy related information. With such an equivalence, we further make use of a special diffeomorphism to accomplish a direct derivation of the ADM Hamiltonian conjugate to the Killing vector field normal to the horizon in the Lorentz signature as a conjugate variable of the inverse temperature in the grand canonical ensemble.
comments: 12 pages, 3 figures
pdf: "[[Attachments/Assets/Black hole thermodynamics is around the corner (2510.04499v1).pdf]]"
url: https://arxiv.org/abs/2510.04499v1
tags: []
---

# basic setup

we start from the following general Lagrangian

$$
\tag{.}\begin{align}
\mathbf{L} & =\varepsilon F(R_{abcd},g_{ab})
\end{align}
$$

take a variation

$$\begin{align}
\delta \mathbf{L} & =\mathbf{E}^{\mu \nu}\delta g_{\mu \nu}+\mathrm{d}\Theta \\
\mathbf{E}^{\mu \nu} & =\varepsilon\left( \frac{1}{2}g^{\mu \nu}F+\frac{1}{2}\frac{\delta F}{\delta g_{\mu \nu}}+2\nabla _{\rho}\nabla _{\sigma}\psi ^{\mu(\rho \sigma)\nu} \right) \\
\Theta & =\vartheta \cdot \varepsilon \\
\vartheta ^{a} & =2(\nabla _{d}\psi ^{bdca}\delta g_{bc}-\psi ^{bdca}\nabla _{d}\delta g_{bc})
\end{align}$$

here we use

$$\begin{align}
\delta R_{\mu \nu \rho \sigma} & =\frac{1}{2}(\nabla _{\rho}\nabla _{\nu}\delta g_{\mu \sigma}-\nabla _{\rho}\nabla _{\mu}\delta g_{\nu \sigma}+\nabla _{\sigma}\nabla _{\mu}\delta g_{\nu \rho}-\nabla _{\sigma}\nabla _{\nu}\delta g_{\mu \rho})
\end{align}$$

now let we consider a Euclidean manifold $\displaystyle{M}$ with the portion of its boundary given by $\displaystyle{\Sigma_{1}}$ and $\displaystyle{\Sigma _{2}}$

![[Attachments/Pasted image 20251013114303.png]]

$\displaystyle{\Sigma _{1}}$ and $\displaystyle{\Sigma_{2}}$ are assumed to intersect with each other at the corner $\displaystyle{\mathcal{S}}$. we have

$$\begin{align}
\delta g^{ab}|_{\Sigma _{i}} & =-2\delta a_{i}n^{a}_{i}n^{b}_{i}+\bar{\delta}A_{i}^{a}n_{i}^{b}+\bar{\delta}A^{b}_{i}n_{i}^{a}+\delta h_{i}^{ab}
\end{align}$$

with  $\displaystyle{n_{ia}\bar{\delta}A^{a}_{i}=0}$, and

$$\begin{align}
\delta h_{1}^{ab} & =2(\cot \theta \delta \theta-\delta a_{2})r_{1}^{a}r_{1}^{b}+r_{1}^{a}\bar{\delta}\tilde{B}_{1}^{b}+\bar{\delta}\tilde{B}^{a}_{1}r_{1}^{b}+\delta \gamma ^{ab} \\
\delta h_{2}^{ab} & =2(\cot \theta \delta \theta-\delta a_{1})r_{2}^{a}r_{2}^{b}+r_{2}^{a}\bar{\delta}\tilde{B}_{2}^{b}+\bar{\delta}\tilde{B}^{a}_{2}r_{2}^{b}+\delta \gamma ^{ab} \\
\bar{\delta}A^{a}_{1} & =(\delta \theta+\cot \theta(\delta a_{2}-\delta a_{1}))r_{1}^{a}+\bar{\delta}\tilde{A}_{1}^{a} \\
\bar{\delta}A^{a}_{2} & =(\delta \theta+\cot \theta(\delta a_{1}-\delta a_{2}))r_{2}^{a}+\bar{\delta}\tilde{A}_{2}^{a}
\end{align}$$

$\displaystyle{\gamma ^{ab}}$ is the induced metric on the corner $\displaystyle{\mathcal{S}}$, $\displaystyle{r^{a}_{i}}$ with $\displaystyle{r^{a}_{i}n_{ia}=0}$ are outward pointing unit normal to the corner on $\displaystyle{\Sigma _{i}}$, satisfying

$$\begin{align}
\begin{pmatrix}
n_{2}^{a} \\
r_{2}^{a}
\end{pmatrix} & =\begin{pmatrix}
-\cos \theta & \sin \theta \\
\sin \theta & \cos \theta
\end{pmatrix}\begin{pmatrix}
n_{1}^{a} \\
r_{1}^{a}
\end{pmatrix}, & \begin{pmatrix}
n_{1}^{a} \\
r_{1}^{a}
\end{pmatrix} & =\begin{pmatrix}
-\cos \theta & \sin \theta \\
\sin \theta & \cos \theta
\end{pmatrix}\begin{pmatrix}
n_{2}^{a} \\
r_{2}^{a}
\end{pmatrix}
\end{align}$$

and $\displaystyle{\bar{\delta}\tilde{A}^{a}_{i}}$ as well as $\displaystyle{\bar{\delta}\tilde{B}^{a}_{i}}$ are tangential to the corner, satisfying

$$\begin{align}
\bar{\delta}\tilde{B}^{a}_{1} & =\cot \theta \bar{\delta}\tilde{A}^{a}_{1}+\csc \theta \bar{\delta} \tilde{A}^{a}_{2}, & \bar{\delta}\tilde{B}^{a}_{2} & =\csc \theta \bar{\delta}\tilde{A}^{a}_{1}+\cot \theta \bar{\delta}\tilde{A}^{a}_{2}
\end{align}$$

thus we on the boundary, $\displaystyle{\Theta}$ can be cast into the following form

$$\begin{align}
\Theta|_{\Sigma _{i}} & =-\delta \mathbf{B}+\mathrm{d}\mathbf{C}+\mathbf{F} \\
\mathbf{B} & =4\Psi_{ab}K^{ab}\hat{\varepsilon} \\
\mathbf{C} & =\omega \cdot \hat{\varepsilon} \\
\mathbf{F} & =\hat{\varepsilon}(T_{hbc}\delta h^{bc}+T_{\Psi bc}\delta \Psi^{bc})
\end{align}$$

where $\displaystyle{\hat{\varepsilon}}$ is the induced volume on $\displaystyle{\Sigma _{i}}$ defined as $\displaystyle{\varepsilon=n\wedge \hat{\varepsilon}}$. $\displaystyle{\Psi_{ab}=\psi _{acbd}n^{c}n^{d}}$, and

$$\begin{align}
\omega ^{a} & =2\Psi^{a}_{~b}\bar{\delta}A^{b}+2h^{ae}\psi _{ecdb}n^{d}\delta h^{bc} \\
T_{hbc} & =-2\Psi_{de}K^{de}h_{bc}+2n^{a}\nabla ^{e}\psi _{deaf}h^{d}_{~(b}h^{f}_{~c)}-2\Psi_{a(b}K^{a}_{~c)}-2D^{a}(h^{e}_{a}h^{f}_{(c}\psi _{|efd|b)}n^{d})
\end{align}$$

by Stokes' theorem, $\displaystyle{\mathrm{d}\mathbf{C}}$ terms from $\displaystyle{\Sigma _{1}}$ and $\displaystyle{\Sigma _{2}}$ contribute to the corner $\displaystyle{\mathcal{S}}$, we have

$$\begin{align}
\mathbf{C}|_{\mathcal{S}} & =\mathbf{C}_{1}+\mathbf{C}_{2}|_{\mathcal{S}} \\
 & =\delta \theta \psi ^{abcd}\varepsilon _{ab}\varepsilon _{cd}\tilde{\varepsilon}+2\delta \gamma ^{bc}(r_{1}^{a}n_{1}^{d}+r_{2}^{a}n_{2}^{d})\psi _{acdb}\tilde{\varepsilon}
\end{align}$$

where $\displaystyle{\varepsilon _{ab}=(n\wedge r)_{ab}}$ is the binormal and $\displaystyle{\tilde{\varepsilon}}$ is the induced volume on the corner with $\displaystyle{\varepsilon=(n\wedge r) \wedge \tilde{\varepsilon}}$.

now by supplementing the bulk action with the generalized Gibbons-Hawking-York surface term as follows

$$\begin{align}
I & =\int _{M}\mathbf{L}+\int _{\partial M}\mathbf{B}
\end{align}$$

the variation of the action reads

$$\begin{align}
\delta I & =\int _{\partial M}\mathbf{F}+\int _{\mathcal{S}}\mathbf{C}
\end{align}$$

where the last term should be understood as the contribution from all the corners. on the other hand, we can supplement the above action with the additional corner term as follows

$$\begin{align}
I' & =I+I_{\mathcal{S}} \\
I_{\mathcal{S}} & =(\theta_{0}-\theta)\int _{\mathcal{S}}\psi ^{abcd}\varepsilon _{ac}\varepsilon _{cd}\tilde{\varepsilon}
\end{align}$$

where the integral constrant $\displaystyle{\theta_{0}}$ will be chosen as the subtended angle of the corners appearing in the solution space away from which we make variation. so $\displaystyle{I_{\mathcal{S}}=0}$ onshell, and the variation of $\displaystyle{I'}$

$$\begin{align}
\delta I' & =\int _{\partial M}\mathbf{F}+2\int _{\mathcal{S}}\delta \gamma ^{bc}(r_{1}^{a}n_{1}^{d}+r_{2}^{a}n_{2}^{d})\psi _{acdb}\tilde{\varepsilon}
\end{align}$$

which vanishes when Dirichlet boundary condition is imposed on the boundary as well as at the corner.\

# black hole entropy

according to the Euclidean approach to black hole thermodynamics, the Gibbs free energy of the black hole is given by

$$\begin{align}
\beta G & =[I(\beta)]
\end{align}$$

with the background subtracted action $\displaystyle{[I(\beta)]=I(\beta)-I^{0}(\beta)}$, where $\displaystyle{I(\beta)}$ denotes the Euclidean on shell action of the black hole with temperature $\displaystyle{T=\frac{1}{\beta}}$ and $\displaystyle{I^{0}(\beta)}$ denotes the corresponding quantity for the reference space. thus the black hole entropy can be obtained as

$$\begin{align}
S & =(\beta \partial _{\beta}-1)[I(\beta)]|_{\beta _{0}}
\end{align}$$

we like to resort to the translation isometry along the imaginary time direction, whereby one can rewrite $\displaystyle{I(\beta)=\frac{\beta}{\beta_{0}}I_{\beta_{0}}(\beta)}$, with $\displaystyle{I_{\beta_{0}}(\beta)}$ the action evaluated on the Euclidean black hole of the inverse temperature $\displaystyle{\beta}$ with imaginary time interval $\displaystyle{[0,\beta_{0}]}$. accordingly,

$$\begin{align}
S & =\beta \partial _{\beta}[I_{\beta_{0}}(\beta)]|_{\beta_{0}}
\end{align}$$

![[Attachments/Pasted image 20251013170100.png]]

as demonstrated in the above figure, $\displaystyle{I_{\beta_{0}}(\beta)}$ is for the black hole solution with the subtended angle $\displaystyle{\theta=\frac{2\pi \beta_{0}}{\beta}}$ at the corner. thus at the first order of $\displaystyle{\beta-\beta_{0}}$

$$\begin{align}
[I_{\beta_{0}}(\beta)]-[I(\beta_{0})] & =2\pi\left( \frac{\beta_{0}}{\beta}-1 \right)\int _{\mathcal{B}}\psi ^{abcd}\varepsilon _{ab}\varepsilon _{cd}\tilde{\varepsilon}
\end{align}$$

with $\displaystyle{\mathcal{B}}$ the bifurcation surface, where we have used the simple observation that not only do the contributions from the two cuts cancel out each other but also the contributions from the two outer corners cancel out each other as well as the important fact that the contribution from the asymtotical surface vanishes no matter whether the asymptotical geometry is flat or $\mathrm{AdS}$. then we have

$$\begin{align}
S & =-2\pi \int _{\mathcal{B}}\psi ^{abcd}\varepsilon _{ab}\varepsilon _{cd}\tilde{\varepsilon}
\end{align}$$

after Wick rotation back to the Lorentz spacetime, the above result is exactly equivalent to the Wald formula for the black hole entropy.

on the other hand

$$\begin{align}
[I(\beta)] & =\frac{\beta}{\beta_{0}}[I(\beta_{0})]+2\pi\left( 1-\frac{\beta}{\beta_{0}} \right)\int _{\mathcal{B}}\psi ^{abcd}\varepsilon _{ab}\varepsilon _{cd}\tilde{\varepsilon} \\
 & =[I_{\beta}(\beta_{0})]+2\pi\left( 1-\frac{\beta}{\beta_{0}} \right)\int _{\mathcal{B}}\psi ^{abcd}\varepsilon _{ab}\varepsilon _{cd}\tilde{\varepsilon}
\end{align}$$

to the first order of $\displaystyle{\beta-\beta_{0}}$, which well explains why one can also derive the black hole entropy using $\displaystyle{S=(\beta \partial _{\beta}-1)[I'_{\beta}(\beta)]|_{\beta_{0}}}$, namely the action with corner term evaluated on the black hole of $\displaystyle{T_{0}=\frac{1}{\beta_{0}}}$ but with the imaginary time interval $\displaystyle{\beta}$ along the imaginary time $\displaystyle{\tau}$ (why?). cc
