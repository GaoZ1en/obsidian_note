---
paper id: 2609.34533v1
title: Classical BV Pushforward
authors:
- Geng, Xin
- Losev, Andrey
- Lysov, Vyacheslav
publication date: '2026-09-28T08:02:19Z'
abstract: We define the classical BV pushforward and establish its two main properties.
  First, we prove that it maps solutions of the classical master equation (CME) on
  the total space to solutions of the CME on the smaller space. Second, we prove that,
  for isolated critical points, it maps BV canonically equivalent solutions to BV
  canonically equivalent solutions. We illustrate the construction with examples and
  discuss its applications.
comments: 14 pages
url: https://arxiv.org/abs/2609.34533v1
summary: Classical elimination on a BV Lagrangian preserves the CME along smooth branches;
  canonical descent needs a nondegenerate fibre Hessian, and explicit source sign
  defects are isolated.
tags: []
---

# Classical elimination on an odd symplectic product

The reusable result is a classical residual-action construction: restrict a BV action to a fibre Lagrangian and evaluate it on a smooth critical branch. The CME descends by the chain rule. Canonical equivalence descends under the stronger hypothesis actually used in the proof, namely a nondegenerate fibre Hessian and a smoothly continued branch. The word “isolated” in Theorem 3.8 does not establish these hypotheses.

Source: [2609.34533v1](https://arxiv.org/abs/2609.34533v1). The complete PDF and TeX were read, including all examples and the concluding quantization proposal. Context: [[2026_09_30_overview]]. This note reconstructs the source and then records independent checks; it is not a quantum sewing theorem.

## Source map and conventions

| Source | Role in the argument |
|---|---|
| §1 | Defines the aim: classical elimination without assuming a quantum lift or a functional integral. |
| §§2.1–2.3, (2.1)–(2.11) | Quantum BV fibre integral, Stokes property, QME and quantum canonical equivalence. |
| §§2.4–2.5, (2.12)–(2.15) | CME and branchwise saddle interpretation. |
| §2.6, (2.16)–(2.22) | Undefined infinite-dimensional Laplacian, quantum obstruction, divergent integrals, multiple saddles. |
| §§3.1–3.2, (3.1)–(3.8) | Critical section, envelope identity, CME descent. |
| §3.3, (3.9)–(3.18) | Hessian identity, counterexample with a critical locus, descent of canonical generators. |
| §4, Examples 4.1–4.2 | Eliminate one coordinate in an SO(n+1) BV model; induced quadratic antifield term and a canonical-change example. |
| §5 | Suggests classical reduction followed by quantization; does not prove equivalence with quantum pushforward. |

There are no appendices. The PDF has a title page followed by printed pages 1–13. Formula references below use printed numbering; PDF page 7 is printed page 6.

The source uses $M=\mathbf M\times\mathcal M$, with residual odd symplectic space $(\mathbf M,\Omega)$ and fibre $(\mathcal M,\omega)$. The residual coordinates are $(\Phi^a,\Phi_a^*)$, and fibre Darboux coordinates $(\varphi^\alpha,\varphi_\alpha^*)$ are adapted to

$$
\mathcal L=\{\varphi_\alpha^*=0\},\qquad
|\Phi_a^*|=|\Phi^a|+1,\qquad
|\varphi_\alpha^*|=|\varphi^\alpha|+1\pmod2.
$$

The action $\mathcal S$ is even. In the source's displayed convention, with left derivatives and products in the displayed order,

$$
\frac12\{\mathcal S,\mathcal S\}
=\sum_a(-1)^{|\Phi^a|}\mathcal S_{,\Phi^a}\mathcal S_{,\Phi_a^*}
+\sum_\alpha(-1)^{|\varphi^\alpha|}\mathcal S_{,\varphi^\alpha}\mathcal S_{,\varphi_\alpha^*}.
\tag{3.1}
$$

The parity factors cannot be discarded in the ghost sector. No spacetime boundary condition or gauge-field PDE is supplied here: $\mathcal L$ is a fibre gauge-fixing choice in a product odd symplectic space. For field theory, a product splitting, admissible boundary conditions and a smooth solution map must be supplied separately.

## Quantum motivation and its limits

With compatible Berezinians, the fibre integral acts on half-densities and obeys

$$
P_*^{(\mathcal L)}\Delta=\mathbf\Delta P_*^{(\mathcal L)}.
$$

The gauge-fixing homotopy statement is a chain-homotopy assertion; on $\Delta$-closed inputs it produces a $\mathbf\Delta$-exact difference. It should not be read as an unrestricted assertion that differences of pushforward operators have only a left-$\mathbf\Delta$ term on arbitrary inputs. The existence/convergence or formal meaning of the integral is an input.

For $e^{i\mathcal S/\hbar}$,

$$
\frac12\{\mathcal S,\mathcal S\}=i\hbar\Delta\mathcal S,
\qquad
\mathcal S=\mathcal S_0+(-i\hbar)\mathcal S_1+(-i\hbar)^2\mathcal S_2+\cdots,
$$

so

$$
\{\mathcal S_0,\mathcal S_0\}=0,\qquad
\{\mathcal S_0,\mathcal S_1\}=-\Delta\mathcal S_0,
\qquad
\{\mathcal S_0,\mathcal S_2\}+\tfrac12\{\mathcal S_1,\mathcal S_1\}=-\Delta\mathcal S_1.
$$

The quantum transformation is $\dot{\mathcal S}_t=\{\mathcal S_t,\mathcal R_t\}-i\hbar\Delta\mathcal R_t$, whereas its classical version has no Laplacian term. Stationary phase motivates evaluation at critical values. With several saddles, the integral is a sum of exponentials with distinct critical actions and determinant factors; it is not one ordinary power-series action without a branch prescription. The source's schematic (2.14) is not a complete stationary-phase prefactor formula.

Four obstructions motivate doing the classical construction directly: an undefined functional BV Laplacian, a nonzero obstruction class $[\Delta\mathcal S_0]$ in $D_{\mathcal S_0}$-cohomology, an undefined integral, or a multi-saddle result. For Example 2.17, $c\sum_{n\in\mathbb Z}2\pi i n$ is not an absolutely convergent sum. Symmetric finite cutoffs give zero, but this is a specified regularization, not a canonical definition of the infinite-dimensional $\Delta$.

### The sign in Example 2.18

The source takes $\mathcal S_0=c\phi\phi^*$ and prints

$$
D_{\mathcal S_0}
=-\phi\phi^*\partial_{c^*}-c\phi\partial_\phi+c\phi^*\partial_{\phi^*},
\qquad \Delta\mathcal S_0=-c.
$$

Equation (2.22) then solves $D_{\mathcal S_0}\mathcal S_1=\Delta\mathcal S_0$ with $\mathcal S_1=\log\phi$. This disagrees with (2.8) and (2.16), which require the negative Laplacian. In those conventions the local correction is

$$
\mathcal S_1=-\log\phi,\qquad \phi\ne0
$$

with a chosen logarithm branch. Mathematica gives $D\log\phi+\Delta\mathcal S_0=-2c$ and $D(-\log\phi)+\Delta\mathcal S_0=0$. The polynomial obstruction survives the correction: restricting the coefficient of $c$ to $\phi^*=c^*=0$ requires $\phi f'(\phi)=-1$, which has no polynomial solution. Thus the motivating obstruction is useful even though the displayed quantum-correction sign is incorrect.

## The critical section and the CME

Restrict the action and choose a branch over an open set $U\subset\mathbf M$:

$$
\mathcal S_{\mathcal L}(\Phi,\Phi^*,\varphi)
=\mathcal S(\Phi,\Phi^*,\varphi,0),\qquad
\partial_{\varphi^\alpha}\mathcal S_{\mathcal L}\big|_{\varphi_{\rm cl}}=0.
$$

A critical point at a single value of the parameters is not yet a function on $U$. Assume a smooth critical section $\varphi_{\rm cl}(\Phi,\Phi^*)$ and set

$$
\mathbf S(\Phi,\Phi^*)
=\mathcal S(\Phi,\Phi^*,\varphi_{\rm cl}(\Phi,\Phi^*),0).
\tag{3.3}
$$

The chain rule gives the envelope identity

$$
\partial_{\Phi^a}\mathbf S
=\partial_{\Phi^a}\mathcal S\big|
+\partial_{\Phi^a}\varphi_{\rm cl}^\alpha\,
\partial_{\varphi^\alpha}\mathcal S\big|
=\partial_{\Phi^a}\mathcal S\big|,
$$

and similarly for $\Phi_a^*$. Here $|$ denotes restriction to the graph of the critical section in $\mathcal L$. Consequently,

$$
\begin{aligned}
\frac12\{\mathbf S,\mathbf S\}_{\mathbf M}
&=\frac12\{\mathcal S,\mathcal S\}\big|
-\sum_\alpha(-1)^{|\varphi^\alpha|}
\partial_{\varphi^\alpha}\mathcal S\,
\partial_{\varphi_\alpha^*}\mathcal S\big|\\
&=\frac12\{\mathcal S,\mathcal S\}\big|.
\end{aligned}
$$

This proves Theorem 3.4 locally along the chosen smooth branch. It also proves the curved identity (3.8) without imposing the total-space CME. No inverse Hessian, measure, quantum action or integral is needed at this stage. A critical submanifold can give the same critical value along a connected fibre component, but it does not automatically provide a globally smooth single-valued residual action.

## Descent of canonical transformations

Let $H_{\alpha\beta}=\partial_{\varphi^\alpha}\partial_{\varphi^\beta}\mathcal S|$. Differentiating the critical equation gives

$$
\partial_{\Phi^a}\partial_{\varphi^\beta}\mathcal S\big|
+\partial_{\Phi^a}\varphi_{\rm cl}^\alpha H_{\alpha\beta}=0.
\tag{3.10}
$$

Differentiate the total CME, substitute this relation and its antifield analogue, and retain the source's graded order. The result preceding (3.12) is

$$
\left(\{\mathbf S,\varphi_{\rm cl}^\alpha\}_{\mathbf M}
-(-1)^{|\varphi^\alpha|}\partial_{\varphi_\alpha^*}\mathcal S\big|\right)
H_{\alpha\beta}=0.
$$

If $H$ is invertible as the appropriate graded Hessian, the parenthesis vanishes: this is Lemma 3.6. It expresses tangency of the Hamiltonian BV differential to the critical graph.

For a total-space odd generator $\mathcal R$, let $\mathbf R=\mathcal R|$. Under $\mathcal S' =\mathcal S+\epsilon\{\mathcal S,\mathcal R\}$, stationarity eliminates the first-order displacement of the critical point:

$$
\mathbf S'-\mathbf S=\epsilon\{\mathcal S,\mathcal R\}|+O(\epsilon^2).
$$

The chain rule for $\mathbf R$ contains derivatives of $\varphi_{\rm cl}$, unlike the envelope identity for $\mathbf S$. Those terms are precisely cancelled by Lemma 3.6, yielding

$$
\{\mathcal S,\mathcal R\}|=\{\mathbf S,\mathbf R\}_{\mathbf M},\qquad
\dot{\mathbf S}_t=\{\mathbf S_t,\mathbf R_t\}_{\mathbf M}.
$$

Finite equivalence requires a smooth family of admissible critical branches throughout the path. The source calls the point “isolated” in Theorem 3.8, but isolated critical points can have zero Hessian. For example, $y^4/4$ has an isolated critical point at zero with $H=0$. The canonical deformation $\mathcal S_t=x+y^4/4-ty$, generated by $\mathcal R=-x^*y$, has $y_{\rm cl}=t^{1/3}$ for real $t>0$ and $\mathbf S_t=x-3t^{4/3}/4$. Neither the critical branch nor this action family is smooth at $t=0$. This diagnoses the missing continuation hypothesis in the proof; it does not establish that no other canonical equivalence can exist between the endpoint actions.

Example 3.7 makes the zero-mode problem explicit. With one even fibre coordinate $u$ and one odd coordinate $\eta$,

$$
\mathcal S=\tfrac12u^2+u+\Phi u\eta^*,\qquad
u\equiv u_{\rm cl}=-1,\qquad \eta_{\rm cl}\text{ arbitrary},\qquad
\mathbf S=-\tfrac12.
$$

Taking the section $\eta_{\rm cl}=0$ leaves a residual $-\Phi$ in the odd component of Lemma 3.6. The CME still descends, but the extra tangency assertion does not. In a regional theory, such null directions should normally remain residual variables until a valid additional reduction is specified.

## SO(n+1) elimination and the antifield correction

The source splits $\mathbb R^{n+1}=\mathbb R^n\oplus\mathbb R$ and introduces odd ghosts $C^{ab}=-C^{ba}$ and $B^a$, with even ghost antifields. Its Example 4.1 writes

$$
\begin{aligned}
\mathcal S&=\Phi^a\Phi_a+\varphi^2+Q+F,\\
Q&=C^{ab}\Phi_a\Phi_b^*+B^a\varphi\Phi_a^*-B^a\Phi_a\varphi^*,\\
F&=\delta_{bc}C^{ab}C^{cd}C^*_{ad}
+\delta_{ac}C^{bc}B^a B_b^*-B^aB^b C^*_{ab}.
\end{aligned}
$$

On $\varphi^*=0$, define the even nilpotent $A=B^a\Phi_a^*$. Then

$$
2\varphi+A=0,\qquad
\varphi_{\rm cl}=-\tfrac12A,\qquad
\varphi_{\rm cl}^2+A\varphi_{\rm cl}=-\tfrac14A^2
=\tfrac14 B^aB^b\Phi_a^*\Phi_b^*.
$$

The last sign follows by moving the odd antifield through the odd ghost. This gives the printed effective action and its on-shell-algebra antifield term as an algebraic elimination identity. It does not by itself prove that the printed starting action solves the CME.

### Convention-specific failure of the displayed ghost action

The literal Example 4.1 fails the source's (3.1) in explicit $n=2,3$ exterior-algebra checks using left derivatives. For $n=2$, take independent $C^{12}=c$, $C^{21}=-c$, $C^*_{12}=c^*/2$, $C^*_{21}=-c^*/2$ so that the full antisymmetric contraction is the canonical independent pairing. Write $B^i=b_i$, $\Phi_i^*=p_i$, $B_i^*=b_i^*$. Then

$$
F=c b_2 b_1^*-c b_1 b_2^*-b_1b_2 c^*,\qquad
\mathbf S=x_1^2+x_2^2+c(x_1p_2-x_2p_1)+F+\tfrac12b_1b_2p_1p_2,
$$

and direct evaluation yields

$$
\frac12\{\mathbf S,\mathbf S\}
=-2x_2b_1b_2p_1+2x_1b_1b_2p_2\ne0.
$$

Replacing $F$ by $-F$ makes both the total and effective CME residuals vanish in the tested $n=2,3$ cases. This is a scoped repair under the declared convention, not a proof for all $n$ or permission to silently change the paper's formula. The abstract CME-descent theorem does not depend on this example being written correctly.

In Example 4.2 the parameter $b^a$ must be odd for $\mathcal R=b^a\varphi^*\Phi_a^*$ to be odd. Its restriction is zero, so a valid descended transformation should leave $\mathbf S$ invariant. The printed coordinate shift gives $A'= (B^a+2b^a)\Phi_a^*$ and extra terms $-b^ab^b\Phi_a^*\Phi_b^*-B^ab^b\Phi_a^*\Phi_b^*$. Evaluating at $\varphi'_{\rm cl}=-A'/2$ cancels these extras and reproduces the same quartic term. This cancellation was checked with exterior multiplication; it remains distinct from the starting-action CME test.

## Translation to regional BV–BFV reduction

The direct input is an independently specified regional BV action, a residual/fibre symplectic splitting and a fibre Lagrangian. Solving only the eliminated equations gives a residual action, with induced antifield interactions encoding an open algebra. The Hessian controls whether a gauge-fixing change descends smoothly. A vanishing Hessian is a reason to retain modes or analyze the critical locus, not to divide by a singular propagator.

For a boundary theory with a modified CME, the source's curved identity suggests evaluating the total defect on the critical section. It does not itself identify that defect with the required BFV boundary charge, prove compatibility with the boundary map, or construct an interface kernel. In particular, neither matching regional fields nor this extremization alone proves transparent sewing, a residual pushforward measure, determinant normalization, or equality of quantum states.

The §5 route “reduce classically, then quantize” can be easier than quantizing a large field space. Equality with “quantize, then push forward” would require matching quantum corrections, anomalies and measures. No commuting-square theorem is proved here.

## Verification log

- **Source-derived:** quantum pushforward background; full section map; graded Hessian argument and canonical-generator construction; the proposal in §5. These have been reconstructed rather than replaced by a checklist.
- **Checked:** the local CME envelope proof above is a direct algebraic argument conditional on a smooth branch. Mathematica reproduced the QME first-order sign, both logarithmic residuals, the degenerate Hessian and the $t^{1/3}$ branch/critical value. Sage reproduced the Example 3.7 value and $-\Phi$ obstruction, the quartic elimination sign and Example 4.2 cancellation; full/effective CME tests were run at $n=2,3$.
- **Failed:** (2.22) has the opposite quantum-correction sign from (2.8)/(2.16), residual $-2c$. Example 4.1's literal $+F$ is not a CME solution in the explicit Darboux/left-derivative convention above; its $n=2$ residual is displayed. Dependent claims about that literal example are not used.
- **Blocked:** the proof does not justify canonical-equivalence descent for arbitrary isolated degenerate critical points, nor supply smooth global critical sections. No infinite-dimensional BV Laplacian, convergent functional measure, quantum lift or regional boundary prescription is supplied.
- **Not independently verified:** global gluing of Darboux charts, general infinite-dimensional analytic existence, arbitrary-$n$ repaired SO(n+1) CME, and any equivalence of the two quantization routes.

**Verified:** the explicitly scoped algebra, finite exterior-algebra examples and sign repairs above. **Assumptions:** characteristic zero; left graded derivatives; fixed fibre Lagrangian; smooth critical section; invertible graded Hessian only where invoked; $b^a$ odd; $\phi\ne0$ and a logarithm branch for the local quantum correction. **Not verified:** full quantum or BV–BFV sewing.

Retrieval: versioned official PDF and TeX succeeded. A PDF font-type warning was resolved for formula reading by TeX comparison and a rendered inspection of PDF page 7. The first general Sage monomial constructor raised `TypeError: Cannot convert tuple to sage.data_structures.bitset.FrozenBitset`; replacing that helper by ordered generator products recovered the checks. This was a harness error, not mathematical evidence. No remaining computation-service or source-access blocker. All retrieval artifacts remain outside the vault.
