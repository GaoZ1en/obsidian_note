# Regional Field Theories and Sewing

This note constructs regional variational theories before comparing their solutions with an independently defined global theory. A closed realization fixes a boundary law and its source on each artificial face. Opening releases that choice. A common interface variation then determines transmission, and a separate regularity argument determines whether the transmitted fields assemble smoothly. The comparison of covariant phase spaces, causal responses, observables and quantum operations is made only after the corresponding regional objects have been defined.

The construction is formulated for finite, regular, two-sided timelike cuts with fixed interface identifications. Fields, gauge transformations and presymplectic degeneracies are retained throughout. Spacelike composition uses the corresponding cap incidence; null cuts are outside the present setting. Each reconstruction statement specifies its configuration, source or observable domain and the hypotheses used in its proof.

## 1. Original and Regional Theories

### 1.1 Original Configuration and Variational Problem

Let $\displaystyle{M}$ be a smooth oriented $\displaystyle{n}$-dimensional Lorentzian spacetime, $\displaystyle{n\geqslant2}$, with signature $\displaystyle{(-,+,\ldots,+)}$. We consider a time slab whose boundary is the union of closed faces

$$\begin{align}
\partial M&=\Sigma_i\cup\Sigma_f\cup B,& \Sigma_i\cap\Sigma_f&=\varnothing,& \partial\Sigma_{i,f}&=\Sigma_{i,f}\cap B.
\end{align}$$

Here $\displaystyle{\Sigma_i,\Sigma_f}$ are spacelike initial and final Cauchy surfaces for the chosen physical problem, and $\displaystyle{B}$ denotes the physical timelike boundary, including an asymptotic boundary when present. The union is not disjoint: its intersections carry the corner terms in the variation. At an asymptotic boundary, the action and the quantities below are understood with the original regulator and limiting prescription.

Let $\displaystyle{\pi_E:E\to M}$ be the field bundle. A field configuration is a smooth section

$$\begin{align}
\phi &:M\longrightarrow E,& \pi_E\circ\phi&=\mathrm{id}_M.
\end{align}$$

The configuration domain is specified before imposing the equations of motion:

$$\begin{align}
\mathcal C(M)=\bigl\{\phi\in\Gamma^\infty(M,E): \phi\text{ obeys the essential physical/asymptotic conditions and the chosen sector conditions}\bigr\}.
\end{align}$$

The field type, bundle topology, framing, required causal type of the boundary faces and any global restrictions are part of the chosen sector. Natural boundary equations are obtained from stationarity. The configuration domain specifies the essential restrictions separately.

The original variational theory is

$$\begin{align}
T(M)&=(M,E,\mathcal C(M),S_M),& S_M[\phi]&=\int_M L[\phi]+\int_B\ell[\phi],
\end{align}$$

where $\displaystyle{L}$ and $\displaystyle{\ell}$ are fixed finite-order local differential-form densities. The theory also specifies its allowed variations and, when present, its gauge transformations. Any original cap or joint action is retained in the same variational representative; none is introduced merely because a cut has been made.

Write $\displaystyle{d}$ for the spacetime exterior derivative and $\displaystyle{\delta}$ for the field-space exterior derivative. The bulk first variation has the form

$$\begin{align}
\delta L&=\mathcal E_A[\phi]\,\delta\phi^A+d\Theta[\phi,\delta\phi].
\end{align}$$

Thus $\displaystyle{\Theta}$ is a spacetime $\displaystyle{(n-1)}$-form and a field-space one-form. On $\displaystyle{B}$, tangential integration by parts decomposes $\displaystyle{\Theta+\delta\ell}$ into natural boundary equations, source work and an exact tangential term. On solutions of the natural boundary equations, with the physical sources fixed, assume

$$\begin{align}
(\Theta+\delta\ell)|_B&=dC_B.
\end{align}$$

The form $\displaystyle{C_B}$ has spacetime degree $\displaystyle{n-2}$ and field-space degree one. In the boundary convention used here, the integrated presymplectic potential is

$$\begin{align}
\theta_{M,\Sigma}&=\int_\Sigma\Theta-\int_{\partial\Sigma}C_B,\\
\delta S_M&=\int_M\mathcal E_A\,\delta\phi^A +\theta_{M,\Sigma_f}-\theta_{M,\Sigma_i}.
\end{align}$$

The last line applies on the physical boundary realization just specified. If physical sources vary, their work must be added to it. Additional original boundary dynamical fields contribute their own cap potential through the same integration by parts. These conventions agree with the boundary-complete construction of [Harlow and Wu](https://arxiv.org/html/1906.08616v3#S2.SS2).

To obtain equations, take allowed variations that vanish near the initial and final caps. They may reach the relative interior of a physical face and must obey its essential conditions. Denote this class at $\displaystyle{\phi}$ by $\displaystyle{\mathcal V_{M,\phi}}$. Define

$$\begin{align}
\widetilde{\mathcal P}_M=\mathscr S_M &=\operatorname{Crit}_{\mathcal V_M}S_M\\
&=\left\{\phi\in\mathcal C(M):
\delta S_M[\phi](v)=0\text{ for every }v\in\mathcal V_{M,\phi}\right\}.
\end{align}$$

This imposes the bulk equations and every natural physical-face or joint equation tested by these variations. Once the physical boundary realization has already incorporated the latter, it reduces to $\displaystyle{\mathcal E_A[\phi]=0}$. The space is the prephase space: no quotient by gauge degeneracies is taken. Cap variations are restored when defining its presymplectic potential and form.

### 1.2 Independently Defined Regional Theories

Choose a finite collared cut. For a binary cut, let $\displaystyle{R_L,R_R}$ be manifolds with corners and let their artificial faces $\displaystyle{\Gamma_L,\Gamma_R}$ be identified to produce $\displaystyle{M}$:

$$\begin{align}
M&=R_L\cup_\Gamma R_R,\\
\partial R_a&=\Sigma_{a,i}\cup\Sigma_{a,f}\cup B_a\cup\Gamma_a,&a&\in\{L,R\}.
\end{align}$$

The physical faces $\displaystyle{B_a}$ are inherited from $\displaystyle{B}$, whereas $\displaystyle{\Gamma_a}$ are artificial. Cap-face intersections and any physical-face intersections with the cut remain part of the boundary stratification. A regular collar supplies a transverse coordinate and compatible charts up to these intersections.

The bundle $\displaystyle{E_a\to R_a}$ inherits the local field type and transition rules. Define $\displaystyle{\mathcal C_a}$ directly as all smooth regional fields obeying the inherited local and essential physical conditions. A condition that genuinely involves both regions is imposed later on the joint configuration. In particular, the definition of $\displaystyle{\mathcal C_a}$ does not ask whether a candidate field is the restriction of a global solution.

The bare opened action is

$$\begin{align}
S_a^o[\phi_a]&=\int_{R_a}L_a[\phi_a]+\int_{B_a}\ell_a[\phi_a].
\end{align}$$

Here $\displaystyle{L_a,\ell_a}$ are the same local rules evaluated on the regional fields. No reflecting or homogeneous condition has yet been imposed on $\displaystyle{\Gamma_a}$.

Let $\displaystyle{\mathcal V^o_{a,\phi_a}}$ consist of regional equation variations that vanish near the artificial faces and the caps, obey the inherited essential conditions, and may reach the relative interior of $\displaystyle{B_a}$. Then

$$\begin{align}
\mathscr S_a^o &=\left\{\phi_a\in\mathcal C_a:
\delta S_a^o[\phi_a](v_a)=0\text{ for every }v_a\in\mathcal V^o_{a,\phi_a}\right\}.
\end{align}$$

The artificial face is excluded only from this equation test. Its field values and responses remain in each history. Original joint equations whose test variations have been excluded by the cut must be tested in the complete sewing variation.

For an actual differentiable family in $\displaystyle{\mathscr S_a^o}$, restore variations of the artificial data and write the complete on-shell variation as

$$\begin{align}
\delta S_a^o&=\theta^o_{a,f}-\theta^o_{a,i}+\beta_a^o.
\end{align}$$

The one-form $\displaystyle{\beta_a^o}$ contains the remaining artificial-face work, its joint terms, and any original joint work not yet tested. If integration by parts produces a boundary polarization $\displaystyle{(q_a,\Pi_a)}$, its face contribution is

$$\begin{align}
\beta_a^o&=\int_{\Gamma_a}\langle\Pi_a,\delta q_a\rangle +\beta_{a,\mathrm{joint}}^o.
\end{align}$$

The trace $\displaystyle{q_a}$ may contain several field components or normal jets. The response $\displaystyle{\Pi_a}$ is their dual density, with the outward orientation of that region. For a higher-order action, a single field value need not exhaust the boundary configuration data.

The regional theory consists of this opened problem and a specified family of closed realizations:

$$\begin{align}
T_a^o&=(R_a,E_a,\mathcal C_a,S_a^o,\mathscr S_a^o),\\
T_a^{\mathrm{reg}}&=\left(T_a^o,\mathcal B_a, \{T_a^{c,b}:b\in\mathcal B_a\}\right).
\end{align}$$

The construction $\displaystyle{\mathrm{Regionalize}:T(M)\mapsto(T_L^{\mathrm{reg}},T_R^{\mathrm{reg}})}$ applies the original local variational rules to the regions. Its additional choice is the allowed class of artificial realizations $\displaystyle{\mathcal B_a}$, defined next. It precedes the selection of a particular history.

### 1.3 Closed Realizations, Source Domains and Restriction

A closed realization label is a pair $\displaystyle{b=(\rho,j)}$. The type $\displaystyle{\rho}$ specifies the artificial boundary law, its local boundary density, its essential restrictions and its source variables. The prescribed source history is $\displaystyle{j}$.

For each admissible label, define on the region itself

$$\begin{align}
\mathcal C_a^{c,b}&\subseteq\mathcal C_a,\\
S_a^{c,b}[\phi_a]&=S_a^o[\phi_a]+\int_{\Gamma_a}\lambda_a^{\rho,j}[\phi_a],\\
\mathscr S_a^{c,b}&=\operatorname{Crit}_{\mathcal V_a^{c,b}}S_a^{c,b}.
\end{align}$$

The variations $\displaystyle{\mathcal V_a^{c,b}}$ fix $\displaystyle{j}$ and satisfy the artificial essential restrictions, as well as the original physical ones. A valid realization makes the complete artificial work vanish on these variations, after its tangential total derivatives have been assigned to the cap and joint potentials. A source-changing variation is a variation of the family, not a tangent to a fixed-source fibre.

The admissible input domain specifies regularity, incoming data, physical restrictions and corner compatibility. These conditions may couple the initial data and the boundary histories. Where a source solver is used, its existence, uniqueness and required dependence on these inputs are hypotheses on the chosen realization.

Fix a realization chart $\displaystyle{\rho_a}$ before restricting histories. Its boundary law supplies a source extraction map

$$\begin{align}
\tau_{\rho_a}:\mathscr U_a^o&\longrightarrow\mathcal J_{a,\rho_a},
\end{align}$$

where $\displaystyle{\mathscr U_a^o\subseteq\mathscr S_a^o}$ is the declared coverage domain and $\displaystyle{\mathcal J_{a,\rho_a}}$ is the admissible source domain, with the required incoming compatibility understood. The coverage assertion is

$$\begin{align}
\phi_a\in\mathscr U_a^o &\Longrightarrow
\tau_{\rho_a}(\phi_a)\in\mathcal J_{a,\rho_a},\\
\phi_a&\in\mathscr S_a^{c,(\rho_a,\tau_{\rho_a}(\phi_a))}.
\end{align}$$

The source extraction and coverage condition are determined by the chosen regional boundary law and its admissible input domain.

Suppose a global solution restricts to these coverage domains. A regional equation variation supported away from the artificial face extends by zero to an allowed global variation. Consequently the restricted field satisfies the opened regional equations. Coverage then defines the labelled restriction

$$\begin{align}
\mathrm{Res}:\mathscr S_{M,D_\Gamma} &\longrightarrow \left(\coprod_{b_L\in\mathcal B_L}\mathscr S_L^{c,b_L}\right) \times \left(\coprod_{b_R\in\mathcal B_R}\mathscr S_R^{c,b_R}\right),\\
\mathrm{Res}(\phi) &=\bigl(\phi|_{R_L},b_L[\phi];\phi|_{R_R},b_R[\phi]\bigr),\\
b_a[\phi]&=(\rho_a,\tau_{\rho_a}(\phi|_{R_a})).
\end{align}$$

The target is a labelled family, not a pair of arbitrarily selected fixed-source theories. If several charts cover the same history, keep the chart label or specify a chart selection. Forgetting labels removes this presentation multiplicity. A coverage result on a subdomain gives restriction only on that subdomain; it does not prove coverage of the entire global sector.

### 1.4 Opening and Changes of Polarization

Opening changes the boundary realization of a theory. In the bare representation it is

$$\begin{align}
\mathrm{Open}:T_a^{c,b}&\longmapsto T_a^o.
\end{align}$$

It releases the artificial essential restrictions and source fixing, removes the closure action and its natural artificial boundary equations, and restores the opened equation test of §1.2. Every closed solution remains an opened history with its actual traces and responses. Opening one fixed-source solution set does not, by itself, enumerate all other opened histories; the full opened domain was defined independently.

It is often useful to retain a boundary polarization in calculations. Suppose

$$\begin{align}
S_a^{\mathrm{pol}}&=S_a^o+\Lambda_a,& \delta\Lambda_a&=k_{a,f}-k_{a,i}+\eta_a.
\end{align}$$

The associated potential and work must change together:

$$\begin{align}
\theta_a^{\mathrm{pol}}&=\theta_a^o+k_a,& \beta_a^{\mathrm{pol}}&=\beta_a^o+\eta_a.
\end{align}$$

All variations of the source labels enter $\displaystyle{\delta\Lambda_a}$ on the source family. They are set to zero only when restricting to a fixed-source fibre. Removing an action term while keeping its old response and corner potential would not be this transformation.

**Proposition.** Two closed realizations that release to the same configuration domain, bare action and physical-boundary rules give the same opened variational theory. On a matching domain $\displaystyle{\mathcal D}$ for which

$$\begin{align}
\left.(\Lambda_L+\Lambda_R)\right|_{\mathcal D}&=0,
\end{align}$$

their total polarized action and bare action have identical variations tangent to $\displaystyle{\mathcal D}$.

**Proof.** The first statement follows by undoing the specified closure data. For the second, let $\displaystyle{i:\mathcal D\hookrightarrow\mathcal C_L\times\mathcal C_R}$ be the inclusion. Then

$$\begin{align}
i^*\delta(\Lambda_L+\Lambda_R) &=\delta i^*(\Lambda_L+\Lambda_R)=0.
\end{align}$$

The equality holds for tangent variations of the specified matching domain. Extending it to a larger weak configuration domain requires the action difference to vanish on that domain as well. $\square$

### 1.5 Interface Identification and Global Sector

Fix an identification of the face occurrences and of their field and collar data,

$$\begin{align}
D_\Gamma:(\Gamma_R,E_R,\text{collar data}) &\longrightarrow(\Gamma_L,E_L,\text{collar data}).
\end{align}$$

It includes the base identification, bundle transitions, collar-coordinate transport, orientations and density transport. For a cut of an already specified bundle, these are inherited data. If a different transition or holonomy sector is chosen, the target global sector changes.

Use $\displaystyle{D_\Gamma}$ also for the induced trace transport. In a nonlinear field bundle, its derivative acts on trace variations. The dual response transport is defined by preservation of the integrated pairing:

$$\begin{align}
\int_{\Gamma_L}\langle D_\Gamma^\vee\Pi_R,\delta q_L\rangle &=\int_{\Gamma_R}\langle\Pi_R,\delta q_R\rangle,& \delta q_L&=D_\Gamma\delta q_R.
\end{align}$$

Outward-normal signs are already contained in $\displaystyle{\Pi_L,\Pi_R}$; the dual transport must not insert a second copy of that sign. In a common transverse coordinate $\displaystyle{r}$, with the left region at $\displaystyle{r\leqslant0}$ and the right region at $\displaystyle{r\geqslant0}$, the outward normals are respectively $\displaystyle{+\partial_r}$ and $\displaystyle{-\partial_r}$.

The target $\displaystyle{\mathscr S_{M,D_\Gamma}}$ is the original solution space in the sector compatible with this identification, the joint global restrictions and the chosen regularity domain. For self-sewing, two occurrences of a face remain distinct even when they belong to one region; the bulk action of that region is counted once. At multiple intersections the transition maps satisfy the required cocycle and incidence conditions.

## 2. Classical Sewing

### 2.1 The Weak Configuration Domain and Action

Let $\displaystyle{q_a}$ denote the finite set of configuration traces selected by the regional variation. The weak matching domain is

$$\begin{align}
\mathcal C_\#^{\mathrm{weak}} =\left\{(\phi_L,\phi_R)\in\mathcal C_L\times\mathcal C_R:
q_L=D_\Gamma q_R,\quad\text{the original joint configuration conditions hold}\right\}.
\end{align}$$

Each field is smooth up to its regional boundary. Only the stated traces are matched; higher normal derivatives may jump. At this stage, the word “weak” refers to the assembled field and its variational problem, not to a claim that arbitrary distributions are admissible.

Allowed variations are tangent to this domain, obey the original essential conditions, and vanish near the equation-test caps. On a free component of the common trace, a smooth compactly supported variation must have an extension to allowed regional variations. If such extensions exist only in a constrained subspace, stationarity tests only that subspace.

For a first-order local Lagrangian with matched field values, the standard weak action is

$$\begin{align}
S_\#^{\mathrm{weak}}[\phi_L,\phi_R]&=S_L^o[\phi_L]+S_R^o[\phi_R].
\end{align}$$

The integrals are taken cell by cell. A continuous, piecewise smooth field has no delta term in its first derivative, so this expression is meaningful in the usual locally integrable domain.

For a higher-order density, the weak action includes any interface contribution required by the specified distributional or integration-by-parts prescription. Its value on smooth fields must equal the original action, and its full variation must have defined bulk, face and joint terms. This weak extension and its admissible domain are part of the variational input.

### 2.2 Transmission from the Common Variation

First vary within one regional interior. Stationarity gives that region's Euler–Lagrange equation. Variations reaching inherited physical faces give their natural boundary equations. On this regional critical locus, the remaining artificial-face variation is

$$\begin{align}
\left.\delta S_\#^{\mathrm{weak}}\right|_\Gamma &=\int_{\Gamma_L} \left\langle\Pi_L+D_\Gamma^\vee\Pi_R,\delta q\right\rangle +\beta_{\#,\mathrm{joint}},
\end{align}$$

where the response includes the contribution of the selected weak action. For arbitrary free common trace variations, the fundamental lemma gives

$$\begin{align}
\boxed{q_L=D_\Gamma q_R,\qquad \Pi_L+D_\Gamma^\vee\Pi_R=0.}
\end{align}$$

The first equation defines the configuration domain; the second follows from stationarity on it. The joint equations follow by varying the joint data in the same complete expression. If the allowed trace directions form a subspace $\displaystyle{\mathcal W_q}$, the precise conclusion is

$$\begin{align}
\Pi_L+D_\Gamma^\vee\Pi_R&\in\mathcal W_q^\circ,
\end{align}$$

where $\displaystyle{\mathcal W_q^\circ}$ is the annihilator. It is not an equation for response components that the allowed variations cannot test.

To derive smoothness from finite data, suppose in a common collar $\displaystyle{(r,y)}$ that the Lagrangian is first order in field components $\displaystyle{u^A}$. Write

$$\begin{align}
L&=\mathcal L(r,y,u,u_r,u_i)\,dr\,d^{n-1}y,& p_A^r&=\frac{\partial\mathcal L}{\partial u_r^A},& W_{AB}&=\frac{\partial p_A^r}{\partial u_r^B}.
\end{align}$$

Assume that both regional solutions lie on the same branch on which $\displaystyle{u_r\mapsto p^r}$ is injective, and that $\displaystyle{W}$ is invertible there. Assume also that the equations have a smooth normal form

$$\begin{align}
u_{rr}^A &=\mathcal F^A(r,y,u,u_r,u_i,u_{ri},u_{ij};J),
\end{align}$$

with compatible coefficient and source jets $\displaystyle{J}$ on the two sides. A gauge or constrained system needs an independently verified chart and constraint propagation argument covering all remaining components. Invertibility for an unconstrained subset alone does not suffice.

**Theorem R1w — Variational transmission and smoothness.** Under these assumptions, and the corresponding extension and compatibility conditions at every incident joint,

$$\begin{align}
\operatorname{Crit}_{\mathcal C_\#^{\mathrm{weak}}}S_\#^{\mathrm{weak}} &\subseteq\mathcal C_\#^{\mathrm{sm}},
\end{align}$$

where $\displaystyle{\mathcal C_\#^{\mathrm{sm}}}$ is the all-jet matching domain of §2.3.

**Proof.** Work after transporting the right field into the left collar convention. The common trace $\displaystyle{u_L(0,y)=u_R(0,y)}$ gives equality of all tangential derivatives of that trace. Outward momentum balance reads $\displaystyle{p_L^r=p_R^r}$ in the common $\displaystyle{r}$ convention. The common injective branch therefore gives $\displaystyle{u_{L,r}=u_{R,r}}$, including all tangential derivatives of these functions of $\displaystyle{y}$.

The normal equation now has the same arguments on both sides, so it gives equality of $\displaystyle{u_{rr}}$. Suppose normal derivatives through order $\displaystyle{k+1}$, and all their tangential derivatives, agree. Apply $\displaystyle{\partial_r^k}$ to the normal equation. Its right-hand side contains only normal derivatives of $\displaystyle{u}$ through order $\displaystyle{k+1}$ and the already matched background and source jets. Hence $\displaystyle{\partial_r^{k+2}u}$ agrees as well. Induction gives every mixed jet.

On a regular joint, the regional fields and their derivatives have continuous one-sided limits in the specified product charts. The identities on adjacent open faces therefore extend to the joint, provided the chart and constraint assumptions hold there. All jets match. $\square$

R1w applies to smooth regional solutions in the stated domain. It proves that their action-derived transmission implies smooth pasting. An alternative transmission regularity theorem may replace the normal-Legendre argument with its own explicit hypotheses.

There is a further statement when the complete internal coefficients of the weak variation cancel on smooth matched fields:

$$\begin{align}
\operatorname{Crit}S_\#^{\mathrm{weak}} &=\operatorname{Crit}S_\#^{\mathrm{sm}}.
\end{align}$$

R1w gives one inclusion: a weak critical field becomes smooth, and its variation vanishes in particular on smooth matched variations. Conversely, smooth stationarity gives the regional equations and the original physical/joint equations. By the additional cancellation assumption, no coefficient remains to pair with the extra weak variation directions. It is then stationary against all allowed weak variations. The extra assumption is essential because these two variation spaces are different.

### 2.3 Smooth Assembly and Descent

Define $\displaystyle{\mathcal C_\#^{\mathrm{sm}}}$ by requiring full jet compatibility after applying the collar and bundle transport. In a common trivialization this means

$$\begin{align}
\left.\partial_r^k\partial_y^\alpha u_L\right|_{r=0} &=\left.\partial_r^k\partial_y^\alpha(D_\Gamma u_R)\right|_{r=0}, &k&\geqslant0,
\end{align}$$

for every tangential multi-index $\displaystyle{\alpha}$, together with the original joint sector conditions. The derivatives on the right include the derivatives of transition functions. This formulation is invariant under compatible smooth changes of collar and bundle coordinates.

Let $\displaystyle{\mathcal V_\#^{\mathrm{sm}}}$ consist of matched variations with the same jet condition, and set

$$\begin{align}
S_\#^{\mathrm{sm}}&=\left.(S_L^o+S_R^o)\right|_{\mathcal C_\#^{\mathrm{sm}}},& \mathscr S_\#^{\mathrm{sm}}&=\operatorname{Crit}_{\mathcal V_\#^{\mathrm{sm}}}S_\#^{\mathrm{sm}}.
\end{align}$$

**Theorem R1s — Smooth assembly.** Suppose the finite cut has compatible regular collar charts, its bundle identifications descend to the specified global bundle, and local physical/joint conditions and allowed variations agree under assembly. Then piecewise evaluation defines a bijection

$$\begin{align}
\operatorname{Asm}_{D_\Gamma}:\mathcal C_\#^{\mathrm{sm}} &\xrightarrow{\sim}\mathcal C(M)_{D_\Gamma},\\
S_\#^{\mathrm{sm}}&=\operatorname{Asm}_{D_\Gamma}^*S_M,\\
\boxed{\operatorname{Asm}_{D_\Gamma}:\mathscr S_\#^{\mathrm{sm}} \xrightarrow{\sim}\mathscr S_{M,D_\Gamma}.}
\end{align}$$

**Proof.** Define the field by its left or right value in each regional interior and by the common trace on the interface. Equality of the zeroth jets makes it continuous. If the first one-sided derivatives have the same boundary value, the fundamental theorem of calculus in the transverse coordinate shows that this continuous function is differentiable across the interface with that derivative. Apply the same argument to the piecewise derivatives. Induction proves smoothness of every order. Tangential derivatives and finite regular product-collar intersections are treated in their common charts.

The transition rules make the resulting local expressions a section of the specified global bundle. The joint conditions place it in the chosen global configuration domain. Its values on the regional interiors determine the continuous field uniquely. Restriction is its inverse. Applying the same argument to allowed variations gives a correspondence of their variation spaces.

The bulk integrals add over cells, and each original physical-face density is counted with its inherited occurrence. There is no residual artificial action on smooth matched fields in the bare representation. Hence $\displaystyle{S_\#^{\mathrm{sm}}=\operatorname{Asm}^*S_M}$. Its derivative is

$$\begin{align}
\delta S_\#^{\mathrm{sm}}[\phi_\#](v_\#) &=\delta S_M[\operatorname{Asm}\phi_\#] (d\operatorname{Asm}\,v_\#).
\end{align}$$

The correspondence of allowed variations transports stationarity in both directions. $\square$

R1s is a descent statement for smooth configurations and their variational problems. R1w supplies a dynamical route from finite matching data to its hypotheses. Both statements use the independently defined regional theories of §1.

For a fixed finite subdivision, assume every intermediate union has been independently assigned the same local theory and retains its unsewn face data. Direct and successive smooth assembly then give the same field: both restrict to the original field in each cell, and assembly is unique. The actions agree by finite additivity. This proves composition for such a legal finite diagram, not the existence of a common regular refinement for arbitrary cuts.

## 3. Covariant Phase Space

### 3.1 Regional Potentials and Flux

Take one global integration surface $\displaystyle{\Sigma}$ and its regional parts $\displaystyle{\Sigma_a}$. Fix the local relative-potential representative used in the original variation. If the bare artificial work has not been integrated tangentially into an additional cap correction, the regional potential reads

$$\begin{align}
\theta^o_{a,\Sigma} &=\int_{\Sigma_a}\Theta_a -\int_{\partial\Sigma_a\cap B_a}C_{B,a} +\theta_{a,\Sigma}^{\mathrm{boundary}},\\
\Omega^o_{a,\Sigma}&=\delta\theta^o_{a,\Sigma}.
\end{align}$$

Here $\displaystyle{\theta^{\mathrm{boundary}}}$ denotes a cap contribution from actual original boundary dynamics, when present. If integration by parts of artificial work produces a cap term, include it and change $\displaystyle{\beta_a^o}$ in the same decomposition. A polarized representation uses the transformation of §1.4. The potential is read from the complete regional variation, rather than fixed by an independent convention at each face.

On a differentiable regional solution family,

$$\begin{align}
0=\delta^2 S_a^o &=\Omega^o_{a,f}-\Omega^o_{a,i}+\delta\beta_a^o,
\end{align}$$

so the opened flux law is

$$\begin{align}
\boxed{\Omega^o_{a,f}-\Omega^o_{a,i}=-\delta\beta_a^o.}
\end{align}$$

For a single polarization with no extra joint work,

$$\begin{align}
\delta\beta_a^o(v,w) &=\int_{\Gamma_a} \left(\langle\delta_v\Pi_a,\delta_wq_a\rangle -\langle\delta_w\Pi_a,\delta_vq_a\rangle\right).
\end{align}$$

A fixed-source closed fibre has vanishing artificial work on its allowed tangent vectors, and its appropriate polarized presymplectic form is conserved when the physical realization is also conservative. On the full opened family, the displayed flux is retained. A nonzero flux there is the expected response to varying the boundary history.

All tangent vectors in these formulas arise from actual differentiable solution families. A formal solution of the linearized equation need not be integrable to such a family at a singular solution. Field-dependent chart or realization maps require their full chain rule, including moving-domain contributions when the integration surface moves.

### 3.2 Sewing the Presymplectic Structure

**Theorem R2 — Regional CPS sewing.** Assume R1s, differentiability of assembly on the families under consideration, compatible relative potentials, and complete face and joint incidence. If asymptotic limits are used, assume the original regulator gives compatible limits for the potentials, forms and transport. Then

$$\begin{align}
\theta_{\#,\Sigma} &:=\left.(\theta^o_{L,\Sigma}+\theta^o_{R,\Sigma})\right|_{\mathscr S_\#^{\mathrm{sm}}} =\operatorname{Asm}^*\theta_{M,\Sigma},\\
\boxed{\Omega_{\#,\Sigma}=\operatorname{Asm}^*\Omega_{M,\Sigma}.}
\end{align}$$

**Proof.** At a matched field and tangent variation, the local expressions $\displaystyle{\Theta_a}$ are evaluations of the same bulk potential. Their integrals cover $\displaystyle{\Sigma}$ once. The physical-boundary corrections and original boundary cap terms also add with their original incidence. Every artificial correction appears at two incident occurrences and cancels in the compatible relative representative. If polarized actions were used, first apply the cap and work transgression from §1.4. These are equalities of one-forms, so taking $\displaystyle{\delta}$ proves the equality of two-forms. With a regulator, perform this argument before taking the assumed compatible limit. $\square$

Equality of actions alone would not choose equal individual cap potentials: total derivatives and field-space exact shifts must be aligned. This is why the representative condition is explicit in R2.

If $\displaystyle{d\operatorname{Asm}}$ is bijective on the actual tangent spaces, the kernels are identified:

$$\begin{align}
\ker\Omega_\#&=(d\operatorname{Asm})^{-1}(\ker\Omega_M).
\end{align}$$

Indeed, $\displaystyle{v_\#}$ annihilates all regional tangent vectors under $\displaystyle{\Omega_\#}$ exactly when its image annihilates all global tangent vectors under $\displaystyle{\Omega_M}$. This preserves the radical without dividing it out. Identification of a radical direction with a proper gauge transformation is a separate property of the original theory.

On the matched solution locus, the complete internal work vanishes as a one-form. Its field-space derivative therefore vanishes as well, cancelling the internal flux. Unsewn faces and varying physical sources retain their own work and flux. For spacelike composition of adjacent time slabs, the final potential of the earlier slab cancels the initial potential of the later slab. This temporal cancellation is distinct from summing regional pieces of one Cauchy surface.

## 4. Causal Response and Observables

### 4.1 Independent Regional Response Problems

Fix a background solution $\displaystyle{\phi}$ and its corresponding regional histories. Linearize the actual Euler–Lagrange expression, with its action-determined sign:

$$\begin{align}
P_\phi u&:=\left.\frac{d}{d\epsilon}\mathcal E[\phi+\epsilon u]\right|_{\epsilon=0}.
\end{align}$$

The physical boundary equations, artificial realization and sewing conditions are linearized at the same background. In a nonlinear theory, all response operators below depend on $\displaystyle{\phi}$, even when that subscript is suppressed.

Choose regional source and test domains from their regularity, supports, boundary conditions and pairing with regional perturbations. A matched source space $\displaystyle{\mathcal T_\#}$ and a global source space $\displaystyle{\mathcal T_M}$ are compared by a source assembly map

$$\begin{align}
a:\mathcal T_\#&\xrightarrow{\sim}\mathcal T_M,\\
\langle af,\operatorname{Asm}u\rangle_M &=\sum_{b\in\{L,R\}}\langle f_b,u_b\rangle_{R_b}.
\end{align}$$

Boundary probes require boundary-source summands in this pairing. They are not silently represented by smooth bulk tests. Similarly, characteristic functions of sharp cells are not used to manufacture a smooth global source unless that multiplication is legitimate in the declared distribution domain.

For a fixed background source fibre, define a native retarded operator $\displaystyle{G_a^R}$ by solving

$$\begin{align}
P_aG_a^Rf_a&=f_a,
\end{align}$$

with zero incoming data, the linearized physical conditions and zero variation of the artificial source. Define $\displaystyle{H_a^R\eta_a}$ by the homogeneous bulk equation with zero incoming data and artificial-source variation $\displaystyle{\eta_a}$. The advanced operators use zero outgoing data. A response chart is therefore

$$\begin{align}
u_a^\pm&=G_a^\pm f_a+H_a^\pm\eta_a,&\pm&\in\{R,A\}.
\end{align}$$

There are two separate requirements. First, these problems have unique solutions for their specified inputs. Second, every causal opened response in the declared class is represented by the chart. Without the second requirement, a chart may omit homogeneous responses that matter for uniqueness or sewing.

The displayed sum presupposes that its terms are individually admissible. For general initial-boundary compatibility, use the complete affine input problem instead: choose an admissible reference history, subtract it, and decompose only a difference domain on which the summands satisfy the corner conditions. This also applies when incoming-data response columns must be retained.

Define the causal propagator and Peierls pairing by

$$\begin{align}
\Delta_\phi&=G_\phi^R-G_\phi^A,\\
\{F,G\}_\phi&=\langle F^{(1)}_\phi,\Delta_\phi G^{(1)}_\phi\rangle.
\end{align}$$

The functional derivatives lie in the declared response domains. The overall sign of $\displaystyle{P_\phi}$ is fixed by the action, and the Green operators and Peierls pairing use that same convention.

### 4.2 Assembly by Boundary Feedback

Let $\displaystyle{\mathcal B_D}$ be the linearized mismatch map. It includes configuration transmission, response balance, all required joint equations and any independently verified constraints. For homogeneous matching at the chosen background, admissible coupled perturbations satisfy $\displaystyle{\mathcal B_Du=0}$.

On the direct sum of the native regional response charts, define

$$\begin{align}
G^\pm&=\bigoplus_aG_a^\pm,& H^\pm&=\bigoplus_aH_a^\pm,\\
N^\pm&=\mathcal B_DG^\pm,& M^\pm&=\mathcal B_DH^\pm.
\end{align}$$

For a regional source $\displaystyle{f}$, the unknown artificial-source variation obeys

$$\begin{align}
M^\pm\eta&=-N^\pm f.
\end{align}$$

The operators $\displaystyle{M^\pm}$ need not be invertible on their entire codomain. The relevant problem is solvability for the actual mismatch range $\displaystyle{\operatorname{ran}N^\pm}$. Choose a linear solution operator $\displaystyle{B^\pm}$ there, when one exists, satisfying

$$\begin{align}
M^\pm B^\pm y&=y,&y&\in\operatorname{ran}N^\pm.
\end{align}$$

A continuous solution operator on a larger ambient space is not being assumed. The continuity and support needed below may instead be established directly for its physical output.

**Theorem R3a — Boundary-response assembly.** Suppose the regional charts are independently defined and complete on the stated causal domains. Assume the interface equation is solvable, the resulting perturbations have the required continuous dependence and causal support, and a sourced transmission regularity theorem assembles them into solutions of the original physical linearized problem. Finally, assume the corresponding global homogeneous problem with zero past or zero future data has only the zero solution. Then

$$\begin{align}
\mathcal G_\#^\pm&=G^\pm-H^\pm B^\pm N^\pm,\\
\boxed{G_{\mathrm{rec}}^\pm =\operatorname{Asm}\,\mathcal G_\#^\pm a^{-1}}
\end{align}$$

defines the unique causal right inverse on the declared global source domain.

**Proof.** Set $\displaystyle{\eta=-B^\pm N^\pm f}$. Since $\displaystyle{P_aH_a^\pm=0}$ and $\displaystyle{P_aG_a^\pm f_a=f_a}$, the resulting regional fields solve the sourced bulk equations. Their mismatch is

$$\begin{align}
\mathcal B_D\mathcal G_\#^\pm f &=N^\pm f-M^\pm B^\pm N^\pm f=0.
\end{align}$$

The sourced regularity theorem, including the physical and joint conditions, therefore gives an assembled solution of $\displaystyle{P_Mu=af}$. The assumed estimates give its continuity and support. If two choices of $\displaystyle{B^\pm}$ produce outputs $\displaystyle{u,u'}$, their assembled difference solves the homogeneous global equation with the same zero causal data. Uniqueness gives $\displaystyle{\operatorname{Asm}(u-u')=0}$. The same argument compares the result with any independently defined global causal right inverse. $\square$

Thus, if the original theory already has $\displaystyle{G_M^{R/A}}$ on this domain,

$$\begin{align}
G_{\mathrm{rec}}^\pm&=G_M^\pm,\\
\Delta_\#&:=\mathcal G_\#^R-\mathcal G_\#^A,& \operatorname{Asm}\,\Delta_\#&=\Delta_Ma.
\end{align}$$

The regional causal propagator here is the coupled operator after interface feedback. Its cross-region terms and its same-region corrections are generally nonzero.

One can prove the needed homogeneous uniqueness from regional data. If every homogeneous global causal response restricts to some $\displaystyle{H^\pm\eta}$ and

$$\begin{align}
\ker M^\pm&\subseteq\ker H^\pm,
\end{align}$$

matching forces the restricted response to vanish, hence the global field vanishes. This implication uses completeness of the regional charts. A calculation of $\displaystyle{\ker M^\pm}$ without that coverage is insufficient.

A right inverse is not automatically a two-sided inverse on equation tests. For an allowed test $\displaystyle{h}$, if $\displaystyle{h}$ and $\displaystyle{G_{\mathrm{rec}}^\pm Ph}$ obey the same zero causal data and boundary conditions, uniqueness gives

$$\begin{align}
G_{\mathrm{rec}}^\pm Ph&=h.
\end{align}$$

Light-cone support likewise requires the finite-propagation estimate of the actual boundary problem. Neither property follows from the algebraic expression for $\displaystyle{\mathcal G_\#^\pm}$ alone.

For a formal nonlinear expansion, order $\displaystyle{n}$ has the same linear operator with a forcing and possibly an inhomogeneous mismatch built from lower orders. If the mismatch is $\displaystyle{r_n}$, the interface equation becomes

$$\begin{align}
M^\pm\eta_n&=r_n-N^\pm f_n.
\end{align}$$

Both terms must belong to the actual solvability domain. Assuming this at every order, uniqueness identifies the regional and global coefficients inductively. This is a formal coefficientwise statement and gives no convergence result for the nonlinear series.

Finite partial sewing must retain the response to all remaining sources, boundary inputs and incoming data. If both elimination orders solve the same final causal problem with these data, uniqueness makes the outputs agree. Keeping only an internal response block would not establish that the final input problems are the same.

### 4.3 Seed Observables and Their Poisson Hull

Choose physical seeds independently on the original and regional theories:

$$\begin{align}
\mathcal O_0(M)&\subseteq\operatorname{Fun}(\mathscr S_{M,D_\Gamma}),& \mathcal O_{0,\#}&\subseteq\operatorname{Fun}(\mathscr S_\#^{\mathrm{sm}}).
\end{align}$$

Each regional seed is defined by its own evaluation rule on regional fields and retained interface data. Its identification with a global seed is established by equality of their values under assembly. Topological and central labels detected by the chosen observables remain part of these definitions.

Let $\displaystyle{\mathcal W(\mathcal O_0)}$ denote finite formal expressions built from the unit and seeds using addition, scalar multiplication, ordinary multiplication, conjugation and the Peierls bracket. Require that every operation used in a word is defined and that every functional derivative needed at the next bracket remains in the response domain. Evaluation gives

$$\begin{align}
\mathrm{ev}:\mathcal W(\mathcal O_0)&\longrightarrow\operatorname{Fun}(\mathscr S),\\
\operatorname{PoisHull}(\mathcal O_0)&:=\operatorname{im}\mathrm{ev}.
\end{align}$$

Relations are equality of the evaluated functions on the actual solution domain. No topological completion, infinite sum or additional observable is included by this definition.

To check that the response pairing is a Poisson bracket on this domain, use the complete second variation. Let $\displaystyle{v}$ be an actual homogeneous tangent variation and let $\displaystyle{u=G^RF^{(1)}}$. Choose caps before and after the allowed support. The Green identity, including physical-boundary and joint corrections, gives

$$\begin{align}
\Omega_{\Sigma_+}(v,u)-\Omega_{\Sigma_-}(v,u) &=\langle F^{(1)},v\rangle.
\end{align}$$

The retarded field vanishes on the past cap; the advanced field vanishes on the future cap. Provided $\displaystyle{\Delta F^{(1)}}$ lies in the actual tangent domain, the homogeneous difference therefore satisfies

$$\begin{align}
\Omega_\Sigma(v,\Delta F^{(1)})&=\delta F(v),\\
\boxed{\iota_{X_F}\Omega=-\delta F,\qquad X_F=\Delta F^{(1)}\quad\text{up to }\ker\Omega.}
\end{align}$$

In this convention,

$$\begin{align}
\{F,G\}&=\delta F(X_G)=\Omega(X_G,X_F).
\end{align}$$

Antisymmetry follows from the two-form, and Leibniz follows from the derivative of a product. Closedness $\displaystyle{\delta\Omega=0}$, together with the existence and differentiability of these Hamiltonian vector fields, gives Jacobi by the Cartan identities. A function admitting such a Hamiltonian vector field has differential zero on the radical, so its bracket is unaffected by the representative of $\displaystyle{X_F}$. The domain assumptions must persist under the finite word operations.

**Theorem R3b — Reconstruction of the seed hull.** Assume R1s, R3a, the Green/Hamiltonian certificate above, a bijective identification of the chosen seeds, and closure of their declared finite-word domains. Then pullback along assembly is a Poisson *-algebra isomorphism

$$\begin{align}
\operatorname{Asm}^*: \operatorname{PoisHull}(\mathcal O_0(M)) &\xrightarrow{\sim}\operatorname{PoisHull}(\mathcal O_{0,\#}).
\end{align}$$

**Proof.** Source transport and coupled-response assembly imply

$$\begin{align}
\{F,G\}_M\circ\operatorname{Asm} &=\{F\circ\operatorname{Asm},G\circ\operatorname{Asm}\}_\#.
\end{align}$$

Ordinary function operations commute with pullback. Begin with the verified seed values and induct on the construction of a finite word, using the displayed identity at each bracket operation. All word evaluations correspond. Surjectivity follows because every regional word has the corresponding global word. If a word combination evaluates to zero on one side, the bijection of solution domains makes the corresponding function vanish on the other side. Thus the evaluation relations agree, proving injectivity as well. $\square$

There is a direct Hamiltonian route when the seeds already have independently constructed Hamiltonian vector fields. R2 and a tangent-space bijection transport these vectors, up to the radical. Hamiltonian functions annihilate that ambiguity. The same finite-word proof then applies without first constructing all of the causal response operators. Its input is an actual closed Hamiltonian domain; it does not infer that every smooth function on a presymplectic solution space is Hamiltonian.

### 4.4 Linear Source Presentation

For a linear theory, let $\displaystyle{\mathcal K_M}$ be its equation-test domain and $\displaystyle{\mathcal T_M}$ its source domain, with $\displaystyle{P_M\mathcal K_M\subseteq\mathcal T_M}$. Define the regional matched domains independently. Suppose equation tests assemble by a bijection

$$\begin{align}
e:\mathcal K_\#&\xrightarrow{\sim}\mathcal K_M,& aP_\#&=P_Me.
\end{align}$$

Here $\displaystyle{P_\#}$ acts on equation tests with the transparent matching and physical conditions. It is not the direct sum of closed-wall equation-test problems.

Define the linear label spaces

$$\begin{align}
V_\#&=\mathcal T_\#/P_\#\mathcal K_\#,& V_M&=\mathcal T_M/P_M\mathcal K_M,\\
\kappa([f])&=[af].
\end{align}$$

Commutation with $\displaystyle{P}$ and surjectivity of $\displaystyle{e}$ identify the equation images exactly. Hence $\displaystyle{\kappa}$ is well-defined and bijective. Assume the full Green reciprocity identity and the two-sided inverse properties on these test domains. They imply

$$\begin{align}
(G^R)^*&=G^A,&\Delta^*&=-\Delta,&\Delta Ph&=0.
\end{align}$$

It follows that

$$\begin{align}
\sigma([f],[g])&=\langle f,\Delta g\rangle
\end{align}$$

is independent of both representatives and antisymmetric. The pairing and response comparison give

$$\begin{align}
\boxed{\kappa:(V_\#,\sigma_\#)\xrightarrow{\sim}(V_M,\sigma_M), \qquad\sigma_\#=\kappa^*\sigma_M.}
\end{align}$$

The stronger exactness statement $\displaystyle{\ker\Delta=P\mathcal K}$ requires an additional domain argument. If $\displaystyle{\Delta f=0}$, then $\displaystyle{h=G^Rf=G^Af}$ satisfies $\displaystyle{Ph=f}$. Only when its support, boundary conditions and regularity place this common solution in $\displaystyle{\mathcal K}$ does this prove that $\displaystyle{f}$ is an equation image. Equality of two Green values alone does not establish membership in $\displaystyle{\mathcal K}$.

For an affine equation $\displaystyle{P\phi=J}$, retain the affine relation $\displaystyle{\Phi(Ph)=\langle h,J\rangle}$ with its actual boundary pairing. A particular solution converts it to the homogeneous presentation. Any radical remaining in $\displaystyle{\sigma}$ is retained and becomes a central linear sector after quantization.

### 4.5 Gauge-Compatible Response

Let $\displaystyle{Q_\phi\epsilon}$ be a prescribed infinitesimal proper gauge transformation. A derivative source of an invariant observable satisfies

$$\begin{align}
\langle f,Q_\phi\epsilon\rangle&=0
\end{align}$$

for every allowed proper parameter. The pairing includes all boundary terms. A transformation with a nonzero boundary charge is not declared proper simply to make this equation hold.

A gauge-compatible response construction needs the Noether identity on the actual source and parameter domains, gauge-fixed regional solvers that propagate gauge conditions and constraints, compatible ghost/parameter boundary domains when they are used, and uniqueness of a zero-data physical response up to the specified proper transformations. A formal inverse of a gauge-fixed bulk operator does not establish these boundary properties.

Under these hypotheses, two physical response representatives may differ by $\displaystyle{Q_\phi\eta_f}$:

$$\begin{align}
\operatorname{Asm}\Delta_\#f-\Delta_Maf&=Q_\phi\eta_f.
\end{align}$$

Pairing with another invariant derivative source annihilates this difference. The Peierls pairings, and therefore the finite invariant seed words of R3b, agree exactly. This comparison does not quotient the regional field spaces. Their representatives, allowed gauge maps, stabilizers and presymplectic radicals remain present; gauge fixing is an auxiliary response calculation. Boundary symmetries and cohomological modes continue to obey the original sector policy.

## 5. Quantization

### 5.1 CCR and Weyl Algebras

Let $\displaystyle{(V,\sigma)}$ be the real presymplectic label space actually constructed in §4.4. The algebraic CCR prescription generates a unital *-algebra with real-linear fields obeying

$$\begin{align}
\widehat\Phi(v)^*&=\widehat\Phi(v),\\
[\widehat\Phi(v),\widehat\Phi(w)]&=i\hbar\sigma(v,w)\,1.
\end{align}$$

The corresponding Weyl prescription uses

$$\begin{align}
W(0)&=1,&W(v)^*&=W(-v),\\
W(v)W(w)&=\exp\left[-\frac{i\hbar}{2}\sigma(v,w)\right]W(v+w).
\end{align}$$

Use the same algebraic or completed universal prescription on the two sides; a completion, when intended, is part of that choice.

**Theorem R4c — CCR/Weyl reconstruction.** A real presymplectic isomorphism $\displaystyle{\kappa:(V_\#,\sigma_\#)\to(V_M,\sigma_M)}$ induces

$$\begin{align}
\mathrm{CCR}(V_\#,\sigma_\#)&\cong\mathrm{CCR}(V_M,\sigma_M),\\
\mathrm{Weyl}(V_\#,\sigma_\#)&\cong\mathrm{Weyl}(V_M,\sigma_M).
\end{align}$$

**Proof.** Map $\displaystyle{\widehat\Phi_\#(v)}$ to $\displaystyle{\widehat\Phi_M(\kappa v)}$ and $\displaystyle{W_\#(v)}$ to $\displaystyle{W_M(\kappa v)}$. The real structure, linearity and defining products are preserved because $\displaystyle{\sigma_\#(v,w)=\sigma_M(\kappa v,\kappa w)}$. The universal property gives the homomorphism, and $\displaystyle{\kappa^{-1}}$ gives its inverse. $\square$

If $\displaystyle{v\in\operatorname{rad}\sigma}$, its field or Weyl generator is central; this generator is transported rather than removed. This theorem identifies the coupled algebra. It does not identify the global theory with a tensor product of closed regional theories, nor select a state, Fock representation or unitary implementation.

A second route starts with native operators already defined on common invariant domains. Suppose

$$\begin{align}
V:\mathcal D_M&\longrightarrow\mathcal D_{\mathrm{reg}}
\end{align}$$

is injective, its image is characterized by actual sewing conditions, and the chosen regional operators preserve this image and satisfy

$$\begin{align}
A_{\#,\alpha}V&=VA_{M,\alpha}.
\end{align}$$

Induction gives this relation for every finite legal operator word. Because $\displaystyle{V}$ is a bijection onto its image, a word is zero on $\displaystyle{\mathcal D_M}$ exactly when its regional counterpart is zero on $\displaystyle{\operatorname{im}V}$. The generated operator algebras therefore agree on that image. A *-statement additionally requires compatible inner products, adjoints and *-domains. It makes no assertion about the operators on the rest of $\displaystyle{\mathcal D_{\mathrm{reg}}}$.

### 5.2 Regular Wick Structures

For a free linear or affine theory, fix the original ordering or two-point prescription. Each closed regional realization first constructs its own native kernel $\displaystyle{W_a}$ from its own dynamics. After the regional feedback has constructed the coupled dynamics, apply the same original prescription to construct $\displaystyle{W_\#}$. Its comparison with an independently constructed $\displaystyle{W_M}$ is a further step beyond causal reconstruction.

The antisymmetric part must satisfy

$$\begin{align}
W_\#-W_\#^{\mathsf T}&=i\Delta_\#,
\end{align}$$

where $\displaystyle{\mathsf T}$ exchanges the two arguments and their field labels. Hermiticity is fixed by the *-prescription. The causal propagator determines this antisymmetric part, but does not determine the symmetric part. State positivity, if required, is also an additional condition.

On regular polynomial functionals for which all indicated kernel pairings exist, define

$$\begin{align}
F\star_WG &=\sum_{k\geqslant0}\frac{\hbar^k}{k!} \left\langle F^{(k)},W^{\otimes k}G^{(k)}\right\rangle.
\end{align}$$

The sum is finite for polynomials. For linear fields its commutator is $\displaystyle{i\hbar\Delta}$, in agreement with §5.1. Here the contraction kernel is fixed on the chosen free background. An associative product with a field-dependent nonlinear contraction requires its own construction.

A useful independent certificate for the elementary kernel comparison comes from positive spatial forms. Suppose piecewise assembly is a unitary map

$$\begin{align}
U:\mathcal H_\#&\xrightarrow{\sim}\mathcal H_M
\end{align}$$

and the released, matched spatial quadratic form is densely defined and closed. Assume

$$\begin{align}
U D(\mathfrak q_\#)&=D(\mathfrak q_M),& \mathfrak q_\#[u,v]&=\mathfrak q_M[Uu,Uv].
\end{align}$$

The operator associated with a closed form is characterized by the existence of a vector $\displaystyle{w}$ satisfying $\displaystyle{\mathfrak q[u,v]=\langle w,v\rangle}$ for all form-domain vectors. Applying this characterization through $\displaystyle{U}$ identifies the operator domains and gives

$$\begin{align}
UK_\#U^{-1}&=K_M.
\end{align}$$

For the original static prescription with $\displaystyle{K\geqslant c>0}$,

$$\begin{align}
W_K(t-t')&=\frac{e^{-i(t-t')\sqrt K}}{2\sqrt K},\\
UW_{K_\#}(t-t')U^{-1}&=W_{K_M}(t-t').
\end{align}$$

This follows by spectral calculus after the form domains have been identified. Zero modes need their separate original prescription. Another sufficient certificate is equality of the complete Cauchy two-point data together with unique propagation in each leg.

Once these kernels have been constructed, define their comparison blocks on the allowed test domains:

$$\begin{align}
C_{ab}&=W_{\#,ab}-\delta_{ab}W_a,\\
W_{\#,ab}&=\delta_{ab}W_a+C_{ab}.
\end{align}$$

Both diagonal corrections and cross-region blocks occur. The diagonal native kernels continue to encode closed artificial walls, so retaining them unchanged and adding only cross terms generally fails to recover the coupled dynamics.

For a legal smooth localization on an open cover, choose weights $\displaystyle{\chi_i}$ with $\displaystyle{\sum_i\chi_i=1}$ on the relevant support. Then

$$\begin{align}
W_{ij}&=(\chi_i\otimes\chi_j)W_\#,& \sum_{i,j}W_{ij}&=W_\#.
\end{align}$$

These are localized components of one distribution. If $\displaystyle{P_xW_\#=0}$, they obey

$$\begin{align}
P_xW_{ij}&=[P_x,\chi_i]\chi_jW_\#.
\end{align}$$

Thus a localized component is not itself automatically a native regional bisolution. Sharp-cell restrictions require their own admissible distributional pairing and are not obtained by treating a characteristic function as a smooth weight.

Local Wick labels need comparison as well. Suppose the coincident difference

$$\begin{align}
s_a(x)&=\left.(W_{\#,aa}-W_a)(x,y)\right|_{y=x}
\end{align}$$

exists on the chosen domain; smoothness of the difference near the relevant diagonal is a sufficient condition. The formal Wick exponentials obey

$$\begin{align}
:e^{\zeta\phi}:_\#&=e^{-\hbar s_a\zeta^2/2}:e^{\zeta\phi}:_a.
\end{align}$$

Expanding the exponential and taking the coefficient of $\displaystyle{\zeta^k}$ gives

$$\begin{align}
\boxed{ :\phi^k:_\# =\sum_{r=0}^{\lfloor k/2\rfloor} \frac{k!}{2^r r!(k-2r)!}(-\hbar s_a)^r:\phi^{k-2r}:_a.}
\end{align}$$

This converts the label at each vertex. Contractions between vertices still use the full coupled kernel $\displaystyle{W_\#}$. If the coincident difference or any subsequent product is undefined, this local formula does not extend the domain by itself.

**Theorem — Regular quantum reconstruction.** Suppose field and composite-label transport is invertible, the independently constructed elementary kernels correspond, and every finite contraction and label conversion used in the chosen word domain is defined. Then the generated regular quantum word algebras correspond under transport.

**Proof.** Each basic product is a finite sum of kernel contractions with fixed combinatorial coefficients. The full block identity reconstructs the coupled kernel, and the local conversion reconstructs each specified composite label. These comparisons commute with each basic operation. Induction on finite words proves equality of their evaluations. Invertibility of field and label transport preserves and reflects their relations. $\square$

This result is about the stated regular domain. It does not define singular diagonal products by appealing to the fact that finite polynomial combinatorics are available.

### 5.3 Renormalized Reconstruction with a Fixed Prescription

For singular time-ordered products, specify the original off-shell extension or subtraction algorithm, local normalization data, counterterm class and Ward/EOM contact-term conventions. The input includes artificial-boundary and corner strata whenever graph weights reach them.

Let $\displaystyle{t_\gamma^0}$ denote a graph weight before extension across its singular diagonals, and let $\displaystyle{\mathsf E_\gamma}$ be the specified extension step after proper subdivergences have been treated. Compatibility with transport means that the specified extension maps satisfy

$$\begin{align}
\mathcal U\bigl(\mathsf E_{\gamma,M}t_{\gamma,M}^0\bigr) &=\mathsf E_{\gamma,\#}\bigl(\mathcal U t_{\gamma,M}^0\bigr),
\end{align}$$

where $\displaystyle{\mathcal U}$ transports fields, distributions, labels and normalization tensors on their stated domains. The prescription has the following properties on the graph weights under consideration:

1. **Domain and locality.** Every graph, subgraph and boundary/contact stratum belongs to the algorithm's domain, with the specified germ, jet, scaling and counterterm data.
2. **Covariance.** The actual geometric and bundle transports, coordinates and regulators obey the prescription's covariance and limiting rules.
3. **Transport of subtraction data.** Unextended weights, subtraction jets, local normalization tensors and finite Wick-label conversions correspond.
4. **Regional and global normalization.** The same extension rule and the same fixed finite normalization values are used on common local data. Any native-wall-to-coupled finite correction is calculated by that rule.
5. **Opening and sewing.** All same-region and mixed legs and vertices are retained, and the actual localization, finite sums and regrouping commute with the allowed extension steps.

If a prescription only extends the fully regrouped coupled weight, its conclusion concerns that coupled construction. To claim direct composition of separately renormalized native regional terms, the fifth condition must hold for the native terms, the corrections and their recombination separately.

**Theorem R4r — Renormalized reconstruction.** Under the regular elementary comparison of §5.2 and the five prescription conditions, all declared renormalized time-ordered products correspond. Formal interacting operations correspond coefficientwise if their required products, source derivatives, inverses and retarded/Bogoliubov insertions remain in the same admissible domains.

**Proof.** Off the singular diagonals, graph weights agree by the elementary contraction comparison. Induct over proper subgraphs and then the current graph. The lower extended weights already agree. The next extension therefore receives corresponding unextended distributions, subtraction data and normalization constants. The assumed algorithmic compatibility gives corresponding extended weights. Finite sums of graphs give corresponding time-ordered products.

For the formal interacting construction, write the relevant series as

$$\begin{align}
S(g)&=1+\sum_{n\geqslant1}g^nS_n,& B(g)&=S(g)^{-1}=\sum_{n\geqslant0}g^nB_n.
\end{align}$$

Equating coefficients in $\displaystyle{S(g)B(g)=1}$ gives the ordered recursion

$$\begin{align}
B_0&=1,&B_n&=-\sum_{k=1}^nS_kB_{n-k}.
\end{align}$$

It is valid in a noncommutative algebra: the order of factors is retained. Corresponding coefficients therefore have corresponding inverses order by order. Legal source derivatives and insertions preserve the comparison in the same way. The EOM contact terms and required Ward identities stay part of the off-shell prescription throughout. $\square$

The theorem determines the sewing coefficients within the selected compatible prescription, including its fixed finite normalization data. An extension algorithm on the stated domain is part of that prescription. For a finite sewing diagram, the same graph induction gives agreement of direct and successive constructions when every intermediate region carries compatible data at this quantum level.

## 6. Finite Composition and Refinement

Fix a finite regular cut diagram with compatible collar and bundle identifications. Assign each intermediate union its regional variational theory by the construction of §1. Unsewn faces retain their full configuration data, source families, responses and joint terms. At the observable and quantum levels, retain the declared seed domains and the same ordering and renormalization prescriptions.

**Proposition.** Suppose every elementary sewing in the diagram satisfies the hypotheses of the reconstruction statement being used. Direct assembly and successive assembly agree on the common admissible domain at that level.

**Proof.** At the configuration level, both constructions restrict to the same field in every original cell. Smooth descent therefore identifies the assembled fields. Additivity of the local action and compatible incidence identify their actions and variations. Applying R2 at each stage identifies the presymplectic potentials and forms.

For causal response, retain all source and boundary-input columns at every partial sewing. Each permitted elimination order then solves the same final causal problem. The uniqueness hypothesis of R3a identifies the outputs. Seed evaluation and induction on finite words identify the corresponding observable operations and relations.

The linear label maps compose to the same presymplectic map, so the universal construction of R4c gives the same CCR/Weyl map. Compatible elementary kernels and label transport identify every regular contraction. For renormalized operations, the common extension and normalization prescription identifies each graph weight by the induction of R4r, and hence every declared formal coefficient. $\square$

This composition statement is made for the fixed finite diagram and its admissible intermediate regions. Its hypotheses are inherited at each stage on the corresponding domains.

## References

- D. Harlow and J.-q. Wu, [*Covariant phase space with boundaries*, arXiv:1906.08616](https://arxiv.org/html/1906.08616v3).
- [*Regional Field Theories and Sewing*, source manuscript dated 2026-09-23](/Users/koishi/Desktop/todo/REGIONAL_THEORY_AND_SEWING.md).
