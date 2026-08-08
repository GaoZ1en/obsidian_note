Consider an interval $\displaystyle{I=[-L,L]}$ with a cut at the origin $\displaystyle{x=0}$, which separates the interval into two intervals

$$\begin{align}
I_{1} & =[-L,0] \\
I_{2} & =[0,L]
\end{align}$$

On each interval, the action of a massive scalar with $\displaystyle{m>0}$ is

$$\begin{align}
S_{i}[\phi _{i}] & =\dfrac{1}{2}\int \mathrm{d}t\int _{I_{i}}\mathrm{d}x\left(\dot{\phi}_{i}^{2}-\phi ^{'2}_{i}-m^{2}\phi _{i}^{2}\right)
\end{align}$$

We impose homogeneous Dirichlet conditions at the physical outer endpoints from the beginning,

$$\begin{align}
\phi _1(t,-L) & =0, & \phi _2(t,L) & =0, &
\delta\phi _1(t,-L) & =0, & \delta\phi _2(t,L) & =0.
\end{align}$$

The traces at the artificial cut are denoted by

$$\begin{align}
q_i(t) & =\phi _i(t,0).
\end{align}$$

Taking a variation and integrating the spatial derivative by parts gives

$$\begin{align}
\delta\sum _{i=1}^{2}S_i
&=\sum _{i=1}^{2}\int\mathrm{d}t\int_{I_i}\mathrm{d}x
\left(-\ddot\phi_i+\phi_i''-m^2\phi_i\right)\delta\phi_i
+\sum _{i=1}^{2}\int_{I_i}\mathrm{d}x\,[\dot\phi_i\delta\phi_i]_{t_i}^{t_f} \\
&\quad+\int\mathrm{d}t\left(
\phi_1'\delta\phi_1|_{x=-L}-\phi_1'\delta q_1|_{x=0}
+\phi_2'\delta q_2|_{x=0}-\phi_2'\delta\phi_2|_{x=L}
\right).
\end{align}$$

To realize Dirichlet conditions at the artificial cut as a boundary-penalty limit, introduce a fixed scale $\displaystyle{\mu>0}$ with dimension of inverse length and a dimensionless interpolation parameter $\displaystyle{\kappa>0}$, and add

$$\begin{align}
S_{\mathrm{D}}^{(\kappa)} & =-\dfrac{\mu}{2\kappa}\int\mathrm{d}t\left(q_1^2+q_2^2\right).
\end{align}$$

At finite $\displaystyle{\kappa}$, free variation of the cut traces gives the Robin conditions

$$\begin{align}
\phi_1'+\dfrac{\mu}{\kappa}\phi_1\bigg|_{x=0} & =0, &
\phi_2'-\dfrac{\mu}{\kappa}\phi_2\bigg|_{x=0} & =0.
\end{align}$$

For a family of configurations with bounded quadratic energy, the $\displaystyle{\kappa\to0}$ limit forces $\displaystyle{q_1=q_2=0}$. Thus homogeneous Dirichlet conditions at the cut are realized as the strong boundary-penalty limit of this Robin family, rather than as a finite-$\displaystyle{\kappa}$ natural boundary condition. At this endpoint, the bulk eoms are

$$\begin{align}
- \ddot{\phi}_{i}+\phi _{i}''-m^{2}\phi _{i} & =0
\end{align}$$

and the symplectic potentials and symplectic forms are

$$\begin{align}
\theta _{i} & =\int _{I_{i}}\mathrm{d}x\dot{\phi}_{i}\delta \phi _{i} \\
\implies \omega _{i} & =\int _{I_{i}}\mathrm{d}x\delta \dot{\phi}_{i}\wedge \delta \phi _{i}
\end{align}$$

The complete set of positive-frequency solutions of the eom with Dirichlet boundary condition is labelled by $\displaystyle{I=(i,n)}$ with

$$\begin{align}
k_{n} & =\dfrac{n\pi}{L}, & \omega _{n} & =\sqrt{ m^{2}+k_{n}^{2} } \\
u_{1,n}(x_{1}) & =\sqrt{ \dfrac{2}{L} }\sin\left(k_{n}(x+L)\right), & u_{2,n}(x_{2}) & =\sqrt{ \dfrac{2}{L} }\sin\left(k_{n}x\right) \\
\Phi _{i,n}(t,x_{i}) & =\dfrac{e^{-i\omega _{n}t}}{\sqrt{ 2\omega _{n} }}u_{i,n}(x), & n & =1,2,\dots
\end{align}$$

These modes are normalized by the symplectic form

$$\begin{align}
(\Phi _{i,n},\Phi _{j,m}) & =iX_{j,m}^{*}\cdot X_{i,n}\cdot \omega =\delta _{ij}\delta _{nm}
\end{align}$$

Expand the fields as

$$\begin{align}
\phi _{i}(t,x) & =\sum _{n=1}^{\infty}\left(a_{i,n}\Phi _{i,n}(t,x)+a^{\dagger}_{i,n}\Phi ^{*}_{i,n}(t,x)\right)
\end{align}$$

then the symplectic form becomes

$$\begin{align}
\omega & =i\sum _{i,n}\delta a^{\dagger}_{i,n}\wedge \delta a_{i,n}
\end{align}$$

which gives the standard Poisson brackets

$$\begin{align}
\left\{a^{\dagger}_{i,n},a_{j,m}\right\} & =i\delta _{ij}\delta _{nm}
\end{align}$$

The Hamiltonian is the Noether charge of time translation,

$$\begin{align}
H & =\sum _{i}\dfrac{1}{2}\int _{I_{i}}\mathrm{d}x_{i}\left(\dot{\phi}_{i}^{2}+\phi '^{2}_{i}+m^{2}\phi _{i}^{2}\right)=\sum _{i,n}\omega _{n}\left(a^{\dagger}_{i,n}a_{i,n}+\dfrac{1}{2}\right)
\end{align}$$

Upon quantization, we lift the coefficients to operators and the Poisson brackets to canonical commutators

$$\begin{align}
[a_{i,n},a^{\dagger}_{j,m}] & =\delta _{ij}\delta _{nm}
\end{align}$$

with all other commutators vanishing. The vacuum $\displaystyle{\ket{\Omega}}$ is annihilated by all $\displaystyle{a_{i,n}}$, and the endpoint Hilbert space is the tensor product of the Fock spaces of the two Dirichlet pieces.

## Gluing Theories

To make the field theories on the two sides interact at the cut, add the quadratic interface interaction

$$\begin{align}
S_{\mathrm{int}}=S_{\mathrm{glue}}^{(\kappa)} & =-\dfrac{\mu\kappa}{2}\int\mathrm{d}t\left(q_1-q_2\right)^2.
\end{align}$$

This term couples the two sides, while the total theory remains Gaussian because the interface interaction is quadratic. Together with the boundary-penalty term, the total action is

$$\begin{align}
S_{\kappa} & =\sum _{i=1}^{2}S_i+S_{\mathrm{D}}^{(\kappa)}+S_{\mathrm{glue}}^{(\kappa)} \\
&=\sum _{i=1}^{2}\int\mathrm{d}t\int_{I_i}\mathrm{d}x\,
\dfrac12\left(\dot\phi_i^2-\phi_i'^2-m^2\phi_i^2\right)
-\dfrac12\int\mathrm{d}t\left[
\dfrac{\mu}{\kappa}(q_1^2+q_2^2)+\mu\kappa(q_1-q_2)^2
\right].
\end{align}$$

The outer Dirichlet variations vanish. The remaining variation is

$$\begin{align}
\delta S_{\kappa} & =\sum _{i=1}^{2}\int\mathrm{d}t\int _{I_{i}}\mathrm{d}x
\left(-\ddot{\phi}_{i}+\phi _{i}''-m^{2}\phi _{i}\right)\delta \phi _{i}
+\sum _{i=1}^{2}\int _{I_{i}}\mathrm{d}x(\dot{\phi}_{i}\delta \phi _{i})|^{t_{f}}_{t_{i}} \\
&\quad+\int\mathrm{d}t\Bigg[
\left(-\phi_{1}'-\dfrac{\mu}{\kappa}\phi_{1}-\mu\kappa(\phi_{1}-\phi_{2})\right)\delta \phi_{1} \\
&\hspace{33mm}+\left(\phi_{2}'-\dfrac{\mu}{\kappa}\phi_{2}+\mu\kappa(\phi_{1}-\phi_{2})\right)\delta \phi_{2}
\Bigg]_{x=0}.
\end{align}$$

We read out the boundary conditions

$$\begin{align}
\phi_{1}|_{x=-L} & =0, & \phi _{2}|_{x=L} & =0 \\
\phi_{1}'+\dfrac{\mu}{\kappa}\phi_{1}+\mu\kappa(\phi_{1}-\phi_{2})\bigg|_{x=0} & =0, &
\phi_{2}'-\dfrac{\mu}{\kappa}\phi_{2}+\mu\kappa(\phi_{1}-\phi_{2})\bigg|_{x=0} & =0.
\end{align}$$

the eoms

$$\begin{align}
-\ddot{\phi}_{i}+\phi _{i}''-m^{2}\phi _{i} & =0, & i=1,2
\end{align}$$

and the symplectic potential

$$\begin{align}
\theta & =\sum _{i}\int _{I_{i}}\mathrm{d}x\dot{\phi}_{i}\delta \phi _{i} \\
\omega=\delta \theta & =\sum _{i}\int _{I_{i}}\mathrm{d}x\delta \dot{\phi}_{i}\wedge \delta \phi _{i}
\end{align}$$

The spatial quadratic form associated with the Hamiltonian is

$$\begin{align}
Q_{\kappa}^{\mathrm{D}}[\phi_1,\phi_2]
&=\sum _{i=1}^{2}\int_{I_i}\mathrm{d}x
\left(|\phi_i'|^2+m^2|\phi_i|^2\right)
+\dfrac{\mu}{\kappa}\left(|q_1|^2+|q_2|^2\right)
+\mu\kappa|q_1-q_2|^2.
\end{align}$$

For $\displaystyle{\mu>0}$ and $\displaystyle{\kappa>0}$, this is positive and defines a self-adjoint spatial operator on the two intervals with the imposed outer Dirichlet conditions. For families with bounded $\displaystyle{Q_{\kappa}^{\mathrm{D}}}$, the $\displaystyle{\kappa\to0}$ limit forces $\displaystyle{q_1=q_2=0}$ and gives two decoupled Dirichlet intervals. The $\displaystyle{\kappa\to\infty}$ limit forces $\displaystyle{q_1=q_2}$. Subtracting the two interface conditions gives

$$\begin{align}
\phi_1'-\phi_2'+\dfrac{\mu}{\kappa}(\phi_1+\phi_2)\bigg|_{x=0} & =0,
\end{align}$$

so the same limit also gives $\displaystyle{\phi_1'|_{x=0}=\phi_2'|_{x=0}}$. Hence the two components join into one field on $\displaystyle{[-L,L]}$.

For finite $\displaystyle{\kappa}$, solutions of the eom with the boundary conditions above split into $\displaystyle{\sigma=\pm 1}$ sectors satisfying

$$\begin{align}
\phi _{\sigma,2}(x) & =\sigma \phi _{\sigma,1}(-x)
\end{align}$$

Take

$$\begin{align}
\Phi _{\sigma,n,1}(t,x) & =\mathcal{N}_{\sigma,n}e^{-i\omega _{\sigma,n}t}\sin(k _{\sigma,n}(x+L)), & -L\leqslant x\leqslant 0 \\
\Phi _{\sigma,n,2}(t,x) & =\sigma\mathcal{N}_{\sigma,n}e^{-i\omega _{\sigma,n}t}\sin(k _{\sigma,n}(L-x)), & 0\leqslant x\leqslant L
\end{align}$$

where $\displaystyle{\omega _{\sigma,n}^{2}=m^{2}+k _{\sigma,n}^{2}}$. The boundary conditions at $\displaystyle{x=0}$ give

$$\begin{align}
k_{+,n}\cot(k_{+,n}L) & =-\dfrac{\mu}{\kappa}, & \tan(k_{+,n}L) & =-\dfrac{\kappa k_{+,n}}{\mu}, \\
k_{-,n}\cot(k_{-,n}L) & =-\mu\left(\dfrac{1}{\kappa}+2\kappa\right), & \tan(k_{-,n}L) & =-\dfrac{\kappa k_{-,n}}{\mu(1+2\kappa^{2})},
\end{align}$$

where $\displaystyle{n=1,2,\dots}$ and each root is the unique root in

$$\begin{align}
\dfrac{(n-\frac{1}{2})\pi}{L}<k_{\sigma,n}<\dfrac{n\pi}{L}.
\end{align}$$

The normalization constant $\displaystyle{\mathcal{N}_{\sigma,n}}$ is given by

$$\begin{align}
\mathcal{N}_{\sigma,n} & =\dfrac{1}{\sqrt{ 2\omega _{\sigma,n} }}\left(L-\dfrac{\sin(2k_{\sigma,n}L)}{2k_{\sigma,n}}\right)^{-1/2}
\end{align}$$

therefore we have the orthonormal relations

$$\begin{align}
(\Phi _{\sigma,n},\Phi _{\tau,m}) & =iX_{\tau,m}^{*}\cdot X_{\sigma,n}\cdot \omega=\delta _{\sigma \tau}\delta _{nm}
\end{align}$$

expand

$$\begin{align}
\phi _{i}(t,x) & =\sum _{\sigma=\pm1}\sum _{n=1}^{\infty}\left(b_{\sigma,n}\Phi _{\sigma,n,i}(t,x)+b_{\sigma,n}^{\dagger}\Phi _{\sigma,n,i}^{*}(t,x)\right).
\end{align}$$

The symplectic form, Poisson brackets, and quantum commutators are

$$\begin{align}
\omega & =i\sum _{\sigma=\pm1}\sum _{n=1}^{\infty}\delta b_{\sigma,n}^{\dagger}\wedge\delta b_{\sigma,n}, \\
\{b_{\sigma,n}^{\dagger},b_{\tau,r}\} & =i\delta _{\sigma\tau}\delta _{nr}, \\
[b_{\sigma,n},b_{\tau,r}^{\dagger}] & =\delta _{\sigma\tau}\delta _{nr},
\end{align}$$

with all other commutators vanishing. The conserved Hamiltonian determined by the bulk eoms and the imposed boundary conditions is

$$\begin{align}
H_{\kappa} & =\dfrac{1}{2}\sum _{i=1}^{2}\int _{I_{i}}\mathrm{d}x \left(\dot{\phi}_{i}^{2}+\phi_{i}'^{2}+m^{2}\phi_{i}^{2}\right) +\dfrac{\mu}{2\kappa}\left(\phi _1(0)^{2}+\phi _2(0)^{2}\right) +\dfrac{\mu\kappa}{2}\left(\phi _1(0)-\phi _2(0)\right)^{2} \\
& =\sum _{\sigma=\pm1}\sum _{n=1}^{\infty}\omega _{\sigma,n} \left(b_{\sigma,n}^{\dagger}b_{\sigma,n}+\dfrac{1}{2}\right).
\end{align}$$

The vacuum $\displaystyle{\ket{\Omega _{\kappa}}}$ is annihilated by every $\displaystyle{b_{\sigma,n}}$, and the Hilbert space is the bosonic Fock space generated by the two parity towers.

### The $\displaystyle{\kappa\to0}$ Limit

For each fixed $\displaystyle{n}$,

$$\begin{align}
k_{+,n},k_{-,n} & \longrightarrow \dfrac{n\pi}{L}, & \mathcal{N}_{+,n},\mathcal{N}_{-,n} & \longrightarrow\dfrac{1}{\sqrt{2\omega_nL}}, & \omega _{+,n},\omega _{-,n} & \longrightarrow\omega _n.
\end{align}$$

Equivalently, for a family with bounded $\displaystyle{Q_{\kappa}^{\mathrm{D}}}$, the diverging term $\displaystyle{\dfrac{\mu}{2\kappa}(\phi_{1}^{2}+\phi_{2}^{2})|_{x=0}}$ forces

$$\begin{align}
\phi_{1}|_{x=0} & =\phi _{2}|_{x=0}=0
\end{align}$$

while the $\displaystyle{\dfrac{\mu\kappa}{2}(\phi_{1}-\phi_{2})^{2}|_{x=0}}$ term disappears. The two parity towers become degenerate. In terms of the annihilation operators $\displaystyle{a_{i,n}}$ used for the two Dirichlet pieces above, the fixed-mode limiting parity basis is

$$\begin{align}
b_{+,n} & \longrightarrow\dfrac{a_{1,n}+(-1)^{n+1}a_{2,n}}{\sqrt{2}}, \\
b_{-,n} & \longrightarrow\dfrac{a_{1,n}-(-1)^{n+1}a_{2,n}}{\sqrt{2}}.
\end{align}$$

This is only a unitary rotation inside each endpoint two-dimensional eigenspace. Therefore the endpoint theory has

$$\begin{align}
H_{\kappa\to0} & =\sum _{i=1}^{2}\sum _{n=1}^{\infty}\omega _n \left(a_{i,n}^{\dagger}a_{i,n}+\dfrac{1}{2}\right), \\
\mathcal{H}_{\kappa\to0} & =\mathcal{F}_{1,\mathrm{D}}\otimes\mathcal{F}_{2,\mathrm{D}}.
\end{align}$$

Thus the endpoint spatial operator and its fixed modes are those of the two decoupled Dirichlet theories.

## The $\displaystyle{\kappa\to\infty}$ Limit

For each fixed $\displaystyle{n}$,

$$\begin{align}
k_{+,n} & \longrightarrow\dfrac{(n-\frac{1}{2})\pi}{L}, & k_{-,n} & \longrightarrow\dfrac{n\pi}{L}, \\
\mathcal{N}_{+,n} & \longrightarrow\dfrac{1}{\sqrt{2\Omega_{2n-1}L}}, &
\mathcal{N}_{-,n} & \longrightarrow\dfrac{1}{\sqrt{2\Omega_{2n}L}}.
\end{align}$$

For a family with bounded $\displaystyle{Q_{\kappa}^{\mathrm{D}}}$, the diverging interface term now forces $\displaystyle{\phi_{1}|_{x=0}=\phi _{2}|_{x=0}}$. Using the difference of the two interface conditions once more then gives $\displaystyle{\phi_{1}'|_{x=0}=\phi'_{2}|_{x=0}}$. Hence the two components define one field

$$\begin{align}
\phi(t,x) & =\begin{cases}
\phi _1(t,x), & -L\leq x\leq0, \\
\phi _2(t,x), & 0\leq x\leq L,
\end{cases}
& \phi(t,-L) & =\phi(t,L)=0.
\end{align}$$

The normalized global Dirichlet modes and frequencies are

$$\begin{align}
K_{r} & =\dfrac{r\pi}{2L}, & \Phi_{r}(x) & =\dfrac{e^{-i\Omega _{r}t}}{\sqrt{2L\Omega _{r}}}\sin\left(K_{r}(x+L)\right), & \Omega _r & =\sqrt{m^{2}+K_{r}^{2}}, & r & =1,2,\dots.
\end{align}$$

The even and odd towers interlace as

$$\begin{align}
\Phi _{+,n} & \to \Phi _{2n-1}, & \Phi _{-,n} & \to \Phi _{2n}, \\
b_{+,n} & \to c_{2n-1}, & b_{-,n} & \to c_{2n}.
\end{align}$$

Consequently,

$$\begin{align}
\phi(t,x) & =\sum ^{\infty}_{r=1}\left(c_{r}\Phi _{r}+c_{r}^{\dagger}\Phi _{r}^{*}\right) \\
[c_{r},c^{\dagger}_{s}] & =\delta _{rs} \\
H_{\kappa\to \infty} & =\sum ^{\infty}_{r=1}\Omega _{r}\left( c^{\dagger}_{r}c_r+\dfrac{1}{2} \right)
\end{align}$$

This is the endpoint quantization of a single massive scalar on $\displaystyle{[-L,L]}$ with Dirichlet conditions at both outer endpoints. The statements in the two limits above establish the endpoint operators and convergence of each fixed mode. They do not by themselves prove convergence of the finite-$\displaystyle{\kappa}$ vacua or a unitary identification of the full Fock representations.

---

Unlike the Dirichlet construction, the decoupled Neumann theory requires no boundary-penalty action. Free variation of all four endpoints of the bulk action gives the natural Neumann conditions. The eoms and boundary conditions are

$$\begin{align}
-\ddot{\phi}_{i}+\phi _{i}''-m^{2}\phi _{i} & =0, & \phi'_{i}|_{\partial I_{i}} & =0
\end{align}$$

which are read off directly from the explicit endpoint terms in the variation, with no extra boundary action. The complete set of positive-frequency solutions of the eom with Neumann boundary condition is labelled by $\displaystyle{I=(i,n)}$ with $\displaystyle{n=0,1,2,\dots}$, where

$$\begin{align}
k_{n} & =\dfrac{n\pi}{L}, & \omega _{n} & =\sqrt{ m^{2}+k_{n}^{2} }, & \omega _{0} & =m \\
u_{1,0}(x) & =\dfrac{1}{\sqrt{ L }}, & u_{2,0}(x) & =\dfrac{1}{\sqrt{ L }} \\
u_{1,n}(x) & =\sqrt{ \dfrac{2}{L} }\cos\left(k_{n}(x+L)\right), & u_{2,n}(x) & =\sqrt{ \dfrac{2}{L} }\cos\left(k_{n}x\right), & n & =1,2,\dots \\
\Phi _{i,n}(t,x) & =\dfrac{e^{-i\omega _{n}t}}{\sqrt{ 2\omega _{n} }}u_{i,n}(x), & n & =0,1,2,\dots
\end{align}$$

Note the constant modes $\displaystyle{n=0}$ with $\displaystyle{\omega_{0}=m}$, which are absent in the Dirichlet case. These modes are normalized by the symplectic form

$$\begin{align}
(\Phi _{i,n},\Phi _{j,m}) & =iX_{j,m}^{*}\cdot X_{i,n}\cdot \omega =\delta _{ij}\delta _{nm}
\end{align}$$

Expand the fields as

$$\begin{align}
\phi _{i}(t,x) & =\sum _{n=0}^{\infty}\left(a_{i,n}\Phi _{i,n}(t,x)+a^{\dagger}_{i,n}\Phi ^{*}_{i,n}(t,x)\right)
\end{align}$$

then the symplectic form becomes

$$\begin{align}
\omega & =i\sum _{i,n}\delta a^{\dagger}_{i,n}\wedge \delta a_{i,n}
\end{align}$$

which gives the standard Poisson brackets

$$\begin{align}
\left\{a^{\dagger}_{i,n},a_{j,m}\right\} & =i\delta _{ij}\delta _{nm}
\end{align}$$

The Hamiltonian is the Noether charge of time translation,

$$\begin{align}
H & =\sum _{i}\dfrac{1}{2}\int _{I_{i}}\mathrm{d}x_{i}\left(\dot{\phi}_{i}^{2}+\phi '^{2}_{i}+m^{2}\phi _{i}^{2}\right)=\sum _{i,n}\omega _{n}\left(a^{\dagger}_{i,n}a_{i,n}+\dfrac{1}{2}\right)
\end{align}$$

with $\displaystyle{\omega_{0}=m}$. Upon quantization, we lift the coefficients to operators and the Poisson brackets to canonical commutators

$$\begin{align}
[a_{i,n},a^{\dagger}_{j,m}] & =\delta _{ij}\delta _{nm}
\end{align}$$

with all other commutators vanishing. The vacuum $\displaystyle{\ket{\Omega}}$ is annihilated by all $\displaystyle{a_{i,n}}$, and the endpoint Hilbert space is the tensor product of the Fock spaces of the two Neumann pieces.

## Gluing Theories

The same quadratic interaction couples the two field theories at the cut, while the total theory remains Gaussian. The total action is

$$\begin{align}
S_{\kappa}^{\mathrm{N}} & =\sum _{i}\int \mathrm{d}t\int _{I_{i}}\mathrm{d}x \dfrac{1}{2}(\dot{\phi}_{i}^{2}-\phi'^{2}_{i}-m^{2}\phi _{i}^{2})-\int \mathrm{d}t \dfrac{\mu\kappa}{2}\left(\phi_{1}-\phi_{2}\right)^{2}|_{x=0}.
\end{align}$$

Take a variation of the total action. Integrating by parts with
$\displaystyle{\int_{-L}^{0}\mathrm{d}x\frac{d}{dx}(\phi_{1}'\delta\phi_{1})=\phi_{1}'\delta\phi_{1}|_{0}-\phi_{1}'\delta\phi_{1}|_{-L}}$
and
$\displaystyle{\int_{0}^{L}\mathrm{d}x\frac{d}{dx}(\phi_{2}'\delta\phi_{2})=\phi_{2}'\delta\phi_{2}|_{L}-\phi_{2}'\delta\phi_{2}|_{0}}$,
we have

$$\begin{align}
\delta S_{\kappa}^{\mathrm{N}} & =\sum _{i}\int \mathrm{d}t\int _{I_{i}}\mathrm{d}x\left(-\ddot{\phi}_{i}+\phi _{i}''-m^{2}\phi _{i}\right)\delta \phi _{i} \\
 & +\int \mathrm{d}t\,\phi'_{1}\delta\phi_{1}|_{x=-L}-\int \mathrm{d}t\,\phi'_{2}\delta\phi_{2}|_{x=L}+\sum _{i}\int _{I_{i}}\mathrm{d}x(\dot{\phi}_{i}\delta \phi _{i})|^{t_{f}}_{t_{i}} \\
 & +\int \mathrm{d}t\left((-\phi_{1}'-\mu\kappa(\phi_{1}-\phi_{2}))\delta \phi_{1}+(\phi_{2}'+\mu\kappa(\phi_{1}-\phi_{2}))\delta \phi_{2}\right)|_{x=0}.
\end{align}$$

We read out the boundary conditions

$$\begin{align}
\phi'_{1}|_{x=-L} & =0, & \phi' _{2}|_{x=L} & =0 \\
\phi_{1}'+\mu\kappa(\phi_{1}-\phi_{2})\bigg|_{x=0} & =0, &
\phi_{2}'+\mu\kappa(\phi_{1}-\phi_{2})\bigg|_{x=0} & =0.
\end{align}$$

i.e. $\displaystyle{\phi_{1}'|_{x=0}=\phi_{2}'|_{x=0}=-\mu\kappa(\phi_{1}-\phi_{2})|_{x=0}}$.

The eoms

$$\begin{align}
-\ddot{\phi}_{i}+\phi _{i}''-m^{2}\phi _{i} & =0, & i=1,2
\end{align}$$

and the symplectic potential

$$\begin{align}
\theta & =\sum _{i}\int _{I_{i}}\mathrm{d}x\dot{\phi}_{i}\delta \phi _{i} \\
\omega=\delta \theta & =\sum _{i}\int _{I_{i}}\mathrm{d}x\delta \dot{\phi}_{i}\wedge \delta \phi _{i}
\end{align}$$

The corresponding positive spatial quadratic form is

$$\begin{align}
Q_{\kappa}^{\mathrm{N}}[\phi_1,\phi_2]
&=\sum _{i=1}^{2}\int_{I_i}\mathrm{d}x
\left(|\phi_i'|^2+m^2|\phi_i|^2\right)
+\mu\kappa|q_1-q_2|^2.
\end{align}$$

For $\displaystyle{\kappa\to0}$, the interaction disappears and the two cut traces vary independently, giving $\displaystyle{\phi_1'(0)=\phi_2'(0)=0}$. For families with bounded $\displaystyle{Q_{\kappa}^{\mathrm{N}}}$, the $\displaystyle{\kappa\to\infty}$ limit forces $\displaystyle{q_1=q_2}$; the two interface conditions already give $\displaystyle{\phi_1'(0)=\phi_2'(0)}$. Thus the two components join into a single field on $\displaystyle{[-L,L]}$ with Neumann conditions at both outer endpoints.

For finite $\displaystyle{\kappa}$, solutions of the eom with the boundary conditions above split into $\displaystyle{\sigma=\pm 1}$ sectors satisfying

$$\begin{align}
\phi _{\sigma,2}(x) & =\sigma \phi _{\sigma,1}(-x)
\end{align}$$

Take

$$\begin{align}
\Phi _{+,n,1}(x) & =\mathcal{N}_{+,n}e^{-i\omega _{+,n}t}\cos(k _{+,n}(x+L)), & -L\leqslant x\leqslant 0 \\
\Phi _{+,n,2}(x) & =\mathcal{N}_{+,n}e^{-i\omega _{+,n}t}\cos(k _{+,n}(L-x)), & 0\leqslant x\leqslant L
\end{align}$$

for the even sector, where the interface conditions $\displaystyle{\phi_{1}'|_{0}=\phi_{2}'|_{0}=-\mu\kappa(\phi_{1}-\phi_{2})|_{0}}$ hold for every $\displaystyle{\kappa}$, since $\displaystyle{\phi_{1}(0)=\phi_{2}(0)}$ and both derivatives vanish. Hence

$$\begin{align}
k_{+,n} & =\dfrac{n\pi}{L}, & \omega _{+,n} & =\sqrt{ m^{2}+k_{+,n}^{2} }, & n & =0,1,2,\dots
\end{align}$$

the $\displaystyle{n=0}$ mode being the constant mode with $\displaystyle{\omega_{+,0}=m}$. This even tower is independent of $\displaystyle{\kappa}$. For the odd sector take

$$\begin{align}
\Phi _{-,n,1}(x) & =\mathcal{N}_{-,n}e^{-i\omega _{-,n}t}\cos(k _{-,n}(x+L)), & -L\leqslant x\leqslant 0 \\
\Phi _{-,n,2}(x) & =-\mathcal{N}_{-,n}e^{-i\omega _{-,n}t}\cos(k _{-,n}(L-x)), & 0\leqslant x\leqslant L
\end{align}$$

where $\displaystyle{\omega _{-,n}^{2}=m^{2}+k _{-,n}^{2}}$. The boundary conditions at $\displaystyle{x=0}$ give

$$\begin{align}
k_{-,n}\tan(k_{-,n}L) & =2\mu\kappa, & \tan(k_{-,n}L) & =\dfrac{2\mu\kappa}{k_{-,n}},
\end{align}$$

where $\displaystyle{n=1,2,\dots}$ and each root is the unique root in

$$\begin{align}
\dfrac{(n-1)\pi}{L}<k_{-,n}<\dfrac{(n-\frac{1}{2})\pi}{L},
\end{align}$$

since $\displaystyle{\tan}$ is positive and strictly increasing while $\displaystyle{2\mu\kappa/k}$ is positive and strictly decreasing on each such interval. In particular the lowest odd root satisfies $\displaystyle{0<k_{-,1}<\frac{\pi}{2L}}$, so that $\displaystyle{\omega_{-,1}\to m}$ as $\displaystyle{\kappa\to0}$ and the antisymmetric constant combination is smoothly recovered.

The normalization constant $\displaystyle{\mathcal{N}_{\sigma,n}}$ is given by

$$\begin{align}
\mathcal{N}_{\sigma,n} & =\dfrac{1}{\sqrt{ 2\omega _{\sigma,n} }}\left(L+\dfrac{\sin(2k_{\sigma,n}L)}{2k_{\sigma,n}}\right)^{-1/2}
\end{align}$$

so that the even sector has $\displaystyle{\mathcal{N}_{+,n}=\dfrac{1}{\sqrt{ 2\omega _{+,n}L }}}$ for $\displaystyle{n\geqslant1}$ and $\displaystyle{\mathcal{N}_{+,0}=\dfrac{1}{\sqrt{ 2m }}\dfrac{1}{\sqrt{ 2L }}}$, using $\displaystyle{\dfrac{\sin(2kL)}{2k}\to L}$ as $\displaystyle{k\to0}$. Therefore we have the orthonormal relations

$$\begin{align}
(\Phi _{\sigma,n},\Phi _{\tau,m}) & =iX_{\tau,m}^{*}\cdot X_{\sigma,n}\cdot \omega=\delta _{\sigma \tau}\delta _{nm}
\end{align}$$

expand

$$\begin{align}
\phi _{i}(t,x) & =\sum_{\sigma=\pm1}\sum_{n}\left(b_{\sigma,n}\Phi _{\sigma,n,i}(t,x)+b_{\sigma,n}^{\dagger}\Phi _{\sigma,n,i}^{*}(t,x)\right),
\end{align}$$

where the sum over $\displaystyle{n}$ runs over $\displaystyle{n=0,1,2,\dots}$ in the even sector and $\displaystyle{n=1,2,\dots}$ in the odd sector. The symplectic form, Poisson brackets, and quantum commutators are

$$\begin{align}
\omega & =i\sum_{\sigma=\pm1}\sum_{n}\delta b_{\sigma,n}^{\dagger}\wedge\delta b_{\sigma,n}, \\
\{b_{\sigma,n}^{\dagger},b_{\tau,r}\} & =i\delta _{\sigma\tau}\delta _{nr}, \\
[b_{\sigma,n},b_{\tau,r}^{\dagger}] & =\delta _{\sigma\tau}\delta _{nr},
\end{align}$$

with all other commutators vanishing.

The Hamiltonian is the Noether charge of time translation in the covariant phase space formalism. With the symplectic potential
$\displaystyle{\theta=\sum_{i}\int_{I_{i}}\mathrm{d}x\,\dot{\phi}_{i}\delta\phi_{i}}$
and the time-translation vector field $\displaystyle{X_{t}}$ ($\displaystyle{\Delta_{t}\phi_{i}=\dot{\phi}_{i}}$), we have
$\displaystyle{X_{t}\cdot\theta=\sum_{i}\int_{I_{i}}\mathrm{d}x\,\dot{\phi}_{i}^{2}}$,
and since $\displaystyle{X_{t}\cdot\delta S=[L]^{t_{f}}_{t_{i}}}$ holds as an identity (no eom used), the surface term is $\displaystyle{\alpha_{t}=L}$. Hence

$$\begin{align}
H_{\kappa}=X_{t}\cdot\theta-\alpha_{t} & =\dfrac{1}{2}\sum _{i=1}^{2}\int _{I_{i}}\mathrm{d}x \left(\dot{\phi}_{i}^{2}+\phi_{i}'^{2}+m^{2}\phi_{i}^{2}\right)+\dfrac{\mu\kappa}{2}\left(\phi _1(0)-\phi _2(0)\right)^{2} \\
 & =\sum_{\sigma=\pm1}\sum_{n}\omega _{\sigma,n} \left(b_{\sigma,n}^{\dagger}b_{\sigma,n}+\dfrac{1}{2}\right),
\end{align}$$

which is positive definite: the interface term enters with the plus sign, and the odd-sector frequencies are raised relative to the decoupled ones, $\displaystyle{\omega_{-,n}>\omega_{n-1}}$ (with the lowest odd mode just above $\displaystyle{m}$). The alternative expression
$\displaystyle{E_{\text{bulk}}-\frac{\mu\kappa}{2}(\phi_{1}-\phi_{2})^{2}|_{0}}$,
which would be indefinite, is not the covariant phase space charge and is not conserved on the solution space; it would correspond to the opposite sign of the interface term in the action.

The vacuum $\displaystyle{\ket{\Omega _{\kappa}}}$ is annihilated by every $\displaystyle{b_{\sigma,n}}$, and the Hilbert space is the bosonic Fock space generated by the even tower (including its constant mode) and the odd tower.

### The $\displaystyle{\kappa\to0}$ Limit

The even tower is independent of $\displaystyle{\kappa}$ and already coincides with the decoupled Neumann tower, while for each fixed $\displaystyle{n\geqslant1}$,

$$\begin{align}
k_{-,n} & \longrightarrow \dfrac{(n-1)\pi}{L}, & \mathcal{N}_{-,n} & \longrightarrow\dfrac{1}{\sqrt{ 2\omega _{n-1}L }}, & \omega _{-,n} & \longrightarrow\omega _{n-1},
\end{align}$$

with $\displaystyle{k_{-,1}\to0}$, $\displaystyle{\mathcal{N}_{-,1}\to\dfrac{1}{\sqrt{ 2m }}\dfrac{1}{\sqrt{ 2L }}}$ and $\displaystyle{\omega_{-,1}\to m}$. Equivalently, the vanishing interaction term $\displaystyle{\dfrac{\mu\kappa}{2}(\phi_{1}-\phi_{2})^{2}|_{x=0}\to0}$ leaves the two free Neumann conditions

$$\begin{align}
\phi_{1}'|_{x=0} & =\phi _{2}'|_{x=0}=0
\end{align}$$

decoupling the two intervals. The two parity towers become degenerate: for each $\displaystyle{r\geqslant0}$ the pair $\displaystyle{\{b_{+,r},\,b_{-,r+1}\}}$ sits at frequency $\displaystyle{\omega_r}$. In terms of the annihilation operators $\displaystyle{a_{i,r}}$ used for the two Neumann pieces above, the fixed-mode limiting basis is

$$\begin{align}
b_{+,r} & =\dfrac{a_{1,r}+(-1)^{r}a_{2,r}}{\sqrt{2}}, \\
b_{-,r+1} & \longrightarrow\dfrac{a_{1,r}-(-1)^{r}a_{2,r}}{\sqrt{2}},
\end{align}$$

the even combination being exact for every $\displaystyle{\kappa}$ since the even tower never moves, and the odd combination being the $\displaystyle{\kappa\to0}$ limit. In particular both constant modes are recovered: $\displaystyle{b_{+,0}\to\dfrac{a_{1,0}+a_{2,0}}{\sqrt{2}}}$ and $\displaystyle{b_{-,1}\to\dfrac{a_{1,0}-a_{2,0}}{\sqrt{2}}}$. This is a unitary rotation inside each degenerate two-dimensional eigenspace, and

$$\begin{align}
H_{\kappa\to0} & =\sum _{i=1}^{2}\sum_{m=0}^{\infty}\omega _m \left(a_{i,m}^{\dagger}a_{i,m}+\dfrac{1}{2}\right), \\
\mathcal{H}_{\kappa\to0} & =\mathcal{F}_{1,\mathrm{N}}\otimes\mathcal{F}_{2,\mathrm{N}}.
\end{align}$$

Thus the endpoint spatial operator and its fixed modes are those of the two decoupled Neumann theories.

## The $\displaystyle{\kappa\to\infty}$ Limit

For a family with bounded $\displaystyle{Q_{\kappa}^{\mathrm{N}}}$, the diverging interface term forces $\displaystyle{\phi_{1}|_{x=0}=\phi _{2}|_{x=0}}$, and the two interface conditions give $\displaystyle{\phi_{1}'|_{x=0}=\phi'_{2}|_{x=0}}$. Hence the two components define one field

$$\begin{align}
\phi(t,x) & =\begin{cases}
\phi _1(t,x), & -L\leq x\leq0, \\
\phi _2(t,x), & 0\leq x\leq L,
\end{cases}
& \phi'(t,-L) & =\phi'(t,L)=0.
\end{align}$$

For each fixed $\displaystyle{n}$, the even modes are already the global modes, $\displaystyle{\omega_{+,n}=\Omega_{2n}}$, while the odd ones converge to them,

$$\begin{align}
k_{-,n} & \longrightarrow\dfrac{(n-\frac{1}{2})\pi}{L}, & \omega_{-,n} & \longrightarrow\Omega_{2n-1}.
\end{align}$$

The normalized global Neumann modes and frequencies are

$$\begin{align}
K_{r} & =\dfrac{r\pi}{2L}, & \Phi_{r}(x) & =\dfrac{e^{-i\Omega _{r}t}}{\sqrt{2L\Omega _{r}}}\cos\left(K_{r}(x+L)\right), & \Omega _r & =\sqrt{m^{2}+K_{r}^{2}}, & r & =1,2,\dots,
\end{align}$$

together with the constant mode

$$\begin{align}
\Phi_{0}(x) & =\dfrac{e^{-imt}}{\sqrt{ 2m }}\dfrac{1}{\sqrt{ 2L }}.
\end{align}$$

The even and odd towers interlace as

$$\begin{align}
\Phi _{+,n} & \to \Phi _{2n}, & \Phi _{-,n} & \to \Phi _{2n-1}, & \Phi_{+,0} & \to \Phi_{0}, \\
b_{+,n} & \to c_{2n}, & b_{-,n} & \to c_{2n-1}, & b_{+,0} & \to c_{0}.
\end{align}$$

Consequently,

$$\begin{align}
\phi(t,x) & =\sum ^{\infty}_{r=0}\left(c_{r}\Phi _{r}+c_{r}^{\dagger}\Phi _{r}^{*}\right) \\
[c_{r},c^{\dagger}_{s}] & =\delta _{rs} \\
H_{\kappa\to \infty} & =\sum ^{\infty}_{r=0}\Omega _{r}\left( c^{\dagger}_{r}c_{r}+\dfrac{1}{2} \right)
\end{align}$$

This is the endpoint quantization of a single massive scalar on $\displaystyle{[-L,L]}$ with Neumann (natural) boundary conditions at both outer endpoints. The statements in the two limits above establish the endpoint operators and convergence of each fixed mode. They do not by themselves prove convergence of the finite-$\displaystyle{\kappa}$ vacua or a unitary identification of the full Fock representations.
