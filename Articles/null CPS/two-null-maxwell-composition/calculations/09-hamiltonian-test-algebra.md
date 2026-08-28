# Hamiltonian Test Algebra

## 1. Direct verdict

**T-H is false for the current finite anchored phase space.**  The induced
actions of

$$
K=\partial_t,
\qquad Z=\partial_z
\tag{1.1}
$$

are well defined on the smooth-generator domain through

$$
\delta_K^X=R_X\circ\mathcal L_K\circ R_X^{-1},
\tag{1.2}
$$

but they do not preserve the finite characteristic two-form when outer cut
data vary.  Consequently $\iota_{\delta_K^X}\Omega_X$ and
$\iota_{\delta_Z^X}\Omega_X$ are not closed one-forms and no Hamiltonians with
the requested variations exist on this phase space.

The $SO(3)$ rotations pass, and proper/diagonal cut gauge behaves as expected.
Failure of the complete test set is nevertheless a phase-space incompleteness
kill signal.

## 2. Domain of the induced translations

For one master, the finite traces are

$$
f(u)=\Phi(u,0),
\qquad g(v)=\Phi(0,v).
$$

Writing $a=\lambda_\ell/2$, the field equation gives

$$
\partial_v\Phi(u,0)=g'(0)-a\int_0^u f(s)ds,
\tag{2.1}
$$

$$
\partial_u\Phi(0,v)=f'(0)-a\int_0^v g(r)dr.
\tag{2.2}
$$

Hence $\delta_K^X$ and $\delta_Z^X$ involve $f'(0),g'(0)$.  They are
unbounded operators and are not defined on every matched-$H^1$ profile.  The
natural common domain is the dense smooth-generator subcore, or an appropriate
matched $H^2$ domain.  This domain issue alone forbids calling them bounded
Hamiltonian actions on the full matched-$H^1$ graph.

## 3. Exact endpoint anomaly

Let $\Sigma$ be the finite spacelike diagonal of calculation 06 and let
$\omega(1,2)$ be the Lee--Wald current.  For a background Killing field $X$,

$$
\begin{aligned}
&(\mathcal L_{\delta_X}\Omega_\Sigma)(\delta_1,\delta_2)\\
&\quad=
\Omega_\Sigma(\mathcal L_X\delta_1,\delta_2)
+\Omega_\Sigma(\delta_1,\mathcal L_X\delta_2)\\
&\quad=\int_\Sigma\mathcal L_X\omega(\delta_1,\delta_2)
=\int_{\partial\Sigma}i_X\omega(\delta_1,\delta_2).
\end{aligned}
\tag{3.1}
$$

For $X=\partial_t$ or $\partial_z$, the last line is a generic nonzero
bilinear form at $S_+$ and $S_-$.  Neither translation is tangent to both
outer endpoints of the finite cross.  The fixed outer generator frames remove
frame variations but do not set the physical Maxwell flux variations to zero,
so they do not remove (3.1).

In field-space Cartan form,

$$
d_{\mathrm{field}}
\bigl(\iota_{\delta_X^X}\Omega_X\bigr)
=\mathcal L_{\delta_X^X}\Omega_X.
\tag{3.2}
$$

Equation (3.1) therefore proves that the proposed Hamiltonian one-form is not
closed.  Adding a scalar endpoint term to a putative $H_X$ cannot repair a
nonclosed one-form; the two-form or the allowed tangent space must change.

## 4. Finite on-shell regression

`scripts/hamiltonian_test_checks.wl` uses six exact on-shell directions for one
master.  It constructs the finite incoming-cross matrix and the literal
$\partial_t,\partial_z$ coefficient actions.  The symplecticity residuals

$$
A_X^T\Omega_X+\Omega_XA_X
\tag{4.1}
$$

have ranks

$$
\operatorname{rank}\mathcal A_t=2,
\qquad
\operatorname{rank}\mathcal A_z=4.
\tag{4.2}
$$

The corresponding quadratic Hamiltonian matrices are nonsymmetric, which is
the finite-dimensional version of (3.2).  The result is a regression witness;
the analytic obstruction is (3.1).

## 5. Rotations

Every $SO(3)$ generator is tangent to the sphere cuts, preserves the round
metric, the harmonic decomposition, and the anchored endpoint policy.  Since
$S^2$ has no boundary, (3.1) has no rotational endpoint term.  Thus

$$
\mathcal L_{\delta_J^X}\Omega_X=0.
\tag{5.1}
$$

On the smooth-generator domain the differentiable Hamiltonian is

$$
H_J^X[\Phi]
=\frac12\Omega_X(\Phi,\delta_J^X\Phi),
\qquad
\iota_{\delta_J^X}\Omega_X=-\delta H_J^X.
\tag{5.2}
$$

The $\mathfrak{so}(3)$ commutator closes on every fixed-$\ell$ multiplet.  The
additive constant in the moment map is set to zero at the zero field, so no
central term appears.  Internal interface contributions cancel, making (5.2)
additive under the T-F composition.

The Wolfram regression uses two real $m$ copies, finds rotation anomaly rank
zero, and verifies that the Hamiltonian matrix is symmetric.

## 6. Cut gauge generators

Before reduction, sheet-proper and diagonal generators are exactly the kernel
directions proved in calculations 03 and 05.  Proper generators have zero
Hamiltonian.  The diagonal generator's moment map is the oriented electric
matching constraint; on its zero level and after quotient it acts trivially.
Charged cut gauges with nonzero external values are excluded by the anchored
policy and are not silently called proper.

## 7. Repair alternatives

At least one of the following material changes is required before $K$ and $Z$
can be Hamiltonian:

1. impose outer boundary conditions that make the endpoint flux in (3.1)
   vanish;
2. enlarge the phase space by the missing endpoint/charged-frame variables and
   their symplectic terms;
3. replace the finite cross by the complete half-cross finite-energy phase
   space, where the read-only massive-tail theorem makes the flux at infinity
   vanish.

These are different theorems.  The present project does not choose among them
without an explicit endpoint-policy change.

## 8. Theorem T-H

| Generator | Verdict | Exact condition |
|---|---|---|
| $\partial_t$ | `false` | finite cross with freely varying physical outer data |
| $\partial_z$ | `false` | same |
| $SO(3)$ | `proved` | smooth-generator domain, round $S^2$, anchored policy |
| proper cut gauge | `proved` | zero Hamiltonian kernel |
| diagonal cut gauge | `proved` | electric zero level, then quotient |

Because the requested test set includes both translations, T-H as a whole is
`false` for the current phase space.  Phase IV stops here; T-I is not promoted
through a failed gate.

## Verified

- nonzero translation symplecticity residuals and nonsymmetric Hamiltonian
  candidates;
- zero rotational residual and symmetric rotational Hamiltonian;
- exact finite characteristic nondegeneracy on the test basis.

## Assumptions

- the finite anchored cross with variable physical endpoint data;
- smooth-generator domain for Killing derivatives;
- T-D through T-G.

## Not verified

- any of the three repaired endpoint policies in Section 7;
- translation Hamiltonians on an enlarged or complete-half-cross phase space.
