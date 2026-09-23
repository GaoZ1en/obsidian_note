The goal is to define the classical regional/global observable algebra, how to glue them and the glued algebra is symplectomorphic to the global observable algebra.

## 1+1 Example

Take $\displaystyle{\Sigma _{i}=[0,\ell _{i}]}$, $\displaystyle{\ell _{i}>0}$, and let $\displaystyle{y_{i}}$ be the coordinate on $\displaystyle{\Sigma _{i}}$. The regional action and its variation is given by

$$\begin{align}
S_{i}[\phi _{i}] & =\dfrac{1}{2}\int _{I}\mathrm{d}t\int _{0}^{\ell _{i}}\mathrm{d}y_{i}\left(\dot{\phi}_{i}^{2}-\phi _{i}'^{2}-m^{2}\phi _{i}^{2}\right), & I=[t_{i},t_{f}] \\
\delta S_{i} & = \int _{I}\mathrm{d}t\int _{0}^{\ell _{i}}\mathrm{d}y_{i}\left(-\ddot{\phi}_{i}+\phi''_{i}-m^{2}\phi _{i}\right)\delta \phi _{i} \\
 & +\left.\int _{0}^{\ell _{i}}\mathrm{d}y_{i}\dot{\phi}_{i}\delta \phi _{i}\right|^{t_{f}}_{t_{i}}+\left.\int _{I}\mathrm{d}t \Pi _{i}'\delta q _{i}\right|_{y_{i}=\ell _{i}}
\end{align}$$

at $\displaystyle{y_{i}=0}$ we impose some suitable boundary condition to ensure the variational problem is well-defined. at $\displaystyle{y_{i}=\ell _{i}}$ we denote $\displaystyle{\delta q_{i}=\delta \phi _{i}|_{y_{i}=\ell _{i}}}$ and $\displaystyle{\Pi_{i}=\phi _{i}'|_{y_{i}=\ell _{i}}}$. phase space gluing mechanism is recoded in [[Articles/Quantization in AdS/gluing/archive/2026-09-23/04-observable-algebra/formalism/classical_gluing_formalism|classical_gluing_formalism]], and we will not repeat it here.

### Regional Observable Algebra

For each region $\displaystyle{i}$ with given prescribed history $\displaystyle{q_{i}}$, the regional covariant phase space $\displaystyle{\mathcal{P}_{i}[q_{i}]}$ is defined as

$$\begin{align}
\mathcal{P}_{i}[q_{i}] & =\left\{\Phi _{i}:-\ddot{\Phi}_{i}+\Phi''_{i}-m^{2}\Phi _{i}=0,\gamma _{i}\Phi _{i}=q_{i},\text{physical BC}\right\}
\end{align}$$

with symplectic form $\displaystyle{\Omega _{i}=\int _{0}^{\ell _{i}}\mathrm{d}y_{i}\delta \dot{\phi}_{i}\wedge \delta \phi _{i}}$. For fixed $\displaystyle{q_{i}}$, we define the regional observable algebra as

$$\begin{align}
\mathcal{H}_{i}[q_{i}] & =\mathcal{H}(\mathcal{P}_{i}[q_{i}],\Omega _{i}) \\
 & =\left\{F\in C^{\infty}(\mathcal{P}_{i}[q_{i}],\mathbb{R}):\exists X_{F,i}\in \Gamma(T\mathcal{P}_{i}[q_{i}]),X_{F,i}\cdot \Omega _{i}=-\delta F\right\}
\end{align}$$

and for two observables $\displaystyle{F,G\in \mathcal{H}_{i}[q_{i}]}$, define the Poisson bracket by

$$\begin{align}
\left\{F,G\right\}_{i,q_{i}} & =X_{F}\cdot X_{G}\cdot \Omega _{i}
\end{align}$$

we can easily verify that $\displaystyle{(\mathcal{H}_{i}[q_{i}],\left\{\cdot,\cdot\right\}_{i,q_{i}})}$ forms a Poisson algebra.

To do dynamics/algebra gluing, we have to release $\displaystyle{q_{i}}$ as recorded in [[Articles/Quantization in AdS/gluing/archive/2026-09-23/04-observable-algebra/formalism/classical_gluing_formalism|classical_gluing_formalism]]. We define the regional extended phase space as

$$\begin{align}
\mathcal{P}_{i}=\bigsqcup_{q_{i}\in \mathcal{B}_{i}}\mathcal{P}_{i}[q_{i}]
\end{align}$$

and the regional observable algebra is

$$\begin{align}
\mathcal{H}_{i} & =\left\{F\in C^{\infty}(\widehat{\mathcal{P}}_{i},\mathbb{R}):F|_{\mathcal{P}_{i}[q_{i}]}\in \mathcal{H}_{i}[q_{i}],\forall q_{i}\in \mathcal{B}_{i}\right\}
\end{align}$$

and for variations of $\displaystyle{q_{i}}$, we require $\displaystyle{F}$ varies smoothly with $q_i$, so that the family of Hamiltonian vector fields $\displaystyle{X_{F_{q_{i}}}}$ varies smoothly with the boundary history $\displaystyle{q_{i}}$. For two observables $\displaystyle{F,G\in \mathcal{H}_{i}}$, the Poisson bracket $\displaystyle{\left\{F,G\right\}_{i}}$ is defined as

$$\begin{align}
\left\{F,G\right\}_{i}|_{\mathcal{P}_{i}[q_{i}]} & =\left\{F|_{\mathcal{P}_{i}[q_{i}]},G|_{\mathcal{P}_{i}[q_{i}]}\right\}_{i,q_{i}}
\end{align}$$

and $\displaystyle{(\mathcal{H}_{i},\left\{\cdot,\cdot\right\}_{i})}$ forms a Poisson algebra. Such regional observable algebra $\displaystyle{\mathcal{H}_{i}}$ covers both the bulk dynamics and the boundary history degrees of freedom, and it is the object we will glue across regions.

### Algebra Gluing

Now we have two regional phase space $\displaystyle{(\widehat{\mathcal{P}}_{1},\Omega _{1}),(\widehat{\mathcal{P}}_{2},\Omega _{2})}$ and two regional observable algebra $\displaystyle{(\mathcal{H}_{1},\left\{\cdot,\cdot\right\}_{1}),(\mathcal{H}_{2},\left\{\cdot,\cdot\right\}_{2})}$. The gluing mechanism of regional phase spaces are recorded in [[Articles/Quantization in AdS/gluing/archive/2026-09-23/04-observable-algebra/formalism/classical_gluing_formalism|classical_gluing_formalism]], and we will focus in the gluing mechanism of regional observable algebras. We first collect the fixed-history phase spaces into

$$\begin{align}
\mathcal{P}_{\mathrm{ind}}[q] & =\mathcal{P}_{1}[q_{1}]\times \mathcal{P}_{2}[q_{2}]
\end{align}$$

the symplectic form

$$\begin{align}
\Omega _{\mathrm{ind}} & =\Omega_{1}+\Omega_{2}
\end{align}$$

and the algebra

$$\begin{align}
\mathcal{H}_{\mathrm{ind}}[q] & =\mathcal{H}(\mathcal{P}_{\mathrm{ind}}[q],\Omega _{\mathrm{ind}})
\end{align}$$

then collect allowed histories

$$\begin{align}
\mathcal{P}_{\mathrm{ind}} & =\bigsqcup_{q\in \mathcal{B}}\mathcal{P}_{\mathrm{ind}}[q] \\
\mathcal{H}_{\mathrm{ind}} & =\left\{F\in C^{\infty}(\mathcal{P}_{\mathrm{ind}},\mathbb{R}):F|_{\mathcal{P}_{\mathrm{ind}}[q]}\in \mathcal{H}_{\mathrm{ind}}[q],\forall q\in \mathcal{B}\right\}
\end{align}$$

and the Poisson bracket defined just as in the regional case. Then we will impose the gluing condition

$$\begin{align}
q_{1} & =q_{2}
\end{align}$$

which induces the inclusion

$$\begin{align}
\iota _{\mathrm{com}}: & \mathcal{P}_{\mathrm{com}} \hookrightarrow \mathcal{P}_{\mathrm{ind}} \\
(\Phi _{1},\Phi _{2},q) & \mapsto(\Phi_{1},\Phi_{2},q,q)
\end{align}$$

(here $\displaystyle{\mathrm{com}}$ stands for common-histories) and the pullbacked algebra

$$\begin{align}
\iota _{\mathrm{com}}^{*} : & \mathcal{H}_{\mathrm{ind}}\to \mathcal{H}_{\mathrm{com}} \\
(\iota _{\mathrm{com}}^{*}F)(\Phi _{1},\Phi _{2},q) & =F(\Phi _{1},q;\Phi _{2},q)
\end{align}$$

now release the variation $\displaystyle{\delta q}$, variation principle at the artificial cut gives the flux matching condition

$$\begin{align}
\Pi_{1}+\Pi_{2}=0
\end{align}$$

which induces the inclusion

$$\begin{align}
\iota _{\mathrm{glue}}: & \mathcal{P}_{\mathrm{glue}}\hookrightarrow \mathcal{P}_{\mathrm{com}} \\
\mathcal{P}_{\mathrm{glue}} & =\left\{(\Phi _{1},\Phi _{2},q)\in \mathcal{P}_{\mathrm{com}}:\Pi _{1}+\Pi _{2}=0\right\}
\end{align}$$

and the pullbacked algebra

$$\begin{align}
\iota _{\mathrm{glue}}^{*} : & \mathcal{H}_{\mathrm{com}}\to \mathcal{H}_{\mathrm{glue}}
\end{align}$$

since we have already proved that

$$\begin{align}
(\mathcal{P}_{\mathrm{glue}},\Omega _{\mathrm{glue}})\simeq (\mathcal{P},\Omega)
\end{align}$$

the symplectomorphism induces the isomorphism between glued observable algebra $\displaystyle{\mathcal{H}_{\mathrm{glue}}}$ and the global observable algebra $\displaystyle{\mathcal{H}}$

$$\begin{align}
\mathcal{H}_{\mathrm{glue}}\simeq \mathcal{H}
\end{align}$$

by the first isomorphism theorem, we have the isomorphism

$$\begin{align}
\bar{\iota}^{*}_{\mathrm{glue}}:\mathcal{H}_{\mathrm{com}}/\mathrm{Ker}\iota ^{*}_{\mathrm{glue}}  & \xrightarrow{\sim} \mathcal{H}_{\mathrm{glue}}\simeq \mathcal{H} \\
[F] & \mapsto \iota ^{*}_{\mathrm{glue}}F
\end{align}$$

and then we transport the bracket $\displaystyle{\left\{\cdot,\cdot\right\}_{\mathrm{glue}}}$ back to the quotient $\displaystyle{\mathcal{H}_{\mathrm{com}}/\mathrm{Ker}\iota ^{*}_{\mathrm{glue}}}$ as

$$\begin{align}
\left\{[F],[G]\right\}_{\sim} & =(\bar{\iota}^{*}_{\mathrm{glue}})^{-1}\left\{\iota ^{*}_{\mathrm{glue}}F,\iota ^{*}_{\mathrm{glue}}G\right\}_{\mathrm{glue}}
\end{align}$$

### Realization of the Poisson Bracket -- Peierls Bracket

In this subsection we will realize the Poisson bracket on the glued algebra $\mathcal{H}_{\mathrm{glue}}$ (and some other algebras) via the Peierls bracket, which is defined by the variation of the action with respect to the boundary sources.

For regional fixed history phase space $\displaystyle{\mathcal{P}_{i}[q_{i}]}$ with symplectic form $\displaystyle{\Omega _{i}}$, the variation $\displaystyle{\delta \Phi _{i}\in T_{\Phi _{i}}\mathcal{P}_{i}[q_{i}]}$ satisfies the linearized eom

$$\begin{align}
L_{i}\delta \Phi _{i} & =0
\end{align}$$

and suitable boundary condition (linearized boundary condition on the physical boundary and Dirichlet boundary condition on the artificial cut). Define the retarded/advanced Green operators $\displaystyle{G_{i}^{R/A}}$, which act on the sources $\displaystyle{j}$ in the bulk. $\displaystyle{G_{i}^{R/A}}$ satisfies

$$\begin{align}
L_{i}G_{i}^{R/A}j & =j
\end{align}$$

and has retarded/advanced causal support, and the boundary condition is chosen so that $\displaystyle{G_{i}^{R/A}j}$ satisfies the boundary conditions satified by $\displaystyle{\delta \Phi _{i}}$. Define

$$\begin{align}
E_{i} & := G_{i}^{A}-G_{i}^{R}
\end{align}$$

then $\displaystyle{E_{i}j}$ satisfies the homogeneous equation and the boundary conditions, so it defines a tangent vector in $T_{\Phi_i}\mathcal{P}_i[q_i]$.

---

In our language, we write

$$\begin{align}
E_{i}j & =\int \mathrm{d}x E_{i}j(x) \dfrac{\delta}{\delta \phi(x)}
\end{align}$$

and other elements in $\displaystyle{T_{\Phi _{i}}\mathcal{P}_{i}[q_{i}]}$ should be understood as vector fields of this form.

---

The idea of Peierls bracket is to identify the infinitesimal Hamiltonian flow generated by an observable $\displaystyle{G}$ through its causal response, and then measure how another observable $\displaystyle{F}$ changes along this flow. One can prove that the Peierls bracket is exactly the Poisson bracket induced from the CPS symplectic form $\displaystyle{\Omega}$.

We regard the observable $\displaystyle{G}$ as an infinitesimal perturbation of the action

$$\begin{align}
S_{\varepsilon}[\phi] & =S[\phi]+\varepsilon G[\phi]
\end{align}$$

there are two natural ways to solve for the induced change: the retarded response $\displaystyle{\delta ^{R}_{G}\phi=G^{R} \dfrac{\delta G}{\delta \phi}}$, in which the perturbation only affects the future, and the advanced response $\displaystyle{\delta ^{A}_{G}\phi=G^{A} \dfrac{\delta G}{\delta \phi}}$, in which it only affects the past. These two perturbed solutions induce two corresponding changes of the observable $\displaystyle{F}$ as $\displaystyle{\delta ^{R/A}_{G}F=\dfrac{\delta F}{\delta \phi}G^{R/A} \dfrac{\delta G}{\delta \phi}}$. The Peierls bracket $\displaystyle{\left\{F,G\right\}}$ is then defined as

$$\begin{align}
\left\{F,G\right\} & =\delta ^{A}_{G}F-\delta ^{R}_{G}F \\
 & =\int \mathrm{d}x\mathrm{d}y \dfrac{\delta F}{\delta \phi(x)} E(x,y) \dfrac{\delta G}{\delta \phi(y)}
\end{align}$$

here we introduces $\displaystyle{E=G^{A}-G^{R}}$.

For an observable $\displaystyle{F\in \mathcal{H}_{i}[q_{i}]}$, we define the corresponding Hamiltonian vector as

$$\begin{align}
X_{F,i} & = \delta ^{A}_{F}-\delta ^{R}_{F}\\
 & =\int _{M_{i}} \mathrm{d}x \left(\int _{M_{i}} \mathrm{d}yE_{i}(x,y) \dfrac{\delta F}{\delta \phi _{i}(y)}\right) \dfrac{\delta}{\delta \phi _{i}(x)}
\end{align}$$

and the Peierls bracket between observables $\displaystyle{F,G\in \mathcal{H}_{i}[q_{i}]}$ is defined as

$$\begin{align}
\left\{F,G\right\}_{i,q_{i}} & =\int _{M_{i}}\mathrm{d}x\mathrm{d}y \dfrac{\delta F}{\delta \phi _{i}(x)} E_{i}(x,y) \dfrac{\delta G}{\delta \phi _{i}(y)}
\end{align}$$

for $\displaystyle{\mathcal{H}_{i}}$, the Peierls bracket is defined as

$$\begin{align}
\left\{F,G\right\}_{i} & =\int _{M_{i}}\mathrm{d}x\mathrm{d}y \dfrac{\delta F}{\delta \phi _{i}(x)}E_{i}(x,y) \dfrac{\delta G}{\delta \phi _{i}(y)}, & \forall F[\phi _{i},q_{i}],G[\phi _{i},q_{i}]\in \mathcal{H}_{i}
\end{align}$$

similarly, we can define the Peierls bracket for $\displaystyle{\mathcal{H}_{\mathrm{ind}}}$ as

$$\begin{align}
\left\{F,G\right\}_{\mathrm{ind}} & =\sum _{i} \int _{M_{i}} \mathrm{d}x\mathrm{d}y \dfrac{\delta F}{\delta \phi _{i}(x)} E_{i}(x,y) \dfrac{\delta G}{\delta \phi _{i}(y)}, & \forall F,G\in \mathcal{H}_{\mathrm{ind}}
\end{align}$$

when impose gluing condition

$$\begin{align}
q_{1}=q_{2}=q
\end{align}$$

the Peierls bracket remains unchanged, since $\displaystyle{q}$ is still fixed. Now we will release $\displaystyle{q}$ and allow it to vary. For an observable $\displaystyle{G[\phi_{1},\phi_{2},q]\in \mathcal{H}_{\mathrm{com}}}$, its variation with respect to $\displaystyle{\phi_{1},\phi_{2}}$ and $\displaystyle{q}$ is then

$$\begin{align}
\delta G & =\sum _{i} \int _{M_{i}} \mathrm{d}x \dfrac{\delta G}{\delta \phi _{i}(x)}\delta \phi _{i}(x)+\int _{I}\mathrm{d}t \dfrac{\delta G}{\delta q(t)} \delta q(t)
\end{align}$$

the perturbation

$$\begin{align}
S_{\mathrm{tot}}\to S_{\mathrm{tot}}+\varepsilon G
\end{align}$$

will change both the bulk equations and the interface equation. The regional linear response can be written as

$$\begin{align}
\delta ^{R/A}_{G}\phi _{i} & =G^{R/A}_{i} \dfrac{\delta G}{\delta \phi _{i}}+H^{R/A}_{i}\eta ^{R/A}_{G}
\end{align}$$

here $\displaystyle{\eta ^{R/A}_{G}=\delta ^{R/A}_{G}q}$ is the commen-history variation induced by $\displaystyle{G}$ perturbation. The boundary response is then

$$\begin{align}
\delta ^{R/A}_{G}\Pi_{i} & =\rho ^{R/A}_{i} \dfrac{\delta G}{\delta \phi _{i}}+D^{R/A}_{i}\eta ^{R/A}_{G}
\end{align}$$

variation principle after perturbation gives

$$\begin{align}
\delta ^{R/A}_{G}\Pi_{1}+\delta ^{R/A}_{G}\Pi & _{2}-\dfrac{\delta G}{\delta q}=0
\end{align}$$

plug back into the response equation, we have

$$\begin{align}
\dfrac{\delta G}{\delta q} & =\rho _{1}^{R/A} \dfrac{\delta G}{\delta \phi_{1}}+\rho ^{R/A}_{2} \dfrac{\delta G}{\delta \phi _{2}}+(D^{R/A}_{1}+D^{R/A}_{2})\eta ^{R/A}_{G} \\
\implies \eta _{G}^{R/A} & =(D_{1}^{R/A}+D^{R/A}_{2})^{-1}\left( \dfrac{\delta G}{\delta q}-\rho ^{R/A}_{1} \dfrac{\delta G}{\delta \phi _{1}}-\rho ^{R/A}_{2} \dfrac{\delta G}{\delta \phi _{2}} \right)
\end{align}$$

therefore we can write the Hamiltonian vector as

$$\begin{align}
X_{G} & =\delta ^{A}_{G}-\delta ^{R}_{G} \\
 & =\sum _{i}\int _{M_{i}} \mathrm{d}x\left(\delta ^{A}_{G}\phi _{i}(x)-\delta ^{R}_{G}\phi _{i}(x)\right) \dfrac{\delta}{\delta \phi _{i}(x)} \\
 & +\int _{I}\mathrm{d}t\left(\delta ^{A}_{G}q(t)-\delta ^{R}_{G}q(t)\right) \dfrac{\delta}{\delta q(t)} \\
 & =\sum _{i} \int _{M_{i}}\mathrm{d}x\left(\sum _{j} \int _{M_{j}}\mathrm{d}y E_{ij}(x,y) \dfrac{\delta G}{\delta \phi _{j}(y)}+\int _{I}\mathrm{d}t' E_{iq}(x,t') \dfrac{\delta G}{\delta q(t')}\right) \dfrac{\delta}{\delta \phi _{i}(x)} \\
 & +\int _{I}\mathrm{d}t\left( \sum _{j} \int _{M_{j}} \mathrm{d}yE_{qj}(t,y) \dfrac{\delta G}{\delta \phi _{j}(y)}+\int _{I}\mathrm{d}t' E_{qq}(t,t') \dfrac{\delta G}{\delta q(t')} \right) \dfrac{\delta}{\delta q(t)}
\end{align}$$

where

$$\begin{align}
E_{ij}(x,y) & =\delta _{ij} E_{i}+H^{R}_{i}K^{R}\rho _{j}^{R}-H_{i}^{A}K^{A}\rho _{j}^{A} \\
E_{iq} & =H^{A}_{i}K^{A}-H^{R}_{i}K^{R} \\
E_{qi} & =K^{R}\rho _{i}^{R}-K^{A}\rho _{i}^{A} \\
E_{qq} & =K^{A}-K^{R} \\
K^{R/A} & =(D_{1}^{R/A}+D_{2}^{R/A})^{-1}
\end{align}$$

and then the Peierls bracket $\displaystyle{\left\{F,G\right\}}$ for $\displaystyle{F,G\in \mathcal{H}_{\mathrm{glue}}}$ is defined as

$$\begin{align}
\left\{F,G\right\}_{\mathrm{glue}} & =\sum _{i,j} \int _{M_{i}}\mathrm{d}x \int _{M_{j}}\mathrm{d}y \dfrac{\delta F}{\delta \phi _{i}(x)} E_{ij}(x,y) \dfrac{\delta G}{\delta \phi _{j}(y)} \\
 & +\sum _{i} \int _{M_{i}}\mathrm{d}x \int _{I}\mathrm{d}t \dfrac{\delta F}{\delta \phi _{i}(x)} E_{iq}(x,t) \dfrac{\delta G}{\delta q(t)} \\
 & +\sum _{j} \int _{I}\mathrm{d}t \int _{M_{j}}\mathrm{d}y \dfrac{\delta F}{\delta q(t)} E_{qj}(t,y) \dfrac{\delta G}{\delta \phi _{j}(y)} \\
 & +\int _{I}\mathrm{d}t\int _{I}\mathrm{d}t' \dfrac{\delta F}{\delta q(t)} E_{qq}(t,t') \dfrac{\delta G}{\delta q(t')}
\end{align}$$

consider the phase-space symplectomorphism

$$\begin{align}
\mathrm{Ass} & :(\mathcal{P}_{\mathrm{glue}},\Omega _{\mathrm{glue}})\xrightarrow{\sim}(\mathcal{P},\Omega) \\
\implies \mathrm{Ass}^{*} & :(\mathcal{H},\left\{\cdot,\cdot\right\})\xrightarrow{\sim}(\mathcal{H}_{\mathrm{glue}},\left\{\cdot,\cdot\right\}_{\mathrm{glue}})
\end{align}$$

(here $\displaystyle{\mathrm{Ass}}$ stands for assembly map) and we have

$$\begin{align}
\mathrm{Ass}^{*}\left\{F,G\right\} & =\left\{\mathrm{Ass}^{*}F,\mathrm{Ass}^{*}G\right\}_{\mathrm{glue}}, & \forall F,G\in \mathcal{H}
\end{align}$$

### Explicit Verification

In this subsection we will explicitly solve the $\displaystyle{(G,H,\rho,D)^{R/A}_{i}}$ for the 1+1 free scalar example and verify the glued bracket against the independently computed global Peierls bracket, including observables which induce a nonzero variation of the common history.

#### Conventions and the Response Equation

For this calculation choose homogeneous Dirichlet conditions at both physical endpoints. Let $L=\ell_1+\ell_2$ be the global interval length and assemble the spatial coordinate as

$$\begin{align}
X_1(y_1)&=y_1, & X_2(y_2)&=L-y_2, & X_{\mathrm{cut}}&=\ell_1.
\end{align}$$

Thus both regional coordinates run from a physical endpoint towards the cut. Take $m\geq0$ and

$$\begin{align}
L_i&=\partial_t^2-\partial_{y_i}^2+m^2, & \frac{\delta S_i}{\delta\phi_i}&=-L_i\phi_i.
\end{align}$$

Define

$$\begin{align}
f_i&=\frac{\delta G}{\delta\phi_i}, & g&=\frac{\delta G}{\delta q},
\end{align}$$

Here $g$ is the explicit boundary-source component of the first variation; the dependence through $\phi_i$ is already included in $f_i\delta\phi_i$. For example, $G=\int f\phi$ has $g=0$ even though its induced $\eta_G$ need not vanish.

We construct causal operators on the static cylinder $\mathbb R\times[0,L]$, then restrict to $I$. Bulk and boundary sources are smooth and compactly supported in the interior of $I$ (and bulk sources initially away from the cut and physical walls). Retarded responses have zero past Cauchy data; advanced responses have zero future Cauchy data. They are not required to vanish at both temporal ends. Boundary histories used as retarded/advanced inputs vanish near the corresponding past/future end, so corner compatibility holds there. Point sources below denote distribution kernels, rather than an enlargement of the smooth Hamiltonian algebra by unsmeared point evaluations.

#### The Four Regional Operators

Use the Fourier convention

$$\begin{align}
u(t)&=\int_{\mathbb R}\frac{\mathrm d\omega}{2\pi}e^{-i\omega t}\widehat u(\omega),\\
\kappa(z)^2&=m^2-z^2, & z_R&=\omega+i0, & z_A&=\omega-i0.
\end{align}$$

The following expressions are meromorphic functions of $z$ and are unchanged under $\kappa\mapsto-\kappa$. Their retarded and advanced kernels are the distributional boundary values from the upper and lower half-planes, respectively. One can choose $\operatorname{Re}\kappa>0$ off the real spectrum. Every product below is formed in the same open half-plane before taking its boundary value; there is no multiplication of retarded and advanced singular distributions.

For a regional interval of length $\ell_i$, set $y_< =\min(y,z')$, $y_> =\max(y,z')$. Solving the one-dimensional boundary-value problem gives

$$\begin{align}
\widehat G_i(z;y,z') &=\frac{\sinh(\kappa y_<)\sinh(\kappa(\ell_i-y_>))} {\kappa\sinh(\kappa\ell_i)},\\
\widehat H_i(z;y) &=\frac{\sinh(\kappa y)}{\sinh(\kappa\ell_i)},\\
\widehat\rho_i(z;z') &=\left.\partial_y\widehat G_i(z;y,z')\right|_{y=\ell_i} =-\frac{\sinh(\kappa z')}{\sinh(\kappa\ell_i)},\\
\widehat D_i(z) &=\left.\partial_y\widehat H_i(z;y)\right|_{y=\ell_i} =\kappa\coth(\kappa\ell_i).
\end{align}$$

Here $z$ is a frequency variable and $z'$ is a regional spatial source coordinate. Explicitly, for $B=G_i,H_i,\rho_i,D_i$,

$$\begin{align}
B^{R/A}(\tau) &=\lim_{\epsilon\downarrow0}\int_{\mathbb R}\frac{\mathrm d\omega}{2\pi} e^{-i\omega\tau}\widehat B(\omega\pm i\epsilon), &\tau&=t-t'.
\end{align}$$

The operators act by time convolution and, for $G_i$ and $\rho_i$, also by integration over the regional source coordinate. These formulas specify all four operators, including the contact terms in $D_i$.

To derive $G_i$, solve $(-\partial_y^2+\kappa^2)\widehat G_i=0$ away from $y=z'$, impose zero values at both endpoints, continuity at $y=z'$, and the jump

$$\begin{align}
\partial_y\widehat G_i(z;z'+0,z')- \partial_y\widehat G_i(z;z'-0,z')&=-1.
\end{align}$$

For $H_i$, impose the homogeneous equation and $H_i(0)=0$, $H_i(\ell_i)=1$. Taking the indicated normal derivatives then yields $\rho_i$ and $D_i$. In particular,

$$\begin{align}
\widehat\rho_i(z)&=-\widehat H_i(z)^{\mathsf T},
\end{align}$$

where $\mathsf T$ exchanges spatial input/output slots at fixed complex frequency; it does not change a retarded prescription into an advanced one.

For an explicit time-domain expression define

$$\begin{align}
e_{in}(y)&=\sqrt{\frac{2}{\ell_i}}\sin\frac{n\pi y}{\ell_i}, &\omega_{in}&=\sqrt{m^2+\frac{n^2\pi^2}{\ell_i^2}},\\
S_i(\tau;y,z')&=\sum_{n\geq1}e_{in}(y)e_{in}(z') \frac{\sin(\omega_{in}\tau)}{\omega_{in}}.
\end{align}$$

Then

$$\begin{align}
G_i^R(\tau;y,z')&=\theta(\tau)S_i(\tau;y,z'),\\
G_i^A(\tau;y,z')&=-\theta(-\tau)S_i(\tau;y,z'),\\
E_i(\tau;y,z')&=-S_i(\tau;y,z'),\\
H_i^{R/A}(\tau;y)&=-\left.\partial_{z'}G_i^{R/A}(\tau;y,z')\right|_{z'=\ell_i},\\
\rho_i^{R/A}(\tau;z')&=-H_i^{R/A}(\tau;z').
\end{align}$$

The sums and their boundary operations are understood distributionally. In particular, evaluating each Dirichlet mode at the cut before summing would incorrectly give zero for the trace of $H_i$. Its trace is the identity kernel $\delta(\tau)$, as the solved frequency formula shows; use that formula for the normal trace defining $D_i$.

As a further fully explicit specialization, for $m=0$ the retarded boundary operators are delayed pulses:

$$\begin{align}
H_i^R(\tau;y) &=\sum_{r=0}^{\infty}\left[ \delta\bigl(\tau-(\ell_i-y+2r\ell_i)\bigr) -\delta\bigl(\tau-(\ell_i+y+2r\ell_i)\bigr)\right],\\
D_i^R(\tau)&=\delta'(\tau)+2\sum_{r=1}^{\infty}\delta'(\tau-2r\ell_i).
\end{align}$$

Together with $\rho_i^R=-H_i^R$ these give the response as delayed copies of the source/history and its derivative. Advanced kernels satisfy $B_i^A(\tau)=B_i^R(-\tau)$ for $B=G,H,\rho,D$, with spatial slots retained. The pulse sums are locally finite in time for interior spatial points.

#### Release the Common History and Compute the Glued Kernels

The inverse interface response is now explicit:

$$\begin{align}
\widehat K(z) &=\frac{1}{\kappa[\coth(\kappa \ell_1)+\coth(\kappa \ell_2)]} =\frac{\sinh(\kappa \ell_1)\sinh(\kappa \ell_2)}{\kappa\sinh(\kappa L)}.
\end{align}$$

Removable expressions at $\kappa=0$ are interpreted by their limits. The inverse has a specified causal domain: $K^R$ acts on sources with vanishing past data, and $K^A$ on sources with vanishing future data. This is not an inverse on arbitrary histories with unrestricted homogeneous Cauchy data.

Substitute the solved $\rho_i$ into the release equation. At either causal prescription,

$$\begin{align}
\widehat\eta_G &=\widehat K\left(\widehat g+ \sum_j\int_0^{\ell_j}\widehat H_j(z;z')\widehat f_j(z;z')\,\mathrm dz'\right),\\
\widehat{\delta_G\phi_i}(y) &=\int_0^{\ell_i}\widehat G_i(z;y,z')\widehat f_i(z;z')\,\mathrm dz' +\widehat H_i(z;y)\widehat\eta_G.
\end{align}$$

In particular $g=0$ does not set $\eta_G$ to zero. A bulk perturbation usually changes the flux arriving at the cut and therefore changes the common history.

Denote the resulting full causal response blocks by $\mathcal G^{R/A}$. Their spatial kernels at fixed frequency are

$$\begin{align}
\widehat{\mathcal G}_{ij}(z;y,z') &=\delta_{ij}\widehat G_i(z;y,z')+ \widehat H_i(z;y)\widehat K(z)\widehat H_j(z;z'),\\
\widehat{\mathcal G}_{iq}(z;y)&=\widehat H_i(z;y)\widehat K(z),\\
\widehat{\mathcal G}_{qj}(z;z')&=\widehat K(z)\widehat H_j(z;z'),\\
\widehat{\mathcal G}_{qq}(z)&=\widehat K(z).
\end{align}$$

Taking the advanced-minus-retarded difference gives the Poisson kernels defined above.

We can compare with the global response without assuming the assembly isomorphism. Independently solve $(\partial_t^2-\partial_X^2+m^2)\mathcal G_{\mathrm{global}}=\delta$ on $[0,L]$, with Dirichlet walls at $0,L$ and no boundary at $\ell_1$. The same jump construction gives

$$\begin{align}
\widehat{\mathcal G}_{\mathrm{global}}(z;X,Z) &=\frac{\sinh(\kappa X_<)\sinh(\kappa(L-X_>))} {\kappa\sinh(\kappa L)}.
\end{align}$$

For points in different regions the regional elimination yields directly

$$\begin{align}
\widehat H_1(z;y)\widehat K(z)\widehat H_2(z;z') &=\frac{\sinh(\kappa y)\sinh(\kappa z')}{\kappa\sinh(\kappa L)}\\
&=\widehat{\mathcal G}_{\mathrm{global}}(z;y,L-z').
\end{align}$$

For two points $0<y\leq z'<\ell_1$ in region 1, the diagonal block is

$$\begin{align}
\widehat G_1(z;y,z')+\widehat H_1(z;y)\widehat K(z)\widehat H_1(z;z') &=\frac{\sinh(\kappa y)}{\kappa\sinh(\kappa \ell_1)} \left[\sinh(\kappa(\ell_1-z'))+ \frac{\sinh(\kappa \ell_2)\sinh(\kappa z')}{\sinh(\kappa L)}\right]\\
&=\frac{\sinh(\kappa y)\sinh(\kappa(L-z'))}{\kappa\sinh(\kappa L)}.
\end{align}$$

The second equality follows from the hyperbolic addition formula. Region 2 follows by $\ell_1\leftrightarrow \ell_2$ and reflection $X\mapsto L-X$. The remaining blocks obey

$$\begin{align}
\widehat H_i(z;y)\widehat K(z) &=\widehat{\mathcal G}_{\mathrm{global}}(z;X_i(y),\ell_1),\\
\widehat K(z)\widehat H_j(z;z') &=\widehat{\mathcal G}_{\mathrm{global}}(z;\ell_1,X_j(z')),\\
\widehat K(z)&=\widehat{\mathcal G}_{\mathrm{global}}(z;\ell_1,\ell_1).
\end{align}$$

These are exact meromorphic identities, hence identities for both causal boundary values separately. Taking their advanced-minus-retarded differences proves

$$\begin{align}
E_{ij}(t,y;t',z')&=E_{\mathrm{global}}(t,X_i(y);t',X_j(z')),\\
E_{iq}(t,y;t')&=E_{\mathrm{global}}(t,X_i(y);t',\ell_1),\\
E_{qj}(t;t',z')&=E_{\mathrm{global}}(t,\ell_1;t',X_j(z')),\\
E_{qq}(t,t')&=E_{\mathrm{global}}(t,\ell_1;t',\ell_1).
\end{align}$$

In particular, the full matrix kernel is antisymmetric under exchange of its two spacetime slots. The cut does not supply an additional independent field: the $q$ row/column is the trace of the corresponding bulk kernel. Smooth time-smearing makes these cut traces and their pairings well-defined in this model.

#### Field Brackets as Distributions and a Nonzero Crossing Example

The independently computed global causal kernel is

$$\begin{align}
E_{\mathrm{global}}(t,X;t',Z) &=-\frac{2}{L}\sum_{n=1}^{\infty} \sin\frac{n\pi X}{L}\sin\frac{n\pi Z}{L} \frac{\sin(\omega_n(t-t'))}{\omega_n}, &\omega_n&=\sqrt{m^2+\frac{n^2\pi^2}{L^2}}.
\end{align}$$

Accordingly the notation $\{\phi(t,X),\phi(t',Z)\}=E_{\mathrm{global}}(t,X;t',Z)$ means the kernel identity determined by

$$\begin{align}
F_f&=\int f(t,X)\phi(t,X)\,\mathrm dt\mathrm dX,\\
\{F_f,F_h\}&=\int f(t,X)E_{\mathrm{global}}(t,X;t',Z)h(t',Z)
\,\mathrm dt\mathrm dX\mathrm dt'\mathrm dZ,
\end{align}$$

for smooth compact test functions. It does not assert that every point evaluation lies in the declared smooth Hamiltonian algebra. As a sign and normalization check, with $\pi=\dot\phi$,

$$\begin{align}
\{\phi(t,X),\phi(t,Z)\}&=0,\\
\{\phi(t,X),\pi(t,Z)\} &=\left.\partial_{t'}E_{\mathrm{global}}(t,X;t',Z)\right|_{t'=t} =\delta(X-Z)
\end{align}$$

as spatial distributions in the interval interior. This agrees with $\Omega=\int\delta\pi\wedge\delta\phi$ and $X_G\mathbin{\cdot}\Omega=-\delta G$.

To evaluate a crossing bracket explicitly, put $X<\ell_1<Z$ and perturb by $G=\phi(t',Z)$, interpreted first as a kernel source. Its regional derivatives are $f_1=0$, $f_2(t,z')=\delta(t-t')\delta(z'-(L-Z))$, and $g=0$. Nevertheless,

$$\begin{align}
\eta_G^{R/A}(t) &=[K^{R/A}H_2^{R/A}](t-t';L-Z) =\mathcal G_{\mathrm{global}}^{R/A}(t,\ell_1;t',Z),\\
\delta_G^{R/A}\phi_1(t,X) &=[H_1^{R/A}K^{R/A}H_2^{R/A}](t-t';X,L-Z).
\end{align}$$

The fixed-history cross bracket is zero; the released bracket comes entirely from this induced history. The full time-domain global answer can also be written by images. Define the retarded line kernel

$$\begin{align}
g_m^R(\tau,d)&=\frac12\theta(\tau-|d|) J_0\!\left(m\sqrt{\tau^2-d^2}\right),\\
\mathcal G_{\mathrm{global}}^R(\tau;X,Z) &=\sum_{r\in\mathbb Z}\left[g_m^R(\tau,X-Z+2rL) -g_m^R(\tau,X+Z+2rL)\right].
\end{align}$$

Here the Bessel factor is evaluated only inside its supported cone. The sum is locally finite by causal support, vanishes at both walls by reindexing, and has the required unit source at $X=Z$. The advanced kernel is its time reflection. Away from wavefronts, before either physical-wall reflection can arrive,

$$\begin{align}
|X-Z|<|\tau|&<\min(X+Z,2L-X-Z),\\
\{\phi(t,X),\phi(t',Z)\}_{\mathrm{glue}} &=-\frac12\operatorname{sgn}(\tau) J_0\!\left(m\sqrt{\tau^2-(X-Z)^2}\right) =\{\phi(t,X),\phi(t',Z)\}_{\mathrm{global}}.
\end{align}$$

For a numerical value with no mode truncation, take $m=0$, $\ell_1=\ell_2=1$, $t'=0$, $t=3/4$, $X=3/4$, $Z=5/4$. Then

$$\begin{align}
\eta_G^R(3/4)&=\frac12, & \eta_G^A(3/4)&=0,\\
\{\phi_1(3/4,3/4),\phi_2(0,3/4)\}_{\mathrm{glue}} &=-\frac12, & \{\phi_1(3/4,3/4),\phi_2(0,3/4)\}_{\mathrm{ind}}&=0.
\end{align}$$

Thus both $\delta_G^Rq$ and $X_Gq=\eta_G^A-\eta_G^R$ are nonzero. The value $-1/2$ remains exact for normalized smooth bulk test functions supported in sufficiently small neighborhoods of these two points: the massless kernel is constant on their product of supports.

The diagonal block also changes. In the same massless example, take both points in region 1, with $X=3/4$, $Z=1/2$, and $\tau=1$. The artificial Dirichlet wall at $\ell_1=1$ would already have reflected the signal, whereas neither physical global wall has. Consequently,

$$\begin{align}
E_1(1;3/4,1/2)&=0,\\
E_{11}(1;3/4,1/2)&=-\frac12 =E_{\mathrm{global}}(1;3/4,1/2).
\end{align}$$

The interface correction removes precisely that artificial reflection.

#### A Smooth Observable with an Explicit History Derivative

To test the $qq$ block directly, take

$$\begin{align}
Q_\alpha&=\int_I\alpha(t)q(t)\,\mathrm dt, &Q_\beta&=\int_I\beta(t)q(t)\,\mathrm dt, &\alpha,\beta&\in C_c^\infty(I).
\end{align}$$

For $G=Q_\beta$, $f_1=f_2=0$ and $g=\beta$, so

$$\begin{align}
\eta_{Q_\beta}^{R/A}&=K^{R/A}\beta,\\
\delta_{Q_\beta}^{R/A}\phi_i&=H_i^{R/A}K^{R/A}\beta,\\
\{Q_\alpha,Q_\beta\}_{\mathrm{glue}} &=\int\alpha(t)(K^A-K^R)(t-t')\beta(t')\,\mathrm dt\mathrm dt'\\
&=\int\alpha(t)E_{\mathrm{global}}(t,\ell_1;t',\ell_1)\beta(t')\,\mathrm dt\mathrm dt'.
\end{align}$$

The global comparison is the action perturbation $\int\beta(t)\phi(t,\ell_1)\,\mathrm dt$, whose bulk source is $\beta(t)\delta(X-\ell_1)$. Integrating its field equation across $\ell_1$ gives exactly $\delta\Pi_1+\delta\Pi_2=\beta$. This also checks the interface-source sign independently. Time-smearing makes the causal difference a smooth Hamiltonian solution: its global mode coefficients contain the rapidly decreasing Fourier transform of $\beta$ evaluated at $\omega_n$.

For arbitrary mass, before the first reflected return to the cut,

$$\begin{align}
0<|t-t'|&<2\min(\ell_1,\ell_2),\\
E_{qq}(t,t')&=-\frac12\operatorname{sgn}(t-t')J_0(m|t-t'|).
\end{align}$$

In particular, for $m=0$ choose nonnegative normalized $\alpha,\beta$ such that every point in $\operatorname{supp}\alpha$ is later than every point in $\operatorname{supp}\beta$ and all their time differences are less than $2\min(\ell_1,\ell_2)$. Then the smooth-observable result is exactly

$$\begin{align}
\{Q_\alpha,Q_\beta\}_{\mathrm{glue}}&=-\frac12 =\{Q_\alpha,Q_\beta\}_{\mathrm{global}},\\
\eta_{Q_\beta}^{R}(t)&=\frac12, & \eta_{Q_\beta}^{A}(t)&=0 \qquad(t\in\operatorname{supp}\alpha).
\end{align}$$

For instance, if $\ell_1=\ell_2=1$ and $I$ contains these supports in its interior, normalized bumps supported in $(0,1/8)$ and $(3/4,7/8)$ can be used for $\beta$ and $\alpha$, respectively. No delta-function observable is needed for this test. The fixed-history bracket of these observables is zero.

The mixed block is tested in the same way:

$$\begin{align}
\{F_f,Q_\beta\}_{\mathrm{glue}} &=\sum_i\int f_i(t,y)[H_i^AK^A-H_i^RK^R](t-t';y)\beta(t')
\,\mathrm dt\mathrm dy\mathrm dt'\\
&=\sum_i\int f_i(t,y)E_{\mathrm{global}}(t,X_i(y);t',\ell_1)\beta(t')
\,\mathrm dt\mathrm dy\mathrm dt'.
\end{align}$$

For normalized massless test functions with all bulk points later than, and strictly inside the direct lightcone of, the boundary-source points, and before any reflected arrival, this is again $-1/2$. Hence the comparison covers the bulk, mixed, and history blocks separately.
