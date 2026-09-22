---
paper id: 2609.23079v1
title: "Toroidal Charged AdS Branes and Deformed Toda Equations"
authors:
  - "Yun, Sangheon"
publication date: 2026-09-19
abstract: |-
  We show that the equations of motion for magnetically charged $p$-branes in $(n+p+2)$-dimensional AdS reduce to coupled one-dimensional Toda-type equations, and use this structure to construct static toroidal black branes with $T^n$ symmetry and $p$ translation-invariant directions. In the pure-Maxwell case we obtain an exact $\sinh$ solution--a $(p+2)$-dimensional black brane times an $n$-torus, asymptotically $\mathrm{AdS}_{p+2}\times T^n$--whose dilatonic analogue, with a scalar coupled through $e^{a\phi}$, has a running torus modulus and a non-trivial dilaton. A perturbative expansion reduces the linearized system to a pair of P\"oschl-Teller equations, one elementary and one solved by associated Legendre functions of non-integer degree, so that the general solution is non-elementary; at weak coupling $\epsilon=a^2$ we construct the $O(a^2)$ backreaction explicitly. From the surface gravity, horizon area, and holographic renormalization we obtain the Hawking temperature, entropy density, and mass density, verifying the first law $d\mathcal{M}=T_H\,ds$ and the traceless conformal stress tensor of the dual $(p+1)$-dimensional theory. At $O(a^2)$ the first law persists, but the dilaton source shifts the Stefan-Boltzmann exponent to $p_{\rm eff}=p+a^2/2$, breaking the clean power law $s\propto T_H^p$ while the normalizable dilaton hair decouples from the entropy.
comments: "40 pages"
url: https://arxiv.org/abs/2609.23079v1
summary: "Exact Maxwell thermodynamics and sourced Toda operators checked; the proposed weak-dilaton thermal mass mode leaves constraint residual −γ²/2 and a singular scalar perturbation, blocking the physical entropy-exponent claim."
tags: []
---

# Reading verdict and scope

The exact non-dilatonic branch is a useful action-to-constraint-to-thermodynamics example. The claimed regular weak-dilaton thermal branch is **Failed under the displayed fixed-parameter ansatz**: the proposed thermodynamic choice of homogeneous mode violates the Hamiltonian constraint, and the scalar already has a singular near-horizon perturbation. Consequently the claimed physical entropy exponent $p+a^2/2$ is not established by this paper. Its final algebraic exponent manipulation is correct conditional on horizon data that have not been consistently supplied.

This is a high-priority technical audit for `T1-charge; T2-model; T2-dS-BH-holography`, not an endorsement of every result. It supplies a concrete example of why solving reduced evolution equations, solving the constraint, imposing regularity, and establishing a fixed-source variational first law are four separate obligations.

## Source map and complete section tree

Official [versioned abstract](https://arxiv.org/abs/2609.23079v1), [PDF](https://arxiv.org/pdf/2609.23079v1), and [source](https://arxiv.org/src/2609.23079v1) were retrieved. The PDF has 41 physical pages; printed numbering is displaced by one after the title page. Text and TeX were used for navigation; physical pages 19, 31, 35 were rendered and inspected for the sourced equations, constraint/mass-mode discussion, and final thermodynamic claim. No claim of visual inspection of every page is made.

| Section cluster | Complete content and role |
|---|---|
| 1 Introduction | Motivation from charged AdS branes, Toda reductions, special exact solutions, and thermal scaling. |
| 2.1–2.5 Charged branes | Action and ansatz; effective Lagrangian and radial constraint; equations and Toda variables; integration-constant count; diagonal exact solution and black-brane coordinate transformation. |
| 3.1–3.4 Dilatonic extension | Scalar action; reduced Lagrangian/constraint; integrated scalar and anisotropy equations; modified Toda coefficients, count, and distinct-power sinh branch. |
| 4.1–4.5 Perturbation theory | Setup and background; first order, eigenvalue analysis and Pöschl–Teller equations; second order, diagonalization and variation of parameters; higher-order pattern. |
| 5.1–5.7 Weak coupling | Coefficient expansion; sourced first-order system; its diagonalization; elementary particular solutions in U and V sectors; leading scalar profile; summary. |
| 6.1–6.7 Exact thermodynamics | Horizon metric; temperature; entropy; holographic mass/first law; free energy/equation of state; renormalized Euclidean action; holographic interpretation. |
| 7.1–7.7 Weak-coupling thermodynamics | General horizon formulas; U-mode interpretation; V horizon/boundary selection; matching constants and constraint; corrected temperature/entropy; first law; shifted scaling exponent. |
| 8 Discussion | Electric duality, uniqueness, multiple scalars, Born–Infeld extension, thermodynamic and nonperturbative questions. |
| Appendix A.1–A.2 | Explicit metric perturbations; expansion of the Hamiltonian constraint, cancellation of V, and branch-mode condition. Central audit target, not optional background. |
| References | Background literature only; cited papers were not independently reread for this note. |

## Global notation and boundary data

Write $d=n+p+2$ for spacetime dimension and $D=n+p$ for the paper's later shorthand. Take positive integers $n,p$, with $p\geq1$, $l>0$, nonzero magnetic charge $q$, and nonextremality scale $\gamma>0$. The $\theta_i$ have period $2\pi$ and the $p$ coordinates $z_i$ have regulated coordinate volume $V_p$. Newton's constant is $G_d$. The scalar coupling $a$ is not a spacetime index; weak coupling means an expansion in $a^2$ for the metric and in $a$ for the scalar.

The fields are the metric, magnetic $n$-form strengths $F^M$, and optionally a canonically normalized scalar $\phi$. With $q^2=\sum_M(P^M)^2$,
$$
F^M_{\theta_1\cdots\theta_n}=P^M,\qquad
 ds^2=-e^{2A}dt^2+e^{2B}dr^2+e^{2C}\sum_i d\theta_i^2+e^{2F}\sum_j dz_j^2.
$$
Here the function $F(r)$ is distinct from the form field. The radial gauge is $B=A+pF+nC$. The exact branch has boundary $r\to0$ and horizon $r\to\infty$. Fixing coordinate periods, the boundary time normalization, $q$, and $l$ matters when deciding whether a constant rescaling is gauge or a physical thermal variation.

In §§4–5, $U,V$ denote eigenmodes of the Toda perturbation, not the brane volume or a potential. $C_0$ is the constant background torus radius logarithm; $c_1,c_2$ normalize the dilatonic Toda equations; $\mu=c_2^{(0)}$. The scalar integration constants $\kappa_\phi,\mu_\phi$ must not be silently removed by the requirement that the scalar vanish at $a=0$.

## Cluster I: action, lapse constraint, and exact Maxwell branch

**Source-derived**, Eqs. (1)–(20): the non-dilatonic action is
$$
I=\frac1{16\pi G_d}\int\sqrt{-g}\left[R+\frac{D(D+1)}{l^2}-\frac1{2n!}\sum_M(F^M)^2\right].
$$
The scalar extension adds $-\frac12(\partial\phi)^2$ and replaces the form term by $-e^{a\phi}\sum(F^M)^2/(2n!)$. With $W=A+pF$, the kinetic part of the radial action before fixing $B$ is
$$
 e^{W+nC-B}\left[(W'+nC')^2-\frac{W'^2}{p+1}
 -\frac{p}{p+1}(A'-F')^2-nC'^2-\frac12\phi'^2\right].
$$
The two potential terms inside these brackets are $+D(D+1)e^{2B}/l^2-q^2e^{a\phi+2(B-nC)}/2$. Variation of the auxiliary lapse precedes gauge fixing. In the displayed radial gauge the constraint is
$$
\mathcal H=B'^2-\frac{W'^2}{p+1}-\frac p{p+1}(A'-F')^2-nC'^2-\frac12\phi'^2
+\frac{q^2}{2}e^{a\phi+2W}-\frac{D(D+1)}{l^2}e^{2B}=0.
$$
The paper completes squares differently in its dilatonic expression; the above uncompleted form is useful for checking Appendix A without relying on its cancellations.

At $a=0$, define
$$
J=W+(n-1)C+c_J,\qquad K=W-(p+1)C+c_K.
$$
The additive normalizations absorb the two nonzero potential coefficients. The equations become
$$
J''=\exp\!\left[\frac2D((D+1)J-K)\right],\qquad
K''=\exp\!\left[\frac2D((p+1)J+(n-1)K)\right],\qquad
A-F=-\alpha r+\beta.
$$
The opposite signs of the off-diagonal Toda entries prevent a positive diagonal symmetrizer. This observation is not, by itself, a general nonlinear nonintegrability theorem.

Setting $J=K=J_0$ gives $J_0''=e^{2J_0}$ and the sinh branch
$$
J_0=\ln\gamma-\ln\sinh(\gamma r),\qquad J_0'^2-e^{2J_0}=\gamma^2.
$$
The constraint and regular horizon select $\alpha=\gamma$ for the branch studied. Then
$$
C_0=\frac1{2n}\ln\frac{(p+1)q^2l^2}{2D(D+1)},\quad
\mu=-c_J-(n-1)C_0,\quad e^{2\mu}=\frac2{(p+1)q^2},
$$
$$
A_0=\frac{J_0+\mu-p\gamma r}{p+1},\quad
F_0=\frac{J_0+\mu+\gamma r}{p+1},\quad
B_0=J_0+\mu+nC_0.
$$
The torus factors off. The remaining metric is a planar AdS$_{p+2}$ black brane with radius $L=(p+1)l/\sqrt{D(D+1)}$ and blackening factor $1-(u_+/u)^{p+1}$ after the paper's radial transformation. It is an AdS$_{p+2}\times T^n$ asymptotic product, so an AdS$_d$ boundary interpretation requires additional justification. Constant coordinate rescalings do not alone show that the thermal scale is physically redundant once boundary sources and coordinate periods are fixed.

## Cluster II: scalar integration, deformed Toda coefficients, and the special power branch

**Source-derived**, Eqs. (29)–(46): integration gives
$$
A-F=-\alpha r+\beta,\qquad
\phi=a(A-C)-\kappa_\phi r+\mu_\phi.
$$
Let $\Delta=2n(p+1)+(D+1)a^2$. The linear change of variables is
$$
B=b_1J+b_2K+c_1,\qquad W+\frac a2\phi=b_3J+b_4K+c_2,
$$
with
$$
(b_1,b_2,b_3,b_4)=\frac1{D\Delta}
\left(2n(p+1)(D+1),-2n(p+1),2n(p+1)^2,
 n[2(n-1)(p+1)+Da^2]\right).
$$
The two equations are $J''=e^{2b_1J+2b_2K}$ and $K''=e^{2b_3J+2b_4K}$. The diagonal $J=K$ is no longer a solution for nonzero $a$ because the row sums differ. There is nevertheless a distinct-power elementary branch,
$$
J=-m_J\ln[\sinh(\gamma r)/\gamma]+j_*,\quad
K=-m_K\ln[\sinh(\gamma r)/\gamma]+k_*,\quad
m_K=1,\quad m_J=1+\frac{Da^2}{2n(p+1)},
$$
where the additive constants must also match the exponential amplitudes. The paper distinguishes this running-modulus branch from the purported finite-area perturbative branch. Its mere existence does not establish regularity or a thermodynamic ensemble.

## Cluster III: perturbation operators and nonlinear source hierarchy

**Checked**, Eqs. (47)–(81): for $J=J_0+\epsilon J_1+\cdots$, $K=J_0+\epsilon K_1+\cdots$, the first-order matrix is
$$
M=\begin{pmatrix}D+1&-1\\p+1&n-1\end{pmatrix},\quad
M\binom11=D\binom11,\quad M\binom1{p+1}=n\binom1{p+1}.
$$
Set $J_1=U+V$, $K_1=U+(p+1)V$, with inverse $U=((p+1)J_1-K_1)/p$, $V=(K_1-J_1)/p$. The decoupled operators are
$$
U''=2e^{2J_0}U,\qquad V''=\frac{2n}{D}e^{2J_0}V.
$$
In $\xi=\gamma r$, the U solutions are $h_1=\coth\xi$, $h_2=\xi\coth\xi-1$, with Wronskian 1. The V solutions are $P_\ell(\coth\xi),Q_\ell(\coth\xi)$, where $\ell(\ell+1)=2n/D$ and $0<\ell<1$. These are ordinary Legendre functions of noninteger degree (order zero). The source's discussion of non-elementarity is narrower than a complete classification of the nonlinear system's integrability.

The second-order eigenmode sources are
$$
\sigma_U=2U^2-\frac{2n^2(p+1)}{D^2}V^2,\qquad
\sigma_V=\frac{4n}{D}UV+\frac{2n^2(p+2)}{D^2}V^2.
$$
The homogeneous operators remain unchanged; variation of parameters gives, for example,
$$
\widetilde U_p=-h_1\int h_2\sigma_U\,\mathrm{csch}^2\xi\,d\xi
+h_2\int h_1\sigma_U\,\mathrm{csch}^2\xi\,d\xi.
$$
The matrix diagonalization, both second-order source coefficients, and the Wronskian were independently checked in Mathematica. The all-orders statement is a formal recurrence, not a proof of convergence or a uniform expansion at either endpoint.

## Cluster IV: weak-coupling solution and the scalar zero mode

**Source-derived and locally Checked**, Eqs. (82)–(95): put $\epsilon=a^2$, $\widehat\eta=(D+1)/(2n(p+1))$. The coefficient variations give
$$
U''-2e^{2J_0}U=-\frac D{np}J_0e^{2J_0},\qquad
V''-\frac{2n}{D}e^{2J_0}V=\frac1{p(p+1)}J_0e^{2J_0}.
$$
The elementary particular solutions are
$$
U_p=\frac D{4np}(\xi\coth\xi+2J_0),\qquad
V_p=-\frac D{2np(p+1)}\left(J_0+\frac D{2n}\right).
$$
Substitution returns exactly zero in both sourced ODEs. Thus a claim that the particular solutions themselves must be non-elementary would be false; noninteger Legendre functions enter the homogeneous sector and boundary-value selection.

The paper chooses $\kappa_\phi=\mu_\phi=0$, hence
$$
\phi=a(A_0-C_0)+O(a^3).
$$
Vanishing at $a=0$ does **not** require these integration constants to vanish at order $a$. In particular, $A_0'\to-\gamma$ at the horizon, so this choice gives $\phi'\to-a\gamma$ and a logarithmically singular scalar in a regular horizon coordinate. A necessary leading-order cancellation would instead allow $\kappa_\phi=-a\gamma+O(a^3)$, changing the branch and later thermodynamics. This is a repair direction, not a solved replacement solution.

Near $r=0$, $\zeta=r^{1/(p+1)}$ yields a scalar term $-a\ln\zeta$ plus a constant and a response term proportional to $a\gamma\zeta^{p+1}$. The assignment of this running logarithmic source to a marginal CFT coupling needs a scalar-inclusive boundary variational and renormalization analysis; the coefficient alone does not prove that all source-work terms vanish.

## Cluster V: exact temperature, entropy, mass, and Euclidean action

**Source-derived**, with the stated algebraic checks, Eqs. (96)–(132): define
$$
\Omega=-\frac p{p+1}[\ln(2\gamma)+\mu]-nC_0.
$$
The exact horizon formulas are
$$
T_0=\frac{\gamma e^\Omega}{2\pi},\qquad
s_0=\frac{(2\pi)^n}{4G_d}\exp\!\left[\frac p{p+1}(\ln(2\gamma)+\mu)+nC_0\right],
$$
so $T_0s_0=\gamma(2\pi)^n/(8\pi G_d)$ exactly. At fixed $q,l$, $T_0\propto\gamma^{1/(p+1)}$, $s_0\propto\gamma^{p/(p+1)}$. The paper's reduced holographic stress tensor gives
$$
\mathcal M_0=\frac p{p+1}T_0s_0,\quad P=\frac{\mathcal M_0}p,\quad
f_0=-\frac1{p+1}T_0s_0=-P.
$$
The torus reduction uses $G_{p+2}=G_d/[(2\pi)^ne^{nC_0}]$. Flat-boundary Fefferman–Graham stress-tensor data determine the mass; appropriate coordinate-volume/time-normalization factors are retained. The displayed $\zeta$ coordinate suffices at the normalizable order, rather than being an exact all-orders radial gauge transformation.

The reduced Euclidean action includes the Einstein bulk term, outward GHY term, and flat-boundary counterterm $p/(8\pi G_{p+2}L)\int\sqrt h$. At cutoff $r_c$ their dimensionless combination is
$$
[\coth(\gamma r_c)-1]-(p+1)\coth(\gamma r_c)+p\,\mathrm{csch}(\gamma r_c)
=-p\tanh(\gamma r_c/2)-1.
$$
Mathematica verifies this cancellation and its finite limit. The resulting $f_0=-\gamma(2\pi)^n/[8\pi(p+1)G_d]$ agrees with the thermodynamic expression. These checks validate the displayed reduced-action algebra, not an independent derivation of all holographic counterterms.

The exact branch gives $s\propto T^p$ and the fixed-charge first law. Varying $q$ changes the internal radius and the lower-dimensional normalization; a magnetic work term cannot be excluded by a calculation restricted to $\delta q=0$. No covariant-phase-space derivation for varying charge is supplied. Likewise, a fixed torus does not by itself prove that every Kaluza–Klein excitation is thermally frozen for arbitrary temperature.

## Cluster VI: claimed regular branch, matching data, and Appendix A audit

**Source-derived**, Eqs. (133)–(169): the paper chooses $A-F=-\gamma r$ to all orders and sets
$$
U=U_p+\lambda h_2,\qquad
V=V_p+c_PP_\ell(\coth\xi)+c_QQ_\ell(\coth\xi).
$$
Since $Q_\ell(\coth\xi)\sim\xi-\gamma_E-\psi(\ell+1)$ and $P_\ell\to1$ at the horizon, bounded V requires $c_Q=-D/[2np(p+1)]$. Absence of the power-divergent P mode at the boundary sets $c_P=0$ under the chosen asymptotic prescription. This controls V; it does not establish regularity of the full scalar and metric.

Unit coefficients in the Toda equations give
$$
e^{2c_1}=\frac{2n(p+1)l^2}{D(D+1)\Delta},\qquad
e^{2c_2}=\frac{4n}{q^2\Delta},\qquad
c_1^{(1)}=c_2^{(1)}=-\frac{\widehat\eta}{2}.
$$
Appendix A reconstructs
$$
B_1=U+\frac nD V-\widehat\eta J_0-\frac{\widehat\eta}2,
$$
$$
(p+1)A_1=U+\frac{n(p+1)}D V+
\left[\frac1{2(p+1)}-\widehat\eta\right]J_0
-\frac{\widehat\eta}2-\frac12(A_0-C_0),\qquad F_1=A_1,
$$
$$
C_1=-\frac pD V-\frac{J_0}{2n(p+1)}+\frac{A_0-C_0}{2n}.
$$
These formulas, the uncompleted constraint above, and $\phi_1=A_0-C_0$ permit a direct independent calculation without using the paper's unspecified function in Eq. (168).

### Failed: replacing the constrained mass mode by the thermal one

**Checked in Mathematica**, for arbitrary $n,p,\gamma>0$ and arbitrary differentiable V, all V and V-prime terms cancel from the order-$a^2$ constraint. Its residual is
$$
\mathcal H_1=-\frac{\gamma^2p}{2n(p+1)}(1+n+4n\lambda).
$$
Thus the paper's constraint value $\lambda_c=-(n+1)/(4n)$ is correct. But substitution of its proposed physical value, Eq. (150), gives
$$
\lambda_{\rm phys}=\frac{n-p}{4np},\qquad
\boxed{\mathcal H_1(\lambda_{\rm phys})=-\frac{\gamma^2}{2}\ne0.}
$$
Changing the homogeneous Toda mass mode while keeping $A-F=-\gamma r$, the scalar zero-mode choice, and all matching data fixed is not an allowed gauge replacement of a solution. A genuine reparametrization changes the entire background, including the explicit anisotropy terms and the definition of the perturbation. It preserves a zero constraint and cannot turn this nonzero residual into zero. The paper supplies no corresponding transformed complete solution. Consequently its finite thermal data cannot be accepted as on-shell data of the stated ansatz.

### Failed: bounded V does not imply a regular scalar or torus

With $V'\to0$, the exact perturbative reconstruction gives
$$
C_1'\longrightarrow-\frac{p\gamma}{2n(p+1)},
$$
independently of $\lambda$. The torus therefore does not tend to a finite constant order by order in this branch. A cancellation in total area alone would not remove anisotropic degeneration or scalar singularity.

More directly, the leading invariant scalar kinetic coefficient on the background is
$$
\frac{(\nabla\phi)^2}{a^2}=e^{-2B_0}(A_0')^2+O(a^2)
=\frac{[\cosh(\gamma r)+p\sinh(\gamma r)]^2}
{e^{2(\mu+nC_0)}(p+1)^2}+O(a^2).
$$
It diverges exponentially as $r\to\infty$. Mathematica reproduced this expression and the torus slope. An independent xAct four-dimensional contraction checks that the canonical scalar stress trace is minus its kinetic norm; this is a tensor-normalization check, not an all-dimensional curvature calculation or a nonlinear no-go theorem.

The singular perturbation may signal a needed change of integration constants or a boundary layer. It does not prove that no regular dilatonic brane exists. It does prove that the paper's displayed perturbative data do not justify taking regular-horizon limits as done in §7.

### Conditional exponent algebra versus physical first law

The paper obtains $d\sigma_1/d\ln\gamma=1/[2(p+1)^2]$ and $d\tau_1/d\ln\gamma=-d\sigma_1/d\ln\gamma$, then forms
$$
\frac{p/(p+1)+a^2/[2(p+1)^2]}{1/(p+1)-a^2/[2(p+1)^2]}
=p+\frac{a^2}{2}+O(a^4).
$$
This final rational expansion is **Checked**. Its interpretation as the entropy exponent of a regular on-shell branch is **Blocked by the explicit failures above**. Integration of a presumed first law to define a mass cannot substitute for deriving its boundary generator and regular horizon charge. A fixed leading scalar coefficient is necessary information, but the logarithmic asymptotics, renormalized symplectic flux, and scalar zero mode still require treatment.

## Equation ledger and derivation dependencies

| Equations | Object/assumption | Evidence and downstream use |
|---|---|---|
| 1–14, 29–37 | Action, radial lapse, flux ansatz, integrated scalar | Source-derived reduction; retain lapse equation and scalar integration constants. |
| 15–28 | Toda transformation and Maxwell sinh solution | Source-derived metric; used for all perturbative tests. |
| 38–46 | Dilaton Toda coefficients, distinct-power branch | Source-derived; elementary branch need not be regular. |
| 47–81 | Linear matrix, Pöschl–Teller operators, nonlinear sources | Matrix/source/Wronskian checks pass. Formal recurrence only. |
| 82–94 | Weak-coupling source and particular solutions | Both differential residuals vanish. |
| 95, 154 | Scalar zero-mode choice and logarithmic asymptotics | Source-derived; its horizon kinetic coefficient diverges. |
| 96–132 | Maxwell horizon and reduced holographic thermodynamics | Ts product and Euclidean cancellation checked; fixed-q scope. |
| 133–148 | V selection and matching constants | Source-derived selection; bounded V alone insufficient. |
| 149, 161–169 | Constraint and metric reconstruction | Independent residual confirms lambda_c, refutes substituting lambda_phys with the rest fixed. |
| 150–159 | Claimed finite thermal branch and exponent | Physical claim blocked; final formal exponent algebra passes. |

The sound local chain is action → reduced constraint/evolution system → exact Maxwell background → perturbation operators → particular solutions. The branch splits at imposition of scalar/horizon conditions. Appendix A must be combined with the original constraint before any thermal or holographic interpretation of §7.

## Translation to the vault's action-first and boundary workflows

The reusable object is the lapse constraint together with the explicit reconstruction from Toda variables to metric and scalar. It is a concrete testbed for deciding whether a proposed reduced-coordinate transformation preserves the full compatible solution space. It is not enough that the two Toda equations remain solved.

For a CPS treatment, fix boundary time normalization and torus periods, derive the scalar/form contribution to the potential from the same overall action normalization, specify whether charge and scalar sources vary, and retain source-work terms until the allowed variations remove them. A parameter called a mass redefinition is not automatically a proper gauge direction. The non-dilatonic fixed-q family is a useful controlled first stage; the weak-scalar branch needs repair before feeding it to a charge-integrability argument.

**Assumptions:** $n,p$ positive; $p\geq1$; $\gamma>0$; radial gauge as above; action's scalar kinetic coefficient $-1/2$; exact background normalizations; scalar zero modes set as in the paper; fixed $A-F=-\gamma r$ for the failed thermal substitution. Logarithms implicitly require a common reference scale. No claim about the extremal $\gamma=0$ endpoint follows from the nonzero residual test.

## How to read this long paper

Read §§2.1–2.5 and §6 together first: they isolate the exact branch and its genuinely useful thermodynamic calculation. Then read §4 and §§5.1–5.5 for the solvable perturbative operators. Before accepting §§7.5–7.7, read §5.6, §7.4, and Appendix A side by side and reproduce the constraint and scalar-norm tests. Sections 3 and 7.3 are technical references for the change of variables and boundary selection. Sections 1, 6.7, 8, and the reference list provide motivation and interpretation, with the caveats above.

## Verification boundary and processing audit

**Verified:** Mathematica exact diagonalization; second-order source projections; Wronskian; sourced U/V solutions; Maxwell Ts product; Euclidean cutoff cancellation; full order-$a^2$ radial constraint with arbitrary V; lambda_phys residual; torus slope and leading scalar kinetic norm; conditional exponent expansion. xAct independently checked the four-dimensional canonical scalar-stress trace identity. Decisive rendered PDF pages visually confirmed the source equation and mass-mode discussion.

**Failed:** the identification of the displayed lambda_phys branch as an on-shell reparametrization with the other stated data fixed; inference of full horizon regularity from bounded V; consequent establishment of physical weak-coupling entropy exponent and regular-horizon first law.

**Not independently verified:** full unreduced Einstein/form tensor equations in arbitrary dimension; nonlinear global solution existence; convergence or uniform resummation of the perturbation; complete holographic scalar counterterms, renormalized symplectic flux, variable-charge first law, uniqueness, and a repaired regular dilatonic branch. The scalar-stress trace test is four-dimensional and is not promoted to a general theorem.

**Blocked:** completing the paper's physical weak-coupling thermal claim requires a corrected constrained solution with regular scalar data and a compatible boundary ensemble. This is a scientific source defect, not a retrieval failure. Both official source and PDF succeeded; no computation service remained unavailable. This finishes the fourteenth and last item of the frozen serial high-priority queue.
