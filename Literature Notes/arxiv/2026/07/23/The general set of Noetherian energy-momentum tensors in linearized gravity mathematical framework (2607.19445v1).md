---
paper id: 2607.19445v1
title: "The general set of Noetherian energy-momentum tensors in linearized gravity: mathematical framework"
authors:
  - Lydia Beth Taylor
  - Mark Robert Baker
publication date: 2026-07-21T11:31
abstract: |-
  The paper derives a coefficient framework for energy-momentum tensors obtainable from a higher-derivative Noether-current expression in linearized gravity, compares fifteen displayed literature representatives with that framework, and imposes symmetry, tracelessness, canonical, and Christoffel-type restrictions. The negative comparison tests and the explicit symmetric-traceless example are algebraically reproducible. The constructed family is nevertheless a current-derived superset: the action-symmetry conditions needed for the genuinely Noetherian subset are explicitly deferred.
comments: "Physica Scripta 99 035258 (2024); first arXiv version"
url: https://arxiv.org/abs/2607.19445v1
summary: "A fully audited coefficient classification for linearized gravitational energy tensors, with the one-way exclusion logic separated from the still-missing Noether-symmetry proof."
tags: []
---

Back to [[2026_07_23_overview]].

Reason codes: T1-charge, T2-model. This is high priority because it directly organizes the gravitational-energy ambiguity in linearized gravity. It is not a CPS or surface-charge paper, and there is no tracked-author signal.

The direct verdict is:

> The Appendix-A framework and every requested coefficient solve checked in Mathematica. The title overstates what is proved. The paper constructs the set of tensors algebraically obtainable from its displayed current ansatz, not the final set of transformations that are symmetries of the action.

That distinction is the organizing principle of this note.

## How to read this long paper

1. Read §§2.1--2.4 and Appendix A together. They define the input coefficients \(C_i,D_i,B_i\), the current, the 43 output coefficients, and the polynomial map between them.
2. Read §2.5 immediately after the general tensor. It limits every later positive classification.
3. Use §3 as a catalogue of one-way exclusion certificates. The quickest tests are \(b_4=b_5\), \(d_4=d_{5_i}\), and \(d_{5_{ii}}=0\).
4. Read §4 with Appendix B. Symmetry and trace are extra polynomial constraints; Christoffel and canonical transformations are fixed choices of the \(B_i\).
5. Read the Rose--Xavier example in §4.6 as an explicit current-derived symmetric-traceless tensor, not as a completed proof of action symmetry.
6. Appendix C is only a presence/absence map. Appendix D contains the raw current expansion from which Appendix A is collected.

The logical chain is

$$
\mathcal L[C,D]\ \&\ \delta h[B]
\longrightarrow
J^\rho
\longrightarrow
T^{\rho\lambda}[b,c,d,a]
\longrightarrow
\text{Appendix-A compatibility}
\longrightarrow
\begin{cases}
\text{decisive exclusion},\\
\text{current-derived candidacy}.
\end{cases}
$$

Only a further action-symmetry calculation would turn candidacy into a general positive Noetherian classification.

## Source structure

| Source part | Technical role | PDF pages |
|---|---|---:|
| §1 | Motivates the nonuniqueness problem and defines the intended “Noetherian” criterion. | 1--3 |
| §2.1 | Gives the most general displayed quadratic two-derivative Lagrangian and its Euler--Lagrange operator. | 3--4 |
| §2.2 | Writes the higher-derivative Noether identity and the four-term current. | 4--5 |
| §2.3 | Introduces the nine-parameter translation-proportional field transformation. | 5 |
| §2.4 | Expands the current in the 43-term Fock basis. | 6--7 |
| §2.5 | States that arbitrary displayed transformations need not be action symmetries; the true restriction is future work. | 7 |
| §3.1 | Fixes the Minkowski linearization and normalization conventions. | 8--10 |
| §3.2 | Compares Einstein, Landau--Lifshitz, Goldberg, and Weinberg pseudotensors. | 10--14 |
| §3.3 | Compares Papapetrou, Bergmann--Thomson, Imitation Einstein, and Møller complexes. | 14--16 |
| §3.4 | Compares Hilbert, Fierz, two Butcher tensors, and Padmanabhan. | 16--19 |
| §§4.1--4.5 | Imposes symmetry, tracelessness, Christoffel, canonical, and combined restrictions. | 19--21 |
| §4.6 | Exhibits a simultaneous symmetric-traceless solution. | 21 |
| §4.7 | Restates the missing action-symmetry restriction. | 21--22 |
| §5 | Summarizes classifications and the remaining nonuniqueness. | 22--25 |
| Appendix A | Gives EOM, symmetric-field, and complete 43-coefficient conditions. | 28--29 |
| Appendix B | Gives symmetry, trace, Christoffel, canonical, and symmetric-traceless specializations. | 29--31 |
| Appendix C | Records which basis monomials occur in the surveyed tensors. | 31--32 |
| Appendix D | Displays the four uncollected current contributions. | 32--33 |

## Linearized Einstein operator and conventions

The background and signature are

$$
g_{\mu\nu}
=\eta_{\mu\nu}+\epsilon h_{\mu\nu},
\qquad
\eta=\operatorname{diag}(+,-,-,-),
\qquad
h_{\mu\nu}=h_{\nu\mu}.
$$

Indices on linearized fields are moved with \(\eta_{\mu\nu}\), and

$$
h=h^\alpha{}_\alpha,
\qquad
\Box=\partial^\alpha\partial_\alpha.
$$

The linearized Einstein operator is

$$
\begin{aligned}
E^{\mu\nu}
=\frac12\big[
&-\eta^{\mu\nu}\Box h
+\Box h^{\mu\nu}
+\partial^\mu\partial^\nu h\\
&-\partial_\alpha\partial^\nu h^{\mu\alpha}
-\partial_\alpha\partial^\mu h^{\nu\alpha}
+\eta^{\mu\nu}\partial^\alpha\partial^\beta h_{\alpha\beta}
\big].
\end{aligned}
$$

It is invariant under

$$
h_{\mu\nu}
\longmapsto
h_{\mu\nu}
+\partial_\mu\xi_\nu
+\partial_\nu\xi_\mu.
$$

The source uses constant translations

$$
\delta x_\lambda=a_\lambda.
$$

The canonical field variation in its convention is

$$
\delta h_{\rho\sigma}
=-\partial_\beta h_{\rho\sigma}\,\delta x^\beta.
$$

## The ten-parameter Lagrangian and its field equation

The Lagrangian ansatz is

$$
\begin{aligned}
\mathcal L={}&
C_1\partial_\beta h_{\mu\nu}\partial^\beta h^{\mu\nu}
+C_2\partial_\beta h\,\partial^\beta h
+C_3\partial_\beta h^{\beta\mu}\partial_\mu h\\
&+C_4\partial_\beta h^{\beta\mu}\partial^\nu h_{\mu\nu}
+C_5\partial_\mu h_{\nu\beta}\partial^\nu h^{\mu\beta}\\
&+D_1h_{\mu\nu}\partial^\mu\partial^\nu h
+D_2h_{\mu\nu}\partial^\mu\partial_\beta h^{\nu\beta}
+D_3h_{\mu\nu}\Box h^{\mu\nu}\\
&+D_4h\Box h
+D_5h\,\partial^\mu\partial^\nu h_{\mu\nu}.
\end{aligned}
$$

The second-derivative Euler--Lagrange expression is

$$
\begin{aligned}
E^{\omega\sigma}_{\mathcal L}={}&
2(D_4-C_2)\eta^{\omega\sigma}\Box h
+2(D_3-C_1)\Box h^{\omega\sigma}\\
&+(D_1-C_3+D_5)
\left(
\partial^\omega\partial^\sigma h
+\eta^{\omega\sigma}\partial^\mu\partial^\nu h_{\mu\nu}
\right)\\
&+(D_2-C_4-C_5)
\left(
\partial_\mu\partial^\sigma h^{\omega\mu}
+\partial_\mu\partial^\omega h^{\sigma\mu}
\right).
\end{aligned}
$$

Requiring \(E^{\omega\sigma}_{\mathcal L}=nE^{\omega\sigma}\) gives

$$
D_4-C_2=-\frac n4,
\qquad
D_3-C_1=\frac n4,
$$

$$
D_1-C_3+D_5=\frac n2,
\qquad
D_2-C_4-C_5=-\frac n2.
$$

The paper does not explicitly require \(n\neq0\). A genuine equivalence with the linearized Einstein equation needs this nonzero normalization; \(n=0\) is a degenerate zero-Euler--Lagrange case.

## Higher-derivative Noether current

For \(\mathcal L(h,\partial h,\partial\partial h)\), the Noether identity is

$$
E^{\omega\sigma}_{\mathcal L}\delta h_{\omega\sigma}
+\partial_\rho J^\rho=0,
$$

with

$$
\begin{aligned}
J^\rho={}&
\eta^{\rho\lambda}\mathcal L\,\delta x_\lambda
+\frac{\partial\mathcal L}
{\partial(\partial_\rho h_{\omega\sigma})}
\delta h_{\omega\sigma}\\
&+\frac{\partial\mathcal L}
{\partial(\partial_\rho\partial_\zeta h_{\omega\sigma})}
\partial_\zeta\delta h_{\omega\sigma}
-\partial_\zeta\left[
\frac{\partial\mathcal L}
{\partial(\partial_\rho\partial_\zeta h_{\omega\sigma})}
\right]\delta h_{\omega\sigma}.
\end{aligned}
$$

Factoring the constant translation defines

$$
J^\rho=a_\lambda T^{\rho\lambda},
$$

so that

$$
E^{\omega\sigma}_{\mathcal L}\delta h_{\omega\sigma}
+a_\lambda\partial_\rho T^{\rho\lambda}=0.
$$

The source treats changing \(\mathcal L\) by a boundary term as an internal Noether freedom because it changes this current directly. By contrast, adding a superpotential to a finished tensor is treated as an external “improvement.”

## The nine-parameter field transformation

The most general displayed local ansatz, linear in \(a_\lambda\partial h\), is

$$
\begin{aligned}
\delta h_{\omega\sigma}={}&
B_1\partial^\alpha h_{\omega\sigma}a_\alpha
+B_2\partial^\alpha h_{\alpha\sigma}a_\omega
+B_3\partial^\alpha h_{\omega\alpha}a_\sigma\\
&+B_4\partial_\omega h_{\alpha\sigma}a^\alpha
+B_5\partial_\sigma h_{\omega\alpha}a^\alpha\\
&+B_6\partial_\omega h\,a_\sigma
+B_7\partial_\sigma h\,a_\omega\\
&+B_8\eta_{\omega\sigma}
\partial^\alpha h_{\alpha\gamma}a^\gamma
+B_9\eta_{\omega\sigma}\partial^\alpha h\,a_\alpha.
\end{aligned}
$$

Symmetry of the transformed field requires only

$$
B_2=B_3,
\qquad
B_4=B_5,
\qquad
B_6=B_7.
$$

These equations ensure \(\delta h_{\mu\nu}=\delta h_{\nu\mu}\). They do not ensure that the transformation is a symmetry of the action.

Two special transformations are:

$$
\text{canonical:}\qquad B_1=-1,\quad B_{2,\ldots,9}=0,
$$

and

$$
\text{Christoffel:}\qquad
B_1=-1,\quad B_4=B_5=1,
\quad\text{all other }B_i=0.
$$

## The 43-term current-derived family

After inserting \(\mathcal L[C,D]\) and \(\delta h[B]\), the paper expands

$$
T^{\rho\lambda}
=\sum b\,(\partial h\,\partial h)
+\sum c\,\eta^{\rho\lambda}(\partial h\,\partial h)
+\sum d\,(h\,\partial\partial h)
+\sum a\,\eta^{\rho\lambda}(h\,\partial\partial h).
$$

The basis contains:

- fifteen non-metric \(\partial h\,\partial h\) coefficients \(b\);
- five metric-proportional \(\partial h\,\partial h\) coefficients \(c\);
- eighteen non-metric \(h\,\partial\partial h\) coefficients \(d\);
- five metric-proportional \(h\,\partial\partial h\) coefficients \(a\).

Appendix A is the complete polynomial map

$$
(B_i,C_i,D_i,n)
\longmapsto
(b_i,c_i,d_i,a_i).
$$

Three structural identities drive many comparisons:

$$
b_4=b_5
=\frac14(B_4+B_5)(4C_5-D_2),
$$

$$
d_4=d_{5_i}
=\frac14(B_4+B_5)D_2,
$$

$$
d_{5_{ii}}=0.
$$

The metric-sector relations

$$
c_2=C_1,
\qquad
c_4=C_5,
\qquad
a_5=D_3
$$

are independent of the transformation coefficients.

## The decisive scope boundary

Let

$$
\mathcal A
=\{\text{tensors algebraically obtainable from the displayed current ansatz}\},
$$

and

$$
\mathcal N
=\{\text{tensors whose transformations are genuine action symmetries}\}.
$$

Section 2.5 establishes only

$$
\mathcal N\subseteq\mathcal A.
$$

The paper computes \(\mathcal A\), not \(\mathcal N\). The missing calculation is to impose the simultaneous coordinate/field transformation as a symmetry of \(\mathcal L[C,D]\), so that the full Noether identity—not merely the formal current expression—holds.

Consequences:

- Failure of Appendix A proves \(T\notin\mathcal A\), hence \(T\notin\mathcal N\), within the chosen local ansatz.
- Passing Appendix A proves only \(T\in\mathcal A\).
- A positive Noetherian classification requires an independent action-symmetry derivation.
- Symmetry, tracelessness, or a special \(B_i\) choice does not close this gap.
- Equality is tested for the displayed off-shell local expression, not modulo equations of motion, gauge conditions, arbitrary superpotentials, or quasi-local equivalence.
- The ansatz excludes higher-derivative, nonlocal, explicit-coordinate, and parity-odd extensions.

## Literature tensors and their exclusion certificates

The paper compares fifteen displayed targets when the two index orderings of the Einstein pseudotensor are counted separately. Fourteen fail Appendix A. The right-raised Einstein expression is the only positive item.

| Target | Decisive Appendix-A result | Exact interpretation |
|---|---|---|
| Einstein, left-raised | Selected equations require \(D_2=2\) and \(D_2=0\). | Excluded from \(\mathcal A\). |
| Einstein, right-raised | Full system has the canonical solution below. | In \(\mathcal A\); independently known canonical origin supplies the positive Noether claim. |
| Landau--Lifshitz | \(b_4=4\), \(b_5=0\). | Violates \(b_4=b_5\). |
| Goldberg mixed, weight \(0\) | Equals left-raised Einstein at this order. | Same contradiction; arbitrary weight is not classified. |
| Goldberg symmetric, weight \(0\) | Equals Landau--Lifshitz at this order. | Same contradiction; arbitrary weight is not classified. |
| Weinberg | \(d_4=-1/2\), \(d_{5_i}=0\). | Violates \(d_4=d_{5_i}\). |
| Papapetrou | After \(D_3=0\), the same parameter combination must equal \(-1\) and \(+1\). | Inconsistent system. |
| Bergmann--Thomson | \(d_{5_{ii}}=2\). | Violates \(d_{5_{ii}}=0\). |
| Imitation Einstein | \(d_4=1\), \(d_{5_i}=-1\). | Violates \(d_4=d_{5_i}\). |
| Møller | \(d_{5_{ii}}=1\). | Violates \(d_{5_{ii}}=0\). |
| Hilbert | \(d_4=-1\), \(d_{5_i}=0\). | Violates \(d_4=d_{5_i}\). |
| Fierz | \(b_4=1\), \(b_5=0\). | Violates \(b_4=b_5\). |
| Butcher \(\tau\) | The solve requires \(C_4=1/4\) and \(C_4=0\). | Inconsistent system. |
| Modified Butcher | \(d_{5_{ii}}=-1\). | Violates \(d_{5_{ii}}=0\). |
| Padmanabhan | \(b_4=1\), \(b_5=-1\). | Violates \(b_4=b_5\). |

These are literal coefficient comparisons after Minkowski expansion to the paper's chosen order. They do not decide equivalence classes modulo superpotentials or field equations.

### The right-raised Einstein solution

The unique positive catalogue item is reproduced by

$$
B_1=-1,
\qquad
B_{2,\ldots,9}=0,
$$

$$
C_1=-\frac14,
\quad
C_2=\frac14,
\quad
C_3=-\frac12,
\quad
C_4=0,
\quad
C_5=\frac12,
$$

$$
D_i=0,
\qquad
n=1.
$$

This is the canonical field transformation and the standard linearized Einstein--Hilbert/Fierz--Pauli Lagrangian representative. The full Appendix-A map vanishes against the target coefficient list. Membership in \(\mathcal A\) is therefore checked. The stronger statement that it is Noetherian comes from its independently known canonical Noether derivation, not merely the coefficient solve.

## Symmetric and traceless restrictions

Tensor symmetry imposes ten pair equalities:

$$
b_{p_i}=b_{p_{ii}},
\qquad p=8,9,10,11,
$$

$$
d_{m_i}=d_{m_{ii}},
\qquad m=5,6,9,10,11,12.
$$

The trace in four dimensions is a sum of ten independent basis structures. Their coefficients must vanish:

$$
b_1+b_{8_i}+b_{8_{ii}}+b_{9_i}+b_{9_{ii}}+4c_5=0,
$$

$$
b_2+b_6+4c_1=0,
$$

$$
b_3+b_{10_i}+b_{10_{ii}}+4c_3=0,
$$

$$
b_4+b_7+4c_2=0,
$$

$$
b_5+b_{11_i}+b_{11_{ii}}+4c_4=0,
$$

$$
d_1+d_3+d_7+4a_4=0,
$$

$$
d_2+d_{11_i}+d_{11_{ii}}+4a_2=0,
$$

$$
d_4+d_{9_i}+d_{9_{ii}}+4a_1=0,
$$

$$
d_{5_i}+d_{5_{ii}}+d_8+4a_5=0,
$$

$$
d_{6_i}+d_{6_{ii}}
+d_{10_i}+d_{10_{ii}}
+d_{12_i}+d_{12_{ii}}
+4a_3=0.
$$

This is an off-shell algebraic trace condition in the chosen basis. It is not weakened modulo field equations, total derivatives, or gauge conditions.

The source reports infinitely many symmetric-only, traceless-only, Christoffel-only, canonical-only, and symmetric-traceless solutions. It does not provide general parametrizations or rank/nullity certificates for these cardinality claims.

## Fixed transformation families

For the Christoffel transformation,

$$
B=(-1,0,0,1,1,0,0,0,0).
$$

Some useful specialized coefficients are

$$
b_4=b_5=2C_5-\frac12D_2,
\qquad
d_4=d_{5_i}=\frac12D_2,
$$

$$
d_{5_{ii}}=0,
\qquad
c_2=C_1,
\qquad
c_4=C_5,
\qquad
a_5=D_3.
$$

For the canonical transformation,

$$
B=(-1,0,0,0,0,0,0,0,0),
$$

only the canonical subset of the \(b,d\) sectors survives, while the five \(c_i\) and five \(a_i\) retain their Lagrangian origin.

After combining Appendix A with symmetry and tracelessness, the source reports:

$$
\text{Christoffel}+\text{symmetric}+\text{traceless}
\Longrightarrow T^{\mu\nu}=0,
$$

$$
\text{canonical}+\text{symmetric}+\text{traceless}
\Longrightarrow T^{\mu\nu}=0.
$$

The independent polynomial solve confirms both nonzero no-solution claims even without imposing the EOM relations. This is a statement only about the fixed-\(B\) subfamilies, not about the whole current-derived family.

## The Rose--Xavier symmetric-traceless representative

The explicit simultaneous solution chooses

$$
n=1,
\qquad
D_i=0,
$$

$$
C_1=-\frac14,
\quad
C_2=\frac14,
\quad
C_3=-\frac12,
\quad
C_4=C_5=\frac14,
$$

and

$$
B_1=-\frac43,
$$

$$
B_2=B_3=B_4=B_5=B_8=\frac23,
$$

$$
B_6=B_7=B_9=-\frac23.
$$

The nonzero output coefficients are

$$
\begin{gathered}
b_1=\frac23,\quad
b_2=-\frac23,\quad
b_3=-\frac53,\quad
b_4=b_5=\frac13,\quad
b_6=-\frac53,\quad
b_7=\frac23,\\
b_{8_i}=b_{8_{ii}}=\frac13,\quad
b_{9_i}=b_{9_{ii}}=\frac53,\quad
b_{10_i}=b_{10_{ii}}=-\frac13,\quad
b_{11_i}=b_{11_{ii}}=-\frac23,\\
c_1=c_3=\frac7{12},\quad
c_2=-\frac14,\quad
c_4=\frac14,\quad
c_5=-\frac76.
\end{gathered}
$$

All \(d_i,a_i\) vanish. Substitution verifies:

$$
T^{\rho\lambda}=T^{\lambda\rho},
\qquad
T^\rho{}_\rho=0,
$$

and every Appendix-A equation, including the EOM normalization, is satisfied.

What is not proved is that the selected \(B_i\) transformation is a symmetry of the chosen action. Thus the example is exactly symmetric, traceless, and current-derived; its membership in the fully restricted \(\mathcal N\) remains open.

## Improvements, boundary terms, and CPS translation

The paper's distinction is:

- a boundary term in \(\mathcal L\) is internal because it changes \(J^\rho\) before \(T^{\rho\lambda}\) is read off;
- a superpotential appended to an already derived tensor is external and is not counted as a Noether derivation.

This is not formulated as a cohomological quotient of local currents. In CPS language, changing the Lagrangian by an exact term can change the presymplectic potential and the representative of the Noether current; a superpotential corresponds to an ambiguity in the current/charge representative. The paper fixes literal representatives rather than quotienting these ambiguities.

The object here is a bulk energy-momentum current for global translations of the Minkowski background. It is not:

- a codimension-two surface charge;
- an integrable Hamiltonian generator on a covariant phase space;
- an asymptotic charge at null or spatial infinity;
- a proof of gauge-invariant local gravitational energy.

Its immediate value for the vault is a coefficient-level obstruction language. Before comparing a proposed linearized gravitational energy tensor, first determine whether equality is meant literally, on shell, modulo a superpotential, or after a boundary-term change. The paper decides only the first of these within its ansatz.

## What the framework actually establishes

The strongest reliable statements are:

1. The ten-parameter Lagrangian gives the linearized Einstein equation exactly when the four EOM relations hold.
2. The displayed current and field-transformation ansatz produce a well-defined 43-coefficient polynomial family.
3. Failure of that polynomial system is a decisive exclusion within the ansatz.
4. Fourteen surveyed displayed representatives fail, and the right-raised Einstein representative passes with its canonical data.
5. Symmetry and tracelessness are compatible in the larger current-derived family.
6. Neither the canonical nor Christoffel fixed-transformation family contains a nonzero symmetric-traceless member.
7. The explicit Rose--Xavier tensor is symmetric, traceless, and compatible with Appendix A.
8. None of the general positive solutions establishes the still-missing action-symmetry condition.

The result is therefore an effective **necessary-condition engine**, not a completed uniqueness theorem. It does not select a unique gravitational energy tensor, and it does not supply the naturalness or predictive criterion needed to privilege one representative.

## Verification log

### Checked

- **Euler--Lagrange chain, Mathematica.** A full four-dimensional symmetric-component implementation of the ten-term Lagrangian was varied with VariationalD. All ten independent component residuals between the computed result and the source's Eq. (4) vanish. Matching to \(nE^{\mu\nu}\) reproduces the four Appendix-A EOM relations with zero residuals.
- **Linearized operator, xAct.** On a flat background, the gauge variation of \(E^{\mu\nu}\) reduces to zero after canonical derivative sorting. Its divergence \(\partial_\mu E^{\mu\nu}\) also reduces to zero, verifying the linearized Bianchi identity under commuting derivatives.
- **Noether-current map, Mathematica.** The four-term current was reconstructed from \(\mathcal L[C,D]\) and \(\delta h[B]\). Projection gives \(b_4=b_5\), \(d_4=d_{5_i}\), and \(d_{5_{ii}}=0\) exactly. Representative off-diagonal and diagonal components reproduce the complete printed Appendix-A \(b,d,c,a\) map with zero residuals.
- **Section 3 certificates, Mathematica.** The left-raised Einstein and original Butcher selected systems reduce to False. The eleven direct structural contradictions give the exact nonzero residuals stated in the catalogue. Goldberg mixed and symmetric inherit the corresponding checked contradictions.
- **Right-raised Einstein, Mathematica.** Substitution of the canonical \(B_i\), Fierz--Pauli \(C_i\), \(D_i=0\), and \(n=1\) leaves no residual in the full output map or EOM conditions.
- **Symmetry and trace, Mathematica.** Direct calculation of \(T^{01}-T^{10}\) reproduces the ten pair equalities; direct contraction \(\eta_{\rho\lambda}T^{\rho\lambda}\) reproduces the ten printed trace combinations.
- **Christoffel and canonical tables, Mathematica.** Both full specialization tables, including structurally zero coefficients, have empty residual sets.
- **Combined no-solution claims, Mathematica.** For both fixed transformations, Reduce returns False for a nonzero tensor satisfying symmetry and trace, even before the EOM constraints are imposed.
- **Rose--Xavier example, Mathematica.** The complete coefficient list, four EOM relations, ten symmetry residuals, and ten trace residuals all vanish.

Reproduction artifact: /tmp/arxiv-2026-07-23/2607.19445v1/verify_2607_19445.wl, 411 lines, SHA-256 7253ccd516371144c72259a556ac5b92528caab4181bd0151463655756f3bd0b.

### Blocked

- The nonlinear definitions of every surveyed GR pseudotensor were not independently re-expanded to \(O(\epsilon^2)\). The exclusion certificates are exact conditional on the coefficient decompositions printed immediately before them.
- The separate claims of infinitely many symmetric-only, traceless-only, and symmetric-traceless solutions were not proved by a general parametrization or dimension calculation.
- The gauge-invariant-local-energy no-go invoked by the source was not independently reconstructed.
- Most importantly, the action-symmetry conditions for the general \(B_i\) transformation are absent from the paper and were not derivable from the displayed coefficient map. Passing Appendix A remains necessary, not sufficient.

### Failed

- None of the independently tested algebraic claims failed.

### Assumptions

- Four-dimensional Minkowski signature \((+---)\).
- Symmetric \(h_{\mu\nu}\).
- Commuting partial derivatives.
- Literal equality in the paper's Fock basis, without integrations by parts, equations of motion, gauge fixing, or superpotential quotient at the comparison stage.

The practical takeaway is sharp: use Appendix A to rule candidates out, use the canonical derivation to justify the right-raised Einstein positive case, and do not call a new positive solution Noetherian until its field transformation is proved to preserve the action.
