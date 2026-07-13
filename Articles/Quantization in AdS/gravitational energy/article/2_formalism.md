## covariant phase space and charge matching

### first variation and symplectic form

we apply the covariant phase-space construction directly to the perturbative action. indices on perturbative coefficients are raised and lowered with $\displaystyle{g^{(0)}}$; the unexpanded boundary tensors introduced below are defined with the full metric. including the timelike-boundary coefficients, the variation is organized as

$$\begin{align}
\delta S & =\dfrac{1}{\kappa}\delta\left(S^{[-1]}+S_{\Gamma}^{[-1]}\right)+\delta\left(S^{[0]}+S_{\Gamma}^{[0]}\right)+\kappa\delta\left(S^{[1]}+S_{\Gamma}^{[1]}\right)+\mathcal{O}(\kappa ^{2}),
\end{align}$$

where the variation of the field-independent coefficient $\displaystyle{S^{[-2]}+S_{\Gamma}^{[-2]}}$ vanishes. the bulk parts of the three coefficients needed below are

$$\begin{aligned}
\delta S^{[-1]} & =-\int _{M}\mathrm{d}^{3}x\sqrt{-g^{(0)}}\,\nabla ^{(0)}_{\mu}\theta ^{[-1]\mu}, \\
\delta S^{[0]} & =\int _{M}\mathrm{d}^{3}x\sqrt{-g^{(0)}}\left[-\dfrac{1}{2}\mathcal{E}^{[1]\mu \nu}[h]\delta h_{\mu \nu} +E_{A}^{[0]}\delta \Phi ^{A}-\nabla ^{(0)}_{\mu}\theta ^{[0]\mu}\right], \\
\delta S^{[1]} & =\int _{M}\mathrm{d}^{3}x\sqrt{-g^{(0)}}\left[-\dfrac{1}{2}\left(\mathcal{E}^{[1]\mu \nu}[k]+\mathcal{E}^{[2]\mu \nu}[h,h]-T^{\mu \nu}\right)\delta h_{\mu \nu} +\cdots-\nabla ^{(0)}_{\mu}\theta ^{[1]\mu}\right].
\end{aligned}$$

the omitted terms in $\displaystyle{\delta S^{[1]}}$ multiply $\displaystyle{\delta k,\delta p,\delta \Phi}$ and $\displaystyle{\delta \Xi}$ and will not enter the charge considered here. the displayed \(\delta h_{\mu\nu}\) term is retained only to supply the second-order metric equation used in the final matching. the leading potential is

$$\begin{align}
\theta ^{[-1]\mu}[\delta h] & =-\dfrac{1}{2}\left(\nabla ^{(0)}_{\nu}\delta h^{\mu \nu}-\nabla ^{(0)\mu}\delta h\right).
\end{align}$$

the linearized Einstein operator used in these equations is

$$\begin{aligned}
\mathcal{E}^{[1]}_{\mu \nu}[u] ={}&-u_{\mu \nu}-\dfrac{1}{2}\nabla ^{(0)2}u_{\mu \nu}+\dfrac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}u_{\nu}{}^{\rho}+\dfrac{1}{2}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}u_{\mu}{}^{\rho} \\
&-\dfrac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}u+\dfrac{1}{2}g_{\mu \nu}^{(0)}\nabla ^{(0)2}u-\dfrac{1}{2}g_{\mu \nu}^{(0)}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}u^{\rho \sigma}.
\end{aligned}$$

the finite potential separates into the $\displaystyle{k}$, quadratic $\displaystyle{h}$, and matter contributions,

$$\begin{aligned}
\theta ^{[0]\mu} ={}&-\dfrac{1}{2}\left(\nabla ^{(0)}_{\nu}\delta k^{\mu \nu}-\nabla ^{(0)\mu}\delta k\right)+\theta _{\mathrm{m}}^{[0]\mu}[\delta \Phi] \\
&-\dfrac{1}{2}\bigg( h^{\mu \nu}\nabla ^{(0)}_{\nu}\delta h -\dfrac{1}{2}h\nabla ^{(0)\mu}\delta h +h^{\nu \rho}\nabla ^{(0)\mu}\delta h_{\nu \rho} -h^{\nu \rho}\nabla ^{(0)}_{\rho}\delta h^{\mu}{}_{\nu} \\
&\qquad-h^{\mu \nu}\nabla ^{(0)}_{\rho}\delta h_{\nu}{}^{\rho} +\dfrac{1}{2}h\nabla ^{(0)}_{\nu}\delta h^{\mu \nu} +\dfrac{1}{2}\nabla ^{(0)\mu}h_{\nu \rho}\delta h^{\nu \rho} \\
&\qquad+\dfrac{1}{2}\nabla ^{(0)}_{\nu}h\,\delta h^{\mu \nu} -\nabla ^{(0)}_{\rho}h^{\nu \rho}\delta h^{\mu}{}_{\nu}
\bigg).
\end{aligned}$$

at the timelike boundary, the pullback of the gravitational pre-symplectic potential combines with the variation of boundary action. with the orientation of Sec. 1, the boundary variational identity is

$$\begin{align}
\left.\delta S^{[i]}\right|_{\Gamma,\mathrm{grav}}+\delta S_{\Gamma}^{[i]} &=-C_{\Gamma}^{[i]}\big|_{\partial\Sigma _{f}}+C_{\Gamma}^{[i]}\big|_{\partial\Sigma _{i}}-\dfrac{1}{2}\left[\kappa ^{i}\right]\int _{\Gamma}\mathrm{d}^{2}x\sqrt{-\gamma}\,\mathcal{T}^{ab}\delta\gamma _{ab}, & i&=-1,0, \\
\mathcal{T}^{ab} & =\dfrac{1}{\kappa ^{2}}(K^{ab}-K\gamma ^{ab}+\gamma ^{ab})
\end{align}$$

here $\displaystyle{[\kappa ^{i}]}$ means taking the coefficient multiplying $\displaystyle{\kappa ^{i}}$ in the complete perturbative expansion. and the corner coefficients are

$$\begin{aligned}
C_{\Gamma}^{[i]} &:=[\kappa ^{i}]\int _{\partial\Sigma}\mathrm{d}\phi\sqrt{q}\,\tau _{\mu}C_{\Gamma}^{\mu}[\delta g], \\
C_{\Gamma}^{\mu}[\delta g] &:=-\dfrac{1}{2\kappa ^{2}}\gamma ^{\mu\nu}n^{\rho}\delta g_{\nu\rho}.
\end{aligned}$$

the Brown-Henneaux falloffs give

$$\begin{align}
-\dfrac{1}{2}[\kappa ^{i}]\lim_{ r_{\infty} \to \infty } \int _{\Gamma _{r_{\infty}}}\mathrm{d}^{2}x\sqrt{ -\gamma }\mathcal{T}^{ab}\delta \gamma _{ab} & =-\dfrac{1}{2}[\kappa ^{i}]\lim_{ r_{\infty} \to \infty } \int _{\Gamma _{r_{\infty}}}\mathrm{d}^{2}x \mathcal{O}(r_{\infty}^{-2}) \\
 & =0
\end{align}$$

thus the gravitational contribution from $\Gamma$ reduces to $-C_{\Gamma}^{[i]}|_{\partial\Sigma_f}+C_{\Gamma}^{[i]}|_{\partial\Sigma_i}$, so the Cauchy-surface potential contains the corner subtraction $-C_{\Gamma}^{[i]}$.

the matter pre-symplectic potential pullback $\displaystyle{\theta ^{[0]\mu}_{\mathrm{m}}}$ is retained separately as the $\displaystyle{\Gamma}$ contribution to $\displaystyle{\delta S_{\mathrm{m}}^{(0)}}$ defined in Sec. 1. fixed matter sources set the associated antisymmetrized second variation, namely the matter symplectic flux through $\displaystyle{\Gamma}$, to zero.

the symplectic potentials at the first two orders are then

$$\begin{aligned}
\theta ^{[-1]} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma ^{(0)}}\,\tau _{\mu}^{(0)}\theta ^{[-1]\mu}-C_{\Gamma}^{[-1]}, \\
\theta ^{[0]} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma ^{(0)}}\,\tau _{\mu}^{(0)}\theta ^{[0]\mu}-C_{\Gamma}^{[0]}.
\end{aligned}$$

thus $\displaystyle{\theta=\kappa ^{-1}\theta^{[-1]}+\theta^{[0]}+\mathcal{O}(\kappa)}$. since $\displaystyle{\theta ^{[-1]\mu}}$ and $\displaystyle{C_{\Gamma}^{[-1]}}$ are independent of the perturbative fields, the leading nonzero pre-symplectic form is

$$\begin{align}
\omega ^{(0)} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\delta \theta ^{[0]\mu}-\delta C_{\Gamma}^{[0]}
\end{align}$$

### perturbative diffeomorphisms and the Noether charge

we summarize the diffeomorphism generated by an exact Killing vector as

$$\begin{align}
X_{\xi} & =\int \mathrm{d}^{3}x\sum _{I}\mathcal{L}_{\xi}\Pi^{I} \dfrac{\delta}{\delta \Pi^{I}}, & \Pi^{I}\in \left\{h_{\mu \nu},k _{\mu \nu},\Phi ^{A}\right\}
\end{align}$$

and it acts homogeneously on the perturbative fields,

$$\begin{align}
X_{\xi}\cdot \delta h_{\mu \nu} & =\mathcal{L}_{\xi}h_{\mu \nu}, & X_{\xi}\cdot \delta k _{\mu \nu} & =\mathcal{L}_{\xi}k _{\mu \nu} \\
X_{\xi}\cdot \delta \Phi ^{A} & =\mathcal{L}_{\xi}\Phi ^{A}
\end{align}$$

for each perturbative coefficient, act $\displaystyle{X_{\xi}}$ on each order of the bulk action gives

$$\begin{align}
X_{\xi}\cdot \delta S^{[i]} & := \alpha _{\xi,\mathrm{bulk}}^{[i]}|_{\Sigma _{f}}-\alpha _{\xi,\mathrm{bulk}}^{[i]}|_{\Sigma _{i}}-\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma ^{(0)} }n^{(0)}_{\mu}\alpha ^{[i],\mu}_{\xi,\mathrm{bulk}}, & i=-1,0
\end{align}$$

where

$$\begin{align}
\alpha _{\xi,\mathrm{bulk}}^{[i]} & =\int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\alpha _{\xi,\mathrm{bulk}}^{[i],\mu}, & i=-1,0 \\
\alpha _{\xi,\mathrm{bulk}}^{[-1],\mu} & =-\dfrac{1}{2}\xi ^{\mu}\mathcal{L}_{g}^{(1)}[h], \\
\alpha _{\xi,\mathrm{bulk}}^{[0],\mu} & =-\xi ^{\mu}\left[\dfrac{1}{2}\left(\mathcal{L}_{g}^{(1)}[k]+\mathcal{L}_{g}^{(2)}[h,h]\right)+\mathcal{L}_{\mathrm{m}}^{(0)}\right].
\end{align}$$

on $\displaystyle{\Gamma}$, the pullback of $\displaystyle{\alpha _{\xi,\mathrm{bulk}}^{[i]}}$ combines with the action of $\displaystyle{X_{\xi}}$ on the boundary action, which gives

$$\begin{align}
-\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma ^{(0)} }n_{\mu}^{(0)}\alpha _{\xi,\mathrm{bulk}}^{[i],\mu}+X_{\xi}\mathbin{\cdot}\delta S_{\Gamma}^{[i]} &=-\mu _{\xi}^{[i]}\big|_{\partial\Sigma _{f}}+\mu _{\xi}^{[i]}\big|_{\partial\Sigma _{i}}, & i&=-1,0.
\end{align}$$

where

$$\begin{aligned}
\mu _{\xi}^{\mu} &:=\dfrac{1}{\kappa ^{2}}\left[(K-1)\gamma ^{\mu}{}_{\nu}\xi ^{\nu}-D^{\mu}(n_{\nu}\xi ^{\nu})\right], \\
\mu _{\xi}^{[i]} &:=\left[\kappa ^{i}\right]\int _{\partial\Sigma}\mathrm{d}x\sqrt{q}\,\tau _{\mu}\mu _{\xi}^{\mu}, & i&=-1,0,
\end{aligned}$$

here $\displaystyle{D_{\mu}}$ is compatible with $\displaystyle{\gamma _{\mu\nu}}$. the matter assumptions of Sec. 1 exclude matter contribution to $\displaystyle{\mu _{\xi}^{[i]}}$.

thus the complete result for the diffeomorphism transformation of the action gives

$$\begin{align}
X_{\xi}\cdot \delta (S^{[i]}+S_{\Gamma}^{[i]}) & =\alpha _{\xi}^{[i]}|_{\Sigma _{f}}-\alpha _{\xi}^{[i]}|_{\Sigma _{i}}, & i=-1,0 \\
\alpha _{\xi}^{[i]} & =\alpha _{\xi,\text{bulk}}^{[i]}-\mu _{\xi}^{[i]}
\end{align}$$

the Noether charge $\displaystyle{H_{\xi}:=X_{\xi}\cdot\theta-\alpha _{\xi}}$ therefore has the expansion

$$\begin{aligned}
H_{\xi}^{[i]} & :=X_{\xi}\mathbin{\cdot}\theta ^{[i]}-\alpha _{\xi}^{[i]}, & i & =-1,0. \\
H_{\xi} & := \dfrac{1}{\kappa}H_{\xi}^{[-1]}+H_{\xi}^{[0]}+\mathcal{O}(\kappa ^{1})
\end{aligned}$$

in the following two subsections we will split the Noether charge into a bulk and boundary contribution, and discuss the details of calculation.

#### bulk part of the Noether charge

we denote the bulk part of the Noether charge as

$$\begin{align}
\mathcal{H}_{\xi}^{[i]} & := X_{\xi}\cdot \theta ^{[i]}-\alpha _{\xi,\text{bulk}}^{[i]} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\left(X_{\xi}\cdot \theta ^{[i],\mu}-\alpha _{\xi,\mathrm{bulk}}^{[i],\mu}\right)
\end{align}$$

we first introduce a lemma

**lemma (background-covariant current reduction).** the Noether current of a local background-diffeomorphism-covariant tensor action takes the following specific form

$$\begin{align}
\mathcal{H}_{\xi}^{\mu} & :=X_{\xi}\cdot \theta ^{\mu}-\alpha _{\xi}^{\mu} \\
 & =\xi _{\nu}T^{\mu \nu}+\mathcal{R}_{\xi}^{\mu}+\nabla _{\nu}U_{\xi}^{\mu \nu} \\
 & \approx \xi _{\nu}T^{\mu \nu}+\nabla _{\nu}U_{\xi}^{\mu \nu}
\end{align}$$

where $\displaystyle{T^{\mu \nu}}$ is its Hilbert stress tensor, $\displaystyle{\mathcal{R}_{\xi}^{\mu}}$ is proportinal to its equation of motions, and $\displaystyle{U_{\xi}^{\mu \nu}}$ is an antisymmetric superpotential. here “$\displaystyle{\approx}$” means the expression on-shell, i.e., after imposing the equations of motion. Appendix B gives the proof.

utilizing this lemma, we will analyze each part of the bulk Noether current. first for the matter sector, we have

$$\begin{align}
\mathcal{H}_{\xi}^{[0]} & =X_{\xi}\cdot \theta ^{[0]}_{\mathrm{m}}-\alpha _{\xi,\mathrm{bulk,m}}^{[0]} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}(\xi _{\nu}T^{\mu \nu}+\mathcal{R}_{\xi,\mathrm{m}}^{\mu}+\nabla ^{(0)}_{\nu}U_{\xi}^{\mu \nu}) \\
 & \approx \int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)} \xi _{\nu}T^{\mu \nu}
\end{align}$$

here by the assumption introduced in Sec. 1, the matter superpotential vanishes.

then for the $\displaystyle{h}$ sector, we have

$$\begin{align}
\mathcal{H}_{\xi,h}^{[-1]} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau ^{(0)} _{\mu}\left(X_{\xi}\cdot \theta _{h}^{[-1],\mu}-\alpha _{\xi,\mathrm{bulk},h}^{[-1],\mu}\right) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\nabla _{\nu}^{(0)}S_{\xi}^{[-1],\mu \nu}[h] \\
S_{\xi}^{[-1],\mu \nu}[u] & =\xi ^{[\mu}\left(\nabla ^{(0)}_{\rho}u^{\nu]\rho}-\nabla ^{(0)\nu]}u\right),\quad u\in\left\{h,k\right\}
\end{align}$$

and for the $\displaystyle{\mathcal{O}(\kappa ^{0})}$ order

$$\begin{align}
\mathcal{H}_{\xi}
\end{align}$$

the metric coefficients $\displaystyle{h_{\mu \nu}}$ and $\displaystyle{k_{\mu \nu}}$ transform as background tensors, so their currents are further applications of the same lemma. applying it to the leading gravitational coefficient gives

$$\begin{aligned}
\mathcal{H}_{\xi}^{[-1]\mu} & =-\xi _{\nu}\mathcal{E}^{(1)\mu \nu}[h]+\nabla ^{(0)}_{\nu}S_{\xi}^{[-1]\mu \nu}, \\
S_{\xi}^{[-1]\mu \nu} & =\dfrac{1}{2}\left(A_{\xi}^{(1)\mu \nu}[h]+\dfrac{1}{2}hA_{\xi}^{(0)\mu \nu}\right),
\end{aligned}$$

where

$$\begin{aligned}
A_{\xi}^{(0)\mu \nu} & =\nabla ^{(0)\mu}\xi ^{\nu}-\nabla ^{(0)\nu}\xi ^{\mu}, \\
A_{\xi}^{(1)\mu \nu}[h] & =-h^{\mu \rho}\nabla ^{(0)}_{\rho}\xi ^{\nu}+h^{\nu \rho}\nabla ^{(0)}_{\rho}\xi ^{\mu} +\xi ^{\rho}\left(\nabla ^{(0)\mu}h^{\nu}{}_{\rho}-\nabla ^{(0)\nu}h^{\mu}{}_{\rho}\right).
\end{aligned}$$

at finite order, the quadratic $\displaystyle{h}$ coefficient supplies a stress current, an equation-of-motion remainder and a superpotential. the linear $\displaystyle{k}$ coefficient is a background-covariant divergence and contributes the superpotential $\displaystyle{S_{\xi,k,0}^{\mu \nu}}$. defining the gravitational self-stress by $\displaystyle{T_{(h)}^{\mu \nu}:=-\mathcal{E}^{(2)\mu \nu}[h,h]}$ and adding the physical matter sector gives the off-shell current

$$\begin{aligned}
\mathcal{H}_{\xi}^{[0]\mu} ={}&\xi _{\nu}\left(T_{(h)}^{\mu \nu}+T^{\mu \nu}\right) +\nabla ^{(0)}_{\nu}\left(S_{\xi,h}^{\mu \nu}+S_{\xi,k,0}^{\mu \nu}+U_{\xi}^{\mu \nu}\right) \\
&+\mathcal{R}_{\xi,h}^{\mu}+\mathcal{R}_{\xi,\mathrm{m}}^{\mu},
\end{aligned}$$

with antisymmetrization of weight one half,

$$\begin{aligned}
S_{\xi,h}^{\mu \nu} & =s_{2}\nabla ^{(0)[\mu}\xi ^{\nu]}+\dfrac{1}{2}hD_{1,\xi}^{[\mu \nu]}+D_{2,\xi}^{[\mu \nu]}, \\
S_{\xi,k,0}^{\mu \nu} & =\xi ^{[\mu}\left(\nabla ^{(0)}_{\rho}k^{\nu]\rho}-\nabla ^{(0)\nu]}k\right), \\
s_{2} & =-\dfrac{1}{4}h_{\rho \sigma}h^{\rho \sigma}+\dfrac{1}{8}h^{2}, \\
D_{1,\xi}^{\mu \nu} & =-h^{\mu \rho}\nabla ^{(0)}_{\rho}\xi ^{\nu}+C_{1}[h]^{\nu \mu}{}_{\rho}\xi ^{\rho}, \\
D_{2,\xi}^{\mu \nu} & =h^{\mu}{}_{\lambda}h^{\lambda \rho}\nabla ^{(0)}_{\rho}\xi ^{\nu} -h^{\mu \rho}C_{1}[h]^{\nu}{}_{\rho \sigma}\xi ^{\sigma} +C_{2}[h,h]^{\nu \mu}{}_{\rho}\xi ^{\rho},
\end{aligned}$$

and

$$\begin{aligned}
C_{1}[h]^{\rho}{}_{\mu \nu} & :=\dfrac{1}{2}\left(\nabla ^{(0)}_{\mu}h^{\rho}{}_{\nu}+\nabla ^{(0)}_{\nu}h^{\rho}{}_{\mu}-\nabla ^{(0)\rho}h_{\mu \nu}\right), \\
C_{2}[h,h]^{\rho}{}_{\mu \nu} & :=-h^{\rho}{}_{\lambda}C_{1}[h]^{\lambda}{}_{\mu \nu}, \\
\mathcal{R}_{\xi,h}^{\mu} & :=\xi ^{\rho}h^{\mu \sigma}\mathcal{E}^{(1)}_{\sigma \rho}[h]-\dfrac{1}{2}h\xi _{\nu}\mathcal{E}^{(1)\mu \nu}[h].
\end{aligned}$$

the terms $\displaystyle{(T_{(h)},\mathcal{R}_{\xi,h},S_{\xi,h})}$, $\displaystyle{S_{\xi,k,0}}$ and $\displaystyle{(T,\mathcal{R}_{\xi,\mathrm{m}},U_{\xi})}$ are respectively the quadratic-$\displaystyle{h}$, linear-$\displaystyle{k}$ and physical-matter realizations of the lemma. no constraint or gauge condition has entered these current decompositions.

### timelike-boundary and Brown-York currents

using the descent current above, substituting $\displaystyle{X_{\xi}\mathbin{\cdot}\delta g_{\mu \nu}=\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}}$ into the corner current gives

$$\begin{align}
X_{\xi}\mathbin{\cdot}C_{\Gamma}^{\mu} & =-\dfrac{1}{2\kappa ^{2}}\gamma ^{\mu \nu}n^{\rho}\left(\nabla _{\nu}\xi _{\rho}+\nabla _{\rho}\xi _{\nu}\right).
\end{align}$$

using the projected identity

$$\begin{align}
\gamma ^{\mu \nu}n^{\rho}\nabla _{\nu}\xi _{\rho} & =D^{\mu}(n_{\rho}\xi ^{\rho})-K^{\mu}{}_{\nu}\xi ^{\nu},
\end{align}$$

combining the surface term from the interior current with the corner and descent terms gives the total surface current

$$\begin{align}
\mathcal{J}_{\xi,\partial}^{\mu} & :=\dfrac{1}{\kappa ^{2}}\left[-K^{\mu}{}_{\nu}+(K-1)\gamma ^{\mu}{}_{\nu}\right]\xi ^{\nu} =-\mathcal{T}^{\mu}{}_{\nu}\xi ^{\nu}.
\end{align}$$

write $\displaystyle{F=F^{(0)}+\kappa F^{(1)}+\kappa ^{2}F^{(2)}+\mathcal{O}(\kappa ^{3})}$ for any boundary tensor constructed from $\displaystyle{g}$. the field-dependent coefficients of the total surface current are

$$\begin{aligned}
\mathcal{J}_{\xi,\partial}^{[-1]\mu} & =\left[-K^{\mu}{}_{\nu}+(K-1)\gamma ^{\mu}{}_{\nu}\right]^{(1)}\xi ^{\nu}, \\
\mathcal{J}_{\xi,\partial}^{[0]\mu} & =\left[-K^{\mu}{}_{\nu}+(K-1)\gamma ^{\mu}{}_{\nu}\right]^{(2)}\xi ^{\nu}.
\end{aligned}$$

the corresponding Brown-York coefficients include the simultaneous expansion of the corner measure and normal,

$$\begin{align}
H_{\xi,T}^{[n]} & :=\left[\kappa ^{n}\right]\lim _{r_{\infty}\to\infty}\int _{\partial \Sigma}\mathrm{d}\phi\sqrt{q}\,\tau _{\mu}\mathcal{J}_{\xi,\partial}^{\mu}, & n & =-1,0.
\end{align}$$

the expansions of $\displaystyle{K_{ab},K,\sqrt{q}}$ and $\displaystyle{\tau ^{a}}$ entering these coefficients are recorded in Appendix A.

### constraint reduction and charge matching

we now impose, for the first time, the leading metric and matter equations and the second-order metric constraint,

$$\begin{aligned}
\mathcal{E}^{(1)}_{\mu \nu}[h] & =0, & E_{A}^{[0]} & =0, \\
\mathcal{E}^{(1)}_{\mu \nu}[k]+\mathcal{E}^{(2)}_{\mu \nu}[h,h] & =T_{\mu \nu}.
\end{aligned}$$

the matter assumptions of Sec. 1 remove $\displaystyle{\mathcal{R}_{\xi,\mathrm{m}}^{\mu}}$ and the asymptotic integral of $\displaystyle{U_{\xi}^{\mu \nu}}$. the second-order constraint becomes

$$\begin{align}
\mathcal{E}^{(1)\mu \nu}[k] & =T_{(h)}^{\mu \nu}+T^{\mu \nu}.
\end{align}$$

the linearized Bianchi identity and the exact Killing equation then give

$$\begin{aligned}
\nabla ^{(0)}_{\mu}\left(T_{(h)}^{\mu \nu}+T^{\mu \nu}\right) & =0, \\
\nabla ^{(0)}_{\mu}\left[\xi _{\nu}\left(T_{(h)}^{\mu \nu}+T^{\mu \nu}\right)\right] & =0.
\end{aligned}$$

for an exact background Killing vector,

$$\begin{aligned}
\xi _{\nu}\mathcal{E}^{(1)\mu \nu}[k] & =\nabla ^{(0)}_{\nu}\widehat{S}_{\xi,k}^{\mu \nu}, \\
\widehat{S}_{\xi,k}^{\mu \nu} & =\xi ^{[\mu}\nabla ^{(0)\nu]}k-\xi ^{[\mu}\nabla ^{(0)}_{\rho}k^{\nu]\rho} +\xi _{\rho}\nabla ^{(0)[\mu}k^{\nu]\rho} \\
&\quad+\dfrac{1}{2}k\nabla ^{(0)[\mu}\xi ^{\nu]}-k^{\rho [\mu}\nabla ^{(0)}_{\rho}\xi ^{\nu]}.
\end{aligned}$$

combining this tensor with $\displaystyle{S_{\xi,k,0}^{\mu \nu}}$ gives

$$\begin{align}
S_{\xi,k}^{\mu \nu} & :=S_{\xi,k,0}^{\mu \nu}+\widehat{S}_{\xi,k}^{\mu \nu} =\xi _{\rho}\nabla ^{(0)[\mu}k^{\nu]\rho}+\dfrac{1}{2}k\nabla ^{(0)[\mu}\xi ^{\nu]} -k^{\rho [\mu}\nabla ^{(0)}_{\rho}\xi ^{\nu]}.
\end{align}$$

the interior current densities therefore reduce to the surface representatives

$$\begin{aligned}
\int _{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma ^{(0)}}\,\tau _{\mu}^{(0)}\mathcal{H}_{\xi}^{[-1]\mu} & =\lim _{r_{\infty}\to\infty}\int _{\partial \Sigma}\mathrm{d}\phi\sqrt{q^{(0)}}\,\tau _{\mu}^{(0)}n_{\nu}^{(0)}S_{\xi}^{[-1]\nu \mu}, \\
\int _{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma ^{(0)}}\,\tau _{\mu}^{(0)}\mathcal{H}_{\xi}^{[0]\mu} & =\lim _{r_{\infty}\to\infty}\int _{\partial \Sigma}\mathrm{d}\phi\sqrt{q^{(0)}}\,\tau _{\mu}^{(0)}n_{\nu}^{(0)} \left(S_{\xi,h}^{\nu \mu}+S_{\xi,k}^{\nu \mu}\right).
\end{aligned}$$

the corner terms already contained in $\displaystyle{\theta _{\Sigma}^{[i]}}$ and $\displaystyle{\alpha _{\xi}^{[i]}}$ combine these representatives into the total surface current $\displaystyle{\mathcal{J}_{\xi,\partial}^{\mu}}$. hence

$$\begin{aligned}
H_{\xi}^{[-1]} & =H_{\xi,T}^{[-1]}, \\
H_{\xi}^{[0]} & =H_{\xi,T}^{[0]}.
\end{aligned}$$
