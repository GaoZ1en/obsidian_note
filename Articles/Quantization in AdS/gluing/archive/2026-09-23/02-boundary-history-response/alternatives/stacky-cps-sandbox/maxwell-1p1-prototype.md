# $1+1$ Dimensional Maxwell Gluing Prototype

> Status: exact classical reduction for $U(1)$ Maxwell theory on a spatial circle cut into two arcs. The connection groupoid needs interface witnesses, but the uncut reduced phase space contains only global holonomy and electric flux. No independent edge oscillator survives.

## 1. Verdict

This model supplies the first genuinely groupoid-valued example in the sandbox.

- A regional gauge potential cannot be matched by literal equality at an artificial cut; transition phases are the morphisms witnessing the match.
- Gauss law makes the electric field constant on each arc, and action-first gluing equates the two constants.
- The extended regional presentation has two dressed open holonomies, but after flux matching its presymplectic kernel removes their relative allocation.
- The uncut phase space is exactly the cylinder with coordinates “global holonomy angle $a$” and “electric flux $e$”.
- The transition phases are descent witnesses. The electric flux is physical. The relative cut holonomy is a presentation redundancy unless the artificial boundary frames are deliberately retained as physical reference systems.

Thus the stacky language adds real content here: it remembers the gauge isomorphisms required for descent. It still does not justify adding an edge oscillator to the uncut theory.

## 2. Global Theory and Conventions

Let

$$
M=I_t\times S^1_{\ell}
$$

with gauge group $U(1)$ and minimal charge normalized to one. Write

$$
A=A_tdt+A_xdx,
\qquad
E:=\partial_tA_x-\partial_xA_t.
$$

Set the Maxwell coupling to one and use

$$
S[A]
=\frac12\int_{I_t}dt\int_{S^1_{\ell}}dx\,E^2.
$$

Gauge transformations are

$$
A\longmapsto A+d\lambda,
$$

where $e^{i\lambda}$ is single-valued. Variation gives

$$
\delta S
=\int_Mdt\,dx
\left(
-\partial_tE\,\delta A_x
+\partial_xE\,\delta A_t
\right)
+\text{boundary terms}.
$$

Hence

$$
\partial_tE=0,
\qquad
\partial_xE=0.
$$

The first is the dynamical Maxwell equation and the second is Gauss law. Therefore

$$
E(t,x)=e
$$

is one constant, not a local oscillator field.

On a Cauchy circle,

$$
\Theta_{S^1}
=\int_{S^1}dx\,E\,\delta A_x,
\qquad
\Omega_{S^1}
=\int_{S^1}dx\,\delta E\wedge\delta A_x.
$$

Define the holonomy angle

$$
a:=\oint_{S^1}A_xdx
\quad\bmod 2\pi.
$$

After Gauss reduction,

$$
\Omega_{\mathrm g}=\delta e\wedge\delta a,
\qquad
H_{\mathrm g}=\frac{\ell}{2}e^2.
$$

The reduced classical phase space is $T^*U(1)$. Canonically quantizing this compact zero mode gives $L^2(U(1))$ and integer electric-flux eigenvalues. There is no photon Fock tower in $1+1$ dimensions.

## 3. Connection Descent Requires Witnesses

Cut the circle at two points $p_0,p_1$ into oriented arcs $I_1,I_2$ of lengths $\ell_1,\ell_2$, with

$$
\ell_1+\ell_2=\ell.
$$

A descent object consists schematically of

$$
(A_1,A_2,h_0,h_1),
$$

where $A_i$ is a connection on $I_i$ and $h_p\in U(1)$ is a transition phase identifying the two regional fibers at the cut point $p$. A pair of regional gauge transformations $(g_1,g_2)$ acts on the transitions by

$$
h_p
\longmapsto
g_2(p)h_pg_1(p)^{-1}
$$

with the ordering adjusted to the chosen overlap orientation.

The groupoid of such descent data is equivalent to the groupoid of global $U(1)$ connections on the circle. Literal equality $A_1|_p=A_2|_p$ would depend on chosen trivializations and would discard the transition witness. This is the elementary homotopy-pullback content of the example.

The point-overlap notation is shorthand for small contractible overlap neighborhoods. It records the correct groupoid data without attempting a full Čech-stack construction.

## 4. Extended Regional Cauchy Data

On each oriented arc, define

$$
a_i:=\int_{I_i}A_xdx.
$$

Under a regional gauge transformation,

$$
a_i
\longmapsto
a_i+\lambda_{i,R}-\lambda_{i,L}.
$$

Introduce endpoint frame angles $\chi_{i,L},\chi_{i,R}$ with

$$
\chi_{i,L/R}
\longmapsto
\chi_{i,L/R}+\lambda_{i,L/R}.
$$

The dressed open holonomy angle

$$
\widetilde a_i
:=a_i+\chi_{i,L}-\chi_{i,R}
$$

is gauge invariant. On the regional Gauss surface, $E_i=e_i$ is constant and the extended regional symplectic form is

$$
\Omega_i
=\delta e_i\wedge\delta\widetilde a_i.
$$

This is the finite-dimensional version of adjoining a boundary frame so that endpoint gauge transformations act on an extended phase space. Donnelly--Freidel interpret the Yang--Mills boundary variable as a choice of boundary gauge frame, with normal electric flux generating its surface transformations; see [*Local subsystems in gauge theory and gravity*](https://arxiv.org/abs/1601.04744). Riello gives a complementary reduced-variable account of Maxwell gluing in [*Edge modes without edge modes*](https://arxiv.org/abs/2104.10182).

## 5. Action-First Flux Matching

For one interval, the spatial boundary term in the covariant variation is

$$
-\int_{I_t}dt\,[E\,\delta A_t]_{L}^{R}.
$$

After identifying the temporal boundary connections at an artificial cut up to the transition witness, variation of the common boundary datum gives equality of the electric fields with the appropriate outgoing-normal signs. With both arcs oriented around the circle, the result is

$$
e_1=e_2=:e.
$$

This is both Gauss-compatible flux matching and the $1+1$ Maxwell analogue of the scalar action-first interface equation.

## 6. Presymplectic Gluing and Reduction

Before matching, the extended regional form is

$$
\Omega_{\mathrm{ext}}
=\delta e_1\wedge\delta\widetilde a_1
+\delta e_2\wedge\delta\widetilde a_2.
$$

Restricting to $e_1=e_2=e$ gives

$$
\Omega_{\mathrm{match}}
=\delta e\wedge
\delta(\widetilde a_1+\widetilde a_2).
$$

Define

$$
a:=\widetilde a_1+\widetilde a_2
\quad\bmod2\pi,
\qquad
r:=\widetilde a_1-\widetilde a_2.
$$

Then

$$
\Omega_{\mathrm{match}}=\delta e\wedge\delta a
$$

and $\partial_r$ spans its kernel. Quotienting by this kernel forgets how the global open Wilson line was allocated between the two artificial regions and yields

$$
(\Gamma_{\mathrm{match}}/\ker\Omega_{\mathrm{match}},
\Omega_{\mathrm{red}})
\cong
(T^*U(1),\delta e\wedge\delta a).
$$

The Hamiltonian also glues exactly:

$$
H_1+H_2
=\frac12(\ell_1e_1^2+\ell_2e_2^2)
\longmapsto
\frac{\ell}{2}e^2.
$$

### Theorem 6.1 — No Extra Edge Oscillator

For source-free $U(1)$ Maxwell theory on the cut spatial circle, connection descent, Gauss law, action-first flux matching, and presymplectic reduction reconstruct the uncut phase space $T^*U(1)$. The interface witnesses do not add a canonical pair to the uncut theory.

#### Proof

Connection descent reconstructs the global holonomy. Gauss law reduces each regional electric field to $e_i$. The common boundary variation imposes $e_1=e_2$. Pullback of the regional symplectic form then has the one-dimensional kernel generated by the relative dressed holonomy $r$. Its quotient has coordinates $(a,e)$ and the same symplectic form and Hamiltonian as the global reduction. ∎

## 7. Boundary-Variable Classification

| Datum | Classification in the uncut theory | Reason |
|---|---|---|
| transition phases $h_0,h_1$ | descent witnesses | they identify regional bundles and transform under regional gauge morphisms |
| endpoint frames $\chi_{i,L/R}$ | extended-presentation variables | they make open holonomies gauge invariant before gluing |
| regional endpoint gauge transformations | gauge redundancy when frames transform | they do not change $\widetilde a_i$ |
| common electric flux $e$ | physical charge datum | it survives reduction and is conjugate to global holonomy |
| global holonomy $a$ | physical configuration datum | it is gauge invariant modulo large gauge transformations |
| relative allocation $r$ | presymplectic gluing redundancy | it spans the kernel after flux matching |
| surface-frame shifts retained at the cut | optional physical boundary symmetry | retaining them defines an extended subsystem theory, not the uncut theory |

The distinction between the last two rows is a choice of theory. If the artificial cut is forgotten, quotient $r$. If the boundary frame is kept as a physical reference system, the normal electric flux generates its surface symmetry. These outcomes must not be conflated.

## 8. Stacky and Derived Claim Levels

At the ordinary groupoid level, the transition phases are indispensable and connection descent is genuinely homotopical in presentation. This is already different from the scalar, whose field matching was an ordinary pullback of sets.

At the derived level, one would retain the Maxwell equation complex, gauge parameters, Gauss identity, and boundary witness complex. Mathieu--Murray--Schenkel--Teh construct precisely this kind of homotopy boundary condition and derived critical locus for linear Yang--Mills in [*Homological perspective on edge modes in linear Yang--Mills and Chern--Simons theory*](https://arxiv.org/abs/1907.10651). The present finite zero-mode reduction has not yet been promoted to an equivalence of those complexes.

## 9. Verification Boundary

### Verified

- the global Maxwell equations, zero-mode reduction, symplectic form, and Hamiltonian;
- gauge invariance of the dressed open holonomies;
- action-first equality of the regional electric fluxes;
- the rank-two matched presymplectic form, its relative-holonomy kernel, and its quotient;
- exact recovery of the global symplectic form and Hamiltonian;
- the classification in Section 7 for the declared artificial-cut theory.

### Assumptions and Choices

- source-free $U(1)$ Maxwell theory on $I_t\times S^1$;
- minimal charge one, coupling one, and holonomy period $2\pi$;
- two oriented arcs and artificial boundary frames that are forgotten after gluing;
- no charged matter or physical outer boundary.

### Not Verified

- a chain-level BV--BFV or derived-critical-locus gluing equivalence;
- Maxwell theory on a higher-dimensional cut cylinder with propagating transverse modes;
- charged interface matter, physical boundary charges, or non-Abelian stabilizers;
- quantum gluing of extended regional Hilbert spaces;
- any gravitational analogue.
