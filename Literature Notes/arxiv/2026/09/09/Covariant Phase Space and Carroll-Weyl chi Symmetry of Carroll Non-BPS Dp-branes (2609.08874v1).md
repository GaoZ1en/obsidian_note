---
paper id: 2609.08874v1
title: "Covariant Phase Space and Carroll-Weyl χ Symmetry of Carroll Non-BPS D_p-branes"
authors:
  - Limin Zeng
publication date: 2026-09-08T15:13
abstract: |-
  The canonical Carroll contraction of non-BPS D_p-branes preserves the canonical two-form but changes the leading Hamiltonian constraint. The paper compares electric- and magnetic-like constraint algebras, separates the generic and tachyon-vacuum counts, and proves that a proposed χ scaling is not a first-class gauge symmetry except as a restricted global vacuum symmetry.
comments: "12 pages, 1 appendix"
url: https://arxiv.org/abs/2609.08874v1
summary: "A useful constrained-Hamiltonian no-go analysis; its 'covariant phase space' is a fixed-slice canonical phase space and its boundary differentiability is not treated."
tags: []
---

# Why this is high priority

Reason codes: `T1-symmetry`, `T1-boundary`, `T2-celestial-carrollian`, `T2-model`.

The paper explicitly compares a symplectic transformation with a genuine gauge degeneracy. It asks whether a Carroll--Weyl scaling that preserves the canonical two-form also preserves the full constraint surface and supplies an additional first-class generator. Its negative answer is directly useful for guarding the vault's distinction between canonical symmetry, constraint-compatible symmetry, and quotient gauge redundancy.

# Direct verdict

**Correct under the following precise conditions:** on a spatial slice with no boundary contribution, with field-independent smearings and on the generic regular stratum where the listed constraints are independent, the canonical Carroll contraction, weak/strong constraint-closure statements, degree counts, and χ no-go follow as stated.

The statement should be rewritten as: **the paper analyzes the canonical phase space on a fixed spatial slice, not a spacetime-covariant phase space derived from a Lagrangian presymplectic current.** No boundary conditions or generator improvements are supplied. Therefore its charge and algebra claims are not established for regional slices with boundary or nontrivial edge modes.

# Complete source map

1. **Parent theory:** gives the non-BPS DBI action, canonical pairs, constraints, canonical one-form, and two-form.
2. **Carroll limit:** defines electric- and magnetic-like scalings and shows pairwise invariance of the canonical one-form.
3. **Density weights:** fixes the formal spatial tensor-density weights.
4. **Canonical phase space:** writes the contracted two-form and computes Gauss, gauge-covariant spatial diffeomorphism, and Hamiltonian flows.
5. **Constraint algebra:** distinguishes electric weak closure from stronger magnetic Hamiltonian brackets; the diffeomorphism bracket remains Gauss-weak in both.
6. **Degrees of freedom:** obtains $D-1$ generically and $D-2$ only after an added tachyon-vacuum second-class pair.
7. **Rank conditions:** gives $D\ge2p$ generically and $D\ge2p+1$ at the tachyon vacuum for nondegenerate electric $a_{ij}$.
8. **χ analysis:** constructs the canonical charge, derives Gauss/diffeomorphism/Hamiltonian obstructions, and gives an explicit on-shell magnetic counterexample.
9. **Comparison and conclusion:** contrasts the D-brane no-go with null strings and leaves boundary phase spaces and quantization open.
10. **Appendix:** derives the Gauss correction in the transformation of $\pi^i$.

# Parent and contracted phase spaces

The parent canonical one-form is

$$
\widetilde\Theta=\int_\Sigma
\left(\widetilde p_M\delta\widetilde x^M
+\widetilde p_T\delta\widetilde T
+\widetilde\pi^i\delta\widetilde A_i\right).
$$

Both Carroll scalings rescale each canonical pair inversely, so

$$
\Theta^{\mathrm{Car}}=\int_\Sigma
\left(P_\mu\delta X^\mu+P_I\delta X^I+p_T\delta T+\pi^i\delta A_i\right)
$$

is unchanged. Hence

$$
\Omega=\delta\Theta^{\mathrm{Car}}
=\int_\Sigma\left(
\delta P_\mu\wedge\delta X^\mu
+\delta P_I\wedge\delta X^I
+\delta p_T\wedge\delta T
+\delta\pi^i\wedge\delta A_i\right)
$$

is the same in the two leading sectors. On the unconstrained canonical phase space this form is symplectic. It becomes presymplectic only after pullback to the first-class constraint surface.

# Electric and magnetic constraints

The common Gauss and spatial-diffeomorphism densities are

$$
\mathcal G=\partial_i\pi^i,
$$

$$
\mathcal H_i=P_\mu\partial_iX^\mu+P_I\partial_iX^I
+p_T\partial_iT+F_{ij}\pi^j.
$$

The electric Hamiltonian density is

$$
h_E=P_\mu\eta^{\mu\nu}P_\nu
+\pi^ia_{ij}\pi^j
+\tau_p^2V(T)^2\det a,
$$

$$
a_{ij}=\partial_iX^I\partial_jX^I+\partial_iT\partial_jT.
$$

The magnetic density is

$$
h_M=P_\mu\eta^{\mu\nu}P_\nu
+\tau_p^2V(T)^2\det(a+F).
$$

Neither contains $P_I^2$ or $p_T^2$, so $X^I$ and $T$ are frozen under the leading Hamiltonian flow even though they remain coordinates on the reduced phase space.

# Constraint algebra

The gauge-covariant diffeomorphism generator acts on the electric density as

$$
\{h_E,H_i[\xi]\}
=\mathcal L_\xi h_E-2\xi^i\mathcal G\,a_{ij}\pi^j,
$$

so

$$
\{H_i[\xi],H_E[\lambda]\}
\approx H_E[\mathcal L_\xi\lambda].
$$

For the magnetic density the analogous bracket closes strongly. In both sectors,

$$
\{H_i[\xi],H_i[\eta]\}
=H_i[\mathcal L_\xi\eta]
-\frac12\int_\Sigma(\xi^i\eta^j-\eta^i\xi^j)F_{ij}\mathcal G,
$$

so spatial diffeomorphisms close only on the Gauss surface unless the generator is improved by a Gauss term.

The self-brackets $\{H_E,H_E\}$ and $\{H_M,H_M\}$ vanish strongly because each density separates conjugate dependencies: $P_\mu$ appears without $X^\mu$, while $X^I,T,A_i$ appear without $P_I,p_T,\pi^i$ in the magnetic case, and the electric $A$ dependence is absent while $\pi$ appears. The paper's sentence that $h_E$ “does not depend on $X^I,T$” is false; Eqs. (2.17) and (3.11) show that it does. The zero self-bracket survives for the more precise conjugate-pair reason.

# Degree counts and rank

There are

$$
N_{\mathrm{pairs}}=(p+1)+(D-p-1)+1+p=D+p+1
$$

canonical pairs and $p+2$ first-class constraints. On a regular irreducible stratum,

$$
N_{\mathrm{phys}}=N_{\mathrm{pairs}}-(p+2)=D-1.
$$

The tachyon vacuum is not reached by an extra first-class constraint. The paper imposes

$$
T-T_{\min}=0,\qquad p_T=0,
$$

as a second-class pair, reducing the count to $D-2$. This is an effective sector selection and additionally assumes $V(T_{\min})=V'(T_{\min})=0$ so that it is dynamically consistent.

Since $a_{ij}$ is the Gram matrix of $D-p$ gradients in the generic sector, full rank $p$ requires

$$
D\ge2p.
$$

At fixed tachyon vacuum the tachyon gradient disappears, giving

$$
D\ge2p+1.
$$

These are conditions for the nondegenerate electric stratum, not universal restrictions on every Carroll D-brane configuration. The magnetic matrix $b=a+F$ may remain invertible when $a$ is singular.

# χ transformation and charge

The proposed transformation scales

$$
\delta_\chi(X^I,T,A_i)=\chi(X^I,T,A_i),
$$

$$
\delta_\chi(P_I,p_T,\pi^i)=-\chi(P_I,p_T,\pi^i),
$$

while leaving longitudinal pairs fixed. For field-independent $\chi$, it preserves $\Omega$ and is generated on the unconstrained phase space by

$$
Q_\chi=\int_\Sigma\chi(P_IX^I+p_TT+\pi^iA_i).
$$

Preserving $\Omega$ is not sufficient for gauge symmetry. A first-class generator must also preserve the constraint ideal and become a degeneracy direction on the constrained surface.

# Obstructions

For local $\chi$,

$$
\{G[\alpha],Q_\chi\}
\approx-\int_\Sigma\alpha(\partial_i\chi)\pi^i,
$$

and the diffeomorphism bracket contains additional $\partial_i\chi$ terms. Thus local χ does not preserve the Gauss/diffeomorphism constraint surface generically.

For global χ, those derivative obstructions vanish, but the electric potential gives

$$
\{H_E[\lambda],Q_\chi\}
=\int_\Sigma\lambda\tau_p^2\det a\,
2\chi\left(pV^2+TVV'\right),
$$

which is not weakly zero for a generic potential.

In the magnetic sector,

$$
\{H_M[\lambda],Q_\chi\}
=\int_\Sigma\lambda\tau_p^2\chi\left[
2TVV'\det b+V^2\det b\,b^{ji}(2a_{ij}+F_{ij})
\right].
$$

The paper exhibits an on-shell point where this is nonzero, proving that global χ is not even a weak symmetry of the generic constrained phase space.

At $T_{\min}=0$ with $V(0)=V'(0)=0$, $T=p_T=0$, and spatially constant χ, the vacuum sector is preserved. Even there, $Q_\chi$ is a global symmetry charge, not an added first-class constraint, so it does not reduce the local degree count.

# Explicit magnetic counterexample

For $p\ge2$, choose

$$
a=\operatorname{diag}(1,\ldots,1,0),
\qquad
F_{p-1,p}=f=-F_{p,p-1}.
$$

Then

$$
\det(a+F)=f^2,
$$

$$
(a+F)^{ji}a_{ij}=p-2,
\qquad
(a+F)^{ji}F_{ij}=2.
$$

Set $V(0)=v\ne0$, $T=p_T=0$, $\pi^i=P_I=P_i=0$, and $P_0=\tau_pv|f|$. All three constraints vanish, while

$$
\{H_M[\lambda],Q_\chi\}
=\int_\Sigma2\lambda\chi\tau_p^2v^2(p-1)f^2\ne0.
$$

The paper also supplies a separate $p=1$ example, where no spatial two-form exists.

# Independent checks

**Checked (rendered PDF, TeX source, Sage, and direct canonical algebra):**

- The rendered counterexample page agrees with the source for $a$, $F$, $b^{-1}$, the on-shell momentum, and the final obstruction.
- Sage verifies for $p=2,\ldots,8$ that $\det b=f^2$, $b^{ji}a_{ij}=p-2$, and $b^{ji}F_{ij}=2$ exactly.
- The generic count simplifies to $D-1$, and imposing one second-class canonical pair gives $D-2$.
- Pairwise inverse Carroll scalings leave every $p\,\delta q$ term invariant.
- Direct canonical variation reproduces $\{pi^i,H_i[\xi]\}=\mathcal L_\xi\pi^i-\xi^i\mathcal G$.
- The dependence audit confirms the textual error about $h_E$: it depends on $X^I$ and $T$, but not on their conjugate momenta, which is enough for its self-bracket to vanish.

**Conditional / not verified at a boundary:** every integration by parts assumes either closed $\Sigma$ or boundary conditions that kill surface terms. The paper states neither a joint boundary domain nor improved differentiable generators. For $\partial\Sigma\ne\varnothing$, Gauss, diffeomorphism, Hamiltonian, and χ charges may acquire boundary terms and edge modes.

**Not established:** a Lagrangian presymplectic current, hypersurface independence, corner flux, central extensions, BRST quantization, or a regional observable-algebra quotient.

# Translation to the vault programme

This paper supports a key distinction:

$$
\mathcal L_{\delta_\chi}\Omega=0
\quad\not\Rightarrow\quad
\delta_\chi\ \text{is gauge}.
$$

One must also check tangency to every constraint, first-class closure, and whether the transformation becomes a kernel direction of the pulled-back two-form. The explicit on-shell counterexample is stronger than a formal off-shell mismatch because it proves the obstruction is not merely proportional to existing constraints.

For regional sewing, however, the missing boundary data are decisive. The current analysis cannot be imported as a theorem about cut charges or edge modes until the differentiable generators, allowed traces, boundary symplectic term, and flux conditions are supplied.

Back to [[2026_09_09_overview]].
