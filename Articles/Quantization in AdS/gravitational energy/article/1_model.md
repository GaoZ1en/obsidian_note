## theory setup

### spacetime and boundary geometry

we parameterize global AdS$\displaystyle{_{3}}$ by the standard coordinate $\displaystyle{(t,r,\phi)}$ with ranges $\displaystyle{t\in(-\infty,+\infty)}$, $\displaystyle{r\in[0,\infty)}$ and angular periodicity $\displaystyle{\phi \sim \phi+2\pi}$. the background metric is

$$\begin{align}
\mathrm{d}s^{2} & =g^{(0)}_{\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} \\
 & =-(1+r^{2})\mathrm{d}t^{2}+\dfrac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

here we set the AdS radius to unit $\displaystyle{\ell_{\text{AdS}}=1}$. the regulated spacetime $\displaystyle{M}$ is bounded by two Cauchy surfaces $\displaystyle{\Sigma_{i}}$ and $\displaystyle{\Sigma _{f}}$ and by the timelike cylinder $\displaystyle{\Gamma _{r_{\infty}}}$ at $\displaystyle{r=r_{\infty}}$. the future-pointing unit normal to $\displaystyle{\Sigma}$ is $\displaystyle{\tau ^{\mu}}$, and the outward unit normal to $\displaystyle{\Gamma _{r_{\infty}}}$ is $\displaystyle{n^{\mu}}$. we write

$$\begin{align}
\sigma _{\mu \nu} & =g_{\mu \nu}+\tau _{\mu}\tau _{\nu}, & \gamma _{\mu \nu} & =g_{\mu \nu}-n_{\mu}n_{\nu}, & q_{\mu \nu} & =g_{\mu \nu}+\tau _{\mu}\tau _{\nu}-n_{\mu}n_{\nu}
\end{align}$$

for the metrics induced on $\displaystyle{\Sigma,\Gamma _{r_{\infty}}}$ and the corner $\displaystyle{\partial \Sigma}$, respectively. the extrinsic curvature of $\displaystyle{\Gamma _{r_{\infty}}}$ is

$$\begin{align}
K_{\mu \nu} & =\gamma _{\mu}^{~\rho}\gamma _{\nu}^{~\sigma}\nabla _{\rho}n_{\sigma}, & K=\gamma ^{\mu \nu}K_{\mu \nu}
\end{align}$$

we restrict $\xi ^{\mu}$ to be an exact Killing vector of the background metric $\displaystyle{g^{(0)}}$. every such vector belongs to the allowed Brown-Henneaux asymptotic-symmetry class. in the coordinates above, its components behave as

$$\begin{align}
\xi ^{t} & =\mathcal{O}(1), & \xi ^{r} & =\mathcal{O}(r), & \xi ^{\phi} & =\mathcal{O}(1)
\end{align}$$

### full theory and asymptotic conditions

the renormalized action is

$$\begin{align}
S[g,\Psi] & =\dfrac{1}{2\kappa ^{2}} \int _{M}\mathrm{d}^{3}x\sqrt{ -g }(R+2) +\dfrac{1}{\kappa ^{2}}\int _{\Gamma} \mathrm{d}^{2}x\sqrt{ -\gamma }(K-1) +S_{\mathrm{m}}[g,\Psi]
\end{align}$$

with $\displaystyle{\kappa}$ normalized as $\displaystyle{\kappa ^{2}=8\pi G}$. the metric falloffs are chosen to be the usual Brown-Henneaux boundary conditions. denote $\displaystyle{\Delta g=g-g^{(0)}}$, we have

$$\begin{align}
\Delta g_{tt} & =\mathcal{O}(r^{0}), & \Delta g_{t\phi} & =\mathcal{O}(r^{0}), & \Delta g_{\phi \phi} & =\mathcal{O}(r^{0}) \\
\Delta g_{tr} & =\mathcal{O}(r^{-3}), & \Delta g_{r\phi} & =\mathcal{O}(r^{-3}), & \Delta g_{rr} & =\mathcal{O}(r^{-4})
\end{align}$$

and allowed variations obey the same falloffs.

we define the Hilbert stress tensor and the matter pre-symplectic potential form through the off-shell variation

$$\begin{align}
\delta S_{\mathrm{m}} & =\dfrac{1}{2}\int _{M}\mathrm{d}^{3}x\sqrt{ -g }T^{\mu \nu}\delta g_{\mu \nu}+\int _{M}\mathrm{d}^{3}x\sqrt{ -g }E_{A}\delta \Psi^{A} \\
 & +\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\theta _{\mathrm{m}} ^{\mu}[\delta \Psi,\delta g]-\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma }n_{\mu}\theta _{\mathrm{m}} ^{\mu}[\delta \Psi,\delta g]
\end{align}$$

the matter sector is assumed to satisfy the following conditions:

1.  it is diffeomorphism covariant and has a well-defined Hilbert stress tensor
2. its leading classical stress tensor obeys$$\begin{align}T_{\mu \nu} & =\mathcal{O}(\kappa^{0}), & \nabla ^{(0)}_{\mu}T^{\mu \nu} & =0\end{align}$$on the leading matter equation.
3. the non-normalizable matter sources are fixed. the off-shell variation retains the pullback of $\displaystyle{\boldsymbol{\Theta}_{\mathrm{m}}}$ to $\displaystyle{\Gamma}$, while the associated matter symplectic flux through $\displaystyle{\Gamma}$ vanishes
4. the matter fields have compact support or sufficient normalizable decay, and their diffeomorphism current has no independent asymptotic surface charge. in particular, there is no unscreened gauge charge at infinity

Appendix B shows explicitly that diffeomorphism covariance decomposes the matter Noether current into the stress current $\displaystyle{\xi _{\nu}T^{\mu \nu}}$, terms proportional to $\displaystyle{E_{A}}$, and the divergence of the superpotential $\displaystyle{\nabla _{\nu}^{(0)}U^{\mu \nu}_{\xi}}$, where $\displaystyle{U_{\xi}^{\mu \nu}}$ is antisymmetric. imposing the leading matter equation and the asymptotic conditions above then removes the last two contributions: the $\displaystyle{E_{A}}$ terms vanish, and the superpotential has zero integral over $\displaystyle{\partial\Sigma}$.

### perturbative action

we expand the metric and matter field as

$$\begin{align}
g_{\mu \nu} & =g^{(0)}_{\mu \nu}+\kappa h_{\mu \nu}+\kappa ^{2}k _{\mu \nu}+\kappa ^{3}p_{\mu \nu}+\mathcal{O}(\kappa ^{4}) \\
\Psi^{A} & =\Phi ^{A}+\kappa \Xi^{A}+\mathcal{O}(\kappa ^{2})
\end{align}$$

we impose the metric falloffs order by order in $\displaystyle{\kappa}$, so each of $\displaystyle{h_{\mu \nu}}$, $\displaystyle{k_{\mu \nu}}$, and $\displaystyle{p_{\mu \nu}}$, together with their allowed variations, obeys the same componentwise Brown-Henneaux bounds as $\displaystyle{\Delta g_{\mu \nu}}$.

the bulk action therefore has the ordered form

$$\begin{align}
S_{\text{bulk}} & =\dfrac{1}{\kappa ^{2}}S^{[-2]}+\dfrac{1}{\kappa}S^{[-1]}+S^{[0]}+\kappa S^{[1]}+\mathcal{O}(\kappa ^{2})
\end{align}$$

where

$$\begin{align}
S^{[-2]} & =\dfrac{1}{2}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\mathcal{L}_{g}^{(0)} \\
S^{[-1]} & =\dfrac{1}{2}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\mathcal{L}_{g}^{(1)}[h] \\
S^{[0]} & =\dfrac{1}{2}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }(\mathcal{L}_{g}^{(1)}[k]+\mathcal{L}_{g}^{(2)}[h,h])+S_{\mathrm{m}}^{(0)}[g^{(0)},\Phi] \\
S^{[1]} & =\dfrac{1}{2}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }(\mathcal{L}_{g}^{(1)}[p]+2\mathcal{L}_{g}^{(2)}[h,k]+\mathcal{L}_{g}^{(3)}[h,h,h]) \\
 & +\dfrac{1}{2}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }h_{\mu \nu}T^{\mu \nu}+S_{\mathrm{m}}^{(1)}[g^{(0)};\Phi,\Xi]
\end{align}$$

here $\displaystyle{S_{\mathrm{m}}^{(1)}[g^{(0)};\Phi,\Xi]}$ denotes only the correction generated by the matter-field expansion; the metric contribution at this order has already been separated as the $\displaystyle{h_{\mu \nu}T^{\mu \nu}}$ term. for our purposes, only $\displaystyle{\mathcal{L}_{g}^{(2)}[h,k], \mathcal{L}_{g}^{(3)}[h,h,h]}$ and $\displaystyle{h_{\mu \nu}T^{\mu \nu}}$ terms are needed.

the timelike-boundary action is expanded in parallel,

$$\begin{align}
S_{\Gamma}[g] & :=\dfrac{1}{\kappa ^{2}}\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma }(K-1) \\
 & =\dfrac{1}{\kappa ^{2}}S_{\Gamma}^{[-2]} +\dfrac{1}{\kappa}S_{\Gamma}^{[-1]}[h] +S_{\Gamma}^{[0]}[h,k] +\kappa S_{\Gamma}^{[1]}[h,k,p] +\mathcal{O}(\kappa ^{2})
\end{align}$$

explicit expressions are given in Appendix A. therefore the perturbative action $\displaystyle{S=S_{\text{bulk}}+S_{\Gamma}}$ is organized by the order of $\displaystyle{\kappa}$. for our purposes, terms beyond order $\displaystyle{\mathcal{O}(\kappa ^{1})}$ are not needed in deriving the equation of motion which we will discuss later.

### goal

the standard Brown-York construction, supplemented by holographic renormalization, obtains the renormalized boundary stress tensor by varying the renormalized action with respect to the induced boundary metric. in our normalization it is

$$\begin{align}
\mathcal{T}_{ab} & =\dfrac{1}{\kappa ^{2}}\left(K_{ab}-K\gamma _{ab}+\gamma _{ab}\right)
\end{align}$$

and the corresponding boundary charge is

$$\begin{align}
H_{\xi,T}[g] & =-\lim _{r_{\infty}\to\infty}\int _{\partial\Sigma}\mathrm{d}\phi\sqrt{q}\,\tau ^{a}\xi ^{b}\mathcal{T}_{ab}.
\end{align}$$

we use the [Harlow-Wu covariant phase-space formalism](https://arxiv.org/abs/1906.08616) to construct the bulk Noether charge associated with the diffeomorphism generated by the exact background Killing vector $\displaystyle{\xi}$. our goal is to show that the sum of this bulk Noether charge and the timelike-boundary and corner contribution fixed by the variational principle agrees with the Brown-York charge order by order in $\displaystyle{\kappa}$.
