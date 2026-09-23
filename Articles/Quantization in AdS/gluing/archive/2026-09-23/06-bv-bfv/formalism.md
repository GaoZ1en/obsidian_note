# BV–BFV 与 regional sewing：比较的对象和边界

**结论。** Regional sewing 不是无条件的「BV–BFV homotopy pullback 的 ghost-number-zero 截断」。在同一 action、物理边界实现、可延拓规范群和光滑域上，可以比较它们的经典解、规范箭头与预辛配对；指定 observable algebra 的重构还要单独证明。对 disk/open chord，本目录完成经典比较与 current polynomial 验收，并在明确的 exterior-smooth product-collar 域构造 relative linear cochain homotopy及pairing correction；没有把它升级为任意functional dg algebra的等价。

这里沿用当前 gluing 规则：完整 fields、proper action、stabilizers 和 null directions 一直保留。文献中的 reduced moduli spaces 与旧模型的 current coordinates 是诊断工具，不代替区域对象。

## 1. 问题从 action 开始

一个区域先给自己的 action、有限作用量域、真实外边界条件、临时 closure 和实际 gauge group。指定人工面上的 boundary polarization 后，令 $q$ 为 prescribed history；区域方程定义的是
$$
\mathfrak R_i=\{(\phi_i,q_i,\lambda_i;d_{i,\rm in},d_{i,\rm out}):
\text{区域 EOM、约束、joint corner compatibility 成立}\}.
$$
$\lambda_i$ 是 action variation 的边界 covector，不预设为单值 $\lambda_i=\mathcal D_iq_i$。输入之间的兼容条件也不允许默认拆成独立的 source-only 与 initial-only blocks。

要解释的操作是：保留这个关系，识别共同 $q$，释放 $\delta q$，使 oriented responses 相消，并构造到独立未切分理论的比较。BV–BFV 是否自动提供了这些步骤，必须逐项判断。

## 2. BV–BFV 的 typing 与符号

用 $d$ 表示 spacetime de Rham differential，$\delta$ 表示 field-space differential，$\operatorname{gh}$ 表示 ghost number。不要把 spacetime form degree、field-space form degree 与 ghost number 合成一栏。

| 对象 | Field-space 类型 | Ghost number |
|---|---|---:|
| $\omega_M$ | 非退化的 graded 2-form；bulk BV pairing | $-1$ |
| $Q_M$ | cohomological vector field，$[Q_M,Q_M]=0$ | $1$ |
| $S_M$ | bulk functional | $0$ |
| $\beta_\Sigma$ | boundary 1-form | $0$ |
| $\omega_\Sigma=\delta\beta_\Sigma$ | BFV 2-form | $0$ |
| $Q_\Sigma$ | boundary cohomological vector field | $1$ |
| $S_\Sigma$ | BFV charge | $1$ |
| $\pi:\mathcal F_M\to\Phi_\Sigma$ | degree-zero dg restriction | $0$ |

Bulk BV nondegeneracy does **not** assert that the ordinary on-shell CPS is nondegenerate. Antifields are part of the former pairing; ordinary proper gauge directions remain null in the latter.

We use the compact graded conventions of Cattaneo–Mnev, [§2.1 and §4](https://arxiv.org/pdf/2208.11211), including their transgression/Koszul signs:
$$
\iota_{Q_M}\omega_M=\delta S_M-\pi^*\beta_\Sigma,
\qquad \iota_{Q_\Sigma}\omega_\Sigma=\delta S_\Sigma,
\qquad Q_M\pi^*=\pi^*Q_\Sigma.
\tag{2.1}
$$
The plus-sign convention in the motivating question is exactly obtained by
$$
\alpha^\partial=-\beta_\Sigma,\quad
\omega^\partial=-\omega_\Sigma,\quad
S^\partial=-S_\Sigma.
\tag{2.2}
$$
Then $\iota_{Q_M}\omega_M=\delta S_M+\pi^*\alpha^\partial$ and $\iota_{Q_\Sigma}\omega^\partial=\delta S^\partial$. Changing only the printed sign of $\alpha$, while leaving its Hamiltonian and symplectic form unchanged, is not this conversion. Ordinary CPS signs below are fixed independently by the variation of the physical component action; a graded superfield wedge must not be read as a product of commuting component variations.

On a boundary face that itself has boundary, (2.1)'s second equation acquires a corner contribution. A closed-face Hamiltonian formula is not an unrestricted open-face formula. For codimension two in three-dimensional CS, the corner pairing and corner charge have ghost numbers $1$ and $2$ respectively. This is graded boundary information, not evidence for an additional physical point oscillator.

Boundary BFV data arise by retaining the failure of the bulk variational/Hamiltonian relation to close at the boundary. In a general Lagrangian model one first obtains pre-boundary data on jets; passing to a BFV boundary manifold requires the relevant characteristic distribution to admit the asserted smooth quotient. That pre-boundary construction is separate from quotienting the on-shell physical gauge directions. Neither regularity nor the existence of a desired physical IBVP follows from writing (2.1).

## 3. Three distinct meanings of “ghost-number zero”

1. **Set $c,\phi^+,c^+$ to zero.** This leaves ordinary off-shell fields. It does not impose the equations carried by $Q\phi^+$.
2. **Take classical solutions and retain gauge arrows.** First read the EOM and gauge action from $Q$, then keep the actual solution space, automorphisms, boundary symmetry policy and CPS. This is the classical comparison used here.
3. **Take $H^0$ of a specified observable complex.** This is a cohomological operation depending on the function class and the chosen gauge complex. It is not the raw field space in item 2.

Even a derived classical truncation retaining automorphisms differs from a coarse set of orbits. A Lie-algebra BRST complex moreover does not, by itself, specify disconnected gauge components, compact periods or a principal-bundle sector.

The useful candidate statement is therefore:
$$
\boxed{\text{same boundary realization + full classical equations/arrows}
\quad\Longrightarrow\quad\text{a model-specific comparison problem}.}
$$
There is no unconditional equality between the three operations above.

## 4. Strict, clean and homotopy products

For linear complexes $E_i$ and $B$ with cochain restriction maps $r_i$, put $f=r_1-r_2$. A concrete homotopy pullback is
$$
P^n=E_1^n\oplus E_2^n\oplus B^{n-1},\qquad
D(e_1,e_2,b)=(d_1e_1,d_2e_2,f(e_1,e_2)-d_Bb).
\tag{4.1}
$$
$D^2=0$ follows from $fd_E=d_Bf$. The extra component records homotopy matching; it is not automatically a physical interface field with its own action.

**Lemma.** If $f$ is degreewise onto, the inclusion $\ker f\hookrightarrow P$, $e\mapsto(e,0)$, is a quasi-isomorphism of complexes of vector spaces.

**Proof.** The quotient complex is $B^n\oplus B^{n-1}$ with differential $(y,b)\mapsto(d_By,y-d_Bb)$. The degree $-1$ map $h(y,b)=(b,0)$ satisfies $Dh+hD=1$. Thus the quotient is acyclic. For a continuous/smooth category, appropriate continuity and splitting estimates are additional obligations; this algebraic proof does not supply them. ∎

Consequences:

- A **strict dg** fiber product may already model a homotopy fiber product. Keeping “strict” does not mean dropping ghosts or obstructions.
- **Clean** means that the intersection is a submanifold and its tangent space is the tangent-space fiber product. It does not mean transverse, Tor-independent, or free of stabilizers.
- Nontransverse clean intersections can carry excess derived directions. Gauge stabilizers can remain even when a matching map is a submersion.

The general nonlinear gluing statement in [Cattaneo–Mnev, Conjecture 2.2, Theorem 2.4 and footnote 8](https://arxiv.org/pdf/2208.11211) is distinguished from its proved free examples. Their theorem compares smooth global fields with a larger strict dg matching space by a weak equivalence; it does not identify their raw elements. Its stated extension to external boundary keeps that boundary disjoint from the cut.

For the open chord, the two-dimensional seam $I\times\gamma$ meets the physical wall and the temporal caps. A corner-compatible relative version preserving our chiral realization is **not** obtained merely by citing that theorem. The classical chord calculation and the separately constructed [relative homotopy](relative_homotopy.md) provide explicit, scoped results.

| Sector in this comparison | Product actually used | Precise status |
|---|---|---|
| Smooth common-frame classical disk fields with all collar jets | ordinary matching/equalizer, keeping proper arrows | restriction and assembly are inverse |
| Linear current labels with joint endpoints and outer jets | split linear matching space with cut kernel | exact sequence; kernel is retained until observable evaluation |
| Unrestricted free BV fields at a closed interior cut | strict dg product models the homotopy product | CM's proved free-theory weak equivalence, not raw equality |
| Open chord with smooth joint exterior data and product collars | relative linear corner homotopy limit; separate Hamiltonian polynomial comparison | CD1/O1–O3 prove the declared linear/continuous-polynomial scope; local total BV enhancement remains open |
| Clean nontransverse intersections | ordinary underlying intersection can be smooth, with excess cohomology | clean alone does not justify dropping the derived complex |
| Compact/self-sewn or singular non-Abelian sectors | actual transition groupoid and deformation data | not covered by the disk current theorem |

## 5. Comparison diagram, with the missing arrow visible

The independent global theory is the disk with its chiral physical wall. Fix one common-frame bundle presentation. Let $\mathcal P_D$ contain all its smooth classical fields, and let $\mathcal C_\gamma^\infty$ contain regional solutions satisfying release, joint corners and the collar jet conditions of [the CS construction](u1_cs_open_chord.md).

The **proved classical diagram** is
$$
\begin{array}{ccc}
\mathcal P_D &\xrightarrow{\operatorname{res}}&\mathcal C_\gamma^\infty\\
\downarrow\scriptstyle{\text{Cauchy data}}&&\downarrow\scriptstyle{\text{Cauchy data}}\\
\{a\in\Omega^1(D):da=0\}&\xrightarrow{\operatorname{res}}&
\{(a_1,a_2):da_i=0,\ \text{matched smooth jets}\}.
\end{array}
\tag{5.1}
$$
Its arrows keep every bulk proper direction. The inverse is actual smooth assembly, not passage to a current quotient. Proper arrows must themselves descend smoothly and preserve the physical boundary realization. Stabilizers are compared as automorphisms, not erased by the map.

The **dg comparison to be distinguished from (5.1)** is
$$
\mathcal F_{D,L}^{\rm BV}
\xrightarrow{\operatorname{res}}
\ P_L[1]
\ \simeq
\ \mathcal T[1].
\tag{5.2}
$$
Here L is the independently specified chiral-wall/cap complex, P_L its exterior-smooth strict matching model, and 𝒯 the three-term face/corner total complex in [corner descent](corner_descent.md). The first arrow has the actual trace-preserving smoothing and pairing correction. CD1 constructs the last cochain homotopy equivalence, including continuous sections and relative homotopies. It is not the unrestricted two-bulk seam diagram and not raw equality. A local nondegenerate BV action/pairing on all extra total-complex directions is still unconstructed; accordingly this row is not labelled an unrestricted full BV–BFV symplectic equivalence.

The **observable comparison** has its own, contravariant evaluation:
$$
\begin{array}{ccc}
\mathcal A^{\rm adm}_{\rm cut}/(\mu[K_\gamma])
&\xrightarrow{\ \Theta\ }&\mathcal A_D^{\rm current}\\
\downarrow\scriptstyle{\text{evaluation}}&&\downarrow\scriptstyle{\text{evaluation}}\\
\operatorname{Fun}(\mathcal C_\gamma^\infty)
&\xleftarrow{\operatorname{res}^{-1\,*}}&\operatorname{Fun}(\mathcal P_D).
\end{array}
\tag{5.3}
$$
Here the lower arrow means pullback along assembly $\mathcal C_\gamma^\infty\to\mathcal P_D$. The upper arrow is proved only for finite polynomials of the declared smooth current labels. A quotient of an algebra of observables by relations does not remove any fields from (5.1). There is no inferred theorem for all smooth functionals, thin Wilson operators or completed quantum algebras.

## 6. What opening/release adds

BV–BFV supplies an unreduced boundary complex and compatible bulk restriction. A physical boundary realization additionally selects boundary action, polarization, admissible histories and the treatment of boundary symmetries. Boundary conditions can be expressed, where applicable, using compatible Lagrangian data; that does not specify one physical closure uniquely.

Opening is a change of this realization: remove the selected temporary boundary condition/action, recover the regional source relation, and preserve the real exterior condition. Release is stationary composition along the common boundary variable. These operations can be represented within suitably enriched BV–BFV data; they are neither a new universal operation proved here nor a canonical inverse recoverable from one fixed closed fiber.

The [actual source-release construction](bulk_boundary_source_release.md) makes this distinction concrete. A pair of regional flat fields with common source can have nonzero response mismatch while its unreleased bulk Q vanishes; hence it cannot map to the SC source complex by a Q-map preserving that response. The action-derived release resolution adds the response equation and its antifield-mismatch Noether relation. It then admits an explicit continuous off-shell Q-map to SC. This is a correspondence through the release model, not a quasi-isomorphism asserted for the unreleased bulk. The relative BV pairing, retained sector and full quantum pushforward remain separate obligations.

For a boundary functional $b$, keeping the same local bulk $Q$ and using (2.1) changes $S_M\mapsto S_M+\pi^*b$ and $\beta\mapsto\beta+\delta b$; equivalently $\alpha^\partial\mapsto\alpha^\partial-\delta b$. The symplectic form is unchanged, but the chosen variational boundary problem can change. The CS calculation fixes the physical component signs directly, including cap and corner terms.

| Regional input | BV–BFV comparison | What is not automatic |
|---|---|---|
| Ordinary histories and EOM | classical component of fields and $Q$ | an IBVP or a single-valued response |
| Trace/response after a polarization | components of boundary variational data | a canonical split for every theory |
| Proper arrows and boundary charges | a relative gauge complex plus an actual group policy | large gauge sectors from Lie algebra ghosts |
| Joint corners | higher-codimension boundary data and compatible traces | arbitrary independent endpoint values |
| Opening/reclosure | changing boundary realization and recomposing | recovery from already forgotten data |
| Observable reconstruction | a chosen function complex and evaluation map | continuity, Hamiltonian lifts, onto image, product closure |
| Quantum sewing | further state/polarization/residual-field data | a consequence of classical current sewing |

## 7. Stopping boundary

The quantum comparison now has an explicit [product-collar calculation](quantum_collar_and_corners.md): normalized axial states, residual BV pushforward and the modified master equation on the declared closed-interface domain. For an open face, the polarized bulk operator has corner curvature and the state has a nonzero Ward defect; its projective composition factor must be transported. These data belong to the quantum realization. They cannot be removed by silently setting the temporal-cap ghosts to zero or by rephasing individual kernels. The full disk/chord corner state and the comparison with QD local products remain open.

The original starter stopped at the declared disk/chord comparison, finite-current reconstruction and relative linear homotopy. The active full programme additionally contains CD1/O1–O3, [finite conical refinement coherence](finite_cut_coherence.md) and [formal non-Abelian relative CS comparison](nonabelian_relative_descent.md). The [audit](counterexample_audit.md) records failed stronger statements and actual repairs. Compact/global gauge sectors, general source/reopening domains, nonlinear Hamiltonian reconstruction, quantum BV pushforward and the propagating model remain requirements; the full goal has not been completed.

**Verified:** the linear lemma and the relative collar construction have explicit homotopies; source formulas were checked on rendered PDF pages; the CS/YM components, collar examples and finite algebra witnesses have the executed checks in [verification](Articles/Quantization%20in%20AdS/gluing/archive/2026-09-23/06-bv-bfv/verification.md).

**Assumptions:** fixed topology, action, orientation, physical boundary realization, smooth extendible domains and stated observable class.

**Later extension:** [CD1](corner_descent.md) now proves the declared relative continuous corner homotopy-limit identification. [O1–O3](continuous_observables.md) compute the continuous finite-degree polynomial complex and its independently defined Hamiltonian class. The old finite-current core is strictly smaller, as point and energy counterexamples show.

**Not verified:** general bundle/self-sewing/source domains, nonformal off-shell BV, arbitrary intermediate reopening, quantum BV integration/mQME/artificial corners, non-Abelian quantum and the propagating benchmark. FC/NR establish the declared finite-conical/formal comparisons; ND adds finite SU(2) classical Hamiltonian reconstruction, and QD adds the specified continuum quantum observable product/domain/sewing. A nondegenerate local form on every auxiliary total-complex coordinate is not an additional completion requirement; CD2 uses the actual strict field model. The [complete programme](programme.md) remains active.
