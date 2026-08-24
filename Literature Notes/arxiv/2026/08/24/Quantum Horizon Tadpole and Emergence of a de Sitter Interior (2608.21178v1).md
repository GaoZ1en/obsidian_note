---
paper id: 2608.21178v1
title: "Quantum Horizon Tadpole and Emergence of a de Sitter Interior"
authors:
  - Chong-Sun Chu
publication date: 2026-08-21T22:50
abstract: |-
  A one-loop tadpole for the scaling mode of a fuzzy-sphere horizon produces a positive surface tension. Matching that tension across a null shell to a Schwarzschild exterior selects a de Sitter interior after staticity, spherical symmetry, vacuum, regularity, and a common horizon are imposed.
comments: "12 pages. no figure"
url: https://arxiv.org/abs/2608.21178v1
summary: "The surface-tension matching is algebraically consistent, but the de Sitter interior is conditional on strong geometric assumptions rather than derived from coupled matrix-gravity equations."
tags: []
---

# Compact verdict

**Direct verdict.** Correct under the following precise conditions: the fuzzy-sphere one-loop tadpole is accepted from the cited prior calculation; the exterior is fixed to Schwarzschild; the interior is static, spherically symmetric, vacuum, nonsingular, and shares the same Killing horizon; and the generalized null-shell junction formula used by the paper applies. Under those assumptions the interior is de Sitter and the lapse soldering is fixed. The paper does not derive that geometry from a coupled matrix-model plus Einstein action.

Reason codes: `T1-boundary`, `T2-dS-BH-holography`, `T2-model`.

# Main statements

For the normalized fuzzy-sphere scaling mode,

$$
B_a^{100}=\frac{J_a}{\sqrt{D_N}},\qquad
D_N=\frac{N(N^2-1)}4,\qquad
X_a=\left(1+\frac{q}{\sqrt{D_N}}\right)J_a,
$$

the one-loop effective potential contains a linear term

$$
V_{\rm eff}(q)=\cdots+\frac{\Omega_0}{2}A_{10}q
+\frac{2M_P}{N^2}\Lambda_{\rm eff}q^2+\cdots,
$$

with $A_{10}=\frac83N^{3/2}+O(N^{1/2})$. The corresponding horizon source is interpreted as the positive surface tension

$$
\tau_{\rm FS}
=\frac{a_0M_P}{6\pi\ell_P^2}\left(1+O(N^{-1})\right),
\qquad a_0=\frac\pi3.
$$

For

$$
ds^2=-f(r)dt^2+\frac{dr^2}{h(r)}+r^2d\Omega_2^2,
\qquad
\kappa=\frac12\sqrt{\frac hf}\,f',
$$

the adopted horizon junction condition gives only a tangential surface stress,

$$
S^A{}_B=\tau_H\delta^A{}_B,
\qquad
\tau_H=\frac{[\kappa]}{8\pi G}.
$$

Regular vacuum spherical symmetry sets the interior mass parameter to zero. Requiring the same horizon radius $R$ then yields

$$
f_+(r)=1-\frac Rr,
\qquad
f_-(r)=1-\frac{r^2}{R^2},
$$

so the second metric is de Sitter. With interior lapse factor $C^2$,

$$
\kappa_+=\frac1{2R},\qquad
\kappa_-=-\frac CR,
$$

and matching $\tau_H=\tau_{\rm FS}$ gives

$$
C+\frac12=\frac{4\pi N}{9b},
$$

using $R=N\ell_P$, $\ell_P^2=2G/\pi$, and $M_P=b^{-1}\sqrt{2/(\pi G)}$.

# Verification ledger

## Source-derived

- The complete official TeX source and 12-page manuscript were inspected.
- The one-loop coefficients and tadpole are imported from the author's previous fuzzy-sphere calculation; the present paper does not rederive all fluctuation determinants.

## Checked

- Mathematica reproduced
  $$
  8\pi G R\tau_{\rm FS}=\frac{4\pi N}{9b},
  $$
  and therefore the stated soldering relation.
- Substituting the Schwarzschild and de Sitter functions into the paper's surface-gravity definition gives $\kappa_+=1/(2R)$ and $\kappa_-=-C/R$.
- The de Sitter conclusion follows only after the paper's static, spherical, vacuum, regular-interior, common-horizon assumptions are imposed; it is not forced by the tadpole alone.

## Not independently verified

- The previous paper's one-loop tadpole coefficient was not recomputed from its matrix fluctuation spectrum.
- The generalized null-shell junction formula, including its sign and normalization conventions, was not independently derived from a null-boundary variational principle.
- No coupled matrix-gravity solution, stability analysis, or dynamical formation mechanism is supplied. The cosmological discussion is speculative.

# Relevance

This is a boundary-response example in which a quantum source is matched to a geometric jump condition. It is useful as a cautionary comparison for gluing: the surface mode supplies a response, while the bulk phase spaces and their boundary conditions must still be derived before the matching can be called a dynamical composition theorem.
