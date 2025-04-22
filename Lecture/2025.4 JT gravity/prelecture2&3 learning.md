lecture 2&3: discretized, lattice, approach (formulation, matrix model description, physical discussion)

```bibtex
@misc{ferrariJackiwTeitelboimGravityRandom2025,
  title = {Jackiw-{{Teitelboim Gravity}}, {{Random Disks}} of {{Constant Curvature}}, {{Self-Overlapping Curves}} and {{Liouville}} \${\textbackslash}text\{\vphantom\}{{CFT}}\vphantom\{\}\_\{1\}\$},
  author = {Ferrari, Frank},
  year = {2025},
  month = feb,
  number = {arXiv:2402.08052},
  eprint = {2402.08052},
  primaryclass = {hep-th},
  publisher = {arXiv},
  doi = {10.48550/arXiv.2402.08052},
  urldate = {2025-04-14},
  abstract = {We propose a microscopic definition of finite cut-off JT quantum gravity on the disk, both in the discretized and in the continuum points of view. The discretized formulation involves a new model of so-called self-overlapping random polygons. The measure is not uniform, implying that the degrees of freedom are not in one-to-one correspondence with the shape of the boundary. The continuum formulation is based on a boundary \${\textbackslash}text\{CFT\}\_\{1\}\$ from which we predict some critical exponents of the self-overlapping polygon model. The coupling to an arbitrary bulk matter CFT is also discussed.},
  archiveprefix = {arXiv},
}

@misc{ferrariRandomDisksConstant2024,
  title = {Random {{Disks}} of {{Constant Curvature}}: The {{Lattice Story}}},
  shorttitle = {Random {{Disks}} of {{Constant Curvature}}},
  author = {Ferrari, Frank},
  year = {2024},
  month = jun,
  number = {arXiv:2406.06875},
  eprint = {2406.06875},
  primaryclass = {hep-th},
  publisher = {arXiv},
  doi = {10.48550/arXiv.2406.06875},
  urldate = {2025-04-14},
  abstract = {We lay the groundwork for a UV-complete formulation of the Euclidean Jackiw-Teitelboim two-dimensional models of quantum gravity when the boundary lengths are finite, emphasizing the discretized approach. The picture that emerges is qualitatively new. For the disk topology, the problem reduces to counting so-called self-overlapping curves, that are closed loops that bound a distorted disk, with an appropriate multiplicity. We build a matrix model that does the correct counting. The theories in negative, zero and positive curvatures have the same UV description but drastically different macroscopic properties. The Schwarzian theory emerges in the limit of very large and negative cosmological constant in the negative curvature model, as an effective theory valid on distance scales much larger than the curvature length scale. In positive curvature, we argue that large geometries are ubiquitous and that the theory exists only for positive cosmological constant. Our discussion is pedagogical and includes a review of several relevant topics.},
  archiveprefix = {arXiv},
}
```

JT gravity is a two-dimensional quantum gravitational theory in which the bulk curvature is fixed, but the extrinsic curvature of the boundary is allowed to fluctuate. in the case of disk topology, the partition function can be formally written as a path integral

$$\tag{1.1}
\begin{align}
\mathscr{Z}^{(\eta)}(\ell,\Lambda) & =\int _{\mathrm{Met}^{(\eta)}_{\ell}(\mathcal{D})}\exp\left(-\frac{\Lambda}{16\pi}A[g]\right)\mathrm{d}\mu[g]
\end{align}
$$

over $\displaystyle{\mathrm{Met}^{(\eta)}_{\ell}(\mathcal{D})}$, the space of constant curvature $\displaystyle{R=2\eta}$ metrics $\displaystyle{g}$ of fixed boundary length $\displaystyle{\ell}$ on the disk $\displaystyle{\mathcal{D}}$, with $\displaystyle{\eta=-1,0,+1}$. $\displaystyle{A[g]}$ is the area functional, $\displaystyle{\Lambda}$ is the cosmological constant and $\displaystyle{\mathrm{d}\mu[g]}$ is the appropriate diffeomorphism-invariant integration measure. 

the motivation is that the theoretical foundation of JT quantum gravity is poorly understood compared to the Liouville quantum gravity. the UV definition of the models has not been proposed so far and the meaning of (1.1) remains elusive.

we propose two approaches, which are conjectured to be equivalent... one approach is discrete, random polygon model and something else. another approach is based on techniques in the Liouvile theory.

## random self-overlapping polygons

constant curvature metrics on the disk can be described by immersions $\displaystyle{F:\mathcal{D}\to \mathbb{T}_{\eta}}$ from $\displaystyle{\mathcal{D}}$ into a canonical target space, which is the Euclidean plane, the hyperbolic space or the round two-sphere for $\displaystyle{\eta=0, -1,+1}$, respectively.

$\displaystyle{\mathcal{D}=\left\{z\in Z||z|<1\right\}}$

write the $\displaystyle{\mathbb{E}^{2}, S^{2}, \mathrm{H}^{2}}$ canonical metric and their isomorphism group. 

the metric is obtained by pullbacks, $\displaystyle{g=F^{*}\delta}$, where $\displaystyle{\delta}$ is the canonical metric on $\displaystyle{\mathbb{T}_{\eta}}$. 

and the metric space is

$$
\begin{align}
\mathrm{Met}^{\eta}(\mathcal{D}) & =\frac{\mathrm{Imm}(\mathcal{D},\mathbb{T}_{\eta})}{\mathrm{Iso}(\mathbf{T}_{\eta})\otimes\mathrm{Diff}_{+}(\bar{\mathcal{D}})}
\end{align}
$$
$\displaystyle{\mathrm{Diff}_{+}(\bar{\mathcal{D}})}$ contains large diffeomorphisms.

the image of the source disk $\displaystyle{\mathcal{D}}$ is called a distorted disk. for a typical configuration, the boundary curve of a distorted disk has self-intersections, the immersion $\displaystyle{F}$ is not an embedding and the distorted disk could have self-overlaps.

* see Maldacena-Stanford-Yang 2016, Stanford-Yang 2020
* the question is
	* what does the most general distorted disk looks like?
	* is it characterized by its boundary?

winding number, Whitney index

$$
\begin{align}
W(\gamma)= \frac{1}{2\pi i}\int ^{2\pi}_{0} \frac{\gamma''}{\gamma'}\mathrm{d}\theta
\end{align}
$$

allowed closed curves must

characterizing the set of allowed closed curves has been studied extensively in the mathematical literature (thanks to studies about Liouville theory.) the allowed curves are called self-overlapping, and must satisfy a set of non-trivial, non-local constraints. 

the most surprising feature revealed by the mathematical analysis is that a given self-overlapping curve may bound several distinct distorted disks, the number of which we call the multiplicity of the curve. one can show that all these disks must have the same area, yet the associated metrics are diffeomorphism-inequivalent and thus physical distinct. this phenomenon shows that the degrees of freedom of JT gravity are not in one-to-one correspondence with the shape of the boundary. however, it is possible to find a boundary description that takes into account the multiplicity.

put these together yields a proposal for a microscopic definition of the JT gravity. we first consider the $\displaystyle{\eta=0}$ case. we discretize the closed loops by considering clozed polygons on the flat square lattice. Working at fixed boundary length for convenience, the generating function is

$$\tag{1.2}
\begin{align}
W_{2n}(t) & =\sum _{\alpha \in \mathrm{SOP}_{2n}}\mu _{\alpha}t^{p_{\alpha}}=\sum _{p \in \mathbb{N}}W_{2n,p}t^{p}
\end{align}
$$

where $\displaystyle{\mathrm{SOP}_{2n}}$ is the set of self-overlapping polygons of boundary length $\displaystyle{2n}$, $\displaystyle{p_{\alpha}}$ the areea of the distorted disk and $\displaystyle{\mu _{\alpha}}$ the multiplicity. here $\displaystyle{t=1}$ is the critical point. when $\displaystyle{t<1}$, the model is in a deflated, branched-polymer-like phase, with $\displaystyle{\ln W_{2n}(t)\propto n}$, and when $\displaystyle{t>1}$, the model is in an inflated phase with $\displaystyle{\ln W_{2n}(T)\propto n^{2}\ln t}$. we conjecture that $\displaystyle{t=1}$ can be used to define a continuum limit. introducing a cut-off $\displaystyle{\ell _{0}}$, with lattice squares area $\displaystyle{\ell _{0}^{2}}$, the continuum limit is $\displaystyle{n\to \infty, \ell _{0}\to_{0}, 2n\ell _{0}^{1/\nu}=\beta}$ fixed, for a critical exponent $\displaystyle{\nu}$ that must be such that $\displaystyle{\frac{1}{2}\leqslant\nu\leqslant 1}$, which is defined as the inverse of Hausdorff fractal dimension of the boundary curves $\displaystyle{\frac{1}{\nu}}$. the numbers $\displaystyle{w_{2n;r}=\sum _{p}p^{r}W_{2n,p}}$ are conjectured to scale as $\displaystyle{g_{*}^{-2n}(2n)^{2\nu(r-\vartheta)=1}}$, for non-universal "connective constant" $\displaystyle{\frac{1}{g_{*}}\geqslant1}$ and another universal exponent $\displaystyle{\vartheta}$. we predict in the next section that $\displaystyle{\nu=\frac{1}{2},\vartheta=2}$ to be compared to the random walk values $\displaystyle{\nu=\frac{1}{2},\vartheta=1}$ or self-avoiding polygon values $\displaystyle{\nu=\frac{3}{4},\vartheta=1}$. moreover, in the limit $\displaystyle{t\to1^{-},\ell _{0}\to 0,\frac{(1-t)}{\ell _{0}^{2}}=\frac{\Lambda}{16\pi}}$ fixed, we conjecture that the generating function scales as

$$\tag{1.3}
\begin{align}
W_{2n}(t)\sim e^{-\beta \lambda}\beta ^{-1-2\nu \vartheta}f(\Lambda \beta ^{2\nu})=\mathscr{Z}
\end{align}
$$

and matches with the JT partition function. 

the construction can be generalized to the cases of negative or positive curvatures, in the same way as one  can define random walks in hyperbolic space or on the sphere. the fact that the boundary curves are fractal, of dimension $\displaystyle{\frac{1}{\nu}>1}$, is a short-distance effect and will thus be equally valid for zero, negative or positive curvature. this implies that the naive boundary length $\displaystyle{\ell}$ is replaced in all the models by a renormalized parameter $\displaystyle{\beta}$, with $\displaystyle{\beta ^{\nu}}$ having the dimension of length.  


## continuum approach and CFT1

the continuum approach is based on the following observations. acting with diffeomorphisms, we can put any metric on $\displaystyle{\mathcal{D}}$ in the conformal gauge $\displaystyle{g=e^{2\Sigma}\delta _{0}}$, where $\displaystyle{\delta _{0}=\mathrm{d}\rho^{2}+\rho ^{2}\mathrm{d}\theta ^{2}}$. we call $\displaystyle{\Sigma}$ the Liouville field. the constraint of constant curvature $\displaystyle{R=2\eta}$ is equivalent to $\displaystyle{\Delta \Sigma=\eta e^{2\Sigma}}$, where $\displaystyle{\Delta _{0}}$ is the positive Laplacian for the metric $\displaystyle{\delta _{0}}$.

>[!Theorem ]
> let $\displaystyle{\sigma:S^{1}\to \mathbb{R}}$ be a continuous fucntion defined on the boundary of the disk. then when $\displaystyle{\eta=0}$ or $\displaystyle{\eta=-1}$, there exists a unique solution $\displaystyle{\Sigma _{\sigma}\in C^{\infty}(\mathcal{D})}$ of $\displaystyle{\Delta _{0}\Sigma=\eta e^{2\Sigma}}$ such that $\displaystyle{\Sigma _{\sigma}|_{\partial \mathcal{D}}=\sigma}$.

in these cases, the degrees of freedom of JT gravity are thus encoded in the boundary Liouville field $\displaystyle{\sigma}$, modulo the action of the group $\displaystyle{\mathrm{PSL}(2,\mathbb{R})}$ of disk automorphisms. when $\displaystyle{\eta=+1}$, the situation is more subtle and will be discussed elsewhere. 

one can reconstruct the distorted disk from $\displaystyle{\sigma}$. in the flat case, the immersion $\displaystyle{F_{\sigma}}$ associated with $\displaystyle{\sigma}$ is such that $\displaystyle{F'_{\sigma}=e^{H_{\sigma}}}$, where $\displaystyle{H_{\sigma}}$ is a holomorphic function whose real part is $\displaystyle{\Sigma _{\sigma}}$. the associated self-overlapping boundary is $\displaystyle{\alpha _{\sigma}:\theta\to F_{\sigma}(e^{i\theta})}$ the description in terms of $\displaystyle{\sigma}$ automatically takes into account the multiplicity. if a given self-overlapping boundary has multiplicity $\displaystyle{p}$, then there will be $\displaystyle{p}$ $\displaystyle{\mathrm{PSL}(2,\mathbb{R})}$-inequivalent boundary fields $\displaystyle{\sigma _{k}}$ that all yeild the same immersed boundary, $\displaystyle{\mathrm{\mathrm{Im}}\alpha _{\sigma _{1}}=\dots=\mathrm{\mathrm{Im}}\alpha _{\sigma _{k}}}$, but have different interiors.

The construction of quantum JT gravity thus boils down to the construction of $\displaystyle{\mathrm{PSL}(2,\mathbb{R})}$-invariant probability measures on the space of boundary Liouville fields. note that neither this space nor the action of $\displaystyle{\mathrm{PSL}(2,\mathbb{R})}$ depend on $\displaystyle{\eta}$ and thus, the construction of the models does not depend on $\displaystyle{\eta}$... coincides with the above discussion... 

### boundary $\displaystyle{\mathrm{CFT}_{1}}$

$\displaystyle{\mathrm{PSL}(2,\mathbb{R})}$-invariant measures on the space of boundary Liouville fields are far from being unique. the physically relevant measure is the continuum limit of the SOP model introduced before, or the measure relevant for a quantum description (we conjecture that these two criteria are actually equivalent). our goal is now to construct this measure, starting from the usual path integral with the formal UV measure, adapting to the case of JT the arguments used sucessfully in the past for Liouville. we actuallt consider a generalization of pure JT, couping an arbitrary bulk matter CFT of central charge $\displaystyle{c}$ to gravity...

an essential point to understand for correct path integral treatment is that the Liouville field $\displaystyle{\Sigma}$ has free boundary conditions. imposing any kind of boundary constraint on $\displaystyle{\Sigma}$ would incorrectly restrict the space of metrics over which we want to integrate. we separate the bulk and the boundary degrees of freedom by writing $\displaystyle{\Sigma=\Sigma _{\mathrm{B}}+\Sigma _{\sigma}}$ where $\displaystyle{\Sigma _{\sigma}}$ is determined by the boundary field $\displaystyle{\Sigma}$ and $\displaystyle{\Sigma _{\mathrm{B}}}$ satisfies Dirichlet boundary conditions $\displaystyle{\Sigma _{\mathrm{B}}|_{\partial \mathcal{D}}=0}$. 

$$\tag{1.4}
\begin{align}
\mathscr{Z} & =\int \mathcal{D}\sigma \prod ^{3}_{k=1}\delta\left(\int ^{2\pi k/3}_{\frac{2\pi(k-1)}{3}}e^{\sigma}\mathrm{d}\theta-\frac{\ell}{3}\right)\exp\left( \sigma\left( \frac{2\pi}{3} \right)+\sigma\left( \frac{4\pi}{3} \right) \right)|\det(\Delta _{\sigma}-2\eta)|^{-1}\exp\left(-\frac{\Lambda}{16\pi}A-\frac{26-c}{24\pi}S_{L}[\Sigma _{\sigma}]\right)
\end{align}
$$

the $\displaystyle{\delta}$-functions implement the boundary length constraint and convenient gauge fixing conditions for the $\displaystyle{\mathrm{PSL}(2,\mathbb{R})}$ disk automorphisms, with associated Fadeev-Popov determinant given by $\displaystyle{\exp\left(\sigma\left(\frac{2\pi}{3}\right)+\sigma\left(\frac{4\pi}{3}\right)\right)}$. the determinant $\displaystyle{|\det(\Delta _{\sigma}-2\eta)|}$ must be computed with Dirichlet boundary conditions and comes from treating the $\displaystyle{R=2\eta}$ constraine. the action $\displaystyle{S_{\mathrm{L}}}$ is the standart Liouville action, with the familiar $\displaystyle{\frac{26-c}{24\pi}}$ factor produced by the ghosts plus matter CFTs.

now restrict to the flat $\displaystyle{\eta=0}$ case. the determinant is equivalent to the contribution of a $\displaystyle{c=2}$ CFT (dilaton $\displaystyle{\Phi}$ and Liouville field itself). thus the determinant is absorbed by replacing $\displaystyle{26-c}$ by $\displaystyle{24-c}$. rescaling $\displaystyle{\Sigma _{\sigma}=\frac{\phi}{Q}}$ with $\displaystyle{Q=\sqrt{ \frac{24-c}{6} }}$ and write $\displaystyle{\phi|_{\partial \mathcal{D}}=\varphi}$, one finds that the action reduces to a nice non-local $\displaystyle{\mathrm{PSL}(2,\mathbb{R})}$-invariant Hilbert-Liouville action for $\displaystyle{\varphi}$

$$\tag{1.5}
\begin{align}
S=\frac{1}{4\pi}\int _{0}^{2\pi}(\varphi \mathrm{Hilb}[\varphi']+2Q\varphi)\mathrm{d}\theta & =\sum _{n\geqslant1}n|\varphi _{n}^{2}|+Q\varphi _{0}
\end{align}
$$

where $\displaystyle{\mathrm{Hilb}}$ denotes the Hilbert transform and the $\displaystyle{\varphi _{n}}$ are the Fourier coefficients of $\displaystyle{\varphi}$. this action implies that a typical boundary field has $\displaystyle{\varphi _{n}=Q\sigma _{n}}$ of order $\displaystyle{\frac{1}{\sqrt{ n }}}$, and thus diverges pointwise everywhere almost surely...? the field $\displaystyle{\varphi}$ is a random distribution, but a fundamental point is that the field $\displaystyle{\phi}$ in the interior is still uniquely determined by $\displaystyle{\varphi}$ and smooth. writing $\displaystyle{\varphi=\varphi _{0}+\tilde{\varphi}}$, the action (1.5) implies that $\displaystyle{\tilde{\varphi}}$ is a one-dimension log-correlated Gaussian free field, matching with the boundary field in ordinary Liouville theory. however, its extension in the interior is smooth, with a Green function $\displaystyle{G_{\tilde{\phi}\tilde{\phi}}=-2\ln|1-\bar{z}_{1}z_{2}|}$ that is regular at coinciding bulk points. 

the correct boundary length operator is renormalized and is given by $\displaystyle{\beta=\int ^{2\pi}_{0}:e^{\gamma \varphi/2}:\mathrm{d}\theta}$ with $\displaystyle{Q=\frac{2}{\gamma}+\frac{\gamma}{2}}$. the bulk area operator is not renormalized and is given by $\displaystyle{A=\int _{\mathcal{D}}e^{2\phi/Q}\mathrm{d}^{2}z}$. this is of course the consequence of the fact that the bulk geometry does not fluctuate in JT gravity. these remarks allow one to write the correct, rigorously defined partition fucntion, by replacing the boundary conformal factor $\displaystyle{e^{\sigma}}$ by its renormalized version $\displaystyle{:e^{\gamma \varphi/2}:}$. a direct argument a la DDK then yields a partition function of the form of (1.3), with

$$\tag{1.6}
\begin{align}
\nu=\frac{1}{2}\left(1+\sqrt{ \frac{c}{c-24} }\right), \quad \vartheta=2-\frac{c}{12}
\end{align}
$$

the pure gravity $\displaystyle{c=0}$ case corresponds to $\displaystyle{\nu=\frac{1}{2}}$ and $\displaystyle{\vartheta=2}$, and we have a barrier at $\displaystyle{c=0}$ (alike the $\displaystyle{c=1}$ barrier in ordinary Liouville). the limit $\displaystyle{c\to -\infty}$ is semi-classical, with $\displaystyle{\nu\to1^{-}}$. at $\displaystyle{c>0}$, we conjecture that the geometru is made of multiple "baby universes" connected by narrow wormholes...

## outlook

this work ports some techniques from Liouville theory to the JT gravity.

---

