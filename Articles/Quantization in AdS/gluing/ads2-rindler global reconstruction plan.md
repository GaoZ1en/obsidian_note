# AdS$_2$--Rindler Global Reconstruction Plan

> **Status.** Executable research specification, not a proved reconstruction theorem. The project starts from the exact AdS$_2$--Rindler/null CPS and characteristic-composition presentation and must reconstruct the global free scalar theory without using a finite-$Z$ Neumann regulator, a known global mode expansion, or a known global Hamiltonian matrix as derivation input.
>
> **Baseline scope.** One real free scalar on the universal cover of unit-radius AdS$_2$, signature $(-,+)$, standard reflecting/normalizable boundary condition, and initially $m^2L^2\geq0$ so that no alternate-quantization domain enters the first closure. Restore $L$ when comparing dimensionful frequencies. Extension into the Breitenlohner--Freedman window is a separate task after the standard domain closes.

## 0. Conceptual Gate

Every later calculation must preserve the following distinctions.

1. **Spacelike Cauchy-slice patching $\neq$ timelike feedback gluing $\neq$ null characteristic composition.**

   - Spacelike patching joins regional Cauchy data in the correct Sobolev/energy space and then uses global evolution.
   - Timelike feedback gluing prescribes a boundary history, identifies the two histories, and derives oriented flux matching by varying their common value.
   - Null composition uses characteristic profiles and the null symplectic flux. A null profile and its tangent derivative are not a timelike trace--momentum pair.

2. **Rindler composition does not occur only at the bifurcation point.** The exterior wedges provide outgoing data on four horizon half-rays. The future-horizon outputs of $L$ and $R$ become the two intersecting characteristic inputs for $F$; the past-horizon data similarly determine $P$. The bifurcation point supplies only the codimension-two compatibility/corner datum. The causal structure is

$$\begin{align}
P\longrightarrow(L,R)\longrightarrow F,
\end{align}$$

   not a two-exterior interface condition imposed at one point.

3. **No physical regional tensor factorization may be inferred from a finite-$Z$ Neumann wall.** A finite-$Z$ Neumann basis with a rank-one coupling is not, by itself, a physical factorization into two wedge Hilbert spaces and is not the definition of Rindler gluing. It may be reconsidered only after the exact null construction closes and only if an explicit projection/regulator theorem relates it to that construction.

4. **Spectrum recovery is a terminal checksum, not the definition of gluing.** Matching $\omega_n$ cannot replace the characteristic solution map, the null CPS, the Hamiltonian generator, or the CCR. Nevertheless, this project is not complete until it explicitly recovers the global spectrum from the null/glued presentation.

The required logical spine is

$$\begin{align}
\boxed{ \text{regional wedge dynamics} \longrightarrow
\text{horizon radiation and characteristic composition} \longrightarrow
\Omega_{\rm null} \longrightarrow
H_{\rm global} \longrightarrow
\{\omega_n,\Phi_n\} \longrightarrow
\Delta_{\rm PJ},\ G^+,\ \text{Rindler KMS}.}
\end{align}$$

The standard global answer is allowed only at the final comparison arrows.

## 1. Existing Inputs and Claim Boundary

The following files were compared before this plan was written.

- `formalism.md` is the active action-first timelike boundary-feedback benchmark. Its port history, finite regulator, and symplectic sign convention must not be silently moved onto a null surface.
- `gluing formalism.md` supplies the mature relation-level distinction between classical reconstruction, abstract CCR, dynamics, and B2 state/representation data. It is a frozen proof reference, not a file to expand for this project.
- `rindler scalar.md` supplies the $1+1$-dimensional model of two intersecting null profiles, the common-corner policy, exact Goursat evolution, null CPS, smeared Pauli--Jordan reconstruction, and the separation of B1 from B2.
- `ads-rindler scalar.md` supplies the higher-dimensional AdS--Rindler geometry, radial radiation transform, bifurcation matching, local characteristic composition, matched-image global continuation, and abstract B1. Its proved theorem scope is explicitly $d\geq2$ for AdS$_{d+1}$; it does **not** already prove the AdS$_2$ case $d=1$.
- `rindler notes audit 20260824.md` fixes the cross-note symplectic-sign bridge, weak-versus-strong terminology, and the distinction between local characteristic evolution and global Cauchy continuation.
- `TODO.md` keeps intrinsic wedge/KMS, global reconstruction, algebraic gluing, and Fock equivalence separate. This plan defines a new exact-null reconstruction track without modifying that file.
- `deprecated/ads-rindler gluing.md`, `deprecated/article/appendix_b_global_ads2.md`, `deprecated/numerics/ads_rindler_global_completion.wl`, and `deprecated/numerics/global_ads2_scalar.wl` are comparison material for the later finite-$Z$ audit only. They may not supply $H_{\rm global}$, the global modes, or the spectrum during Tasks A--I.
- `gravitational energy/horizon and inner boundary extension/moving embedding and edge phase space.md` and `article/3_moving_boundary.md` supply a useful bookkeeping lesson: a moving domain is handled by pulling back the complete action and all boundary/corner data, and a presymplectic pullback does not by itself prove Hamiltonian integrability. Their gravitational momenta, counterterms, and edge conclusions are not scalar theorems and must not be transplanted.

Current evidence establishes a matched-domain classical/B1 mechanism in the displayed flat $1+1$ model and in AdS$_{d+1}$ for $d\geq2$. It does not yet establish any of the following for AdS$_2$:

- the global-time action on the characteristic data;
- an integrable $H_{\rm global}$ on the null/glued CPS;
- the global spectrum or modes derived from that Hamiltonian;
- the global vacuum and cross-region correlators derived from the reconstructed positive-frequency split;
- a global-to-Rindler transform derived without first importing global modes.

## 2. Fixed Conventions and the Global-Information Firewall

Use the AdS$_2$ embedding convention

$$\begin{align}
-(X^{-1})^2-(X^0)^2+(X^1)^2=-L^2.
\end{align}$$

For the dimensionless $L=1$ Kruskal chart, begin from

$$\begin{align}
X^{-1}=\frac{1-UV}{1+UV},\qquad X^0=\frac{U+V}{1+UV},\qquad X^1=\frac{V-U}{1+UV},
\end{align}$$

and

$$\begin{align}
ds^2=-\frac{4L^2\,dU\,dV}{(1+UV)^2}.
\end{align}$$

The region signs are

$$\begin{align}
R:(U<0,V>0),\quad L:(U>0,V<0),\quad F:(U>0,V>0),\quad P:(U<0,V<0).
\end{align}$$

The conformal boundary lies at $UV=-1$ in the exterior charts; the bifurcation point is $U=V=0$. Every use of a different Kruskal sign, a different global-time orientation, or a rescaled boost coordinate must begin with a complete conversion table.

For standard quantization define

$$\begin{align}
\Delta=\frac12+\sqrt{\frac14+m^2L^2},\qquad m^2L^2=\Delta(\Delta-1).
\end{align}$$

The following information is forbidden as an input to Tasks A--I:

- the known global expansion in Jacobi/Gegenbauer modes;
- the known diagonal global Hamiltonian or its frequency matrix;
- the known closed global Wightman function;
- the finite-$Z$ Neumann/rank-one spectrum;
- a thermofield-double formula assumed before deriving the global-to-Rindler transform.

Allowed final comparators are the standard global spectrum, standard special-function modes, the invariant closed two-point function, and the old finite-$Z$ calculations. Label every use of them `comparison only`.

## 3. Working Domain and Required Artifacts

Begin on a smooth core $\mathscr D_{\rm sm}$ consisting of real standard-normalizable solutions whose characteristic profiles on the two intersecting horizons are smooth, satisfy the common-corner and conformal-boundary compatibility conditions, and have enough decay/compactified regularity for all integrations by parts. Do not start by claiming an onto theorem for arbitrary independent horizon Hilbert-space data.

The safe continuum target is initially the **canonical matched characteristic image** obtained from compatible regional Cauchy data. A stronger intrinsic horizon-space surjectivity theorem may be attempted later, but its absence does not authorize an unrestricted product of wedge phase spaces.

Future execution should produce, at minimum:

1. an AdS$_2$ specialization note containing the exact geometry, EOM, data spaces, Goursat map, and null CPS;
2. a derivation note for the global isometry action and Hamiltonian on characteristic data;
3. a symbolic verification script for coordinates, Killing vectors, $\mathfrak{sl}(2,\mathbb R)$, Casimir, and mode ODEs;
4. a normalization/correlator script for finite integrals and numerical spot checks;
5. a continuously maintained claim ledger with the statuses `proved`, `conditional`, `symbolic/numerical check`, and `open obstruction`.

No task is closed by prose alone when its decisive formula is symbolically or numerically checkable.

## 4. Tasks

### A. AdS$_2$ Specialization

**Goal.** Close the exact $d=1$ scalar geometry and characteristic theory instead of substituting $d=1$ into a theorem proved only for $d\geq2$.

**Inputs.** `ads-rindler scalar.md` for the AdS geometry/radiation architecture; `rindler scalar.md` for the genuinely $1+1$ null profile, corner, Goursat, and B1 architecture; the action and standard boundary condition fixed above.

**Work.**

1. Derive the AdS$_2$ Rindler and Kruskal charts directly from the embedding. Record the future orientation of each exterior time and the boost normalization.
2. Derive the scalar equation from the action. In the displayed Kruskal convention the result to rederive is

$$\begin{align}
\partial_U\partial_V\phi +\frac{m^2L^2}{(1+UV)^2}\phi=0.
\end{align}$$

3. Define the four horizon half-rays and the affine/logarithmic profile spaces. Keep sharp affine traces, logarithmic radiation classes, and finite characteristic profiles distinct.
4. Define the two-profile Goursat data in $F$,

$$\begin{align}
f(V)=\phi(0,V),\qquad g(U)=\phi(U,0),\qquad f(0)=g(0)=c,
\end{align}$$

   and the analogous data for $P$.
5. Derive the Volterra/Goursat equation and prove local existence, uniqueness, continuous dependence, and compatibility at the corner and conformal endpoints on the declared domain.
6. Pull back the scalar symplectic current to both null surfaces, fix orientations, retain the corner policy, and state precisely whether the completed form is strong, weak, or presymplectic.
7. Construct the characteristic composition map from the two exterior horizon outputs into $F$ and $P$. State separately the local Goursat theorem and any global continuation needed to cover the universal cover.

**Output.** A self-contained AdS$_2$ characteristic solution/CPS theorem on $\mathscr D_{\rm sm}$, followed by the exact completion/domain statement actually proved.

**Forbidden global input.** No global normal modes, global spectral theorem in mode coordinates, global Wightman function, or finite-$Z$ matrix.

**Checks.** Embedding constraint; metric pullback; inverse metric and KG operator; region signs; conformal boundary; horizon orientations; null-flux factors; Volterra residual; corner terms; vanishing standard-boundary symplectic flux.

**Done when.** The AdS$_2$ geometry, characteristic data, Goursat map, and $\Omega_{\rm null}$ are closed with explicit domains and signs, and every borrowed $d\geq2$ statement has either been rederived for $d=1$ or clearly marked unavailable.

### B. Global AdS Time Generator on Null Data

**Goal.** Derive the global-time action intrinsically on the characteristic phase space.

**Inputs.** Task A; the embedding convention in Section 2; the exact characteristic evolution/restriction maps.

**Coordinate derivation.** The candidate vector field is

$$\begin{align}
\boxed{ \xi_{\rm global} =\frac12(1+U^2)\partial_U +\frac12(1+V^2)\partial_V.}
\end{align}$$

It must be derived from

$$\begin{align}
\partial_t=-X^0\partial_{X^{-1}}+X^{-1}\partial_{X^0}
\end{align}$$

for the final embedding convention, not copied from this plan. Recheck its Killing equation, orientation, and normalization. If global time is rescaled, propagate that rescaling into the spectrum and KMS comparison.

**Key obstruction and mechanism.** The vector does not preserve either individual horizon: at $U=0$, $\xi_{\rm global}^U=1/2$, and at $V=0$, $\xi_{\rm global}^V=1/2$. Therefore its action on a horizon profile contains a transverse derivative. With $G_{\mathcal N}$ the characteristic solution map and $\gamma_{\mathcal N}$ the restriction to the two intersecting null surfaces, define first on the smooth core

$$\begin{align}
\boxed{ X_{\rm global} =\gamma_{\mathcal N}\,\mathcal L_{\xi_{\rm global}}\,G_{\mathcal N}.}
\end{align}$$

For example, on $U=0$ the formula must take the form

$$\begin{align}
(X_{\rm global}f)(V) =\frac12\left.\partial_U\phi\right|_{U=0} +\frac12(1+V^2)\partial_Vf(V),
\end{align}$$

where the characteristic equation gives

$$\begin{align}
\partial_V\left(\left.\partial_U\phi\right|_{U=0}\right) =-m^2L^2f(V),
\end{align}$$

and its integration constant is fixed by the other horizon profile/corner jet. Derive the paired formula on $V=0$. This is the expected natural coupling between the two horizon data sets.

**Output.** An explicit, domain-controlled linear vector field on the two-profile characteristic data, including its corner action and the treatment of both $F$ and $P$ data.

**Forbidden global input.** No action of a pre-existing diagonal global Hamiltonian and no global mode expansion.

**Checks.** Embedding derivation; Killing residual; completeness/flow of the vector on the universal cover; preservation of the KG equation and standard boundary domain; compatibility of the two horizon formulas at the corner; agreement between `restrict after Lie derivative` and `reconstruct transverse derivative from the EOM`.

**Done when.** $X_{\rm global}$ maps a declared dense characteristic core to itself, preserves all corner/boundary compatibility conditions, and is expressed entirely in characteristic data without a hidden global-mode coefficient.

### C. Hamiltonian and CPS Derivation

**Goal.** Prove that the induced global-time vector is Hamiltonian on the exact null/glued phase space.

**Inputs.** Tasks A and B; the action-derived scalar symplectic current; the conformal-boundary condition; the moving-embedding bookkeeping principle described in Section 1.

**Work.**

1. Freeze one symplectic convention. If the null convention of `rindler scalar.md` is used,

$$\begin{align}
\Omega_{\rm null}=\int\delta\phi\wedge\delta(\partial_{\rm tan}\phi),
\end{align}$$

   state explicitly that it is the negative of the ordering used in `formalism.md`, and convert the Poisson tensor with it.
2. Compute

$$\begin{align}
\iota_{X_{\rm global}}\Omega_{\rm null}
\end{align}$$

   directly on the characteristic data, retaining endpoint and bifurcation terms.
3. Because $\xi_{\rm global}$ moves a fixed null cut, introduce a scalar moving-embedding formulation rather than dropping the displacement. On a reference null cross $\mathcal N_0$ with embedding $X$, use the pulled-back scalar $X^*\phi$ and

$$\begin{align}
\Delta_X\phi=\delta\phi+\mathcal L_\chi\phi, \qquad \chi=\delta X\circ X^{-1}.
\end{align}$$

   Re-vary the complete scalar action/domain and its conformal-boundary and corner contributions. Do not copy gravitational Brown--York, Hayward, or constraint momenta.
4. Distinguish three statements: existence of the extended presymplectic form; tangency of the symmetry to the allowed domain; integrability of its contraction. A moving-embedding pullback proves neither tangency nor integrability automatically.
5. Find $H_{\rm global}$ such that

$$\begin{align}
\boxed{ \iota_{X_{\rm global}}\Omega_{\rm null}=\delta H_{\rm global}}
\end{align}$$

   on the stated domain. Record any exact corner functional, boundary improvement, reference constant, or restriction needed for integrability.
6. Cross-check the result against the scalar stress-tensor charge only after the null derivation is complete. The stress-tensor integral is a check, not a substitute for the characteristic derivation.

**Output.** A finite, integrable global-time Hamiltonian written in null/glued variables, with its domain, sign/orientation convention, corner terms, and reference constant fixed.

**Forbidden global input.** No known diagonal $H_{\rm global}$, no global oscillators, and no inference from the target spectrum.

**Checks.** Direct variation of the proposed Hamiltonian; antisymmetry and conservation of the null form; cancellation or retention of corner terms; vanishing standard-boundary flux; equality of fixed-cut and embedding-extended descriptions; stress-tensor comparison on a common smooth solution.

**Done when.** The displayed Hamilton equation holds as an identity on a declared dense domain, not merely after inserting one mode or one solution family.

### D. Full $\mathfrak{sl}(2,\mathbb R)$ Structure

**Goal.** Use the complete AdS$_2$ isometry algebra as the analytic backbone for the spectrum and mode reconstruction.

**Inputs.** Tasks A--C and the three embedding-space AdS$_2$ Killing generators.

**Work.**

1. Derive all three Killing fields in $(U,V)$ coordinates from the embedding. Do not infer them by pattern matching.
2. Induce their vector fields on characteristic data by the same `reconstruct, Lie-derive, restrict` operation used in Task B.
3. Derive their Hamiltonians with the same moving-cut/corner prescription used in Task C.
4. Verify the vector-field algebra and the Hamiltonian/Poisson algebra, including whether a boundary constant or cocycle is present and how it is fixed.
5. Choose a basis $L_0,L_\pm$ in which $L_0$ is the correctly normalized compact global-time generator. Verify the adjoint/reality relations on the one-particle space.
6. Compute the scalar quadratic Casimir and fix the sign convention so that the final statement is explicitly one of

$$\begin{align}
C=m^2L^2=\Delta(\Delta-1)
\end{align}$$

   or its conventionally signed equivalent. Do not hide a sign in the definition of $C$.

**Output.** Three explicit null-data charges, their Poisson algebra, a compact/raising/lowering basis, and the scalar Casimir identity.

**Forbidden global input.** No known global mode ladder and no assumption that the representation has lowest weight $\Delta$ before boundary/domain analysis establishes it.

**Checks.** Killing equations; Lie brackets; Hamilton equations for each charge; Poisson brackets; boundary/corner cancellation; Casimir acting on a generic KG solution; Hermiticity/adjoint relations on the reconstructed one-particle domain.

**Done when.** The null/glued characteristic phase space carries the correct Hamiltonian $\mathfrak{sl}(2,\mathbb R)$ action and the Casimir matches the scalar mass under one explicit convention.

### E. Recover the Global Spectrum from the Null/Glued Presentation

**Goal.** Derive the discrete global frequencies without importing the global mode expansion.

**Inputs.** $H_{\rm global}$ from Task C and preferably the $\mathfrak{sl}(2,\mathbb R)$ structure from Task D.

**Primary route.** Establish a positive-energy lowest-weight representation directly from the reconstructed domain:

1. prove that the compact generator is self-adjoint or identify the precise self-adjoint realization used;
2. derive the lowest-weight condition and show that standard normalizability selects the allowed weight;
3. use the Casimir equation to obtain $h(h-1)=m^2L^2$ and standard quantization to select $h=\Delta$;
4. show that repeated raising stays in the physical domain and that no additional tower is missed.

**Independent route.** Solve the eigenproblem

$$\begin{align}
X_{\rm global}\Psi=-i\omega\Psi
\end{align}$$

directly on compatible characteristic data, including both horizon profiles and the corner condition. Use it to check the representation-theoretic route.

**Target.** In dimensionless global time,

$$\begin{align}
\boxed{\omega_n=\Delta+n,\qquad n=0,1,2,\ldots.}
\end{align}$$

If the result appears as $\Delta+2n$ or another spacing, diagnose the missing parity sector, global-time normalization, or incomplete domain before comparing with the standard answer.

**Output.** A theorem deriving the spectrum from $H_{\rm global}$ or the positive-energy $\mathfrak{sl}(2,\mathbb R)$ representation.

**Forbidden global input.** No global Sturm--Liouville spectrum quoted from memory; no finite-$Z$ matrix; no standard Jacobi/Gegenbauer tower.

**Checks.** Lowest-weight normalizability; raising/lowering domain; no missing second branch; direct null eigenproblem; numerical diagonalization only as a check of the analytic result.

**Done when.** The complete discrete tower and its spacing follow from the reconstructed generator, and the standard global spectrum appears only in a final `comparison only` paragraph.

### F. Recover the Full Global Mode Structure

**Goal.** Construct the normalized complete global mode basis as a consequence of the reconstructed generator and symmetry.

**Inputs.** Tasks D and E; the null Goursat map and reconstructed KG form from Task A/C.

**Work.**

1. Solve the lowest-weight equation in characteristic variables, including both horizon profiles and the corner datum.
2. Reconstruct the corresponding bulk solution with the Goursat/global continuation map.
3. Generate higher modes with the raising operator, or solve the $H_{\rm global}$ eigenproblem directly as an independent check.
4. Only after reconstruction, convert the modes to standard global coordinates and compare them with Jacobi/Gegenbauer or equivalent forms.
5. Normalize every positive-frequency mode with the reconstructed KG/null symplectic form before introducing annihilation operators.
6. Prove orthogonality and completeness/resolution of identity in the declared one-particle/energy topology. A list of explicit modes without a completeness argument is not enough.

**Output.** Explicit global modes $\Phi_n$, their characteristic profiles, KG normalization, orthogonality, completeness, and creation/annihilation operators.

**Forbidden global input.** The known global mode function may not be used to guess the lowest-weight solution or its normalization.

**Checks.** KG equation; both AdS boundary conditions; horizon continuation; $L_0$ eigenvalue; raising/lowering coefficients; KG norms; closure relation after smearing; final special-function comparison.

**Done when.** The reconstructed modes form a complete normalized basis of the same symplectic space on which $H_{\rm global}$ was derived.

### G. CCR and Pauli--Jordan Function

**Goal.** Recover the state-independent causal commutator from the reconstructed symplectic theory.

**Inputs.** Tasks A/C and, for the mode route, Task F.

**Work.**

1. Invert the null/glued symplectic form on its Hamiltonian test algebra to obtain the causal bracket after bulk reconstruction.
2. Independently form the antisymmetric mode sum from the normalized reconstructed modes.
3. Prove equality of the two constructions after smearing.
4. Verify antisymmetry, causal support, the KG equation in both arguments, the standard AdS boundary condition, horizon continuation, and the equal-global-time canonical commutator.
5. Keep the statement smeared whenever a sharp horizon or point-field pullback is not defined.

**Output.** The Pauli--Jordan/causal propagator $E_D$ and the Weyl/CCR algebra reconstructed from the characteristic presentation.

**Forbidden global input.** A known Wightman function or a chosen vacuum may not be used to infer the commutator.

**Checks.** Symplectic inverse; mode-sum equality; equal-time jump; boundary flux; causal support; numerical point samples only after the smeared identity is established.

**Done when.** The state-independent commutator follows from the null/glued CPS and agrees with the mode construction under the same sign convention.

### H. Global Vacuum and Correlators

**Goal.** Construct the global state from the reconstructed positive-frequency split and recover its correlators, including cross-region data.

**Inputs.** Tasks C, F, and G.

**Work.**

1. Define the global complex structure/positive-frequency subspace from the positive spectrum of $H_{\rm global}$.
2. Define the quasifree global vacuum from that split. Do not import a closed Wightman function.
3. Sum the reconstructed modes to obtain $G^+(x,x')$ as a distribution.
4. Check explicitly the following placements:

   - $RR$: both points in the right exterior;
   - $RL$: one point in each exterior, retaining the cross covariance;
   - $RF$: one exterior point and one point beyond the future horizon.

5. Verify positivity, the KG equation, standard boundary behavior, the correct antisymmetric part,

$$\begin{align}
G^+(x,x')-G^+(x',x)=iE_D(x,x'),
\end{align}$$

   and the Hadamard short-distance singularity in the established scope.
6. Only then compare with the known invariant closed global AdS$_2$ two-point function.
7. Derive the Feynman, retarded, and advanced kernels from the same Wightman/commutator data and verify consistency with Task G.

**Output.** A reconstructed global vacuum and explicit $RR$, $RL$, and preferably $RF$ correlators, together with the derived propagator family.

**Forbidden global input.** No known closed Wightman kernel as the definition of the state; no choice of cross covariance made merely to force the standard answer.

**Checks.** Mode-sum convergence after smearing; positivity matrices for finite test sets; KG and boundary residuals; commutator identity; cross-horizon analytic continuation; final invariant-kernel comparison.

**Done when.** The global state is fixed by the reconstructed $H_{\rm global}$ and its two-point function supplies the same Pauli--Jordan function as Task G, including nonzero cross-region correlations.

### I. Global-to-Rindler Transform and KMS

**Goal.** Connect the discrete reconstructed global theory to the continuum Rindler radiation theory at the state level.

**Inputs.** Tasks A, F, and H; the intrinsic real-frequency Rindler basis derived in the AdS$_2$ specialization.

**Work.**

1. Derive the AdS$_2$ Rindler continuum modes and normalize both horizon branches with the wedge KG/null flux. Do not use purely ingoing retarded modes as canonical oscillators.
2. Compute the global-to-Rindler transform by KG overlaps on a common Cauchy representation or, equivalently, by characteristic/radiation spectral kernels. Include both field and momentum/characteristic information.
3. Verify the Bogoliubov identities in the continuous spectrum and track all left/right future-time orientation signs.
4. Derive the thermal relation between $\alpha$ and $\beta$ from the analytic continuation of the reconstructed global modes.
5. Prove that the global vacuum restricted to one wedge is KMS for the correctly normalized boost generator. The expected result in dimensionless boost time is

$$\begin{align}
\beta_{\rm boost}=2\pi,
\end{align}$$

   but the surface gravity and boost-time normalization must be checked before this value is asserted.
6. Exhibit the left--right cross covariance. State explicitly that it is B2 data fixed by the global state/analyticity and is not determined by the two regional marginals alone.
7. Formulate the continuum result algebraically or through smeared correlators. A thermofield-double tensor product may be used only as a regulated mnemonic, not as a sharp-wedge factorization theorem.

**Output.** A global$\leftrightarrow$Rindler spectral kernel or Bogoliubov transform, its canonical identities, and a wedge KMS theorem with explicit normalization.

**Forbidden global input.** No assumed Unruh coefficients, thermal occupation numbers, or thermofield-double state before deriving the transform.

**Checks.** KG overlap normalization; completeness kernels; Bogoliubov identities; $\alpha$--$\beta$ thermal factor; KMS strip analyticity/boundary values; occupation number; $RL$ covariance agreement with Task H.

**Done when.** The same reconstructed global vacuum gives both the global correlator and the correctly normalized Rindler KMS restriction.

### J. Comparison with the Finite-$Z$ `ads2_rindler_gluing` Construction

**Dependency gate.** Do not begin this task until A--I are closed or the only remaining A--I gaps have been isolated without using finite-$Z$ evidence.

**Goal.** Decide whether the finite-$Z$ Neumann plus rank-one construction is derived from the exact null/global theory, approximates it in a controlled topology, or is only an independent spectral approximation.

**Inputs.** The exact outputs of A--I and, only now, `deprecated/article/appendix_b_global_ads2.md`, `deprecated/ads-rindler gluing.md`, `deprecated/numerics/global_ads2_scalar.wl`, and `deprecated/numerics/ads_rindler_global_completion.wl`.

**Work.**

1. Identify exactly what $Z$ truncates: global-time half-space modes, wedge radiation data, a stretched-horizon problem, or another projected operator.
2. Construct an explicit projection/inclusion between the exact characteristic/global energy space and the finite-$Z$ variables. A shared spectrum is not such a map.
3. Compare symplectic forms, Hamiltonians, domains, interface variables, and states, not only eigenvalues.
4. If it is a regulator, prove convergence in a stated topology: form/Mosco, strong resolvent, energy dynamics, smeared CCR, or smeared quasifree-state convergence as appropriate.
5. If only a projected approximation is available, state the approximation window and error quantity.
6. If no derivation exists, classify it as an **independent spectral approximation**. Even exact spectral agreement then does not explain Rindler characteristic composition.

**Output.** One of the following explicit verdicts:

- `derived regulator of the exact null construction`;
- `controlled projected approximation, with stated topology and scope`;
- `independent spectral approximation; no Rindler-gluing interpretation proved`.

**Forbidden global input.** Finite-$Z$ eigenvalues, eigenvectors, or fitted couplings may not be used retroactively to supply any missing A--I derivation, choose the exact characteristic domain, or define the global state. They enter only after the exact outputs are fixed.

**Checks.** Projection identities; finite symplectic rank; Hamiltonian matrix elements; spectral convergence; mode and correlator convergence; sensitivity to Neumann-wall and rank-one choices.

**Done when.** The classification is supported by an explicit map and convergence theorem or by a precise obstruction, rather than by spectrum matching alone.

### K. Verification and Audit

**Goal.** Keep proof, symbolic calculation, numerical evidence, and open assumptions separate throughout A--J.

**Inputs.** Every analytic derivation, script, notebook, numerical table, and comparison artifact produced in A--J, together with the fixed convention table and the live claim ledger.

**Checks.** Run the following independent checks rather than relying on one derivation path.

| object | required check |
|---|---|
| embedding and coordinates | hyperboloid constraint, metric pullback, inverse map, regions, boundary, orientation |
| Killing fields | Killing equation, embedding action, Lie brackets, flow normalization |
| scalar equation | action variation, Kruskal/global forms, characteristic restriction |
| null CPS | current pullback, orientation, corner terms, conservation, degeneracy/domain |
| moving cut | complete scalar domain variation, embedding term, corner transgression, integrability |
| $\mathfrak{sl}(2,\mathbb R)$ | vector-field algebra, charge algebra, Casimir, adjoints |
| spectrum and modes | eigen-ODE/PDE residuals, lowest weight, ladder coefficients, boundary conditions |
| normalization/completeness | KG products, closure relation after smearing, spectral measure |
| CCR | symplectic inverse, Pauli--Jordan sign, equal-time commutator |
| correlators | KG/boundary equations, positivity, antisymmetric part, cross-region continuation |
| Bogoliubov/KMS | overlap integrals, canonical identities, thermal factor, KMS boundary values |
| finite-$Z$ comparison | projection, form/operator convergence, smeared observables, regulator dependence |

**Output.** A reproducible audit package containing the claim ledger, convention manifest, executable checks with recorded versions/precision, failure logs, and a map from each minimum-closure claim to its proof or bounded evidence.

**Forbidden global input.** A known global formula may be used only as a labeled final comparator. It may not replace a missing derivation, and discrepancies may not be tuned away by changing signs, periods, domains, or normalizations without recording the change and rerunning upstream checks.

Use Mathematica for coordinate identities, Killing vectors, Lie brackets, Casimir algebra, special-function equations, normalization integrals, Bogoliubov identities, and KMS identities. SymPy may provide an independent second implementation for low-complexity coordinate and ODE checks. Numerical checks must use declared precision, parameters, cutoffs, and residual norms.

Every durable claim must enter the ledger in this format:

| ID | claim | status | assumptions/domain | evidence | blocker/next check |
|---|---|---|---|---|---|
| example | $\iota_X\Omega=\delta H$ on $\mathscr D_{\rm sm}$ | proved / conditional / symbolic check / open obstruction | exact domain | equation/theorem/script | next missing step |

Rules:

- A zero symbolic residual verifies the displayed algebraic identity, not the analytic domain theorem.
- Finite numerical spectra do not prove completeness, continuum CCR, or KMS.
- A mode sum reproducing a closed kernel does not independently prove positivity or the underlying characteristic surjectivity.
- Any imported theorem must be matched hypothesis by hypothesis to the AdS$_2$ domain actually used.

**Done when.** Every durable statement in A--J has exactly one current ledger status, every `proved` claim points to a readable derivation with all hypotheses, every computational check is reproducible, and every unmet item in the six-part minimum closure is explicitly marked as an open blocker rather than silently inferred.

## 5. Minimum Closed-Loop Completion Standard

The project is minimally complete only when all six items below are obtained in one consistent convention and domain:

1. $H_{\rm global}$ on the null/glued CPS, with integrability and corner terms settled;
2. the global spectrum derived from that Hamiltonian or its $\mathfrak{sl}(2,\mathbb R)$ representation;
3. global mode functions with KG normalization, orthogonality, and completeness;
4. the Pauli--Jordan function and CCR reconstructed state-independently;
5. the global Wightman function, including an explicit cross-region correlator;
6. the global$\leftrightarrow$Rindler transform or an equivalent Rindler KMS derivation.

The one-particle thermal trace/character

$$\begin{align}
Z_1(\beta)=\sum_{n\geq0}e^{-\beta(\Delta+n)} =\frac{e^{-\beta\Delta}}{1-e^{-\beta}}
\end{align}$$

is only a corollary of the spectrum. If the normal-ordered bosonic Fock partition function is ever wanted, it is likewise fixed by the same spectrum,

$$\begin{align}
Z_{\rm Fock}(\beta)=\prod_{n\geq0} \left(1-e^{-\beta(\Delta+n)}\right)^{-1}.
\end{align}$$

Neither quantity counts as an independent verification.

## 6. Execution Order and Blocker Graph

Task A is preparatory closure. The first two genuinely new physical steps are B and C:

$$\begin{align}
\boxed{ \text{global symmetry on characteristic data} \quad\text{and}\quad \text{Hamiltonian from the null CPS}.}
\end{align}$$

The spectrum, modes, CCR, correlators, and KMS structure should then follow as consequences rather than independent guesses.

Recommended order:

1. **Convention freeze and Task A.** Close AdS$_2$ geometry, domains, Goursat evolution, and $\Omega_{\rm null}$.
2. **Task B.** Derive $X_{\rm global}$, especially the coupled transverse-derivative reconstruction.
3. **Task C.** Solve the moving-cut and Hamiltonian-integrability problem. Do not proceed to spectrum claims if this fails.
4. **Task D.** Build the full $\mathfrak{sl}(2,\mathbb R)$ action and Casimir.
5. **Tasks E and F.** Recover spectrum first, then complete normalized modes.
6. **Task G.** Recover state-independent CCR/Pauli--Jordan.
7. **Task H.** Select the global vacuum from $H_{\rm global}$ and compute correlators.
8. **Task I.** Derive the global-to-Rindler transform and KMS restriction.
9. **Task J.** Audit finite-$Z$ only after the exact chain is available.
10. **Task K.** Run continuously, with a final independent audit of the complete chain.

Blocker graph:

```text
A: AdS2 exact characteristic theory
│
├──> B: global-time action on null data
│     │
│     └──> C: integrable H_global from Omega_null
│            │
│            ├──> D: sl(2,R) charges/Casimir
│            │      │
│            │      └──> E: spectrum
│            │             │
│            │             └──> F: full normalized modes/completeness
│            │                    ├──> G: Pauli-Jordan/CCR
│            │                    └──> H: global vacuum/correlators
│            │                           │
│            │                           └──> I: global-Rindler/KMS
│            │
│            └──> G can also be derived directly from the symplectic inverse
│
└──> J: finite-Z classification requires the completed A-I chain

K: verification and claim ledger runs across every node.
```

Hard blockers and allowed responses:

- If $X_{\rm global}$ does not preserve the fixed-profile domain, enlarge to the correctly pulled-back embedding-extended domain; do not project away the transverse term.
- If $\iota_X\Omega$ is not integrable, identify the exact boundary/corner obstruction or domain restriction. Do not define $H_{\rm global}$ spectrally to bypass it.
- If arbitrary compatible horizon data are not known to be onto, remain on the canonical matched image and state that limitation. Do not replace it by unrestricted wedge data.
- If the $\mathfrak{sl}(2,\mathbb R)$ charges fail to share a common invariant domain, the representation-theoretic spectrum proof is blocked; use the direct null eigenproblem only after documenting this failure.
- If the global-to-Rindler transform is only formal, state the smeared/algebraic KMS result actually proved and do not claim a sharp product-Fock unitary.
- If finite-$Z$ has no explicit projection from the exact construction, downgrade it to an independent spectral approximation.

## 7. Initial Claim Ledger

| ID | claim | status | assumptions/domain | evidence | blocker/next check |
|---|---|---|---|---|---|
| P0 | Spacelike patching, timelike feedback, and null characteristic composition are distinct operations | proved in the cited existing scopes | existing active and Rindler notes | direct comparison of definitions and flux data | preserve throughout |
| P1 | The bifurcation locus supplies corner compatibility, while horizon outputs supply the two characteristic inputs | proved in the cited matched/local scopes | smooth/energy domains of existing Rindler notes | Goursat and bifurcation theorems there | reclose for AdS$_2$ in A |
| P2 | `ads-rindler scalar.md` already covers AdS$_2$ | false | its standing hypothesis is $d\geq2$ | source scope statement | Task A required |
| P3 | In the displayed AdS$_2$ embedding convention, $\xi_{\rm global}=\frac12(1+U^2)\partial_U+\frac12(1+V^2)\partial_V$ | symbolic check | $L=1$ coordinate convention in Section 2 | exact embedding-action and Killing residuals vanish | rederive in B under final convention |
| P4 | The displayed Kruskal KG equation is correct | symbolic check | scalar, displayed metric | exact inverse-metric computation | rederive from action in A |
| P5 | $H_{\rm global}$ exists and is integrable on the AdS$_2$ null/glued CPS | open | domain not yet fixed | none | Tasks B--C |
| P6 | The null/glued presentation yields $\omega_n=\Delta+n$ | open | depends on P5 and common domain | none admissible yet | Tasks D--E |
| P7 | The reconstructed modes are complete and reproduce CCR/correlators | open | depends on P5--P6 | none admissible yet | Tasks F--H |
| P8 | The reconstructed global vacuum is Rindler KMS with $\beta=2\pi$ | open | boost normalization and transform not yet derived | existing higher-dimensional/old comparison only | Task I |
| P9 | The finite-$Z$ Neumann/rank-one system is a regulator of exact null composition | open | no projection/convergence map established | spectral comparison only | Task J |

## Verified

- The directly relevant active, audit, deprecated comparison, and moving-embedding files listed in Section 1 were inspected before this specification was written.
- For the displayed embedding convention, an independent exact Mathematica check returned zero for the hyperboloid constraint, the three residuals comparing the candidate vector with $\partial_t=-X^0\partial_{X^{-1}}+X^{-1}\partial_{X^0}$, and every component of $\mathcal L_{\xi_{\rm global}}g$. At $U=V=0$, the vector has components $(1/2,1/2)$ and gives $\xi_{\rm global}X^0=1$, fixing the stated normalization.
- An independent exact inverse-metric calculation gave

$$\begin{align}
\Box\phi=-\frac{(1+UV)^2}{L^2}\partial_U\partial_V\phi,
\end{align}$$

  and hence the displayed Kruskal KG equation and horizon transverse-derivative relation.

## Assumptions

- Universal-cover AdS$_2$, signature $(-,+)$, the displayed embedding/Kruskal chart, and standard reflecting quantization.
- The first closure uses $m^2L^2\geq0$. Alternate quantization and the negative BF window are outside this plan's minimal completion standard.
- Characteristic calculations begin on a smooth compatible core and are extended only in topologies for which a theorem is actually proved.

## Not Verified

- No Hamiltonian, $\mathfrak{sl}(2,\mathbb R)$ charge algebra, spectrum, mode completeness, Pauli--Jordan function, global vacuum, cross-region correlator, Bogoliubov transform, or KMS theorem has been derived by this planning file.
- No arbitrary-horizon surjectivity theorem or sharp-wedge tensor-product/Fock equivalence is assumed.
- No relation between the finite-$Z$ Neumann/rank-one construction and the exact null theory has been established.
