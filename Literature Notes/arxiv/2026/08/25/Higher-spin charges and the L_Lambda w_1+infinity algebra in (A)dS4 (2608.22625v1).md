---
paper id: 2608.22625v1
title: Higher-spin charges and the $L_\Lambda w_{1 + \infty}$ algebra in (A)dS$_4$
authors:
  - Lorenzo Di Giacomo
  - Maitá Micol
  - Daniele Pranzetti
  - Ana-Maria Raclariu
publication date: 2026-08-23T22:16
abstract: |-
  The paper constructs a tower of higher-spin charge aspects for asymptotically locally (A)dS4 gravity with flux-permitting boundary conditions. On a complexified single-helicity phase space and perturbatively to first order in the cosmological constant, the resulting charges represent a Lambda-deformed w-infinity algebra and act on curved-space conformally soft graviton data.
comments: "10 pages"
url: https://arxiv.org/abs/2608.22625v1
summary: "A perturbative bulk realization of the Lambda-deformed celestial higher-spin algebra, with a useful restricted canonical pair but important all-spin, finite-Lambda, and source-consistency boundaries."
tags: []
---

Daily package: [[2026_08_25_overview]].

# Direct verdict

Correct under the following precise conditions: the gravitational phase space is complexified and restricted to a single negative-helicity radiative sector; the pure-shear Bondi condition is imposed; the charge construction is truncated to linear order in the cosmological constant and to the displayed linear/quadratic orders in radiative data; inverse retarded-time derivatives use the paper's future-endpoint prescription; and the extension of the Weyl-scalar recursion beyond the explicitly controlled low spins is assumed.

The letter does not provide a self-contained proof of the all-spin charge algebra or of the final Taylor--Zhu OPE matching. It repeatedly defers the long calculations to an accompanying paper. A source-only appendix also contains a sign error in the smeared Lambda bracket: as printed it is symmetric rather than antisymmetric under exchange of the two charge parameters.

Reason codes: `T1-charge`, `T1-symmetry`, `T1-Wald-CPS`, `T1-boundary`, `T1-symplectic`, `T2-celestial-carrollian`, `A-rising-star`.

# Source map

The ten-page letter is organized as follows.

1. The introduction motivates a Lambda deformation of the flat-space higher-spin extension of BMS and states three targets: a bulk charge algebra, curved conformally soft gravitons, and the Taylor--Zhu OPE.
2. `Bondi gauge and restrictions on the phase space` identifies the boundary metric/stress-tensor data and then imposes the pure-shear and single-helicity restrictions.
3. `Recursive equations for charge evolution` rewrites the asymptotic Einstein equations as a Lambda-deformed hierarchy for Weyl charge aspects.
4. `Master charge and dual EOM` trades divergent charge aspects for a master charge paired with dual parameters satisfying their own recursion.
5. `Higher-spin charges and the algebra` solves the dual recursion perturbatively and gives linear and quadratic charges.
6. `Derivation of the Lambda-corrected celestial graviton OPE` defines curved conformally soft modes and states their charge action.
7. The discussion marks finite Lambda and observable consequences as open.
8. The TeX source includes end matter with the charge-aspect algebra, explicit dual-recursion solutions, and the Taylor--Zhu OPE. This end matter is not present in the retrieved official ten-page PDF, so it was source-inspected but not visually confirmed in that PDF.

# Boundary data, gauge, and canonical variables

The Bondi--Sachs gauge is

$$
g_{rr}=0,\qquad g_{rA}=0,\qquad
\partial_r\!\left(\frac{\det g_{AB}}{r^4}\right)=0,
$$

with

$$
g_{AB}=r^2q_{AB}+rC_{AB}+D_{AB}+r^{-1}E_{AB}+O(r^{-2}).
$$

For nonzero cosmological constant, the free boundary data are taken to be the boundary metric $q_{AB}$ and the trace-free coefficient $E^{\mathrm{TF}}_{AB}$, equivalently the angular holographic stress tensor. The paper then imposes

$$
q^{AB}\partial_uq_{AB}=0,
\qquad
\partial_uq_{AB}=2\Lambda C_{AB}.
$$

With a Newman--Penrose dyad $m_0^A,\bar m_0^A$, it complexifies the phase space and selects

$$
\bar C=C_{AB}\bar m_0^A\bar m_0^B=0,
$$

so that, to the retained order,

$$
\partial_um_{0A}=\Lambda C\bar m_{0A},
\qquad
\partial_u\bar m_{0A}=0.
$$

The reduced canonical pair is

$$
\left\{\partial_u^{-1}C,Q_{-2}\right\},
\qquad
\Omega=-\frac{4}{\kappa^2}\int_{\mathscr I}
\delta Q_{-2}\wedge\delta(\partial_u^{-1}C),
\qquad \kappa^2=32\pi G,
$$

where

$$
\partial_u^{-1}f(u)=\int_{+\infty}^{u}du'\,f(u').
$$

This is not the unrestricted radiative phase space. The single-helicity condition removes the conjugate shear sector, and the calculation neglects $O(\Lambda^2)$ contributions.

# Charge-aspect recursion

The leading Weyl coefficients are packaged as

$$
Q_s=\Psi^{(0)}_{2-s},\qquad -2\leq s\leq2.
$$

The spin-raising derivative $\eth$ depends on the time-dependent dyad and satisfies

$$
[\partial_u,\eth]\eta_s
=\Lambda\bigl(-C\bar\eth+s\bar\eth C\bigr)\eta_s.
$$

After the single-helicity restriction, the low-spin asymptotic Einstein equations take the compact form

$$
\partial_uQ_s
=\eth Q_{s-1}+\frac{s+1}{2}CQ_{s-2}
-\Lambda\bar\eth Q_{s+1}.
$$

For $s\leq2$ this is tied to the asymptotic field equations. The paper then extends the hierarchy to all integer $s\geq-1$. It reports an explicit $s=3$ check modulo $\bar C=0$; for higher spin, the extension is an organizing hypothesis for subleading Weyl coefficients rather than a derivation displayed in the letter.

# Master charge and finite generators

The master charge is

$$
\mathcal Q^\Lambda[T](u)
=\frac{8}{\kappa^2}\sum_{n=-1}^{\infty}
\int_S T_nQ_n.
$$

It is conserved on non-radiative intervals, $Q_{-2}=0$, when the dual parameters obey

$$
\partial_uT_n
=\eth T_{n+1}-\frac{n+3}{2}CT_{n+2}
-\Lambda\bar\eth T_{n-1},
\qquad T_{-2}=0.
$$

With $\mathcal Q^\Lambda[T](+\infty)=0$, the charge on a cut becomes

$$
\mathcal Q^\Lambda[T](u)
=\frac{8}{\kappa^2}\partial_u^{-1}
\int_S\left(T_{-1}\eth Q_{-2}
+\frac12T_0CQ_{-2}\right).
$$

Thus the charge acts canonically on $\partial_u^{-1}C$. The construction depends on the future-endpoint condition and on integrations by parts on the cut $S$; different endpoint data can add boundary contributions.

# Perturbative solution and equation ledger

For a spin-$s$ initial datum $T_s(0,z,\bar z)=\tau(z,\bar z)$, the source gives

$$
T_n^{(0,0)}
=\frac{u^{s-n}}{(s-n)!}\partial^{s-n}\tau,
\qquad -1\leq n<s,
$$

and

$$
T_n^{(1,0)}
=-\frac{u^{s-n+2}}{(s-n+1)!}
\bar\partial\partial^{s-n+1}\tau,
\qquad 0\leq n\leq s+1,
$$

with the special endpoint component

$$
T_{-1}^{(1,0)}
=-\frac{s+2}{(s+3)!}u^{s+3}
\bar\partial\partial^{s+2}\tau.
$$

The linear charges are

$$
\mathcal Q_s^{(0,0)}[\tau]
=\frac{8}{\kappa^2}\int du\,d^2z\,
\frac{u^{s+1}}{(s+1)!}\partial^{s+2}\tau\,Q_{-2},
$$

$$
\mathcal Q_s^{(1,0)}[\tau]
=-\frac{8}{\kappa^2}(s+2)
\int du\,d^2z\,
\frac{u^{s+3}}{(s+3)!}
\bar\partial\partial^{s+3}\tau\,Q_{-2}.
$$

The source gives nested inverse-$\partial_u$ sums for the terms linear in $C$ and mixed in $(\Lambda,C)$. Those are needed for the quadratic hard charges, but their full substitution into the Poisson bracket is not shown in the letter.

# Algebra and conformally soft modes

The unsmeared Lambda-deformed charge-aspect bracket has two output degrees,

$$
\{w_s(z),w_{s'}(z')\}
\sim w_{s+s'-1}-\Lambda w_{s+s'+1},
$$

with holomorphic and antiholomorphic derivatives of the delta function. The master-charge action is claimed to represent the corresponding field-dependent symmetry-algebroid bracket on the support of the dual recursion.

The curved radiative datum is

$$
Q_{-2}^{\Lambda}
=\left[1+\Lambda(\partial_u^{-1})^2
\partial\bar\partial(\Delta+1)\right]Q_{-2},
\qquad \Delta=u\partial_u+1.
$$

Its moments

$$
G_{1-s}^{-,\Lambda}
=\frac{(-1)^s}{(s+1)!}
\int_{-\infty}^{+\infty}du\,u^{s+1}Q_{-2}^{\Lambda}
$$

are stated to be $\mathfrak{sl}(2,\mathbb R)$ primaries. Their Poisson brackets with the quadratic charges reproduce the Taylor--Zhu Lambda-deformed celestial OPE under the imported flat-space OPE--bracket correspondence.

# Derivation map

1. Solve the radial Bondi equations and identify $(q_{AB},E^{\mathrm{TF}}_{AB})$ as boundary data.
2. Impose pure shear and a complex single-helicity sector, reducing the data to $(\partial_u^{-1}C,Q_{-2})$.
3. Rewrite the low-spin Bianchi identities as the Lambda-deformed charge-aspect recursion.
4. Extend that recursion to higher spins and introduce dual parameters $T_n$.
5. Choose future-endpoint data so the master charge is finite and express it as a canonical generator.
6. Solve the dual recursion order by order in $(\Lambda,C)$.
7. Insert the solution into the master charge and use the reduced symplectic form to compute brackets.
8. Package radiative moments into Lambda-deformed conformally soft modes and compare their charge action with the proposed celestial OPE.

Steps 1--3 are the closest to direct asymptotic Einstein-equation control. Steps 4, 7, and 8 contain the strongest assumptions or deferred algebra.

# Local translation for the vault

- The useful object is a restricted canonical pair, not a factorization of the full boundary Hilbert space. The paper explicitly complexifies and removes one shear helicity.
- Flux-permitting (A)dS boundary conditions are essential. The tower is not a consequence of standard Dirichlet AdS boundary conditions.
- The future-endpoint inverse derivative is part of the charge definition. It should be tracked like a boundary-condition choice, not treated as a harmless algebraic inverse.
- The construction is perturbative in curvature. It supplies no finite-$\Lambda$ theorem and no claim about continuum closure or Fock factorization.
- For the gluing project, the closest transferable lesson is that the admissible boundary phase space and endpoint prescription must be fixed before one interprets an algebra of moments as physical charges.

# Verification log

## Checked

- Mathematica checked the source-only formulas for $T_n^{(0,0)}$, $T_n^{(1,0)}$, and the special $T_{-1}^{(1,0)}$ against the $C=0$ dual recursion at order $\Lambda$ for all 54 pairs with $0\leq s\leq8$ and $-1\leq n\leq s$. Every residual vanished.
- The official PDF was rendered for visual inspection. The ten-page PDF contains the main text and bibliography with legible equations; its metadata and page count agree with the official abstract record.

## Failed

- The source-only equation for the smeared Lambda bracket prints

  $$
  [\tau,\tau']_\Lambda
  =-\Lambda\left[(s'-1)\tau'\bar\partial\tau
  +(s-1)\tau\bar\partial\tau'\right].
  $$

  Mathematica gives a generically nonzero antisymmetry residual under $(s,\tau)\leftrightarrow(s',\tau')$. Replacing the internal plus sign by a minus makes the residual vanish. The earlier unsmeared bracket and the general algebroid bracket are antisymmetric, so this is localized as an appendix sign error rather than evidence against the main algebra.

## Blocked

- The all-spin representation calculation and the final OPE action are deferred to an accompanying paper that is not part of the source package. The letter does not expose enough intermediate algebra to reproduce those claims independently.
- The TeX archive contains end matter that is absent from the retrieved official PDF. Those formulas were source-inspected but could not be visually confirmed against the official rendered version.
- A finite-$\Lambda$ charge algebra, the unrestricted two-helicity phase space, and physical observable consequences are not supplied.

## Source-derived

- The low-spin asymptotic recursion, the identification of the holographic stress-tensor component, and the canonical symplectic normalization were reconstructed from the paper and its cited setup, but were not rerun from the full Einstein equations with xAct in this daily audit.
- The quadratic mixed $(\Lambda,C)$ charge and the Taylor--Zhu OPE match remain source-derived subject to the blockers above.

## Not independently verified

- Global regularity of the allowed Bondi data, completeness of the restricted phase space, and the existence of a corresponding quantum representation.
- Whether the proposed charges constrain nonperturbative AdS/CFT observables.
