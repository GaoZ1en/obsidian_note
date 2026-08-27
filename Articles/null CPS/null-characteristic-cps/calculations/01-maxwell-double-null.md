# Maxwell on a Double-Null Diamond

## 1. Action Before Gauge Fixing

Start literally from

$$
S[A]=-\frac12\int_DF\wedge *F,
\qquad F=dA.
$$

With the orientation and signature in `00-formalism-and-statements.md`, variation gives

$$
\delta L=\mathcal E_A\wedge\delta A+d\theta,
\qquad
\theta[A;\delta A]=-\delta A\wedge *F,
$$

where $\mathcal E_A=0$ is equivalent to $d*F=0$. The symplectic current is

$$
\omega[A;\delta_1A,\delta_2A]
=\delta_1A\wedge *\delta_2F-\delta_2A\wedge *\delta_1F.
\tag{1.1}
$$

No gauge choice or boundary counterterm has entered.

## 2. Hodge-Star Convention

Decompose

$$
F=E\,du\wedge dv+du\wedge p+dv\wedge r+B\,\operatorname{vol}_S,
\tag{2.1}
$$

where $p=p_A dx^A$, $r=r_A dx^A$, and in two cut dimensions $F_{AB}=B\,\epsilon_{AB}$. The four-dimensional Hodge star is

$$
\boxed{
*F=-E\,\operatorname{vol}_S-du\wedge *_Sp+dv\wedge *_Sr+B\,du\wedge dv.}
\tag{2.2}
$$

In particular,

$$
*(du\wedge dv)=-\operatorname{vol}_S,
\quad
*(du\wedge\alpha)=-du\wedge *_S\alpha,
\quad
*(dv\wedge\alpha)=dv\wedge *_S\alpha.
$$

These signs are checked by `scripts/maxwell_double_null_checks.wl` and obey $*^2=-1$ on two-forms.

## 3. Maxwell and Bianchi Decomposition

The equations $\nabla_\mu F^{\mu\nu}=0$ are

$$
\begin{aligned}
\partial_vE+D^Ar_A&=0, \tag{3.1a}\\
\partial_uE-D^Ap_A&=0. \tag{3.1b}
\end{aligned}
$$

To avoid hiding an index convention, the transverse equation is more transparently written directly in the original components:

$$
-\partial_uF_v{}^A-\partial_vF_u{}^A+D_BF^{BA}=0.
\tag{3.1c}
$$

The Bianchi equations $dF=0$ are

$$
\begin{aligned}
\partial_uF_{vA}-\partial_vF_{uA}+D_AE&=0, \tag{3.2a}\\
\partial_uF_{AB}-2D_{[A}F_{uB]}&=0, \tag{3.2b}\\
\partial_vF_{AB}-2D_{[A}F_{vB]}&=0. \tag{3.2c}
\end{aligned}
$$

Equation (3.1c) is the bulk evolution equation. Equations (3.1a), (3.2c) restrict to $N_+$; equations (3.1b), (3.2b) restrict to $N_-$.

## 4. Free, Transported and Shared Data

On $N_+$, freely prescribe $r_A(v,x)=F_{vA}|_{u=0}$. Then

$$
E_+(v,x)=E_0(x)-\int_0^vD^Ar_A(v',x)\,dv',
\tag{4.1}
$$

$$
F^+_{AB}(v,x)=b^0_{AB}(x)+2\int_0^vD_{[A}r_{B]}(v',x)\,dv'.
\tag{4.2}
$$

On $N_-$, freely prescribe $p_A(u,x)=F_{uA}|_{v=0}$. Then

$$
E_-(u,x)=E_0(x)+\int_0^uD^Ap_A(u',x)\,du',
\tag{4.3}
$$

$$
F^-_{AB}(u,x)=b^0_{AB}(x)+2\int_0^uD_{[A}p_{B]}(u',x)\,du'.
\tag{4.4}
$$

Thus the complete gauge-invariant characteristic list is

$$
\boxed{\left(r_A,p_A;E_0,b^0_{AB}\right).}
\tag{4.5}
$$

There is no second independently specifiable $E$ or $F_{AB}$ profile. At $S_0$, $p_A(0)$ and $r_A(0)$ are independent components of the field strength; smoothness does not impose an algebraic equality between them.

## 5. Null Pullback of the Potential

Write $a=A_A dx^A$. Directly pulling back $\theta=-\delta A\wedge *F$ gives

$$
\boxed{
\theta|_{N_+}
=dv\wedge\operatorname{vol}_S
\left(E\,\delta A_v+r^A\delta A_A\right),}
\tag{5.1}
$$

$$
\boxed{
\theta|_{N_-}
=du\wedge\operatorname{vol}_S
\left(E\,\delta A_u-p^A\delta A_A\right).}
\tag{5.2}
$$

The induced boundary orientations of the future diamond are

$$
\operatorname{or}(N_+)=-dv\wedge\operatorname{vol}_S,
\qquad
\operatorname{or}(N_-)=+du\wedge\operatorname{vol}_S.
$$

Defining the initial characteristic form as minus the induced past-boundary flux yields positive parameter measures on both incoming sheets. This is why the $N_-$ potential receives an additional overall minus sign when it is used as initial data.

The symplectic form is obtained by field-space differentiation of (5.1)--(5.2). In bilinear notation,

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
\tag{5.3}
$$

These expressions remain presymplectic until the endpoint gauge policy and corner compatibility are imposed.

## 6. Gauge Contraction and Cut Charge

For $\delta_\epsilon A=d\epsilon$ and $\delta_\epsilon F=0$,

$$
\omega(\delta_\epsilon,\delta)
=d\epsilon\wedge *\delta F
=d(\epsilon *\delta F)
\tag{6.1}
$$

on linearized solutions. Therefore

$$
\iota_{\delta_\epsilon}\Omega_C
=\int_{\partial C}\epsilon\,\delta(*F)
=\delta Q_\epsilon[\partial C].
\tag{6.2}
$$

At a cut with the displayed orientation, $(*F)|_S=-E\operatorname{vol}_S$; an orientation-adjusted electric density can equivalently be defined as $E_\perp:=E$. The distinction must be kept when comparing charges with outward-normal conventions.

Consequences:

1. if $\epsilon|_{\partial C}=0$, the transformation is proper;
2. if $\delta E_\perp|_{\partial C}=0$, arbitrary cut $\epsilon$ is also a degeneracy within that fixed-flux sector;
3. if the flux varies and $\epsilon$ is nonzero at the cut, the transformation is charged;
4. constant $\epsilon$ is not automatically proper: the integrated Gauss law and the chosen charged-matter/bundle sector decide it.

## 7. Reconstruction and Its Exact Boundary

### 7.1 Restriction

Every smooth Maxwell solution restricts to (4.5) and obeys (4.1)--(4.4). This direction is proved directly by (3.1)--(3.2).

### 7.2 Uniqueness

If two smooth solutions have identical complete characteristic field-strength data, their difference has zero characteristic data. The standard uniqueness theorem for the linear Maxwell Goursat system makes the difference vanish. Their potentials then differ by a closed one-form. On a contractible diamond this is $d\epsilon$; whether it is proper is decided by (6.2).

### 7.3 Existence

The transport equations first build the full pullback of $F$ on both sheets. A local potential lift can be constructed by choosing a corner potential $a_0$ with $da_0=b^0$, integrating $p_A,r_A$ along the generators, and retaining a transition function between the two corner trivializations. A Lorenz-gauge or first-order symmetric-hyperbolic Goursat theorem then supplies a bulk solution; the Gauss and Bianchi subsidiary systems propagate from the two sheets.

This step uses, rather than proves, the analytic Goursat theorem. The current project therefore establishes the algebraic data list, compatibility equations and symplectic intertwining, while keeping completed-space surjectivity conditional.

## 8. Cauchy Versus Null Symplectic Form

Let the remaining side boundary obey a condition for which its allowed symplectic flux vanishes. Since $d\omega=0$, Stokes' theorem gives

$$
\boxed{G^*\Omega_\Sigma=\Omega_{N_+}+\Omega_{N_-}.}
\tag{8.1}
$$

There is no separate raw $S_0$ contribution in (8.1). Corner terms appear only after integrations by parts or changes of polarization. If such a reparametrization produces a corner pair, the endpoint terms at the other ends of the generators must be retained or fixed at the same time.

## Verified

- Metric inverse, determinant and every two-form Hodge component.
- Maxwell and Bianchi component equations.
- Pullbacks (5.1)--(5.2).
- The orientation conversion used in (5.3).
- Gauge exactness (6.1) and the generator-dressing identities used in the next note.

## Assumptions

- Smooth fields, finite null segments, no caustics, fixed flat background.
- Compact cut without boundary, or local cut fields of compact support so cut integrations by parts have no side term.
- One fixed $U(1)$ bundle sector.

## Not Verified

- A specific Sobolev completion and continuous inverse for the Maxwell Goursat map.
- Harmonic cut sectors for $H^1(S)\neq0$.
- Non-Abelian constraint propagation and singular symplectic quotients.
