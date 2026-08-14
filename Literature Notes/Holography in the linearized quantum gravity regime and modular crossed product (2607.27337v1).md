---
paper id: 2607.27337v1
title: Holography in the linearized quantum gravity regime and modular crossed product
authors: [Avinandan Mondal]
publication date: 2026-07-29T18:00
abstract: "Within the semi-classical regime of AdS/CFT correspondence, we consider the limit where the bulk dynamical field is linearized metric perturbations satisfying linearized Einstein equations over background pure AdS spacetime. AdS/CFT correspondence gives us a holographic map, which is an isometric embedding map of the GNS Hilbert space of linearized gravity in the bulk (w.r.t. the AdS-invariant vacuum) to the GNS Hilbert space of CFT in the boundary (w.r.t. the Minkowski-invariant vacuum). We assume that the map takes AdS-vacuum in the bulk to CFT-vacuum in the boundary and that it allows AdS-Rindler wedge reconstruction. Then using this map, we show that for a given ball-shaped region in the boundary $A$, the relative entropy of a bulk state w.r.t. the AdS vacuum in the algebra of causal wedge associated to $A$ matches with the relative entropy of the dual CFT state w.r.t. the CFT vacuum in the algebra of CFT observables in $A$ in the code subspace, which is known as Jafferis-Lewkowycz-Maldacena-Suh (JLMS) condition. Furthermore, for localized semi-classical coherent excitations in the causal wedge associated to $A$ which corresponds to perturbed bulk geometry, we show rigorously using modular crossed product construction that the state-dependent part of entropy of the dual CFT state in the dressed Type-II algebra associated to $A$ satisfies vacuum subtracted Hubeney-Rangamani-Takayanagi (HRT) formula."
comments: "31+epsilon pages. 3 figures. Comments are welcome"
pdf: "[[Attachments/Assets/Holography in the linearized quantum gravity regime and modular crossed product (2607.27337v1).pdf]]"
url: https://arxiv.org/abs/2607.27337v1
tags: []
---

Consider a 1-parameter family of $\displaystyle{(d+1)}$-dimensional asymptotically AdS spacetime with manifold $\displaystyle{M}$ and have matrices $\displaystyle{g_{ab}(\lambda)}$. Th emetric $\displaystyle{g^{(0)}_{ab}:= g_{ab}(\lambda=0)}$ is the pure $\displaystyle{\mathrm{AdS}_{d+1}}$ spacetime

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\dfrac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\Omega _{d-1}^{2}
\end{align}$$

consider a connected ball-shaped region $\displaystyle{A\subset \partial \Sigma}$. The causal wedge $\displaystyle{\mathcal{W}(A)}$ is defined as

$$\begin{align}
\mathcal{W}(A) & =J^{-}(\mathcal{D}(A))\cap J^{+}(\mathcal{D}(A))
\end{align}$$

here $\displaystyle{\mathcal{D}(A)=\mathcal{D}^{+}(A)\cup \mathcal{D}^{-}(A)}$ is the domain of dependence in the boundary $\displaystyle{\Gamma}$ of $\displaystyle{A}$. $\displaystyle{\partial \mathcal{W}(A)}$ is the boundary of the causal wedge, which consists of the past and future horizons $\mathcal{H}_{A}^{\pm}$ emanating from the boundary of $\mathcal{D}(A)$. $\displaystyle{\mathcal{H}_{A}^{\pm}}$ are Killing horizons for AdS-Rindler boost field, and hence $\displaystyle{\mathcal{W}(A)}$ is referred to as the AdS-Rindler wedge associated to $\displaystyle{A}$.

![[Attachments/截屏2026-08-10 14.40.15.png]]

The standard AdS-Rindler wedge is the causal wedge $\displaystyle{\mathcal{W}(A_{0})}$ where $\displaystyle{A_{0}}$ is half of $\displaystyle{\partial \Sigma}$.

---

By an isometry of $\displaystyle{\mathcal{M}}$, i.e., a conformal symmetry of $\displaystyle{\partial \Sigma}$, we can map any ball-shaped region $A$ to $A_0$, and hence the causal wedge $\mathcal{W}(A)$ to the standard AdS-Rindler wedge $\mathcal{W}(A_0)$.

---

The metric in $\displaystyle{\mathcal{W}(A_{0})}$ can be written as

$$\begin{align}
\mathrm{d}s^{2} & =-(\sigma ^{2}-1)\mathrm{d}\tau ^{2}+\dfrac{\mathrm{d}\sigma ^{2}}{\sigma ^{2}-1}+\sigma ^{2}\mathrm{d}H_{d-1}^{2}
\end{align}$$

where $\displaystyle{\mathrm{d}H_{d-1}^{2}}$ is the unit hyperboloid metric. And the boost field $\displaystyle{\partial _{\tau}}$ is Killing and it is timelike in $\displaystyle{\mathcal{W}(A_{0})}$.

Let $\displaystyle{\psi:\mathrm{AdS}_{d+1}\to \mathrm{AdS}_{d+1}}$ be the isometry which maps $\displaystyle{\mathcal{W}(A_{0})}$ to $\displaystyle{\mathcal{W}(A)}$. The push-forward of the vector $\displaystyle{\partial _{\tau}}$ is the Killing vector $\displaystyle{\xi ^{a}=\psi ^{*}(\partial _{\tau})}$, which is timelike in $\displaystyle{\mathcal{W}(A)}$ and generates the null surfaces $\displaystyle{\mathcal{H}_{A}^{\pm}}$. The null surfaces can be geodesically complete to $\displaystyle{\mathcal{H}^{\pm}}$ to generate a bifurcate Killing horizon structure w.r.t. the Killing field $\displaystyle{\xi ^{a}}$ (where $\displaystyle{\xi ^{a}}$ is extended to $\displaystyle{\mathcal{H^{\pm}}-\mathcal{H}_{A}^{\pm}}$ by taking $\displaystyle{\xi ^{a}}$ ot be the associated boost field in $\displaystyle{\mathcal{W}(A^{c})}$)

![[Attachments/截屏2026-08-10 15.30.58.png]]

Here $\displaystyle{\mathcal{H}^{\pm}=\mathcal{H}_{A}^{\pm}\cup \mathcal{H}_{A_{c}}^{\pm}}$. Denote the affine parameter on $\displaystyle{\mathcal{H}^{+}}$ by $\displaystyle{V}$ and Killing parameters on $\displaystyle{\mathcal{H}_{A}^{+}}$ and $\displaystyle{\mathcal{H}_{A^{c}}^{+}}$ by $\displaystyle{v}$ and $\displaystyle{v'}$ respectively. The surface gravity on the horizon $\displaystyle{\mathcal{H}^{+}}$ of $\displaystyle{\xi ^{a}}$ can be evaluated to be $\displaystyle{\kappa=1}$ and henve the affine and Killing parameters are related as

$$\begin{align}
V & =e^{v} \\
V & =-e^{v'}
\end{align}$$

---

- affine parameter $\displaystyle{V}$: parameter along a geodesic for which the tangent vector is parallel transported
- Killing parameter $\displaystyle{v}$: parameter along the integral curves of a Killling field, defined by $\displaystyle{\dfrac{\mathrm{d}x^{a}}{\mathrm{d}v}=\xi ^{a}}$.

On a Killing horizon, in general we have $\displaystyle{V=e^{\kappa v}}$.

---

The bifurcation surface $\displaystyle{\Gamma_{0}=\mathcal{H}^{+}_{A}\cap \mathcal{H}^{-}_{A}}$ is the HRT surface corresponding to $\displaystyle{A}$.

HRT surface $\displaystyle{\Gamma}$ satisfies
- codim-2. (Obvious)
- anchored to $\displaystyle{\partial \Sigma}$. (Obvious)
- have both null expansions to be zero. (On a Killing horizon: for any Killing field $\displaystyle{\nabla_a \xi^a = 0}$ (antisymmetric $\displaystyle{\nabla_a \xi_b}$ traced with symmetric $\displaystyle{g^{ab}}$), so the expansion w.r.t. the Killing parameter vanishes along the whole horizon; the affine expansion differs only by the non-vanishing factor $\displaystyle{e^{-\kappa v}}$ ($V=e^{\kappa v}$), hence also zero. At $\displaystyle{\Gamma_0}$ the two null normals are the tangents of $\displaystyle{\mathcal{H}_A^+}$ and $\displaystyle{\mathcal{H}_A^-}$, so $\displaystyle{\theta_+ = 0 = \theta_-}$ — extremality.)
- the one with minimal area. (Unique)

### Gauge Conditions

Impose Gaussian null gauge on metric perturebations on the horizon $\displaystyle{\mathcal{H}^{+}}$. This ensures that the hypersurface $\displaystyle{\mathcal{H}^{+}}$ remain null at all orders in $\displaystyle{\lambda}$. Impose the first order perturbed expansions vanish on $\displaystyle{\Gamma _{0}}$

$$\begin{align}
\delta \vartheta _{\pm}|_{\Gamma _{0}} & =0
\end{align}$$

which can be consistently imposed by exploiting residual gauge freedom after fixing Gaussian null gauge. Hence the expansion of $\displaystyle{\Gamma_{0}}$ is of $\displaystyle{\mathcal{O}(\lambda ^{2})}$, and $\displaystyle{\Gamma_{0}}$ remains extremal at $\displaystyle{\mathcal{O}(\lambda)}$. Now say $\displaystyle{\Gamma _{\lambda}}$ is the true HRT surface which is assumed to be perturbatively away from $\displaystyle{\Gamma _{0}}$, $\displaystyle{\eta ^{a}}$ is the normal displacement vector field of $\displaystyle{\Gamma _{\lambda}}$ at $\displaystyle{\lambda=0}$. Now denote the mean curvature vector of $\displaystyle{\Gamma _{0}}$ by $\displaystyle{H^{a}}$, which is defined as

$$\begin{align}
H^{a}(p) & =\dfrac{1}{d-1}\sum ^{d-1}_{i=1}\Pi^{a}(e_{i},e_{i}), & p \in \Gamma _{0}
\end{align}$$

where $\displaystyle{\Pi^{a}}$ is the second fundamental form tensor. And $\displaystyle{(e_{1},\dots,e_{d-1})}$ is any frame on $\displaystyle{\Gamma_{0}}$ at $\displaystyle{p}$. The change in area can be written as

$$\begin{align}
\mathrm{Area}[\Gamma _{\lambda},g_{ab}(\lambda)]-\mathrm{Area}[\Gamma_{0},g_{ab}(\lambda)]=\lambda(d-1)\int _{\Gamma _{0}}\varepsilon ^{d-1}H_{a}\eta ^{a}+\lambda \int _{\Gamma _{0}}\varepsilon ^{d-1}\mathrm{div}(\eta ^{T})+\mathcal{O}(\lambda ^{2})
\end{align}$$

where $\displaystyle{\varepsilon ^{d-1}}$ is the induced volume form on $\displaystyle{\Gamma _{0}}$ from $\displaystyle{g_{ab}(\lambda)}$. rewrite the mean curvture vector $\displaystyle{H^{a}}$ in terms of ingoing and outgoing null generators on $\displaystyle{\Gamma_{0}}$, namely $\displaystyle{l^{a}}$ and $\displaystyle{n^{a}}$ respectively and the repsective expansions of generated null surfaces at $\displaystyle{\Gamma _{0}}$ namely $\displaystyle{\vartheta _{-}|_{\Gamma_{0}}}$ and $\displaystyle{\vartheta _{+}|_{\Gamma_{0}}}$ as

$$\begin{align}
H^{a} & =\dfrac{1}{d-1}\left(l^{a}\vartheta _{-}|_{\Gamma_{0}}+n^{a}\vartheta _{+}|_{\Gamma _{0}}\right)
\end{align}$$

the gauge condition $\displaystyle{\delta \vartheta _{\pm}|_{\Gamma_{0}}=0}$ implies $\displaystyle{H^{a}\sim \mathcal{O}(\lambda ^{2})}$ and hence $\displaystyle{\lambda(d-1)\int _{\Gamma_{0}}\varepsilon ^{d-1}H_{a}\eta ^{a}=\mathcal{O}(\lambda ^{3})}$. By using Stokes' theorem we have

$$\begin{align}
\int _{\Gamma _{0}}\varepsilon ^{d-1}\mathrm{div}(\eta ^{T}) & =\int _{\partial \Gamma_{0}}\varepsilon ^{d-2}\eta _{a}^{T}m^{a}
\end{align}$$

noticing $\displaystyle{\partial \Gamma _{\lambda}=\partial \Gamma _{0}=\partial A}$, we have $\displaystyle{\eta ^{T}|_{\partial \Gamma_{0}}=0}$, therefore $\displaystyle{\int _{\partial \Gamma_{0}}\varepsilon ^{d-2}\eta ^{T}_{a}m^{a}=0}$, and thus

$$\begin{align}
\mathrm{Area}[\Gamma _{\lambda},g_{ab}(\lambda)]-\mathrm{Area}[\Gamma_{0},g_{ab}(\lambda)]=\mathcal{O}(\lambda ^{3})
\end{align}$$

on the other hand, use Raychaudhuri's equation and at first order we have

$$\begin{align}
\dfrac{\mathrm{d}}{\mathrm{d}V}(\delta \vartheta) & =-\dfrac{2}{d-1}\vartheta ^{(0)}\delta \vartheta-2\sigma ^{(0)}_{ab}\delta \sigma ^{ab}-\delta R_{ab}n^{a}n^{b}
\end{align}$$

since the background expansion and shear vanish $\displaystyle{\vartheta ^{(0)}=0, \sigma ^{(0)}_{ab}=0}$ as $\displaystyle{\mathcal{H}^{+}}$ is a Killing horizon, we have

$$\begin{align}
\dfrac{\mathrm{d}}{\mathrm{d}V}(\delta \vartheta)=-\delta R_{ab}n^{a}n^{b}
\end{align}$$

---

The Killing equation $\displaystyle{\nabla _{(a}\xi _{b)}=0}$ makes $\displaystyle{\nabla _{a}\xi _{b}}$ antisymmetric, therefore expansion $\displaystyle{\vartheta=q^{ab}\nabla _{a}\xi _{b}}$ and shear $\displaystyle{\sigma _{ab}=q^{c}_{(a}q^{d}_{b)}\nabla _{(c}\xi _{d)}}$ vanish identically.

---

The perturbations being source-free, then

$$\begin{align}
\delta R_{ab} & =\left( -\Lambda+\dfrac{1}{2}R^{(0)} \right)\delta g_{ab}+\dfrac{1}{2}\delta Rg^{(0)}_{ab}
\end{align}$$

where $\displaystyle{\Lambda=-\dfrac{d(d-1)}{2}}$. Gaussian null gauge condition on $\displaystyle{\mathcal{H}^{+}}$ ensures $\displaystyle{g_{ab}(\lambda)n^{a}n^{b}=0}$ at all orders in $\displaystyle{\lambda}$ and hence $\displaystyle{\delta R_{ab}n^{a}n^{b}=0}$. Therefore

$$\begin{align}
\dfrac{\mathrm{d}}{\mathrm{d}V}(\delta \vartheta)=0\implies \delta \vartheta|_{\mathcal{H}^{+}}=0
\end{align}$$

and then

$$\begin{align}
\mathrm{Area}[\Gamma _{0},g_{ab}(\lambda)]-\mathrm{Area}[\Gamma _{0},g_{ab}^{(0)}]=\mathcal{O}(\lambda ^{2})
\end{align}$$

we denote this second order area variation as $\displaystyle{\delta ^{2}\mathrm{Area}[\Gamma _{0}]}$.

---

$$\begin{align}
\dfrac{\mathrm{d}}{\mathrm{d}V}\mathrm{Area}[\Sigma _{V}] & =\int _{\Sigma _{V}}\varepsilon \vartheta=\mathcal{O}(\lambda ^{2})
\end{align}$$

and therefore $\displaystyle{\mathrm{Area}[\Gamma _{0},g_{ab}(\lambda)]-\mathrm{Area}[\Gamma _{0},g_{ab}^{(0)}]=\mathcal{O}(\lambda ^{2})}$.

---

We have

$$\begin{align}
 & \mathrm{Area}[\Gamma _{\lambda},g_{ab}(\lambda)]-\mathrm{Area}[\Gamma _{0},g^{(0)}_{ab}] \\
= & \mathrm{Area}[\Gamma _{\lambda},g_{ab}(\lambda)]-\mathrm{Area}[\Gamma _{0},g_{ab}(\lambda)]+\mathrm{Area}[\Gamma _{0},g_{ab}(\lambda)]-\mathrm{Area}[\Gamma _{0},g^{(0)}_{ab}] \\
= & \delta ^{2}\mathrm{Area}[\Gamma _{0}]+\mathcal{O}(\lambda ^{3})
\end{align}$$

### Algebraic Quantization on AdS-Rindler Horizon

The horizon $\displaystyle{\mathcal{H}^{+}}$ behaves as an initial data surface for first order metric perturbations in $\displaystyle{\mathrm{AdS}_{d+1}}$ with reflecting boundary conditions at $\displaystyle{\partial M}$...

Consider the flux opreator which is the Hamiltonian for the Killing time translation of the horizon $\displaystyle{\mathcal{H}^{+}}$

$$\begin{align}
F_{\xi} & =\int _{\mathcal{H}^{+}}\omega(g;\delta g,\mathcal{L}_{\xi g})=\dfrac{1}{4\pi}\int _{\mathcal{H}^{+}}\mathrm{d}V\mathrm{d}\Omega _{2}\delta \sigma _{AB}\delta \sigma ^{AB} \\
 & =\int _{\mathcal{H}^{+}}\mathrm{d}(\delta ^{2}Q_{\xi}-\xi \cdot \delta \theta(g,\delta g)) \\
 & =X-C \\
X & =\int _{\zeta ^{+}_{R}}(\delta ^{2}Q_{\xi}-\xi \cdot \delta \theta(g,\delta g)) \\
C & =\int _{\zeta _{L}^{-}}(\delta ^{2}Q_{\xi}-\xi \cdot \delta \theta(g,\delta g)
\end{align}$$

here $\displaystyle{\zeta _{R}^{+}}$ and $\displaystyle{\zeta _{L}^{-}}$ are the intersection of $\displaystyle{\mathcal{H}^{+}}$ with $\displaystyle{\partial M}$. $\displaystyle{X}$ and $\displaystyle{C}$ are not phase space observables of linearized gravity since they have a dependence on second order metric perturbations $\displaystyle{\delta ^{2}g}$.

On $\displaystyle{\mathcal{H}^{+}}$ we quantize the smeared perturbed shear $\displaystyle{\delta \sigma(s)}$. We do GNS construction of the algebra $\displaystyle{\mathcal{A}_{\mathcal{H}^{+}}}$ generated by smeared shear operators $\displaystyle{\boldsymbol{\delta \sigma}(s)}$ on $\displaystyle{\mathcal{H}^{+}}$ with respect to the global AdS isometry invariant vacuum $\displaystyle{\omega _{0}}$ and obtain GNS Hilbert space $\displaystyle{\mathscr{H}_{\mathrm{AdS}}}$, a cyclic separating state representing the AdS vacuum $\displaystyle{\ket{\omega _{0}}}$ and a representation of the algebra $\displaystyle{\mathcal{A}_{\mathcal{H}^{+}}}$ in $\displaystyle{\mathcal{L}(\mathscr{H}_{\mathrm{AdS}})}$. The flux operator is now a quantum field theory observable

$$\begin{align}
\boldsymbol{F}_{\xi} & =\dfrac{1}{4\pi}\int _{\mathcal{H}^{+}}\mathrm{d}V\mathrm{d}\Omega _{2}:\boldsymbol{\delta \sigma}_{AB}\boldsymbol{\delta \sigma}^{AB}:
\end{align}$$

the normal ordering is done by Hadamard subtraction with respect to the vacuum $\displaystyle{\omega _{0}}$.

Then we consider the sub-algebra $\displaystyle{\mathcal{A}_{\mathcal{H}_{A}^{+}}}$ which is generated by smeared field observables $\displaystyle{\boldsymbol{\delta \sigma}(s)}$ with $\displaystyle{\mathrm{\mathrm{supp}}(s)\subseteq \mathcal{H}_{A}^{+}}$. Then we consider the Weyl algebra $\displaystyle{\mathfrak{A}(\mathcal{H}_{A}^{+},\omega _{0})}$, which is the closure of the algebra generated by Weyl observables $\displaystyle{\exp\left(i\boldsymbol{\delta \sigma}(s)\right),\boldsymbol{\delta \sigma}(s)\in \mathscr{H}_{\mathrm{AdS}}}$. This algebra is a Type-III von Neumann factor being a sub-region algebra of QFT.

---

one may refer [[Literature Notes/Chandrasekaran/An Algebra of Observables for de Sitter Space (2206.10780v5)|An Algebra of Observables for de Sitter Space (2206.10780v5)]] and [[Literature Notes/Lectures on entanglement, von Neumann algebras, and emergence of spacetime (2510.07017v1)|Lectures on entanglement, von Neumann algebras, and emergence of spacetime (2510.07017v1)]] for some concepts of algebraic qft and crossed product...

---

### Geometric Modular Flow and Crossed Product in the Bulk

The state $\displaystyle{\omega _{0}}$ restricted to $\displaystyle{\mathcal{H}_{A}^{+}}$ is KMS (simply the thermal equilibrium state) with respect to the horizon boost Killing field with inverse temperature $\displaystyle{\beta=2\pi}$. On the other hand, it is also KMS with $\displaystyle{\beta=1}$ with respect to the modular flow $\displaystyle{\gamma}$ in $\displaystyle{\mathfrak{A}(\mathcal{H}_{A}^{+},\omega _{0})}$ generated by the modular Hamiltonian $\displaystyle{\boldsymbol{H}_{\omega _{0}}=-\log \boldsymbol{\Delta}_{\omega _{0}}}$, where $\displaystyle{\boldsymbol{\Delta}_{\omega _{0}}}$ is the modular operator for the state $\displaystyle{\ket{\omega _{0}}}$ in $\displaystyle{\mathfrak{A}(\mathcal{H}_{A}^{+}),\omega _{0}}$. By Tomita-Takesaki modular theory, we have

$$\begin{align}
\boldsymbol{H}_{\omega _{0}} & =2\pi \boldsymbol{F}_{\xi}
\end{align}$$

for linearized quantum gravity one wish to have observables invariany under Killing flow. However the Weyl operatores generating $\displaystyle{\mathfrak{A}(\mathcal{H}_{A}^{+},\omega _{0})}$ is not invariant under the Killing flow. Moreover $\displaystyle{\mathfrak{A}(\mathcal{H}_{A}^{+},\omega _{0})}$ is a Type-III von Neumann factor and hence has no finite non-trivial trace defined on it. And the boundary charges $\displaystyle{\boldsymbol{X}}$ and $\displaystyle{\boldsymbol{C}}$ are not observables on the phase space of linearized gravity. By extend the algebra by the crossed product with the modular flow, we obtain an extended algebra that includes the boundary charges as observables and admits a semifinite trace, thereby resolving the Type-III obstruction:

Consider the extended Hilbert space $\displaystyle{\mathscr{H}_{\mathrm{AdS}}\otimes L^{2}(\mathbb{R})}$ with the boundary charge $\displaystyle{\boldsymbol{X}}$ acting as position operator in $\displaystyle{L^{2}(\mathbb{R})}$. Then extend the geometric modular flow to the auxiliary Hilbert space $\displaystyle{L^{2}(\mathbb{R})}$ by generating it via $\displaystyle{-\boldsymbol{X}}$. In the algebra $\displaystyle{\mathscr{H}_{\mathrm{AdS}}\otimes \mathcal{B}(L^{2}(\mathbb{R}))}$, the geometric modular flow is generated by the total Hamiltonian $\displaystyle{\boldsymbol{F}_{\xi}-\boldsymbol{X}=-\boldsymbol{C}}$. Then consider the subalgebra of $\displaystyle{\mathfrak{A}(\mathcal{H}_{A}^{+},\omega _{0})\otimes \mathcal{B}(L^{2}(\mathbb{R}))}$ which commutes with the total Hamiltonian $\displaystyle{-\boldsymbol{C}}$ and we call it $\displaystyle{\mathfrak{A}^{\mathrm{ext}}(\mathcal{H}_{A}^{+},\omega _{0})}$, which turns out to be the crossed product factor of $\displaystyle{\mathfrak{A}(\mathcal{H}_{A}^{+},\omega _{0})}$ with its modular automorphism group $\displaystyle{\mathbb{R}_{\omega _{0}}}$:

$$\begin{align}
\mathfrak{A}^{\mathrm{ext}}(\mathcal{H}_{A}^{+},\omega _{0}) & =\mathfrak{A}(\mathcal{H}_{A}^{+},\omega _{0})\rtimes\mathbb{R}_{\omega _{0}}
\end{align}$$

by a theorem of Takesaki, $\displaystyle{\mathfrak{A}^{\mathrm{ext}}(\mathcal{H}_{A}^{+},\omega _{0})}$ is a Type-II factor with a well-defined trace defined as

$$\begin{align}
\mathrm{Tr}(\boldsymbol{a}) & =\int _{-\infty}^{+\infty}\mathrm{d}Xe^{X}\braket{ \omega _{0},X|\boldsymbol{a}|\omega _{0},X }, & \boldsymbol{a}\in \mathfrak{A}^{\mathrm{ext}}(\mathcal{H}_{A}^{+},\omega _{0})
\end{align}$$

where $\displaystyle{\ket{\omega _{0},X}=\ket{\omega _{0}}\otimes \ket{X}}$.

### Holographic Map and Crossed Product in the Boundary

The codim-2 surface $\displaystyle{\partial\Sigma}$ serves as the initial condition surface for field theory on the boundary. The state $\displaystyle{\tilde{\omega}_{0}}$ is the boundary isometry invariant vacuum of the boundary CGY. We perform the algebraic quantization of the boundary field theory with $\displaystyle{\tilde{\omega}_{0}}$ being the vacuum. We do GNS construction of the field algebra $\displaystyle{\tilde{\mathcal{A}}_{\partial \Sigma}}$ with respect to the state $\displaystyle{\tilde{\omega}_{0}}$ to obtain a Hilbert space $\displaystyle{\mathscr{H}_{\mathrm{CFT}}}$ with a cyclic separating state $\displaystyle{\ket{\tilde{\omega}_{0}}}$ and a representation of the algebra $\displaystyle{\tilde{\mathcal{A}}_{\partial \Sigma}}$ in $\displaystyle{\mathcal{L}(\mathscr{H}_{\mathrm{CFT}})}$. We denote the Weyl algebra $\displaystyle{\tilde{\mathfrak{A}}(A,\tilde{\omega}_{0})}$ as the closure of the algebra generated by Weyl operators with smearing functions supported in the region $\displaystyle{A}$.

AdS/CFT correspondence admits the existence of an isometric embedding map

$$\begin{align}
T:\mathscr{H}_{\mathrm{AdS}}\to \mathscr{H}_{\mathrm{CFT}}
\end{align}$$

the image $\displaystyle{\mathscr{H}_{\mathrm{code}}=T(\mathscr{H}_{\mathrm{AdS}})}$ is refered to as the code subspace of the boundary Hilbert space. And we denote the projection to the code space $\displaystyle{\mathscr{H}_{\mathrm{code}}}$ as $\displaystyle{P_{\mathrm{code}}=TT^{*}}$. The holographic map $T$ has the following properties
- it maps $\displaystyle{T\ket{\omega _{0}}=\ket{\tilde{\omega}_{0}}}$
- it admits AdS-Rindler wedge reconstruction, i.e.

$$\begin{align}
T^{*}\tilde{\mathfrak{A}}(A,\tilde{\omega} _{0})T & =\mathfrak{A}(\mathcal{H}_{A}^{+},\omega _{0}) \iff P_{\mathrm{code}}\tilde{\mathfrak{A}}(A,\tilde{\omega} _{0})P_{\mathrm{code}}=T\mathfrak{A}(\mathcal{H}_{A}^{+},\omega _{0})T^{*}
\end{align}$$

now denote the algebra $\displaystyle{\tilde{\mathfrak{A}}_{\mathrm{rest}}(A,\tilde{\omega}_{0})=P_{\mathrm{code}}\tilde{\mathfrak{A}}(A,\tilde{\omega} _{0})P_{\mathrm{code}}\subset \tilde{\mathfrak{A}}(A,\tilde{\omega} _{0})}$ as the restricted CFT algebra consisting CFT operators acting only on code subspace $\displaystyle{\mathscr{H}_{\mathrm{code}}}$. Then

$$\begin{align}
\tilde{\mathfrak{A}}_{\mathrm{rest}}(A,\tilde{\omega}_{0}) & =T\mathfrak{A}(\mathcal{H}_{A}^{+},\omega _{0})T^{*}
\end{align}$$

is a Type-III factor as $\displaystyle{T}$ is an isometry.

The algebra $\displaystyle{\tilde{\mathfrak{A}}_{\mathrm{rest}}(A,\tilde{\omega}_{0})}$ has the modular operator for the state $\displaystyle{\ket{\tilde{\omega}_{0}}}$ denoted by $\displaystyle{\tilde{\Delta}_{\tilde{\omega}_{0}}}$, which generates a modular flow $\displaystyle{\tilde{\gamma}}$ in $\displaystyle{\tilde{\mathfrak{A}}_{\mathrm{rest}}(A,\tilde{\omega}_{0})}$ via the modular Hamiltonian.

The map $\displaystyle{T}$ push forwards the modular flow $\displaystyle{\gamma}$ in $\displaystyle{\mathfrak{A}(\mathcal{H}_{A}^{+},\omega _{0})}$ to the algebra $\displaystyle{\tilde{\mathfrak{A}}_{\mathrm{rest}}(A,\tilde{\omega}_{0})}$ as a map $\displaystyle{\gamma ^{*}}$ defined as follows: for any element $\displaystyle{\tilde{\boldsymbol{a}}\in \tilde{\mathfrak{A}}_{\mathrm{rest}}(A,\tilde{\omega}_{0})}$, $\displaystyle{\exists \boldsymbol{a}\in \mathfrak{A}(\mathcal{H}_{A}^{+},\omega _{0})\text{ s.t. }\tilde{\boldsymbol{a}}=T\boldsymbol{a}T^{*}}$ and $\displaystyle{\gamma _{t}^{*}(\tilde{\boldsymbol{a}})}$ is defined as

$$\begin{align}
\gamma _{t}^{*}(\tilde{\boldsymbol{a}}) & := T\gamma _{t}(\boldsymbol{a})T^{*}
\end{align}$$

then

$$\begin{align}
\braket{ \tilde{\omega}_{0}|\gamma ^{*}_{t+i}(\tilde{\boldsymbol{a}})\tilde{\boldsymbol{b}}|\tilde{\omega}_{0} }  & =\braket{ \tilde{\omega}_{0}|T\gamma _{t+i}(\boldsymbol{a})T^{*}T\boldsymbol{b}T^{*}|\tilde{\omega}_{0} }  \\
 & = \braket{ \omega_{0}|\gamma _{t+i}(\boldsymbol{a})\boldsymbol{b}|\omega _{0} }  \\
 & = \braket{ \omega_{0}|\boldsymbol{b}\gamma _{t}(\boldsymbol{a})|\omega _{0} }= \braket{ \tilde{\omega}_{0}|\tilde{\boldsymbol{b}}\gamma ^{*}_{t}(\tilde{\boldsymbol{a}})|\tilde{\omega}_{0} }
\end{align}$$

thus we conclude that the state $\displaystyle{\ket{\tilde{\omega}_{0}}}$ is KMS with $\displaystyle{\beta=1}$ in the algebra $\displaystyle{\tilde{\mathfrak{A}}(A,\tilde{\omega}_{0})}$ with respect to the flow $\displaystyle{\gamma ^{*}}$. By the same theorem as used in the bulk, the flow $\displaystyle{\gamma ^{*}}$ is the same as the modular flow $\displaystyle{\tilde{\gamma}}$, and we have

$$\begin{align}
\tilde{\boldsymbol{H}}_{\tilde{\omega}_{0}} & =T\boldsymbol{H}_{\omega _{0}}T^{*}
\end{align}$$

we denote the modular automorphism group of the algebra $\displaystyle{\tilde{\mathfrak{A}}_{\mathrm{rest}}(A,\tilde{\omega}_{0})}$ with respect to $\displaystyle{\tilde{\gamma}}$ as $\displaystyle{\mathbb{R}_{\tilde{\omega}_{0}}}$. Consider the crossed product algebra

$$\begin{align}
\tilde{\mathfrak{A}}^{\mathrm{ext}}_{\mathrm{rest}}(A,\tilde{\omega}_{0}) & =\tilde{\mathfrak{A}}_{\mathrm{rest}}(A,\tilde{\omega}_{0})\rtimes \mathbb{R}_{\tilde{\omega}_{0}}
\end{align}$$

which is again the subalgebra of $\displaystyle{\tilde{\mathfrak{A}}_{\mathrm{rest}}(A,\tilde{\omega} _{0})\otimes \mathcal{B}(L^{2}(\mathbb{R}))}$ invariant under $\displaystyle{\dfrac{1}{2\pi} \tilde{\boldsymbol{H}}_{\omega _{0}}-\boldsymbol{X}}$, where $\displaystyle{-\boldsymbol{X}}$ again generates modular flow in $\displaystyle{L^{2}(\mathbb{R})}$. Since the match of bulk and boundary modular flows $\displaystyle{\tilde{\boldsymbol{H}}_{\tilde{\omega}_{0}} =T\boldsymbol{H}_{\omega _{0}}T^{*}}$, so $\displaystyle{\dfrac{1}{2\pi}\tilde{\boldsymbol{H}}_{\tilde{\omega}_{0}}-X=(T\otimes \boldsymbol{1})(\boldsymbol{F}_{\xi}-X)(T\otimes\boldsymbol{1})^{*}}$, we conclude that

$$\begin{align}
\tilde{\mathfrak{A}}^{\mathrm{ext}}_{\mathrm{rest}}(A,\tilde{\omega}_{0}) & =(T\otimes \boldsymbol{1})(\tilde{\mathfrak{A}}^{\mathrm{ext}}(\mathcal{H}_{A}^{+},\omega _{0}))(T\otimes \boldsymbol{1})^{*}
\end{align}$$

### Proof of JLMS Condition

now consider $\displaystyle{\ket{\omega}\in \mathscr{H}_{\mathrm{AdS}}}$ with $\displaystyle{\mathscr{H}_{\mathrm{code}}\ni \ket{\tilde{\omega}}=T\ket{\omega}}$. consider the bulk relative modular operator $\displaystyle{\Delta _{\omega|\omega _{0}}}$ which gives the bulk relative entropy $\displaystyle{S(\omega|\omega_{0})=\braket{ \omega|\log \Delta _{\omega|\omega _{0}}|\omega }}$. the boundary relative modular operator $\displaystyle{\tilde{\Delta}_{\tilde{\omega}|\tilde{\omega}_{0}}}$ gives the boundary relative entropy $\displaystyle{\tilde{S}(\tilde{\omega}|\tilde{\omega}_{0})}$.

let $\displaystyle{\boldsymbol{S}_{\omega|\omega _{0}}}$ be the bulk relative Tomita operator and $\displaystyle{\tilde{\boldsymbol{S}}_{\tilde{\omega}|\tilde{\omega}_{0}}}$ be the corresponding boundary one. from the definition of relative Tomita operator we can say that $\displaystyle{\forall \tilde{\boldsymbol{a}}\in \tilde{\mathfrak{A}}_{\mathrm{rest}}(A,\tilde{\omega}_{0})}$:

$$\begin{align}
\tilde{\boldsymbol{S}}_{\tilde{\omega}|\tilde{\omega}_{0}}\tilde{\boldsymbol{a}}\ket{\tilde{\omega}_{0}}  & =\tilde{\boldsymbol{a}}^{*}\ket{\tilde{\omega}} \\
\implies \tilde{\boldsymbol{S}}_{\tilde{\omega}|\tilde{\omega}_{0}}T\boldsymbol{a}T^{*}\ket{\tilde{\omega}_{0}} & =T\boldsymbol{a}^{*}T^{*}\ket{\tilde{\omega}}  \\
\implies T^{*}\tilde{\boldsymbol{S}}_{\tilde{\omega}|\tilde{\omega}_{0}}T\boldsymbol{a}\ket{\omega _{0}}  & =\boldsymbol{a}^{*}\ket{\omega}
\end{align}$$

since every operator $\displaystyle{\boldsymbol{a}\in \mathfrak{A}(\mathcal{H}_{A}^{+},\omega _{0})}$ can be obtained from some $\displaystyle{\tilde{\boldsymbol{a}}\in \tilde{\mathfrak{A}}_{\mathrm{rest}}(A,\tilde{\omega}_{0})}$ by $\displaystyle{\boldsymbol{a}=T^{*}\tilde{\boldsymbol{a}}T}$, so we conclude that

$$\begin{align}
T^{*}\tilde{\boldsymbol{S}}_{\tilde{\omega}|\tilde{\omega}_{0}}T=\boldsymbol{S}_{\omega|\omega _{0}} \iff \tilde{\boldsymbol{S}}_{\tilde{\omega}|\tilde{\omega}_{0}}=T\boldsymbol{S}_{\omega|\omega _{0}}T^{*}
\end{align}$$

by polar decomposing we have

$$\begin{align}
\tilde{\Delta}_{\tilde{\omega}|\tilde{\omega} _{0}} & =T\Delta _{\omega|\omega _{0}}T^{*}
\end{align}$$

taking logatithm and expectation with respect to $\displaystyle{\ket{\tilde{\omega}}}$ in both side, we have

$$\begin{align}
\tilde{S}(\tilde{\omega}|\tilde{\omega}_{0}) & =S(\omega|\omega _{0})
\end{align}$$

which is precisely the JLMS condition.

### Coherent States of Gravity in the Bulk and Proof of HRT Formula

Consider the initial data of linearized metric perturbations $\displaystyle{h_{AB}}$ to be supported in $\displaystyle{\mathcal{H}_{A}^{+}}$. In the qft, this metric perturbation can be represented by a coherent state construction: define the unitary operator

$$\begin{align}
\boldsymbol{U}:= \exp\left(-\dfrac{i}{16\pi ^{2}}\boldsymbol{\delta \sigma}(h)\right)
\end{align}$$

the algebraic coherent state is then given by

$$\begin{align}
\omega _{h}(\boldsymbol{a}) & := \omega _{0}(\boldsymbol{U^{*}aU}) & \forall \boldsymbol{a}\in \mathfrak{A}(\mathcal{H}_{A}^{+},\omega _{0})
\end{align}$$

for simplicity, now we extent the state to entire $\displaystyle{\mathcal{H}^{+}}$ by defining the state $\displaystyle{\ket{\omega _{h}}\in \mathscr{H}_{\mathrm{AdS}}}$ to be the unique state in the natural cone $\displaystyle{P^{\sharp}}$ of $\displaystyle{(\mathfrak{A}(\mathcal{H}_{A}^{+},\omega _{0}),\ket{\omega _{0}})}$ in $\displaystyle{\mathscr{H}_{\mathrm{AdS}}}$ as (the crossed product entropy is purification independent)

$$\begin{align}
\ket{\omega _{h}}  & =\boldsymbol{U}j_{\omega_{0}}(\boldsymbol{U})\ket{\omega _{0}}
\end{align}$$

where $\displaystyle{j_{\omega _{0}}:\mathfrak{A}(\mathcal{H}_{A}^{+},\omega _{0})\to \mathfrak{A}(\mathcal{H}^{+}_{A},\omega _{0})'=\mathfrak{A}(\mathcal{H}^{+}_{A_{c}},\omega _{0})}$ defined by $\displaystyle{j_{\omega _{0}}=\boldsymbol{J}_{\omega_{0}}\boldsymbol{a}\boldsymbol{J}_{\omega_{0}}}$. And $\displaystyle{\boldsymbol{J}_{\omega_{0}}}$ is the modular conjugation operator for the state $\displaystyle{\ket{\omega_{0}}}$ in $\displaystyle{\mathfrak{A}(\mathcal{H}_{A}^{+},\omega_{0})}$.

We define a "classical-quantum state" $\displaystyle{\ket{\underline{\omega}_{h}}}$ in the extended Hilbert space $\displaystyle{\mathscr{H}_{\mathrm{AdS}}\otimes L^{2}(\mathbb{R})}$ by

$$\begin{align}
\ket{\underline{\omega}_{h}}  & =\int _{\mathbb{R}}\mathrm{d}Xf(X)\ket{\omega _{h}} \otimes \ket{X}
\end{align}$$

where $\displaystyle{f\in L^{2}(\mathbb{R})}$.

Since the extended algebra $\displaystyle{\mathfrak{A}^{ext}(\mathcal{H}_{A}^{+},\omega _{0})}$ is a Type-II factor, $\displaystyle{\exists \boldsymbol{\rho}_{\underline{\omega}_{h}}\in \mathfrak{A}^{\mathrm{ext}}(\mathcal{H}_{A}^{+},\omega_{0})}$ corresponding to the state $\displaystyle{\ket{\underline{\omega}_{h}}}$ such that

$$\begin{align}
\mathrm{\mathrm{Tr}}(\boldsymbol{\rho}_{\underline{\omega} _{h}}\boldsymbol{a}) & = \braket{ \underline{\omega}_{h}|\boldsymbol{a}|\underline{\omega}_{h} } , & \forall \boldsymbol{a} & \in \mathfrak{A}^{\mathrm{ext}}(\mathcal{H}_{A}^{+},\omega_{0}), & \mathrm{Tr}(\boldsymbol{\rho})_{\underline{\omega}_{h}}=1
\end{align}$$

consider the von Neumann entropy of the density matrix $\displaystyle{\boldsymbol{\rho}_{\underline{\omega}_{h}}}$ defined by

$$\begin{align}
S(\boldsymbol{\rho})_{\underline{\omega}_{h}} & =-\mathrm{Tr}(\boldsymbol{\rho})_{\underline{\omega}_{h}\log\boldsymbol{\rho}_{\underline{\omega}_{h}}} \\
 & =-S(\omega _{h}|\omega_{0})+2\pi\braket{ \boldsymbol{X} } _{\underline{\omega}_{h}}+S(f)
\end{align}$$

where $\displaystyle{S(f)=-\int _{\mathbb{R}}\mathrm{d}X|f(X)|^{2}\log|f(X)|^{2}}$. the relative entropy is

$$\begin{align}
S(\omega _{h}|\omega _{0}) & =2\pi F_{\xi}[\mathcal{H}_{A}^{+}] \\
 & =\dfrac{1}{2}\int _{\mathcal{H}_{A}^{+}}\mathrm{d}V\mathrm{d}\Omega _{2}(\delta \sigma _{h})^{2}
\end{align}$$

where $\displaystyle{\delta \sigma _{h}=\dfrac{1}{2}\partial _{V}h}$ is the perturbed shear at $\displaystyle{\mathcal{H}^{+}}$ corresponding to $\displaystyle{h_{AB}}$ and hence $\displaystyle{F_{\xi}[\mathcal{H}_{A}^{+}]}$ is the classical ragiation flux of the linearized perturbation falling through $\displaystyle{\mathcal{H}_{A}^{+}}$.

$\displaystyle{f(X)}$ can be assumed to be peaked at the classical value of the boundary charge, which means $\displaystyle{\braket{ \boldsymbol{X} }_{\underline{\omega}_{h}}=X+(\omega _{h}\text{-independent terms})}$, then

$$\begin{align}
S(\boldsymbol{\rho}_{\underline{\omega}_{h}}) & =2\pi(X-F_{\xi}[\mathcal{H}_{\xi}^{+}])+(\omega _{h}\text{-independent terms}) \\
 & =2\pi \int _{\Gamma}\delta ^{2}Q_{\xi}+(\omega _{h}\text{-independent terms})
\end{align}$$

the Noether charge of general relativity at the bifurcation surface of a Kiling horizon evaluates to

$$\begin{align}
\int _{\Gamma}\mathrm{d}^{2}Q_{\xi} & =\dfrac{1}{8\pi}\delta ^{2}\mathrm{Area}[\Gamma _{0}]
\end{align}$$

we obatin

$$\begin{align}
S(\boldsymbol{\rho})_{\underline{\omega}_{h}} & =\dfrac{1}{4}\delta ^{2}\mathrm{Area}[\Gamma _{0}]+(\omega _{h}\text{-independent terms})
\end{align}$$

the action of $\displaystyle{T\otimes\boldsymbol{1}}$ on $\displaystyle{\ket{\underline{\omega}_{h}}}$ produces a state $\displaystyle{\ket{\underline{\tilde{\omega}}_{h}}\in \mathscr{H}_{\mathrm{code}}\otimes L^{2}(\mathbb{R})}$, which is the corresponding "classical-quantum state" in the dual CFT. We can compute the corresponding reduced density matrix $\displaystyle{\boldsymbol{\rho}_{\underline{\tilde{\omega}}_{h}}\in \mathfrak{A}^{\mathrm{ext}}_{\mathrm{rest}}(A,\tilde{\omega}_{0})}$ by similar procedure. The entropy of the density matrix $\displaystyle{\boldsymbol{\rho}_{\underline{\tilde{\omega}}_{h}}}$ can be evaluated as

$$\begin{align}
S(\boldsymbol{\rho}_{\underline{\tilde{\omega}}_{h}}) & =-S(\tilde{\omega}_{h}|\tilde{\omega}_{0})+2\pi\braket{ \boldsymbol{X} } _{\underline{\tilde{\omega}}_{h}}+S(f) \\
 & =-S(\omega _{h}|\omega _{0})+2\pi\braket{ \boldsymbol{X} }_{\underline{\tilde{\omega}}_{h}}+S(f)=S(\boldsymbol{\rho}_{\underline{\omega}_{h}})
\end{align}$$

here we have used the JLMS condition. Therefore

$$\begin{align}
S(\boldsymbol{\rho}_{\underline{\tilde{\omega}}_{h}}) & =\dfrac{1}{4}\delta ^{2}\mathrm{Area}[\Gamma _{0}]+(\tilde{\omega}_{h}\text{-independent terms})
\end{align}$$

which is exactly the HRT formula.
