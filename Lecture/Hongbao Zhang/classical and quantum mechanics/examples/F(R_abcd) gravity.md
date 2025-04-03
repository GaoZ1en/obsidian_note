### reference

```bibtex
@article{jiangSurfaceTermCorner2019,
  title = {Surface Term, Corner Term, and Action Growth in {{F}}({{Riemann}}) Gravity Theory},
  author = {Jiang, Jie and Zhang, Hongbao},
  year = {2019},
  month = apr,
  journal = {Physical Review D},
  volume = {99},
  number = {8},
  eprint = {1806.10312},
  primaryclass = {hep-th},
  pages = {086005},
  issn = {2470-0010, 2470-0029},
  doi = {10.1103/PhysRevD.99.086005},
  urldate = {2025-03-31},
  abstract = {After reformulating \$F(\$Riemann\$)\$ gravity theory as a second derivative theory by introducing two auxiliary fields to the bulk action, we derive the surface term as well as the corner term supplemented to the bulk action for a generic non-smooth boundary such that the variational principle is well posed. We also introduce the counter term to make the boundary term invariant under the reparametrization for the null segment. Then as a demonstration of the power of our formalism, not only do we apply our expression for the full action to evaluate the corresponding action growth rate of the Wheeler-DeWitt patch in the Schwarzchild anti-de Sitter black hole for the \$F(R)\$ gravity and critical gravity, where the corresponding late time behavior recovers the previous one derived by other approaches, but also in the asymptotically Anti-de Sitter black hole for the critical Einsteinian cubic gravity, where the late time growth rate vanishes but still saturates the Lloyd bound.},
  archiveprefix = {arXiv}
}

@article{guoEquivalenceNoetherCharge2024,
  title = {Equivalence of {{Noether}} Charge and {{Hilbert}} Action Boundary Term Formulas for the Black Hole Entropy in \${{F}}({{R}}\_\{abcd\})\$ Gravity Theory},
  author = {Guo, Wei and Guo, Xiyao and Li, Mingfeng and Mou, Zili and Zhang, Hongbao},
  year = {2024},
  month = sep,
  journal = {Physical Review D},
  volume = {110},
  number = {6},
  eprint = {2406.15138},
  primaryclass = {hep-th},
  pages = {064071},
  issn = {2470-0010, 2470-0029},
  doi = {10.1103/PhysRevD.110.064071},
  urldate = {2025-03-31},
  abstract = {By working with the covariant phase space formalism, we have shown that not only can the Hamiltonian conjugate to a Killing vector field \${\textbackslash}xi\$ be expressed as the sum of the associated Noether charge and \${\textbackslash}xi\$ contracted with the Hilbert action boundary term for \$F(R\_\{abcd\})\$ gravity, but also be written as its contraction with another \${\textbackslash}xi\$ independent tensor field. With this, we have proven the equivalence of Noether charge and Hilbert action boundary term formulae for the stationary black hole entropy in \$F(R\_\{abcd\})\$ gravity, which is further substantiated by our explicit computation using both formulae.},
  archiveprefix = {arXiv}
}
```

## general comment for variational principle of gravitational theory.

consider a bulk action (take $\displaystyle{F(R)}$ gravity as example)

$$\tag{1.1}
\begin{align}
S_{\text{bulk}} & =\int _{M}\varepsilon F(R_{\mu \nu \rho \sigma},g_{\mu \nu})
\end{align}
$$

with $\displaystyle{F}$ an arbitrary function of $\displaystyle{R_{\mu \nu \rho \sigma}}$ and $\displaystyle{g_{\mu \nu}}$. its variation can be obtained as

$$\tag{1.2}
\begin{align}
\delta S_{\text{bulk}} & =\int _{M}\varepsilon E^{\mu \nu}\delta g_{\mu \nu}+\int _{\partial M}\delta v^{\mu}\mathrm{d}\Sigma _{\mu}
\end{align}
$$

$$\tag{1.2*}
\begin{align}
\delta S_{\text{bulk}} & =\int _{M}\varepsilon \left(  P_{\mu}^{~\nu \rho \sigma}\delta R^{\mu}_{~\nu \rho \sigma}+\frac{1}{2}Fg^{\mu \nu}\delta g_{\mu \nu} \right) \\
 & =\int _{M}\varepsilon \left( 2P_{\mu}^{~\nu \rho \sigma}\nabla _{\rho}\delta \Gamma ^{\mu}_{~\nu \sigma}+\frac{1}{2}Fg^{\mu \nu}\delta g_{\mu \nu}\right) \\
 & =\int _{M}\varepsilon\left( 2\nabla _{\rho}(P_{\mu}^{~\nu \rho \sigma}\delta \Gamma ^{\mu}_{~\nu \sigma})-2\nabla _{\rho}P_{\mu}^{~\nu \rho \sigma}\delta \Gamma ^{\mu}_{\nu \sigma}+\frac{1}{2}Fg^{\mu \nu}\delta g_{\mu \nu} \right) \\
 & =\int _{\partial M}\mathrm{d}\Sigma _{\rho}(2P_{\mu}^{~\nu \rho \sigma}\delta \Gamma ^{\mu}_{\nu \sigma})+\int _{M}\varepsilon \left( 2\nabla _{\rho}P^{\mu \nu \rho \sigma}\nabla _{\mu}\delta g_{\nu\sigma}+\frac{1}{2}Fg^{\mu \nu}\delta g_{\mu \nu} \right) \\
 & =\int _{\partial M}\mathrm{d}\Sigma _{\rho}(2\nabla _{\mu}P^{\mu \nu \rho \sigma}\delta g_{\nu \sigma}+2P_{\mu}^{~\nu \rho \sigma}\delta \Gamma ^{\mu}_{~\nu \sigma})+\int _{M}\varepsilon\left( -2\nabla _{\mu}\nabla _{\rho}P^{\mu \nu \rho \sigma}\delta g_{\nu \sigma}+\frac{1}{2}Fg^{\mu \nu}\delta g_{\mu \nu}\right) \\
 & =\int _{M}\varepsilon E^{\mu \nu}\delta g_{\mu \nu}+\int _{\partial M}v^{\mu}\mathrm{d}\Sigma _{\mu}
\end{align}
$$

here we use

$$\tag{*}
\begin{align}
\delta R^{\rho}_{~\sigma \mu \nu} & =\nabla _{\mu}\delta \Gamma ^{\rho}_{~\sigma \nu}-\nabla _{\nu}\delta \Gamma ^{\rho}_{~\mu \sigma} \\
\delta \Gamma ^{\rho}_{~\mu \nu} & =\frac{1}{2}g^{\rho \sigma}(\nabla _{\mu}\delta g_{\sigma \nu}+\nabla _{\nu}\delta g_{\mu \sigma}-\nabla _{\sigma}\delta g_{\mu \nu})
\end{align}
$$

we define $\displaystyle{P^{\mu \nu \rho \sigma}=\frac{\delta F}{\delta R_{\mu \nu \rho \sigma}}}$, and $\displaystyle{\mathrm{d}\Sigma _{\mu}}$ is the outward-directed surface element on $\displaystyle{\partial M}$, and

$$\tag{1.3}
\begin{align}
\delta v^{\rho}=2P_{\mu}^{~\nu \rho \sigma}\delta \Gamma ^{\mu}_{~\nu \sigma}+2\delta g_{\nu \sigma}\nabla _{\mu}P^{\mu \nu \rho \sigma}
\end{align}
$$

in order to give rise to a well posed variational principle, we must supplement a boundary term $\displaystyle{S_{\text{boundary}}}$ such that

$$\tag{1.4}
\begin{align}
\delta S_{\text{boundary}} & =-\int _{\partial M}\delta v^{\mu}\mathrm{d}\Sigma _{\mu}+\int _{\partial M}p_{N}\delta q^{N}\mathrm{d}\Sigma
\end{align}
$$

with $\displaystyle{q^{N}}$ the intrinsic geometric quantity as well as its derivatives to the boundary, i.e., the induced metric $\displaystyle{\gamma ^{ab}, h^{ab}}$ and extrinsic curvature $\displaystyle{K^{ab}}$. if the boundary is smooth, the boundary terms involves only the surface term $\displaystyle{S_{\text{surface}}}$. and if the boundary is non-smooth, we need corner term $\displaystyle{S_{\text{corner}}}$ as well.

however this is hard to do with the original $\displaystyle{F(R)}$ gravity bulk action. this problem can be circumvented by introducing two auxiliary fields $\displaystyle{\psi _{\mu \nu \rho \sigma}}$ and $\displaystyle{\varrho _{\mu \nu \rho \sigma}}$, which have the same symmetries as $\displaystyle{R_{\mu \nu \rho \sigma}}$ and allows as to recast the original bulk action into the following form

$$\tag{1.5}
\begin{align}
S_{\text{bulk}} & =\int _{M}\varepsilon(F(\varrho _{\mu \nu \rho \sigma},g_{\mu \nu})-\psi ^{\mu \nu \rho \sigma}(\varrho _{\mu \nu \rho \sigma}-R_{\mu \nu \rho \sigma}))
\end{align}
$$

the variation of the new action can be expressed as

$$\tag{1.6}
\begin{align}
\delta S_{\text{bulk}} & =\int _{M}\varepsilon\left( \frac{\delta F}{\delta \varrho _{\mu \nu \rho \sigma}}\delta \varrho _{\mu \nu \rho \sigma}-\delta \psi ^{\mu \nu \rho \sigma}(\varrho _{\mu \nu \rho \sigma}-R_{\mu \nu \rho \sigma})-\psi ^{\mu \nu \rho \sigma}(\delta \varrho _{\mu \nu \rho \sigma}-\delta R_{\mu \nu \rho \sigma}) \right)+\frac{1}{2}g^{\mu \nu}\delta g_{\mu \nu}(F(\varrho _{\mu \nu \rho \sigma},g_{\mu \nu})-\psi ^{\mu \nu \rho \sigma}(\varrho _{\mu \nu \rho \sigma}-R_{\mu \nu \rho \sigma}))\\
 & =\int _{M}\varepsilon\left(\frac{\delta F}{\delta \varrho _{\mu \nu \rho \sigma}}-\psi ^{\mu \nu \rho \sigma}\right)\delta \varrho _{\mu \nu \rho \sigma}+(R_{\mu \nu \rho \sigma}-\varrho _{\mu \nu \rho \sigma})\delta \psi ^{\mu \nu \rho \sigma}+\left( \nabla _{\mu}\nabla _{\rho}\psi ^{\mu \nu \rho \sigma}\delta g_{\nu \sigma}+\frac{1}{2}g^{\mu \nu}(F(\varrho _{\mu \nu \rho \sigma},g_{\mu \nu})-\psi ^{\mu \nu \rho \sigma}(\varrho _{\mu \nu \rho \sigma}-R_{\mu \nu \rho \sigma})) \delta g_{\mu \nu}\right) \\
 & +\int _{\partial M}\delta v^{\rho}\mathrm{d}\Sigma _{\rho}
\end{align}
$$

where

$$\tag{1.7}
\begin{align}
\delta v^{\rho} & =2\psi _{\mu}^{~\nu \rho \sigma}\delta \Gamma ^{\mu}_{~\nu \sigma}+2\delta g_{\nu \sigma}\nabla _{\mu}\psi ^{\mu \nu \rho \sigma}
\end{align}
$$

## timelike/spacelike boundary
### variation of boundary geometric quantities

outward-directed normal vector $\displaystyle{n_{\mu}}$

$$\tag{2.1}
\begin{align}
\delta n_{\mu}=\frac{\varepsilon}{2}n_{\mu}n^{\rho}n^{\sigma}\delta g_{\rho \sigma}
\end{align}
$$

we denote $\displaystyle{\delta a=\frac{\varepsilon}{2}n^{\rho}n^{\sigma}\delta g_{\rho \sigma}}$ and

$$\tag{2.2}
\begin{align}
0=\delta \varepsilon & =\delta n_{\mu}n^{\mu}+n_{\mu}\delta n^{\mu} \\
 & =\varepsilon \delta a+n_{\mu}\delta n^{\mu} \\
\implies \delta n^{\mu} & =-n^{\mu}\delta a-\varepsilon \delta A^{\mu} \\
\delta A^{\mu} & =-\varepsilon \gamma ^{\mu}_{\nu}\delta g^{\nu \rho}n_{\rho} \\
 & =-\varepsilon \gamma ^{\mu \nu}\delta g_{\rho \nu}n^{\rho}
\end{align}
$$

then the induced metric $\displaystyle{\gamma _{\mu \nu}=g_{\mu \nu}-\varepsilon n_{\mu}n_{\nu}}$

$$\tag{2.3}
\begin{align}
\delta \gamma _{\mu \nu} & =\delta g_{\mu \nu}-\varepsilon \delta n_{\mu}n_{\nu}-\varepsilon n_{\mu}\delta n_{\nu} \\
  & =\delta g_{\mu \nu}-\varepsilon n_{\mu}n_{\nu}\delta a
\end{align}
$$

$$\tag{2.4}
\begin{align}
\delta g^{\mu \nu} & =\delta(\gamma ^{\mu \nu}+\varepsilon n^{\mu}n^{\nu}) \\
 & =\delta \gamma ^{\mu \nu}-2\varepsilon n^{\mu}n^{\nu}\delta a-\delta A^{\mu}n^{\nu}-n^{\mu}\delta A^{\nu} \\
\delta g_{\mu \nu} & =\delta(\gamma _{\mu \nu}+\varepsilon n_{\mu}n_{\nu}) \\
 & =\delta \gamma _{\mu \nu}+2\varepsilon n_{\mu}n_{\nu}\delta a
\end{align}
$$

and

$$\tag{2.5}
\begin{align}
\gamma ^{\mu \sigma}\gamma ^{\nu}_{~\lambda}\gamma ^{\rho}_{~\tau}\nabla _{\sigma}\delta g^{\lambda \tau} & =D^{\mu}\delta \gamma ^{\nu \rho}-K^{\mu \rho}\delta A^{\nu}-K^{\mu \nu}\delta A^{\rho}
\end{align}
$$

and finally the extrinsic curvature $\displaystyle{K_{\alpha \beta}=\gamma _{\alpha}^{\mu}\gamma ^{\nu}_{\beta}\nabla _{\mu}n_{\nu}}$

$$\tag{2.6}
\begin{align}
\delta K^{\mu \nu} & =\delta(\gamma^{\mu \rho}\gamma^{\nu \sigma}\nabla _{\rho}n_{\sigma}) \\
 & =\delta \gamma ^{\mu \rho}K^{\nu}_{~\rho}+\delta \gamma ^{\rho \nu}K^{\mu}_{~\rho}+\delta aK^{\mu \nu}-\gamma ^{\mu \rho}\gamma ^{\nu \sigma}n_{\lambda}\delta \Gamma ^{\lambda}_{~\rho \sigma}
\end{align}
$$

and

$$\tag{2.7}
\begin{align}
\delta K^{\mu \nu} & =\delta(\gamma ^{\mu \rho}\gamma ^{\nu}_{~\sigma}\nabla _{\rho}n^{\sigma}) \\
 & =\delta \gamma ^{\mu \rho}K^{\nu}_{~\rho}-\gamma ^{\mu \rho}\delta A^{\nu}n_{\sigma}\nabla _{\rho}n^{\sigma}+\gamma^{\mu \rho}\gamma ^{\nu}_{\sigma}\delta \Gamma ^{\sigma}_{~\rho \lambda}n^{\lambda}+\gamma ^{\mu \rho}\gamma ^{\nu}_{~\sigma}\nabla _{\rho}(-n^{\sigma}\delta a-\varepsilon \delta A^{\sigma}) \\
 & =\delta \gamma ^{\mu \rho}K^{\nu}_{~\rho}+\gamma ^{\mu \rho}\gamma ^{\nu}_{~\sigma}n^{\lambda}\delta \Gamma ^{\sigma}_{~\rho \lambda}-\delta aK^{\mu \nu}-\varepsilon D^{\mu}\delta A^{\nu}
\end{align}
$$

### boundary term

we start from (1.7)

$$\tag{3.1}
\begin{align}
\int _{\Sigma}\delta v^{\rho}\mathrm{d}\Sigma _{\rho} & =\varepsilon\int _{\Sigma}n_{\rho}\delta v^{\rho}\varepsilon _{\Sigma} \\
 & =\varepsilon \int _{\Sigma}\varepsilon _{\Sigma}(2n_{\rho}\psi _{\mu}^{~\nu \rho \sigma}\delta \Gamma ^{\mu}_{~\rho \sigma}+2n_{\rho}\delta g_{\nu \sigma}\nabla _{\mu}\psi ^{\mu \nu \rho \sigma})
\end{align}
$$

the general direction is that convert $\displaystyle{\delta \Gamma ^{\mu}_{\rho \sigma}}$ and $\displaystyle{\delta g_{\mu \rho}}$ into $\displaystyle{\delta K^{\mu \nu}}$ and $\displaystyle{\delta \gamma ^{\mu \nu}}$... the first term is

$$\tag{3.2}
\begin{align}
2n_{\rho}\psi _{\mu}^{~\nu \rho \sigma}\delta \Gamma ^{\mu}_{\nu \sigma} & =2n_{\rho}\psi _{\mu}^{~\nu \rho \sigma}\delta ^{\mu}_{\alpha}\delta _{\nu}^{\beta}\delta ^{\gamma}_{\sigma}\delta \Gamma ^{\alpha}_{~\beta \gamma} \\
 & = 2n_{\rho}\psi _{\mu}^{~\nu \rho \sigma}(\gamma ^{\mu}_{\alpha}+\varepsilon n^{\mu}n_{\alpha})(\gamma ^{\beta}_{\nu}+\varepsilon n^{\beta}n_{\nu})\gamma ^{\gamma}_{\sigma}\delta \Gamma ^{\alpha}_{~\beta \gamma} \\
 & = 2n_{\rho}\psi _{\mu}^{~\nu \rho \sigma}\gamma ^{\mu}_{\alpha}\gamma ^{\beta}_{\nu}\gamma ^{\gamma}_{\sigma}\delta \Gamma ^{\alpha}_{~\beta \gamma}+2n_{\rho}\psi _{\mu}^{~\nu \rho \sigma}\gamma ^{\mu}_{\alpha}\varepsilon n^{\beta}n_{\nu}\gamma ^{\gamma}_{\sigma}\delta \Gamma ^{\alpha}_{\beta \gamma}+2\varepsilon n_{\rho}\psi _{\mu}^{~\nu \rho \sigma}n^{\mu}n_{\alpha}\gamma ^{\beta}_{\nu}\gamma ^{\gamma}_{\sigma}\delta \Gamma ^{\alpha}_{~\beta \gamma} \\
 & =2n^{\rho}\gamma ^{\mu}_{\alpha}\gamma ^{\beta \nu}\gamma ^{\gamma \sigma}\psi _{\mu \nu \rho \sigma}\delta \Gamma ^{\alpha}_{\beta \gamma}+2\varepsilon(n^{\rho}n^{\beta}n^{\nu}\gamma ^{\mu}_{\alpha}\gamma ^{\gamma \sigma}\psi _{\mu \nu \rho \sigma}\delta \Gamma ^{\alpha}_{\beta \gamma}+n^{\rho}n^{\mu}n_{\alpha}\gamma ^{\beta \nu}\gamma ^{\gamma \sigma}\psi _{\mu \nu \rho \sigma}\delta \Gamma ^{\alpha}_{\beta \gamma}) \\
 & =2n^{\rho}\gamma ^{\mu}_{\alpha}\gamma ^{\beta \nu}\gamma ^{\gamma \sigma}\psi _{\mu \nu \rho \sigma}\delta \Gamma ^{\alpha}_{~\beta \gamma}+2\varepsilon \Psi_{\mu \nu}\gamma ^{\gamma \nu}(\gamma ^{\beta \mu}\delta \Gamma ^{\alpha}_{\beta \gamma}n_{\alpha}-\gamma ^{\mu}_{\alpha}\delta \Gamma ^{\alpha}_{~\beta \gamma}n^{\beta})
\end{align}
$$

where we have defined that

$$\tag{3.3}
\begin{align}
\Psi_{\mu \nu}=\psi _{\mu \rho \nu \sigma}n^{\rho}n^{\sigma}
\end{align}
$$

and we have

$$\tag{3.4}
\begin{align}
2\varepsilon \Psi_{\mu \nu}(\gamma ^{\gamma \nu}\gamma ^{\beta \mu}\delta \Gamma ^{\alpha}_{~\beta \gamma}n_{\alpha}-\gamma ^{\gamma \nu}\gamma ^{\mu}_{\alpha}\delta \Gamma ^{\alpha}_{~\beta \gamma}n^{\beta}) & =2\varepsilon \Psi_{\mu \nu}(-2\delta K^{\mu \nu}+3K^{\mu}_{\rho}\delta \gamma ^{\rho \nu}-\varepsilon D^{\mu}\delta A^{\nu})
\end{align}
$$

here we use

$$
\begin{align}
\delta K^{\mu \nu} & =\delta \gamma ^{\mu \rho}K^{\nu}_{~\rho}+\delta \gamma ^{\rho \nu}K^{\mu}_{~\rho}+\delta aK^{\mu \nu}-\gamma ^{\mu \rho}\gamma ^{\nu \sigma}n_{\lambda}\delta \Gamma ^{\lambda}_{~\rho \sigma} \\
\delta K^{\mu \nu} & =\delta \gamma ^{\mu \rho}K^{\nu}_{~\rho}+\gamma ^{\mu \rho}\gamma ^{\nu}_{~\sigma}n^{\lambda}\delta \Gamma ^{\sigma}_{~\rho \lambda}-\delta aK^{\mu \nu}-\varepsilon D^{\mu}\delta A^{\nu}
\end{align}
$$

and the first term in (3.2)

$$\tag{3.5}
\begin{align}
2n^{\rho}\gamma ^{\mu}_{\alpha}\gamma ^{\beta \nu}\gamma ^{\gamma \sigma}\psi _{\mu \nu \rho \sigma}\delta \Gamma ^{\alpha}_{~\beta \gamma} & =n^{\rho}\gamma ^{\alpha \mu}\gamma ^{\beta \nu}\gamma ^{\gamma \sigma}\psi _{\mu \nu \rho \sigma}(\nabla _{\beta}\delta g_{\alpha \gamma}+\nabla _{\gamma}\delta g_{\beta \alpha}-\nabla _{\alpha}\delta g_{\beta \gamma}) \\
 & =2n^{\rho}\psi _{\mu \nu \rho \sigma}\gamma ^{\alpha \mu}\gamma ^{\beta \nu}\gamma ^{\gamma \sigma}\nabla _{\beta}\delta g_{\alpha \gamma} \\
 & =2n^{\rho}\psi _{\mu \nu \rho \sigma}(K^{\mu\nu}\delta A^{\sigma}+K^{\nu \sigma}\delta A^{\mu}-D^{\nu}\delta \gamma ^{\mu \sigma}) \\
 & =2n^{\rho}\psi _{\mu \nu \rho \sigma}(K^{\nu \sigma}\delta A^{\mu}-D^{\nu}\delta \gamma ^{\mu \sigma})
\end{align}
$$

then we have

$$\tag{3.6}
\begin{align}
2n^{\rho}\psi _{\mu \nu \rho \sigma}\delta \Gamma ^{\mu}_{\nu \sigma} & =2\varepsilon \Psi_{\mu \nu}(-2\delta K^{\mu \nu}+3K^{\mu}_{\rho}\delta \gamma ^{\rho \nu}-\varepsilon D^{\mu}\delta A^{\nu})+2n^{\rho}\psi _{\mu \nu \rho \sigma}(K^{\nu \sigma}\delta A^{\mu}-D^{\nu}\delta \gamma ^{\mu \sigma})
\end{align}
$$

and 

$$\tag{3.7}
\begin{align}
2n_{\rho}\delta g_{\nu \sigma}\nabla _{\mu}\psi ^{\mu \nu \rho \sigma} & = -2n^{\rho}\delta g^{\nu \sigma}\nabla ^{\mu}\psi _{\mu \nu \rho \sigma} \\
 & =-2n^{\rho}(\delta \gamma ^{\nu \sigma}-2\varepsilon n^{\nu}n^{\sigma}\delta a-\delta A^{\nu}n^{\sigma}-n^{\nu}\delta A^{\sigma})\nabla ^{\mu}\psi _{\mu \nu \rho \sigma} \\
 & =-2n^{\rho}\delta \gamma ^{\nu \sigma}\nabla ^{\mu}\psi _{\mu \nu \rho \sigma}+2n^{\rho}n^{\nu}\delta A^{\sigma}\nabla ^{\mu}\psi _{\mu \nu \rho \sigma} \\
 & =-2n^{\rho}\delta \gamma ^{\nu \sigma}\nabla ^{\mu}\psi _{\mu \nu \rho \sigma}-2\delta A^{\mu}D^{\nu}\Psi_{\mu \nu}+2\delta A^{\mu}\psi _{\mu \rho \nu \sigma}K^{\nu \rho}n^{\sigma}
\end{align}
$$

add (3.6) and (3.7) together, we have

$$\tag{3.8}
\begin{align}
n_{\mu}\delta v^{\mu} & =2\varepsilon \Psi_{\mu \nu}(-2\delta K^{\mu \nu}+3K^{\mu}_{\rho}\delta \gamma ^{\rho \nu}-\varepsilon D^{\mu}\delta A^{\nu})+2n^{\rho}\psi _{\mu \nu \rho \sigma}(K^{\nu \rho}\delta A^{\mu}-D^{\nu}\delta \gamma ^{\mu \sigma}) \\
 & -2n^{\rho}\delta \gamma ^{\nu \sigma}\nabla ^{\mu}\psi _{\mu \nu \rho \sigma}-2\delta A^{\mu}D^{\nu}\Psi_{\mu \nu}+2\delta A^{\mu}\psi _{\mu \rho \nu \sigma}K^{\nu \rho}n^{\sigma} \\
 & =-4\varepsilon \Psi_{\mu \nu}\delta K^{\mu \nu}-2D^{\mu}(\Psi_{\mu \nu}\delta A^{\nu})+(2n^{\rho}\nabla ^{\mu}\psi _{\mu \nu \rho \sigma}+6\varepsilon \Psi_{\mu \nu}K^{\mu}_{\rho})\delta \gamma ^{\nu \rho}-2n^{\sigma}\psi _{\mu \nu \rho \sigma}D^{\mu}\delta \gamma ^{\nu \rho}
\end{align}
$$

requiring both $\displaystyle{\delta \gamma ^{\nu \rho}}$ and $\displaystyle{\delta \Psi_{\mu \nu}}$ vanish on the boundary, then we have

$$\tag{3.9}
\begin{align}
\int _{\Sigma}\delta v^{\rho}\mathrm{d}\Sigma _{\rho} & =-4\delta \int _{\Sigma}\Psi_{\mu \nu}K^{\mu \nu}\delta \Sigma-2\varepsilon \int _{\partial \Sigma}\delta A^{\nu}\Psi_{\mu \nu}\mathrm{d}S^{\mu}
\end{align}
$$

where we have the proper surface term

$$\tag{3.10}
\begin{align}
S_{\text{surf}} & =4\int _{\partial M}\Psi_{\mu \nu}K^{\mu \nu}\mathrm{d}\Sigma
\end{align}
$$

### corner term

we just present the result here

#### timelike joints

$$\tag{3.1.1}
\begin{align}
S_{\text{corner}} & =\int _{\mathcal{C}}\hat{\Psi}\theta \mathrm{d}S
\end{align}
$$

where $\displaystyle{\hat{\Psi}=\psi ^{\mu \nu \rho \sigma}\varepsilon _{\mu \nu}\varepsilon _{\rho \sigma}}$, and $\displaystyle{\varepsilon _{\mu \nu}=n_{s\mu}\wedge r_{s\nu}}$, where $\displaystyle{n_{s\mu}}$ is the outward-directed normal vector of the timelike boundary $\displaystyle{B_{s}}$ and $\displaystyle{r_{s\mu}}$ is the unit tangent vector which points outwards from $\displaystyle{B_{s}}$ and satisfies $\displaystyle{n_{s\mu}r_{s}^{\mu}=0}$, and $\displaystyle{\theta}$ is the angle between the two normal vectors $\displaystyle{n_{s\mu}}$.

#### spacelike joints

$$\tag{3.1.2}
\begin{align}
S_{\text{corner}} & =-\int _{\mathcal{C}}\hat{\Psi}\eta \mathrm{d}S
\end{align}
$$

definitions are basically not changed, while $\displaystyle{\eta=n_{1\mu}n^{\mu}_{2}}$.

#### other joints

we need to introduce a auxiliary boundary and then add the two corner term relevant to the auxiliary boundary.

## null boundary

now consider the null boundary $\displaystyle{\mathcal{N}}$, which is foliated by an outward-directed null geodesic $\displaystyle{k^{a}=\left( \frac{\partial}{\partial \lambda} \right)^{\mu}}$ of a cross section $\displaystyle{\mathcal{S}}$. we further introduce a null vector field $\displaystyle{l_{a}}$ on $\displaystyle{\mathcal{N}}$, which is normal to $\displaystyle{S}$ and satisfies $\displaystyle{k^{a}l_{a}=-1}$. the metric can be decomposed as $\displaystyle{g^{\mu \nu}=\sigma ^{\mu \nu}-k^{\mu}l^{\nu}-k^{\nu}l^{\mu}}$, where $\displaystyle{\sigma ^{\mu \nu}}$ is tangent to $\displaystyle{\mathcal{S}}$. then we have

$$\tag{4.1}
\begin{align}
\delta k _{\mu}=\delta \alpha k _{a}, \delta k^{a}=0, \delta l_{a}=\delta \beta k _{a} \\
\delta a =\delta g^{\mu \nu}k _{\mu}l_{\nu}, \delta \beta=\frac{1}{2}\delta g^{\mu \nu}l_{\mu}l_{\nu} \\
\delta l^{\mu}=-\delta \beta k^{\mu}-\delta \alpha l^{a}+\bar{\delta}l^{\mu}
\end{align}
$$

with $\displaystyle{\bar{\delta}l^{\mu}}$ tangent to $\displaystyle{\mathcal{S}}$. then we have

$$\tag{4.2}
\begin{align}
\delta g^{\mu \nu} & =2\delta \beta k^{\mu}k^{\nu}+\delta \alpha(k^{\mu}l^{\nu}+k^{\nu}l^{\mu})-k^{\mu}\bar{\delta}l^{\nu}-k^{\nu}\bar{\delta}l^{\mu}+\delta \sigma ^{\mu \nu}
\end{align}
$$

the geodesic equation re$\mathrm{AdS}$

$$\tag{4.3}
\begin{align}
k^{\mu}\nabla _{\mu}k^{\nu} & =\kappa k^{\nu}
\end{align}
$$

where $\displaystyle{\kappa}$ measures the failure of $\displaystyle{\lambda}$ to be an affine parameter. we express $\displaystyle{\delta \kappa}$ via $\displaystyle{\delta \Gamma}$

$$\tag{4.4}
\begin{align}
\delta \kappa & =-\delta(l^{\mu}k^{\nu}\nabla _{\nu}k _{\mu})=k^{\mu}\nabla _{\mu}\delta \alpha+\delta \Gamma ^{\rho}_{~\mu \nu}l^{\mu}k^{\nu}k _{\rho} \\
\delta \kappa & =-\delta(l_{\mu}k^{\nu}\nabla _{\nu}k^{\mu})=-\delta \Gamma ^{\mu}_{\nu \rho}l_{\mu}k^{\nu}k^{\rho}
\end{align}
$$

which give rise to

$$\tag{4.5}
\begin{align}
\delta \Gamma ^{\rho}_{~\mu \nu}l^{\mu}k^{\nu}k _{\rho}-\delta \Gamma ^{\mu}_{\nu \rho}l_{\mu}k^{\nu}k^{\rho} & =2\delta \kappa-k^{\mu}\nabla _{\mu}\delta \alpha
\end{align}
$$

### surface term

$$\tag{4.6}
\begin{align}
\int _{\mathcal{N}}\delta v^{\mu}\mathrm{d}\Sigma _{\mu} & =\int _{\mathcal{N}}k _{\mu}\delta v^{\mu}\mathrm{d}\lambda \mathrm{d}S \\
 & =\int _{\mathcal{N}}(2k _{\rho}\psi _{\mu}^{~\nu \rho \sigma}\delta \Gamma ^{\mu}_{~\nu \sigma}+2k _{\rho}\delta g_{\nu \sigma}\nabla _{\mu}\psi ^{\mu \nu \rho \sigma})\mathrm{d}\lambda \mathrm{d}S
\end{align}
$$

then the first term

$$\tag{4.7}
\begin{align}
k _{\rho}\psi _{\mu}^{~\nu \rho \sigma}\delta \Gamma ^{\mu}_{~\nu \sigma} & =k _{\rho}g^{\nu \alpha}g^{\rho \beta}g^{\sigma \gamma}\psi _{\mu \alpha \beta \gamma}\delta \Gamma ^{\mu}_{\nu \sigma} \\
 & =(\sigma ^{\nu \alpha}-k^{\nu}l^{\alpha}-k^{\alpha}l^{\nu})(k _{\rho}\sigma ^{\rho \beta}+k^{\beta})(\sigma ^{\sigma \gamma}-k^{\sigma}l^{\gamma}-k^{\gamma}l^{\sigma})\psi _{\mu \alpha \beta \gamma}\delta \Gamma ^{\mu}_{\nu \sigma} \\
  & =
\end{align}
$$

## some important examples of $\displaystyle{F(R_{\mu \nu \rho \sigma})}$ gravity

1. $\displaystyle{F(R)}$ gravity
2. critical gravity

## covariant phase space formalism

here we only consider that the spacetime region $\displaystyle{M}$ is bounded by a timelike surface $\displaystyle{\Gamma}$ and sandwiched by two spacelike surfaces $\displaystyle{\Sigma _{f,i}}$ with another spacelike surface $\displaystyle{\Sigma}$ in between. we can write down the 

$$\tag{4.1}
\begin{align}
S & =\int _{M}\varepsilon(F(\varrho _{\mu \nu \rho \sigma},g_{\mu \nu})+\psi ^{\mu \nu \rho \sigma}(R_{\mu \nu \rho \sigma}-\varrho _{\mu \nu \rho \sigma}))+\int _{\Gamma}4\Psi_{\alpha \beta}K^{\alpha \beta}\varepsilon _{\Gamma}
\end{align}
$$

where $\displaystyle{\Psi_{\alpha \beta}=\psi _{\alpha \mu \beta \nu}n^{\mu}n^{\nu}}$, and $\displaystyle{n^{\mu}}$ is the outward-directed unit norm vector of space boundary $\displaystyle{\Gamma}$.

consider the variation of the action

$$\tag{4.2}
\begin{align}
\delta \mathbf{L} & =\mathbf{E}_{\phi}\delta \phi+\mathrm{d}\Theta \\
(\Theta+\delta \ell)|_{\Gamma} & =\mathbf{F}_{\phi}\delta \phi+\mathrm{d}\mathbf{C}
\end{align}
$$

$$
\begin{align}
\delta \mathbf{L} & =\varepsilon\left( P^{\mu \nu \rho \sigma}-\psi ^{\mu \nu \rho \sigma} \right)\delta \varrho _{\mu \nu \rho \sigma}+\varepsilon(R_{\mu \nu \rho \sigma}-\varrho _{\mu \nu \rho \sigma})\delta \psi ^{\mu \nu \rho \sigma} \\
 & +\left(\frac{1}{2}g^{\mu \nu}F+\frac{1}{2}g^{\mu \nu}\psi ^{\rho \sigma \lambda \tau}(R_{\rho \sigma \lambda \tau}-\varrho _{\rho \sigma \lambda \tau})+\frac{\delta F}{\delta g_{\mu \nu}}+2\nabla _{\rho}\nabla _{\sigma}\psi ^{\rho(\mu \nu)\sigma}+\psi ^{\rho \sigma \lambda(\mu}R_{\rho \sigma \lambda}^{~~~~~~\nu)}\right)\delta g_{\mu \nu} \\
 & +\mathrm{d}(2n _{\rho}(\nabla _{\mu}\psi ^{\mu \nu \rho \sigma}\delta g_{\nu \sigma}-\psi ^{\mu \nu \rho \sigma}\nabla _{\mu}\delta g_{\nu \sigma}))
\end{align}
$$

$$
\begin{align}
\Theta|_{\Gamma} & =2n_{\rho}\nabla _{\mu}\psi ^{\mu \nu \rho \sigma}\delta g_{\nu \sigma}-2n_{\rho}\psi ^{\mu \nu \rho \sigma}\nabla _{\mu}\delta g_{\nu \sigma} \\
 & =2n^{\rho}\psi _{\mu \nu \rho \sigma}\nabla ^{\mu}\delta g^{\nu \sigma}-2n^{\rho}\nabla ^{\mu}\psi _{\mu \nu \rho \sigma}\delta g^{\nu \sigma}
\end{align}
$$

notice that

$$
\begin{align}
\gamma _{\mu \nu} & =g_{\mu \nu}-n_{\mu}n_{\nu}
\end{align}
$$

$$
\begin{align}
\delta n_{\mu} & =\frac{1}{2}n_{\mu}n^{\rho}n^{\sigma}\delta g_{\rho \sigma}=-\frac{1}{2}n_{\mu}n_{\rho}n_{\sigma}\delta g^{\rho \sigma}=n_{\mu}\delta a \\
\delta a & =-\frac{1}{2}n_{\rho}n_{\sigma}\delta g^{\rho \sigma}
\end{align}
$$

$$
\begin{align}
\delta n^{\mu} & =\delta g^{\mu \nu}n_{\nu}+g^{\mu \nu}\delta n_{\nu} \\
 & =(\gamma ^{\mu}_{\nu}+n^{\mu}n_{\nu})\delta g^{\nu \rho}n_{\rho}+g^{\mu \nu}n_{\nu}\delta a \\
 & =\gamma ^{\mu}_{\nu}\delta g^{\nu \rho}n_{\rho}-n^{\mu}\delta a \\
 & =-\delta A^{\mu}-n^{\mu}\delta a \\
\delta A^{\mu} & =-\gamma ^{\mu}_{\nu}\delta g^{\nu \rho}n_{\rho}
\end{align}
$$

$$
\begin{align}
\delta g^{\mu \nu} & =\delta(\gamma ^{\mu \nu}+n^{\mu}n^{\nu})=\delta \gamma ^{\mu \nu}-2n^{\mu}n^{\mu}\delta a-n^{\mu}\delta A^{\nu}-\delta A^{\mu}n^{\nu}
\end{align}
$$

plug it into $\displaystyle{\Theta|_{\Gamma}}$, we have

$$\tag{4.3}
\begin{align}
\Theta|_{\Gamma} & =(-4 \Psi_{\mu \nu}\delta K^{\mu \nu}-2D^{\mu}(\Psi_{\mu \nu}\delta A^{\nu})+(2n^{\sigma}\nabla ^{\mu}\psi _{\mu \nu \rho \sigma}+6 \Psi_{\mu \nu}K^{\mu}_{\rho})\delta \gamma ^{\nu \rho}-2n^{\sigma}\psi _{\mu \nu \rho \sigma}D^{\mu}\delta \gamma ^{\nu \rho})\varepsilon _{\Gamma}
\end{align}
$$

then we have

$$\tag{4.4}
\begin{align}
(\Theta+\delta \ell)|_{\Gamma} & =(4K^{\mu \nu}\delta \Psi_{\mu \nu}-2D^{\mu}(\Psi_{\mu \nu}\delta A^{\nu})-2D^{\mu}(n^{\sigma}\psi _{\mu \nu \rho \sigma}\delta \gamma ^{\nu \rho})+2D^{\mu}(n^{\sigma}\psi _{\mu \nu \rho \sigma})\delta \gamma ^{\nu \rho} \\
 & +2n^{\sigma}\nabla ^{\mu}\psi _{\mu \nu \rho \sigma}\delta \gamma ^{\nu \rho}-2\Psi_{\mu \nu}K^{\mu}_{\rho}\delta \gamma ^{\nu \rho}-2\Psi_{\rho \sigma}K^{\rho \sigma} \gamma _{\mu \nu}\delta \gamma ^{\mu \nu})\varepsilon _{\Gamma} \\
 & =\mathrm{d}\mathbf{C}+\mathbf{F}_{\phi}d\phi
\end{align}
$$

where

$$\tag{4.5}
\begin{align}
\mathbf{C} & =(-2\Psi^{\mu}_{~\nu}\delta A^{\nu}-2n^{\sigma}\gamma^{\mu \lambda}\psi _{\lambda \nu \rho \sigma}\delta \gamma ^{\nu \rho})\varepsilon _{\mu}^{\partial \Sigma} \\
\mathbf{F}_{\gamma,\mu \nu} & =(-2\gamma _{\mu \nu}\Psi_{\rho \sigma}K^{\rho \sigma}-2\Psi_{\rho (\mu}K_{~\nu)}^{\rho}-2n^{\sigma}\gamma ^{\lambda}_{(\mu}\gamma ^{\tau}_{\nu)}\nabla ^{\rho}\psi _{\rho \lambda \sigma \tau}+2\gamma ^{\lambda}_{(\mu}\gamma ^{\tau}_{\nu)}D^{\rho}(n^{\sigma}\psi _{\rho \lambda \sigma \tau}))\varepsilon _{\Gamma} \\
\mathbf{F}_{\Psi,\mu \nu} & =4K^{\mu \nu}
\end{align}
$$

suppose this action is diffeomorphism invariant

$$\tag{4.6}
\begin{align}
X_{\xi} & =\int _{M}\varepsilon_{M}\mathcal{L}_{\xi}\phi  \frac{\delta}{\delta \phi}
\end{align}
$$

then we have

$$\tag{.}
\begin{align}
X_{\xi}\cdot \mathbf{L} & =\mathrm{d}(\xi \cdot \mathbf{L}) \\
(\xi \cdot \mathbf{L}+X_{\xi}\cdot \delta \ell)|_{\Gamma} & =\mathrm{d}\mu _{\xi}
\end{align}
$$

here we assume that the boundary Lagrangian $\displaystyle{\ell}$ is covariant, i.e., we have

$$\tag{.}
\begin{align}
X_{\xi}\cdot \delta \ell & =\mathcal{L}_{\xi}\ell=\mathrm{d}(\xi \cdot \ell)
\end{align}
$$

and finally the Noether charge is

$$\tag{.}
\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}(X_{\xi}\cdot \Theta-\xi \cdot \mathbf{L})-\int _{\partial \Sigma}(X_{\xi}\cdot \mathbf{C}-\xi \cdot \ell) \\
 & =\int _{\partial \Sigma}(-2T_{h~c}^{~a}+2\Psi^{ab}T_{\Psi cb})\xi ^{c}\varepsilon ^{\partial \Sigma}_{a}
\end{align}
$$

we get the same result as 2406.15138

