# Lee--Wald Symplectic Equivalence

This note proves the finite-region theorem L-E. Calculation 14 takes its exact
finite Stokes identity to the complete cross by a proved tail limit.

## 1. Direct verdict

**Status: proved** on the anchored rapid-angular matched-$H^1$ core, and hence
on its smooth-generator subcore, with the Maxwell Lee--Wald representative
fixed in calculation 00. For the restriction map of L-D,

$$
\boxed{R_X^*\Omega_X=\Omega_{\mathrm{bulk}}.}
\tag{1.1}
$$

The split-frame corner term is a derived endpoint polarization and is not an
additional oscillator or a universal raw corner term.

## 2. Finite characteristic Stokes region

Let

$$
T_{U,V}=\{(u,v):u\geq0,\ v\geq0,\ u/U+v/V\leq1\}\times S^2_R
\tag{2.1}
$$

and let $\Sigma_{U,V}$ be its spacelike diagonal
$u/U+v/V=1$.  Its other boundary is precisely the two initial null segments
$N_-$ and $N_+$.  For two linearized solutions, the Maxwell current

$$
\omega(\delta_1,\delta_2)
=\delta_1A\wedge *\delta_2F-\delta_2A\wedge *\delta_1F
\tag{2.2}
$$

obeys $d\omega=0$.  Stokes' theorem, with the incoming orientation fixed in
calculation 01, gives

$$
\int_{\Sigma_{U,V}}\omega
=\int_{N_+}^{\mathrm{in}}\omega
+\int_{N_-}^{\mathrm{in}}\omega.
\tag{2.3}
$$

There is no additional codimension-two integral in the raw identity.  Although
$\Sigma_{U,V}$ bounds only the triangular subregion, its two endpoints are the
outer ends of the full characteristic data.  Goursat uniqueness shows that
the same $X$ data determine the solution on the whole rectangle, so (2.3)
defines the bulk solution form used in (1.1).

## 3. Direct Maxwell pullback to the two masters

For either master polarization define

$$
f_i(u)=\Phi_i(u,0),
\qquad g_i(v)=\Phi_i(0,v).
$$

Substitution of the magnetic representative into the raw Maxwell sheets gives

$$
\Omega_{N_-}^{B}(1,2)
=\int_0^U(\partial_uf_1f_2-\partial_uf_2f_1)\,du,
\tag{3.1}
$$

$$
\Omega_{N_+}^{B}(1,2)
=\int_0^V(\partial_vg_1g_2-\partial_vg_2g_1)\,dv.
\tag{3.2}
$$

For the electric representative (5.2) of calculation 05, the angular
potential term vanishes but the normal electric-flux term remains.  On $N_+$,

$$
E_i=-s_\ell g_i,
\qquad (A_v)_i=\frac{\partial_vg_i}{s_\ell},
$$

so

$$
E_1(A_v)_2-E_2(A_v)_1
=\partial_vg_1g_2-\partial_vg_2g_1.
\tag{3.3}
$$

On $N_-$,

$$
E_i=-s_\ell f_i,
\qquad (A_u)_i=-\frac{\partial_uf_i}{s_\ell},
$$

and the incoming form contains the required minus sign:

$$
-\bigl(E_1(A_u)_2-E_2(A_u)_1\bigr)
=\partial_uf_1f_2-\partial_uf_2f_1.
\tag{3.4}
$$

Therefore both Maxwell polarizations give the same matched-master form

$$
\boxed{
\Omega_X^P(1,2)
=\int_0^U(f_1'f_2-f_2'f_1)du
+\int_0^V(g_1'g_2-g_2'g_1)dv.}
\tag{3.5}
$$

Summing over $(P,\ell,m)$ gives the intrinsic $\Omega_X$.  Equations
(2.3) and (3.5) prove (1.1) coefficientwise.

## 4. Conservation in master variables

For two master solutions set

$$
W_u=\partial_u\Phi_1\Phi_2-\partial_u\Phi_2\Phi_1,
\qquad
W_v=\partial_v\Phi_1\Phi_2-\partial_v\Phi_2\Phi_1.
\tag{4.1}
$$

The master equation gives

$$
\partial_vW_u+\partial_uW_v=0.
\tag{4.2}
$$

Equivalently, $W_u\,du-W_v\,dv$ is closed.  Its oriented boundary integral
is exactly (3.5) on the two null sides and the scalar symplectic form on
$\Sigma_{U,V}$.  This is an independent two-dimensional check of the Maxwell
Stokes argument.

## 5. Generator dressing and every endpoint term

At the symplectic-potential level, the $N_+$ identity is

$$
\Theta_{N_+}
=\int_{N_+}r^A\delta\bar a_{+A}
+\left[\int_SE\,\delta\alpha_+\right]_{0}^{V},
\tag{5.1}
$$

while the incoming $N_-$ identity is

$$
\Theta_{N_-}^{\mathrm{in}}
=\int_{N_-}p^A\delta\bar a_{-A}
-\left[\int_SE\,\delta\alpha_-\right]_{0}^{U}.
\tag{5.2}
$$

These are literal integrations by parts using
$\partial_vE=s_\ell r^E$ and $\partial_uE=-s_\ell p^E$ in the exact sector.
No endpoint has been discarded.

The main policy has

$$
\delta\alpha_+(V)=\delta\alpha_-(U)=0.
\tag{5.3}
$$

The remaining $S_0$ potential is therefore

$$
\Theta_{S_0}
=-\int_{S_0}E_0\,\delta\chi_+
+\int_{S_0}E_0\,\delta\chi_-
=\int_{S_0}E_0\,\delta\lambda_{\mathrm{rel}}.
\tag{5.4}
$$

After diagonal reduction,

$$
\Omega_{S_0}^{\mathrm{red}}
=\int_{S_0}\delta E_0\wedge\delta\lambda_{\mathrm{rel}}.
\tag{5.5}
$$

But (6.4) of calculation 05 makes $\lambda_{\mathrm{rel}}$ a continuous
functional of $r^E,p^E$.  Thus (5.5), together with the two dressed sheet
terms, is exactly a re-expression of the raw form (3.3)--(3.4).  It is not a
new canonical pair.  In the single global representative (5.2), the same
two-form is already contained in the electric-flux terms and no separate
corner term is written.

If the outer frames vary, the two omitted pieces are instead

$$
\int_{S_+}\delta E_+(V)\wedge\delta\alpha_+(V)
-\int_{S_-}\delta E_-(U)\wedge\delta\alpha_-(U).
\tag{5.6}
$$

That endpoint-inclusive charged theory is different from the theorem proved
here.

## 6. Lee--Wald ambiguity audit

Consider

$$
\theta\longmapsto\theta+dY+\delta B.
\tag{6.1}
$$

The $\delta B$ term contributes zero to the antisymmetrized field-space
second variation.  The $dY$ term changes the current by

$$
\omega\longmapsto\omega+d y,
\qquad
y(1,2)=\delta_1Y[\delta_2]-\delta_2Y[\delta_1].
\tag{6.2}
$$

Consequently each hypersurface form shifts by its endpoint integral.  In the
finite Stokes region, the $S_0$ contributions from the two smoothly joined
null sheets cancel with opposite boundary-of-boundary orientations, and the
$S_\pm$ contributions match the endpoints of $\Sigma_{U,V}$.  Thus the
equality (1.1) survives a common representative change when all endpoint
terms are transformed together.

The numerical expression assigned to a single sheet does depend on this
choice.  One may not change $Y$ on the null sheets while keeping the bulk or
outer endpoint polarization fixed.  A genuinely dynamical boundary action
with its own kinetic variables would add a new boundary symplectic current and
defines another theory; no such action is included here.

The divergence in the electric parent action used by the read-only master
reduction is of the same endpoint type.  The direct Maxwell calculation
(3.3)--(3.4) verifies the final two-form without discarding it.

## 7. Rapid-core convergence and nondegeneracy

Every finite harmonic smooth partial sum satisfies (1.1).  Rapid angular decay
and the matched-$H^1$ bound make the sums of (3.5) and the endpoint
functionals convergent after any fixed angular differentiation.  Density of
the smooth-generator subcore extends the identity to the declared
matched-$H^1$ graph.

If a rapid physical vector lies in the kernel, test against variations with
one harmonic and one polarization.  Weak nondegeneracy of the matched-$H^1$
form forces that coefficient to vanish.  Hence the only kernel before the
anchored quotient is the proper-plus-diagonal gauge algebra found in
calculation 05.

## 8. Theorem L-E

Under the L-D assumptions, $R_X$ is a Fréchet symplectomorphism between the
anchored Maxwell proper-gauge quotient and the intrinsic corner-complete
characteristic space.  The theorem is `proved` on the rapid-angular
matched-$H^1$ core.

The shifted Sobolev/graph symplectomorphism remains `conditional` with the
corresponding reconstruction completion.

## Verified

- raw electric and magnetic Maxwell pullbacks equal (3.5) on both sheets;
- the signs in both dressing identities and their complete endpoint terms;
- closure of the master symplectic one-form;
- the anchored relative-frame substitution.

## Assumptions

- the Maxwell Lee--Wald representative of calculation 00;
- fixed outer generator frames and exact dressed-connection anchors;
- rapid angular decay, matched-$H^1$ generator regularity, and finite $U,V$.

## Not verified

- a shifted Sobolev/graph symplectomorphism;
- an endpoint-inclusive charged boundary action or a different $Y$ chosen on
  only part of the boundary.
