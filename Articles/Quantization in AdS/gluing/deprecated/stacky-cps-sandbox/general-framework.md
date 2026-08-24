# A General Framework for Stacky Covariant Phase Space

> Status: exploratory general framework. This note proposes definitions and theorem targets; it is not a theorem claiming that every Lagrangian field theory admits the structures below.

## 1. Purpose and Verdict

The useful generalization is not merely to replace “space of fields” by “stack of fields.” A stacky covariant phase-space theory should keep four operations compatible:

1. smooth families and gauge morphisms;
2. local restriction and descent in spacetime;
3. variational dynamics and the Cauchy-surface presymplectic form;
4. cutting, gluing, reduction, and eventually canonical quantization.

Each operation exists in some part of the literature, but their simultaneous realization for general Lorentzian theories with timelike interfaces is not established. The proposed object below is therefore a target package, not a repackaging theorem.

The closest structural precedents are the derived CPS of [Paugam](https://arxiv.org/abs/1106.4955), BV--BFV gluing of [Cattaneo--Mnev--Reshetikhin](https://arxiv.org/abs/1201.0290) and [Cattaneo--Mnev](https://arxiv.org/abs/2208.11211), the action-first homotopical boundary construction of [Mathieu--Murray--Schenkel--Teh](https://arxiv.org/abs/1907.10651), and the shifted-symplectic mapping-stack results of [Pantev--Toën--Vaquié--Vezzosi](https://arxiv.org/abs/1111.3209) and [Calaque](https://arxiv.org/abs/1306.3235).

## 2. Two Independent Directions of Locality

Let $\mathbf{Reg}$ be a category of admissible oriented spacetime regions and embeddings, and let $\mathbf{Probe}$ be a site of smooth test spaces. A general field object should be viewed schematically as a bifunctor

$$\begin{align}
\mathfrak F:\mathbf{Reg}^{\mathrm{op}}\times\mathbf{Probe}^{\mathrm{op}} \longrightarrow\mathbf{Grpd}_\infty.
\end{align}$$

The two contravariant variables do different jobs:

- $M'\hookrightarrow M$ restricts fields from one spacetime region to another;
- $S'\to S$ pulls back an $S$-parameterized family of fields to an $S'$-family.

Descent in $M$ expresses spacetime locality. Descent in $S$ makes the infinite-dimensional field object into a smooth stack or smooth higher stack. Neither condition implies the other.

For a scalar field, $\mathfrak F(M;S)$ may initially be a discrete groupoid of smooth maps or sections. For a gauge field, objects are fields and morphisms are gauge transformations; reducible gauge theories require higher morphisms. Passing from sets to groupoids is physical only when these morphisms are already present in the gauge problem.

## 3. Variational Input

For a region $M$, the starting data are a field stack $\mathfrak F(M)$, an action $S_M$, physical outer boundary conditions, and an orientation convention. Locally one writes

$$\begin{align}
\delta L=E_a\,\delta\phi^a+d\theta_L, \qquad \omega_L:=\delta\theta_L,
\end{align}$$

where $d$ is the spacetime differential and $\delta$ is the field-space differential. Boundary Lagrangians and corner contributions are included in the integrated potential. Thus the variation on a time slab has the schematic form

$$\begin{align}
\delta S_M =\int_M E_a\,\delta\phi^a +\Theta_{\Sigma_f}-\Theta_{\Sigma_i} +\mathcal A_{\partial_s M}.
\end{align}$$

Here $\partial_sM$ denotes the spatial or timelike boundary, and $\mathcal A_{\partial_sM}$ is the remaining boundary variation after integrations by parts. A physical boundary condition is admissible only if it makes the variational problem well-defined and the action finite. An artificial interface is not assigned a physical boundary condition that would prevent later gluing.

When a boundary condition is itself stacky, it may be specified by a morphism $\mathfrak C_{\partial M}\to\mathfrak B_{\partial M}$ into a boundary-data stack. The field stack obeying it is then modeled by

$$\begin{align}
\mathfrak F(M;\mathfrak C) := \mathfrak F(M) \times^h_{\mathfrak B_{\partial M}} \mathfrak C_{\partial M}.
\end{align}$$

For gauge theories, the homotopy pullback retains the witnesses that identify the restricted bulk field with the chosen boundary datum. These witnesses can become edge-mode variables in examples such as linear Yang--Mills theory. They should not be added to a nongauge theory by analogy alone.

## 4. Three Phase-Space Structures

The following structures must be distinguished.

| Object | Typical degree | Role | Limitation |
|---|---:|---|---|
| derived critical locus $\operatorname{Crit}^{\mathrm{der}}(S_M)$ | $-1$ | BV enhancement of equations, gauge symmetries, and Noether identities | The general $(-1)$-shifted theorem is derived-algebraic; an infinite-dimensional Lorentzian realization requires additional work |
| boundary phase stack $\mathfrak P_{\partial M}$ | $0$ | BFV-type boundary fields, momenta, and gluing data | Its analytic trace space and polarization depend on the theory and boundary type |
| covariant phase space $(\mathfrak{Sol}(M),\Omega_\Sigma)$ | $0$ presymplectic | solutions equipped with the presymplectic form obtained from a Cauchy surface | Gauge directions remain degenerate until a justified reduction is performed |

The derived solution stack is formally

$$\begin{align}
\mathfrak{Sol}^{\mathrm{der}}(M) := \operatorname{Crit}^{\mathrm{der}}(S_M).
\end{align}$$

Under the finite-dimensional or derived-algebraic hypotheses of shifted symplectic geometry, a derived critical locus carries a canonical $(-1)$-shifted symplectic structure. This does not automatically produce the ordinary CPS form used for canonical quantization.

The ordinary CPS form is obtained from the presymplectic current on a Cauchy surface:

$$\begin{align}
\Omega_\Sigma := \int_\Sigma\omega_L +\text{required corner contribution}.
\end{align}$$

On solutions and linearized solutions, $d\omega_L=0$. Subject to boundary-flux and support conditions, $\Omega_\Sigma$ is independent of the chosen Cauchy surface. A rigorous smooth-set formulation of this transgression is developed by [Giotopoulos--Sati](https://arxiv.org/abs/2312.16301); precise hyperbolicity, gauge, and Peierls hypotheses are discussed by [Khavkine](https://arxiv.org/abs/1402.1282), while the action-first treatment of boundaries is given by [Harlow--Wu](https://arxiv.org/abs/1906.08616).

The relation between the BV $(-1)$-shifted form and the Cauchy CPS $0$-shifted form is extra structure. It must be constructed, as Mathieu--Murray--Schenkel--Teh do explicitly for linear Yang--Mills and Chern--Simons; it should not be inferred from degree counting alone.

## 5. Relative Covariant Phase Space

Let $\Gamma\subset\partial M$ be a boundary component or artificial interface. Introduce separately:

- a boundary-configuration or boundary-history stack $\mathfrak B_\Gamma$;
- a boundary phase stack $\mathfrak P_\Gamma$;
- a projection $c_\Gamma:\mathfrak P_\Gamma\to\mathfrak B_\Gamma$;
- a boundary-data map from regional solutions

$$\begin{align}
r_M:\mathfrak{Sol}(M)\longrightarrow\mathfrak P_\Gamma.
\end{align}$$

For a second-order scalar, $\mathfrak B_\Gamma$ contains the boundary value and $\mathfrak P_\Gamma$ formally contains the value together with its oriented normal momentum. For gauge theories, $\mathfrak P_\Gamma$ must also encode the constraint and gauge data that survive at the boundary.

The composite

$$\begin{align}
\pi_M:=c_\Gamma\circ r_M: \mathfrak{Sol}(M)\longrightarrow\mathfrak B_\Gamma
\end{align}$$

organizes regional solution spaces into a family. Its fiber over a prescribed history $q$ is

$$\begin{align}
\mathfrak{Sol}(M;q) := \mathfrak{Sol}(M) \times^h_{\mathfrak B_\Gamma}
\{q\}.
\end{align}$$

Regional canonical quantization, when it exists, is performed on this fixed-boundary fiber. Allowed tangent vectors are vertical and preserve $q$. The total family over $\mathfrak B_\Gamma$ is not automatically an ordinary symplectic stack.

For an oriented time slab, Stokes' theorem gives the relative conservation law

$$\begin{align}
\Omega_{\Sigma_f}-\Omega_{\Sigma_i} +\int_{\partial_sM}\omega_L=0,
\end{align}$$

with the sign fixed by the boundary orientation. A fixed admissible boundary history makes the pullback of the boundary flux vanish on allowed variations, recovering conservation on each fiber. When the boundary history varies, the same term measures exchange with the boundary rather than a failure of the formalism.

Under suitable regularity and nondegeneracy hypotheses, one would like $r_M$ or the image of $r_M$ to carry a Lagrangian structure relative to $\mathfrak P_\Gamma$. This statement is established in important BV--BFV and mapping-stack settings, but it is only a target for a general Lorentzian hyperbolic theory.

## 6. Action-First Gluing

Suppose

$$\begin{align}
M=M_1\cup_\Gamma M_2
\end{align}$$

with opposite induced orientations on the two copies of $\Gamma$. The correct general order is as follows.

### 6.1 Match Configurations

First form the continuity object

$$\begin{align}
\mathfrak F_{12}^{\mathrm{cont}} := \mathfrak F(M_1) \times^h_{\mathfrak B_\Gamma} \mathfrak F(M_2).
\end{align}$$

In a nongauge scalar theory this often reduces to ordinary equality of boundary values. In a gauge theory the homotopy records the gauge transformation or higher morphism witnessing the match.

### 6.2 Vary the Summed Action

Restrict $S_{M_1}+S_{M_2}$ to $\mathfrak F_{12}^{\mathrm{cont}}$ and then take its critical locus:

$$\begin{align}
\mathfrak{Sol}_{\mathrm{gl}} := \operatorname{Crit}^{\mathrm{der}} \left( (S_{M_1}+S_{M_2}) \big|_{\mathfrak F_{12}^{\mathrm{cont}}} \right).
\end{align}$$

Variation of the common boundary configuration gives the momentum or flux-matching equation. This equation is not part of the initial continuity pullback; it is a dynamical consequence of stationarity.

### 6.3 Rewrite the On-Shell Result

Let

$$\begin{align}
\mathsf a_\Gamma:
\mathfrak P_\Gamma \longrightarrow
\mathfrak P_{\bar\Gamma}
\end{align}$$

reverse the boundary orientation and hence the sign of the oriented momentum. Under well-posedness, trace regularity, smooth reconstruction, and transversality or derived-correctness assumptions, the desired on-shell statement is

$$\begin{align}
\mathfrak{Sol}(M) \overset{?}{\simeq} \mathfrak{Sol}(M_1) \times^h_{\mathfrak P_\Gamma} \mathfrak{Sol}(M_2),
\end{align}$$

where one regional map includes $\mathsf a_\Gamma$. The question mark is essential in the general Lorentzian setting.

In a shifted-symplectic category, a homotopy intersection of Lagrangian morphisms inherits a shifted symplectic structure. PTVV and Calaque establish this mechanism under derived-algebraic or oriented mapping-stack hypotheses. Applying the slogan to an arbitrary infinite-dimensional Lorentzian solution stack requires a separate construction.

## 7. Locality and Associativity

Three associativity statements should be separated.

1. **Field descent:** restriction and gluing of off-shell fields are associative up to the coherence maps of the stack.
2. **Classical dynamical gluing:** repeated critical loci or boundary reductions reconstruct the same global solution object and CPS form.
3. **Quantum gluing:** repeated reduced canonical maps and their quantum lifts agree, possibly up to a metaplectic phase.

Homotopy fiber products are associative up to coherent equivalence, so the first statement is built into the categorical language. The second also needs action additivity, compatible corner terms, trace theorems, and symplectic reduction. The third needs a common regulator and compatible choices of polarization or representation. Categorical associativity alone does not establish either of the latter two statements.

## 8. Gauge Symmetry and Edge Data

Before reduction, the solution object retains gauge directions and the CPS form is presymplectic. If $\operatorname{Sol}_{\mathrm{pre}}(M)$ denotes a presentation before gauge morphisms have been incorporated, the corresponding solution stack may be written

$$\begin{align}
\mathfrak{Sol}(M) \simeq \operatorname{Sol}_{\mathrm{pre}}(M) \mathbin{/{\mkern-6mu/}}^h\mathfrak G(M).
\end{align}$$

If $\mathfrak{Sol}(M)$ already denotes the stack with gauge morphisms, this homotopy quotient is part of its definition and must not be applied again. Obtaining an ordinary physical phase space still requires a justified symplectic reduction or truncation, with the constraint surface, stabilizers, boundary gauge transformations, and regularity hypotheses specified.

Edge data have three possible statuses:

- a witness required by a homotopy boundary condition;
- a genuine charged boundary degree of freedom because some boundary gauge transformations are physical symmetries;
- a redundant variable that disappears after gluing and reduction.

The stack formalism distinguishes these possibilities but does not choose among them automatically. In particular, an artificial cut must not create a physical oscillator merely because the regional presentation uses extra boundary coordinates.

For Maxwell theory, Gauss law and normal electric flux must be resolved before quantization. For gravity, the embedding of the gluing surface, corner symmetries, and allowed versus degenerate diffeomorphisms must be included in the field groupoid before any physical quotient is claimed.

## 9. Canonical Quantization Is an Additional Layer

There is no general quantization functor from arbitrary symplectic stacks to Hilbert spaces. The active canonical route should therefore be appended to the stacky classical package rather than hidden inside it.

At a common finite regulator $N$, the required sequence is

$$\begin{align}
\text{regional fixed-boundary data} \longrightarrow
\text{interface solution and reduction} \longrightarrow
\text{reconstructed global field} \longrightarrow
\Gamma_{\mathrm{global},N}.
\end{align}$$

The classical comparison must produce

$$\begin{align}
S_N:\Gamma_{\mathrm{red},N} \longrightarrow \Gamma_{\mathrm{global},N}, \qquad S_N^{\mathrm T}J S_N=J,
\end{align}$$

and must intertwine the regulated quadratic Hamiltonians. Only then may $S_N$ be lifted to a finite-dimensional metaplectic operator or an equivalent regular CCR representation.

The following claims remain distinct:

1. reconstruction of the classical solution set;
2. equality of the CPS or reduced symplectic structures;
3. a finite-regulator symplectic equivalence;
4. a finite-regulator quantum equivalence;
5. continuum algebraic equivalence;
6. continuum Fock-space unitary equivalence.

The last item requires a Shale--Stinespring or equivalent high-frequency analysis. None of items 2--6 follows from a stacky gluing diagram alone.

## 10. Candidate Definition

A **relative stacky covariant phase-space theory** on $\mathbf{Reg}$ is proposed to consist of:

1. a field higher stack $\mathfrak F$ with spacetime and probe descent;
2. additive regional actions with explicit boundary and corner terms;
3. derived solution stacks $\mathfrak{Sol}^{\mathrm{der}}(M)$;
4. boundary-history stacks $\mathfrak B_\Gamma$ and boundary phase stacks $\mathfrak P_\Gamma$;
5. restriction maps $r_M:\mathfrak{Sol}^{\mathrm{der}}(M)\to\mathfrak P_{\partial M}$ compatible with orientation reversal;
6. Cauchy-transgressed presymplectic forms $\Omega_\Sigma$ satisfying the relative flux law;
7. action-first gluing equivalences compatible with reconstruction and the presymplectic structures;
8. coherent comparison maps for iterated cuts.

This is a classical definition candidate. A **canonically quantizable** relative stacky CPS theory would additionally require a compatible family of finite regulators, reduced symplectic maps, Hamiltonian intertwiners, and a separately controlled continuum limit.

## 11. Minimal Test Ladder

### Level 0: Nongauge Linear Scalar

The field stack is discrete. Test ordinary versus derived fiber products, trace regularity, action-first flux matching, and the Lorentzian analogue of the Cattaneo--Mnev smoothing/weak-equivalence theorem.

### Level 1: Linear Gauge Theory

Use Maxwell theory to test groupoids, Gauss law, boundary gauge transformations, electric flux, possible edge witnesses, and homotopy reduction. Mathieu--Murray--Schenkel--Teh provide a direct comparison model for this level.

### Level 2: Nonlinear Gauge Theory

Replace linear complexes by $L_\infty$ or genuinely derived nonlinear solution stacks. Prove that the boundary and Cauchy structures survive beyond a formal perturbative neighborhood.

### Level 3: Gravity

Include diffeomorphisms, embeddings, corners, and moving interfaces. The main obstruction is not categorical notation but the correct gauge-covariant definition of the regional and glued phase spaces.

At each level, the stacky formulation is useful only if it produces a theorem, a coherence statement, or a calculational simplification unavailable in the direct formulation.

## 12. Claim Boundary

**Verified from primary sources:** derived critical loci and Lagrangian intersections carry shifted symplectic structures under the hypotheses of PTVV; Calaque constructs Lagrangian structures on suitable mapping stacks with boundary; Cattaneo--Mnev--Reshetikhin construct BV--BFV boundary data and classical gluing; Cattaneo--Mnev prove weak-equivalence gluing in specified free examples; Mathieu--Murray--Schenkel--Teh explicitly connect a homotopy boundary condition, a derived critical locus, and a Cauchy unshifted symplectic form for linear Yang--Mills and Chern--Simons.

**Assumptions in the proposed framework:** admissible regions and orientations; finite action; well-defined variational principle; suitable smooth or derived field stacks; trace maps; hyperbolic well-posedness when Lorentzian; support and corner conditions sufficient for Cauchy transgression.

**Not verified:** existence of this complete package for a general Lorentzian field theory; a general Lagrangian theorem for timelike boundary-data maps; equivalence between the action-first critical locus and the boundary-phase homotopy pullback; nonlinear or gravitational gluing; compatibility with finite-regulator canonical quantization; any continuum unitary equivalence.

No CAS calculation can verify these categorical existence statements. Their verification must come from explicit constructions and proofs in successive model classes.
