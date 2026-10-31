# Nonlinear BV map and finite density transport

## Result and scope

**There is an exact local classical BV map from gravitational CS variables to diffeomorphism–Lorentz Palatini variables on the nondegenerate-coframe patch.** It is not the cotangent lift of the familiar ghost substitution: fields and ghosts require explicit antifield corrections. In the resulting geometric chart, contorsion and a local Lorentz doublet admit exact classical BV reduction to metric gravity.

The corresponding finite local density question is also computable. With the original background-normalized field/parameter norms, the joint auxiliary/frame/ghost pushforward has coefficient

\[
J_{\rm joint}^{\rm frozen}=r^{-7/2},\qquad
r=\frac{\det e}{\det\bar e}=\sqrt{\det(\bar g^{-1}g)}.
\]

This is exactly the density of the dynamical metric and diffeomorphism-ghost target norms relative to their frozen-background versions. It is neither a measure-independent unit Jacobian nor a demonstrated anomaly. A coincident-heat finite-part prescription and an actual spectral-cutoff determinant must additionally be distinguished.

The classical map is literature-supported, not claimed new: see [the versioned source audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/sources/BV equivalence source audit.md>). Its component conventions, finite generator, action identity and cubic bridge are explicitly derived and checked here. This note concerns a **local interior BV interface**. It does not replace the [complete Gaussian operator comparison](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md>) or assert nonlinear continuum quantum equivalence.

## 1. Conventions and the boundary contract

Work in three Euclidean dimensions, with unit AdS radius, internal metric \(\delta_{ab}\), \(\epsilon_{123}=1\), and

\[
a=(16\pi G)^{-1}>0,\qquad \kappa=2a,
\qquad \omega^{ab}=-\epsilon^{ab}{}_c\omega^c.
\]

Here \(\kappa\) is only the coefficient of the BF pairing, not the CS level \(k=4\pi a\). Put

\[
R=d\omega+\tfrac12[\omega,\omega],\quad T=D_\omega e,
\quad \mathcal R=R-\tfrac12[e,e],\quad
\mathcal E=\det(e^a{}_\mu)>0,\quad g=e^Te.
\]

Grassmann coefficients are written first and commute with the ordinary \(dx^\mu\); \(i=\iota_\xi=\xi^\mu\iota_{\partial_\mu}\), with \(\xi\) on the left. This convention is changed explicitly, and only temporarily, in §3.3.

The complete Palatini action is

\[
\begin{split}
I_P={}&2a\int_M e_aR^a-\frac a3\int_M\epsilon_{abc}e^ae^be^c\\
&-2a\int_{\partial M}\epsilon_{abc}n^ae^bD_\omega n^c
+2a\int_{\partial M}\epsilon_\partial,
\end{split}\tag{1}
\]

where \(n^2=1\), \((n\cdot e)|_\partial=0\), and \(\epsilon_\partial=\epsilon_{abc}n^ae^be^c/2\). The normal is fixed by the coframe and the wall embedding, not an additional BV coordinate. For \(A=\omega+ie\), \(\bar A=\omega-ie\), \(\operatorname{tr}(T_aT_b)=-\delta_{ab}/2\), the geometric CS wall is \(l_P-ae_a\wedge\omega^a\). The exact CS–Palatini transgression and completed wall are those of [the off-shell Gaussian-map calculation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L24-L126>).

For an actual integrated BV field space, take either a closed manifold, or smooth physical fluctuations, ghosts and antifields all vanishing in an open collar relative to a fixed **on-shell** nondegenerate background, \(\bar T=\bar{\mathcal R}=0\). On a noncompact manifold take their compactly supported versions. This space is \(Q\)-stable: the equations-of-motion terms in \(Qe^*\) and \(Q\omega^*\) vanish in the fixed collar as well. Ghost/antifield support alone would kill the boundary primitive but would **not** give a \(Q\)-stable sector if the collar physical fields remained arbitrary off shell.

All integrations by parts below respect this condition; the map is the identity on the fixed physical collar and its wall. The algebraic local density identity itself holds for general smooth nondegenerate fields modulo its displayed exact derivative, but that is not an enlargement of the restricted BV domain. Thermal time is periodic and there are no temporal joints. No assertion is made that nonlinear products preserve the entire previously used complete-\(L^2\)/Brown–Henneaux proper domain.

The [CPS convention](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L25>) retains the full wall/corner data. The present odd bulk BV antibracket is **not** the even regional CPS/BFV form; compact support does not prove their boundary equivalence.

## 2. The off-shell error in the ghost-only map

Use the left odd geometric differential

\[
\begin{aligned}
Qe&=\mathcal L_\xi e+[e,\lambda],&
Q\omega&=\mathcal L_\xi\omega+D_\omega\lambda,\\
Q\xi^\mu&=\xi^\nu\partial_\nu\xi^\mu,&
Q\lambda&=\xi^\nu\partial_\nu\lambda-\tfrac12[\lambda,\lambda].
\end{aligned}\tag{2}
\]

Here \((\mathcal L_\xi e)_\mu=\xi^\nu\partial_\nu e_\mu+(\partial_\mu\xi^\nu)e_\nu\). Applying the CS differential to

\[
\rho=\lambda+\iota_\xi\omega,\qquad \tau=\iota_\xi e
\]

instead gives the exact remainders

\[
\begin{aligned}
\widehat Qe-Qe&=-\iota_\xi T,&
\widehat Q\omega-Q\omega&=-\iota_\xi\mathcal R,\\
\delta\xi^\mu:=\widehat Q\xi^\mu-Q\xi^\mu
 &=\tfrac12e_a{}^\mu\xi^\nu\xi^\rho T^a_{\nu\rho},\\
\widehat Q\lambda^a-Q\lambda^a
 &=\tfrac12\xi^\nu\xi^\rho\mathcal R^a_{\nu\rho}
   -\omega^a_\mu\delta\xi^\mu.
\end{aligned}\tag{3}
\]

Thus nondegeneracy makes the ghost map invertible, not geometrically correct off shell. A flat background has \(\bar T=\bar{\mathcal R}=0\), but their first variations remain and already generate a cubic BV discrepancy.

For coordinates \(q^A\), momenta \(p_A=q_A^*\), fix

\[
(F,G)=\int\left[
F\frac{\overleftarrow\delta}{\delta q^A}
 \frac{\overrightarrow\delta G}{\delta p_A}
-F\frac{\overleftarrow\delta}{\delta p_A}
 \frac{\overrightarrow\delta G}{\delta q^A}\right],
\qquad QF=(S,F).
\tag{4}
\]

Physical antifields are odd two-forms; ghost antifields are even three-forms. For example \(e_a^*=\epsilon_{\mu\nu\rho}e_a^{*\mu}dx^\nu dx^\rho/2\). The signed minimal geometric action is

\[
S_g=I_P+\int[e^*Qe+\omega^*Q\omega-\lambda^*Q\lambda-\xi_\mu^*Q\xi^\mu].
\tag{5}
\]

The minus signs on ghost terms are required by (4) and a left differential. Full local \(Q^2=0\) and \(QL_{P,\rm bulk}=\partial_\mu(\xi^\mu L_{P,\rm bulk})\) imply the classical master equation under the stated support condition; both identities have independent exact jet checks.

## 3. Exact classical canonical map

### 3.1 A finite generating functional

Denote CS-side physical fields by \((e_c,\omega_c)\), to distinguish them from \(\mathcal E=\det e\). For old positions \(q=(e,\omega,\lambda,\xi)\) and new momenta \(P=(e_c^*,\omega_c^*,\rho^*,\tau^*)\), define

\[
\boxed{\begin{split}
\mathcal F(q,P)=\int\{&e_c^*e+\omega_c^*\omega
+\rho^*(\lambda+i\omega)+\tau^*ie\\
&+\kappa^{-1}e_c^*\wedge i\omega_c^*
+(2\kappa)^{-1}e_c^*\wedge i^2\rho^*
+(2\kappa)^{-1}\omega_c^*\wedge i^2\tau^*
+(3\kappa)^{-1}\tau^*i^3\rho^*\}.
\end{split}}\tag{6}
\]

All internal contractions are included. This is odd of ghost number \(-1\). Its left and right derivatives coincide. The type-II equations

\[
p_A=\delta_l\mathcal F/\delta q^A,\qquad
Q^A=\delta_l\mathcal F/\delta P_A
\]

define an exact Lagrangian graph for the difference of the odd symplectic forms. The mixed change is invertible on the coframe patch. Hence the map is anticanonical; this is not inferred from the BRST algebra alone.

### 3.2 Explicit fields, ghosts and antifields

First solve the translation antifield:

\[
\boxed{\tau_a^*=e_a{}^\mu\left[
\xi_\mu^*-\omega_\mu^b\lambda_b^*
+\kappa^{-1}\omega_b^*\wedge\iota_{\partial_\mu}e^{*b}\right].}
\tag{7}
\]

The bracketed quantities are three-forms. The full map \(\Phi:\text{geometric BV}\to\text{CS BV}\) is

\[
\boxed{\begin{aligned}
e_c&=e+\kappa^{-1}i\omega^*-(2\kappa)^{-1}i^2\lambda^*,\\
\omega_c&=\omega+\kappa^{-1}ie^*-(2\kappa)^{-1}i^2\tau^*,\\
\tau&=ie+(2\kappa)^{-1}i^2\omega^*-(6\kappa)^{-1}i^3\lambda^*,\\
\rho&=\lambda+i\omega+(2\kappa)^{-1}i^2e^*-(6\kappa)^{-1}i^3\tau^*,\\
e_c^*&=e^*-i\tau^*,\qquad
\omega_c^*=\omega^*-i\lambda^*,\qquad \rho^*=\lambda^*.
\end{aligned}}\tag{8}
\]

There is no implicit antifield in this formula: \(\tau^*\) means (7). The body of the physical map is the identity; the leading ghost matrix has determinant \(\mathcal E\). Nilpotent inversion is therefore finite and local. The displayed inverse cannot continue through \(\mathcal E=0\).

For example, the leading \(e_c=e+\kappa^{-1}i\omega^*\) is required because \(Q(i\omega^*)=(Q\xi)\cdot\omega^*-\xi\cdot Q\omega^*\) and \(Q\omega^*|_0=\kappa T\). It reproduces the first torsion remainder in (3), with the correct minus sign. Simply setting antifields to zero before differentiating would miss this test.

### 3.3 All-orders action identity, including its exact derivative

For this proof alone, totalize forms so that \(dx^\mu\) anticommutes with odd coefficients. If the first form has degree \(p\) and the second ghost number \(h\), the product acquires \((-1)^{ph}\) relative to the component-first convention. With

\[
I=\xi^\mu\partial_{l,dx^\mu},\qquad d=dx^\mu\partial_\mu,
\]

\(I\) is an even derivation; on a form of ghost number \(g\),

\[
I^n\alpha=(-1)^{ng+n(n-1)/2}i^n\alpha.
\tag{9}
\]

Introduce the total-degree-one superfields

\[
\mathbb W=\rho+\omega_c-\kappa^{-1}e_c^*+\kappa^{-1}\tau^*,\qquad
\mathbb B=\tau+e_c-\kappa^{-1}\omega_c^*+\kappa^{-1}\rho^*.
\]

Their CS master density is the form-three part of

\[
\kappa\left[\mathbb B\left(d\mathbb W+\tfrac12[\mathbb W,\mathbb W]\right)
-\tfrac16\mathbb B[\mathbb B,\mathbb B]\right].
\]

Equation (8) says \(\mathbb W=e^I\alpha\), \(\mathbb B=e^I\beta\), with

\[
\alpha=\lambda+\omega-\kappa^{-1}e^*+\kappa^{-1}\tau^*,\qquad
\beta=e-\kappa^{-1}\omega^*+\kappa^{-1}\lambda^*.
\]

Crucially \(\beta_0=0\). Put \(L=[I,d]\), \(v^\mu=\xi^\nu\partial_\nu\xi^\mu\), and let \(J\) be total contraction with \(v\). On the algebra generators,

\[
[I,L]=-2J,\quad [I,J]=0,\qquad e^{-I}de^I=d-L-J.
\tag{10}
\]

Because \(e^I\) is multiplicative and leaves the top component unchanged, the pullback density is

\[
\kappa\left[\beta\left((d-L-J)\alpha+\tfrac12[\alpha,\alpha]\right)
-\tfrac16\beta[\beta,\beta]\right]_3.
\]

The \(d\) and bracket terms give the Lorentz-only master action. The cosmological term is exactly \(-\kappa e[e,e]/6\), since \(\beta\) has no scalar part. The \(-L\) term supplies \(e^*\mathcal L_\xi e+\omega^*\mathcal L_\xi\omega-\lambda^*\mathcal L_\xi\lambda\) modulo an explicit derivative. The remaining term is

\[
-\kappa[\beta J\alpha]_3
=-\tau^*\iota_v e-\lambda^*\iota_v\omega
+\kappa^{-1}\omega^*\wedge\iota_v e^*=-\xi_\mu^*v^\mu,
\]

by (7). More precisely, using the Palatini bulk representative on the CS side,

\[
\boxed{\Phi^*L_{\rm CS}^{\rm min}-L_g
=d\left[I(e_a e^{*a})-\Phi^*(\tau_a e_c^{*a})\right].}
\tag{11}
\]

The products in this primitive are totalized. The already matched classical CS–Palatini transgression is separate. The primitive vanishes in the collar, the physical wall is unchanged, and therefore

\[
\boxed{\Phi^*S_{\rm CS}=S_g}
\tag{12}
\]

for the complete action and the stated local support domain. This is an analytic proof, with an independent exact first-jet check of the full kinetic density and its primitive; it is not extrapolation from constant fields or a finite perturbative truncation.

### 3.4 Independently computed cubic bridge

Give every fluctuation, ghost and antifield degree one, and fix \(\bar T=\bar{\mathcal R}=0\). For \(q=(w,f)\),

\[
\mathcal R_1=D_{\bar\omega}w-[\bar e,f],\qquad
T_1=D_{\bar\omega}f+[w,\bar e].
\]

After the ghost-only cotangent lift,

\[
\widetilde S_3=S_{g,3}-\Delta_3,\qquad
\Delta_3=\int d^3x\,[\omega_a^{*\mu}\xi^\nu\mathcal R^a_{1,\nu\mu}
+e_a^{*\mu}\xi^\nu T^a_{1,\nu\mu}].
\]

With the common quadratic action \(S_2\), a direct density-component calculation gives

\[
\boxed{G_3=\frac1{2a}\int d^3x\,
\epsilon_{\nu\mu\sigma}\xi^\nu\omega_a^{*\mu}e_a^{*\sigma},
\qquad (G_3,S_2)=\Delta_3.}
\tag{13}
\]

Thus \(e^{(G_3,\cdot)}\widetilde S=S_g+O(4)\). Its physical coordinate corrections agree with (8). A type-II generating function and an action-pullback Hamiltonian need not have the same bare sign; comparing these coordinate corrections fixes the convention. The parent calculation and a separate Wolfram Grassmann calculation obtained (13) independently of the exact-map derivation.

## 4. Exact geometric auxiliary and Lorentz reduction

Set \(\omega^{ab}=\omega(e)^{ab}+K^{ab}\),
\(K^{ab}=\epsilon^{ab}{}_cU^c{}_de^d\). The dual difference is \(k^a=-U^a{}_de^d\). The completed action, not its bulk part alone, obeys

\[
\boxed{I_P=I_g[g(e)]+a\int d^3x\,\mathcal E\,q(U),
\qquad q(U)=(\operatorname{tr}U)^2-\operatorname{tr}(U^2).}
\tag{14}
\]

The bulk flux \(+a\int_\partial\epsilon eK\) cancels the wall flux \(-2a\int_\partial\epsilon neKn\) at the **same cutoff**. In an adapted frame these fluxes are respectively \(\pm2a(U_{12}-U_{21})e^1\wedge e^2\); they do not vanish individually. The residual metric action is
\(I_g=-a\int(R[g]+2)\operatorname{vol}_g-2a\int_\partial(k_\partial-1)\epsilon_\partial\).

Define \(L(U)=\operatorname{tr}(U)1-U^T\), so \(L^{-1}(Y)=\tfrac12\operatorname{tr}(Y)1-Y^T\). For \(U=t1/\sqrt3+s+b\), with \(s\) symmetric traceless and \(b\) antisymmetric,

\[
q(U)=2t^2-\|s\|^2+\|b\|^2.
\]

The Hessian per unit physical volume, \(2aL\), has eigenvalues \(4a,+2a\times3,-2a\times5\) and determinant \(-2^{10}a^9\). The real Euclidean integral diverges. We retain the previously selected upper contour for the five negative directions; this supplies phase \(i^5=i\), not a classical consequence of (14).

Naturality and uniqueness of the torsion-free connection imply, exactly off shell,

\[
Qk=\mathcal L_\xi k+[k,\lambda],\qquad
QU=\xi^\mu\partial_\mu U+[U,\Lambda],\quad
\Lambda^a{}_b=-\epsilon^a{}_{bc}\lambda^c.
\tag{15}
\]

The derivative-dependent cotangent lift is

\[
U^*_{ad}=-\omega_a^{*\mu}e^d_\mu,\qquad
e_{\rm new,d}^{*\mu}=e_{\rm old,d}^{*\mu}
+[(D_e\omega(e))^\dagger\omega^*]_d^\mu-\omega_a^{*\mu}U^a{}_d.
\]

Its adjoint uses the collar-support condition. On \(U^*=0\), the auxiliary equation is \(L(U)=0\), hence \(U=0\), for **arbitrary retained antifields**. At arbitrary \(U^*\), instead,

\[
2a\mathcal E L(U)+J=0,\qquad
U=-\frac1{2a\mathcal E}L^{-1}J,
\]

where \(J\) is the coefficient of \(U\) after integrating \(U^*QU\) by parts. Keeping \(U^*\) while merely substituting this solution is not the auxiliary BV reduction. In the unrectified CS ghost chart, even its own zero auxiliary-antifield section leaves the source \(-e^*\iota_\xi T\); declaring \(U=0\) there is incorrect.

Finally choose a local polar chart \(e=R\sqrt g\), with rotation coordinates \(\theta\), and set \(\chi=Q\theta\). On a manifold with a wall, the rotation variables eliminated here are interior variables relative to the chosen collar frame; any unfixed boundary-frame data remain external or unreduced. Interior ghosts alone do not authorize setting an arbitrary boundary rotation to zero. The coefficient of \(\lambda\) in \(Q\theta\) is invertible in this chart and \(Q\chi=0\). Its cotangent lift gives

\[
S_{\rm red}=I_g+
\int[g^*\mathcal L_\xi g-\xi_\mu^*\xi^\nu\partial_\nu\xi^\mu+\theta^*\chi].
\tag{16}
\]

Removing the Lorentz doublet is a local BV reduction/quasi-isomorphism, **not** a lower-dimensional symplectomorphism or a claim that the global frame group is contractible.

## 5. Exact pointwise Berezinian: a cancellation missed by cubic truncation

### 5.1 Full map, not just a cotangent lift

An odd-cotangent lift with base Berezinian \(B\) has full BV Berezinian \(B^2\); the semidensity factor is \(B\). Odd symplecticity alone does not imply coordinate-volume preservation. The same square formula for a general type-II map uses the mixed base Jacobian \(M=\partial_r Q/\partial q|_P\), evaluated on its canonical graph. Indeed, for \(H_A{}^B=\partial_r p_A/\partial P_B|_q\), oddness of \(\mathcal F\) gives

\[
H_A{}^B=(-1)^{\epsilon_A(\epsilon_B+1)}M^B{}_A,
\qquad \operatorname{Ber}_{\Pi q}H=(\operatorname{Ber}_qM)^{-1}.
\]

The momentum coordinates have reversed parities. Factoring the full transformation through \((q,P)\) therefore gives \(\operatorname{Ber}D\Phi=\operatorname{Ber}M/\operatorname{Ber}H=(\operatorname{Ber}M)^2\).

For (6), use coefficient-left coordinate differentials \(\delta Q=M\delta q\). Then \(M\) uses **right** derivatives. Relative to left differentiation, its even-output/odd-input block has a minus sign, whereas its odd-output/odd-input block does not. The even-even block is the identity. Its ghost Schur complement is exactly

\[
D-CA^{-1}B=\begin{pmatrix}1&\omega\\0&e\end{pmatrix}.
\tag{17}
\]

For clarity, at fixed new momenta the translated field and ghost are

\[
\begin{aligned}
e_c&=e+\kappa^{-1}i\omega_c^*+(2\kappa)^{-1}i^2\rho^*,\\
\tau&=ie+(2\kappa)^{-1}i^2\omega_c^*+(3\kappa)^{-1}i^3\rho^*.
\end{aligned}
\]

In the \((\tau,\xi)\) Schur row, the two additional terms in \(\partial_l\tau/\partial\xi^\mu\) cancel \(\xi^\nu\partial_l(e_c)_\nu/\partial\xi^\mu\). The \((\rho,\xi)\) row similarly reduces to \(\omega\). This proves the cancellation to **all antifield orders present in the finite generator**, without expanding \(e^{-1}\). Consequently, in the direction (8),

\[
\boxed{\operatorname{Ber}M=\mathcal E^{-1},\qquad
\operatorname{Ber}D\Phi=\mathcal E^{-2},\qquad
\Phi^*\sqrt{Dz_{\rm CS}}=\mathcal E^{-1}\sqrt{Dz_g}.}
\tag{18}
\]

There is no remaining nilpotent antifield coefficient in (18). Overall field-independent orientation/cell constants are fixed at the background. This is an exact **finite pointwise coordinate statement**, not a definition of an unregularized functional determinant. Two separately performed post-freeze graded-Jacobian calculations verify the Schur cancellation; the classical-action proof does not itself imply it.

### 5.2 Why the cubic generator alone gives the wrong full-measure inference

The independently obtained \(G_3\) obeys \(\Delta_0G_3=0\) for flat Darboux density. After the ghost-map lift, however, the inherited semidensity coefficient is \(\nu=\mathcal E^{-1}\). At a unit-weight finite cell,

\[
\Delta_\nu G_3=\Delta_0G_3+(\log\nu,G_3)
=\frac1{2a}e_a{}^\mu\epsilon_{\nu\mu\sigma}
\xi^\nu\omega_a^{*\sigma},
\tag{19}
\]

which is generically nonzero. This identifies a real failure of the statement “the cubic correction preserves every inherited measure.” It is **not** the leading correction of the full exact map: a degree-four canonical generator can contribute a degree-two BV divergence, the same degree as (19). The complete Schur calculation (17)–(18) includes those higher transformations and removes the extra nilpotent factor. Neither the nonzero truncated insertion nor its exact cancellation is a continuum anomaly calculation.

For non-unit cell weights the canonical antifield is the integrated cell momentum, not the continuum density; the corresponding powers of the cell weight must be retained. In continuum notation the coefficient in (19) multiplies a coincident functional trace. Writing it as an ordinary finite spacetime integral without a regulator would hide that trace.

## 6. The joint auxiliary/frame/ghost density

### 6.1 The finite local calculation

Normalize at a background coframe, take \(\bar g=1\) at the point, and write \(\mathcal E=\det e>0\). Start from the frozen-background coframe and connection \(L^2\) densities, and inverse volumes on the parity-reversed CS parameter spaces. These are fixed densities, not unspecified formal measures. In this local normalization their combined minimal base coefficient is constant.

The factors pulled back to \((g,\theta,U,\xi,\chi)\) are

| Step | Semidensity/base coefficient | Full BV coordinate Berezinian |
| --- | ---: | ---: |
| Exact CS-to-geometric pullback (18) | \(\mathcal E^{-1}\) | \(\mathcal E^{-2}\) |
| \(\omega=\omega(e)-Ue\), at fixed \(e\) | \(\mathcal E^3\) | \(\mathcal E^6\) |
| coframe and Lorentz ghost to metric and doublet | \(\mathrm{const}\,\mathcal E^{-1}\) | \(\mathrm{const}\,\mathcal E^{-2}\) |
| combined, before the auxiliary integral | \(\mathrm{const}\,\mathcal E\) | \(\mathrm{const}\,\mathcal E^2\) |

The first row now includes the **full** canonical map, not merely its ghost-only cotangent part. The derivative-dependent connection shift is triangular in compatible point/jet or finite blocks; this does not mean that a spectral compression preserves it.

The polar Jacobian is

\[
d^9e=\frac1{8\mathcal E}\,d^6g\,d\mu_{\rm Haar}(R).
\tag{20}
\]

One proof diagonalizes the positive polar factor, \(s=\operatorname{diag}(d_1,d_2,d_3)\). Each diagonal metric coordinate contributes \(1/(2d_i)\); each off-diagonal metric/rotation pair has unit absolute determinant. Orthogonal covariance then gives (20) throughout the chart. The Lorentz-ghost-to-doublet transformation cancels the rotation chart's Haar coefficient. Constants, including \(1/8\), are retained in the common background normalization rather than being field-dependent adjustments.

At fixed coordinate cell weight \(v\), the cell Hessian is \(2av\mathcal E L\). The chosen upper contour gives the raw integral

\[
\int_\Gamma d^9U\,e^{-av\mathcal E q(U)/\hbar}
=\frac{i}{\sqrt2}\left(\frac{\pi\hbar}{av\mathcal E}\right)^{9/2}.
\]

It supplies \(\mathcal E^{-9/2}\), with the stated fixed contour and normalization constants. The normalized local result is therefore

\[
\boxed{J_{\rm joint}^{\rm frozen}=r^{-7/2},\qquad
J_{\rm aux}^{\rm frozen}=r^{-3/2}.}
\tag{21}
\]

The second formula isolates the connection Jacobian and Gaussian only; it is not the full comparison. For \(H=\bar g^{-1}(g-\bar g)\),

\[
\begin{aligned}
\log J_{\rm joint}^{\rm frozen}
&=-\tfrac74\operatorname{tr}H+\tfrac78\operatorname{tr}H^2
-\tfrac7{12}\operatorname{tr}H^3+O(H^4),\\
\log J_{\rm aux}^{\rm frozen}
&=-\tfrac34\operatorname{tr}H+\tfrac38\operatorname{tr}H^2
-\tfrac14\operatorname{tr}H^3+O(H^4).
\end{aligned}\tag{22}
\]

For example \(e=2\bar e\) gives \(J_{\rm joint}=2^{-21/2}\), a finite counterexample to unconditional unity with frozen target norms.

### 6.2 Which target measure makes the finite ratio one?

For the dynamical norms

\[
\|\delta g\|_g^2=\tfrac14\int\operatorname{vol}_g\,
\operatorname{tr}(g^{-1}\delta g\,g^{-1}\delta g),\qquad
\|\xi\|_g^2=\int\operatorname{vol}_g\,g_{\mu\nu}\xi^\mu\xi^\nu,
\]

the metric volume density is proportional to \(\mathcal E^{-1}\), and the odd diffeomorphism-ghost density to \(\mathcal E^{-5/2}\). Their product is \(\mathcal E^{-7/2}\), exactly (21). A fixed nondegenerate DeWitt trace modification changes only a field-independent factor. Thus

\[
\boxed{\frac{\text{specified finite pushforward density}}
{\text{dynamical metric/diffeomorphism-ghost density}}=1}
\tag{23}
\]

after the same background and contour normalization. Merely calling both extensions “geometric” would not establish (23); their Gram determinants do.

The exact result (18) strengthens the original zero-antifield density calculation: in the geometric auxiliary section \(U^*=0\), (14)–(16) have no retained-antifield source and the full pulled-back semidensity has no additional nilpotent coefficient. The auxiliary fiber integration is therefore valid with retained metric and diffeomorphism antifields arbitrary. An adapted Lorentz fiber Lagrangian is \(\theta=0,\chi^*=0\); its \(\theta^*\chi\) Berezin integral is normalized by a field-independent constant. This gives a local algebraic BV-fiber pushforward, not just an equality of bosonic saddle actions.

**Exact scope of this finite statement:** the pointwise Jacobian and fiber integral, or a compatible finite realization respecting the displayed triangular maps and adjoints; the chosen auxiliary contour; a local frame chart and normalized doublet; the specified source and target densities. It does not construct a diffeomorphism-invariant lattice model, a closed finite-mode nonlinear BRST complex, a full gauge-fixed functional determinant, or a continuum QME.

## 7. A limited heat-prescription consequence, and its counterexamples

Let \(\mathscr R\) be a fixed smooth Laplace-type operator on a three-dimensional complete manifold without a finite spectral boundary. Let \(B(x)\) be a smooth, \(t\)-independent, compactly supported bundle endomorphism, with a localized heat trace, and do not subtract zero modes. Uniformly on its compact support,

\[
\operatorname{Tr}(B e^{-t\mathscr R})
\sim(4\pi t)^{-3/2}\sum_{j\geq0}t^j
\int\operatorname{tr}(B a_j).
\]

There is no \(t^0\) coefficient. Therefore the spatial-first minimal coincident-heat prescription gives

\[
\boxed{\operatorname{FP}_{t\downarrow0}
\operatorname{Tr}(B e^{-t\mathscr R})=0.}
\tag{24}
\]

This applies coefficientwise to finite Grassmann-valued insertions. In particular it assigns zero finite part to the identified order-zero log-density insertions when the **background-normalized** insertion is compactly supported. It neither makes the nontrivial finite density (21) mathematically equal to one nor proves that this prescription satisfies a quantum master equation.

The restrictions have concrete counterexamples:

1. **Mode subtraction:** replacing the heat operator by \(e^{-t\mathscr R}-P_0\) gives finite part \(-\operatorname{Tr}(BP_0)\).
2. **Finite wall:** for the scalar Dirichlet heat kernel on a flat half-space, \(B=b(x_\parallel)\varphi(z)\) gives the boundary finite part
   \[
   -\frac1{64\pi}\int_{\partial M} b\,\varphi''(0).
   \]
   It follows directly by expanding \((4\pi t)^{-3/2}(1-e^{-z^2/t})\). Interior compact support kills this example, not a general wall insertion.
3. **Spectral compression:** for \(M=\left(\begin{smallmatrix}2&1\\1&2\end{smallmatrix}\right)\) and projection \(P\) onto the first coordinate,
   \[
   \log\det(PMP|_{\operatorname{ran}P})=\log2
   \ne\tfrac12\log3=\operatorname{Tr}(P\log M P).
   \]
   A regulated trace of the logarithm is not automatically the determinant of a compressed nonlinear multiplication map.

Noncompact/asymptotic insertions require uniform infrared control. A cutoff depending on \(g\) also turns a constant per-fiber normalization into \(C(a)^{N_\Lambda(g)}\), potentially a local cosmological counterterm. None of these issues is resolved by the cancellation (18).

## 8. Evidence, theorem boundaries and the next calculation

The proof and verification have distinct roles:

- [Parent cubic/jet archive](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/nonlinear-bv-parent.x0xir72t/README.md>): fourteen exact groups, using independent sparse Grassmann polynomials with 199 even and 78 odd generators. Full geometric nilpotency, Noether divergence, off-shell remainders and the cubic sign/normalization are checked, not inferred from flatness.
- [Independent exact-map derivation and freeze](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/FREEZE.md>): analytic generating-function and all-orders action proof; 134 final native-Sage checks include the full nonabelian interaction and full kinetic first-jet density primitive. Its supplementary affine/zero-jet tests are distinguished from the complete analytic argument.
- [Independent auxiliary/density derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-bv-independent-20261031-065603/derivation.md>): exact wall cancellation, homogeneous auxiliary reduction, local frame doublet and full finite base-density calculation, with three separate Wolfram implementations.
- The full finite Berezinian was then checked in two separately labeled follow-ups: [native-Sage mixed-Hessian proof](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/berezinian_followup.md>) and [independent Wolfram two-Schur/inverse proof](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-bv-independent-20261031-065603/typeII-berezinian-followup/exact_berezinian.md>). The latter was given the generating function but no candidate determinant. Neither original frozen derivation was rewritten to pretend it had already computed this completion.
- [New parent density archive](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/nonlinear-bv-density-parent.cx7id5vg/README.md>): eight additional exact groups check the Gram determinants, full nondiagonal cubic series and generic-coframe weighted-divergence coefficients. They were not reruns of the fourteen-group suite.
- [Separate heat-prescription assessment](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-bv-independent-20261031-065603/heat_prescription_followup.md>): the general localized-parametrix proof, and actual checks of boundary, removed-mode and compression counterexamples. This was a supplied proposal assessed after the independent density calculation, not an initially blind discovery.

The [review index](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/Independent reviews.md>) separates those derivations from later supplied-text audits. In particular, the latter exposed the distinction between merely killing the boundary primitive and defining a genuinely \(Q\)-stable supported BV space; the fixed on-shell collar in §1 is substantive. The [verification guide](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/README.md>) retains successful raw returns, kernel-written exports, excluded API attempts and safe replay requirements.

**Verified:** exact local anticanonical and master-action transport, including the kinetic primitive; exact pointwise full Berezinian; homogeneous geometric auxiliary and local Lorentz reduction; the specified local algebraic fiber density; the limited minimal coincident-heat theorem and explicit counterexamples.

**Assumptions:** nondegenerate oriented Euclidean coframes; left component BRST and (4); closed M or compactly supported fluctuations/ghosts/antifields relative to a fixed on-shell collar/background; matched completed wall; anchored local frame chart; original background-normalized densities, common auxiliary contour and doublet normalization; compatible finite blocks where a finite realization is asserted. Heat statements additionally require the precise hypotheses of §7.

**Not established:** the full nonlinear Brown–Henneaux/complete-\(L^2\) proper complex; boundary BV–BFV/CPS transport outside the fixed collar; a regulator-compatible interacting QME, gauge-fixing-independent continuum pushforward, arbitrary CS cycles/global phases, or full metric–CS quantum equivalence.

The next finite target is the **second-order spectral-compression/master-equation defect of this exact map**, retaining every field, ghost and auxiliary block in the fixed complete-background prescription. A compressed nonlinear transformation, a canonical transformation generated after truncation, and a Wilsonian BV transfer need not coincide. Computing that first interacting defect—and testing whether the full supertrace cancels it or only a specified local counterterm does—is more informative than another agreement of thermal characters. The present result supplies the actual map and finite density needed for that test, not its answer.
