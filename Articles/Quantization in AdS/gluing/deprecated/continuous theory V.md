# Neumann Gluing in Global $\displaystyle{\mathrm{AdS}_{2}}$ and Across Four Quadrants

This note considers two extensions of the Neumann gluing construction in `continuous theory I.md`. The first cuts global $\displaystyle{\mathrm{AdS}_{2}}$ at its spatial origin. The second cuts a flat square along both coordinate axes. In both cases, homogeneous Neumann conditions describe the decoupled endpoint. At finite gluing coupling the cut condition is a coupled Robin condition, and the strong-coupling limit imposes continuity of the field together with matching of its oriented normal derivative.

## Local Neumann Gluing Rule

Let a coordinate $\displaystyle{s}$ increase from a region $\displaystyle{M_{-}}$ to a region $\displaystyle{M_{+}}$, with the interface at $\displaystyle{s=0}$. Denote the two traces by

$$\begin{align}
q_{-} & =\phi_{-}|_{s=0}, & q_{+} & =\phi_{+}|_{s=0}.
\end{align}$$

For the scalar bulk action used below, the cut-supported part of the bulk variation is

$$\begin{align}
\delta S_{\mathrm{bulk}}|_{\Gamma} & =\int_{\Gamma}\left(-\partial_s\phi_{-}\,\delta q_{-}+\partial_s\phi_{+}\,\delta q_{+}\right).
\end{align}$$

Add the positive-coupling interaction

$$\begin{align}
S_{\Gamma,g} & =-\dfrac{g}{2}\int_{\Gamma}(q_{-}-q_{+})^{2}, & g&>0.
\end{align}$$

Free variation of the two traces gives

$$\begin{align}
\partial_s\phi_{-}|_{\Gamma} & =\partial_s\phi_{+}|_{\Gamma}=-g(q_{-}-q_{+}).
\end{align}$$

Equivalently, if $\displaystyle{n_{-}}$ and $\displaystyle{n_{+}}$ are the outward normals of the two regions, then

$$\begin{align}
n_{-}^{\mu}\partial_{\mu}\phi_{-}+n_{+}^{\mu}\partial_{\mu}\phi_{+} & =0.
\end{align}$$

The same interaction has a boundary-polarized form adapted to Neumann data. After the corresponding boundary Legendre transform, vary a common oriented derivative $\displaystyle{d_{\Gamma}}$ independently and take

$$\begin{align}
\widetilde S_{\Gamma,g} & =\int_{\Gamma}\left[d_{\Gamma}(q_{-}-q_{+})+\dfrac{d_{\Gamma}^{2}}{2g}\right].
\end{align}$$

Its interface equations are

$$\begin{align}
\partial_s\phi_{-}|_{\Gamma} & =d_{\Gamma}, & \partial_s\phi_{+}|_{\Gamma} & =d_{\Gamma}, & q_{-}-q_{+}+\dfrac{d_{\Gamma}}{g} & =0.
\end{align}$$

Eliminating $\displaystyle{d_{\Gamma}}$ returns $\displaystyle{S_{\Gamma,g}}$ exactly. We use this eliminated form for the mode calculations.

## A Cut Through the Origin of Global $\displaystyle{\mathrm{AdS}_{2}}$

### Geometry, Action, and the Decoupled Neumann Theory

Take global $\displaystyle{\mathrm{AdS}_{2}}$ with unit radius,

$$\begin{align}
\mathrm{d}s^{2} & =\dfrac{-\mathrm{d}t^{2}+\mathrm{d}\rho^{2}}{\cos^{2}\rho}, & -\dfrac{\pi}{2}<\rho<\dfrac{\pi}{2}.
\end{align}$$

For a real scalar with $\displaystyle{m^{2}>0}$, write

$$\begin{align}
m^{2} & =\Delta(\Delta-1), & \Delta&=\dfrac12+\sqrt{\dfrac14+m^{2}}>1.
\end{align}$$

The covariant action becomes

$$\begin{align}
S & =-\dfrac12\int\mathrm{d}^{2}x\sqrt{-g}\left(\partial_{\mu}\phi\partial^{\mu}\phi+m^{2}\phi^{2}\right) \\
& =\dfrac12\int\mathrm{d}t\int_{-\pi/2}^{\pi/2}\mathrm{d}\rho\left[\dot\phi^{2}-(\partial_{\rho}\phi)^{2}-\dfrac{m^{2}}{\cos^{2}\rho}\phi^{2}\right].
\end{align}$$

We keep the standard normalizable branch at the two conformal boundaries,

$$\begin{align}
\phi(t,\rho)&=O\left((\cos\rho)^{\Delta}\right), & \rho&\to\pm\dfrac{\pi}{2}.
\end{align}$$

Cut the spatial interval into

$$\begin{align}
I_{L} & =\left(-\dfrac{\pi}{2},0\right], & I_{R} & =\left[0,\dfrac{\pi}{2}\right).
\end{align}$$

With no cut action, free variation of the two origin traces gives

$$\begin{align}
\partial_{\rho}\phi_{L}|_{\rho=0} & =0, & \partial_{\rho}\phi_{R}|_{\rho=0} & =0.
\end{align}$$

Thus the decoupled theory consists of two copies of the half-$\displaystyle{\mathrm{AdS}_{2}}$ problem with a normalizable condition at the physical boundary and a homogeneous Neumann condition at the artificial cut.

For later use, define

$$\begin{align}
h_{n}^{(\Delta)} & =\dfrac{\pi 2^{1-2\Delta}\Gamma(n+2\Delta)}{n!(n+\Delta)\Gamma(\Delta)^{2}}, & u_{n}(\rho) & =\dfrac{(\cos\rho)^{\Delta}C_{n}^{\Delta}(\sin\rho)}{\sqrt{h_{n}^{(\Delta)}}}.
\end{align}$$

The functions $\displaystyle{u_n}$ are the complete global spatial profiles and obey

$$\begin{align}
\int_{-\pi/2}^{\pi/2}\mathrm{d}\rho\,u_{n}(\rho)u_{r}(\rho)&=\delta_{nr}, & \omega_{n}^{\mathrm{global}}&=\Delta+n.
\end{align}$$

Only the even profiles have vanishing derivative at the origin. The two half-region families may therefore be chosen as

$$\begin{align}
v_{L,r}(\rho)&=\sqrt{2}\,u_{2r}(-\rho), & \rho&\in I_L, \\
v_{R,r}(\rho)&=\sqrt{2}\,u_{2r}(\rho), & \rho&\in I_R, & r&=0,1,2,\ldots, \\
\Phi_{i,r}^{\mathrm N}(t,\rho)&=\dfrac{e^{-i(\Delta+2r)t}}{\sqrt{2(\Delta+2r)}}v_{i,r}(\rho), & i&=L,R.
\end{align}$$

The equal-time pre-symplectic potential and pre-symplectic form are

$$\begin{align}
\theta_{0} & =\sum_{i=L,R}\int_{I_i}\mathrm{d}\rho\,\dot\phi_i\delta\phi_i, \\
\omega_{0}=\delta\theta_{0} & =\sum_{i=L,R}\int_{I_i}\mathrm{d}\rho\,\delta\dot\phi_i\wedge\delta\phi_i.
\end{align}$$

The displayed factors are fixed by the CPS contraction,

$$\begin{align}
(\Phi_{i,r}^{\mathrm N},\Phi_{j,s}^{\mathrm N}) & =iX_{j,s}^{*}\cdot X_{i,r}\cdot\omega_{0}=\delta_{ij}\delta_{rs}.
\end{align}$$

There are no gauge redundancies, so the pre-symplectic form is nondegenerate on the space of solutions.

### Finite Gluing Coupling and CPS Form

Add the origin interaction

$$\begin{align}
S_{g}^{\mathrm{AdS}_{2}} & =\sum_{i=L,R}S_i-\dfrac{g}{2}\int\mathrm{d}t\left(\phi_L-\phi_R\right)^{2}_{\rho=0}, & g&>0.
\end{align}$$

The bulk equation and the interface conditions are

$$\begin{align}
\left[-\partial_t^{2}+\partial_{\rho}^{2}-\dfrac{\Delta(\Delta-1)}{\cos^{2}\rho}\right]\phi_i&=0, \\
\partial_{\rho}\phi_L|_{0}&=\partial_{\rho}\phi_R|_{0}=-g(\phi_L-\phi_R)|_{0}.
\end{align}$$

Since the interaction contains no time derivatives, the pre-symplectic potential and pre-symplectic form remain

$$\begin{align}
\theta_g&=\sum_{i=L,R}\int_{I_i}\mathrm{d}\rho\,\dot\phi_i\delta\phi_i, \\
\omega_g&=\sum_{i=L,R}\int_{I_i}\mathrm{d}\rho\,\delta\dot\phi_i\wedge\delta\phi_i.
\end{align}$$

The Noether charge of global-time translation is

$$\begin{align}
H_g^{\mathrm{AdS}_{2}}&=\dfrac12\sum_{i=L,R}\int_{I_i}\mathrm{d}\rho\left[\dot\phi_i^{2}+(\partial_\rho\phi_i)^{2}+\dfrac{m^{2}}{\cos^{2}\rho}\phi_i^{2}\right]+\dfrac g2(\phi_L-\phi_R)^{2}_{\rho=0}.
\end{align}$$

Its positive spatial quadratic form defines a self-adjoint interface problem. The same interface equations make the symplectic fluxes from the two sides cancel.

### Exact Finite-$\displaystyle{g}$ Spectrum

Let $\displaystyle{f_{\omega}}$ be the right-half solution with the standard normalizable behavior,

$$\begin{align}
f_{\omega}(\rho)&=(\cos\rho)^{\Delta} {}_2F_1\left(\dfrac{\Delta-\omega}{2},\dfrac{\Delta+\omega}{2};\Delta+\dfrac12;\cos^{2}\rho\right).
\end{align}$$

It obeys

$$\begin{align}
f_{\omega}''+\left(\omega^{2}-\dfrac{\Delta(\Delta-1)}{\cos^{2}\rho}\right)f_{\omega}&=0.
\end{align}$$

The connection formula of the hypergeometric function at $\displaystyle{\rho=0}$ gives

$$\begin{align}
f_{\omega}(0)&=\dfrac{\sqrt\pi\,\Gamma\left(\Delta+\frac12\right)}{\Gamma\left(\frac{\Delta+1+\omega}{2}\right)\Gamma\left(\frac{\Delta+1-\omega}{2}\right)}, \\
f_{\omega}'(0)&=-\dfrac{2\sqrt\pi\,\Gamma\left(\Delta+\frac12\right)}{\Gamma\left(\frac{\Delta-\omega}{2}\right)\Gamma\left(\frac{\Delta+\omega}{2}\right)}.
\end{align}$$

Hence define the exact ratio

$$\begin{align}
D_{\Delta}(\omega):=\dfrac{f_{\omega}'(0)}{f_{\omega}(0)} &=-2\dfrac{\Gamma\left(\frac{\Delta+1-\omega}{2}\right)\Gamma\left(\frac{\Delta+1+\omega}{2}\right)}{\Gamma\left(\frac{\Delta-\omega}{2}\right)\Gamma\left(\frac{\Delta+\omega}{2}\right)}.
\end{align}$$

Reflection about the origin splits the solutions into $\displaystyle{\sigma=\pm1}$ sectors. Choose

$$\begin{align}
\Phi_{\sigma,r,L}(t,\rho)&=\sigma\mathcal N_{\sigma,r}e^{-i\omega_{\sigma,r}t}f_{\omega_{\sigma,r}}(-\rho), & \rho&\in I_L, \\
\Phi_{\sigma,r,R}(t,\rho)&=\mathcal N_{\sigma,r}e^{-i\omega_{\sigma,r}t}f_{\omega_{\sigma,r}}(\rho), & \rho&\in I_R.
\end{align}$$

For $\displaystyle{\sigma=+1}$, the field is continuous at the origin and derivative matching forces $\displaystyle{f_{\omega}'(0)=0}$. This gives the coupling-independent tower

$$\begin{align}
\omega_{+,r}&=\Delta+2r, & r&=0,1,2,\ldots.
\end{align}$$

For $\displaystyle{\sigma=-1}$, derivative matching is automatic and the remaining interface equation gives

$$\begin{align}
D_{\Delta}(\omega_{-,r})&=2g, & \Delta+2r&<\omega_{-,r}<\Delta+2r+1, & r&=0,1,2,\ldots.
\end{align}$$

There is one root in each displayed interval. This also follows from monotonicity of the Robin eigenvalues of the half-interval problem. The CPS norm is

$$\begin{align}
iX_{\sigma,r}^{*}\cdot X_{\sigma,r}\cdot\omega_g &=4\omega_{\sigma,r}|\mathcal N_{\sigma,r}|^{2} \int_{0}^{\pi/2}\mathrm{d}\rho\,f_{\omega_{\sigma,r}}(\rho)^{2}.
\end{align}$$

Therefore the positive choice

$$\begin{align}
\mathcal N_{\sigma,r}&=\left[4\omega_{\sigma,r}\int_{0}^{\pi/2}\mathrm{d}\rho\,f_{\omega_{\sigma,r}}(\rho)^{2}\right]^{-1/2}
\end{align}$$

gives

$$\begin{align}
(\Phi_{\sigma,r},\Phi_{\tau,s})&=iX_{\tau,s}^{*}\cdot X_{\sigma,r}\cdot\omega_g=\delta_{\sigma\tau}\delta_{rs}.
\end{align}$$

Thus

$$\begin{align}
\phi_i&=\sum_{\sigma=\pm1}\sum_{r=0}^{\infty}\left(b_{\sigma,r}\Phi_{\sigma,r,i}+b_{\sigma,r}^{\dagger}\Phi_{\sigma,r,i}^{*}\right), \\
\omega_g&=i\sum_{\sigma=\pm1}\sum_{r=0}^{\infty}\delta b_{\sigma,r}^{\dagger}\wedge\delta b_{\sigma,r}, \\
[b_{\sigma,r},b_{\tau,s}^{\dagger}]&=\delta_{\sigma\tau}\delta_{rs}, \\
H_g^{\mathrm{AdS}_{2}}&=\sum_{\sigma=\pm1}\sum_{r=0}^{\infty}\omega_{\sigma,r}\left(b_{\sigma,r}^{\dagger}b_{\sigma,r}+\dfrac12\right).
\end{align}$$

### The Two Endpoints

Since $\displaystyle{D_{\Delta}(\Delta+2r)=0}$,

$$\begin{align}
g\to0:&\quad \omega_{-,r}\longrightarrow\Delta+2r.
\end{align}$$

The two reflection sectors then become degenerate and can be rotated into modes supported on the left or right half. This is exactly the direct sum of the two half-$\displaystyle{\mathrm{AdS}_{2}}$ Neumann theories.

Since $\displaystyle{f_{\omega}(0)=0}$ at $\displaystyle{\omega=\Delta+2r+1}$,

$$\begin{align}
g\to\infty:&\quad \omega_{-,r}\longrightarrow\Delta+2r+1.
\end{align}$$

For a family with bounded $\displaystyle{H_g^{\mathrm{AdS}_{2}}}$, the interface term forces $\displaystyle{\phi_L(0)=\phi_R(0)}$, while the finite-$\displaystyle{g}$ equations already impose equality of the oriented derivatives. The two fields therefore join into one global field. The limiting modes are

$$\begin{align}
\Phi_n^{\mathrm{global}}(t,\rho)&=\dfrac{e^{-i(\Delta+n)t}}{\sqrt{2(\Delta+n)}}u_n(\rho), & n&=0,1,2,\ldots, \\
\Phi_{+,r}&\longrightarrow\Phi_{2r}^{\mathrm{global}}, & \Phi_{-,r}&\longrightarrow\Phi_{2r+1}^{\mathrm{global}}.
\end{align}$$

The two towers interlace into the complete standard-normalizable global $\displaystyle{\mathrm{AdS}_{2}}$ spectrum.

## Four-Quadrant Gluing on a Flat Square

### General Interface Couplings

Now take

$$\begin{align}
M&=\mathbb R_t\times\Omega, & \Omega&=[-L,L]_x\times[-L,L]_y,
\end{align}$$

and define

$$\begin{align}
I_-&=[-L,0], & I_+&=[0,L], & \Omega_{ab}&=I_a^x\times I_b^y, & a,b&\in\{-,+\}.
\end{align}$$

Let $\displaystyle{\phi_{ab}}$ be the scalar on $\displaystyle{\Omega_{ab}}$. The four bulk actions are

$$\begin{align}
S_{\mathrm{bulk}}&=\dfrac12\sum_{a,b}\int\mathrm{d}t\int_{\Omega_{ab}}\mathrm{d}x\mathrm{d}y\left[\dot\phi_{ab}^{2}-(\partial_x\phi_{ab})^{2}-(\partial_y\phi_{ab})^{2}-m^{2}\phi_{ab}^{2}\right], & m&>0.
\end{align}$$

Use four independent positive couplings:

$$\begin{align}
g_x^- ,\ g_x^+&>0 &&\text{on the lower and upper halves of }x=0, \\
g_y^- ,\ g_y^+&>0 &&\text{on the left and right halves of }y=0.
\end{align}$$

The gluing action is

$$\begin{align}
S_{\Gamma,\mathbf g}&=-\dfrac12\int\mathrm{d}t\Bigg[ \sum_{b=\pm}g_x^b\int_{I_b^y}\mathrm{d}y\left(\phi_{-,b}(0,y)-\phi_{+,b}(0,y)\right)^{2} \\
&\hspace{35mm}+\sum_{a=\pm}g_y^a\int_{I_a^x}\mathrm{d}x\left(\phi_{a,-}(x,0)-\phi_{a,+}(x,0)\right)^{2}\Bigg].
\end{align}$$

The physical outer boundary and the artificial interfaces obey

$$\begin{align}
\partial_x\phi_{-,b}|_{x=-L}&=0, & \partial_x\phi_{+,b}|_{x=L}&=0, \\
\partial_y\phi_{a,-}|_{y=-L}&=0, & \partial_y\phi_{a,+}|_{y=L}&=0,
\end{align}$$

and

$$\begin{align}
\partial_x\phi_{-,b}|_{x=0}&=\partial_x\phi_{+,b}|_{x=0} =-g_x^b\left(\phi_{-,b}-\phi_{+,b}\right)|_{x=0}, \\
\partial_y\phi_{a,-}|_{y=0}&=\partial_y\phi_{a,+}|_{y=0} =-g_y^a\left(\phi_{a,-}-\phi_{a,+}\right)|_{y=0}.
\end{align}$$

Each line is the local Neumann gluing rule applied to one half-axis. The four couplings may be taken to their endpoints independently. There is no additional cut action at $\displaystyle{x=y=0}$: a single spatial point has zero measure in the interface integrals. The quadratic-form domain consists of one $\displaystyle{H^{1}}$ function on each quadrant, with no independent pointwise condition at the central junction.

The equivalent boundary-polarized action is obtained by introducing independently varied oriented derivatives $\displaystyle{d_x^b(t,y)}$ and $\displaystyle{d_y^a(t,x)}$ and replacing $\displaystyle{S_{\Gamma,\mathbf g}}$ by

$$\begin{align}
\widetilde S_{\Gamma,\mathbf g}&=\int\mathrm{d}t\Bigg[ \sum_{b=\pm}\int_{I_b^y}\mathrm{d}y\left(d_x^b(\phi_{-,b}-\phi_{+,b})+\dfrac{(d_x^b)^2}{2g_x^b}\right) \\
&\hspace{35mm}+\sum_{a=\pm}\int_{I_a^x}\mathrm{d}x\left(d_y^a(\phi_{a,-}-\phi_{a,+})+\dfrac{(d_y^a)^2}{2g_y^a}\right)\Bigg].
\end{align}$$

Eliminating these interface derivatives gives $\displaystyle{S_{\Gamma,\mathbf g}}$ and the same cut equations.

### CPS Form, Noether Charge, and the General Mode Problem

The bulk equations are

$$\begin{align}
\left(-\partial_t^{2}+\partial_x^{2}+\partial_y^{2}-m^{2}\right)\phi_{ab}&=0.
\end{align}$$

The equal-time pre-symplectic potential and pre-symplectic form are

$$\begin{align}
\theta_{\mathbf g}&=\sum_{a,b}\int_{\Omega_{ab}}\mathrm{d}x\mathrm{d}y\,\dot\phi_{ab}\delta\phi_{ab}, \\
\omega_{\mathbf g}&=\sum_{a,b}\int_{\Omega_{ab}}\mathrm{d}x\mathrm{d}y\,\delta\dot\phi_{ab}\wedge\delta\phi_{ab}.
\end{align}$$

The Noether charge of time translation is

$$\begin{align}
H_{\mathbf g}&=\dfrac12\sum_{a,b}\int_{\Omega_{ab}}\mathrm{d}x\mathrm{d}y\left[\dot\phi_{ab}^{2}+(\partial_x\phi_{ab})^{2}+(\partial_y\phi_{ab})^{2}+m^{2}\phi_{ab}^{2}\right] \\
&\quad+\dfrac12\sum_{b=\pm}g_x^b\int_{I_b^y}\mathrm{d}y\left(\phi_{-,b}-\phi_{+,b}\right)^{2}_{x=0} +\dfrac12\sum_{a=\pm}g_y^a\int_{I_a^x}\mathrm{d}x\left(\phi_{a,-}-\phi_{a,+}\right)^{2}_{y=0}.
\end{align}$$

For nonnegative couplings, the corresponding positive closed quadratic form defines a self-adjoint spatial operator. Let $\displaystyle{u_{A,ab}^{(\mathbf g)}}$ be a complete real set of its eigenfunctions,

$$\begin{align}
-\left(\partial_x^{2}+\partial_y^{2}\right)u_{A,ab}^{(\mathbf g)}&=k_A^{2}u_{A,ab}^{(\mathbf g)}, & \Omega_A&=\sqrt{m^{2}+k_A^{2}},
\end{align}$$

with the outer and interface conditions above. Choose their scale so that

$$\begin{align}
\sum_{a,b}\int_{\Omega_{ab}}\mathrm{d}x\mathrm{d}y\,u_{A,ab}^{(\mathbf g)}u_{B,ab}^{(\mathbf g)}&=\delta_{AB}.
\end{align}$$

This scale is used inside the CPS normalization rather than as a separate definition of the physical modes:

$$\begin{align}
\Phi_{A,ab}^{(\mathbf g)}(t,x,y)&=\dfrac{e^{-i\Omega_A t}}{\sqrt{2\Omega_A}}u_{A,ab}^{(\mathbf g)}(x,y), \\
(\Phi_A^{(\mathbf g)},\Phi_B^{(\mathbf g)})&=iX_B^{*}\cdot X_A\cdot\omega_{\mathbf g}=\delta_{AB}.
\end{align}$$

For four unrelated couplings the coefficients in the vertical interface conditions jump at $\displaystyle{y=0}$, while those in the horizontal conditions jump at $\displaystyle{x=0}$. The general eigenproblem is therefore not a tensor product of two one-dimensional problems.

### Separable Couplings and Explicit Modes

The problem separates if

$$\begin{align}
g_x^-&=g_x^+=g_x, & g_y^-&=g_y^+=g_y.
\end{align}$$

The special choice $\displaystyle{g_x=g_y=g}$ makes all four half-axis couplings equal. It is useful first to solve the one-dimensional interface problem with a generic coupling $\displaystyle{g_z}$, where $\displaystyle{z=x}$ or $\displaystyle{y}$.

The reflection-even profiles are

$$\begin{align}
k_{+,n}^{(g_z)}&=\dfrac{n\pi}{L}, & n&=0,1,2,\ldots, \\
\chi_{+,n}^{(g_z)}(z)&=c_{+,n}\begin{cases}
\cos\left(k_{+,n}^{(g_z)}(z+L)\right), & -L\leq z\leq0, \\
\cos\left(k_{+,n}^{(g_z)}(L-z)\right), & 0\leq z\leq L,
\end{cases} \\
c_{+,0}&=\dfrac1{\sqrt{2L}}, & c_{+,n}&=\dfrac1{\sqrt L},\quad n\geq1.
\end{align}$$

They are independent of $\displaystyle{g_z}$. The reflection-odd profiles are

$$\begin{align}
k_{-,n}^{(g_z)}\tan\left(k_{-,n}^{(g_z)}L\right)&=2g_z, & \dfrac{(n-1)\pi}{L}&<k_{-,n}^{(g_z)}<\dfrac{(n-\frac12)\pi}{L}, & n&=1,2,\ldots, \\
\chi_{-,n}^{(g_z)}(z)&=c_{-,n}^{(g_z)}\begin{cases}
\cos\left(k_{-,n}^{(g_z)}(z+L)\right), & -L\leq z\leq0, \\
-\cos\left(k_{-,n}^{(g_z)}(L-z)\right), & 0\leq z\leq L,
\end{cases} \\
c_{-,n}^{(g_z)}&=\left[L+\dfrac{\sin\left(2k_{-,n}^{(g_z)}L\right)}{2k_{-,n}^{(g_z)}}\right]^{-1/2}.
\end{align}$$

For either coordinate, these profiles obey

$$\begin{align}
\int_{-L}^{L}\mathrm{d}z\,\chi_{\sigma,n}^{(g_z)}(z)\chi_{\tau,r}^{(g_z)}(z)&=\delta_{\sigma\tau}\delta_{nr}.
\end{align}$$

Let $\displaystyle{I=(\sigma_x,n_x;\sigma_y,n_y)}$, with $\displaystyle{n=0,1,\ldots}$ in a $\displaystyle{+}$ sector and $\displaystyle{n=1,2,\ldots}$ in a $\displaystyle{-}$ sector. The quadrantwise spatial profiles, frequencies, and positive-frequency solutions are

$$\begin{align}
u_I^{(g_x,g_y)}(x,y)&=\chi_{\sigma_x,n_x}^{(g_x)}(x)\chi_{\sigma_y,n_y}^{(g_y)}(y), \\
\Omega_I^{2}&=m^{2}+\left(k_{\sigma_x,n_x}^{(g_x)}\right)^{2}+\left(k_{\sigma_y,n_y}^{(g_y)}\right)^{2}, \\
\Phi_I^{(g_x,g_y)}(t,x,y)&=\dfrac{e^{-i\Omega_I t}}{\sqrt{2\Omega_I}}u_I^{(g_x,g_y)}(x,y).
\end{align}$$

Direct contraction with the pre-symplectic form gives

$$\begin{align}
(\Phi_I^{(g_x,g_y)},\Phi_J^{(g_x,g_y)})&=iX_J^{*}\cdot X_I\cdot\omega_{\mathbf g}=\delta_{IJ}.
\end{align}$$

Expanding

$$\begin{align}
\phi_{ab}&=\sum_I\left(a_I\Phi_{I,ab}^{(g_x,g_y)}+a_I^{\dagger}\Phi_{I,ab}^{(g_x,g_y)*}\right)
\end{align}$$

gives

$$\begin{align}
\omega_{\mathbf g}&=i\sum_I\delta a_I^{\dagger}\wedge\delta a_I, & [a_I,a_J^{\dagger}]&=\delta_{IJ}, & H_{\mathbf g}&=\sum_I\Omega_I\left(a_I^{\dagger}a_I+\dfrac12\right).
\end{align}$$

### Decoupled and Fully Glued Limits

If all four couplings tend to zero, the interaction disappears and every quadrant has homogeneous Neumann conditions on all four of its sides. In the separable basis,

$$\begin{align}
k_{-,n}^{(g_z)}&\longrightarrow\dfrac{(n-1)\pi}{L}.
\end{align}$$

For each half-interval Neumann profile, the reflection-even and reflection-odd combinations become degenerate and may be rotated into functions supported on $\displaystyle{I_-}$ or $\displaystyle{I_+}$. Their two-dimensional products give the direct sum of the four quadrant theories.

If all four couplings tend to infinity while the quadratic-form energy stays bounded, all four field jumps vanish. The interface equations also give matching of $\displaystyle{\partial_x\phi}$ across $\displaystyle{x=0}$ and of $\displaystyle{\partial_y\phi}$ across $\displaystyle{y=0}$. The four fields therefore join into one field on the full square with homogeneous Neumann conditions on its physical outer boundary.

In the separable basis,

$$\begin{align}
k_{+,n}^{(g_z)}&=\dfrac{n\pi}{L}, & k_{-,n}^{(g_z)}&\longrightarrow\dfrac{(n-\frac12)\pi}{L}.
\end{align}$$

These two towers interlace into the full-interval Neumann wave numbers

$$\begin{align}
K_r&=\dfrac{r\pi}{2L}, & r&=0,1,2,\ldots.
\end{align}$$

Define

$$\begin{align}
U_0(z)&=\dfrac1{\sqrt{2L}}, & U_r(z)&=\dfrac1{\sqrt L}\cos\left(K_r(z+L)\right),\quad r\geq1.
\end{align}$$

The limiting full-square modes are

$$\begin{align}
\Phi_{r,s}^{\mathrm{square}}(t,x,y)&=\dfrac{e^{-i\Omega_{r,s}t}}{\sqrt{2\Omega_{r,s}}}U_r(x)U_s(y), \\
\Omega_{r,s}&=\sqrt{m^{2}+K_r^{2}+K_s^{2}}, & r,s&=0,1,2,\ldots.
\end{align}$$

Taking only a subset of the four couplings to infinity produces a partially glued geometry. For example, $\displaystyle{g_x^{\pm}\to\infty}$ with finite $\displaystyle{g_y^{\pm}}$ first joins the left and right quadrants across $\displaystyle{x=0}$ while retaining a finite horizontal interface.

## Scope

The constructions above establish the classical positive quadratic forms, their self-adjoint interface operators, the CPS-normalized finite-coupling modes in the separable cases, and the fixed-mode endpoint spectra. They do not by themselves prove convergence of the continuum vacua or unitary equivalence of the endpoint Fock representations.

At the quantum level an unsmeared field restricted to an interface is distributional. The cut interactions should therefore be understood as classical quadratic forms or as regulator-dependent composite interface operators until an explicit interface regularization and renormalization prescription is supplied.
