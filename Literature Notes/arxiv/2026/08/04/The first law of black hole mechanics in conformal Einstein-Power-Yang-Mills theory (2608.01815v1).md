---
paper id: 2608.01815v1
title: The first law of black hole mechanics in conformal Einstein-Power-Yang-Mills theory
authors:
  - Xiaokai He
  - Xiaoning Wu
  - Naqing Xie
publication date: 2026-08-03T07:26
abstract: |-
  The paper applies the Iyer--Wald formalism to four-dimensional conformal Einstein--Yang--Mills theory. It derives a symplectic potential and diffeomorphism Noether charge, evaluates the corresponding surface form at spatial infinity and on a stationary horizon cross-section, and obtains a first-law identity containing a conformal-scalar entropy term and an unsimplified non-Abelian horizon pairing.
comments: "17 pages"
url: https://arxiv.org/abs/2608.01815v1
summary: "A compact nonminimally coupled scalar--Yang--Mills Iyer--Wald benchmark whose normalization, asymptotic charges, gauge covariance, and several printed formulas require repair."
tags: []
---

Back to [[2026_08_04_overview]].

The source-level calculation leads to

$$
\delta\mathcal E
=\Omega_H\delta\mathcal J
+\frac\kappa6\delta(\phi_H^2A)
-\int_{S_H}(A_\beta^a\xi^\beta)
\delta\!\left(
\epsilon_{\alpha_3\alpha_4\alpha\mu}F_a^{\alpha\mu}
\right).
\tag{99}
$$

The non-Abelian term is left as a horizon pairing rather than reduced to \(\Phi\,\delta Q\). This is the genuinely paper-specific structural result. It is useful as a derivation-repair benchmark, but the displayed physical mass, angular momentum, and entropy should not be imported without the normalization and gauge qualifications below.

# Source structure

1. **Section I** introduces Einstein--power--Yang--Mills and its conformal-scalar completion, then specializes the calculation to four dimensions.
2. **Section II.A** varies the curvature, second-derivative scalar, and Yang--Mills sectors and extracts \(E_g,E_\phi,E_{\mathrm{YM}}\) and \(\Theta\).
3. **Section II.B** evaluates \(J_\xi=\Theta(\pounds_\xi\Phi)-\iota_\xi L\), isolates the constraint form, and derives \(Q_\xi^g,Q_\xi^\phi,Q_\xi^{\mathrm{YM}}\).
4. **Section III** derives the fixed-generator surface-form identity. Its infinity subsection defines the proposed energy and angular momentum; its horizon subsection works in Gaussian-null coordinates; its final subsection equates the two boundaries and evaluates the Wald entropy.
5. **Section IV** summarizes the proposed first law. There is no technical appendix; all derivation steps that can be audited occur in the main text.

# Four-dimensional conformal scalar--Yang--Mills theory

## From power Yang--Mills to the actual model

The introduction begins in \(D\) dimensions with

$$
I_{\mathrm{EPYM}}
=\frac12\int d^Dx\sqrt{-g}
\left[R-(\mathcal F_{\mathrm{YM}})^q\right],
\tag{2}
$$

and a conformal scalar completion

$$
I_{\mathrm{CEPYM}}
=\frac12\int d^Dx\sqrt{-g}
\left[
\frac14\frac{D-2}{D-1}R\phi^2
-\phi\Box\phi
-(\mathcal F_{\mathrm{YM}})^q
\right].
\tag{3}
$$

The calculation then specializes to \(D=4\), for which conformal invariance fixes \(q=1\). The theory analyzed in Sections II--III is therefore a conformally coupled scalar plus ordinary non-Abelian Yang--Mills, not a nonlinear power-Yang--Mills model.

The four-dimensional Lagrangian representative is

$$
\boldsymbol L
=\frac12\left(
\frac16R\phi^2-\phi\Box\phi-\mathcal F_{\mathrm{YM}}
\right)\boldsymbol\epsilon
=\left(
\frac1{12}R\phi^2
-\frac12\phi\Box\phi
-\frac12F_{\mu\nu}^aF_a^{\mu\nu}
\right)\boldsymbol\epsilon.
\tag{7}
$$

The Yang--Mills curvature convention is

$$
F_{\mu\nu}^a
=\partial_\mu A_\nu^a-\partial_\nu A_\mu^a
+\frac1{2\sigma}C^a{}_{bc}A_\mu^bA_\nu^c.
\tag{9}
$$

The source alternates between \(SO(3)\) and \(SU(2)\). Their Lie algebras are locally isomorphic, but their global gauge groups and allowed large transformations need not agree in a charge problem.

## Overall normalization

When \(\phi=1\), the gravitational density is \(R/12\), whereas standard \(G=1\) Einstein gravity has \(R/(16\pi)\). The ratio is

$$
\frac{1/12}{1/(16\pi)}=\frac{4\pi}{3}.
$$

Every canonical charge and entropy in the paper inherits this factor. In particular,

$$
S=\frac{\pi}{3}\phi_H^2A
$$

is internally consistent with the paper's action but does not become \(A/4\) at \(\phi=1\) unless the entire action and all charges are rescaled.

# Variation and symplectic potential

The source varies the curvature, second-derivative scalar, and Yang--Mills sectors separately and organizes the result as

$$
\delta\boldsymbol L
=\boldsymbol E^g_{\mu\nu}\delta g^{\mu\nu}
+\boldsymbol E^\phi\delta\phi
+\boldsymbol E_{\mathrm{YM}}^{\alpha a}\delta A_{\alpha a}
+d\boldsymbol\Theta.
\tag{26,31}
$$

The potential is the Hodge dual of the vector

$$
\begin{aligned}
\theta^\mu={}&
\frac1{12}\phi^2g^{\mu\nu}g^{\alpha\beta}
(\nabla_\beta\delta g_{\nu\alpha}-\nabla_\nu\delta g_{\alpha\beta})\\
&+\frac16\phi(\nabla^\nu\phi)g^{\beta\mu}\delta g_{\nu\beta}
+\frac16\phi(\nabla^\beta\phi)g^{\nu\mu}\delta g_{\nu\beta}
-\frac1{12}\phi(\nabla^\mu\phi)g^{\alpha\beta}\delta g_{\alpha\beta}\\
&-\frac12\phi\nabla^\mu\delta\phi
+\frac12(\nabla^\mu\phi)\delta\phi
-2F^{\mu\alpha a}\delta A_{\alpha a}.
\end{aligned}
\tag{27}
$$

The Euler--Lagrange expressions are

$$
\begin{aligned}
\frac{E^g_{\mu\nu}}\epsilon={}&
\frac1{12}\phi^2G_{\mu\nu}
+\frac13\nabla_\mu\phi\nabla_\nu\phi
-\frac16\phi\nabla_\mu\nabla_\nu\phi\\
&-\frac1{12}(\nabla\phi)^2g_{\mu\nu}
+\frac16\phi\Box\phi\,g_{\mu\nu}
-F_{\mu\alpha}^aF_\nu{}^{\alpha}{}_a
+\frac14F^2g_{\mu\nu},
\end{aligned}
\tag{28}
$$

$$
\frac{E^\phi}{\epsilon}
=\frac16R\phi-\Box\phi,
\tag{29}
$$

$$
\frac{E_{\mathrm{YM}}^{\alpha}{}_a}{\epsilon}
=2\nabla_\mu F_a^{\mu\alpha}
+\frac1\sigma F^{\mu\alpha b}C_{bac}A_\mu^c.
\tag{30}
$$

The scalar representative matters. Integrating by parts gives

$$
-\frac12\phi\Box\phi\,\boldsymbol\epsilon
=\frac12(\nabla\phi)^2\boldsymbol\epsilon
-\frac12d(\phi\,{*d\phi}).
$$

Thus \(\Theta^\phi\) and the separate scalar Noether charge depend on the chosen \(L\to L+d\mu\) representative. For a fixed generator, the invariant comparison object is the full

$$
k_\xi[\delta\Phi;\Phi]
=\delta Q_\xi-\iota_\xi\Theta,
$$

not an isolated sector charge.

# Diffeomorphism Noether current and charge

The current is

$$
\boldsymbol J_\xi
=\boldsymbol\Theta(\Phi,\pounds_\xi\Phi)
-\xi\cdot\boldsymbol L.
\tag{37}
$$

After commuting derivatives of \(\xi\), expanding \(\pounds_\xi\phi\) and \(\pounds_\xi A\), and integrating by parts, the source writes

$$
\boldsymbol J_\xi=\boldsymbol C_\xi+d\boldsymbol Q_\xi,
\tag{46}
$$

where

$$
\boldsymbol Q_\xi
=\boldsymbol Q_\xi^g
+\boldsymbol Q_\xi^\phi
+\boldsymbol Q_\xi^{\mathrm{YM}}.
\tag{48}
$$

The displayed representatives are

$$
(Q_\xi^g)_{\alpha_3\alpha_4}
=-\frac1{12}\phi^2
\epsilon_{\alpha_3\alpha_4\alpha\mu}
\nabla^\alpha\xi^\mu,
\tag{49}
$$

$$
(Q_\xi^\phi)_{\alpha_3\alpha_4}
=-\frac16\phi
\epsilon_{\alpha_3\alpha_4\alpha\mu}
(\nabla^\alpha\phi)\xi^\mu,
\tag{50}
$$

$$
(Q_\xi^{\mathrm{YM}})_{\alpha_3\alpha_4}
=-\epsilon_{\alpha_3\alpha_4\alpha\mu}
F^{\alpha\mu a}A_a^\beta\xi_\beta.
\tag{51}
$$

On shell, \(J_\xi=dQ_\xi\), Eq. (52).

The Yang--Mills representative is a pure-diffeomorphism charge,

$$
Q_\xi^{\mathrm{YM}}=-(\xi\cdot A)_a,{*F^a},
$$

and is not manifestly gauge covariant. A gauge-covariant phase-space treatment would use a combined diffeomorphism and internal-gauge parameter \((\xi,\Lambda)\), with the boundary choice of \(\Lambda\) stated explicitly.

# Surface-form identity and its assumptions

The symplectic current is defined by

$$
\boldsymbol\omega(\Phi;\delta\Phi,\pounds_\xi\Phi)
=\delta\boldsymbol\Theta(\Phi;\pounds_\xi\Phi)
-\pounds_\xi\boldsymbol\Theta(\Phi;\delta\Phi).
\tag{55}
$$

For a background solution, a linearized solution, a fixed generator,

$$
\delta\xi=0,
\tag{60}
$$

and an exact symmetry of every field,

$$
\pounds_\xi g=0,
\qquad
\pounds_\xi\phi=0,
\qquad
\pounds_\xi A=0,
$$

the source obtains

$$
d\left(\delta\boldsymbol Q_\xi
-\xi\cdot\boldsymbol\Theta\right)=0.
\tag{57}
$$

Integrating across a hypersurface \(\Sigma\) equates the surface-form integrals at infinity and on a horizon cross-section.

The condition \(\pounds_\xi A=0\) is stronger than stationarity up to a Yang--Mills gauge transformation. Likewise, \(\delta\xi=0\) is a comparison convention for the background horizon generator, not the physical assertion that \(\delta\Omega_H=0\) among neighboring black holes.

# Spatial infinity: energy, scalar charge, and Yang--Mills work term

With

$$
\xi=t+\Omega_H\varphi,
$$

the infinity integral is written

$$
\int_\infty k_\xi
=\delta\mathcal E-\Omega_H\delta\mathcal J.
\tag{61}
$$

The canonical variations are

$$
\delta\mathcal E
=\int_\infty(\delta Q_t-t\cdot\Theta),
\qquad
\delta\mathcal J=-\int_\infty\delta Q_\varphi.
\tag{62--63}
$$

Dropping \(\int_\infty\varphi\cdot\Theta\) requires an axisymmetric phase space and adequate falloffs; these are not spelled out.

The scalar and metric asymptotics are

$$
\phi=1+\frac{\phi_1}{r}+\frac{\phi_2}{r^2}+\cdots,
\tag{64}
$$

$$
g_{\mu\nu}=\eta_{\mu\nu}+h_{\mu\nu},
\qquad
h_{\mu\nu}=O(r^{-1}),
\qquad
\partial_\alpha h_{\mu\nu}=O(r^{-2}).
\tag{65}
$$

No corresponding Yang--Mills falloffs or allowed asymptotic gauge transformations are stated.

The metric contribution is declared to be

$$
\int_\infty(\delta Q_t^g-t\cdot\Theta^g)
=\delta\mathcal M,
\tag{67}
$$

$$
\mathcal M
=\frac1{12}\int_\infty
(\partial_i h_{jj}-\partial_jh_{ij})r^i.
\tag{68}
$$

The printed derivation in Eq. (66) has malformed variation bookkeeping, and Eq. (68) omits an explicit surface element. Its coefficient and sign must be interpreted in the paper's nonstandard action convention rather than identified directly with the standard \(G=1\) ADM mass.

The scalar charge is defined as

$$
q
:=\int_\infty Q_t^\phi
=-\frac16\int_{S^2}\phi_1\sin\theta\,d\theta\,d\varphi,
\tag{69}
$$

and contributes

$$
\int_\infty(\delta Q_t^\phi-t\cdot\Theta^\phi)
=-2\delta q.
\tag{71}
$$

For the gauge field, the paper introduces

$$
V=\lim_{r\to\infty}\sqrt{A_t^aA_{ta}},
\qquad
E_a^\mu=\sqrt h\,F_a^{\mu\nu}n_\nu,
\tag{72}
$$

$$
Q^\infty=\frac12\int_\infty|E_a^\mu r_\mu|.
\tag{75}
$$

It then uses

$$
\int_\infty Q_t^{\mathrm{YM}}=VQ^\infty,
\qquad
\int_\infty t\cdot\Theta^{\mathrm{YM}}=Q^\infty\delta V,
\tag{74,76}
$$

to obtain

$$
\int_\infty(\delta Q_t^{\mathrm{YM}}-t\cdot\Theta^{\mathrm{YM}})
=V\delta Q^\infty.
\tag{77}
$$

This reduction requires asymptotic internal alignment of \(A_t^a\) with the electric flux, control of variations of that internal direction, and an asymptotic gauge choice. Magnitude definitions alone do not prove it. Nor is \(V\delta Q^\infty\) an exact phase-space differential without an ensemble condition or a relation among the boundary data.

The source's total infinity result is

$$
\delta\mathcal E
=\delta\mathcal M-2\delta q+V\delta Q^\infty.
\tag{78}
$$

# Angular momentum and the \(\xi/\varphi\) problem

The gravitational and scalar pieces are

$$
-\int_\infty Q_\varphi^g
=\frac1{12}\int_\infty
\epsilon_{\alpha_3\alpha_4\alpha\mu}
\nabla^\alpha\varphi^\mu,
\tag{79}
$$

$$
-\int_\infty Q_\varphi^\phi=0.
\tag{80}
$$

For a Yang--Mills contribution to the axial charge, Eq. (51) requires \(A_\beta^a\varphi^\beta\). Instead, Eqs. (81)--(82) use \(A_\beta^a\xi^\beta\), and Eq. (81) also mismatches a varied left-hand side with an unvaried right-hand side. The printed result

$$
\mathcal J
=\frac1{12}\int_\infty
\epsilon_{\alpha_3\alpha_4\alpha\mu}\nabla^\alpha\varphi^\mu
+\int_\infty
\epsilon_{\alpha_3\alpha_4\alpha\mu}
F_a^{\alpha\mu}A_\beta^a\xi^\beta
\tag{82}
$$

must therefore be quarantined pending correction \(\xi\to\varphi\) and a consistent variation.

# Horizon cross-section in Gaussian-null coordinates

Near a stationary horizon, the metric is

$$
ds^2
=2(dr-r\alpha\,dv-r\beta_A\,d\theta^A)dv
+\gamma_{AB}d\theta^Ad\theta^B.
\tag{83}
$$

At \(r=0\),

$$
\xi=\partial_v,
\qquad
\kappa=\alpha|_H,
$$

and

$$
\nabla_\mu\xi_\nu
=\kappa\hat\epsilon_{\mu\nu}
-\beta_A\xi_{[\mu}(d\theta^A)_{\nu]},
\qquad
\hat\epsilon=dv\wedge dr.
\tag{88--89}
$$

The gravitational surface terms give

$$
\int_{S_H}Q_\xi^g
=\frac16\phi_H^2\kappa A,
\tag{90}
$$

$$
\int_{S_H}\xi\cdot\Theta^g
=\frac16\phi_H^2A\,\delta\kappa,
$$

so the \(\delta\kappa\) terms cancel and

$$
\int_{S_H}(\delta Q_\xi^g-\xi\cdot\Theta^g)
=\frac\kappa6\delta(\phi_H^2A).
\tag{92}
$$

This uses a horizon-preserving Gaussian-null variation, fixed \(\xi\), fixed horizon location, consistent binormal orientation, and a scalar value \(\phi_H\) that is constant across \(S_H\). Stationarity along \(\xi\) does not by itself prove cross-sectional constancy. Without it, the natural Wald functional contains \(\int_{S_H}\phi^2dA\).

The scalar charge and potential contributions are claimed to vanish, Eqs. (93)--(95). The argument also uses the horizon-adapted perturbation gauge and regularity conditions, not stationarity alone.

The Yang--Mills sector yields

$$
\int_{S_H}(\delta Q_\xi^{\mathrm{YM}}-\xi\cdot\Theta^{\mathrm{YM}})
=-\int_{S_H}(A_\beta^a\xi^\beta)
\delta\!\left(
\epsilon_{\alpha_3\alpha_4\alpha\mu}F_a^{\alpha\mu}
\right),
\tag{96}
$$

after assuming \(F_a^{rB}|_{\mathcal H}=0\). In the Abelian case, constancy of \(-A\cdot\xi\) allows a \(\Phi^{\mathrm{EM}}\delta Q^{\mathrm{EM}}\) form. In the non-Abelian case, \(A_\xi^a\) is Lie-algebra valued and need not be covariantly constant or aligned with the flux variation, so the source retains the unsimplified pairing.

# First law and Wald entropy

Equating the two boundaries gives Eq. (99), or after inserting Eq. (78),

$$
\delta\mathcal M-2\delta q+V\delta Q^\infty
=\Omega_H\delta\mathcal J
+\frac\kappa6\delta(\phi_H^2A)
-\int_{S_H}(A_\xi)^a\delta({*F_a}).
$$

The source's Wald entropy is

$$
S=\frac\pi3\phi_H^2A,
\tag{101}
$$

so

$$
\frac\kappa6\delta(\phi_H^2A)
=\frac\kappa{2\pi}\delta S.
\tag{102}
$$

The final law is thus

$$
\delta\mathcal E
=\Omega_H\delta\mathcal J
+\frac\kappa{2\pi}\delta S
-\int_{S_H}(A_\xi)^a\delta({*F_a}).
\tag{102}
$$

Its algebraic structure is Iyer--Wald-like, but its interpretation as a law among integrable physical charges still depends on the missing asymptotic Yang--Mills phase space, fixed conformal frame, gauge-covariant generator, and corrected angular momentum expression.

# Notation and convention dictionary

| Source notation | Meaning and local translation |
|---|---|
| \(\tilde\phi=(g_{\mu\nu},\phi,A_\mu^a)\) | all dynamical fields \(\Phi^i\) |
| \(\theta^\mu\) | vector Hodge-dual to the CPS potential; not the form itself |
| \(\boldsymbol\Theta\) | symplectic-potential 3-form \(\theta[\Phi;\delta\Phi]\) |
| \(\boldsymbol\omega\) | symplectic-current 3-form |
| \(\boldsymbol J_\xi\) | diffeomorphism Noether current |
| \(\boldsymbol C_\xi\) | constraint 3-form proportional to equations of motion |
| \(\boldsymbol Q_\xi\) | Noether-charge 2-form |
| \(\delta Q_\xi-\xi\cdot\Theta\) | surface form \(k_\xi\), valid here for \(\delta\xi=0\) |
| \(\mathcal E,\mathcal J\) | canonical energy and angular momentum in the source normalization |
| \(\mathcal M\) | asymptotic metric quantity with coefficient \(1/12\), not automatically standard ADM mass |
| first \(q\) | power of \(F^2\), fixed to one in four dimensions |
| \(q\) in Eq. (69) | scalar asymptotic charge; unrelated reuse of the symbol |
| \(t,\varphi\) | asymptotic stationary and axial Killing fields |
| \(\xi=t+\Omega_H\varphi\) | fixed background horizon generator |
| \(A\) | horizon area; typographically distinct from \(A_\mu^a\) only by context |
| \(\phi_H\) | scalar value treated as constant on the horizon section |
| \(S_H\) | inner-boundary horizon cross-section |

# CPS ambiguities and missing phase-space data

The note should retain the following distinctions:

1. **Lagrangian representative:** \(L\to L+d\mu\) shifts \(\Theta\) and \(Q_\xi\), especially their scalar split.
2. **Potential ambiguity:** \(\Theta\to\Theta+dY\) can change corner terms.
3. **Charge ambiguity:** \(Q_\xi\to Q_\xi+dZ_\xi\).
4. **Field-dependent generator:** Eq. (60) avoids \(Q_{\delta\xi}\); varying generators require the extended formula.
5. **Yang--Mills gauge covariance:** a pure diffeomorphism representative is gauge dependent unless paired with a specified internal parameter.
6. **Conformal frame:** \(\phi_\infty=1\) fixes a boundary Weyl frame; residual Weyl transformations could mix the split \(\mathcal M-2q\).
7. **Integrability:** \(\delta\mathcal E\) and \(\delta\mathcal J\) are treated as exact variations without a phase-space curl test.

# Concrete use and repair route

The paper is a compact benchmark for a nonminimal scalar plus non-Abelian gauge field. A controlled repair project would:

1. replace \(-\phi\Box\phi/2\) by the first-derivative representative and verify that the full \(k_\xi\) agrees;
2. use a combined generator \((\xi,\Lambda)\) and state the asymptotic/horizon gauge choices;
3. supply Yang--Mills falloffs and compute the phase-space curl of the proposed infinity work term;
4. correct Eqs. (66)--(68) and Eqs. (81)--(82) before assigning physical mass or angular momentum;
5. keep \(\int_{S_H}\phi^2dA\) until cross-sectional constancy is proved;
6. compare the whole law only after rescaling to a chosen Newton constant.

The achieved claim tier is a source-level boundary identity under strong stationarity and gauge assumptions, not a fully established first law among standard-normalized, gauge-invariant, integrable charges.

# Verification log

## Checked

The audit used Mathematica 14.3 with exact arithmetic and xAct packages `xTensor`, `xPert`, `xTras`, `xCoba`, and `xCPS`. Tensor residuals were reduced with `ContractMetric`, `SortCovDs`, `ToCanonical`, and `Simplify`. The automatic xCPS `NoetherPotential` routine exceeded its recursion limit, so the current and charge identities were reconstructed directly from \(J_\xi=\Theta(\pounds_\xi\Phi)-\iota_\xi L\), \(C_\xi\), and the proposed \(Q_\xi\); their canonical residuals were then checked independently.

1. **Eqs. (2)--(6), conformal weights.** Mathematica gives
   \[
   \sqrt{-g}(F^2)^q\mapsto
   \Omega^{D-4q}\sqrt{-g}(F^2)^q,
   \]
   so the Yang--Mills sector is invariant for \(D=4q\). The conformal-scalar sector has zero residual for scalar weight \(-(D-2)/2\); the printed weight \(-1\) is correct at \(D=4\).
2. **Eqs. (7)--(14), four-dimensional reduction.** \(D=4\) gives \(q=1\). Exact \(SO(3)\) component algebra reproduces \(\delta F=D\delta A\) with the source's \(1/(2\sigma)\) convention.
3. **Eqs. (15)--(30), complete first variation.** xAct variation of
   \[
   \sqrt{-g}\left(\frac1{12}\phi^2R
   -\frac12\phi\Box\phi-\frac12F^2\right)
   \]
   gives zero residual against the source's determinant, Ricci, scalar, and Yang--Mills integrations by parts. Every coefficient in Eqs. (28)--(30) passes. Because xAct varied \(g_{ab}\) while the paper multiplies \(\delta g^{ab}\), the direct comparison is \(E^{ab}_{\rm xAct}+E^{ab}_{\rm source}=0\).
4. **Four-dimensional Weyl identity.** The residual
   \[
   2g^{\mu\nu}E^g_{\mu\nu}+\phi E^\phi
   \]
   vanishes, including the traceless Yang--Mills stress tensor. This is a strong internal check of Eq. (28).
5. **Eqs. (27), (31)--(36), symplectic potential.** `SymplecticPotential` for the chosen second-derivative representative agrees exactly with Eq. (27). In particular, the two printed \(1/6\) scalar--metric terms combine to the checked \(1/3\) structure.
6. **Eqs. (37)--(52), Noether decomposition.** Direct xAct construction of \(J_\xi\) gives zero scalar--gravity residual against \(C_\xi+d(Q_\xi^g+Q_\xi^\phi)\). An independent four-dimensional \(SO(3)\) normal-coordinate calculation with arbitrary symbolic \(A,\partial A,F,\partial F,\xi,\partial\xi\) gives four zero component residuals for the Yang--Mills sector. Hence Eqs. (46)--(52), including
   \[
   Q_\xi^{\rm YM}=-(\xi\cdot A)_a{*F^a},
   \]
   are valid representatives for the unintegrated scalar Lagrangian.
7. **Eqs. (53)--(57), corrected variational identity.** With the final sign in Eq. (56) changed from minus to plus,
   \[
   \omega
   =\delta J_\xi-d(\xi\cdot\Theta)
   +\xi\cdot E\,\delta\Phi,
   \]
   the Mathematica residual is zero. Setting \(E=0\), \(\delta E=0\), \(\pounds_\xi\Phi=0\), and \(\delta\xi=0\) then reproduces Eq. (57).
8. **Eqs. (69)--(71), scalar infinity term.** For \(\phi=1+\phi_1/r+\cdots\), Mathematica gives
   \[
   q=-\frac16\int\phi_1d\Omega,
   \qquad
   -\int t\cdot\Theta^\phi=-3\delta q,
   \]
   and the full scalar surface form is \(-2\delta q\), with zero residual.
9. **Eqs. (83)--(89), Gaussian-null algebra.** Exact matrix inversion gives
   \[
   g^{rr}=2r\alpha+r^2\beta_A\beta^A,
   \qquad
   g^{rA}=r\beta^A,
   \]
   and zero inverse-metric residual. At \(r=0\), Eq. (88) passes when antisymmetrization has weight \(1/2\) and stationarity \(\partial_vg=0\) is imposed.
10. **Eqs. (90)--(92), gravitational horizon term.** The binormal contraction is
    \[
    \epsilon_{AB\alpha\mu}\hat\epsilon^{\alpha\mu}=-2\,dA_{AB}.
    \]
    Direct component evaluation gives \(\xi\cdot\Theta^g=\phi^2\delta\kappa\,dA/6\), so the \(\delta\kappa\) terms cancel. The checked general result is
    \[
    \int_{S_H}k_\xi^g
    =\frac\kappa6\delta\!\int_{S_H}\phi^2dA.
    \]
    Eq. (92) follows when \(\phi\) is constant on the cross-section.
11. **Eqs. (93)--(95), scalar horizon term.** Every component vanishes when
    \(g^{r\nu}|_H=\delta_v^\nu\),
    \(\pounds_\xi\phi=\pounds_\xi\delta\phi=0\), and the perturbation preserves Gaussian-null gauge through \(\delta g_{v\mu}|_H=0\).
12. **Eq. (96), Yang--Mills horizon term.** Before the source's extra condition, the uncancelled residual is exactly
    \[
    -2\sqrt\gamma\,F_a^{rB}\delta A_B^a.
    \]
    It vanishes for \(F_a^{rB}|_H=0\), giving Eq. (96). If \(-A\cdot\xi\) is constant in an Abelian stationary regular gauge, the remaining algebra factors as \(\Phi\delta Q\).
13. **Eqs. (100)--(102), entropy and formal law.** Mathematica gives
    \[
    \frac{\partial(R/12)}{\partial R_{\mu\nu\alpha\beta}}
    =\frac1{12}g^{\mu[\alpha}g^{\beta]\nu},
    \]
    with binormal norm and contraction both \(-2\). The general entropy is
    \[
    S=\frac\pi3\int_{S_H}\phi^2dA.
    \]
    Eq. (101) is the constant-scalar specialization, and substitution in the verified surface identity reproduces Eq. (102) with zero residual.

The downstream-safe form is therefore

$$
\boxed{
\delta H_t-\Omega_H\delta H_\varphi
=\frac\kappa6\delta\!\int_{S_H}\phi^2dA
-\int_{S_H}(A^a\cdot\xi)\,\delta({*F_a})
}
$$

for an on-shell stationary-axisymmetric background, a linearized stationary-axisymmetric perturbation, fixed \(\xi\), preserved Gaussian-null gauge, and \(F_a^{rB}|_H=0\). This formula deliberately retains the canonical boundary variations instead of substituting the failed explicit mass and angular-momentum expressions.

## Blocked

- The paper gives no falloff or parity argument proving \(\int_\infty\varphi\cdot\Theta=0\).
- Yang--Mills falloffs sufficient for finiteness, allowed asymptotic gauge transformations, and the required internal alignment at infinity are not specified.
- The one-form \(V\delta Q^\infty\) is not integrable without a boundary ensemble or functional relation among \(V,Q^\infty\), and other charges.
- A gauge-covariant replacement of the pure-diffeomorphism generator by \((\xi,\Lambda)\) is not supplied.
- Cross-sectional constancy of \(\phi_H\) is assumed rather than proved; the verified entropy and horizon term must otherwise remain integrals of \(\phi^2\).
- \(F_a^{rB}|_H=0\) is assumed rather than derived.
- Constancy and regularity of \(A\cdot\xi\) as a horizon potential require field equations and a regular gauge not established here.
- The global gauge group alternates between \(SO(3)\) and \(SU(2)\).
- The asymptotic split \(\mathcal M-2q\) can depend on the fixed conformal frame and on the Lagrangian/boundary representative.

## Failed

1. **Full EPYM conformal-invariance claim after Eq. (2).** The Einstein--Hilbert term scales as \(\Omega^{D-2}\) even for constant \(\Omega\); only the power-Yang--Mills sector is invariant at \(D=4q\). This does not affect the separate four-dimensional CEPYM calculation based on Eq. (7).
2. **General-dimensional scalar transformation Eq. (5).** The printed \(\phi\mapsto\Omega^{-1}\phi\) works only at \(D=4\); the general weight is \(-(D-2)/2\).
3. **Eq. (8) source typo.** The second contraction has malformed indices; the first definition of \(F^2\) is the one that passed. Eq. (47) likewise suppresses a Yang--Mills index, although its intended contraction is fixed by the verified current identity.
4. **Eq. (56) off-shell sign.** The printed residual is
   \[
   2\,\xi\cdot E\,\delta\Phi.
   \]
   Replacing the final minus sign by plus gives zero. Eq. (57) survives on shell.
5. **Eqs. (66)--(68), asymptotic metric charge.** Linearization about \(\eta={\rm diag}(-1,1,1,1)\) with \(\epsilon_{tr\theta\varphi}>0\) gives
   \[
   \delta\mathcal M_{\rm corr}
   =\frac1{12}\int_\infty
   n^i(\partial_j\delta h_{ij}-\partial_i\delta h_{jj})\,dS.
   \]
   This has the opposite flux sign from Eq. (68), which also omits \(dS\). Eq. (66) mixes \(g\) with \(\delta g\) and ends with a second variation acting on an already varied integrand.
6. **Eq. (68) as standard ADM mass.** Even after sign and measure repair, the coefficient differs from the conventional \(G=1\) value by
   \[
   \frac{1/12}{1/(16\pi)}=\frac{4\pi}{3}.
   \]
   It is a source-normalized canonical metric charge, not standard ADM mass.
7. **Eqs. (74) and (76), non-Abelian magnitude reduction.** The definitions do not imply the required internal contractions. For
   \(A_t=(1,0,0)\), electric flux \(E=(0,2,0)\), and \(\delta A_t=(0,1,0)\), the charge pairing is zero while \(VQ^\infty=1\); the symplectic pairing is one while \(Q^\infty\delta V=0\). The equations become valid only after imposing internal alignment and restricting variations.
8. **Eqs. (77)--(78), integrability.** Conditional on Eqs. (74), (76), the algebra \(\delta(VQ)-Q\delta V=V\delta Q\) is correct. But on a two-dimensional phase space \(V=x,Q=y\),
   \[
   d(V\,dQ)=dx\wedge dy\ne0.
   \]
   Thus \(V\delta Q^\infty\) is not generally an exact energy variation.
9. **Eq. (81), variational degree.** For fixed \(\varphi\),
   \[
   -\delta Q_\varphi^{\rm YM}
   =\delta\!\left[{*F_a}(A^a\cdot\varphi)\right],
   \]
   while the printed right-hand side is unvaried.
10. **Eq. (82), wrong generator.** The Yang--Mills axial term requires \(A\cdot\varphi\), not \(A\cdot\xi\). Their residual is generically
    \[
    A\cdot t+(\Omega_H-1)A\cdot\varphi.
    \]
    The safe formula is the definition \(\delta\mathcal J_{\rm YM}=-\int_\infty\delta Q_\varphi^{\rm YM}\).
11. **Gaussian-null typos.** Eq. (85)'s \(r^{r\varphi}\) should be \(g^{r\varphi}\), and Eq. (87)'s vector exponent \(a\) should be \(\mu\). The repaired component identities pass.
12. **Eq. (103) as the standard EYM law.** The source formula is internally consistent, but not in conventional \(G=1\) normalization. The entire action, \(H_t,H_\varphi,S\), and Yang--Mills surface term must be multiplied by \(3/(4\pi)\) before \(S=A/4\) and \(\kappa\delta A/(8\pi)\) are recovered.
