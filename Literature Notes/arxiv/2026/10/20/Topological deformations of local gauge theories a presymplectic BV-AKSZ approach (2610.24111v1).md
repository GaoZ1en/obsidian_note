---
paper id: 2610.24111v1
title: "Topological deformations of local gauge theories: a presymplectic BV-AKSZ approach"
authors:
  - Ivan Dneprov
  - Alexey Donchenko
  - Maxim Grigoriev
publication date: 2026-10-16T18:37:33Z
abstract: |-
  Flat gauging of internal symmetries of arbitrary ghost degree couples a local gauge theory to a generalized BF sector. Degree-zero gauging can quotient solutions by a global symmetry and produce dual potentials; degree-one gauging promotes deformation parameters to fields that are constant on shell. The presymplectic BV-AKSZ construction is illustrated by massive scalars, unimodular gravity, dynamical Yang-Mills structure constants, scalar and p-form dualities, and the principal chiral model/Freedman-Townsend relation. Local degree-of-freedom statements require separate treatment of global cohomology, boundary gauge transformations and quantum equivalence.
comments: "46-page v1 PDF; no comments field on the official abstract page"
url: https://arxiv.org/abs/2610.24111v1
summary: "Flat gauging provides explicit examples with unchanged local propagation but different global and boundary data; the construction is reconstructed and checked, with a p-form action sign mismatch and a missing global uniqueness hypothesis isolated."
tags: []
---

# Flat gauging changes the global sector and the boundary quotient

The paper's useful result is a local construction:

$$
(E,Q,\omega)\quad\longrightarrow\quad
\big(E\times T^*[n-1]\mathfrak g[1],Q',\omega+db_i\,dc^i\big).
$$

Under explicit Hamiltonian, equivariance and regularity conditions, it couples the original theory to a generalized BF sector. The new sector does not add propagating local modes in the stated noncritical cases, but it changes the solution space, the available interactions and the treatment of boundaries.

The degree of the symmetry determines the direction of the change. A degree-zero symmetry gives a flat connection and can identify solutions formerly related only by a global transformation. A degree-one symmetry gives a scalar coupling that is constant on shell, thereby adding a global parameter. Negative-degree symmetries generate higher-form versions of the first mechanism.

For a region, the qualification is immediate: if allowed gauge parameters vanish at the boundary, a nonzero constant transformation is not among the transformations being quotiented. Thus the familiar statement “flat gauging divides by the global symmetry” is conditional on the gauge group and boundary conditions.

**Source-derived:** complete reconstruction of [v1](https://arxiv.org/abs/2610.24111v1), including both appendices. **Checked:** representative graded Hamiltonian/master identities, the scalar and gravity constructions, Yang–Mills Jacobi constraints, duality signs and auxiliary elimination. Two source issues are isolated below: the quadratic sign in the printed general $p$-form action for odd $p$, and a global uniqueness claim that needs one more cohomology hypothesis. Neither issue prevents using the independently checked local examples.

## Section tree and reading route

| Source | Content | Role |
|---|---|---|
| §1 | Deformation-type and duality-type pairs; elementary BF extensions | Gives the field-theory meaning before the graded geometry |
| §2.1 | $Q$-manifolds, gauge PDEs, equivalent reductions and gauge-for-gauge transformations | Defines the equation-level object |
| §2.2 | Compatible presymplectic structures, intrinsic action and BV transgression | Explains why $Q^2$ may vanish only modulo the kernel |
| §3.1 | Symmetries of arbitrary ghost degree | Relates negative degrees to reducibility and positive degrees to deformations |
| §3.2 | Chevalley–Eilenberg extension of a gauge PDE | Adds flat form fields and identifies global effects |
| §3.3 | Hamiltonian currents and Proposition 3.1 | Adds conjugate momenta and the BF action |
| §4.1 | Massive scalar | Promotes mass squared to an on-shell constant |
| §4.2 | Unimodular gravity | Promotes the cosmological constant and makes the volume form locally exact |
| §4.3 | Yang–Mills from Maxwell copies | Promotes coupling/structure constants; equations impose Jacobi |
| §5.1 | Scalar–two-form duality | Gauges the scalar shift and produces a dual potential |
| §5.2 | General $p$-form duality | Tracks ghost degrees and Hodge signs |
| §5.3.1 | Presymplectic PCM | Builds the first-order sigma-model data |
| §5.3.2 | PCM–Freedman–Townsend relation | Gauges one group action and eliminates auxiliary variables |
| Appendix A | Explicit scalar–two-form BV reduction | Supplies the proof missing from a naive target-coordinate reduction |
| Appendix B | Graded differential conventions | Fixes signs, left derivatives and shifted cotangent degrees |

Read §1 and the scalar example first for the mechanism. For a precise derivation, read Appendix B before §§2–3, then compare Proposition 3.1 with §§4.1 and 5.1. The Yang–Mills example explains why ghosts with negative target degree can still impose physical constraints. Appendix A is essential when deciding whether an elimination is a BV equivalence.

## Notation, degrees and three different differentials

| Symbol | Definition |
|---|---|
| $X,n$ | Spacetime and its dimension |
| $(x^a,\theta^a)$ | Coordinates on $T[1]X$, of ghost degrees $0,1$ |
| $d_X=\theta^a\partial_a$ | Spacetime de Rham differential, represented as a vector field |
| $d$ | Exterior differential on the graded target/bundle; ghost degree $0$, form degree $1$ |
| $\delta$ | Variation on field/supersection space |
| $\operatorname{gh}$ | Ghost degree on the graded manifold |
| $|f|$ | Ghost parity modulo two for target functions; no physical fermions are included |
| $\pi:E\to T[1]X$ | Bundle defining a gauge PDE or presymplectic gauge PDE |
| $\mathcal I$ | Differential ideal generated by pullbacks of base one-forms, including $dx,d\theta$ |
| $\mathcal K_\omega$ | Vertical vector fields $V$ with $i_V\omega\in\mathcal I$ |
| $\chi,\omega=d\chi,H$ | Presymplectic potential, closed two-form of ghost degree $n-1$, Hamiltonian of degree $n$ |
| $V_i,s_i$ | Internal symmetry generator and its integer degree $s_i=\operatorname{gh}V_i$ |
| $c^i,b_i$ | Added coordinates of degrees $1-s_i$ and $n-2+s_i$ |
| $A^i=\sigma^*c^i,B_i=\sigma^*b_i$ | Classical spacetime forms when their degrees lie in $0,\ldots,n$ |
| $\Omega,S_{\rm BV}$ | Transgressed odd symplectic structure and BV action |

Differential forms on the target use **total** parity, ghost degree plus form degree. Thus $dz^A$ has parity $|z^A|+1$, while $d$ is odd in total parity. The paper uses left derivatives and

$$
df=dz^A\frac{\partial f}{\partial z^A},\qquad
i_V=V^A\frac{\partial}{\partial dz^A},\qquad
L_V=i_Vd+(-1)^{|V|}di_V.
$$

For Lorentzian component examples,
$\eta_{ab}=\operatorname{diag}(+,-,\ldots,-)$.
The symbols satisfy

$$
\epsilon_{01\ldots n-1}=\epsilon^{01\ldots n-1}=1.
$$

The upper epsilon symbol is therefore **not** obtained by raising the lower symbol with the metric. This distinction is needed in the scalar/two-form conversion.

The shorthand

$$
\theta^{(k)}_{a_1\ldots a_{n-k}}
=\frac1{k!}\epsilon_{a_1\ldots a_{n-k}b_1\ldots b_k}
\theta^{b_1}\cdots\theta^{b_k}
$$

has Berezin normalization
$\int d^n\theta\,\theta^{(n)}=1$.

## §1: the two elementary mechanisms

### Promoting a coupling

Start with

$$
S[\phi;\lambda_0)=S_0[\phi]+\lambda_0\int_X O.
$$

Introduce a scalar $\lambda$ and an $(n-1)$-form $B$:

$$
S'[\phi,\lambda,B]
=S_0[\phi]+\int_X\lambda(O+dB).
$$

The equations are

$$
d\lambda=0,\qquad O+dB=0,\qquad
\frac{\delta S_0}{\delta\phi}
+\lambda\frac{\delta O}{\delta\phi}=0.
$$

On a connected contractible domain, $\lambda$ is a constant and the $B$ equation can be solved modulo $B\mapsto B+d\mu$. Fixing that constant recovers the corresponding member of the original family.

Globally, existence requires $[O]=0\in H^n_{\rm dR}(X)$; for fixed $O$, the ambiguity modulo exact shifts is $H^{n-1}_{\rm dR}(X)$. A local product of solution space with a small interval of couplings also assumes that the solution family is regular near the chosen coupling. It need not remain a product across singular values.

### Flat gauging a usual symmetry

For a first-order theory with an anomaly-free global $\mathfrak g$ action and an algebraic current $J$, the schematic extension is

$$
S'[\phi,A,B]
=S_0[\phi]+\int_X\operatorname{tr}
\left[A\left(J+dB+\frac12[A,B]\right)\right].
$$

Up to the integration-by-parts convention, this is the current coupling plus $BF(A)$. Its equations contain

$$
F(A)=dA+\frac12[A,A]=0,\qquad
D_AB+J=0.
$$

On a contractible domain, choose $A=0$. The original matter equations remain, while residual constant gauge transformations act as the former global symmetry. This is the origin of the quotient.

For a noncontractible domain, flat holonomies can remain and matter equations are twisted by them. The paper's globally defined connection forms initially describe trivial principal bundles; nontrivial bundle sectors require patching beyond the construction given here.

For the $B$ equation, existence and uniqueness are separate cohomological questions. In the Abelian case, existence requires vanishing of the current class in degree $n-1$, whereas uniqueness modulo exact gauge transformations requires vanishing in degree $n-2$. The latter is not implied by the former.

## §2: gauge PDEs versus presymplectic gauge PDEs

### Equation-level data

A genuine gauge PDE is a $Q$-bundle

$$
(E,Q)\longrightarrow(T[1]X,d_X),\qquad Q^2=0.
$$

A classical solution is a degree-preserving section satisfying

$$
d_X\sigma^*=\sigma^*Q.
$$

A vertical degree-$-1$ vector field $Y$ generates
$\delta_Y\sigma^*=\sigma^*[Q,Y]$.
A degree-$-2$ vector field gives a gauge-for-gauge transformation of $Y$, and the chain continues.

Equivalent reductions remove contractible factors such as
$(T[1]V,d_V)$, or the corresponding locally trivial bundles with a suitable global $Q$-section. At the gauge-PDE level these reductions preserve the gauge-equivalence classes of solutions.

### Presymplectic data and intrinsic action

The Lagrangian data obey

$$
d\omega=0,\qquad \operatorname{gh}\omega=n-1,\qquad
i_Q\omega+dH\in\mathcal I,
$$

and

$$
\frac12i_Qi_Q\omega+QH=0.
$$

A **presymplectic** gauge PDE need not have $Q^2=0$ as a target vector field. The stated conditions imply only
$Q^2\in\mathcal K_\omega$.
This weaker condition is deliberate and permits finite-dimensional descriptions of propagating theories.

For $\omega=d\chi$, the classical intrinsic action is

$$
S[\sigma]
=\int_{T[1]X}\left[(\sigma^*\chi)(d_X)+\sigma^*H\right].
$$

On supersections $\psi^A(x,\theta)$, integration over $T[1]X$ produces an odd presymplectic form of ghost degree $-1$:

$$
\Omega=\int_{T[1]X}\operatorname{ev}^*\omega.
$$

If its kernel has constant rank, quotienting that kernel gives the BV symplectic space. The same intrinsic formula with superfields gives $S_{\rm BV}$.

The regularity hypothesis is needed for this quotient. Also, changing a potential $\chi$ by an allowed exact term changes the action by a boundary term. That ambiguity is harmless for a closed bulk classical equation but is part of the data of a regional variational problem.

Removing a contractible pair of target coordinates from a **presymplectic** gauge PDE is not automatically a proof of BV equivalence. The presymplectic kernel and the induced action must be controlled; Appendix A provides an explicit example of the required check.

## §3.1: symmetries by degree

A vertical symmetry is a graded vector field $V$ with $[Q,V]=0$; $Q$-exact ones are trivial/gauge. Degree zero acts on ordinary sections.

For degree $-k<0$, the interpretation involves reducibility of gauge parameters. If $\alpha$ is a closed spacetime $p$-form, then $\pi^*\alpha\,V$ has degree $p-k$ and remains a symmetry. Exact $\alpha$ gives a $Q$-exact transformation, up to the graded sign convention. Thus symmetry classes form a module over spacetime de Rham cohomology.

A degree-one $q$ is an infinitesimal deformation:

$$
(Q+tq)^2=t[Q,q]+\frac{t^2}{2}[q,q].
$$

If $[q,q]=0$, it is an unobstructed linear family. More generally, if
$[q,q]=[Q,V]$, then

$$
Q+tq-\frac12t^2V
$$

squares to zero through order $t^2$. The degree-two cohomology class of the bracket is an obstruction. The paper restricts the gauging construction to strict graded Lie algebras of internal symmetries; an $L_\infty$ extension is discussed as a further direction, not supplied.

## §3.2: equation-level gauging and negative-degree coordinates

Let $[V_i,V_j]=f^k{}_{ij}V_k$ and $[Q,V_i]=0$.
With $s_i=\operatorname{gh}V_i$ and $|i|=s_i\bmod2$, set

$$
\widetilde E=E\times\mathfrak g[1],
$$

$$
\widetilde Q
=Q+c^iV_i
+\frac12(-1)^{|j|}f^k{}_{ij}c^jc^i
\frac{\partial}{\partial c^k},
\qquad
\operatorname{gh}c^i=1-s_i.
$$

The Chevalley–Eilenberg identities make this nilpotent. For degree-preserving sections, $A^i=\sigma^*c^i$ is a form of degree $1-s_i$. If this degree is outside $0,\ldots,n$, the classical field itself vanishes, but its equation need not be empty.

For an ordinary degree-zero algebra, $A$ is a flat one-form connection. For a one-dimensional degree-one algebra, $c$ is a degree-zero coordinate and

$$
d_X\Lambda=0,\qquad
d_X\psi^A=\sigma^*(Q\psi^A)+\Lambda\,\sigma^*(V\psi^A).
$$

For generators $V_i$ of degree one and $W_\alpha$ of degree two with
$[V_i,V_j]=f^\alpha{}_{ij}W_\alpha$ and all further brackets zero, the additional coordinate $c_{-1}^\alpha$ has degree $-1$. Its pullback is zero, but

$$
\widetilde Qc_{-1}^\alpha
=-\frac12f^\alpha{}_{ij}c^ic^j
$$

imposes

$$
d\Lambda^i=0,\qquad
f^\alpha{}_{ij}\Lambda^i\Lambda^j=0.
$$

The second condition is exactly the consistency of
$Q+\Lambda^iV_i$. This is why discarding negative-degree target coordinates before writing their equations loses physical algebraic constraints.

At this equation-only stage there are no conjugate $B$ fields. Gauging the scalar shift here can remove the scalar potential and retain its derivatives, but it does not yet create the dual two-form potential. That comes from the presymplectic extension.

## §3.3: Proposition 3.1 and the BF action

### Hypotheses and the current algebra

For a presymplectic gauge PDE, the internal generators obey

$$
\pi_*V_i=0,\qquad
[Q,V_i]\in\mathcal K_\omega,\qquad
[V_i,V_j]=f^k{}_{ij}V_k,\qquad
L_{V_i}\omega\in\mathcal I.
$$

Their Hamiltonian currents satisfy

$$
i_{V_i}\omega+dJ_i\in\mathcal I.
$$

Existence may be only local in the exceptional degree-zero case for
$i_{V_i}\omega$. Currents can be shifted by pullbacks from the base. Choosing them globally and $Q$-closed is an additional hypothesis, with possible spacetime-cohomology obstructions.

Their algebra can have a base-valued cocycle:

$$
(-1)^{|i|}V_iJ_j
=f^k{}_{ij}J_k+\pi^*\kappa_{ij}.
$$

A nontrivial $\kappa$ is the classical anomaly/projective-current obstruction. Proposition 3.1 assumes it vanishes after any permitted current redefinition.

### Extended differential and Hamiltonian

Add shifted conjugates

$$
\operatorname{gh}c^i=1-s_i,\qquad
\operatorname{gh}b_i=n-2+s_i,
\qquad \omega'=\omega+db_i\,dc^i.
$$

The source formula is

$$
\begin{aligned}
Q'={}&Q+c^iV_i
+\frac12(-1)^{|j|}f^k{}_{ij}c^jc^i\partial_{c^k}\\
&+\left[
(-1)^{|i|(n+1)}J_i
-(-1)^{|j|+|i|+n}f^k{}_{ij}b_kc^j
\right]\partial_{b_i}.
\end{aligned}
$$

It is Hamiltonian modulo $\mathcal I$ with

$$
H'=H-(-1)^{|i|}c^iJ_i
+\frac12(-1)^{|j|+1}f^k{}_{ij}b_kc^jc^i.
$$

The proof separates the old $\omega$ contribution from the canonical $db\,dc$ contribution. The terms $c^i\,dJ_i$ cancel the current terms from the canonical sector. The remaining master-equation terms reduce to the original master equation, Hamiltonian-current identity and equivariance. A nonzero cocycle would leave an uncanceled term quadratic in the new ghosts.

This proof is algebraic, but its application to a BV theory still requires the regularity needed for the supersection quotient.

### Intrinsic action and local solution analysis

The extended action is

$$
S'=S[\psi]+\int_{T[1]X}
\left[
-(-1)^{|i|}A^iJ_i
+B_k\left(
d_XA^k+\frac12(-1)^{|j|+1}f^k{}_{ij}A^jA^i
\right)
\right].
$$

The equations in the new sector are the graded flatness equation and a covariant current equation:

$$
d_XA^i+\frac12(-1)^{|k|+1}f^i{}_{jk}A^kA^j=0,
$$

$$
d_XB_i+(-1)^{n+|i|+|j|}f^k{}_{ij}B_kA^j
-(-1)^{|i|(n+1)}J_i=0.
$$

The matter equations are shifted by the variational derivative of the current coupling. Gauge parameters have degrees
$\deg\alpha^i=-s_i$ and
$\deg\mu_i=n+s_i-3$:

$$
\delta A^i=d_X\alpha^i-f^i{}_{jk}A^k\alpha^j,
$$

$$
\delta B_i=d_X\mu_i
-(-1)^{n+|i|+|j|}f^k{}_{ij}\mu_kA^j
-f^k{}_{ij}B_k\alpha^j.
$$

For $0<\deg c^i<n$ and $\deg b_i\ge0$ on a contractible domain, the flat connection can be gauged away. The current equation is integrable because the currents are covariantly closed on shell. The $B$ sector adds no local modes under these hypotheses.

At the critical degree $\deg c^i=n$, the current has degree zero and the last equation can impose $J_i=0$. For $n=1$ this resembles a first-class constrained system or zero-moment-map reduction. Thus “gauging only changes a global factor” should not be applied without checking the degree range.

For $\deg c^i=0$, the new variables are constant couplings and their momenta are $(n-1)$-forms. For $\deg c^i<0$, algebraic consistency conditions can survive as above.

## §4.1: mass squared as a global degree of freedom

The massless scalar target has coordinates $\phi,\phi_a$ of degree zero:

$$
Q\phi=\theta^a\phi_a,\qquad Q\phi_a=0,
$$

$$
\omega=(-1)^{n-1}
d\left(\theta^{(n-1)}_a\phi^a\,d\phi\right).
$$

The degree-one mass deformation is

$$
V_M=-\frac1n\theta^a\phi\frac{\partial}{\partial\phi^a},
\qquad
J_M=-\frac12\theta^{(n)}\phi^2.
$$

After adding $c$ of degree zero and $b$ of degree $n-1$,

$$
Q'\phi=\theta^a\phi_a,\qquad
Q'\phi_a=-\frac1n\theta_a c\phi,\qquad
Q'c=0,\qquad
Q'b=\frac{(-1)^n}{2}\theta^{(n)}\phi^2,
$$

$$
H'=-\frac12\theta^{(n)}
\left(c\phi^2+\phi^a\phi_a\right).
$$

Here $Q'^2$ need not vanish on every target coordinate; it belongs to the presymplectic kernel. Requiring literal nilpotency would incorrectly reject this finite-dimensional presentation.

With $\sigma^*c=M(x)$ and the paper's component normalization for $b$, the action is

$$
S'=\int d^nx\left[
\phi^a\partial_a\phi-\frac12\phi^a\phi_a
-\frac M2\phi^2
+(-1)^nM\epsilon^{a_1\ldots a_n}
\partial_{a_1}B_{a_2\ldots a_n}
\right].
$$

Eliminating $\phi_a=\partial_a\phi$ gives the usual scalar kinetic term. The equations are

$$
(\Box+M)\phi=0,\qquad dM=0,\qquad
\phi^2=2(-1)^n\epsilon^{a_1\ldots a_n}
\partial_{a_1}B_{a_2\ldots a_n}.
$$

For $M>0$, the constant is mass squared. The negative-degree symmetry
$\partial_b$ has the associated conserved current proportional to $M$.

The paper gives a useful global obstruction: on a closed compact Riemannian space with a globally defined $B$, an equation
$dB\propto\phi^2\operatorname{vol}$ integrates to zero on the left. For a real field and positive volume measure this forces $\phi=0$. The local massive-scalar family is therefore not automatically recovered in every compact global sector.

## §4.2: unimodular gravity and exactness of the volume form

In four dimensions, use degree-one translation and Lorentz coordinates
$\xi^a,\rho^{ab}$:

$$
Q\xi^a=-\rho^a{}_b\xi^b,\qquad
Q\rho^{ab}=-\rho^{ac}\rho_c{}^b,
$$

$$
\omega=-\frac1{32\pi}
d\left(\epsilon_{abcd}\xi^a\xi^b\,d\rho^{cd}\right).
$$

The target is written globally as a product under a parallelizability assumption; otherwise this description is local.

The degree-one symmetry and current are

$$
Y\rho^{ab}=-\frac13\xi^a\xi^b,\qquad
J_Y=-\frac1{8\pi}\xi^{(4)}.
$$

They obey $[Q,Y]=0$, $[Y,Y]=0$ and
$i_Y\omega+dJ_Y=0$. Gauging adds $c$ of degree zero and $b$ of degree three:

$$
Q'\rho^{ab}
=-\rho^{ac}\rho_c{}^b-\frac c3\xi^a\xi^b,\qquad
Q'b=\frac1{8\pi}\xi^{(4)},\qquad Q'c=0.
$$

Pull back $\xi^a\mapsto e^a$, $\rho^{ab}\mapsto\omega^{ab}$,
$c\mapsto\Lambda$ and $b\mapsto B$. The action becomes

$$
S'=\int_X\left[
-\frac1{16\pi}e^{(2)}_{ab}R^{ab}
-\frac{\Lambda}{8\pi}\left(e^{(4)}-8\pi dB\right)
\right],
$$

where
$R^{ab}=d\omega^{ab}+\omega^a{}_c\omega^{cb}$.
The equations are

$$
de^a+\omega^{ab}e_b=0,
$$

$$
\epsilon_{abcd}e^b
\left(R^{cd}+\frac{\Lambda}{3}e^ce^d\right)=0,
$$

$$
d\Lambda=0,\qquad e^{(4)}=8\pi dB.
$$

For an invertible tetrad, the first equation fixes the torsion-free spin connection. The second is Einstein's equation in the paper's curvature/sign convention, with constant $\Lambda$. The final equation is locally solvable without further restrictions on the metric.

Globally, a single globally defined three-form $B$ makes the volume form exact. On a closed oriented manifold with nonzero total volume, that is an obstruction by Stokes' theorem. Allowing patched higher-form data or boundaries changes the global problem and must be specified separately.

The cosmological constant is a conserved current associated with the degree-$-3$ symmetry $\partial_b$. This identifies an extra topological variable; it does not by itself establish a thermodynamic ensemble, a measure over $\Lambda$, or a boundary charge algebra.

## §4.3: dynamical Yang–Mills couplings and Jacobi as an equation

### One fixed Lie algebra

For $N$ Maxwell fields, the target coordinates are $C^i$ of degree one and $F^i_{ab}$ of degree zero:

$$
QC^i=\frac12F^i_{ab}\theta^a\theta^b,\qquad QF^i_{ab}=0,
$$

$$
\chi=-\frac12\theta^{(2)}_{ab}F^{i,ab}\,dC^j\,\delta_{ij}.
$$

A degree-one deformation is

$$
VC^k=-\frac12f^k{}_{ij}C^iC^j,\qquad
VF^k_{ab}=f^k{}_{ij}F^{[i}_{ab}C^{j]}.
$$

The tensor $f_{kij}$ is totally antisymmetric with respect to the fixed Euclidean inner product. Jacobi gives $[V,V]=0$, and the other compatibility condition is
$[Q,V]\in\mathcal K_\omega$. Its current is

$$
J_V=-\frac14\theta^{(2)}_{ab}
F^{l,ab}f^k{}_{ij}C^iC^j\delta_{lk}.
$$

Adding a degree-zero $\gamma$ and degree-three $\beta$, with pullbacks $\lambda,B$, gives

$$
S'=\int d^4x\left[
-\frac12F_i^{ab}
\left(\partial_aA_b^i-\partial_bA_a^i
+\lambda f^i{}_{jk}A_a^jA_b^k\right)
+\frac14F_i^{ab}F^i_{ab}
-\lambda\partial_aB^a
\right].
$$

Variation of $B$ gives $\partial_a\lambda=0$.
Eliminating $F$ gives the ordinary $-\frac14\mathcal F^2$ Yang–Mills action with constant coupling $\lambda$. Variation of $\lambda$ fixes the divergence of $B$ through the deformation current; it is locally solvable under the same type of hypotheses as before.

### Gauging the algebra of possible deformations

The internal metric equips $W[1]$ with a degree-two symplectic structure. Consider Hamiltonian vector fields whose Hamiltonians have polynomial degree at least three. Their basis can be written

$$
V_{k i_1\ldots i_l}
=C_{[i_1}\cdots C_{i_l}\partial_{C^{k]}},
\qquad 2\le l\le N-1,
$$

of ghost degree $l-1$. The action lifts to the Faraday variables by

$$
\bar u C^i=uC^i,\qquad
\bar u F^i_{ab}=(-1)^{|u|}X_{ab}(uC^i),
\qquad X_{ab}=F^i_{ab}\partial_{C^i}.
$$

The lift commutes with the original $Q$ modulo the kernel. Hamiltonianity and equivariance follow from the degree-two symplectic form on $W[1]$; choosing the Hamiltonians independent of $x,\theta$ removes the base cocycle in this example.

The new coordinates have

$$
\operatorname{gh}\gamma^{k i_1\ldots i_l}=2-l,\qquad
\operatorname{gh}\beta_{k i_1\ldots i_l}=l+1
$$

in four dimensions. In particular, $\gamma^{kij}$ becomes a scalar field, while $\gamma^{kijl}$ has negative degree and vanishes on classical sections. Its equation nevertheless imposes Jacobi:

$$
d\gamma^{kij}=0,\qquad
\gamma^{mij}\gamma^{lmk}
+\operatorname{cycl.}(ijk)=0.
$$

At the action level, three-form $\beta_{kij}$ imposes constancy and four-form $\beta_{kijl}$ imposes the quadratic constraint:

$$
S'=S_0[A,F]+\int_X
\left[
\gamma^{kij}\big(J_{kij}+d\beta_{kij}\big)
+\gamma^{mij}\gamma^{mkl}\beta_{ijkl}
\right].
$$

Thus each solution selects an invariant-metric Lie algebra structure and the corresponding Yang–Mills theory. The construction includes both the original propagating fields and the topological deformation parameters.

There are no degree-zero generators in the chosen deformation algebra, so structure constants related by $O(N)$ rotations are **not** yet identified. Gauging the quadratic Hamiltonians as well would add that quotient; the paper describes this extension but does not carry it out. Accordingly, the displayed moduli should not be called Lie algebras modulo isomorphism.

This also distinguishes the construction from an extended antifield formalism with constant external sources. Here the parameters and conjugate polymomenta are local fields, and their constancy/consistency follow from equations.

## §5.1: scalar–two-form duality and the missing constant mode

The first-order scalar action is

$$
S=\int d^4x\left(\phi_a\partial^a\phi-\frac12\phi_a\phi^a\right).
$$

Define

$$
F_{abc}=\epsilon_{abcd}\phi^d,\qquad
\phi_a=\frac1{3!}\epsilon_{abcd}F^{bcd}.
$$

With the paper's epsilon convention,
$F_{abc}F^{abc}=-6\phi_a\phi^a$.
After integration by parts, the scalar imposes $dF=0$. Locally one may set
$F=dB$, giving

$$
S_B=\frac1{12}\int d^4x\,G_{abc}G^{abc},
\qquad G_{abc}=3\partial_{[a}B_{bc]}.
$$

Solving for a potential by the Poincaré lemma is not a chain of local invertible field redefinitions. It can alter global modes.

The gauging interpretation starts with
$Y=-\partial_\phi$, of degree zero. Add $c$ of degree one and $b$ of degree two:

$$
Q'\phi=\theta^a\phi_a-c,\qquad
Q'b=-\theta^{(3)}_a\phi^a,
$$

$$
\omega'=-d\left(\theta^{(3)}_a\phi^a\,d\phi\right)+db\,dc,
$$

$$
H'=-\frac12\theta^{(4)}\phi^a\phi_a
+c\,\theta^{(3)}_a\phi^a.
$$

The parent action is

$$
S'=\int d^4x\left[
\phi^a\partial_a\phi-\frac12\phi^a\phi_a
+A_a\left(\phi^a+\frac12\epsilon^{abcd}\partial_bB_{cd}\right)
\right].
$$

Its gauge transformations include
$\delta\phi=\alpha$, $\delta A=-d\alpha$, and
$\delta B=d\mu$, with the reducibility $\mu\mapsto\mu+d\nu$.
The parent action is invariant up to the corresponding boundary term. Locally fixing $\phi=0$ and eliminating the auxiliary vector gives the two-form theory.

At target level one can set
$\phi=0$, $c=\theta^a\phi_a$ and obtain

$$
Q_{\rm red}F_{abc}=0,\qquad
Q_{\rm red}b=\frac1{3!}F_{abc}\theta^a\theta^b\theta^c,
$$

$$
\omega_{\rm red}
=-\frac1{3!}d\left(\theta^{(1)}_{abc}F^{abc}\,db\right).
$$

Its first-order action is

$$
S[F,B]=\int d^4x
\left(\frac16F^{abc}G_{abc}-\frac1{12}F_{abc}F^{abc}\right).
$$

The source correctly warns that the target-coordinate shortcut alone does not prove presymplectic/BV equivalence. Appendix A verifies the generalized auxiliary-field elimination.

The gauged theory identifies the scalar shift when that shift is an allowed gauge transformation. Therefore its relation to the ungauged scalar includes the constant mode. Reversing the construction by gauging $-\partial_b$ can recover the scalar-type formulation, again with the global and boundary prescription specified.

## Appendix A: the explicit BV reduction

After expanding superfields and quotienting the presymplectic kernel, the canonical BV pairs are

$$
(\phi,\phi^*),\quad
(\phi^a,\phi_a^*),\quad
(A_a,A^{*a}),\quad
(B_{ab},B^{*ab}),\quad
(C,C^*),\quad
(\zeta_a,\zeta^{*a}),\quad
(\xi,\xi^*).
$$

The two-form pair carries the conventional factor $1/2$ in $\Omega$. Here $C$ is the scalar-shift ghost, $\zeta_a$ is the two-form gauge ghost and $\xi$ is its ghost-for-ghost. These component ghosts should not be confused with the target coordinate $c$ or the gravity coordinate $\xi^a$.

The BV action is

$$
\begin{aligned}
S_{\rm BV}=\int d^4x\bigg[
&\phi^a\partial_a\phi-\frac12\phi^a\phi_a
+A_a\left(\phi^a+\frac12\epsilon^{abcd}\partial_bB_{cd}\right)\\
&+\phi^*C-A^{*a}\partial_aC
-B^{*ab}\partial_a\zeta_b
+\zeta^{*a}\partial_a\xi
\bigg].
\end{aligned}
$$

The generalized auxiliary elimination sets $\phi=C^*=0$ and solves

$$
C=0,\qquad
\phi^*=-\partial_aA^{*a}.
$$

The algebraic vector equation then gives $\phi_a=A_a$. The reduced action is

$$
S_{\rm BV}^{\rm red}
=\int d^4x\left[
\frac12A^aA_a+\frac12\epsilon^{abcd}A_a\partial_bB_{cd}
-B^{*ab}\partial_a\zeta_b+\zeta^{*a}\partial_a\xi
\right].
$$

Finally,

$$
A^a=-\frac1{3!}\epsilon^{abcd}G_{bcd}
$$

gives the two-form kinetic term above. The Hodge contraction and the auxiliary elimination are independently checked here. The displayed BV reduction is source-derived; no quantum Jacobian or boundary-compatible BV pushforward is established by this classical calculation.

## §5.2: general $p$-form duality, with a sign correction isolated

Let $0\le p\le n-2$. The target has a degree-$p$ coordinate $C$ and degree-zero components $F^{(p)}_{a_1\ldots a_{p+1}}$, assembled as

$$
F^{(p)}
=\frac1{(p+1)!}F^{(p)}_{a_1\ldots a_{p+1}}
\theta^{a_1}\cdots\theta^{a_{p+1}}.
$$

The Hodge form is

$$
\star F^{(p)}
=\frac{\epsilon_{a_1\ldots a_{p+1}b_1\ldots b_{n-p-1}}
F^{(p)a_1\ldots a_{p+1}}
\theta^{b_1}\cdots\theta^{b_{n-p-1}}}
{(p+1)!(n-p-1)!}.
$$

The geometric data are

$$
QC=F^{(p)},\qquad QF^{(p)}_{a_1\ldots a_{p+1}}=0,
$$

$$
\omega=(-1)^{n(p+1)+1}d\left(\star F^{(p)}\,dC\right).
$$

The symmetry $V=-\partial_C$ has degree $-p$ and current
$J_V=-\star F^{(p)}$. Gauging adds coordinates of degrees

$$
\operatorname{gh}c=p+1,\qquad
\operatorname{gh}b=n-p-2,
$$

with

$$
Q'C=F^{(p)}-c,\qquad
Q'b=-(-1)^{p(n+1)}\star F^{(p)},\qquad
\omega'=\omega+db\,dc.
$$

Eliminating the pair $C,F^{(p)}-c$ gives a dual curvature

$$
F^{(r)}=-(-1)^{p(n+1)}\star F^{(p)},\qquad r=n-p-2,
$$

and

$$
Q_{\rm red}b=F^{(r)},\qquad
\omega_{\rm red}=(-1)^{n(r+1)+1}d(\star F^{(r)}\,db).
$$

The Hodge-square identity in mostly-minus signature is

$$
\star^2\big|_{\Lambda^{p+1}}
=(-1)^{(p+1)(n-p-1)+n-1}.
$$

Together with the total-parity reordering of $db\,dF$, this reproduces the displayed reduced presymplectic sign. The finite-dimensional checks below confirm this for all allowed $p$ in dimensions $3$ through $7$. A full BV-equivalence argument remains necessary beyond the target-coordinate shortcut, as the source itself notes.

### Failed printed action identity and a checked repair

**The printed Eq. (5.17) is inconsistent with the preceding geometric data for odd $p$.** On PDF page 32 and in the TeX source it reads

$$
S_{\rm printed}
=\frac1{(p+1)!}\int d^nx
\left[(-1)^pF^{a_1\ldots a_{p+1}}G_{a_1\ldots a_{p+1}}
-\frac12F_{a_1\ldots a_{p+1}}F^{a_1\ldots a_{p+1}}\right].
$$

Its auxiliary equation is $F=(-1)^pG$, whereas
$QC=F$ and the stated intrinsic data require the corresponding curvature identification $F=G$. At $p=1,n=4$, the printed action gives $+\frac14G_{ab}G^{ab}$ after elimination; the Maxwell action in §4.3 has $-\frac14G_{ab}G^{ab}$.

Keeping the printed mixed term and the geometric data fixed, the compatible action is

$$
S_{\rm consistent}
=\frac{(-1)^p}{(p+1)!}\int d^nx
\left[F^{a_1\ldots a_{p+1}}G_{a_1\ldots a_{p+1}}
-\frac12F_{a_1\ldots a_{p+1}}F^{a_1\ldots a_{p+1}}\right].
$$

That is, the quadratic term also needs $(-1)^p$. Its Hamiltonian contribution is

$$
H_{\rm consistent}
=-\frac{(-1)^p}{2(p+1)!}\theta^{(n)}F^2,
$$

which satisfies $i_Q\omega+dH\in\mathcal I$ in the independent graded computation. Elimination gives
$(-1)^pG^2/[2(p+1)!]$, including the scalar, Maxwell and two-form signs used elsewhere in the paper.

This is a localized failure of the printed action formula, with a specified repair. The degree assignment, Hodge map and reduced presymplectic identity above were checked separately and do not rely on the failed quadratic sign. The source has not been edited.

## §5.3: PCM and Freedman–Townsend theory

### First-order PCM data

For a map $g:X\to G$ into a compact matrix group, define

$$
j_a=g^{-1}\partial_ag,\qquad
\bar j_a=(\partial_ag)g^{-1}.
$$

The PCM action is
$\frac12\int\operatorname{tr}(j^aj_a)$, with
$\partial_aj^a=\partial_a\bar j^a=0$ on shell.
The left-invariant $j$ is the current for the right action
$g\mapsto gh_R$; $\bar j$ corresponds to the left action. The paper writes the two-sided symmetry as $g\mapsto h_Lgh_R$.

The finite-dimensional presymplectic target uses $g,P_a$:

$$
Qg=\theta^agP_a,\qquad
QP_a=\frac12\theta^d[P_a,P_d],
$$

$$
\omega=(-1)^{n-1}d\left(
\theta^{(n-1)}_a\operatorname{tr}(P^ag^{-1}dg)\right),
$$

$$
H=-\frac12\theta^{(n)}\operatorname{tr}(P_aP^a).
$$

The intrinsic action is

$$
S=\int d^nx\,\operatorname{tr}
\left(P^ag^{-1}\partial_ag-\frac12P_aP^a\right),
$$

and $P_a=j_a$ by its algebraic equation.

### Gauging the right action

In four dimensions, the internal generators are

$$
V_ig=gT_i,\qquad V_iP_a=[P_a,T_i],
$$

with currents

$$
J_i=\operatorname{tr}\left(\theta^{(3)}_aP^aT_i\right).
$$

Invariance of the trace gives the strict equivariance
$V_iJ_j=f^k{}_{ij}J_k$. There is no classical current cocycle in this example.

The added variables are $c\in\mathfrak g[1]$ and
$b\in\mathfrak g^*[2]$, using the trace to identify the dual:

$$
Q'c=-\frac12[c,c],\qquad
Q'b=\theta^{(3)}_aP^a-[c,b],
$$

$$
Q'g=g(\theta^aP_a+c),\qquad
Q'P_a=\frac12\theta^d[P_a,P_d]+[P_a,c].
$$

The parent action is

$$
\begin{aligned}
S=\int d^4x\,\operatorname{tr}\bigg[
&-\frac12P_aP^a+P^ag^{-1}\partial_ag-A_aP^a\\
&+\frac14\epsilon^{abcd}B_{ab}
\left(\partial_cA_d-\partial_dA_c+[A_c,A_d]\right)
\bigg].
\end{aligned}
$$

Eliminate $P_a=j_a-A_a$ and locally gauge $g=1$. This gives

$$
S_{\rm FT}[B,A]
=\int_X\operatorname{tr}
\left(B\wedge F(A)+\frac12A\wedge\star A\right).
$$

Conversely, varying $B$ imposes $F(A)=0$; on a suitable simply connected trivial-bundle domain one writes $A=g^{-1}dg$ and obtains the PCM action. Recovering $g$ leaves a constant group ambiguity, again displaying the global quotient.

The target-level shortcut removes $g$ and
$c'=g^{-1}Q'g=\theta^aP_a+c$, locally in the group manifold. It gives

$$
Q_{\rm red}b=\theta^{(3)}_aP^a+\theta^a[P_a,b],\qquad
Q_{\rm red}P_a=-\frac12\theta^d[P_a,P_d],
$$

$$
\omega_{\rm red}
=-d\,\operatorname{tr}(\theta^aP_a\,db).
$$

This reproduces the FT target presentation. Global topology of $G$, nontrivial spacetime bundles and boundary-compatible gauge fixing are not included in that local elimination.

The final discussion suggests a relation to duality-symmetric or chiral-field actions, including auxiliary pure-gauge sectors. It does not construct a PST or Sen-type theory from this procedure.

## Global uniqueness: a separate source qualification

**The uniqueness statement after Eq. (5.3), PDF page 30, needs an additional assumption.** Vanishing $H^3_{\rm dR}(X)$ ensures that a closed three-form $F$ admits a global two-form potential. It does not ensure that this potential is unique modulo $B\mapsto B+d\mu$.

For fixed $F$, two potentials differ by a closed two-form, so the ambiguity is

$$
\frac{\{B':dB'=F\}}{B'\sim B'+d\mu}
\quad\text{an affine space over}\quad H^2_{\rm dR}(X).
$$

A concrete counterexample is
$X=S^2\times\mathbb R^{1,1}$.
It is simply connected and has $H^3=0$, but $H^2\simeq\mathbb R$. Let $\Omega_{S^2}$ have nonzero integral over the sphere. Then

$$
F=0,\qquad B_t=t\,\Omega_{S^2}
$$

gives gauge-inequivalent potentials for different $t$ under globally defined exact gauge shifts. Integrating $B_t-B_{t'}$ over the sphere proves that it is not exact when $t\ne t'$.

The same missing distinction affects the introductory flat-gauging discussion: trivial degree-$(n-1)$ cohomology controls existence of an $(n-2)$-form $B$ solving the current equation, while degree-$(n-2)$ cohomology controls its ambiguity. The contractible-domain statements in §3.3 avoid this problem.

This qualification strengthens the paper's main physical point: identical local propagation does not identify global solution spaces. It should be retained when applying the examples to regions or nontrivial topology.

## Equation and dependency ledger

| Result | Required inputs | Evidence and boundary |
|---|---|---|
| Equation-level gauging | Strict graded Lie algebra commuting with $Q$ | CE construction; no dual momenta yet |
| Presymplectic extension | Global $Q$-closed currents, vanishing cocycle, regular BV quotient | Proposition 3.1 reconstructed; representative exact checks |
| No new local modes | Contractible domain, noncritical degree range, solvable covariant current equation | Conditional local statement |
| Quotient by global symmetry | Flat connection gauge fixing and constant parameters included in the gauge group | Changes if parameters vanish at a boundary |
| Coupling becomes a modulus | Degree-one generator, scalar ghost, $(n-1)$-form multiplier | Constancy is an equation, not a background assumption |
| Massive scalar | Specific $V_M,J_M$ and auxiliary elimination | Exact graded and algebraic checks |
| Unimodular gravity | Invertible tetrad, local/parallelizable target description | Tetrad variation and graded symmetry checked; global exact-volume obstruction retained |
| Yang–Mills Jacobi | Negative-degree coordinate equations or four-form multipliers | Generic invariant structure-constant polynomial check |
| Scalar/two-form BV relation | Parent action and generalized auxiliary fields | Appendix A reconstruction; component/Hodge elimination checked |
| General $p$-form target map | Degree counting, Hodge square, total-parity signs | Checked finite dimension family; printed action sign fails for odd $p$ |
| PCM/FT local relation | Right-action gauging, local $g=1$, invariant trace | $SU(2)$ graded current/Hamiltonian checks and auxiliary elimination |
| Global duality | Bundle sectors, cohomology and boundary gauge group | Not supplied by local target reduction |
| Quantum duality | Measures, determinants, zero modes, flux sums and boundary states | Not verified here or implied by classical BV elimination |

## Translation to regional action and CPS questions

The construction gives explicit examples where the same local wave equations coexist with different gauge quotients. To compare regions, one should retain the parent action, its boundary variation and the allowed gauge transformations before eliminating the BF variables.

For the coupling model
$L=L_0+\lambda O+\lambda dB$, variation gives

$$
\delta L
=\cdots+(O+dB)\delta\lambda-d\lambda\wedge\delta B
+d(\lambda\,\delta B).
$$

Thus one possible BF contribution to the presymplectic potential is

$$
\Theta_{\rm top}=\lambda\,\delta B,
\qquad
\omega_{\rm top}=\delta\lambda\wedge\delta B.
$$

This pair remains meaningful even though $d\lambda=0$ on shell. Choosing whether $\lambda$, the boundary pullback of $B$, or a conjugate combination is fixed determines the variational problem. Removing the sector from the bulk propagating-mode count does not remove its boundary pairing.

For a $B\wedge F(A)$ parent term, the potential contains
$(-1)^{n-2}B\wedge\delta A$ with the displayed ordering, up to a boundary improvement. Flatness of $A$ does not by itself authorize quotienting boundary gauge transformations. If gauge parameters vanish at the boundary, residual constants that would implement the global quotient are excluded unless they vanish.

The scalar parent is a concrete test case. The gauge choice $\phi=0$ requires a parameter with boundary value $-\phi|_{\partial X}$. Under a vanishing-parameter rule this is permitted only for compatible boundary scalar data. Otherwise the scalar boundary value must be retained or separately matched to the dual boundary prescription.

Similarly, eliminating $B$ from the FT parent imposes flatness, while eliminating $g$ from the gauged PCM uses a gauge transformation. These are different operations with different global hypotheses. Equality of their local kinetic sectors is weaker than equality of regional state spaces or sewing kernels.

The paper does not construct a complete BV–BFV boundary theory, an extended observable algebra, or a quantum gluing measure. Its immediate value is a controlled family of parent actions in which those questions can be posed with the global variables visible.

## Independent checks, failures and assumptions

**Verified:**

| Computation | Method and result |
|---|---|
| Proposition 3.1 signs in a non-Abelian model | Exact graded polynomial/exterior algebra in Sage for an $SU(2)$ action on a shifted cotangent target, $n=3,4,5,6$: $Q'^2=0$, $i_{Q'}\omega'+dH'=0$ and the presymplectic master residual all vanish |
| Degree-one scalar extension | Same graded calculation for $n=3,4,5$: Hamiltonian and master residuals vanish; $Q'^2$ contracts to zero with $\omega'$ even when it is not the zero vector field |
| Gravity deformation | Four-dimensional graded calculation with the Lorentz metric and a common rescaling of $1/(8\pi)$: $[Q,Y]=0$, $Y^2=0$, $i_Y\omega+dJ_Y=0$, and the extended differential squares to zero |
| Gravity tetrad equation | xAct-hosted exact component exterior-form calculation with an arbitrary tetrad and independent antisymmetric curvature components: all 16 variation residuals vanish, including the $\Lambda/3$ coefficient |
| Dynamical Jacobi constraint | Sage with generic totally antisymmetric structure constants in internal dimension five: the CE square equals the Jacobi polynomial contracted with three ghosts; generic obstruction is nonzero |
| Scalar and two-form Hodge signs | xAct-hosted component calculation with $\epsilon^{0123}=\epsilon_{0123}=1$: inverse map, $F^2=-6\phi^2$, dual-current divergence and final $G^2/12$ normalization all have zero residual |
| Auxiliary fields | Mathematica: massive scalar, gauged scalar, Yang–Mills and PCM eliminations give zero residual against the displayed reduced actions |
| General Hodge/reduced-target signs | Exact Sage matrices for $3\le n\le7$, every $0\le p\le n-2$: Hodge square and reduced presymplectic sign pass |
| General $p$-form Hamiltonian | Independent graded computation for $3\le n\le6$: compatible Hamiltonian passes for every allowed $p$; printed quadratic sign fails exactly for odd $p$ |
| PCM currents | Exact $SU(2)$ Maurer–Cartan exterior algebra: Hamiltonian identity, all three moment maps and current equivariance pass |
| Global counterexample | Sage homology of $S^2$ gives Betti numbers $(1,0,1)$; homotopy invariance gives $H^2(S^2\times\mathbb R^{1,1})\ne0$, $H^3=0$; the nonzero sphere integral directly proves the gauge ambiguity |

**Failed:** Eq. (5.17) as printed for odd $p$ fails the intrinsic-action consistency check. The paragraph after Eq. (5.3) does not have sufficient hypotheses for uniqueness of the potential modulo exact gauge shifts. Their locations, residuals/counterexample and repairs are stated above. No downstream statement in this note uses either failed assertion without the correction or additional hypothesis.

**Assumptions:** the construction is classical and local unless a global hypothesis is explicitly stated. The examples use the paper's mostly-minus and epsilon conventions, left graded derivatives, regular presymplectic quotients, global anomaly-free currents where Proposition 3.1 is invoked, and invertible tetrads for the gravity reduction. Gauge fixing is only used on domains and with boundary conditions that permit it.

**Not verified:** a general all-degree machine proof of Proposition 3.1; regularity of every infinite-dimensional BV quotient; a complete general-$p$ BV auxiliary-field proof; global bundle/higher-bundle patching; boundary-compatible BV pushforwards; quantum determinants and zero-mode measures; a quantum equivalence of the dual theories; a full regional observable algebra or sewing theorem. The finite representative computations support precisely the identities listed, not these additional claims.

**Blocked:** no source-access or computational blocker remains for this reading. The two source issues are localized and do not block saving the usable constructions.

## Source and completion audit

The official 46-page PDF and TeX source were retrieved outside the vault. §§1–5 and Appendices A–B were read in full. Pages 18, 21, 24, 28, 30, 32, 33, 39 and 40 were rendered and inspected for the relevant formulas, signs and hypotheses. The p-form mismatch is present in both the TeX and rendered PDF.

The master note records the full section structure, degree/sign dictionary, construction and proof dependencies, all six example families, explicit BV reduction, local CPS translation, computational checks and failure boundaries. It is a completed deep reading with the unresolved global, boundary and quantum questions kept separate.
