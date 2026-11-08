# Oriented Null Segments and Endpoints

This is a Layer-L finite-cross calculation. Its fixed outer exact
dressed-connection coefficient is an endpoint section / boundary-polarization
choice, not ordinary bulk gauge fixing and not a claim about infinity.

## 1. Raw pullbacks

Decompose

$$
F=E\,du\wedge dv+du\wedge p+dv\wedge r+B\,\operatorname{vol}_{S^2}.
$$

With the convention of calculation 00,

$$
*F=-E\,\operatorname{vol}_{S^2}-du\wedge *_Sp
+dv\wedge *_Sr+B\,du\wedge dv.
\tag{1.1}
$$

Writing $a=A_Adx^A$, literal pullback of
$\theta=-\delta A\wedge *F$ gives

$$
\theta|_{N_+}
=dv\wedge\operatorname{vol}_{S^2}
\left(E\,\delta A_v+r^A\delta A_A\right),
\tag{1.2}
$$

$$
\theta|_{N_-}
=du\wedge\operatorname{vol}_{S^2}
\left(E\,\delta A_u-p^A\delta A_A\right).
\tag{1.3}
$$

No outward-normal derivative has been exchanged for a coordinate derivative in
(1.2)--(1.3).

## 2. Boundary and incoming orientations

For the future diamond, the induced past-boundary orientations are

$$
\operatorname{or}_{\partial D}(N_+)
=-dv\wedge\operatorname{vol}_{S^2},
\qquad
\operatorname{or}_{\partial D}(N_-)
=+du\wedge\operatorname{vol}_{S^2}.
\tag{2.1}
$$

The initial characteristic potential is defined as minus the induced past
boundary contribution.  After this conversion, both $u$ and $v$ appear
with positive parameter measures.  This convention is chosen so that the
finite-diamond Stokes identity has the form

$$
G^*\Omega_\Sigma=\Omega_{N_+}+\Omega_{N_-}
\tag{2.2}
$$

when the remaining boundary flux is explicitly zero or retained.

In outward-normal notation, an internal interface matches
$E_{\perp,1}+E_{\perp,2}=0$.  In the common double-null coordinate convention
at $S_0$, the same statement is $E_+^0=E_-^0$.  These sign conventions must
not be mixed.

## 3. Generator dressing

On $N_+$, introduce a generator frame without fixing the action:

$$
A_v=\partial_v\alpha_+,
\qquad a=\bar a_++d_S\alpha_+,
\qquad \partial_v\bar a_+=r.
\tag{3.1}
$$

The Maxwell constraint $\partial_vE+D^Ar_A=0$ and cut integration by parts
give

$$
\int_{N_+}\left(E\,\delta A_v+r^A\delta A_A\right)
=\int_{N_+}r^A\delta\bar a_{+A}
+\left[\int_SE\,\delta\alpha_+\right]_{0}^{V}.
\tag{3.2}
$$

On $N_-$,

$$
A_u=\partial_u\alpha_-,
\qquad a=\bar a_-+d_S\alpha_-,
\qquad \partial_u\bar a_-=p,
\tag{3.3}
$$

and before the incoming-orientation conversion,

$$
\int_{N_-}\left(E\,\delta A_u-p^A\delta A_A\right)
=-\int_{N_-}p^A\delta\bar a_{-A}
+\left[\int_SE\,\delta\alpha_-\right]_{0}^{U}.
\tag{3.4}
$$

Equations (3.2)--(3.4) are changes of polarization, not gauge choices.

## 4. Endpoint ledger

Let

$$
\chi_+=\alpha_+(0),\qquad \chi_-=\alpha_-(0).
$$

The common initial-corner potential is

$$
\Theta_{S_0}
=-\int_{S_0}E_+^0\,\delta\chi_+
+\int_{S_0}E_-^0\,\delta\chi_-.
\tag{4.1}
$$

The two outer terms are

$$
\Theta_{\mathrm{outer}}
=\int_{S_+}E_+(V)\,\delta\alpha_+(V)
-\int_{S_-}E_-(U)\,\delta\alpha_-(U).
\tag{4.2}
$$

The current first-round policy fixes the outer frames, so (4.2) has zero
allowed variation.  It also fixes only the exact parts of the outer dressed
connections.  Their coexact/curvature parts remain physical and are not set to
zero.

An endpoint-inclusive theory that allows (4.2) and the outer exact dressed
connections to vary is legitimate, but it has extra charged boundary data.  It
cannot be identified with the intrinsic $\mathcal X_F$ used in the main
theorem.

## 5. Gauge contraction

For a field-independent parameter $\epsilon$,

$$
\omega(\delta_\epsilon,\delta)
=d\epsilon\wedge *\delta F
=d(\epsilon *\delta F)
\tag{5.1}
$$

on linearized solutions.  Hence

$$
\iota_{\delta_\epsilon}\Omega_C
=\int_{\partial C}\epsilon\,\delta(*F).
\tag{5.2}
$$

The sheet-proper group used in the finite theorem vanishes at both endpoints
of its sheet.  Transformations nonzero at an external cut are not placed in the
kernel.  The diagonal $S_0$ action is instead reduced only after imposing its
electric moment-map equation.

## 6. Status

**Status: proved.** The pullbacks, orientation conversion, generator-dressing
identities, endpoint signs, and gauge contraction follow from the action and
the displayed constraints.

**Boundary:** a change
$\theta\mapsto\theta+dY+\delta B$ or a different outer polarization changes
the endpoint ledger and must be re-audited before L-E.
