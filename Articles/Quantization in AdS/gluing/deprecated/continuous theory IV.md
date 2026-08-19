Consider compact $\displaystyle{U(1)_k}$ Chern--Simons theory on

$$\begin{align}
M&=\mathbb R_t\times[-L,L]_x\times S_y^1, & y&\sim y+\ell_y,
\end{align}$$

with orientation $\displaystyle{\mathrm{d}t\wedge\mathrm{d}x\wedge\mathrm{d}y>0}$. The level is $\displaystyle{k\in\mathbb Z\setminus\{0\}}$; for a noncompact gauge group the same classical discussion applies with any nonzero real $\displaystyle{k}$. We first work on a connected interval $\displaystyle{I=[a,b]}$ and then introduce a cut at $\displaystyle{x=0}$.

The point of this model is that there are no local bulk photon modes. Nevertheless, boundary conditions remain essential: the Chern--Simons action is first order, so a boundary condition selects a polarization of the boundary connection. This replaces the Dirichlet--Neumann dichotomy of Maxwell theory.

## Action and Covariant Phase Space

On $\displaystyle{M_I=\mathbb R_t\times I\times S_y^1}$, use the Lorentzian Levi--Civita convention $\displaystyle{\varepsilon^{txy}=-1}$, consistently with the existing $\displaystyle{U(1)}$ Chern--Simons formalism note, and take

$$\begin{align}
S_{\mathrm{CS}}[A]&=\dfrac{k}{4\pi}\int_{M_I}\mathrm{d}^3x\,\varepsilon^{\mu\nu\rho}A_\mu\partial_\nu A_\rho=-\dfrac{k}{4\pi}\int_{M_I}A\wedge\mathrm{d}A.
\end{align}$$

Its variation is

$$\begin{align}
\delta S_{\mathrm{CS}}&=-\dfrac{k}{2\pi}\int_{M_I}\delta A\wedge F+\theta_{\mathrm{CS}}|_{\Sigma_f}-\theta_{\mathrm{CS}}|_{\Sigma_i} \\
&\quad-\dfrac{k}{4\pi}\sum_{\alpha\in\partial I}n_\alpha\int_{\mathbb R_t\times S_y^1}\mathrm{d}t\mathrm{d}y\left(A_t\delta A_y-A_y\delta A_t\right)|_\alpha,
\end{align}$$

where $\displaystyle{n_a=-1}$ and $\displaystyle{n_b=+1}$ are the outward $\displaystyle{x}$-normals. The bulk equation and the Cauchy-surface pre-symplectic data are

$$\begin{align}
F&=0, \\
\theta_{\mathrm{CS}}&=\dfrac{k}{4\pi}\int_{I\times S_y^1}\mathrm{d}x\mathrm{d}y\left(A_x\delta A_y-A_y\delta A_x\right), \\
\omega_{\mathrm{CS}}&=\delta\theta_{\mathrm{CS}}=\dfrac{k}{2\pi}\int_{I\times S_y^1}\mathrm{d}x\mathrm{d}y\,\delta A_x\wedge\delta A_y.
\end{align}$$

The solutions satisfying the selected boundary conditions form the pre-phase space. For a gauge transformation $\displaystyle{X_\lambda\cdot\delta A=\mathrm{d}\lambda}$, contraction with the pre-symplectic form gives

$$\begin{align}
X_\lambda\cdot\omega_{\mathrm{CS}}&=-\dfrac{k}{2\pi}\int_{I\times S_y^1}\mathrm{d}x\mathrm{d}y\,\lambda\,\delta F_{xy}+\dfrac{k}{2\pi}\sum_{\alpha\in\partial I}n_\alpha\int_{S_y^1}\mathrm{d}y\,\lambda\,\delta A_y|_\alpha.
\end{align}$$

After imposing $\displaystyle{F_{xy}=0}$, a gauge transformation that vanishes at the boundary is a null direction. A transformation with nonvanishing boundary value is not automatically gauge redundancy: it has the charge variation

$$\begin{align}
\delta Q_\lambda&=\dfrac{k}{2\pi}\sum_{\alpha\in\partial I}n_\alpha\int_{S_y^1}\mathrm{d}y\,\lambda\,\delta A_y|_\alpha.
\end{align}$$

Whether such a transformation is quotiented or retained as a physical boundary symmetry is part of the boundary-condition choice.

## Boundary Conditions as Polarizations

The bare boundary variation is proportional to $\displaystyle{A_t\delta A_y-A_y\delta A_t}$. Thus one may fix both tangential components, but a minimal variational principle fixes only one half of this canonical pair.

### Fixed Tangential Connection

The hard condition

$$\begin{align}
\delta A_t|_\alpha&=0, & \delta A_y|_\alpha&=0
\end{align}$$

makes the bare action differentiable without a boundary action. Gauge transformations must preserve the fixed connection. In particular, boundary-dependent gauge transformations are not physical fluctuating solutions, and there is no boundary current family. This condition is consistent but stronger than is required by a first-order theory.

### Canonical Polarizations

To fix $\displaystyle{A_t}$ while allowing $\displaystyle{A_y}$ to vary, add

$$\begin{align}
S_{\partial,\alpha}^{(t)}&=\dfrac{n_\alpha k}{4\pi}\int_\alpha\mathrm{d}t\mathrm{d}y\,A_tA_y.
\end{align}$$

The total boundary variation becomes

$$\begin{align}
\delta(S_{\mathrm{CS}}+S_{\partial,\alpha}^{(t)})|_\alpha&=\dfrac{n_\alpha k}{2\pi}\int_\alpha\mathrm{d}t\mathrm{d}y\,A_y\delta A_t.
\end{align}$$

Conversely, adding

$$\begin{align}
S_{\partial,\alpha}^{(y)}&=-\dfrac{n_\alpha k}{4\pi}\int_\alpha\mathrm{d}t\mathrm{d}y\,A_tA_y
\end{align}$$

gives

$$\begin{align}
\delta(S_{\mathrm{CS}}+S_{\partial,\alpha}^{(y)})|_\alpha&=-\dfrac{n_\alpha k}{2\pi}\int_\alpha\mathrm{d}t\mathrm{d}y\,A_t\delta A_y,
\end{align}$$

so $\displaystyle{A_y}$ is the fixed boundary datum. These two choices select conjugate polarizations. By themselves they do not choose a positive boundary Hamiltonian.

### Positive-Energy Chiral Polarization

Let $\displaystyle{v_\alpha>0}$ be a chosen boundary velocity and define

$$\begin{align}
\mathcal C_\alpha&=A_t+n_\alpha\operatorname{sgn}(k)v_\alpha A_y.
\end{align}$$

Add

$$\begin{align}
S_{\partial,\alpha}^{\mathrm{ch}}&=\dfrac{n_\alpha k}{4\pi}\int_\alpha\mathrm{d}t\mathrm{d}y\left[A_tA_y+n_\alpha\operatorname{sgn}(k)v_\alpha A_y^2\right] \\
&=\dfrac{n_\alpha k}{4\pi}\int_\alpha\mathrm{d}t\mathrm{d}y\,A_tA_y+\dfrac{|k|v_\alpha}{4\pi}\int_\alpha\mathrm{d}t\mathrm{d}y\,A_y^2.
\end{align}$$

Then

$$\begin{align}
\delta(S_{\mathrm{CS}}+S_{\partial,\alpha}^{\mathrm{ch}})|_\alpha&=\dfrac{n_\alpha k}{2\pi}\int_\alpha\mathrm{d}t\mathrm{d}y\,A_y\delta\mathcal C_\alpha.
\end{align}$$

The no-source chiral condition is

$$\begin{align}
\mathcal C_\alpha|_\alpha&=0.
\end{align}$$

The sign involving $\displaystyle{n_\alpha}$ is required if the Noether charge of time translations is to be positive on both boundary components. Evaluating

$$\begin{align}
H_{\partial_t}&=X_{\partial_t}\cdot\theta-\alpha_{\partial_t}
\end{align}$$

gives

$$\begin{align}
H_{\partial_t}^{\mathrm{ch}}&=\dfrac{|k|}{4\pi}\sum_{\alpha\in\partial I}v_\alpha\int_{S_y^1}\mathrm{d}y\,A_y^2|_\alpha.
\end{align}$$

Thus the two ends of an interval carry opposite chiralities but positive contributions to the same time-translation charge.

### Why There Is No Independent Maxwell-Type Neumann Condition

A condition such as $\displaystyle{F_{xa}|_\alpha=0}$ is compatible with the theory, but the bulk equation already imposes $\displaystyle{F=0}$. It is therefore vacuous on the solution space and does not cancel the off-shell boundary term $\displaystyle{A_t\delta A_y-A_y\delta A_t}$. A differentiable Chern--Simons action still requires a polarization such as one of those above. Hence there are distinct boundary conditions, but not an independent Dirichlet--Neumann pair analogous to Maxwell theory.

## Reduced Phase Space on One Interval

### Boundary Current Modes

Every local solution is flat. In a topologically trivial patch it can be written as

$$\begin{align}
A&=\mathrm{d}\Lambda.
\end{align}$$

For each endpoint $\displaystyle{\alpha}$, choose any smooth profile $\displaystyle{\chi_\alpha(x)}$ that equals one at $\displaystyle{\alpha}$ and zero at the other endpoint. Different choices differ by a gauge transformation that vanishes at both boundaries and hence define the same reduced solution.

For the chiral polarization, let

$$\begin{align}
q_m&=\dfrac{2\pi m}{\ell_y}, & m&\in\mathbb Z\setminus\{0\}.
\end{align}$$

The positive-frequency boundary modes are

$$\begin{align}
\Lambda_{\alpha,m}(t,x,y)&=\dfrac{\chi_\alpha(x)}{\sqrt{|km|}}e^{-iv_\alpha|q_m|t+iq_my}, & n_\alpha km&>0, \\
\mathcal A_{\alpha,m}&=\mathrm{d}\Lambda_{\alpha,m}.
\end{align}$$

The sign condition $\displaystyle{n_\alpha km>0}$ simultaneously gives positive frequency and positive CPS norm. Let $\displaystyle{X_{\alpha,m}}$ be the tangent vector generated by $\displaystyle{\mathcal A_{\alpha,m}}$. Evaluating the full bulk pre-symplectic form on flat connections gives

$$\begin{align}
(\mathcal A_{\alpha,m},\mathcal A_{\beta,n})&=iX_{\beta,n}^*\cdot X_{\alpha,m}\cdot\omega_{\mathrm{CS}}=\delta_{\alpha\beta}\delta_{mn}.
\end{align}$$

Equivalently, for a flat connection $\displaystyle{A=\mathrm{d}\lambda}$ the oscillator part of the pre-symplectic form is the endpoint expression

$$\begin{align}
\omega_{\mathrm{CS}}^{\mathrm{bdy}}&=\dfrac{k}{4\pi}\sum_{\alpha\in\partial I}n_\alpha\int_{S_y^1}\mathrm{d}y\,\delta\lambda_\alpha\wedge\partial_y\delta\lambda_\alpha.
\end{align}$$

The factor $\displaystyle{1/\sqrt{|km|}}$ above is fixed by the CPS contraction, not by a norm assigned directly to $\displaystyle{\Lambda}$. Expanding

$$\begin{align}
A^{\mathrm{bdy}}&=\sum_{\alpha\in\partial I}\sum_{m:\,n_\alpha km>0}\left(a_{\alpha,m}\mathcal A_{\alpha,m}+a_{\alpha,m}^\dagger\mathcal A_{\alpha,m}^*\right)
\end{align}$$

gives

$$\begin{align}
\omega_{\mathrm{CS}}^{\mathrm{bdy}}&=i\sum_{\alpha\in\partial I}\sum_{m:\,n_\alpha km>0}\delta a_{\alpha,m}^\dagger\wedge\delta a_{\alpha,m}, \\
[a_{\alpha,m},a_{\beta,n}^\dagger]&=\delta_{\alpha\beta}\delta_{mn}, \\
H_{\partial_t}^{\mathrm{bdy}}&=\sum_{\alpha\in\partial I}\sum_{m:\,n_\alpha km>0}v_\alpha|q_m|\left(a_{\alpha,m}^\dagger a_{\alpha,m}+\dfrac12\right).
\end{align}$$

The boundary charge density

$$\begin{align}
J_\alpha(y)&=\dfrac{n_\alpha k}{2\pi}A_y|_\alpha
\end{align}$$

has the classical current algebra

$$\begin{align}
\{J_\alpha(y),J_\beta(y')\}&=\delta_{\alpha\beta}\dfrac{n_\alpha k}{2\pi}\partial_y\delta(y-y').
\end{align}$$

Thus the two endpoint current algebras have opposite levels.

### Topological Holonomy Pair

The nonzero boundary Fourier modes have vanishing $\displaystyle{y}$ average. The remaining flat-connection data can be represented by

$$\begin{align}
\mathcal W_x&=\dfrac1{\ell_y}\int_{S_y^1}\mathrm{d}y\int_a^b\mathrm{d}x\,A_x, & \mathcal W_y&=\oint_{S_y^1}A_y\,\mathrm{d}y.
\end{align}$$

Substitution into the pre-symplectic form gives

$$\begin{align}
\omega_{\mathrm{CS}}^{\mathrm{top}}&=\dfrac{k}{2\pi}\delta\mathcal W_x\wedge\delta\mathcal W_y.
\end{align}$$

For chiral boundary conditions at both endpoints, the time-translation Noether charge in this sector is

$$\begin{align}
H_{\partial_t}^{\mathrm{top}}&=\dfrac{|k|}{4\pi\ell_y}(v_a+v_b)\mathcal W_y^2.
\end{align}$$

For compact $\displaystyle{U(1)}$, $\displaystyle{\mathcal W_y}$ is angular. The status of the conjugate constant boundary phase depends on whether constant boundary gauge transformations are retained as physical symmetries or included in the quotient. The displayed two-form is the classical result before making that additional global quotient.

## Gluing the Two Regions

Now return to

$$\begin{align}
I_1&=[-L,0], & I_2&=[0,L].
\end{align}$$

At the two copies of the cut, the outward normals are

$$\begin{align}
n_{0_1}&=+1, & n_{0_2}&=-1.
\end{align}$$

Boundary conditions of any of the types above may be imposed at the physical outer endpoints. At the artificial cut, however, we do not add the positive-energy chiral boundary actions and do not impose two independent chiral conditions. Instead the two regional actions are varied together on matching cut data. Equivalently, one may retain the cut boundary transformations temporarily in an extended product pre-phase space and then perform the reduction below.

The two intermediate cut current algebras have levels $\displaystyle{+k}$ and $\displaystyle{-k}$. This opposite sign is exactly what makes pure Chern--Simons gluing simpler than the Maxwell interpolation. If one first treated both cut faces as independent physical chiral boundaries, their cut Hamiltonians would have to be removed before the matching reduction; otherwise the two opposite chiral conditions would overconstrain the common connection.

### Matching as a Bundle-Patching Condition

Introduce a transition function $\displaystyle{e^{i\varphi(t,y)}}$ and impose

$$\begin{align}
A_{1,a}|_{0_1}-A_{2,a}|_{0_2}&=\partial_a\varphi, & a&=t,y, \\
\varphi&\longrightarrow\varphi+\lambda_1|_{0_1}-\lambda_2|_{0_2}.
\end{align}$$

This $\displaystyle{\varphi}$ specifies how the two local representatives describe one connection. It is not assigned a kinetic action. On the cylinder the transition function extends into either patch, so in the topologically trivial description one may choose $\displaystyle{\varphi=0}$ and write

$$\begin{align}
A_{1,a}|_{0_1}&=A_{2,a}|_{0_2}, & \delta A_{1,a}|_{0_1}&=\delta A_{2,a}|_{0_2}.
\end{align}$$

The two bare Chern--Simons boundary variations at the cut then cancel because their outward normals are opposite. Therefore the sum $\displaystyle{S_{\mathrm{CS}}[A_1]+S_{\mathrm{CS}}[A_2]}$ is differentiable on the matching space without a cut Hamiltonian or a metric-dependent penalty term.

### Gluing as CPS Reduction

Before the reduction, a diagonal boundary gauge transformation with common parameter $\displaystyle{\epsilon(t,y)}$ has the cut Noether charge

$$\begin{align}
Q_{\Gamma,\epsilon}&=\dfrac{k}{2\pi}\int_{S_y^1}\mathrm{d}y\,\epsilon\left(A_{1,y}|_{0_1}-A_{2,y}|_{0_2}\right).
\end{align}$$

The matching equation is the vanishing of this cut charge for every $\displaystyle{\epsilon}$. The gluing prescription is:

1. restrict the product pre-phase space to $\displaystyle{Q_{\Gamma,\epsilon}=0}$ for every $\displaystyle{\epsilon}$;
2. pull back $\displaystyle{\omega_1+\omega_2}$ to this constraint surface;
3. quotient the resulting null directions generated by the diagonal cut gauge transformations.

For the nonzero boundary Fourier components, the cut contribution is

$$\begin{align}
\omega_\Gamma&=\dfrac{k}{4\pi}\int_{S_y^1}\mathrm{d}y\left(\delta\lambda_{1,\Gamma}\wedge\partial_y\delta\lambda_{1,\Gamma}-\delta\lambda_{2,\Gamma}\wedge\partial_y\delta\lambda_{2,\Gamma}\right).
\end{align}$$

On $\displaystyle{\lambda_{1,\Gamma}=\lambda_{2,\Gamma}}$ its pullback vanishes. The common cut variation is then a null direction and is quotiented. Thus no independent cut current algebra remains after gluing.

The topological parts reduce just as directly. For the two pieces,

$$\begin{align}
\omega_1^{\mathrm{top}}+\omega_2^{\mathrm{top}}&=\dfrac{k}{2\pi}\left(\delta\mathcal W_{x,1}\wedge\delta\mathcal W_{y,1}+\delta\mathcal W_{x,2}\wedge\delta\mathcal W_{y,2}\right).
\end{align}$$

Matching gives $\displaystyle{\mathcal W_{y,1}=\mathcal W_{y,2}=\mathcal W_y}$, and hence

$$\begin{align}
\left.(\omega_1^{\mathrm{top}}+\omega_2^{\mathrm{top}})\right|_{\mathrm{match}}&=\dfrac{k}{2\pi}\delta(\mathcal W_{x,1}+\mathcal W_{x,2})\wedge\delta\mathcal W_y.
\end{align}$$

The sum $\displaystyle{\mathcal W_x=\mathcal W_{x,1}+\mathcal W_{x,2}}$ is the Wilson-line coordinate of the uncut interval. The relative coordinate becomes null on the matching surface and is removed by the quotient.

### Direct Comparison with the Uncut Cylinder

Solving $\displaystyle{F=0}$ directly on $\displaystyle{[-L,L]\times S_y^1}$ gives

$$\begin{align}
\omega_{\mathrm{uncut}}&=\dfrac{k}{4\pi}\int_{S_y^1}\mathrm{d}y\left(\delta\lambda_R\wedge\partial_y\delta\lambda_R-\delta\lambda_L\wedge\partial_y\delta\lambda_L\right) \\
&\quad+\dfrac{k}{2\pi}\delta\mathcal W_x\wedge\delta\mathcal W_y.
\end{align}$$

This is exactly the result of the cut reduction: only the physical outer-boundary current modes and the single global holonomy pair remain. With the positive-energy chiral polarizations at $\displaystyle{x=\pm L}$, the Noether charge is likewise the sum of the two outer-boundary chiral Hamiltonians and the global holonomy contribution.

For compact $\displaystyle{U(1)}$, the matching of $\displaystyle{y}$ holonomies is

$$\begin{align}
\mathcal W_{y,1}-\mathcal W_{y,2}&=2\pi s, & s&\in\mathbb Z
\end{align}$$

for chosen real lifts. If patch redefinitions, including winding large gauge transformations, are included in the gluing quotient and no outer boundary trivialization is held fixed, $\displaystyle{s}$ only changes the choice of lifts: one may choose equal lifts and use the matching equations above. If winding transformations at the physical outer boundaries are instead retained as physical symmetries, different $\displaystyle{s}$ are related to their charge or spectral-flow sectors and must not be quotiented silently. The local cut reduction is unchanged, but that global boundary-sector choice must be specified separately.

### Why No Finite-$\displaystyle{\kappa}$ Interaction Is Needed

Pure Chern--Simons gluing is the exact symplectic reduction just described. A quadratic term proportional to $\displaystyle{\kappa(A_1-A_2-\mathrm{d}\varphi)^2}$ would require a boundary metric and would give the transition field its own propagating dynamics. Such a family can be studied as Chern--Simons theory coupled to an interface theory, but its finite-$\displaystyle{\kappa}$ members are not pure Chern--Simons theory and are unnecessary for gluing.

If the two physical outer endpoints are also identified, all boundary current contributions are removed and the spatial slice becomes a torus. The remaining compact phase space is the holonomy torus

$$\begin{align}
\omega_{T^2}&=\dfrac{k}{2\pi}\delta\mathcal W_x\wedge\delta\mathcal W_y, & \mathcal W_x&\sim\mathcal W_x+2\pi, & \mathcal W_y&\sim\mathcal W_y+2\pi.
\end{align}$$

Its prequantization number is

$$\begin{align}
\dfrac1{2\pi}\int_{T^2}\omega_{T^2}&=k,
\end{align}$$

and standard geometric quantization gives the $\displaystyle{|k|}$-dimensional Hilbert space of compact $\displaystyle{U(1)_k}$ Chern--Simons theory on the torus. This provides a closed-spatial-slice check of the gluing prescription.

## Summary

The Chern--Simons problem has boundary conditions, but they are choices of boundary polarization rather than Maxwell-type Dirichlet or Neumann data. A hard fixed connection removes boundary current fluctuations; fixing one canonical component gives a polarization without a preferred positive Hamiltonian; and the orientation-dependent chiral condition gives two positive-energy, oppositely chiral boundary current algebras.

At an artificial cut, the two Chern--Simons boundary symplectic forms already occur with opposite signs. Gluing therefore consists of matching the two pullback connections, restricting the product pre-phase space, pulling back the pre-symplectic form, and quotienting the diagonal cut gauge transformations. The cut current modes cancel, the two regional holonomy pairs reduce to one global pair, and the result agrees exactly with the theory constructed directly on the uncut cylinder.
