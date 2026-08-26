---
paper id: 2608.24557v1
title: "Revisit Weak Cosmic Censorship in Einstein-Maxwell-Dilaton Black Holes: Third-Order Protection, Swampland Distance Conjecture, and Weak Gravity Conjectures"
authors:
  - Sheng-Hong Lai
  - Wen-Yu Wen
publication date: 2026-08-25T13:42
abstract: |-
  The paper applies an Iyer--Wald/Sorce--Wald perturbative hierarchy to the charged GMGHS black hole, proposes a third-order censorship inequality, discusses why a zero-temperature all-order criterion does not directly apply, and adds a conjectural Swampland Distance Conjecture tower-discharge mechanism.
comments: "Official arXiv comment says 2 pages; the official PDF is 22 pages"
url: https://arxiv.org/abs/2608.24557v1
summary: "The CPS setup is relevant, but the displayed third-order bound and SDC discharge estimate do not support the paper's advertised conclusions as written."
tags: []
---

See the daily placement and audit in [[2026_08_26_overview]].

# Verdict

**Not proven by the current paper; the evidence only shows a correct GMGHS thermodynamic expansion and a schematic higher-variation framework.**

Two displayed steps fail direct consistency checks:

1. The proposed third-order mass--charge inequality has mismatched scaling dimensions under the paper's dimensionless perturbation parameter.
2. The discharge timescale omits the prefactor from the paper's own Schwinger rate, so the claim \(\tau_{\mathrm{discharge}}\ll2M\) for every \(d\gtrsim1\) does not follow.

There is also no complete derivation of the unnamed “positive higher-order terms” used to infer \(\delta^3\eta\geq0\). The paper should therefore be used as a map of candidate calculations, not as an established third-order or dynamical proof of weak cosmic censorship.

# How to read this paper

1. Read Sec. II for the GMGHS conventions and thermodynamic identities; these are the clean part of the paper.
2. Read Sec. III for the formal first-, second-, third-, and \(n\)th variational identities. Keep the one-parameter path derivative distinct from an independent fixed tangent.
3. Read Sec. IV.A--B for the imported first- and second-order Sorce--Wald inequalities.
4. Read Sec. IV.C--D as an unfinished third-order proposal. Equation (53) and the inference to \(\eta^{(3)}\geq0\) are not reliable as written.
5. Read Sec. V only as a suggested change of thermodynamic expansion variable; it is not an all-order proof.
6. Read Sec. VI as a conjectural SDC/Schwinger scenario. The rate, species sum, backreaction, and entropy accounting are not quantitatively closed.
7. Appendix A fixes Gaussian-null-coordinate notation and gauge choices but does not supply the full component proof advertised in the introduction.

# Complete source map

## I. Introduction

- Reviews test-particle overcharging, second-order Sorce--Wald protection, and the special nonzero-temperature extremal limit of the GMGHS solution.
- Announces two extensions: an explicit third-order variational identity and an SDC-tower discharge mechanism.
- Contains an internal sign conflict: it says the dilaton tends to \(+\infty\), whereas Sec. VI correctly displays \(\varphi\to-\infty\) from the exterior.

## II. GMGHS black hole and thermodynamics

- **Static solution:** gives the \(a=1\) Einstein--Maxwell--dilaton action, equations of motion, metric, Maxwell field, dilaton, and constraint \(Q^2=2MD\).
- **Thermodynamics:** gives \(S,T_H,\Phi_H\), the first law, and extremality parameter \(\eta=2M^2-Q^2\).
- **One-parameter family:** expands \(M(\lambda)\), \(Q(\lambda)\), and \(\eta(\lambda)\) through cubic order.

## III. Variational identities to arbitrary order

- Defines the Lagrangian variation, symplectic current, Noether current, constraints, and charge.
- States first-, second-, and third-order identities, with
  \[
  \boldsymbol W_3
  =2(\delta_\phi\boldsymbol\omega)(\phi_1,\mathcal L_\zeta\phi_1)
  +2\boldsymbol\omega(\phi_2,\mathcal L_\zeta\phi_1)
  +\boldsymbol\omega(\phi_1,\mathcal L_\zeta\phi_2).
  \]
- Proposes a formal \(n\)th-order pattern and its integrated ADM-mass form.

## IV. Perturbation inequalities in EMD

- **First order:** recovers
  \[
  \delta M-\Phi_H\delta Q\geq0.
  \]
- **Second order:** imports the positive horizon canonical energy and the reference-family area term, obtaining
  \[
  \delta^2M-\Phi_H\delta^2Q
  \geq\frac{(2M^2-Q^2)(\delta Q)^2}{4M^3}.
  \]
- **Third order:** splits \(\boldsymbol W_3\) into gravitational, electromagnetic, and dilaton sectors and argues that complete second-order saturation makes the horizon pieces vanish.
- **WCCC implication:** claims that the remaining late-time area term produces a positive cubic bound and hence \(\eta(\lambda)\geq0\) through third order.

## V. Toward an all-order extension

- Notes correctly that GMGHS extremality has \(T_{\rm ext}\neq0\) and that the zero-temperature criterion of Lü--Wu--Lü does not apply directly.
- Introduces \(\tau=T_{\rm ext}-T\) and observes that the Taylor coefficients of \(S(\tau,Q)\) are positive.
- Does not prove that replacing the theorem's \(T=0\) hypothesis by this oriented coordinate preserves its induction argument.

## VI. Discharge mechanism from SDC towers

- Uses the divergent absolute dilaton distance near \(r=2D\) to posit a light tower with \(m_n\sim m_0e^{-\alpha d}\) and multiplicity \(N_{\rm tower}\sim e^{\gamma d}\).
- Multiplies a single-species Schwinger rate by this multiplicity and claims a very short discharge time.
- Adds an assumed tower-radiation entropy to the earlier hoop-radius entropy budget and claims the previous WGC bound is strongly relaxed.

## VII. Conclusion and outlook

- Repeats third-order protection, fast SDC discharge, and relaxed WGC as results.
- Acknowledges that a quantitative backreaction treatment is still absent.

## Appendix A. GMGHS background in Gaussian null coordinates

- Moves the horizon to \(r=0\), lists the background metric and fields, and defines the horizon two-metric.
- Expands \(g_{ab},A_a,\psi\) to third order and fixes horizon-identification and Maxwell gauges.
- Does not contain the complete sector-by-sector tensor derivation suggested by the introduction.

## Source archive after the compiled document

The TeX archive contains roughly 140 lines after \(\backslash\mathrm{end}\{document\}\). They are not part of the official PDF. This dead material contains a stale alternative Sorce--Wald section and a contradictory claim that a different quantity

$$
\left(\frac{\partial^2M}{\partial S^2}\right)_Q
=\frac{1}{32\pi M^3}>0
$$

completes an all-order proof. It must not be treated as published content or combined with the active Sec. V.

# EMD definitions and conventions

The action is

$$
S=\frac1{16\pi}\int\mathrm d^4x\sqrt{-g}
\left[R-2(\nabla\varphi)^2-e^{-2\varphi}F^2\right],
$$

with \(G=c=1\). The static solution is

$$
\mathrm ds^2
=-\left(1-\frac{2M}{r}\right)\mathrm dt^2
+\left(1-\frac{2M}{r}\right)^{-1}\mathrm dr^2
+r^2\left(1-\frac{2D}{r}\right)\mathrm d\Omega_2^2,
$$

$$
F=-\frac{Q}{r^2}\,\mathrm dt\wedge\mathrm dr,
\qquad
e^{2\varphi}=1-\frac{2D}{r},
\qquad
Q^2=2MD.
$$

The event horizon is \(r_h=2M\); the curvature singularity is \(r=2D\). The black-hole domain is \(M>D\), equivalently \(Q^2<2M^2\). Extremality makes the singular surface coincide with the horizon.

The thermodynamic data are

$$
S=4\pi M^2-2\pi Q^2,
\qquad
T_H=\frac1{8\pi M},
\qquad
\Phi_H=\frac{Q}{2M},
$$

and

$$
\mathrm dM=T_H\mathrm dS+\Phi_H\mathrm dQ.
$$

The extremality parameter is exactly

$$
\eta=2M^2-Q^2=\frac{S}{2\pi}.
$$

This last identity makes nonnegative entropy equivalent to the algebraic GMGHS censorship bound, but it does not by itself show that a proposed dynamical process preserves either.

# Perturbation expansion and saturation logic

With a dimensionless path parameter \(\lambda\),

$$
M(\lambda)
=M+\lambda\delta M+\frac{\lambda^2}{2}\delta^2M
+\frac{\lambda^3}{6}\delta^3M+O(\lambda^4),
$$

and similarly for \(Q\). Direct expansion gives

$$
\begin{aligned}
\eta(\lambda)
={}&2M^2-Q^2\\
&+\lambda(4M\delta M-2Q\delta Q)\\
&+\lambda^2\left(2M\delta^2M-Q\delta^2Q
+2(\delta M)^2-(\delta Q)^2\right)\\
&+\lambda^3\left(
\frac{2M\delta^3M-Q\delta^3Q}{3}
+2\delta M\,\delta^2M-\delta Q\,\delta^2Q
\right)+O(\lambda^4).
\end{aligned}
$$

The paper says WCCC requires every coefficient to be nonnegative. The precise condition is weaker: for sufficiently small one-sided \(\lambda>0\), the first nonvanishing coefficient controls the sign after the background term and lower coefficients are fixed. Coefficient-by-coefficient nonnegativity is a sufficient bookkeeping condition, not an equivalence.

At an exactly extremal background \(Q=\sqrt2M\), first-order saturation

$$\delta M=\Phi_H\delta Q=\frac{\delta Q}{\sqrt2}$$

makes the linear coefficient vanish. Complete second-order saturation

$$\delta^2M=\Phi_H\delta^2Q$$

also makes the quadratic coefficient vanish. Under both equalities the mixed cubic terms cancel, and

$$
[\lambda^3]\eta
=\frac{2M}{3}\left(\delta^3M-\Phi_H\delta^3Q\right).
$$

Thus a valid nonnegative bound on the last parenthesis would indeed protect an exactly extremal background through cubic order. The paper does not establish such a bound in a usable explicit form.

# First- and second-order CPS chain

The first-order identity is the standard fixed-generator Iyer--Wald relation with constraint flux. Under the NEC it yields

$$\delta M-\Phi_H\delta Q\geq0.$$

At second order the horizon canonical energy is displayed as a sum of squares:

$$
\mathcal E_{\mathcal H}^{(2)}
=\int_{\mathcal H}\widetilde\epsilon
\left[
\frac1{4\pi}\sigma_{AB}^{(1)}\sigma^{AB(1)}
+\frac{M}{2\pi(M-D)}\gamma^{AB}F_{uA}^{(1)}F_{uB}^{(1)}
+\frac1{2\pi}(\partial_u\psi^{(1)})^2
\right].
$$

For \(M>D\), the displayed coefficients are positive. Complete saturation therefore requires each first-order radiative datum to vanish separately. The late-time reference-family term then gives the quoted second-order inequality. This portion is consistent with the algebraic variation of

$$A_B=8\pi(2M^2-Q^2)$$

for a reference family linear in \(\lambda\).

# Why the third-order conclusion fails

The active paper claims

$$
\delta^3M-\Phi_H\delta^3Q
\geq
\frac{(2M^2-Q^2)(\delta Q)^3}{8M^5}
+\text{positive higher-order terms}.
$$

This expression is not a completed inequality:

- The “positive higher-order terms” are not written down or derived.
- The reference family needed to evaluate \(\delta^3A_B^{\rm DL}\) is not specified beyond matching first-order data.
- The text alternates between declaring the third-order matter constraint term zero and invoking a third-order NEC.
- Vanishing of first-order shear, Maxwell radiation, and dilaton radiation removes the displayed horizon terms, but it does not by itself derive the late-time cubic area coefficient.
- Under \(M,Q,\delta Q,\delta^3M,\delta^3Q\mapsto a\) times themselves, the left side scales as \(a\), while the displayed rational term scales as \(a^0\). With dimensionless \(\lambda\), the two sides do not have the same physical dimension.

Because the claimed bound fails this necessary consistency condition, the downstream statement \(\eta^{(3)}\geq0\) is not established by Eq. (53).

# Finite-temperature extremality and the \(\tau\) coordinate

At fixed \(Q\),

$$
\left(\frac{\partial S}{\partial T}\right)_Q
=-64\pi^2M^3<0,
$$

and at \(M_{\rm ext}=|Q|/\sqrt2\),

$$
T_{\rm ext}=\frac1{4\sqrt2\pi|Q|}\neq0.
$$

Therefore a theorem organized around \(T=0\) does not directly apply. Defining \(\tau=T_{\rm ext}-T\) gives

$$
S(\tau,Q)
=\frac1{16\pi(T_{\rm ext}-\tau)^2}
-\frac1{16\pi T_{\rm ext}^2},
$$

and hence

$$
\left.\frac{\partial^nS}{\partial\tau^n}\right|_{\tau=0}
=\frac{(n+1)!}{16\pi T_{\rm ext}^{n+2}}>0.
$$

These Taylor coefficients are correct. Positivity after a coordinate reversal is not by itself a replacement proof for a theorem whose hypotheses include a zero-temperature extremal limit and a complete second law.

# Why the SDC discharge claim fails

The paper starts from

$$
\Gamma_{\rm single}
\simeq\frac{q^2\mathcal E^2}{4\pi^3}
\exp\left(-\frac{\pi m^2}{q\mathcal E}\right)
$$

and models the tower by

$$
\Gamma_{\rm eff}
\sim e^{\gamma d}\frac{q^2\mathcal E^2}{4\pi^3}
\exp\left[-C e^{-2\alpha d}\right],
\qquad
C=\frac{\pi m_0^2}{q\mathcal E}.
$$

For \(V_{\rm nh}\sim(2M)^3\), direct inversion gives

$$
\tau_{\rm discharge}
\sim
\frac{4\pi^3}{q^2\mathcal E^2(2M)^3}
e^{-\gamma d}
\exp\left[C e^{-2\alpha d}\right].
$$

The paper instead prints only the factor \((2M)^{-3}\). Using its own estimate \(\mathcal E\sim1/(2M)\), the retained prefactor becomes

$$
\frac{2\pi^3}{Mq^2},
$$

and the ratio between the correctly inverted expression and the printed one is

$$
\frac{16\pi^3M^2}{q^2}.
$$

This factor is neither unity nor uniformly small. Moreover:

- \(C=O(1)\) is assumed, not derived, and can depend strongly on \(M,m_0,q\).
- The SDC applies at parametrically large field distance; \(d\gtrsim1\) is not sufficient to justify the asymptotic tower formula.
- The singular surface \(r=2D\) lies inside a nonextremal horizon; the paper does not supply a dynamical solution showing that the relevant external process traverses the required moduli-space distance.
- A tower rate is not generally a multiplicity times one common Schwinger rate; the masses, charges, cutoff, species scale, and backreaction must be summed consistently.

Therefore neither the universal inequality \(\tau_{\rm discharge}\ll2M\) nor the claimed dynamical restoration of WCCC is proved.

# Entropy-budget boundary

The paper assumes

$$
\Delta S_{\rm rad}
\simeq8\pi M\Delta E_{\rm rad}
+\gamma d\,N_{\rm tower}.
$$

The subsequent equality for \(\Delta S_{\rm total}\) requires the additional energy-balance relation

$$\Delta E_{\rm rad}=E_{\rm hp}^{-}-E_{\rm hp}^{+},$$

which is not stated at that step. More importantly, the multiplicity term is not derived from a density matrix or occupation distribution. The conclusion that the WGC lower bound is strongly relaxed is therefore conditional on an unspecified tower spectrum, production process, and entropy model.

# Equation ledger

| source equation(s) | status | comment |
|---|---|---|
| (1)--(10) | Checked | GMGHS thermodynamics, first law, and \(\eta=S/(2\pi)\) |
| (11)--(13) | Checked | cubic Taylor expansion of \(\eta(\lambda)\) |
| (17)--(24) | Source-derived / partly checked | formal Iyer--Wald hierarchy; cubic combinatorial pattern is plausible, general induction is not a positivity theorem |
| (33)--(40), (56) | Source-derived / algebraically consistent | standard first/second-order inequalities and reference-area coefficient |
| (41)--(52) | Blocked | sector currents are schematic; no independent xAct reconstruction or executable notebook |
| (53) | Failed | incomplete and dimensionally inconsistent cubic bound |
| (54)--(58) | Checked with limitation | \(W<0\), \(T_{\rm ext}\neq0\), and positive \(\tau\)-series coefficients; no all-order theorem follows |
| (59)--(66) | Failed / Blocked | rate inversion drops a prefactor; universal fast-discharge claim lacks parameter control |
| (67)--(71) | Blocked | entropy model and energy-balance assumption are not independently supplied |
| Appendix A | Source-derived | background GNC data and gauges only |

# Verification log

## Checked

- **Mathematica:** verified both components of \(\mathrm dM=T_H\mathrm dS+\Phi_H\mathrm dQ\).
- **Mathematica:** expanded \(2M(\lambda)^2-Q(\lambda)^2\) through \(O(\lambda^3)\) and reproduced the printed coefficients with zero residual.
- **Mathematica:** obtained \((\partial S/\partial T)_Q=-64\pi^2M^3\) and \(T_{\rm ext}=1/(4\sqrt2\pi|Q|)\).
- **Mathematica:** reproduced the positive \(\tau\)-series formula for orders \(n=1,\ldots,6\), with the general expression following by differentiating \((T_{\rm ext}-\tau)^{-2}\).
- **Mathematica:** independently inverted the displayed Schwinger rate and near-horizon volume, finding the missing factor and exact ratio quoted above.
- **Scaling check:** under a common length rescaling, the two sides of Eq. (53) scale differently.
- **Rendered PDF:** visually confirmed Eqs. (21)--(24), the second-order sum of squares, Eq. (53), and the 22-page extent of the compiled paper.

## Source-derived

- The EMD symplectic potential, constraint forms, and imported first/second-order Sorce--Wald identities.
- The Gaussian-null-coordinate background and gauge choices.
- The proposed sector decomposition of \(\boldsymbol W_3\).

## Blocked

- No executable xAct/Mathematica notebook or full component expressions are present for the third-order gravitational, electromagnetic, and dilaton currents.
- Positivity of a genuine third-order matter contribution is not established from the ordinary NEC.
- The tower spectrum, charges, species cutoff, collapse solution, and backreaction data needed for the SDC rate are absent.

## Failed

- Equation (53) is not dimensionally homogeneous under the paper's perturbation conventions.
- Equations (61)--(63) drop the Schwinger prefactor; the claimed universal timescale comparison does not follow.
- The introduction says \(\varphi\to+\infty\), contradicting the solution and Sec. VI result \(\varphi\to-\infty\).
- The source archive contains contradictory stale material after \(\backslash\mathrm{end}\{document\}\); it is not in the official PDF.

## Not independently verified

- The cited prior second-order GMGHS result.
- Any all-order WCCC statement.
- The hoop-radius entropy/WGC calculation imported from the earlier paper.

# Translation into the vault's CPS language

- Keep the variational identity separate from the positivity inequality. Repeated differentiation of the Noether identity does not by itself give sign control.
- Complete lower-order saturation is a strong condition on horizon radiative data; it must be stated before setting higher symplectic terms to zero.
- A finite-order Taylor check does not imply all-order protection.
- A source-inspired tower estimate is not a reduced open-system derivation and should not be used as evidence for a controlled discharge channel without spectrum and backreaction data.
- The correct reusable object here is the GMGHS thermodynamic/CPS setup. The advertised cubic and SDC conclusions should not enter downstream notes as established results.

# Bottom line

The paper was selected because it directly targets Iyer--Wald variational identities and charged-black-hole censorship. Its relevance remains high, but its reliability is mixed: the baseline thermodynamics and formal hierarchy are useful, while the central new inequality and discharge conclusion fail necessary consistency checks. Any future use should start from the displayed action and lower-order identities and redo the third-order reference-family and matter-flux calculation from scratch.
