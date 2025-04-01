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

## variation of boundary geometric quantities

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

## boundary term

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
n_{\mu}\delta v^{\mu} & =2\varepsilon \Psi_{\mu \nu}(-2\delta K^{\mu \nu}+2K^{\mu}_{\rho}\delta \gamma ^{\rho \nu}-\varepsilon D^{\mu}\delta A^{\nu})+2n^{\rho}\psi _{\mu \nu \rho \sigma}(K^{\nu \rho}\delta A^{\mu}-D^{\nu}\delta \gamma ^{\mu \sigma}) \\
 & -2n^{\rho}\delta \gamma ^{\nu \sigma}\nabla ^{\mu}\psi _{\mu \nu \rho \sigma}-2\delta A^{\mu}D^{\nu}\Psi_{\mu \nu}+2\delta A^{\mu}\psi _{\mu \rho \nu \sigma}K^{\nu \rho}n^{\sigma} \\
 & =+4\varepsilon \Psi_{\mu \nu}K^{\mu}_{\rho}\delta \gamma ^{\rho \nu}+2n^{\rho}\psi _{\mu \nu \rho \sigma}K^{\nu \rho}\delta A^{\mu}-2n^{\rho}\psi _{\mu \nu \rho \sigma}D^{\nu}\delta \gamma ^{\mu \sigma} \\
 & -2n^{\rho}\delta \gamma ^{\nu \sigma}\nabla ^{\mu}\psi _{\mu \nu \rho \sigma}-2\delta A^{\mu}D^{\nu}\Psi_{\mu \nu}+2\delta A^{\mu}\psi _{\mu \rho \nu \sigma}K^{\nu \rho}n^{\sigma} \\
 & -4\varepsilon \Psi_{\mu \nu}\delta K^{\mu \nu}-2D^{\mu}(\Psi_{\mu \nu}\delta A^{\nu})
\end{align}
$$