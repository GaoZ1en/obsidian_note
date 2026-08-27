# Maxwell on a Double-Null Diamond

## 1. Action Before Gauge Fixing

Start literally from

$$\begin{align}
S[A]=-\frac12\int_DF\wedge *F, \qquad F=dA.
\end{align}$$

With the orientation and signature in `00-formalism-and-statements.md`, variation gives

$$\begin{align}
\delta L=\mathcal E_A\wedge\delta A+d\theta, \qquad \theta[A;\delta A]=-\delta A\wedge *F,
\end{align}$$

where $\mathcal E_A=0$ is equivalent to $d*F=0$. The symplectic current is

$$\begin{align}
\omega[A;\delta_1A,\delta_2A] =\delta_1A\wedge *\delta_2F-\delta_2A\wedge *\delta_1F. \tag{1.1}
\end{align}$$

No gauge choice or boundary counterterm has entered.

## 2. Hodge-Star Convention

Decompose

$$\begin{align}
F=E\,du\wedge dv+du\wedge p+dv\wedge r+B\,\operatorname{vol}_S, \tag{2.1}
\end{align}$$

where $p=p_A dx^A$, $r=r_A dx^A$, and in two cut dimensions $F_{AB}=B\,\epsilon_{AB}$. The four-dimensional Hodge star is

$$\begin{align}
\boxed{ *F=-E\,\operatorname{vol}_S-du\wedge *_Sp+dv\wedge *_Sr+B\,du\wedge dv.} \tag{2.2}
\end{align}$$

In particular,

$$\begin{align}
*(du\wedge dv)=-\operatorname{vol}_S, \quad *(du\wedge\alpha)=-du\wedge *_S\alpha, \quad *(dv\wedge\alpha)=dv\wedge *_S\alpha.
\end{align}$$

These signs are checked by `scripts/maxwell_double_null_checks.wl` and obey $*^2=-1$ on two-forms.

## 3. Maxwell and Bianchi Decomposition

The equations $\nabla_\mu F^{\mu\nu}=0$ are

$$\begin{align}
\partial_vE+D^Ar_A&=0, \tag{3.1a}\\
\partial_uE-D^Ap_A&=0. \tag{3.1b}
\end{align}$$

To avoid hiding an index convention, the transverse equation is more transparently written directly in the original components:

$$\begin{align}
-\partial_uF_v{}^A-\partial_vF_u{}^A+D_BF^{BA}=0. \tag{3.1c}
\end{align}$$

The Bianchi equations $dF=0$ are

$$\begin{align}
\partial_uF_{vA}-\partial_vF_{uA}+D_AE&=0, \tag{3.2a}\\
\partial_uF_{AB}-2D_{[A}F_{uB]}&=0, \tag{3.2b}\\
\partial_vF_{AB}-2D_{[A}F_{vB]}&=0. \tag{3.2c}
\end{align}$$

Equation (3.1c) is the bulk evolution equation. Equations (3.1a), (3.2c) restrict to $N_+$; equations (3.1b), (3.2b) restrict to $N_-$.

## 4. Reduced Characteristic Data

### 4.1 Principal Radiative Sheet Profiles

Define

$$
r_A(v,x):=F_{vA}|_{N_+},
\qquad
p_A(u,x):=F_{uA}|_{N_-}.
\tag{4.1}
$$

These are the principal radiative profiles on the two null sheets. They are freely prescribable at the level of the sheet transport system, subject to the chosen regularity and global sector. They are not, by themselves, complete double-null characteristic data.

### 4.2 Transport Constraints

On $N_+$, equations (3.1a) and (3.2c) give

$$\begin{align}
E_+(v,x)=E_0(x)-\int_0^vD^Ar_A(v',x)\,dv', \tag{4.2}
\end{align}$$

$$\begin{align}
F^+_{AB}(v,x)=b^0_{AB}(x)+2\int_0^vD_{[A}r_{B]}(v',x)\,dv'. \tag{4.3}
\end{align}$$

On $N_-$, equations (3.1b) and (3.2b) give

$$\begin{align}
E_-(u,x)=E_0(x)+\int_0^uD^Ap_A(u',x)\,du', \tag{4.4}
\end{align}$$

$$\begin{align}
F^-_{AB}(u,x)=b^0_{AB}(x)+2\int_0^uD_{[A}p_{B]}(u',x)\,du'. \tag{4.5}
\end{align}$$

### 4.3 Shared Corner Coulomb and Magnetic Data

The integration constants in (4.2)--(4.5) are shared corner data,

$$
E_+(0,x)=E_-(0,x)=E_0(x):=F_{uv}|_{S_0},
$$

$$
F^+_{AB}(0,x)=F^-_{AB}(0,x)=b^0_{AB}(x):=F_{AB}|_{S_0}.
$$

The reduced gauge-invariant characteristic constraint datum is therefore

$$\begin{align}
\boxed{\left(r_A,p_A;E_0,b^0_{AB}\right).}
\tag{4.6}
\end{align}$$

This terminology is deliberate: $(r,p)$ are radiative profiles, whereas $(E_0,b^0)$ are corner integration data. Together they parameterize the sheet data satisfying the four transport constraints. There is no second independently specifiable $E$ or $F_{AB}$ profile. At $S_0$, $p_A(0)$ and $r_A(0)$ are independent components of the field strength; smoothness does not impose an algebraic equality between them.

The pair $(r,p)$ alone is not complete. Two exact counterexamples on the product background are

$$
F_{\mathrm C}=E_c\,du\wedge dv,
\qquad
F_{\mathrm M}=B_c\,\operatorname{vol}_S,
\tag{4.7}
$$

with nonzero constants $E_c,B_c$. Both obey $dF=d*F=0$ and have $r=p=0$, while $F_{\mathrm C}$ carries $E_0=E_c$ and $F_{\mathrm M}$ carries $b^0=B_c\operatorname{vol}_S$. The magnetic example is understood on a contractible cut patch or with $B_c$ chosen in an admissible fixed flux sector. Hence

$$
[F]\longmapsto (r,p)
$$

is not injective even before global bundle or harmonic complications are considered.

### 4.4 Potential-Level Lift and Corner Transition

Let $a=A_A dx^A$. On each sheet choose a generator frame,

$$
A_v=\partial_v\alpha_+,
\qquad
A_u=\partial_u\alpha_-,
$$

and define dressed sheet connections

$$
\bar a_+:=a-d_S\alpha_+,
\qquad
\bar a_-:=a-d_S\alpha_-.
$$

Then

$$
\partial_v\bar a_+=r,
\qquad
\partial_u\bar a_-=p,
\tag{4.8}
$$

so a potential-level lift requires a corner connection representative with curvature $b^0$ and gives

$$
\bar a_+(v)=\bar a_+^0+\int_0^v r(v')\,dv',
\qquad
\bar a_-(u)=\bar a_-^0+\int_0^u p(u')\,du'.
\tag{4.9}
$$

If the two sheets use independent trivializations, one must also retain their corner transition function. With $\lambda_{\mathrm{rel}}:=\alpha_-(0)-\alpha_+(0)$, compatibility with one bulk connection is

$$
\bar a_-^0-\bar a_+^0+d_S\lambda_{\mathrm{rel}}=0,
\qquad
d_S\bar a_+^0=d_S\bar a_-^0=b^0.
\tag{4.10}
$$

For $H^1(S)\neq0$, equality of curvatures does not remove a harmonic difference; holonomy data must be added. For a nontrivial $U(1)$ bundle, $b^0$ is the curvature of a connection in the fixed Chern class and need not admit one global one-form $a_0$. The electric datum $E_0$ is a normal-normal curvature component and is not recovered from the intrinsic corner connection.

## 5. Restriction Theorem

**Proved.** Every smooth source-free Maxwell field on $D$ restricts to a datum (4.6) whose completed sheet fields obey (4.2)--(4.5) and whose potential representatives obey (4.10) in each chosen bundle atlas. This follows directly from the Maxwell and Bianchi equations plus the fact that both sheets meet the same smooth field and connection at $S_0$.

The theorem does not say that every such compatible datum has a bulk extension. It also shows directly why restriction to $(r,p)$ alone is not injective: the fields (4.7) have the same radiative restriction as the zero field.

## 6. Reconstruction Theorem with Explicit Analytic Hypothesis

**Conditional.** Fix:

1. a smooth or Sobolev data/solution class in which the Maxwell first-order system, or a Lorenz-gauge potential wave system with propagated subsidiary constraints, has a Goursat existence, uniqueness and continuous-dependence theorem on the chosen double-null domain;
2. a $U(1)$ bundle, magnetic Chern class and, when $H^1(S)\neq0$, a holonomy sector;
3. the transport equations (4.2)--(4.5), the potential/connection compatibility (4.10), and all corner regularity conditions required by that theorem;
4. the same endpoint charge policy and proper gauge group on the bulk and characteristic sides.

Under these hypotheses, compatible potential-level characteristic data reconstruct a unique bulk Maxwell potential modulo the declared proper gauge group. Equivalently, after forgetting charged boundary frames, (4.6) reconstructs a unique bulk field strength in the fixed topological sector.

The current project proves the transport parameterization and the necessity of the compatibility equations. It does not supply item 1 in the exact displayed function spaces. In particular, integrating (4.2)--(4.5) proves only the sheet-constraint theorem; it is not a proof of bulk surjectivity or bulk uniqueness. [Rácz's smooth Newman--Penrose Einstein--Maxwell theorem](https://arxiv.org/abs/1307.1683) provides a structural local existence/uniqueness cross-check near the intersection, while [Rendall's reduction theorem](https://doi.org/10.1098/rspa.1990.0009) supports the wave-equation route. Neither source, as currently imported here, is yet the exact fixed-background Maxwell Sobolev isomorphism required to remove the conditional status.

## 7. Null Pullback of the Potential

Write $a=A_A dx^A$. Directly pulling back $\theta=-\delta A\wedge *F$ gives

$$\begin{align}
\boxed{ \theta|_{N_+} =dv\wedge\operatorname{vol}_S \left(E\,\delta A_v+r^A\delta A_A\right),} \tag{7.1}
\end{align}$$

$$\begin{align}
\boxed{ \theta|_{N_-} =du\wedge\operatorname{vol}_S \left(E\,\delta A_u-p^A\delta A_A\right).} \tag{7.2}
\end{align}$$

The induced boundary orientations of the future diamond are

$$\begin{align}
\operatorname{or}(N_+)=-dv\wedge\operatorname{vol}_S, \qquad \operatorname{or}(N_-)=+du\wedge\operatorname{vol}_S.
\end{align}$$

Defining the initial characteristic form as minus the induced past-boundary flux yields positive parameter measures on both incoming sheets. This is why the $N_-$ potential receives an additional overall minus sign when it is used as initial data.

The symplectic form is obtained by field-space differentiation of (7.1)--(7.2). In bilinear notation,

$$
\begin{aligned}
\Omega_{N_+}
&=\int_{N_+}\left(
\delta E\wedge\delta A_v
+\delta r^A\wedge\delta A_A
\right)dv\,dS,\\
\Omega_{N_-}
&=\int_{N_-}\left(
-\delta E\wedge\delta A_u
+\delta p^A\wedge\delta A_A
\right)du\,dS.
\end{aligned}
\tag{7.3}
$$

These expressions remain presymplectic until the endpoint gauge policy and corner compatibility are imposed.

## 8. Gauge Contraction and Cut Charge

For $\delta_\epsilon A=d\epsilon$ and $\delta_\epsilon F=0$,

$$\begin{align}
\omega(\delta_\epsilon,\delta) =d\epsilon\wedge *\delta F =d(\epsilon *\delta F) \tag{8.1}
\end{align}$$

on linearized solutions. Therefore

$$\begin{align}
\iota_{\delta_\epsilon}\Omega_C =\int_{\partial C}\epsilon\,\delta(*F) =\delta Q_\epsilon[\partial C]. \tag{8.2}
\end{align}$$

At a cut with the displayed orientation, $(*F)|_S=-E\operatorname{vol}_S$; an orientation-adjusted electric density can equivalently be defined as $E_\perp:=E$. The distinction must be kept when comparing charges with outward-normal conventions.

Consequences:

1. if $\epsilon|_{\partial C}=0$, the transformation is proper;
2. if $\delta E_\perp|_{\partial C}=0$, arbitrary cut $\epsilon$ is also a degeneracy within that fixed-flux sector;
3. if the flux varies and $\epsilon$ is nonzero at the cut, the transformation is charged;
4. constant $\epsilon$ is not automatically proper: the integrated Gauss law and the chosen charged-matter/bundle sector decide it.

## 9. Cauchy Versus Null Symplectic Form

Let the remaining side boundary obey a condition for which its allowed symplectic flux vanishes. Since $d\omega=0$, Stokes' theorem gives

$$\begin{align}
\boxed{G^*\Omega_\Sigma=\Omega_{N_+}+\Omega_{N_-}.} \tag{9.1}
\end{align}$$

There is no separate raw $S_0$ contribution in (9.1). Corner terms appear only after integrations by parts or changes of polarization. If such a reparametrization produces a corner pair, the endpoint terms at the other ends of the generators must be retained or fixed at the same time.

## 10. Newman--Penrose Structural Cross-Check

Choose a null tetrad with $\ell\propto\partial_v$ tangent to $N_+$, $n\propto\partial_u$ tangent to $N_-$ and $m,\bar m$ tangent to $S$. Up to the tetrad normalization, orientation and complex-conjugation conventions,

$$
\phi_0|_{N_+}\sim r_A m^A,
\qquad
\phi_2|_{N_-}\sim p_A\bar m^A,
\qquad
\phi_1|_{S_0}\sim E_0+iB_0,
\tag{10.1}
$$

where $b^0_{AB}=B_0\epsilon_{AB}$ locally. Thus the standard NP hierarchy has the same structure: one radiative Maxwell scalar on each sheet and the middle/Coulomb scalar on the intersection.

[Rácz's generic Einstein--Maxwell reduced data](https://arxiv.org/abs/1307.1683) explicitly contain $\phi_0$ on one null hypersurface, $\phi_2$ on the other, and $\phi_1$ on their intersection, alongside the gravitational data. This is a structural cross-check of (4.6), not the main derivation and not a direct proof of the fixed-background Maxwell theorem in Section 6. His existence result is formulated for a gauge-fixed smooth Einstein--Maxwell system and is local in the characteristic domain near the intersection.

## Verified

- Metric inverse, determinant and every two-form Hodge component.
- Maxwell and Bianchi component equations.
- Pullbacks (7.1)--(7.2).
- The orientation conversion used in (7.3).
- Gauge exactness (8.1) and the generator-dressing identities used in the next note.
- Pure constant Coulomb and pure constant magnetic solutions with $r=p=0$.

## Assumptions

- Smooth fields, finite null segments, no caustics, fixed flat background.
- Compact cut without boundary, or local cut fields of compact support so cut integrations by parts have no side term.
- One fixed $U(1)$ bundle sector.

## Not Verified

- A specific Sobolev completion and continuous inverse for the Maxwell Goursat map.
- Harmonic cut sectors for $H^1(S)\neq0$.
- Non-Abelian constraint propagation and singular symplectic quotients.
