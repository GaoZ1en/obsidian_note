---
paper id: 2607.16179v1
title: Dressed States Call for Logarithmic Asymptotic Symmetries
authors:
  - Jorrit Bosma
  - Jeremy A. Mann
  - Charles Marteau
  - Blagoje Oblak
  - Marios Petropoulos
publication date: 2026-07-17T17:56
abstract: |-
  The paper asks which asymptotic symmetry group can organize infrared-dressed particle states as irreducible unitary representations. It supplements large gauge transformations or supertranslations by logarithmic canonical partners, producing an infinite-dimensional Heisenberg extension, and proposes that the resulting carrier space factorizes into a hard one-particle sector and a soft-boson sector.
comments: "10 pages"
url: https://arxiv.org/abs/2607.16179v1
summary: "The logarithmic charges supply a valid Heisenberg pairing, but the claimed classification and hard/soft Hilbert-space factorization are not established."
tags: []
---

Back to [[2026_07_20_overview]].

# Verdict and route through the letter

**Verdict.** The paper is a high-priority asymptotic-symmetry input, but its main representation-theoretic conclusion is **not proven**. Conditional on the imported mixed surface-charge bracket, the logarithmic partners do generate the advertised infinite-dimensional Heisenberg algebra. What does not follow is that the central character uniquely fixes the soft representation, that Lorentz transformations have a one-point orbit on that representation, or that every dressed-particle carrier factors as a hard one-particle Hilbert space tensored with a soft Fock space.

The letter has no appendices. Its source logic is:

| Source section | Technical role |
| --- | --- |
| §1, Introduction and outline | Poses a Wigner-style classification problem for infrared-dressed states and identifies irreducibility as the claimed reason to extend the asymptotic group. |
| §2, Asymptotic symmetries and logarithmic duals | Imports the electromagnetic and gravitational surface charges, their density weights, and the mixed central bracket. |
| §3, Poincaré–Maxwell and BMS | Applies an induced-representation argument to the ordinary asymptotic groups and uses the finite dimension of Lorentz orbits to call them too small. |
| §3, Extended Poincaré–Maxwell and BMS | Replaces the Abelian soft subgroup by a Heisenberg group and proposes a soft functional Hilbert space and hard/soft factorization. |
| §4, Conclusion | States the classification by mass, spin, and possibly electric charge, then points toward coadjoint orbits and boundary geometric actions. |

The main logical chain intended by the authors is

$$
\text{logarithmic falloffs}
\Longrightarrow
\text{canonically paired asymptotic charges}
\Longrightarrow
\text{Heisenberg extension}
\Longrightarrow
\text{soft Hilbert space}
\Longrightarrow
\mathcal H_{\mathrm{dressed}}
=
\mathcal H_{\mathrm{hard}}\otimes\mathcal H_{\mathrm{soft}}.
$$

Only the middle algebraic implication can be checked from the data supplied in the letter. The last two arrows require a choice of infinite-dimensional CCR representation, a measure or complex structure, Lorentz implementability, and a valid semidirect-product representation analysis.

## Charges, parameters, and representation data

| Symbol | Meaning and convention |
| --- | --- |
| (x\in S^2) | Point on the sphere at spatial or null infinity. |
| (\epsilon(x)) | Ordinary large-gauge or supertranslation parameter. In electromagnetism its constant harmonic is separated as global (U(1)). |
| (\eta(x)) | Logarithmic canonical partner. It has no zero mode in electromagnetism and only (\ell\geq2) modes in gravity. |
| (F,\widetilde F) | Electromagnetic charge aspects paired with (\epsilon,\eta). The letter imports their field-theory definitions. |
| (G,\widetilde G) | Gravitational supertranslation and logarithmic charge aspects. Their explicit definitions are not given. |
| LGT, LGT\(^*\) | Large gauge transformations and their logarithmic duals. |
| ST, ST\(^*\) | Genuine supertranslations and logarithmic dual supertranslations. Translations are the (\ell=0,1) kernel. |
| (P\mathrm{Max}) | Poincaré–Maxwell group with an Abelian normal subgroup. |
| (\widehat{P\mathrm{Max}},\widehat{\mathrm{BMS}}) | Proposed Heisenberg-extended groups. The hat denotes the central extension, not a Hilbert completion. |
| (\mathcal O_{(p,F)}) | Lorentz orbit of a momentum/charge-aspect pair. Its dimension is at most six. |
| (\lambda) | Coordinate dual to the central generator in the Heisenberg group. |
| (L^2(\mathrm{LGT}^*)), (L^2(\mathrm{ST}^*)) | Formal soft functional spaces. No measure or completion is specified. |

# The asymptotic charge pairs

## Electromagnetism: large gauge transformations and logarithmic partners

The field is a (U(1)) potential (A_\mu) with logarithmic falloffs and parity conditions at infinity. These conditions are not reproduced in the letter. Ordinary charges are written as

$$
Q_\epsilon
=
\oint_{S^2}d^2x\,\sqrt{g(x)}\,\epsilon(x)F(x),
\tag{2.1}
$$

and logarithmic charges as

$$
\widetilde Q_\eta
=
\oint_{S^2}d^2x\,\sqrt{g(x)}\,\eta(x)\widetilde F(x).
\tag{2.2}
$$

The ordinary charges commute among themselves, as do the logarithmic charges. The decisive imported bracket is

$$
\{Q_\epsilon,\widetilde Q_\eta\}
=
\int_{S^2}d^2x\,\sqrt{g(x)}\,\epsilon(x)\eta(x).
\tag{2.3}
$$

Because (\eta) has zero average, the constant harmonic of (\epsilon) lies in the kernel and remains the global electric charge. On the nonzero harmonics, (2.3) is a nondegenerate canonical pairing. A compact way to display the cocycle is

$$
\omega\big((\epsilon,\eta),(\epsilon',\eta')\big)
=
\int_{S^2}\sqrt g\,
\big(\epsilon\eta'-\epsilon'\eta\big).
$$

It is bilinear and antisymmetric. Since its value multiplies a central generator, the Jacobi identity is automatic. This is the robust algebraic content of the proposal.

Under a sphere diffeomorphism (x\mapsto\phi(x)), a density of weight (w) is defined by

$$
(\phi\!\cdot\!H)(\phi(x))
=
\left(\frac{g(x)}{g(\phi(x))}\right)^{w/2}
\left|\frac{\partial\phi(x)}{\partial x}\right|^{-w}H(x).
\tag{2.4}
$$

The stated electromagnetic weights are

$$
w(\epsilon)=0,
\qquad
w(F)=1,
\qquad
w(\eta)=1,
\qquad
w(\widetilde F)=0.
$$

Each integrand therefore has total weight one. Substitution into (2.4), together with the transformed integration measure, reproduces the original pairing. This checks covariance of the pairing **given** the stated weights; it does not derive the weights from the Maxwell phase space.

The letter also distinguishes two Lorentz generators. The unimproved Noether generator acts conformally on the sphere charge aspects. A Belinfante-improved generator is said to commute with the gauge charges after a canonical transformation made possible by the logarithmic sector. The transformation and the boundary term generating it are imported rather than displayed.

## Gravity: supertranslations and logarithmic supertranslations

The gravitational construction is parallel. Ordinary supertranslations include the four (\ell=0,1) translations and genuine (\ell\geq2) supertranslations. Their charges have the schematic form

$$
Q_\epsilon
=
\oint_{S^2}d^2x\,\sqrt g\,\epsilon(x)G(x),
\tag{2.5}
$$

while the logarithmic partners are

$$
\widetilde Q_\eta
=
\oint_{S^2}d^2x\,\sqrt g\,\eta(x)\widetilde G(x),
\tag{2.6}
$$

with (\eta) restricted to (\ell\geq2). The mixed bracket is again taken to be (2.3). The density weights become

$$
w(\epsilon)=-\frac12,
\quad
w(G)=\frac32,
\quad
w(\eta)=\frac32,
\quad
w(\widetilde G)=-\frac12.
$$

Thus the four translation modes are precisely the kernel of the gravitational Heisenberg pairing, while the (\ell\geq2) supertranslations are paired with logarithmic modes. At finite spherical-harmonic cutoff (L), this gives

$$
\operatorname{rank}\omega_{\rm EM}
=2\big((L+1)^2-1\big),
\qquad
\operatorname{nullity}\omega_{\rm EM}=1,
$$

and

$$
\operatorname{rank}\omega_{\rm grav}
=2\big((L+1)^2-4\big),
\qquad
\operatorname{nullity}\omega_{\rm grav}=4.
$$

The gravitational field-theory input remains weaker than the electromagnetic one: the explicit aspects (G,\widetilde G), falloffs, surface terms, and charge derivation are absent, with part of the construction cited to work listed as forthcoming.

# Why ordinary Poincaré–Maxwell and BMS are claimed to be too small

The ordinary groups are written as

$$
P\mathrm{Max}
=
SO(3,1)^\uparrow
\ltimes
\big(\mathbb R^4\times U(1)\times\mathrm{LGT}\big),
\tag{3.2}
$$

and

$$
\mathrm{BMS}
=
SO(3,1)^\uparrow
\ltimes
\big(\mathbb R^4\times\mathrm{ST}\big).
\tag{3.3}
$$

For an Abelian normal subgroup, the letter invokes Mackey induction: choose a dual element such as ((p,F)), take its Lorentz orbit

$$
\mathcal O_{(p,F)}
=
\left\{
(\Lambda\!\cdot p,\Lambda\!\cdot F)
\mid
\Lambda\in O(3,1)
\right\},
\tag{3.4}
$$

and build wavefunctions on that orbit. Since

$$
\mathcal O_{(p,F)}\cong SO(3,1)^\uparrow/G_{(p,F)},
$$

one indeed has

$$
\dim\mathcal O_{(p,F)}
=6-\dim G_{(p,F)}\leq6.
$$

This dimension bound is correct for a smooth orbit. Two additional steps used by the letter need qualifications:

1. Standard Mackey theorems assume a suitable locally compact group and regular dual action. (C^\infty(S^2)) with its natural Fréchet topology is not locally compact, and no alternative topology or generalized theorem is specified.
2. An induced carrier is generally (L^2(\mathcal O,V_\sigma)), with a representation (V_\sigma) of the stabilizer. Finite-dimensionality of (\mathcal O) alone does not imply a finite-dimensional carrier or exclude an infinite-dimensional fiber. In the physical massive sector, compactness of the rotational little group can supply the missing finite-dimensionality argument, but the letter does not make that argument.

So ordinary asymptotic groups may still be inadequate for the desired soft sector, but the orbit-dimension sentence is not a complete proof.

# Adding the Heisenberg normal subgroup

The proposed extended groups are

$$
\widehat{P\mathrm{Max}}
=
SO(3,1)^\uparrow
\ltimes
\left(
\mathbb R^4\times U(1)
\times\widehat{\mathrm{LGT}\times\mathrm{LGT}^*}
\right),
\tag{3.5}
$$

and

$$
\widehat{\mathrm{BMS}}
=
SO(3,1)^\uparrow
\ltimes
\left(
\mathbb R^4
\times\widehat{\mathrm{ST}\times\mathrm{ST}^*}
\right).
\tag{3.6}
$$

Given the cocycle (\omega), the corresponding Heisenberg multiplication may be reconstructed as

$$
(v,t)(v',t')
=
\left(v+v',,t+t'+\frac12\omega(v,v')\right).
$$

Associativity follows directly from bilinearity of (\omega). The normal subgroup is non-Abelian for nonzero central character, so the elementary Abelian-normal-subgroup form of Mackey induction no longer applies.

The letter then proposes a soft carrier such as

$$
\mathcal H_{\mathrm{soft}}
\stackrel{\rm formal}{=}
L^2(\mathrm{LGT}^*)
\quad\text{or}\quad
L^2(\mathrm{ST}^*),
$$

and, for a massive scalar gravitational state,

$$
\mathcal H
\stackrel{\rm claimed}{=}
L^2(\mathbb R^3)
\otimes
L^2(\mathrm{ST}^*).
$$

The first factor also suppresses the usual invariant mass-shell measure (d^3p/(2E_p)). More importantly, the second expression is only a formal analogy: there is no translation-invariant infinite-dimensional Lebesgue measure on (\mathrm{ST}^*). A Gaussian measure or Fock completion requires extra covariance/complex-structure data.

# Where the representation argument breaks

## Restriction to the normal subgroup is not automatically irreducible

The letter starts with an irreducible representation of the full semidirect product and states that its restriction to the normal subgroup is, at minimum, one irreducible representation of that subgroup. This is false in general.

A finite counterexample is the two-dimensional irreducible representation of

$$
S_3=C_3\rtimes C_2
$$

with

$$
r=
\begin{pmatrix}
\omega&0\\
0&\omega^2
\end{pmatrix},
\qquad
s=
\begin{pmatrix}
0&1\\
1&0
\end{pmatrix},
\qquad
\omega^3=1,
$$

so that (r^3=s^2=1) and (srs=r^{-1}). The full representation is irreducible, but restriction to the normal (C_3) splits into the two characters carried by (e_1) and (e_2). This also shows that a semidirect-product irrep need not factor into irreps of its subgroup factors.

## Infinite-dimensional Stone–von Neumann failure is decisive, not incidental

The paper correctly notes that Stone–von Neumann uniqueness fails in infinite dimension, but then later treats the central charge as the only label of the soft representation. Those statements are incompatible.

For countably many oscillator modes, consider

$$
b_n=\frac54a_n+\frac34a_n^\dagger.
$$

The coefficients satisfy

$$
\left(\frac54\right)^2-
\left(\frac34\right)^2=1,
$$

so the transformation preserves the CCR and the central character. Its off-diagonal part has truncated Hilbert–Schmidt norm

$$
\|V\|_{\mathrm{HS},N}^2
=
N\left(\frac34\right)^2
=
\frac{9N}{16}
\longrightarrow\infty.
$$

By the Shale–Stinespring criterion it is not unitarily implementable in the standard Fock representation. Hence the original representation and its transformed representation are inequivalent despite having the same central character.

## Lorentz covariance of the cocycle does not prove Lorentz implementability

Invariance of (\omega) means Lorentz transformations act by automorphisms of the abstract Heisenberg algebra. A unitary action on a chosen soft Hilbert space requires more: the transformed representation must be unitarily equivalent to the original one. For a quasi-free representation this becomes an implementability condition on the chosen complex structure or covariance. None is supplied.

Consequently, the assertion that the Lorentz orbit of the soft representation is a single point is not justified. An automorphism can move a representation to an inequivalent representation even when the underlying abstract Hilbert spaces are isomorphic.

The defensible conclusion is therefore

$$
\boxed{
\text{imported mixed charge bracket}
\Longrightarrow
\text{valid Heisenberg algebra with the claimed harmonic kernel}
}
$$

but

$$
\boxed{
\text{Heisenberg extension}
\centernot\Longrightarrow
\text{unique soft representation}
\centernot\Longrightarrow
\text{hard/soft tensor factorization}.
}
$$

# Translation to boundary phase-space language

| Paper object | Local CPS / boundary interpretation | What is still required |
| --- | --- | --- |
| (Q_\epsilon,\widetilde Q_\eta) | Candidate boundary Hamiltonians for two conjugate asymptotic directions. | Falloffs, the presymplectic current, differentiability, and flux conditions. |
| Mixed bracket (2.3) | Boundary symplectic pairing / central two-cocycle. | Independent derivation from the same phase-space representative in both sectors. |
| Kernel harmonics | Properly unpaired global charges: electric zero mode or spacetime translations. | A quotient statement tied to the allowed gauge transformations. |
| Heisenberg group | Quantization of the soft boundary phase space after choosing a polarization. | Completion, polarization/complex structure, Gaussian measure, and domains. |
| Lorentz action | Symplectic automorphism of soft boundary data. | A unitary implementer and anomaly check. |
| Hard/soft split | Desired factorization of particle and radiative boundary degrees of freedom. | An actual symplectic splitting and proof that the quantum representation is a spatial tensor product. |

The paper is therefore most useful to the vault as an algebraic target for a boundary-CPS calculation. The calculation should begin from the complete asymptotic presymplectic structure and ask whether the logarithmic sector really supplies a nondegenerate boundary pair after constraints and flux are treated. Quantization comes only afterward.

# Concrete project extensions

1. Reconstruct the Maxwell logarithmic bracket from the cited falloffs and symplectic form, retaining the parity conditions and the zero mode. The stop condition is an explicit derivation of (2.3) in one boundary convention.
2. Repeat the calculation for gravity only after the gravitational charge aspects are available; do not import the electromagnetic bracket by analogy.
3. Choose a spherical-harmonic cutoff, construct the finite Heisenberg representation, and track how the (\ell=0,1) kernel embeds before taking the infinite-mode limit.
4. Specify a soft complex structure and test whether the Lorentz action satisfies the Shale–Stinespring condition. This is the decisive bridge between algebra covariance and a quantum symmetry.
5. Treat hard/soft factorization as a proposition to prove from a symplectic direct sum, not as a consequence of the group notation.

# Verification log

## Checked

- **Sage 10.9:** real spherical-harmonic truncations (L=2,3,4,5) reproduce antisymmetry, zero Jacobiators, the electromagnetic rank (2((L+1)^2-1)) with one-dimensional kernel, and the gravitational rank (2((L+1)^2-4)) with the four (\ell=0,1) modes as kernel.
- **Mathematica:** substitution into the weight-(w) transformation law shows that pairings of weights (w) and (1-w) are invariant; all four paper pairings have total weight one.
- **Algebraic reproduction:** the Heisenberg multiplication is associative, and the Lorentz-orbit dimension bound is (\dim\mathcal O\leq6).
- **Sage:** the (S_3=C_3\rtimes C_2) matrices above obey the group relations, give an irreducible full representation, and restrict reducibly to (C_3).
- **Mathematica:** the Bogoliubov coefficients preserve the CCR while (\|V\|_{\mathrm{HS},N}^2=9N/16) diverges.

## Blocked

- Equations (2.1)–(2.3) are not independently derivable from this letter because (F,\widetilde F), the logarithmic falloffs, parity conditions, and boundary symplectic form are imported.
- Equations (2.5)–(2.6) are even less self-contained: the gravitational charge aspects and their surface-charge derivation are not displayed.
- The claimed Belinfante canonical transformation and Lorentz/supertranslation decoupling use redefined generators not included in the source.
- (L^2(\mathrm{LGT}^*)) and (L^2(\mathrm{ST}^*)) have no specified measure, completion, complex structure, or domains.
- Lorentz implementability and the coadjoint/shear claims cannot be checked without those data and the omitted charge formulas.

## Failed

- The unrestricted use of the ordinary Mackey theorem for the natural Fréchet group (C^\infty(S^2)) lacks its local-compactness hypotheses.
- Finite Lorentz-orbit dimension does not by itself exclude an infinite-dimensional little-group fiber.
- Restriction of a full semidirect-product irrep to the normal subgroup need not be irreducible.
- Infinite-dimensional Heisenberg representations are not classified by the central character alone.
- Cocycle covariance does not imply a one-point orbit of the chosen soft representation under Lorentz transformations.
- The advertised classification solely by mass, spin, and possibly electric charge, and the hard/soft tensor factorization, do not follow from the paper's stated premises.

The failed representation-theory steps do not invalidate the imported central algebra. They change the paper's status from a classification theorem to a sharply formulated algebraic proposal.
