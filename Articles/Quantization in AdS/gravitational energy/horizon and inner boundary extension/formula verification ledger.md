# Formula Verification Ledger

## Status labels

- **Inherited-verified**: quoted without change from `../article/` and covered by its derivation or existing verification ledger.
- **Derived-bookkeeping**: follows from definitions, linearity, or orientation conversion; no tensor-algebra claim is added.
- **Machine-verified**: checked by the cited script or symbolic calculation.
- **Conditional**: correct only under the assumptions stated in the entry.
- **Target**: not yet established in this project.

## Entries

### H01 — Geometry, action normalization, and perturbative expansion

**Statement:** signature $(-,+,+)$, $\kappa_{\mathrm p}^{2}=8\pi G$, $\ell_{\mathrm{AdS}}=1$, outward timelike normal, and $g=G+\kappa_{\mathrm p}h+\kappa_{\mathrm p}^{2}k+\cdots$.

**Status:** Inherited-verified.

**Evidence:** `../article/1_model.md`; `../article/a_perturbative quantities.md`.

**Assumptions:** The background and perturbations obey the boundary and regularity conditions stated in the relevant benchmark.

### H02 — Einstein--Hilbert potential in the project convention

**Statement:**

$$
\vartheta_{\mathrm{EH}}^\mu
=-\frac{1}{2\kappa_{\mathrm p}^{2}}
(g^{\mu\alpha}\nabla^\nu\delta g_{\alpha\nu}
-g^{\alpha\beta}\nabla^\mu\delta g_{\alpha\beta}).
$$

**Status:** Inherited-verified.

**Evidence:** `../article/c_full theory derivation.md`; entry V11 in `../second order bulk-boundary charge/formula verification ledger.md`.

### H03 — Local timelike boundary variation

**Statement:** equations (2.1)--(2.3) of `expanded formulas.md`.

**Status:** Inherited-verified for the asymptotic component with $c=1$; conditional algebraic extension for a generic constant $c_a$ and outward normal.

**Evidence:** `../article/c_full theory derivation.md`; entry V12 in `../second order bulk-boundary charge/formula verification ledger.md` verifies the local Einstein--GHY identity for a spacelike unit normal and the project metric-variation convention. A constant $c_a$ adds only the induced-metric source term.

**Assumptions:** Fixed boundary embedding; non-null timelike wall; $K_{ij}$ is defined with the outward normal; allowed source variations are stated separately.

**Not verified:** Differentiability and finiteness of the $c_\epsilon=0$ stretched-horizon phase space.

### H04 — Multi-component integrated CPS potential

**Statement:** with two timelike spatial-boundary components and no extra endpoint functional,

$$
\theta_\Sigma
=\int_\Sigma\sqrt\sigma\,\tau\mathbin{\cdot}\vartheta
-C_\infty-C_\epsilon.
$$

**Status:** Derived-bookkeeping, conditional.

**Evidence:** Sum equation (2.4) independently over $\Gamma_\infty$ and $\mathcal H_\epsilon$, then read the common final-minus-initial endpoint coefficient using the same convention as `../article/2_formalism.md`.

**Assumptions:** Each component obeys the local boundary identity; its source term vanishes on the selected phase space; no additional joint endpoint functional has been added.

### H05 — Reference-normal version of the inner sign

**Statement:** if $n_\epsilon^{\mathrm{out}}=-n_{\mathrm{ref}}$, then $C_\epsilon^{\mathrm{out}}=-C_\epsilon^{\mathrm{ref}}$, so

$$
-C_\epsilon^{\mathrm{out}}=+C_\epsilon^{\mathrm{ref}}.
$$

**Status:** Derived-bookkeeping.

**Evidence:** $C_a^\mu$ is linear in $n_a^\rho$ by equation (2.2).

**Limitation:** This simple sign uses $c_\epsilon=0$. The descent form $\mu_{\xi,a}$ with a nonzero subtraction contains a term independent of reversing $n_a$ and must not be transformed by this shortcut.

### H06 — Outer-minus-inner Stokes sign

**Statement:** the induced-boundary sum becomes $\int_{C_\infty}^{\mathrm{ref}}-\int_{C_\epsilon}^{\mathrm{ref}}$ when both cuts are written with one reference tangent orientation.

**Status:** Derived-bookkeeping.

**Evidence:** definition of the induced cut orientation by the outward normal $s_a$ within $\Sigma$; $s_\epsilon$ points toward the excised region.

**Not verified:** The non-orthogonal case, where the cut normal within $\Sigma$ is not identical to the timelike-wall normal.

### H07 — Boundary descent and Brown--York reduction

**Statement:** equations (4.1)--(4.5) of `expanded formulas.md`.

**Status:** Inherited-verified on the outer boundary; conditional componentwise extension to a finite inner wall.

**Evidence:** `../article/c_full theory derivation.md`; entries V14--V16 in `../second order bulk-boundary charge/formula verification ledger.md`.

**Assumptions:** $\xi$ preserves the wall, its location, and the boundary conditions; matter carries no independent wall superpotential; source/flux terms vanish.

**Not verified:** The $\epsilon\to0$ limit and its relation to the bifurcation-surface area charge.

### H08 — Project/2501 symplectic-current map

**Statement:** for the same ordered pair of physical metric variations,

$$
\omega_{\mathrm p}=-\omega_{2501},
\qquad
\Upsilon_{\mathrm p}=-\Upsilon_{2501}.
$$

**Status:** Machine-verified convention calibration.

**Evidence:** `../modular wedge corner benchmark/modular_wedge_corner_benchmark.wl` evaluates the two bulk currents at three independent points after imposing $\kappa_{2501}^{2}=16\pi G$, $\kappa_{\mathrm p}^{2}=8\pi G$, and the same physical metric variations. The benchmark README records the orientation conversion and the induced sign of $\Upsilon_{\mathrm p}$.

**Limitation:** Three-point symbolic/numerical evaluation calibrates the convention for the explicit benchmark; a general algebraic identity between the two published component formulas has not yet been recorded.

### H09 — Proper-completion value of $\int\Upsilon_{\mathrm p}$

**Statement:** for the $a=\pi/4$ real Brown--Henneaux mode and the regulated proper completion,

$$
\int_{\gamma_A}\Upsilon_{\mathrm p}
=\frac{32}{105}.
$$

**Status:** Machine-verified at the claim tier stated in the benchmark.

**Evidence:** `../modular wedge corner benchmark/README.md`, `modular_wedge_corner_benchmark.wl`, and `proper_completion_probe.wl`.

**Correction audit:** the old value $3424/15-74\pi$ is withdrawn. The old
real vector had the opposite radial sign and was not the declared real phase
of the verified complex Brown--Henneaux primary. A new vector-level identity
test prevents recurrence. The corrected local 2501-oriented density is

$$
\frac{-5+13x^2-11x^4+3x^6}{16},
$$

with integral $-32/105$; the project sign map then gives $+32/105$. The
proper-completion samples converge to $-32/105$ and have zero leading
$L^{-2}$ anchor-layer remainder.

**Limitation:** This is not produced by the raw project surface tensor and is
not yet derived from an inner finite action. Uniform convergence for an
infinite projected mode sum remains open.

### H10 — Hayward joint functional

**Statement:** a fully Dirichlet action for a piecewise-smooth non-null boundary requires a boost-angle corner functional of the structural form $\kappa_{\mathrm p}^{-2}\int_J\sqrt q\,\eta$ with convention-dependent signs.

**Status:** Primary-source audited structural result. The orthogonal compact-BTZ specialization is translated and verified; the general project sign table is pending.

**Evidence:** [Boundary and Corner Terms in the Action for General Relativity](https://arxiv.org/abs/1612.00149); [The Gravitational Hamiltonian in the Presence of Non-Orthogonal Boundaries](https://arxiv.org/abs/gr-qc/9603050).

**Verified specialization:** For a timelike wall/spacelike endpoint pair, declare $\sinh\eta=n\cdot\tau$. The compact BTZ joins have $n\cdot\tau=0$, so $S_J=\delta S_J=\delta^2S_J=0$ independently of the orientation sign.

**Not verified:** The precise convexity, initial/final, and inner/outer signs for non-orthogonal joins in the project convention; moving-joint and edge-mode contributions.

### H11 — Distinction between $C_a$ and a joint action

**Statement:** the Harlow--Wu boundary potential $C_a$ obtained from $\Theta+\delta\ell_a$ is not, without a derivation, identical to a Hayward joint action or its variation.

**Status:** Derived and primary-source audited conceptual constraint.

**Evidence:** $C_a$ is a field-space one-form entering $(\Theta+\delta\ell_a)|_{\Gamma_a}=\mathrm dC_a+\mathcal B_a$ in [Covariant phase space with boundaries](https://arxiv.org/abs/1906.08616), whereas $S_J$ is a field-space zero-form added to the fully Dirichlet action in [Boundary and Corner Terms in the Action for General Relativity](https://arxiv.org/abs/1612.00149). Their relation depends on the selected endpoint data. At fixed embeddings an added $\delta S_J$ is field-space exact, so its antisymmetrized second variation vanishes.

### H12 — Outer-minus-inner charge identity

**Statement:** equations (4.6)--(4.9) of `expanded formulas.md` and Result 5.1 of `draft.md`.

**Status:** Derived finite-action identity for field-independent wall-preserving symmetries; conditional outer-minus-inner Hamiltonian law.

**Evidence:** Sum the local single-wall descent of `../article/c_full theory derivation.md` over $\Gamma_\infty$ and $\mathcal H_\epsilon$ before imposing equations of motion. This gives $\alpha_\xi=\alpha_{\xi,{\rm bulk}}-\sum_a\mu_{\xi,a}$ and $H_\xi=X_\xi\cdot\theta-\alpha_\xi$. Field-space Cartan calculus gives $\delta H_\xi=\Omega(\delta g,\mathcal L_\xi g)$. Stokes' theorem with induced cut orientations gives outer minus inner after conversion to a common reference orientation.

**Assumptions:** Fixed walls; $\xi$ preserves each wall and its boundary data; source work is either zero or explicitly retained; non-orthogonal/moving-joint pieces are not silently discarded.

**Reduction check:** Removing $\mathcal H_\epsilon$ leaves exactly the single-wall formula of `../article/`. In the compact collar sector H30 verifies that all field-dependent inner wall and endpoint-joint terms vanish already at finite $\epsilon$.

### H13 — Bifurcation charge/area identity

**Statement:** equation (8.2) of `expanded formulas.md` and its first- and second-order expansion.

**Status:** Background and fixed-embedding coefficients verified; surface displacement verified locally in AdS$_3$; the general statement is a conditional implication under H0--H6, as recorded in H36.

**Evidence:** H16 fixes the BTZ background area normalization, H27 proves the fixed-embedding linear and quadratic coefficients, and H28 proves the local AdS$_3$ displacement/Jacobi split. H30 closes the finite-wall term for the selected collar sector only.

**Remaining check:** Construct a compatible regulator family satisfying H0--H6 for general smooth horizon data and derive the complete moving-embedding subregion gauge quotient. The implication from those hypotheses is no longer the open algebraic step.

### H14 — Arbitrary-gauge second-order identity

**Statement:** equation (8.3) of `expanded formulas.md`.

**Status:** Algebraic finite-action organization verified in H29; exact cocycle machine-verified in H37; the integrated horizon identity follows conditionally from H0--H6.

**Remaining check:** Construct the wall polarization and moving-edge potential outside the restricted phase space. No Killing condition on $v$ is used in the conditional derivation.

### H15 — Compact BTZ regulator geometry

**Statement:** equations (1.1)--(3.3) of `compact BTZ benchmark.md`.

**Status:** Machine-verified.

**Evidence:** `btz_brick_wall_check.wl`, run in a fresh xAct/xCoba components kernel. The check gives $R_{\mu\nu}+2g_{\mu\nu}=0$, $\mathcal L_{\partial_t}g=0$, normalized orthogonal wall/Cauchy normals, $K_R=\coth\rho+\tanh\rho$, $K_\epsilon=-2\coth(2\rho)$, and $\sqrt{-\gamma}K_\epsilon=-r_+^2\cosh(2\rho)$.

**Assumptions:** $r_+>0$, $\rho>0$, unit AdS radius, and the declared outward normals.

### H16 — Compact BTZ bulk Noether area normalization

**Statement:** for $\xi_{\rm mod}=(2\pi/r_+)\partial_t$,

$$
-\lim_{\epsilon\to0^+}
\int_{C_\epsilon}^{\rm out}\sqrt q\,
\tau_\mu n_{\epsilon\nu}Q_{\xi_{\rm mod}}^{\mu\nu}
=\frac{A_\gamma}{4G}.
$$

**Status:** Machine-verified.

**Evidence:** `btz_brick_wall_check.wl` gives the outward-inner integral $-4\pi^2r_+\cosh^2\epsilon/\kappa_{\mathrm p}^2$ and $A_\gamma/(4G)=4\pi^2r_+/\kappa_{\mathrm p}^2$.

**Limitation:** This is the stationary background normalization. First- and second-order perturbations of the surface charge are not yet checked.

### H17 — Full inner Brown--York wall charge does not equal the area corner

**Statement:** with $c_\epsilon=0$,

$$
H_{\xi_{\rm mod},\epsilon}^{\rm BY}
=\frac{4\pi^2r_+}{\kappa_{\mathrm p}^2}\sinh^2\epsilon
\longrightarrow0.
$$

**Status:** Machine-verified.

**Evidence:** `btz_brick_wall_check.wl`.

**Interpretation:** The inner GHY descent cancels the area-sized bulk Noether term in the complete timelike-wall generator. The artificial wall generator must not be identified with the horizon corner left in the outer-minus-inner charge law after regulator removal.

**Not verified:** The precise limiting theorem that removes the wall while preserving the horizon corner and makes the regulator contribution to the symplectic form vanish.

### H18 — BTZ parameter variation changes inner Dirichlet data

**Statement:** at fixed regulator coordinates,

$$
\partial_{r_+}\gamma_{tt}=-2r_+\sinh^2\rho,
\qquad
\partial_{r_+}\gamma_{\phi\phi}=2r_+\cosh^2\rho.
$$

**Status:** Machine-verified.

**Evidence:** `btz_brick_wall_check.wl`.

**Interpretation:** A BTZ mass/parameter variation is not tangent to a fixed-inner-induced-metric Dirichlet phase space. Any first-law use must retain the source term, vary the embedding, select a different boundary ensemble, or treat the family as auxiliary.

### H19 — 2501 Appendix B.3 and the project inner potential

**Statement:** on a Gaussian brick wall,

$$
n^\rho\delta g_{\nu\rho}=0
\quad\Longrightarrow\quad
C_\epsilon^\mu[\delta g]=0
\quad\Longrightarrow\quad
\delta C_\epsilon=0.
$$

**Status:** Inherited algebra plus visually confirmed source condition.

**Evidence:** project equation (2.2) in `expanded formulas.md`; Appendix B.3 of `Generalized entropy of gravitational fluctuations (2501.08308v2).pdf`, PDF pages 76--77 (printed pages 74--75).

**Precise scope:** This proves the absence of the project inner symplectic boundary correction on a radial-gauge phase space whose allowed variations preserve the condition. It does not set $\mathcal T_\epsilon^{ij}\delta\gamma_{ij}$ to zero and hence does not by itself establish differentiability of the finite inner action.

**Source limitation:** The paper's extension from explicit AdS-Rindler falloffs to a general stationary black hole is stated as an expectation under uniform near-horizon decay, not as a proved theorem.

### H20 — Boundary symplectic flux after the GHY descent

**Statement:** with $\Pi_a^{ij}=\sqrt{-\gamma_a}\mathcal T_a^{ij}$,

$$
\omega_a^{\rm pullback}
=\mathrm d(\delta C_a)
-\frac12\delta\Pi_a^{ij}\wedge\delta\gamma^{(a)}_{ij}.
$$

**Status:** Derived-bookkeeping from the local finite-action identity.

**Evidence:** Apply the field-space exterior derivative to equation (2.1) of `expanded formulas.md`; use $\delta^2\ell_a=0$ and $\delta^2\gamma_{ij}=0$.

**Interpretation:** Radial gauge can set $C_a=0$, but zero flux still requires the Brown--York canonical-pair term to vanish. Fixed induced metric, fixed momentum, or a suitable Lagrangian mixed boundary condition are sufficient examples.

**Constructive follow-up:** H43 gives one compatible mixed condition on a
controlled nonzero smooth moving BTZ family. Compatibility for the full
fixed-embedding or Brown--Henneaux mode space remains unverified.

### H21 — Fixed-boost BTZ wall-to-corner transgression

**Statement:** for $\xi_s=(s/r_+)\partial_t$ with $s$ held fixed and $A_\epsilon=2\pi r_+\cosh\epsilon$,

$$
\mathcal B_\epsilon[\partial_{r_+}]
=-\frac{2\pi s}{\kappa_{\mathrm p}^2}\cosh^2\epsilon,
$$

$$
\mathcal B_\epsilon[\partial_{r_+}]
+\partial_{r_+}\!\left(\frac{sA_\epsilon}{\kappa_{\mathrm p}^2}\right)
=-\frac{2\pi s}{\kappa_{\mathrm p}^2}
\cosh\epsilon(\cosh\epsilon-1)
\xrightarrow{\epsilon\to0}0.
$$

The outward-inner bulk Noether cut tends to $-sA_\gamma/\kappa_{\mathrm p}^2$, so its opposite orientation agrees with the fused boost corner

$$
I_\gamma=\frac{sA_\gamma}{\kappa_{\mathrm p}^2}
=\frac{s}{2\pi}\frac{A_\gamma}{4G}.
$$

**Status:** Machine-verified on the one-dimensional non-rotating BTZ parameter family.

**Evidence:** `btz_brick_wall_check.wl`, fresh xAct/xCoba kernel, $16/16$ tests passed.

**Assumptions:** Unit flow interval for $\xi_s=\partial_\lambda$; fixed $s$ and wall coordinate $\epsilon$; retained Brown--York source work; $r_+>0$; outward inner normal $-\partial_\rho$.

**Limitation:** $sA_\epsilon/\kappa_{\mathrm p}^2$ is a regulator-removal comparison functional, not an additional finite-$\epsilon$ joint while the timelike wall is present. The cancellation has an $O(\epsilon^2)$ residual and has not been proved for arbitrary perturbations.

### H22 — Collar-Dirichlet Brown--Henneaux family

**Statement:** for $\zeta=\chi(\rho)\zeta_{\rm BH}$ with $\chi=0$ on $\rho\leq\rho_0$ and $\chi=1$ on $\rho\geq2\rho_0$,

$$
h=\mathcal L_\zeta G,
\qquad
k=\frac12\mathcal L_\zeta^2G
$$

vanish identically in the horizon collar and restore a nontrivial chiral Brown--Henneaux perturbation in the outer region. The three finite tangential limits equal

$$
-\frac m2(r_+^2+m^2)\sin[m(t+\phi)].
$$

**Status:** Geometry and asymptotic behavior machine-verified; perturbative Einstein equations derived from diffeomorphism covariance.

**Evidence:** `btz_collar_mode_check.wl`, fresh xAct/xCoba kernel, $8/8$ tests passed. The script verifies $\zeta=h=k=0$ in the collar, restoration of both first- and second-order uncut fields outside the transition region, exact vanishing of the uncut radial components, Brown--Henneaux leading falloff, and the displayed finite tangential limits.

**Assumptions:** A smooth cutoff with the declared constant collar and outer jets; the wall lies at $\epsilon<\rho_0$; the perturbative family is generated by the exact pullback $g(\alpha)=\Phi_\alpha^*G$.

**Interpretation:** This supplies a nontrivial outer perturbation for which fixed inner induced metric, radial gauge, zero inner source work, zero inner symplectic flux, and unchanged orthogonal joins all hold simultaneously.

**Not verified:** The pure-$h$ quadratic canonical-energy integral, component Einstein residuals, and arbitrary-gauge completion for this mode. The full outer Brown--York coefficient is verified separately in H23.

### H23 — Renormalized outer charge of the $m=1$ collar mode

**Statement:** for $\xi_{\rm mod}=(2\pi/r_+)\partial_t$, the first two field-dependent coefficients of the outer renormalized Brown--York integrand have limits

$$
q_1(t+\phi)
=-\frac{\pi(r_+^2+1)}{r_+}\sin(t+\phi),
$$

$$
q_2(t+\phi)
=\frac{\pi(r_+^2+1)}{4r_+}
\left[1-3\cos2(t+\phi)\right].
$$

Consequently

$$
\mathcal Q_1=0,
\qquad
\mathcal Q_2=\frac{\pi^2(r_+^2+1)}{2r_+}.
$$

With independent markers on the first- and second-order metric coefficients,

$$
\mathcal Q_2^{(k)}
=\frac{\pi^2(r_+^2+1)}{2r_+},
\qquad
\mathcal Q_2^{(h^2)}=0.
$$

For $g=G+\kappa_{\mathrm p}a h+\kappa_{\mathrm p}^2a^2k+\cdots$, the unit-amplitude finite Brown--York coefficient is $H_{\xi_{\rm mod},T}^{[0]}=\mathcal Q_2$.

**Status:** Machine-verified outer Brown--York coefficient.

**Evidence:** `btz_outer_charge_check.wl`, fresh xAct/xCoba kernel, $14/14$ tests passed. The script implements the same $B_{ab}=K_{ab}-K\gamma_{ab}+\gamma_{ab}$ counterterm convention as `../article/`, expands the induced metric, inverse, extrinsic curvature, cut normal, and measure through $O(\alpha^2)$, takes the radial limit, integrates the circle, and separately scales $h$ and $k$.

**Radial-shift check:** the second-order $k_{\rho i}$ components are $O(e^{-4\rho})$ with finite machine-verified $e^{4\rho}k_{\rho i}$ limits. Since $\gamma^{ij}=O(e^{-2\rho})$, their raised radial shift is $O(e^{-6\rho})$ and does not alter the finite charge.

**Interpretation:** The linear mode has zero integrated modular charge, while the full second-order outer coefficient is positive for $r_+>0$. Its factor $(r_+^2+1)$ also vanishes under the formal global-AdS continuation $r_+^2=-1$, as expected for the $m=1$ global isometry.

**Interpretive limitation:** $\mathcal Q_2^{(h^2)}=0$ is a Brown--York surface-coefficient statement, not a vanishing-canonical-energy statement. Since $\mathcal E^{(1)}[k]=-\mathcal E^{(2)}[h,h]$, the pure-$h$ bulk current can be represented by the $k$ backreaction at the boundary.

**Follow-up:** The CPS conversion and canonical-energy factor are verified separately in H24.

### H24 — Compact BTZ CPS split and canonical energy

**Statement:** for the $m=1$ collar mode,

$$
\int_{C_\infty}S_{\xi,h}^{[0]}[h]=0,
\qquad
\int_{C_\infty}S_\xi[k]
=\frac{\pi^2(r_+^2+1)}{2r_+},
$$

while

$$
\int_{C_\infty}S_{\xi,k}^{[0]}[k]=0,
\qquad
S_{\xi,k}^{[0],\mu\nu}[k]
=\xi^{[\mu}
\left(\nabla_\rho k^{\nu]\rho}-\nabla^{\nu]}k\right).
$$

The renormalized outer finite-action boundary descent and every inner-collar term vanish. Hence

$$
H_{\xi,h}^{[0]}
=\int_\Sigma\xi\mathbin{\cdot}T_h
+\int_{\partial\Sigma}S_{\xi,h}^{[0]}[h]
=\frac{\pi^2(r_+^2+1)}{2r_+},
$$

and

$$
E_{\mathrm{can,p}}[\kappa_{\mathrm p}h]
=2H_{\xi,h}^{[0]}
=\frac{\pi^2(r_+^2+1)}{r_+}.
$$

**Status:** Machine-verified CPS surface/current coefficients plus derived second-variation normalization.

**Evidence:** `btz_outer_charge_check.wl`, fresh xAct/xCoba kernel, $14/14$ tests passed. The script independently expands the exact Einstein--Hilbert Noether cut, separates $S_{\xi,h}^{[0]}[h]$ from $S_\xi[k]$, evaluates the explicit $S_{\xi,k}^{[0]}[k]$ tensor, compares the EH cut with the Brown--York charge, and verifies the vanishing boundary descent.

**Derivation boundary:** The conversion of the volume term uses the inherited off-shell identity

$$
\xi_\nu\mathcal E^{(1),\mu\nu}[k]
+\nabla_\nu S_{\xi,k}^{[0],\mu\nu}[k]
=\nabla_\nu S_\xi^{\mu\nu}[k]
$$

and only then imposes $\mathcal E^{(1)}[k]=-\mathcal E^{(2)}[h,h]=T_h$. The factor two follows from $g(a)=G+a\kappa_{mathrm p}h+a^2\kappa_{mathrm p}^2k+\cdots$ and $E_{\rm can}=\mathrm d^2H/\mathrm da^2|_0$.

**Assumptions:** Exact background modular Killing field; $r_+>0$; fixed Brown--Henneaux boundary metric; wall inside the zero collar; no matter; unit mode amplitude; project ordering $\Omega_{\mathrm p}[h,\mathcal L_\xi h]$.

**Follow-up:** The direct Lee--Wald volume integral is verified in H25. The arbitrary-gauge completion follows conditionally from H36--H37; an explicit nontrivial local $\Upsilon_{\mathrm p}$ for this collar mode is unnecessary because its selected extremal representative has $v=0$.

### H25 — Direct Lee--Wald canonical-energy integral

**Statement:** the project potential is form-valued, so its current includes the volume-form variation,

$$
\omega_{\mathrm p}^{\mu}[h_1,h_2]
=\delta_{h_1}\vartheta^\mu[h_2]
-\delta_{h_2}\vartheta^\mu[h_1]
+\frac12h_1\vartheta^\mu[h_2]
-\frac12h_2\vartheta^\mu[h_1].
$$

For the $m=1$ collar mode and $h_2=\mathcal L_{\xi_{\rm mod}}h$,

$$
\int_\Sigma\omega_{\mathrm p}
=\frac{\pi^2(r_+^2+1)}{r_+}.
$$

The angle-integrated density also obeys the exact primitive identity

$$
\mathcal D
=\frac{\mathrm d}{\mathrm d\rho}
\left[
\frac{\pi^2(r_+^2+1)}{r_+}\chi^2
+B(\rho)\chi\chi'
+C(\rho)(\chi')^2
\right].
$$

**Status:** Direct-current formula and arbitrary smooth-collar independence symbolically verified; integral numerically verified on four regulator/parameter choices.

**Evidence:** `btz_canonical_energy_check.wl`, fresh xAct/xCoba kernel, $8/8$ tests passed. It symbolically constructs $\delta_{h_1}\vartheta[h_2]-\delta_{h_2}\vartheta[h_1]$, adds the determinant terms, integrates the angle exactly, reconstructs and verifies the displayed primitive with zero residual, and performs fifty-digit radial integrations for

$$
r_+\in\{2,3\},
\qquad
\rho_0\in\{\log2/2,\log2\}.
$$

All four values agree with the displayed target to better than $10^{-25}$; for $r_+=2$ the value is $5\pi^2/2$.

**Falsification caught:** Omitting the determinant terms produced cutoff-dependent values near $235$ instead of $5\pi^2/2$. This failed implementation was corrected before updating the draft and is not evidence for a physical obstruction.

**Assumptions:** The declared $C^5$ smoothstep collar, project ordering $\omega_{mathrm p}[h,\mathcal L_\xi h]$, $r_+>0$, modular normalization, and zero inner/outer $C$ terms for the collar family.

**Scope:** The analytic result applies to smooth radial completions with constant inner and outer jets. It does not address completions that move the inner surface, change the asymptotic boundary data, or carry edge modes.

### H26 — Sampled component Einstein residuals for the BTZ collar mode

**Statement:** for

$$
g(a)=G+ah+a^2k,
\qquad
h=\mathcal L_\zeta G,
\qquad
k=\frac12\mathcal L_\zeta^2G,
$$

the cosmological Einstein tensor

$$
\mathcal E_{\mu\nu}(g)
=R_{\mu\nu}-\frac12Rg_{\mu\nu}-g_{\mu\nu}
$$

has vanishing sampled coefficients

$$
\mathcal E^{(1)}_{\mu\nu}[h]=0,
\qquad
\mathcal E^{(1)}_{\mu\nu}[k]
+\mathcal E^{(2)}_{\mu\nu}[h,h]=0.
$$

**Status:** High-precision sampled component verification, not a global symbolic proof.

**Evidence:** `btz_collar_einstein_check.wl` builds the background connection with xCoba and independently reconstructs the inverse metric, connection, Ricci tensor, and cosmological Einstein tensor coefficientwise from local metric jets. For

$$
r_+=2,
\qquad
\rho_0=\log2/2,
$$

it evaluates two nonsymmetric points in the transition region,

$$
\left(0,\frac\pi4,\frac{3\rho_0}{2}\right),
\qquad
\left(\frac\pi7,\frac\pi{11},\frac{7\rho_0}{4}\right),
$$

using 100-digit jets through second coordinate derivatives. The xCoba/background-connection residual, both linear residuals, both complete second-order residuals, and both separately assembled split residuals are below $10^{-70}$. The standalone Wolfram regression passes $8/8$ tests without messages. A fresh `xact_verify_residuals` run with the `components` profile returns `allZero: true`; all seven chopped tensor residuals have status `zero`, with empty setup/check message lists.

**Assumptions:** The declared $C^5$ smoothstep, $m=1$, the two stated sample points, unit AdS radius, $r_+=2$, and the coefficient convention $g(a)=G+ah+a^2k$.

**Limitation:** The check strongly falsifies component, sign, and coefficient errors at generic transition-region points, but it does not prove the identity for arbitrary $r_+$, arbitrary collar profiles, or every spacetime point. The exact general reason for the identity remains diffeomorphism covariance.

### H27 — Fixed-surface bifurcation Noether/area obstruction

**Statement:** let

$$
g(\lambda)=G+\lambda p+\lambda^2r+O(\lambda^3)
$$

near a fixed bifurcation cut $\gamma$, with $\xi|_\gamma=0$ and background boost normalization $\nabla\xi=s\epsilon$. In the horizon-cut orientation for which $H_\xi^\gamma[G]=sA_\gamma[G]/\kappa_{\mathrm p}^2$,

$$
[\lambda^0]\left(\kappa_{\mathrm p}^2H_\xi^\gamma-sA_\gamma\right)=0,
\qquad
[\lambda^1]\left(\kappa_{\mathrm p}^2H_\xi^\gamma-sA_\gamma\right)=0,
$$

and

$$
\boxed{
[\lambda^2]\left(\kappa_{\mathrm p}^2H_\xi^\gamma-sA_\gamma\right)
=\frac{s}{2}\int_\gamma\sqrt q\,p_{kk}p_{ll}.
}
$$

Consequently, for $p=\kappa_{\mathrm p}h$ and $r=\kappa_{\mathrm p}^2k$,

$$
[\lambda^2]H_\xi^\gamma
=s\left(A^{\rm lin}[k,\gamma]+A^{\rm quad}[h,\gamma]\right)
+\frac{s}{2}\int_\gamma\sqrt q\,h_{kk}h_{ll}.
$$

The last term vanishes in a Hollands--Wald normal-plane representative with $h_{kk}=h_{ll}=0$.

**Status:** Pointwise symbolic identity for a fixed embedding; machine-verified in the project coupling and Taylor-coefficient convention.

**Evidence:** `bifurcation_noether_area_check.wl` chooses background normal coordinates $G=\operatorname{diag}(-1,1,q)$, a fixed tangent direction, and the boost $\xi=s(x^1\partial_0+x^0\partial_1)$. Since $\xi$ vanishes on the cut, it expands the exact pulled-back project density

$$
\mathcal Q_\gamma
=\frac{s}{2\kappa_{\mathrm p}^2}
\sqrt{-\det g}\left(g^{11}-g^{00}\right)
$$

against $\mathcal A_\gamma=\sqrt{g_{22}}$. The standalone Wolfram run passes $8/8$ tests. A fresh `xact_verify_residuals` run with the `components` profile and full canonical pipeline returns `allZero: true` for six symbolic residuals, with no package, setup, check, or transport errors.

**Independent-source audit:** rendered PDF pages 24 and 73 of 2501.08308v2 confirm its equations (4.33) and (B.12)--(B.14). Converting $\kappa_{2501}^2=16\pi G=2\kappa_{\mathrm p}^2$ and interpreting the displayed quadratic coefficient consistently gives the formula above. The project derivation does not import the paper's symplectic sign convention.

**Assumptions:** Fixed surface embedding; fixed boost first jet; smooth nondegenerate induced metric $q>0$; Einstein Noether tensor (4.4) of `expanded formulas.md`; no horizon boundary descent included in this local cut identity.

**Not verified:** The result does not include $\gamma^{(1)}$, does not prove that extremality alone implies $h_{kk}=h_{ll}=0$ in the project phase space, and does not yet derive the arbitrary-gauge corner completion from the finite action.

### H28 — AdS$_3$ extremal-curve displacement and anchor endpoint

**Statement:** in a parallel Fermi frame along a unit-speed background geodesic, let

$$
g(\lambda)=G+\lambda p+\lambda^2r+O(\lambda^3),
\qquad
y^a(u)=\lambda V^a(u)+O(\lambda^2).
$$

The quadratic area coefficient decomposes as

$$
[\lambda^2]A[g,\gamma]
=A^{\rm lin}[r,\gamma]
+A^{\rm quad}[p,\gamma]
+A^{\rm lin}[p,V]
+A^{\rm quad}[G,V],
$$

where

$$
A^{\rm lin}[p,V]
=\int_\gamma\mathrm du\left(
\frac12V^a\nabla_a p_{uu}+p_{ua}D_uV^a
\right),
$$

$$
A^{\rm quad}[G,V]
=\frac12\int_\gamma\mathrm du\left(
D_uV_aD_uV^a+V_aV^a
\right).
$$

With

$$
\delta_pK_a=\frac12\nabla_a p_{uu}-D_up_{ua},
\qquad
(JV)_a=(-D_u^2+1)V_a,
$$

the extremality equation is $(JV)_a+\delta_pK_a=0$, and the total endpoint term exposed by integration by parts is

$$
\mathcal B_{\rm anchor}^{\mathrm{area}}
=\left[p_{ua}V^a+\frac12V_aD_uV^a\right]_{\partial\gamma}.
$$

Under the project gauge convention $p\mapsto p+\mathcal L_vG$, the same geometric surface transforms as $V\mapsto V-v_\perp$.

**Status:** Symbolically verified local AdS$_3$ Fermi-frame identity.

**Evidence:** `ads3_extremal_area_displacement_check.wl` pulls $G+\lambda p+\lambda^2r$ back to $y^a=\lambda V^a$ using the unit-radius AdS$_3$ Fermi jet

$$
G_{uu}=1+\eta_{ab}y^ay^b+O(y^3),
\qquad
\eta_{ab}=\operatorname{diag}(-1,1).
$$

It independently compares the induced-metric expansion with the four-piece area split, verifies both integration-by-parts identities, and checks that a pure normal diffeomorphism has $\delta_{\mathcal L_vG}K=Jv$ and is cancelled by $V=-v$. The standalone run passes $8/8$ tests. A fresh `xact_verify_residuals` run with the full canonical pipeline returns `allZero: true` for five residuals, with empty package/setup/check message lists and empty transport stderr.

**Assumptions:** Unit AdS radius; spacelike geodesic with vanishing background extrinsic curvature; parallel normal frame; fixed arclength parametrization; the formulas are Taylor coefficients rather than second derivatives.

**Boundary distinction:** The endpoint term vanishes for the compact BTZ circle. It is not zero for an anchored AdS-Rindler geodesic without an additional cutoff/anchor prescription and must be combined with movable-cutoff, strip, and joint terms.

**Not verified:** This local area calculation does not derive the finite-action horizon symplectic term, the canonical-energy corner form $\Upsilon_{\mathrm p}$, or their gauge cancellation.

### H29 — Finite-action organization of the arbitrary-gauge completion

**Statement:** for a background Killing field $\xi$, a physical first-order variation $p$, and a field-independent non-Killing vector $v$,

$$
\begin{aligned}
E_{\mathrm{can,p}}[p+\mathcal L_vG]
-E_{\mathrm{can,p}}[p]
={}&\Omega_{\mathrm p}
[p+\mathcal L_vG,\mathcal L_{[\xi,v]}G]\\
&-\Omega_{\mathrm p}
[\mathcal L_\xi p,\mathcal L_vG].
\end{aligned}
$$

If $\mathbb k_{u,\mathrm p}^{\rm FA}$ is the complete surface descent derived from $H_u=X_u\cdot\theta-\alpha_u$, then the project completion density is

$$
\Upsilon_{\mathrm p}^{\rm FA,ind}[p,v]
=\mathbb k_{[\xi,v],\mathrm p}^{\rm FA}
[p+\mathcal L_vG]
-\mathbb k_{v,\mathrm p}^{\rm FA}[\mathcal L_\xi p].
$$

The descent must be split by finite-action origin into bulk, brick-wall, and joint terms before taking the horizon limit.

**Status:** The symplectic algebra and required finite-action organization are derived; the exact cocycle is machine-verified in H37. The regulator limit is a conditional implication under H0--H6, but existence of those analytic and phase-space data is not proved.

**Evidence:** The first identity follows directly from bilinearity, antisymmetry, $\mathcal L_\xi G=0$, and $\mathcal L_\xi\mathcal L_vG=\mathcal L_{[\xi,v]}G$. The existing `modular wedge corner benchmark/modular_wedge_corner_benchmark.wl` independently verifies at three bulk points that the divergence of the general non-Killing $\delta Q_v-\iota_v\theta$ form equals the Lee--Wald current. `proper_completion_probe.wl` retains both $[\xi,v]$ and $v$ terms and verifies the regulated local density and its anchor-layer behavior. These checks establish the bulk form and the sign map $\Upsilon_{\mathrm p}=-\Upsilon_{2501}$ for the stated orientation; they do not manufacture an inner finite-action wall term.

**Assumptions for the integrated identity:** Linearized constraints vanish for both symplectic arguments; boundary flux is controlled; $v$ decays sufficiently fast at the asymptotic boundary; all integrals use one declared induced orientation.

**Remaining falsification test:** Construct an explicit non-collar smooth phase space and test H3. If the wall/joint limit does not vanish, retain the finite limit as horizon edge symplectic data rather than redefining the bulk form.

### H30 — Compact BTZ finite-wall endpoint and joint theorem

**Statement:** let the inner brick wall be $\rho=\epsilon$ with outward normal $n_\epsilon=-\partial_\rho$, and restrict to perturbations preserving exact Gaussian radial gauge,

$$
\mathrm ds^2=\mathrm d\rho^2
+g_{tt}\mathrm dt^2
+2g_{t\phi}\mathrm dt\mathrm d\phi
+g_{\phi\phi}\mathrm d\phi^2.
$$

For a fixed-$t$ endpoint slice,

$$
n_\epsilon\cdot\tau=0,
\qquad
\eta_\epsilon=0,
\qquad
\delta\eta_\epsilon=\delta^2\eta_\epsilon=0,
$$

and the Harlow--Wu endpoint form vanishes,

$$
C_\epsilon^\mu[\delta g]
=-\frac{1}{2\kappa_{\mathrm p}^2}
\gamma^{\mu\nu}n_\epsilon^\rho\delta g_{\nu\rho}=0.
$$

For the collar--Dirichlet family, $h=k=0$ in a full neighborhood of the wall, so at every finite $\epsilon<\rho_0$,

$$
\boxed{
\delta S_{\mathcal H_\epsilon}
=C_\epsilon
=\delta C_\epsilon
=\mathcal B_\epsilon
=\omega_\epsilon^{\rm pullback}
=S_{J_\epsilon}
=\delta S_{J_\epsilon}
=\delta^2S_{J_\epsilon}=0.
}
$$

**Status:** Exact component identity for the radial-gauge and collar assumptions; machine-verified.

**Evidence:** `btz_inner_wall_joint_check.wl` uses a generic two-parameter tangential deformation, not the special $m=1$ field, and passes $15/15$ standalone tests. It checks the inverse radial block, wall--slice orthogonality, boost angle through mixed second variation, joint density through mixed second variation, both independent Harlow--Wu one-forms, fixed-embedding field-space exactness of $\delta S_J$, collar source/flux, and the nonzero fixed-boost parameter-source calibration. A fresh `xact_verify_residuals` run with the `components` profile and full pipeline returns `allZero: true` for all $15$ scalar residuals, with no package, setup, check, or transport errors.

**Interpretation:** Radial gauge alone removes $C_\epsilon$ and preserves orthogonality but does not remove Brown--York source work. The extra collar--Dirichlet condition removes the source, flux, and every normal jet in the GHY variation. Hence the selected compact canonical-energy calculation has no hidden field-dependent inner-wall or endpoint-joint correction. Its perturbative inner Noether and area coefficients both vanish; the background $A/(4G)$ is instead the oppositely oriented bulk Noether corner of H16.

**Boundary of the claim:** The fused boost comparison functional $sA_\epsilon/\kappa_{\mathrm p}^2$ in H21 is not one of these orthogonal finite-wall joins. It arises when the wall is removed and the endpoint normals acquire finite relative boost. Non-orthogonal walls, moving joints, general source-retaining perturbations, and edge-mode extensions remain unproved.

### H31 — AdS-Rindler double cutoff and anchor-tail target

**Statement:** for $a=\pi/4$, $\rho=\cosh\chi$, the AdS-Rindler metric is

$$
\mathrm ds^2
=-\sinh^2\chi\,\mathrm d\tau^2
+\mathrm d\chi^2
+\cosh^2\chi\,\mathrm du^2.
$$

The global cutoff $r=R$ meets the brick wall $\chi=\epsilon$ at

$$
\cosh u_c
=\frac{\sqrt{R^2+1}-\sinh\epsilon}
{\sqrt2\cosh\epsilon}.
$$

The outer anchor strip and the wall-normal invariant obey

$$
\lim_{R\to\infty}
R\left(\frac\pi4-\phi_c(R,\epsilon)\right)
=\sinh\epsilon,
$$

$$
\left.n_\epsilon\cdot n_R\right|_{\epsilon=0}=-\frac1R,
\qquad
\lim_{R\to\infty}n_\epsilon\cdot n_R=-\tanh\epsilon.
$$

The anchor worldline density at $\tau=0$ is $\sinh\epsilon$, so its bounded background angle weight vanishes in the sequential $R\to\infty$, $\epsilon\to0$ limit. On the RT curve $x=\tanh u$, and the corrected raw density obeys

$$
\lim_{u\to\pm\infty}
-\frac18(1-\tanh^2u)^2(1+\tanh^2u)
\operatorname{sech}^2u=0,
$$

and the verified proper-completion density also has zero tails.

**Status:** Exact regulator geometry and anchor asymptotics machine-verified. H32 and H33 subsequently evaluate the fixed joint, bounded strip, and all explicit quadratic area sectors.

**Evidence:** `ads_rindler_regulator_geometry_check.wl` verifies the embedding hyperboloid, the induced Rindler metric, exact cutoff intersection, RT cutoff $x_c(R)$, $u_c$ asymptotics, fixed-$\epsilon$, $\epsilon=0$, and correlated strip limits, normal-angle limits, sequential background joint weight, two raw tails, two proper tails, and outer decay of the $v_L$ profile. Its standalone regression passes $16/16$ tests. A fresh `xact_verify_residuals` run with the full pipeline returns `allZero: true` for $22$ scalar residuals, with no package, setup, check, or transport errors.

**Source audit:** Appendix G.1 of `Generalized entropy of gravitational fluctuations (2501.08308v2).pdf`, rendered PDF page 102 (printed page 100), visually confirms the global/Rindler transformation used to construct the embedding formulas.

**Limit prescription:** for $v_L=-L^2\zeta_R/(L^2+r^2)$ use

$$
\lim_{L\to\infty}\lim_{\epsilon\to0^+}\lim_{R\to\infty},
$$

or require $R/L\to\infty$ before the large-$L$ limit. This makes the completion proper at the outer boundary before restoring the local extremal-gauge completion.

**Correction audit:** the geometry and cutoff-order results survive. The old
raw constant tail and fused-horizon discontinuity are withdrawn. H32--H35 now
verify zero endpoint tails and the corrected outer boundary layer. H36 gives
the arbitrary-perturbation implication under explicit hypotheses. The finite
proper Iyer--Wald completion still must not be relabelled as the raw tensor.

### H32 — AdS-Rindler fixed-embedding joint and bounded-strip falsification

**Statement:** For the project-normalized exact-diffeomorphism path

$$
g(\alpha)=G+\alpha\mathcal L_\zeta G
+\frac{\alpha^2}{2}\mathcal L_\zeta^2G+O(\alpha^3),
$$

keep the two regulator embeddings $\chi=\epsilon$ and $r=R$ fixed and define the right-joint scalar density

$$
j_J(\alpha)
=\sqrt{|q_J(\alpha)|}\,
\arccos\!\left(
\frac{g(\alpha)^{-1}(-\mathrm d\chi,\mathrm dr)}
{\sqrt{g(\alpha)^{-1}(\mathrm d\chi,\mathrm d\chi)
g(\alpha)^{-1}(\mathrm dr,\mathrm dr)}}
\right).
$$

Then

$$
\begin{aligned}
\lim_{R\to\infty}j_J^{(1)}
={}&-\frac{2}{\sqrt{3\pi}}
\left[
\bigl(\pi-\arccos(\tanh\epsilon)\bigr)\sinh\epsilon
+\tanh^2\epsilon
\right],\\
\lim_{R\to\infty}j_J^{(2)}
={}&\frac{1}{6\pi}
\left[
4\bigl(\pi-\arccos(\tanh\epsilon)\bigr)\sinh\epsilon
+\operatorname{sech}^3\epsilon\,
\sinh(3\epsilon)\tanh\epsilon
+9\operatorname{sech}^2\epsilon\tanh^2\epsilon
\right],
\end{aligned}
$$

and therefore

$$
\boxed{
\lim_{\epsilon\to0^+}\lim_{R\to\infty}j_J^{(1)}
=
\lim_{\epsilon\to0^+}\lim_{R\to\infty}j_J^{(2)}
=0.
}
$$

The verified asymptotic completion density is continuous at the endpoint, so its integral over the shrinking outer strip also tends to zero at fixed $\epsilon$.

**Status:** Exact fixed-$\epsilon$ large-$R$ coefficients and sequential limits machine-verified.

**Evidence:** `ads_rindler_anchor_perturbation_check.wl` constructs $h=\mathcal L_\zeta G$ and $k=\tfrac12\mathcal L_\zeta h$ directly in global AdS$_3$, expands the inverse metric to second order, obtains $-\mathrm d\chi$ by lowering $\partial_\chi$ with the background global metric, and evaluates the normalized $(-\mathrm d\chi,\mathrm dr)$ invariant at the exact cutoff intersection. Its Mathematica/xAct-runtime regression passes $12/12$ tests. In particular it checks

$$
\begin{aligned}
g^{-1}(-\mathrm d\chi,-\mathrm d\chi)
&=1+O(\alpha^3),\\
R^{-2}g^{-1}(\mathrm dr,\mathrm dr)&=1+O(\alpha^3),\\
R^{-1}g^{-1}(-\mathrm d\chi,\mathrm dr)&=-\tanh\epsilon+O(\alpha^3),\\
R^{-2}g_{tt}
&=-1+O(\alpha^3),
\end{aligned}
$$

as well as both displayed joint coefficients, both sequential zeros, the background line density, the vanishing strip width, and the vanishing bounded completion-strip limit.

**Assumptions:** Right anchor; fixed level-set embeddings; $R\to\infty$ at fixed $\epsilon>0$ before $\epsilon\to0^+$; project perturbative normalization; the angle branch is $\arccos(n_\epsilon\cdot n_R)$; no moving-surface or edge-mode variation. The unspecified overall Hayward orientation sign cannot change the sequential zero. The left anchor follows by the reflection symmetry of the selected real mode, but was not recomputed as an independent component run.

**Correction audit:** for the corrected real phase, all four scaled metric
coefficients beyond the background vanish at the endpoint, so the joint
vanishes already at fixed wall. The old nonzero formulas and raw logarithmic
comparison are withdrawn. H36 still states the general implication under its
regulated phase-space hypotheses.

**Not verified:** H35 subsequently supplies the full Brown--York outer strip coefficient for the selected fixed-embedding mode. Universal regulator-family and polarization existence, moving joints, and edge modes remain open; the dressed charge identity itself is conditional on H0--H6.

### H33 — Explicit AdS-Rindler quadratic area sectors and endpoint

**Statement:** On the $a=\pi/4$ RT geodesic, choose a unit tangent and a parallel orthonormal normal frame. For the exact-diffeomorphism perturbation $h=\mathcal L_\zeta G$, the linear displacement of the same geometric extremal curve is $V=-\zeta_\perp$. The endpoint density from H28 is

$$
\begin{aligned}
b_{\mathrm{area}}(u)
&:=h_{ua}V^a+\frac12V_aD_uV^a\\
&=\frac{\tanh u\,\operatorname{sech}^6u\,
\operatorname{sech}^3(2u)}{768\pi}
\bigl[
-696-719\cosh(2u)+304\cosh(4u)\\
&\hspace{39mm}
+449\cosh(6u)+136\cosh(8u)+10\cosh(10u)
\bigr].
\end{aligned}
$$

Its asymptotics are

$$
\lim_{u\to\pm\infty}b_{\mathrm{area}}(u)=0,
\qquad
\lim_{u\to+\infty}e^{2u}b_{\mathrm{area}}(u)=\frac{10}{3\pi},
\qquad
\lim_{u\to-\infty}e^{-2u}b_{\mathrm{area}}(u)=-\frac{10}{3\pi}.
$$

Hence

$$
\boxed{
\left[b_{\mathrm{area}}(u)\right]_{-\infty}^{+\infty}=0.
}
$$

The four quadratic area densities defined in H28 have no constant tails. More precisely,

$$
\begin{array}{c|cccc}
&\mathcal A_{\rm fixed}^{(2)}
&\mathcal A_{\rm cross}^{(2)}
&\mathcal A_{\rm embed}^{(2)}
&\mathcal A_{\rm total}^{(2)}\\ \hline
\displaystyle\lim_{u\to+\infty}e^{2u}(\cdot)
&\dfrac{8}{3\pi}&-\dfrac8\pi&\dfrac{4}{3\pi}&-\dfrac4\pi\\
\displaystyle\lim_{u\to-\infty}e^{-2u}(\cdot)
&\dfrac{8}{3\pi}&-\dfrac8\pi&\dfrac{4}{3\pi}&-\dfrac4\pi
\end{array}.
$$

**Status:** Exact component identity for the explicit real mode; machine-verified.

**Evidence:** `ads_rindler_area_endpoint_check.wl` constructs the global RT embedding $r^2=\cosh(2u)$, $\tan\phi=\tanh u$, verifies the unit tangent, an orthonormal normal frame of signature $(-,+)$, and covariant parallel transport of both normals. It projects $\zeta$, $h$, and $k=\tfrac12\mathcal L_\zeta h$ into that frame, sets $V=-\zeta_\perp$, evaluates all four H28 area densities, and evaluates the endpoint density. The Mathematica/xAct-runtime regression passes $25/25$ tests, including the vanishing tails and leading exponential coefficients of all area sectors, both endpoint limits, the oriented difference, and both endpoint leading coefficients.

**Assumptions:** Project normalization; unit AdS radius; the same exact-diffeomorphism metric path as H32; the area formula uses Taylor coefficients rather than second derivatives; the chosen normal frame is parallel; the unregulated limits $u\to\pm\infty$ are taken after constructing the RT-frame density.

**Correction audit:** the corrected Brown--Henneaux phase makes every displayed
$e^{-2|u|}$ coefficient zero; the densities in fact decay faster. The former
comparison with a raw $32/3$ tail is withdrawn because that tail came from the
incorrect radial sign. The endpoint conclusion needed here survives and is
stronger: every explicit area and displacement endpoint term vanishes.

**Not verified:** The renormalized integral of the total area coefficient, the second-order embedding correction, the analytic finite-$L$ constraint/current rearrangement for general perturbations, and the dressed CPS charge identity. H35 subsequently closes the full finite-$R$ outer coefficient for the selected fixed-embedding mode.

### H34 — Corrected AdS-Rindler finite-wall current limit

**Statement:** On the inner wall $\chi=\epsilon$, choose the outward normal
$n=-\mathrm d\chi$, the modular Killing field
$\xi=2\pi\partial_\tau$, GHY without the asymptotic AdS counterterm, and the
project-normalized exact-diffeomorphism path

$$
g(\alpha)=G+\alpha\mathcal L_\zeta G
+\frac{\alpha^2}{2}\mathcal L_\zeta^2G+O(\alpha^3).
$$

After stripping the common $1/\kappa_{\rm p}^2$, define

$$
\begin{aligned}
q_{\rm BY}^{(2)}
&=[\alpha^2]\left[-\sqrt q\,\tau^a\xi^b
(K_{ab}-K\gamma_{ab})\right],\\
q_{\rm EH}^{(2)}
&=[\alpha^2]\left[\frac12\sqrt q\,\tau_\mu n_\nu
(\nabla^\mu\xi^\nu-\nabla^\nu\xi^\mu)\right].
\end{aligned}
$$

The exact article identity is
$q_{\rm BY}=q_{\rm EH}+q_\Gamma$. For the corrected selected mode, exact
endpoint pullback and the independent unsimplified calculation give

$$
\boxed{
\lim_{u\to\pm\infty}
(q_{\rm BY}^{(2)},q_{\rm EH}^{(2)},q_\Gamma^{(2)})
=(0,0,0).
}
$$

The corrected raw fused-surface density is regular and also has zero endpoint
tail. Probes with $\epsilon=\lambda e^{-|u|}$ approach zero.

**Status:** Exact endpoint pullback and finite-wall algebra for one explicit
mode, with an independent high-precision evaluation of the unsimplified full
current.

**Evidence:** `ads_rindler_inner_wall_endpoint_pullback_check.wl` reconstructs
$h=\mathcal L_\zeta G$ and
$k=\tfrac12\mathcal L_\zeta h$ in global AdS$_3$, performs the exact
global-to-Rindler pullback, sets $z=e^{-|u|}$, and passes $12/12$ exact tests
for the six independent endpoint components of both $h$ and the tested
quadratic relation:

$$
h_\infty=0,
\qquad k_\infty=0.
$$

The independent audit observed a one-run `$Failed` in the quadratic
$(\chi,u)$ direct limit. This was a symbolic timeout, not a nonzero residual.
The script now retries a blocked direct limit with a regular endpoint series
that retains every nonpositive power through $z^0$ and reports a double
blockage separately with exit code 2. The repaired script passed $12/12$ in
the fresh full-suite audit.

As an independent check,
`ads_rindler_inner_wall_current_check.wl` evaluates the unsimplified inverse
metric, connection, extrinsic curvature, Brown--York tensor, future cut normal,
and Komar density through $\alpha^2$ at 60-digit working precision. A
three-point Richardson polynomial in $e^{-|u|}$ at $|u|=10,12,14$ was applied
independently at both ends for
$\epsilon\in\{1/2,1/4,1/8,1/16\}$. The maximum extrapolated individual tail
is $1.03\times10^{-11}$ and the maximum sum is $8.50\times10^{-12}$ at the
current numerical precision; the regression passes $10/10$ tests.
Correlated probes use $\lambda\in\{1/2,1,2\}$ and $|u|=4,6,8,10$.

**Assumptions:** Inner induced orientation; $n=-\mathrm d\chi$; future normal
on the $\tau=0$ cut; no inner AdS counterterm; exact background modular Killing
field; Taylor-coefficient normalization; fixed wall and cut embeddings; and a
regular $z\to0^+$ endpoint expansion at fixed $\epsilon>0$ that may be
differentiated once in the wall charge. A
conversion to the common outer-reference orientation can flip all three signs
together but cannot change their zero limit.

**Correction audit:** the old
$(16/3,-16/3,32/3)\sinh^2\epsilon$ split and fused-horizon discontinuity are
withdrawn. They depended on the same incorrect radial sign as old H09. The
corrected vector is exactly the declared primary quadrature and gives zero
endpoint limits before and after wall fusion. The conceptual distinction
between the complete finite-action wall charge and the raw second-order
Noether representative remains, but it is no longer supported by an anchor
divergence in this mode.

**Not verified:** The same statement for arbitrary perturbations, moving walls,
or edge modes; and the general equality
with the proper non-Killing canonical-energy corner form.

### H35 — Full outer Brown--York coefficient and boundary-layer strip

**Statement:** For the same project-normalized exact-diffeomorphism path and
the $a=\pi/4$ modular Killing field, evaluate the article's renormalized outer
Brown--York charge on $r=R$ with outward normal toward increasing $r$. After
stripping $1/\kappa_{\rm p}^2$, the exact quadratic large-$R$ density is

$$
\boxed{
q_{\infty}^{(2)}(\phi)
=-(-1+\sqrt2\cos\phi)(-1+3\cos4\phi).
}
$$

It vanishes at $\phi=\pm\pi/4$. For
$y=R(\pi/4-\phi)$, the full finite-cutoff density satisfies

$$
\lim_{R\to\infty}
R\,q_R^{(2)}\!\left(\frac\pi4-\frac yR\right)
=4y.
$$

Using $R(\pi/4-\phi_c)\to\sinh\epsilon$ therefore gives

$$
\boxed{
\lim_{R\to\infty}R^2
\int_{\phi_c(R,\epsilon)}^{\pi/4}
q_R^{(2)}(\phi)\,\mathrm d\phi
=2\sinh^2\epsilon,
}
$$

so the exact strip contribution vanishes at fixed $\epsilon$ as $R\to\infty$
and its scaled coefficient also vanishes after $\epsilon\to0^+$.

**Status:** Exact symbolic identity for the selected mode and fixed regulator
embeddings.

**Evidence:** `ads_rindler_outer_wall_charge_check.wl` constructs the global
$h=\mathcal L_\zeta G$ and
$k=\tfrac12\mathcal L_\zeta h$, the finite-$R$ inverse metric, connection,
extrinsic curvature, induced metric, renormalized Brown--York tensor including
the outer AdS counterterm, cut normal, and modular charge density through
$\alpha^2$. It verifies the exact large-$R$ density, both endpoint zeros, the
endpoint Taylor series, and the full finite-$R$ boundary-layer limit before
integrating over $0\le y\le\sinh\epsilon$. The standalone regression passes
$11/11$ tests.

**Assumptions:** Outer induced orientation; fixed global cylinder $r=R$;
fixed brick wall $\chi=\epsilon$ determining $\phi_c$; $R\to\infty$ at fixed
$\epsilon>0$ before wall fusion; project Taylor normalization. The left strip
uses reflection symmetry of the exact density.

**Correction audit:** the displayed density and scaled strip coefficient have
been recomputed after fixing the radial sign. The unscaled strip still
vanishes in the declared order, so the qualitative conclusion survives. No
raw constant anchor tail remains to be cancelled.

**Not verified:** Moving outer or inner embeddings, edge-mode contributions,
general Brown--Henneaux perturbations, and the arbitrary-perturbation dressed
identity.

### H36 — Regulated horizon phase-space implication

**Statement:** on a compatible family of restricted fixed-embedding vacuum
phase spaces satisfying H0--H6 of `regulated horizon phase space theorem.md`,
the finite-action identity has the regulator limit

$$
\delta^2H_\xi^\infty
=\frac{s}{2\pi}
\delta^2\!\left(\frac{A[g,\gamma]}{4G}\right)
+E_{\mathrm{can,p}}[h^{\rm ext}].
$$

**Status:** Exact conditional implication assembled from independently
verified ingredients; not a universal phase-space existence theorem.

**Evidence:** H03--H07 give the finite-action boundary descent and orientation;
H12 gives the off-shell Hamiltonian and on-shell outer-minus-inner
organization; H20 separates radial descent from canonical-pair flux; H21 and
H30 verify the two wall-to-corner branches in compact BTZ; H27 verifies the
fixed-cut Noether/area obstruction; H28 verifies the AdS$_3$ moving-area
Jacobi decomposition; H32--H35 verify the complete selected-mode regulator
accounting. The proof uses these identities in this order and never identifies
the artificial Brown--York wall generator with the fused bulk Noether corner.

**Assumptions:** A common topology and controlled maps between the regulated
phase spaces; twice differentiable outer Hamiltonian, area, symplectic, and
surface functionals with convergent first and second variations; a
differentiable Lagrangian Brown--York polarization;
two-sided Kruskal regularity with uniform normal decay; vanishing wall/joint
descent for $v$ and $[\xi,v]$; wall-to-corner transgression; the separate
first- and second-order equations; and existence of a fixed-cut
Hollands--Wald representative on every orbit under consideration.

**Not verified:** Existence of one such polarization for every smooth horizon
perturbation, the analytic regulator family H0, global existence of the
Hollands--Wald representative, the complete moving-embedding finite action,
or a matter extension.

### H37 — Finite-action gauge-completion cocycle

**Statement:** for a first-order perturbation $p$ and field-independent gauge
vectors $v,w$,

$$
\mathfrak D_p[v]
:=\Omega_{mathrm p}
[p+\mathcal L_vG,\mathcal L_{[\xi,v]}G]
-\Omega_{mathrm p}[\mathcal L_\xi p,\mathcal L_vG]
$$

obeys

$$
\mathfrak D_p[v]
=E_{mathrm{can,p}}[p+\mathcal L_vG]
-E_{mathrm{can,p}}[p],
$$

$$
\mathfrak D_p[v]
+\mathfrak D_{p+\mathcal L_vG}[w]
=\mathfrak D_p[v+w].
$$

Consequently, if $h^{\rm ext}=h+\mathcal L_vG$ and H0--H5 identify
$\mathfrak D_h[v]=\int_\gamma\Upsilon_{\mathrm p}[h,v]$, then

$$
E_{\mathrm{can,p}}^{\rm GI}[h]
=E_{\mathrm{can,p}}[h]
+\int_\gamma\Upsilon_{\mathrm p}[h,v]
=E_{\mathrm{can,p}}[h^{\rm ext}].
$$

**Status:** Exact symplectic algebra machine-verified; surface identification
conditional on the declared finite-action regulator hypotheses.

**Evidence:** `finite_action_gauge_cocycle_check.wl` uses generic symbolic
vectors and a generic antisymmetric bilinear matrix. It passes $4/4$ exact
tests: the energy-difference identity, cocycle, gauge invariance of the
completed energy, and zero completion in the selected extremal
representative.

**Assumptions:** $\xi$ is a background Killing field; $v,w$ are
field-independent in this calculation; the ordered convention is
$E_{\rm can,p}[p]=\Omega_{\mathrm p}[p,\mathcal L_\xi p]$. No Killing
condition is imposed on $v$, $w$, or their commutators with $\xi$.

### H38 — Source boundary of 2501 Appendix B.3

**Statement:** Appendix B.3 of 2501.08308v2 explicitly establishes the
vanishing of its radial-gauge symplectic boundary form for the displayed
AdS-Rindler falloffs. It does not establish the vanishing of the project
Brown--York canonical-pair flux for arbitrary boundary data.

**Status:** Text-extracted and visually confirmed on rendered PDF pages
76--77.

**Evidence:** The appendix introduces the brick wall and GHY term, imposes
$h_{\rho\mu}|_{\rho=\epsilon}=0$, and writes
$c^\nu=h_{\mu\alpha}n^\alpha q^{\mu\nu}|_\gamma$, which vanishes in that
gauge. It then records mode falloffs and states the general stationary-black-
hole/different-boundary-term extension as an expectation under uniform decay.

**Interpretation:** H2 is a faithful regulator regularity hypothesis, while
H1 is an additional finite-action phase-space input. The latter cannot be
deduced from radial gauge alone.

### H39 — Compact BTZ Neumann polarization and fixed-boost obstruction

**Statement:** on the fixed-$t$ BTZ wall,

$$
\Pi^{ij}=\frac1{\kappa_{\rm p}^2}
\operatorname{diag}(-1,1),
$$

so the $r_+$ direction and the tested left $m=1$ and right $m=2$ chiral
Brown--Henneaux modes satisfy $\delta\Pi^{ij}=0$. For the fixed-boost family,

$$
\Pi^{ij}=\frac1{\kappa_{\rm p}^2}
\operatorname{diag}(-r_+/s,s/r_+),
$$

and the trace-Legendre family
$w_\zeta=\zeta\Pi^{ij}\gamma_{ij}/2$ obeys

$$
\lim_{\rho\to0^+}\left[
2\pi\bigl(\mathcal B[\partial_{r_+}]
+\partial_{r_+}w_\zeta\bigr)
+\partial_{r_+}I_{\rm fuse,\rho}
\right]
=\frac{\pi s\zeta}{\kappa_{\rm p}^2}.
$$

The two raw chiral representatives also have nonzero
$\lim_{\rho\to0}\rho^2h_{\mu\nu}h^{\mu\nu}$ and hence invariant
$\rho^{-2}$ divergences.

**Status:** Exact symbolic finite-cutoff construction plus a reproducible
obstruction within the trace-Legendre family.

**Evidence:** `btz_horizon_neumann_polarization_check.wl` explicitly
linearizes the density-weighted Brown--York momentum about the inner-oriented
BTZ wall, evaluates the fixed-$t$ and fixed-boost families, and computes both
chiral invariant norms. It passes $19/19$ exact tests.

**Interpretation:** Neumann data provide a nontrivial Lagrangian polarization,
but a wall Legendre transform and the fused area/boost corner cannot be chosen
independently. The fixed-boost residual is the target for the moving-edge
canonical pair. The raw chiral modes do not yet define allowed Kruskal-smooth
horizon tangents.

**Assumptions:** $r_+>0$, $s>0$, $\rho>0$; inner outward normal
$-\partial_\rho$; fixed wall embedding; no inner AdS counterterm; project
coupling and Taylor conventions.

**Not verified:** a no-go theorem for all mixed polarizations, a nonzero
smooth horizon completion of the chiral modes, and the moving-action
derivation of the edge term.

### H40 — Complete moving first variation and finite-wall BTZ benchmark

**Statement:** pulling the complete project action back to a fixed reference
region defines

$$
\Theta_{{\rm p},X}[g,X;\delta]
=\Theta_{\rm p}[X^*g;\delta(X^*g)],
$$

so $(\mathcal L_wg,-w)$ is a degeneracy when every moving domain, normal, and
endpoint is included. The Brown--York contribution to moving timelike-wall
work decomposes as

$$
\mathcal B_X
=-\frac12\Pi^{ij}\delta\gamma_{ij}
-D_i(\Pi^{ij}\chi_j)
+(D_i\Pi^{ij})\chi_j
-\Pi^{ij}K_{ij}\chi_\perp,
$$

and a non-orthogonal joint has

$$
\Omega_J
=\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\delta_X\eta\wedge\delta_X\sqrt q.
$$

The Einstein equation term in the direct pulled-back variation completes the
wall-interior momentum off shell:

$$
P_j^{\rm tot}=D_i\Pi^i{}_j
-\frac{\sqrt{-\gamma}}{\kappa_{\rm p}^2}
n_\mu\mathcal E^{\mu\nu}e_{j\nu},
$$

$$
P_\perp^{\rm tot}=-\Pi^{ij}K_{ij}
-\frac{\sqrt{-\gamma}}{\kappa_{\rm p}^2}
n_\mu n_\nu\mathcal E^{\mu\nu}.
$$

The endpoint completion is the inherited Harlow--Wu form plus the selected
Hayward polarization; the endpoint of
$-D_i(\Pi^{ij}\chi_j)$ is retained and combined with them. For the compact
BTZ background, direct differentiation of the complete finite-wall action
agrees exactly with $P_\perp^{\rm tot}\chi_\perp$ at both walls.

For compact fixed-boost BTZ the trace wall generator tends to
$W_\zeta=\zeta I_{\rm fuse}/2$. The matched boundary representative is
$I_{{\rm corner},\zeta}=(1-\zeta/2)I_{\rm fuse}$ and its transgression
residual vanishes exactly.

**Status:** Complete abstract first variation and exact compact BTZ
wall-interior component benchmark. This is not yet a construction of an
integrable moving-wall phase space for general Brown--Henneaux data.

**Evidence:** `moving_btz_total_embedding_momentum_check.wl` passes $15/15$
exact tests. It integrates the BTZ Einstein--Hilbert density, includes inner
and outer GHY terms and the inherited outer counterterm, differentiates both
coordinate cutoffs, and verifies

$$
\partial_\epsilon S
=-\frac{r_+^2}{\kappa_{\rm p}^2}\sinh2\epsilon
=-P_{\perp,\epsilon}^{\rm tot},
\qquad
\partial_{\rho_R}S
=-\frac{r_+^2}{\kappa_{\rm p}^2}e^{-2\rho_R}
=P_{\perp,R}^{\rm tot}.
$$

It also verifies the timelike-wall vacuum Gauss constraint with the correct
sign, $K^2-K_{ij}K^{ij}-2=0$. A fresh xCoba kernel independently returned
zero for the cosmological Einstein tensor and the Brown--York momentum
residual. The generic residual verifier was not counted as passing because
its tensor canonicalization rejected already reduced arrays/scalars, even
though its canonical residuals were zero.  The separate
`moving_embedding_edge_algebra_check.wl` tests linearity, product rules, a
placeholder gauge cancellation, and the compact redistribution identity.
The standard bare-bulk formula
$\int_\Sigma(\theta+i_\chi L)+\int_{\partial\Sigma}Q_\chi$ and the Hayward
potential $\eta\,\delta\sqrt q/\kappa_{\rm p}^2$ were independently checked
in extracted text and rendered pages of arXiv:1706.05061 and
arXiv:1912.01636.

**Interpretation:** the earlier Brown--York density was the on-shell part of
the total wall-interior momentum. The missing off-shell term is precisely the
normal/tangential Einstein constraint, while Harlow--Wu and Hayward data live
at the endpoint rather than in $P_\perp^{\rm tot}$. The complete first
variation strengthens the fixed-section cocycle interpretation of
$\Upsilon_{\rm p}$. H43 subsequently constructs one actual smooth moving
polarization with an integrable uniform normal translation; a global
field-dependent Hollands--Wald solution remains necessary for the full
section-change statement. H52 subsequently constructs that solution on the
projected diagonal sector.

**Assumptions:** compatible embeddings; the project finite-action potential;
$K_{ij}=\gamma_i{}^\mu\gamma_j{}^\nu\nabla_\mu n_\nu$; fully Dirichlet
piecewise action for the displayed Hayward potential; and induced joint sign
$\sigma_J$.

**Not verified:** a finite-$\epsilon$ trace-Neumann realization of the compact
redistribution outside the H43 mixed family; integrability of generic or
nonuniform normal translations; a component
benchmark for non-orthogonal moving joints beyond the exact area--boost
variation; global field-dependent HW cocycle; or quantum edge/crossed-product
statements. The field-dependent item is closed for the H52 projected sector,
but remains open for a general nonlinear horizon phase space.

### H41 — Hollands--Wald boundary-value benchmarks

**Statement:** in a parallel normal frame on an AdS$_3$ extremal geodesic,

$$
Jv_{\perp a}=-\delta_hK_a,
\qquad
J=-D_u^2+1,
$$

fixes the extremal surface, while
$\nabla_kv_k=-h_{kk}/2$ and $\nabla_lv_l=-h_{ll}/2$ impose the independent
normal-plane jets. On the compact BTZ circle the spectrum is
$1+n^2/r_+^2>0$. Two explicitly glued $m=1,2$ representatives are nonzero and
Kruskal smooth at the horizon while retaining their asymptotic
Brown--Henneaux generators.

On the complete AdS-Rindler geodesic,

$$
G_J(u,u')=\frac12e^{-|u-u'|}
$$

is the unique decaying inverse. For the selected real mode the normal
extremal-gauge vector obeys

$$
v^t=O(r^{-2}),
\qquad
v^r=O(r^{-1}),
\qquad
v^\phi=O(r^{-2})
$$

at both anchors.

**Status:** Exact compact full-HW construction and exact selected-mode
AdS-Rindler extremal-gauge construction. The latter is the gauge condition
sufficient for the canonical-energy boundary result; a uniform full
Gaussian-null extension for arbitrary mode sums is not claimed.

**Evidence:** `hollands_wald_boundary_value_check.wl` passes $21/21$ exact
tests: compact Kruskal components and invariant norms, $m=1,2$ Jacobi solves,
normal jets, the noncompact Green kernel and derivative jump, and both proper
anchor limits. The extremal-gauge sufficiency statement was text-extracted
and visually confirmed on Appendix B.1 page 71 of arXiv:2501.08308v2.

**Interpretation:** the large radial component of the old local choice
$v=-\zeta$ is tangential to the RT geodesic near an anchor. It is not fixed by
extremality. Retaining only $v_\perp=-\zeta_\perp$ removes the apparent
conflict between surface fixing and proper Brown--Henneaux asymptotics.

**Assumptions:** smooth two-sided perturbations; the parallel normal frames
of the existing area-displacement benchmark; periodic compact data; and the
proper component falloffs displayed above.

**Not verified:** one fixed weighted space supporting a uniform full-HW
extension and an infinite Brown--Henneaux mode sum; or compatibility of the
nonzero compact smooth completions with a single fixed-wall Neumann
polarization.

### H42 — Finite mode block and constrained fixed-anchor space

**Statement:** the normalized $(2,0)$ Brown--Henneaux tower is

$$
\zeta_n
=\sqrt{\frac6{n!(n+3)!}}
\operatorname{ad}_{\xi_{-1}}^n\zeta_0.
$$

The $n=0,1$ normal extremal-gauge data give the Hermitian Jacobi/edge block

$$
\mathcal J^{(2)}\simeq
\begin{pmatrix}
2.66666666666667&-1.99336768791636\,i\\
1.99336768791636\,i&2.97142857142857
\end{pmatrix},
$$

with eigenvalues $4.81823112585172$ and $0.819864112243516$. Its tested
densities decay as $e^{-2|u|}$.

For a real physical frequency $m=n+2$ on the $a=\pi/4$ interval, the two
fixed-anchor equations have

$$
\det M_m=-\sin\frac{m\pi}{2}.
$$

Every odd $m$ therefore has no nonzero fixed-anchor phase. Moreover, for
$A_m^2+B_m^2=1$,

$$
|f_m(a)|^2+|f_m(-a)|^2=1,
$$

so at least one endpoint amplitude is at least $1/\sqrt2$, uniformly over all
odd frequencies.

This per-frequency obstruction does not extend to a mode-sum no-go. The
explicit combination

$$
\cos3\phi-\cos5\phi
$$

vanishes at both anchors. In $H^s(S^1)$ with $s>1/2$, endpoint evaluation is
continuous and the fixed-anchor space is the closed codimension-two kernel of
$E_\pm f=f(\pm\pi/4)$. The bounded projection

$$
P_Af=f+\frac{f(a)+f(-a)}2\cos4\phi
-\frac{f(a)-f(-a)}2\sin2\phi
$$

constructs an adapted mode space explicitly.

**Status:** Exact per-frequency obstruction, explicit repair by a constrained
weighted mode space, and a high-precision finite extended-edge benchmark.
This is not a complete finite-action $\Upsilon_{mn}$ matrix.

**Evidence:** `ads_rindler_mode_space_check.wl` passes $12/12$ tests and now additionally tests the
positive minimum eigenvalue, exact $e^{-2|u|}$ tail coefficients, the
cross-frequency counterexample, and the projection identities. It
generates the first descendant with the local normalized Killing convention,
checks Hermiticity, the real positive spectrum, the $m=2,3$ determinants, and
the uniform per-frequency endpoint identities for $m=3,5$.

**Interpretation at H42:** the unprojected frequency basis is not a tangent
basis of the selected fixed-anchor space, but a nontrivial mode-sum phase
space exists after projection. The displayed $\mathcal J$ is only the
Jacobi/area block. H61 later shows that the complete metric quotient is
covered instead by a global-Killing PSL section, not a physical moving-anchor
pair.

**Assumptions:** the normalized $(2,0)$ tower; $a=\pi/4$; fixed anchors at
$t=0$; and the previously verified parallel normal frame.

**Not verified at H42:** the complete finite-action form or time covariance.
H51 subsequently proves the adapted spectral-domain algebra and projected
transition limit; H59a--H60 close the regulator and time-covariance theorem;
H61 extends it to the full metric quotient; and H62 proves complete
canonical-energy positivity and its $H^2$ form closure.

### H43 — Nonzero smooth moving BTZ polarization and integrability

**Statement:** let $F\in\operatorname{Diff}^+(S^1)$ have degree one and set
$R(\phi)=r_+F'(\phi)$. The exact fixed-boost collar

$$
\mathrm ds^2
=\mathrm d\rho^2-s^2\sinh^2\rho\,\mathrm d\lambda^2
+R(\phi)^2\cosh^2\rho\,\mathrm d\phi^2
$$

is a nonzero Kruskal-smooth vacuum collar containing the two compact horizon
germs. Extend those germs by stationary proper radial bumps that vanish
before infinity; the resulting exact family is globally time-symmetric and
has unchanged outer Brown--Henneaux data. At $\rho=\epsilon$,

$$
\Pi^{ij}
=\kappa_{\rm p}^{-2}\operatorname{diag}(-R/s,s/R),
$$

and

$$
\mathcal B_X
=-\delta_X\left(sR\cosh^2\epsilon/\kappa_{\rm p}^2\right),
\qquad
\delta_X\Pi^{ij}\wedge\delta_X\gamma_{ij}=0.
$$

Thus

$$
w_{{\rm sm},\epsilon}
=\frac12\Pi^{ij}\gamma_{ij}
+\frac{sR}{2\kappa_{\rm p}^2}
$$

defines a finite-wall Lagrangian mixed polarization. Uniform normal
translation is Hamiltonian with $H_\perp^{\rm edge}=0$. The matched comparison
corner is

$$
I_{{\rm corner},{\rm sm},\epsilon}
=\frac{sR}{\kappa_{\rm p}^2}
\left(\cosh\epsilon-\cosh^2\epsilon\right)=O(\epsilon^2).
$$

On a compact fixed-$(r_+,s)$ finite-dimensional parameter neighborhood with
$0<c\leq F'\leq C$, this realizes the moving hypotheses
H0$_X$--H6$_X$.

**Status:** Exact finite-amplitude controlled-family construction. This is
the first non-collar, nonzero regulated phase space in the project and the
first proved normal-translation integrability result. It does not upgrade
the fixed-embedding H36 proposition to arbitrary data. Because the stationary
collar is locally a circle reparametrization of BTZ and the deformation is
extended by a proper radial bump that vanishes before
infinity, it has unchanged asymptotic data and carries no nontrivial outer
Brown--Henneaux charge.

**Evidence:** `btz_smooth_moving_polarization_check.wl` passes $20/20$ exact
tests. It independently computes the Ricci tensor for arbitrary positive
$R(\phi)$, the finite-wall momentum and flux, the mixed source primitive,
total normal momentum, time-symmetric Cauchy data, orthogonal
Harlow--Wu/Hayward endpoint zeros, physical/regulator transgression limits,
the degree-one integral, and the two zero-integral edge tangents. A separate
fresh xAct/xCoba kernel
returns `True` and the zero $3\times3$ matrix for
$R_{\mu\nu}+2g_{\mu\nu}$ with arbitrary scalar $R(\phi)$.

**Interpretation:** the trace-only Legendre transform was not the most general
finite-wall polarization. Adding the local fixed-boost term
$sR/(2\kappa_{\rm p}^2)$ supplies the full source primitive on this smooth
family. The added term is ensemble-dependent and therefore does not define a
universal tensorial wall functional outside the selected submanifold. The
matched corner is a regulator-removal comparison representative, not an
additional finite-wall joint; the actual orthogonal Hayward joint vanishes.

**Assumptions:** fixed $r_+>0$ and $s>0$ on the physical edge phase space;
$F'>0$; degree-one orientation-preserving circle maps; compact
finite-dimensional parameter set; uniform radial wall
translation; inner outward normal $-\partial_\rho$; no inner AdS counterterm;
fixed boost normalization.

**Not verified:** nonuniform shape integrability; an infinite-dimensional
completion with uniform derivative estimates; compatibility with the full
Brown--Henneaux mode space; an anchored analogue; or quantum edge data.

### H44 — Local projected $H^s$ continuity

**Statement:** on the fixed-anchor projected unit-boundary basis, the exact
local Iyer--Wald kernels obey

$$
|B_{mn}^{\rm local}|\leq C(m+n)^2.
$$

Therefore the local project-oriented corner form has an absolutely convergent
mode sum and a unique continuous extension to $\mathcal H_A^s$ for every
$s>5/2$. Its physical projected diagonal entries obey an eight-periodic
$m^{-1}$ asymptotic law.

**Status:** proved local infinite-dimensional theorem with a nonoptimal
Sobolev threshold. It is not the complete finite-action form and does not
prove positivity.

**Evidence:** `ads_rindler_projected_high_frequency_check.wl` passes $9/9$
exact tests. It derives both complex two-frequency kernels, verifies the
degree-six through degree-four endpoint factorization, the diagonal
anchor-scaled profile, and the eight residue-class integrals. Direct
high-precision integration of the exact finite-frequency kernels independently
approaches the predicted diagonal constants. The functional estimate follows
from the exponential anchor weight, the verified powers of $\cos2\phi$, and
Cauchy--Schwarz: $\sum m^2|b_m|<\infty$ for $s>5/2$.

**Assumptions:** $a=\pi/4$; unit-boundary Brown--Henneaux representatives;
the bounded projection $P_A$; project/2501 sign map already fixed in H08; and
the local Iyer--Wald representative only.

**Not verified at H44:** optimality, finite-action completion, regulator-
uniform mode sums, or canonical-energy positivity. H59--H60 subsequently
close the regulator sum, while H62 proves that the **combined** form has the
optimal ordinary $H^2$ threshold and is positive. These later results do not
upgrade the separated local representative to $H^{3/2}$.

### H45 — Proper-completion/mode-scale obstruction

**Statement:** for $p_L=L^2/(L^2+r^2)$ on the RT curve,

$$
p_L=\frac{L^2\cos2\phi}{1+L^2\cos2\phi},
\qquad
p_L\left(\frac\pi4-\frac yN\right)
\longrightarrow\frac{2y}{2y+N/L^2}.
$$

Hence a truncated tower $N\leq M$ can approach the local completion only
along a correlated route $M/L(M)^2\to0$. Fixed $L$ followed by
$M\to\infty$ is not the same limit.

**Status:** exact kinematic necessity theorem. It does not yet prove a
sufficient operator error bound for the complete cocycle.

**Evidence:** `ads_rindler_proper_completion_scaling_check.wl` passes $11/11$
exact tests for the RT profile, its first two switching-layer jets, the mixed
mode--regulator profile, the selected-mode switching integral $-1/3$, and the
finite-wall anchor expansion
$\sinh\epsilon/R+\cosh^2\epsilon/(2R^2)+O(R^{-3})$.
The original `proper_completion_probe.wl` independently gives the selected
switching density $-z^2/(1+z)^4$ and local integral convergence.

**Assumptions:** the declared radial profile; sequential RT restriction; and
positive mode and regulator scales.

**Not verified:** a summable bound for the full non-Killing potential under
$M/L^2\to0$; sufficiency of the composite conditions
$M\sinh\epsilon/L\to0$ and $L/R\to0$ for the complete joint terms;
or independence of the final result from admissible diagonal schedules.

### H46 — Corrected low-mode finite-wall linear endpoints

**Statement:** at every fixed Rindler wall $\chi>0$, the six independent
components of the linear global-to-Rindler pullback have zero
$u\to+\infty$ constant term for the corrected complex unit-boundary modes
$m=2,3,4,5$. Consequently the same is true for
$P_A\cos3\phi,P_A\sin3\phi,P_A\cos5\phi,P_A\sin5\phi$.

**Status:** exact finite-mode linear wall-data benchmark. It is not a
quadratic Brown--York charge theorem or a uniform tower estimate.

**Evidence:** `ads_rindler_projected_wall_endpoint_check.wl` passes $2/2$
exact tests after computing the 24 complex component limits and combining
them linearly into the four projected real modes. Every entry is exactly
zero. The computation uses the corrected closed bulk vector and does not use
the historical wrong-radial-sign endpoint algebra.

**Assumptions:** fixed $\chi>0$ before the endpoint limit; regular
$q=e^{-u}\to0^+$ branch; $t=0$ cut; corrected global/Rindler map.

**Not verified:** the left endpoint in the finite-mode script; the
$\chi\to0$ interchange; or a complete finite-action mode-sum bound. The
right-end symbolic-frequency jet and Brown--York flux order are upgraded in
H49 below.

### H47 — Fixed-anchor projection does not impose a wall polarization

**Statement:** the four-mode fixed-anchor block

$$
\{P_A\cos3\phi,P_A\sin3\phi,P_A\cos5\phi,P_A\sin5\phi\}
$$

is not a pointwise Lagrangian subspace of the finite-wall Brown--York
canonical pair. Thus endpoint decay and fixed-anchor tangency do not imply
zero wall symplectic flux.

**Status:** numerically resolved obstruction with an exact generic
linearization of the Brown--York momentum. It is a falsification of automatic
zero flux, not yet a classification of compatible polarizations.

**Evidence:** `ads_rindler_projected_wall_flux_check.wl` derives
$\delta\Pi^{ab}[h]$ including normal-shift components, evaluates all six
antisymmetric pairings at three wall points, and passes $4/4$ regressions.
At the symmetric point $(0,1/2,0)$ the flux is numerically zero, but at
$(0,1/2,1/3)$ and $(0,1/4,2/3)$ it is manifestly nonzero. The largest density
is $43.2355$, whereas the maximum change under step halving is
$1.70\times10^{-8}$.

**Interpretation:** the selected-mode endpoint zero is not a wall-polarization
theorem. Since $\delta(\mathcal B+\delta w)=\delta\mathcal B$, a scalar
transgression cannot repair the same non-Lagrangian tangent block. A complete
finite-action construction must either restrict the mode space to a
Lagrangian submanifold or retain a compensating wall/edge canonical pair.

**Assumptions:** fixed coordinate wall, corrected projected modes, stripped
$1/\kappa_{\rm p}^2$, three declared sample points, and high-precision central
differences for the mode jets.

**Not verified:** the integrated wall flux; an exact symbolic nonzero value;
its horizon-limit scaling; existence of a compatible infinite-dimensional
mixed polarization; or cancellation against joint/embedding edge flux.

### H48 — Compensated moving-inner-embedding wall benchmark

**Statement:** for a Brown--Henneaux tangent $h=\mathcal L_\zeta G$ and
$\chi=-p_L\zeta$, the moving pulled-back perturbation is exactly

$$
\Delta_XG=\mathcal L_{(1-p_L)\zeta}G.
$$

It suppresses the H47 Brown--York flux on every fixed wall core and along a
joint outer/proper schedule. At fixed core point the flux is $O(L^{-4})$ for
a fixed finite set of modes.

**Status:** exact kinematic identity plus a stable low-mode finite-wall
scaling benchmark. It is not a uniform projected-tower theorem.

**Evidence:** `ads_rindler_compensated_wall_scaling_check.wl` passes $6/6$
tests after reusing the exact generic linearized Brown--York momentum. For
$L=4,8,16$, the maximum four-mode core flux decreases from $2.17963$ to
$0.204356$ to $0.0142930$. Along the actual anchor points with $R=L^2$, it
decreases from $6.79298\times10^{-2}$ to $1.15186\times10^{-3}$ to
$1.83487\times10^{-5}$. The step-halving residual is
$5.17\times10^{-11}$.

**Assumptions:** the proper profile $p_L=L^2/(L^2+r^2)$; the four corrected
projected modes; fixed positive wall cutoff; and the declared sample points.

**Not verified at the level of this low-mode benchmark:** uniformity in the
complete $H^s$ tower; the integrated compensated wall core; the
$\epsilon\to0$ limit; or schedule independence. H51 subsequently closes the
projected RT transition sector, H49 closes the complete far-wall tail, and
H50 closes the complete raw far-joint kernel. The proper-profile outer-joint
mismatch remains separate from that raw-joint theorem.

### H49 — Complete symbolic-frequency far-wall kernel

**Statement:** put $q=e^{-u}$ and
$y=\tanh(\epsilon/2)$.  After factorizing the corrected complex
Brown--Henneaux vector as $\zeta_m=W^mU_m$, the complete normalized wall
metric and densitized Brown--York momentum are polynomials of frequency
degrees three and four.  Their same-chirality antisymmetric wall kernel
vanishes identically.  Every nonzero mixed-chirality coefficient
$K_{ab}^{+-}(q,y)$ in

$$
\mathcal F^{\rm wall,+-}_{mn}
=\sum_{a,b=0}^4m^an^bK_{ab}^{+-},
\qquad a+b\leq7,
$$

satisfies the exact joint valuations

$$
\operatorname{ord}_{q=0}K_{ab}^{+-}\geq5,
\qquad
\operatorname{ord}_{y=0}[q^5]K_{ab}^{+-}\geq1,
\qquad
\operatorname{ord}_{q=0}K_{ab}^{+-}(q,0)\geq6.
$$

Since there are only twelve nonzero rational coefficient functions and their
denominators are nonzero in a sufficiently small physical endpoint
rectangle, Taylor's formula on that compact set gives the uniform bound

$$
\boxed{
|\mathcal F^{\rm wall}_{mn}(q,\epsilon)|
\leq C(1+m+n)^7\bigl(yq^5+q^6\bigr).
}
$$

The left endpoint follows by the exact reflection/conjugation symmetry.  If
the proper taper begins at global radius $r=L$, then its endpoint satisfies
$q_L\leq C/L$; integrating $\mathrm du=-\mathrm dq/q$ gives

$$
\boxed{
\left|\int_{r\geq L}\mathcal F^{\rm wall}_{mn}\,\mathrm du\right|
\leq C(1+m+n)^7\left(\frac{y}{L^5}+\frac1{L^6}\right).
}
$$

**Status:** exact complete right-end kernel and uniform full-tail theorem.
The proper-profile transition is a separate sector proved in H51.

**Evidence:** `ads_rindler_wall_closed_point_jet_check.wl` uses the rational
global coordinate $s=r^2$, differentiates the coordinate map before wall
restriction, treats exact complex conjugation without the unsafe
`I -> -I` substitution, and passes $10/10$ exact tests.  It verifies the exact
$|W|^2$ identity, degrees $(3,4)$, $q^2$ entry orders, total wall-kernel
degree seven, all $q^5$ orders, linear vanishing of the $q^5$ coefficient at
$y=0$, the $q^6$ horizon restriction, and the exact complex $m=2$ leading
metric coefficient (including its endpoint phase) against the independent
direct global pullback.  The earlier
`ads_rindler_symbolic_wall_endpoint_order_check.wl` passes
$3/3$ exact tests and displays all six metric coefficients through $q^3$.
`ads_rindler_symbolic_wall_momentum_order_check.wl` independently applies the
Gaussian-normal ADM variation and passes $11/11$ tests. It verifies metric
and momentum degrees $(3,4)$, exact leading contraction zero, the resulting
total degree-seven $q^5$ bound, and small-wall orders
$(\epsilon^2,\epsilon,1,\epsilon^{-1})$. The exact $\partial_\tau$ derivative
is taken before the endpoint series. `ads_rindler_wall_momentum_crosscheck.wl`
passes $2/2$ tests and matches this ADM momentum against the direct full-
metric normalized-normal/Christoffel linearization to more than 39 digits at
a generic point.

**Assumptions:** integer $m,n\geq2$; regular positive-$q$ branch; a fixed
small endpoint rectangle $0\leq q\leq q_0<1$,
$0\leq y\leq y_0<1$; inner outward normal $-\mathrm d\chi$; stripped
$1/\kappa_{\rm p}^2$; and the unit-boundary mode normalization.  Physical
descendant normalization only improves the frequency bound.

**Not verified in H49:** the complete moving-joint kernel, the outer
Cauchy-corner/anchor strip, or the HW collar. The independent outer
Brown--York source curvature is subsequently closed by H59a. No moving-joint
cancellation is used in the wall estimate.

### H50 — Complete far moving Hayward-joint kernel

**Statement:** at the right far anchor, use $d(r^2)$ for the outer-normal
covector and $-d\chi$ for the inner normal.  The exact normal-plane Gram
identity removes every square root from the variation of the angle.  With
$q=e^{-u}$, $y=\tanh(\epsilon/2)$, and the common phase $W^m$ factored out,
the complete normalized Hayward canonical pair begins at $q^2$.  The
same-chirality area--angle kernel vanishes identically.  The mixed kernel has
only four nonzero frequency coefficients, at powers
$(m^1n^1,m^1n^3,m^3n^1,m^3n^3)$, and each coefficient has exact valuations

$$
\operatorname{ord}_{q=0}K^{J,+-}_{ab}=5,
\qquad
\operatorname{ord}_{y=0}K^{J,+-}_{ab}=1.
$$

Since $|W|\leq1$, this gives the complete mode-uniform estimate

$$
\boxed{
|\mathcal F^J_{mn}(q,\epsilon)|
\leq C(1+m+n)^6\tanh\frac\epsilon2\,q^5.
}
$$

At the outer cylinder, $q_R\leq C/R$, so the raw joint contribution is
$C(1+m+n)^6\tanh(\epsilon/2)R^{-5}$.  The proper-profile correction is a
separate $O(L^2/R^2)$ outer-mismatch sector.

**Status:** exact complete right-end raw-joint kernel and uniform endpoint
bound. It is not the $r\sim L$ transition theorem and does not absorb the
proper-profile mismatch.

**Evidence:** `ads_rindler_joint_closed_point_jet_check.wl` reuses the
independently calibrated rational metric point jet and passes $9/9$ exact
tests.  It verifies the outer-normal Gram identity, complete $q^2$ onset of
both canonical variables, exact same-chirality zero, mixed $q^5$ onset,
frequency degree six, a global factor of $y$, linear $y$ order of the $q^5$
coefficient, and exact vanishing at $y=0$.
`ads_rindler_symbolic_moving_joint_order_check.wl` passes $8/8$
finite-jet tests. It expands the outer normal as a Laurent jet, varies its
normalization and the inner/outer angle, varies the joint line density, fixes
the positive $q$ branch, and verifies leading orders $(2,2)$, degrees
$(3,4)$ for both variables, exact $q^4$ antisymmetric cancellation, total
$q^5$ degree seven, and finite small-wall scaled limits.

**Correction:** the earlier prose bound $O(\epsilon^2(m+n)^7q^5)$ was not
proved by the finite-jet regression and is false generically.  Its displayed
scalings include
$\eta^{(3)}=O(1)$ and $(\sqrt q)^{(2)}=O(\epsilon)$, whose antisymmetric
product is only $O(\epsilon)$.  The complete kernel proves the correct
$O(\tanh(\epsilon/2)(1+m+n)^6q^5)$ bound.

**Assumptions:** both reflected endpoints, positive $q=e^{-|u|}$, integer
$m,n\geq2$, a fixed small physical endpoint rectangle, fixed outer cylinder,
and the area polarization
$\Omega_J=\int\Delta_X\eta\wedge\Delta_X\sqrt q$.

**Not verified in H50:** the full compensated proper-profile correction at
the outer joint, the $r\sim L$ transition (proved separately in H51 on the
projected cut), or a sharp Sobolev threshold.  No raw-joint analytic
remainder remains.

### H51 — Projected transition theorem and unprojected fifth-jet finite parts

**Statement:** for every projected real cosine/cosine, cosine/sine, and
sine/sine pair with integer frequencies $m,n\geq2$, the complete regulated
non-Killing Iyer--Wald density is ordinary integrable and obeys

$$
\boxed{
\|B_{L,mn}^{P_A}-B_{mn}^{P_A,{\rm local}}\|_{L^1(\gamma_A)}
\leq \frac{C(1+m+n)^6}{L^2}.
}
$$

Consequently its endpoint-supported transition distribution is zero, it has
no bulk remainder, and on the adapted spectral block

$$
\|B_{M,L}^{P_A}-B_M^{P_A,{\rm local}}\|_{H^s\times H^s}
\leq C_s\frac{M^6}{L^2}.
$$

Separately, in the conservative reflected fifth-jet endpoint space, the
**unprojected analytic finite-part** functional is uniquely reconstructed as

$$
\mathcal A[f]
=-\frac16\left[
\sum_{\sigma=\pm}f(\sigma a)
\big(-f''(\sigma a)-f(\sigma a)\big)
+f(a)f'(a)-f(-a)f'(-a)
\right].
$$

Its polarization vanishes algebraically on the fixed-anchor image:

$$
\mathcal A[P_Af,P_Ag]=0.
$$

The projected transition sector therefore has a schedule-independent
diagonal limit whenever $M^6/L(M)^2\to0$. This does not prove convergence of
the independent compensated-core, finite-wall anchor-shift, outer-joint, or
HW-collar sectors. The selected
auxiliary one-form

$$
\Theta_{{\rm edge},M,\lambda}
=-\frac12F_{IJ}^{(M,\lambda)}a^I\delta a^J,
\qquad
\delta\Theta_{{\rm edge},M,\lambda}=-F_{M,\lambda},
$$

realizes a cancellation on an enlarged cotangent phase space, not by a scalar
transgression. It is not assumed in the action-derived projected theorem.
The complete moving action instead cancels the fully compensated gauge-core
curvature and leaves the proper-transition form, whose projected regulator
limit now vanishes by the displayed theorem.

**Status:** proved projected two-frequency transition theorem with a uniform
frequency/cutoff bound, exact finite-data rank-21 reconstruction of distinct
unprojected analytic finite parts, exact auxiliary finite-rank edge algebra,
and exact gauge-core/transition decomposition. The old unprojected
ordinary-integral reading is false. H59a--H60 subsequently close the complete
finite-action diagonal theorem on the declared linked regulator class.

**Evidence:** `ads_rindler_projected_proper_transition_check.wl` gives exact
quadratic anomalies for the projected cosine/sine probes and for ten
unprojected modes. `ads_rindler_projected_proper_bilinear_check.wl` directly
integrates four off-diagonal pairs. In particular,

$$
\mathcal A[\cos2\phi,\cos3\phi]=-\frac1{3\sqrt2},
\qquad
\mathcal A[\cos2\phi,\cos4\phi]=-\frac13.
$$

The direct finite-profile kernel route now supplies additional evidence which
does not assume the jet reconstruction. At
$(m,n,L,\phi)=(3,2,2,0)$ the layered same/mixed-chirality construction and a
fresh direct real-cosine CPS calculation agree exactly at
$-2841/(2500\sqrt2)$, with zero residual. For the cosine-$2$/cosine-$3$
pair, exact integration gives the leading error $1/(3\sqrt2L^2)$ and an
$L^{-4}\log L$ term. Its transition moments through degree six are

$$
-\frac1{3\sqrt2}(1,0,1,0,1,0,1),
$$

while the cosine-$2$/sine-$3$ pair gives the odd sequence
$-(0,1,0,1,0,1,0)/(3\sqrt2)$. These are selected endpoint-supported weak
limits, not a proof for arbitrary test functions. The compactified RT-mode
script `ads_rindler_transition_compactified_mode_check.wl` passes $5/5$ exact
tests and fixes the mode and profile derivative structure used by the direct
kernel analysis.

The decisive calculation is
`ads_rindler_transition_point_jet_check.wl`. In compactified ambient
coordinates $q=\cos2\phi$, $s=r\sqrt q$, it takes every derivative before
restricting to $t=0,s=1$ and fixes the inner conormal and $q$ orientation by
an exact coordinate-density calibration. With $\lambda=L^2$, each real
two-symbolic-frequency sector has

$$
B_{\lambda,mn}^{AB}(q)
=\frac{\sum_{a=1}^4\lambda^a
q^{\nu_a}(1-q)\widehat N_{a,mn}^{AB}(q)}
{64\sqrt{1-q}\,(1+q)^{\rho_{AB}+(m+n)/2}
(q-1)(1+\lambda q)^4},
$$

with $(\nu_1,\nu_2,\nu_3,\nu_4)=(3,2,4,6)$,
$(\rho_{cc},\rho_{cs},\rho_{ss})=(15/2,13/2,11/2)$, and residual frequency
degree at most six. The $(1-q)$ factor cancels the nonintegrable centre
coordinate degeneracy. Right and left symbolic endpoint regressions verify
the endpoint divisibility and mixed-sector reflection sign; the full
structure regressions additionally verify the $\lambda$ valuations, bounded
$(1+q)$ exponent range, frequency degree, and centre cancellation.
`ads_rindler_transition_uniform_majorant_check.wl` passes $8/8$ exact tests
for the scalar inequality, endpoint/centre integrals, $L^{-2}$ bound, and
revised schedule exponents. These scripts prove the displayed H51 bound; no
finite-part interpolation is used.

The original ordinary Fourier cutoff did not preserve the two endpoint
conditions. It is replaced by the adapted nested projections

$$
Q_M=P_AR_M|_{\mathcal H_A^s}
=TR_MT^{-1},
\qquad
T=P_A|_{(1-\Pi_C)H^s},
$$

where $C=\operatorname{span}\{\sin2\phi,\cos4\phi\}$. They obey
$Q_MQ_N=Q_{\min(M,N)}$, are uniformly bounded, preserve both anchors, and
converge strongly to the identity. The exact regression
`ads_rindler_adapted_spectral_projection_check.wl` passes $8/8$ tests and
also reproduces the nonzero endpoints of the ordinary-cutoff
counterexample.

`ads_rindler_transition_jet_reconstruction_check.wl` first falsifies the
insufficient diagonal-only claim: the ten diagonal evaluations have rank
eight, and the two previously known cross checks raise it only to nine. The
two displayed independent cross values raise the conservative reflected
third-jet coefficient matrix to rank ten. Its unique exact solution is
$(c_{00},c_{01},c_{02})=(1,-1,1)/6$ with all higher-jet coefficients zero.
It then predicts two unused direct cross anomalies and annihilates two
generic projected trigonometric polynomials; all $7/7$ exact tests pass.
`ads_rindler_spectral_edge_completion_check.wl` independently passes $4/4$
exact tests for antisymmetry, $\delta\Theta_{\rm edge}=-F$, the diagonal
error decomposition, and the vanishing $2^{-M}$ tolerance.
`moving_edge_radial_homotopy_check.wl` now passes $10/10$ and distinguishes
the auxiliary total cancellation from the action-derived cancellation of
only the fully compensated gauge core.

The direct two-frequency calculation changes the evidence tier. For
$(\cos3\phi,\cos4\phi)$,

$$
B_L^{34}\big(L,\pm(a-d)\big)
=\frac{51L^4}{16\sqrt2d}+O(d^0),
$$

so the unprojected inner RT integral needs the finite outer anchor cutoff and
the old rank-21 values are finite parts. For projected sine-$3$/sine-$4$ and
projected cosine-$2$/cosine-$3$, the endpoint pole and endpoint value vanish,
the Taylor series begins at $O(L^4d^2)$, and the $L^2$ scaled endpoint profile
is zero. The latter pair has exact integrated remainder
$-2\sqrt2/(21L^4)+O(L^{-5})$. Both direct regressions pass $5/5$.

The original third-jet search space omitted the second boundary differential
order already present in the closed Brown--Henneaux lift. Including it gives
the conservative fifth-jet space with 21 coefficients. The existing exact
data have rank 14. Seven greedily selected direct cross integrals give

$$
\left(-\frac1{3\sqrt2},0,\frac1{3\sqrt2},\frac23,
\frac{8\sqrt2}{3},\frac{19}{3},-\frac52\right)
$$

for $(C_2C_5,C_2C_6,C_2C_7,S_2S_4,S_2S_5,S_2S_6,C_3C_5)$.
They raise the rank to 21. The unique solution has
$(c_{00},c_{01},c_{02})=(1,-1,1)/6$ and all other 18 coefficients zero.
Three unused direct projected integrals and a generic projected polynomial
then vanish exactly. `ads_rindler_transition_fifth_jet_rank_audit.wl` passes
$8/8$ tests. This remains an audit of unprojected analytic finite parts; the
independent point-jet theorem above, rather than this ansatz, proves the
projected ordinary limit.

The point-jet bound directly upgrades the projected transition matrix to
operator-norm convergence when $M^6/L_M^2\to0$. H59b proves the complete
finite-wall compensated rate after removal of its endpoint Wronskian by
$P_A$ on $y=1/(2L)$; H59a and H59c prove the remaining outer corner/joint
rates. Consequently finite dimensionality still permits a recursive
$2^{-M}$ schedule, while the explicit schedule $L=M^{10}$, $R=M^{30}$
already gives the conservative rate $O(M^{-13})$. Local continuity for
$s>5/2$ proves schedule-independent convergence within the linked class whose
displayed majorants vanish.

**Assumptions:** corrected compactified mode lifts; the stated single-scale
profile; integer frequencies $m,n\geq2$; fixed $t=0$ anchors; the project
orientation and vacuum Einstein finite-action CPS conventions. The complete
finite-wall theorem uses the declared linked regulator class
$\tanh(\epsilon/2)=1/(2L)$; no theorem for an arbitrary independent
$\epsilon(L)$ is inferred.

**Not verified at H51:** the full metric quotient, a lower point-anchor
threshold, or positivity. The linear projected field-dependent HW cocycle is
H52, H59a--H60 close the fixed-section sum and slice limit, H61 supplies the
full quotient by global reducibility, and H62 proves positivity and the
combined $H^2$ closure. The point-anchor chart itself remains at $s>5/2$.

### H52 — Field-dependent HW projector on the projected sector

**Statement:** on the selected proper vertical complement of the projected
Brown--Henneaux sector, the HW boundary-value solver $V$ obeys

$$
V\circ R=-1,
\qquad
R:w\mapsto\mathcal L_wG.
$$

Hence

$$
P_{\rm HW}=1+RV
$$

is a projector with $P_{\rm HW}R=0$ and $VP_{\rm HW}=0$. The projected
normal trace is proper at both anchors and defines a conservative continuous
map

$$
\mathsf T_\perp:\mathcal H_A^s\to\mathcal V_A^{s-2},
\qquad s>\frac52.
$$

For the completed quadratic energy
$\widehat E[h]=E(P_{\rm HW}h)$,

$$
\delta\widehat E[h]
=2E\left(P_{\rm HW}h,
\delta h+RV[\delta h]\right).
$$

The second term is the field-dependent correction missed by freezing
$v[h]$. Under $h\mapsto h+Rw$, $V[h]\mapsto V[h]-w$ and
$P_{\rm HW}h$ is invariant.

**Status:** exact finite-block linear projector/cocycle algebra and continuous
endpoint-trace map on the adapted projected domain. H59a--H60 now identify
its complete finite-action surface descent and justify its infinite-mode
diagonal use on the declared linked regulator class; this does not promote it
to a nonlinear field-dependent-bracket theorem.

**Evidence:** `ads_rindler_symbolic_hw_trace_check.wl` passes $6/6$ exact
tests. It verifies the endpoint jet against the exact trace at $m=2,3,6$,
shows that $P_A$ cancels the $e^{|u|}$ term at both anchors and in both real
quadratures, verifies the exact absence of an intermediate constant term,
derives the $e^{-|u|}$ leading term,
and proves degree-two frequency growth in every residue class.
`field_dependent_hw_cocycle_check.wl` passes $6/6$ exact algebraic tests for
the projector, gauge invariance, energy-difference completion, polarized
completion, $\delta V$ correction, and section cocycle. The Jacobi inverse
and absence of compact/noncompact zero modes were already verified in H41.
`weak_hw_collar_pullback_check.wl` passes $7/7$ tests and proves that the
independent coefficient collar includes every second normal jet, is bounded
in the declared ambient distribution space, and introduces no separate CPS
continuity or off-cut-extension hypothesis for the complete pulled-back
action.

**Assumptions:** selected proper vertical complement; fixed tangential cut
convention; fixed $t=0$ anchors; finite spectral blocks before the diagonal
limit; smooth Fermi extension tapered off before the outer boundary; and the
regulated family of H51.

**Not verified:** a fixed-width smooth Gaussian-null collar for the complete
infinite sum; nonlinear HW brackets; or time-evolution invariance of the
fixed-$t=0$ section.

### H53 — Slice-covariant classical selected-section identity

**Statement:** H49--H51 and H59a--H59c prove every fixed-section wall,
transition, outer, corner, and joint regulator limit with a common admissible
diagonal. H60 proves that the independent weak HW collar pulls every complete
action sector back exactly to the fixed section. The relative-action Stokes
identity then gives the total-flux estimate (6.7) of
`explicit regulators weak collar and time covariance.md`; it vanishes on the
declared schedule and is uniform under global-time transport. Therefore, for
the moving-completed projected Brown--Henneaux phase space
$\mathcal H_A^s$, $s>5/2$, the fixed-anchor tangent and the HW tangent satisfy

$$
(h,0)\sim(P_{\rm HW}h,-V[h]),
$$

their difference being the exact extended-space degeneracy
$(RV[h],-V[h])$. The complete finite-action identity is

$$
\delta^2H_\xi^\infty
=\frac{s}{2\pi}\delta^2\!\left(\frac{A[g,\gamma]}{4G}\right)
+E_{\rm can,p}(P_{\rm HW}h),
$$

or

$$
\delta^2H_\xi^\infty
=\frac{s}{2\pi}\delta^2\!\left(\frac{A[g,\gamma]}{4G}\right)
+E_{\rm can,p}[h]
+\int_{\gamma_A}\Upsilon_{\rm p}[h,V[h]].
$$

The limiting form is independent of the Cauchy slice and of the chosen
schedule inside the proved $y=1/(2L)$ admissible class. Global time
translation is a symplectomorphism between the corresponding moving fibres.

**Status:** action-derived, slice-covariant, infinite-mode classical
projected subregion identity for vacuum Einstein AdS$_3$ on
$\mathcal H_A^s$, $s>5/2$. The optional auxiliary symplectic completion is
not treated as gravitational action data. This is not a quantum JLMS
theorem. H61 subsequently extends this selected-section result to the full
metric tangent quotient without quotienting charged $m\ge2$ modes.

**Evidence:** H44--H45 give local continuity and H46--H50 provide the stated
finite-mode wall, endpoint, and joint controls. H51 proves the projected
transition theorem and separately supplies an abstract auxiliary curvature
cancellation; H52 constructs the finite-block field-dependent HW projector.
The ambient pulled-back action makes $(Rw,-w)$ a formal extended degeneracy.
`classical_subregion_identity_algebra_check.wl` passes $4/4$ exact
definitional-consistency tests for the second-derivative normalization,
geometric area cancellation in an exact diffeomorphism family, the assumed
section equality, and the final normalization. H59 supplies the complete
operator convergence, H60 the exact collar pullback, and equations
(6.6)--(6.8) of the regulator note the relative-flux and time-fibre proof.

**Assumptions:** vacuum Einstein AdS$_3$; exact background modular Killing
field and declared surface gravity; corrected project orientation; the
finite-action bulk/GHY/counterterm/Harlow--Wu/Hayward/embedding action;
fixed anchors transported as the family $A_t$; the proved
$y=1/(2L)$ admissible regulator class; admissible one-parameter families in
the diagonal completed phase space; and second-derivative normalization for
every quadratic term.

**Not verified at H53:** the full metric quotient or positivity. H61 and H62
subsequently close both at the linear classical vacuum tier. Matter modular
energy, von Neumann algebras, modular crossed products, and quantum or
nonperturbative JLMS remain outside the goal.

### H54 — Ambient moving pullback and cotangent edge realization

**Statement:** the complete finite-action action pulled back to a fixed
stratified reference region defines

$$
\Theta_{{\rm p},X}
=\Theta_{\rm p}[X^*g;\delta(X^*g)],
$$

and therefore annihilates the combined tangent $(\mathcal L_wg,-w)$ off
shell.  For arbitrary nonuniform timelike-wall displacement, the total local
embedding momenta are

$$
\begin{aligned}
P_j^{\rm tot}
&=D_i\Pi^i{}_j
-\frac{\sqrt{-\gamma}}{\kappa_{\rm p}^2}
n_\mu\mathcal E^{\mu\nu}e_{j\nu},\\
P_\perp^{\rm tot}
&=-\Pi^{ij}K_{ij}
-\frac{\sqrt{-\gamma}}{\kappa_{\rm p}^2}
n_\mu n_\nu\mathcal E^{\mu\nu},
\end{aligned}
$$

while a non-orthogonal Hayward joint carries

$$
\Omega_J
=\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\Delta_X\eta\wedge\Delta_X\sqrt q.
$$

If a finite spectral section pulls the complete artificial-boundary form back
to a closed two-form $F$, its radial-homotopy primitive has a cotangent edge
realization whose graph contributes $-F$.  For constant $F_{IJ}$ this gives

$$
\Theta_{\rm edge}
=-\frac12F_{IJ}a^I\delta a^J.
$$

**Status:** exact abstract ambient pullback structure and exact
finite-dimensional cotangent realization of a closed two-form. The
realization proves that an auxiliary cancellation can be selected. Directly
from $X_a^*\Phi_a^*G=X_0^*G$, the complete action-derived embedding/cross
sector cancels the fixed-embedding curvature only on a fully compensated
pure-gauge graph. For the proper taper $v_L=-p_L\zeta$ it leaves the
$r\sim L$ transition form. H51 proves that this difference tends to zero on
the adapted projected domain. Thus the geometric finite-spectral pullback is
**not** the auxiliary $-F$ at finite proper regulator, but converges to its
curvature in the projected continuum limit. No extra canonical pair is needed
for that limit; adding the auxiliary cotangent graph at finite regulator would
change the boundary phase space. The auxiliary potential remains nonunique
up to an exact one-form and spectator pairs. H49--H51 and H59a--H59c close
the raw, transition, finite-wall, outer-source/corner, and joint remainders on
the projected domain. Their relative-action assembly gives the H53 total-flux
theorem.

**Evidence:** the complete pullback and arbitrary-displacement wall/joint
formulas are derived in `intrinsic moving boundary and edge realization.md`
from the project action and the off-shell Bianchi identity.  The primary
extended-CPS formula and the need for boundary conditions for normal surface
translations were checked against arXiv:1706.05061v2.
`moving_edge_radial_homotopy_check.wl` checks a nonconstant closed two-form,
its radial primitive, the constant H51 specialization, the cotangent graph,
and scalar-transgression nonuniqueness. Equations (5.8)--(5.14) in the topic
note give the exact gauge-core/transition decomposition.

**Assumptions:** compatible stratified embeddings; the project outward-normal
and joint-orientation conventions; fully Dirichlet non-orthogonal joints when
the Hayward pair is used; and a star-shaped finite coefficient chart for the
radial homotopy.

**Not verified at H54:** a unique or universal edge polarization or
integrability of generic nonuniform surface translations.  H59--H61 later
prove the infinite-dimensional, time-covariant metric theorem without a
parametrized asymptotic frame: the apparent anchor variable is global-Killing
representative data, while charged Brown--Henneaux modes remain physical.

### H55 — Infinite-dimensional stationary wavy-BTZ polarization

**Statement:** in the exact BTZ collar

$$
\mathrm ds^2
=\mathrm d\rho^2-s^2\sinh^2\rho\,\mathrm d\lambda^2
+R(\phi)^2\cosh^2\rho\,\mathrm d\phi^2,
$$

let $R(\phi)>0$ and let the inner wall be the arbitrary smooth periodic graph
$\rho=E(\phi)>0$.  With

$$
\vartheta=\arctan\!\left(\frac{E'}{R\cosh E}\right),
$$

the exact Brown--York source obeys

$$
\mathcal B_X
=-\delta\left\{
\frac{s}{\kappa_{\rm p}^2}
\left[R\cosh^2E+E'\cosh E\,\vartheta\right]
\right\}
+\partial_\phi\left(
\frac{s\cosh E}{\kappa_{\rm p}^2}\vartheta\,\delta E
\right).
$$

Consequently the integrated wall source is exact and the integrated
Brown--York two-form vanishes on the full stationary smooth $(R,E)$ family.
The uniform-wall functional of H43 is recovered at $E'=0$.

**Status:** exact infinite-dimensional compact moving-wall polarization for
stationary nonuniform normal translations and their induced tangential
component.  It is not a theorem for time-dependent walls or non-orthogonal
joints. The $(R,E)$ family is a stationary locally BTZ
collar/polarization family; no
nontrivial outer charge is established. When embedded by the proper radial
extension used in H43, its outer Brown--Henneaux charge variation is zero.

**Evidence:** `btz_nonuniform_moving_polarization_check.wl` computes the unit
normal, induced metric, extrinsic curvature, and Brown--York momentum from the
full metric and verifies the source primitive coefficientwise in the
independent jets $(E,E',E'',R,R')$.  It also verifies the uniform limit and
the endpoint field-space antisymmetry.  A fresh independent xCoba kernel with
$R(\phi)$ declared as a scalar function returns the exact zero matrix for
$R_{\mu\nu}+2g_{\mu\nu}$.

**Assumptions:** $R(\phi)>0$, $E(\phi)>0$, smooth periodic data, fixed boost
normalization $s$, inner outward normal toward decreasing $\rho$, and the
project Einstein--GHY Brown--York convention without an inner counterterm.

**Not verified:** time-dependent wall embeddings; non-orthogonal joint
components; identification with the H51 AdS--Rindler edge chart; or uniform
AdS--Rindler mode estimates.

### H56 — Non-orthogonal BTZ area--boost edge chart

**Statement:** for the inner wall $\rho=\epsilon$ and tilted spacelike slice

$$
\lambda-q(\rho-\epsilon)=\lambda_0,
\qquad |q s\sinh\epsilon|<1,
$$

the relative boost angle and joint density are

$$
\eta=-\operatorname{arctanh}(q s\sinh\epsilon),
\qquad
\sqrt q=R\cosh\epsilon.
$$

The geometric variables

$$
Q_J=\sqrt q,
\qquad
P_J=\frac{\sigma_J}{\kappa_{\rm p}^2}\eta
$$

give exactly the Hayward potential and two-form.  In particular,

$$
\Omega_J(\partial_q,\partial_R)
=-\frac{\sigma_Js\sinh\epsilon\cosh\epsilon}
{\kappa_{\rm p}^2(1-q^2s^2\sinh^2\epsilon)}\neq0.
$$

**Status:** exact genuinely non-orthogonal component benchmark and direct
geometric realization of the area--boost Darboux pair.  It is not yet the
complete time-dependent wavy-wall endpoint polarization.

**Evidence:** `btz_nonorthogonal_joint_check.wl` verifies the wall and slice
normalizations, $n\cdot\tau=\sinh\eta$, the Hayward Legendre relation, the
joint two-form, the cotangent pullback, the nonzero $q$--$R$ coefficient, and
the orthogonal limit.

**Assumptions:** fixed positive $R,s,\epsilon$ in the background chart, the
project inner outward normal, $|q s\sinh\epsilon|<1$, and the fully Dirichlet
Hayward joint convention with orientation $\sigma_J$.

**Not verified:** simultaneous time-dependent wall and endpoint variations;
the accompanying Harlow--Wu endpoint form; or identification of the full H51
AdS--Rindler edge matrix with geometric wall/joint/anchor pairs.

### H57 — Representative-dependent endpoint finite part

**Statement:** for $a=\pi/4$, define

$$
q_\pm[f]=f(\pm a),
\qquad
p_\pm[f]
=\frac16[-f''(\pm a)-f(\pm a)\pm f'(\pm a)].
$$

The endpoint functional reconstructed in the H51 fifth-jet ansatz factors as

$$
\mathcal A[f]=-(q_+[f]p_+[f]+q_-[f]p_-[f]).
$$

Its symmetric polarization is algebraically cancelled by the radial work of
$\Theta_{\rm anch}=\sum P_\alpha\delta Q_\alpha$ on the section
$(Q_\alpha,P_\alpha)=(q_\alpha,p_\alpha)$. The full Sobolev space splits
continuously as

$$
H^s(S^1)\simeq\mathcal H_A^s\oplus\mathbb R^2,
$$

and this coefficient functional extends continuously for $s>5/2$.

**Corrected status:** exact algebraic and functional-analytic theorem for one
non-reducibility-fixed generator. It is not a function on the metric tangent
quotient: global AdS Killing vectors change $q_\pm$ and $p_\pm$ while leaving
$h=\mathcal L_\zeta G$ unchanged. Therefore
$-(q_+p_++q_-p_-)$ is not a physical anchor Hamiltonian. The PSL section in
H61, rather than an added cotangent pair, removes the ordinary endpoint pole
without changing the perturbation.

**Evidence:** `ads_rindler_moving_anchor_edge_check.wl` passes $10/10$ exact
tests: quadratic and polarized factorization, projection, reconstruction,
rank-four trace independence, the unprojected $\cos3\phi$ value $-11/6$,
and cancellation by anchor work. The trace theorem gives continuity of
$p_\pm$ exactly for the sufficient range $s>5/2$.

**Boundary-symmetry correction:** charged $m\geq2$ Brown--Henneaux modes
remain physical. Frequency-zero/one vectors are instead exact background
Killing fields and form a reducibility kernel. The physical projector $P_A$
adds charged modes and selects a genuine subspace; the representative section
$P_{\rm PSL}$ adds only reducibility directions and covers the full metric
quotient. A negative-Virasoro frame would be needed only to gauge the full
asymptotic symmetry group, which is not done here.

**Not required:** action-derived equality of $p_\pm$ with an asymptotic frame
momentum or a parametrized negative-Virasoro action. Nonlinear quotienting of
arbitrary Virasoro coadjoint orbits remains outside the claim.

### H58 — Proper unprojected fixed-region extremal normal solver

**Statement:** the growing normal trace of an unprojected Brown--Henneaux
mode is Jacobi homogeneous. With $q_\pm=f(\pm a)$, set

$$
H^{(0)}
=-\frac{q_+e^u+q_-e^{-u}}{\sqrt2},
\qquad
H^{(1)}
=\frac{-q_+e^u+q_-e^{-u}}{\sqrt2}.
$$

Then

$$
V_{A,\perp}[f]=-\zeta_\perp[f]+H[q[f]]
$$

obeys $S[h]+JV_{A,\perp}=0$, has no $e^{|u|}$ or constant endpoint term,
and begins at $O(m^2e^{-|u|})$. It defines the same conservative
two-derivative trace map as the projected solver, now on the full
unprojected $H^s$ space.

**Status:** exact linear extremal normal-value theorem. H61 identifies the
homogeneous term as the normal restriction of the global-Killing subtraction
and upgrades it to the full-quotient finite-action identity. It is not a
strong $C^\infty$ Gaussian-null jet theorem.

**Evidence:** `ads_rindler_unprojected_hw_trace_check.wl` passes $8/8$ exact
tests: $JH=0$, two-component cancellation at both anchors, absence of a
constant term, finite first proper coefficient, degree-two frequency growth,
and fixed-mode falsification/cancellation checks.

**Correction to H52:** $P_A$ is sufficient but not necessary for properness.
It sets the homogeneous endpoint correction to zero. The earlier wording
that projection also cancels a constant normal term is corrected: the exact
unprojected parity expansion already has no such intermediate term.

**Not verified:** a strong smooth infinite-mode Gaussian-null collar or a
nonlinear finite-amplitude HW section. H59--H60 close the weak collar,
regulator, and time-covariance requirements used by H61.

### H59 — Explicit regulator schedule

**Statement:** H51 proves for the complete projected transition kernel that

$$
\|B^{(L)}_{mn}-B^{\rm local}_{mn}\|_{L^1(\gamma_A)}
\leq C(1+m+n)^6L^{-2},
$$

so its adapted-block operator error is $C_sM^6/L^2$. H49 now also proves the
far-wall block estimate

$$
C_sM^7\left(\frac{\tanh(\epsilon/2)}{L^5}+\frac1{L^6}\right).
$$

H50 proves the raw far-joint block estimate
$C_sM^6\tanh(\epsilon/2)R^{-5}$. H59a proves that the finite-cylinder outer
Brown--York source curvature is exactly zero for both raw and compensated
towers, the raw article corner is $C_sM^6R^{-6}$, and the compensated-minus-
raw corner is
$C_sM^6(L^2/R^2+L^4/R^2)$. H59b proves the complete finite-wall
compensated estimate $C_sM^7/L^2$ on $y=1/(2L)$. H59c proves the
proper-profile joint mismatch $C_sM^6L^2/R^2$. Combining these gives the
explicit schedule

$$
L=M^{10},
\qquad
\tanh\frac\epsilon2=\frac1{2M^{10}},
\qquad
\epsilon=2\operatorname{artanh}\frac1{2M^{10}},
\qquad
R=M^{30}
$$

makes every listed regulator operator error vanish.

**Status:** unconditional explicit schedule and operator convergence for all
fixed-section projected regulator sectors. The exponents are not claimed
optimal. Total-flux assembly and slice symplecticity are the separate H53
step, not an H59 estimate.

**Analytic proof for the transition sector:** the exact point-jet numerator
has the four $q$ valuations $(3,2,4,6)$ at powers $L^2,L^4,L^6,L^8$, a
factor $1-q$, and residual frequency degree at most six. Splitting
$q\in[0,1]$ at $1/2$ gives contributions
$O(L^{-6}\log L)$, $1/(3L^2)$, $O(L^{-2})$, and $O(L^{-2})$ after subtracting
the local $L^8$ term. No H51 finite-part subtraction is present. The former
degree-eight ordinary-outer target is superseded, for the Brown--York source
curvature, by the exact all-frequency finite-$R$ zero of H59a. The separate
outer Cauchy-corner curvature and its shrinking anchor strips are also closed
by the raw $C(1+m+n)^6R^{-6}$ estimate and the compensated two-scale estimate
of H59a. H59c closes the proper-profile moving-joint mismatch.

**Machine evidence:** `ads_rindler_transition_uniform_majorant_check.wl`
passes $8/8$ exact tests and
`ads_rindler_compensated_wall_closed_point_jet_check.wl` passes $10/10$,
`ads_rindler_wall_closed_point_jet_check.wl` passes $10/10$, and
`ads_rindler_joint_closed_point_jet_check.wl` passes $9/9$.
`ads_rindler_compensated_wall_finite_eta_check.wl`,
`ads_rindler_compensated_outer_source_mismatch_check.wl`, and
`ads_rindler_compensated_joint_outer_mismatch_check.wl` pass respectively
$15/15$, $14/14$, and $10/10$. The transition
error is $M^{-14}$, the corrected far-wall error is $O(M^{-53})$, the
raw far-joint error is $O(M^{-154})$, and the outer Brown--York source entry
is zero and the proved outer Cauchy-corner entry is $M^{-174}$. The
complete finite-wall entry is $M^{-13}$. The compensated outer corner gives
$M^{-34}+M^{-14}$, and the compensated outer joint gives $M^{-34}$. The old
$M^{-12}$ anchor-shift entry is removed as a double count. The two kinematic
ratios decay as $M^{-19}$ and $M^{-20}$.
`ads_rindler_explicit_schedule_check.wl` passes $7/7$ for this complete
exponent audit.

**Assumptions for the complete schedule:** the corrected compactified mode
lift and the declared $y=1/(2L)$ regulator class. On this schedule
$\sinh\epsilon=4M^{10}/(4M^{20}-1)$ exactly.

**Schedule independence:** any two schedules in the proved class
$y=1/(2L)$ for which the displayed majorants vanish have the same limit,
because the difference of their regulated forms is bounded by the sum of
their errors relative to the common local form.

**Not verified:** arbitrary unrelated $y(L)$ classes, optimal rates, or
nonlinear regulator control.

### H59a — Exact outer finite-action source and Cauchy-corner curvature

**Statement:** on every finite global cylinder $r=R$, let
$\Pi_R^{ab}=\sqrt{-\gamma}(K^{ab}-K\gamma^{ab}+\gamma^{ab})$ be the
renormalized densitized Brown--York momentum in exactly the convention of
`../article/`. For the complete corrected complex Brown--Henneaux tangent
tower $h_m=\mathcal L_{\zeta_m}G$, the pointwise canonical-pair kernel

$$
\mathcal F^R_{mn}
=\delta_m\Pi_R^{ab}\,h_{n,ab}
-\delta_n\Pi_R^{ab}\,h_{m,ab}
$$

vanishes identically for both same- and mixed-chirality pairings, before
taking $R\to\infty$ and coefficientwise in the two symbolic frequencies.
Thus the ordinary outer Brown--York **source curvature** contributes exactly
zero, not merely $O((m+n)^8/R^2)$, on this tangent tower.

The same direct variation treats the separate article corner one-form

$$
C_{\Gamma_R}[g;\delta g]
=-\frac12\int_{A_R}\sqrt q\,
\tau_a\gamma^{a\nu}n^\rho\delta g_{\nu\rho}.
$$

Its same-chirality curvature vanishes identically. The mixed curvature has
only four nonzero odd--odd frequency coefficients, of powers
$(1,1),(1,3),(3,1),(3,3)$; every one begins at
$z^3=R^{-6}$ and the total frequency degree is at most six. Since
$|W|=\sqrt{R^2/(1+R^2)}\leq1$ and the outer subinterval has uniformly bounded
length,

$$
\boxed{
|\delta C_{\Gamma_R}(h_m,h_n)|
\leq C(1+m+n)^6R^{-6}.
}
$$

The same estimate controls the omitted shrinking anchor strips.

The proper compensated tangent
$h_m^{\rm comp}=\mathcal L_{f_L\zeta_m}G$ has an additional exact
property: its renormalized outer Brown--York source curvature also vanishes
coefficientwise.  Its article corner is not identical to the raw one.  Put

$$
z=R^{-2},
\qquad
w=L^2R^{-2}.
$$

Every compensated-minus-raw corner coefficient admits the exact two-scale
decomposition

$$
wA_{mn}(z,w)+\frac{w^2}{z}B_{mn}(z,w),
$$

with $A_{mn}$ and $B_{mn}$ bounded on $0\leq z,w\leq1$ and frequency
degree at most six.  Hence

$$
\boxed{
|\delta C_{\Gamma_R}^{\rm comp}
-\delta C_{\Gamma_R}^{\rm raw}|
\leq C(1+m+n)^6
\left(\frac{L^2}{R^2}+\frac{L^4}{R^2}\right).
}
$$

The second scale is genuine: the two real $(0,1)$ coefficients contain
$w^2/z=L^4/R^2$.  Thus the former single-scale $L^2/R^2$ outer target was
too strong, although the declared diagonal still converges.

**Status:** exact full-tower finite-cutoff outer source-polarization and
Cauchy-corner presymplectic theorem for both the raw and proper compensated
towers. It closes the fixed-cylinder outer source/corner CPS sector in H59.
It does not prove a nonlinear outer charge theorem, a moving asymptotic
frame, or the proper-profile moving-joint mismatch.

**Evidence:** `ads_rindler_outer_brown_york_kernel_check.wl` works directly in
the rational coordinate $s=r^2$, factorizes
$W=e^{-it}\sqrt{s/(1+s)}e^{i\phi}$, constructs the complete renormalized
momentum coefficientwise, derives $C_{\Gamma_R}$ directly from the full
metric, and passes $10/10$ exact tests. Both the induced
metric and momentum jets are nonzero. An independent full-metric
$g+\alpha\mathcal L_{\zeta_2}G$ calculation matches the vector derivative,
metric, extrinsic curvature, and densitized momentum coefficients exactly;
after this calibration all $50$ same/mixed source kernels are zero. The
generic full-metric corner prefactor agrees exactly with its closed formula,
and its complete symbolic-frequency curvature has the stated four
$R^{-6}$ coefficients.
`ads_rindler_compensated_outer_source_mismatch_check.wl` rebuilds the
profiled Lie derivative and outer momentum from source, verifies the
two-scale decomposition coefficientwise, and passes $14/14$ exact tests.
It finds zero compensated source coefficients, fourteen nonzero corner
mismatch representatives, and maximal frequency degree six.

**Assumptions:** vacuum global AdS$_3$; fixed coordinate cylinder; outward
normal toward increasing $r$; the article counterterm $+\gamma^{ab}$;
integer frequencies $m,n\geq2$; and fixed asymptotic boundary frame.

**Not verified in H59a:** nonlinear outer charge integrability.  A moving
asymptotic frame is not required for the linear metric quotient after H61.
The proper-profile Hayward correction is H59c.

### H59b — Finite-wall compensated wall kernel

**Statement:** set $q=e^{-|u|}$, $y=\tanh(\epsilon/2)$,
$\lambda=L^2$, and use the compensated pulled-back tangent

$$
\Delta_XG=\mathcal L_{f_L\zeta}G,
\qquad
f_L=\frac{r^2}{L^2+r^2}.
$$

At the fused horizon $y=0$, the exact Brown--York curvature has 27 nonzero
same/mixed coefficient functions in the two symbolic frequencies and total
frequency degree at most six. In the switching coordinate $x=Lq$, precisely
four coefficients survive at order $L^0$:

$$
\frac{32i x^4}{(1+2x^2)^4}
\big[(m_2-m_1)_{++}-(m_1+m_2)_{+-}\big].
$$

After restoring the endpoint phases this is an endpoint Wronskian
$32F(x)(Q_fDg-DfQ_g)$. Both real fixed-anchor projectors obey $Q(P_Af)=0$,
so the entire $L^0$ layer vanishes on $\mathcal H_A^s$. Every remaining real
or imaginary numerator contains $t=L^{-2}$, begins at least at $x^4$, and,
on $tx^2\leq1$, has numerator growth strictly below its positive normalized
denominator by at least two powers. Consequently

$$
\boxed{
\left|\int_{\mathcal H_{0}}
 \mathcal F^{\rm comp}_{mn}\,\mathrm du\right|
\leq C(1+m+n)^6L^{-2}
}
$$

for the adapted projected tower. Thus its $M$-block error is
$C_sM^6/L^2$, not the $M^7/L^4$ inferred from fixed-point low-mode sampling.
For example,

$$
L^2\mathcal F^{\rm comp}_{P_A\cos3,P_A\cos2}(x)
\longrightarrow
-16\sqrt2\frac{15x^4+44x^6}{(1+2x^2)^4},
$$

whose $\mathrm du=\mathrm dx/x$ integral is $-59\sqrt2/3$.

The fused result calibrates a stronger finite-wall theorem. On the exact
diagonal

$$
y=\tanh\frac\epsilon2=\frac1{2L},
\qquad t=L^{-2},
\qquad x=Lq,
$$

same/mixed antisymmetry reduces all fifty coefficients to twenty-five
representatives. Twenty-one are nonzero and the maximal frequency degree is
seven. Coefficientwise,

$$
K_{pq}(t,x)-W_{pq}(x)=tR_{pq}(t,x).
$$

The four entries of $W$ are the endpoint Wronskian killed by $P_A$. Every
real or imaginary $R_{pq}$ begins at least at $x^3$; on $tx^2\leq1$ its
effective numerator degree lies at least two powers below the positive
$t=0$ denominator. The exact finite-wall phase has modulus at most one. Its
Wronskian-weighted difference from the endpoint phase begins at least at
$x^4$ and has the same large-$x$ margin. Therefore

$$
\boxed{
\left|\int_{\mathcal H_\epsilon}
\mathcal F^{\rm comp}_{mn}\,\mathrm du\right|
\leq C(1+m+n)^7L^{-2}.
}
$$

This is the complete compensated Brown--York wall curvature on the declared
finite wall. Its exact wall embedding and finite phase include the old
``finite-wall anchor shift''; that former separate error is withdrawn as a
double count.

**Status:** exact symbolic-frequency finite-wall operator estimate on the
declared $y=1/(2L)$ regulator class, with the fused horizon as an independent
sharper calibration. It closes the compensated wall sector of H59.

**Evidence:** `ads_rindler_compensated_wall_closed_point_jet_check.wl`
constructs the compensated metric and Brown--York momentum from the ambient
second point jet before restricting the wall, assembles the antisymmetric
products before taking $y=0$, and passes $10/10$ exact tests. The monomial
envelope audits every nonzero frequency coefficient; the displayed projected
pair is independently combined from the full complex phases.
`ads_rindler_compensated_wall_finite_eta_check.wl` rebuilds the point jet from
source without a development cache and passes $15/15$ exact tests. It checks
the representative reduction, twenty-one nonzero entries, degree seven,
$t$-rationality, Wronskian leading quartet, both endpoint majorants,
denominator positivity, exact phase-modulus defect, and fixed-anchor
cancellation.

**Assumptions:** vacuum global AdS$_3$; the rational proper profile above;
fixed $t=0$ interval and adapted fixed-anchor projection; the exact
$y=1/(2L)$ class; integer frequencies $m,n\geq2$; and the article orientation
and densitized momentum convention.

**Not verified in H59b:** a theorem for arbitrary unrelated functions
$y(L)$ rather than the proved $y=1/(2L)$ class, or optimal exponents. The
moving Hayward mismatch is closed separately in H59c.

### H59c — Compensated outer Hayward mismatch

**Statement:** let $q_R=e^{-u_R}$ be the exact wall--outer-cylinder
intersection, set $y=\tanh(\epsilon/2)$, $z=q_R/y$, and use the compact wall
variable $v=y/(1-y)$. The complete compensated-minus-raw Hayward area--angle
kernel has sixteen same/mixed representatives, twelve nonzero, and maximal
frequency degree six. Every coefficient satisfies

$$
\mathcal F^{J,\rm comp}_{mn}-\mathcal F^{J,\rm raw}_{mn}
=z^2\mathcal R^J_{mn}(v,z),
$$

where $\mathcal R^J_{mn}$ is bounded on $0\leq v,z\leq1$. In fact, after
removing $z^2$ the nonzero numerators retain at least $v^2z$. The exact outer
geometry gives $q_R\leq C/R$, so $R/L\to\infty$ implies

$$
\boxed{
|\mathcal F^{J,\rm comp}_{mn}-\mathcal F^{J,\rm raw}_{mn}|
\leq C(1+m+n)^6\frac{L^2}{R^2}.
}
$$

For $R=L^3$, $y=1/(2L)$, and $L\geq2$, a direct polynomial inequality gives
$q_R/y\leq1$.

**Status:** exact complete outer-joint mismatch theorem on the declared
proper/wall/outer regulator domain.

**Evidence:** `ads_rindler_compensated_joint_outer_mismatch_check.wl`
rebuilds the compensated full metric point jet from source, derives both
normalized joint angles and line densities, and passes $10/10$ exact tests.
It verifies the Gram identity, reduction to sixteen representatives, raw
limit, degree six, uniform $z^2$ factor, positive denominators, and exact
endpoint schedule inequality.

**Assumptions:** the project Hayward area polarization and joint orientation;
the exact $y=1/(2L)$ wall schedule; $R/L\to\infty$; and fixed-anchor
Brown--Henneaux data.

**Not verified in H59c:** a nonlinear moving-joint theorem or an unprojected
asymptotic-frame completion.

### H60 — Sharp anchor threshold, weak collar, and time covariance

**Statement:** the point-anchor momentum is continuous on $H^s(S^1)$ exactly
for $s>5/2$, because

$$
\|f\mapsto f''(a)\|_{(H^s_{\leq M})^*}^2
\asymp\sum_{m=2}^Mm^{4-2s}.
$$

Including every jet used by the Fermi polynomial, the corrected graph norm is

$$
\|\mathcal J_Ah\|_{\mathscr J^s}^2
=\|V_{A,\perp}[h]\|_{\mathcal V_A^{s-2}}^2
+\sum_{|I|\leq2}\|j_I[h]\|_{\mathcal V_A^{s-3-|I|}}^2.
$$

Define the independent coefficient collar by
$\mathscr C_{\rho_0}^s=\operatorname{Ext}(\mathscr J^s)$ with its explicit
jet graph norm. The fixed polynomial/bump extension is bounded into
$H^{s-5}(\mathbb R_u;H^2(B_{\rho_0};N\gamma_A))$: the target/source weight
ratios are $(1+m^2)^{r-2}\leq1$ for normal-jet order $r\leq2$ and
$(1+m^2)^{-3}$ for the distinguished extremal normal value.

For the complete pulled-back action there is an exact stronger statement:

$$
\Delta_Xg(P_{\rm HW}h,-V[h])=h.
$$

Hence every complete bulk, GHY, counterterm, Harlow--Wu, Hayward, anchor, and
embedding sector form on the HW tangent equals its fixed-section value before
any regulator limit. Replacing an off-cut extension by $V+W$ changes the
extended tangent by $(RW,-W)$ and leaves every sector unchanged. Thus weak
collar continuity, off-cut independence, and regulator compatibility reduce
exactly to the fixed-section H59 estimates; H60 does not require undefined
products of weak second normal jets. For
$U_tf(\phi)=f(\phi-t)$,

$$
P_{A,t}=U_{-t}P_AU_t,
\qquad
(q_{\pm,t},p_{\pm,t})=(q_\pm U_t,p_\pm U_t),
$$

and the family is time covariant. H59a--H59c close the fixed-section regulator
estimates, and the complete relative-action inventory has vanishing total
flux. The finite-action flux law therefore makes time translation a
symplectomorphism between fibres.

**Status:** sharp point-trace obstruction, bounded coefficient weak collar,
distributional boundary-condition admissibility, exact sectorwise pullback
continuity/off-cut independence, exact time-conjugation algebra, and—using
H59a--H59c—the proved time-fibre symplectomorphism.

**Evidence:** at $s=5/2$ the squared trace norm is $H_M-1$; at $s=3/2$ it is
$M(M+1)/2-1$; for $s=3$ it converges to $\pi^2/6-1$.
`ads_rindler_explicit_schedule_check.wl` verifies these identities.
`ads_rindler_time_covariant_anchor_check.wl` passes $7/7$ exact tests for
time evolution, projection idempotence, transported endpoint zeros,
conjugation covariance, and the time-dependent anomaly factorization.
`weak_hw_collar_pullback_check.wl` passes $7/7$ exact tests for the normal
two-jet extension, coefficient-weight bound, $\Delta_Xg=h$, sectorwise
continuity, and off-cut independence.

**Interpretation:** the $H^{3/2}$ topology is obstructed for the separated
point-anchor cotangent chart. H62 shows that the cancellation in the combined
gauge-invariant form lowers its ordinary continuity threshold to $H^2$, but
not below. A finite-$s$ input supports a weak Sobolev collar, not a
$C^\infty$ Gaussian-null vector. Time translation is a physical AdS
isometry; only the fixed/HW section change is proper gauge.

**Not verified:** realization by a smooth infinite-mode embedding or
nonlinear time covariance. H59a--H59c and the complete stratum inventory
close the fixed-section estimates and prove linear time-evolution
symplecticity between transported sections.

### H61 — PSL reducibility section and full Brown--Henneaux quotient

**Statement:** for $q_\pm[f]=f(\pm a)$, define

$$
P_{\rm PSL}f
=f-\frac{q_++q_-}{2\cos a}\cos\phi
-\frac{q_+-q_-}{2\sin a}\sin\phi.
$$

Then $(P_{\rm PSL}f)(\pm a)=0$, $P_{\rm PSL}^2=P_{\rm PSL}$, and the
subtracted frequency-one bulk vectors are exact global AdS Killing fields.
Thus $h[P_{\rm PSL}f]=h[f]$. The residual endpoint-fixing global direction is
$w_A=(\cos\phi-\cos a)/\sin a$, so

$$
H^\sigma(S^1)/\mathfrak{sl}(2,\mathbb R)
\simeq
\ker(q_+,q_-)/\operatorname{span}\{w_A\}.
$$

This is one chiral quotient.  The full real Brown--Henneaux tangent is the
orthogonal direct sum of the right- and left-moving copies, and the H53 form
is their sum.

Applying H51, H59a--H59c, and H60 to this endpoint-zero representative proves
the action-derived, slice-covariant H53 identity on the complete classical
Brown--Henneaux metric tangent quotient for $\sigma>5/2$. The raw
$L^4/d$ transition pole is a reducibility-representative artifact, not a
physical moving-anchor anomaly.

Raw action sectors are unchanged because the PSL complement has zero metric
perturbation. In profiled sectors the complement can reappear through taper
derivatives. H59b isolates their only order-one endpoint layer as the
universal endpoint Wronskian, which vanishes whenever both endpoint values
do. The remaining coefficient bounds are polynomial and are not worsened by
the fixed frequency-one complement. The direct PSL structure audit supplies
the corresponding transition-kernel check.

**Status:** proved linear classical full-quotient finite-action theorem. The
old $P_A$ theorem remains a valid selected physical subspace and is not
reinterpreted as a gauge section.

**Evidence:** the PSL option of
`ads_rindler_transition_point_jet_check.wl` verifies at both endpoints and
for cosine/cosine, cosine/sine, and sine/sine pairings that the endpoint
numerator and its first derivative vanish while the denominator is nonzero;
the six symbolic runs pass $30/30$ tests.  The independent source-structure
mode passes $42/42$ tests and returns endpoint orders
$(\infty,3,2,4,6)$, positive-$L$ frequency degrees $(6,6,6,6)$, and bounded
$(1+q)^{-9/2}$, $(1+q)^{-7/2}$, or $(1+q)^{-5/2}$ denominator residuals
for all six runs.
`ads_rindler_banados_positivity_check.wl` independently verifies endpoint
zeros, idempotence, and the exact global-Killing complement.

**Assumptions:** vacuum linearized Einstein AdS$_3$, Brown--Henneaux source
boundary conditions, the H59 regulator class, the nonsingular PSL chart
$0<a<\pi/2$ (here $a=\pi/4$), and the project finite-action CPS conventions.

**Not verified:** a nonlinear quotient by the full Virasoro group or
finite-amplitude charts on arbitrary Bañados coadjoint orbits.

### H62 — Positive Bañados form and optimal ordinary threshold

**Statement:** map $A=(-a,a)$ to the half-line by
$U=\sin((\phi+a)/2)/\sin((a-\phi)/2)$, put $s=\log U$ and
$w_A=U/U'$. For $f_0=P_{\rm PSL}f$ define $F_f=f_0/w_A$. The classical
Brown--Henneaux modular charge minus RT-geodesic-length Hessian is

$$
\boxed{
E_{\rm can,p}[h[f]]
=\frac1{8G}\int_{\mathbb R}
\left[(F_f')^2+(F_f'')^2\right]\,\mathrm ds .
}
$$

It is nonnegative, and equality holds precisely for
$f\in\mathfrak{sl}(2,\mathbb R)$; hence it is strictly positive on the
metric tangent quotient. Its intrinsic form domain is
$F_f',F_f''\in L^2(\mathbb R,ds)$. The combined form is continuous on the
endpoint-fixed ordinary $H^2$ section and on no $H^r$, $r<2$. It is not
coercive in the standard $H^2$ norm because an anchor-layer family has
nonzero limiting $H^2$ seminorm and energy $O(\delta)$.

**Status:** proved positivity, exact kernel, optimal ordinary upper-bound
threshold, and noncoercivity for the combined classical form. The
action/CPS decomposition into raw canonical energy plus $\Upsilon$ is proved
on $H^\sigma$, $\sigma>5/2$; H62 is its unique positive form closure to
$H^2$.

**Evidence:** `ads_rindler_banados_positivity_check.wl` passes $17/17$ exact
tests for the interval map, PSL section, Killing complement, Schwarzian
stress-transform chain rule, modular-charge total derivative,
Brown--Henneaux $c/12=1/(8G)$ normalization, Hessian, equivalent densities,
kernel, selected mode values, Hardy identity, and boundary-layer scaling.
Interior packets $N^{-r}\chi e^{iN\phi}$ give energy
$N^{4-2r}$, proving failure for $r<2$.

**Assumptions:** $G>0$, one chiral sector at a time with the two sectors added
orthogonally, finite-action endpoint behavior, and second-derivative
normalization.

**Not verified:** matter, quantum modular operators, crossed products, or
quantum JLMS; none is part of this classical goal.

## Current verification summary

Verified: the inherited outer finite-action CPS identities; the componentwise
multi-wall descent and outer-minus-inner organization under the stated
conditions; the finite-action gauge-completion algebra; the corrected
project/2501 benchmark map and Brown--Henneaux real phase; the compact BTZ
geometry, charges, canonical energy, area identities, collar calculations,
trace-Neumann identities, Jacobi invertibility, and smooth HW
representatives; the corrected AdS-Rindler regulator, wall/joint/outer
majorants, weak collar, total-flux and slice-covariance theorem; the complete
abstract moving first variation and action-derived embedding momentum; the
PSL reducibility section and full Brown--Henneaux metric quotient; and the
positive Bañados canonical-energy form with exact
$\mathfrak{sl}(2,\mathbb R)$ kernel and optimal ordinary $H^2$ continuity
threshold.

Assumptions: outward-normal convention on every timelike component; exact background Killing field for $X_\xi$; compatible embeddings and induced joint orientations; vacuum Einstein gravity for the dressed identity; vanishing source terms or an integrable Brown--York polarization in the selected sectors; and H0--H6 for the general conditional fixed-embedding implication.

Not verified: a universal inner-wall polarization for arbitrary nonlinear
smooth data; a simultaneous time-dependent nonuniform wall and tilted-joint
family; nonlinear field-dependent HW brackets; a strong $C^\infty$
infinite-mode collar; or nonlinear Virasoro-orbit charts. Matter and all
quantum-algebraic, crossed-product, and nonperturbative JLMS extensions are
outside the declared goal. H51--H61 construct the adapted spectral domain,
field-dependent HW cocycle, action-derived moving-edge descent, complete
regulator limit, total-flux theorem, and the PSL extension to the full metric
quotient for $\sigma>5/2$. H62 gives the positive combined-form closure to
$H^2$. The auxiliary endpoint/edge cancellations are not used as physical
canonical pairs in that theorem.

Completion audit (2026-08-12): all $16$ standalone Wolfram/xAct scripts in
this directory were rerun in one clean sequential audit and passed
$182/182$ tests. `ads_rindler_regulator_geometry_check.wl` emitted only its
known `Limit::alimv` assumption warning and still passed $16/16$ tests. The
vault policy audit passed, every Markdown file has an even number of display-
math delimiters, no duplicate equation tags occur in `expanded formulas.md`,
and no unexpected control characters were found.

Post-audit repair (2026-08-12): the independent audit's H42 objection is
accepted and the full-tower no-go is withdrawn. The malformed matrix was
corrected, a weighted fixed-anchor kernel and projection were constructed,
H36 was narrowed to a vacuum implication under H0--H6, and H40 was initially
narrowed to a kinematic template; the subsequent direct moving-action
variation upgrades H40 as recorded above. The audit's $239/240$ run exposed a genuine symbolic
timeout in one endpoint component but not a nonzero residual. After adding a
regular-series fallback and a distinct blocked exit status, all $20$ scripts
were rerun in fresh sequential kernels and passed $244/244$: the previous
$240$ tests plus four new mode-space tests. The repaired endpoint pullback
passes $12/12$ and the mode-space script passes $12/12$ with exact tail
coefficients, positive minimum eigenvalue, cross-frequency counterexample,
and projection checks.

Moving-action continuation (2026-08-12): H40 is upgraded from the repaired
kinematic template to the complete abstract first variation and a finite-wall
BTZ component benchmark. `moving_btz_total_embedding_momentum_check.wl`
passes $15/15$ exact tests, while the pre-existing edge algebra script passes
$10/10$. A fresh xCoba kernel independently returned zero cosmological
Einstein and Brown--York momentum residuals. The full old 20-script regression
was not newly re-certified in this continuation: the timing-sensitive endpoint
pullback did not return a fresh summary during the sequential rerun. Therefore
the earlier audited $244/244$ count and the new $15/15$ count are reported
separately rather than combined into a new project-wide total.

Brown--Henneaux phase repair (2026-08-12): constructing the projected
physical basis exposed that the old real benchmark vector was not the declared
real phase of its verified complex primary: its radial component had the
opposite sign. The old $3424/15-74\pi$ project value, raw $32/3$ endpoint
tail, fused-horizon discontinuity, and finite-wall
$(16/3,-16/3,32/3)\sinh^2\epsilon$ split are withdrawn. After correcting the
vector, a new vector-level identity test passes; the local 2501 integral is
$-32/105$, the project value is $+32/105$, and the raw project density is
$-(1-x^2)^2(1+x^2)/8$ with zero endpoint tails. The proper-completion script
converges to $-32/105$ and passes its three symbolic checks plus numerical
convergence. Recomputed regressions pass: modular benchmark $15/15$,
projected local $\Upsilon$ $5/5$, physical basis $12/12$, outer wall $11/11$,
endpoint pullback $12/12$, area endpoint $25/25$, inner current $10/10$, and
fixed joint $12/12$. The corrected inner current extrapolates each endpoint
tail to zero within $1.03\times10^{-11}$ at the declared precision.

Projected local-block continuation (2026-08-12):
`ads_rindler_projected_physical_basis_check.wl` passes $13/13$ exact tests for
the descendant boundary amplitude, finite-rank anchor projection, physical
lift ratios, $H^s$ weight, and the closed unit-boundary bulk representative.
The corrected cosine $m=3\to4$ physical lift is $-\sqrt5/2$.
`ads_rindler_projected_local_upsilon_check.wl` passes $10/10$ exact tests. It
records six projected physical diagonal values through $m=5$ and the
non-diagonal positive four-mode local block, whose sine-sector determinant is
$128/121275$. This is a local Iyer--Wald low-mode block, not by itself the
complete finite-action matrix. High-frequency order and selected wall/joint
estimates were subsequently proved in H44--H50; H51's qualitative diagonal
proper-completion statement is conditional after the incremental audit.

Projected local high-frequency continuation (2026-08-13): the four-mode
matrix was independently recomputed from the direct symmetric bilinear
Iyer--Wald potential and remains exactly unchanged; the script passes
$10/10$. `ads_rindler_projected_high_frequency_check.wl` passes $9/9$
structural tests. It derives exact symbolic kernels for both
$B_{2501}(z_m,z_n)$ and $B_{2501}(z_m,\bar z_n)$, rather than fitting finite
samples, and verifies the closed bulk representative at $m=2,3,6$. For the
physical diagonal mixed-chirality density it proves the right-anchor limit

$$
\frac{4}{m(m^2-1)}B_{2501}(z_m,\bar z_m)
\longrightarrow
e^{-2y}(2+4y+4y^2-8y^3),
\qquad \phi=\frac\pi4-\frac ym,
$$

whose $y\in(0,\infty)$ integral vanishes. Thus this density is $O(1)$ in an
$O(m^{-1})$ layer, not growing on the diagonal. Combining the exact kernels
with the finite-rank projection gives

$$
m\Upsilon_{cc}^{\rm local}
\to(5/2,2,3/2,2,5/2,2,3/2,2)_{m\bmod8},
\qquad
m\Upsilon_{ss}^{\rm local}
\to(3/2,2,5/2,2,3/2,2,5/2,2)_{m\bmod8}.
$$

Direct finite-$m$ high-precision integration independently approaches these
constants. Thus every physical projected local diagonal is $O(m^{-1})$.
The exact mixed-chirality polynomial additionally factors at degrees six,
five, and four with respectively three, two, and one powers of
$\cos2\phi$. Together with the same-chirality kernel this proves the uniform
unit-boundary matrix bound $|B_{mn}^{\rm local}|\leq C(m+n)^2$. Hence the
local projected form has an absolutely convergent mode sum and continuous
extension on $\mathcal H_A^s$ for every $s>5/2$. This is a nonoptimal
sufficient theorem, not a result at the physical $H^{3/2}$ threshold.
Finite-action wall/joint terms and the proper-completion/mode-sum interchange
remain open. An initial optional
eight-residue direct `Limit` scan was stopped without a result because of
symbolic inefficiency and is not counted as verification.

Finite-data closure and spectral-domain correction (2026-08-13): a proof audit rejected the initial
ten-parameter third-jet claim as too narrow because the closed
Brown--Henneaux lift already contains two boundary derivatives. The
conservative reflected fifth-jet space has 21 coefficients. Existing exact
data had rank 14. Seven additional direct finite-action cross integrals were
completed exactly and supplied the rank-completing values recorded in H51.
The 21-by-21 system has the unique solution
$(c_{00},c_{01},c_{02})=(1,-1,1)/6$ and all other coefficients zero.
This proves uniqueness only within the selected endpoint-jet ansatz; it does
not derive the universal regulated endpoint distribution. A later independent
audit also found that ordinary Fourier truncation does not preserve fixed
anchors. The replacement $Q_M=TR_MT^{-1}$ is nested, uniformly bounded,
anchor preserving, and strongly convergent; its exact regression passes
$8/8$ tests.

The finite-data regression passed $33/33$ exact tests: fifth-jet rank and
solution $8/8$, endpoint functional $5/5$, spectral edge algebra $4/4$,
projected symbolic HW trace $6/6$, field-dependent projector/cocycle $6/6$,
and final identity normalization $4/4$. A fresh expensive
$C_2$--$C_5$ direct integral with the expected anomaly fixed rather than
missing passed $5/5$. The other six rank-completing integrals each passed
$5/5$ when first evaluated and are recorded separately rather than folded
into the clean $33/33$ count. Vault policy, display-math parity, equation-tag
uniqueness, control-character scanning, and `git diff --check` passed. Six
orphaned project Wolfram process trees from older interrupted wall/joint runs
were identified by exact command and PID, terminated, and verified absent.
The original `../article/` convention source and the independent audit file
were not edited.

Proper-completion scale continuation (2026-08-13):
`ads_rindler_proper_completion_scaling_check.wl` passes $7/7$ exact tests. On
the RT curve it proves

$$
p_L=\frac{L^2\cos2\phi}{1+L^2\cos2\phi},
\qquad
p_L\left(\frac\pi4-\frac yN\right)
\longrightarrow\frac{2y}{2y+N/L^2}.
$$

The first two regulator-layer jets are also exact. Therefore a mode cutoff
$N\leq M$ can approach the local completion only along a diagonal schedule
$M/L(M)^2\to0$. A finite ratio leaves a nontrivial schedule-dependent profile,
and fixed $L$ followed by $M\to\infty$ switches the completion off in the
high-frequency anchor layer. This is a necessary kinematic scale theorem, not
yet a uniform bound for the full non-Killing potential or the finite-action
wall/joint terms.

Three-layer classical continuation audit (2026-08-13): H54--H56 derive the
intrinsic pullback/cotangent edge realization, exact stationary nonuniform
BTZ wall polarization, and non-orthogonal area--boost joint chart. H57--H58
factor the unprojected anchor anomaly and construct the proper unprojected
extremal normal solver, while retaining the charged Brown--Henneaux
asymptotic-symmetry obstruction. H59 verifies that
$(L,\epsilon,R)=(M^{10},M^{-10},M^{30})$ makes the regulator error monomials
decay. H51 and H49 derive the uniform transition and far-wall bounds; H50
closes the raw far-joint kernel; H59a closes both outer Brown--York source
curvatures and the raw/compensated Cauchy-corner rates; H59b closes the
complete finite-wall compensated kernel on
$\tanh(\epsilon/2)=1/(2L)$; and H59c closes the compensated outer-joint
mismatch. The former separate finite-wall anchor shift is removed as a double
count. H60 proves the sharp point-anchor $s>5/2$ threshold,
time-conjugation algebra, bounded second-jet coefficient collar, and exact
sectorwise pullback/off-cut independence. The complete relative-action
stratum inventory then has vanishing total flux, so time evolution is a
symplectomorphism between fibres and H53 is slice covariant. The earlier
focused regression reran
eight scripts and passed $63/63$
tests: $8+9+8+10+8+7+7+6$. The schedule script emitted only removable
`Limit::alimv` warnings on its first run; after deleting redundant
assumptions it reruns cleanly. Vault policy, display-math parity, equation-tag
uniqueness, and control-character scans pass.

PSL/full-quotient and positivity continuation (2026-08-14): the previous
interpretation of $q_\pm$ as physical moving-anchor coordinates is withdrawn.
Frequency-zero/one complements were checked directly to be exact global AdS
Killing vectors. The endpoint-zero $P_{\rm PSL}$ section therefore leaves
$h$ unchanged and extends the action-derived H53 theorem from the selected
$P_A$ subspace to
$H^\sigma(S^1)/\mathfrak{sl}(2,\mathbb R)$, $\sigma>5/2$.
The old unprojected $L^4/d$ pole is a representative artifact. A separate
classical Bañados/Schwarzian derivation identifies the combined energy with
$(8G)^{-1}\int[(F')^2+(F'')^2]ds$, proving positivity, exact global-Killing
kernel, optimal ordinary $H^2$ continuity, failure below $H^2$, and
noncoercivity at $H^2$. `ads_rindler_banados_positivity_check.wl` passes
$17/17$ exact tests. The PSL point-jet audit separately covers both endpoints
and every real sector pairing, passing $30/30$ endpoint tests and $42/42$
source-structure tests. The original independent audit remains
unchanged; its older open-positivity and physical-anchor-momentum entries are
answered by H61--H62 rather than silently edited.

Final source recertification (2026-08-14): the complete finite-wall script
was rebuilt without a development cache and passed $15/15$; the raw and
compensated outer Brown--York/corner scripts passed $10/10$ and $14/14$; and
the compensated outer-joint script passed $10/10$.  Independent closed-point-
jet rebuilds passed $10/10$ for the raw wall, $10/10$ for the compensated
fused-horizon wall, and $9/9$ for the raw joint.  The moving-action,
radial-homotopy, stationary nonuniform polarization, transition-majorant,
time-covariance, unprojected-HW, field-dependent-cocycle, weak-collar,
explicit-schedule, and second-variation algebra regressions passed
respectively $15/15$, $10/10$, $20/20$, $8/8$, $7/7$, $8/8$, $6/6$,
$7/7$, $7/7$, and $4/4$.  The default $P_A$ point/structure checks remained
$2/2$ and $7/7$ after adding the PSL option.  No failing mathematical
regression was suppressed or replaced by a numerical sample.
