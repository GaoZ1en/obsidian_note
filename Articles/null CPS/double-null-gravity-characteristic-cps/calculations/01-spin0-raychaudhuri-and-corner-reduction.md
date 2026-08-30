# 01 — Spin-0 Raychaudhuri pullback and finite-corner kill test

## 1. Decisive verdict

**The statement “the reduced spin-0 sector is only
$\delta m_0\wedge\delta\Omega_0$” is not proven and is false for the isolated
sheet-bulk pullback at finite affine length.**  The exact sheet pullback has a
nonzero $\delta\Omega_0\wedge\delta\theta_{\pm0}$ term.  Endpoint-complete
reduction can move or cancel it only through the retained outer-cut
normal/area sector.  Because the target data do not specify that sector, the
finite reduced CPS does not close on the proposed variables in this round.

This is the Stage-1 kill-test result, not a roadmap.

## 2. Shear-free affine constraint

On each branch impose

$$
\sigma^\pm_{AB}=0,\qquad \omega_A=0,\qquad \kappa_\pm=0,
$$

but do not linearize the vacuum Raychaudhuri equation.  With the definitions
of calculation 00,

$$
\partial_{\lambda_\pm}\theta_\pm
=-\frac12\theta_\pm^2,
\qquad
\partial_{\lambda_\pm}\Omega_\pm
=\theta_\pm\Omega_\pm.
\tag{2.1}
$$

For

$$
F_\pm(\lambda_\pm):=1+\frac12\lambda_\pm\theta_{\pm0},
\qquad F_\pm>0,
\tag{2.2}
$$

the exact solution is

$$
\boxed{
\theta_\pm(\lambda_\pm)=\frac{\theta_{\pm0}}{F_\pm},
\qquad
\Omega_\pm(\lambda_\pm)=\Omega_0F_\pm^2.}
\tag{2.3}
$$

The $F_\pm>0$ condition is the finite caustic-free domain.  Direct
differentiation verifies both equations and the initial values.  No
small-$\theta$ or small-length expansion is used.

## 3. Pullback of the sheet bulk potential

The spin-0 part of (5.1) in affine gauge is

$$
\Theta_{N_\pm}^{(0),\rm bulk}
=-\frac{C_G}{2}\int_0^{L_\pm}
\theta_\pm\,\delta\Omega_\pm\,d\lambda_\pm d^2x.
\tag{3.1}
$$

Pointwise in $x$, (2.3) gives

$$
\delta\Omega_\pm
=F_\pm^2\delta\Omega_0
+\Omega_0F_\pm\lambda_\pm\delta\theta_{\pm0},
$$

and hence

$$
\int_0^{L_\pm}\theta_\pm\delta\Omega_\pm d\lambda_\pm
=\left(\theta_{\pm0}L_\pm
+\frac14\theta_{\pm0}^2L_\pm^2\right)\delta\Omega_0
+\frac12\Omega_0\theta_{\pm0}L_\pm^2
\delta\theta_{\pm0}.
\tag{3.2}
$$

Taking the field-space exterior derivative gives the simple exact result

$$
\boxed{
\Omega_{N_\pm}^{(0),\rm bulk}
=\delta\Theta_{N_\pm}^{(0),\rm bulk}
=\frac{C_G L_\pm}{2}
\delta\Omega_0\wedge\delta\theta_{\pm0}.}
\tag{3.3}
$$

The cancellation of every nonlinear $\theta_{\pm0}L_\pm^2$ coefficient in
(3.3) is checked exactly by the script.  A symbolic check of (3.3) is not a
proof that no cut ambiguity exists.

Summing the two branches and imposing the common corner area once gives

$$
\Omega_{X,\rm bulk}^{(0)}
=\frac{C_G}{2}\delta\Omega_0\wedge
\left(L_+\delta\theta_{+0}+L_-\delta\theta_{-0}\right).
\tag{3.4}
$$

There are not two copies $\Omega_{0+},\Omega_{0-}$.  Equation (3.4) is two
sheet fluxes evaluated on one matched corner coordinate, not double counting
of the corner area.

## 4. Initial null--null joint

The single initial joint has

$$
a_0=-m_0-\log2.
$$

In the area-Dirichlet corner polarization its potential is

$$
\Theta_{S_0}=C_G\int_{S_0}a_0\,\delta\Omega_0\,d^2x,
$$

so

$$
\boxed{
\Omega_{S_0}=-C_G\int_{S_0}
\delta m_0\wedge\delta\Omega_0\,d^2x.}
\tag{4.1}
$$

The sign in (4.1) follows from the positive characteristic orientation and
$a_0=-m_0-\log2$.  Reversing the total hypersurface orientation reverses the
whole symplectic form, not the identification of the pair.  The constant
$-\log2$ changes the potential representative but not (4.1).

This is one corner pair.  Adding one copy per sheet would double count $S_0$.
Reisenberger gr-qc/0703134 and its expanded derivation arXiv:1211.3880 are used
only as regression checks.  In the latter, eqs. (182), (187), and (194)--(195)
contain a single area/relative-normal sector and pair twist with endpoint maps.
They are not used to delete (3.4), to fix an outer polarization, or to import a
completeness claim.

## 5. Why the outer cuts are decisive

The outer areas are not independent of the proposed initial data:

$$
\Omega_{\pm L}=\Omega_0
\left(1+\frac12L_\pm\theta_{\pm0}\right)^2.
\tag{5.1}
$$

The action-derived cut potential contains, schematically but with fixed
normalization from calculation 00,

$$
\Theta_{S_\pm}^{(0)}
=\frac{C_G}{2}(1+h_{\pm L})\delta\Omega_{\pm L},
\tag{5.2}
$$

and the null--other LMPS joint contains $a_\pm$ from (4.3).  Therefore

$$
\delta\Theta_{S_\pm}^{(0)}
=\frac{C_G}{2}\delta h_{\pm L}\wedge\delta\Omega_{\pm L},
\tag{5.3}
$$

with the corresponding $a_\pm$ version after the endpoint canonical
transformation.  Because $\delta\Omega_{\pm L}$ contains both
$\delta\Omega_0$ and $\delta\theta_{\pm0}$, (5.3) can change the rank and the
canonical partner of $\theta_{\pm0}$.

The minimum missing input is thus explicit:

1. the type and oriented normal of each boundary piece meeting $S_\pm$;
2. whether $h_{\pm L}$ or $a_\pm$ is fixed, varied, or paired with an outer
   embedding variable;
3. whether $L_\pm$ themselves are fixed affine lengths or endpoint-location
   variables;
4. the residual affine rescaling/boost condition at both outer cuts.

Without these data one may neither set (5.3) to zero nor prove that it cancels
(3.3).  “Finite interval” is essential: no appeal to infinity or vanishing
endpoint variations is made.

## 6. What can be decided about the expansions

With fixed affine lengths and frozen outer normal variables, the displayed
bulk-plus-initial-corner form is

$$
\Omega_{\rm displayed}^{(0)}
=\frac{C_G}{2}\delta\Omega_0\wedge
(L_+\delta\theta_{+0}+L_-\delta\theta_{-0})
-C_G\delta m_0\wedge\delta\Omega_0.
\tag{6.1}
$$

Thus neither expansion has its own independent coordinate partner.  Only one
weighted combination couples to the shared area; the orthogonal combination
is a kernel direction within this restricted spin-0 truncation.  If outer cut
variables are allowed, the expansions enter through $\Omega_{\pm L}$ and can
acquire outer partners.  Consequently:

- **proved:** the initial joint area/boost pair survives once;
- **false:** the isolated sheet-bulk pullback vanishes;
- **not proven:** that endpoint-complete reduction leaves only the joint pair;
- **not proven:** independent canonical partners for both expansions;
- **open:** the final rank after an explicit outer-cut polarization and all
  gauge quotients.

## 7. Representative check

On (2.3),

$$
\int_0^L\Omega\theta\,d\lambda=\Omega_L-\Omega_0.
$$

The $\kappa+\theta$ sheet representative therefore adds
$C_G(\Omega_L-\Omega_0)$.  The endpoint shift (4.6) subtracts precisely the
same functional.  Its field-space variation cancels at both endpoints, so the
complete presymplectic two-form is unchanged.  Omitting either $S_0$ or $S_L$
would make the two action representatives spuriously inequivalent.

## 8. Verification boundary

**Verified:** exact Raychaudhuri solution, area reconstruction, sheet
pullback integral, field-space curl, outer-area differential, and the complete
representative shift.

**Assumptions:** vacuum, four dimensions, affine fixed generators, zero shear
and twist, caustic-free $F_\pm>0$, fixed $L_\pm$ for (3.3).

**Not verified:** cross-focusing and Damour constraints, existence of a vacuum
development for arbitrary angular dependence in this truncation, complete
outer-boundary gluing, nondegeneracy, or a reduced action.
