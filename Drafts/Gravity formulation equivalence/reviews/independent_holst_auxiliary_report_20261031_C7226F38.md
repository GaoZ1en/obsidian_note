# Independent review: finite auxiliary elimination in four-dimensional EC–Holst gravity

## Decisive results

**For nondegenerate real Lorentzian coframes and a real Lorentz connection, every real nonzero Immirzi parameter, including the EC limit, has the unique connection solution `omega = omega(e)`.** This is an algebraic elimination theorem, not merely a perturbative statement. The bulk reduced action is Einstein–Hilbert with cosmological constant. Boundary equivalence additionally requires matching boundary actions and admissible variations.

With the normalization and independent connection components specified below, the exact dimensionless 24-component auxiliary Hessian obeys

\[
 H_\beta=H_\infty(\mathbf1-\beta^{-1}\star_{24}),\qquad
 \det H_\infty=256,\qquad
 \boxed{\frac{\det H_\beta}{\det H_\infty}
       =(1+\beta^{-2})^{12}}.
\]

Its real inertia is `(12 positive, 12 negative)` for every real nonzero beta. At complex beta equal to `+i` or `-i`, the complexified Hessian has rank 12. The omitted connection chirality is arbitrary. **This complex degeneracy is not a torsionful real-connection branch:** if the connection is restricted to be real, the real and imaginary parts of the complex field equation still enforce zero torsion.

A fixed-coframe, same-measure, finite-dimensional Fresnel integral gives the relative factor `(1+beta^{-2})^{-6}` per interior cell. It does **not** prove quantum equivalence to metric gravity, or a regulator-independent equivalence between beta values.

For the explicitly normalized beta-independent axial source in Section 7, the exact eliminated interaction is

\[
 \boxed{\Delta L_\beta=-3\kappa s^2\frac{\beta^2}{\beta^2+1}
 J_IJ^I\,\mathrm{vol}}.
\]

This is a concrete torsionful contrast, without identifying the source with a Dirac current.

## 1. Scope, independence, and conventions

This review was derived from the supplied action and questions. All derivations and both exact calculations were completed before any parent comparison result was received; no parent candidate conclusion or new project synthesis was used as input. The parent subsequently reported agreement of its separately obtained source calculation. The root [vault rules](</Users/koishi/Documents/Note/AGENTS.md>) and the prescribed [CPS conventions](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L5-L27>) were read. In particular, spacetime and field-space differentials commute, `d delta = delta d`, and the integrated presymplectic form is `Omega = delta Theta`.

Let `M` be an oriented, time-oriented four-dimensional manifold. Work locally, or on the specified coframe bundle, with a smooth invertible coframe `e^I` and an independent metric-compatible Lorentz connection `omega^{IJ}=-omega^{JI}`. Nonmetric affine connections are not included. Internal conventions are

\[
 \eta_{IJ}=\operatorname{diag}(-1,1,1,1),\quad
 \epsilon_{0123}=+1,\quad
 \mathrm{vol}=e^0\wedge e^1\wedge e^2\wedge e^3,\quad
 \kappa=8\pi G_4>0.
\]

All repeated antisymmetric pairs in the action and source are **full sums**, not sums restricted to `I<J`. Thus `epsilon^{0123}=-1`. The alternating symbol giving the coefficient of `e^I wedge e^J wedge e^A wedge e^B` in `vol` has value `+1` at `0123`; it is not the metric-raised epsilon tensor. The script keeps these two roles distinct.

Set `r=1/beta`, with `r=0` denoting EC. The beta-zero action is undefined and is not an additional member of this family. The action is

\[
 L_\beta=\frac1{4\kappa}\epsilon_{IJKL}e^I\wedge e^J\wedge F^{KL}
 +\frac r{2\kappa}e^I\wedge e^J\wedge F_{IJ}
 -\frac\Lambda{24\kappa}\epsilon_{IJKL}e^I\wedge e^J\wedge e^K\wedge e^L,
\]

\[
 F^{IJ}=d\omega^{IJ}+\omega^I{}_K\wedge\omega^{KJ},\qquad T^I=De^I.
\]

Define `Sigma_{IJ}=e_I wedge e_J` and the internal bivector star by

\[
 (\star X)_{IJ}=\frac12\epsilon_{IJ}{}^{KL}X_{KL},\qquad
 \star^2=-\mathbf1,
\]

and let

\[
 B_{IJ}=\frac1{2\kappa}(\star\Sigma+r\Sigma)_{IJ}.
\]

Then `L_beta=B_{IJ} wedge F^{IJ}-(Lambda/kappa)vol`.

## 2. Exact connection equation and its inversion

Varying only the connection gives, without imposing an equation of motion,

\[
 \delta_\omega L_\beta
 =d\bigl(B_{IJ}\wedge\delta\omega^{IJ}\bigr)
  -DB_{IJ}\wedge\delta\omega^{IJ}.
\]

Thus a natural bulk potential is

\[
 \theta_\beta=B_{IJ}\wedge\delta\omega^{IJ},
\]

and the connection equation, with its normalization fixed, is

\[
 DB_{IJ}=\frac1{2\kappa}(\star+r)D\Sigma_{IJ}=0.
\]

Equivalently,

\[
 \boxed{\epsilon_{IJKL}T^K\wedge e^L
 +r\bigl(T_I\wedge e_J-T_J\wedge e_I\bigr)=0.}
\]

For `1+r^2 != 0`,

\[
 (\star+r)^{-1}=\frac{r-\star}{1+r^2}.
\]

In particular this is invertible for every real `r`, including zero. Hence `D Sigma=0`.

### Why `D Sigma=0` forces torsion to vanish in four dimensions

This implication needs the invertible coframe; it is not a purely formal cancellation. Let `E_I` be the dual frame, write `iota_I=iota_{E_I}`, and set `t=sum_J iota_J T^J`. Since

\[
 D\Sigma^{IJ}=T^I\wedge e^J-T^J\wedge e^I,
\]

contracting this equation with `sum_J iota_J` gives in four dimensions

\[
 T^I-t\wedge e^I=0.
\]

Contract once more and sum over `I`:

\[
 t=\sum_I\iota_I(t\wedge e^I)=t-4t=-3t.
\]

Thus `t=0` and `T^I=0`. A Lorentz connection with zero torsion is the unique Levi–Civita spin connection `bar omega=omega(e)`. This proves the finite, nonperturbative auxiliary elimination statement. The exact component calculation independently finds rank 24 for both maps `K -> T` and `K -> D Sigma`.

## 3. Exceptional and excluded sectors

### 3.1 Complex parameters and complexified connections

The only singular parameters away from beta zero are

\[
 \beta=+i\quad(r=-i),\qquad \beta=-i\quad(r=+i).
\]

For clarity, complexify the connection variables when discussing their chiral null directions. Write `omega=bar omega+K`. On Lorentz bivectors in four dimensions, the star is a centroid of the Lie bracket:

\[
 [\star X,Y]=\star[X,Y]=[X,\star Y].
\]

Consequently the invertible pointwise map

\[
 \mathcal C_e:K\longmapsto [K,\Sigma]=D_\omega\Sigma
\]

intertwines the internal star. The connection equation is therefore equivalent to

\[
 (\star+r)K=0.
\]

For nonsingular parameters this is just `K=0`. At beta `+i`, any `star K=+i K` is allowed; at beta `-i`, any `star K=-i K` is allowed. Each arbitrary chirality has three internal complex components times four one-form components, hence complex dimension 12 per point. The opposite chirality is fixed to its Levi–Civita value. The full chiral action is independent of the omitted connection chirality; these are not merely zero modes of a quadratic approximation.

If `e` and `omega` remain **real**, however, the complex field equation has independent real and imaginary parts. In particular `star K +/- i K=0` with real `K` forces `K=0`. One must not import the complexified 12-dimensional kernel into the original real field space. No contour or reality-condition quantization at these exceptional parameters is established here.

### 3.2 Degenerate coframes

If the coframe is degenerate, the dual-frame proof, unique Levi–Civita split, and determinant reduction do not apply. The bivector operator can remain invertible while `D Sigma=0` no longer determines torsion.

An explicit rank-one counterexample on a coordinate patch is

\[
 e^0=dt,\quad e^1=e^2=e^3=0,\quad \omega^{01}=dx,
\]

with all other connection components zero. Here `Sigma=0`, `F=0`, and `T^1=dx wedge dt != 0`. Both connection and coframe equations vanish, for every allowed beta and every Lambda. This is a genuine torsionful solution of the polynomial equations, excluded by the nondegeneracy hypothesis. At `e=0` the degeneracy is even larger.

## 4. Exact split into Einstein–Hilbert, a boundary term, and an algebraic quadratic form

For an arbitrary invertible coframe, not assumed to satisfy Einstein's equation, set

\[
 \omega^{IJ}=\bar\omega^{IJ}(e)+K^{IJ},\qquad
 \bar D e^I=0.
\]

Then

\[
 F^{IJ}=\bar R^{IJ}+\bar D K^{IJ}+K^I{}_M\wedge K^{MJ}.
\]

Since `bar D B=0`, the exact off-shell identity is

\[
 \boxed{L_\beta=\frac{R[g]-2\Lambda}{2\kappa}\,\mathrm{vol}
              +d b_\beta+Q_\beta},
\]

where

\[
 b_\beta=B_{IJ}\wedge K^{IJ}
 =\frac1{4\kappa}\epsilon_{IJKL}e^I\wedge e^J\wedge K^{KL}
  +\frac r{2\kappa}e^I\wedge e^J\wedge K_{IJ},
\]

\[
 \boxed{Q_\beta=B_{IJ}\wedge K^I{}_M\wedge K^{MJ}.}
\]

The torsion-free Holst term vanishes by `bar R^I{}_J wedge e^J=0`; it does not shift the Einstein–Hilbert coefficient. Lambda does not enter the connection Hessian.

For a component formula, put `K^{IJ}=K^{IJ}{}_A e^A`. Then

\[
 Q_\infty=\frac{\mathrm{vol}}{2\kappa}
 \left(K^I{}_{MI}K^{MJ}{}_J-K^I{}_{MJ}K^{MJ}{}_I\right).
\]

The Holst part has the particularly useful form

\[
 Q_\beta-Q_\infty=\frac r{2\kappa}T^I\wedge T_I,
 \qquad T^I=K^I{}_J\wedge e^J.
\]

Indeed the exact Nieh–Yan identity in the stated conventions is

\[
 d(e^I\wedge T_I)=T^I\wedge T_I-e^I\wedge e^J\wedge F_{IJ},
\]

and

\[
 b_{\rm Holst}=\frac r{2\kappa}e^I\wedge e^J\wedge K_{IJ}
             =-\frac r{2\kappa}e^I\wedge T_I.
\]

Thus the Holst term is **not** purely a boundary term off shell: it contains a nonzero torsion-square bulk term.

At `K=0`, the derivative of the quadratic form also vanishes under arbitrary coframe variation. Hence the bulk coframe equation reduces to Einstein's equation, and conversely every Einstein coframe with its Levi–Civita spin connection solves the original bulk equations. This is the precise pure-theory bulk correspondence.

The term `d b_beta` has deliberately not been dropped. It can be removed by the compensating boundary action, or can be harmless for a suitable specified boundary problem; neither conclusion is automatic. With `d delta = delta d`, changing `L` by `d b` permits `theta -> theta+delta b`; `delta^2 b=0`. But comparing connection boundary data with metric boundary data also involves the derivative-dependent map `omega(e)` and possible spacetime-exact potential/corner terms. Full metric corners are outside this review.

## 5. Auxiliary Hessian and determinant: analytic argument plus exact construction

### 5.1 Normalization

Take the 24 independent real components

\[
 z=(K^{01}{}_0,\ldots,K^{01}{}_3,
    K^{02}{}_0,\ldots,K^{23}{}_3),
\]

with pair order `01,02,03,12,13,23`. Define the dimensionless symmetric matrices by

\[
 Q_\beta=\frac{\mathrm{vol}}{2\kappa}z^T H_\beta z,
 \qquad H_\beta=H_0+rH_1,\quad H_0=H_\infty.
\]

The Hessian of the scalar coefficient `Q_beta/vol` is therefore `H_beta/kappa`, not `H_beta` itself.

### 5.2 Relative determinant without a large symbolic determinant

Let `S=star_24` act on the antisymmetric pair of `K^{IJ}{}_A`, leaving `A` unchanged. It obeys `S^2=-1`. Here is a direct variational proof with the same pairing on both sides. Write `Q_beta=Q_0+r Q_1` and, at fixed coframe, define the three-form-valued connection equations

\[
 \mathcal E_0(K)=\frac1{2\kappa}\star\mathcal C_e(K),\qquad
 \mathcal E_1(K)=\frac1{2\kappa}\mathcal C_e(K),
 \qquad \mathcal C_e(K)=[K,\Sigma].
\]

For any connection variation `X`, cancellation of the variations of `d b_beta` gives

\[
 \delta Q_a[K;X]=-\mathcal E_a(K)_{IJ}\wedge X^{IJ},\qquad a=0,1.
\]

The centroid identity now gives the explicit chain

\[
 \mathcal E_0(-\star K)
 =-\frac1{2\kappa}\star\mathcal C_e(\star K)
 =-\frac1{2\kappa}\star^2\mathcal C_e(K)
 =\mathcal E_1(K).
\]

Therefore `delta Q_1[K;X]=delta Q_0[-star K;X]` for every `X`. In the common independent component basis the wedge pairing is nondegenerate, and hence

\[
 H_1=-H_0S,\qquad H_\beta=H_0(1-rS).
\]

This also follows by polarizing the explicit quadratic form above. Invertibility of `H_0` follows from the already-proved invertibility of the EC connection equation; it is independently checked below.

The six-dimensional bivector star has eigenvalues `+i,-i`, each with multiplicity three. On connection one-forms they each have multiplicity twelve. Consequently

\[
 \det(1-rS)=(1-ir)^{12}(1+ir)^{12}=(1+r^2)^{12}.
\]

This proves the relative determinant, including its multiplicity, for arbitrary invertible coframe. It also gives

\[
 H_\beta^{-1}=\frac{1+rS}{1+r^2}H_0^{-1}
\]

whenever `1+r^2 != 0`.

### 5.3 Exact component verification

The [auxiliary calculation script](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_holst_auxiliary_20261031_C7226F38.wl>) constructs the original wedge quadratic form directly from alternating symbols and Lorentz metric factors. No determinant formula or eigenvalue multiplicity is inserted as input. Its [readable output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_holst_auxiliary_20261031_C7226F38_output.txt>) reports sixteen true checks and no kernel messages. The [full exact output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_holst_auxiliary_20261031_C7226F38_output.wxf>) retains both quadratic polynomials, both Hessians, the star, and the torsion/connection-equation maps.

The exact results are

\[
 \det H_0=256,\qquad
 \operatorname{spec}(H_0)=\{-2\ (4),-1\ (8),+1\ (8),+2\ (4)\},
\]

\[
 \det H_\beta=256(1+r^2)^{12}.
\]

Here parentheses indicate multiplicities. Real `r` varies continuously without a zero determinant, so the inertia remains `(12,12,0)` throughout the real family. At `r=+i,-i` the rank is exactly 12 and the predicted chiral projectors are annihilated. The limits `r=0` and complex exceptional roots are checked directly. These are exact algebraic checks, not numerical support or an independent second CAS implementation.

### 5.4 Frame versus coordinate component measure

The relative determinant is independent of any common beta-independent coordinate change, but an absolute functional measure is not fixed by it. In an oriented coordinate chart let `E=(e^I_mu)` and `e=det E>0`. With independent coordinate components `K_mu^{IJ}` one has six copies of `K_coordinate=E^T K_frame`. The Hessian of the coordinate Lagrangian density has

\[
 \det H_{\rm density,coordinate}
 =e^{12}\kappa^{-24}\,256(1+r^2)^{12},
\]

whereas the corresponding frame-component density Hessian has `e^{24}` instead of `e^{12}`. The local change of integration variables contributes

\[
 d^{24}K_{\rm coordinate}=e^6\,d^{24}K_{\rm frame}.
\]

These elementary factors already show why the dimensionless relative determinant must not be mistaken for a full metric functional measure.

## 6. What the formal auxiliary Gaussian does and does not imply

Fix `e`, remove or separately account for `d b_beta`, choose a finite discretization with a fixed positive cell volume `v`, and use the same flat measure on all 24 real frame components for every beta. A common Fresnel prescription then gives

\[
 I_\beta(v)=\int_{\mathbb R^{24}}d^{24}z\,
 \exp\left(\frac{i v}{2\hbar\kappa}z^TH_\beta z\right)
 =\left(\frac{2\pi\hbar\kappa}{v}\right)^{12}
  \frac1{16(1+r^2)^6}.
\]

The signature phase is unity because `n_+-n_-=0`. The equality is an oscillatory Gaussian defined by a common convergence prescription, not an absolutely convergent Lebesgue integral. Thus

\[
 \frac{I_\beta}{I_\infty}=(1+r^2)^{-6},
\]

and for `N` such cells the ratio is `(1+r^2)^{-6N}`. At this finite level, with those assumptions, the bulk auxiliary integration is exact: there are no higher powers of `K` left to expand.

This yields only a conditional quantum statement:

* With the same fixed regulator, the same beta-independent measure and contour, the same boundary treatment, and insertions independent of `K`, the pure bulk auxiliary sector contributes this local normalization factor. On a fixed coordinate lattice with field-independent `N`, it cancels out of normalized coframe-only expectation values.
* In a continuum expression, `N` becomes a divergent regulated trace of the identity. A covariant cutoff can make that trace depend on the dynamical metric, producing local, regulator-dependent measure/counterterm contributions rather than a universal constant. The displayed finite result does not select a regulator or a subtraction scheme.
* The triangular shift `(e,omega)->(e,K=omega-omega(e))` has formal unit Jacobian for a translation-invariant connection measure and a compatible finite regulator. Its derivative dependence does not by itself disprove this triangular argument. But the actual measure, domain, boundary restrictions, local Lorentz/diffeomorphism gauge treatment, coframe-to-metric Jacobian, and regulator have not been specified by the action. Their equivalence cannot be presumed.
* Connection/torsion insertions probe the beta-dependent inverse Hessian. They are not covered by the coframe-only normalization argument. A linear source produces a real local interaction, as Section 7 demonstrates.
* Retaining a boundary term linear in `K`, or imposing different boundary conditions on the two formulations, changes the integration problem. Bulk Gaussian algebra alone is insufficient.
* The exceptional complex parameters require a separate chiral/reality/contour analysis. The real-beta Fresnel formula cannot be extended through their zero determinants.

Accordingly, neither classical elimination nor the formal local Gaussian proves equality of renormalized quantum observables, a common Hilbert space, a full CPS symplectomorphism with boundaries, or nonperturbative metric/connection quantum equivalence.

## 7. Additional torsionful contrast: an explicitly normalized axial source

Consider exactly the supplementary source requested during review,

\[
 L_s=s\,K^{IJ}{}_m\,\epsilon_{IJhm}J^h\eta^{mm}\,\mathrm{vol},
\]

where every displayed index is summed, `eta^{mm}` means the diagonal metric factor in this sum, `J^I` is fixed in the connection variation, and `s` is a beta-independent real constant. There is no factor `1/2` compensating the full antisymmetric-pair sum. No gamma-matrix or Dirac-current convention is assumed.

Define

\[
 A^{IJ}{}_a=\epsilon^{IJ}{}_{ah}J^h,\qquad
 V^{IJ}{}_a=\delta^I_aJ^J-\delta^J_aJ^I.
\]

Let `v_J` be the 24-component coefficient vector such that `L_s=s v_J^T z vol`. Direct epsilon contraction gives

\[
 H_0 A=v_J,\qquad SA=-V,\qquad v_J^TA=6J_IJ^I,\qquad v_J^TV=0.
\]

The **full** 24-component stationary equation is

\[
 \frac1\kappa H_\beta z+s v_J=0.
\]

Using the already-derived full inverse Hessian, rather than assuming a two-coefficient ansatz, yields

\[
 \boxed{K^{IJ}{}_a=
 \frac{\kappa s}{1+r^2}
 \left[-\epsilon^{IJ}{}_{ah}J^h
       +r(\delta^I_aJ^J-\delta^J_aJ^I)\right].}
\]

At a stationary point of a quadratic-plus-linear function, the total value is half the linear term. Thus

\[
 \boxed{(Q_\beta+L_s)\big|_{K_{\rm stat}}
       =-\frac{3\kappa s^2}{1+r^2}J_IJ^I\,\mathrm{vol}.}
\]

The relative **coefficient** compared with EC is `1/(1+r^2)=beta^2/(beta^2+1)`. This wording remains meaningful when `J^2=0`; in that case the interaction evaluates to zero although a nonzero null source still produces nonzero contorsion.

As a sign check, for `J^I=(j,0,0,0)` and `r=0`, the stationary rotational components are `K^{12}{}_3=kappa s j`, `K^{13}{}_2=-kappa s j`, and `K^{23}{}_1=kappa s j`. Their EC quadratic term is `-3 kappa s^2 j^2 vol`, their source term is `+6 kappa s^2 j^2 vol`, and their sum is `+3 kappa s^2 j^2 vol`, precisely `-3 kappa s^2 J^2 vol`.

The [source script](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_holst_axial_source_20261031_C7226F38.wl>) imports the exact full auxiliary matrices and then independently constructs and inverts the arbitrary-`J` source problem. Its [readable output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_holst_axial_source_20261031_C7226F38_output.txt>) has eight true checks and no messages, including the complete 24-component stationarity residual and reconstruction of the covariant expression. The [full source output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_holst_axial_source_20261031_C7226F38_output.wxf>) preserves the source vector and all stationary components.

This establishes beta dependence for this fixed source normalization; it does not establish a statement about a specific fermion theory until that theory's source, possible nonminimal couplings, and reality/gamma conventions are separately fixed.

## 8. Reproduction and verification boundaries

Use a fresh Wolfram kernel and evaluate, in this order:

```wolfram
Get["/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_holst_auxiliary_20261031_C7226F38.wl"]
Get["/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_holst_axial_source_20261031_C7226F38.wl"]
```

The scripts require no external packages. Outputs use unique filenames on rerun rather than overwriting the original evidence. The source script imports the originally named full auxiliary output; if relocating the scripts, keep that output alongside them or adjust its explicit input path. The displayed calculations used exact integers/rational functions and exact complex exceptional parameters, not floating point.

**Verified:** the finite connection-elimination proof; exact off-shell split including the boundary term; the independent 24-component wedge construction; both scalar-quadratic identities; star and relative-Hessian identities; relative and absolute determinants in the specified basis; real inertia; exceptional complex ranks; arbitrary-`J` source response and induced coupling. All 24 recorded checks passed, with no kernel messages.

**Assumptions:** smooth invertible coframe; Lorentz, not general affine, connection; pure action as supplied except for the separately stated source; full antisymmetric-pair summation; real beta for the main elimination and Fresnel claims; a compatible boundary prescription whenever elimination is interpreted as equivalence of variational problems.

**Not established:** a continuum measure/regulator theorem, quantum equivalence, a Dirac-source normalization, full metric boundary/corner matching, or exceptional-complex-parameter quantization. This delegated reviewer had no remaining subagent depth, so no further independent child review was launched; the parent can compare these results with its separately obtained analysis. No existing project source or synthesis file was edited.
