# Null-Interface Trace and Cell Composition

## 1. Direct verdict

**Status: proved** for the anchored $Q_E=n=0$, $\ell\geq1$ Maxwell theory on
the rapid-angular matched-$H^1$ core.  The composition theorem uses a complete
Maxwell trace, not a naked radiative master profile:

$$
\boxed{
\mathcal P(D_1)\circ_N\mathcal P(D_2)
\simeq_{\mathrm{sympl}}
\mathcal P(D_1\cup_ND_2).}
\tag{1.1}
$$

Here $\mathcal P$ denotes the anchored proper-gauge quotient of calculation
05.  The theorem is a B1 classical symplectic composition statement, not a
regional tensor-factorization claim.

## 2. Complete intrinsic null trace

Take an internal interface

$$
N=\{u=u_*\}\times[v_0,v_1]\times S^2_R
$$

with inclusion $i_N$.  In the conventions of calculation 01,

$$
i_N^*F=dv\wedge r+b,
\qquad
i_N^*(*F)=-E\,\operatorname{vol}_{S^2}+dv\wedge *_Sr.
\tag{2.1}
$$

Thus the complete gauge-invariant trace is

$$
\tau_F(N)=
\left(r_A(v),E(v),b_{AB}(v);
(E,b)|_{S_a},(E,b)|_{S_b}\right),
\tag{2.2}
$$

subject to the Maxwell/Bianchi transport constraints on $N$.  Although $E$
and $b$ are transported from one endpoint once $r$ is known, they remain in
the completed trace object because they are precisely the normal electric and
magnetic matching data.

The potential-level trace additionally records

$$
\tau_A(N)=
(A_v,a_A;\alpha,\bar a_A;
\chi_a,\chi_b;\zeta_N),
\tag{2.3}
$$

where $A_v=\partial_v\alpha$, $\bar a=a-d_S\alpha$, and $\zeta_N$ is the
transition function comparing the two regional potential representatives.
Endpoint values of $\zeta_N$ are part of the cut/frame policy.

Define

$$
\mathcal T(N)=\{\tau_F(N),\tau_A(N)\}/
\mathcal G_{\mathrm{proper}}(N).
\tag{2.4}
$$

This contains every item requested in the project statement: radiative trace,
transported electric/magnetic fields, endpoint cut data, and gauge
transition/frame information.

## 3. Compatibility and the diagonal interface group

Two regional traces are compatible when

$$
i_N^*F_1=i_N^*F_2,
\qquad
i_N^*(*F_1)=i_N^*(*F_2),
\tag{3.1}
$$

and their potentials satisfy

$$
i_N^*A_2-i_N^*A_1=d_N\zeta_N.
\tag{3.2}
$$

Equation (3.1) is equality of $r,E,b$ in the common coordinate orientation;
in outward-normal conventions the corresponding fluxes have opposite signs.
Since

$$
H^1([v_0,v_1]\times S^2)=0,
\tag{3.3}
$$

equality of the curvatures in (3.1) makes (3.2) solvable in the fixed trivial
bundle.  Its solution is unique modulo a common interface frame.

The group $\mathcal G_{\mathrm{diag}}(N)$ changes the two regional interface
representatives by the same transition/frame function.  In the extended
boundary presentation, oriented electric-flux matching is its moment-map
condition.  Magnetic curvature matching and (3.2) remain additional
fiber-product restrictions.  This is the interface analogue of the strict
distinction established at $S_0$ in calculation 03.

## 4. Distributional Maxwell gluing test

Let $\rho$ define the interface, with $D_1=\{\rho<0\}$ and
$D_2=\{\rho>0\}$.  The piecewise field is

$$
F=\Theta(-\rho)F_1+\Theta(\rho)F_2.
$$

Since each regional field is source free,

$$
dF=\delta(\rho)d\rho\wedge(F_2-F_1),
\qquad
d*F=\delta(\rho)d\rho\wedge(*F_2-*F_1).
\tag{4.1}
$$

The delta terms vanish exactly when (3.1) holds.  Hence the complete trace
conditions exclude both magnetic surface defects and electric surface
currents.  No transverse component is matched by hand: characteristic
evolution determines the allowed one-sided transverse derivatives, and the
union solution is understood in the matched-$H^1$ graph.  On the dense smooth
subspace, matching all generator jets gives the corresponding smooth union.

## 5. Equivalence with both matched master traces

For a vertical interface, the electric sector obeys

$$
E^E=-s_\ell\Phi^E,
\qquad r^E=-\partial_v\Phi^E,
\tag{5.1}
$$

while the magnetic sector obeys

$$
B^B=-s_\ell\Phi^B,
\qquad r^B=\partial_v\Phi^B.
\tag{5.2}
$$

Because $s_\ell>0$, equality of the two master $H^1$ traces is equivalent to
all of (3.1): the trace value matches $E^E$ or $B^B$, and its tangential
derivative matches the corresponding part of $r_A$.  Conversely (3.1)
recovers both master traces.  Thus the master trace is a coordinate system for
the complete intrinsic Maxwell trace in this fixed sector; it does not replace
the potential transition equation (3.2).

The matched master Goursat theorem gives a unique union solution.  Applying
the field-strength and canonical-potential lifts of calculation 05 produces a
unique anchored Maxwell class on $D_1\cup_ND_2$.

## 6. Composition map and inverse

Let $\mathcal C_{12}^{\mathrm{Max}}$ be the locus (3.1)--(3.2), including the
two endpoint policies.  Define

$$
\mathcal P(D_1)\circ_N\mathcal P(D_2)
:=
\left[
\mathcal P(D_1)\times_{\mathcal T(N)}\mathcal P(D_2)
\right]//\mathcal G_{\mathrm{diag}}(N).
\tag{6.1}
$$

Restriction of a union solution gives an element of
$\mathcal C_{12}^{\mathrm{Max}}$.  Conversely Section 5 reconstructs the
union field.  The regional potentials differ from the restriction of the
union canonical potential only by anchored regional gauges; their interface
difference is precisely $d_N\zeta_N$.  Quotienting the diagonal interface
group removes the arbitrary choice of $\zeta_N$ representative.  These two
maps are continuous inverses on the rapid matched-$H^1$ core.

## 7. Internal null-flux cancellation

Before gluing, retain the complete Lee--Wald flux from each cell.  The two
induced orientations on $N$ are opposite.  On the compatibility locus, choose
the common potential representative supplied by (3.2).  Then

$$
\int_N\omega_1+\int_N\omega_2=0.
\tag{7.1}
$$

If separate representatives are kept, their difference is a gauge exact term;
the endpoint contributions cancel only after the endpoint transition data and
diagonal reduction are included.  Dropping those endpoint terms before the
reduction would change the phase space.

All other boundary pieces are the oriented outer boundary of the union.
Therefore

$$
G_{12}^*\Omega_{D_1\cup_ND_2}
=\left.(\Omega_{D_1}+\Omega_{D_2})\right|_{\mathcal C_{12}^{\mathrm{Max}}}
\tag{7.2}
$$

after the diagonal quotient.  T-E and weak nondegeneracy of the two master
blocks show that no physical kernel remains.

## 8. Theorem T-F

Equations (6.1)--(7.2) prove T-F on the anchored rapid-angular matched-$H^1$
core.  The complete trace, distributional Maxwell test, potential transition,
Goursat uniqueness, and internal-flux cancellation all enter the proof.

The shifted Sobolev/graph completion beyond the declared matched-$H^1$ graph,
nontrivial topology, charged outer frames, and $\ell=0$ remain `conditional`.

## Verified

- the finite full-Maxwell trace/connection compatibility rank;
- the diagonal interface kernels and field-strength quotient;
- the reduced Lee--Wald pullback.

## Assumptions

- trivial bundle and $H^1(N)=0$;
- anchored outer frames, rapid angular decay, matched-$H^1$ generators;
- the T-D and T-E theorems.

## Not verified

- charged endpoint-inclusive composition;
- harmonic interface holonomies or non-Abelian transition cocycles.
