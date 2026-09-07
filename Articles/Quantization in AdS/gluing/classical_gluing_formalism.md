## Part I - Core Regional Classical Formalism

### Geometric Setup and Interface Data

Let

$$\begin{align}
M\simeq [t_{-},t_{+}]\times \Sigma
\end{align}$$

be a globally hyperbolic spacetime, and let $\displaystyle{\left\{\Sigma_i,i\in\mathcal I\right\}}$ be a finite decomposition of $\displaystyle{\Sigma}$ into codimension-zero cells with corners,

$$\begin{align}
\Sigma&=\bigcup_{i\in\mathcal I}\Sigma_i, & \operatorname{int}(\Sigma_i)\cap\operatorname{int}(\Sigma_j)&=\varnothing,\qquad i\neq j.
\end{align}$$

For a self-identification, the cells are the independently specified pieces before taking the quotient; the first equality is then understood through the quotient maps. The quotient topology, metric, field bundle, and regularity class must be specified. A manifold corner link and a smooth metric after sewing are separate requirements; a conic quotient instead requires a specified operator domain.

Index an artificial face by its **side occurrence** $\displaystyle{s}$, not by a pair of region labels. Let $\displaystyle{r(s)}$ be its region, $\displaystyle{\mathcal S_i=\{s:r(s)=i\}}$, and let $\displaystyle{s\mapsto\bar s}$ be a fixed-point-free involution pairing face occurrences. Define

$$\begin{align}
\mathcal E&=\{\{s,\bar s\}\}, & \Gamma_s&=I\times F_s, & M_i&=I\times\Sigma_i,
\end{align}$$

where $\displaystyle{I=[t_-,t_+]}$ and $\displaystyle{F_s}$ is the indicated face of the cut cell. The two regions $\displaystyle{r(s)}$ and $\displaystyle{r(\bar s)}$ may coincide. Physical boundary worldtubes are denoted by $\displaystyle{\Gamma_{i0}}$. All spatial intersections of faces and their temporal endpoints are retained. The face maps induce the corner identifications; their compositions and the associated field-jet transformations must be compatible with the declared quotient class.

On the relative interior of a side occurrence, let

$$\begin{align}
(\mathcal Z_s,\omega_s^{\mathrm{out}})
\end{align}$$

be its variational trace data and outward form, when this facewise phase-space presentation exists. The full regional trace need not be the product of these face spaces. For each seam $\displaystyle{e=\{s,\bar s\}}$, choose a fixed coorientation $\displaystyle{o_e}$ and set

$$\begin{align}
\epsilon_s&=+1, & \epsilon_{\bar s}&=-1, & \omega_s^{o_e}&=\epsilon_s\omega_s^{\mathrm{out}}.
\end{align}$$

This separates the sign carried by the two outward orientations from the sign convention used for canonical relations. Reversing $\displaystyle{o_e}$ changes the fixed-oriented coordinates on both sides and leaves the geometric gluing relation unchanged.

When the trace phase space admits a cotangent polarization,

$$\begin{align}
\mathcal Z_s\simeq T^*\mathcal B_s,
\end{align}$$

we write its outward coordinates as $\displaystyle{(q_s,\Pi_s)}$. This notation refers to the declared regular covector class and a verified polarization, not an unrestricted cotangent bundle of an arbitrary weak Fréchet space.

Choose a regional off-shell field class $\displaystyle{\mathcal F_i^{\mathrm{adm}}}$, including its physical boundary conditions and all traces required by the full variational problem. Define the regional history space as its **joint trace image**, with the quotient/trace topology:

$$\begin{align}
\mathcal B_i&=\gamma_i\mathcal F_i^{\mathrm{adm}}, & q_i&=\gamma_i\Phi_i.
\end{align}$$

Its projections to individual faces do not make those faces independent. For example, at a fixed time on a rectangle $\displaystyle{R}$, for an ordinary scalar with no imposed physical boundary conditions,

$$\begin{align}
\gamma H^1(R)&\simeq H^{1/2}(\partial R)
\subsetneq\prod_{s=1}^{4}H^{1/2}(F_s),&
\|q\|_{\mathrm{tr}}&=\inf_{\gamma u=q}\|u\|_{H^1(R)}.
\end{align}$$

Near two adjacent edges, parameterized by distance $\displaystyle{a,b}$ from their common vertex, this trace norm includes the cross term

$$\begin{align}
\int_0^\varepsilon\!\int_0^\varepsilon
\frac{|q_s(a)-q_{s'}(b)|^2}{a^2+b^2}\,da\,db<\infty.
\end{align}$$

In particular, constants $0$ and $1$ on these two edges fail the condition, although each edge datum is smooth. There is no corner point value for a generic $H^1$ field. Smooth classes instead retain the corner jets that are traces of one regional field; sewing transforms the full jets by the face maps, including reflection signs. The trace-image norm is the definition; the displayed cross term illustrates one rectangle condition, not a spacetime history well-posedness theorem. See [the joint trace norm and its nonadditivity](https://jschoeberl.github.io/iFEM/domaindecomposition/traces.html).

An identification of the boundary coordinates on the two copies of the same interface is denoted by

$$\begin{align}
J_s:\mathcal B_s\longrightarrow\mathcal B_{\bar s}.
\end{align}$$

In the displayed facewise formulas, $\displaystyle{J_s}$ is fixed and linear (or affine with its linear part acting on variations), and $\displaystyle{J_{\bar s}=J_s^{-1}}$. For nonlinear identifications use $\displaystyle{DJ_s(q)}$ and retain its background derivative when linearizing responses. Gauge connection histories require retained frame/transition data. Facewise identifications are imposed on the joint regional trace spaces, including induced corner compatibility.

Let $\displaystyle{\Xi_i^-}$ be the admissible initial Cauchy-data space at $\displaystyle{t=t_-}$. Compatibility between the initial data and the boundary histories is encoded by

$$\begin{align}
\mathfrak D_i\subset\Xi_i^-\times\mathcal B_i.
\end{align}$$

This domain includes all initial-history compatibility; it is not generally a product. Actual Banach/Fréchet charts for it, and smooth regional evolution on those charts, are explicit hypotheses wherever derivatives are used below. No automatic corner canonical pair is introduced by the existence of a geometric corner.

### Regional Action and Dynamics

The complete regional action contains all boundary and corner terms required by the chosen variational problem,

$$\begin{align}
S_i^{\mathrm{full}}[\Phi_i] &=\int_{M_i}\mathscr L_i+\int_{\Gamma_{i0}}\ell_{i0} +\sum_{s\in\mathcal S_i}B_s^{\mathrm{pol}}[z_s] +S_i^{\mathrm{corner}}.
\end{align}$$

Here $\displaystyle{\ell_{i0}}$ implements the physical boundary condition, $\displaystyle{B_s^{\mathrm{pol}}}$ expresses the side variation in the chosen polarization, and $\displaystyle{S_i^{\mathrm{corner}}}$ includes precisely the spatial-junction and endpoint terms required by the variational principle. A standard first-derivative scalar bulk action on a fixed rectangle has no additional spatial-corner action. Other actions may have one; it must be varied rather than inferred from the geometry alone.

After imposing the physical boundary conditions, its first variation is

$$\begin{align}
\delta S_i^{\mathrm{full}} &=\int_{M_i}\mathcal E_i[\Phi_i]\delta\Phi_i
+\lambda_i[\delta q_i]+\Theta_i(t_+)-\Theta_i(t_-).
\end{align}$$

This equation defines the full response one-form $\displaystyle{\lambda_i}$ on admissible history variations. The complete temporal potentials $\displaystyle{\Theta_i}$ retain their corner terms. Where a face/stratum density presentation exists, write

$$\begin{align}
\lambda_i[\delta q_i]
&=\sum_{s\in\mathcal S_i}\braket{\Pi_s,\delta q_s}
+\lambda_i^{\mathrm{corner}}[\delta q_i].
\end{align}$$

The last term is the actual remaining lower-stratum variation, if any; it is zero for the stated elementary scalar action. The equality is a pairing on the joint trace domain. Ambient face densities that differ by its annihilator represent the same covector. At energy regularity, a response belongs to the trace dual only when the Green identity defines such a functional; normal or corner point values must not be assumed.

For a prescribed boundary history, the allowed regional variations satisfy

$$\begin{align}
\gamma_i\Phi_i&=q_i, & \gamma_i\delta\Phi_i&=\delta q_i=0.
\end{align}$$

Thus the regional problem first treats $\displaystyle{q_i}$ as external data. The same histories will be released and determined dynamically when the regions are glued.

Stationarity then gives the regional equations of motion,

$$\begin{align}
\mathcal E_i[\Phi_i]=0.
\end{align}$$

Let the combined interface trace be

$$\begin{align}
\gamma_i\Phi_i=(\gamma_s\Phi_i)_{s\in\mathcal S_i},
\end{align}$$

with any further corner/polarization data included when the action requires them. For a fixed $\displaystyle{q_i}$, define the regional solution space in the declared field class by

$$\begin{align}
\mathcal P_i[q_i]=\left\{\Phi_i:\mathcal E_i[\Phi_i]=0,\ \gamma_i\Phi_i=q_i,\ \Phi_i\text{ satisfies the physical boundary conditions}\right\}.
\end{align}$$

Assume the regional initial-boundary value problem is well posed on $\displaystyle{\mathfrak D_i}$. Each admissible pair then determines a unique regional solution and hence a map

$$\begin{align}
(\xi_i^-,q_i)\longmapsto(\xi_i^+,\lambda_i).
\end{align}$$

Equivalently, the regional dynamics defines the input-output relation

$$\begin{align}
\mathscr U_i =\left\{(\xi_i^-,\xi_i^+;q_i,\lambda_i): \Phi_i\text{ solves the regional initial-boundary value problem}\right\}.
\end{align}$$

Define the on-shell action by

$$\begin{align}
S_{i,\mathrm{on}}(\xi_i^-,q_i)=S_i^{\mathrm{full}}[\Phi_i].
\end{align}$$

This is the complete regional action evaluated on the unique solution selected by $\displaystyle{(\xi_i^-,q_i)}$.

Its variation is

$$\begin{align}
\delta S_{i,\mathrm{on}} =\Theta_i(t_+)-\Theta_i(t_-)+\lambda_i.
\end{align}$$

Writing $\displaystyle{\Omega_i^\pm=\delta\Theta_i(t_\pm)}$, another field-space variation gives the regional symplectic balance law

$$\begin{align}
\Omega_i^+-\Omega_i^-=-\delta\lambda_i,
\end{align}$$

so the regional input-output relation is exact isotropic, with $\displaystyle{S_{i,\mathrm{on}}}$ as its generating functional.

The right-hand side is the symplectic flux produced by the prescribed boundary history. It measures the exchange of symplectic data between the regional bulk system and its interface.

### Variational Derivation of the Gluing Conditions

Define the common-history domain by the identifications on the actual regional trace images, together with all induced corner compatibility, and denote its inclusion by

$$\begin{align}
\iota_{\mathrm{sew}}:\mathcal B_{\mathrm{sew}}
\longrightarrow\prod_i\mathcal B_i,
\qquad q_{\bar s}=J_sq_s.
\end{align}$$

Use the admissible variation directions of this domain, with endpoint data controlled by the chosen variational principle. Each region enters the sum of actions once, even when both sides of a seam belong to that region. On regional solutions the released interface variation is

$$\begin{align}
\delta\!\left(\sum_iS_i^{\mathrm{full}}\right)_{\mathrm{interface}}
=\left(\iota_{\mathrm{sew}}^*\sum_i\lambda_i\right)[\delta q].
\end{align}$$

Consequently the general release equation is

$$\begin{align}
\boxed{\quad q\in\mathcal B_{\mathrm{sew}},\qquad
\iota_{\mathrm{sew}}^*\!\left(\sum_i\lambda_i\right)=0.\quad}
\end{align}$$

The second equation means zero as a covector on all admissible common-history variations, not zero for every component of an ambient facewise dual. On a smooth seam interior, when compactly supported variations there are freely available and no additional interface action is present, it reduces to

$$\begin{align}
q_{\bar s}=J_sq_s,\qquad \Pi_s+J_s^*\Pi_{\bar s}=0.
\end{align}$$

For a self-seam this is the variation of the two side terms in one regional action. At a spatial junction the full pulled-back covector equation remains the definition; separately varying incompatible edge histories is invalid. Ordinary scalar corners impose a compatibility domain, not independent corner canonical variables.

When the facewise regular cotangent polarization is valid, the identification $\displaystyle{J_s}$ induces a symplectomorphism of the face traces,

$$\begin{align}
\mathbb J_s:\mathcal Z_s^{o_e}\longrightarrow\mathcal Z_{\bar s}^{o_e},
\end{align}$$

and the gluing relation is

$$\begin{align}
\mathsf G_e =\operatorname{Graph}(\mathbb J_s)
\subset\overline{\mathcal Z_s^{o_e}}\times\mathcal Z_{\bar s}^{o_e}.
\end{align}$$

This describes a smooth-face specialization. The full relation also restricts to the joint history domain and imposes its pulled-back response equation; an unrestricted product of face graphs omits this information.

In the cotangent polarization this is the conormal relation to $\displaystyle{\operatorname{Graph}(J_s)}$. With fixed-oriented momenta $\displaystyle{p_s=\epsilon_s\Pi_s}$, it becomes

$$\begin{align}
p_s=J_s^*p_{\bar s}.
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
\mathcal C=\Bigl\{(\Phi_i)_i\in\widehat{\mathcal P}:\;&(q_i)_i\in\operatorname{im}\iota_{\mathrm{sew}},\\
&\iota_{\mathrm{sew}}^*\!\left(\sum_i\lambda_i\right)=0\Bigr\}.
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

Assume this locus has the smooth structure used for variations. Pullback commutes with the field-space exterior derivative, so the complete flux identity is

$$\begin{align}
\left.\sum_i(\Omega_i^+-\Omega_i^-)\right|_{\mathcal C}
=-\delta\left[\left.\sum_i\lambda_i\right|_{\mathcal C}\right]=0.
\end{align}$$

This uses the zero full response one-form on the matching locus; it includes the variation of the history inclusion when that inclusion is nonlinear. On smooth face interiors with fixed linear identifications, the familiar component calculation is

$$\begin{align}
\delta\Pi_s\wedge\delta q_s +\delta\Pi_{\bar s}\wedge\delta q_{\bar s} &=(\delta\Pi_s+J_s^*\delta\Pi_{\bar s}) \wedge\delta q_s\\
&=0.
\end{align}$$

The physical exterior boundary carries no symplectic flux, and therefore

$$\begin{align}
\Omega_{\mathrm{glued}}(t_+)=\Omega_{\mathrm{glued}}(t_-).
\end{align}$$

Thus the summed pre-symplectic form is conserved. Nondegeneracy, or the justified quotient of its gauge degeneracies, is a further phase-space condition; flux cancellation alone does not prove it.

The regional fluxes remain present as internal exchanges, while their sum is conserved. The next step identifies this glued system with the covariant phase space of the uncut theory.

### Global Reconstruction

Let $\displaystyle{\mathcal P_M}$ be the independently defined solution space of the global theory with the same physical boundary conditions and the declared quotient metric/operator domain. The following is a conditional reconstruction theorem. Assume that the complete action is additive, including corner terms, and that the joint trace domain and full released response are exactly the transmission data of the global variational problem. Also require a transmission regularity theorem: every matched piecewise solution belongs to the declared global solution class, and assembly and restriction are smooth in both directions. Smooth metrics require the corresponding full seam/corner jet matching; conic models require their specified energy/operator domain instead. A facewise weak equation or equality of regularity labels alone does not establish these assertions.

Define the restriction map by

$$\begin{align}
\operatorname{Res}:\mathcal P_M&\longrightarrow\mathcal C, & \Phi&\longmapsto(\Phi|_{M_i})_{i\in\mathcal I}.
\end{align}$$

A global solution restricts to regional solutions satisfying the gluing conditions. Conversely, regional solutions in $\displaystyle{\mathcal C}$ define a global field. For every global test variation $\displaystyle{\eta}$, the regional Green identities give

$$\begin{align}
\braket{\mathcal E_M(\Phi),\eta} &=\sum_i\braket{\mathcal E_i(\Phi_i),\eta_i}
+\left(\iota_{\mathrm{sew}}^*\sum_i\lambda_i\right)[\gamma\eta]\\
&=0.
\end{align}$$

The reconstructed field therefore solves the global equations weakly. The transmission regularity assumption places it in the specified global class. Restriction and assembly are then smooth inverses, and additivity of the complete symplectic potential gives

$$\begin{align}
\operatorname{Res}^*\Omega_{\mathrm{glued}}=\Omega_M.
\end{align}$$

Hence

$$\begin{align}
(\mathcal P_M,\Omega_M)\simeq(\mathcal C,\Omega_{\mathrm{glued}}).
\end{align}$$

Finite sewing is associative provided every intermediate cluster retains its actual joint external trace domain, all corner identifications and action terms, and satisfies the same reconstruction hypotheses. Then every complete order imposes the same compatible transmission problem and reconstructs the same solution. Two admissible artificial refinements are symplectomorphic through their common reconstruction of $\displaystyle{\mathcal P_M}$. Regional evolution and global evolution commute with restriction when the declared domains are invariant under that evolution. Replacing an intermediate cluster history space by a product of its exposed faces invalidates this argument.

### Symmetries, Charges, and Flux Balance

Define the symmetry off shell, including quasi-invariance of the Lagrangian and the boundary/corner action. Write the bulk identity and its complete, consistently improved Noether current as

$$\begin{align}
\delta_\lambda\mathscr L_i&=d b_{i,\lambda},&
j_{i,\lambda}&=\theta_i(\delta_\lambda\Phi_i)-b_{i,\lambda}.
\end{align}$$

The corresponding charge includes the corner contribution fixed by the full action. On shell, Stokes' theorem gives

$$\begin{align}
H_{i,\lambda}(t_+)-H_{i,\lambda}(t_-)
&=-\int_{\Gamma_i^{\mathrm{art}}}
\left(\Pi_i\delta_\lambda q_i-b_{i,\lambda}^{\mathrm{out}}\right)
+\mathcal F_{i,\lambda}^{\mathrm{phys/corner}}.
\end{align}$$

Here the integral is a facewise density presentation: $\displaystyle{b_{i,\lambda}^{\mathrm{out}}}$ uses the same polarization/improvement as the normal component of $\displaystyle{\theta_i}$. The final term denotes the remaining oriented physical-boundary and actual corner contributions. If this presentation is unavailable, use the full response pairing $\displaystyle{\lambda_i[\delta_\lambda q_i]}$ and the complete quasi-invariance functional. The shorter formula containing only $\displaystyle{-\braket{\Pi_i,\delta_\lambda q_i}}$ requires a vanishing normal quasi-invariance term and no omitted improvement contribution.

The symmetry must preserve the interface identification,

$$\begin{align}
\delta_\lambda q_{\bar s}=J_s\delta_\lambda q_s,
\end{align}$$

and be tangent to the full common-history and corner domain. For a single global symmetry of the additive full action, require the complete currents to match. On a smooth face this includes $\displaystyle{b_{s,\lambda}^{\mathrm{out}}+b_{\bar s,\lambda}^{\mathrm{out}}=0}$, up to the already included corner terms. Then

$$\begin{align}
&-\int_{\Gamma_e}\left[
\Pi_s\delta_\lambda q_s+\Pi_{\bar s}\delta_\lambda q_{\bar s}
-b_{s,\lambda}^{\mathrm{out}}-b_{\bar s,\lambda}^{\mathrm{out}}\right]=0.
\end{align}$$

Hence the sum of regional charges is driven only by the retained physical-boundary/corner terms. Flux matching of $\displaystyle{\Pi}$ alone does not establish this statement for arbitrary quasi-symmetries.

For example, a free scalar solution shift $\displaystyle{\delta_s\phi=s}$ has

$$\begin{align}
H_s&=\int(s\dot\phi-\dot s\phi)\,dx,&
\dot H_s&=[s\phi'-s'\phi]_a^b.
\end{align}$$

At an artificial right endpoint this is $\displaystyle{-\Pi_\phi s+q\Pi_s}$. For $\displaystyle{\phi=s=\sinh(mx)}$ both terms cancel; omitting the second term gives a nonzero answer for an identically zero charge.

### Classical Regional Observable Algebras

Choose actual regional coordinates $\displaystyle{(z_i,q_i)}$ on the admissible part of $\displaystyle{\widehat{\mathcal P}_i}$, where $\displaystyle{z_i\in X_i}$ labels the solution at fixed history and all initial-history/corner compatibility has already been imposed. In these coordinates the fixed-history symplectic form is $\displaystyle{\Omega_i}$. The formulas below require an open chart in a declared locally convex model space, a constant weakly nondegenerate form, and smooth regional solution and response maps. A trace image or constrained set does not supply this chart automatically.

For a fixed history, define the regional observable algebra by

$$\begin{align}
\mathcal H(X_i) &=\left\{F\in C^\infty(X_i):
dF=-\Omega_i(X_F,\cdot),\
X_F\in C^\infty(X_i,X_i)\right\},\\
\{F,G\}_i&=dF(X_G)=-\Omega_i(X_F,X_G).
\end{align}$$

The condition on $\displaystyle{X_F}$ requires a vector tangent to the entire chosen domain, including seam and corner conditions. On a nonlinear phase space use $\displaystyle{X_F\in\Gamma^\infty(TX_i)}$ intrinsically. It does not include every smooth scalar function. The global observable algebra $\displaystyle{\mathcal H(\mathcal P_M)}$ is defined independently by the same condition using $\displaystyle{\Omega_M}$. For example, on torus energy data $\displaystyle{H^1(T^2)\oplus L^2(T^2)}$, the continuous functional $\displaystyle{F=\int_R(1-x/L_x)p}$ would require $\displaystyle{X_F=(1-x/L_x,0)}$, which violates periodic matching and therefore is not Hamiltonian in this sense.

To compare different prescribed histories, use joint functions $\displaystyle{F(z_i,q_i)}$. Their full differential must have the form

$$\begin{align}
dF&=-\Omega_i(V_F,\delta z_i)+A_F[\delta q_i],
\end{align}$$

where $\displaystyle{V_F}$ is a smooth tangent vector and $\displaystyle{A_F}$ is a smooth map into a declared regular covector space on the **joint** history domain. In the interval benchmark this covector is a smooth interface density with compact support away from temporal endpoints. With corners, any face/lower-stratum presentation must define a continuous covector on the actual trace topology; representatives differing by its annihilator are identified. Specify the topology on this regular dual and take derivatives there, rather than differentiate arbitrary independent face representatives. When a constant faithful pairing is used, the annihilator quotient and its smooth calculus must exist on the chosen chart. The density/class and all its mixed derivatives use one fixed compact time support for each observable. Physical histories are restriction classes on the declared time window; auxiliary extensions outside that window are identified.

For a product of regions, write $\displaystyle{y=(z_i,q_i)_i}$ and use the pairing

$$\begin{align}
\beta((V,A),(\delta z,\delta q)) &=-\sum_i\Omega_i(V_i,\delta z_i)+\sum_i A_i[\delta q_i],\\
\mathcal H_\beta(Y) &=\left\{F\in C^\infty(Y):
dF=\beta(U_F,\cdot),\
U_F=(V_F,A_F)\text{ is smooth with the stated support}\right\}.
\end{align}$$

Require $\displaystyle{\beta}$ to be continuous, constant on this chart, and faithful on its regular covector argument; quotient any annihilator before claiming that $\displaystyle{U_F}$ is unique. Independent regions are multiplied once each. Different faces of one region are components of its joint trace, not additional independent regional factors. This defines the regional family class from regional data. Its fixed-history bracket is

$$\begin{align}
\{F,G\}_{\mathrm{reg}} &=-\sum_i\Omega_i(V_{F,i},V_{G,i}).
\end{align}$$

Histories are prescribed parameters at this stage. Their derivatives are nevertheless retained because releasing a history changes the physical field. In the original interval class with smooth temporal densities, a point evaluation of a history is excluded because its derivative is a temporal delta. In a different joint-history class, membership is decided by its actual trace topology, declared regular dual, support conditions and release transpose; a temporal delta alone does not imply exclusion from every such class.

The product and finite smooth functional calculus preserve the class:

$$\begin{align}
U_{FG}&=F\,U_G+G\,U_F,\\
U_{h(F_1,\ldots,F_k)} &=\sum_a(\partial_a h)(F_1,\ldots,F_k)\,U_{F_a}.
\end{align}$$

For a continuous constant skew operator $\displaystyle{\mathsf P}$ from the declared regular covectors into admissible tangent directions, the bracket $\displaystyle{\beta(U_F,\mathsf P U_G)}$ has gradient

$$\begin{align}
U_{\{F,G\}} &=DU_F[\mathsf P U_G]-DU_G[\mathsf P U_F].
\end{align}$$

Hessian symmetry proves this formula and cancels the six Hessian terms in the Jacobi identity. It is a statement on the compatible chart: all differentiation directions must be tangent and all resulting gradients must remain in the same regular dual class with a fixed support bound. Taking $\displaystyle{\mathsf P(V,A)=(V,0)}$ gives the regional bracket when these are admissible fixed-history tangent directions. For a background-dependent covector bundle or pairing, this constant-pairing proof is not applicable without the additional derivative terms.

### Release and the Sewn Observable Algebra

First substitute $\displaystyle{\iota_{\mathrm{sew}}}$ on the true compatible history space. The chain rule pulls back the **full** history covector by $\displaystyle{D\iota_{\mathrm{sew}}^*}$; adding two face densities is its smooth-face specialization. This substitution must preserve the declared regular dual and support class. Define the common-history family class independently on that domain, and continue to denote its chart by $\displaystyle{Y}$ and faithful pairing by $\displaystyle{\beta}$. Its equality with the image of all independent regional families needs a regular extension theorem. The interval section that ignores one copy of $q$ proves this there; it is not available for arbitrary intersecting faces merely by renaming the variables.

Use the regional evolution and response maps to solve the transmission conditions derived above. Let $\displaystyle{X}$ be coordinates on the resulting matched phase space, with symplectic form $\displaystyle{\Omega}$. Define the cut map

$$\begin{align}
\mathsf R:X\longrightarrow Y
\end{align}$$

by taking the regional coordinates and common histories of a matched solution. Its image is the physical matching locus. This construction uses the regional transmission problem; it does not use the independently defined global observable algebra.

For exact reconstruction of the whole chosen function class, require an extension map and the two regular transposes

$$\begin{align}
\mathsf B:Y&\longrightarrow X,& \mathsf B\mathsf R&=1,\\
\beta(U,D\mathsf R(x)h) &=-\Omega(D\mathsf R(x)^\flat U,h),& -\Omega(v,\mathsf B y)&=\beta(\mathsf B^\flat v,y).
\end{align}$$

Here $\displaystyle{\mathsf B}$ is linear on the declared chart model, $\displaystyle{D\mathsf R^\flat}$ is jointly smooth in background and covector, and both transposes preserve the allowed tangent vectors and regular covectors, including fixed-support bounds under all background derivatives. They must be well defined on annihilator classes. On an actual local existence domain, use open chart domains on which all displayed maps and the local leaf coordinates below are defined, with $\displaystyle{\mathsf B(Y)=X}$. These are model inputs: a bijection of solution spaces, energy gluing, or a formal transpose does not supply them. The proved scalar interval construction extracts Cauchy data in a reference time strip. A rectangular corner domain requires its own lift and transpose estimates; the interval proof does not establish those estimates.

Differentiating $\displaystyle{\mathsf B\mathsf R=1}$ and using the two pairings gives

$$\begin{align}
\mathsf B D\mathsf R(x)=1,\qquad D\mathsf R(x)^\flat\mathsf B^\flat=1.
\end{align}$$

Define the sewn bracket on the family space by

$$\begin{align}
\mathsf P_{\mathrm{sew}}(y) &=D\mathsf R(\mathsf B y)D\mathsf R(\mathsf B y)^\flat,\\
\{F,G\}_{\mathrm{sew}}(y) &=\beta\bigl(U_F(y),\mathsf P_{\mathrm{sew}}(y)U_G(y)\bigr).
\end{align}$$

For a linear cut this reduces to $\displaystyle{\mathsf P_{\mathrm{sew}}=\mathsf R\mathsf R^\flat}$. It generally changes both the brackets within a region and the brackets between regions.

To see its meaning, write

$$\begin{align}
y=\mathsf R x+w,\qquad x=\mathsf B y,\qquad \mathsf B w=0.
\end{align}$$

At fixed $\displaystyle{w}$, the bracket is precisely the bracket of $\displaystyle{F(\mathsf R x+w)}$ and $\displaystyle{G(\mathsf R x+w)}$ on $\displaystyle{(X,\Omega)}$. Thus Jacobi follows from the symplectic bracket on each such leaf. To prove closure of the full function class, put $\displaystyle{A(x)=D\mathsf R(x)^\flat}$. Differentiation and Hessian symmetry give the actual gradient

$$\begin{align}
U_{\{F,G\}_{\mathrm{sew}}}
={}&DU_F[\mathsf P_{\mathrm{sew}}U_G]-DU_G[\mathsf P_{\mathrm{sew}}U_F]\\
&+\mathsf B^\flat\left(
DA(x)[A(x)U_G]U_F-DA(x)[A(x)U_F]U_G\right),
\qquad x=\mathsf B y.
\end{align}$$

The first two terms retain the fixed supports of the input gradients; the last lies in the fixed support allowed for $\displaystyle{\mathsf B^\flat}$. Joint smoothness of the transposes and their background derivatives therefore proves full-gradient closure. The last term must not be dropped for nonlinear $\displaystyle{\mathsf R}$.

Release is the pullback

$$\begin{align}
\mathsf R^*F&=F\circ\mathsf R,& X_{\mathsf R^*F}(x)&=D\mathsf R(x)^\flat U_F(\mathsf R x).
\end{align}$$

It includes the history contribution to the gradient and satisfies

$$\begin{align}
\mathsf R^*\{F,G\}_{\mathrm{sew}} &=\{\mathsf R^*F,\mathsf R^*G\}_X.
\end{align}$$

Surjectivity follows for each observable individually. Given $\displaystyle{G\in\mathcal H(X)}$, define

$$\begin{align}
\widetilde G&=G\circ\mathsf B,& U_{\widetilde G}&=\mathsf B^\flat X_G\circ\mathsf B,& \mathsf R^*\widetilde G&=G.
\end{align}$$

Hence, under these chart, regular-dual, and split-map hypotheses, the sewn observable algebra is

$$\begin{align}
\boxed{ \mathcal H_{\mathrm{sew}} :=\frac{(\mathcal H_\beta(Y),\{\ ,\ \}_{\mathrm{sew}})} {\ker\mathsf R^*} \simeq\mathcal H(X).
}
\end{align}$$

The kernel consists exactly of families that vanish on physical matching data. It is an ideal for both multiplication and the sewn bracket. The inverse sends $\displaystyle{G}$ to $\displaystyle{[G\circ\mathsf B]}$. This proves exact surjectivity from the stated common-history class, without an approximation or completion argument. A quotient theorem starting from the full independent regional family class additionally needs the preceding common-history extension. The old fixed-history bracket does not, in general, descend through this kernel.

### Global Observables and Symmetry Equivariance

The independent global reconstruction above gives a symplectic assembly map $\displaystyle{\operatorname{Ass}:X\to\mathcal P_M}$ on the same admissible solution domain. Therefore

$$\begin{align}
\boxed{ \mathcal H_{\mathrm{sew}} \longrightarrow\mathcal H(\mathcal P_M),\qquad [F]\longmapsto F\circ\mathsf R\circ\operatorname{Ass}^{-1}
}
\end{align}$$

is a Poisson isomorphism. Its inverse is the explicit extension of the pulled-back global observable. Both the regional and global function classes were defined before this comparison.

For local observables, first verify membership of the selected smooth finite-jet densities in the declared regular-gradient classes on both sides. Regional densities must match as functions of the spacetime point and field jets across each artificial interface and induced corner chart, with all coordinate/reflection signs. Their integrals then assemble to the global integral. Keep every face and lower-stratum term in their full variations until cancellation on admissible matching variations is established. Under these hypotheses the generated local algebras correspond exactly. Smooth interval membership estimates do not establish corner-supported membership on a higher-dimensional energy space. The extension $\displaystyle{\mathsf B^*}$ need not preserve the original spacetime support, so this statement does not assert a strictly local lift of every regional family.

Let a physical symmetry preserve the action, physical boundary conditions, joint trace/corner domain, interface identification, and the chosen observable densities. If its regional and matched actions satisfy

$$\begin{align}
g_Y\mathsf R=\mathsf R g_X,
\end{align}$$

with $\displaystyle{g_X}$ symplectic and $\displaystyle{g_Y^{\pm1}}$ preserving the full-gradient class, then

$$\begin{align}
\mathsf R^*g_Y^*=g_X^*\mathsf R^*.
\end{align}$$

The kernel is invariant and the reconstructed physical algebra carries the same Poisson symmetry as the global theory. A symmetry between different existence domains gives an isomorphism between those algebras; an automorphism of one local algebra requires an invariant domain. Equivariance on matching data alone does not assert that the chosen bracket away from matching is invariant.

Finally, finite successive sewing gives the same observable isomorphism whenever every intermediate cluster retains its joint compatible external histories, inherited corner data, and the corresponding regular transpose and extension maps, including a common-history extension when starting from independent families. The cut maps compose, their transposes compose in reverse order, and the final matching solution is independent of order by uniqueness of the same complete transmission problem. This establishes associativity on the physical quotient under those additional algebraic hypotheses as well as the classical solution reconstruction hypotheses.

It does not identify arbitrary extensions away from the matching locus. Such an identification additionally requires coherent choices of the extension maps. Causal commutativity of local nets likewise requires the CPS/Peierls identification and a causally supported propagator; a symplectic assembly theorem by itself supplies neither property.
