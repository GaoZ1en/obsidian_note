---
paper id: 2609.03197v1
title: Computational Algorithms for Invariant Reduction of Variational Forms
authors:
  - Kostya Druzhkov
  - Alexey Shevyakov
publication date: 2026-09-02T22:26
abstract: |-
  The paper turns the invariant reduction of conservation laws, variational 1-forms, and presymplectic structures into one characteristic-based computation. Variational p-forms are represented as conservation laws of a degree-shifted tangent system with anticommuting perturbations; this yields a homotopy algorithm for evolution systems, a descent algorithm for general ell-normal systems at positive internal degree, and shortcuts for point symmetries and quotient systems.
comments: "43 pages; the official arXiv comments link a Maple 2026 implementation with six worked-example worksheets"
url: https://arxiv.org/abs/2609.03197v1
summary: "A concrete bridge from PDE symmetry reduction to reduced variational and presymplectic data, with explicit hypotheses that matter before importing it into covariant phase-space gluing."
tags: []
---

Daily overview: [[2026_09_04_overview]]

# Verdict

**Correct under the paper's stated local and regularity hypotheses.** The evolution-system algorithm is an explicit reduction procedure for symmetry-invariant conservation laws of the shifted tangent system, while the general descent theorem additionally assumes regularity, $\ell$-normality, $p\geq 1$, and a no-left-annihilator condition on $l_F|_{\mathcal E_X}$. The paper does not prove a global quotient theorem, a gauge-reduced CPS theorem, or a boundary/corner gluing result.

Reason codes: `T1-symplectic`, `T3-math`.

# How to read this long paper

- **Essential:** §§3–6 for the shifted tangent representation, invariant-reduction mechanism, evolution algorithm, and general descent theorem.
- **Application layer:** §§7–8 for point-symmetry shortcuts, quotient systems, and the six worked examples.
- **Technical reference:** §2 and Appendices A, C, D for jet notation, graded signs, the descent proof, bicomplex input, and the homotopy.
- **Implementation reference:** Appendix B and the linked Maple repository. The executable worksheets require Maple 2026 with `DifferentialGeometry` and `JetCalculus`.

# Source map

1. **§1 Introduction:** identifies the missing computational counterpart of invariant reduction and states three contributions.
2. **§2 Notation and dictionary:** defines jets, Cartan forms, horizontal/contact bicomplexes, differential equations, regularity, $\ell$-normality, variational forms, and the application-oriented dictionary.
3. **§3 Variational forms as conservation laws:** encodes variational $p$-forms as internal-degree-$p$ conservation laws of the shifted tangent system $\mathfrak T[1]\mathcal E$.
4. **§4 Invariant reduction:** recalls that an $X$-invariant cohomology class has a Lie derivative that is horizontally exact and identifies its potential as the reduced structure on $\mathcal E_X$.
5. **§5 Evolution algorithm:** gives the three steps—an invariance check, integration by parts, and a total horizontal homotopy—and an explicit Maple implementation.
6. **§6 General descent:** removes the evolution-form requirement for $p\geq1$ under the theorem's hypotheses by lowering the differential-operator order one symbol layer at a time.
7. **§7 Flow-generating symmetries:** simplifies the construction for point symmetries and relates reduction on $\mathcal E_X$ to structures on a quotient system $\mathcal S$.
8. **§8 Worked examples:** KdV, the running $(1+2)$-dimensional equation, a higher symmetry of the cotangent Pavlov system, Laplace, and incompressible Euler.
9. **§9 Discussion:** records the method's computational and conceptual limits.
10. **Appendix A:** fixes graded-commutative signs and the form/polynomial correspondence.
11. **Appendix B:** supplies the Maple evolution-algorithm code.
12. **Appendix C:** proves the descent theorem and the quotient-system isomorphism used in §7.
13. **Appendix D:** constructs the symbol-lowering homotopy.

# Theory, notation, and assumptions

## Jet-space data

The ambient infinite jet space is $J^\infty(n,m)$ with independent variables $x=(x^1,\ldots,x^n)$, fields $u=(u^1,\ldots,u^m)$, jets $u^i_\alpha$, and total derivatives

$$
D_{x^i}=\partial_{x^i}+u^j_{\alpha+x^i}\partial_{u^j_\alpha}.
$$

Cartan 1-forms are

$$
\theta^j_\alpha=du^j_\alpha-u^j_{\alpha+x^i}dx^i.
$$

The quotient modules $E_0^{p,k}=\mathcal C^p\Lambda^{p+k}/\mathcal C^{p+1}\Lambda^{p+k}$ carry the horizontal differential $d_0$ and the vertical differential $d_v=d-d_0$. The first-page cohomology $E_1^{p,k}$ contains conservation laws at $p=0$, variational 1-forms at $p=1$, and variational 2-forms at $p=2$; a presymplectic structure is additionally $d_1$-closed.

## Equation and symmetry data

A system $F=0$ has infinite prolongation

$$
\mathcal E=\{D_\alpha F^i=0\}.
$$

Its linearization is $l_F(\varphi)=E_\varphi(F)$. The paper assumes local regularity of the differential ideal and a finite-dimensional inverse-limit presentation; it also assumes trivial positive-degree de Rham cohomology for the systems used in the reduction argument.

$\mathcal E$ is called $\ell$-normal when a total differential operator $\Delta$ satisfying $\Delta\circ l_\mathcal E=0$ must vanish. Evolution and extended Kovalevskaya systems provide the principal class of examples.

For a symmetry $X=E_\varphi|_\mathcal E$, the invariant subsystem is obtained by adjoining $\varphi=0$ and its differential consequences; this is $\mathcal E_X$. This is a formal local PDE reduction, not automatically a smooth global orbit-space quotient.

## Shifted tangent system

Append anticommuting perturbations $q^i_\alpha$ and the linearized equation:

$$
\mathfrak T[1]\mathcal E:\qquad F=0,\qquad l_F(q)=0.
$$

Internal degree counts powers of $q$. The correspondence is

$$
\theta^{i_1}_{\alpha_1}\wedge\cdots\wedge\theta^{i_p}_{\alpha_p}\wedge\xi
\longleftrightarrow
q^{i_1}_{\alpha_1}\cdots q^{i_p}_{\alpha_p}\,\xi.
$$

Thus a variational $p$-form on $\mathcal E$ becomes an ordinary horizontal conservation law of $\mathfrak T[1]\mathcal E$ with internal degree $p$. The lift of $X$ is

$$
\mathcal X=E_{\widetilde\varphi},qquad
\widetilde\varphi=(\varphi,E_q\varphi).
$$

# Main mechanism and derivation map

Let $\omega\in E_0^{p,n-1}(\mathcal E)$ represent an $X$-invariant class. Invariance means that its Lie derivative is horizontally exact:

$$
\mathcal L_X\omega=(-1)^p d_0\vartheta.
$$

The restriction $\vartheta|_{\mathcal E_X}$ represents the reduced class in $E_1^{p,n-2}(\mathcal E_X)$. On the shifted tangent system, the same equation is an ordinary conservation-law potential equation for $\omega'$ and the lifted symmetry $\mathcal X$.

The logic is therefore

$$
\text{variational }p\text{-form}
\to \text{degree-}p\text{ conservation law of }\mathfrak T[1]\mathcal E
\to \mathcal X\text{-invariance}
\to d_0\text{-potential}
\to \text{restriction to }\mathcal E_X.
$$

# Algorithm 1: evolution systems

For

$$
F^i=u^i_t-f^i=0,
$$

write the shifted system as $\widetilde F=(F_0,F_1)$ and a left conservation-law characteristic as $(\psi'^p,\psi'^{p-1})$. The right characteristic is

$$
\psi_r=(\psi'^p,(-1)^{p-1}\psi'^{p-1}).
$$

The algorithm is:

1. **Invariance:** check

   $$
   E_{\widetilde\varphi}(\psi_r)+l^*_{\widetilde\varphi}(\psi_r)=0.
   $$

2. **Integration by parts:** construct $A$ such that

   $$
   \langle l_{\widetilde\varphi}(\widetilde F),\psi_r\rangle
   -\langle\widetilde F,l^*_{\widetilde\varphi}(\psi_r)\rangle
   =d_0(A\widetilde F).
   $$

3. **Horizontal homotopy:** solve

   $$
   \mathcal L_{E_{\widetilde\varphi}}\widehat\omega'-A\widetilde F
   =d_0((-1)^p\widehat\vartheta').
   $$

Then $\widehat\vartheta'|_{\mathfrak T[1]\mathcal E}$ corresponds to the reduced variational form on $\mathcal E_X$. At $p=0$ this is ordinary conservation-law reduction; $p=1,2$ give variational 1-forms and variational/presymplectic 2-forms.

# The general descent theorem

For an $\ell$-normal system and $p\geq1$, let $\psi$ be the internal-degree-$(p-1)$ part of the shifted-system characteristic, let $E_\varphi(F)=\Phi(F)$, and integrate by parts to obtain

$$
\psi(\Phi(F))=(\Phi^*_{(p-1)}\psi)F+d_0\nu(F).
$$

Theorem 1 constructs

$$
\gamma:\varkappa(n,m)\to E_0^{p-1,n-2}(n,m)
$$

with

$$
(\nu\circ l_F-\gamma_{\widehat\omega}\circ l_\varphi)|_{\mathcal E_X}
=d_0\circ\gamma|_{\mathcal E_X}.
$$

Alternatizing $\gamma$ gives a form $\widehat\omega_\gamma|_{\mathcal E_X}$. It represents the reduced class provided there is no nonzero total differential operator $\square$ satisfying

$$
\square\circ l_F|_{\mathcal E_X}=0.
$$

The constructive descent repeatedly removes the highest-order symbol with the Appendix-D homotopy. This is the non-evolution analogue of integration by parts, but it applies here only for positive internal degree.

# Point symmetries and quotient systems

When the symmetry is equivalent to $\partial_\tau$ and the equation is $\tau$-independent, the invariant system can descend to a quotient system $\mathcal S$ with one fewer independent variable. Under the paper's compatibility and $\ell$-normality assumptions, the relevant first-page groups on $\mathcal S$ and $\mathcal E_X$ are isomorphic. For an invariant ambient representative, the reduction can collapse to contraction with the point-symmetry generator, as in the KdV and Euler examples.

This is the closest part of the paper to regional reduction, but the quotient is a symmetry quotient of a formal PDE system; it is not the physical quotient by gauge degeneracies of a covariant presymplectic form.

# Worked-example ledger

| Example | Input structure | Reduction output | Scope |
|---|---|---|---|
| KdV traveling wave | mass and energy conservation laws | first integrals $I_1,I_2$ of the traveling-wave ODE | $p=0$, point-symmetry shortcut |
| $u_t=u_x^2+u_{xxx}+u_{xxy}$ | cosymmetry and variational 1-form | presymplectic operator $D_x|_\mathcal E$ | shows the shifted-tangent chain |
| Same equation, nontrivial point symmetry | degree-2 shifted-system conservation law | reduced presymplectic operator $4D_\mu|_\mathcal S$ | full Algorithm 1 plus quotient check |
| Cotangent Pavlov system | conservation law | reduced conservation law/differential covering | higher symmetry, outside Anderson–Fels point-symmetry reach |
| Laplace equation | presymplectic 2-form | $(y\theta_y+x\theta_x)\wedge\theta$ on rotational invariants | general descent without evolution form |
| 2D incompressible Euler | energy conservation law | rotational energy-balance law | direct contraction shortcut |

# Reproducible checks

For the KdV traveling-wave equation

$$
U'''+UU'+cU'=0,
$$

the two reduced quantities are

$$
I_1=\frac{1}{2}U^2+U^{\prime\prime}+cU,
$$

$$
I_2=\frac{1}{3}U^3+U U^{\prime\prime}-\frac{1}{2}(U^{\prime})^2+\frac{c}{2}U^2.
$$

For the running $(1+2)$-dimensional equation, the paper uses

$$
F=u_t-u_x^2-u_{xxx}-u_{xxy}
$$

and

$$
\lambda=\frac{1}{2}u_t u_x+\frac{1}{2}u_{xx}(u_{xx}+u_{xy})-\frac{1}{3}u_x^3.
$$

The scaling characteristic is

$$
\varphi_s=u+3tu_t+xu_x+yu_y,
$$

and the associated cosymmetry is

$$
\psi=2u_x+3tu_{tx}+xu_{xx}+yu_{xy}.
$$

## Verification log

- **Checked:** Mathematica gives $D_zI_1-(U'''+UU'+cU')=0$ identically.
- **Checked:** Mathematica gives $D_zI_2-U(U'''+UU'+cU')=0$ identically.
- **Checked:** direct Euler-operator evaluation gives $\delta\lambda/\delta u=-D_xF$ exactly.
- **Checked:** $D_x\varphi_s-\psi=0$ identically on the ambient jet space.
- **Source-derived:** the 43-page PDF, TeX source, all section/appendix claims, and the linked code repository at commit `703c64ed0a027cb532bf238bb342e5018831b46c` were inspected. Rendered pages 16, 20, and 25 visually confirm the evolution algorithm, descent theorem, and quotient-example formulas.
- **Blocked:** Maple 2026 is not installed in the current environment, so the six official worksheets and their claimed 38 zero checkpoints were not independently executed. The files were retrieved and inventoried, but stored outputs are not independent verification.
- **Not independently verified:** the complete bicomplex proof of Theorem 1, column exactness, the general no-left-annihilator claim, the full $p=2$ homotopy output, the Pavlov reduction, and the global behavior of any quotient system.

# Translation to the vault's CPS and gluing language

The reusable object is not a new physical gluing product. It is a reduction pipeline for a local variational bicomplex:

$$
(\mathcal E,\omega,X)
\mapsto
(\mathcal E_X,[\vartheta]),
\qquad
\mathcal L_X\omega=(-1)^p d_0\vartheta.
$$

For action/CPS work, the most promising import is algorithmic handling of a presymplectic current represented as a variational 2-form. Before using it for gauge or regional sewing, one would still need:

1. a boundary-aware variational bicomplex rather than the paper's trivial positive-degree de Rham assumption;
2. a treatment of gauge identities, where $\ell$-normality typically fails because Noether identities provide nontrivial left annihilators of $l_F$;
3. control of corner terms and relative horizontal cohomology;
4. proof that the reduced representative descends through the physical gauge quotient;
5. compatibility with the vault's sign convention for the CPS symplectic current and with source/response boundary polarizations.

The immediate useful comparison is therefore with symmetry-reduced PDE/CPS examples, not with the scalar DtN/Schur sewing theorem itself. The paper supplies a computational language for reducing attached structures after a symmetry constraint; it does not supply interface composition or associativity.

# Limitations and stop rule

- Local formal jets are not global solution spaces.
- $\ell$-normality excludes the untreated gauge-complex case central to Maxwell and gravity.
- Trivial de Rham cohomology suppresses precisely the topology and boundary sectors that often carry charges.
- The general descent algorithm starts at $p\geq1$; conservation laws of non-evolution systems need other machinery.
- Homotopy representatives are defined only up to $d_0$-exact terms.
- A worksheet regression, even if all 38 checkpoints pass, would verify only those finite symbolic identities; it would not prove the continuum hypotheses or global quotient claims.

**Stop rule:** use this paper as a computational reduction reference only after the target PDE system, symmetry, cohomology class, regularity, and left-annihilator assumptions have been written explicitly. Do not cite it as a gauge-reduced CPS or regional gluing theorem.
