---
paper id: 2607.20687v1
title: A First-Order Gauge Approach to de Sitter General Relativity
authors:
  - P. Salgado
publication date: 2026-07-22T19:38
abstract: |-
  The paper proposes a first-order de Sitter gauge formulation in which the pseudo-radius l(x) is treated as a spacetime-dependent compensator, locally reducing SO(4,1) to SO(3,1). It derives vierbein and Lorentz-connection equations, relates the source to an energy-momentum plus proper-conformal current, and argues that gradients of the local cosmological scale source torsion. It presents the cosmological-constant discussion as a structural recasting rather than a quantitative solution.
comments: ""
url: https://arxiv.org/abs/2607.20687v1
summary: "The Cartan decomposition is a useful first-order testbed, but the source never varies its purportedly dynamical l(x), and its claimed torsion-from-dΛ mechanism conflicts with its own connection equation."
tags: []
---

Back to [[2026_07_24_overview]].

# Verdict

The connection and curvature decomposition are useful as a compact first-order de Sitter-gravity model. The proposed dynamics are not presently consistent as written:

- \(l(x)\) is repeatedly called a dynamical compensator, but the action is varied only with respect to \(e^a\) and \(\omega^{ab}\), explicitly holding \(l(x)\) fixed;
- the connection equation makes torsion algebraically proportional to spin, so it gives \(T^a=0\) in spinless matter;
- the later Bianchi identity cannot independently force \(T^a\ne0\) when \(d(1/l^2)\ne0\); with the connection equation imposed, it instead constrains \(dl\) and the source current;
- Eqs. (14) and (15) contain nominal five-forms in four dimensions and therefore cannot be the stated four-dimensional conservation terms.

This is medium-priority as a cautionary first-order-gravity testbed, not as an established variable-\(\Lambda\) theory.

# De Sitter connection with a local radius

Split an \(\mathfrak{so}(4,1)\)-valued connection as
\[
A
=\frac12\omega^{ab}L_{ab}
+\frac1{l(x)}e^a\pi_a.
\]
With the paper's de Sitter-algebra sign, its curvature decomposes into
\[
F^{ab}
=R^{ab}
-\frac1{l^2}e^a\wedge e^b,
\tag{4}
\]
\[
F^a
=\frac1lT^a
-\frac1{l^2}dl\wedge e^a,
\qquad
T^a=De^a.
\tag{4a}
\]
The \(dl\) term is not mysterious: introduce a fixed reference radius \(l_0\) and rescale
\[
e^a=\frac{l(x)}{l_0}\hat e^a.
\tag{1b}
\]
Then
\[
\frac1{l_0}\hat T^a
=\frac1lT^a-\frac1{l^2}dl\wedge e^a.
\tag{2b}
\]
Thus \(F^a\) is the torsion of the fixed-\(l_0\) connection expressed in the locally rescaled frame.

The source correctly notes an important limitation: the localized action is not the direct pullback of the rigid action. The fixed-radius action acquires a spacetime-dependent conformal factor
\[
\hat S_g
=-\frac1{2\kappa^2}
\int
\left(\frac{l_0}{l(x)}\right)^2
\varepsilon_{abcd}
F^{ab}\wedge e^c\wedge e^d.
\tag{2c}
\]
Consequently, the proposed localized action is invariant under local \(SO(3,1)\) at fixed \(l(x)\), not under the full local de Sitter translation sector.

# The Palatini action and its source

The gravitational action used in the variational calculation is
\[
S_g
=-\frac1{2\kappa^2}
\int\varepsilon_{abcd}
\left(
R^{ab}
-\frac1{l^2}e^a\wedge e^b
\right)
\wedge e^c\wedge e^d.
\]
This is the Einstein--Cartan/Palatini action plus a position-dependent cosmological-volume coefficient. The source packages the matter current as
\[
{}^\ast\Pi_a
={}^{\ast}T_a
-\frac1{4l^2}{}^\ast K_a,
\tag{9}
\]
where \(K_a\) is the proper-conformal current.

The vierbein variation is performed at fixed \(\omega^{ab}\) and fixed \(l(x)\). It yields the three-form equation
\[
\frac12\varepsilon_{abcd}
R^{bc}\wedge e^d
-\frac1{l^2}
\varepsilon_{abcd}
e^b\wedge e^c\wedge e^d
=-\frac{8\pi G}{c^3}
\left(
{}^\ast T_a
-\frac1{4l^2}{}^\ast K_a
\right).
\tag{ecmov}
\]
The source maps this to
\[
G_{(T)}^{\mu\nu}
-\Lambda(x)g^{\mu\nu}
=-\frac{8\pi G}{c^4}
\left(
T^{\mu\nu}
-\frac1{4l^2}K^{\mu\nu}
\right),
\qquad
\Lambda(x)=\frac3{l^2(x)}.
\tag{10d}
\]
There are sign and normalization changes between Eqs. (8), (ecmov), and (10d) that the paper does not reconcile explicitly. The tensor equation should not be used until those conventions are rederived from one fixed orientation and Hodge-star convention.

# Connection variation: torsion is fixed by spin

Varying the Lorentz connection gives
\[
\delta_\omega R^{ab}=D(\delta\omega^{ab}),
\]
and, after integration by parts,
\[
\frac12\varepsilon_{abcd}
T^c\wedge e^d
=\frac{8\pi G}{c^3}\,{}^\ast S_{ab}.
\tag{11d}
\]
This is the ordinary algebraic Einstein--Cartan equation. In particular,
\[
{}^\ast S_{ab}=0
\quad\Longrightarrow\quad
T^a=0
\]
for a nondegenerate vierbein.

Notice what does **not** appear: \(dl\). The cosmological volume term contains no \(\omega\), so varying \(\omega\) cannot generate a new \(dl\)-dependent torsion source.

# Bianchi identity and what it actually constrains

Applying \(D\) to the vierbein equation gives
\[
-\varepsilon_{abcd}
d\!\left(\frac1{l^2}\right)
\wedge e^b\wedge e^c\wedge e^d
\]
\[
\qquad
+\varepsilon_{abcd}
\left(
\frac12R^{bc}
-\frac3{l^2}e^b\wedge e^c
\right)\wedge T^d
=-\frac{8\pi G}{c^3}D\,{}^\ast\Pi_a.
\tag{13c}
\]
This is a four-form consistency relation. It follows from the field equation and Bianchi identities; it is not an independent equation replacing the connection variation.

If spin vanishes, Eq. (11d) gives \(T^a=0\). Equation (13c) then reduces to
\[
-\varepsilon_{abcd}
d\!\left(\frac1{l^2}\right)
\wedge e^b\wedge e^c\wedge e^d
=-\frac{8\pi G}{c^3}D\,{}^\ast\Pi_a.
\]
Therefore a varying \(l(x)\) is possible only if the source current has the corresponding nonconservation, or if an additional \(l\)-equation/sector modifies the system. The identity does not prove that \(d\Lambda\) forces torsion in a spinless region.

The source instead states that \(d(1/l^2)\ne0\) “does not allow the torsion tensor to vanish.” That conclusion contradicts Eq. (11d) unless one of the following is changed:

1. \(l\) is varied and its equation couples into the connection sector;
2. the matter spin current acquires an \(l\)-dependent contribution;
3. the connection/action contains additional \(dl\)-dependent terms;
4. Eq. (11d) is not imposed.

None of these changes is supplied.

# The missing \(l(x)\) equation

The paper describes \(l(x)\) as a physical scalar, a compensator, a local order parameter, and a field “actively sourced by the matter distribution.” But its variational prescription explicitly holds \(l(x)\) fixed. There is no equation
\[
\frac{\delta S}{\delta l(x)}=0.
\]
If one did vary the displayed action, its dependence on \(l\) is algebraic:
\[
S_g\supset
\frac1{2\kappa^2}
\int\frac1{l^2}
\varepsilon_{abcd}
e^a\wedge e^b\wedge e^c\wedge e^d,
\]
so the resulting equation would be a constraint, not a propagating scalar equation, unless a kinetic term or additional compensator action were added.

Consequently, the claims that matter drives a profile \(l(x)\), that vacuum forces \(l\to\infty\), or that the number of propagating degrees of freedom remains exactly that of GR are not established by the written action. A degree-of-freedom count is absent.

# Form-degree and sign failures in the spin substitution

Equation (13c) contains valid four-forms:
\[
\deg\!\left[
d(l^{-2})\wedge e\wedge e\wedge e
\right]=4,
\qquad
\deg(R\wedge T)=4.
\]
Equation (14), however, substitutes a spin three-form into
\[
\left(
\frac12R^{bc}
+\frac3{l^2}e^b\wedge e^c
\right)\wedge{}^\ast S_{bc},
\]
which has degree
\[
2+3=5.
\]
It vanishes identically in a four-dimensional exterior algebra and cannot represent the original four-form. Equation (15),
\[
\frac3{l^2}e^a\wedge e^b\wedge{}^\ast S_{ab},
\]
is also a five-form.

There is an additional sign failure: Eq. (13c) contains
\[
\frac12R^{bc}-\frac3{l^2}e^b\wedge e^c,
\]
whereas Eq. (14) changes the minus to a plus without explanation.

# What remains useful

The following pieces can be reused after convention checks:

- the connection split \(A=\frac12\omega L+l^{-1}e\pi\);
- the curvature pair \((F^{ab},F^a)\);
- the exact interpretation of the \(dl\)-term as the Jacobian of a local frame rescaling;
- the distinction between full de Sitter covariance of a connection and Lorentz invariance of an action built with \(\varepsilon_{abcd}\);
- the source combination
  \[
  \Pi_a=T_a-\frac1{4l^2}K_a
  \]
  as a model-specific object worth comparing with de Sitter Noether currents.

The claimed cosmological conclusions—vacuum-energy extinction, inflation, torsion buffering, and unchanged propagating degrees of freedom—remain qualitative and are downstream of the missing \(l\)-equation.

# Verification note

- **Sage exterior algebra:** independently confirmed that the terms in Eq. (13c) have degree four, while the printed substitutions in Eqs. (14) and (15) have degree five and vanish in a four-dimensional exterior algebra.
- **Source-derived:** the connection/curvature split, local rescaling, vierbein variation, connection variation, and Bianchi identity were reconstructed from the TeX source in the order above.
- **Not independently verified:** the Hodge-dual normalization mapping the three-form equation to Eq. (10d), the proper-conformal current definition, and the Inönü--Wigner coordinate realization.
- **Failed:** the torsion-from-\(d\Lambda\) conclusion is incompatible with the source's own spinless connection equation; the \(l(x)\) dynamics are absent; Eqs. (14) and (15) have the wrong form degree.
