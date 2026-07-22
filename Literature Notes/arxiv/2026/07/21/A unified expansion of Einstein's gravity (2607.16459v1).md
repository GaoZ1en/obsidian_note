---
paper id: 2607.16459v1
title: A unified expansion of Einstein's gravity
authors:
  - Arkachur Bhattacharya
  - Pushkar Soni
publication date: 2026-07-17T19:00
abstract: |-
  The paper introduces a unified (s,n,epsilon) expansion of Lorentzian geometry that contains relativistic, Galilean, Carrollian, and string-Carroll limits as special cases. It constructs compatible degenerate geometric data, reorganizes the Levi-Civita connection and Einstein-Hilbert action into four epsilon orders, and applies the framework to near-horizon black-hole and black-brane geometries.
comments: "50 pages, 2 figures, 1 table"
url: https://arxiv.org/abs/2607.16459v1
summary: "A reusable finite-epsilon decomposition of Einstein gravity whose choice of scaled tangent block produces Galilean, Carrollian, and string-Carroll actions."
tags: []
---

Back to [[2026_07_21_overview]].

The paper's value is its order of operations: split the tangent metric and the Einstein--Hilbert action at finite $\epsilon$, then specialize the discrete data $(s,n)$. This makes several limits comparable without hiding their different inverse metrics, torsions, or cosmological-constant scalings.

# The $(s,n,\epsilon)$ tangent split

Split tangent indices into $A,B=1,\ldots,n$ and $a,b=1,\ldots,d-n$, and write

$$\begin{align}
\widetilde\eta_{\hat a\hat b} =\operatorname{diag}(\epsilon^2\eta_{AB},\eta_{ab}). \tag{source: local-Lorentzian-flat}
\end{align}$$

The binary label $s$ records where the timelike direction lies: $s=0$ places time in the unscaled block and gives a Galilean class; $s=1$ places time in the scaled block and gives a Carroll class. As $\epsilon\to0$, the tangent metric and a rescaled inverse produce complementary degenerate tensors

$$\begin{align}
h=\operatorname{diag}(0,\eta_{ab}), \qquad v=\operatorname{diag}(\eta^{AB},0).
\end{align}$$

For curved vielbeins,

$$\begin{align}
g_{\mu\nu}=\epsilon^2V_{\mu\nu}+\Pi_{\mu\nu}, \qquad g^{\mu\nu}=\epsilon^{-2}V^{\mu\nu}+\Pi^{\mu\nu}. \tag{source: Lorentzia-metric}
\end{align}$$

The leading tensors $v_{\mu\nu},v^{\mu\nu},h_{\mu\nu},h^{\mu\nu}$ obey orthogonality and completeness inherited from the two vielbein blocks. Only $v^{\mu\nu}$ and $h_{\mu\nu}$ are invariant under the contracted local boosts; the complementary inverse data depend on an Ehresmann-like splitting. The degenerate pair alone is therefore weaker data than an ordinary metric plus inverse.

If the scaled block has dimension $n$, then

$$\begin{align}
\sqrt{-g}=\epsilon^n E.
\end{align}$$

This determinant factor controls all overall powers in the action.

# A compatible torsional connection

Rather than expand the Levi-Civita connection immediately, the paper chooses a representative finite-$\epsilon$ connection satisfying

$$\begin{align}
\widehat\nabla_\rho V^{\mu\nu}=0, \qquad \widehat\nabla_\rho\Pi_{\mu\nu}=0,
\end{align}$$

$$\begin{align}
\widehat C^\rho{}_{\mu\nu} =V^{\rho\lambda}V_{\lambda\mu\nu} +\Pi^{\rho\alpha}\Pi_{\alpha\mu\nu} +\Pi^{\rho\alpha}V_{\nu\sigma}V^{\sigma\lambda} \Pi_{\lambda\mu\alpha}. \tag{source: SC-connection-Lorentz}
\end{align}$$

The derivative tensors $V_{\lambda\mu\nu}$ and $\Pi_{\lambda\mu\nu}$ are defined by antisymmetrized first derivatives. The connection is generally torsionful and is not invariant under local unified boosts. It is not unique: the compatibility equations admit infinitely many solutions. This representative is chosen because it maps transparently to familiar Galilean and Carrollian connections.

The Levi-Civita connection is reorganized as

$$\begin{align}
\Gamma^\rho{}_{\mu\nu} =\epsilon^{-2}\Gamma^{(-2)\rho}{}_{\mu\nu} +\widehat C^\rho{}_{\mu\nu} +\mathcal T^\rho{}_{\mu\nu} +\epsilon^2\Gamma^{(2)\rho}{}_{\mu\nu}. \tag{source: SC-decomposition-Levi-Civtia}
\end{align}$$

This identity lets the authors power count curvature before choosing a Newtonian, Carrollian, or higher-rank scaled limit.

# The four Einstein--Hilbert orders

With

$$\begin{align}
\Lambda=\epsilon^\Delta\widehat\Lambda,
\end{align}$$

the action becomes, up to a total divergence,

$$\begin{align}
\boxed{ S\approx\frac1{16\pi G}\int E\left[ \epsilon^{n-4}L^{(n-4)} +\epsilon^{n-2}L^{(n-2)} +\epsilon^nL^{(n)} +\epsilon^{n+2}L^{(n+2)} -2\epsilon^{n+\Delta}\widehat\Lambda \right].
}
\tag{source: unified-EH}
\end{align}$$

The four bulk densities are

$$\begin{align}
L^{(n-4)} =\Pi^{\rho\alpha}V^{\beta\kappa}V^{\mu\nu} \Pi_{\kappa\rho\nu}\Pi_{\mu\alpha\beta},
\end{align}$$

$$\begin{align}
L^{(n-2)} =2V^{\sigma\lambda}\Pi_{\sigma\beta\mu} \Pi_{\lambda\rho\nu}\Pi^{\mu[\beta}\Pi^{\nu]\rho} +V^{\mu\nu}\widehat R_{\mu\nu},
\end{align}$$

$$\begin{align}
L^{(n)}=\Pi^{\mu\nu}\widehat R_{\mu\nu},
\end{align}$$

$$\begin{align}
L^{(n+2)} =\Pi^{\rho\beta}V_{\beta\mu\nu}V^{\mu\alpha} \Pi^{\nu\kappa}V_{\kappa\rho\alpha}.
\end{align}$$

The symbol $\approx$ matters for boundary work: a total derivative has been dropped. The source notes that it can matter for finite boundaries and nontrivial falloffs. The hierarchy is therefore a bulk action decomposition, not yet a well-posed boundary variational principle.

# Relativistic, Galilean, and Carroll avatars

| choice | interpretation | parameter reading |
|---|---|---|
| $(s,n)=(0,0)$ or $(1,d)$ | ordinary GR | no genuinely degenerate block |
| $(0,d-1)$ | Galilean/nonrelativistic gravity | $\epsilon\sim c^{-1}$ |
| $(1,1)$ | particle Carroll gravity | $\epsilon\sim c$ |
| $(1,2)$ | string Carroll gravity | two-dimensional scaled tangent block |

For $(1,1)$, the leading invariant reduces to

$$\begin{align}
K_{\mu\nu}K^{\mu\nu}-K^2
\end{align}$$

after translation to the paper's PUL variables. Appendix E performs the Galilean reduction to post-Newtonian connection and action variables. The conceptual gain is that $n$ fixes the power hierarchy, $s$ selects which degenerate structure contains time, and $\Delta$ decides at which order the cosmological term survives.

# String Carroll gravity and horizon limits

For $(s,n)=(1,2)$, the leading limit with $\Delta=-4$ retains

$$\begin{align}
\mathcal L^{(0)} =h^{\rho\alpha}v^{\beta\kappa}v^{\mu\nu} h_{\kappa\rho\nu}h_{\mu\alpha\beta} -2\Lambda^{\{-4\}}. \tag{source: sc-gravity-action}
\end{align}$$

The paper varies the complementary degenerate data subject to their algebraic constraints and obtains three coupled equations. Two examples use

$$\begin{align}
r=r_h+\varepsilon\rho^2, \qquad \varepsilon=\epsilon^2.
\end{align}$$

The leading longitudinal two-plane is assigned to $v$, while the transverse horizon metric supplies $h$. The Plebanski--Demiański family and a four-dimensional black brane are stated to solve the string-Carroll equations with $\Lambda^{\{-4\}}=0$. The limiting tensors are displayed, but the complete substitution into all three equations is not.

# Transfer to Carrollian and boundary work

1. The finite-$\epsilon$ split is a useful ledger for locating which Carrollian term descends from curvature and which comes from inverse-metric power counting.
2. Nonuniqueness of the compatible connection is analogous to choosing extra foliation/boundary data. A charge or CPS calculation must state that choice before comparing formulas.
3. The dropped total divergence must be restored before deriving a presymplectic potential, boundary stress tensor, or finite-boundary charge.
4. The $(1,2)$ sector is a concrete near-horizon string-Carroll testbed, but its asserted horizon solutions need a tensorial substitution before reuse.

# Verification note

**Checked.** Mathematica verified for a general diagonal $n$-dimensional scaled block that $\det g$ carries exactly $\epsilon^{2n}$, hence $\sqrt{-g}$ carries $\epsilon^n$. This independently checks the determinant power entering the action hierarchy.

**Source-derived.** The compatible-connection identity, curvature decomposition, four $L^{(k)}$, constrained string-Carroll variation, and both horizon substitutions were not independently reproduced with xAct.

**Source issues.** The introductory remainder $g=g_{(0)}+\epsilon^2g_{(2)}+O(\epsilon^2)$ should be $O(\epsilon^4)$; two contracted-algebra commutators retain uppercase indices where lowercase ones are required; the $(1,d)$ cosmological discussion says $\Delta<2$ where its own case split requires $\Delta<-2$; and one horizon limit omits the zero in $\epsilon\to0$.
