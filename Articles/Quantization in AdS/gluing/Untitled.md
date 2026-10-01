Let $\displaystyle{R}$ be one region, of dimension $\displaystyle{n\geqslant 2}$, with Lorentzian signature $\displaystyle{(-,+,\dots,+)}$. Its boundary is decomposed as

$$\begin{align}
\partial R & =\Sigma _{R,i}\cup \Sigma _{R,f}\cup B_{R}\cup \Gamma _{R} & \Sigma _{R,i}\cap \Sigma _{R,f} & =\varnothing \\
\partial \Sigma _{R,i} & =\Sigma _{R,i}\cap(B_{R}\cup \Gamma _{R}), & \partial \Sigma _{R,f} & =\Sigma _{R,f}\cap(B_{R}\cup \Gamma _{R})
\end{align}$$

here $\displaystyle{\Sigma _{R,i}}$ and $\displaystyle{\Sigma _{R,f}}$ are the initial and final Cauchy surfaces, $\displaystyle{B_{R}}$ is the (asymptotic) physical timelike boundary, and $\displaystyle{\Gamma _{R}}$ is the timelike boundary waiting to be glued to another region. Null boundaries are excluded from the present setup.

Write $\displaystyle{\phi=(\Phi ^{a},\Phi _{a}^{+})}$ for the full graded field (where $\displaystyle{\Phi ^{a}}$ collectively denotes the fields, ghosts and any higher/nonminimal fields, and $\displaystyle{\Phi _{a}^{+}}$ the corresponding antifields), and let $\displaystyle{\mathcal{C}_{R}}$ denote the space of configurations on $\displaystyle{R}$ satisfying the (asymptotic) boundary conditions $\displaystyle{\mathcal{B}_{B}[\phi]=j_{B}}$ defined on $\displaystyle{B_{R}}$ and $\displaystyle{\mathcal{B}_{\Gamma}[\phi]=j_{\Gamma}}$ defined on $\displaystyle{\Gamma _{R}}$. The action, BV symplectic form and the BV differential are given by

$$\begin{align}
S_{R} & =\int _{R}L_{R}+\int _{B_{R}}\ell _{R}+\int _{\Gamma _{R}}\lambda _{R} \\
\omega _{R}^{\mathrm{BV}} & =\int _{R}\delta \Phi _{a}^{+}\wedge \delta \Phi ^{a} \\
Q_{R}F & =(S_{R,\text{bulk}},F)_{\mathrm{BV}}, & S_{R,\text{bulk}} & =\int _{R}L_{R}
\end{align}$$

here the BV antibracket $\displaystyle{(\cdot,\cdot)_{\mathrm{BV}}}$ is defined as

$$\begin{align}
(F,G)_{\mathrm{BV}} & =(\omega _{R}^{\mathrm{BV}})^{-1}(\delta F,\delta G)
\end{align}$$

and the BV differential $\displaystyle{Q_{R}}$ satisfies

$$\begin{align}
Q_{R}^{2}=0
\end{align}$$

take a variation of the action, we have

$$\begin{align}
\delta S_{R} & =\int _{R}E_{R,a}\delta \phi ^{a}+\theta _{R}| _{\Sigma _{f}}-\theta _{R}| _{\Sigma _{i}}
\end{align}$$

where $\displaystyle{\theta _{R}}$ is the presymplectic potential. The boundary conditions on $\displaystyle{B_{R}}$ and $\displaystyle{\Gamma _{R}}$ are imposed so that the boundary variations vanish or reduce to corner contributions absorbed into the presymplectic potential. We define the prephase space $\displaystyle{\tilde{\mathcal{P}}}$, in other words, the solution space, as

$$\begin{align}
\tilde{\mathcal{P}}_{R} & =\left\{\phi \in \mathcal{C}_{R}:E_{R,a}[\phi]=0\right\}
\end{align}$$

take a further variation of the presymplectic potential $\displaystyle{\theta _{R}}$, we get the presymplectic form

$$\begin{align}
\omega _{R} & =\delta \theta _{R}
\end{align}$$

before gluing, we should open the artificial interface $\displaystyle{\Gamma _{R}}$ by releasing the fixed interface datum $\displaystyle{j_{\Gamma}}$, while keeping the physical boundary condition on $\displaystyle{B_{R}}$ unchanged, and delete the interface term from the action. The set of configuration is enlarged to

$$\begin{align}
\mathcal{C}^{o}_{R} & =\bigcup _{j_{\Gamma}}\mathcal{C}_{R}[j_{\Gamma}]
\end{align}$$

correspondingly, the interface contribution is no longer required to vanish, and the variational principle takes the form

$$\begin{align}
\delta S_{R}^{o} & =\int _{R}E_{R,a}\delta \phi ^{a}+\theta _{R}|_{\Sigma _{f}}-\theta _{R}|_{\Sigma _{i}}+\int _{\Gamma _{R}}\Theta _{R}
\end{align}$$

and the enlarged prephase space

$$\begin{align}
\tilde{\mathcal{P}}_{R}^{o} & =\bigcup _{j_{\Gamma}}\tilde{\mathcal{P}}_{R}[j_{\Gamma}]
\end{align}$$

now we will define how to glue two regions $\displaystyle{R_{1},R_{2}}$ together along $\displaystyle{\Gamma _{1}}$ and $\displaystyle{\Gamma _{2}}$. We assume compatible collars near the interfaces so that the gluing map and its transverse jet prolongation admit a smooth realization. We first require the existence of a diffeomorphism $\displaystyle{d:\Gamma _{1}\to \Gamma _{2}}$ compatible with the orientation and corner structure, and choose one such $\displaystyle{d}$. Using compatible collars, the two inward normal coordinates define a common signed transverse coordinate. Smooth gluing requires equality of all transverse jets in this common coordinate.

The diffeomorphism $\displaystyle{d}$ must admit compatible lifts to all primitive bundles and structural data required by the theory. For a principal $\displaystyle{G}$-bundle this is equivalent to

$$\begin{align}
[P_{1}|_{\Gamma_{1}}] & =[d^{*}(P_{2}|_{\Gamma_{2}})]\in[\Gamma_{1},BG]
\end{align}$$

fixed background fields and couplings are required to have matching transverse jets in the common signed coordinate. We denote the resulting complete interface identification by $\displaystyle{D_{\Gamma}}$. Different admissible choices of $\displaystyle{D_{\Gamma}}$ may lead to different glued theories or global sectors. However, if

$$\begin{align}
D_{\Gamma}' & =u_{1}D_{\Gamma}u_{2}^{-1}
\end{align}$$

where $\displaystyle{u_{a}}$ are automorphisms extending over the full regions $\displaystyle{R_{a}}$, then the two gluings $\displaystyle{D_{\Gamma}}$ and $\displaystyle{D_{\Gamma}'}$ define isomorphic theories. Thus inequivalent gluing sectors are classified by admissible $\displaystyle{D_{\Gamma}}$'s modulo extendable regional automorphisms.

On the classical fields, let $\displaystyle{q_{a}}$ be the configuration traces on the interface $\displaystyle{\Gamma _{a}}$ selected by the first variation, and $\displaystyle{\Pi_{a}}$ their response densities. We first impose gluing condition

$$\begin{align}
q_{1} & =D_{\Gamma}q_{2}
\end{align}$$

the flux matching condition for the conjugate response is then derived from the variational principle

$$\begin{align}
\delta S|_{\Gamma} & =\int _{\Gamma_{1}} \braket{ \Pi_{1}+D_{\Gamma}^{\vee}\Pi_{2},\delta q_{1} } \\
\implies & \Pi_{1}+D_{\Gamma}^{\vee}\Pi_{2}=0
\end{align}$$

we then define the set of glued configurations $\displaystyle{\mathcal{C}}$ as

$$\begin{align}
\mathcal{C}_{D_{\Gamma}} & =\left\{(\phi_{1},\phi_{2})\in \mathcal{C}_{1}^{o}\times \mathcal{C}_{2}^{o}:j ^{\infty}_{\Gamma_{1}}\phi_{1}=D_{\Gamma}j ^{\infty}_{\Gamma _{2}}\phi _{2}\right\}
\end{align}$$

The glued spacetime is defined by

$$\begin{align}
M_{D_{\Gamma}} = (R_{1}\sqcup R_{2})/d .
\end{align}$$

Since the configurations in $\mathcal C_{D_{\Gamma}}$ have matching full transverse jets, piecewise evaluation defines a smooth configuration on $M_{D_{\Gamma}}$. Conversely, every smooth configuration on $M_{D_{\Gamma}}$ restricts to a unique element of $\mathcal C_{D_{\Gamma}}$. Hence there is a natural identification

$$\begin{align}
\operatorname{Asm}_{D_{\Gamma}}: \mathcal C_{D_{\Gamma}} \xrightarrow{\sim} \mathcal C(M_{D_{\Gamma}}).
\end{align}$$

Assuming that the local theory data are compatible under $D_{\Gamma}$, the action, BV symplectic form and BV differential of the glued theory are defined by

$$\begin{aligned}
S_{D_{\Gamma}} &= \left.(S_{1}^{o}+S_{2}^{o})\right|_{\mathcal C_{D_{\Gamma}}},\\
\omega_{D_{\Gamma}}^{\mathrm{BV}} &= \left. \left( \omega_{1}^{\mathrm{BV}} + \omega_{2}^{\mathrm{BV}} \right) \right|_{\mathcal C_{D_{\Gamma}}},\\
Q_{D_{\Gamma}} &= \left.(Q_{1},Q_{2})\right|_{\mathcal C_{D_{\Gamma}}}.
\end{aligned}$$

The matching conditions derived above ensure that the two internal interface contributions to the variation cancel.

Take a variation of the glued action $\displaystyle{S_{D_{\Gamma}}}$, we have

$$\begin{align}
\delta S_{D_{\Gamma}} & =\int _{M_{D_{\Gamma}}}E_{a}\delta \phi ^{a}+\theta _{D_{\Gamma}}|_{\Sigma _{f}}-\theta _{D_{\Gamma}}|_{\Sigma _{i}}
\end{align}$$

here terms supported on the interface $\displaystyle{\Gamma}$ vanish by construction. The prephase space $\displaystyle{\tilde{\mathcal{P}}_{D_{\Gamma}}}$ is defined as

$$\begin{align}
\tilde{\mathcal{P}}_{D_{\Gamma}} & =\left\{\phi \in \mathcal{C}_{D_{\Gamma}}:E_{a}[\phi]=0\right\}
\end{align}$$

or **equivalently**

$$\begin{align}
\tilde{\mathcal{P}}_{D_{\Gamma}} & =\left\{(\phi_{1},\phi_{2})\in \tilde{\mathcal{P}}^{o}_{1}\times \tilde{\mathcal{P}}_{2}^{o}:j ^{\infty}_{\Gamma_{1}}\phi_{1}=D_{\Gamma}j ^{\infty}_{\Gamma _{2}}\phi _{2}\right\}
\end{align}$$

the glued presymplectic potential $\displaystyle{\theta}$ and the glued presymplectic form are then

$$\begin{align}
\theta _{D_{\Gamma}} & =(\theta_{1}+\theta_{2})|_{\mathcal{C}_{D_{\Gamma}}} \\
\omega _{D_{\Gamma}} & =\delta \theta _{D_{\Gamma}}|_{\tilde{\mathcal{P}}_{D_{\Gamma}}} \\
 & =(\omega_{1}+\omega_{2})|_{\tilde{\mathcal{P}}_{D_{\Gamma}}}
\end{align}$$

---

*Preliminaries for the BV deformation complex*

Fix a classical solution $\displaystyle{\phi _{0}}$ so that $\displaystyle{Q\phi _{0}=0}$. Linearizing the BV differential gives

$$\begin{align}
\mathrm{d}_{\phi _{0}} & =(DQ)_{\phi _{0}}, & \mathrm{d}^{2}_{\phi _{0}} & =0
\end{align}$$

for an irreducible gauge theory, the corresponding deformation complex takes the form

$$\begin{align}
\mathcal{E}^{-1} \xrightarrow{K}\mathcal{E}^{0}\xrightarrow{J}\mathcal{E}^{1}\xrightarrow{K^{*}}\mathcal{E}^{2}
\end{align}$$

where $\displaystyle{K}$ generates infinitesimal gauge transformations

$$\begin{align}
K\varepsilon & =\delta _{\varepsilon}\phi _{0}
\end{align}$$

$\displaystyle{J}$ is the linearized eom operator. Gauge invariance implies

$$\begin{align}
JK & =0, & K^{*}J=0
\end{align}$$

while $\displaystyle{J^{*}=J}$ follows from the variational principle. The usual causal Green operators in ordinary field theory are generalized to Green homotopy in gauge theory. A retarded/advanced Green homotopy of the deformation complex is a degree-$\displaystyle{-1}$ causal operator $\displaystyle{h^{R/A}}$ satisfying

$$\begin{align}
\mathrm{d}_{\phi _{0}}h^{R/A}+h^{R/A}\mathrm{d}_{\phi _{0}} & =\mathrm{id}
\end{align}$$

on the corresponding causal support domain. Its causal difference

$$\begin{align}
E_{h} & =h^{R}-h^{A}
\end{align}$$

satisfies

$$\begin{align}
\mathrm{d}E_{h}+E_{h}\mathrm{d} & =0
\end{align}$$

we noe construct the retarded/advanced Green homotopies $\displaystyle{h^{R/A}}$ from $\displaystyle{J,K}$ and a compatible gauge fixing. Let $\displaystyle{C:\mathcal{E}^{0}\to \mathcal{E}^{-1}}$ be a gauge condition. Choose an invertible symmetric zero-order map $\displaystyle{\mathsf{B}:\mathcal{E}^{-1}\to \mathcal{E}^{2}}$. Define the gauge-fixed field, ghost and dual-ghost operators

$$\begin{align}
\mathcal{P} & =J+C^{*}\mathsf{B}C, & \mathcal{R} & =CK, & \mathcal{R}^{*} & =K^{*}C^{*}
\end{align}$$

we assume that these operators admit retarded and advanced Green operators on the relevant causal domains. The Noether identities imply

$$\begin{align}
\mathcal{P}K & =C^{*}\mathsf{B}\mathcal{R}, & K^{*}\mathcal{P} & =\mathcal{R}^{*}\mathsf{B}C
\end{align}$$

and causal uniqueness therefore gives

$$\begin{align}
G_{\mathcal{P}}^{R/A}C^{*}B & =KG^{R/A}_{\mathcal{R}}, & \mathsf{B}CG_{\mathcal{P}}^{R/A} & =G_{\mathcal{R}^{*}}^{R/A}K^{*}
\end{align}$$

the retarded/advanced Green homotopy of the deformation complex is then

$$\begin{align}
h_{0}^{R/A} & =G_{\mathcal{R}}^{R/A}C, & h_{1}^{R/A} & =G_{\mathcal{P}}^{R/A}, & h_{2}^{R/A} & =C^{*}G_{\mathcal{R}^{*}}^{R/A}
\end{align}$$

and these blocks satisfy

$$\begin{align}
\mathrm{d}_{\phi _{0}}h^{R/A}+h^{R/A}\mathrm{d}_{\phi _{0}} & =\mathrm{id}
\end{align}$$

---

Fix a background solution $\displaystyle{\phi _{0}\in \tilde{\mathcal{P}}_{D_{\Gamma}}}$, with regional restrictions $\displaystyle{\phi _{0,a}}$ and corresponding opened interface data $\displaystyle{j_{\Gamma,a,0}}$. All regional operators and transmission conditions below are linearized about this background. Let $\displaystyle{\varphi ^{R/A}_{a}}$ denote the retarded/advanced linearized response on $\displaystyle{R_{a}}$, and let $\displaystyle{\eta _{a} ^{R/A}}$ denote the corresponding variation of the opened interface data. For a regional bulk source $\displaystyle{f_{a}}$, write

$$\begin{align}
\varphi _{a}^{R/A} & =G^{R/A}_{a}f_{a}+H_{a}^{R/A}\eta _{a}^{R/A}
\end{align}$$

here $\displaystyle{G^{R/A}_{a}f_{a}}$ is the causal response to the bulk source with $\displaystyle{j_{\Gamma,a}}$ fixed, whereas $\displaystyle{H^{R/A}_{a}\eta _{a}^{R/A}}$ is the homogeneous bulk solution induced by varying $\displaystyle{j_{\Gamma,a}}$.

Let $\displaystyle{\mathcal{B}_{D_{\Gamma}}}$ denote the corresponding linearized mismatch operator. For the physical field block, this operator takes the form

$$\begin{align}
\mathcal{B}_{D_{\Gamma}}(\varphi_{1},\varphi_{2}) & =\begin{pmatrix}
q_{1}-D_{\Gamma}q_{2} \\
\Pi_{1}+D_{\Gamma}^{\vee}\Pi_{2}
\end{pmatrix}
\end{align}$$

with the appropriate linearized transmission conditions used for the other deformation degrees. Define

$$\begin{align}
G^{R/A} & =\bigoplus_{a}G^{R/A}_{a}, & H^{R/A} & =\bigoplus_{a}H^{R/A}_{a} \\
N^{R/A} & =\mathcal{B}_{D_{\Gamma}}G^{R/A}, & M^{R/A} & =\mathcal{B}_{D_{\Gamma}}H^{R/A}
\end{align}$$

then $\displaystyle{N^{R/A}f}$ is the mismatch produced by the independently sourced regional responses, while $\displaystyle{M^{R/A}\eta ^{R/A}}$ is the change in this mismatch produced by varying the interface data. Gluing condition therefore requires

$$\begin{align}
M^{R/A}\eta ^{R/A} & =-N^{R/A}f
\end{align}$$

choose a linear solution operator $\displaystyle{L^{R/A}}$ for $\displaystyle{M^{R/A}}$ on the relevant mismatch range with $\displaystyle{M^{R/A}L^{R/A}y=y}$, then

$$\begin{align}
\eta ^{R/A} & =-L^{R/A}N^{R/A}f
\end{align}$$

and hence

$$\begin{align}
\mathcal{G}^{R/A}_{\#} & =G^{R/A}-H^{R/A}L^{R/A}N^{R/A}
\end{align}$$
