Consider Maxwell theory defined on a manifold $\displaystyle{M=\mathbb{R}_{t}\times[-L,L]_{x}\times S^{1}_{y}}$, with the identification $\displaystyle{y\sim y+\ell _{y},\ell _{y}=2\pi R}$, and a cut at the origin $\displaystyle{x=0}$, which separates the interval $\displaystyle{[-L,L]}$ into two intervals

$$\begin{align}
I_{1} & =[-L,0], & I_{2} & =[0,L]
\end{align}$$

with flat metric $\displaystyle{\mathrm{d}s^{2}=-\mathrm{d}t^{2}+\mathrm{d}x^{2}+\mathrm{d}y^{2}}$. On each region $\displaystyle{M_{i}=\mathbb{R}_{t}\times I_{i}\times S^{1}_{y}}$ the Maxwell action is taken to be

$$\begin{align}
S_{i}[A_{i}] & =-\dfrac{1}{4}\int _{M_{i}}\mathrm{d}^{3}xF_{i,\mu \nu}F_{i}^{\mu \nu}
\end{align}$$

for future convenience, we define the electric and magnetic field strengths

$$\begin{align}
E_{x} & =F_{tx}, & E_{y} & =F_{ty}, & B & =F_{xy}
\end{align}$$

taking a variation of the action

$$\begin{align}
\delta S_{i} & =\int _{M_{i}}\mathrm{d}t\mathrm{d}x\mathrm{d}y\partial _{\mu}F_{i}^{\mu \nu}\delta A_{i,\nu}+\int _{\Sigma _{i,f}-\Sigma _{i,i}}\mathrm{d}x\mathrm{d}y(E_{i,x}\delta A_{i,x}+E_{i,y}\delta A_{i,y}) \\
 & -\int _{\mathbb{R}_{t}\times \partial I_i\times S_{y}^{1}}\mathrm{d}t\mathrm{d}y\,n_x(E_{i,x}\delta A_{i,t}+B_{i}\delta A_{i,y})
\end{align}$$

here $\displaystyle{\Sigma _{i}=I_{i}\times S_{y}^{1}}$. There are two kinds of boundary conditions at $\displaystyle{\partial I_{i}}$:

- Dirichlet boundary condition, which fixes the tangent components of $\displaystyle{A}$ at the boundary, up to a gauge transformation:

$$\begin{align}
A_a|_{\partial M} & =\partial_a\chi, & a&=t,y
\end{align}$$

- Neumann boundary condition, which fixes the normal components of $\displaystyle{F}$ at the boundary

$$\begin{align}
n_{\mu}F^{\mu a}|_{\partial M}&=0, & a&=t,y
\end{align}$$

after fixing the boundary condition so that terms supported on the spatial boundary in the variation of the action vanish, we read off the eom, pre-symplectic potential, and pre-symplectic form

$$\begin{align}
E_{i} & =\partial _{\mu}F^{\mu \nu}_{i}=0 \\
\theta _{i} & =\int _{\Sigma _{i}}\mathrm{d}x\mathrm{d}y\left(E_{i,x}\delta A_{i,x}+E_{i,y}\delta A_{i,y}\right) \\
\omega _{i} & =\int _{\Sigma _{i}}\mathrm{d}x\mathrm{d}y(\delta E_{i,x}\wedge \delta A_{i,x}+\delta E_{i,y}\wedge \delta A_{i,y})
\end{align}$$

The solutions obeying the boundary conditions form the pre-phase space. Gauge transformations are null directions of $\displaystyle{\omega_i}$, and the physical phase space is obtained only after quotienting this kernel.

## Dirichlet Boundary Condition

We impose the Dirichlet data at the physical outer endpoints exactly and use a boundary-penalty theory only on the two faces of the artificial cut. Denote these faces by

$$\begin{align}
\Gamma_i & =\mathbb{R}_t\times\{0_i\}\times S_y^1, & n_i & =\begin{cases}+1,&i=1,\\
-1,&i=2,\end{cases}
\end{align}$$

where $\displaystyle{n_i}$ is the outward $\displaystyle{x}$-normal of $\displaystyle{M_i}$ at the cut. Introduce a boundary Stueckelberg field $\displaystyle{\varphi_i(t,y)}$ with gauge transformation

$$\begin{align}
A_{i,\mu} & \longrightarrow A_{i,\mu}+\partial_\mu\lambda_i, & \varphi_i & \longrightarrow\varphi_i+\lambda_i|_{\Gamma_i}.
\end{align}$$

Just as in the scalar case [[Articles/Quantization in AdS/gluing/continuous theory I|continuous theory I]], introduce a fixed inverse-length scale $\displaystyle{\mu>0}$ and a dimensionless parameter $\displaystyle{\kappa>0}$. The boundary action is

$$\begin{align}
S_{\mathrm{D}}^{(\kappa)} &=-\dfrac{\mu}{2\kappa}\sum_{i=1}^{2}\int_{\Gamma_i}\mathrm{d}t\mathrm{d}y \left[-(A_{i,t}-\dot\varphi_i)^2+(A_{i,y}-\partial_y\varphi_i)^2\right].
\end{align}$$

The bulk varaition supported on $\displaystyle{\Gamma _{i}}$ is

$$\begin{align}
\delta S_{i}|_{\Gamma _{i}} & =-\int _{\Gamma _{i}}\mathrm{d}t\mathrm{d}yn_{i}(E_{i,x}\delta A_{i,t}+B_{i}\delta A_{i,y})
\end{align}$$

the variation of the boundary action is

$$\begin{align}
\delta S_{\mathrm{D}}^{(\kappa)} & =\dfrac{\mu}{\kappa}\sum ^{2}_{i=1}\int _{\Gamma _{i}}\mathrm{d}t\mathrm{d}y\left[(A_{i,t}-\dot{\varphi}_{i})\delta A_{i,t}-(A_{i,y}-\partial _{y}\varphi _{i})\delta A_{i,y}+(\dot{A}_{i,t}-\partial _{y}A_{i,y}-\ddot{\varphi}_{i}+\partial _{y}^{2}\varphi _{i})\delta \varphi _{i}\right] \\
 & +\sum ^{2}_{i=1}\int _{S_{y}^{1}}\mathrm{d}y \dfrac{\mu}{\kappa}(\dot{\varphi}_{i}-A_{i,t})\delta \varphi _{i}|^{t_{f}}_{t_{i}}
\end{align}$$

together with $\displaystyle{\delta S_{i}}$, we read out

$$\begin{align}
n_{i}E_{i,x}+\dfrac{\mu}{\kappa}(\dot{\varphi} _{i}-A_{i,t}) & =0 \\
n_{i}B_{i}+\dfrac{\mu}{\kappa}(A_{i,y}-\partial _{y}\varphi _{i}) & =0 &  \iff   &  &  n_{i,\mu}F_{i}^{\mu \alpha}+\dfrac{\mu}{\kappa}(A^{\alpha}_{i}-\partial ^{\alpha}\varphi _{i}) & =0, & \alpha=t,y\\
-\ddot{\varphi}_{i}+\partial _{y}^{2}\varphi _{i}+\dot{A}_{i,t}-\partial _{y}A_{i,y} & =0 & \iff &  & (-\partial _{t}^{2}+\partial _{y}^{2})\varphi _{i} & =-\dot{A}_{i,t}+\partial _{y}A_{i,y}
\end{align}$$

$\displaystyle{\delta S_{D}^{(\kappa)}}$ contributes to the pre-symplectic potential and pre-symplectic form as

$$\begin{align}
\theta ^{(\kappa)}_{\mathrm{D}} & =\sum ^{2}_{i=1}\int _{S_{y}^{1}}\mathrm{d}y \dfrac{\mu}{\kappa}(\dot{\varphi} _{i}-A_{i,t})\delta \varphi _{i} \\
\implies\omega ^{(\kappa)}_{\mathrm{D}} & =\sum ^{2}_{i=1}\int _{S^{1}_{y}}\mathrm{d}y \dfrac{\mu}{\kappa}(\delta \dot{\varphi} _{i}-\delta A_{i,t})\wedge \delta \varphi _{i} \\
 & \approx -\sum ^{2}_{i=1}\int _{S^{1}_{y}}\mathrm{d}yn_{i}\delta E_{i,x}\wedge \delta \varphi _{i}
\end{align}$$

Thus the total pre-symplectic potential and pre-symplectic form are

$$\begin{align}
\theta_{\kappa} &=\sum_{i=1}^{2}\int_{\Sigma_i}\mathrm{d}x\mathrm{d}y \left(E_{i,x}\delta A_{i,x}+E_{i,y}\delta A_{i,y}\right) +\theta_{\mathrm{D}}^{(\kappa)}. \\
\omega _{\kappa} & =\sum ^{2}_{i=1}\int _{\Sigma _{i}}\mathrm{d}x\mathrm{d}y(\delta E_{i,x}\wedge \delta A_{i,x}+\delta E_{i,y}\wedge \delta A_{i,y})+\omega ^{(\kappa)}_{\mathrm{D}}
\end{align}$$

In the CPS language, the time-translation vector $\displaystyle{X_{\partial_t}}$ satisfies

$$\begin{align}
X_{\partial_t}\cdot\delta S &=\alpha_{\partial_t}|_{\Sigma_f}-\alpha_{\partial_t}|_{\Sigma_i}, & H_{\partial_t}&=X_{\partial_t}\cdot\theta_\kappa-\alpha_{\partial_t}.
\end{align}$$

Evaluating this Noether charge gives

$$\begin{align}
H_{\kappa} & =\dfrac{1}{2}\sum ^{2}_{i=1}\int _{\Sigma _{i}}\mathrm{d}x\mathrm{d}y\left(E_{i,x}^{2}+E_{i,y}^{2}+B_{i}^{2}\right) \\
 & +\dfrac{\mu}{2\kappa}\sum ^{2}_{i=1}\int _{S^{1}_{y}}\mathrm{d}y \left((\dot{\varphi}_{i}-A_{i,t})^{2}+(A_{i,y}-\partial _{y}\varphi _{i})^{2}\right)
\end{align}$$

when imposing the Dirichlet limit $\displaystyle{\kappa\to 0}$, we have

$$\begin{align}
 A_{i}^{\alpha}-\partial ^{\alpha}\varphi _{i} & =-\dfrac{\kappa}{\mu}n_{i,\mu}F_{i}^{\mu \alpha}\to 0 \\
\implies S_{D}^{(\kappa)} & \to 0 \\
H_{\kappa} & \to \dfrac{1}{2}\sum ^{2}_{i=1}\int _{\Sigma _{i}}\mathrm{d}x\mathrm{d}y\left(E_{i,x}^{2}+E_{i,y}^{2}+B_{i}^{2}\right)
\end{align}$$

### Physical Modes

We use the CPS normalization convention throughout. For a positive-frequency solution $\displaystyle{\Psi_I}$, including both its bulk Maxwell component $\displaystyle{\mathcal A_{I,i,\mu}}$ and, when present, its cut component $\displaystyle{\mathcal V_{I,i}}$, let $\displaystyle{X_I}$ be the corresponding tangent vector on the space of solutions,

$$\begin{align}
X_I\cdot\delta A_{i,\mu}&=\mathcal A_{I,i,\mu}, & X_I\cdot\delta\varphi_i&=\mathcal V_{I,i}.
\end{align}$$

Let $\displaystyle{\omega}$ denote the pre-symplectic form on the pre-phase space. After restricting to solutions and quotienting its gauge kernel, the induced symplectic form defines the mode inner product, which can be evaluated on any representatives as

$$\begin{align}
(\Psi_I,\Psi_J)&=iX_J^*\cdot X_I\cdot\omega.
\end{align}$$

A physical positive-frequency basis is required to satisfy $\displaystyle{(\Psi_I,\Psi_J)=\delta_{IJ}}$. Any spatial integral appearing below is only the explicit evaluation of this CPS contraction for the chosen representatives; it is not an independent normalization prescription.

We first solve the two regions separately after taking the strict Dirichlet limit.

#### Local Photon Modes

To solve the local Maxwell modes, introduce the bulk dual scalar $\displaystyle{\phi_i}$ by

$$\begin{align}
E_{i,x} & =-\partial_y\phi_i, & E_{i,y} & =\partial_x\phi_i, & B_i & =\dot\phi_i.
\end{align}$$

The Maxwell equations reduce to

$$\begin{align}
(-\partial_t^2+\partial_x^2+\partial_y^2)\phi_i & =0,
\end{align}$$

and Dirichlet implies $\displaystyle{\partial_x\phi_i|_{\partial I_i}=0}$, which is the Neumann boundary condition. Moreover, in the topologically trivial sector and in the gauge $\displaystyle{\varphi_i=0}$, the boundary contribution to the symplectic form vanishes and the Maxwell symplectic form equals the scalar one,

$$\begin{align}
\omega_{i,\mathrm D}^{\mathrm{local}} & =\int_{\Sigma_i}\mathrm{d}x\mathrm{d}y\,\delta\dot\phi_i\wedge\delta\phi_i.
\end{align}$$

The temporal-Coulomb-gauge representatives of the positive-frequency solutions are

$$\begin{align}
\mathcal{A}_{i,m,n,t}^{\mathrm{D}} & =0, & \mathcal{A}^{\mathrm{D}}_{i,m,n,x} & =\dfrac{q_{m}}{\omega _{m,n}}\Phi ^{\mathrm{D}}_{i,m,n}, & \mathcal{A}^{\mathrm{D}}_{i,m,n,y} & =\dfrac{i}{\omega _{m,n}}\partial _{x}\Phi ^{\mathrm{D}}_{i,m,n}
\end{align}$$

where

$$\begin{align}
\Phi ^{\mathrm{D}}_{i,m,n}(x,y) & =\dfrac{e^{-i\omega _{m,n}t}}{\sqrt{ 2\omega _{m,n} }} Y_{m}(y)u^{N}_{i,n}(x),\quad (m,n)\neq (0,0) \\
Y_{m}(y) & =\dfrac{e^{iq_{m}y}}{\sqrt{ 2\pi R }},\quad m \in \mathbb{Z} \\
u^N_{1,0}(x) & =\dfrac{1}{\sqrt L},\quad u^N_{1,n}(x)=\sqrt{\dfrac{2}{L}}\cos\left(k_n(x+L)\right), & n & \geqslant1, \\
u^N_{2,0}(x) & =\dfrac{1}{\sqrt L},\quad u^N_{2,n}(x) =\sqrt{\dfrac{2}{L}}\cos(k_nx), & n & \geqslant1. \\
q_{m} & =\dfrac{m}{R},\quad k _{n}=\dfrac{n\pi}{L},\quad \omega _{m,n}=\sqrt{ q_{m}^{2}+k _{n}^{2} }
\end{align}$$

For the strict Dirichlet solution $\displaystyle{\Psi_{i,m,n}^{\mathrm D}=(\mathcal A_{i,m,n}^{\mathrm D},0)}$, the second entry denotes the vanishing cut-field component. Let $\displaystyle{X_{i,m,n}^{\mathrm D}}$ be its tangent vector as defined above. Contracting the total local Maxwell pre-symplectic form $\displaystyle{\omega_{\mathrm D}^{\mathrm{local}}=\sum_{\ell=1}^{2}\omega_{\ell,\mathrm D}^{\mathrm{local}}}$, or equivalently its dual-scalar expression in the chosen gauge, gives

$$\begin{align}
(\Psi_{i,m,n}^{\mathrm D},\Psi_{j,r,s}^{\mathrm D}) &=iX_{j,r,s}^{\mathrm D*}\cdot X_{i,m,n}^{\mathrm D} \cdot\omega_{\mathrm D}^{\mathrm{local}} =\delta_{ij}\delta_{mr}\delta_{ns}, & (m,n),(r,s)&\neq(0,0).
\end{align}$$

Thus the factor $\displaystyle{1/\sqrt{2\omega_{m,n}}}$ in $\displaystyle{\Phi_{i,m,n}^{\mathrm D}}$ is fixed by the CPS normalization condition; the unit spatial functions $\displaystyle{Y_m u^N_{i,n}}$ only make that contraction explicit.

Therefore the local physical field is

$$\begin{align}
A_{i,\mu}^{\mathrm{local}} & =\sum_{m,n}{}'\left(a^D_{i,m,n}\mathcal A^D_{i,m,n,\mu}+a^{D\dagger}_{i,m,n}\mathcal A^{D*}_{i,m,n,\mu}\right), & \varphi_i^{\mathrm{local}} & =0,
\end{align}$$

where the prime excludes $\displaystyle{(m,n)=(0,0)}$. Its symplectic form, commutators, and Hamiltonian are

$$\begin{align}
\omega_{i,\mathrm D}^{\mathrm{local}} & =i\sum_{m,n}{}'\delta a^{D\dagger}_{i,m,n}\wedge\delta a^D_{i,m,n}, \\
[a^D_{i,m,n},a^{D\dagger}_{j,r,s}] & =\delta_{ij}\delta_{mr}\delta_{ns}, \\
H_{i,\mathrm D}^{\mathrm{local}} & =\sum_{m,n}{}'\omega_{m,n}\left(a^{D\dagger}_{i,m,n}a^D_{i,m,n}+\dfrac{1}{2}\right).
\end{align}$$

### The Boundary Field $\displaystyle{\varphi_i}$

$\displaystyle{\varphi _{i}}$ has no independent positive-frequency physical modes in the Dirichlet theory. In the topologically trivial sector, define

$$\begin{align}
\bar{\varphi}_{i} & =\dfrac{1}{2\pi R}\int _{S_{y}^{1}}\mathrm{d}y\varphi _{i}(t,y), & w_{i}(t) & =\int _{I_{i}}\mathrm{d}xA_{i,x}(t,x), & \mathcal{W}_{i} & =w_{i}-n_{i}\bar{\varphi}_{i} \\
p_{i} & =\int _{S_{y}^{1}}\mathrm{d}yE_{i,x}=2\pi RE_{i,x}
\end{align}$$

Here the $\displaystyle{x}$ integral defining $\displaystyle{w_i}$ is taken in the increasing-$\displaystyle{x}$ direction. Since $\displaystyle{\delta_\lambda w_i=n_i\overline{\lambda_i|_{\Gamma_i}}}$, $\displaystyle{\mathcal W_i}$ is gauge invariant. The symplectic potential, symplectic form, and Hamiltonian reduce to

$$\begin{align}
\theta _{i,\mathrm{D}} & =p_{i}\delta \mathcal{W}_{i}, & \omega _{i,D} & =\delta p_{i}\wedge \delta \mathcal{W}_{i}, & H_{i,D} & =\dfrac{L}{4\pi R}p_{i}^{2}
\end{align}$$

Consequently

$$\begin{align}
\dot p_i & =0, & \dot{\mathcal W}_i & =\dfrac{L}{\ell_y}p_i, & [\mathcal W_i,p_j] & =i\delta_{ij}.
\end{align}$$

One representative is

$$\begin{align}
\varphi_i & =0, & A_{i,t} & =A_{i,y}=0, & A_{i,x}(t) & =\dfrac{1}{L}\left(\mathcal W_{i,0}+\dfrac{L}{\ell_y}p_it\right).
\end{align}$$

Combining the local and spatially constant sectors, every topologically trivial solution has a representative

$$\begin{align}
A_{i,\mu} & =\sum_{m,n}{}'\left(a^D_{i,m,n}\mathcal A^D_{i,m,n,\mu}+a^{D\dagger}_{i,m,n}\mathcal A^{D*}_{i,m,n,\mu}\right)+\delta_\mu ^{x}\dfrac{1}{L}\left(\mathcal W_{i,0}+\dfrac{L}{\ell_y}p_it\right)+\partial_\mu\lambda_i, \\
\varphi_i & =\lambda_i|_{\Gamma_i},\quad \lambda_i|_{\text{outer endpoint}}=0,
\end{align}$$

and the symplectic form and Hamiltonian are

$$\begin{align}
\omega_{i,\mathrm D} & =i\sum_{m,n}{}'\delta a^{D\dagger}_{i,m,n}\wedge\delta a^D_{i,m,n}+\delta p_i\wedge\delta\mathcal W_i, \\
H_{i,\mathrm D} & =\sum_{m,n}{}'\omega_{m,n}\left(a^{D\dagger}_{i,m,n}a^D_{i,m,n}+\dfrac{1}{2}\right)+\dfrac{L}{2\ell_y}p_i^2.
\end{align}$$

This is the complete Dirichlet phase space for noncompact gauge group $\displaystyle{\mathbb{R}}$, where $\displaystyle{\varphi_i}$ is a single-valued real field. For compact $\displaystyle{U(1)}$ with unit charge, it is only the component with vanishing relative magnetic flux.

For compact $\displaystyle{U(1)}$, the boundary field $\displaystyle{\varphi _{i}}$ may be circle-valued,

$$\begin{align}
\varphi_i(t,y+\ell_y) & =\varphi_i(t,y)+2\pi s_i, & s_i & \in\mathbb Z.
\end{align}$$

Because the gauge transformation is fixed to the identity at the physical outer endpoint, its winding cannot change continuously as one moves across $\displaystyle{I_i}$. It therefore has vanishing winding at the cut as well, and $\displaystyle{s_i}$ is invariant under the allowed gauge transformations. If the outer boundary holonomy is fixed to zero, Dirichlet implies

$$\begin{align}
\oint_{S_y^1}A_{i,y}|_{\Gamma_i}\,\mathrm{d}y & =2\pi s_i, & \int_{\Sigma_i}\mathrm{d}x\mathrm{d}y\,B_i & =2\pi n_i s_i.
\end{align}$$

Thus $\displaystyle{s_i}$ labels disconnected relative magnetic-flux sectors. To define the spatially constant Wilson-line coordinate in a fixed sector, write

$$\begin{align}
\varphi_i(t,y) & =\dfrac{2\pi s_i}{\ell_y}y+\widetilde{\varphi}_i(t,y), & \widetilde{\varphi}_i(t,y+\ell_y) & =\widetilde{\varphi}_i(t,y),
\end{align}$$

and set

$$\begin{align}
\mathcal W_i & =\dfrac{1}{\ell_y}\int_{S_y^1}\mathrm{d}y\left[\int_{I_i}\mathrm{d}x\,A_{i,x}(t,x,y)-n_i\widetilde{\varphi}_i(t,y)\right].
\end{align}$$

This reduces to the definition above when $\displaystyle{s_i=0}$ and is invariant under all gauge transformations allowed within the fixed-$\displaystyle{s_i}$ sector. It is angular, $\displaystyle{\mathcal W_i\sim\mathcal W_i+2\pi}$, so $\displaystyle{p_i}$ is integer-valued after quantization.

A convenient classical representative of the lowest-energy configuration in the $\displaystyle{s_i}$ sector is

$$\begin{align}
\varphi_i^{(s_i)}(y) & =\dfrac{2\pi s_i}{\ell_y}y, & A_{i,t}^{(s_i)} & =A_{i,x}^{(s_i)}=0, & A_{i,y}^{(s_i)}(x) & =\dfrac{2\pi s_i}{\ell_y}\left(1+\dfrac{n_i x}{L}\right).
\end{align}$$

The physical outer endpoint is at $\displaystyle{x=-n_iL}$, so this representative obeys

$$\begin{align}
A_{i,y}^{(s_i)}(-n_iL) & =0, & A_{i,y}^{(s_i)}(0) & =\partial_y\varphi_i^{(s_i)}=\dfrac{2\pi s_i}{\ell_y}.
\end{align}$$

Its field strengths are

$$\begin{align}
E_{i,x}^{(s_i)} & =E_{i,y}^{(s_i)}=0, & B_i^{(s_i)} & =\dfrac{2\pi n_i s_i}{L\ell_y}
\end{align}$$

The magnetic part of the time-translation Noether charge satisfies

$$\begin{align}
\dfrac{1}{2}\int_{\Sigma_i}\mathrm{d}x\mathrm{d}y\,B_i^2 & \geqslant \dfrac{1}{2L\ell_y}\left(\int_{\Sigma_i}\mathrm{d}x\mathrm{d}y\,B_i\right)^2 =\dfrac{2\pi^2s_i^2}{L\ell_y},
\end{align}$$

and the constant magnetic field above saturates the bound.

Every solution in this sector can now be written as the fixed magnetic background plus the homogeneous Dirichlet solutions already found,

$$\begin{align}
A_{i,\mu} & =A_{i,\mu}^{(s_i)} +\sum_{m,n}{}'\left(a^D_{i,m,n}\mathcal A^D_{i,m,n,\mu}+a^{D\dagger}_{i,m,n}\mathcal A^{D*}_{i,m,n,\mu}\right) \\
& \quad+\delta_\mu ^{x}\dfrac{1}{L}\left(\mathcal W_{i,0}+\dfrac{L}{\ell_y}p_it\right)+\partial_\mu\lambda_i, \\
\varphi_i & =\dfrac{2\pi s_i}{\ell_y}y+\lambda_i|_{\Gamma_i},\quad\lambda_i|_{\text{outer endpoint}}=0.
\end{align}$$

Here $\displaystyle{\lambda_i}$ has vanishing winding. At each $\displaystyle{s_{i}}$ the symplectic form reads:

$$\begin{align}
\omega_{i,\mathrm D}^{(s_i)} & =i\sum_{m,n}{}'\delta a^{D\dagger}_{i,m,n}\wedge\delta a^D_{i,m,n} +\delta p_i\wedge\delta\mathcal W_i.
\end{align}$$

The homogeneous fluctuation has vanishing total magnetic flux, so its magnetic cross term with the constant background also vanishes. The time-translation Noether charge is therefore

$$\begin{align}
H_{i,\mathrm D}^{(s_i)} & =\sum_{m,n}{}'\omega_{m,n}\left(a^{D\dagger}_{i,m,n}a^D_{i,m,n}+\dfrac{1}{2}\right) +\dfrac{L}{2\ell_y}p_i^2+\dfrac{2\pi^2s_i^2}{L\ell_y}.
\end{align}$$

Vacuum states are labeled by $\displaystyle{s_{i}}$, and excited states are obtained by applying the creation operators $a^{D\dagger}_{i,m,n}$ to the vacuum, with the spatially constant electric momentum $p_i$ acting on $L^2(U(1))_{\mathcal W_i}$. Consequently, the full compact Dirichlet Hilbert space is the direct sum over these disconnected components,

$$\begin{align}
\mathcal H_{i,\mathrm D}^{U(1)} & =\bigoplus_{s_i\in\mathbb Z}\left[L^2(U(1))_{\mathcal W_i}\otimes\mathcal F_{i,\mathrm D}\right],
\end{align}$$

with $\displaystyle{p_i\in\mathbb Z}$ and the displayed $\displaystyle{s_i^2}$ shift in the energy of each summand.

### Gluing

We supplement the two Dirichlet boundary actions by the gauge-invariant gluing action

$$\begin{align}
S_{\text{int}} & =-\dfrac{\mu \kappa}{2}\int _{S_{y}^{1}}\mathrm{d}t\mathrm{d}y[-(A_{1,t}-\dot{\varphi}_{1}-A_{2,t}+\dot{\varphi}_{2})^{2}+(A_{1,y}-\partial _{y}\varphi _{1}-A_{2,y}+\partial _{y}\varphi _{2})^{2}]
\end{align}$$

#### Cut Equations and Symplectic Form

Define the gauge-invariant cut fields and the two matrices

$$\begin{align}
a_{i,a} & =A_{i,a}-\partial_a\varphi_i, & \boldsymbol a_a & =(a_{1,a},a_{2,a})^{\mathrm T}, \\
M_\kappa & =
\begin{pmatrix}
\kappa^{-1}+\kappa & -\kappa \\
-\kappa & \kappa^{-1}+\kappa
\end{pmatrix}, &
N & =
\begin{pmatrix}
1&0\\
0&-1
\end{pmatrix}.
\end{align}$$

The complete cut action is

$$\begin{align}
S_{\partial,\kappa} & =S_{\mathrm D}^{(\kappa)}+S_{\mathrm{int}} =-\dfrac{\mu}{2}\int_{\Gamma}\mathrm{d}t\mathrm{d}y\, \gamma^{ab}\boldsymbol a_a^{\mathrm T}M_\kappa\boldsymbol a_b.
\end{align}$$

Equivalently, for $\displaystyle{a_{\pm,a}=(a_{1,a}\pm a_{2,a})/\sqrt2}$,

$$\begin{align}
S_{\partial,\kappa} &=-\dfrac{\mu}{2}\int_\Gamma\mathrm{d}t\mathrm{d}y\, \gamma^{ab} \left[ \dfrac{1}{\kappa}a_{+,a}a_{+,b} +\left(\dfrac{1}{\kappa}+2\kappa\right)a_{-,a}a_{-,b} \right].
\end{align}$$

Thus the common dressed cut field has coefficient $\displaystyle{\kappa^{-1}}$, whereas the relative dressed field has coefficient $\displaystyle{\kappa^{-1}+2\kappa}$. Both are positive for $\displaystyle{\kappa>0}$; in the strong limit the relative combination becomes stiff while the common combination becomes soft. Combining the cut variation with the two bulk Maxwell variations gives

$$\begin{align}
n_{i,\mu}F_i^{\mu a} +\mu\sum_{j=1}^{2}(M_\kappa)_{ij}a_j^a & =0, \\
\partial_a\left(\sum_{j=1}^{2}(M_\kappa)_{ij}a_j^a\right) & =0.
\end{align}$$

The second equation follows from the tangential divergence of the first one and the bulk Maxwell equations. The momenta conjugate to the two boundary fields are

$$\begin{align}
\pi_{\varphi_i} & =\mu\sum_{j=1}^{2}(M_\kappa)_{ij} (\dot\varphi_j-A_{j,t}), & n_iE_{i,x}+\pi_{\varphi_i} & =0.
\end{align}$$

Consequently, the pre-symplectic potential and the time-translation Noether charge are

$$\begin{align}
\theta_\kappa & =\sum_{i=1}^{2}\int_{\Sigma_i}\mathrm{d}x\mathrm{d}y \left(E_{i,x}\delta A_{i,x}+E_{i,y}\delta A_{i,y}\right) +\sum_{i=1}^{2}\int_{S_y^1}\mathrm{d}y\,\pi_{\varphi_i}\delta\varphi_i, \\
H_\kappa & =\dfrac12\sum_{i=1}^{2}\int_{\Sigma_i}\mathrm{d}x\mathrm{d}y \left(E_{i,x}^2+E_{i,y}^2+B_i^2\right) \\
& \quad+\dfrac{\mu}{2}\int_{S_y^1}\mathrm{d}y \left[ (\boldsymbol A_t-\dot{\boldsymbol\varphi})^{\mathrm T}
M_\kappa(\boldsymbol A_t-\dot{\boldsymbol\varphi}) +(\boldsymbol A_y-\partial_y\boldsymbol\varphi)^{\mathrm T}
M_\kappa(\boldsymbol A_y-\partial_y\boldsymbol\varphi) \right].
\end{align}$$

#### Dual-Scalar Boundary Problem

For a positive-frequency component, write

$$\begin{align}
\phi_i(t,x,y) & =e^{-i\omega t}Y_m(y)f_i(x), & \omega^2 & =q_m^2+k^2,
\end{align}$$

and use the temporal--Coulomb representative

$$\begin{align}
A_{i,t} & =0, & A_{i,x} & =\dfrac{q_m}{\omega}\phi_i, & A_{i,y} & =\dfrac{i}{\omega}\partial_x\phi_i.
\end{align}$$

Let $\displaystyle{\boldsymbol f=(f_1(0),f_2(0))^{\mathrm T}}$ and $\displaystyle{\boldsymbol f'=(f_1'(0),f_2'(0))^{\mathrm T}}$. Eliminating the Fourier coefficients of $\displaystyle{\varphi_i}$ from the temporal and spatial cut equations gives the matrix-valued Wentzell boundary condition

$$\begin{align}
\mu M_\kappa\boldsymbol f' & =k^2N\boldsymbol f, & f_1'(-L) & =0, & f_2'(L) & =0.
\end{align}$$

In the same gauge, the boundary-field component associated with a bulk mode is fixed by

$$\begin{align}
\varphi_{i;m}|_{\Gamma_i} & =-\dfrac{q_m}{\mu\omega}
\sum_{j=1}^{2}(M_\kappa^{-1})_{ij}n_jf_j(0)\, e^{-i\omega t}Y_m(y).
\end{align}$$

Thus $\displaystyle{\varphi_i}$ is still not an independent positive-frequency oscillator at finite $\displaystyle{\kappa}$: since $\displaystyle{M_\kappa}$ is invertible, a solution with vanishing bulk field strength has $\displaystyle{a_{i,a}=0}$ and is gauge. Nevertheless, the cut fields contribute to the norm of a coupled bulk--boundary mode.

Indeed, after using the boundary constraint, the full pre-symplectic form can be written in the dual variables as

$$\begin{align}
\omega_\kappa & =\sum_{i=1}^{2}\int_{\Sigma_i}\mathrm{d}x\mathrm{d}y\, \delta\dot\phi_i\wedge\delta\phi_i \\
& \quad+\dfrac{1}{\mu}\int_{S_y^1}\mathrm{d}y \sum_{i,j=1}^{2} (NM_\kappa^{-1}N)_{ij} \delta\dot\phi_i|_{\Gamma_i}\wedge\delta\phi_j|_{\Gamma_j}.
\end{align}$$

The second line is the cut contribution. It is essential both for normalization and for the strong-gluing limit.

#### Finite-$\displaystyle{\kappa}$ Modes

Use reflection parity

$$\begin{align}
f_{\sigma,2}(x) & =\sigma f_{\sigma,1}(-x), & \sigma & =\pm1,
\end{align}$$

and take

$$\begin{align}
\Phi_{\sigma,m,n,1} & =\mathcal N_{\sigma,m,n}e^{-i\omega_{\sigma,m,n}t} Y_m(y)\cos\left[k_{\sigma,n}(x+L)\right], \\
\Phi_{\sigma,m,n,2} & =\sigma\mathcal N_{\sigma,m,n}e^{-i\omega_{\sigma,m,n}t} Y_m(y)\cos\left[k_{\sigma,n}(L-x)\right], \\
\omega_{\sigma,m,n}^2 & =q_m^2+k_{\sigma,n}^2.
\end{align}$$

The parity-reduced cut equation is

$$\begin{align}
\mu c_\sigma f_{\sigma,1}'(0) & =k_{\sigma,n}^2f_{\sigma,1}(0), & c_+ & =\dfrac{1}{\kappa}+2\kappa, & c_- & =\dfrac{1}{\kappa}.
\end{align}$$

Both parities contain the exact solution

$$\begin{align}
k_{\sigma,0} & =0.
\end{align}$$

For $\displaystyle{n=1,2,\ldots}$, the remaining roots obey

$$\begin{align}
\tan(k_{+,n}L) & =-\dfrac{\kappa k_{+,n}}{\mu(1+2\kappa^2)}, \\
\tan(k_{-,n}L) & =-\dfrac{\kappa k_{-,n}}{\mu},
\end{align}$$

with one and only one root in each interval

$$\begin{align}
\dfrac{(n-\frac12)\pi}{L}
<k_{\sigma,n}
<\dfrac{n\pi}{L}.
\end{align}$$

Indeed, writing the two equations as $\displaystyle{\tan(kL)=-\alpha_\sigma k}$, with

$$\begin{align}
\alpha_+&=\dfrac{\kappa}{\mu(1+2\kappa^2)}, & \alpha_-&=\dfrac{\kappa}{\mu},
\end{align}$$

the function $\displaystyle{F_\sigma(k)=\tan(kL)+\alpha_\sigma k}$ has $\displaystyle{F_\sigma'(k)=L\sec^2(kL)+\alpha_\sigma>0}$ on each displayed interval, rises from $\displaystyle{-\infty}$ to a positive value, and hence has exactly one root. There are no additional roots with negative $\displaystyle{k^2}$: setting $\displaystyle{k=i\lambda}$ with $\displaystyle{\lambda>0}$ would require $\displaystyle{\tanh(\lambda L)=-\alpha_\sigma\lambda}$, which has no solution.

The cut Stueckelberg component belonging to this mode is

$$\begin{align}
\mathcal V_{\sigma,m,n,i}(t,y) & =-\dfrac{n_iq_m}{\mu\omega_{\sigma,m,n}c_\sigma} \Phi_{\sigma,m,n,i}(t,0,y).
\end{align}$$

In particular, $\displaystyle{\mathcal V_{\sigma,0,n}=0}$ for every positive-frequency mode with $\displaystyle{q_m=0}$.

The physical mode is the coupled bulk--cut solution

$$\begin{align}
\Psi_{\sigma,m,n}^{(\kappa)} &=\left( \{\mathcal A_{\sigma,m,n,i,\mu}\}_{i=1,2};
\{\mathcal V_{\sigma,m,n,i}\}_{i=1,2} \right).
\end{align}$$

Let $\displaystyle{X_{\sigma,m,n}^{(\kappa)}}$ be the corresponding tangent vector on the reduced solution space. Evaluating the full pre-symplectic form in the dual variables gives

$$\begin{align}
&(\Psi_{\sigma,m,n}^{(\kappa)},\Psi_{\tau,r,s}^{(\kappa)})_\kappa =iX_{\tau,r,s}^{(\kappa)*}\cdot X_{\sigma,m,n}^{(\kappa)}\cdot\omega_\kappa \\
&\quad=\delta_{\sigma\tau}\delta_{mr} (\omega_{\sigma,m,n}+\omega_{\tau,r,s}) \mathcal N_{\tau,r,s}^*\mathcal N_{\sigma,m,n} \left[ 2\int_{-L}^{0}\mathrm{d}x\, f_{\sigma,n}(x)f_{\sigma,s}(x) +\dfrac{2}{\mu c_\sigma} f_{\sigma,n}(0)f_{\sigma,s}(0) \right],
\end{align}$$

where $\displaystyle{f_{\sigma,n}(x)=\cos[k_{\sigma,n}(x+L)]}$ on $\displaystyle{I_1}$. The first term in brackets comes from the bulk part of $\displaystyle{\omega_\kappa}$ and the second from its cut part. For two distinct roots in the same parity sector, the equations of motion and the cut boundary condition imply, by integration by parts,

$$\begin{align}
2\int_{-L}^{0}\mathrm{d}x\, f_{\sigma,n}(x)f_{\sigma,s}(x) +\dfrac{2}{\mu c_\sigma} f_{\sigma,n}(0)f_{\sigma,s}(0) &=0, & n&\neq s.
\end{align}$$

Hence distinct roots are orthogonal with respect to the CPS inner product; the displayed spatial relation is a consequence of the CPS contraction and the boundary equations, not a separate normalization definition. On the diagonal, the same contraction gives

$$\begin{align}
(\Psi_{\sigma,m,n}^{(\kappa)},\Psi_{\sigma,m,n}^{(\kappa)})_\kappa &=2\omega_{\sigma,m,n}|\mathcal N_{\sigma,m,n}|^2 \mathcal I_{\sigma,n},
\end{align}$$

where the CPS norm factor is

$$\begin{align}
\mathcal I_{\sigma,n} & =L+\dfrac{\sin(2k_{\sigma,n}L)}{2k_{\sigma,n}} +\dfrac{2\cos^2(k_{\sigma,n}L)}{\mu c_\sigma},
\end{align}$$

with the $\displaystyle{k_{\sigma,0}=0}$ value

$$\begin{align}
\mathcal I_{\sigma,0} & =2L+\dfrac{2}{\mu c_\sigma}.
\end{align}$$

Imposing the CPS normalization $\displaystyle{(\Psi_{\sigma,m,n}^{(\kappa)},\Psi_{\sigma,m,n}^{(\kappa)})_\kappa=1}$ fixes

$$\begin{align}
\mathcal N_{\sigma,m,n} & =\dfrac{1}{\sqrt{2\omega_{\sigma,m,n}\mathcal I_{\sigma,n}}}.
\end{align}$$

The last term in $\displaystyle{\mathcal I_{\sigma,n}}$ is therefore required by the cut contribution to the pre-symplectic form. Omitting it would fail to normalize the coupled solution $\displaystyle{(\mathcal A,\mathcal V)}$. With the Maxwell representatives constructed from $\displaystyle{\Phi_{\sigma,m,n,i}}$ as above, the full coupled fields expand as

$$\begin{align}
A_{i,\mu}^{\mathrm{osc}} & =\sum_{\sigma,m,n}{}' \left( b_{\sigma,m,n}\mathcal A_{\sigma,m,n,i,\mu} +b_{\sigma,m,n}^{\dagger}\mathcal A_{\sigma,m,n,i,\mu}^{*} \right), \\
\varphi_i^{\mathrm{osc}} & =\sum_{\sigma,m,n}{}' \left( b_{\sigma,m,n}\mathcal V_{\sigma,m,n,i} +b_{\sigma,m,n}^{\dagger}\mathcal V_{\sigma,m,n,i}^{*} \right),
\end{align}$$

where the prime excludes $\displaystyle{m=0,n=0}$ for both parities. The oscillator symplectic form and Noether charge are

$$\begin{align}
\omega_\kappa^{\mathrm{osc}} & =i\sum_{\sigma,m,n}{}' \delta b_{\sigma,m,n}^{\dagger}\wedge\delta b_{\sigma,m,n}, \\
[b_{\sigma,m,n},b_{\tau,r,s}^{\dagger}] &=\delta_{\sigma\tau}\delta_{mr}\delta_{ns}, \\
H_\kappa^{\mathrm{osc}} & =\sum_{\sigma,m,n}{}' \omega_{\sigma,m,n} \left(b_{\sigma,m,n}^{\dagger}b_{\sigma,m,n}+\dfrac12\right).
\end{align}$$

#### Spatially Constant Electric Sector

The spatially constant dressed Wilson-line pairs remain present at finite $\displaystyle{\kappa}$. Define

$$\begin{align}
p_\pm & =\dfrac{p_1\pm p_2}{\sqrt2}, & \mathcal W_\pm & =\dfrac{\mathcal W_1\pm\mathcal W_2}{\sqrt2}.
\end{align}$$

Their symplectic form and exact finite-$\displaystyle{\kappa}$ Noether charge are

$$\begin{align}
\omega_{\kappa}^{\mathrm{electric}} & =\delta p_+\wedge\delta\mathcal W_+ +\delta p_-\wedge\delta\mathcal W_-, \\
H_{\kappa}^{\mathrm{electric}} & =\dfrac{1}{2\ell_y} \left[ \left(L+\dfrac{\kappa}{\mu(1+2\kappa^2)}\right)p_+^2 +\left(L+\dfrac{\kappa}{\mu}\right)p_-^2 \right].
\end{align}$$

The $\displaystyle{\kappa}$-dependent terms are the kinetic energy stored on the cut. In particular, the difference $\displaystyle{p_-}$ is progressively suppressed as the gluing becomes strong.

#### Compact $\displaystyle{U(1)}$ Sectors at Finite $\displaystyle{\kappa}$

Let

$$\begin{align}
\boldsymbol u & =\dfrac{2\pi}{\ell_y}
\begin{pmatrix}s_1\\
s_2\end{pmatrix},
& \boldsymbol x & =
\begin{pmatrix}n_1B_1\\
n_2B_2\end{pmatrix}.
\end{align}$$

For the static lowest-energy configuration in the fixed $\displaystyle{(s_1,s_2)}$ component, the cut equations give

$$\begin{align}
\boldsymbol x & =\mu M_\kappa (I+\mu LM_\kappa)^{-1}\boldsymbol u, \\
\boldsymbol A_y(0)-\boldsymbol u & =-(I+\mu LM_\kappa)^{-1}\boldsymbol u.
\end{align}$$

An explicit representative on the two intervals is

$$\begin{align}
\varphi_i^{(s_i)}(y) & =\dfrac{2\pi s_i}{\ell_y}y, & A_{i,t}^{(s_i)} & =A_{i,x}^{(s_i)}=0, \\
A_{i,y}^{(s_i)}(x) & =x_i(L+n_ix), & B_i^{(s_i)} & =n_ix_i.
\end{align}$$

The symplectic form within a fixed component has no $\displaystyle{\delta s_i}$ term. The background contribution to the time-translation Noether charge is

$$\begin{align}
H_{\kappa}^{(s_1,s_2)} & =\dfrac{\pi^2}{\ell_y} \left[ \dfrac{\mu(s_1+s_2)^2}{\kappa+\mu L} +\dfrac{\mu(1+2\kappa^2)(s_1-s_2)^2} {\kappa+\mu L(1+2\kappa^2)} \right].
\end{align}$$

Because this background is the stationary point of the quadratic energy at fixed $\displaystyle{(s_1,s_2)}$, its cross term with every homogeneous fluctuation vanishes. The complete finite-$\displaystyle{\kappa}$ Noether charge is therefore the sum

$$\begin{align}
H_\kappa & =H_\kappa^{\mathrm{osc}} +H_\kappa^{\mathrm{electric}} +H_\kappa^{(s_1,s_2)}
\end{align}$$

within each compact $\displaystyle{U(1)}$ component. At finite $\displaystyle{\kappa}$ the corresponding Hilbert space is

$$\begin{align}
\mathcal H_\kappa^{U(1)} &=\bigoplus_{(s_1,s_2)\in\mathbb Z^2} \left[ L^2(U(1)^2)_{(\mathcal W_1,\mathcal W_2)} \otimes\mathcal F_\kappa \right],
\end{align}$$

where $\displaystyle{p_1,p_2\in\mathbb Z}$ and $\displaystyle{\mathcal F_\kappa}$ is generated by the normalized $\displaystyle{b_{\sigma,m,n}^{\dagger}}$.

#### The $\displaystyle{\kappa\to0}$ Limit

For both parities,

$$\begin{align}
c_\sigma & \longrightarrow\infty, & k_{\sigma,n} & \longrightarrow\dfrac{n\pi}{L}, & \mathcal V_{\sigma,m,n,i} & \longrightarrow0.
\end{align}$$

The cut term in $\displaystyle{\mathcal I_{\sigma,n}}$ vanishes, and the normalized parity modes become the two unitary combinations of the decoupled interval modes,

$$\begin{align}
b_{+,m,n} & \longrightarrow \dfrac{a^D_{1,m,n}+(-1)^na^D_{2,m,n}}{\sqrt2}, \\
b_{-,m,n} & \longrightarrow \dfrac{a^D_{1,m,n}-(-1)^na^D_{2,m,n}}{\sqrt2}.
\end{align}$$

The spatially constant Hamiltonian becomes

$$\begin{align}
H_{\kappa}^{\mathrm{electric}} & \longrightarrow \dfrac{L}{2\ell_y}(p_1^2+p_2^2),
\end{align}$$

and the winding-sector energy becomes

$$\begin{align}
H_{\kappa}^{(s_1,s_2)} & \longrightarrow \dfrac{2\pi^2}{L\ell_y}(s_1^2+s_2^2).
\end{align}$$

Thus the $\displaystyle{\kappa\to0}$ theory is exactly the pair of decoupled Dirichlet Maxwell theories, including their independent electric and relative magnetic-flux sectors.

#### The $\displaystyle{\kappa\to\infty}$ Limit

The ordinary oscillator roots separate into

$$\begin{align}
k_{+,n} & \longrightarrow\dfrac{n\pi}{L}, & n& =0,1,2,\ldots, \\
k_{-,n} & \longrightarrow\dfrac{(n-\frac12)\pi}{L}, & n& =1,2,\ldots.
\end{align}$$

They are precisely the even and odd global Neumann modes of the bulk dual scalar on $\displaystyle{[-L,L]}$,

$$\begin{align}
K_r & =\dfrac{r\pi}{2L}, & b_{+,m,n} & \longrightarrow c_{m,2n}, & b_{-,m,n} & \longrightarrow c_{m,2n-1}.
\end{align}$$

The $\displaystyle{\sigma=-1,n=0}$ tower is not included in this interlacing. For $\displaystyle{m\neq0}$ it has

$$\begin{align}
k_{-,0} & =0, & \omega_{-,m,0} & =|q_m|, & \mathcal I_{-,0} & =2L+\dfrac{2\kappa}{\mu}.
\end{align}$$

Its normalized bulk amplitude scales as $\displaystyle{\kappa^{-1/2}}$, whereas its common boundary component scales as $\displaystyle{\kappa^{1/2}}$. In the temporal--Coulomb representative, define

$$\begin{align}
\chi_\kappa(t,y) & =\sqrt{\dfrac{2\mu}{\kappa}}\, \dfrac{\varphi_1(t,y)+\varphi_2(t,y)}{2}.
\end{align}$$

The CPS-normalized $\displaystyle{\sigma=-1,n=0}$ modes then converge to the positive-frequency massless scalar modes of $\displaystyle{\chi}$ on $\displaystyle{S_y^1}$,

$$\begin{align}
\chi_m(t,y) & =-\operatorname{sgn}(q_m) \dfrac{e^{-i|q_m|t}}{\sqrt{2|q_m|}}Y_m(y), & m& \neq0.
\end{align}$$

The limiting cut action, symplectic form, and Noether charge are

$$\begin{align}
S_\chi & =\dfrac12\int\mathrm{d}t\mathrm{d}y \left[(\dot\chi)^2-(\partial_y\chi)^2\right], \\
\omega_\chi & =\int_{S_y^1}\mathrm{d}y\, \delta\dot\chi\wedge\delta\chi, \\
H_\chi & =\dfrac12\int_{S_y^1}\mathrm{d}y \left[(\dot\chi)^2+(\partial_y\chi)^2\right].
\end{align}$$

If $\displaystyle{X_m^\chi}$ is the tangent vector generated by $\displaystyle{\chi_m}$, then the coefficient in $\displaystyle{\chi_m}$ is equivalently characterized by

$$\begin{align}
iX_r^{\chi*}\cdot X_m^\chi\cdot\omega_\chi &=\delta_{mr}, & m,r&\neq0.
\end{align}$$

Thus the normalization of the limiting interface field is again inherited from the limiting CPS form.

Its spatially constant canonical pair comes from the difference electric sector. With

$$\begin{align}
P_\chi & =-\sqrt{\dfrac{\kappa}{\mu}}\,p_-, & Q_\chi & =-\sqrt{\dfrac{\mu}{\kappa}}\,\mathcal W_-,
\end{align}$$

one has

$$\begin{align}
\delta p_-\wedge\delta\mathcal W_- & =\delta P_\chi\wedge\delta Q_\chi, & \dfrac{1}{2\ell_y}\left(L+\dfrac{\kappa}{\mu}\right)p_-^2 & \longrightarrow\dfrac{P_\chi^2}{2\ell_y}.
\end{align}$$

For a noncompact gauge group, $\displaystyle{p_-}$ is continuous and this scaling produces the complete spatially constant canonical pair of $\displaystyle{\chi}$. For compact $\displaystyle{U(1)}$ with fixed unit charge, however, $\displaystyle{p_1,p_2\in\mathbb Z}$; finite energy in the strict strong limit then forces $\displaystyle{p_-=0}$. Thus the nonzero Fourier oscillators of $\displaystyle{\chi}$ survive, but its nonzero spatially constant momentum does not survive this fixed-charge compact limit.

The orthogonal electric combination gives the global Maxwell pair

$$\begin{align}
p_1=p_2=:p, \qquad \mathcal W=\mathcal W_1+\mathcal W_2,
\end{align}$$

with

$$\begin{align}
\omega_{\mathrm{global}}^{\mathrm{electric}} & =\delta p\wedge\delta\mathcal W, & H_{\mathrm{global}}^{\mathrm{electric}} & =\dfrac{L}{\ell_y}p^2.
\end{align}$$

The winding-sector energy has the strong limit

$$\begin{align}
H_{\kappa}^{(s_1,s_2)} & \longrightarrow \dfrac{\pi^2(s_1-s_2)^2}{L\ell_y}.
\end{align}$$

The integer

$$\begin{align}
S & =s_1-s_2
\end{align}$$

becomes the global magnetic-flux label,

$$\begin{align}
\int_{[-L,L]\times S_y^1}\mathrm{d}x\mathrm{d}y\,B & =2\pi S,
\end{align}$$

whose constant-field energy on the length-$\displaystyle{2L}$ interval is exactly $\displaystyle{\pi^2S^2/(L\ell_y)}$. The common winding

$$\begin{align}
C & =s_1+s_2
\end{align}$$

belongs instead to the interface scalar. Its winding is

$$\begin{align}
\chi_\kappa(y+\ell_y)-\chi_\kappa(y) & =\pi\sqrt{\dfrac{2\mu}{\kappa}}\,C.
\end{align}$$

For fixed $\displaystyle{C}$, its winding and the first term of $\displaystyle{H_\kappa^{(s_1,s_2)}}$ both vanish in the strong limit. A finite nonzero interface winding $\displaystyle{\Delta\chi}$ instead requires a sequence $\displaystyle{C_\kappa\sim\sqrt\kappa}$ satisfying

$$\begin{align}
\pi\sqrt{\dfrac{2\mu}{\kappa}}\,C_\kappa & \longrightarrow\Delta\chi, & \dfrac{\pi^2\mu C_\kappa^2}{\ell_y(\kappa+\mu L)} & \longrightarrow\dfrac{(\Delta\chi)^2}{2\ell_y},
\end{align}$$

which is exactly the winding energy obtained from $\displaystyle{H_\chi}$. At every finite $\displaystyle{\kappa}$, integrality gives the correlation $\displaystyle{C\equiv S\pmod2}$; after the rescaling, the allowed $\displaystyle{\Delta\chi}$ values become dense while retaining this finite-$\displaystyle{\kappa}$ ancestry.

Therefore the action written above has two distinct strong-limit interpretations:

- If the limit is taken with the unscaled gauge-invariant bulk field strengths and dressed cut fields held uniformly bounded as $\displaystyle{\kappa\to\infty}$, the common cut symplectic form collapses and its null directions are quotiented, leaving the global Dirichlet Maxwell theory.
- If one follows normalized finite-$\displaystyle{\kappa}$ modes, the $\displaystyle{\kappa^{1/2}}$ boundary scaling must be retained. The local limit is then the global Dirichlet Maxwell theory together with the massless interface field $\displaystyle{\chi}$. For the noncompact theory this includes its full spatially constant canonical pair; for compact $\displaystyle{U(1)}$, its global momentum and winding content is instead governed by the fixed-charge and winding scalings described above.

Thus the cut fields are not passive bookkeeping variables: their difference enforces the global Maxwell matching, while their common normalized component carries the additional interface theory generated by this particular $\displaystyle{\kappa}$ scaling.

#### Maxwell Theory on the Uncut Spacetime

To decide which of these two limits represents gluing to pure Maxwell theory, consider Maxwell theory directly on $\displaystyle{\mathbb R_t\times[-L,L]_x\times S_y^1}$, with no interface and with strict Dirichlet data at $\displaystyle{x=\pm L}$. Its bulk dual scalar obeys

$$\begin{align}
(-\partial_t^2+\partial_x^2+\partial_y^2)\phi&=0, & \partial_x\phi|_{x=\pm L}&=0.
\end{align}$$

A convenient unit spatial basis on the length-$\displaystyle{2L}$ interval is

$$\begin{align}
u^{N,(2L)}_0(x)&=\dfrac{1}{\sqrt{2L}}, \\
u^{N,(2L)}_r(x)&=\dfrac{1}{\sqrt L} \cos\left[K_r(x+L)\right], & K_r&=\dfrac{r\pi}{2L}, & r&=1,2,\ldots.
\end{align}$$

The corresponding positive-frequency scalar and temporal--Coulomb Maxwell representatives are

$$\begin{align}
\Phi^{\mathrm{global}}_{m,r} &=\dfrac{e^{-i\omega_{m,r}t}}{\sqrt{2\omega_{m,r}}} Y_m(y)u^{N,(2L)}_r(x), & \omega_{m,r}^2&=q_m^2+K_r^2, \\
\mathcal A^{\mathrm{global}}_{m,r,t}&=0, & \mathcal A^{\mathrm{global}}_{m,r,x} &=\dfrac{q_m}{\omega_{m,r}}\Phi^{\mathrm{global}}_{m,r}, & \mathcal A^{\mathrm{global}}_{m,r,y} &=\dfrac{i}{\omega_{m,r}}\partial_x\Phi^{\mathrm{global}}_{m,r}.
\end{align}$$

Let $\displaystyle{\Psi_{m,r}^{\mathrm{global}}=\mathcal A_{m,r}^{\mathrm{global}}}$ and let $\displaystyle{X_{m,r}^{\mathrm{global}}}$ be its solution-space tangent vector. The global Maxwell pre-symplectic form has the equivalent dual-scalar expression

$$\begin{align}
\omega_{\mathrm{global}}^{\mathrm{local}} &=\int_{[-L,L]\times S_y^1}\mathrm{d}x\mathrm{d}y\, \delta\dot\phi\wedge\delta\phi.
\end{align}$$

The factor $\displaystyle{1/\sqrt{2\omega_{m,r}}}$ is fixed by requiring

$$\begin{align}
(\Psi_{m,r}^{\mathrm{global}},\Psi_{n,s}^{\mathrm{global}}) &=iX_{n,s}^{\mathrm{global}*}\cdot X_{m,r}^{\mathrm{global}} \cdot\omega_{\mathrm{global}}^{\mathrm{local}} =\delta_{mn}\delta_{rs}.
\end{align}$$

Thus it is the CPS contraction, rather than the normalization of $\displaystyle{u_r^{N,(2L)}}$ by itself, that normalizes the physical Maxwell mode. Excluding $\displaystyle{(m,r)=(0,0)}$, the global oscillator field and its CPS data are

$$\begin{align}
A_\mu^{\mathrm{global,osc}} &=\sum_{m,r}{}' \left(c_{m,r}\mathcal A^{\mathrm{global}}_{m,r,\mu} +c_{m,r}^\dagger\mathcal A^{\mathrm{global}*}_{m,r,\mu}\right), \\
\omega_{\mathrm{global}}^{\mathrm{osc}} &=i\sum_{m,r}{}'\delta c_{m,r}^\dagger\wedge\delta c_{m,r}, \\
H_{\mathrm{global}}^{\mathrm{osc}} &=\sum_{m,r}{}'\omega_{m,r} \left(c_{m,r}^\dagger c_{m,r}+\dfrac12\right).
\end{align}$$

The spatially constant electric sector contains only one canonical pair. With gauge transformations fixed to the identity at both physical endpoints, define

$$\begin{align}
p&=\int_{S_y^1}\mathrm{d}y\,E_x, & \mathcal W &=\dfrac{1}{\ell_y}\int_{S_y^1}\mathrm{d}y \int_{-L}^{L}\mathrm{d}x\,A_x.
\end{align}$$

Then

$$\begin{align}
\omega_{\mathrm{global}}^{\mathrm{electric}} &=\delta p\wedge\delta\mathcal W, & H_{\mathrm{global}}^{\mathrm{electric}} &=\dfrac{L}{\ell_y}p^2.
\end{align}$$

For compact $\displaystyle{U(1)}$, the fixed trivializations at $\displaystyle{x=\pm L}$ admit a relative magnetic class $\displaystyle{S\in\mathbb Z}$. A two-patch representative of its lowest-energy connection is

$$\begin{align}
B^{(S)}&=\dfrac{\pi S}{L\ell_y}, & A_{1,y}^{(S)}(x)&=B^{(S)}(x+L), & -L&\leqslant x\leqslant0, \\
A_{2,y}^{(S)}(x)&=B^{(S)}(x-L), & 0&\leqslant x\leqslant L,
\end{align}$$

with all other components vanishing. At the overlap,

$$\begin{align}
A_{1,y}^{(S)}(0)-A_{2,y}^{(S)}(0) &=\dfrac{2\pi S}{\ell_y} =\partial_y\left(\dfrac{2\pi S}{\ell_y}y\right).
\end{align}$$

Thus the two potentials define a single connection on the uncut cylinder, compatible with the fixed boundary trivializations and with transition function of winding $\displaystyle{S}$, and

$$\begin{align}
\int_{[-L,L]\times S_y^1}\mathrm{d}x\mathrm{d}y\,B^{(S)} &=2\pi S, & H_{\mathrm{global}}^{(S)} &=\dfrac{\pi^2S^2}{L\ell_y}.
\end{align}$$

Every solution in this component is this fixed background plus the global homogeneous modes and the electric pair. The homogeneous magnetic fluctuation has vanishing total flux, so its cross term with the background vanishes. Consequently,

$$\begin{align}
\omega_{\mathrm{global}}^{(S)} &=i\sum_{m,r}{}'\delta c_{m,r}^\dagger\wedge\delta c_{m,r} +\delta p\wedge\delta\mathcal W, \\
H_{\mathrm{global}}^{(S)} &=H_{\mathrm{global}}^{\mathrm{osc}} +\dfrac{L}{\ell_y}p^2 +\dfrac{\pi^2S^2}{L\ell_y}, \\
\mathcal H_{\mathrm{global}}^{U(1)} &=\bigoplus_{S\in\mathbb Z} \left[L^2(U(1))_{\mathcal W}\otimes\mathcal F_{\mathrm{global}}\right], \qquad p\in\mathbb Z.
\end{align}$$

There is no independent interface scalar and no second electric canonical pair in this directly constructed global theory.

#### Selecting the Strong-Gluing Limit

The finite-$\displaystyle{\kappa}$ cut equations themselves reproduce the smooth global matching conditions when the unscaled gauge-invariant fields remain bounded. In the common and relative bases they read

$$\begin{align}
\dfrac{n_{1,\mu}F_1^{\mu a}+n_{2,\mu}F_2^{\mu a}}{\sqrt2} +\dfrac{\mu}{\kappa}a_+^a&=0, \\
\dfrac{n_{1,\mu}F_1^{\mu a}-n_{2,\mu}F_2^{\mu a}}{\sqrt2} +\mu\left(\dfrac1\kappa+2\kappa\right)a_-^a&=0.
\end{align}$$

Since $\displaystyle{n_1=+1}$ and $\displaystyle{n_2=-1}$, the first equation gives continuity of the normal components $\displaystyle{F^{xa}}$, and the second gives $\displaystyle{a_-^a\to0}$, namely equality of the two tangential gauge potentials up to their transition function. Together these are the smooth global matching conditions. The remaining comparisons are exact:

First, the ordinary photon modes obey $\displaystyle{c_{m,2n}=\lim_{\kappa\to\infty}b_{+,m,n}}$ and $\displaystyle{c_{m,2n-1}=\lim_{\kappa\to\infty}b_{-,m,n}}$. The exceptional $\displaystyle{b_{-,m,0}}$ family has no global counterpart.

Second, the global electric pair is the pullback to $\displaystyle{p_-=0}$,

$$\begin{align}
p_1=p_2=p, &\qquad \mathcal W=\mathcal W_1+\mathcal W_2, \\
\left.\omega_\kappa^{\mathrm{electric}}\right|_{p_-=0} &=\delta p\wedge\delta\mathcal W.
\end{align}$$

The relative coordinate $\displaystyle{\mathcal W_-}$ is then a null direction and must be quotiented.

Third, in the compact theory, the finite-$\displaystyle{\kappa}$ background approaches

$$\begin{align}
\boldsymbol x&\longrightarrow
\begin{pmatrix}B^{(S)}\\
-B^{(S)}\end{pmatrix}, &
H_\kappa^{(s_1,s_2)}&\longrightarrow \dfrac{\pi^2S^2}{L\ell_y}, & S&=s_1-s_2,
\end{align}$$

and hence becomes exactly the two-patch global representative above. Its transition function is $\displaystyle{\varphi_1-\varphi_2}$, so only $\displaystyle{S}$ is physical. The diagonal shift

$$\begin{align}
(s_1,s_2)&\longmapsto(s_1+r,s_2+r), & r&\in\mathbb Z,
\end{align}$$

changes the two cut trivializations without changing the global connection. Hence all $\displaystyle{C=s_1+s_2}$ related by $\displaystyle{C\mapsto C+2r}$ are identified in the global theory. In particular, the sequences $\displaystyle{C_\kappa\sim\sqrt\kappa}$ used to retain finite $\displaystyle{\chi}$ winding do not produce new global magnetic sectors; they belong to the alternative interface scaling.

The exceptional $\displaystyle{\sigma=-1,n=0}$ mode makes the distinction sharp. Keeping it normalized requires $\displaystyle{a_{+,a}\sim\kappa^{1/2}}$, so it does not approach any finite gauge-invariant cut datum of a smooth connection on the uncut spacetime. Its energy remains finite only because the common cut coefficient simultaneously vanishes as $\displaystyle{\kappa^{-1}}$; finite energy alone is therefore not the appropriate global-gluing criterion. The rescaling to $\displaystyle{\chi}$ changes the limiting phase space instead of merely gluing the two Maxwell regions.

Consequently, the correct pure-Maxwell gluing prescription is to take $\displaystyle{\kappa\to\infty}$ at fixed unscaled gauge-invariant data, restrict to the resulting matching surface, pull back the pre-symplectic form, and quotient its null directions. This gives exactly the directly constructed global Maxwell phase space. Taking normalized finite-$\displaystyle{\kappa}$ cut modes before this reduction is a different singular limit that deliberately retains an additional interface theory.

This establishes equality of the reduced classical phase spaces and a mode-by-mode match of their Noether charges. It does not assert convergence of the unreduced finite-$\displaystyle{\kappa}$ Fock spaces under a fixed unitary identification; the exceptional normalized family is precisely the obstruction to such a statement.

## Neumann Boundary Condition

Unlike the Dirichlet theory, the two decoupled Neumann theories require no boundary-penalty action. We allow the tangential potentials to vary freely at both endpoints of each interval. The endpoint part of the bulk variation then gives

$$\begin{align}
E_{i,x}|_{\partial I_i} & =0, & B_i|_{\partial I_i} & =0.
\end{align}$$

These are precisely the Neumann conditions $\displaystyle{n_\mu F_i^{\mu a}=0}$ for $\displaystyle{a=t,y}$. The pre-symplectic potential and pre-symplectic form are therefore the bulk expressions

$$\begin{align}
\theta_{i,\mathrm N} & =\int_{\Sigma_i}\mathrm{d}x\mathrm{d}y\left(E_{i,x}\delta A_{i,x}+E_{i,y}\delta A_{i,y}\right), \\
\omega_{i,\mathrm N} & =\int_{\Sigma_i}\mathrm{d}x\mathrm{d}y\left(\delta E_{i,x}\wedge\delta A_{i,x}+\delta E_{i,y}\wedge\delta A_{i,y}\right).
\end{align}$$

Gauge transformations need not vanish at any endpoint. On the pre-phase space, integration by parts in $\displaystyle{X_\lambda\cdot\omega_{i,\mathrm N}}$ produces the linearized Gauss law in the bulk and $\displaystyle{\delta(n_xE_{i,x})}$ at the endpoints; both vanish. Hence all such transformations are null directions and are quotiented. In particular, an open Wilson line in the $\displaystyle{x}$ direction is not a physical coordinate of the Neumann theory.

The time-translation vector obeys the CPS identity

$$\begin{align}
X_{\partial_t}\cdot\delta S_{i} & =\alpha_{\partial_t}|_{\Sigma_{i,f}}-\alpha_{\partial_t}|_{\Sigma_{i,i}}, & H_{i,\mathrm N} & =X_{\partial_t}\cdot\theta_{i,\mathrm N}-\alpha_{\partial_t},
\end{align}$$

and its Noether charge is

$$\begin{align}
H_{i,\mathrm N} & =\dfrac12\int_{\Sigma_i}\mathrm{d}x\mathrm{d}y\left(E_{i,x}^2+E_{i,y}^2+B_i^2\right).
\end{align}$$

### Physical Modes

#### Local Photon Modes

Use the bulk dual scalar defined above,

$$\begin{align}
E_{i,x} & =-\partial_y\phi_i, & E_{i,y} & =\partial_x\phi_i, & B_i & =\dot\phi_i.
\end{align}$$

The Neumann conditions imply that the boundary value of $\displaystyle{\phi_i}$ is constant in $\displaystyle{t}$ and $\displaystyle{y}$. Therefore every positive-frequency solution obeys strict Dirichlet conditions for the dual scalar,

$$\begin{align}
(-\partial_t^2+\partial_x^2+\partial_y^2)\phi_i & =0, & \phi_i|_{\partial I_i} & =0.
\end{align}$$

The time-independent difference between the two endpoint values is not part of this positive-frequency sector; it will give the spatially constant $\displaystyle{S_y^1}$-holonomy pair below. In the oscillator sector the Maxwell pre-symplectic form has the equivalent dual-scalar expression

$$\begin{align}
\omega_{i,\mathrm N}^{\mathrm{local}} & =\int_{\Sigma_i}\mathrm{d}x\mathrm{d}y\,\delta\dot\phi_i\wedge\delta\phi_i.
\end{align}$$

Take

$$\begin{align}
u^D_{1,n}(x) & =\sqrt{\dfrac2L}\sin\left[k_n(x+L)\right], & u^D_{2,n}(x) & =\sqrt{\dfrac2L}\sin(k_nx), \\
k_n & =\dfrac{n\pi}{L}, & \omega_{m,n} & =\sqrt{q_m^2+k_n^2}, & n&=1,2,\ldots,
\end{align}$$

and define

$$\begin{align}
\Phi_{i,m,n}^{\mathrm N}(t,x,y) & =\dfrac{e^{-i\omega_{m,n}t}}{\sqrt{2\omega_{m,n}}}Y_m(y)u^D_{i,n}(x), \\
\mathcal A_{i,m,n,t}^{\mathrm N} & =0, & \mathcal A_{i,m,n,x}^{\mathrm N} & =\dfrac{q_m}{\omega_{m,n}}\Phi_{i,m,n}^{\mathrm N}, & \mathcal A_{i,m,n,y}^{\mathrm N} & =\dfrac{i}{\omega_{m,n}}\partial_x\Phi_{i,m,n}^{\mathrm N}.
\end{align}$$

Let $\displaystyle{\Psi_{i,m,n}^{\mathrm N}=\mathcal A_{i,m,n}^{\mathrm N}}$ and let $\displaystyle{X_{i,m,n}^{\mathrm N}}$ be its tangent vector on the reduced solution space. The coefficient in $\displaystyle{\Phi_{i,m,n}^{\mathrm N}}$ is fixed by the CPS condition

$$\begin{align}
(\Psi_{i,m,n}^{\mathrm N},\Psi_{j,r,s}^{\mathrm N}) & =iX_{j,r,s}^{\mathrm N*}\cdot X_{i,m,n}^{\mathrm N}\cdot\omega_{\mathrm N}^{\mathrm{local}}=\delta_{ij}\delta_{mr}\delta_{ns},
\end{align}$$

where $\displaystyle{\omega_{\mathrm N}^{\mathrm{local}}=\sum_i\omega_{i,\mathrm N}^{\mathrm{local}}}$. Thus the unit spatial integral of $\displaystyle{Y_m u^D_{i,n}}$ only evaluates the CPS contraction; it is not a separate normalization prescription. The local field, symplectic form, commutators, and Noether charge are

$$\begin{align}
A_{i,\mu}^{\mathrm{local}} & =\sum_{m\in\mathbb Z}\sum_{n=1}^{\infty}\left(a^N_{i,m,n}\mathcal A^N_{i,m,n,\mu}+a^{N\dagger}_{i,m,n}\mathcal A^{N*}_{i,m,n,\mu}\right), \\
\omega_{\mathrm N}^{\mathrm{local}} & =i\sum_{i=1}^{2}\sum_{m\in\mathbb Z}\sum_{n=1}^{\infty}\delta a^{N\dagger}_{i,m,n}\wedge\delta a^N_{i,m,n}, \\
[a^N_{i,m,n},a^{N\dagger}_{j,r,s}] & =\delta_{ij}\delta_{mr}\delta_{ns}, \\
H_{\mathrm N}^{\mathrm{local}} & =\sum_{i=1}^{2}\sum_{m\in\mathbb Z}\sum_{n=1}^{\infty}\omega_{m,n}\left(a^{N\dagger}_{i,m,n}a^N_{i,m,n}+\dfrac12\right).
\end{align}$$

#### Spatially Constant $\displaystyle{S_y^1}$-Holonomy Sector

The oscillator expansion does not contain a connection that is constant on $\displaystyle{I_i\times S_y^1}$. Define the gauge-invariant $\displaystyle{y}$-holonomy coordinate and its electric momentum by

$$\begin{align}
\mathcal U_i & =\dfrac1L\int_{I_i}\mathrm{d}x\oint_{S_y^1}\mathrm{d}y\,A_{i,y}, & P_i & =\dfrac1{\ell_y}\int_{\Sigma_i}\mathrm{d}x\mathrm{d}y\,E_{i,y}.
\end{align}$$

The oscillator modes have vanishing contribution to both quantities because their dual scalar vanishes at the two endpoints. A representative of the remaining sector is

$$\begin{align}
A_{i,t} & =A_{i,x}=0, & A_{i,y}(t) & =\dfrac{\mathcal U_{i,0}}{\ell_y}+\dfrac{P_i}{L}t, & E_{i,y}&=\dfrac{P_i}{L}.
\end{align}$$

Its CPS data are

$$\begin{align}
\theta_{i,\mathrm N}^{\mathrm{hol}} & =P_i\delta\mathcal U_i, & \omega_{i,\mathrm N}^{\mathrm{hol}} & =\delta P_i\wedge\delta\mathcal U_i, & H_{i,\mathrm N}^{\mathrm{hol}} & =\dfrac{\ell_y}{2L}P_i^2, \\
\dot P_i&=0, & \dot{\mathcal U}_i&=\dfrac{\ell_y}{L}P_i, & [\mathcal U_i,P_j]&=i\delta_{ij}.
\end{align}$$

For gauge group $\displaystyle{\mathbb R}$, $\displaystyle{\mathcal U_i}$ is real and $\displaystyle{P_i}$ is continuous. For compact $\displaystyle{U(1)}$, $\displaystyle{\mathcal U_i\sim\mathcal U_i+2\pi}$ and $\displaystyle{P_i\in\mathbb Z}$ after quantization. Because Neumann does not fix a boundary trivialization or boundary holonomy, there is no relative magnetic-flux integer analogous to $\displaystyle{s_i}$ in the Dirichlet theory. The magnetic flux can change with the boundary holonomies and does not label disconnected components. The complete compact single-interval Hilbert space is therefore

$$\begin{align}
\mathcal H_{i,\mathrm N}^{U(1)} & =L^2(U(1))_{\mathcal U_i}\otimes\mathcal F_{i,\mathrm N},
\end{align}$$

with no direct sum over magnetic sectors.

### Gluing

For Neumann gluing, introduce one transition field $\displaystyle{\varphi(t,y)}$ on the artificial cut and define

$$\begin{align}
\varphi & \longrightarrow\varphi+\lambda_1|_{\Gamma_1}-\lambda_2|_{\Gamma_2}, & \eta_a & =A_{1,a}|_{\Gamma_1}-A_{2,a}|_{\Gamma_2}-\partial_a\varphi, & a&=t,y.
\end{align}$$

The gauge-invariant cut action is

$$\begin{align}
S_{\mathrm N}^{(\kappa)} & =-\dfrac{\mu\kappa}{2}\int_\Gamma\mathrm{d}t\mathrm{d}y\,\gamma^{ab}\eta_a\eta_b \\
& =\dfrac{\mu\kappa}{2}\int_\Gamma\mathrm{d}t\mathrm{d}y\left(\eta_t^2-\eta_y^2\right),
\end{align}$$

where $\displaystyle{\Gamma}$ denotes the cut after identifying its two copies. This is the Maxwell analogue of the Neumann gluing interaction in [[Articles/Quantization in AdS/gluing/continuous theory I|continuous theory I]]. Its coefficient vanishes for $\displaystyle{\kappa\to0}$ and penalizes a mismatch of the two tangential connections for $\displaystyle{\kappa\to\infty}$.

#### Cut Equations and CPS Data

After integration by parts on $\displaystyle{\Gamma}$, the cut-action variation is

$$\begin{align}
\delta S_{\mathrm N}^{(\kappa)} & =\mu\kappa\int_\Gamma\mathrm{d}t\mathrm{d}y\left[\eta_t(\delta A_{1,t}-\delta A_{2,t})-\eta_y(\delta A_{1,y}-\delta A_{2,y})+(\dot\eta_t-\partial_y\eta_y)\delta\varphi\right] \\
& \quad-\mu\kappa\int_{S_y^1}\mathrm{d}y\,\eta_t\delta\varphi\bigg|_{t_i}^{t_f}.
\end{align}$$

Together with the bulk endpoint terms at $\displaystyle{x=0}$, this gives

$$\begin{align}
E_{1,x}|_\Gamma=E_{2,x}|_\Gamma & =\mu\kappa\eta_t, & B_1|_\Gamma=B_2|_\Gamma & =-\mu\kappa\eta_y, \\
\dot\eta_t-\partial_y\eta_y&=0.
\end{align}$$

The last equation follows as the tangential conservation equation associated with the first two cut equations and the bulk Maxwell equations. The total pre-symplectic potential and pre-symplectic form are

$$\begin{align}
\theta_{\mathrm N,\kappa} & =\sum_{i=1}^{2}\int_{\Sigma_i}\mathrm{d}x\mathrm{d}y\left(E_{i,x}\delta A_{i,x}+E_{i,y}\delta A_{i,y}\right)-\mu\kappa\int_{S_y^1}\mathrm{d}y\,\eta_t\delta\varphi, \\
\omega_{\mathrm N,\kappa} & =\sum_{i=1}^{2}\int_{\Sigma_i}\mathrm{d}x\mathrm{d}y\left(\delta E_{i,x}\wedge\delta A_{i,x}+\delta E_{i,y}\wedge\delta A_{i,y}\right)-\mu\kappa\int_{S_y^1}\mathrm{d}y\,\delta\eta_t\wedge\delta\varphi.
\end{align}$$

The cut term cancels the endpoint contribution generated by a relative gauge transformation, so transformations with arbitrary $\displaystyle{\lambda_1|_\Gamma}$ and $\displaystyle{\lambda_2|_\Gamma}$ remain null directions. The physical phase space is again obtained only after quotienting this kernel.

For time translations,

$$\begin{align}
H_{\mathrm N,\kappa} & =X_{\partial_t}\cdot\theta_{\mathrm N,\kappa}-\alpha_{\partial_t} \\
& =\dfrac12\sum_{i=1}^{2}\int_{\Sigma_i}\mathrm{d}x\mathrm{d}y\left(E_{i,x}^2+E_{i,y}^2+B_i^2\right)+\dfrac{\mu\kappa}{2}\int_{S_y^1}\mathrm{d}y\left(\eta_t^2+\eta_y^2\right).
\end{align}$$

At fixed unscaled fields, $\displaystyle{\kappa\to0}$ removes the cut contribution and imposes $\displaystyle{E_{i,x}=B_i=0}$ independently on both cut faces. For a bounded-energy family with $\displaystyle{\kappa\to\infty}$, one has $\displaystyle{\eta_a\to0}$, while the cut equations already give continuity of $\displaystyle{E_x}$ and $\displaystyle{B}$. These are the matching conditions for a smooth Maxwell connection on the uncut spacetime.

#### Dual-Scalar Boundary Problem

For a positive-frequency Fourier mode with $\displaystyle{e^{-i\omega t}Y_m(y)}$ dependence, write

$$\begin{align}
\phi_i(t,x,y) & =e^{-i\omega t}Y_m(y)f_i(x), & f_i''+k^2f_i&=0, & \omega^2&=q_m^2+k^2.
\end{align}$$

The physical outer Neumann conditions give

$$\begin{align}
f_1(-L)&=0, & f_2(L)&=0.
\end{align}$$

Continuity of $\displaystyle{E_x}$ and $\displaystyle{B}$ implies that $\displaystyle{\phi_1-\phi_2}$ is constant at the cut. Using the independent additive constants in the two dual scalars, set

$$\begin{align}
f_1(0)&=f_2(0)=f_\Gamma.
\end{align}$$

In the temporal--Coulomb representative

$$\begin{align}
A_{i,t}&=0, & A_{i,x}&=\dfrac{q_m}{\omega}\phi_i, & A_{i,y}&=\dfrac{i}{\omega}\partial_x\phi_i,
\end{align}$$

the remaining cut equation becomes

$$\begin{align}
\mu\kappa\left(f_1'(0)-f_2'(0)\right)&=k^2f_\Gamma.
\end{align}$$

Equivalently, before Fourier decomposition,

$$\begin{align}
\mu\kappa\left(\partial_x\phi_1-\partial_x\phi_2\right)|_\Gamma&=(-\partial_t^2+\partial_y^2)\phi_\Gamma.
\end{align}$$

The transition-field component is fixed by the bulk mode,

$$\begin{align}
\mathcal V_m(t,y) & =-\dfrac{q_m}{\mu\kappa\omega}f_\Gamma e^{-i\omega t}Y_m(y).
\end{align}$$

It vanishes for $\displaystyle{q_m=0}$ and is not an independent oscillator. After restricting to solutions, using the cut equations, and quotienting gauge transformations, the full pre-symplectic form has the equivalent dual-scalar expression

$$\begin{align}
\omega_{\mathrm N,\kappa}^{\mathrm{osc}} & =\sum_{i=1}^{2}\int_{\Sigma_i}\mathrm{d}x\mathrm{d}y\,\delta\dot\phi_i\wedge\delta\phi_i+\dfrac1{\mu\kappa}\int_{S_y^1}\mathrm{d}y\,\delta\dot\phi_\Gamma\wedge\delta\phi_\Gamma.
\end{align}$$

The second term is not postulated as a spatial inner product. It is the cut contribution produced when the original Maxwell--$\displaystyle{\varphi}$ pre-symplectic form is evaluated on solutions satisfying the frequency-dependent cut equation.

#### Finite-$\displaystyle{\kappa}$ Modes

Use reflection parity

$$\begin{align}
f_{\sigma,2}(x)&=\sigma f_{\sigma,1}(-x), & \sigma&=\pm1,
\end{align}$$

and take

$$\begin{align}
\Phi_{\sigma,m,n,1} & =\mathcal N_{\sigma,m,n}e^{-i\omega_{\sigma,m,n}t}Y_m(y)\sin\left[k_{\sigma,n}(x+L)\right], \\
\Phi_{\sigma,m,n,2} & =\sigma\mathcal N_{\sigma,m,n}e^{-i\omega_{\sigma,m,n}t}Y_m(y)\sin\left[k_{\sigma,n}(L-x)\right], \\
\omega_{\sigma,m,n}^2&=q_m^2+k_{\sigma,n}^2.
\end{align}$$

In the odd sector, continuity forces the cut value to vanish, and the derivative equation is then automatic:

$$\begin{align}
k_{-,n}&=\dfrac{n\pi}{L}, & n&=1,2,\ldots.
\end{align}$$

In the even sector the cut equation gives

$$\begin{align}
k_{+,n}\tan(k_{+,n}L)&=2\mu\kappa, & n&=1,2,\ldots,
\end{align}$$

with exactly one root in each interval

$$\begin{align}
\dfrac{(n-1)\pi}{L}<k_{+,n}<\dfrac{(n-\frac12)\pi}{L}.
\end{align}$$

Indeed, $\displaystyle{k\tan(kL)}$ is strictly increasing from zero to $\displaystyle{+\infty}$ on every displayed interval. There are no solutions with $\displaystyle{k^2<0}$, since $\displaystyle{k=i\lambda}$ would require $\displaystyle{-\lambda\tanh(\lambda L)=2\mu\kappa}$ for $\displaystyle{\lambda>0}$.

Let $\displaystyle{\mathcal A_{\sigma,m,n,i,\mu}}$ be the temporal--Coulomb Maxwell representative constructed from $\displaystyle{\Phi_{\sigma,m,n,i}}$, and set

$$\begin{align}
\mathcal V_{\sigma,m,n} & =-\dfrac{q_m}{\mu\kappa\omega_{\sigma,m,n}}\Phi_{\sigma,m,n,1}(t,0,y), \\
\Psi_{\sigma,m,n}^{(\mathrm N,\kappa)} & =\left(\{\mathcal A_{\sigma,m,n,i,\mu}\}_{i=1,2};\mathcal V_{\sigma,m,n}\right).
\end{align}$$

The transition-field component vanishes for every odd mode because its dual-scalar trace vanishes. Let $\displaystyle{X_{\sigma,m,n}^{(\mathrm N,\kappa)}}$ be the tangent vector defined by the full coupled solution. Evaluating the CPS form gives

$$\begin{align}
&(\Psi_{\sigma,m,n}^{(\mathrm N,\kappa)},\Psi_{\tau,r,s}^{(\mathrm N,\kappa)})_{\mathrm N,\kappa}=iX_{\tau,r,s}^{(\mathrm N,\kappa)*}\cdot X_{\sigma,m,n}^{(\mathrm N,\kappa)}\cdot\omega_{\mathrm N,\kappa} \\
&\quad=\delta_{\sigma\tau}\delta_{mr}(\omega_{\sigma,m,n}+\omega_{\tau,r,s})\mathcal N_{\tau,r,s}^*\mathcal N_{\sigma,m,n}\left[2\int_{-L}^{0}\mathrm{d}x\,f_{\sigma,n}(x)f_{\sigma,s}(x)+\dfrac{f_{\sigma,n}(0)f_{\sigma,s}(0)}{\mu\kappa}\right],
\end{align}$$

where $\displaystyle{f_{\sigma,n}(x)=\sin[k_{\sigma,n}(x+L)]}$ on $\displaystyle{I_1}$. For two distinct roots in the same parity sector, integration by parts and the cut equation imply

$$\begin{align}
2\int_{-L}^{0}\mathrm{d}x\,f_{\sigma,n}(x)f_{\sigma,s}(x)+\dfrac{f_{\sigma,n}(0)f_{\sigma,s}(0)}{\mu\kappa}&=0, & n&\neq s.
\end{align}$$

Thus orthogonality is a consequence of the CPS contraction and the boundary equations. On the diagonal,

$$\begin{align}
(\Psi_{\sigma,m,n}^{(\mathrm N,\kappa)},\Psi_{\sigma,m,n}^{(\mathrm N,\kappa)})_{\mathrm N,\kappa} & =2\omega_{\sigma,m,n}|\mathcal N_{\sigma,m,n}|^2\mathcal I_{\sigma,n}, \\
\mathcal I_{\sigma,n} & =L-\dfrac{\sin(2k_{\sigma,n}L)}{2k_{\sigma,n}}+\dfrac{\sin^2(k_{\sigma,n}L)}{\mu\kappa}.
\end{align}$$

For the odd tower, $\displaystyle{\mathcal I_{-,n}=L}$. The CPS condition fixes

$$\begin{align}
\mathcal N_{\sigma,m,n} & =\dfrac1{\sqrt{2\omega_{\sigma,m,n}\mathcal I_{\sigma,n}}}.
\end{align}$$

The cut term in $\displaystyle{\mathcal I_{+,n}}$ is essential; normalizing only the bulk spatial profile does not normalize the coupled Maxwell--transition-field solution. The oscillator expansion and its CPS data are

$$\begin{align}
A_{i,\mu}^{\mathrm{osc}} & =\sum_{\sigma=\pm1}\sum_{m\in\mathbb Z}\sum_{n=1}^{\infty}\left(b^N_{\sigma,m,n}\mathcal A_{\sigma,m,n,i,\mu}+b^{N\dagger}_{\sigma,m,n}\mathcal A_{\sigma,m,n,i,\mu}^*\right), \\
\varphi^{\mathrm{osc}} & =\sum_{\sigma=\pm1}\sum_{m\in\mathbb Z}\sum_{n=1}^{\infty}\left(b^N_{\sigma,m,n}\mathcal V_{\sigma,m,n}+b^{N\dagger}_{\sigma,m,n}\mathcal V_{\sigma,m,n}^*\right), \\
\omega_{\mathrm N,\kappa}^{\mathrm{osc}} & =i\sum_{\sigma=\pm1}\sum_{m\in\mathbb Z}\sum_{n=1}^{\infty}\delta b^{N\dagger}_{\sigma,m,n}\wedge\delta b^N_{\sigma,m,n}, \\
[b^N_{\sigma,m,n},b^{N\dagger}_{\tau,r,s}]&=\delta_{\sigma\tau}\delta_{mr}\delta_{ns}, \\
H_{\mathrm N,\kappa}^{\mathrm{osc}} & =\sum_{\sigma=\pm1}\sum_{m\in\mathbb Z}\sum_{n=1}^{\infty}\omega_{\sigma,m,n}\left(b^{N\dagger}_{\sigma,m,n}b^N_{\sigma,m,n}+\dfrac12\right).
\end{align}$$

#### Common Holonomy and Compact $\displaystyle{U(1)}$

At every finite $\displaystyle{\kappa}$ there is one exact spatially constant solution with

$$\begin{align}
A_{1,y}(t)&=A_{2,y}(t)=\dfrac{\mathcal U_0}{\ell_y}+\dfrac{P}{2L}t, & E_{1,y}&=E_{2,y}=\dfrac{P}{2L}, & \eta_a&=0.
\end{align}$$

For the noncompact theory, or in a local lift of the compact holonomies, $\displaystyle{\mathcal U=(\mathcal U_1+\mathcal U_2)/2}$ and $\displaystyle{P=P_1+P_2}$ on this sector. Globally in the compact theory, $\displaystyle{\mathcal U}$ denotes the common holonomy angle. Pulling back the full pre-symplectic form and Noether charge gives

$$\begin{align}
\omega_{\mathrm N,\kappa}^{\mathrm{hol}}&=\delta P\wedge\delta\mathcal U, & H_{\mathrm N,\kappa}^{\mathrm{hol}}&=\dfrac{\ell_y}{4L}P^2.
\end{align}$$

The relative holonomy is not a second free canonical pair at finite $\displaystyle{\kappa}$: it is contained in the $\displaystyle{m=0}$ even oscillator tower, whose lowest frequency is $\displaystyle{k_{+,1}>0}$. The complete finite-$\displaystyle{\kappa}$ CPS form and Noether charge are the sums of the oscillator and common-holonomy contributions.

For compact $\displaystyle{U(1)}$, the transition field may be circle-valued,

$$\begin{align}
\varphi(y+\ell_y)&=\varphi(y)+2\pi s, & s&\in\mathbb Z.
\end{align}$$

If $\displaystyle{\mathcal U_i}$ are represented by real lifts, the dressed relative holonomy is

$$\begin{align}
\mathcal R&=\oint_{S_y^1}\mathrm{d}y\,\eta_y=\mathcal U_1-\mathcal U_2-2\pi s.
\end{align}$$

Under large gauge transformations of windings $\displaystyle{r_i}$,

$$\begin{align}
\mathcal U_i&\longrightarrow\mathcal U_i+2\pi r_i, & s&\longrightarrow s+r_1-r_2,
\end{align}$$

so $\displaystyle{\mathcal R}$ is invariant whereas $\displaystyle{s}$ by itself is not a physical sector label. Bounded energy in the strong-gluing limit forces $\displaystyle{\mathcal R\to0}$. The surviving common coordinate is angular and its momentum $\displaystyle{P}$ is integer-valued. There is again no independent magnetic-flux direct sum.

#### The $\displaystyle{\kappa\to0}$ Limit

For fixed unscaled Maxwell and transition-field data, the cut action and its pre-symplectic contribution vanish. The cut equations reduce to two independent strict Neumann conditions, and the quotient removes the now-decoupled transition field. Spectrally,

$$\begin{align}
k_{+,1}^2&=\dfrac{2\mu\kappa}{L}+O(\kappa^2), \\
k_{+,n}&\longrightarrow\dfrac{(n-1)\pi}{L}, & n&=2,3,\ldots, \\
k_{-,n}&=\dfrac{n\pi}{L}, & n&=1,2,\ldots.
\end{align}$$

For every $\displaystyle{r\geqslant1}$, the pair $\displaystyle{\{b^N_{-,m,r},b^N_{+,m,r+1}\}}$ approaches the two degenerate local photon modes. With the local $\displaystyle{I_2}$ basis chosen above,

$$\begin{align}
b^N_{-,m,r}&\longrightarrow\dfrac{a^N_{1,m,r}+(-1)^ra^N_{2,m,r}}{\sqrt2}, \\
b^N_{+,m,r+1}&\longrightarrow\dfrac{a^N_{1,m,r}+(-1)^{r+1}a^N_{2,m,r}}{\sqrt2}.
\end{align}$$

The $\displaystyle{m=0,n=1}$ even mode has frequency $\displaystyle{k_{+,1}\to0}$ and becomes the relative $\displaystyle{S_y^1}$-holonomy canonical pair of the two decoupled Neumann theories. It is therefore not a positive-frequency oscillator at the endpoint. Together with the exact common pair, it reconstructs $\displaystyle{(\mathcal U_1,P_1)}$ and $\displaystyle{(\mathcal U_2,P_2)}$.

There is also a distinct singular normalized-mode limit. For $\displaystyle{m\neq0}$,

$$\begin{align}
\mathcal I_{+,1}&\longrightarrow2L, & \omega_{+,m,1}&\longrightarrow|q_m|,
\end{align}$$

while the bulk Maxwell amplitude vanishes as $\displaystyle{\kappa^{1/2}}$ and the gauge-invariant cut mismatch grows as $\displaystyle{\kappa^{-1/2}}$. If one defines

$$\begin{align}
\chi_\kappa(t,y)&=\sqrt{\mu\kappa}\,\varphi(t,y),
\end{align}$$

then the normalized nonzero Fourier components converge to

$$\begin{align}
\chi_m(t,y)&=-\operatorname{sgn}(q_m)\dfrac{e^{-i|q_m|t}}{\sqrt{2|q_m|}}Y_m(y), & m&\neq0, \\
iX_r^{\chi*}\cdot X_m^\chi\cdot\omega_\chi&=\delta_{mr},
\end{align}$$

with

$$\begin{align}
S_\chi&=\dfrac12\int\mathrm{d}t\mathrm{d}y\left[(\dot\chi)^2-(\partial_y\chi)^2\right], \\
\omega_\chi&=\int_{S_y^1}\mathrm{d}y\,\delta\dot\chi\wedge\delta\chi, & H_\chi&=\dfrac12\int_{S_y^1}\mathrm{d}y\left[(\dot\chi)^2+(\partial_y\chi)^2\right].
\end{align}$$

Only the nonzero Fourier components are obtained from this rescaling; the spatially constant endpoint degree of freedom is the relative holonomy pair described separately above. This $\displaystyle{\chi}$ theory is not part of ordinary Neumann decoupling: retaining it requires following a family with divergent unscaled cut mismatch and therefore changes the limiting reduced phase space.

#### The $\displaystyle{\kappa\to\infty}$ Limit

For every fixed mode,

$$\begin{align}
k_{+,n}&\longrightarrow\dfrac{(n-\frac12)\pi}{L}, & k_{-,n}&=\dfrac{n\pi}{L}.
\end{align}$$

The cut term in the CPS norm vanishes, $\displaystyle{\eta_a\to0}$ for bounded-energy families, and the two towers interlace into the Dirichlet spectrum of the global dual scalar:

$$\begin{align}
K_r&=\dfrac{r\pi}{2L}, & b^N_{+,m,n}&\longrightarrow c^N_{m,2n-1}, & b^N_{-,m,n}&\longrightarrow c^N_{m,2n}.
\end{align}$$

The common holonomy pair already has the global CPS form and Noether charge. No exceptional normalized family remains in this strong limit.

#### Maxwell Theory on the Uncut Spacetime

Consider Maxwell theory directly on $\displaystyle{\mathbb R_t\times[-L,L]_x\times S_y^1}$ with strict Neumann conditions at $\displaystyle{x=\pm L}$. Its positive-frequency dual scalar obeys

$$\begin{align}
(-\partial_t^2+\partial_x^2+\partial_y^2)\phi&=0, & \phi|_{x=\pm L}&=0.
\end{align}$$

A convenient unit spatial basis and the corresponding CPS-normalized modes are

$$\begin{align}
u_r^{D,(2L)}(x)&=\dfrac1{\sqrt L}\sin\left[K_r(x+L)\right], & K_r&=\dfrac{r\pi}{2L}, & r&=1,2,\ldots, \\
\Phi_{m,r}^{\mathrm{global,N}}&=\dfrac{e^{-i\omega_{m,r}t}}{\sqrt{2\omega_{m,r}}}Y_m(y)u_r^{D,(2L)}(x), & \omega_{m,r}^2&=q_m^2+K_r^2.
\end{align}$$

The temporal--Coulomb Maxwell representative is

$$\begin{align}
\mathcal A_{m,r,t}^{\mathrm{global,N}}&=0, & \mathcal A_{m,r,x}^{\mathrm{global,N}}&=\dfrac{q_m}{\omega_{m,r}}\Phi_{m,r}^{\mathrm{global,N}}, & \mathcal A_{m,r,y}^{\mathrm{global,N}}&=\dfrac{i}{\omega_{m,r}}\partial_x\Phi_{m,r}^{\mathrm{global,N}}.
\end{align}$$

If $\displaystyle{X_{m,r}^{\mathrm{global,N}}}$ is the corresponding tangent vector, its coefficient is fixed by

$$\begin{align}
iX_{n,s}^{\mathrm{global,N}*}\cdot X_{m,r}^{\mathrm{global,N}}\cdot\omega_{\mathrm{global,N}}^{\mathrm{osc}}&=\delta_{mn}\delta_{rs}, \\
\omega_{\mathrm{global,N}}^{\mathrm{osc}}&=\int_{[-L,L]\times S_y^1}\mathrm{d}x\mathrm{d}y\,\delta\dot\phi\wedge\delta\phi.
\end{align}$$

Consequently,

$$\begin{align}
\omega_{\mathrm{global,N}}^{\mathrm{osc}}&=i\sum_{m\in\mathbb Z}\sum_{r=1}^{\infty}\delta c_{m,r}^{N\dagger}\wedge\delta c_{m,r}^N, \\
H_{\mathrm{global,N}}^{\mathrm{osc}}&=\sum_{m\in\mathbb Z}\sum_{r=1}^{\infty}\omega_{m,r}\left(c_{m,r}^{N\dagger}c_{m,r}^N+\dfrac12\right).
\end{align}$$

The uncut theory also has one spatially constant $\displaystyle{S_y^1}$-holonomy pair,

$$\begin{align}
\mathcal U&=\dfrac1{2L}\int_{-L}^{L}\mathrm{d}x\oint_{S_y^1}\mathrm{d}y\,A_y, & P&=\dfrac1{\ell_y}\int_{[-L,L]\times S_y^1}\mathrm{d}x\mathrm{d}y\,E_y, \\
\omega_{\mathrm{global,N}}^{\mathrm{hol}}&=\delta P\wedge\delta\mathcal U, & H_{\mathrm{global,N}}^{\mathrm{hol}}&=\dfrac{\ell_y}{4L}P^2.
\end{align}$$

For compact $\displaystyle{U(1)}$, $\displaystyle{\mathcal U}$ is angular and $\displaystyle{P\in\mathbb Z}$. Since the boundary holonomies are dynamical, there is no relative magnetic class and

$$\begin{align}
\mathcal H_{\mathrm{global,N}}^{U(1)}&=L^2(U(1))_{\mathcal U}\otimes\mathcal F_{\mathrm{global,N}}.
\end{align}$$

#### Selecting the Strong-Gluing Limit

The correct Neumann gluing prescription is therefore to take $\displaystyle{\kappa\to\infty}$ at fixed unscaled gauge-invariant data, restrict to $\displaystyle{\eta_a=0}$ together with continuity of $\displaystyle{E_x}$ and $\displaystyle{B}$, pull back $\displaystyle{\omega_{\mathrm N,\kappa}}$, and quotient its null directions. This gives exactly the directly constructed global Neumann Maxwell phase space: the global photon tower and one $\displaystyle{S_y^1}$-holonomy pair, with no independent cut field and no magnetic-flux direct sum.

The finite-$\displaystyle{\kappa}$ even and odd towers reproduce the global modes one by one, and their time-translation Noether charges have the same strong limit. This establishes equality of the reduced classical phase spaces and a mode-by-mode match of the charges. It does not by itself prove convergence of the finite-$\displaystyle{\kappa}$ Fock representations under a fixed unitary identification.

#### Equivalent Normal-Field-Strength Form

After the boundary Legendre transform appropriate to the Neumann boundary condition, the gluing interaction can equivalently be organized with a quadratic term proportional to

$$\begin{align}
\int_\Gamma\mathrm{d}t\mathrm{d}y\,\gamma_{\alpha\beta}\left(n_{i,\mu}F_i^{\mu\alpha}\right)\left(n_{i,\nu}F_i^{\nu\beta}\right), & & \alpha,\beta&=t,y,
\end{align}$$

on either cut face. This is consistent with the gluing formalism above. Indeed, its finite-$\displaystyle{\kappa}$ cut equations imply

$$\begin{align}
n_{1,\mu}F_1^{\mu\alpha}\big|_\Gamma&=-\mu\kappa\eta^\alpha, & n_{2,\mu}F_2^{\mu\alpha}\big|_\Gamma&=+\mu\kappa\eta^\alpha,
\end{align}$$

and hence

$$\begin{align}
\gamma_{\alpha\beta}\left(n_{i,\mu}F_i^{\mu\alpha}\right)\left(n_{i,\nu}F_i^{\nu\beta}\right)&=(\mu\kappa)^2\gamma^{\alpha\beta}\eta_\alpha\eta_\beta.
\end{align}$$

Thus the normal-field-strength quadratic term has a coefficient proportional to $\displaystyle{1/(\mu\kappa)}$ and is the Neumann-polarized form of the same interface relation encoded by $\displaystyle{S_{\mathrm N}^{(\kappa)}}$. With the boundary Legendre term understood, it gives the same cut equations, CPS form, and $\displaystyle{\kappa\to\infty}$ reduction; it is not a distinct gluing prescription.
