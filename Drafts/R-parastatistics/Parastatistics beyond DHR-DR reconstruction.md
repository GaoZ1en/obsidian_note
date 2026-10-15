# Parastatistics beyond DHR–DR reconstruction

Survey date: 15 October 2026.

**Complete-field comparison.** The required ordinary parent must have local Bose/Fermi fields creating all physical charge sectors from the vacuum. The [identity-net argument](No-go%20for%20inequivalence%20to%20arbitrary%20Bose-local%20field%20nets.md) has been withdrawn as a solution: it is tautological and does not supply completeness. Neither a universal no-go from positivity, covariance and observable locality alone nor the requested interacting $R$ counterexample has been established.

The [complete-field calculation](Complete%20field%20nets%20and%20R-parastatistics.md) proves that exterior-disjoint charges cannot be created by any complete relatively local parent. Its kink application obstructs dimension-independent reconstruction of all physical sectors. It does not identify new $R$ statistics or settle the $3+1$-dimensional target.

**Result.** A relativistic interacting theory with finite permutation parastatistics cannot satisfy the DHR–DR reconstruction hypotheses and simultaneously be inequivalent to the corresponding sectors of an ordinary Bose/Fermi field theory. Interactions do not remove this obstruction. Outside those hypotheses, the sources examined here do not establish a construction satisfying all three requirements: relativistic local dynamics, genuinely new permutation statistics, and the requested inequivalence. This is a bounded literature assessment, not a theorem excluding every possible extension of QFT. The reconstruction result itself is established in [DR90](https://link.springer.com/article/10.1007/BF02097680).

There are useful constructions after changing the target. Chern–Simons matter gives interacting relativistic **braid** statistics. Infinite-statistics proposals give up ordinary spacelike locality. Recent $R$-parastatistics provides concrete exchange algebras and lattice realizations, but their relativistic completion and the appropriate notion of inequivalence need separate arguments. This note develops the obstruction, tests a continuum ansatz, and identifies what a successful construction would have to prove.

## 1. The target

Set $\hbar=c=1$. Let $D=d+1$ denote spacetime dimension. The primary target considered here is Minkowski space with $d\geq3$, positive Hilbert-space norm, positive energy, and a Poincaré-invariant vacuum. Relativistic covariance alone does not imply spacelike locality; the main analysis imposes locality as an additional requirement. Lower-dimensional and nonlocal interpretations of the construction problem are retained in §§6–7.

### Statistics

Permutation parastatistics means that exchanges act through representations of $S_n$ that need not be sums of the usual bosonic and fermionic one-dimensional representations. Adjacent exchanges satisfy

$$
\begin{align}
R_i^2&=1,\\
R_iR_{i+1}R_i&=R_{i+1}R_iR_{i+1},\\
[R_i,R_j]&=0,\qquad |i-j|\geq2.
\end{align}
$$

Green's order-$p$ parafields are a particular realization, not the definition of every generalized exchange algebra. His original construction modifies field quantization while retaining the usual energy spectrum of the free oscillators. [Green53](https://journals.aps.org/pr/abstract/10.1103/PhysRev.90.270)

For anyons the exchanges instead represent $B_n$, and generally $R_i^2\neq1$. A non-Abelian braid representation is therefore not an answer to the strict permutation-statistics question. Nor is a rapidity-dependent scattering matrix in a $1+1$-dimensional integrable theory automatically a new statistics operator: dynamical scattering and exchange must be distinguished.

### Locality and interaction

Specify an observable net $\mathcal O\mapsto\mathcal A(\mathcal O)$, its vacuum representation, and its Poincaré action. Locality means

$$
[\mathcal A(\mathcal O_1),\mathcal A(\mathcal O_2)]=0
\quad\text{when }\mathcal O_1\text{ and }\mathcal O_2\text{ are spacelike separated}.
$$

Charged fields need not themselves be observables. Their localization and the localization of the observable net are different questions.

For a massive candidate, require a nonzero connected scattering amplitude with a specified asymptotic particle interpretation. A nonquadratic Hamiltonian, a non-Gaussian composite correlator, or a nontrivial exchange matrix alone does not establish interacting particle dynamics. A lattice Lieb–Robinson estimate also does not establish exact Lorentz symmetry or continuum microcausality.

### Equivalence

Three different claims often appear under the word “inequivalent”.

| Comparison | What must be preserved | What would not suffice |
|---|---|---|
| A particular oscillator presentation | The chosen generators, basis, and exchange relations | Showing that $R$ is not a flip in that basis |
| A relativistic observable theory and its sectors | Local algebras, inclusions, states, dynamics, charge composition, and statistics | Comparing only a partition function or a fixed-$n$ Hilbert space |
| Any realization using ordinary bosonic or fermionic variables | A specified class of local realizations, including any allowed gauge fields, constraints, and defects | Merely failing one reconstruction theorem |

The second is the natural DHR–DR comparison. In a common Hilbert-space realization, an equivalence would in particular intertwine the local nets and spacetime evolution; abstractly one can formulate the corresponding compatible net isomorphism. The first is much weaker. The third is stronger and must say which changes of localization and observable content are allowed.

The construction target excludes realization in a complete ordinary field net, including through constraints or observable restriction. Such a parent must locally create all physical charge sectors from its vacuum; a representation-level inclusion does not suffice. The focused [construction note](R-parastatistics%20and%20local%20relativistic%20interactions.md) records the separate candidate tests, including an exact local canonical-boson realization of finite-dimensional spin regulators and the additional limits needed for a continuum conclusion.

An arbitrary Hilbert-space encoding is not a useful physical equivalence: separable Hilbert spaces can be embedded into ordinary oscillator spaces while completely losing the original localization. Conversely, excluding every bosonic gauge-field realization would exclude the Chern–Simons example below by its very definition.

## 2. The reconstruction obstruction

### Localized charges

Write $\pi_0$ for the vacuum representation and $\mathcal O'$ for the spacelike complement of a double cone. A transportable DHR charge has a representative localized in any prescribed double cone, with

$$
\pi\big|_{\mathcal A(\mathcal O')}
\simeq
\pi_0\big|_{\mathcal A(\mathcal O')}.
$$

This is equivalence of representations on the exterior algebra, not equality of every exterior expectation value in an arbitrary charged vector. Under the appropriate duality assumptions it can be described by an endomorphism $\rho$ satisfying

$$
\rho(A)=A,\qquad A\in\mathcal A(\mathcal O').
$$

Composition of endomorphisms describes charge composition; intertwiners describe maps between charges. Locality supplies the exchange structure. This observable-algebra approach, rather than an assumed canonical field algebra, is the starting point of [DHR71](https://link.springer.com/article/10.1007/BF01877742).

### Sufficient hypotheses

A useful sufficient setting, without claiming a minimal list, is:

1. A nontrivial local observable net with an irreducible vacuum representation, Haag duality for the regions used in the construction, and the usual property B needed for subobjects. One can impose the standard separability assumptions.
2. Transportable double-cone-localized sectors, restricted to the finite-statistics subcategory with conjugates.
3. A $C^*$ tensor structure closed under subobjects and finite direct sums, with simple tensor unit.
4. Symmetric exchange, $\varepsilon_{\sigma,\rho}\varepsilon_{\rho,\sigma}=1$.

The categorical part then has the form

$$
\mathcal C_{\mathrm{fin}}
\simeq_{\mathrm{sym},*}
\operatorname{Rep}_{\mathrm{fin}}(G,k),
\qquad k\in Z(G),\quad k^2=e,
$$

where $G$ is compact and $k$ supplies the Bose/Fermi grading. In particular, finite statistical dimensions become ordinary integer representation dimensions. This is the abstract reconstruction obstruction. [DR89](https://link.springer.com/article/10.1007/BF01388849)

Here Haag duality means $\mathcal A(\mathcal O)=\mathcal A(\mathcal O')'$ in the vacuum representation, with von Neumann closures understood. Property B means that a nonzero projection in a smaller local algebra can be written $VV^*$ for an isometry $V$ in a suitably larger one. Rigidity requires a conjugate $\bar\rho$ and intertwiners

$$
\begin{align}
r&:\mathbf1\longrightarrow\bar\rho\otimes\rho,
&\bar r&:\mathbf1\longrightarrow\rho\otimes\bar\rho,\\
(\bar r^*\otimes1_\rho)(1_\rho\otimes r)&=1_\rho,
&(r^*\otimes1_{\bar\rho})(1_{\bar\rho}\otimes\bar r)&=1_{\bar\rho}.
\end{align}
$$

The intrinsic statistical dimension is $d(\rho)=\inf\|r\|\|\bar r\|$ over solutions of these equations. Thus a categorical antiparticle requires more than a second species bearing that name. The precise definitions and embedding theorem are given in [Halvorson–Müger, §§8.3, 10.1 and Appendix B](https://arxiv.org/abs/math-ph/0602036).

The field-net reconstruction yields

$$
\mathcal A(\mathcal O)=\mathcal F(\mathcal O)^G,
$$

with normal spacelike commutation relations in $\mathcal F$: homogeneous fields commute except when both are odd, in which case they anticommute. Suitable covariance hypotheses allow the spacetime action to lift. The reconstructed fields may interact. This is not a reconstruction of a free Fock theory, a free Hamiltonian, or a particular polynomial Lagrangian. The compact group here acts as an internal gauge group on the field net; reconstruction does not require adding a dynamical Yang–Mills connection. [DR90](https://link.springer.com/article/10.1007/BF02097680)

### Consequences for construction

There are two separate obstructions. Even before constructing a spacetime net, a proposed charge category that is symmetric, rigid, and $C^*$ with the above closure properties already has the compact-group description. Dropping a net hypothesis does not automatically remove this categorical obstruction. Conversely, a candidate category alone does not construct a local interacting QFT.

Some apparent loopholes therefore fail immediately:

- Strong coupling changes dynamics; it does not invalidate an applicable reconstruction theorem.
- Infinitely many particle types do not mean infinite statistics. A compact group can have infinitely many irreducible representations, each of finite dimension.
- A massless spectator does not remove reconstruction for charges that still satisfy the finite-statistics localization criterion.
- A quantum-group presentation does not suffice. If its physical charge category still has the required symmetric unitary structure and conjugates, the same categorical obstruction remains.
- Omitting antiparticles by declaration does not produce a relativistic counterexample. One must determine whether conjugates reappear in the physical completion, or which physical condition genuinely prevents them.
- A failure of Haag duality in a chosen subnet is a question about the observable content. One must analyze a possible dual completion before interpreting the failure as new statistics.

These are implications of the specified hypotheses, not assertions that every relativistic model automatically satisfies them.

## 3. Why adding interactions to parafields is insufficient

An ordinary real multiplet provides a concrete comparison. In $3+1$ dimensions let $\chi^a$, $a=1,\ldots,p$, be bosonic scalar fields and consider the perturbative effective action

$$
\begin{align}
S[\chi]&=\int d^4x\left[
\frac12\partial_\mu\chi^a\partial^\mu\chi^a
-\frac{m^2}{2}\chi^a\chi^a
-\frac{\lambda}{4!}(\chi^a\chi^a)^2
\right],\\
\eta_{\mu\nu}&=\operatorname{diag}(+,-,-,-),
\qquad m^2>0,\quad\lambda>0.
\end{align}
$$

Declare the local observables to be $O(p)$ invariant. Charged multiplets then carry hidden internal multiplicity of exactly the kind allowed by reconstruction. The four-field vertex is nonzero:

$$
V_{abcd}
=-\frac{i\lambda}{3}
\left(
\delta_{ab}\delta_{cd}
+\delta_{ac}\delta_{bd}
+\delta_{ad}\delta_{bc}
\right).
$$

Thus an interacting theory can have the relevant charge multiplicities while using ordinary Bose fields. This example illustrates the comparison class; it is neither a claim that every parafield interaction has this particular $O(p)$ Lagrangian nor a nonperturbative ultraviolet construction of four-dimensional scalar theory. The older parafield selection-rule analysis likewise constrains admissible interactions rather than providing an escape from the ordinary-particle description. [Greenberg–Messiah65](https://journals.aps.org/pr/abstract/10.1103/PhysRev.138.B1155)

The vertex follows by differentiating the quartic polynomial four times. Mathematica checked all 81 components at $p=3$. The displayed general tensor formula follows directly from the three pairings of four indices, not from extrapolating that finite check.

## 4. Recent $R$-parastatistics

### What the literature establishes

Wang and Hazzard's 2025 construction uses involutive Yang–Baxter matrices to define second-quantized paraparticles. It supplies local observable algebras, unusual exclusion rules, and exactly solvable spin models with emergent free paraparticles. Its distinction from ordinary free Bose/Fermi descriptions is substantive, but the demonstrated spin systems and the speculative elementary-particle interpretation are different claims. A local lattice realization is not already a relativistic interacting continuum theory. [WH25](https://www.nature.com/articles/s41586-024-08262-7)

The 2026 follow-up introduces additional observables, antiparticle pairs, and hidden symmetries. Its introduction explicitly leaves the relativistic construction to Part II; its conclusion also defers the relation to the no-go theorems. For a **unitary, involutive, simple, self-dual** $R$ with a nonzero local pair tensor satisfying its Eq. (95), Theorem IV.1 gives

$$
z_R(x)=(1-\theta x)^{-\theta m},\qquad\theta=\pm1,
$$

Here $z_R(x)=\sum_{n\geq0}d_nx^n$ counts one-mode $n$-particle states, and $m$ is the internal dimension. This is ordinary bosonic or fermionic counting. Matching this Hilbert series does not prove equivalence, even in the paper's weaker sense. [WH26, pp. 3, 24, 43–44](https://arxiv.org/abs/2607.26351v1)

The searches for this survey did not locate a public Part II. That search outcome does not prove that no such work exists.

The classification theorem has the stated scope. A nonunitary $R$ matrix in a chosen basis must be assessed using the physical positive inner product and adjoint; changing that presentation does not itself defeat reconstruction.

### Defects and the comparison class

Wang's study of three-dimensional secret-communication protocols identifies its relevant class of $R$-paraparticles with deconfined finite-group gauge theories. It explicitly retains their categorical Bose/Fermi classification while explaining nontrivial exchange effects in the presence of suitable defects. This is a particularly clear example of operational novelty coexisting with an ordinary gauge description. [W25, abstract and §V](https://arxiv.org/abs/2510.11818v2)

For the present target, a defect experiment must compare the **same full system** in both descriptions. If the paraparticle description includes special measuring defects while the comparator contains only bare free particles, the experiment does not exclude an ordinary gauge theory with the corresponding defects. A fixed special point also breaks translation symmetry; incorporating such a device in a relativistic model requires its own covariant treatment.

### A different conditional no-go result

Mekonnen, Galley, and Müller derive Bose/Fermi restrictions from stronger operational invariance principles: invariance of correlations with other systems, or invariance under coherently controlled permutations. These are additional premises about indistinguishability, not consequences of the ordinary permutation relations alone. Their result should neither be omitted nor used as an unconditional replacement for DHR–DR. [MGM26](https://www.nature.com/articles/s41467-026-73064-6)

## 5. Testing a continuum ansatz

The following calculation is an independent diagnostic. It does **not** claim to refute every possible relativistic completion of $R$-parastatistics.

### Number-conserving observables

Suppose a compatible oscillator algebra supplies bilinears

$$
E_{ij}=\sum_a a^\dagger_{i,a}a_{j,a},
\qquad
[E_{ij},E_{kl}]=\delta_{jk}E_{il}-\delta_{il}E_{kj}.
$$

On a finite lattice this supports hopping terms and interactions such as $n_i n_j$, where $n_i=E_{ii}$. Disjoint-support polynomials commute at equal time. In a finite-dimensional realization, Hermitian choices give well-defined unitary time evolution. For an abstract unbounded oscillator representation, domains and self-adjointness need additional work.

A tempting continuum step is to retain the number density and choose

$$
\begin{align}
H_0&=\int d^3p\,\omega_{\mathbf p}E(\mathbf p,\mathbf p),
\qquad \omega_{\mathbf p}=\sqrt{\mathbf p^2+m^2},\\
a_a(t,\mathbf x)
&=\int\frac{d^3p}{(2\pi)^{3/2}}
e^{-i\omega_{\mathbf p}t+i\mathbf p\cdot\mathbf x}a_a(\mathbf p),\\
n(t,\mathbf x)&=\sum_a a_a^\dagger(t,\mathbf x)a_a(t,\mathbf x).
\end{align}
$$

Here $m>0$, and the spatial fields use delta-function normalization. They are number-localization fields, not assumed Lorentz-scalar local fields. Products are understood as suitably smeared quadratic forms; the following test concerns separated points, not coincident-point renormalization.

The bilinear algebra and free evolution give

$$
\begin{align}
[n(t,\mathbf x),n(0,\mathbf y)]
={}&K(t,\mathbf x-\mathbf y)
\sum_a a_a^\dagger(t,\mathbf x)a_a(0,\mathbf y)\\
&-K(-t,\mathbf y-\mathbf x)
\sum_a a_a^\dagger(0,\mathbf y)a_a(t,\mathbf x),\\
K(t,\mathbf r)
={}&\int\frac{d^3p}{(2\pi)^3}
e^{-i\omega_{\mathbf p}t+i\mathbf p\cdot\mathbf r}.
\end{align}
$$

This identity follows equally from the commutator of the one-particle kernels representing $E$. It needs no assumption that the individual $a_a$ obey ordinary CCR.

### The spacelike tail

Introduce the positive-frequency scalar kernel, with the usual convergence prescription,

$$
\Delta_+(t,\mathbf r)
=\int\frac{d^3p}{(2\pi)^3\,2\omega_{\mathbf p}}
e^{-i\omega_{\mathbf p}t+i\mathbf p\cdot\mathbf r}.
$$

Let $K_\nu$ denote the modified Bessel function of the second kind. For $r=|\mathbf r|>|t|$ and $s=\sqrt{r^2-t^2}$,

$$
\begin{align}
\Delta_+(t,r)&=\frac{m}{4\pi^2s}K_1(ms),\\
K(t,r)&=2i\partial_t\Delta_+(t,r)
=\frac{i m^2t}{2\pi^2s^2}K_2(ms).
\end{align}
$$

The first formula follows from Lorentz invariance of $\Delta_+$ and the equal-time radial transform

$$
\begin{align}
\int_0^\infty\frac{\cos(pr)}{\sqrt{p^2+m^2}}\,dp&=K_0(mr),\\
-\partial_rK_0(mr)&=mK_1(mr).
\end{align}
$$

Differentiation of the oscillatory transform is understood distributionally, or with a regulator before taking its limit. Mathematica verified the cosine transform and both Bessel differentiations under $m>0$, $r>|t|$.

Since $K_2(ms)>0$, the kernel is nonzero for spacelike separation with $t\neq0$. The corresponding rank-one one-particle kernels generically do not commute, so the density commutator is not the zero operator. For example, at $m=1$, $r=2$, $t=1$ the kernel is approximately $0.00659031468069\,i$.

**Conclusion of this test:** choosing $\omega_{\mathbf p}=\sqrt{\mathbf p^2+m^2}$ does not turn this equal-time local density algebra into a relativistic local observable net. The proposed free limit already fails the locality test. Adding a weak interaction that continuously preserves this free limit does not establish the missing property.

In an ordinary local scalar field, positive- and negative-frequency terms combine into a Pauli–Jordan commutator that vanishes at spacelike separation. A successful paraparticle construction must supply an appropriate local field/observable structure and the particle–antiparticle relations needed for it. Merely replacing the dispersion relation leaves that task undone.

### A pair-creation obstruction

An elementary algebraic test illustrates why antiparticles are substantive input. Let $V=\mathbb C^m$, $m>1$, and take

$$
R=-1_{V\otimes V}.
$$

It is unitary, involutive, and satisfies the Yang–Baxter relation. In the creation-algebra convention

$$
a_{i,a}^\dagger a_{j,b}^\dagger
=\sum_{c,d}R_{ab}^{cd}
a_{j,c}^\dagger a_{i,d}^\dagger,
$$

it allows at most one particle per spatial mode and gives the single-mode count $1+mx$. This is the simple unusual-counting example also discussed in [WH26, Example 3](https://arxiv.org/abs/2607.26351v1). By itself $R=-1$ only gives repeated sign representations on $V^{\otimes n}$; it is not an example of a higher-dimensional irreducible permutation representation. Its use here is to test the stronger observable and duality requirements.

Use the ordinary tensor product and associator of these vector spaces. Try to make $V$ self-dual, with an evaluation map $e:V\otimes V\to\mathbb C$, $e(e_a\otimes e_b)=\alpha_{ab}$, and require naturality of the braiding. The two crossings of $V$ through $V\otimes V$ multiply to the identity, so naturality requires

$$
(1_V\otimes e)=(e\otimes1_V),
\qquad
\delta_a^{\,d}\alpha_{bc}=\alpha_{ab}\delta_c^{\,d}.
$$

For every $b,c$, choose $a\neq c$ and set $d=a$. Then $\alpha_{bc}=0$. Hence there is no nonzero evaluation of this self-dual form. Sage independently found full rank in the corresponding homogeneous linear systems for $m=2,3,4$; the argument just given proves the statement for every $m>1$.

The self-dual calculation alone does not exclude a distinct antiparticle object. A subsequent calculation in [R-parastatistics and local relativistic interactions](R-parastatistics%20and%20local%20relativistic%20interactions.md), §3, strengthens it: for $c_{V,V}=\pm I$ and $\dim V>1$, naturality of any evaluation $W\otimes V\to\mathbb C$ forces that evaluation to vanish, for arbitrary $W$ and mixed exchange. This excludes the corresponding rigid completion in the specified concrete tensor realization; it is not a theorem about every possible local charge construction. If a different candidate produces the rigid symmetric $C^*$ category of §2, compact-group reconstruction returns.

## 6. A concrete relaxed construction

### Chern–Simons matter in $2+1$ dimensions

If the statistical requirement is relaxed to braid statistics, a concrete relativistic interacting field-theory model is available. Take a compact $U(1)$ connection $A$, a complex bosonic scalar $\phi$ of integer charge $q$, and

$$
\begin{align}
S[A,\phi]
={}&\int d^3x\left[(D_\mu\phi)^*D^\mu\phi-V(X)
+\frac{k}{4\pi}\epsilon^{\mu\nu\rho}A_\mu\partial_\nu A_\rho\right],\\
D_\mu&=\partial_\mu-iqA_\mu,
\qquad X=\phi^*\phi,\\
V(X)&=m^2X+\frac{\lambda}{2}X^2+\frac{g_6}{3}X^3.
\end{align}
$$

Use $\eta=\operatorname{diag}(+,-,-)$ and $\epsilon^{012}=+1$. Choose nonzero even integer $k$ to allow the bosonic theory without requiring a spin structure; the even-lattice condition is reviewed in [Belov–Moore05, §1](https://arxiv.org/abs/hep-th/0505235). Take the uncondensed massive regime with $m^2>0$, $\lambda>0$, $g_6\geq0$. The level means the consistently quantized level in the chosen regulator convention. The coupling dimensions are $[\lambda]=1$ and $[g_6]=0$; the sextic term is among the allowed counterterms. The local action must be quantized with gauge constraints and an appropriate regulator.

Work on $\mathbb R^{2,1}$ with no physical boundary, use compactly supported variations, and allow the asymptotic holonomy associated with a charged excitation. No gauge fixing is needed for the following equations. Define the current by $\delta S_{\mathrm{matter}}=-\int j^\mu\delta A_\mu$:

$$
\begin{align}
j^\mu&=-iq\left[\phi^*D^\mu\phi-(D^\mu\phi)^*\phi\right],\\
\frac{k}{2\pi}\epsilon^{\mu\nu\rho}\partial_\nu A_\rho&=j^\mu,\\
D_\mu D^\mu\phi+(m^2+\lambda X+g_6X^2)\phi&=0.
\end{align}
$$

xAct verified both Euler–Lagrange equations, including the current sign and the factor $k/(2\pi)$. Surface terms vanish under the stated variations.

Writing $B=\partial_1A_2-\partial_2A_1$, a charge-$q$ excitation carries

$$
\frac{k}{2\pi}B=j^0,
\qquad
\Phi=\int d^2x\,B=\frac{2\pi q}{k}.
$$

With the current convention above, a charge-$q$ worldline couples as $-q\int_\gamma A$, giving $W_q(\gamma)=\exp[-iq\int_\gamma A]$. Fix counterclockwise winding by $dx^1\wedge dx^2$. Its phase is $e^{-iq\Phi}$, so for a bosonic core the statistical exchange phase and monodromy are

$$
R_{q,q}=e^{-i\pi q^2/k},
\qquad
M_{q,q}=R_{q,q}^2=e^{-2\pi iq^2/k}.
$$

These are the topological phases after removing dynamical phases; reversing the orientation complex-conjugates them. For $q=1$, $k=4$, $M_{q,q}=-i\neq1$. Thus the exchange cannot be the symmetric exchange of ordinary DHR sectors. The flux/statistics mechanism is the one developed in [Wilczek82](https://doi.org/10.1103/PhysRevLett.48.1144).

The scalar contact vertex is $-2i\lambda$ in the displayed convention, before gauge contributions; its polynomial normalization was checked independently. At weak coupling and large $|k|$, perturbative matter scattering is nontrivial. More extensive evidence for relativistic anyonic scattering comes from explicit large-$N$ matter–Chern–Simons computations, with important channel and crossing qualifications. [Jain et al.14](https://arxiv.org/abs/1404.6373)

This is a field-theory construction in the usual regulated/renormalized sense. The calculations here do not establish a nonperturbative Haag–Kastler construction for these interacting parameters, nor all-order ultraviolet completeness.

### What this construction does and does not solve

The charged excitation needs a Wilson-line dressing; it is not created by a compactly localized gauge-invariant charged operator. Cone localization in $2+1$ dimensions permits a braided charge structure. Simply saying “lower dimension” is insufficient: under the usual assumptions, double-cone DHR sectors already have symmetric exchange in spacetime dimension at least three. The localization class matters. [Halvorson–Müger, Proposition 8.52 and §8.2](https://arxiv.org/abs/math-ph/0602036)

Non-Abelian Chern–Simons theories give stronger categorical diagnostics. For example, the spin-$1/2$ line of $SU(2)_3$ has

$$
d_{1/2}=\frac{\sin(2\pi/5)}{\sin(\pi/5)}
=\frac{1+\sqrt5}{2},
$$

which is not an integer representation dimension. This excludes equivalence to a symmetric compact-group charge category. The number is a statistical dimension, not the dimension of a single-particle Hilbert space. Pure Chern–Simons theory alone does not supply propagating interacting matter; adding matter is a separate step. [Witten89, Eq. (4.44), p. 391](https://www.maths.ed.ac.uk/~v1ranick/papers/witten.pdf)

The Abelian example meets a relaxed request for interacting relativistic non-Bose/Fermi exchange. It fails the original request twice: its statistics is braided rather than permutation parastatistics, and its action already uses ordinary bosonic matter coupled to a gauge field. Nontrivial monodromy excludes the ordinary **symmetric-sector** description, not every ordinary-variable realization.

## 7. Other ways to change the hypotheses

| Route | Hypothesis changed | What is established or plausible | Why it does not yet solve the strict target |
|---|---|---|---|
| $2+1$-dimensional anyons | Localization/exchange is braided | Relativistic matter–Chern–Simons models | Not permutation parastatistics; ordinary gauge-field formulations exist |
| $1+1$-dimensional parafermionic or kink theories | Low-dimensional localization and exchange structure | Interacting conformal and integrable models | “Parafermion” is not Green finite-order parastatistics |
| Infinite statistics | Finite statistics and usually ordinary locality | Positive Fock representations; proposed interacting relativistic frameworks | Local observable QFT and the strong inequivalence claim are not supplied |
| Long-range gauge charges | Compact DHR localization | Gauss-law sectors and infrared structure | Ordinary QED already has this feature and ordinary fermionic matter |
| Cone-localized massive charges in $3+1$ | Double-cone localization | Buchholz–Fredenhagen sector theory | Substantial reconstruction results survive this relaxation |
| Defects, loops, or strings | Excitation type and observable content | Nontrivial transport and linking processes | Not automatically statistics of intrinsic point particles |
| Non-rigid $R$ categories | Conjugates/finite statistical dimension | Algebraic candidates | Relativistic positive local dynamics and antiparticles remain to be constructed |

### Infinite statistics

The $q=0$ quon algebra is

$$
a_i a_j^\dagger=\delta_{ij},
\qquad a_i|0\rangle=0,
$$

with no imposed exchange relation among two creators. Ordered words give positive, mutually orthogonal Fock states; permutations of distinct labels need not identify states. This is not finite-order Green parastatistics. [Greenberg90](https://doi.org/10.1103/PhysRevLett.64.705)

Cao, Chen, and Li propose interacting relativistic infinite-statistics fields and analyze scattering. Their construction is relevant if “relativistic” permits a nonlocal framework. It should not be omitted merely because it falls outside local AQFT. [CCL09](https://arxiv.org/abs/0905.3027v1)

Their follow-up explicitly uses a weaker integrated condition in place of spacelike commutativity and states that its claimed Lorentz invariance concerns the full $S$-matrix rather than the higher Dyson terms separately. It also uses infinite operator sums for physical generators. These claims require their own scrutiny; neither the convergence nor the full scattering argument is independently verified here. A nonlocal proposal is not an established local relativistic counterexample to DHR–DR. [CCL10, §II, p. 2](https://arxiv.org/abs/1003.4043v1)

There is a concrete additional audit. Let $S(g)=\sum_{n\geq0}g^nS_n$ be a formal or convergent expansion in an invariant coupling, with a fixed asymptotic Lorentz representation $U(\Lambda)$. Covariance as a formal identity, or for every $g$ in a neighborhood of zero, implies

$$
U(\Lambda)S(g)U(\Lambda)^{-1}=S(g)
\quad\Longrightarrow\quad
U(\Lambda)S_nU(\Lambda)^{-1}=S_n
$$

by coefficient comparison. An appeal to covariance only after summing noncovariant terms therefore needs a justified departure from these premises, such as a genuinely nonanalytic construction. This elementary observation does not rule out every nonlocal relativistic theory; it identifies missing evidence in treating that proposed resolution as sufficient.

### Long-range and cone localization

A Gauss-law charge can be detected through fields arbitrarily far away, so compact DHR localization is inappropriate. This explains a failure of the selection criterion, but does not turn an electron into an irreducible new paraparticle. Infrared dressing and the loss of an isolated one-particle mass shell must be addressed on their own terms.

Replacing double cones by spacelike cones is also not a sufficient escape in $3+1$ dimensions. Buchholz and Fredenhagen derive localization, antiparticle, statistics, and collision properties for massive particle sectors in a broader setting. Any proposed use of cone localization must check the applicable BF and reconstruction results, rather than stopping once the original DHR criterion fails. This is a statement about their massive-sector setting, not every massless or extended excitation. [BF82](https://link.springer.com/article/10.1007/BF01208370)

### Low-dimensional parafermions

The three-state Potts critical theory is a genuinely interacting $1+1$-dimensional parafermionic CFT with a spin-lattice realization. Its chiral fields and order/disorder structure provide useful examples of nontrivial exchange, but do not demonstrate intrinsic higher-dimensional permutation parastatistics or absence of an ordinary microscopic realization. [Mong et al.14](https://arxiv.org/abs/1406.0846v2)

The algebraic framework for braid-group sectors explains why low-dimensional charged fields can have exchange algebras beyond ordinary Bose/Fermi commutation. It changes the exchange structure used in reconstruction; it does not overturn the symmetric version of the theorem. [FRS89](https://link.springer.com/article/10.1007/BF01217906)

## 8. A construction programme with a stopping criterion

For the strict target, the next step should be an audit of a concrete candidate, not an unsupported declaration that a generalized exchange algebra defines a relativistic QFT.

1. **Choose the observable theory and the comparison class.** Specify dimension, vacuum, localization regions, allowed defects, and which data an equivalence must preserve. Decide whether ordinary gauge-field realizations are excluded.
2. **Complete the charge structure.** For a proposed $R$, construct mixed particle–antiparticle exchanges, pair intertwiners, fusion, subobjects, adjoints, and their positive inner products. Test naturality and the conjugate equations, not only Yang–Baxter and involutivity.
3. **Apply the categorical stopping criterion.** If the result is the rigid symmetric $C^*$ category of §2, abandon the claim of inequivalence to ordinary reconstructed sectors. A novel presentation or interaction may remain valuable, but it does not meet the target.
4. **Identify a physical failure of a reconstruction premise.** Examples include a different localization class or genuinely infinite statistical dimension. Show that the failure survives the physically relevant completion. Check the broader BF results when applicable.
5. **Construct relativistic dynamics.** Establish positive-energy Poincaré covariance and spacelike commutativity of observables. For a lattice route, take a controlled continuum limit. For a field route, specify the distributional domains, regulator, counterterms, and gauge constraints. The calculation in §5 is a useful early rejection test.
6. **Establish interaction and inequivalence separately.** Compute a controlled nonzero connected scattering amplitude where scattering exists. Then identify an invariant of the full observable/sector theory that excludes every model in the chosen comparison class. A distinct free partition function only excludes the corresponding free comparison.

For a positive near-term construction with exotic statistics, §6 is concrete once braid statistics and a bosonic gauge-field presentation are allowed. For intrinsic finite permutation parastatistics beyond reconstruction, the unresolved work lies in steps 2–5. No successful completion of those steps is claimed here.

## 9. Verification and scope

**Verified:** Mathematica returned zero residuals for the radial cosine transform, the Bessel derivative giving the spacelike tail, and the $SU(2)_3$ trigonometric identity. It checked the 81 $O(3)$ quartic-vertex components and the complex-scalar contact normalization. xAct, using covariant variational derivatives and the full canonicalization pipeline, returned zero residuals for both Chern–Simons–matter field equations. Sage checked the $R=-1$ identities at $m=3$ and the evaluation-map obstruction at $m=2,3,4$; the all-$m$ obstruction has a separate proof in §5.

**Assumptions:** The no-go conclusion uses the stated localization, finite-statistics, conjugate, positivity, and symmetry hypotheses. The continuum diagnostic assumes the bilinear $\mathfrak{gl}$ algebra and its stated free evolution. Its transform formulas are used away from the light cone and coincident points, with $m>0$. The Chern–Simons calculation assumes the displayed orientation, current convention, massive uncondensed phase, quantized level, and vanishing variation boundary terms. Its topological exchange phase is distinguished from dynamical scattering phases.

**Not verified:** A general relativistic interacting completion of $R$-parastatistics; the full proofs of the cited reconstruction and classification theorems; a nonperturbative local net for the interacting Chern–Simons example; the all-order consistency claims of the infinite-statistics papers; or inequivalence to every possible ordinary-variable realization. No finite symbolic test has been promoted into any of these claims.

Source handling: PDF text extraction was used for navigation. Rendered pages were checked for the 2026 paper's deferred-construction statement and Theorem IV.1, its weak-equivalence discussion, the categorical embedding theorem, the finite-group interpretation of the defect proposal, and the infinite-statistics locality qualification. These are source confirmations, distinct from the independent computational checks above. The reference list records the primary papers and the reconstruction exposition used; it is not an exhaustive bibliography.

## References

- **Green53:** H. S. Green, “A Generalized Method of Field Quantization,” *Physical Review* **90**, 270–273 (1953). [Paper](https://journals.aps.org/pr/abstract/10.1103/PhysRev.90.270).
- **Greenberg–Messiah65:** O. W. Greenberg and A. M. L. Messiah, “Selection Rules for Parafields and the Absence of Para Particles in Nature,” *Physical Review* **138**, B1155 (1965). [Paper](https://journals.aps.org/pr/abstract/10.1103/PhysRev.138.B1155).
- **DHR71:** S. Doplicher, R. Haag, and J. E. Roberts, “Local observables and particle statistics I,” *Communications in Mathematical Physics* **23**, 199–230 (1971). [Paper](https://link.springer.com/article/10.1007/BF01877742).
- **DR89:** S. Doplicher and J. E. Roberts, “A new duality theory for compact groups,” *Inventiones Mathematicae* **98**, 157–218 (1989). [Paper](https://link.springer.com/article/10.1007/BF01388849).
- **DR90:** S. Doplicher and J. E. Roberts, “Why there is a field algebra with a compact gauge group describing the superselection structure in particle physics,” *Communications in Mathematical Physics* **131**, 51–107 (1990). [Paper](https://link.springer.com/article/10.1007/BF02097680).
- **Halvorson–Müger:** H. Halvorson, with M. Müger, “Algebraic Quantum Field Theory,” especially §§8–10 and Appendix B. [arXiv:math-ph/0602036](https://arxiv.org/abs/math-ph/0602036).
- **BF82:** D. Buchholz and K. Fredenhagen, “Locality and the structure of particle states,” *Communications in Mathematical Physics* **84**, 1–54 (1982). [Paper](https://link.springer.com/article/10.1007/BF01208370).
- **FRS89:** K. Fredenhagen, K.-H. Rehren, and B. Schroer, “Superselection sectors with braid group statistics and exchange algebras,” *Communications in Mathematical Physics* **125**, 201–226 (1989). [Paper](https://link.springer.com/article/10.1007/BF01217906).
- **WH25:** Z. Wang and K. R. A. Hazzard, “Particle exchange statistics beyond fermions and bosons,” *Nature* **637**, 314–318 (2025). [Paper](https://www.nature.com/articles/s41586-024-08262-7).
- **WH26:** Z. Wang and K. R. A. Hazzard, “On $R$-parastatistics I: Foundation.” [arXiv:2607.26351v1](https://arxiv.org/abs/2607.26351v1). Preprint; the relativistic completion is deferred in the inspected version.
- **W25:** Z. Wang, “Secret communication games and a hierarchy of quasiparticle statistics in $3+1$D topological phases.” [arXiv:2510.11818v2](https://arxiv.org/abs/2510.11818v2).
- **MGM26:** M. Mekonnen, T. D. Galley, and M. P. Müller, “Invariance under quantum permutations rules out parastatistics,” *Nature Communications* **17**, 6947 (2026). [Paper](https://www.nature.com/articles/s41467-026-73064-6); [arXiv:2502.17576v3](https://arxiv.org/abs/2502.17576v3).
- **Wilczek82:** F. Wilczek, “Magnetic Flux, Angular Momentum, and Statistics,” *Physical Review Letters* **48**, 1144 (1982). [Paper](https://doi.org/10.1103/PhysRevLett.48.1144).
- **Witten89:** E. Witten, “Quantum Field Theory and the Jones Polynomial,” *Communications in Mathematical Physics* **121**, 351–399 (1989). [Paper](https://www.maths.ed.ac.uk/~v1ranick/papers/witten.pdf).
- **Belov–Moore05:** D. Belov and G. W. Moore, “Classification of abelian spin Chern-Simons theories.” [arXiv:hep-th/0505235](https://arxiv.org/abs/hep-th/0505235).
- **Jain et al.14:** S. Jain et al., “Unitarity, Crossing Symmetry and Duality of the S-matrix in large $N$ Chern-Simons theories with fundamental matter.” [arXiv:1404.6373](https://arxiv.org/abs/1404.6373).
- **Greenberg90:** O. W. Greenberg, “Example of Infinite Statistics,” *Physical Review Letters* **64**, 705 (1990). [Paper](https://doi.org/10.1103/PhysRevLett.64.705).
- **CCL09:** C. Cao, Y.-X. Chen, and J.-L. Li, “Relativistic Theory of Infinite Statistics Fields,” *Physical Review D* **80**, 125019 (2009). [arXiv:0905.3027v1](https://arxiv.org/abs/0905.3027v1).
- **CCL10:** C. Cao, Y.-X. Chen, and J.-L. Li, “Self-consistency in relativistic theory of infinite statistics fields.” [arXiv:1003.4043v1](https://arxiv.org/abs/1003.4043v1).
- **Mong et al.14:** R. S. K. Mong et al., “Parafermionic conformal field theory on the lattice,” *Journal of Physics A* **47**, 452001 (2014). [arXiv:1406.0846v2](https://arxiv.org/abs/1406.0846v2).
