# Independent quantum divergence and semidensity analysis of the actual geometric–CS isotopy

## 0. Conclusions and status

**The exact finite-cell BV divergence is not zero.** With the right-action generator in the question, put

\[
F=e_0^{-1}f,\qquad H_t=1+tF,\qquad B_t=H_t^{-1},\qquad \chi_t=B_t\xi.
\]

At an oriented, unit-weight canonical cell,

\[
\boxed{\Delta_{\mathrm{BV},0}\Gamma_t
=-\operatorname{tr}(B_tF)
+\frac{t}{\kappa}\operatorname{tr}\!\left[B_t e_0^{-1}(\iota_{\chi_t}W)\right].}
\tag{0.1}
\]

The second term is a genuine ghost–physical-antifield term. No term involving \(E,R,T,\eta,w\) survives the differentiation. The complete exact map nevertheless has the purely physical semidensity coefficient

\[
\boxed{j_t=(\operatorname{Ber}D\Phi_t)^{1/2}=\det(1+tF)^{-1}.}
\tag{0.2}
\]

There is no contradiction: its **source-side** evolution includes a convective term,

\[
\partial_t\log j_t=(\log j_t,\Gamma_t)+\Delta_{\mathrm{BV},0}\Gamma_t,
\qquad
(\log j_t,\Gamma_t)
=-\frac{t}{\kappa}\operatorname{tr}[B_t e_0^{-1}(\iota_{\chi_t}W)].
\tag{0.3}
\]

For the Euclidean source half-density \(\psi_t\sqrt{Dz}=\Phi_t^*(e^{-S_{\rm CS}/\hbar}\sqrt{DZ})\),

\[
\psi_t=j_t e^{-S_t/\hbar},\quad
\partial_t\psi_t=(\psi_t,\Gamma_t)+(\Delta_{\mathrm{BV},0}\Gamma_t)\psi_t,
\quad
\widehat S_t=S_t+\hbar\log\det(1+tF),
\]
\[
\boxed{\partial_t\widehat S_t=(\widehat S_t,\Gamma_t)-\hbar\Delta_{\mathrm{BV},0}\Gamma_t.}
\tag{0.4}
\]

**These finite-cell statements do not directly define quantum transport on the complete-manifold domain.** Three explicit obstructions are established below:

1. A uniformly small \(H^\infty\cap L^2\) coframe perturbation on \(\mathbb H^3\) can make the regulated divergence infinite for every positive heat time; \(L^2\) is not \(L^1\).
2. Even for compactly supported coefficients, the actual degree-one and degree-zero Hodge heat kernels do not reproduce the finite-cell semidensity cancellation at fixed regulator. Their first heat coefficients give an explicit nonzero defect.
3. A local full heat finite part vanishes in dimension three, but its UV-subtracted counterpart is minus the retained trace, generally nonzero. A compressed determinant differs from a local logarithmic insertion by a positive leakage term already at second order.

The finite-cell algebra and mixed-Jacobian cancellation have 16 exact checks using a fresh **custom bitmask exterior algebra over native Sage rational functions**, not Sage's `ExteriorAlgebra` implementation. Ten separate Wolfram groups verify the actual first-heat-coefficient contractions, a compression fixture, and the radial integrability threshold. All passed, without reported warnings or errors. No QME or continuum BV-Stokes theorem is inferred from a vanishing finite part.

## 1. Sources, independence, and conventions

The exact map, source direction, and canonical convention were read from [note 19, §§1–2](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L31-L187>). The actual full complete-manifold operators were read from [note 18, §§1–3](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L27-L222>). Their Sobolev domains were read from [note 18, §5](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L335-L376>).

The divergence (0.1) was derived directly before reading the density result in [note 16, §5](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L326-L379>). That density result was subsequently used as a check, not as the divergence computation. The mixed-Jacobian argument was also recomputed independently and verified in a newly written exterior-algebra implementation. No existing review implementation was imported. Parent notes and frozen evidence were not modified.

The manifold is the fixed complete \(\mathbb H^3\) background, or the marked cyclic quotient of the premises, with curvature radius one. The internal metric is \(\delta_{ab}\), \(\epsilon_{123}=1\), and \(\kappa=2a>0\). The fixed ghost identification is \(\xi=e_0^{-1}\zeta\). Work on the component of the nondegenerate-coframe patch with \(\det H_t>0\) for \(0\le t\le1\), so the square-root branch is fixed by \(j_0=1\). Formal statements only need invertibility of \(H_t\).

At a point choose an oriented background orthonormal frame so \(e_0{}^a{}_\mu=\delta^a_\mu\). Let

\[
\mathrm{vol}=dx^1dx^2dx^3,\quad
\beta_\mu=\iota_{\partial_\mu}\mathrm{vol},\quad
E_a=E_a{}^\mu\beta_\mu,\quad W_a=W_a{}^\mu\beta_\mu.
\]

The canonical coordinates are \((f^a{}_\mu,E_a{}^\mu)\), \((w^a{}_\mu,W_a{}^\mu)\), \((\eta^a,R_a)\), and \((\zeta^a,T_a)\). Here \(R_a,T_a\) denote coefficients of their top forms. Physical fields are even, physical antifields and ghosts are odd, and ghost antifields are even. Coefficients commute with ordinary \(dx\)'s. The BV Laplacian is

\[
\Delta_{\mathrm{BV},0}=
\sum_{a,\mu}\left(\partial_{f^a{}_\mu}\partial_{l,E_a{}^\mu}
+\partial_{w^a{}_\mu}\partial_{l,W_a{}^\mu}\right)
-\sum_a\left(\partial_{l,\eta^a}\partial_{R_a}
+\partial_{l,\zeta^a}\partial_{T_a}\right).
\tag{1.1}
\]

This generates the specified antibracket \((q,p)=1\). Write \(X_t A=(A,\Gamma_t)\); \(X_t\) is even and \(\operatorname{div}_0X_t=2\Delta_{\mathrm{BV},0}\Gamma_t\). It is the source vector field \((D\Phi_t)^{-1}\partial_t\Phi_t\), not the target velocity. In particular, it is not correct to integrate \(\partial_t\log j_t=\Delta\Gamma_t\) at fixed source coordinates while omitting the convective term.

For non-unit cell volume \(v\), canonical antifields are integrated momenta, not unintegrated density coefficients. The two-physical-antifield coefficient in the cell generator is \(1/(\kappa v)\), whereas the ghost-antifield terms retain unit coefficient. Formula (0.1) then has \(t/(\kappa v)\) multiplying the integrated \(W\). Equivalently it has \(t/\kappa\) multiplying the continuum coefficient \(W/v\). A sum of cell divergences is not an ordinary spacetime integral without the coincident-mode trace.

## 2. Direct differentiation, including the odd signs

Suppress the subscript \(t\). The generator density at the normalized cell is

\[
\Gamma=R_a\chi^\mu w^a{}_\mu+T_a\chi^\mu f^a{}_\mu
+\kappa^{-1}\epsilon_{\sigma\nu\mu}W_a{}^\mu\chi^\nu E_a{}^\sigma.
\tag{2.1}
\]

The last coefficient ordering follows from
\(\beta_\mu\wedge\iota_{\partial_\nu}\beta_\sigma
=\epsilon_{\sigma\nu\mu}\mathrm{vol}\).
In particular \(W\chi=-\chi W\). The elementary derivatives are

\[
\frac{\partial\chi^\nu}{\partial f^a{}_\mu}=-tB^\nu{}_a\chi^\mu,
\qquad
\frac{\partial_l\chi^\mu}{\partial\zeta^a}=B^\mu{}_a.
\tag{2.2}
\]

The \((\zeta,T)\) contraction gives

\[
-\sum_a\partial_{l,\zeta^a}\partial_{T_a}\Gamma
=-\sum_{a,\mu}B^\mu{}_a f^a{}_\mu=-\operatorname{tr}(BF).
\tag{2.3}
\]

For the physical pair,

\[
\partial_{l,E_a{}^\mu}\Gamma
=\kappa^{-1}\chi^\nu W_a{}^\rho\epsilon_{\rho\nu\mu}
=\kappa^{-1}(\iota_\chi W)^a{}_\mu.
\]

Thus

\[
\begin{aligned}
\sum_{a,\mu}\partial_{f^a{}_\mu}\partial_{l,E_a{}^\mu}\Gamma
&=-\frac{t}{\kappa}\sum_{a,\mu,\nu,\rho}
 B^\nu{}_a\chi^\mu W_a{}^\rho\epsilon_{\rho\nu\mu}\\
&=\frac{t}{\kappa}\sum_{a,\mu,\nu,\rho}
 \chi^\mu B^\nu{}_a W_a{}^\rho\epsilon_{\mu\nu\rho}\\
&=\frac{t}{\kappa}\operatorname{tr}[B e_0^{-1}(\iota_\chi W)].
\end{aligned}
\tag{2.4}
\]

The \((w,W)\) contraction vanishes because \(\partial_W\Gamma\) has no \(w\). The \((\eta,R)\) contraction vanishes because \(\Gamma\) has no \(\eta\). These are all the canonical pairs, proving (0.1), not merely its antifield-zero restriction.

Useful limits and nonzero tests are

\[
\Delta_{\mathrm{BV},0}\Gamma_0=-\operatorname{tr}F,
\]
\[
\Delta_{\mathrm{BV},0}\Gamma_t=-\operatorname{tr}F+t\operatorname{tr}F^2
+\frac{t}{\kappa}\operatorname{tr}[e_0^{-1}(\iota_\xi W)]+O(t^2),
\]
\[
\left.\Delta_{\mathrm{BV},0}\Gamma_t\right|_{F=0}
=\frac{t}{\kappa}\epsilon_{\mu a\rho}\zeta^\mu W_a{}^\rho.
\tag{2.5}
\]

For example, keeping only \(\zeta^1\) and \(W_2{}^3\) in the last expression gives \(t\zeta^1W_2{}^3/\kappa\ne0\). Although the generator itself can vanish on a coordinate submanifold, differentiation before restriction need not vanish there. The isolated two-antifield bridge is not the actual generator: its omission of the ghost-lift terms would already miss (2.3).

## 3. The exact semidensity and Euclidean evolution

### 3.1 Independent mixed-Jacobian computation

At fixed new momenta, the relative type-II generator gives

\[
\begin{aligned}
f_t&=f+\frac{t}{\kappa}iP_W+\frac{t^2}{2\kappa}i^2P_R,\\
w_t&=w+\frac{t}{\kappa}iP_E+\frac{t^2}{2\kappa}i^2P_T,\\
\tau_t&=\zeta+tif+\frac{t^2}{2\kappa}i^2P_W+\frac{t^3}{3\kappa}i^3P_R,\\
\rho_t&=\eta+tiw+\frac{t^2}{2\kappa}i^2P_E+\frac{t^3}{3\kappa}i^3P_T.
\end{aligned}
\tag{3.1}
\]

Here \(i=\iota_\xi\). These are fixed-new-momentum formulas, so the signs of the \(i^2\) terms differ from the explicit old-momentum formulas after solving the canonical graph. Mixing the two forms of the map would give an incorrect Jacobian.

For coefficient-left coordinate differentials, the mixed base Jacobian uses right derivatives. Its even–odd block is minus the left derivative of the even outputs with respect to the odd inputs. Its even–even block is the identity. The ghost Schur complement is

\[
D-CA^{-1}B=
\begin{pmatrix}
1&twe_0^{-1}\\0&1+tfe_0^{-1}
\end{pmatrix}.
\tag{3.2}
\]

The terms obtained by differentiating \(i^2P\) and \(i^3P\) in the ghost outputs cancel the products of the \(t\xi\) field-derivative block with the right odd derivatives of the physical outputs. This cancellation uses both coefficients \(1/2\) and \(1/3\) in (3.1), the sign of the even–odd right derivative, and all antifield terms. The new exact script constructs the forms, contracts them repeatedly with \(\xi\), and checks all 36 Schur entries over the rational function field in generic physical coordinates and even ghost antifields.

For an odd type-II graph, the momentum mixed Jacobian has reciprocal Berezinian to the base mixed Jacobian, because the momentum parities are reversed. Factoring the full transformation through \((q,P)\) therefore gives

\[
\operatorname{Ber}D\Phi_t=(\operatorname{Ber}M_t)^2
=\det(1+tF)^{-2}.
\tag{3.3}
\]

This establishes (0.2), including the absence of nilpotent factors, independently of solving a differential equation for the Jacobian.

### 3.2 Source evolution and its sign

The exact map satisfies \(\partial_t\Phi_t^*A=(\Phi_t^*A,\Gamma_t)\). Pullback of half-densities uses the half Lie derivative,

\[
\partial_t\psi_t=X_t\psi_t+\tfrac12\operatorname{div}_0X_t\,\psi_t.
\tag{3.4}
\]

Since \(X_tf=\kappa^{-1}\iota_{\chi_t}W\), Jacobi's determinant identity yields

\[
\partial_t\log j_t=-\operatorname{tr}(B_tF),\qquad
X_t\log j_t=-\frac{t}{\kappa}\operatorname{tr}[B_t e_0^{-1}(\iota_{\chi_t}W)].
\tag{3.5}
\]

Equations (0.1) and (3.5) give (0.3) exactly. The Sage calculation verifies the rational form
\(\partial_t j_t-X_tj_t-j_t\Delta\Gamma_t=0\), without differentiating a formal logarithm.

With \(S_t=\Phi_t^*S_{\rm CS}\), the sign in (0.4) follows immediately. On finitely many cells, the logarithm is summed over cells. A continuum expression requires a trace prescription and cannot be inferred simply by replacing that sum with an integral.

The intrinsic BV operator on half-densities is natural under finite-dimensional canonical maps. Therefore, **if** the target half-density satisfies the finite-dimensional QME, its exact pullback does too. In a flat Darboux chart the target condition is

\[
\Delta_{\mathrm{BV},0}e^{-S/\hbar}=0
\quad\Longleftrightarrow\quad
\tfrac12(S,S)-\hbar\Delta_{\mathrm{BV},0}S=0.
\tag{3.6}
\]

The source transport can also be written
\(\partial_t\psi=\Delta(\Gamma\psi)+\Gamma\Delta\psi\).
This is conditional on a well-defined target QME and the ordinary finite canonical BV operator. It does not establish such a condition for the continuum regulator.

## 4. What the actual complete-manifold heat contraction inserts

Let \(\varepsilon>0\) denote heat time, not an odd coefficient. The fixed complete Hodge operator has the actual blocks

\[
\Delta_0=R_1\oplus R_1,\qquad
\Delta_1=R_K\oplus R_K,\qquad
R_1=\nabla^*\nabla+2,\qquad
R_K=\nabla^*\nabla+2\mathsf T,
\]
\[
\mathsf T(Y)=1\operatorname{tr}Y-Y^T,
\qquad \Delta_2=\mathcal H_1\Delta_1\mathcal H_2,\qquad
\Delta_3=\mathcal H_0\Delta_0\mathcal H_3.
\tag{4.1}
\]

Here \(\mathcal H_p=S_{\rm int}*:E^p\to E^{3-p}\) is the pairing-duality operator, not the coframe matrix \(H_t\). The fiber ranks are \((6,18,18,6)\). The paired adjoint blocks do not mean that degree-zero and degree-one heat kernels coincide. Neither internal copy has been discarded: the generator's corresponding diagonal derivatives in one copy happen to vanish.

The two nonzero diagonal multiplication insertions in the regulated BV contraction are

\[
\mathcal A_t(u)=-\frac{t}{\kappa}\iota_{B_te_0^{-1}(u)\chi_t}W,
\qquad u\in T^*M\otimes\mathbb R^3,
\]
\[
\mathcal C_t=fB_te_0^{-1}:\mathbb R^3\longrightarrow\mathbb R^3.
\tag{4.2}
\]

The first is the derivative of \(X_tf\) with respect to \(f\); the second is the derivative of \(X_t\zeta\) with respect to \(\zeta\). There are off-diagonal derivatives from \(f\) to \(w\) and from \(\zeta\) to \(\eta\), but the actual heat blocks in (4.1) are diagonal in the two copies, so these do not contribute to this trace. The correct local heat insertion is

\[
\boxed{\Delta_\varepsilon\Gamma_t
=\operatorname{Tr}_{9}(e^{-\varepsilon R_K}M_{\mathcal A_t})
-\operatorname{Tr}_{3}(e^{-\varepsilon R_1}M_{\mathcal C_t}).}
\tag{4.3}
\]

Here the traces are coefficientwise localized/sandwiched traces whenever defined. For example, use \(e^{-\varepsilon\Delta/2}M_Ae^{-\varepsilon\Delta/2}\) or its diagonal-kernel integral. Smooth compact support suffices. For merely integrable bounded matrix coefficients, the sandwich definition is the safe statement; one should not assert one-sided trace-classness without the needed hypotheses.

The fiber traces of (4.2) reproduce (0.1), but (4.3) is **not** obtained by placing a single scalar heat weight in front of the already-contracted expression (0.1). It is also not a compressed determinant. A fixed heat contraction generates a regulator-deformed antibracket, rather than automatically retaining the unregulated one under arbitrary nonlinear canonical changes. Pairing of the regulator is necessary for a clean free splitting, but does not make all multiplication blocks commute with it.

## 5. A compact-support fixed-heat semidensity defect using the actual potentials

Consider the natural but unproved prescription

\[
J_\varepsilon(f)=-\operatorname{Tr}_3\bigl(e^{-\varepsilon R_1}M_{\log(1+tfe_0^{-1})}\bigr).
\tag{5.1}
\]

This is a local heat insertion of the finite-cell logarithm. It is not the definition of a determinant of a compressed operator. Even on compact support it fails the exact source evolution at fixed \(\varepsilon\).

At \(F=0\), set \(A=\mathcal A_t\). In an orthonormal frame,

\[
A_{a\mu,b\sigma}=-\frac{t}{\kappa}\epsilon_{\rho b\mu}\zeta^\sigma W_a{}^\rho,
\qquad \operatorname{tr}(\mathsf T A)=-\operatorname{tr}A.
\tag{5.2}
\]

For a Laplace-type operator \(\nabla^*\nabla+V\), the first heat coefficient is \(a_1=\mathrm{Scal}/6-V\). Since \(\mathrm{Scal}=-6\), the **actual** potentials in (4.1) give

\[
a_{1,\rm phys}=-1-2\mathsf T,\qquad a_{1,\rm ghost}=-3.
\tag{5.3}
\]

Consequently \(\operatorname{tr}(a_{1,\rm phys}A)=\operatorname{tr}A\), whereas the ghost coefficient multiplying the variation of (5.1) is \(-3\). At \(F=0\), \(\partial_tJ_\varepsilon=0\), and

\[
\boxed{
X_tJ_\varepsilon+\Delta_\varepsilon\Gamma_t-\partial_tJ_\varepsilon
=(4\pi\varepsilon)^{-3/2}
\left[4\varepsilon\int_M\operatorname{tr}A\,dV+O(\varepsilon^2)\right].}
\tag{5.4}
\]

The leading \(\varepsilon^{-3/2}\) terms cancel, as required by the finite-cell principal-symbol calculation. The subleading \(\varepsilon^{-1/2}\) term generally does not. Choose \(\zeta^1=\theta u\), \(W_2{}^3=\vartheta v\), with independent odd generators \(\theta,\vartheta\), smooth compactly supported ordinary \(u,v\), and \(\int uv\ne0\). Then \(\int\operatorname{tr}A=(t/\kappa)\theta\vartheta\int uv\ne0\).

This is an obstruction to **that fixed-regulator identification**, not a theorem forbidding corrected transport, transported regulators, or a renormalized quantum theory. Counterterms or a genuine regulated BV construction would have to be supplied. The calculation uses the actual lower-order potentials, not just a shared scalar principal symbol.

## 6. A valid restricted heat theorem, and full versus UV-subtracted traces

**Restricted theorem.** Fix the stated complete background, fixed \(\Lambda\), and fixed smooth compactly supported matrix multiplication insertions \(A_p\), coefficientwise in the formal ghost algebra. Let \(\Delta_p\) be the actual full gapped Laplace-type blocks, \(P_p=1_{[0,\Lambda^2]}(\Delta_p)\), and \(R_{\Lambda,p}=1-P_p\). Then

\[
\operatorname{Tr}(M_{A_p}e^{-\varepsilon\Delta_p})
\sim (4\pi\varepsilon)^{-3/2}\sum_{j\ge0}\varepsilon^j
\int_M\operatorname{tr}(A_p a_{j,p})\,dV.
\tag{6.1}
\]

The integral is a localized trace; there is no boundary and the compact support makes the local expansion integrable. Thus its small-heat-time constant coefficient is zero. The assertion is about multiplication insertions independent of \(\varepsilon\), not arbitrary determinants, nonlocal operators, or field-dependent regulators.

The localized band compression \(P_pM_{A_p}P_p\) is trace class. A proof factors through \(|A_p|^{1/2}P_p\), which is Hilbert–Schmidt because the fixed-band diagonal kernel is locally bounded. Since \(\Delta_pP_p\) is bounded by \(\Lambda^2\), its heat trace is analytic at zero. Therefore

\[
\begin{aligned}
\operatorname{Tr}(M_{A_p}R_{\Lambda,p}e^{-\varepsilon\Delta_p})
&=\operatorname{Tr}(M_{A_p}e^{-\varepsilon\Delta_p})
-\operatorname{Tr}(P_pM_{A_p}P_pe^{-\varepsilon\Delta_p}),\\
\boxed{\operatorname{FP}_{\varepsilon\downarrow0}
\operatorname{Tr}(M_{A_p}R_{\Lambda,p}e^{-\varepsilon\Delta_p})
&=-\operatorname{Tr}(P_pM_{A_p}P_p).}
\end{aligned}
\tag{6.2}
\]

For the actual divergence, the signs in (4.3) are retained:

\[
\operatorname{FP}\Delta_{\varepsilon,R}\Gamma_t
=-\operatorname{Tr}(P_1M_{\mathcal A_t}P_1)
+\operatorname{Tr}(P_0M_{\mathcal C_t}P_0).
\tag{6.3}
\]

Here \(P_1\) denotes the relevant rank-nine physical copy and \(P_0\) the relevant rank-three translation-ghost copy. Equivalently (6.3) is minus the retained BV divergence of the restricted generator, when that contraction is defined; it is not the divergence of the tree-transferred generator without further work.

A concrete nonzero example is \(t=0\), \(f=h e_0\), \(h\ge0\) smooth compact support. Then \(\mathcal A_0=0\), \(\mathcal C_0=h1_3\), so

\[
\operatorname{FP}\Delta_{\varepsilon,R}\Gamma_0
=\operatorname{Tr}(P_0M_hP_0)>0
\tag{6.4}
\]

whenever the chosen ghost band is nonempty and \(h\) overlaps a nonzero retained section. Choose \(\Lambda\) sufficiently large for that band to be nonempty. The endpoint-degree gap is four, so for a cutoff below it the ghost band vanishes and this particular example is not available; it is not legitimate to assume all \(\Lambda>1\) retain ghosts.

For a signed BV sum the words “positive” apply here to this particular ordinary ghost-block trace, not to a general supertrace. Vanishing of the **full** finite part does not imply vanishing of the UV-subtracted one and does not imply a QME in either scheme.

## 7. Compressed determinants are not local logarithmic insertions

Take one nontrivial actual spectral band \(P\), \(R=1-P\), and a real smooth compactly supported scalar multiplier \(h\). Then \(PM_hP\) is trace class, so for small \(u\) the Fredholm determinant on \(\operatorname{ran}P\) is defined. The two expressions

\[
\log\det_{\operatorname{ran}P}(1+uPM_hP),
\qquad
\operatorname{Tr}\bigl(PM_{\log(1+uh)}P\bigr)
\]

have the same linear term but

\[
\boxed{
\log\det_P(1+uPM_hP)
-\operatorname{Tr}(PM_{\log(1+uh)}P)
=\frac{u^2}{2}\operatorname{Tr}(PM_hRM_hP)+O(u^3)
=\frac{u^2}{2}\|RM_hP\|_{\rm HS}^2+O(u^3).}
\tag{7.1}
\]

Thus local heat traces of \(\log H\) cannot be silently substituted for determinants of \(PM_HP\). The actual gap does not remove this leakage.

There is a concrete family producing leakage for the actual band. Choose \(0\ne v\in\operatorname{ran}P\), a coordinate patch where \(v\) is nonzero, and \(\chi\in C_c^\infty\) supported there. Set \(h_N=\chi\cos(Nx^1)\). Then \(M_{h_N}v\rightharpoonup0\), whereas its squared norm tends to \(\frac12\int\chi^2|v|^2>0\). The localized operator \(PM_\chi\) is compact (indeed Hilbert–Schmidt), so \(PM_{h_N}v\to0\) strongly. Hence \(RM_{h_N}P\ne0\) for all sufficiently large \(N\). Scaling \(h_N\) makes \(1+uh_N\) a uniformly positive coframe factor without removing the obstruction.

A two-cell exact fixture makes the distinction elementary: \(P=\frac12\left(\begin{smallmatrix}1&1\\1&1\end{smallmatrix}\right)\), \(h=\operatorname{diag}(1,-1)\). For the multiplication matrix \(e^{uh}\), the compressed determinant is \(\cosh u\), but \(\operatorname{Tr}(P\log(e^{uh})P)=0\). Its logarithmic discrepancy begins with \(u^2/2\). This fixture is not offered as the AdS spectral operator; it verifies the finite algebraic mechanism, while the preceding localized-oscillation argument supplies actual spectral leakage.

There is also a Schur-complement version of the same issue. Even when the full mixed base matrix has even block one and pointwise \(D-CB=H\), compression gives

\[
P_0DP_0-P_0CP_1BP_0
=P_0HP_0+P_0CR_{\Lambda,1}BP_0,
\qquad R_{\Lambda,1}=1-P_1.
\tag{7.2}
\]

The nilpotent cancellation in (3.2) therefore cannot simply be re-used after raw spectral compression. The actual nonlinear map need not preserve the retained band; the classical retained transport already requires stationary transfer rather than raw compression. A quantum retained theorem requires its additional quantum pushforward structure, not merely the pointwise Berezinian.

## 8. A noncompact all-Sobolev counterexample

The complete background has infinite volume. On \(\mathbb H^3\), let \(r\) be distance from a fixed point and set

\[
h(r)=\delta\exp[-\alpha\sqrt{1+r^2}],\qquad 1<\alpha\le2,\qquad 0<\delta\ll1,
\qquad f=h e_0.
\tag{8.1}
\]

The decay exponent \(\alpha\) is unrelated to the gravitational coupling \(a\). The function is smooth at the origin and every covariant derivative decays like \(e^{-\alpha r}\) at infinity. Since \(dV\asymp e^{2r}drd\Omega\),

\[
h\in H^m\cap L^2\quad\text{for every }m,\qquad h\notin L^1.
\tag{8.2}
\]

The soldering form is parallel for the induced tensor/internal Levi-Civita connection, so the same statement holds for \(f=h e_0\). It is an admissible uniformly small nondegenerate physical body in the all-Sobolev domain. Set all other fields to zero after computing the derivative.

At \(t=0\), (4.3) gives

\[
\Delta_\varepsilon\Gamma_0
=-\int_{\mathbb H^3}h(x)\operatorname{tr}K_{R_1}(\varepsilon;x,x)\,dV_x.
\tag{8.3}
\]

By homogeneity the positive scalar trace \(\operatorname{tr}K_{R_1}(\varepsilon;x,x)\) is independent of \(x\) and strictly positive for every \(\varepsilon>0\). Consequently (8.3) is \(-\infty\) for every positive heat time. There is no small-time finite part of a trace that was never finite. The same argument applies directly to the UV heat multiplier \(R_\Lambda e^{-\varepsilon R_1}\): its positive diagonal trace is again a nonzero homogeneous constant, since the operator has an unbounded UV tail. Thus sharp low-band subtraction does not cure this spatial divergence. Likewise \(\log\det(1+tF)=3\log(1+th)\sim3th\) is not integrable.

The gap controls the spectral infrared behavior; it does not make a spatially nonintegrable one-point insertion integrable. The classical generator can still be finite on the smooth domain because its terms contain enough \(L^2\) factors, while taking the BV divergence removes two fields and leaves a linear coframe insertion. This is the relevant difference between the tree estimates and the quantum trace problem.

A rigorous local trace theorem can instead restrict to compact support or impose suitable \(L^1\) conditions coefficientwise. Such conditions are additional and are not automatically preserved by sharp spectral projection. Alternatively one may choose a spatial relative-trace/renormalization prescription, but that is extra input and must not be conflated with the heat ultraviolet finite part.

## 9. Scope, unresolved quantum questions, and evidence

What is proved here:

- the complete finite-cell divergence, including its ghost–antifield term and its sign;
- the exact source half-density and Euclidean action evolution;
- the nonzero first-heat-coefficient obstruction to a naive fixed-heat lift of the local Jacobian;
- the restricted compact-support full/UV heat finite-part relation;
- the compressed-determinant leakage term and an actual-band family with nonzero leakage;
- the explicit \(H^\infty\cap L^2\), non-\(L^1\) trace obstruction on \(\mathbb H^3\).

What is not established:

- a renormalized continuum BV measure or a regulator-compatible quantum canonical transformation;
- the continuum QME for either interacting endpoint;
- a quantum BV-Stokes/pushforward theorem on the noncompact retained/UV splitting;
- equality of actual spectral determinants under the nonlinear map;
- a one-loop retained generator or the cancellation of all loop diagrams;
- an enlargement of the domain to arbitrary noncompact \(H^\infty\) coefficients for linear local traces.

A possible constructive route is to first specify a trace domain and a genuinely regulated quantum BV complex, then transport its regulator or solve the regulator-dependent semidensity equation with explicitly controlled counterterms, and only then establish a UV pushforward satisfying BV-Stokes. The finite-cell result fixes the source sign and the local starting datum, but does not supply these missing analytic and quantum inputs.

### Reproducible files

- [Fresh exterior-algebra source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quantum-divergence-independent-20261031.u48DhIxA/exact_divergence_and_schur.py>): generic rational \(F\), generic even ghost antifields, 24 exterior generators, and the complete type-II Schur calculation.
- [Sage check summary](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quantum-divergence-independent-20261031.u48DhIxA/sage_result.json>): 16 passed labels, 57 generator monomials, 19 divergence monomials, and 18 nonzero nilpotent divergence monomials.
- [Exact divergence coefficients](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quantum-divergence-independent-20261031.u48DhIxA/sage_exact_divergence.json>): all coefficients and sector decomposition, not a truncated display.
- [Actual Sage tool return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quantum-divergence-independent-20261031.u48DhIxA/sage_actual_tool_return.json>): server-returned diagnostics, Sage 10.9, no truncation, no stderr, no warnings.
- [Fresh Wolfram source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quantum-divergence-independent-20261031.u48DhIxA/heat_and_compression_checks.wl>): actual heat-potential contractions and the separate compression fixture.
- [Wolfram check summary](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quantum-divergence-independent-20261031.u48DhIxA/wolfram_checks.json>), [full readable result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quantum-divergence-independent-20261031.u48DhIxA/wolfram_result.txt>), and [native exact result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quantum-divergence-independent-20261031.u48DhIxA/wolfram_result.wxf>): ten passed labels, no Wolfram messages.
- [Actual Wolfram tool return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quantum-divergence-independent-20261031.u48DhIxA/wolfram_actual_tool_return.json>): exact server return and export paths.

**Excluded failures:** none occurred in these two kernel runs. No failed kernel trial was suppressed or counted as evidence. The matrix heat fixture treats the fixed products \(\zeta W\) as ordinary placeholders only after their coefficient order has been fixed; the separate Sage exterior calculation supplies the Grassmann signs. Neither finite CAS fixture is presented as a numerical spectral computation on the complete manifold.

**Replay:** the scripts have deliberately fixed output names in this unique evidence directory. Do not replay them in place over this frozen evidence. Copy the sources to a newly created unique directory, update their output-directory literals, and run there. The original sources and actual returns should remain unchanged.
