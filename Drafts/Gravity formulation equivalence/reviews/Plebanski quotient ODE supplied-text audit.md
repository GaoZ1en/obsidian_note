# Supplied-text audit: coframe ODE and finite quotient

**Verdict: accepted within the stated sector.** This targeted audit concerns only the revised [§5.2 of the branch comparison](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/08 Real Plebanski branch comparison.md#L348-L374>): the metric-plot lifting ODE, finite arrows, stabilizers, and diffeological orbit-space correspondence. It assumes the previously established field equations and unique connection/multiplier reconstruction. It does not re-audit the boundary or presymplectic calculation.

## 1. The ODE is correct, including for noncompact M

For a jointly smooth admissible metric plot, take the stated parameter path and set

\[
A_t=\tfrac12g_t^{-1}\dot g_t,\qquad
\dot E_t=E_tA_t,\qquad H_t=E_t^T\eta E_t.
\]

Then

\[
\dot H_t=A_t^TH_t+H_tA_t.
\]

Symmetry of g_t and its derivative gives

\[
A_t^Tg_t+g_tA_t
=\tfrac12\dot g_t+\tfrac12\dot g_t
=\dot g_t.
\]

Thus H_t and g_t obey the same linear matrix ODE with the same initial value. Uniqueness proves H_t = g_t, hence E_t remains invertible. The equation is coordinate independent: g_t⁻¹ dot g_t is an endomorphism of TM and acts on the right of the coframe map.

The parameter path stays within the metric plot because its parameter neighborhood is star-shaped; it is not an unsafe straight-line interpolation of Lorentz tensors. For each fixed (u,x), the linear coefficients are smooth throughout the compact interval [0,1], giving existence there. Smooth dependence is local in (u,x), and uniqueness glues these local solutions into a jointly smooth global family. No uniform estimate over noncompact M is needed.

Orientation is preserved by invertibility and continuity. Future compatibility likewise persists for the usual notion of a plot of **time-oriented** metrics, whose chosen future cone varies continuously. Arbitrary discontinuous time-orientation labels attached to a smooth tensor plot would not be covered; that is not the stated fixed time-oriented sector.

The resulting reconstructed solution has the given metric wall data; there is no prescribed boundary frame to violate. Its connection is torsion free by reconstruction. Consequently the ODE supplies a local-in-parameter smooth lift of every admissible metric plot to the Plebanski solution space. Reconstruction in the opposite direction is local smooth algebra, while the derived connection and multiplier involve only finitely many derivatives. Passing to quotient diffeology therefore gives a smooth inverse to the finite orbit bijection, as claimed.

## 2. Arrows and stabilizers

For allowed orientation/time-orientation-preserving f with $g_2=f^*g_1$, the compatible roots determine exactly one compensator,

\[
\Lambda=e_2(f^*e_1)^{-1}\in C^\infty(M,SO_0(1,3)).
\]

It sends the entire first reconstructed solution to the second, because the connection and multiplier are uniquely and naturally determined. Conversely every combined frame/diffeomorphism arrow projects to this metric arrow. Thus the forgetful map is fully faithful on each pair of endpoint objects and essentially surjective; it need not be injective on raw field objects.

A pure internal stabilizer has $\bigwedge^2\Lambda=\mathrm{Id}$, hence $\Lambda=\pm\mathrm{Id}$; only +Id lies in SO₀. For a combined stabilizer, each admitted metric isometry has exactly the compensator above and no other internal freedom. Therefore its stabilizer group is isomorphic to Isom(g) ∩ D, with the standard consistent convention for composing pullback actions. This does not assert that the full quotient action is free.

**Scope.** No substantive gap was found in these revised claims. The final presymplectic/symplectic statement is explicitly conditional on common descent and regularity and is not independently verified here. No previous computational suite was rerun, no other agents' reports were read, and no source report was modified.
