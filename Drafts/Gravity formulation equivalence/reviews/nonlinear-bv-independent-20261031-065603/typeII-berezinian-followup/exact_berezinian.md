# Exact finite Berezinian of the supplied type-II map

## Result

For the supplied type-II generating function, in the direction

\[
 (q,p)\longmapsto(Q,P),\qquad
 q=(e,w,\lambda,\xi),\quad P=(E^*,\Omega^*,\rho^*,\tau^*),
\]

the full finite canonical Berezinian at **arbitrary antifields** is

\[
 \boxed{\operatorname{Ber}\frac{\partial(Q,P)}{\partial(q,p)}
       =(\det e)^{-2}.}
\tag{T1}
\]

For an orientation-preserving coframe the semidensity factor is \((\det e)^{-1}\). There is **no antifield-dependent correction** to this coordinate Berezinian. The inverse map has the inverse factor, evaluated at the corresponding inverse-map coordinates.

This determinant was independently derived from the supplied generating function, with no candidate determinant supplied and before reading the later synthesis. It is a new result, not an amendment of the frozen earlier calculation. The individual cubic-generator expression \(\Delta_\nu F_3\) in that earlier calculation remains an expression for that individual step; it is not the leading measure correction of the full exact map considered here. Higher terms can contribute to the divergence at the same total degree and cancel it.

The present calculation proves (T1) for the given canonical map. It does not independently prove that this generating function transports the complete classical master actions; that is a separate claim. Nor does a finite Berezinian establish a continuum quantum master equation.

## 1. Supplied data and conventions

Put \(\kappa=2a\). The supplied function is

\[
 \begin{aligned}
 F=\int [&E^*\wedge e+\Omega^*\wedge w
  +\rho^*(\lambda+i w)+\tau^* i e
  +\kappa^{-1}E^*\wedge i\Omega^*\\
 &+(2\kappa)^{-1}E^*\wedge i^2\rho^*
  +(2\kappa)^{-1}\Omega^*\wedge i^2\tau^*
  +(3\kappa)^{-1}\tau^* i^3\rho^*].
 \end{aligned}
\tag{T2}
\]

Forms are component-first; Grassmann coefficients commute with \(dx^\mu\); \(i=\xi^\mu i_\mu\), with \(\xi\) multiplied on the left. Use
\(p=\delta_lF/\delta q\), \(Q=\delta_lF/\delta P\).
The fields \(e,w\) are even, ghosts \(\lambda,\xi\) odd; \(E^*,\Omega^*\) are odd two-form antifields, \(\rho^*,\tau^*\) even three-form antifields. At one point identify two-forms with density vectors,

\[
 E^*_a=\tfrac12\epsilon_{\mu\nu\rho}A_a^\mu dx^\nu\wedge dx^\rho,
 \quad \Omega^*_a=\tfrac12\epsilon_{\mu\nu\rho}B_a^\mu dx^\nu\wedge dx^\rho,
 \quad \rho^*_a=r_a\,d^3x,\quad \tau^*_a=t_a\,d^3x.
\]

Thus \(A,B\) are odd and \(r,t\) even. The coframe determinant \(E=\det(e_\mu^a)\) has positive body. All formulas are polynomial in Grassmann variables and exact, not a perturbative truncation.

The nonlinear component density of (T2), with repeated indices summed, is

\[
 \begin{aligned}
 F={}&A_a^\mu e_\mu^a+B_a^\mu w_\mu^a
  +r_a(\lambda^a+\xi^\mu w_\mu^a)+t_a\xi^\mu e_\mu^a\\
 &+\kappa^{-1}\epsilon_{\nu\mu\sigma}A_a^\mu\xi^\nu B_a^\sigma\\
 &-(2\kappa)^{-1}\epsilon_{\nu\rho\mu}
      (A_a^\mu\xi^\nu\xi^\rho r_a+B_a^\mu\xi^\nu\xi^\rho t_a)\\
 &-(3\kappa)^{-1}\epsilon_{\nu\rho\sigma}
       t_a\xi^\nu\xi^\rho\xi^\sigma r_a.
 \end{aligned}
\tag{T3}
\]

The minus signs in the last two lines follow from iterating \(i=\xi^\mu i_\mu\) in the specified component-first convention. An independent finite exterior-algebra implementation verified (T2)=(T3), before differentiating.

## 2. The mixed coordinate map

For an odd vector \(V_a^\mu\) and even scalar \(s_a\), define

\[
 A_{1,\mu}^a(V)=\kappa^{-1}\epsilon_{\nu\mu\sigma}\xi^\nu V_a^\sigma,
 \qquad
 A_{2,\mu}^a(s)=-(2\kappa)^{-1}\epsilon_{\nu\rho\mu}\xi^\nu\xi^\rho s_a.
\tag{T4}
\]

Left differentiation of (T3) gives

\[
 \begin{aligned}
 Q_e&=e+A_1(B)+A_2(r),\\
 Q_w&=w+A_1(A)+A_2(t),\\
 Q_\rho^a&=\lambda^a+\xi^\mu w_\mu^a
       +\tfrac12\xi^\mu A_{1,\mu}^a(A)
       +\tfrac23\xi^\mu A_{2,\mu}^a(t),\\
 Q_\tau^a&=\xi^\mu e_\mu^a
       +\tfrac12\xi^\mu A_{1,\mu}^a(B)
       +\tfrac23\xi^\mu A_{2,\mu}^a(r).
 \end{aligned}
\tag{T5}
\]

All 24 components were checked against direct differentiation of the 61-monomial generating function.

### Essential left/right sign

Use a conventional column-vector Jacobian defined by
\(\delta Q^I=M^I{}_J\delta q^J\), with coefficients to the left of the coordinate variation. Its odd-input columns are **right** derivatives. In terms of left derivatives,

\[
 \frac{\partial_r f}{\partial q^J}
 =(-1)^{\epsilon(q^J)(\epsilon(f)+1)}
     \frac{\partial_l f}{\partial q^J}.
\tag{T6}
\]

Consequently the even-output/odd-input block is minus its left derivative, while the odd-output/odd-input block equals its left derivative. Mixing a left-derivative off-diagonal block with the ordinary Schur formula produces spurious nilpotent terms.

Order the input as \((e,w\mid\lambda,\xi)\) and output as \((Q_e,Q_w\mid Q_\rho,Q_\tau)\). The even-even block is \(\mathbf1_{18}\). The right-Jacobian Schur complement is

\[
 S=D-CB_r=D+C B_l
  =\begin{pmatrix}\mathbf1_3&w\\0&e\end{pmatrix}.
\tag{T7}
\]

For example its lower-right block is

\[
 S_{\tau\xi,aj}
  =\frac{\partial_l Q_\tau^a}{\partial\xi^j}
    +\sum_\mu\xi^\mu
         \frac{\partial_l Q_{e,\mu}^a}{\partial\xi^j}
  =e_j^a.
\tag{T8}
\]

The \(B\xi\) and \(r\xi^2\) terms both cancel exactly. The same cancellation gives \(S_{\rho\xi,aj}=w_j^a\). Hence

\[
 \operatorname{Ber}\left(\frac{\partial Q}{\partial q}\right)_P
 =\frac1{\det S}=E^{-1}.
\tag{T9}
\]

This proof does not set any antifield to zero.

## 3. Independent inverse-antifield proof of the second mixed factor

Differentiating with respect to the input fields/ghosts gives

\[
 p_{e,a}^\mu=A_a^\mu+t_a\xi^\mu,\qquad
 p_{w,a}^\mu=B_a^\mu+r_a\xi^\mu,\qquad p_{\lambda,a}=r_a.
\tag{T10}
\]

The nontrivial fourth identity simplifies exactly to

\[
 \boxed{p_{\xi,\nu}=r_aw_\nu^a+t_ae_\nu^a
       -\kappa^{-1}\epsilon_{\nu\mu\sigma}
           p_{e,a}^\mu p_{w,a}^\sigma.}
\tag{T11}
\]

In deriving (T11), the terms linear in \(r\) or \(t\) and the terms proportional to \(rt\xi^2\) cancel after substituting (T10). This identity was separately checked by exact Grassmann multiplication. It gives an explicit inverse solution:

\[
 \begin{aligned}
 r_a&=p_{\lambda,a},\\
 t_a&=e_a{}^\nu\left[p_{\xi,\nu}-w_\nu^b p_{\lambda,b}
       +\kappa^{-1}\epsilon_{\nu\mu\sigma}p_{e,b}^\mu p_{w,b}^\sigma\right],\\
 A_a^\mu&=p_{e,a}^\mu-t_a\xi^\mu,\qquad
 B_a^\mu=p_{w,a}^\mu-r_a\xi^\mu.
 \end{aligned}
\tag{T12}
\]

Thus invertibility requires only the original coframe to be invertible; no new antifield-dependent denominator appears.

For the map \(P\mapsto p\) at fixed \(q\), order even variables \((r,t)\) first and odd variables \((A,B)\) last. Its odd-odd block is the identity. Eliminating that block gives the even Schur complement

\[
 \begin{pmatrix}\mathbf1_3&0\\w&e\end{pmatrix},
\]

so

\[
 \operatorname{Ber}\left(\frac{\partial p}{\partial P}\right)_q=E.
\tag{T13}
\]

This second Schur complement was calculated directly from the right-coordinate derivatives, independently of (T9).

Both complete transformations factor through the mixed coordinates \((q,P)\). The chain rule now gives

\[
 \operatorname{Ber}\frac{\partial(Q,P)}{\partial(q,p)}
 =\frac{\operatorname{Ber}(\partial Q/\partial q)_P}
        {\operatorname{Ber}(\partial p/\partial P)_q}
 =\frac{E^{-1}}{E}=E^{-2}.
\tag{T14}
\]

This also exhibits why the full Berezinian is the square of the mixed base factor in this canonical transformation, without inferring volume preservation from odd symplecticity.

## 4. Measure interpretation and limits

- For a coordinate BV volume, the exact factor is \(E^{-2}\); for its semidensity it is \(E^{-1}\). Neither factor has an antifield correction.
- For an independently specified nonconstant original density \(\mu(Q)\), one must still evaluate \(\mu\) on the full antifield-dependent map \(Q(q,P)\). The determinant result alone does not make that extra evaluation antifield-independent.
- In the background-normalized original minimal Palatini/CS field-plus-parameter \(L^2\) density considered in the frozen calculation, the combined coefficient is constant. For that particular density the exact result above removes the previously uncomputed antifield-dependent Jacobian obstruction of the full map.
- If this supplied generating function indeed transports the complete master action to the exact geometric one, subsequent cotangent transformations \(w\to U\) and coframe/Lorentz-ghost to metric/local-doublet give a combined finite semidensity coefficient \(\mathrm{const}\,E\), at arbitrary antifields. On the geometric auxiliary section \(U^*=0\), the action is exactly quadratic in \(U\) and has no source from retained antifields. A normalized Lorentz fiber Lagrangian \(\theta=0,\chi^*=0\) for \(\theta^*\chi\) is also independent of retained metric/diffeomorphism antifields. Therefore the earlier finite residual \(r^{-7/2}\) can then be strengthened to arbitrary retained antifields for that local algebraic/compatible finite fiber calculation.
- This strengthening is conditional on the stated exact master-action transport, the specified original density and contour, and the compatible finite-fiber realization. It is not a gauge-invariant finite truncation, a theorem about arbitrary spectral cutoffs, a statement about every gauge-fixing Lagrangian, or a continuum QME. Multiplication and derivative maps need not preserve a spectral cutoff subspace.

## 5. Exact evidence and replay

Input: [typeII_checks.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-bv-independent-20261031-065603/typeII-berezinian-followup/typeII_checks.wl>).
Kernel-written output: [typeII_checks.actual.txt](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-bv-independent-20261031-065603/typeII-berezinian-followup/typeII_checks.actual.txt>).

The final run verified: supplied form expression equals component expression; all 24 generated coordinate components; both 3-by-3 blocks of each mixed Schur complement; the exact inverse-antifield identity; and the failure of the incorrectly unsigned left-derivative Schur product. All Boolean checks passed. The outer Wolfram return reported `AllMessages -> {}`. The determinant values follow from the explicitly verified scalar Schur blocks, rather than an opaque 48-by-48 symbolic determinant.

The source has a fixed output basename relative to its own location. **For replay, first copy the input to a new unique directory and evaluate that copy**, so its exported output cannot overwrite the frozen evidence. The code loads no packages and executes no shell commands.
