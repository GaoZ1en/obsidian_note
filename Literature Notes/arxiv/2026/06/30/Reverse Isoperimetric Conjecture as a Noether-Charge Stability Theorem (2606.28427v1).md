---
paper id: 2606.28427v1
title: Reverse Isoperimetric Conjecture as a Noether-Charge Stability Theorem
authors:
  - Naman Kumar
publication date: 2026-06-25T20:09:09Z
abstract: |-
  The paper recasts the reverse isoperimetric conjecture as a fixed-thermodynamic-volume entropy stability theorem. In a covariant phase space formulation, the relevant second variation is a boundary-completed Noether-charge Hessian rather than the bulk Hollands-Wald canonical energy alone. Under stated positivity and rigidity assumptions, the fixed-volume entropy bound gives the reverse isoperimetric inequality.
comments: "13 pages, no figures"
url: https://arxiv.org/abs/2606.28427v1
summary: "A conditional Noether-charge/CPS stability interpretation of black-hole thermodynamic volume and the reverse isoperimetric inequality."
tags: []
---

Back to [[2026_06_30_overview]].

# Source structure map

- Purpose, scope, and assumptions: states the fixed-volume entropy version of the reverse isoperimetric inequality and emphasizes admissibility assumptions.
- Covariant variables: introduces the Iyer-Wald/CPS notation, extended first law, thermodynamic volume, and Wald entropy.
- Admissible phase space and theorem: defines $\mathscr P$, fixed-volume components $\mathscr C_V$, and equality sectors $\mathscr Z_V$.
- Fixed-volume entropy Hessian: derives the boundary-completed Hessian identity.
- Boundary-completed positivity: splits perturbations into dynamical, stationary, and gauge blocks.
- Stationary boundary block: relates the stationary sector to fixed-volume thermodynamic Hessians.
- Local Schwarzschild-AdS lemma: checks local behavior in compact spherical Einstein-AdS.
- Global proof: integrates the Hessian inequality along fixed-volume paths.
- Einstein and higher-derivative forms: translates the entropy statement to area in Einstein gravity and to Wald entropy in higher-derivative theories.
- Supplemental material in the same source file: gives additional details on CPS Hessians, Kerr-AdS fixed-volume expansion, bulk positivity, Kerr/RN equality sectors, zero-sector rigidity, and entropy-bound integration.

# Iyer-Wald and extended-thermodynamic notation

The paper uses the standard CPS variation

$$
\delta\mathbf L=\mathbf E\,\delta\phi+d\boldsymbol\theta(\phi,\delta\phi),
$$

with symplectic current

$$
\boldsymbol\omega(\phi;\delta_1\phi,\delta_2\phi)
=\delta_1\boldsymbol\theta(\phi,\delta_2\phi)
-\delta_2\boldsymbol\theta(\phi,\delta_1\phi).
$$

For a vector field $\xi$, the Noether current is

$$
\mathbf J_\xi
=\boldsymbol\theta(\phi,\mathcal L_\xi\phi)-\xi\cdot\mathbf L
=d\mathbf Q_\xi+\xi^a\mathbf C_a.
$$

The horizon generator is

$$
\chi=t+\Omega_i\varphi_i,
$$

and the Wald entropy is

$$
S_W=\frac{2\pi}{\kappa}\int_B\mathbf Q_\chi.
$$

The pressure is

$$
P=-\frac{\Lambda}{8\pi G},
$$

and the extended first law is

$$
\delta M
=T\delta S_W+\Omega_i\delta J_i+\Phi_\alpha\delta Q_\alpha
+V_{\mathrm{th}}\delta P+\Psi_I\delta\lambda_I.
$$

Thus

$$
V_{\mathrm{th}}
=\left(\frac{\partial M}{\partial P}\right)_{S,J,Q,\lambda}.
$$

The important convention is that $V_{\mathrm{th}}$ is the thermodynamic conjugate of $P$, not an a priori geometric volume.

# Reverse isoperimetry as fixed-volume entropy

In Einstein gravity, the usual reverse isoperimetric ratio is

$$
\mathcal R
=\left(\frac{(D-1)V_{\mathrm{th}}}{\omega_{D-2}}\right)^{1/(D-1)}
\left(\frac{\omega_{D-2}}{A}\right)^{1/(D-2)}\ge1.
$$

At fixed $V_{\mathrm{th}}$, this is equivalent to an upper bound on horizon area. The paper writes the more general Wald-entropy version as

$$
S_W(X)\le S_W(X_0(V_{\mathrm{th}})),
$$

where $X_0(V)$ is the reference static black hole at the same thermodynamic volume.

The fixed-volume component is

$$
\mathscr C_V=\{X\in\mathscr P:V_{\mathrm{th}}(X)=V\}.
$$

The equality sector $\mathscr Z_V$ is not simply "all stationary perturbations"; it is the allowed zero sector under the paper's admissibility assumptions. For example, if charged static variations are allowed, the RN-AdS branch can be an equality sector because fixed $V_{\mathrm{th}}$ fixes $r_+$ and hence fixes the area.

# The boundary-completed entropy Hessian

Define the constrained entropy functional

$$
\mathcal S_V=S_W-\mu V_{\mathrm{th}}.
$$

The paper's central identity is

$$
\operatorname{Hess}_X(\mathcal S_V)(v,v)
=-\frac{2\pi}{\kappa_X}\,
\mathbb E_{\chi,V}(v,v),
$$

where

$$
\mathbb E_{\chi,V}(v,v)
=\mathcal E^{\mathrm{bulk}}_{\chi,X}(v,v)
+\mathcal B_{\infty,V}(v,v).
$$

The bulk Hollands-Wald canonical energy is

$$
\mathcal E^{\mathrm{bulk}}_{\chi,X}(v,v)
=\int_\Sigma\boldsymbol\omega(\phi;v,\mathcal L_\chi v).
$$

For stationary perturbations, $\mathcal L_\chi v_{\mathrm{stat}}=0$, so

$$
\mathcal E^{\mathrm{bulk}}_{\chi,X}(v_{\mathrm{stat}},v_{\mathrm{stat}})=0.
$$

Therefore the stationary entropy curvature cannot come from the bulk canonical energy. It is supplied by $\mathcal B_{\infty,V}$, the asymptotic Noether-charge Hessian constrained to fixed thermodynamic volume.

# Dynamical, stationary, and gauge blocks

The paper assumes a decomposition

$$
T_X\mathscr C_V
=T_X^{\mathrm{dyn}}\oplus T_X^{\mathrm{stat}}\oplus T_X\mathscr G.
$$

The positivity logic is:

- On $T_X^{\mathrm{dyn}}$, stability is the nonnegativity of the bulk canonical energy.
- On $T_X^{\mathrm{stat}}$, stability is the nonnegativity of the boundary-completed thermodynamic Hessian.
- On gauge directions, the completed form vanishes after quotienting.

The source invokes Regge-Wheeler-Zerilli/Kodama-Ishibashi-type positivity in the compact spherical Einstein-AdS sector with reflecting AdS boundary conditions and regular horizons. This input is an assumption or known-theorem import, not derived from scratch in the paper.

# Kerr-AdS and RN-AdS equality behavior

The supplemental material checks the stationary sector in explicit Einstein examples.

For four-dimensional Kerr-AdS at fixed

$$
V=\frac{4\pi R^3}{3},
$$

the entropy expansion near $a=0$ is

$$
S(a)
=\frac{\pi R^2}{G}
-\frac{\pi}{12G}
\frac{(R^2+\ell^2)^2}{R^2\ell^4}a^4
+O(a^6).
$$

The absence of an $a^2$ term means the Kerr direction is marginal to second order at the endpoint, but the first nonzero correction is negative for $a\ne0$. Thus nonzero rotation lowers the entropy at fixed volume.

For static RN-AdS,

$$
S=\frac{\pi r_+^2}{G},
\qquad
V_{\mathrm{th}}=\frac{4\pi r_+^3}{3}.
$$

At fixed $V_{\mathrm{th}}$, $r_+$ and hence $S$ are fixed, so charge variations can lie in an equality sector if the admissible phase space includes them.

# Global concavity argument

Let $\gamma(s)\subset\mathscr C_V$ be an admissible fixed-volume path and define

$$
F(s)=\mathcal S_V(\gamma(s)).
$$

The Hessian identity gives

$$
F''(s)
=-\frac{2\pi}{\kappa_s}
\mathbb E_{\chi_s,V}(\dot\gamma,\dot\gamma).
$$

If $\mathbb E_{\chi_s,V}\ge0$ and $\kappa_s>0$, then $F''(s)\le0$. Concavity along paths from the reference solution gives

$$
S_W(X)\le S_W(X_0(V)).
$$

If equality holds, the zero-energy rigidity assumption forces the path into $\mathscr Z_V$. This is why the theorem is conditional: positivity, properness/compactness, and zero-sector rigidity are part of the claim.

# Local CPS and black-hole thermodynamics dictionary

- $\boldsymbol\omega$ is the vault's CPS symplectic current.
- $\mathcal E_\chi^{\mathrm{bulk}}$ is the Hollands-Wald canonical energy, computed from the bulk symplectic current.
- $\mathcal B_{\infty,V}$ is the asymptotic charge Hessian required by the thermodynamic ensemble.
- $V_{\mathrm{th}}$ is a Noether-charge/extended-first-law variable, not a geometric volume inserted by hand.
- The RII becomes a fixed-volume entropy maximum statement.
- The theorem should be cited with its conditions. It is not an unconditional proof of the RII for all AdS black holes.

# Verification log

## Checked

- Mathematica in the main run checked the elementary 2x2 Hessian inverse/determinant algebra used when passing between thermodynamic Hessian variables:

$$
\begin{pmatrix}a&b\\ b&c\end{pmatrix}^{-1}
=\frac{1}{ac-b^2}
\begin{pmatrix}c&-b\\ -b&a\end{pmatrix}.
$$

- Mathematica in the main run checked the algebraic pieces of the RII ratio under positive variables, keeping the area-volume form consistent with fixed $V_{\mathrm{th}}$.
- The paper-breakdown subagent reported additional Mathematica checks of the fixed-volume Kerr-AdS expansion, the exact four-dimensional Kerr-AdS nonnegativity identity for $36\pi V_{\mathrm{th}}^2-A^3$, endpoint cancellation, and RN-AdS fixed-volume equality. These are recorded as subagent-reported checks; the exact notebook/code was not rerun in the main session.

## Blocked

- The full CPS Hessian identity was not independently derived with xAct because it depends on the paper's covariant phase space boundary choices and asymptotic Noether-charge functional.
- The Regge-Wheeler-Zerilli/Kodama-Ishibashi positivity input was not reproduced; it is a source/imported theorem assumption.
- The fixed-volume Helmholtz Hessian formula for the stationary block was not independently checked because the second fixed thermodynamic variable and ensemble convention need to be pinned down before a sign check is meaningful.

## Failed

- No independent computation failed during this run.
