---
paper id: 2606.30431v2
title: Finite-energy hard celestial current algebra from the Banerjee--Mandal--Sahoo dipole Ward identity in QED
authors:
  - Ruiliang Li
publication date: 2026-06-29T15:10:36Z
abstract: |-
  The paper uses the Banerjee-Mandal-Sahoo dipole-current Ward identity for the one-loop logarithmic soft-photon theorem to determine its finite-energy action on Mellin-difference hard currents. The key result is a two-particle hard-hard residue that survives one-particle redefinitions and defines a filtered abelian extension of the hard-current algebra.
comments: "58 pages, no figures. v2 revised title, abstract, section 3, section 5, and appendix B; finite-energy hard-current results unchanged"
url: https://arxiv.org/abs/2606.30431v2
summary: "A useful celestial current-algebra model for when a Ward kernel cannot close on one-particle currents and must be enlarged by a two-support module."
tags: []
---

Back to [[2026_06_30_overview]].

# Finite-energy hard data and Mellin shifts

The paper works with infrared-subtracted hard functions

$$
\mathcal A_n^{\mathrm{bare}}
=Z_n^{\mathrm{IR}}\mathcal H_n^{\mathrm{ren}}.
$$

Ward identities act on the Mellin transform of $\mathcal H_n^{\mathrm{ren}}$. For a hard leg $a$, a Mellin shift acts as

$$
T_a\mathcal O_{\Delta_a}
=\mathcal O_{\Delta_a+1}.
$$

The hard-current algebra $\mathfrak h_{\mathrm{hard}}$ is built from Mellin-difference operators of the form

$$
\Phi=\sum_\alpha f_\alpha(\Delta)\,\partial_\Delta^{k_\alpha}T^{m_\alpha},
$$

with a noncommutative star product induced by shifts in $\Delta$.

# The dipole Ward kernel and the two-support layer

The logarithmic soft-photon theorem supplies a Banerjee-Mandal-Sahoo dipole-current Ward identity. The normalized local Ward identity contains a one-particle term plus an ordered-pair term:

$$
\left\langle D_\alpha(\bar u)\prod_{a=1}^n\mathcal O_a\right\rangle
=\sum_a e_a d^a_\alpha(\bar u)
\left\langle\prod_a\mathcal O_a\right\rangle
+\sum_{a\ne b}K^{ab}_\alpha(\bar u)
\left\langle\mathbb P_{ab}^{(2)}\prod_c\mathcal O_c\right\rangle.
$$

The ordered-pair kernel has a Cauchy pole on the diagonal $\bar z_a=\bar z_b$. A one-particle counterterm has only single-insertion support, so it cannot remove the pairwise residue.

The paper organizes this by a support filtration

$$
F_1\subset F_2\subset F_3\subset\cdots
$$

and projection

$$
\sigma_2:F_2\to F_2/F_1.
$$

The finite-energy obstruction lives in $F_2/F_1$, not in the one-particle current algebra.

# Backward differences and the hard-current cocycle

For a hard current $H[\Phi]$, the dipole-hard OPE has the form

$$
[X,H[\Phi]]
=H[\mathcal L_X\Phi]+\mathbb M_X[\Phi]\quad\bmod F_3.
$$

The two-particle symbol is

$$
\mathfrak m_X(\Phi)
:=\sigma_2\mathbb M_X[\Phi]\in F_2/F_1\simeq\mathcal M_2.
$$

The fixed-leg operator is controlled by the backward Mellin difference

$$
\delta_a^-\Phi_a
=\Phi_a(\Delta_a-1)-\Phi_a(\Delta_a),
\qquad
\nabla_a^-\Phi_a=(\delta_a^-\Phi_a)T_a^{-1}.
$$

The coefficient map obeys the hard-current cocycle identity

$$
\mathfrak m_X([\Phi,\Psi]_\star)
=\Phi\cdot\mathfrak m_X(\Psi)
-\Psi\cdot\mathfrak m_X(\Phi).
$$

After the two-particle target is admitted, the cocycle becomes relatively exact:

$$
\mathfrak m_X(\Phi)=-\rho_2(\Phi)\kappa_X,
\qquad
\kappa_X=\sigma_2(K_X).
$$

This is the paper's central transferable mechanism: the obstruction is not a new arbitrary coupling but the failure of the one-particle support filtration to contain the primitive.

# Filtered extension and affine action

The resulting algebra is a filtered abelian extension

$$
\mathfrak g_{\mathrm{ren}}^{\log}
=\mathfrak g_1\oplus_\nu t\mathcal M_2,
\qquad
t^2=0,
$$

with short exact sequence

$$
0\to\mathcal M_2
\to\mathfrak g_{\mathrm{ren}}^{\log}
\to\mathfrak g_1
\to0
\qquad\bmod F_3.
$$

For a fixed ordered pair with kernel $K_X^{ab}=L_X^{ab}T_a^{-1}$ and scalar label $f_a(\Delta_a)$, the iterated commutator is

$$
\operatorname{ad}_{K_X^{ab}}^n f_a
=(L_X^{ab})^n(\delta_a^-)^nf_a\,T_a^{-n}.
$$

This integrates the hard-current cocycle to an affine action. The source compares the scalar-leg coefficients with the long-range logarithmic tower of Choi, Kadhe, and Puhm after crossing and normalization conventions are aligned.

# Why this matters locally

This is a useful model for boundary/corner algebra work even though it is QED/celestial rather than gravitational CPS. It gives a clean diagnostic:

$$
\text{one-support current algebra}
\quad\text{fails by}\quad
\text{nonzero two-support residue}.
$$

In a null-boundary or finite-boundary charge problem, the analogous question is whether a charge algebra closes on local cut currents or whether pair/corner support must be added as an edge module.

# Verification note

The formulas above are source-derived from the TeX source. No independent verification of the Banerjee-Mandal-Sahoo input soft theorem, meromorphic Plancherel continuation, or coefficient-by-coefficient comparison with the long-range OPE tower was attempted. The source-logic decomposition did confirm the internal roles of the support filtration, residue criterion, cocycle, and filtered extension.
