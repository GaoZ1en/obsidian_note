## Covariant Phase Space and Charge Matching

### First Variation and Symplectic Form

We apply the covariant phase-space construction directly to the perturbative action. Indices on perturbative coefficients are raised and lowered with $\displaystyle{g^{(0)}}$; the unexpanded boundary tensors introduced below are defined with the full metric. Including the timelike-boundary coefficients, the variation is organized as

$$\begin{align}
\delta S & =\dfrac{1}{\kappa}\delta\left(S^{[-1]}+S_{\Gamma}^{[-1]}\right)+\delta\left(S^{[0]}+S_{\Gamma}^{[0]}\right)+\kappa\delta\left(S^{[1]}+S_{\Gamma}^{[1]}\right)+\mathcal{O}(\kappa ^{2}),
\end{align}$$

where the variation of the field-independent coefficient $\displaystyle{S^{[-2]}+S_{\Gamma}^{[-2]}}$ vanishes. The bulk parts of the three coefficients needed below are

$$\begin{aligned}
\delta S^{[-1]} & =-\int _{M}\mathrm{d}^{3}x\sqrt{-g^{(0)}}\,\nabla ^{(0)}_{\mu}\theta ^{[-1]\mu}, \\
\delta S^{[0]} & =\int _{M}\mathrm{d}^{3}x\sqrt{-g^{(0)}}\left[-\dfrac{1}{2}\mathcal{E}^{[1]\mu \nu}[h]\delta h_{\mu \nu} +E_{A}^{[0]}\delta \Phi ^{A}-\nabla ^{(0)}_{\mu}\theta ^{[0]\mu}\right], \\
\delta S^{[1]} & =\int _{M}\mathrm{d}^{3}x\sqrt{-g^{(0)}}\left[-\dfrac{1}{2}\left(\mathcal{E}^{[1]\mu \nu}[k]+\mathcal{E}^{[2]\mu \nu}[h,h]-T^{\mu \nu}\right)\delta h_{\mu \nu} +\cdots-\nabla ^{(0)}_{\mu}\theta ^{[1]\mu}\right].
\end{aligned}$$

The omitted terms in $\displaystyle{\delta S^{[1]}}$ multiply $\displaystyle{\delta k,\delta p,\delta \Phi}$ and $\displaystyle{\delta \Xi}$ and will not enter the charge considered here. The displayed $\delta h_{\mu\nu}$ term is retained only to supply the second-order metric equation used in the final matching. The leading potential is

$$\begin{align}
\theta ^{[-1]\mu}[\delta h] & =-\dfrac{1}{2}\left(\nabla ^{(0)}_{\nu}\delta h^{\mu \nu}-\nabla ^{(0)\mu}\delta h\right).
\end{align}$$

The linearized Einstein operator used in these equations is

$$\begin{aligned}
\mathcal{E}^{[1]}_{\mu \nu}[u] ={}&-u_{\mu \nu}-\dfrac{1}{2}\nabla ^{(0)2}u_{\mu \nu}+\dfrac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}u_{\nu}{}^{\rho}+\dfrac{1}{2}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}u_{\mu}{}^{\rho} \\
&-\dfrac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}u+\dfrac{1}{2}g_{\mu \nu}^{(0)}\nabla ^{(0)2}u-\dfrac{1}{2}g_{\mu \nu}^{(0)}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}u^{\rho \sigma}.
\end{aligned}$$

The finite potential separates into the $\displaystyle{k}$, quadratic $\displaystyle{h}$, and matter contributions,

$$\begin{aligned}
\theta ^{[0]\mu} ={}&-\dfrac{1}{2}\left(\nabla ^{(0)}_{\nu}\delta k^{\mu \nu}-\nabla ^{(0)\mu}\delta k\right)+\theta _{\mathrm{m}}^{[0]\mu}[\delta \Phi] \\
&-\dfrac{1}{2}\bigg( h^{\mu \nu}\nabla ^{(0)}_{\nu}\delta h -\dfrac{1}{2}h\nabla ^{(0)\mu}\delta h +h^{\nu \rho}\nabla ^{(0)\mu}\delta h_{\nu \rho} -h^{\nu \rho}\nabla ^{(0)}_{\rho}\delta h^{\mu}{}_{\nu} \\
&\qquad-h^{\mu \nu}\nabla ^{(0)}_{\rho}\delta h_{\nu}{}^{\rho} +\dfrac{1}{2}h\nabla ^{(0)}_{\nu}\delta h^{\mu \nu} +\dfrac{1}{2}\nabla ^{(0)\mu}h_{\nu \rho}\delta h^{\nu \rho} \\
&\qquad+\dfrac{1}{2}\nabla ^{(0)}_{\nu}h\,\delta h^{\mu \nu} -\nabla ^{(0)}_{\rho}h^{\nu \rho}\delta h^{\mu}{}_{\nu}
\bigg).
\end{aligned}$$

At the timelike boundary, the pullback of the gravitational pre-symplectic potential combines with the variation of the boundary action. With the orientation of Sec. 1, the boundary variational identity is

$$\begin{align}
\left.\delta S^{[i]}\right|_{\Gamma,\mathrm{grav}}+\delta S_{\Gamma}^{[i]} &=-C_{\Gamma}^{[i]}\big|_{\partial\Sigma _{f}}+C_{\Gamma}^{[i]}\big|_{\partial\Sigma _{i}}-\dfrac{1}{2}\left[\kappa ^{i}\right]\int _{\Gamma}\mathrm{d}^{2}x\sqrt{-\gamma}\,\mathcal{T}^{ab}\delta\gamma _{ab}, & i&=-1,0
\end{align}$$

here $\displaystyle{[\kappa ^{i}]}$ denotes the coefficient multiplying $\displaystyle{\kappa ^{i}}$ in the complete perturbative expansion. The corner coefficients are

$$\begin{aligned}
C_{\Gamma}^{[i]} &:=[\kappa ^{i}]\int _{\partial\Sigma}\mathrm{d}\phi\sqrt{q}\,\tau _{\mu}C_{\Gamma}^{\mu}[\delta g], \\
C_{\Gamma}^{\mu}[\delta g] &:=-\dfrac{1}{2\kappa ^{2}}\gamma ^{\mu\nu}n^{\rho}\delta g_{\nu\rho}.
\end{aligned}$$

The Brown-Henneaux falloffs give

$$\begin{align}
-\dfrac{1}{2}[\kappa ^{i}]\lim_{ r_{\infty} \to \infty } \int _{\Gamma _{r_{\infty}}}\mathrm{d}^{2}x\sqrt{ -\gamma }\mathcal{T}^{ab}\delta \gamma _{ab} & =-\dfrac{1}{2}[\kappa ^{i}]\lim_{ r_{\infty} \to \infty } \int _{\Gamma _{r_{\infty}}}\mathrm{d}^{2}x \mathcal{O}(r_{\infty}^{-2}) \\
 & =0
\end{align}$$

thus the gravitational contribution from $\Gamma$ reduces to $-C_{\Gamma}^{[i]}|_{\partial\Sigma_f}+C_{\Gamma}^{[i]}|_{\partial\Sigma_i}$, so the Cauchy-surface potential contains the corner subtraction $-C_{\Gamma}^{[i]}$.

The boundary condition imposed in Sec. 1 sets the matter pre-symplectic boundary term on $\displaystyle{\Gamma}$ to zero for every allowed variation.

The symplectic potentials at the first two orders are then

$$\begin{aligned}
\theta ^{[-1]} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma ^{(0)}}\,\tau _{\mu}^{(0)}\theta ^{[-1]\mu}-C_{\Gamma}^{[-1]}, \\
\theta ^{[0]} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma ^{(0)}}\,\tau _{\mu}^{(0)}\theta ^{[0]\mu}-C_{\Gamma}^{[0]}.
\end{aligned}$$

Thus $\displaystyle{\theta=\kappa ^{-1}\theta^{[-1]}+\theta^{[0]}+\mathcal{O}(\kappa)}$. Since $\displaystyle{\theta ^{[-1]\mu}}$ and $\displaystyle{C_{\Gamma}^{[-1]}}$ are independent of the perturbative fields, the leading nonzero pre-symplectic form is

$$\begin{align}
\omega ^{(0)} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\delta \theta ^{[0]\mu}-\delta C_{\Gamma}^{[0]}
\end{align}$$

### Perturbative Diffeomorphisms and the Noether Charge

The diffeomorphism generated by an exact Killing vector is represented by

$$\begin{align}
X_{\xi} & =\int \mathrm{d}^{3}x\sum _{I}\mathcal{L}_{\xi}\Pi^{I} \dfrac{\delta}{\delta \Pi^{I}}, & \Pi^{I}\in \left\{h_{\mu \nu},k _{\mu \nu},\Phi ^{A}\right\}
\end{align}$$

and it acts homogeneously on the perturbative fields,

$$\begin{align}
X_{\xi}\cdot \delta h_{\mu \nu} & =\mathcal{L}_{\xi}h_{\mu \nu}, & X_{\xi}\cdot \delta k _{\mu \nu} & =\mathcal{L}_{\xi}k _{\mu \nu} \\
X_{\xi}\cdot \delta \Phi ^{A} & =\mathcal{L}_{\xi}\Phi ^{A}
\end{align}$$

acting $\displaystyle{X_{\xi}}$ on each perturbative coefficient of the bulk action gives

$$\begin{align}
X_{\xi}\cdot \delta S^{[i]} & := \alpha _{\xi,\mathrm{bulk}}^{[i]}|_{\Sigma _{f}}-\alpha _{\xi,\mathrm{bulk}}^{[i]}|_{\Sigma _{i}}-\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma ^{(0)} }n^{(0)}_{\mu}\alpha ^{[i],\mu}_{\xi,\mathrm{bulk}}, & i=-1,0
\end{align}$$

where

$$\begin{align}
\alpha _{\xi,\mathrm{bulk}}^{[i]} & =\int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\alpha _{\xi,\mathrm{bulk}}^{[i],\mu}, & i=-1,0 \\
\alpha _{\xi,\mathrm{bulk}}^{[-1],\mu} & =-\dfrac{1}{2}\xi ^{\mu}\mathcal{L}_{g}^{(1)}[h], \\
\alpha _{\xi,\mathrm{bulk}}^{[0],\mu} & =-\xi ^{\mu}\left[\dfrac{1}{2}\left(\mathcal{L}_{g}^{(1)}[k]+\mathcal{L}_{g}^{(2)}[h,h]\right)+\mathcal{L}_{\mathrm{m}}^{(0)}\right].
\end{align}$$

On $\displaystyle{\Gamma}$, the pullback of $\displaystyle{\alpha _{\xi,\mathrm{bulk}}^{[i]}}$ combines with the action of $\displaystyle{X_{\xi}}$ on the boundary action, which gives

$$\begin{align}
-\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma ^{(0)} }n_{\mu}^{(0)}\alpha _{\xi,\mathrm{bulk}}^{[i],\mu}+X_{\xi}\mathbin{\cdot}\delta S_{\Gamma}^{[i]} &=-\mu _{\xi}^{[i]}\big|_{\partial\Sigma _{f}}+\mu _{\xi}^{[i]}\big|_{\partial\Sigma _{i}}, & i&=-1,0.
\end{align}$$

Where

$$\begin{aligned}
\mu _{\xi}^{\mu} &:=\dfrac{1}{\kappa ^{2}}\left[(K-1)\gamma ^{\mu}{}_{\nu}\xi ^{\nu}-D^{\mu}(n_{\nu}\xi ^{\nu})\right], \\
\mu _{\xi}^{[i]} &:=\left[\kappa ^{i}\right]\int _{\partial\Sigma}\mathrm{d}x\sqrt{q}\,\tau _{\mu}\mu _{\xi}^{\mu}, & i&=-1,0,
\end{aligned}$$

here $\displaystyle{D_{\mu}}$ is compatible with $\displaystyle{\gamma _{\mu\nu}}$. The matter assumptions of Sec. 1 exclude any matter contribution to $\displaystyle{\mu _{\xi}^{[i]}}$.

Combining the bulk and boundary terms gives

$$\begin{align}
X_{\xi}\cdot \delta (S^{[i]}+S_{\Gamma}^{[i]}) & =\alpha _{\xi}^{[i]}|_{\Sigma _{f}}-\alpha _{\xi}^{[i]}|_{\Sigma _{i}}, & i=-1,0 \\
\alpha _{\xi}^{[i]} & =\alpha _{\xi,\text{bulk}}^{[i]}-\mu _{\xi}^{[i]}
\end{align}$$

the Noether charge $\displaystyle{H_{\xi}:=X_{\xi}\cdot\theta-\alpha _{\xi}}$ therefore has the expansion

$$\begin{aligned}
H_{\xi}^{[i]} & :=X_{\xi}\mathbin{\cdot}\theta ^{[i]}-\alpha _{\xi}^{[i]}, & i & =-1,0. \\
H_{\xi} & := \dfrac{1}{\kappa}H_{\xi}^{[-1]}+H_{\xi}^{[0]}+\mathcal{O}(\kappa ^{1})
\end{aligned}$$

the following two subsections split the Noether charge into bulk and boundary contributions and evaluate each term.

#### Bulk Part of the Noether Charge

We define the bulk part of the Noether charge by

$$\begin{align}
\mathcal{H}_{\xi}^{[i]} & := X_{\xi}\cdot \theta ^{[i]}-\alpha _{\xi,\text{bulk}}^{[i]} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\left(X_{\xi}\cdot \theta ^{[i],\mu}-\alpha _{\xi,\mathrm{bulk}}^{[i],\mu}\right)
\end{align}$$

we first introduce a lemma:

**Lemma (background-covariant current reduction).** The Noether current of a local background-diffeomorphism-covariant tensor action takes the form

$$\begin{align}
\mathcal{H}_{\xi}^{\mu} & :=X_{\xi}\cdot \theta ^{\mu}-\alpha _{\xi}^{\mu} \\
 & =\xi _{\nu}T^{\mu \nu}+\mathcal{R}_{\xi}^{\mu}+\nabla _{\nu}U_{\xi}^{\mu \nu} \\
 & \approx \xi _{\nu}T^{\mu \nu}+\nabla _{\nu}U_{\xi}^{\mu \nu}
\end{align}$$

where $\displaystyle{T^{\mu \nu}}$ is the Hilbert stress tensor, $\displaystyle{\mathcal{R}_{\xi}^{\mu}}$ is proportional to the equations of motion, and $\displaystyle{U_{\xi}^{\mu \nu}}$ is an antisymmetric superpotential. Here “$\displaystyle{\approx}$” denotes equality after imposing the equations of motion. Appendix B gives the proof.

We apply this lemma to each part of the bulk Noether current, beginning with the matter sector:

$$\begin{align}
\mathcal{H}_{\xi}^{[0]} & =X_{\xi}\cdot \theta ^{[0]}_{\mathrm{m}}-\alpha _{\xi,\mathrm{bulk,m}}^{[0]} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}(\xi _{\nu}T^{\mu \nu}+\mathcal{R}_{\xi,\mathrm{m}}^{\mu}+\nabla ^{(0)}_{\nu}U_{\xi}^{\mu \nu}) \\
 & \approx \int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)} \xi _{\nu}T^{\mu \nu}
\end{align}$$

the assumptions of Sec. 1 set the matter superpotential contribution to zero.

For the $\displaystyle{h}$ sector,

$$\begin{align}
\mathcal{H}_{\xi,h}^{[-1]} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}(X_{\xi}\cdot \theta _{h}^{[-1]\mu}-\alpha _{\xi,\mathrm{bulk},h}^{[-1],\mu}) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\left(-\xi _{\nu}\mathcal{E}^{[1]\mu \nu}[h]+\nabla ^{(0)}_{\nu}S_{\xi}^{\mu \nu}[h]\right) \\
 & \approx \int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\nabla ^{(0)}_{\nu}S_{\xi}^{\mu \nu}[h] \\
 & =\int _{\partial \Sigma}\mathrm{d}x\sqrt{ q^{(0)} }\tau _{\mu}^{(0)}n_{\nu}^{(0)}S_{\xi}^{\mu \nu}[h] \\
S_{\xi}^{\mu \nu}[h] & =\xi _{\rho}\nabla ^{(0)[\mu}h ^{\nu]\rho}+\dfrac{1}{2}h\nabla ^{(0)[\mu}\xi ^{\nu]}-h^{\rho[\mu}\nabla ^{(0)}_{\rho}\xi ^{\nu]}
\end{align}$$

this is the $\displaystyle{\mathcal{O}(\kappa ^{-1})}$ contribution. At $\displaystyle{\mathcal{O}(\kappa ^{0})}$,

$$\begin{align}
\mathcal{H}_{\xi,h}^{[0]} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\left(X_{\xi}\cdot \theta _{h}^{[0],\mu}-\alpha _{\xi,\mathrm{bulk},h}^{[0],\mu}\right) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\left(-\xi _{\nu}\mathcal{E}^{[2],\mu \nu}[h,h]+\mathcal{R}_{\xi,h}^{[0],\mu}+\nabla ^{(0)}_{\nu}S_{\xi,h}^{[0],\mu \nu}[h]\right) \\
 & \approx \int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\left(\xi _{\nu}T^{\mu \nu}_{h}+\nabla ^{(0)}_{\nu}S_{\xi,h}^{[0],\mu \nu}\right)
\end{align}$$

Appendix A gives the expressions for $\displaystyle{\mathcal{E}^{[2],\mu \nu}}$ and $\displaystyle{S_{\xi,h}^{[0],\mu \nu}}$. We define the gravitational stress tensor by $\displaystyle{T^{\mu \nu}_{h}=-\mathcal{E}^{[2],\mu \nu}[h,h]}$.

Finally, the $\displaystyle{k}$-sector contribution is

$$\begin{align}
\mathcal{H}_{\xi,k}^{[0]} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}(X_{\xi}\cdot \theta ^{[0],\mu}_{k}-\alpha _{\xi,\mathrm{bulk},k}^{[0],\mu}) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\nabla ^{(0)}_{\nu}S_{\xi,k}^{[0],\mu \nu}[k] \\
S_{\xi,k}^{[0],\mu \nu}[k] & =\xi ^{[\mu}\left(\nabla _{\rho}^{(0)}k ^{\nu]\rho}-\nabla ^{(0)\nu]}k\right)
\end{align}$$

adding the $\displaystyle{\mathcal{O}(\kappa ^{0})}$ contributions from the matter, $\displaystyle{h}$, and $\displaystyle{k}$ sectors gives

$$\begin{align}
\mathcal{H}^{[0]}_{\xi} & \approx\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\left(\xi _{\nu}(T^{\mu \nu}+T_{h}^{\mu \nu})+\nabla ^{(0)}_{\nu}(S_{\xi,h}^{[0],\mu \nu}+S_{\xi,k}^{[0],\mu \nu})\right) \\
 & \approx\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\left(\xi _{\nu}\mathcal{E}^{[1],\mu \nu}[k]+\nabla _{\nu}^{(0)}(S_{\xi,h}^{[0],\mu \nu}+S_{\xi,k}^{[0],\mu \nu})\right) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\nabla _{\nu}^{(0)}(S_{\xi,h}^{[0],\mu \nu}+S_{\xi}^{\mu \nu}[k]) \\
 & =\int _{\partial \Sigma}\mathrm{d}x\sqrt{ q^{(0)} }\tau _{\mu}^{(0)}n_{\nu}^{(0)}(S_{\xi,h}^{[0],\mu \nu}+S_{\xi}^{\mu \nu}[k])
\end{align}$$

the second line uses the $\displaystyle{\mathcal{O}(\kappa)}$ Einstein equation $\displaystyle{\mathcal{E}^{[1],\mu \nu}[k]=T^{\mu \nu}+T_{h}^{\mu \nu}}$, while the third uses

$$\begin{align}
\xi _{\nu}\mathcal{E}^{[1],\mu \nu}[k]+\nabla ^{(0)}_{\nu}S_{\xi,k}^{[0],\mu \nu} & =\nabla _{\nu}S_{\xi}^{\mu \nu}[k]
\end{align}$$

here $\displaystyle{S_{\xi}^{\mu \nu}[k]}$ is obtained by applying the same tensor-valued expression introduced at $\displaystyle{\mathcal{O}(\kappa ^{-1})}$ to $\displaystyle{k_{\mu\nu}}$. Thus, at each order,

$$\begin{align}
\mathcal{H}_{\xi}^{[-1]} & \approx\int _{\partial \Sigma}\mathrm{d}x\sqrt{ q^{(0)} }\tau _{\mu}^{(0)}n_{\nu}^{(0)}S_{\xi}^{\mu \nu}[h] \\
\mathcal{H}_{\xi}^{[0]} & \approx\int _{\partial \Sigma}\mathrm{d}x\sqrt{ q^{(0)} }\tau _{\mu}^{(0)}n_{\nu}^{(0)}(S_{\xi,h}^{[0],\mu \nu}+S_{\xi}^{\mu \nu}[k])
\end{align}$$

#### Boundary Part of the Noether Charge

The boundary contributions to the Noether charge are

$$\begin{aligned}
\mathscr{H}_{\xi}^{[i]} & :=\mu _{\xi}^{[i]}-X_{\xi}\mathbin{\cdot}C_{\Gamma}^{[i]}, & i&=-1,0.
\end{aligned}$$

Their explicit expressions are recorded in Appendix A. the complete Noether charge therefore splits as

$$\begin{align}
H_{\xi}^{[-1]} & =\mathcal{H}_{\xi}^{[-1]}+\mathscr{H}_{\xi}^{[-1]} \\
H_{\xi}^{[0]} & =\mathcal{H}_{\xi}^{[0]}+\mathscr{H}_{\xi}^{[0]}
\end{align}$$

### Charge Matching

Throughout the matching, the Brown-York charge is understood relative to global AdS$\displaystyle{_{3}}$, with $\displaystyle{H_{\xi,T}[g]}$ replaced by $\displaystyle{H_{\xi,T}[g]-H_{\xi,T}[g^{(0)}]}$. This background subtraction removes the field-independent coefficient $\displaystyle{H_{\xi,T}^{[-2]}}$, so the first two nontrivial coefficients are

$$\begin{align}
H_{\xi,T}^{[i]} & :=\left[\kappa ^{i}\right]\left(-\lim _{r_{\infty}\to\infty}\int _{\partial \Sigma}\mathrm{d}\phi\sqrt{q}\,\tau ^{a}\xi ^{b}\mathcal{T}_{ab}\right), & i&=-1,0.
\end{align}$$

Coefficientwise matching reduces to the two integrand identities

$$\begin{aligned}
-[\kappa ^{-1}]\left\{\sqrt{q}\,\tau ^{a}\xi ^{b}\mathcal{T}_{ab} \right\}& =\sqrt{q^{(0)}}\,\tau _{\mu}^{(0)}n_{\nu}^{(0)}S_{\xi}^{\mu \nu}[h]+\left[\kappa ^{-1}\right]\left\{\sqrt{q}\,\tau _{\mu}\left(\mu _{\xi}^{\mu}-C_{\Gamma}^{\mu}[\mathcal{L}_{\xi}g]\right)\right\}, \\
-[\kappa ^{0}]\left\{\sqrt{q}\,\tau ^{a}\xi ^{b}\mathcal{T}_{ab}\right\}&=\sqrt{q^{(0)}}\,\tau _{\mu}^{(0)}n_{\nu}^{(0)}\left(S_{\xi,h}^{[0],\mu \nu}[h]+S_{\xi}^{\mu \nu}[k]\right)+\left[\kappa ^{0}\right]\left\{\sqrt{q}\,\tau _{\mu}\left(\mu _{\xi}^{\mu}-C_{\Gamma}^{\mu}[\mathcal{L}_{\xi}g]\right)\right\}.
\end{aligned}$$

The explicit coefficient calculation is given in Appendix A. it verifies both identities and therefore yields, on the constrained solution space,

$$\begin{aligned}
H_{\xi}^{[-1]} & =\mathcal{H}_{\xi}^{[-1]}+\mathscr{H}_{\xi}^{[-1]}=H_{\xi,T}^{[-1]}, \\
H_{\xi}^{[0]} & =\mathcal{H}_{\xi}^{[0]}+\mathscr{H}_{\xi}^{[0]}=H_{\xi,T}^{[0]}.
\end{aligned}$$
