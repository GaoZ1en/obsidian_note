# The actual nonlinear gravitational BV map: aligned canonical path and its first jets

## Result

After the background-linear dictionary is removed, the exact type-II map has a canonical radial isotopy. In background-covariant coordinates its **source-pullback Hamiltonian** is

\[
\boxed{H_t=-\int\left[R_a\iota_{\chi_t}w^a+T_a\iota_{\chi_t}f^a
 +\kappa^{-1}W_a\wedge\iota_{\chi_t}E^a\right],\qquad
 \chi_t=(1+t e_0^{-1}f)^{-1}\xi.}\tag{1}
\]

The convention is \(U_t=\phi_t^*\) and \(\partial_tU_t A=(H_t,U_t A)\); this is not the Eulerian target-coordinate Hamiltonian. In particular, the logarithm of the time-one pullback has

\[
\boxed{G_3=-\int[R\iota_\xi w+T\iota_\xi f+\kappa^{-1}W\wedge\iota_\xi E],}
\tag{2}
\]
\[
\boxed{G_4=\frac12\int[R\iota_{F\xi}w+T\iota_{F\xi}f
 +\kappa^{-1}W\wedge\iota_{F\xi}E],\qquad F=e_0^{-1}f.}\tag{3}
\]

Thus \(U_1=\exp(\operatorname{ad}_{G_3+G_4+O(5)})\), whereas the instantaneous Hamiltonian is \(H_t=G_3+2tG_4+O(5)\). The quartic Hamiltonian is nonzero. The familiar isolated two-antifield cubic bridge is only one summand of (2): linear alignment is not the nonlinear ghost-only cotangent lift.

All formulas use the actual generator in [note16:115–158](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L115-L158>). No candidate retained-map result or other current review was used. The exact finite test below has **127 passing labels**, including all 48 coordinate jets at orders two and three and nonzero mutation diagnostics. It is an algebraic test, not a computation of an AdS spectral projector.

## 1. Conventions and background-linear alignment

Work in dimension three with the Euclidean convention of [note16:18–53](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L18-L53>): internal metric \(\delta_{ab}\), \(\epsilon_{123}=1\), radius one, \(\kappa=2a=(8\pi G_N)^{-1}\), and \(\omega^{ab}=-\epsilon^{ab}{}_c\omega^c\). Ghost coefficients are placed first and commute with ordinary exterior basis forms. The odd contraction is \(i=\iota_\xi=\xi^\mu\iota_{\partial_\mu}\). In particular \(i^2\alpha=-\xi^\mu\xi^\nu\alpha_{\mu\nu}\) for a two-form. Do not replace it by the opposite convention.

The antibracket and left differential are

\[
(A,B)=\int\left[A\frac{\overleftarrow\delta}{\delta q^I}
 \frac{\overrightarrow\delta B}{\delta p_I}
-A\frac{\overleftarrow\delta}{\delta p_I}
 \frac{\overrightarrow\delta B}{\delta q^I}\right],\qquad QA=(S,A).
\tag{4}
\]

Let \(e=e_0+f\), \(\omega=\omega_0+w\), with fixed on-shell background

\[
D_0e_0=0,\qquad R_0=\frac12[e_0,e_0],\qquad D_0=D_{\omega_0}.
\]

All background ghosts and antifields vanish. Define the background-covariant ghost coordinates

\[
\eta=\lambda+\iota_\xi\omega_0,\qquad \zeta=\iota_\xi e_0,
\qquad \xi^\mu=e_{0,a}{}^\mu\zeta^a.
\tag{5}
\]

Their inverse is \(\lambda=\eta-\iota_{e_0^{-1}\zeta}\omega_0\). Although this coordinate formula contains a local connection potential, \(\eta\) is a globally defined adjoint-bundle ghost. Under a background frame change \(h\),

\[
\omega_0'=h\omega_0h^{-1}-dh\,h^{-1},\quad
\lambda'=h\lambda h^{-1}+(\iota_\xi dh)h^{-1},\quad
\eta'=h\eta h^{-1}.
\]

Consequently the final formulas require no assumption that \(\omega_0\) itself is a globally bounded matrix-valued one-form. The fluctuation \(w\), \(\eta\), \(\zeta\), and the covariant derivative \(D_0\) have the appropriate bundle meanings.

Write the cotangent coordinates as

\[
E=e^*,\quad W=\omega^*,\quad R=\lambda^*,\qquad
T_a=e_{0,a}{}^\mu(\xi^*_\mu-\omega_{0,\mu}^b\lambda_b^*).
\tag{6}
\]

Equivalently \(\xi^*_\mu=e_{0,\mu}^aT_a+\omega_{0,\mu}^aR_a\). The physical antifields \(E,W\) are odd two-forms and the ghost antifields \(R,T\) are even three-forms. The background is fixed, so there is no extra derivative of \(e_0\) or \(\omega_0\) in the physical antifields. The linear type-II function

\[
\int[E_c f+W_c w+R_c(\lambda+i\omega_0)+T_c i e_0]
\]

proves the cotangent dictionary, including its signs. Subtracting the fixed background physical positions, the linear CS map is exactly

\[
(f_c,w_c,\rho,\tau;E_c,W_c,R_c,T_c)
=(f,w,\eta,\zeta;E,W,R,T)+O(2).
\tag{7}
\]

This identifies the actual free complex in [note18:71–103](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L71-L103>):

\[
\alpha=(w,f),\quad c=(\eta,\zeta),\quad p=(W,E),\quad c^*=(R,T),
\qquad \Psi=c+\alpha-\kappa^{-1}S_{\rm int}p+\kappa^{-1}S_{\rm int}c^*.
\tag{8}
\]

Every fluctuation, ghost, and antifield has homogeneous degree one. This degree is distinct from ghost number, form degree, and antifield number.

## 2. The type-II path, without an arbitrary replacement map

Use \(q=(f,w,\eta,\zeta)\) and new momenta \(P=(E_c,W_c,R_c,T_c)\). In the next display the momentum letters on the right mean these **new** momenta. The aligned form of the exact supplied generator is

\[
\mathcal F=\mathcal F_2+\mathcal F_3+\mathcal F_4+\mathcal F_5,
\]
\[
\begin{aligned}
\mathcal F_2&=\int(Ef+Ww+R\eta+T\zeta),\\
\mathcal F_3&=\int(Riw+Tif+\kappa^{-1}E\wedge iW),\\
\mathcal F_4&=(2\kappa)^{-1}\int(E\wedge i^2R+W\wedge i^2T),\\
\mathcal F_5&=(3\kappa)^{-1}\int T i^3R.
\end{aligned}\tag{9}
\]

Choose

\[
\boxed{\mathcal F_t=\mathcal F_2+t\mathcal F_3+t^2\mathcal F_4+t^3\mathcal F_5.}\tag{10}
\]

The type-II equations \(p=\partial_l\mathcal F_t/\partial q\), \(Q=\partial_l\mathcal F_t/\partial P\) define \(\phi_t\). Equivalently, in the aligned fluctuation coordinates,

\[
\phi_t(z)=t^{-1}\phi_1(tz),\quad t\ne0;\qquad \phi_0=1.
\tag{11}
\]

Uniform dilation scales the odd symplectic form by \(t^2\); the two dilations in (11) cancel. This independently explains why the path is canonical, not just a formal interpolation of its components. Every \(\phi_t\) is tangent to identity at the origin. For an actual local path it suffices that \(e_0+tf\) be invertible for \(0\le t\le1\), e.g. \(\|e_0^{-1}f\|_\infty<1\). Alternatively all identities hold as formal jets.

Here is the entire map, with all letters on the right now **source** coordinates. Set

\[
\Pi_{t,a}=(e_0+tf)_a{}^\mu
\left[e_{0,\mu}^bT_b-tw_\mu^bR_b
+\frac t\kappa W_b\wedge\iota_{\partial_\mu}E^b\right],
\tag{12}
\]

where \((e_0+tf)_a{}^\mu\) denotes the inverse coframe. Then

\[
\begin{aligned}
f_c&=f+\frac t\kappa iW-\frac{t^2}{2\kappa}i^2R,\\
w_c&=w+\frac t\kappa iE-\frac{t^2}{2\kappa}i^2\Pi_t,\\
\tau&=\zeta+tif+\frac{t^2}{2\kappa}i^2W-\frac{t^3}{6\kappa}i^3R,\\
\rho&=\eta+tiw+\frac{t^2}{2\kappa}i^2E-\frac{t^3}{6\kappa}i^3\Pi_t,\\
E_c&=E-ti\Pi_t,\qquad W_c=W-tiR,\qquad R_c=R,\qquad T_c=\Pi_t.
\end{aligned}\tag{13}
\]

This is a direct rescaling of the actual exact map, not a candidate inferred from a BRST algebra. At zero antifields the physical map is identity but the ghost map is not: \(\tau=\zeta+tif\), \(\rho=\eta+tiw\).

## 3. Hamiltonian derivation and its sign

The source-pullback Hamiltonian of a type-II path in convention (4) is

\[
H_t(q,p)=-\left.\partial_t\mathcal F_t(q,P)\right|_{P=P_t(q,p)}.
\tag{14}
\]

The minus sign is important: \((H,q)=-\partial_l H/\partial p\) for an odd Hamiltonian. The corresponding Eulerian target Hamiltonian is \(K_t=(\phi_t^{-1})^*H_t\). Thus (14) gives \(\partial_tU_t=\operatorname{ad}_{H_t}U_t\).

In three dimensions, with the coefficient-first convention,

\[
(i\Pi)\wedge iW=W\wedge i^2\Pi,\qquad
(iR)\wedge i^2\Pi=\Pi i^3R,\qquad E\wedge iW=W\wedge iE.
\tag{15}
\]

For example the first identity follows by contracting the identically vanishing four-form \(W\wedge i\Pi\). In this convention
\(i(\alpha\beta)=i\alpha\,\beta+(-1)^{\deg\alpha+\mathrm{gh}\alpha}\alpha\,i\beta\).
The second identity also uses that both \(R\) and \(\Pi\) are even top forms. These dimension-dependent identities are precisely what is needed below.

Insert \(P_t=(E-ti\Pi_t,W-tiR,R,\Pi_t)\) into
\(-\partial_t\mathcal F_t=-(\mathcal F_3+2t\mathcal F_4+3t^2\mathcal F_5)\).
The \(Ei^2R\), \((i\Pi)iW\), \((i\Pi)i^2R\), and top-form terms cancel, leaving exactly

\[
H_t=-\int[Riw+\Pi_t if+\kappa^{-1}W\wedge iE].\tag{16}
\]

Define \(V_t=(e_0+tf)^{-1}(i_\xi f)\). Then
\(\chi_t=\xi-tV_t=(1+tF)^{-1}\xi\) and \(i_{V_t}e_0=i_{\chi_t}f\). In reordering the antifield term, note that

\[
(W\wedge\iota_{\partial_\mu}E)V_t^\mu=-W\wedge\iota_{V_t}E.
\]

Equation (12) therefore reduces (16) to (1). This proves the exact Hamiltonian, not just its cubic truncation. Expanding \(\chi_t=\xi-tF\xi+t^2F^2\xi-\cdots\) gives (2)–(3). There is no degree-four Magnus commutator because the degree-three instantaneous Hamiltonian is independent of \(t\), and \((G_3,G_3)=0\).

The two-physical-antifield part of (2) agrees with the signed cubic bridge in [note16:257–266](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L257-L266>):

\[
-\kappa^{-1}\int W\wedge iE
=\kappa^{-1}\int d^3x\,\epsilon_{\nu\mu\sigma}\xi^\nu W^{\mu}_aE^{\sigma}_a.
\tag{17}
\]

The ghost-cotangent summands in (2), and their quartic completion (3), are additional because only the **background-linear** map has been removed here.

## 4. Explicit map jets through degree four

Define the degree-two top form and its linear multiplication operator by

\[
A_a=e_{0,a}{}^\mu\left[f_\mu^bT_b+w_\mu^bR_b
-\kappa^{-1}W_b\wedge\iota_{\partial_\mu}E^b\right],\qquad
(MV)_a=e_{0,a}{}^\mu f_\mu^bV_b.
\tag{18}
\]

Then \(\Pi_t=T-tA+t^2MA-t^3M^2A+\cdots\). At \(t=1\), write \(\phi_1(z)=z+\phi_{[2]}(z)+\phi_{[3]}(z)+\phi_{[4]}(z)+O(5)\):

| Coordinate | degree 2 | degree 3 | degree 4 |
|---|---|---|---|
| \(f_c\) | \(\kappa^{-1}iW\) | \(-(2\kappa)^{-1}i^2R\) | \(0\) |
| \(w_c\) | \(\kappa^{-1}iE\) | \(-(2\kappa)^{-1}i^2T\) | \((2\kappa)^{-1}i^2A\) |
| \(\rho\) | \(iw\) | \((2\kappa)^{-1}i^2E\) | \(-(6\kappa)^{-1}i^3T\) |
| \(\tau\) | \(if\) | \((2\kappa)^{-1}i^2W\) | \(-(6\kappa)^{-1}i^3R\) |
| \(E_c\) | \(-iT\) | \(iA\) | \(-iMA\) |
| \(W_c\) | \(-iR\) | \(0\) | \(0\) |
| \(R_c\) | \(0\) | \(0\) | \(0\) |
| \(T_c\) | \(-A\) | \(MA\) | \(-M^2A\) |

These are coordinate jets; they must not be confused with the degree-three and degree-four Hamiltonians. In particular

\[
\phi_{[2]}^I=(G_3,z^I),\qquad
\phi_{[3]}^I=(G_4,z^I)+\tfrac12(G_3,(G_3,z^I)).
\tag{19}
\]

The machine test verifies all 96 component identities in (19). The degree-four column is obtained directly by expansion of the exact map (13); it was not separately compared with a degree-five logarithm Hamiltonian.

## 5. Leading interactions and genuine antifield dependence

Use \(\mathcal L^0_\xi=\iota_\xi D_0+D_0\iota_\xi\) on adjoint-valued forms. The exact geometric BRST differential in the aligned coordinates is

\[
\begin{aligned}
Qf&=D_0\zeta+[e_0,\eta]+\mathcal L^0_\xi f+[f,\eta],\\
Qw&=D_0\eta-[e_0,\zeta]+\mathcal L^0_\xi w+[w,\eta],\\
Q\eta&=\iota_\xi D_0\eta-\tfrac12[\eta,\eta]+\tfrac12 i^2R_0,\\
Q\zeta&=\iota_\xi D_0\zeta.
\end{aligned}\tag{20}
\]

Here \(i^2R_0=-[\zeta,\zeta]\). The last equation follows from \(D_0e_0=0\), or equivalently torsion-free background covariance. The curvature term in \(Q\eta\) must not be dropped; a frame in which a connection coefficient vanishes at one point does not make curvature vanish.

The common quadratic action is

\[
\begin{split}
S_2={}&\kappa\int[fD_0w+\tfrac12e_0[w,w]-\tfrac12e_0[f,f]]\\
&+\int[E(D_0\zeta+[e_0,\eta])+W(D_0\eta-[e_0,\zeta])].
\end{split}\tag{21}
\]

The common physical cubic is

\[
I_3=\kappa\int[\tfrac12f[w,w]-\tfrac16f[f,f]].\tag{22}
\]

The complete CS cubic and geometric cubic in this chart are respectively

\[
\begin{split}
S_{c,3}=I_3+\int\{&E([w,\zeta]+[f,\eta])
+W([w,\eta]-[f,\zeta])\\
&+\tfrac12R([\eta,\eta]-[\zeta,\zeta])+T[\eta,\zeta]\},
\end{split}\tag{23}
\]
\[
\begin{split}
S_{g,3}=I_3+\int\{&E(\mathcal L^0_\xi f+[f,\eta])
+W(\mathcal L^0_\xi w+[w,\eta])\\
&-R(\iota_\xi D_0\eta-\tfrac12[\eta,\eta]+\tfrac12i^2R_0)
-T\iota_\xi D_0\zeta\}.
\end{split}\tag{24}
\]

There are **no higher homogeneous terms** in the full geometric minimal action in this fixed-background linear coordinate chart. The exact action transport in the stated support sector therefore yields

\[
\boxed{S_{g,3}-S_{c,3}=(G_3,S_2),}\tag{25}
\]
\[
\boxed{(G_4,S_2)+(G_3,S_{c,3})
+\tfrac12(G_3,(G_3,S_2))=0.}\tag{26}
\]

For clarity, the cubic difference is explicitly

\[
\begin{split}
\int\{&E(\mathcal L^0_\xi f-[w,\zeta])
+W(\mathcal L^0_\xi w+[f,\zeta])\\
&-R\iota_\xi D_0\eta+R[\zeta,\zeta]
-T(\iota_\xi D_0\zeta+[\eta,\zeta])\}.
\end{split}\tag{27}
\]

It is entirely antifield-dependent and is linear in antifields. By contrast, both (2) and (3) have genuine **two-physical-antifield** pieces. The ghost antifield terms \(R,T\) are also genuinely antifield-dependent, not ordinary bosonic gravitational interactions. The physical antifield-zero action is unchanged because the physical map is identity on that section.

Intermediate transported actions can have quartic terms:

\[
(U_tS_c)_{[4]}=t(G_3,S_{c,3})+
 t^2\left[(G_4,S_2)+\tfrac12(G_3,(G_3,S_2))\right]
=t(1-t)(G_3,S_{c,3}).\tag{28}
\]

They vanish at the two cubic endpoints, not term by term. These terms too are antifield-dependent. Equation (26) is not a statement that the retained tree quartic in [note18:266–290](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L266-L290>) vanishes: stationary UV elimination generates its separate exchange contribution.

A small explicit sign check: at a point put \(e_0^a=dx^a\), \(\xi=\theta\partial_1\), \(f^1=u\,dx^1\), and in one common internal component put \(W=\beta\,dx^1dx^2\), \(E=\gamma\,dx^1dx^3\), with independent odd \(\theta,\beta,\gamma\). Then

\[
(G_3)_{WE}=\frac{\theta\beta\gamma}{\kappa},\qquad
(G_4)_{WE}=-\frac{u\theta\beta\gamma}{2\kappa},\qquad
(H_t)_{WE}=\frac{\theta\beta\gamma}{\kappa(1+tu)}.
\]

This already detects the quartic sign and nonvanishing, but the full test below is much stronger.

## 6. Exact finite evidence and diagnostics

The self-contained [Sage source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/check_map_path.py>) constructs 24 commuting fluctuation variables and 24 Grassmann generators, hence the full 48 BV coordinates. Its coefficient field is the rational function field in symbolic \(\kappa\) and path parameter \(t\) over \(\mathbb Q(i)\). Ordinary exterior forms and Grassmann coefficients are separate algebras, implementing the coefficient-first convention directly. Left and right derivatives are independently encoded from monomial parity; the bracket is (4).

For an actual cyclic finite differential algebra, take three exterior generators \(u^a\) with

\[
du^a=i[u,u]^a,\qquad e_0^a=u^a,\qquad\omega_0^a=-iu^a,
\qquad\int u^1u^2u^3=1.
\]

This is a complexified unimodular SU(2) Chevalley–Eilenberg algebra. It obeys \(d^2=0\), closed integration, \(D_0e_0=0\), and \(R_0=[e_0,e_0]/2\). The internal gravitational algebra is the complete six-dimensional one of [note18:31–45](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L31-L45>), including \([P,P]=-J\). It is explicitly **not** a real hyperbolic spectral discretization. Complexification is used to get a small nondegenerate on-shell cyclic algebra, not as a claim about the physical integration contour.

The successful actual run reports:

- 12 background/differential/closed-integration labels;
- 6 action/master-equation labels, including (25) and (26);
- 96 coordinate-jet labels, all components of (19);
- 5 source-Hamiltonian labels, testing the mixed-generator expression through degree five and its first two homogeneous pieces;
- 8 positive nonvanishing/mutation labels.

There are 36 terms in \(G_3\), 108 in \(G_4\), 126 in \((G_3,S_2)\), and 456 in \((G_4,S_2)\). Omitting \(G_4\) or reversing its sign leaves 456 nonzero residual terms. Omitting the two-antifield cubic term, or doubling its inverse-\(\kappa\) normalization, leaves 132 terms in the cubic residual. The quartic two-physical-antifield Hamiltonian alone has 54 nonzero terms. Thus zero results do not come from an abelian, antifield-zero, or zero-jet fixture.

Exact label-level results are in [results](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/results.json>); full nonzero polynomial diagnostics are in [actual diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/actual_diagnostics.txt>), and selected exact expressions in [key expressions](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/exact_key_expressions.txt>). The [raw successful tool return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/successful_tool_return.json>) is copied unchanged. One nonfatal Sage version-function deprecation warning is retained. Setup failures are separately disclosed in the [evidence log](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/evidence_log.md>), not counted as checks.

The algebra engine is one implementation, not multiple independent implementations. No further fresh subagent review was available at this delegation depth. The analytic derivation, exact algebra, mutation tests, and explicit small specialization are distinct evidence layers, not a claim of a second independent reviewer.

## 7. Scope and the retained-tree interface

The pointwise map and its local canonical path are exact on the nondegenerate coframe patch; the action statements use the fixed on-shell, compactly supported/collar sector and the primitive in [note16:223–238](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L223-L238>). The original completed physical wall is unchanged there. These odd-BV statements do not identify the regional even CPS/BFV form; the boundary convention in [the CPS formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L25>) is retained.

On the fixed complete hyperbolic background, linear alignment (7) identifies the free differential and the pairing used for the actual contraction

\[
P_\Lambda=1_{[0,\Lambda^2]}(\Delta),\qquad
h_\Lambda=D^\dagger\Delta^{-1}(1-P_\Lambda)
\]

from [note18:183–222](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L183-L222>). It does **not** follow that \(P\phi_tP\) is canonical or that the generator restricted to retained coordinates gives the projected map. No such projection was made in this derivation or in the exact fixture.

The known independent-product Sobolev obstruction in [note18:456–482](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L456-L482>) remains: (5) makes the linear bundle identification covariant but does not improve the product \(\iota_\xi f\). Inverse coframes require a small nondegenerate neighborhood, and preservation of a particular completed stationary image is a separate question. The even ghost antifields are formal symmetric variables, not nilpotent variables.

**Verified:** actual aligned type-II path; its exact source Hamiltonian; all \(\kappa\) factors and the cubic/quartic logarithm jets; explicit coordinate jets; full cubic action bridge and quartic endpoint cancellation; a nonvacuous finite cyclic/internal/exterior check with actual diagnostics.

**Not asserted:** an induced retained canonical map, spectral-compression canonicity, continuation through degenerate coframes, a new nonlinear product-Sobolev theorem, a complete boundary BV–BFV transport, loop vertices, densities, or quantum equivalence.
