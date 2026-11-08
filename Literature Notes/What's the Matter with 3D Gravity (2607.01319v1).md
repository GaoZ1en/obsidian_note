---
paper id: 2607.01319v1
title: "What's the Matter with 3D Gravity?"
authors: [Robert Bourne, Jackson R. Fliss, Bob Knighton]
publication date: 2026-07-01T18:00
abstract: "We revisit the problem of minimally coupling matter to Einstein gravity in three dimensions with negative cosmological constant. By working in the worldline formalism, we construct a classical phase space on an initial time surface $Σ$, which we quantize using geometric quantization. States in the Hilbert space correspond to Virasoro conformal blocks with operators of conformal weight $h<c/24$. As an application of our formalism, we compute the partition function on thermal $\\text{AdS}_3$ through equivariant localization. Our answer reproduces the AdS$_3$ Wilson spool and agrees with the known one-loop result. It further serves as a conjecture for the value of the path integral of gravity minimally coupled to a massive scalar field in thermal $\\text{AdS}_3$ to all orders in $G_N$."
comments: "30 pages + appendices, 8 figures"
pdf: "[[Attachments/Assets/What's the Matter with 3D Gravity (2607.01319v1).pdf]]"
url: https://arxiv.org/abs/2607.01319v1
tags: []
---

Puzzles about pure gravity, in general, can be summarized as
- equivalence between gravity and Chern-Simons formulation
- what are the physical states and blackhole microstates?
- how to sum over topologies? What is a wormhole?
- boundary, subregions and gluing

Maloney&Witten computed the partition function of pure AdS3 gravity by summing the contributions of known smooth classical geometries, including their quantum corrections. The resulting density of states is continuous and can become negative. This paper revisits this by coupling matter to 3D gravity in the worldline formalism (or Wilson spool formalism), quantizing the resulting phase space via geometric quantization, and computing the thermal AdS₃ partition function through equivariant localization.

Consider a massive scalar minimally coupled to gravity, and formally write the Euclidean path integral as

$$\begin{align}
Z_{\mathrm{grav+matter}} & =\int \mathcal{D}g_{\mu \nu}\mathcal{D}\phi \exp\left(-S_{\mathrm{EH}}[g]-\dfrac{1}{2}\int \mathrm{d}^{3}x\sqrt{ g }(g^{\mu \nu}\partial _{\mu}\phi\partial _{\nu}\phi+m^{2}\phi ^{2})\right)
\end{align}$$

the theory is no longer a tqft, since $\displaystyle{\phi}$ has local propagating dofs. We consider the Wilson spool formalism, in which the scalar determinant is represented by a collection of line operators:

$$\begin{align}
Z_{\mathrm{grav+matter}} & =\int \mathcal{D}g_{\mu \nu} \exp\left(-S_{\mathrm{EH}}[g]+\mathbb{W}[g]\right) \\
 & =\braket{ \exp \mathbb{W} } _{\mathrm{grav}}
\end{align}$$

the Wilson spool $\displaystyle{\mathbb{W}}$ consists of line operators wrapping nontrivial cycles of the background topology with arbitrary winding numbers. The Wilson spool reproduces the scalar 1-loop partition function on smooth cusp-free hyperbolic backgrounds at tree-level in $\displaystyle{G}$, but the equivalence between the Einstein-scalar theory and the Wilson spool formalism remains to be established.

Take the Chern-Simons formulation of 3d gravity. The dynamical dofs are the dreibein $\displaystyle{e^{a}}$ and the spin connection $\displaystyle{\omega ^{ab}}$. And they can be combined into two $\displaystyle{\mathrm{PSL}(2,\mathbb{R})}$ gauge fields

$$\begin{align}
A^{a}_{L} & =\dfrac{1}{2}\varepsilon ^{a}_{~bc}\omega ^{bc}+\dfrac{1}{\ell}e^{a}, & A^{a}_{R} & =\dfrac{1}{2}\varepsilon ^{a}_{~bc}\omega ^{bc}-\dfrac{1}{\ell}e^{a}
\end{align}$$

with $\displaystyle{\Lambda=-\dfrac{1}{\ell ^{2}}}$. The action then takes the form

$$\begin{align}
S_{\mathrm{CS}}[A_{L},A_{R}] & =\dfrac{k}{4\pi}\int \mathrm{Tr}\left( A_{L}\wedge \mathrm{d}A_{L}+\dfrac{2}{3}A_{L}\wedge A_{L}\wedge A_{L} \right) \\
 & -\dfrac{k}{4\pi}\int \mathrm{Tr}\left( A_{R}\wedge \mathrm{d}A_{R}+\dfrac{2}{3}A_{R}\wedge A_{R}\wedge A_{R} \right)
\end{align}$$

and the level $\displaystyle{k=\dfrac{\ell}{16 G}}$ is related to the Brown-Henneaux central charge $\displaystyle{c=24k}$. We fix an initial time surface $\displaystyle{\Sigma}$. The phase space of Chern-Simons theory with gauge group $\displaystyle{G}$, after gauge fixing, is given by the moduli space $\displaystyle{\mathcal{M}_{G}}$ of flat $\displaystyle{G}$-bundle on $\displaystyle{\Sigma}$. For gravity, the phase space $\displaystyle{\mathcal{M}_{\mathrm{grav}}}$ is the product of two copies of the Teichmüller space $\displaystyle{\mathcal{T}_{\Sigma}}$, which is the distinguished connected component of the moduli space $\displaystyle{\mathcal{M}_{\mathrm{PSL}(2,\mathbb{R})}}$.

$$\begin{align}
\mathcal{M}_{\mathrm{grav}} & \simeq \mathcal{T}_{\Sigma}\times \mathcal{\bar{T}}_{\Sigma}
\end{align}$$

the symplectic form is given by

$$\begin{align}
\omega & =\dfrac{k}{4\pi} \omega _{\mathrm{WP}}-\dfrac{k}{4\pi} \bar{\omega}_{\mathrm{WP}}
\end{align}$$

where $\displaystyle{\omega _{\mathrm{WP}}}$ (resp. $\displaystyle{\bar{\omega}_{\mathrm{WP}}}$) is the Weil-Petersson symplectic form on $\displaystyle{\mathcal{T}_{\Sigma}}$ (resp. $\displaystyle{\mathcal{\bar{T}}_{\Sigma}}$)

$$\begin{align}
\omega _{\mathrm{WP}} & =-\dfrac{1}{2}\int _{\Sigma}\mathrm{Tr}\left( \delta A\wedge \delta A \right)
\end{align}$$

we quantize the Teichmüller space using its Kähler structure. We introduce a line bundle $\displaystyle{\mathcal{L}}$ over $\displaystyle{\mathcal{T}_{\Sigma}}$ whose first Chern class is in the same cohomology class as the symplectic form

$$\begin{align}
c_{1}(\mathcal{L})=\dfrac{1}{4\pi}[\omega _{\mathrm{WP}}]
\end{align}$$

the Hilbert space $\displaystyle{\mathcal{H}}$ on $\displaystyle{\Sigma}$ is then identified with the space $\displaystyle{H^{0}(\mathcal{T}_{\Sigma},\mathcal{L}^{k})}$ of holomorphic sections of $\displaystyle{\mathcal{L}^{k}}$ over $\displaystyle{\mathcal{T}_{\Sigma}}$. These holomorphic sections can be interpreted as left-moving conformal blocks of 2d cfts, details are not expanded here for now. The inner product on $\displaystyle{\mathcal{H}}$ can be constructed from the WP form.

---

A characteristic class associates a cohomology class on the base manifold to a vector bundle or principal bundle.

For a complex vector bundle $\displaystyle{E\to M}$ with a connection $\displaystyle{\nabla}$ and curvature $\displaystyle{F_{\nabla}}$, the Chern-Weil construction represents its Chern classes in de Rham cohomology by the closed forms appearing in

$$\begin{align}
c(E,\nabla) & =\det\left( 1+\dfrac{i}{2\pi}F_{\nabla} \right) \\
 & =1+c_{1}(E,\nabla)+c_{2}(E,\nabla)
\end{align}$$

although these differential forms depend on the connection, their cohomology classes do not. In particular, for a complex line bundle $\displaystyle{\mathcal{L}}$,

$$\begin{align}
c_{1}(\mathcal{L})_{\mathbb{R}} & =\left[ \dfrac{i}{2\pi}F_{\nabla} \right]
\end{align}$$

the integral class $\displaystyle{c_{1}(\mathcal{L})}$ belons to $\displaystyle{H^{2}(M,\mathbb{Z})}$.

For the line bundle used in geometric quantization, the connection is chosen so that its curvature is proportional to the symplectic form. In this way, the symplectic form determines the real first Chern class of the prequantum line bundle.

One should gauge away the "large diffeomorphisms", or elements of mapping class group $\displaystyle{\mathrm{Map}(\Sigma)}$. If we equip $\displaystyle{\Sigma}$ with a metric $\displaystyle{h}$, an element of $\displaystyle{\mathrm{Map}(\Sigma)}$ acts on $\displaystyle{h}$ in a way that cannot be compensated by a Weyl transformation. The "true" gravitational phase space is

$$\begin{align}
(\mathcal{T}_{\Sigma}\times \bar{\mathcal{T}_{\Sigma}})/\mathrm{Map}(\Sigma)
\end{align}$$

where $\displaystyle{\mathrm{Map}(\Sigma)}$ acts diagonally on the two copies of Teichmüller space.

---

For example, the Euclidean BTZ blackhole is topologically a solid torus with a torus boundary. The Euclidean time circle is contractible in the bulk, shrinking to a point at the horizon, while the angular circle is non-contractible. The mapping class group of the boundary torus is $\displaystyle{\mathrm{SL}(2,\mathbb{Z})}$. Its S transformation exchanges the two cycles and therefore cannot extend to a diffeomorphism of the same solid torus filling. See Maloney-Witten for more details.

---

Rewrite the scalar path integral in terms of path integral over worldlines of point particle

$$\begin{align}
\int \mathcal{D}\phi  e^{-S[g,\phi]} & =\exp\left(\int \mathcal{D}xe^{-S_{\mathrm{worldline}}[g,x]}\right) \\
S_{\mathrm{worldline}}[g,x] & =\dfrac{\mu}{\ell}\int \mathrm{d}\tau
\end{align}$$

here $\displaystyle{\mu}$ is the worldline coupling, related to the scalar mass $\displaystyle{m}$. The eom is

$$\begin{align}
R+\dfrac{6}{\ell ^{2}} & =\dfrac{16\pi G\mu}{\ell} \int _{\gamma}\mathrm{d}\tau \delta ^{(3)}(x(\tau)-x)
\end{align}$$

the solutions to this equation are locally-AdS3 manifolds with curvature singularities localized along the particle worldlines. Define the defect angle

$$\begin{align}
\theta & =\dfrac{8\pi G\mu}{\ell}, & \alpha & =1-\dfrac{\theta}{2\pi}
\end{align}$$

consider the static axisymmetric solution with a conical defect, for which the metric can be written as

$$\begin{align}
\mathrm{d}s^{2} & =-(\alpha ^{2}+r^{2})\mathrm{d}t^{2}+\dfrac{\mathrm{d}r^{2}}{\alpha ^{2}+r^{2}}+r^{2}\mathrm{d}\varphi ^{2}, & \varphi \sim \varphi+2\pi
\end{align}$$

the ADM mass is given by

$$\begin{align}
M_{\mathrm{ADM}} & =-\dfrac{\alpha ^{2}}{8G}
\end{align}$$

the conformal weights $\displaystyle{h}$ and $\displaystyle{\bar{h}}$ satisfy

$$\begin{align}
M_{\mathrm{ADM}}\ell & =h+\bar{h}-\dfrac{c}{12} \\
J & =h-\bar{h}
\end{align}$$

where $\displaystyle{c=\dfrac{3\ell}{2G}}$. For spinless particles $\displaystyle{J=0}$, hence

$$\begin{align}
h=\bar{h} & =\dfrac{\ell(1-\alpha ^{2})}{16G}= \dfrac{\mu}{2}-\dfrac{G\mu ^{2}}{\ell}
\end{align}$$

when including point particles, the gravitational phase space is then

$$\begin{align}
\mathcal{M}_{\mathrm{grav},n} & =(\mathcal{T}_{\Sigma,n,\theta}\times \mathcal{\bar{T}}_{\Sigma,n,\theta})/\mathrm{Map}(\Sigma,n)
\end{align}$$

the space $\displaystyle{\mathcal{T}_{\Sigma,n,\theta}}$ is the Teichmüller space of cone surfaces, i.e., the space of hyperbolic metrices with $\displaystyle{n}$ cone singularities with defect angle $\displaystyle{\theta}$ which arise as classical solutions of the Einstein equations with $n$ particle sources restricted to $\displaystyle{\Sigma}$ up to small diffeomorphisms

$$\begin{align}
\mathcal{T}_{\Sigma,n,\theta} & =\left\{g_{ij},x_{1},\dots,x_{n}|R^{(2)}_{g}(X)=-2-2\theta \sum ^{n}_{i=1} \delta ^{(2)}(x-x_{i})\right\}/\mathrm{Diff}_{0}(\Sigma,n)
\end{align}$$

and the mapping class group is the space of large diffeomorphisms

$$\begin{align}
\mathrm{Map}(\Sigma,n) & =\mathrm{Diff}(\Sigma,n)/\mathrm{Diff}_{0}(\Sigma,n)
\end{align}$$

we introduce the "pure" mapping class group $\displaystyle{\mathrm{PMap}(\Sigma,n)}$, which do not permute the line defects. We have the following exact sequence

$$\begin{align}
1\to \mathrm{PMap}(\Sigma,n)\to \mathrm{Map}(\Sigma,n)\to S_{n}\to 1
\end{align}$$

at fixed particle number $\displaystyle{\mathcal{M}_{\mathrm{grav},n}}$ is Kähler with symplectic form

$$\begin{align}
\omega & =\dfrac{k}{4\pi}\omega _{\mathrm{WP},n,\theta}-\dfrac{k}{4\pi} \bar{\omega}_{\mathrm{WP},n,\theta}
\end{align}$$

where the WP form $\displaystyle{\omega _{\mathrm{WP},n,\theta}}$ on $\displaystyle{\mathcal{T}_{\Sigma,n,\theta}}$ is given by (and is not derived from CPS)

$$\begin{align}
\omega _{\mathrm{WP},n,\theta} & =4\pi\left( \kappa _{1}-\sum ^{n}_{i=1}\alpha _{\theta}^{2}\psi _{i} \right)
\end{align}$$

to treat the coincident limit, we need to do compactification...

![[Attachments/截屏2026-11-04 22.44.16.png]]

The quantization procedure is quite similar as the pure gravity case. First introduce a pre-quantum line bundle $\displaystyle{\mathcal{L}}$ over the Teichmüller space $\displaystyle{\mathcal{T}_{\Sigma,n,\theta}}$, and then construct the quantum Hilbert space as $\displaystyle{H^{0}(\mathcal{T}_{\Sigma,n,\theta},\mathcal{L}^{k})}$, the space of holomorphic sections of $\mathcal{L}^{k}$ over $\mathcal{T}_{\Sigma,n,\theta}$, the inner product can be given by the symplectic form $\omega_{\mathrm{WP},n,\theta}$.

The total Hilbert space is then

$$\begin{align}
\mathcal{H} & =\bigotimes^{\infty}_{n=0}\mathcal{H}_{\mathrm{grav},n} \\
\mathcal{H}_{\mathrm{grav},n} & =H^{0}(\mathcal{T}_{\Sigma,n,\theta},\mathcal{L}^{k})\times H^{0}(\mathcal{\bar{T}}_{\Sigma,n,\theta},\mathcal{\bar{L}}^{k})/\mathrm{Map}(\Sigma,n)
\end{align}$$

we will then evaluate the partition functions. For compact $\displaystyle{\Sigma}$, the Hamiltonian vanishes as a constraint and we have

$$\begin{align}
Z_{\mathrm{grav+matter}}[\Sigma \times S^{1}] & =\mathrm{dim}\mathcal{H}_{\mathrm{grav+matter}}[\Sigma]
\end{align}$$

when $\displaystyle{\Sigma}$ has an asymptotic boundary, since the Hilbert space dimension is infinite, the partition function diverges. We will modify the computation by associating a $\displaystyle{\mathbb{C}^{*}}$ action which rotates and dilates the boundary circle and is genereted by a boundary Hamiltonian/angular momentum operator.

$$\begin{align}
Z(\tau _{i},\bar{\tau}_{i}) & =\mathrm{Tr}\left(\prod _{i}q_{i}^{L_{0}^{(i)}}\bar{q}_{i}^{\bar{L}_{0}^{(i)}}|\mathcal{H}_{\mathrm{grav+matter}}\right) \\
q_{i} & =e^{2\pi i\tau _{i}},\quad \bar{q}_{i}=e^{-2\pi i\bar{\tau}_{i}}
\end{align}$$

we specialize to the case of a single asymptotic boundary. The partition function admits the following decomposition

$$\begin{align}
Z(\tau,\bar{\tau}) & =\sum ^{\infty}_{n=0} \dfrac{1}{|\mathrm{Map}(\Sigma,n)|}\sum _{g\in \mathrm{Map}(\Sigma,n)}\left|\mathrm{Tr}(gq^{L_{0}}|H^{0}(\mathcal{T}_{\mathrm{\Sigma,n,\theta}},\mathcal{L}^{k}))\right|^{2}
\end{align}$$

to compute the trace, we introduce the equivariant Euler characteristic

$$\begin{align}
\chi(gq^{L_{0}},\mathcal{L}^{k}) & =\sum ^{\infty}_{i=0}(-1)^{i}\mathrm{Tr}(gq^{L_{0}}|H^{i}(\mathcal{T}_{\Sigma,n,\theta},\mathcal{L}^{k}))
\end{align}$$

this quantity can be computed using an equivariant index theorem. We then invoke the Kodaira vanishing theorem to argue that, for sufficiently large $\displaystyle{k}$, the higher cohomology groups $\displaystyle{H^{i}(\mathcal{T}_{\Sigma,n,\theta},\mathcal{L}^{k}),i> 0}$ vanish. The Euler characteristic then reduces to the desired trace on $\displaystyle{H^{0}(\mathcal{T}_{\Sigma,n,\theta},\mathcal{L}^{k})}$. (The applicability of the vanishing and index theorems to the noncompact phase space and its compactification requires further examination)

Now we consider the partition function on thermal AdS3 coupled to a scalar field. In this case, the initial time surface $\displaystyle{\Sigma}$ is the hyperbolic disk $\displaystyle{\mathbb{D}}$. The mapping class group of the disk with $\displaystyle{n}$ marked points is the braid group $\displaystyle{B_{n}}$, which describes the possible exchanges of $\displaystyle{n}$ points. A braid determines a permutation of the endpoints, giving a surjective homomorphism $\displaystyle{B_{n}\to S_{n}}$; the kernel is the pure braid group $\displaystyle{P_{n}}$: each strand returns to its original position.

We assume that the pure braids act trivially on the Hilbert space, and the projection onto braid-invariant states reduces to an average over $\displaystyle{S_{n}}$. Therefore the partition function reduces to

$$\begin{align}
Z(\tau,\bar{\tau}) & =\sum ^{\infty}_{n=0} \dfrac{1}{n!} \sum _{\rho \in S_{n}}\left|\mathrm{Tr}(\rho q^{L_{0}}|H^{0}(\mathcal{T}_{\mathbb{D},n,\theta},\mathcal{L}^{k}))\right|^{2}
\end{align}$$

the trace will be computed by index theorem. In this case, let $\displaystyle{\star \in \mathcal{T}_{\mathbb{D},n,\theta}}$ be the unique (uniqueness can be proved) fixed point (which is, all the defects coincide at the origin and boundary graviton modes are constant) under the action of $\displaystyle{\rho q^{L_{0}}}$, let $\displaystyle{\mathcal{L}_{\star}^{k}}$ be the fibre of $\displaystyle{\mathcal{L}^{k}}$ over the fixed point, and let $\displaystyle{T_{\star}\mathcal{T}_{\mathbb{D},n,\theta}}$ be the tangent space to the fixed point. Then the equivariant Euler characteristics is given by

$$\begin{align}
\chi(\rho q^{L_{0}},\mathcal{L}^{k}) & =\dfrac{\mathrm{Tr}(\rho q^{L_{0}}|\mathcal{L}^{k}_{\star})}{\det(1-\rho q^{L_{0}}|T_{\star}\mathcal{T}_{\mathbb{D},n,\theta})}
\end{align}$$

we assume $\displaystyle{n\theta<2\pi}$ and restrict the sum to $\displaystyle{0\leqslant n\leqslant \left\lfloor  \dfrac{\ell}{4G\mu} \right\rfloor}$ (values of $\displaystyle{n\geqslant \dfrac{2\pi}{\theta}}$ contribute non-perturbatively in $\displaystyle{G}$, and hence omitted from the perturbative sum). At the fixed point, the fibre $\displaystyle{\mathcal{L}_{\star}^{k}}$ is invariant under permutations and transforms under boundary rotations, therefore

$$\begin{align}
\mathrm{Tr}(\rho q^{L_{0}}|\mathcal{L}_{\star}^{k}) & =q^{h(n)}q^{-c/24} \\
h(n) & =\dfrac{n\mu}{2}-\dfrac{Gn^{2}\mu ^{2}}{\ell}
\end{align}$$

where $\displaystyle{q^{h(n)}}$ is the contribution from the boundary rotation of the defect configuration, and the $q^{-c/24}$ factor is the usual global conformal anomaly. As for the denominator, we first consider the structure of the tangent space $\displaystyle{T_{\star}\mathcal{T}_{\mathbb{D},n,\theta}}$, which is spanned by infinitesimal boundary modes and infinitesimal separations of the locations of the point particles. The first part contribute the factor

$$\begin{align}
\prod ^{\infty}_{m=2} \dfrac{1}{1-q^{m}}
\end{align}$$

and the second part contribute the factor

$$\begin{align}
\prod ^{n}_{r=1} \prod ^{r-1}_{s=0} \dfrac{1}{(1-qe^{2\pi is/r})^{\ell _{r}}} & =\prod ^{n}_{r=1} \dfrac{1}{(1-q^{r})^{\ell _{r}}}
\end{align}$$

here we decompose the permutation $\displaystyle{\rho}$ into cycles with cycle lengths $r$ and multiplicities $\ell_r$, the eigenvalues of $\displaystyle{\rho}$ on the separation modes are the roots of unity $\displaystyle{e^{2\pi is/r}}$. Put these facts together and summing over $n$ and $\rho$, the (perturbative) partition function becomes

$$\begin{align}
Z_{\mathrm{pert}}(\tau,\bar{\tau}) & =|q|^{-c/12} \prod ^{\infty}_{m=2} \dfrac{1}{|1-q^{m}|^{2}} \sum ^{\lfloor \ell/4G\mu \rfloor }_{n=0} |q|^{2h(n)}\prod ^{n}_{r=1} \sum _{\left\{\ell_{1},\dots ,\ell _{n}\right\}} \dfrac{1}{\ell _{r}!r^{\ell _{r}}} \dfrac{1}{|1-q^{r}|^{2\ell _{r}}} \\
 & =Z_{\text{grav,1-loop}}\times Z_{\text{scalar,1-loop}}\times\left(1+\mathcal{O}\left( \dfrac{G\mu ^{2}}{\ell ^{2}} \right)\right) \\
Z_{\text{grav,1-loop}} & = |q|^{-c/12}\prod ^{\infty}_{m=2} \dfrac{1}{|1-q^{m}|^{2}} \\
Z_{\text{scalar,1-loop}} & =\prod ^{\infty}_{n,\bar{n}=0} \dfrac{1}{(1-q^{\mu/2+n}\bar{q}^{\mu/2+\bar{n}})}
\end{align}$$

and we can identify $\displaystyle{\mu}$ as the conformal dimension $\displaystyle{\Delta=1+\sqrt{ 1+m^{2}\ell ^{2} }}$ at 1-loop level by comparing this expression with the results of GMY's heat kernel or our canonical quantization.

---

For a finite-dimensional operator $\displaystyle{A}$ with eigenvalues $\displaystyle{\lambda _{i}}$, we have

$$\begin{align}
\det(1-A) & =\prod _{i}(1-\lambda _{i})
\end{align}$$

---

To extract the higher order corrections, for simplicity, we take $\displaystyle{q=\bar{q}=e^{-\beta/\ell}}$ and noting

$$\begin{align}
|q|^{2h(n)} & =\exp\left(-\dfrac{\beta}{\ell}\left( n\mu-n^{2}\mu ^{2} \left( \dfrac{2G}{\ell} \right) \right)\right) \\
 & =e^{-n\beta \mu/\ell}\sum ^{\infty}_{s=0} \dfrac{1}{s!} \left(\dfrac{2n^{2}G\beta \mu ^{2}}{\ell ^{2}}\right)^{s}
\end{align}$$

then

$$\begin{align}
\dfrac{Z_{\mathrm{pert}}(\beta)}{Z_{\text{grav,1-loop}}(\beta)} & =Z_{\text{scalar,1-loop}}+\sum ^{\infty}_{s=1}\dfrac{(2G\beta \mu ^{2})^{s}}{\ell ^{2s}s!}\sum ^{\infty}_{n=0}\sum _{\left\{\ell_{1},\dots,\ell _{n}\right\}} \prod ^{n}_{r=1} \dfrac{1}{\ell _{r}!r^{\ell _{r}}} \dfrac{n^{2s} e^{-n\beta \mu}}{(1-e^{-r\beta/\ell})^{2\ell _{r}}} \\
 & =\sum ^{\infty}_{s=0} \dfrac{1}{s!} \left( \dfrac{2G \mu ^{2}}{\beta} \right)^{s} \dfrac{\partial ^{2s}}{\partial \mu ^{2s}}Z_{\text{scalar-1-loop}}(\mu)
\end{align}$$

to compare with the ofpt spectrum, set $\displaystyle{\ell=1}$. The one-particle gap predicted by the fused-defect weight is

$$\begin{align}
\Delta & =\mu-2g\mu ^{2}
\end{align}$$

expressed in terms of this gap, the two-particle ground-state binding energy predicted by the defect formula is

$$\begin{align}
E_{2}-2\Delta & =-4G\Delta ^{2}+\mathcal{O}(G^{2})
\end{align}$$

the direct ofpt calculation instead gives

$$\begin{align}
E_{2}-2\Delta & =-2G\Delta ^{2}\dfrac{8\Delta ^{2}-2\Delta-7}{4\Delta ^{2}-1}+\mathcal{O}(G^{2})
\end{align}$$
