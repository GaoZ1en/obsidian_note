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