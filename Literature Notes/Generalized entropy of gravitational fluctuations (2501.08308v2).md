---
paper id: 2501.08308v2
title: Generalized entropy of gravitational fluctuations
authors: [Sean Colin-Ellerin, Guanda Lin, Geoff Penington]
publication date: 2025-01-14T18:47
abstract: "The corrections to holographic entanglement entropy from bulk quantum fields in a classical gravitational background are now well understood. They lead, in particular, to unitary Page curves for evaporating black holes. However, the correct treatment of quantum fluctuations of the metric, including graviton excitations, is a longstanding problem. We provide a gauge-invariant prescription for the generalized entropy of gravitons in anti-de Sitter space in terms of areas and bulk entanglement entropy, generalizing the quantum extremal surface prescription to accommodate fluctuations in the semiclassical spacetime geometry. This task requires a careful treatment of the area operator on the graviton Hilbert space and the definition of a \"quantum extremal gauge\" in which the extremal surface is unperturbed. It also requires us to determine the correct vacuum modular Hamiltonian for the graviton field, which we fix by requiring that it doesn't contain a boundary term in extremal gauge. We check our prescription with an explicit computation of the vacuum-subtracted generalized entropy of states containing a graviton in an AdS-Rindler background. Our results exactly match vacuum-subtracted von Neumann entropies for stress-tensor excited states in holographic conformal field theory with $d>2$ dimensions. We also use covariant phase space techniques to give a partial proof of our prescription when the entanglement wedge for the background spacetime has a bifurcate Killing horizon. Along the way, we identify a class of perturbative graviton states that have parametrically larger generalized entropy, in the small $G_N$ expansion, than any low-energy excitations of an ordinary quantum field."
comments: "68 pages+appendices, 6 figures; v2: added more explanation about superposition state and quantum extremal gauge, figure added, some typos fixed"
summary: "A gauge-invariant $O(G_N^0)$ prescription for graviton generalized entropy: promote the extremal area and surface displacement to operators, define the one-sided graviton vacuum modular Hamiltonian as boundary-term-free canonical energy in extremal gauge, and derive a bifurcate-Killing-horizon JLMS relation. The explicit AdS-Rindler/CFT test is structurally compelling, but a literal audit of several printed normalization chains reveals unresolved fixed-factor inconsistencies."
pdf: "[[Attachments/Assets/Generalized entropy of gravitational fluctuations (2501.08308v2).pdf]]"
url: https://arxiv.org/abs/2501.08308v2
tags: []
---

## Preliminaries

### Generalized Entropy for Ordinary Matter Fields

Consider a minimally-coupled qft defined in an asymptotically $\mathrm{AdS}$ spacetime $\displaystyle{(\mathcal{M},g^{(0)}_{\mu \nu})}$ and a state $\displaystyle{\ket{\psi}}$. Take the spacetime to be determined by classical Eintein gravity and let the quantum field backreact on the spacetime. We can expand the metric in $\displaystyle{G_{N}}$ as

$$\begin{align}
g_{\mu \nu} & =g^{(0)}_{\mu \nu}+\kappa ^{2}g^{(2)}_{\mu \nu}+\mathcal{O}(\kappa ^{3}), & \kappa ^{2} & =16\pi G_{N}
\end{align}$$

where $\displaystyle{g^{(0)}_{\mu \nu}}$ solves the vacuum Einstein gravity and $\displaystyle{g^{(2)}_{\mu \nu}}$ is the leading backreaction to the metric,

$$\begin{align}
E^{(1)}_{\mu \nu}[\kappa ^{2}g^{(0)}_{\mu \nu}] & =8\pi G_{N}\braket{ T_{\mu \nu} } _{\Psi}
\end{align}$$

where $\displaystyle{E^{(1)}_{\mu \nu}}$ is the linearized Einstein tensor with negative cosmological constant and $\displaystyle{T_{\mu \nu}}$ is the stress-energy tensor of the qft. The area of a codim-2 surface $\displaystyle{\gamma}$ in the geometry corresponding to the state $\displaystyle{\Psi}$ means the area of the same surface in the full metric is

$$\begin{align}
A[\gamma]_{\Psi} & =A[g^{(0)},\gamma]+\kappa ^{2} \dfrac{\delta A[g^{(0)},\gamma]}{\delta g^{(0)}_{\mu \nu}}g^{(2)}_{\mu \nu}+\mathcal{O}(\kappa ^{4})
\end{align}$$

the position of the surface $\displaystyle{\gamma}$ can also be expanded order-by-order in $\displaystyle{G_{N}}$ as

$$\begin{align}
\gamma & =\gamma ^{(0)}+\sum _{n}\kappa ^{2n}\gamma ^{(n)}
\end{align}$$

compute the vN entropy $\displaystyle{S(\rho _{b}^{\Psi})}$ of quantum fields in the state $\displaystyle{\Psi}$ for the subregion given by the homology surface $\displaystyle{b}$ bounded by the CFT subregion $\displaystyle{B}$ and a codim-2 surface $\displaystyle{\gamma}$ anchored on $\displaystyle{\partial B}$, which is homologous to $\displaystyle{B}$. Then the CFT vN entropy in the dual state $\displaystyle{\psi}$ for the subregion $\displaystyle{B}$ is equal to the extremization, order-by-order in $\displaystyle{G_{N}}$, of the resulting generalized entropy

$$\begin{align}
S(\rho _{B}^{\psi}) & =\underset{\gamma}{\min\mathrm{ext}}\left[\dfrac{A[\gamma]_{\Psi}}{4G_{N}}+S(\rho _{b}^{\Psi})\right]
\end{align}$$

up to the first subleading order $\displaystyle{\mathcal{O}(G_{N}^{0})}$, we have

$$\begin{align}
S(\rho _{B}^{\psi}) & =\dfrac{A[G,\gamma ^{(0)}_{\mathrm{min,ext}}]}{4G_{N}}+4\pi \dfrac{\partial A[G,\gamma ^{(0)}_{\mathrm{min,ext}}]}{\partial G_{\mu \nu}}g^{(2)}_{\mu \nu}+S(\rho _{b}^{\Psi})+\mathcal{O}(G_{N})
\end{align}$$

where $\displaystyle{\gamma ^{(0)}_{\mathrm{min,ext}}}$ is the smallest area classical extremal surface in the unbackreacted geometry. One can generalize the generalized entropy to the expectation value of the modular Hamiltonian in other states. Consider two bulk states $\displaystyle{\Psi}$ and $\displaystyle{\Phi}$ living in the same code subspace, i.e., perturbative excitations in the same background geometry $\displaystyle{G_{\mu \nu}}$, with dual CFT states $\displaystyle{\psi}$ and $\displaystyle{\phi}$, respectively. It can be argued that

$$\begin{align}
\mathrm{Tr}(\rho _{B}^{\psi}K_{B}^{\phi}) & =\underset{\gamma}{\min\mathrm{ext}}\left[\dfrac{A[G+G_{N}\braket{ g_{\mu \nu}^{(2)} } _{\Psi},\gamma]}{4G_{N}}+\mathrm{Tr}(\rho _{B}^{\Psi}K_{B}^{\Psi})\right]+\mathcal{O}(G_{N})
\end{align}$$

known as the JLMS formula.

### Gravitons in $\mathrm{AdS}$ Spacetimes

We restrict to asymptotically $\mathrm{AdS}_{d+1}$ with the action

$$\begin{align}
S & =\dfrac{1}{\kappa ^{2}} \int _{\mathcal{M}}\mathrm{d}^{d+1}x\sqrt{ g }(R-2\Lambda)+\dfrac{2}{\kappa ^{2}} \int _{\partial \mathcal{M}}\mathrm{d}^{d}x\sqrt{ \sigma }K+S_{\mathrm{ct}}
\end{align}$$

here $\displaystyle{\Lambda=-\dfrac{d(d-1)}{2}}$. Expand

$$\begin{align}
g_{\mu \nu} & =G_{\mu \nu}+\kappa h_{\mu \nu}
\end{align}$$

where $\displaystyle{G_{\mu \nu}}$ satisfies the background Einstein equations. Expand the action to the order $\displaystyle{\kappa ^{2}}$, we have

$$\begin{align}
S[h]^{(2)} & =\dfrac{1}{2}\int \mathrm{d}^{d+1}x\sqrt{ -G }\left(\dfrac{1}{2}h^{\nu \alpha}\nabla ^{2}h_{\nu \alpha}-\dfrac{1}{2}h\nabla ^{2}h-\nabla _{\nu}h^{\nu \alpha}\nabla _{\alpha}h+\nabla _{\nu}h^{\nu \alpha}\nabla ^{\rho}h_{\rho \alpha}-\dfrac{\Lambda}{d-1}h^{2}+h^{\nu \rho}h^{\beta}_{~\gamma}R_{\nu \beta \rho}^{~~~~~~\gamma}\right)+(\text{boundary terms})
\end{align}$$

and higher-order expansions takes the form

$$\begin{align}
S[h] & =\dfrac{1}{\kappa ^{2}}S[h]^{(0)}+S[h]^{(2)}+\sum ^{\infty}_{n=3}\kappa ^{n-2}S[h]^{(n)}
\end{align}$$

($\displaystyle{S[h]^{(1)}}$ vanishes due to the requirement of the well-definedness of the variational problem) only the cubic interactions $\displaystyle{S^{(3)}[h]}$ matters in the study of the generalized entropy at $\displaystyle{\mathcal{O}(\kappa ^{0})}$.

Expand the quantized graviton field

$$\begin{align}
\hat{h} & =\sum _{q}(h_{q}a_{q}+h^{*}_{q}a^{\dagger}_{q})
\end{align}$$

with canonical commutation relations $\displaystyle{[a_{q},a^{\dagger}_{q'}]=\delta _{qq'}}$.

### Diffeomorphisms

One distinguish between background gauge symmetries and perturbative gauge symmetries.

The backgound diffeomorphisms are generated by a smooth vector field $\displaystyle{\varepsilon _{\mu}^{(0)}=\mathcal{O}(\kappa ^{0})}$

$$\begin{align}
g_{\mu \nu} & \to g_{\mu \nu}+\mathcal{L}_{\varepsilon ^{(0)}}g_{\mu \nu} \\
\implies G_{\mu \nu} & \to G_{\mu \nu}+\nabla _{\mu}\varepsilon _{\nu}^{(0)}+\nabla _{\nu}\varepsilon _{\mu}^{(0)} \\
h_{\mu \nu} & \to h_{\mu \nu}-\Gamma ^{\rho}_{~\mu \nu}{}^{(1)}\varepsilon _{\rho}^{(0)}
\end{align}$$

and can be fixed by picking some particular coordinates for the background spacetime.

The perturbative diffeomorphisms are generated by smooth vector field $\displaystyle{\kappa \varepsilon _{\mu}^{(1)}}$ so that do not affect the background metric

$$\begin{align}
g_{\mu \nu} & \to g_{\mu \nu}+\mathcal{L}_{\kappa \varepsilon ^{(1)}}g_{\mu \nu} \\
\implies G_{\mu \nu} & \to G_{\mu \nu} \\
h_{\mu \nu} & \to h_{\mu \nu}+\nabla _{\mu}\varepsilon _{\nu}^{(1)}+\nabla _{\nu}\varepsilon _{\mu}^{(1)}
\end{align}$$

we refer the perturbative diffeomorphisms as gauge symmetries.

## Covariant Phase Space Analysis

### Gauge Choice

Consider $\displaystyle{g_{\mu \nu}}$ to be the metric for a stationary asymptotic $\mathrm{AdS}$ black hole. The bifurcation surface $\displaystyle{\gamma ^{(0)}}$ extremizes the area of all co-dim 2 surfaces, which can be characterized by the vanishing of the trace of the extrinsic curvatures for the two null normals $\displaystyle{l^{\mu}}$ and $\displaystyle{k^{\mu}}$ to this codim-2 surface

$$\begin{align}
K_{(l)}[G]|_{\gamma ^{(0)}} & =K_{(k)}[G]|_{\gamma ^{(0)}}=0
\end{align}$$

Hollands and Wald choose a convenient gauge (the Hollands-Wald gauge, or HW gauge), consisting of two conditions:
- $\displaystyle{\delta K_{(l)}|_{\gamma ^{(0)}}=\delta K_{(k)}|_{\gamma ^{(0)}}=0}$, this means choosing the diffeomorphism that takes the perturbed extremal surface and maps it to the background extremal surface $\displaystyle{\gamma ^{(0)}}$.
- choose Gaussian null coordinates in a neighborhood of the future event horizon $\displaystyle{\mathfrak{H}^{+}}$ of a black hole such that this surface is null for all perturbative level

$$\begin{align}
\mathrm{d}s^{2} & =2\mathrm{d}l\mathrm{d}k+a(l,k,x^{i})\mathrm{d}k^{2}+b_{i}(l,k,x^{i})\mathrm{d}k\mathrm{d}x^{i}+q_{ij}(l,k,x^{i})\mathrm{d}x^{i}\mathrm{d}x^{j}
\end{align}$$

where $\displaystyle{\mathfrak{H}^{+}}$ lies at $\displaystyle{l=0}$ on which $\displaystyle{a=b_{i}=0}$, $\displaystyle{\gamma ^{(0)}}$ lies at $\displaystyle{l=k=0}$ and $\displaystyle{x^{i}}$ are $\displaystyle{d-1}$ coordinates on the surfaces $\displaystyle{\gamma(l,k)}$. In these coordinates the background Killing vector takes the form

$$\begin{align}
\xi ^{\mu} & =k \left( \dfrac{\partial}{\partial k} \right)^{\mu}-l \left( \dfrac{\partial}{\partial l} \right)^{\mu}
\end{align}$$

and we have $\displaystyle{\xi ^{\mu}|_{\gamma ^{(0)}}=0, \nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}|_{\gamma ^{(0)}}=0}$.

### Bulk and Boundary Charge

Consider

$$\begin{align}
\mathbf{L} & =\dfrac{1}{\kappa ^{2}}\varepsilon(R-2\Lambda)
\end{align}$$

take a variation

$$\begin{align}
\delta \mathbf{L} & =\mathbf{E}^{\mu \nu} \delta g_{\mu \nu}+\mathrm{d}\theta \\
\mathbf{E}^{\mu \nu} & =-\dfrac{1}{\kappa ^{2}}\left( R^{\mu \nu}-\dfrac{1}{2}g^{\mu \nu}R+\Lambda g^{\mu \nu} \right)\varepsilon \\
\theta & =\dfrac{1}{\kappa ^{2}}\iota _{y}\varepsilon \\
y^{\mu} &=g^{\mu \rho}g^{\nu \sigma}(\nabla _{\sigma}\delta g_{\nu \rho}-\nabla _{\rho}\delta g_{\nu \sigma}) \\
\implies \omega & =\delta \theta=\dfrac{1}{\kappa ^{2}}\iota _{w}\varepsilon \\
w^{\mu} & =-P^{\mu \nu \rho \sigma \alpha \beta}\delta g_{\nu \rho}\nabla _{\sigma}\delta g_{\alpha \beta} \\
P^{\mu \nu \rho \sigma \alpha \beta} & =g^{\mu \alpha}g^{\beta \nu}g^{\rho \sigma}-\dfrac{1}{2}g^{\mu \sigma}g^{\nu \alpha}g^{\beta \rho}-\dfrac{1}{2}g^{\mu \nu}g^{\rho \sigma}g^{\alpha \beta}+\dfrac{1}{2}g^{\nu \rho}g^{\mu \sigma}g^{\alpha \beta} \\
\implies \Omega & =\int _{b}\omega
\end{align}$$

here $\displaystyle{b}$ is a partial Caushy slice bounded by $\displaystyle{\gamma ^{(0)}}$ and $\displaystyle{B=b\cap \partial M}$. The sympectic form $\displaystyle{\Omega}$ is independent of the choice of $\displaystyle{b}$ when onshell.

For a smooth vector field $\displaystyle{u^{a}}$, the corresponding Noether current is

$$\begin{align}
\mathbf{J}_{(u)} & =\theta[g,\mathcal{L}_{u}g]-\iota _{u}\mathbf{L}
\end{align}$$

which is conserved $\displaystyle{\mathrm{d}\mathbf{J}_{(u)}}$ when onshell. This means we can seperate $\displaystyle{\mathbf{J}_{(u)}}$ as

$$\begin{align}
\mathbf{J}_{(u)} & =\mathbf{C}_{(u)}+\mathrm{d}\mathbf{Q}_{(u)} \\
\mathbf{C}_{(u)} & =\dfrac{2}{\kappa ^{2}}\iota _{u\cdot E}\varepsilon,\quad u\cdot E\equiv u^{\mu}E_{\mu}^{~\nu} \\
(\mathbf{Q}_{(u)})_{\alpha_{1}\dots \alpha _{d-1}} & =-\dfrac{1}{\kappa ^{2}}\nabla ^{\mu}u^{\nu}(\varepsilon)_{\mu \nu \alpha_{1}\dots \alpha _{d-1}}
\end{align}$$

then take a variation of $\displaystyle{\mathbf{J}_{(u)}}$ and use Cartan's magic formula, we have

$$\begin{align}
\delta \mathbf{J}_{(u)} & =\omega[g;\delta g,\mathcal{L}_{u}g]+\mathrm{d}(\iota _{u}\theta)-\iota _{u}\mathbf{E}^{\mu \nu}\delta g_{\mu \nu} \\
 & =\delta \mathbf{C}_{(u)}+\delta \mathrm{d}\mathbf{Q}_{(u)} \\
\implies \omega[g;\delta g,\mathcal{L}_{u}g] & =\delta \mathbf{C}_{(u)}+\iota _{u}\mathbf{E}^{\mu \nu}\delta g_{\mu \nu}+\mathrm{d}(\delta \mathbf{Q}_{(u)}-\iota _{u}\theta)
\end{align}$$

let $\displaystyle{u=\xi}$ be the asymptotically timelike Killing vector $\displaystyle{\xi ^{\mu}}$, take a integration over $\displaystyle{b}$

$$\begin{align}
\Omega[g;\delta g;\mathcal{L}_{\xi}g] & =\int _{b} \mathrm{d}(\delta \mathbf{Q}_{(\xi)}-\iota _{\xi}\theta) \\
 & =\int _{B}\left(\delta \mathbf{Q}_{(\xi)}-\iota _{\xi}\theta\right)-\int _{\gamma ^{(0)}}(\delta \mathbf{Q}_{(\xi)}-\iota _{\xi}\theta)
\end{align}$$

we denote the first term as $\displaystyle{K^{\partial}_{(\xi)}}$, which is the boundary charge

$$\begin{align}
\delta K^{\partial}_{(\xi)} & =\int _{B} (\delta \mathbf{Q}_{(\xi)}-\iota _{\xi}\theta)
\end{align}$$

the LHS vanishes since $\displaystyle{\xi ^{\mu}}$ is a Killing vector for $\displaystyle{G_{\mu \nu}}$. Furthermore, $\displaystyle{\xi ^{\mu}}$ vanishes on the bifurcation surface so $\displaystyle{\iota _{\xi}\theta|_{\gamma ^{(0)}}=0}$, and by Wald's analysis we know the second term is the area of the bifurcation surface

$$\begin{align}
\int _{\gamma ^{(0)}}\delta \mathbf{Q}_{(\xi)} & =\dfrac{2\mathfrak{s}}{\kappa ^{2}}\delta A[g,\gamma ^{(0)}]
\end{align}$$

where $\displaystyle{\mathfrak{s}}$ is the surface gravity of $\displaystyle{\gamma^{(0)}}$ for $\displaystyle{G_{\mu \nu}}$. We have

$$\begin{align}
\delta K^{\partial}_{(\xi)} & =\dfrac{2\mathfrak{s}}{\kappa ^{2}}\delta A[g,\gamma ^{(0)}]
\end{align}$$

expand

$$\begin{align}
g_{\mu \nu} & =G_{\mu \nu}+\kappa h^{\mathrm{HW}}_{\mu \nu}+\kappa ^{2}g^{(2)}_{\mu \nu}+\mathcal{O}(\kappa ^{3})
\end{align}$$

this becomes

$$\begin{align}
\delta K_{(\xi)}^{\partial} & =\dfrac{2\mathfrak{s}}{\kappa}A^{\mathrm{lin}}[h^{\mathrm{HW}},\gamma ^{(0)}]
\end{align}$$

where $\displaystyle{A^{\mathrm{lin}}[h^{\mathrm{HW}},\gamma ^{(0)}]}$ is equal to $\displaystyle{A[g,\gamma ^{(0)}]}$ expanded to linear order in $\displaystyle{h}$.

Our goal is to understand second-order variations of thermodynamic quantities. Since the HW gauge fixes the statement that the area of $\displaystyle{\gamma}$ is the integral of the Noether charge on $\displaystyle{\gamma}$ for at all orders of perturbation, but $\displaystyle{\xi ^{\mu}}$ is not necessarily a Killing vector for $\displaystyle{g+\delta g}$, so we have to modify the identification as

$$\begin{align}
\delta K^{\partial}_{(\xi)} & =\dfrac{2\mathfrak{s}}{\kappa ^{2}} \delta A[g,\gamma]+\Omega[g,\delta g,\mathcal{L}_{\xi}g]
\end{align}$$

take another variation, we have

$$\begin{align}
\delta ^{2}K_{(\xi)}^{\partial} & =\dfrac{2\mathfrak{s}}{\kappa ^{2}} \delta ^{2}A[g,\gamma]+\Omega[g;\delta g,\mathcal{L}_{\xi}\delta g]
\end{align}$$

where the second term in the RHS is known as the canonical energy

$$\begin{align}
E_{\mathrm{can}}[\delta g] & =\Omega[g;\delta g,\mathcal{L}_{\xi}\delta g]
\end{align}$$

expand to $\displaystyle{\mathcal{O}(\kappa ^{0})}$ order, we have

$$\begin{align}
\delta ^{2}K^{\partial}_{(\xi)} & =2\mathfrak{s}(A^{\mathrm{lin}}[g^{(2)},\gamma ^{(0)}]+A^{\mathrm{quad}}[h^{\mathrm{HW}},\gamma ^{(0)}])+E_{\mathrm{can}}[\kappa h^{\mathrm{HW}}]
\end{align}$$

this relation is not gauge-invariant. For the first term, we expand $\displaystyle{\gamma=\gamma ^{(0)}+\kappa \gamma ^{(1)}}$ (in the HW gauge $\displaystyle{\gamma ^{(1)}}$ is set to be $\displaystyle{0}$) and $\displaystyle{g=G+\kappa h}$, and expand

$$\begin{align}
\delta ^{2}A[g,\gamma] & =A^{\mathrm{lin}}[g^{(2)},\gamma ^{(0)}]+A^{\mathrm{quad}}[h,\gamma ^{(0)}]+A^{\mathrm{quad}}[G,\gamma ^{(1)}]+A^{\mathrm{lin}}[h,\gamma ^{(1)}]
\end{align}$$

for the canonical energy term, consider the diffeomorphism $\displaystyle{v^{\mu}}$ that goes from an arbitrary configuration $\displaystyle{h_{\mu \nu}}$ to HW gauge $\displaystyle{h_{\mu \nu}^{\mathrm{HW}}}$

$$\begin{align}
h_{\mu \nu}^{\mathrm{HW}} & =h_{\mu \nu}+\mathcal{L}_{v}G_{\mu \nu}
\end{align}$$

then the canonical energy becomes

$$\begin{align}
E_{\mathrm{can}}[h^{\mathrm{HW}}] & =\Omega(G;h+\mathcal{L}_{v}G,\mathcal{L}_{\xi}(h+\mathcal{L}_{v}G)) \\
 & =E_{\mathrm{can}}[h]+\int _{b}\omega(G;h+\mathcal{L}_{v}G,\mathcal{L}_{[\xi,v]}G)-\int _{b}\omega(G;\mathcal{L}_{\xi}h,\mathcal{L}_{v}G) \\
 & =E_{\mathrm{can}}[h]+\int _{\gamma ^{(0)}}\Upsilon
\end{align}$$

where

$$\begin{align}
\Upsilon & =\mathbf{Q}_{[\xi,\kappa v]}[\kappa h+\mathcal{L}_{\kappa v}G]-\iota _{[\xi,\kappa v]}\theta[G;\kappa h+\mathcal{L}_{\kappa v}G]-(\mathbf{Q}_{\kappa v}[\mathcal{L}_{\xi}\kappa h]-\iota _{\kappa v}\theta[G;\mathcal{L}_{\xi}\kappa h])
\end{align}$$

is gauge invariant. Thus we have

$$\begin{align}
\delta ^{2}K_{(\xi)} & =2\mathfrak{s}(A^{\mathrm{lin}}[g^{(2)},\gamma ^{(0)}]+A^{\mathrm{quad}}[h,\gamma ^{(0)}]+A^{\mathrm{quad}}[G,\gamma ^{(1)}]+A^{\mathrm{lin}}[h,\gamma ^{(1)}])+E_{\mathrm{can}}[\kappa h]+\int _{\gamma ^{(0)}}\Upsilon
\end{align}$$

## Alternative Relation

$$\begin{align}
\delta ^{2}K_{(\xi)} & =2\mathfrak{s}A^{\mathrm{lin}}[g^{(2)},\gamma ^{(0)}]+\int _{b}\mathrm{d}^{d}x\sqrt{ -G_{b} }T_{\mu \nu}^{\mathrm{grav}}\tau ^{\mu}\xi ^{\nu}
\end{align}$$

where

$$\begin{align}
T_{\mu \nu}^{\mathrm{grav}} & =-E_{\mu \nu}^{\mathrm{quad}}[\kappa h]
\end{align}$$

---

In [[Articles/Quantization in AdS/gravitational energy/scalar charge matching|scalar charge matching]], the Noether current

$$\begin{align}
X_{\xi}\cdot \theta ^{\mu}+\xi ^{\mu}L & =\xi _{\nu}T^{\mu \nu}_{(h)}+\nabla _{\nu}S_{\xi}^{\mu \nu}+\mathcal{R}_{\xi}^{\mu} \\
 & \approx \xi _{\nu}T_{(h)}^{\mu \nu}+\nabla _{\nu}S_{\xi}^{\mu \nu}
\end{align}$$

here $\displaystyle{T_{(h)}^{\mu \nu}}$ is the stress-energy tensor, and the integration of superpotential $\displaystyle{\nabla _{\nu}S_{\xi}^{\mu \nu}}$ cancel with $\displaystyle{A^{\mathrm{quad}}[h^{\mathrm{HW}},\gamma ^{(0)}]}$.

---

### JLMS Formula for Gravitons

The JLMS formula

$$\begin{align}
\Delta \hat{K}_{B}^{\psi} & =\dfrac{\Delta\braket{ A[\hat{g},\hat{\gamma}] }_{\Psi}}{4G_{N}}+\Delta \hat{K}_{b}^{\Psi}
\end{align}$$

here $\displaystyle{\Delta}$ means the difference of expectation values for the excited state density matrix $\displaystyle{\rho=\omega+\delta \rho}$ and the vacuum one $\displaystyle{\omega}$. One would like to identify $\displaystyle{E_{\mathrm{can}}[\kappa h]+\int _{\gamma ^{(0)}}\Upsilon}$ to the expectation value change of vacuum modular Hamiltonian $\displaystyle{\hat{K}_{b}}$. To be more precise, we will use AdS-Rindler (the argument works for any stationary black hole spacetime with an everywhere timelike Killing vector). We will choose HW gauge so that $\displaystyle{\Upsilon=0}$ and impose Dirichlet boundary conditions on the horizon $\displaystyle{h_{\rho \alpha}|_{\rho=0}=0}$ where $\displaystyle{\rho}$ is the Rindler radial direction and $\displaystyle{\alpha}$ are are tangent directions.

Starting from the definition of the vacuum modular Hamiltonian $\displaystyle{\hat{K}_{b}=-\log \omega _{b}}$ with $\displaystyle{\omega _{b}}$ the vacuum density matrix for the Rindler wedge $\displaystyle{b}$, $\displaystyle{\hat{K}}$ can be written down using the Rindler mode expansion as

$$\begin{align}
\hat{K}_{b} & =\hat{H}_{\mathrm{ADM}}^{(\xi)} \\
 & =\sum _{\lambda} \int \mathrm{d}\omega \omega b^{\dagger}_{\omega,\lambda} b_{\omega,\lambda}+\mathrm{const}.
\end{align}$$

Where $\displaystyle{\hat{H}_{\mathrm{ADM}}^{(\xi)}}$ is the ADM Hamiltonian generating the Killing symmetry $\displaystyle{\xi ^{\mu}}$. Thus, when $\displaystyle{\Psi}$ a single graviton excitation state $\displaystyle{a^{\dagger}_{q}\ket{0}}$, the difference of the expectation values $\displaystyle{\Delta \hat{K}_{b}^{\Psi}=-\mathrm{Tr}((\rho _{b}^{\Psi}-\omega _{b})\log \omega _{b})}$ requires us to compute $\displaystyle{\braket{ a_{q}b^{\dagger}_{\omega,\lambda}b_{\omega,\lambda}a^{\dagger}_{q} }}$. The expectation value requires a calculation of Bogoliubov coefficients $\displaystyle{\alpha ^{q}_{\omega ,\lambda},\beta ^{q}_{\omega,\lambda}}$ relating the Rindler modes to global modes

$$\begin{align}
\Delta \hat{K}_{b}^{\Psi} & =\sum _{\lambda} \int \mathrm{d}\omega \omega(|\alpha _{\omega,\lambda}^{2}|+|\beta _{\omega,\lambda}|^{2})
\end{align}$$

then we try to connect $\displaystyle{\Delta \hat{K}^{\Psi}_{b}}$ with the canonical energy. The key point is to introduce an orthonormal basis of Rindler wave functions $\displaystyle{h^{\mathrm{R}}_{\omega,\lambda}}$ satisfying

$$\begin{align}
\mathcal{L}_{\xi}h^{\mathrm{R}}_{\omega,\lambda} & =-i\omega h^{\mathrm{R}}_{\omega,\lambda} \\
-i\Omega(\kappa h^{\mathrm{R}}_{\omega,\lambda},\kappa h^{\mathrm{R},*}_{\omega,\lambda}) & =\delta _{\lambda \lambda'}\delta _{\omega \omega'}
\end{align}$$

and at the same time satisfyin the HW gauge condition, then

$$\begin{align}
\sum _{\lambda}\int \mathrm{d}\omega \omega(|\alpha _{\omega,\lambda}|^{2}+|\beta _{\omega,\lambda}|^{2}) & =\kappa ^{2}\omega\left(\sum _{\lambda}\int \mathrm{d}\omega \beta ^{*}_{\omega,\lambda}h^{\mathrm{R}}_{\omega,\lambda},\mathcal{L}_{\xi}\sum _{\lambda'} \int \mathrm{d}\omega'\beta _{\omega',\lambda'}h^{\mathrm{R},*}_{\omega',\lambda'}\right)+(\beta\to \alpha)
\end{align}$$

takes the form of $\displaystyle{E_{\mathrm{can}}[\kappa h^{R}]}$ with $\displaystyle{h^{\mathrm{R}}=\sum _{\lambda}\int \mathrm{d}\omega(\beta _{\omega,\lambda} h^{\mathrm{R},*}_{\omega,\lambda})+(\beta\to \alpha)^{*}}$. Thus we conclude that

$$\begin{align}
\Delta \hat{K}_{b}^{\Psi} & =E_{\mathrm{can}}[\kappa h^{\mathrm{R}}]=E_{\mathrm{can}}[\kappa h]+\int _{\gamma ^{(0)}}\Upsilon
\end{align}$$

we now can promote the classical phase space identity

$$\begin{align}
\delta K_{(\xi)}^{\partial} & =\dfrac{2\mathfrak{s}}{\kappa}A^{\mathrm{lin}}[h^{\mathrm{HW}},\gamma ^{(0)}] \\
\delta ^{2}K^{\partial}_{(\xi)} & =2\mathfrak{s}(A^{\mathrm{lin}}[g^{(2)},\gamma ^{(0)}]+A^{\mathrm{quad}}[h^{\mathrm{HW}},\gamma ^{(0)}])+E_{\mathrm{can}}[\kappa h]+\int _{\gamma ^{(0)}}\Upsilon
\end{align}$$

to quantum level to get the first two perturbation levels of the JLMS formula for gravitons

$$\begin{align}
\Delta \hat{K}^{\psi}_{B} & =\dfrac{\Delta\braket{ A[\hat{g},\hat{\gamma}] }_{\Psi}}{4G_{N}}+\Delta \hat{K}^{\Psi}_{b}
\end{align}$$

---

# Core Conclusion

The paper is not merely trying to “write down the gravitational modular Hamiltonian.” Its real question is:

> When the quantum fluctuations themselves are gravitons, how can one define the area operator, the quantum extremal surface, the bulk entropy, and the one-sided vacuum modular Hamiltonian so that generalized entropy is invariant under perturbative diffeomorphisms and agrees with the boundary CFT entropy?

At $O(G_N^0)$, the controlled answer is

$$\begin{align}
\Delta S_B^{\mathrm{CFT}} = \frac{\Delta\langle :A[\widehat g,\widehat\gamma]:\rangle}{4G_N} +\Delta S_b^{\mathrm{grav}} +O(\kappa), \qquad \kappa=\sqrt{16\pi G_N}. \tag{3.15}
\end{align}$$

Here $\widehat\gamma^{(1)}[\widehat h]$ is the extremal-surface displacement that transforms together with the graviton operator. Equivalently, one may first go to classical extremal gauge and then quantize; the background extremal surface $\gamma^{(0)}$ then remains at its original coordinate location.

For backgrounds with a bifurcate Killing horizon, the paper uses covariant phase space to obtain the graviton version of JLMS:

$$\begin{align}
\Delta K_B = \frac{\Delta\langle A[\widehat g,\widehat\gamma]\rangle}{4G_N} +\Delta K_b. \tag{4.50}
\end{align}$$

The correct classical representative of the bulk modular energy is

$$\begin{align}
\boxed{ \Delta K_b =E_{\mathrm{can}}[\kappa h] +\int_{\gamma^{(0)}}\Upsilon
}
\tag{4.36, 4.49}
\end{align}$$

In extremal/Hollands--Wald gauge, $\Upsilon=0$, so this reduces to the bare canonical energy. In a general gauge, $\int_\gamma\Upsilon$ is an essential entangling-surface or corner completion.

Three levels of evidence must be kept separate:

1. The all-orders definition of quantum extremal gauge is explicitly acknowledged by the authors as speculative.
2. The CPS/JLMS argument for a bifurcate-Killing-horizon wedge is only a partial proof and depends on horizon regularity, boundary conditions, and mode completeness.
3. The explicit AdS-Rindler/CFT example is a strong structural check, but several printed formulas in v2 show unresolved fixed-factor and radical-scope inconsistencies. Not every numerical “exact match” can therefore be marked as independently verified.

# How to Read This 114-Page Paper

## Three-Pass Reading Route

| Pass | Essential sections | Question to answer |
|---|---|---|
| First: conceptual spine | §1, §3, §4.2--4.5, §6 | Why are graviton QES and modular energy different? What does extremal gauge do? Why is a corner completion needed? |
| Second: explicit test | §5.1, §5.3--5.6, App. H | How do the CFT benchmark, area, bulk modular energy, and relative entropy match separately? |
| Third: technical reproduction | §2.2, §5.2, Apps. A--G | How are the reduced phase space, modes, backreaction, surface equation, and Bogoliubov coefficients constructed? |

From a CPS/charge perspective, the shortest route is

$$\begin{align}
\delta L=E\,\delta g+d\theta \Longrightarrow \omega \Longrightarrow \delta H^\partial_\xi =\delta H^\gamma_\xi+\Omega(\delta g,\mathcal L_\xi\delta g) \Longrightarrow
K_B=\frac{A}{4G_N}+K_b.
\end{align}$$

## Complete Section Map

| Part | Role in the paper | Output |
|---|---|---|
| §1 Introduction | Locates the gauge and area-operator obstacles relative to ordinary-matter QES | Quantum extremal gauge, $O(\kappa^{-1})$ enhanced states, and two relations to be tested |
| §2.1 Ordinary matter review | Establishes the comparison in which metric response begins at $O(\kappa^2)$ | Ordinary QES through $O(1)$ needs no surface displacement |
| §2.2 Gravitons in AdS | Fixes the Einstein action, $\kappa$ normalization, and free graviton Hilbert space | $g=G+\kappa h+\cdots$ and the interaction hierarchy |
| §2.3 Diffeomorphisms | Separates background covariance, perturbative gauge, and global/subregion-large gauge transformations | A full-slice small gauge transformation becomes large at the wedge boundary $\gamma$ |
| §3.1 Observations | Expands the area to quadratic order and explains operator-valued surfaces and one-sided modular ambiguity | $A^{\rm lin}$, $A^{\rm quad}$, $g^{(2)}$, and the edge split |
| §3.2 Prescription | Proposes the strong quantum-extremal condition and its controlled $O(1)$ reduction | Equations (3.10)--(3.16) |
| §4.1 Gauge choice | Compares extremal gauge with the full Hollands--Wald representative | Extremality is substantive; Gaussian-null gauge is convenient bookkeeping |
| §4.2 CPS and first charge relation | Derives the first and second charge laws from the Iyer--Wald identity | Area, asymptotic charge, and canonical energy |
| §4.3 Gauge invariance | Restores gauge invariance of area and canonical energy | $\gamma^{(1)}$ and $\Upsilon$ |
| §4.4 Alternate relation | Rewrites the second-order relation by subtracting on-shell/off-shell families | $A^{\rm lin}[g^{(2)}]+\int T^{\rm grav}\xi$ |
| §4.5 JLMS | Quantizes the Killing Hamiltonian | $\Delta K_B=\Delta A/(4G_N)+\Delta K_b$ |
| §4.6 Large gauge and IR | Treats noncompact QES and large boundary diffeomorphisms | Fixed-induced-metric movable cutoff |
| §5.1 CFT entropy | Computes the stress-tensor excited state for a polar cap | Finite-cap modular energy and small-cap relative entropy |
| §5.2 Global AdS gravitons | Builds the reduced phase space and finds the lowest scalar graviton | $(n,\ell,m)=(0,2,0)$, $\Omega=d$, and unit norm |
| §5.3 Area operator | Computes backreaction, surface displacement, cutoff effects, and large diffeomorphisms | The $d=4$ area series |
| §5.4 Canonical energy and JLMS | Computes $E_{\rm can}+\int\Upsilon$ and compares it with the CFT | Source-stated modular-energy match |
| §5.5 AdS-Rindler quantization | Constructs wedge modes and the global/Rindler transformation | Thermal graviton vacuum and Bogoliubov data |
| §5.6 Graviton entropy | Replica-expands the reduced density matrix | Bulk relative entropy and the CFT generalized-free-field coefficient |
| §6 Discussion | Lists the evidence range and open problems | Path integrals, edge modes, higher orders, and higher derivatives |
| App. A | Expands curvature to second order | Input for $E^{(1)}$ and $E^{(2)}$ |
| App. B.1 | Shows that canonical energy has no horizon term in extremal gauge | Local conditions for $\Upsilon=0$ |
| App. B.2 | Compares second-order Noether charge and area | Equality for a smooth extremal representative |
| App. B.3 | Discusses the brick wall and symplectic boundary terms | Rindler radial falloff conditions |
| App. C | Derives the Einstein-CFT $\langle TTT\rangle$ | Equation (5.19) and the $d=3$ special case |
| App. D | Constructs the constraint matrix and Dirac bracket | Formal inverse on the reduced phase space |
| App. E.1 | Solves the global AdS scalar graviton | Master field, frequency, and normalization |
| App. E.2 | Solves the AdS-Rindler scalar graviton | Hypergeometric modes and horizon normalization |
| App. F | Solves the one-graviton quadratic backreaction | Nested $d=4$ $\ell=0,2,4$ ODEs |
| App. G.1 | Gives the global/Rindler coordinate transformation | $\cosh\eta=1/\sin\theta_0$ |
| App. G.2 | Normalizes scalar harmonics on $H^{d-1}$ | Continuous $\lambda$ measure |
| App. H.1 | Shows that the global scalar mode couples only to the Rindler scalar sector | Vector/tensor overlaps vanish by regularity |
| App. H.2 | Extracts gauge-invariant overlaps using the linearized Weyl tensor | Leading Bogoliubov coefficient |

# Setup, Notation, and Order Bookkeeping

## Geometry and States

| Symbol | Meaning |
|---|---|
| $G_{\mu\nu}$ | Fixed asymptotically AdS background satisfying the vacuum Einstein equation |
| $g_{\mu\nu}$ | Full perturbed metric |
| $h_{\mu\nu}$ | Canonically normalized free graviton |
| $g^{(2)}_{\mu\nu}$ | Second-order backreaction sourced by the quadratic Einstein tensor |
| $\gamma^{(0)}$ | Stable/minimal codimension-two extremal surface in the background |
| $\gamma^{(1)}$ | First normal-bundle-valued surface displacement |
| $B$ | Boundary CFT subregion |
| $b$ | Bulk partial Cauchy slice or wedge bounded by $B\cup\gamma$ |
| $\omega_B,\omega_b$ | Boundary and bulk vacuum reduced states |
| $\rho_B^\psi,\rho_b^\Psi$ | Excited boundary and bulk reduced states |
| $\xi$ | Background horizon Killing vector; modular normalization has surface gravity $\mathfrak s=2\pi$ |
| $\widehat P_i$ | Perturbative diffeomorphism constraints or generators |

The paper uses

$$\begin{align}
g_{\mu\nu} =G_{\mu\nu} +\kappa h_{\mu\nu} +\kappa^2g^{(2)}_{\mu\nu} +\cdots, \qquad \kappa=\sqrt{16\pi G_N}, \qquad \Lambda=-\frac{d(d-1)}2. \tag{2.9}
\end{align}$$

Thus $L_{\mathrm{AdS}}=1$, the boundary dimension is $d$, and the bulk dimension is $d+1$.

## Generalized-Entropy Orders

Since $4G_N=\kappa^2/(4\pi)$,

$$\begin{align}
\frac{A[g,\gamma]}{4G_N} =O(\kappa^{-2}) +O(\kappa^{-1}) +O(1) +O(\kappa)+\cdots.
\end{align}$$

| Order | Source | Physical meaning |
|---|---|---|
| $O(\kappa^{-2})$ | $A[G,\gamma^{(0)}]$ | State-independent background entropy |
| $O(\kappa^{-1})$ | $\kappa A^{\rm lin}[h,\gamma^{(0)}]/(4G_N)$ | Graviton one-point/interference; ordinary matter has no analogue |
| $O(1)$ | $h^2$, $h\gamma^{(1)}$, $(\gamma^{(1)})^2$, $g^{(2)}$, $K_b$, and $S_b$ | The main controlled order of the paper |

For ordinary matter, the metric response starts at $\kappa^2g^{(2)}$. Since $\gamma^{(0)}$ is already extremal, an $O(\kappa^2)$ surface displacement affects the area only at higher order. Gravitons start at $\kappa h$, so the linear area divided by $G_N$ is $O(\kappa^{-1})$. The area must therefore be a Hilbert-space operator rather than an expectation-value geometry.

## The Four Quadratic Area Contributions

Let

$$\begin{align}
\gamma=\gamma^{(0)}+\kappa\gamma^{(1)}+O(\kappa^2).
\end{align}$$

Through quadratic order,

$$
\begin{aligned}
A[g,\gamma]
=A[G,\gamma^{(0)}]
&+\kappa A^{\rm lin}[h,\gamma^{(0)}]\\
&+\kappa^2\Big(
A^{\rm quad}[G,\gamma^{(1)}]
+A^{\rm quad}[h,\gamma^{(0)}]
+A^{\rm lin}[h,\gamma^{(1)}]
+A^{\rm lin}[g^{(2)},\gamma^{(0)}]
\Big).
\end{aligned}
\tag{3.2}
$$

These are the pure surface Hessian, pure metric Hessian, metric-surface mixed term, and nonlinear backreaction. An individual fixed-coordinate contribution is generally gauge dependent; only the full extremal area, with $\gamma^{(1)}[h]$ transforming together with $h$, is gauge invariant.

# Why Ordinary QES Is Insufficient for Gravitons

## 1. The Area Is a Quantum Operator

The linear area

$$\begin{align}
A^{\rm lin}[\widehat h,\gamma^{(0)}]
\end{align}$$

has zero expectation value in a one-graviton number state, but has a vacuum--one-particle interference term in

$$\begin{align}
|s\rangle=\frac{|0\rangle+|g\rangle}{\sqrt2}.
\end{align}$$

This $O(\kappa^{-1})$ generalized-entropy shift cannot be reproduced by any classical area depending only on $\langle\widehat g\rangle$.

On the boundary, the analogous state is a superposition of the vacuum and a normalized stress-tensor primary. Its cross term is controlled by $\langle TT\rangle\sim C_T$, rather than by $\langle TTT\rangle/C_T$, so

$$\begin{align}
\Delta S\sim\sqrt{C_T}\sim G_N^{-1/2}.
\end{align}$$

This is not a macroscopic occupation number of a single graviton. It is interference with the $O(\sqrt{C_T})$ modular-energy fluctuations already present in the semiclassical vacuum.

## 2. Quantum Gauge Equivalence Is Larger than a Classical Orbit

The physical Hilbert space uses the coinvariant relation

$$\begin{align}
\widehat P_i\Phi\cong0.
\tag{1.5}
\end{align}$$

Thus one has not only $(1+\epsilon\widehat P_i)\Psi$, but also

$$\begin{align}
\Psi\cong\Psi+\epsilon\widehat P_i\Phi.
\tag{1.7}
\end{align}$$

Here $\Phi$ is arbitrary. Different quantum components of the wavefunction can therefore undergo different diffeomorphisms. A c-number classical surface shift supplies only one normal-bundle section and cannot absorb the full quantum gauge-equivalence class.

## 3. A Subregion Turns Small Gauge Transformations into Boundary Actions

On the full Cauchy slice $\Sigma$, a perturbative diffeomorphism that decays at the asymptotic boundary is a redundancy. For $b\subset\Sigma$, the same vector field can be nonzero at the internal boundary $\gamma$ and is therefore large for the wedge phase space. Consequently,

$$\begin{align}
\text{raw fixed-surface area} \quad\text{and}\quad \text{raw canonical energy}
\end{align}$$

both change. Only the combination containing the surface displacement and the corner completion is invariant.

## 4. One-Sided Modular Hamiltonians Have a Surface-Split Ambiguity

The two-sided modular operator is unambiguous. Splitting it into inside and outside one-sided quadratic forms allows one to add a $\gamma$-localized operator on one side and subtract it on the other. The authors choose the representative:

> The graviton vacuum modular Hamiltonian is the Killing/canonical Hamiltonian with no extremal-surface boundary term in extremal gauge.

In a general gauge this representative is $E_{\rm can}+\int_\gamma\Upsilon$, not bare $E_{\rm can}$.

# Quantum Extremal Gauge

## The All-Orders Proposal

Define the generalized modular operator

$$\begin{align}
K_{\rm gen}^{\Psi} =\frac{\widehat A[\gamma^{(0)}]}{4G_N} -\log\rho_b^\Psi.
\end{align}$$

The authors require, for every perturbative gauge generator,

$$\begin{align}
\boxed{ \left[ \widehat P_i, \frac{\widehat A[\gamma^{(0)}]}{4G_N} -\log\rho_b^\Psi \right]\Psi=0
}
\tag{3.10}
\end{align}$$

This is a state-vector equation, not merely the expectation-value condition

$$\begin{align}
\langle\Psi|[\widehat P_i,K_{\rm gen}]|\Psi\rangle=0.
\end{align}$$

The QES prescription searches the full gauge-equivalence class $\widetilde\Psi\cong\Psi$ for representatives satisfying (3.10), and then extremizes/minimizes

$$\begin{align}
\left\langle \frac{\widehat A[\gamma^{(0)}]}{4G_N} -\log\rho_b^{\widetilde\Psi} \right\rangle.
\tag{3.11}
\end{align}$$

The authors do not prove:

- existence of such a representative in every gauge class;
- uniqueness up to residual gauge equivalence;
- boundedness of the extremization;
- an all-orders group-averaged inner product and subregion algebra;
- that the UV cancellation in $A/(4G_N)-\log\rho_b$ is sufficient for the operator condition.

Equations (3.10)--(3.13) should therefore be read as an organizing principle, not as a completed nonperturbative definition.

## Controlled $O(1)$ Reduction

When generalized entropy is computed through $O(1)$, $\log\rho_b$ does not enter the leading gradient of the gauge-fixing condition. Quantum extremal gauge reduces to a linear extremality constraint on $\widehat h$:

1. Enter classical extremal gauge, so the perturbed extremal surface remains at $\gamma^{(0)}$.
2. Quantize the free graviton.
3. Use the normal-ordered quadratic area together with $g^{(2)}[\widehat h]$.

In an arbitrary gauge, the equivalent implementation promotes the surface displacement to an operator,

$$\begin{align}
\widehat\gamma^{(1)} =\widehat\gamma^{(1)}[\widehat h].
\end{align}$$

Then

$$\begin{align}
S_B^{\mathrm{CFT}} =\frac{\langle:A[\widehat g,\widehat\gamma]:\rangle_\Psi}{4G_N} +S(\rho_b^\Psi) +O(\kappa). \tag{3.15}
\end{align}$$

Quadratic ordering ambiguities are state-independent c-numbers and disappear after vacuum subtraction. This argument covers only the quadratic, vacuum-subtracted quantity; it is not an all-orders renormalization theorem.

## How $g^{(2)}$ Absorbs the Cubic Interaction

The free graviton $h$ is quantized linearly, while the backreaction satisfies

$$\begin{align}
E^{(1)}_{\mu\nu}[g^{(2)}] =-\langle E^{(2)}_{\mu\nu}[h]\rangle. \tag{3.6}
\end{align}$$

A Green-function representative is

$$\begin{align}
g^{(2)}_{\mu\nu}(x) =-\int d^{d+1}y\, \mathcal G_{\mu\nu}^{\alpha\beta}(x,y) E_{\alpha\beta}^{(2)}[h](y). \tag{3.7}
\end{align}$$

For a one-particle matrix element, one cubic-vertex insertion becomes a $:g^{(2)}[h]:$ insertion after Wick contraction. Counterterms set the vacuum one-point function to zero. Therefore $A^{\rm lin}[g^{(2)}]$ already includes this order of the cubic correction; the explicit $S^{(3)}$ contribution must not be added again.

# The Covariant Phase-Space Derivation

## The Off-Shell Identity Is the Actual Starting Point

The Einstein--Hilbert Lagrangian form is

$$\begin{align}
\mathbf L=\frac1{\kappa^2}(R-2\Lambda)\epsilon. \tag{4.8}
\end{align}$$

Define

$$\begin{align}
\delta\mathbf L =\mathbf E^{\mu\nu}\delta g_{\mu\nu} +d\boldsymbol\theta[g;\delta g], \qquad \boldsymbol\omega[g;\delta_1g,\delta_2g] =\delta_1\boldsymbol\theta[g;\delta_2g] -\delta_2\boldsymbol\theta[g;\delta_1g]. \tag{4.9, 4.13}
\end{align}$$

For a diffeomorphism generator $u$,

$$\begin{align}
\mathbf J_{(u)} =\boldsymbol\theta[g;\mathcal L_u g]-\iota_u\mathbf L =\mathbf C_{(u)}+d\mathbf Q_{(u)}. \tag{4.19, 4.21}
\end{align}$$

The key identity is

$$\begin{align}
\boxed{ \boldsymbol\omega[g;\dot g,\mathcal L_u g] =\dot{\mathbf C}_{(u)} +\iota_u\mathbf E^{\mu\nu}\dot g_{\mu\nu} +d\left( \dot{\mathbf Q}_{(u)} -\iota_u\boldsymbol\theta[g;\dot g] \right)
}
\tag{4.24}
\end{align}$$

Constraint and bulk equation terms are retained until the relevant on-shell assumption is made. Section 4.4 obtains the $T^{\rm grav}$ relation precisely by applying this identity to a second-order on-shell family and a family that is on shell only through first order, and then subtracting.

## First Charge Law

For a stationary background, a horizon Killing vector $\xi$, and an on-shell family, $\xi$ vanishes at the bifurcation surface. The asymptotic boundary term defines the Hamiltonian charge $K^\partial_{(\xi)}$, while the horizon Noether charge gives the area:

$$\begin{align}
\delta K^\partial_{(\xi)} =\frac{2\mathfrak s}{\kappa^2}\delta A. \tag{4.27}
\end{align}$$

With modular normalization $\mathfrak s=2\pi$,

$$\begin{align}
\frac{2\mathfrak s}{\kappa^2} =\frac{4\pi}{16\pi G_N} =\frac1{4G_N}.
\end{align}$$

The linear graviton therefore produces an $O(\kappa^{-1})$ boundary modular-energy contribution.

## Second Charge Law and Canonical Energy

A second variation gives

$$\begin{align}
\delta^2K^\partial_{(\xi)} =\frac{2\mathfrak s}{\kappa^2}\delta^2A +E_{\rm can}[\delta g], \tag{4.31}
\end{align}$$

where

$$\begin{align}
E_{\rm can}[\delta g] \equiv \Omega[G;\delta g,\mathcal L_\xi\delta g]. \tag{4.32}
\end{align}$$

In Hollands--Wald gauge,

$$\begin{align}
\delta^2K^\partial_{(\xi)} =2\mathfrak s\left( A^{\rm lin}[g^{(2)},\gamma^{(0)}] +A^{\rm quad}[h^{\rm HW},\gamma^{(0)}] \right) +E_{\rm can}[\kappa h^{\rm HW}]. \tag{4.33}
\end{align}$$

The symplectic form carries $1/\kappa^2$, so $E_{\rm can}[\kappa h]=O(1)$.

## General Gauge: Area Dressing and Corner Completion

In an arbitrary gauge, the second-order extremal area is

$$\begin{align}
\delta^2A[g,\gamma] =& A^{\rm lin}[g^{(2)},\gamma^{(0)}] +A^{\rm quad}[h,\gamma^{(0)}]\\
&+A^{\rm quad}[G,\gamma^{(1)}] +A^{\rm lin}[h,\gamma^{(1)}].
\tag{4.34}
\end{align}$$

Let $v$ map $h$ to Hollands--Wald gauge:

$$\begin{align}
h^{\rm HW}=h+\mathcal L_vG. \tag{4.35}
\end{align}$$

Then

$$\begin{align}
E_{\rm can}[h^{\rm HW}] =E_{\rm can}[h] +\int_{\gamma^{(0)}}\Upsilon. \tag{4.36}
\end{align}$$

The form $\Upsilon$ is built from $Q_{[\xi,\kappa v]}$, $\theta[\mathcal L_\xi h]$, and related surface terms; its full expression is equation (4.37). The master relation is

$$\begin{align}
\begin{aligned}
\delta^2K^\partial_{(\xi)} =& 2\mathfrak s\Big( A^{\rm lin}[g^{(2)},\gamma^{(0)}] +A^{\rm quad}[h,\gamma^{(0)}] +A^{\rm quad}[G,\gamma^{(1)}] +A^{\rm lin}[h,\gamma^{(1)}] \Big)\\
&+E_{\rm can}[\kappa h] +\int_{\gamma^{(0)}}\Upsilon.
\end{aligned}
\tag{4.38}
\end{align}$$

This does not say that canonical energy is intrinsically gauge invariant. It says that a gauge transformation redistributes one Hamiltonian between

$$\begin{align}
\text{surface displacement} \quad\longleftrightarrow\quad \text{canonical-energy corner term}.
\end{align}$$

Appendix B shows that, for smooth two-sided near-horizon perturbations, extremal gauge is enough to set $\Upsilon=0$ and to identify the second-order horizon Noether charge with the fixed-surface area. Full Gaussian-null gauge is convenient bookkeeping, not the principle selecting the modular Hamiltonian.

## Alternate Backreaction Relation

Define

$$\begin{align}
T_{\mu\nu}^{\rm grav} \equiv -E_{\mu\nu}^{\rm quad}[\kappa h]. \tag{4.40}
\end{align}$$

Retain the off-shell constraint term in (4.24), compare

$$\begin{align}
g_A=G+\lambda\kappa h+(\lambda\kappa)^2g^{(2)}
\end{align}$$

with

$$\begin{align}
g_B=G+\lambda\kappa h,
\end{align}$$

and obtain

$$\begin{align}
\delta^2K^\partial_{(\xi)} =2\mathfrak s A^{\rm lin}[g^{(2)},\gamma^{(0)}] +\int_b d^dx\sqrt{-G_b}\, T_{\mu\nu}^{\rm grav}\tau^\mu\xi^\nu. \tag{4.39}
\end{align}$$

This is easier for explicit calculations because it avoids solving for $\gamma^{(1)}$ and $A^{\rm quad}$. However, $T_{\mu\nu}^{\rm grav}$ is the backreaction source defined by the quadratic Einstein tensor, not an ordinary stress tensor obtained by varying the free action with respect to $G$. Its wedge integral is not an independent definition of the graviton modular Hamiltonian.

## From Classical Charges to JLMS

The promotion has three steps:

1. Identify the asymptotic Killing charge $K^\partial_{(\xi)}$ with the boundary vacuum modular Hamiltonian $K_B$.
2. Promote the extremal area to $A[\widehat g,\widehat\gamma]$.
3. Promote the boundary-term-free ADM/Killing Hamiltonian in extremal gauge to $\widehat K_b$.

In a Rindler mode basis,

$$\begin{align}
\widehat K_b =\sum_\lambda\int d\omega\, \omega\,b^\dagger_{\omega,\lambda}b_{\omega,\lambda} +\mathrm{const.} \tag{4.47}
\end{align}$$

Bogoliubov coefficients for a global excitation turn its vacuum-subtracted expectation value into canonical energy. Thus

$$\begin{align}
\Delta K_b =E_{\rm can}[\kappa h^R] =E_{\rm can}[\kappa h] +\int_{\gamma^{(0)}}\Upsilon. \tag{4.49}
\end{align}$$

The argument requires a stationary wedge with a bifurcate Killing horizon, suitable horizon boundary conditions, a complete symplectically orthonormal Rindler basis, no additional horizon symplectic boundary term, and gauge-invariant Bogoliubov data extracted from the Weyl tensor.

The entropy consequence of $\Delta K_B=\Delta A/(4G_N)+\Delta K_b$ also uses the entanglement first law and therefore controls only the leading order in the state perturbation. The explicit replica calculation in §5.6 goes beyond this state-first-law step.

# Explicit AdS-Rindler/CFT Example

## CFT Benchmark

Take the polar cap

$$\begin{align}
B=\{\theta\le\theta_0\}.
\end{align}$$

And the unit-normalized stress-tensor primary

$$\begin{align}
|\widetilde\epsilon\!\cdot\!\widetilde T\rangle, \qquad \widetilde\epsilon^{\mu\nu} =\epsilon^\mu\epsilon^\nu-\frac{\epsilon^2}{d}\delta^{\mu\nu}.
\end{align}$$

The CHM map sends the cap reduced state to

$$\begin{align}
\mathcal H=S^1_{2\pi}\times H^{d-1}.
\end{align}$$

The vacuum is $e^{-2\pi H_H}$, and the two stress-tensor insertions lie at $\tau_H=\pi\pm\theta_0$. Small $\theta_0$ is both the $T\times T$ OPE limit and a small density-matrix perturbation.

The entropy decomposition is

$$\begin{align}
\Delta S_B =\Delta K_B^0 -S_{\rm rel}(\rho_B|\omega_B). \tag{5.28}
\end{align}$$

### First-law/modular-energy Term

$K_B^0$ is a local stress-tensor integral on the cap, equation (5.12). Its expectation value is determined by $\langle TTT\rangle$. The paper assumes a holographic CFT with

$$\begin{align}
1\ll\Delta_{\rm gap}\ll C_T,
\end{align}$$

and takes the Einstein limit $\Delta_{\rm gap}\to\infty$, so $t_2=t_4=0$; the parity-odd coefficient in $d=3$ is also set to zero.

For the vacuum--stress-tensor superposition

$$\begin{align}
|S\rangle =\frac{|0\rangle+|\widetilde\epsilon\!\cdot\!\widetilde T\rangle}{\sqrt2},
\end{align}$$

the cross term is

$$\begin{align}
\Delta K_B^S =\frac12\Delta K_B^{\widetilde\epsilon\cdot\widetilde T} +O(\sqrt{C_T})\sin^d\theta_0. \tag{5.22}
\end{align}$$

This is the boundary counterpart of the bulk linear area.

### Relative Entropy Term

Large-$N$ factorization turns the leading $2m$-point functions into generalized-free-field contractions. Through $\theta_0^{4d}$, only the $n=1,2$ terms in the modular-log expansion contribute:

$$\begin{align}
S_{\rm rel}(\rho_B^{\widetilde\epsilon\cdot\widetilde T}|\omega_B) = \frac{\sqrt\pi\,\Gamma(2d+1)} {2\Gamma\left(2d+\frac32\right)} \theta_0^{4d} \left(1+O(\theta_0^2)\right). \tag{5.27}
\end{align}$$

This is the cleanest benchmark for the bulk replica calculation.

## The Dual Global Graviton

Global AdS is

$$\begin{align}
ds^2 =-(1+r^2)dt^2+\frac{dr^2}{1+r^2} +r^2d\Omega_{d-1}^2. \tag{5.29}
\end{align}$$

The authors start from the unconstrained phase space $(h_{\mu\nu},\pi^{\mu\nu})$:

- primary constraints are $\pi^{\mu t}\approx0$;
- secondary constraints are the $t\mu$ components of the linearized Einstein equation;
- radial/holographic gauge imposes $h_{ir}=0$ and a momentum-trace condition;
- time preservation gives the remaining gauge-fixing constraints;
- the constraints and gauge conditions form a second-class set, and the Dirac bracket defines the reduced phase space.

The reduced phase space has dimension $(d+1)(d-2)$, twice the number of physical graviton polarizations. Appendix D gives the block inverse of the constraint matrix, but leaves the inverses of the differential operators as Green kernels subject to boundary conditions; zero-mode exclusion is not developed into a separate functional-analytic proof.

In the Kodama--Ishibashi scalar/vector/tensor decomposition, the lowest radiative scalar mode is

$$\begin{align}
(n,\ell,m)=(0,2,0), \qquad \Omega^S_{0,2}=d. \tag{5.66}
\end{align}$$

It has the same $(\Delta,\ell,m)=(d,2,0)$ quantum numbers as the stress-tensor primary. Unit normalization fixes

$$\begin{align}
\mathcal N^S_{0,2} = \sqrt{ \frac{\Gamma(d+2)} {4d(d-1)\Gamma(\frac d2+1)\Gamma(\frac d2+2)V_{S^{d-1}}}
}.
\tag{5.71}
\end{align}$$

The bulk state is

$$\begin{align}
|g\rangle=a^{S\dagger}_{0,2,0}|0\rangle. \tag{5.72}
\end{align}$$

## Backreaction and Extremal Surface

The normal-ordered second-order metric satisfies

$$\begin{align}
E^{(1)}_{\mu\nu} \left[\langle\widehat g^{(2)}\rangle_g\right] =\langle\widehat T_{\mu\nu}^{\rm grav}\rangle_g. \tag{5.74}
\end{align}$$

The square of the quadrupole produces $\ell=0,2,4$ harmonics. Appendix F solves the nested $d=4$ ODEs in the order $\ell=4\to2\to0$, fixing integration constants by asymptotic AdS falloff, curvature regularity, and residual radial gauge.

The background extremal surface for the polar cap is

$$\begin{align}
\theta^{(0)}(r) =\arccos\left( \cos\theta_0\frac{\sqrt{1+r^2}}r \right), \qquad r_{\min}=\cot\theta_0. \tag{5.79}
\end{align}$$

The linear metric area, $g^{(2)}$ backreaction area, surface displacement, and quadratic metric area all contribute. The normal displacement is written as

$$\begin{align}
\gamma^{(1)\mu} =\sum_{m=1}^2\varpi_m n_{(m)}^\mu, \tag{5.102}
\end{align}$$

and obeys the massive Green-function equation on $H^{d-1}$,

$$\begin{align}
\left(\nabla^2_{H^{d-1}}-(d-1)\right)\varpi_m +(-1)^m\delta_{\kappa h}K_{(m)}=0. \tag{5.103}
\end{align}$$

The vector $v^\mu=-\gamma^{(1)\mu}$ that returns the surface to $\gamma^{(0)}$ has a nonzero extrapolate-dictionary profile at the asymptotic boundary and is therefore a large diffeomorphism for the wedge. The area must be compared using a movable cutoff with fixed induced metric, not a fixed bulk radial coordinate.

## Gauge-Invariant Bulk Modular Energy

The global-mode operator is

$$\begin{align}
\widehat K_b^0 =:\widehat E_{\rm can}[\widehat h^{\rm HW}]: =\sum_q \left( E_{\rm can}[h_q] +\int_{\gamma^{(0)}}\Upsilon_q \right)a_q^\dagger a_q. \tag{5.112}
\end{align}$$

For $d=4$, the paper lists the radial-gauge canonical energy (5.113) and the surface correction (5.115), and states that their sum equals the direct Hollands--Wald calculation (5.114).

The two bulk/boundary modular-energy comparisons are

$$\begin{align}
\Delta K_B =\frac{\Delta\langle A[\widehat g,\widehat\gamma]\rangle}{4G_N} +\Delta K_b, \tag{5.117}
\end{align}$$

and the computationally simpler form

$$\begin{align}
\Delta K_B =\frac{2\mathfrak s}{\kappa^2} \Delta\langle A^{\rm lin}[\widehat g^{(2)},\gamma^{(0)}]\rangle +\int_b\sqrt{-G_b}\, \Delta\langle:T_{\mu\nu}^{\rm grav}:\rangle\tau^\mu\xi^\nu. \tag{5.119, with explicit area normalization}
\end{align}$$

The second expression is written here with the explicit $2\mathfrak s/\kappa^2$ area coefficient. The printed equation (4.51) does not display this prefactor, whereas its classical parent (4.39) and explicit version (5.119) require it.

## Rindler Quantization and Relative Entropy

AdS-Rindler modes are labeled by $\omega$ and the $H^{d-1}$ Laplacian eigenvalue $\lambda$. The global vacuum is a thermofield state of the left and right Rindler Fock spaces. Expanding a global creation operator in Rindler $b,b^\dagger$ gives a one-graviton reduced density matrix determined by $\alpha_{\omega,\lambda}$ and $\beta_{\omega,\lambda}$.

The global and Rindler solutions use different radial gauges. Appendix H therefore compares them through the Weyl tensor. Since the AdS background Weyl tensor vanishes,

$$\begin{align}
W_{\mu\nu\alpha\beta}^{(0)}=0 \quad\Longrightarrow\quad W_{\mu\nu\alpha\beta}^{(1)} \text{ is perturbatively gauge invariant}.
\end{align}$$

Projecting boundary Weyl correlators onto $H^{d-1}$ harmonics inverts the Bogoliubov coefficients. Regularity at $u=0$ also proves that the global scalar quadrupole has no overlap with the Rindler vector/tensor sectors.

The replica expansion gives

$$\begin{align}
\Delta S(\rho_b^g) =\Delta K_b^g -S_{\rm rel}(\rho_b^g|\rho_b^0).
\end{align}$$

The source-stated leading bulk relative entropy is

$$\begin{align}
S_{\rm rel}(\rho_b^g|\rho_b^0) = \frac{\sqrt\pi\,\Gamma(2d+1)} {2\Gamma\left(2d+\frac32\right)} \theta_0^{4d} \left(1+O(\theta_0^2)\right). \tag{5.164}
\end{align}$$

It agrees with (5.27) at the level claimed by the source. Structurally, this extends the JLMS first-law check to second order in the density-matrix perturbation.

# Equation and Dependency Ledger

| Topic | Key equations | Input | Use |
|---|---:|---|---|
| Quantum gauge equivalence | (1.5)--(1.7) | Perturbative constraints | Shows that a classical surface orbit is insufficient |
| Quantum extremal gauge | (3.10)--(3.13) | Group averaging and subregion algebra | All-orders proposal |
| Quadratic area | (3.2), (3.14) | Stable extremal $\gamma^{(0)}$ | Arbitrary-gauge area dressing |
| Backreaction | (3.6)--(3.9) | Green function and normal ordering | Absorbs the cubic graviton interaction |
| CPS potential/current | (4.9)--(4.18) | Einstein action | Defines $\Omega$ and $E_{\rm can}$ |
| Off-shell CPS identity | (4.24) | Diffeomorphism Noether current | Mother identity for both charge relations |
| First charge relation | (4.27)--(4.29) | On-shell family and Killing horizon | $O(\kappa^{-1})$ area |
| Second charge relation | (4.31)--(4.33) | Second variation | Area plus canonical energy |
| Arbitrary-gauge area | (4.34) | $\gamma^{(1)}[h]$ | Surface dressing |
| Corner completion | (4.36)--(4.38) | Map to HW gauge | $E_{\rm can}+\int\Upsilon$ |
| Alternate charge relation | (4.39)--(4.45) | On/off-shell subtraction | Backreaction/pseudostress calculation |
| Graviton JLMS | (4.47)--(4.50) | Rindler basis and horizon boundary conditions | $K_B=A/(4G_N)+K_b$ |
| CFT modular energy | (5.12), (5.19)--(5.22) | $\langle TTT\rangle$ and Einstein limit | Area/canonical-energy benchmark |
| CFT relative entropy | (5.23)--(5.28) | Large-$N$ factorization | $\theta_0^{4d}$ benchmark |
| Reduced graviton phase space | (5.31)--(5.50), App. D | Dirac bracket | Physical Hilbert space |
| Global scalar mode | (5.65)--(5.72), App. E.1 | KI master field | Stress-tensor dual state |
| Backreaction | (5.73)--(5.77), App. F | $E^{(2)}[h]$ | Quadratic area |
| Background QES | (5.79) | Polar-cap geometry | Integration surface |
| Movable cutoff | (5.84)--(5.93) | Fixed induced metric | Finite, gauge-consistent area |
| Surface displacement | (5.94)--(5.109) | Jacobi operator on $H^{d-1}$ | Arbitrary-gauge QES |
| Final area | (5.100)--(5.101) | Previous four pieces | JLMS input |
| Bulk modular Hamiltonian | (5.112)--(5.115) | CPS corner completion | One-particle $\Delta K_b$ |
| Explicit JLMS | (5.117)--(5.119) | $C_T$--$G_N$ dictionary | Source-stated exact match |
| Rindler modes | (5.120)--(5.150), Apps. E.2/G | Horizon normalization | Wedge quantization |
| Weyl overlaps | (5.152), App. H | $W^{(0)}=0$ | Gauge-invariant $\alpha,\beta$ |
| Bulk entropy | (5.153)--(5.165) | Replica expansion | Relative-entropy match |

# CPS, Boundary, and Charge Dictionary

| Local research language | Paper object | Precise role |
|---|---|---|
| Dynamical perturbation | $h_{\mu\nu}$ | Linear spin-2 field on fixed $G$ |
| Nonlinear response | $g^{(2)}_{\mu\nu}$ | Backreaction sourced by $-E^{(2)}[h]$ |
| Presymplectic potential | $\boldsymbol\theta[g;\delta g]$ | Boundary term in $\delta L$ |
| Symplectic current/form | $\boldsymbol\omega,\Omega=\int_b\omega$ | Canonical energy and mode norm |
| Covariant constraint | $\mathbf C_{(u)}$ | Retains the Einstein constraint off shell |
| Noether current/charge | $\mathbf J_{(u)},\mathbf Q_{(u)}$ | Converts the bulk identity into asymptotic/horizon charges |
| Asymptotic Hamiltonian | $K^\partial_{(\xi)}$ | Becomes $K_B$ with modular normalization |
| Horizon Hamiltonian | $\int_{\gamma^{(0)}}Q_{(\xi)}$ | Equals $2\mathfrak s A/\kappa^2$ for the smooth extremal setup |
| Killing canonical energy | $E_{\rm can}=\Omega(h,\mathcal L_\xi h)$ | Equals $K_b$ only after selecting the one-sided representative |
| Corner completion | $\int_{\gamma^{(0)}}\Upsilon$ | Returns arbitrary-gauge $E_{\rm can}$ to its extremal-gauge value |
| Surface dressing | $\gamma^{(1)}[h]$ | Completes fixed-coordinate area into an extremal-area observable |
| Global-small / wedge-large | $v\vert_{\infty}=0$ but $v\vert_\gamma\neq0$ | A full-theory redundancy acts as a boundary transformation on the subregion phase space |
| Asymptotic-large transformation | Extremal-gauge $v$ with nonzero boundary profile | Requires a movable cutoff and shifted anchors |
| Auxiliary graviton density | $T_{\mu\nu}^{\rm grav}=-E_{\mu\nu}^{\rm quad}[\kappa h]$ | Convenient backreaction source, not a standalone modular density |
| Reduced phase space | $\mathcal R$ | Nondegenerate phase space after constraints and gauge fixing |
| One-sided modular operator | $\widehat K_b$ | ADM Killing Hamiltonian without a horizon boundary term in extremal gauge |

# On-Shell Conditions, Boundary Conditions, and Scope

| Statement | Required conditions |
|---|---|
| $d\omega=0$ and slice-independent $\Omega$ | Both variations solve the linearized EOM and boundary flux is controlled |
| First law (4.27) | On-shell family, stationary background, Killing $\xi$, regular bifurcation surface |
| Second law (4.31) | Same assumptions, with a second variation at the stationary point |
| $\Upsilon=0$ in extremal gauge | Smooth two-sided near-horizon perturbation with no singular horizon gauge piece |
| Noether charge $=$ area at second order | Smooth extremal representative and unit binormal conditions |
| Alternate relation (4.39) | One family on shell through second order, another only through first order, with sufficient asymptotic falloff |
| $\Delta K_b=E_{\rm can}+\int\Upsilon$ | Stationary wedge, orthonormal Rindler basis, horizon boundary conditions, no omitted symplectic boundary term |
| JLMS implies the entropy first law | State perturbation is kept only to leading order |
| §5.6 beyond-first-law check | Small cap, small $\delta\rho$, and large-$N$ factorization |
| CFT/gravity comparison | $d>2$, Einstein gravity, and a large higher-spin gap |
| Fixed-cutoff subtraction | Fixed induced metric rather than fixed radial coordinate |
| Dirac-bracket inverse | Differential Green functions exist and boundary conditions remove zero modes |

# What the Paper Actually Establishes

## Established Within Its Perturbative Framework

- Through $O(G_N^0)$, graviton generalized entropy must use a quantum area rather than a classical expectation-value area.
- In an arbitrary gauge, the area requires the operator-valued surface displacement $\widehat\gamma^{(1)}[\widehat h]$.
- For a bifurcate-Killing-horizon background, the CPS charge identity relates the asymptotic modular charge, extremal area, and gauge-completed canonical energy.
- The one-sided graviton vacuum modular Hamiltonian may be represented by canonical energy with no horizon boundary term in extremal gauge.
- A vacuum--one-graviton superposition can have $O(G_N^{-1/2})$ generalized entropy.
- The polar-cap example structurally matches modular energy and relative entropy separately; the universal $\theta_0^{4d}$ relative-entropy coefficient can be checked independently.

## Not Established

- All-orders existence, uniqueness, and boundedness of quantum extremal gauge;
- a regulator-independent definition of absolute graviton entanglement entropy;
- the complete edge-mode algebra and renormalization of $G_N$;
- vanishing of every admissible symplectic boundary term for arbitrary stationary horizons;
- non-Killing JLMS for arbitrary entanglement wedges;
- the corresponding Dong--Camps operator in higher-derivative gravity;
- a gauge-invariant replica path-integral derivation for off-shell conical graviton fluctuations;
- min/max entanglement wedges in nonperturbatively fluctuating geometries.

# Interface with the Current gravitational-energy/CPS Work

The most transferable content for the Articles/Quantization in AdS/gravitational energy notes is not the final entropy series, but four working rules:

1. Write the off-shell CPS identity first, and state exactly where constraints or EOM are imposed; do not infer the boundary charge from an on-shell slogan.
2. With an internal boundary, raw canonical energy is not automatically gauge invariant; give the corner completion or explicitly choose the gauge in which it vanishes.
3. Surface displacement and corner terms are two manifestations of the same gauge redistribution; repairing the area alone is insufficient.
4. The alternate $T_{\mu\nu}^{\rm grav}$ relation is excellent for explicit calculations, but should not be renamed the bulk modular Hamiltonian.

The cleanest three-line compression is

$$\begin{align}
\text{extremal gauge} \Longrightarrow K_b=E_{\rm can},
\end{align}$$

$$\begin{align}
\text{arbitrary gauge} \Longrightarrow K_b=E_{\rm can}+\int_\gamma\Upsilon,
\end{align}$$

$$\begin{align}
K_B=\frac{A[\widehat g,\widehat\gamma]}{4G_N}+K_b \Longrightarrow \text{graviton JLMS/generalized entropy}.
\end{align}$$

# Verification Log

## Checked

1. PDF text extraction plus rendered-page inspection checked equations (3.10)--(3.15), (4.33)--(4.50), (5.19)--(5.23), (5.71), (5.83), (5.101), (5.110)--(5.119), (5.152)--(5.165), and key pages of Appendices B and H. Equation labels, visible radical scopes, sphere-volume factors, and normalization symbols were recorded from the v2 PDF.
2. xAct variation of the Einstein--Hilbert scalar $R-2\Lambda$ reproduced the derivative structure of (4.11)--(4.12); the densitized form and overall $1/\kappa^2$ must be restored according to the paper's convention.
3. xPert reproduced the linearized Ricci tensor and scalar in (A.3)--(A.4).
4. With

$$\begin{align}
R_{\mu\nu}=-dG_{\mu\nu}, \qquad R=-d(d+1), \qquad \Lambda=-\frac{d(d-1)}2,
\end{align}$$

   xPert reproduced the global-AdS linearized Einstein equation (5.51).
5. Mathematica substituted (5.79) into the polar-cap area Euler--Lagrange equation and obtained residual $0$ for $d\ge3$, $0<\cos\theta_0<1$, and the physical surface branch.
6. Mathematica verified

$$\begin{align}
\int_{-\infty}^{\infty}ds\, \operatorname{sech}^{4d+2}\left(\frac s2\right) = \frac{2\sqrt\pi\,\Gamma(2d+1)} {\Gamma(2d+\frac32)},
\end{align}$$

   so that the $1/2-1/4$ combination of (5.24) and (5.26) gives (5.27).
7. Mathematica used standard unit-sphere volumes to check the $d=4$ small-cap expansion of (5.19) and locate the factor-four failure below.
8. Direct algebra confirms

$$\begin{align}
\langle s|a+a^\dagger|s\rangle=1
\end{align}$$

   for $|s\rangle=(|0\rangle+|1\rangle)/\sqrt2$, which is used in auditing the first-order area coefficient in (5.83) and (5.101).

## Assumptions

- All independent tensor checks use the paper's $L_{\rm AdS}=1$ Einstein-background convention.
- Sphere volumes use

$$\begin{align}
V_{S^n}=\frac{2\pi^{(n+1)/2}}{\Gamma((n+1)/2)}.
\end{align}$$

- Printed normalization chains are interpreted literally according to their visible radical scope, mode labels, and prefactors; no unwritten convention is used to repair them.
- Source-stated equalities and independently checked equalities are kept separate.

## Blocked / Not Independently Verified

- The full set of $d=4$ rational backreaction functions in Appendix F has not been substituted into every Einstein ODE.
- The complete surface/backreaction area integrals in (5.96)--(5.101) have not been independently recomputed.
- The full tensor boundary algebra and $\Upsilon$ reduction in Appendix B have not been independently redone.
- All differential Green kernels required by Appendix D have not been constructed, and zero-mode absence has not been proved.
- The double integral (H.26)$\to$(H.27), the $\omega,\lambda$ integrals in (5.157), and the replica integrals in (5.162) have not been independently recomputed.
- Completeness of the scalar/vector/tensor basis on noncompact $H^{d-1}$ has not been proved.
- All-orders existence, uniqueness, and boundedness of quantum extremal gauge are open problems in the paper itself and cannot be settled by the current symbolic checks.

## Failed: Literal Normalization Audit of the v2 Printed Formulas

These failures mean that the printed formulas cannot be connected into the authors' claimed numerical equalities under standard conventions. They do not by themselves refute the CPS architecture or the generalized-entropy proposal.

1. **(5.19) $\to$ (5.116): factor $d$.** The printed prefactor

$$\begin{align}
\frac{\pi d}{2(d-1)^3(d+1)}
\end{align}$$

   gives exactly four times (5.116) at $d=4$ when combined with standard sphere volumes. Removing the extra factor $d$ makes every coefficient through $\theta_0^{16}$ agree with (5.116). This is a strong source-level typo candidate.

2. **(5.83) $\to$ (5.101), first-order area.** Equation (5.83) gives

$$\begin{align}
A^{\rm lin}[h_{0,2,0},\gamma^{(0)}] =V_{S^2}|\mathcal N^S_{0,2}|\frac45\sin^4\theta_0.
\end{align}$$

   Equations (5.80)--(5.81) and $\langle s|a+a^\dagger|s\rangle=1$ preserve the same $4/5$ coefficient, whereas the first line of (5.101) prints $4\sqrt2/15$, smaller by $\sqrt2/3$. No state or mode-renormalization convention in the text explains this ratio.

3. **The superposition chain in (5.111).** Direct substitution of (5.22), (5.71), (5.101), (5.110), and $\kappa=\sqrt{16\pi G_N}$ gives

$$\begin{align}
\frac{\text{CFT cross term}} {\langle s|A^{\rm lin}|s\rangle/\kappa} =12\sqrt2\,\pi,
\end{align}$$

   rather than $1$. Even after inserting the $4\pi$ area coefficient required by JLMS, a factor $3\sqrt2$ remains. This is not merely a missing-$4\pi$ convention issue; until the source conventions are clarified, (5.111) must remain a source claim.

4. **(5.113)+(5.115) versus (5.157): factor $2\pi$.** The leading $d=4$ coefficient from the printed canonical-plus-corner series is

$$\begin{align}
\frac{64}{315\pi}\theta_0^8,
\end{align}$$

   whereas (5.157) gives

$$\begin{align}
\frac{128}{315}\theta_0^8.
\end{align}$$

   The ratio is $2\pi$. Equations (5.149)--(5.151) explicitly write $K_b^0=2\pi H_R$, so the most plausible explanation is that (5.113) uses a surface-gravity-one $\xi=\partial_\tau$ while (5.157) uses modular-flow normalization. Section 5.4 does not explicitly implement this rescaling when asserting equality, so the arithmetic is checked but the printed equality is convention-blocked.

5. **Radical scope in (H.27).** In the v2 PDF the visible radical covers $e^{-d\eta}$. Since

$$\begin{align}
e^{-\eta}=\frac{\theta_0}{2}+O(\theta_0^3),
\end{align}$$

   literal scaling of (H.27) is $\theta_0^{d/2}$, whereas the main text (5.152) has $\theta_0^d$. The power agrees only if $e^{-d\eta}$ lies outside the radical or if the radical contains $e^{-2d\eta}$. No selective repair is adopted here.

6. **Undefined normalization label in (H.27).** The equation uses $\mathcal N^S_{0,1}$, while the global mode used throughout the example is $(n,\ell)=(0,2)$ with $\mathcal N^S_{0,2}$ defined in (5.71). This is likely a label typo, but it has not been checked against the original TeX or an erratum.

7. **Area prefactor in (4.51).** The printed equation does not show an explicit $2\mathfrak s/\kappa^2$; its classical parent (4.39) and explicit version (5.119) require this coefficient. Unless $A$ in (4.51) means an already normalized area term, the formula is dimensionally inconsistent with the surrounding equations.

The safest current conclusion is:

> The paper's conceptual/CPS architecture can be reproduced, while the v2 explicit numerical matching chain must be labeled source-stated and left independently unverified until the likely typos and convention choices are resolved.

# Five Concrete Follow-Up Calculations

1. Track the original source TeX or a later version for (5.19), (5.101), and (H.27), and build an errata ledger for brackets and coefficients.
2. Re-derive (4.27), (4.31), (4.38), and (4.39) from (4.24) with one modular normalization $\mathfrak s=2\pi$, fixing every factor of $2\pi$ and $\kappa$.
3. Recompute only the leading $d=4$ $\theta_0^4$ and $\theta_0^8$ terms from the normalized global mode, the linear area, canonical energy, and CFT stress-tensor charge before extending to $\theta_0^{16}$.
4. Redo the large-$\eta$ asymptotics from (H.25)--(H.26), determine whether the radical or the exponent in (H.27) must change, and check $\mathcal N^S_{0,1}\to\mathcal N^S_{0,2}$.
5. Rewrite the charge identity in the notation of the current gravitational-energy article, keeping separate ledgers for the asymptotic charge, internal-boundary charge, constraint term, and off-shell remainder.
