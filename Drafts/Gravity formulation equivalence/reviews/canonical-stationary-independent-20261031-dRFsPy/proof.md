# Canonical isotopies and stationary BV tree transfer

## Result

**The effective family is canonically related, with generator equal to the full generator evaluated on the actual stationary graph. The UV part of the antibracket does not generally vanish.** Its surviving contribution is exactly the chain-rule term in that graph restriction.

Let `j_t(x)=x+y_t(x)` be the full graded stationary graph in a fixed UV Lagrangian. Under the hypotheses below,

\[
\boxed{\gamma_t=j_t^*\Gamma_t,\qquad
\partial_tS_{\mathrm{eff},t}=(S_{\mathrm{eff},t},\gamma_t)_P.}
\tag{1}
\]

The canonical map with the sign appropriate to `QF=(S,F)` is

\[
\boxed{\dot f_t^A=(\gamma_t,z^A)_P\circ f_t,\qquad f_0=\mathrm{id},
\qquad f_t^*S_{\mathrm{eff},t}=S_{\mathrm{eff},0}.}
\tag{2}
\]

The naive map obtained by projecting the full canonical map is not generally canonical. An exact finite-dimensional example below has a nonzero UV-induced ghost-antifield term and explicitly separates these two maps.

This is a classical/tree statement. No integration measure, BV Laplacian, quantum master equation, or infinite-dimensional determinant is used.

## 1. Definitions and hypotheses

Work in characteristic zero. Let `E=E_P⊕E_R` be a graded vector space with a constant nondegenerate odd symplectic pairing, split orthogonally by a paired projector `P`, and put `R=1−P`. The induced pairing on `E_P` is nondegenerate. The chain differential and `S_2` are assumed compatible in the stated shifted/totalized convention, and the chain projection commutes with that differential. Consequently the quadratic action has no retained–UV cross term. The proof uses `Q=(S,·)` directly; it does not identify `QΨ` with the raw expression `D_TΨ` without its convention-dependent coefficient signs.

The cyclic contraction obeys

\[
Dh+hD=R,\qquad h^2=Ph=hP=0.
\]

Fix a UV Lagrangian `L=im h` on the specified algebraic, smooth, or formal domain. In an infinite-dimensional Hilbert realization this notation must not silently identify an unclosed image with its closed polarization; see §8.

Write

\[
S_t=S_2+\sum_{n\geq3}V_{n,t},\qquad
\Gamma_t=\sum_{n\geq3}\Gamma_{n,t},
\]

where `S_t` is even of ghost number zero, `Γ_t` is odd of ghost number −1, each subscript denotes total polynomial degree in all BV coordinates, and

\[
(S_t,S_t)=0,\qquad \partial_tS_t=(S_t,\Gamma_t).
\]

Choose linear UV Darboux coordinates `(y,ξ)` with `L={ξ=0}`. Let

\[
C=E_P\oplus L,\qquad
F_t(x,y)=d_y S_t(x,y,0).
\]

The quadratic Hessian `K=d_y^2 S_2|_L` is an isomorphism on the relevant source and target spaces. Formally this gives a unique solution

\[
F_t(x,y_t(x))=0,\qquad y_t=O(x^2).
\tag{3}
\]

In the smooth case require the corresponding parameter-dependent implicit-function theorem and a common local branch on the time interval. Its full stationary Hessian remains invertible after shrinking that branch. All ghost and antifield variables participate in (3), including even ghost antifields. A solution only on the physical body is not (3).

For local finite-dimensional smooth functions these conditions also give the local flow in (2) after shrinking the retained neighborhood. Formally the generator starts in degree three, so its vector field raises polynomial degree and its time-ordered flow is defined in the completed polynomial algebra. In infinite dimensions existence of this Hamiltonian vector field and its flow are separate analytic hypotheses.

### Coefficient-first antibracket

For a Darboux pair `(q,p)` of opposite parities and ghost numbers summing to −1, use

\[
(F,G)=\sum_i\left[
(F\overleftarrow\partial_{q^i})(\partial^L_{p_i}G)
-(F\overleftarrow\partial_{p_i})(\partial^L_{q^i}G)
\right],\qquad(q^i,p_j)=\delta^i_j.
\tag{4}
\]

For a homogeneous function,

\[
F\overleftarrow\partial_z=(-1)^{|z|(|F|+1)}\partial_z^L F.
\tag{5}
\]

Thus for even `S`, `Qq=(−1)^{|q|}∂^L_pS` and `Qp=(−1)^{|q|}∂^L_qS`. For odd `γ`, the even Hamiltonian vector field used in (2) is

\[
(\gamma,q)=-\partial_p^L\gamma,\qquad
(\gamma,p)=\partial_q^L\gamma.
\tag{6}
\]

These signs apply also when the first member of a Darboux pair is an odd ghost and the second is its even antifield.

## 2. The stationary graph is a full BV chain map

Set `Q_t=(S_t,·)`. The classical master equation implies `Q_t^2=0`.

For each UV conjugate coordinate `ξ_a`, constant Darboux brackets give

\[
Q_t\xi_a=\sigma_a\,\partial^L_{y^a}S_t,
\tag{7}
\]

where `σ_a=±1` is a fixed parity sign. Extend the derivative on the right to the full ambient space, before setting `ξ=0`. Consequently

\[
Q_t(\partial^L_{y^a}S_t)=\sigma_a Q_t^2\xi_a=0.
\tag{8}
\]

The stationary graph is precisely the common zero locus

\[
\xi=0,\qquad \partial_yS_t=0
\]

near the chosen branch. Equations (7)–(8) show that `Q_t` preserves these defining equations. Invertibility of the stationary Hessian makes this locus a regular graph. Therefore `Q_t` is tangent to it.

Let `Q_t^P` be the induced vector field on `E_P`. Differentiating the stationary action gives, with all graded derivatives interpreted by the chain rule,

\[
d_x S_{\mathrm{eff},t}=j_t^*(d_x S_t),
\tag{9}
\]

because the `d_yS_t·d_xy_t` term vanishes. The retained components of the ambient Hamiltonian vector field therefore identify the induced vector field:

\[
Q_t\circ j_t=dj_t\,Q_{\mathrm{eff},t},\qquad
Q_{\mathrm{eff},t}=(S_{\mathrm{eff},t},\cdot)_P.
\tag{10}
\]

In particular, for **every** ambient function `A`,

\[
\boxed{j_t^*(S_t,A)=(S_{\mathrm{eff},t},j_t^*A)_P.}
\tag{11}
\]

The graph embedding is also symplectic: its UV tangent component takes values in the isotropic space `L`, while the split pairing has no retained–UV cross term. Hence `j_t^*ω=ω_P`.

For completeness, the effective CME follows directly by restricting `(S_t,S_t)=0`: every UV bracket term contains a derivative in a `y` direction and vanishes on the stationary graph, while the retained derivatives are (9). This argument is legitimate for `(S_t,S_t)` because **both** entries are `S_t`. It is not legitimate for `(S_t,Γ_t)`.

## 3. Proof of the effective canonical relation

The time derivative of the stationary action is

\[
\partial_t S_{\mathrm{eff},t}
=j_t^*(\partial_tS_t)+j_t^*(d_yS_t)\,\partial_ty_t
=j_t^*(S_t,\Gamma_t).
\]

Apply (11) with `A=Γ_t` to obtain (1).

Because `γ_t` is odd, `(γ_t,·)_P` is an even Hamiltonian vector field, and its flow is symplectic. Along (2),

\[
\frac d{dt}f_t^*S_{\mathrm{eff},t}
=f_t^*\left((S_{\mathrm{eff},t},\gamma_t)_P
+(\gamma_t,S_{\mathrm{eff},t})_P\right)=0.
\]

This proves (2), with its sign fixed rather than inferred from an unspecified convention for a canonical pullback. The natural generator is not unique: adding a ghost-number −1 function annihilated by `Q_eff,t` leaves the action deformation unchanged.

### Opposite direction: right-Hamiltonian action pullback

If the desired direction is from the initial action to the final action, let `g_t=f_t^{-1}` and `U_t=g_t^*`. Then

\[
S_{\mathrm{eff},t}=g_t^*S_{\mathrm{eff},0},\qquad
\partial_tU_t=A_{\gamma_t}U_t,\qquad A_{\gamma_t}F=(F,\gamma_t)_P.
\]

This is the right-Hamiltonian **action-pullback** convention. For a time-dependent generator the inverse map is not obtained simply by integrating the opposite time-dependent vector field with the same initial-value prescription: the operator ordering matters. Equation (2) or the displayed operator evolution removes that ambiguity. For an autonomous generator the two maps are the usual opposite flows, explicitly exhibited in §5.

The contraction and fixed quadratic part supply the regular fixed polarization and the homogeneous order estimates. The descent argument itself is more general: a stationary symplectic graph that is independently known to be `Q`-invariant suffices. Hessian invertibility is a convenient sufficient regularity condition, not a logically necessary condition in every degenerate example.

### The dangerous UV term

For an even UV coordinate `u` and its odd conjugate `v`, stationarity sets `S_u=0`, but (4) gives

\[
(S,\Gamma)_{UV}|_j
=-\big(S\overleftarrow\partial_v\big)|_j\,(\partial_u\Gamma)|_j
=(\partial_v^LS)|_j\,(\partial_u\Gamma)|_j.
\tag{12}
\]

Nothing in `∂_LS=0` sets `∂_vS` to zero. Equation (10) says that this remaining term, together with its general graded analogues, is precisely the contribution from differentiating `Γ(x,y_t(x),0)` through `y_t(x)`. Suppressing it generally changes the answer.

## 4. Homogeneous formulas through quartic degree

Suppress `t` temporarily. Define `f_n=d_LV_n(x)` and define the even graded Hessian by the Taylor coefficient

\[
S_2(x+y)=S_{2,P}(x)+\frac12K(y,y).
\]

Pairing a covector with a vector below means its ordered graded evaluation, not an ungraded matrix contraction. With

\[
y=y_2+y_3+O(x^4),
\]

the stationary equation gives

\[
\boxed{y_2=-K^{-1}f_3,\qquad
y_3=-K^{-1}\left(f_4+d_L^2V_3(x)[y_2,\cdot]\right).}
\tag{13}
\]

The effective vertices and generator are

\[
\begin{aligned}
W_2&=S_{2,P},\\
W_3&=V_3(x),\\
W_4&=V_4(x)+f_3(y_2)+\tfrac12K(y_2,y_2)
     =V_4(x)-\tfrac12 f_3(K^{-1}f_3),\\
\gamma_3&=\Gamma_3(x),\\
\boxed{\gamma_4}&\boxed{=\Gamma_4(x)+d_L\Gamma_3(x)[y_2]
=\Gamma_4(x)-d_L\Gamma_3(x)[K^{-1}f_3].}
\end{aligned}
\tag{14}
\]

For the middle equality, use the degree-two stationary equation `K(y_2,·)+f_3=0`, including its graded ordering. In particular a generator whose naive retained restriction vanishes can still induce a nonzero quartic retained generator.

The exact relation (1) resolves degree by degree into

\[
\boxed{
\dot W_3=(S_{2,P},\gamma_3)_P,\qquad
\dot W_4=(S_{2,P},\gamma_4)_P+(W_3,\gamma_3)_P.}
\tag{15}
\]

The corresponding full relations are `dot V_3=(S_2,Γ_3)` and `dot V_4=(S_2,Γ_4)+(V_3,Γ_3)`. In general one cannot project the second of these and omit its UV bracket.

For an explicit coordinate map to the order that controls quartic actions, put `X_{n,t}=(γ_{n,t},z)_P`, a vector homogeneous of degree `n−1`, and write

\[
f_t(x)=x+a_{2,t}(x)+a_{3,t}(x)+O(x^4).
\]

Then

\[
\begin{aligned}
a_{2,t}&=\int_0^t X_{3,s}\,ds,\\
a_{3,t}&=\int_0^t X_{4,s}\,ds
+\int_{0\leq u\leq s\leq t}(dX_{3,s})X_{3,u}\,du\,ds.
\end{aligned}
\tag{16}
\]

All time parameters are even. For time-independent `γ_3,γ_4`, this becomes `a_2=tX_3` and `a_3=tX_4+(t²/2)(dX_3)X_3`. A fourth-degree coordinate correction would require the fifth-degree generator and is not determined by quartic action data alone.

### Cyclic dg Lie specialization and the stated totalization

Use exactly

\[
(\eta u)(\zeta v)=(-1)^{\deg(u)\,\mathrm{gh}(\zeta)}\eta\zeta\,u\wedge v,
\quad D_T(\eta u)=(-1)^{\mathrm{gh}(\eta)}\eta Du,
\quad h_T(\eta u)=(-1)^{\mathrm{gh}(\eta)}\eta hu,
\]

and

\[
\Psi=c+\alpha-\kappa^{-1}S_{\mathrm{int}}p
+\kappa^{-1}S_{\mathrm{int}}c^*.
\tag{17}
\]

For `S_2=(1/2)B(Ψ,D_TΨ)` and `V_3=(1/6)B(Ψ,[Ψ,Ψ])`, cyclic variation yields `dV_3[δΨ]=(1/2)B(δΨ,[Ψ,Ψ])`. Stationarity says that the UV Euler expression `R(D_Ty+[x+y,x+y]/2)` annihilates `L`, hence belongs to `L` because `L` is Lagrangian. Apply `h_T`: it annihilates `L`, and `h_TD_Ty=y` for `y∈im h_T`. Conversely, on the contraction domain `ker h_T∩RE=im h_T`, so this implication reverses. Thus, independently of any earlier transfer assertion, the fixed-polarization stationary equation reads

\[
y=-\tfrac12h_T[x+y,x+y].
\]

Writing `b=[x,x]`, its first two corrections are

\[
\boxed{y_2=-\tfrac12h_Tb,\qquad
y_3=+\tfrac12h_T[x,h_Tb].}
\tag{18}
\]

For a purely cubic original action,

\[
\boxed{W_4=-\tfrac18\mathcal B(b,h_Tb),\qquad
\gamma_4=\Gamma_4(x)-\tfrac12d\Gamma_3(x)[h_Tb].}
\tag{19}
\]

An existing quartic interaction contributes the additional term `V_4(x)` to `W_4`, and its derivative to `y_3` as in (13). The factor `−1/8` follows from `W_4=(1/2)f_3(y_2)`, not from a guessed propagator sign. Neither the minus sign in the physical-antifield component of (17) nor the coefficient-ghost sign in `h_T` may be discarded. The finite test below uses (4) directly and separately verifies the odd-ghost/even-antifield signs.

## 5. Exact finite graded test

Take retained Darboux pairs

\[
(q,p),\quad(r,s),\quad(c,b),\quad(d,e),
\]

with `q,r,b,e` even and `p,s,c,d` odd. Ghost numbers are

\[
\mathrm{gh}(q,r)=0,\quad\mathrm{gh}(p,s)=-1,\quad
\mathrm{gh}(c,d)=1,\quad\mathrm{gh}(b,e)=-2.
\]

Add the UV pair `(u,v)`, where `u` is even of ghost number zero and `v` odd of ghost number −1. All canonical pair brackets are +1. Set `L={v=0}`. The UV quadratic action is `u²/2`; its Hamiltonian differential has `Q_2v=u`, `Q_2u=0`. On the linear BV space, write the vector bases as `e_u,e_v`; the linear field vector has `De_u=e_v`, `De_v=0`. Set `he_v=e_u`, `he_u=0` (rather than confusing `h` on vectors with an operation on coordinate functions). This gives `h²=0`, `Dh+hD=R`, and `im h=L`. The standard odd pairing makes this contraction cyclic. The retained quadratic action is `pc+sd`.

For even real/formal `t`, set

\[
\boxed{
S_t=\tfrac12(u+r^2)^2+e^{tu}pc+sd-2(v-tbc)rd,
\qquad\Gamma=bcu.}
\tag{20}
\]

Every term has ghost number zero and even parity; `Γ` is odd of ghost number −1 and degree three. The quadratic part is fixed:

\[
S_2=\tfrac12u^2+pc+sd.
\]

This is a finite-dimensional graded example with exact smooth/formal exponentials in even variables, not an infinite-mode limit or a truncation in `t`. Analytically, at `t=0` the `(r,s)` contribution to `(S_0,S_0)` is `+4r(u+r²)d`, and the `(u,v)` contribution is `−4r(u+r²)d`; all other contributions vanish. The full flow (24) gives `S_t=(Φ_t^{-1})^*S_0`, hence proves both the CME and the stated isotopy for every `t`. The two exterior implementations independently verify these identities exactly.

The stationary equation is

\[
u+r^2+t e^{tu}pc=0.
\]

Since `(pc)^2=0`, the exact solution and Hessian are

\[
\boxed{y_t=-r^2-t e^{-tr^2}pc,\qquad
K_t=1+t^2e^{-tr^2}pc.}
\tag{21}
\]

The inverse Hessian is `1−t²e^{−tr²}pc`, so there is no hidden degeneracy. Substitution gives

\[
\boxed{S_{\mathrm{eff},t}=e^{-tr^2}pc+sd+2tbc rd,
\qquad\gamma_t=-bc r^2.}
\tag{22}
\]

The `bc·pc` correction to `Γ|_j` vanishes because it contains `c²`; the nilpotent correction in (21) is nevertheless required by the full stationary equation.

The dangerous term is explicitly

\[
\boxed{(S_t,\Gamma)_{UV}|_{j_t}=+2bc rd\neq0.}
\tag{23}
\]

Indeed `∂_v^LS_t=−2rd`, `∂_uΓ=bc`, and `−2rd·bc=+2bc rd` after moving the two odd coefficients `d,c`. The retained contribution at the fixed ambient `u` supplies `−r²e^{−tr²}pc`, while (23) supplies the second term in

\[
\partial_tS_{\mathrm{eff},t}=-r^2e^{-tr^2}pc+2bc rd
=(S_{\mathrm{eff},t},-bc r^2)_P.
\]

This term contains an even ghost antifield and two retained ghosts. Removing antifields or setting retained ghosts to zero would destroy the diagnostic.

### Exact maps and the projection counterexample

The full flow for `(Γ,·)` is

\[
\Phi_t:\quad c\mapsto e^{-tu}c,\quad
b\mapsto e^{tu}b,\quad v\mapsto v+tbc,
\tag{24}
\]

with every other coordinate fixed. It obeys `Φ_t^*S_t=S_0` and is canonical.

The retained flow for `(γ,·)_P` is

\[
\boxed{f_t:\quad c\mapsto e^{tr^2}c,\quad
b\mapsto e^{-tr^2}b,\quad s\mapsto s-2tbc r,}
\tag{25}
\]

with the remaining retained coordinates fixed. It is canonical and satisfies `f_t^*S_eff,t=pc+sd`.

In contrast, `PΦ_tj_0` has the displayed changes of `c,b` but leaves `s` fixed. It is not canonical:

\[
\boxed{(s,e^{tr^2}c)_P=-2tr e^{tr^2}c\neq0,}
\tag{26}
\]

where the original bracket `(s,c)_P` is zero. The missing `s` shift in (25) is essential.

In the opposite, **right-Hamiltonian action-pullback** direction, the exact inverse maps are

\[
\begin{aligned}
\Phi_t^{-1}:&\quad c\mapsto e^{tu}c,\quad b\mapsto e^{-tu}b,
\quad v\mapsto v-tbc,\\
f_t^{-1}:&\quad c\mapsto e^{-tr^2}c,\quad b\mapsto e^{tr^2}b,
\quad s\mapsto s+2tbc r.
\end{aligned}
\]

They obey `(Φ_t^{-1})^*S_0=S_t` and `(f_t^{-1})^*S_eff,0=S_eff,t`. The naive map `PΦ_t^{-1}j_0` again omits the `s` shift and now has the opposite-direction defect

\[
(s,e^{-tr^2}c)_P=+2tr e^{-tr^2}c\neq0.
\]

Thus either convention gives the same failure of projection, with the sign and exponential changed consistently. The general time-dependent ordering caveat in §3 is absent here because both generators are autonomous.

The homogeneous terms are

\[
\begin{aligned}
V_{3,t}&=ur^2+tupc-2vrd,\\
V_{4,t}&=\tfrac12r^4+\tfrac12t^2u^2pc+2tbc rd,\\
y_{2,t}&=-r^2-tpc,\\
W_{3,t}&=0,\qquad W_{4,t}=-tr^2pc+2tbc rd,\\
\gamma_{3,t}&=0,\qquad\gamma_{4,t}=-bc r^2.
\end{aligned}
\tag{27}
\]

Thus a cubic full generator with **zero naive retained restriction** produces a nonzero quartic retained generator. Both implementations verify the exact model; the native Sage implementation also extracts all terms in (27) by homogeneous scaling.

## 6. What happens to the full BV critical locus

There are three different statements, which must not be conflated.

1. **Full graded stationary graph:** `j_t(E_P)` is a symplectic `Q_t`-invariant submanifold, as proved in (10). It is generally not pointwise critical, and generally not stationary in the conjugate UV directions `ξ`.
2. **Critical points on the chosen polarization:** locally,
   \[
   \operatorname{Crit}(S_t)\cap C
   =j_t\bigl(\operatorname{Crit}(S_{\mathrm{eff},t})\bigr).
   \tag{28}
   \]
   This follows from (10) and invertibility of the symplectic structures, with uniqueness of the stationary branch in `C`.
3. **The full critical locus:** the full canonical flow maps `Crit(S_0)` to `Crit(S_t)`. It need not preserve `C` or the stationary graph. The assumptions do not make the entire full critical locus a graph over retained variables.

Already `S=u²/2` with no retained fields has full critical locus `{u=0, v arbitrary}` but stationary graph `{u=v=0}`. In (20), the full critical locus is

\[
u=-r^2,\qquad c=d=p=0,\qquad s=2vr,
\]

with `v` arbitrary; its intersection with `C` sets `v=s=0`. Moreover `∂_vS_t|_{j_t}=−2rd` is generally nonzero. These are concrete warnings against promoting a gauge-fixed stationary graph to the entire full BV critical locus.

The effective map (25) and the full map (24) therefore need not satisfy `Φ_tj_0=j_tf_t`. A sufficient special condition for identifying the projected map with an effective canonical map is that the full map actually carry the initial stationary graph onto the final stationary graph. In that case symplecticity of both graph embeddings proves the induced retained map canonical. Such a graph-preservation hypothesis is absent here and is false in the example.

## 7. Exact verification and limitations of verification

Two separately implemented superalgebras gave the same results:

- [Native Sage exterior source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/sage_exterior_check.py>) uses Sage 10.9 `ExteriorAlgebra` over its Symbolic Ring. [Actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/sage_actual_output.txt>) records **217/217** exact zero residuals.
- [Independent bitmask source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/bitmask_sympy_check.py>) implements exterior multiplication and left/right Grassmann derivatives directly, with SymPy 1.14.0 coefficients and no Sage exterior operations. [Actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/bitmask_actual_output.txt>) records **212/212** exact zero residuals.

Both verify the full/effective CME, full/effective canonical evolution, exact stationary solution, `Q`-tangency for all ten ambient coordinates, canonical brackets of every pair of transformed full and retained coordinates, exact transport of the actions, the nonzero UV term, and the projection defect. This is independent implementation, not a second independent human proof. Delegation depth prohibited a further fresh reviewer in this isolated review session.

The complete tool-return envelopes are frozen as [native kernel transport](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/sage_kernel_transport.json>) and [bitmask kernel transport](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/bitmask_kernel_transport.json>). The second kernel emitted six `DeprecationWarning: bitcount function is deprecated` messages, with no error and no truncation. These warnings do not alter its exact residuals. They remain visible in the frozen transport evidence rather than being silently discarded.

A [supplementary inverse-orientation check](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/inverse_orientation_check.py>) reuses only the native algebra definitions and independently runs the opposite/right-action maps. Its [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/inverse_actual_output.txt>) records **185/185** exact zero residuals, including the positive-sign projection defect; the [raw envelope](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/inverse_kernel_transport.json>) has no warning, error, or truncation. This is a supplementary test of the same native implementation, not a third independent implementation.

The general theorem is proved analytically in §§2–3; these finite tests are checks of signs, mechanism, and counterclaims, not a substitute for that proof.

## 8. Infinite-dimensional scope

The finite/formal argument extends only where all displayed operations are defined. In particular one needs:

- a common domain for `D,h,P`, the odd pairing, the nonlinear vertices, and their derivatives;
- a legitimate stationary graph theorem on the chosen completion, or a coefficientwise formal construction with well-defined finite tree contractions;
- a sufficiently strong nondegenerate retained pairing to turn `dγ_t` into an admissible Hamiltonian vector field;
- existence of the time-dependent retained Hamiltonian flow, if an actual analytic map rather than a formal map is claimed;
- differentiability and boundary conditions sufficient for the stated CME and all chain rules, without omitted boundary terms.

The spectral contraction input in [note18:183–253](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L183-L253>) distinguishes the closed UV polarization from `im(h:L²→L²)=L_0∩H¹`, a generally proper dense subspace. Its bounds on `h` and its mixed-domain construction are domain input only; they do not prove the new canonical-transfer theorem or the existence of a nonlinear retained flow on an arbitrary Sobolev scale. Infinite rank, derivative loss, and possible divergent mode contractions are not tested by (20).

**Verified:** the analytic finite/formal theorem, its quartic formulas, and the exact finite graded diagnostic with two implementations.

**Assumed for an infinite-dimensional application:** the domain, pairing, nonlinear differentiability, stationary inversion, and Hamiltonian-flow hypotheses above.

**Not proved here:** a new infinite-dimensional analytic flow theorem, ultraviolet convergence, any measure or loop statement, global branch continuation, or a boundary-sensitive equivalence of complete gravitational theories.
