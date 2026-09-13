---
paper id: 2609.07765v1
title: "(Anti-)De Sitter null strings and Carroll-Weyl symmetry"
authors:
  - Ulf Lindström
  - Bo Sundborg
publication date: 2026-09-07T17:12
abstract: |-
  A Carroll-Weyl invariant null-string action in an ambient flat space is reduced by a local target-space scale gauge symmetry. Fixing the scale to a de Sitter or anti-de Sitter quadric produces a tensionless string with a curved d-dimensional target and an algebraically reconstructed metric.
comments: "8 pages, no figures"
url: https://arxiv.org/abs/2609.07765v1
summary: "The reduced-target interpretation is well motivated, but the displayed momentum Dirac bracket has the wrong sign relative to the paper's own bracket definition."
tags: []
---

# Why this is high priority

Reason codes: `T1-symmetry`, `T2-celestial-carrollian`, `T2-model`.

The paper starts from an action, identifies a local scale symmetry, performs an explicit Dirac reduction, and reads the physical target metric from the reduced brackets. It is therefore a compact gauge-reduction test case for the vault's action-first programme, with Carroll-Weyl symmetry and (A)dS target geometry appearing in one calculation.

# Direct verdict

**Incorrect as written:** Eq. (4.1) has the wrong sign. With the canonical convention $\{X^M,P_N\}=\delta^M_N$ and the Dirac bracket defined in Eq. (3.7), one obtains

$$
\{P_M,P_N\}_D=-\frac1{R^2}M_{MN},
\qquad
M_{MN}=X_MP_N-X_NP_M,
$$

not $+M_{MN}/R^2$.

**Correct after that sign repair:** fixing the local scale symmetry by $X^2=R^2$ removes one target coordinate and its conjugate momentum, the reduced bracket projects momenta tangent to the de Sitter quadric, and the reconstructed metric is the induced $dS_d$ metric. The AdS extension is stated by changing the ambient signature and quadric sign; it is not worked through in the same detail.

# Complete source map

1. **Introduction:** contrasts null/tensionless strings and motivates a new de Sitter interpretation of the Carroll-Weyl model.
2. **The de Sitter null string:** gauges local target-space rescaling in the ambient action and notes the loss of translations but retention of $SO(1,d)$.
3. **Dirac analysis:** obtains three first-class constraints, fixes the scale constraint with the de Sitter quadric, and computes the Dirac bracket.
4. **de Sitter symmetries:** derives the reduced momentum and Lorentz-generator algebra; this section contains the sign error.
5. **Canonical coordinates and metric:** projects to $d$ independent coordinates, constructs canonical momenta, and inverts the reduced quadratic form.
6. **Conclusion:** interprets the system as a $d$-dimensional (A)dS null string and leaves quantization and holographic applications open.

# Gauged action and symmetry

The ambient target is $\mathbb R^{1,d}$ with coordinates $X^M$. The action is

$$
S=\int d^2\sigma\,V^aV^bD_aX^M D_bX^N\eta_{MN},
\qquad
D_a=\partial_a+W_a.
$$

It is invariant under the local scale symmetry

$$
\delta X^M=\phi X^M,
\qquad
\delta V^a=-\phi V^a,
\qquad
\delta W_a=-\partial_a\phi.
$$

Because $W_aX^M$ selects the ambient origin, target translations are broken; the surviving global group is $SO(1,d)$. The ambient $d+1$ coordinates therefore should not be interpreted as gauge-invariant Minkowski target coordinates.

# Constraints and gauge fixing

After auxiliary variables decouple, the Hamiltonian is a sum of

$$
\varphi_{P^2}=P^2,
\qquad
\varphi_{X'\cdot P}=X'\cdot P,
\qquad
\varphi_{X\cdot P}=X\cdot P.
$$

The last constraint generates the local target scaling. It is fixed by

$$
\psi_{dS}=X^2-R^2=0.
$$

The second-class pair obeys

$$
\{\psi_{dS}(\sigma),\varphi_{X\cdot P}(\sigma')\}
\approx2R^2\delta(\sigma-\sigma').
$$

The remaining brackets with $P^2$ and $X'\cdot P$ vanish weakly, so the standard null-string constraints survive the scale fixing.

The paper calls $\approx$ “weak inequality”; the correct term is **weak equality**.

# Dirac bracket and sign audit

The paper defines

$$
\begin{aligned}
\{A,B\}_D=\{A,B\}-\frac1{2R^2}\int d\sigma'\big[&
\{A,X\cdot P\}\{X^2,B\}\\
&-\{A,X^2\}\{X\cdot P,B\}\big].
\end{aligned}
$$

This correctly gives

$$
\{X^M,X^N\}_D=0,
$$

$$
\{X^M,P_N\}_D
=\delta^M_N-\frac{X^MX_N}{R^2}.
$$

For the momentum bracket, however, direct substitution yields

$$
\begin{aligned}
\{P_M,P_N\}_D
&=-\frac1{2R^2}left[(-P_M)(2X_N)-(-2X_M)(P_N)\right]\\
&=-\frac1{R^2}(X_MP_N-X_NP_M).
\end{aligned}
$$

In Eq. (4.1), the second term from Eq. (3.7) is assigned the wrong sign, producing the paper's erroneous plus sign. With an extra spacelike embedding direction, the corrected minus sign is also the one appropriate to the $SO(1,d)$ de Sitter algebra.

# Reconstructing the target metric

Write the tangential momentum projector as

$$
P_M=E_M{}^N\Pi_N,
\qquad
E_N{}^K=\delta_N^K-\frac{X^KX_N}{R^2}.
$$

On $X^2=R^2$,

$$
H^{KL}=E_M{}^K\eta^{MN}E_N{}^L
=\eta^{KL}-\frac{X^KX^L}{R^2}.
$$

This ambient tensor is degenerate along $X_L$, as it must be before quotienting the normal direction. Choose independent coordinates $X^m$, $m=0,\ldots,d-1$. The invertible block is

$$
H^{mn}=\eta^{mn}-\frac{X^mX^n}{R^2},
$$

with inverse

$$
g_{mn}=\eta_{mn}
+\frac{X_mX_n}{R^2-X^k\eta_{kl}X^l}.
$$

The constraint $X\cdot P=0$ gives canonical reduced momenta

$$
\Pi_n=P_n-\frac{X_n}{X^d}P_d,
$$

for which $\{X^m,\Pi_n\}_D=\delta^m_n$ and $\{\Pi_m,\Pi_n\}_D=0$. The null constraint becomes

$$
P^2=\Pi_mH^{mn}\Pi_n=0,
$$

and Legendre transformation produces the standard tensionless-string action in the metric $g_{mn}$.

# What is and is not physical

$R$ enters as a nonzero gauge-fixing constant for the scale symmetry. Within this classical model, changing $R$ corresponds to a different representative of the same scale orbit, so no dimensionful de Sitter radius is generated dynamically. Any claim that distinct $R$ values define physically inequivalent quantum theories would require a gauge-fixing and quantization analysis not present here.

The reduced Carroll-Weyl symmetry is gauge fixed; it is a symmetry of the ambient formulation, not an additional global symmetry of the final $d$-dimensional action.

# Independent checks

**Checked (rendered PDF, TeX source, Mathematica, and direct Dirac algebra):**

- The rendered Eq. (3.7) and Eq. (4.1) agree with the source and exhibit the sign inconsistency described above.
- In a three-dimensional ambient test with signature $(-,+,+)$, Mathematica reproduces
  $$
  \{X^M,P_N\}_D=\delta^M_N-X^MX_N/R^2
  $$
  with zero componentwise residual.
- The same calculation gives $\{P_M,P_N\}_D=-M_{MN}/R^2$ exactly; comparison with the paper's plus sign gives a nonzero residual for generic phase-space data.
- Matrix multiplication verifies exactly that
  $$
  \left(\eta^{mn}-\frac{X^mX^n}{R^2}\right)
  \left(\eta_{nk}+\frac{X_nX_k}{R^2-X^2}\right)=\delta^m_k.
  $$
- The scale transformation gives $\delta(D_aX^M)=\phi D_aX^M$, so the two factors of $V$ cancel the two covariant-derivative weights in the action.

**Source-derived:** decoupling of $(V,P_V)$ and $(W,P_W)$ in the full Dirac algorithm, the complete first-class constraint algebra with worldsheet delta functions, and the final Legendre transform.

**Not independently verified:** quantum spectrum, equivalence of all gauges after quantization, or any AdS/CFT consequence.

# Translation to the vault programme

The paper is a useful demonstration that a curved physical phase space can arise from constraint reduction even when the starting coordinates live in a flat ambient vector space. The essential data are the first-class scale constraint, an admissible gauge slice, the complete second-class matrix, and the corrected Dirac bracket.

It also shows why sign auditing cannot stop at a claimed symmetry algebra: the projector bracket and the momentum bracket must come from one consistent Dirac matrix. This construction concerns target-space gauge reduction; it does not establish covariant-phase-space sewing, a regional response operator, or an observable-algebra quotient.

Back to [[2026_09_09_overview]].
