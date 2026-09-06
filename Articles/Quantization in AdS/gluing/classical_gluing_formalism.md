## Part I - Core Regional Classical Formalism

### Geometric Setup and Interface Data

Let

$$\begin{align}
M\simeq [t_{-},t_{+}]\times \Sigma
\end{align}$$

be a globally hyperbolic spacetime, and let $\displaystyle{\left\{\Sigma_i,i\in\mathcal I\right\}}$ be a finite decomposition of $\displaystyle{\Sigma}$ into codimension-zero submanifolds with boundary,

$$\begin{align}
\Sigma&=\bigcup_{i\in\mathcal I}\Sigma_i, & \operatorname{int}(\Sigma_i)\cap\operatorname{int}(\Sigma_j)&=\varnothing,\qquad i\neq j.
\end{align}$$

Define the internal interfaces, physical boundary components, and their timelike worldtubes by

$$\begin{align}
\Sigma_{ij}&=\partial\Sigma_i\cap\partial\Sigma_j\subset\operatorname{int}\Sigma, & \Sigma_{i0}&=\partial\Sigma_i\cap\partial\Sigma,\\
\Gamma_{ij}&=I\times\Sigma_{ij}, & \Gamma_{i0}&=I\times\Sigma_{i0},
\end{align}$$

where $\displaystyle{I=[t_-,t_+]}$, and let $\displaystyle{M_i=I\times\Sigma_i}$. The interfaces are smooth, pairwise, and timelike, with no triple junctions or corners.

For each side $\displaystyle{(i,e)}$ of an interface $\displaystyle{e=\{i,j\}}$, let

$$\begin{align}
(\mathcal Z_{i,e},\omega_{i,e}^{\mathrm{out}})
\end{align}$$

be its variational trace phase space. Here $\displaystyle{\mathcal{Z}_{i,e}}$ is the bulk trace data on $\displaystyle{\Gamma _{ij}}$ entering the Green/variational identity, while $\displaystyle{\omega _{i,e}^{\mathrm{out}}}$ is the boundary symplectic form with the outward orientation of region $\displaystyle{i}$. For each interface $\displaystyle{e=\left\{i,j\right\}}$ choose a fixed coorientation $\displaystyle{o_e}$ and set

$$\begin{align}
\epsilon_{i,e}&=+1, & \epsilon_{j,e}&=-1, & \omega_{i,e}^{o_e}&=\epsilon_{i,e}\omega_{i,e}^{\mathrm{out}}.
\end{align}$$

This separates the sign carried by the two outward orientations from the sign convention used for canonical relations. Reversing $\displaystyle{o_e}$ changes the fixed-oriented coordinates on both sides and leaves the geometric gluing relation unchanged.

When the trace phase space admits a cotangent polarization,

$$\begin{align}
\mathcal Z_{i,e}\simeq T^*\mathcal B_{ij},
\end{align}$$

we write its outward Darboux coordinates as $\displaystyle{(q_{ij},\Pi_{ij})}$. Here $\displaystyle{q_{ij}}$ is an admissible boundary history and $\displaystyle{\Pi_{ij}}$ is its conjugate boundary response.

The history space $\displaystyle{\mathcal B_{ij}}$ has sufficient regularity for the boundary pairing and the regional evolution problem to be well defined.

An identification of the boundary coordinates on the two copies of the same interface is denoted by

$$\begin{align}
J_{ij}:\mathcal B_{ij}\longrightarrow\mathcal B_{ji}.
\end{align}$$

Define

$$\begin{align}
N(i)&=\left\{j\in\mathcal I\setminus\{i\}:\Sigma_{ij}\neq\varnothing\right\}, & q_i&=(q_{ij})_{j\in N(i)}\in\mathcal B_i, & \mathcal B_i&\subseteq\bigoplus_{j\in N(i)}\mathcal B_{ij}.
\end{align}$$

Let $\displaystyle{\Xi_i^-}$ be the admissible initial Cauchy-data space at $\displaystyle{t=t_-}$. Compatibility between the initial data and the boundary histories is encoded by

$$\begin{align}
\mathfrak D_i\subset\Xi_i^-\times\mathcal B_i.
\end{align}$$

Physical boundary conditions on $\displaystyle{\Gamma_{i0}}$ are specified separately.

### Regional Action and Dynamics

The complete regional action contains all boundary and corner terms required by the chosen variational problem,

$$\begin{align}
S_i^{\mathrm{full}}[\Phi_i] &=\int_{M_i}\mathscr L_i+\int_{\Gamma_{i0}}\ell_{i0} +\sum_{j\in N(i)}B_{ij}^{\mathrm{pol}}[z_{i,e}] +S_i^{\mathrm{corner}}.
\end{align}$$

Here $\displaystyle{\ell_{i0}}$ implements the physical boundary condition, $\displaystyle{z_{i,e}\in\mathcal Z_{i,e}}$ is the full interface trace, $\displaystyle{B_{ij}^{\mathrm{pol}}}$ expresses its variation in the chosen polarization, and $\displaystyle{S_i^{\mathrm{corner}}}$ supplies the endpoint terms required by the variational principle.

After imposing the physical boundary conditions, its first variation is

$$\begin{align}
\delta S_i^{\mathrm{full}} &=\int_{M_i}\mathcal E_i[\Phi_i]\delta\Phi_i +\sum_{j\in N(i)}\braket{\Pi_{ij},\delta q_{ij}} +\Theta_i(t_+)-\Theta_i(t_-).
\end{align}$$

This equation defines $\displaystyle{\Pi_{ij}}$ as the boundary response conjugate to $\displaystyle{q_{ij}}$.

For a prescribed boundary history, the allowed regional variations satisfy

$$\begin{align}
\gamma_{ij}\Phi_i&=q_{ij}, & \gamma_{ij}\delta\Phi_i&=\delta q_{ij}=0.
\end{align}$$

Thus the regional problem first treats $\displaystyle{q_i}$ as external data. The same histories will be released and determined dynamically when the regions are glued.

Stationarity then gives the regional equations of motion,

$$\begin{align}
\mathcal E_i[\Phi_i]=0.
\end{align}$$

Let the combined interface trace be

$$\begin{align}
\gamma_i\Phi_i=(\gamma_{ij}\Phi_i)_{j\in N(i)}.
\end{align}$$

For a fixed $\displaystyle{q_i}$, define the regional solution space

$$\begin{align}
\mathcal P_i[q_i]=\left\{\Phi_i:\mathcal E_i[\Phi_i]=0,\ \gamma_i\Phi_i=q_i,\ \Phi_i\text{ satisfies the physical boundary conditions}\right\}.
\end{align}$$

The regional initial-boundary value problem is well posed on $\displaystyle{\mathfrak D_i}$. Each admissible pair determines a unique regional solution and hence a map

$$\begin{align}
(\xi_i^-,q_i)\longmapsto(\xi_i^+,\Pi_i).
\end{align}$$

Equivalently, the regional dynamics defines the input-output relation

$$\begin{align}
\mathscr U_i =\left\{(\xi_i^-,\xi_i^+;q_i,\Pi_i): \Phi_i\text{ solves the regional initial-boundary value problem}\right\}.
\end{align}$$

Define the on-shell action by

$$\begin{align}
S_{i,\mathrm{on}}(\xi_i^-,q_i)=S_i^{\mathrm{full}}[\Phi_i].
\end{align}$$

This is the complete regional action evaluated on the unique solution selected by $\displaystyle{(\xi_i^-,q_i)}$.

Its variation is

$$\begin{align}
\delta S_{i,\mathrm{on}} =\Theta_i(t_+)-\Theta_i(t_-)+\braket{\Pi_i,\delta q_i}.
\end{align}$$

Writing $\displaystyle{\Omega_i^\pm=\delta\Theta_i(t_\pm)}$, another field-space variation gives the regional symplectic balance law

$$\begin{align}
\Omega_i^+-\Omega_i^-=-\delta\braket{\Pi_i,\delta q_i},
\end{align}$$

so the regional input-output relation is exact isotropic, with $\displaystyle{S_{i,\mathrm{on}}}$ as its generating functional.

The right-hand side is the symplectic flux produced by the prescribed boundary history. It measures the exchange of symplectic data between the regional bulk system and its interface.

### Variational Derivation of the Gluing Conditions

Consider an interface $\displaystyle{e=\{i,j\}}$. Geometric continuity identifies the boundary histories by

$$\begin{align}
q_{ji}=J_{ij}q_{ij}.
\end{align}$$

Write $\displaystyle{q_e=q_{ij}}$. Gluing releases this common history, so that

$$\begin{align}
\delta q_{ij}&=\delta q_e, & \delta q_{ji}&=J_{ij}\delta q_e.
\end{align}$$

On regional solutions, with the initial and final Cauchy data fixed, the variation of the two regional actions is

$$\begin{align}
\delta(S_i^{\mathrm{full}}+S_j^{\mathrm{full}}) &=\braket{\Pi_{ij},\delta q_e} +\braket{\Pi_{ji},J_{ij}\delta q_e}\\
&=\braket{\Pi_{ij}+J_{ij}^*\Pi_{ji},\delta q_e}.
\end{align}$$

Stationarity for every admissible $\displaystyle{\delta q_e}$ gives the gluing conditions

$$\begin{align}
\boxed{ q_{ji}=J_{ij}q_{ij},\qquad \Pi_{ij}+J_{ij}^*\Pi_{ji}=0.}
\end{align}$$

Thus gluing amounts to finding common interface histories for which the two regional responses satisfy oriented flux matching.

The first equation identifies the boundary data, while the second follows from varying their common value in the summed regional action.

The identification $\displaystyle{J_{ij}}$ induces a symplectomorphism of the full variational traces,

$$\begin{align}
\mathbb J_{ij}:\mathcal Z_{i,e}^{o_e}\longrightarrow\mathcal Z_{j,e}^{o_e},
\end{align}$$

and the gluing relation is

$$\begin{align}
\mathsf G_e =\operatorname{Graph}(\mathbb J_{ij})
\subset\overline{\mathcal Z_{i,e}^{o_e}}\times\mathcal Z_{j,e}^{o_e}.
\end{align}$$

This relation identifies the full variational traces.

In the cotangent polarization this is the conormal relation to $\displaystyle{\operatorname{Graph}(J_{ij})}$. With fixed-oriented momenta $\displaystyle{p_{i,e}=\epsilon_{i,e}\Pi_{i,e}}$, it becomes

$$\begin{align}
p_{i,e}=J_{ij}^*p_{j,e}.
\end{align}$$

A change of boundary polarization is a canonical reparameterization of the same gluing relation. Transforming the regional evolution relations and the gluing relation together gives the same glued theory.

### Glued Phase Space and Symplectic Structure

To allow the interface histories to be determined by gluing, enlarge the fixed-history solution spaces to

$$\begin{align}
\widehat{\mathcal P}_i &=\bigsqcup_{q_i\in\mathcal B_i}\mathcal P_i[q_i], & \widehat{\mathcal P} &=\prod_{i\in\mathcal I}\widehat{\mathcal P}_i.
\end{align}$$

A point of $\displaystyle{\widehat{\mathcal P}}$ is a collection of regional solutions together with their admissible interface histories.

The classical gluing locus is

$$\begin{aligned}
\mathcal C=\Bigl\{(\Phi_i)_i\in\widehat{\mathcal P}:\;& q_{ji}=J_{ij}q_{ij},\\
&\Pi_{ij}+J_{ij}^*\Pi_{ji}=0 \quad\text{for every }e=\{i,j\}\Bigr\}.
\end{aligned}$$

On $\displaystyle{\mathcal C}$ the histories are determined by the coupled regional solutions rather than prescribed independently for each region.

Let

$$\begin{align}
\Omega_i(t)=\delta\Theta_i(t).
\end{align}$$

Each region is an open system, so $\displaystyle{\Omega_i(t)}$ can exchange symplectic flux through its artificial boundaries.

The symplectic form of the glued system is obtained by summing the regional forms and restricting to the gluing locus,

$$\begin{align}
\Omega_{\mathrm{glued}}(t) =\left.\sum_{i\in\mathcal I}\Omega_i(t)\right|_{\mathcal C}.
\end{align}$$

The linearized gluing conditions are

$$\begin{align}
\delta q_{ji}&=J_{ij}\delta q_{ij}, & \delta\Pi_{ij}+J_{ij}^*\delta\Pi_{ji}&=0.
\end{align}$$

Hence the symplectic flux from the two sides of each interface cancels,

$$\begin{align}
\delta\Pi_{ij}\wedge\delta q_{ij} +\delta\Pi_{ji}\wedge\delta q_{ji} &=(\delta\Pi_{ij}+J_{ij}^*\delta\Pi_{ji}) \wedge\delta q_{ij}\\
&=0.
\end{align}$$

The physical exterior boundary carries no symplectic flux, and therefore

$$\begin{align}
\Omega_{\mathrm{glued}}(t_+)=\Omega_{\mathrm{glued}}(t_-).
\end{align}$$

Thus gluing converts the open regional systems into a closed symplectic system.

The regional fluxes remain present as internal exchanges, while their sum is conserved. The next step identifies this glued system with the covariant phase space of the uncut theory.

### Global Reconstruction

Let $\displaystyle{\mathcal P_M}$ be the solution space of the global theory with the same physical boundary conditions. Assume that the regional and global problems use the same regularity class, that the complete action is additive across artificial interfaces, and that the continuity and flux conditions are the transmission conditions of the global equations.

Define the restriction map by

$$\begin{align}
\operatorname{Res}:\mathcal P_M&\longrightarrow\mathcal C, & \Phi&\longmapsto(\Phi|_{M_i})_{i\in\mathcal I}.
\end{align}$$

A global solution restricts to regional solutions satisfying the gluing conditions. Conversely, regional solutions in $\displaystyle{\mathcal C}$ define a global field. For every global test variation $\displaystyle{\eta}$, the regional Green identities give

$$\begin{align}
\braket{\mathcal E_M(\Phi),\eta} &=\sum_i\braket{\mathcal E_i(\Phi_i),\eta_i} +\sum_{e=\{i,j\}} \braket{\Pi_{ij}+J_{ij}^*\Pi_{ji},\gamma_e\eta}\\
&=0.
\end{align}$$

The reconstructed field therefore solves the global equations. Restriction is bijective, and additivity of the symplectic potential gives

$$\begin{align}
\operatorname{Res}^*\Omega_{\mathrm{glued}}=\Omega_M.
\end{align}$$

Hence

$$\begin{align}
(\mathcal P_M,\Omega_M)\simeq(\mathcal C,\Omega_{\mathrm{glued}}).
\end{align}$$

Since every complete order of gluing imposes the same interface conditions and reconstructs the same global solution, classical gluing is associative. Two partitions related by an artificial refinement are symplectomorphic through their common reconstruction of $\displaystyle{\mathcal P_M}$. Regional evolution and global evolution commute with the restriction map.

### Symmetries, Charges, and Flux Balance

Assume that the complete action and the fixed physical boundary conditions are invariant under an infinitesimal transformation $\displaystyle{X_\lambda}$, with the symmetry defined off shell. A prescribed interface history generally changes under this transformation and acts as an external source for the regional problem. The corresponding regional Noether charge satisfies

$$\begin{align}
H_{i,\lambda}(t_+)-H_{i,\lambda}(t_-) =-\braket{\Pi_i,\delta_\lambda q_i} +\text{physical-boundary flux}.
\end{align}$$

The symmetry preserves the interface identification,

$$\begin{align}
\delta_\lambda q_{ji}=J_{ij}\delta_\lambda q_{ij}.
\end{align}$$

Using the gluing conditions, the two internal contributions cancel,

$$\begin{align}
&-\braket{\Pi_{ij},\delta_\lambda q_{ij}} -\braket{\Pi_{ji},\delta_\lambda q_{ji}}\\
&\qquad =-\braket{\Pi_{ij}+J_{ij}^*\Pi_{ji}, \delta_\lambda q_{ij}}=0.
\end{align}$$

Hence the sum of regional charges is driven only by the physical boundaries.

### classical regional observable algebras

Choose regional coordinates $\displaystyle{(z_i,q_i)}$ on the admissible part of $\displaystyle{\widehat{\mathcal P}_i}$, where $\displaystyle{z_i\in X_i}$ labels the solution at fixed history. In these coordinates the fixed-history symplectic form is $\displaystyle{\Omega_i}$. The following construction applies on charts where these forms are constant and the regional solution and response maps are smooth.

For a fixed history, define the regional observable algebra by

$$\begin{align}
\mathcal H(X_i)
&=\left\{F\in C^\infty(X_i):
dF=-\Omega_i(X_F,\cdot),\
X_F\in C^\infty(X_i,X_i)\right\},\\
\{F,G\}_i&=dF(X_G)=-\Omega_i(X_F,X_G).
\end{align}$$

The condition on $\displaystyle{X_F}$ selects the functions whose Hamiltonian vectors belong to the chosen phase space. It does not include every smooth scalar function. The global observable algebra $\displaystyle{\mathcal H(\mathcal P_M)}$ is defined independently by the same condition using $\displaystyle{\Omega_M}$.

To compare different prescribed histories, use joint functions $\displaystyle{F(z_i,q_i)}$. Their full differential must have the form

$$\begin{align}
dF&=-\Omega_i(V_F,\delta z_i)
+\sum_{j\in N(i)}\braket{A_{F,ij},\delta q_{ij}},
\end{align}$$

where $\displaystyle{V_F}$ is a smooth regional phase-space vector and each $\displaystyle{A_{F,ij}}$ is a smooth interface density with compact support away from the temporal endpoints. The density and all its mixed derivatives use one fixed compact support for each observable. Physical histories are restriction classes on the declared time window; auxiliary extensions outside that window are identified.

For a product of regions, write $\displaystyle{y=(z_i,q_i)_i}$ and use the pairing

$$\begin{align}
\beta((V,A),(\delta z,\delta q))
&=-\sum_i\Omega_i(V_i,\delta z_i)
+\sum_{i,j}\braket{A_{ij},\delta q_{ij}},\\
\mathcal H_\beta(Y)
&=\left\{F\in C^\infty(Y):
dF=\beta(U_F,\cdot),\
U_F=(V_F,A_F)\text{ is smooth with the stated support}\right\}.
\end{align}$$

This defines the regional family algebra from regional data. Its fixed-history bracket is

$$\begin{align}
\{F,G\}_{\mathrm{reg}}
&=-\sum_i\Omega_i(V_{F,i},V_{G,i}).
\end{align}$$

Histories are prescribed parameters at this stage. Their derivatives are nevertheless retained because releasing a history changes the physical field. Point evaluation of a history has a delta-function derivative and does not belong to this family class.

The product and finite smooth functional calculus preserve the class:

$$\begin{align}
U_{FG}&=F\,U_G+G\,U_F,\\
U_{h(F_1,\ldots,F_k)}
&=\sum_a(\partial_a h)(F_1,\ldots,F_k)\,U_{F_a}.
\end{align}$$

For a constant skew operator $\displaystyle{\mathsf P}$ relative to $\displaystyle{\beta}$, the bracket $\displaystyle{\beta(U_F,\mathsf P U_G)}$ has gradient

$$\begin{align}
U_{\{F,G\}}
&=DU_F[\mathsf P U_G]-DU_G[\mathsf P U_F].
\end{align}$$

Hessian symmetry proves this formula and cancels the six Hessian terms in the Jacobi identity. Taking $\displaystyle{\mathsf P(V,A)=(V,0)}$ gives the regional bracket above.

### Release and the Sewn Observable Algebra

First substitute the common histories $\displaystyle{q_{ji}=J_{ij}q_{ij}}$. The chain rule adds the two history densities with the appropriate transpose of $\displaystyle{J_{ij}}$. Continue to denote the resulting family space by $\displaystyle{Y}$ and its pairing by $\displaystyle{\beta}$.

Use the regional evolution and response maps to solve the transmission conditions derived above. Let $\displaystyle{X}$ be coordinates on the resulting matched phase space, with symplectic form $\displaystyle{\Omega}$. Define the cut map

$$\begin{align}
\mathsf R:X\longrightarrow Y
\end{align}$$

by taking the regional coordinates and common histories of a matched solution. Its image is the physical matching locus. This construction uses the regional transmission problem; it does not use the independently defined global observable algebra.

For exact reconstruction of the whole chosen function class, require an extension map and the two regular transposes

$$\begin{align}
\mathsf B:Y&\longrightarrow X,&
\mathsf B\mathsf R&=1,\\
\beta(U,D\mathsf R(x)h)
&=-\Omega(D\mathsf R(x)^\flat U,h),&
-\Omega(v,\mathsf B y)&=\beta(\mathsf B^\flat v,y).
\end{align}$$

Here $\displaystyle{\mathsf B}$ is linear, $\displaystyle{D\mathsf R^\flat}$ is smooth in the background, and both transposes preserve the allowed vectors and history densities, including their fixed-support condition under background differentiation. On an actual local existence domain, all maps are restricted to open sets containing the matching locus and $\displaystyle{\mathsf B(Y)=X}$. These are model inputs: a bijection of solution spaces alone does not supply such an extension. In the scalar construction, $\displaystyle{\mathsf B}$ is obtained by extracting Cauchy data in the reference time strip.

Differentiating $\displaystyle{\mathsf B\mathsf R=1}$ and using the two pairings gives

$$\begin{align}
\mathsf B D\mathsf R(x)=1,\qquad
D\mathsf R(x)^\flat\mathsf B^\flat=1.
\end{align}$$

Define the sewn bracket on the family space by

$$\begin{align}
\mathsf P_{\mathrm{sew}}(y)
&=D\mathsf R(\mathsf B y)D\mathsf R(\mathsf B y)^\flat,\\
\{F,G\}_{\mathrm{sew}}(y)
&=\beta\bigl(U_F(y),\mathsf P_{\mathrm{sew}}(y)U_G(y)\bigr).
\end{align}$$

For a linear cut this reduces to $\displaystyle{\mathsf P_{\mathrm{sew}}=\mathsf R\mathsf R^\flat}$. It generally changes both the brackets within a region and the brackets between regions.

To see its meaning, write

$$\begin{align}
y=\mathsf R x+w,\qquad x=\mathsf B y,\qquad \mathsf B w=0.
\end{align}$$

At fixed $\displaystyle{w}$, the bracket is precisely the bracket of $\displaystyle{F(\mathsf R x+w)}$ and $\displaystyle{G(\mathsf R x+w)}$ on $\displaystyle{(X,\Omega)}$. Thus Jacobi follows from the symplectic bracket on each such leaf. The transpose conditions ensure that differentiating this expression gives another allowed full gradient. When $\displaystyle{\mathsf R}$ is nonlinear, this differentiation includes the derivative of $\displaystyle{\mathsf P_{\mathrm{sew}}}$; the constant-operator formula above cannot be used without that term.

Release is the pullback

$$\begin{align}
\mathsf R^*F&=F\circ\mathsf R,&
X_{\mathsf R^*F}(x)&=D\mathsf R(x)^\flat U_F(\mathsf R x).
\end{align}$$

It includes the history contribution to the gradient and satisfies

$$\begin{align}
\mathsf R^*\{F,G\}_{\mathrm{sew}}
&=\{\mathsf R^*F,\mathsf R^*G\}_X.
\end{align}$$

Surjectivity follows for each observable individually. Given $\displaystyle{G\in\mathcal H(X)}$, define

$$\begin{align}
\widetilde G&=G\circ\mathsf B,&
U_{\widetilde G}&=\mathsf B^\flat X_G\circ\mathsf B,&
\mathsf R^*\widetilde G&=G.
\end{align}$$

Hence the sewn observable algebra is

$$\begin{align}
\boxed{
\mathcal H_{\mathrm{sew}}
:=\frac{(\mathcal H_\beta(Y),\{\ ,\ \}_{\mathrm{sew}})}
{\ker\mathsf R^*}
\simeq\mathcal H(X).
}
\end{align}$$

The kernel consists exactly of families that vanish on physical matching data. It is an ideal for both multiplication and the sewn bracket. The inverse sends $\displaystyle{G}$ to $\displaystyle{[G\circ\mathsf B]}$. This proves exact surjectivity without an approximation or completion argument. The old fixed-history bracket does not, in general, descend through this kernel.

### Global Observables and Symmetry Equivariance

The independent global reconstruction above gives a symplectic assembly map $\displaystyle{\operatorname{Ass}:X\to\mathcal P_M}$ on the same admissible solution domain. Therefore

$$\begin{align}
\boxed{
\mathcal H_{\mathrm{sew}}
\longrightarrow\mathcal H(\mathcal P_M),\qquad
[F]\longmapsto F\circ\mathsf R\circ\operatorname{Ass}^{-1}
}
\end{align}$$

is a Poisson isomorphism. Its inverse is the explicit extension of the pulled-back global observable. Both the regional and global function classes were defined before this comparison.

For local observables, specify the same smooth finite-jet densities on both sides. Regional densities must match as functions of the spacetime point and field jets across each artificial interface. Their integrals then assemble to the global integral, and the boundary terms in their full variations cancel on matching variations. The resulting generated local algebras correspond exactly. The extension $\displaystyle{\mathsf B^*}$ need not preserve the original spacetime support, so this statement does not assert a strictly local lift of every regional family.

Let a physical symmetry preserve the action, physical boundary conditions, interface identification, and the chosen observable densities. If its regional and matched actions satisfy

$$\begin{align}
g_Y\mathsf R=\mathsf R g_X,
\end{align}$$

with $\displaystyle{g_X}$ symplectic and $\displaystyle{g_Y^{\pm1}}$ preserving the full-gradient class, then

$$\begin{align}
\mathsf R^*g_Y^*=g_X^*\mathsf R^*.
\end{align}$$

The kernel is invariant and the reconstructed physical algebra carries the same Poisson symmetry as the global theory. A symmetry between different existence domains gives an isomorphism between those algebras; an automorphism of one local algebra requires an invariant domain. Equivariance on matching data alone does not assert that the chosen bracket away from matching is invariant.

Finally, finite successive sewing gives the same observable isomorphism whenever every intermediate cluster retains its external histories and the corresponding transpose and extension maps. The cut maps compose, their transposes compose in reverse order, and the final matching solution is independent of the order by uniqueness of the transmission problem. This establishes associativity on the physical quotient under the same hypotheses as the classical solution reconstruction.
