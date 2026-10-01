---
paper id: 2609.25206v1
title: Quantum Clausius relation beyond de Sitter equilibrium
authors:
  - Jinn-Ouk Gong
  - TaeHun Kim
  - Junghwan Lee
  - Chang Sub Shin
publication date: 2026-09-21T18:00:00
abstract: |-
  The renormalized stress tensor and replica entropy of free conformal fields give matching horizon heat and entropy rates on a prescribed flat quasi-de Sitter background. Matching the finite local R-squared term makes the extended balance independent of the matter/gravity counterterm split. Its higher-order residual has no fixed sign.
comments: "17 pages"
url: https://arxiv.org/abs/2609.25206v1
summary: "A checked conformal-field benchmark for matching horizon energy flux, edge-inclusive entropy and the Wald contribution of a fixed local effective action."
tags: []
---

# Result and precise use

For free conformal spectator fields in the conformal vacuum, on an expanding spatially flat FLRW background, the retained field entropy and consistently defined inward heat obey

$$\dot S_{\rm vN}^{\rm rn}=\frac{\dot Q_X}{T}=\frac{\alpha}{90}H\epsilon.$$

The result is exact in Hubble-flow parameters after assigning all matched local $R^2$ terms to the curvature sector. Including that sector instead gives

$$\dot S_{\rm vN}^{\rm rn}+\dot S_{W,R^2}-\frac{\dot Q_X+\dot Q_{R^2}}T
=\frac{\pi}{GH^3}\ddot F,\quad F=1+32\pi G C_{R^2}R.$$

The residual is not generally positive. It is not a generalized second law, a particle-production rate, or a quantum-gravity sewing theorem. The useful object for the vault is the matched action/flux/entropy triple: changing the matter counterterm convention requires a compensating curvature contribution on both sides.

# Complete source map and reading guide

The official [PDF](https://arxiv.org/pdf/2609.25206v1) and [HTML](https://arxiv.org/html/2609.25206v1) supply the full text. Despite 17 pages, seven technical appendices make this a dense, monograph-mode reconstruction. Physical PDF page numbers equal printed page numbers. Page 4 was rendered and visually confirms Eqs. (15)–(25).

| Source | Role and dependencies |
|---|---|
| I, pp.1–2 | Prescribed background, direct QFT comparison, separation from Friedmann-equation thermodynamics. |
| II, p.2 | Horizon heat prescription, trace anomaly, exact Hubble-flow polynomial. |
| III, p.3 | Finite counterterm reshuffling and matched $C_{R^2}$. |
| IV, pp.3–4 | Replica anomaly and Weyl transformation of the retained entropy. |
| V, p.4 | Wald contribution, exact residual and leading-order limit. |
| VI, p.5 | Scope, area hierarchy, frame interpretation and open generalizations. |
| A, pp.5–6 | Two paired displacement/temperature prescriptions give the same heat-to-temperature ratio. |
| B, pp.6–7 | Derivatives of $a,H$, conserved anomaly stress, conformal-vacuum integration constant. |
| C, pp.7–8 | Spin-zero local 1PI matching and finite-scheme invariance. |
| D, p.9 | Why only $R^2$ contributes a time-dependent local curvature entropy in this basis and geometry. |
| E, pp.9–11 | Heat-kernel surface coefficients, curvature/extrinsic-curvature cancellations, edge convention and Wess–Zumino consistency. |
| F, pp.11–13 | Canonical scalar transformation, regulated density matrices and physical-cutoff matching. |
| G, pp.13–16 | Exact $R^2$ identity; conformal frame changes horizon, clock and matter normalization. |
| References, pp.16–17 | Inputs for anomaly coefficients, replica formulas and horizon prescriptions. |

Essential: II–V, A/B and F. For action-first use, C/D and G are essential; E is the technical reference for entropy and edge conventions. I/VI provide context. No appendix can be dropped if the full exact-versus-leading-order statement is to be understood.

# Definitions and normalization dictionary

Set $c=\hbar=k_B=1$, signature $(-,+,+,+)$, with

$$ds^2=-dt^2+a(t)^2\delta_{ij}dx^idx^j,\quad H=\dot a/a,\quad
\epsilon=-\dot H/H^2,\quad \epsilon_{n+1}=\dot\epsilon_n/(H\epsilon_n).$$

The comoving apparent-horizon radius is $r_A=(aH)^{-1}$ and the physical radius is $H^{-1}$, so $A=4\pi H^{-2}$. Roman $a,b$ denote four-dimensional spacetime indices in the source; Greek indices in II/A denote the two-dimensional orbit space. A dot is Jordan cosmic-time differentiation; a prime in F is conformal-time differentiation. The symbol $\alpha$ is the type-A anomaly coefficient, not a lapse, while $\beta^{(s)}$ labels the finite-scheme-dependent $\Box R$ term.

The fields are a real conformal scalar, a massless Dirac field and a Maxwell field. In the displayed zeta-function prescription,

| Field | $\alpha$ | $\beta^{(s)}$ | $\gamma$ |
|---|---:|---:|---:|
| Real scalar, $\xi=1/6$ | $-1$ | $1$ | $3/2$ |
| Dirac | $-11$ | $6$ | $9$ |
| Vector | $-62$ | $-18$ | $18$ |

Dimensional regularization gives vector $\beta^{(s)}=12$ instead. The numbers are source inputs from one-loop calculations, not newly computed determinants here. For multiple fields add their coefficients. The state is the conformal vacuum: the homogeneous radiation integration constant is set to zero. “Exact” below refers to this free-field, flat-FLRW, curvature-squared setup, not arbitrary interacting or massive fields.

# Heat from a prescribed evolving sphere

For $T^a{}_b=\operatorname{diag}(-\rho,p,p,p)$ the energy-supply form is

$$\Psi_\alpha=\tfrac12(\rho+p)(-Har,a),\qquad \delta Q=A\Psi_\alpha\zeta^\alpha.$$

Positive $Q$ is inward. Appendix A pairs

$$\zeta_H=(1,-a^{-1})dt,\quad T_H=H/(2\pi),$$

$$\zeta_\kappa=(1,-(1-\epsilon)/a)dt,\quad T_\kappa=H(1-\epsilon/2)/(2\pi).$$

The respective heats are $-4\pi(\rho+p)H^{-2}dt$ and that quantity multiplied by $1-\epsilon/2$. Thus both yield

$$\frac{\dot Q}T=-\frac{8\pi^2}{H^3}(\rho+p).\tag{source 2}$$

This equality requires pairing the correct displacement and temperature. It does not establish operational equivalence of two thermometers. The absolute-value surface-gravity formula used for $T_\kappa$ requires the expanding branch with $1-\epsilon/2>0$; the quasi-dS regime ensures this. The anomaly stress is vacuum polarization, not a gas of produced particles.

# Trace, conservation and the full Hubble-flow polynomial

The anomaly is

$$\langle T^a{}_a\rangle_{\rm rn}^{(s)}=\frac1{2880\pi^2}\left(\frac\alpha2 E_4+\beta^{(s)}\Box R+\gamma C_{abcd}C^{abcd}\right).$$

Flat FLRW gives $C=0$, $R=6(\dot H+2H^2)$, $E_4=24H^2(\dot H+H^2)$ and $\Box R=-\ddot R-3H\dot R$. The trace and $\dot\rho+3H(\rho+p)=0$ determine the stress up to the radiation term fixed by the state.

To record Appendix B compactly, define $A_n=a^{(n)}/a$. Then $A_1=H$, $A_2=H^2+\dot H$, $A_3=H^3+3H\dot H+\ddot H$ and $A_4=H^4+6H^2\dot H+3\dot H^2+4H\ddot H+\dddot H$. The source stresses are

$$
\rho^{(s)}=-\frac{(\alpha+3\beta^{(s)})A_1^4}{960\pi^2}
+\frac{\beta^{(s)}A_2A_1^2}{480\pi^2}-\frac{\beta^{(s)}A_2^2}{960\pi^2}+\frac{\beta^{(s)}A_3A_1}{480\pi^2},
$$

$$
p^{(s)}=-\frac{(\alpha+3\beta^{(s)})A_1^4}{2880\pi^2}
+\frac{(\alpha+3\beta^{(s)})A_2A_1^2}{720\pi^2}-\frac{\beta^{(s)}A_2^2}{960\pi^2}
-\frac{\beta^{(s)}A_3A_1}{720\pi^2}-\frac{\beta^{(s)}A_4}{1440\pi^2}.
$$

Using $\dot H=-H^2\epsilon$ and the flow hierarchy reproduces

$$\frac{\dot Q_X^{(s)}}T=\frac\alpha{90}H\epsilon+\beta^{(s)}Hf(\epsilon_i),$$

$$f=\frac{\epsilon^2}{15}-\frac{\epsilon\epsilon_2}{60}-\frac{\epsilon^3}{30}
+\frac{7\epsilon^2\epsilon_2}{180}-\frac{\epsilon\epsilon_2^2}{180}-\frac{\epsilon\epsilon_2\epsilon_3}{180}.$$

**Checked:** both the trace and continuity equations, and the substitution into the heat formula, have exact zero residuals. Counting every $\epsilon_i$ as first order, only the $\alpha$ term survives at first order. The polynomial itself is untruncated; the hierarchy is used only to compare orders. Exact de Sitter gives zero heat and entropy rates.

# The local action coefficient and its Wald entropy

At curvature-squared order,

$$\Gamma_{\rm eff}=\int\sqrt{-g}\left(\frac R{16\pi G}+C_{R^2}^{(s)}R^2\right)+\Gamma_X^{(s)}+\cdots.$$

A finite addition $c\int\sqrt{-g}R^2$ to the matter functional sends

$$\beta^{(s)}\mapsto\beta^{(s)}-34560\pi^2c,\qquad
C_{R^2}^{(s)}\mapsto C_{R^2}^{(s)}-c.$$

Therefore

$$C_{R^2}=C_{R^2}^{(s)}-\frac{\beta^{(s)}}{34560\pi^2}$$

is unchanged. Appendix C obtains the matter local coefficient from $\delta_\sigma\int\sqrt{-g}R^2=-12\int\sqrt{-g}\sigma\Box R$, after discarding the displayed integration-by-parts boundary terms. It also identifies the total local spin-zero two-point kernel $\Pi_{0,\rm tot}^{\rm local}=6C_{R^2}$ in a fixed basis and at a fixed matching scale, with nonanalytic parts treated separately. This is finite counterterm invariance, not invariance under arbitrary metric redefinitions or a prediction of the numerical value of $C_{R^2}$.

The metric variation used by the source is

$$H_{ab}^{(1)}=2RR_{ab}-\tfrac12g_{ab}R^2+2(g_{ab}\Box-\nabla_a\nabla_b)R.$$

Assigning its effective stress to $-2C_{R^2}H_{ab}^{(1)}$ gives the matched split

$$\frac{\dot Q_X}T=\frac\alpha{90}H\epsilon,\qquad
\frac{\dot Q_{R^2}}T=-34560\pi^2C_{R^2}Hf.$$

Appendix D restricts the basis to $(C^2,E_4,R^2,\Box R)$: Weyl vanishes in this geometry, Euler entropy is constant on the closed sphere, and the total-derivative term has no entropy contribution in the adopted prescription. This does not license dropping arbitrary physical boundary/corner terms in another CPS problem.

The Wald functional for the $R^2$ representative is

$$S_{W,R^2}=8\pi C_{R^2}\int_\Sigma dA\,R=192\pi^2C_{R^2}(2-\epsilon),\quad
\dot S_{W,R^2}=-192\pi^2C_{R^2}H\epsilon\epsilon_2.$$

No additional extrinsic-curvature entropy correction is required for this $f(R)$ representative. The full generalized entropy also contains $A/(4G)$, but the paper excludes that area term from the spectator balance: it is paired with the matter supporting the prescribed background. Restoring an inflaton and using its field equations is a separate step in Appendix G.

# Replica entropy, extrinsic curvature and edge modes

For replica effective action $W(n)$, $S=(n\partial_n-1)W(n)|_{n=1}$. Appendix E supplies the conical heat-kernel coefficients of the conformal scalar, squared Dirac and gauge-fixed vector operators, including vector ghosts. At a spherical apparent horizon the relevant contractions are

$$P^{ac}P^{bd}R_{abcd}=2(\dot H+H^2),\quad
P^{ab}R_{ab}=4\dot H+6H^2,\quad R=6(\dot H+2H^2).$$

Substitution in Eqs. (E4) yields

$$W_\Sigma^{\log,\varphi}=-1/90,\quad W_\Sigma^{\log,\psi}=-11/90,\quad W_\Sigma^{\log,V}=-62/90.$$

All $\dot H$ terms cancel. xAct reproduced the curvature contractions and the vanishing Weyl combination; Mathematica reproduced these three algebraic coefficients from the source heat-kernel inputs. This is not a new derivation of those heat-kernel coefficients.

For a sphere of physical radius $R_\Sigma$, the Lorentzian normal contractions of extrinsic curvature obey

$$k_i k^i=4(R_\Sigma^{-2}-H^2),\qquad k^i_{ab}k_i^{ab}=2(R_\Sigma^{-2}-H^2).$$

They vanish at $R_\Sigma=H^{-1}$. Their separate normals need not be zero; the cancellation uses the normal metric $(-,+)$. This is why the squashed-cone corrections vanish here. The type-B combination

$$\mathcal K_\Sigma=PPR-PR+R/3-(k^i_{ab}k_i^{ab}-k_i k^i/2)$$

also vanishes. The Wess–Zumino argument fixes spacetime-constant $\alpha$ within the stated anomaly basis, without additional derivative-of-coupling terms; it does not replace the explicit horizon contractions.

**Source-derived entropy convention:** the vector value is the geometric replica entropy including electromagnetic edge modes. It differs by $-1/3$ from the quoted mutual-information coefficient. The canonical scalar discussion below cannot be used to prove a gauge-theory Hilbert-space factorization with these edge choices automatically.

Under the Weyl transformation $g\mapsto e^{2\sigma}g$, after splitting off the local $R^2$ contribution,

$$\Delta S_{\rm vN}^{\rm rn}=\frac1{720\pi}\int_\Sigma\sqrt\gamma\left\{\alpha[\sigma R_\Sigma+(D_\Sigma\sigma)^2]+2\gamma\sigma\mathcal K_\Sigma\right\}.$$

For $\sigma=\log a(t)$, $D_\Sigma\sigma=0$, $\int R_\Sigma dA=8\pi$, and $\mathcal K_\Sigma=0$. The Weyl term is $(\alpha/90)\log a$. The Minkowski sphere has $(\alpha/90)\log(\mu r)+C_0$, evaluated at the moving comoving radius $(aH)^{-1}$. These two pieces combine to

$$S_{\rm vN}^{\rm rn}=\frac\alpha{90}\log(\mu/H)+C_0.$$

At fixed $\mu$ and fixed scheme, differentiation gives the advertised heat match. Omitting the changing comoving radius would produce an incorrect $\dot a/a$ dependence.

# Canonical density matrix: what is unitary and what is renormalized

Appendix F treats the scalar explicitly. In conformal time, $\widetilde\varphi=a\varphi$ gives

$$\mathcal S_\varphi=\frac12\int d\eta\,d^3x[(\widetilde\varphi')^2-(\nabla\widetilde\varphi)^2]
-\frac12\left[\mathcal H\int d^3x\,\widetilde\varphi^2\right]_{\eta_i}^{\eta_f},\quad\mathcal H=a'/a.$$

The endpoint term supplies the wavefunctional phase. Canonical variables satisfy

$$\begin{pmatrix}\varphi\\\pi_\varphi\end{pmatrix}
=\begin{pmatrix}a^{-1}&0\\-a'&a\end{pmatrix}
\begin{pmatrix}\widetilde\varphi\\\pi_{\widetilde\varphi}\end{pmatrix}.$$

Its symplectic residual is zero. On a regulated spatial lattice the associated unitary factors across a fixed spatial bipartition: $W=W_B\otimes W_{\bar B}$. The reduced scalar density matrices are unitarily equivalent for the same regulated region. This statement is about a regulated scalar Hilbert space, not an unregulated local algebra of gravity or Maxwell theory.

A fixed physical cutoff requires $\delta_{\rm com}=\delta_{\rm phys}/a$. Thus $r_B/\delta_{\rm com}=1/(H\delta_{\rm phys})$. The unitary argument determines this radius dependence but does not itself fix the distribution of divergent local terms between field entropy and gravitational couplings. That assignment must agree with III/C/D. Massive or nonconformal fields retain $[a^2m^2+(6\xi-1)a''/a]\widetilde\varphi^2$ in the bulk, so this Minkowski-vacuum reduction ceases to apply.

# Exact residual and the two different apparent horizons

Define $\mathcal I=\dot S_{W,R^2}-\dot Q_{R^2}/T$. The checked result is

$$\mathcal I=34560\pi^2C_{R^2}H\left(\frac{\epsilon^2}{15}-\frac{\epsilon\epsilon_2}{45}-\frac{\epsilon^3}{30}
+\frac{7\epsilon^2\epsilon_2}{180}-\frac{\epsilon\epsilon_2^2}{180}-\frac{\epsilon\epsilon_2\epsilon_3}{180}\right)
=\frac\pi{GH^3}\ddot F.$$

At lowest nonvanishing order it is $768\pi^2C_{R^2}H\epsilon(3\epsilon-\epsilon_2)$. For $C_{R^2},H>0$, $\epsilon=0.01$, $\epsilon_3=0$, the exact dimensionless values $\mathcal I/(\pi^2C_{R^2}H)$ are $0.1536$ at $\epsilon_2=0.01$ and $-0.152832$ at $\epsilon_2=0.05$. These local smooth-history jets demonstrate that no positive-entropy-production conclusion follows.

Appendix G obtains the identity directly from

$$8\pi G(\rho_{R^2}+p_{R^2})=\ddot F-H\dot F+2(F-1)\dot H,\quad
S_{W,R^2}=\frac{\pi(F-1)}{GH^2}.$$

The geometric and effective-stress steps were checked with xAct components and Mathematica. The residual is exactly linear in $C_{R^2}$ at fixed geometry. Re-solving the geometry while varying the coupling is a different parameter variation.

For $F>0$, set $g_E=Fg_J$, $dt_E=\sqrt Fdt$, $a_E=\sqrt F a$, $\chi=\sqrt{3/2}\,m_{\rm Pl}\log F$ and $u=\dot F/(2FH)$. Then

$$H_E=H(1+u)/\sqrt F,\qquad R_{\rm AH,E}=\frac{\sqrt F}{H(1+u)},\quad R_{\rm map,E}=\sqrt F/H.$$

The Jordan Wald entropy equals the Einstein area entropy of the **mapped sphere**; the intrinsic Einstein apparent horizon is a different sphere unless $u=0$. Source Eqs. (G16)–(G23) use field equations for the background inflaton and scalaron, unlike the direct spectator comparison:

$$\mathcal I=(\dot S_W^J-\dot S_{\rm area}^{E,\rm AH})
+(\dot Q_\phi^J/T_J-\dot Q_\phi^E/T_E)-\dot Q_\chi^E/T_E.$$

All rates here are per Jordan time. The inflaton rate transforms by $(1+u)^{-3}$, while

$$-\dot Q_\chi^E/T_E=\frac{3\pi\dot F^2}{2GFH^3}(1+u)^{-3}\geq0$$

on the jointly expanding branch. That one positive term does not fix the sign of the sum. Using $8\pi G\dot\phi^2=-2F\dot H-\ddot F+H\dot F$, Mathematica gives zero residual for both the Einstein balance and the frame decomposition, including cancellation of nonlinear coupling terms.

# Equation ledger and use in the current projects

The derivation has two independent input branches. Anomaly plus stress conservation and a chosen displacement gives Eqs. (2)–(5). Replica surface terms, or the regulated scalar canonical argument, give Eqs. (15)–(17). Matching a fixed local action combines them through Eqs. (7), (11), (19) and (21)–(23). Appendix G translates the result only after transforming the surface, clock and matter source together.

For CPS and regional work, retain the endpoint generating term in F and the curvature coefficient on both entropy and flux sides. For Maxwell edge models, retain the declared entropy algebra/edge convention. For relational clock comparisons, the Einstein-frame map shows why equality of entropy on mapped surfaces is insufficient to compare rates at separately defined horizons. None of these is yet a regional Hamiltonian or interface pairing construction.

# Verification boundaries and validation

- **Source-derived:** determinant/heat-kernel and replica inputs; Weyl entropy formula; geometric-replica edge convention; Wess–Zumino general argument; regulated scalar factorization. The source's complete technical chain is reconstructed above.
- **Checked:** xAct `components` computed FLRW Ricci scalar and normal Riemann/Ricci contractions, with zero Weyl-combination residual; the projected effective $R^2$ stress agrees with G4. Mathematica independently returned zero for anomaly trace, stress conservation, heat polynomial, finite-scheme shift, entropy derivative, exact $R^2$ residual and frame decomposition. Surface coefficients were `{-1/90,-11/90,-31/45}`; the canonical matrix symplectic residual was the zero matrix. The two finite sign witnesses establish sign-indefiniteness.
- **Failed:** none among the explicitly checked source targets. This does not certify every general source input.
- **Blocked:** TeX retrieval at `https://arxiv.org/src/2609.25206v1` returned HTTP 406 on both attempts. Full PDF and official HTML sufficed, so note completion was not blocked.
- **Not independently verified:** one-loop determinant derivations, all regulator/continuum subtleties, vector edge-mode construction, general replica entropy theorems or any operator-algebraic type claim. No numerical value of the matched $C_{R^2}$ is fixed without a physical matching condition.

**Verified:** the explicit geometric and algebraic reductions listed above. **Assumptions:** free conformal fields, conformal vacuum, flat FLRW, fixed scale/scheme matching, geometric-replica vector entropy, fixed physical cutoff, $F>0$ and expanding frames where invoked. **Not verified:** interacting/massive extensions, graviton loops, arbitrary entangling surfaces or a generalized second law.

Retrieval audit: first PDF attempt timed out; second succeeded. Poppler gave a font-type warning; the rendered page and official HTML confirmed the central formulas. All retrieval/render artifacts are outside the vault in `/tmp/arxiv-daily-20260923.w8DQVO/`. No new PDF attachment, older note edit or commit.
