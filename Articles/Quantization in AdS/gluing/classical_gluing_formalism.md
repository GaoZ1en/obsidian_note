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

### Classical Observable Algebra and Reconstruction

For the global phase space $\displaystyle{(\mathcal P_M,\Omega_M)}$, define the Hamiltonian observable algebra by

$$\begin{align}
\mathcal A(\mathcal P_M) =\left\{F\in C^\infty(\mathcal P_M):
\exists X_F\text{ with }X_F\cdot\Omega_M=-\delta F\right\}.
\end{align}$$

For $\displaystyle{F,G\in\mathcal A(\mathcal P_M)}$, the Poisson bracket is

$$\begin{align}
\{F,G\}_M=X_F\cdot X_G\cdot\Omega_M.
\end{align}$$

Every global observable has a representative on the gluing locus,

$$\begin{align}
F_{\mathcal C}&=(\operatorname{Res}^{-1})^*F, & \mathcal A(\mathcal C)&=\left\{F_{\mathcal C}:F\in\mathcal A(\mathcal P_M)\right\}.
\end{align}$$

Since $\displaystyle{\operatorname{Res}}$ is a symplectomorphism,

$$\begin{align}
\{F_{\mathcal C},G_{\mathcal C}\}_{\mathcal C} =(\operatorname{Res}^{-1})^*\{F,G\}_M.
\end{align}$$

Therefore reconstruction induces the Poisson-algebra isomorphism

$$\begin{align}
\mathcal A(\mathcal P_M)\simeq\mathcal A(\mathcal C).
\end{align}$$

Associativity and refinement invariance identify these observable algebras for every finite artificial partition.
